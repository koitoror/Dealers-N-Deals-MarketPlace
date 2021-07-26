// const { createProxyMiddleware } = require('http-proxy-middleware');

// module.exports = function(app) {
//   app.use(
//     '/api',
//     // '/api/*',
//     createProxyMiddleware({
//       target: 'http://backend-node-app:5000',
//       changeOrigin: true,
//     //   pathRewrite: {
//     //     '^/api/settings': '/api/app/settings'
//     //   },
//     })
//   );
//   // app.use(createProxyMiddleware('/public', { target: 'http://[::1]:5000/' }));

// };