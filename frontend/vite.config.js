import { defineConfig, loadEnv } from 'vite';
import react from '@vitejs/plugin-react';

export default defineConfig(({ mode }) => {
  const env = loadEnv(mode, process.cwd());

  return {
    plugins: [react()],
    define: {
      __APP_ENV__: JSON.stringify(mode),
    },
    build: {
      outDir: 'dist',
    },
    // Opcional: exponer las variables VITE_... si las necesitás en el frontend
    envPrefix: 'VITE_', // asegura que solo se usen variables con ese prefijo
  };
});
