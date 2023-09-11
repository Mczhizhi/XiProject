import axios from 'axios'

export const LoginService = (user, password) => {
  return axios.get('http://localhost/user/' + user + '/' + password)
}
