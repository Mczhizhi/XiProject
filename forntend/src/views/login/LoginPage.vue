<template>
  <div
    class="centered-container"
    :style="{ backgroundImage: 'url(' + backGroundUrl.path + ')' }"
  >
    <div class="view-container">
      <el-form>
        <el-form-item label="用户名">
          <el-input v-model="formData.user"></el-input>
        </el-form-item>
        <el-form-item label="密码">
          <el-input v-model="formData.password"></el-input>
        </el-form-item>
      </el-form>

      <!-- <el-button class="transparent-button">修改姓名</el-button> -->

      <el-button @click="Login">登录查询</el-button>
    </div>
  </div>
</template>

<script setup lang="ts">
import { reactive } from 'vue'
import axios from 'axios'

const formData = reactive({
  user: '',
  password: ''
})

const backGroundUrl = reactive({
  path: '/Image/bg.jpg'
})

const Login = () => {
  axios
    .get('http://localhost/user/' + formData.user + '/' + formData.password)
    .then((ref) => {
      if (ref.data == false) alert('Login failed')
      else {
        alert('Login succeeded')
      }
    })
    .catch((error) => {
      if (error.message == 'Network Error') alert('服务器错误,请联系管理员')
      else alert('未知错误，请稍后重试')
    })
}
</script>

<style scoped>
.centered-container {
  width: 100vw;
  height: 100vh;
  background-size: 100vw 100vh;
  background-repeat: no-repeat;
  /* 添加其他样式属性以居中显示您的组件 */
}

.view-container {
  position: absolute;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  backdrop-filter: blur(6px);
  width: 400px;

  padding: 30px;
}
.view-container:hover {
  background-color: rgba(240, 255, 255, 0.1);
  box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.5); /* 鼠标悬浮时显示的阴影属性 */
}

.el-input {
  width: 300px;
  border-radius: 3px;
  padding-left: 3px;
}

:deep(.el-input__wrapper) {
  background: transparent;
}
:deep(.el-input__inner) {
  color: black;
}
:deep(.el-form-item__label) {
  color: black;
  width: 70px;
}
</style>
