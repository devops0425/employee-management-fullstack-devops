// Use relative /api, let NGINX handle proxying to backend
const API_BASE_URL = process.env.REACT_APP_API_URL || "/api";
export default API_BASE_URL;



