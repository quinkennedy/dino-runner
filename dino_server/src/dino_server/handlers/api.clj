(ns dino-server.handlers.api
  )

(defn get-time [req]
  {:time (System/currentTimeMillis)
   :req (merge req {:async-channel nil})})

(defn print-image [req]
  {:req (merge req {:async-channel nil})})
