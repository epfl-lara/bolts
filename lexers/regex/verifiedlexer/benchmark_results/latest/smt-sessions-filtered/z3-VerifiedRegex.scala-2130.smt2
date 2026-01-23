; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107244 () Bool)

(assert start!107244)

(declare-fun b!1203952 () Bool)

(declare-fun e!772424 () Bool)

(declare-fun tp_is_empty!6051 () Bool)

(declare-fun tp!341752 () Bool)

(assert (=> b!1203952 (= e!772424 (and tp_is_empty!6051 tp!341752))))

(declare-fun b!1203953 () Bool)

(declare-fun res!542317 () Bool)

(declare-fun e!772423 () Bool)

(assert (=> b!1203953 (=> (not res!542317) (not e!772423))))

(declare-datatypes ((T!22034 0))(
  ( (T!22035 (val!3924 Int)) )
))
(declare-datatypes ((List!12103 0))(
  ( (Nil!12079) (Cons!12079 (h!17480 T!22034) (t!112519 List!12103)) )
))
(declare-fun l!2744 () List!12103)

(declare-fun r!2028 () List!12103)

(declare-fun until!61 () Int)

(declare-fun size!9619 (List!12103) Int)

(assert (=> b!1203953 (= res!542317 (<= until!61 (+ (size!9619 l!2744) (size!9619 r!2028))))))

(declare-fun b!1203954 () Bool)

(declare-fun e!772422 () Bool)

(assert (=> b!1203954 (= e!772422 false)))

(declare-fun lt!411512 () Int)

(declare-fun lt!411511 () List!12103)

(assert (=> b!1203954 (= lt!411512 (size!9619 lt!411511))))

(declare-fun b!1203955 () Bool)

(assert (=> b!1203955 (= e!772423 e!772422)))

(declare-fun res!542320 () Bool)

(assert (=> b!1203955 (=> (not res!542320) (not e!772422))))

(declare-fun tail!1706 (List!12103) List!12103)

(declare-fun ++!3103 (List!12103 List!12103) List!12103)

(assert (=> b!1203955 (= res!542320 (= (tail!1706 (++!3103 l!2744 r!2028)) (++!3103 lt!411511 r!2028)))))

(assert (=> b!1203955 (= lt!411511 (tail!1706 l!2744))))

(declare-fun b!1203956 () Bool)

(declare-fun res!542316 () Bool)

(assert (=> b!1203956 (=> (not res!542316) (not e!772422))))

(declare-fun from!613 () Int)

(assert (=> b!1203956 (= res!542316 (and (= from!613 0) (<= 0 (- until!61 1))))))

(declare-fun b!1203957 () Bool)

(declare-fun e!772421 () Bool)

(declare-fun tp!341753 () Bool)

(assert (=> b!1203957 (= e!772421 (and tp_is_empty!6051 tp!341753))))

(declare-fun res!542319 () Bool)

(assert (=> start!107244 (=> (not res!542319) (not e!772423))))

(assert (=> start!107244 (= res!542319 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107244 e!772423))

(assert (=> start!107244 true))

(assert (=> start!107244 e!772421))

(assert (=> start!107244 e!772424))

(declare-fun b!1203958 () Bool)

(declare-fun res!542318 () Bool)

(assert (=> b!1203958 (=> (not res!542318) (not e!772423))))

(assert (=> b!1203958 (= res!542318 (and (not (= l!2744 Nil!12079)) (not (= r!2028 Nil!12079)) (not (= until!61 0))))))

(assert (= (and start!107244 res!542319) b!1203953))

(assert (= (and b!1203953 res!542317) b!1203958))

(assert (= (and b!1203958 res!542318) b!1203955))

(assert (= (and b!1203955 res!542320) b!1203956))

(assert (= (and b!1203956 res!542316) b!1203954))

(get-info :version)

(assert (= (and start!107244 ((_ is Cons!12079) l!2744)) b!1203957))

(assert (= (and start!107244 ((_ is Cons!12079) r!2028)) b!1203952))

(declare-fun m!1379467 () Bool)

(assert (=> b!1203953 m!1379467))

(declare-fun m!1379469 () Bool)

(assert (=> b!1203953 m!1379469))

(declare-fun m!1379471 () Bool)

(assert (=> b!1203954 m!1379471))

(declare-fun m!1379473 () Bool)

(assert (=> b!1203955 m!1379473))

(assert (=> b!1203955 m!1379473))

(declare-fun m!1379475 () Bool)

(assert (=> b!1203955 m!1379475))

(declare-fun m!1379477 () Bool)

(assert (=> b!1203955 m!1379477))

(declare-fun m!1379479 () Bool)

(assert (=> b!1203955 m!1379479))

(check-sat tp_is_empty!6051 (not b!1203952) (not b!1203954) (not b!1203953) (not b!1203957) (not b!1203955))
(check-sat)
