; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2070 () Bool)

(assert start!2070)

(declare-fun res!10936 () Bool)

(declare-fun e!8346 () Bool)

(assert (=> start!2070 (=> (not res!10936) (not e!8346))))

(declare-datatypes ((B!532 0))(
  ( (B!533 (val!364 Int)) )
))
(declare-datatypes ((tuple2!510 0))(
  ( (tuple2!511 (_1!255 (_ BitVec 64)) (_2!255 B!532)) )
))
(declare-datatypes ((List!414 0))(
  ( (Nil!411) (Cons!410 (h!976 tuple2!510) (t!2810 List!414)) )
))
(declare-fun l!522 () List!414)

(declare-fun isStrictlySorted!105 (List!414) Bool)

(assert (=> start!2070 (= res!10936 (isStrictlySorted!105 l!522))))

(assert (=> start!2070 e!8346))

(declare-fun e!8347 () Bool)

(assert (=> start!2070 e!8347))

(declare-fun tp_is_empty!711 () Bool)

(assert (=> start!2070 tp_is_empty!711))

(declare-fun b!13995 () Bool)

(declare-fun res!10935 () Bool)

(assert (=> b!13995 (=> (not res!10935) (not e!8346))))

(declare-fun value!159 () B!532)

(get-info :version)

(assert (=> b!13995 (= res!10935 (and ((_ is Cons!410) l!522) (= (_2!255 (h!976 l!522)) value!159)))))

(declare-fun b!13996 () Bool)

(declare-fun ListPrimitiveSize!23 (List!414) Int)

(assert (=> b!13996 (= e!8346 (>= (ListPrimitiveSize!23 (t!2810 l!522)) (ListPrimitiveSize!23 l!522)))))

(declare-fun b!13997 () Bool)

(declare-fun tp!2288 () Bool)

(assert (=> b!13997 (= e!8347 (and tp_is_empty!711 tp!2288))))

(assert (= (and start!2070 res!10936) b!13995))

(assert (= (and b!13995 res!10935) b!13996))

(assert (= (and start!2070 ((_ is Cons!410) l!522)) b!13997))

(declare-fun m!9361 () Bool)

(assert (=> start!2070 m!9361))

(declare-fun m!9363 () Bool)

(assert (=> b!13996 m!9363))

(declare-fun m!9365 () Bool)

(assert (=> b!13996 m!9365))

(check-sat (not start!2070) (not b!13996) (not b!13997) tp_is_empty!711)
(check-sat)
(get-model)

(declare-fun d!2077 () Bool)

(declare-fun res!10953 () Bool)

(declare-fun e!8364 () Bool)

(assert (=> d!2077 (=> res!10953 e!8364)))

(assert (=> d!2077 (= res!10953 (or ((_ is Nil!411) l!522) ((_ is Nil!411) (t!2810 l!522))))))

(assert (=> d!2077 (= (isStrictlySorted!105 l!522) e!8364)))

(declare-fun b!14017 () Bool)

(declare-fun e!8365 () Bool)

(assert (=> b!14017 (= e!8364 e!8365)))

(declare-fun res!10954 () Bool)

(assert (=> b!14017 (=> (not res!10954) (not e!8365))))

(assert (=> b!14017 (= res!10954 (bvslt (_1!255 (h!976 l!522)) (_1!255 (h!976 (t!2810 l!522)))))))

(declare-fun b!14018 () Bool)

(assert (=> b!14018 (= e!8365 (isStrictlySorted!105 (t!2810 l!522)))))

(assert (= (and d!2077 (not res!10953)) b!14017))

(assert (= (and b!14017 res!10954) b!14018))

(declare-fun m!9375 () Bool)

(assert (=> b!14018 m!9375))

(assert (=> start!2070 d!2077))

(declare-fun d!2085 () Bool)

(declare-fun lt!3567 () Int)

(assert (=> d!2085 (>= lt!3567 0)))

(declare-fun e!8375 () Int)

(assert (=> d!2085 (= lt!3567 e!8375)))

(declare-fun c!1283 () Bool)

(assert (=> d!2085 (= c!1283 ((_ is Nil!411) (t!2810 l!522)))))

(assert (=> d!2085 (= (ListPrimitiveSize!23 (t!2810 l!522)) lt!3567)))

(declare-fun b!14032 () Bool)

(assert (=> b!14032 (= e!8375 0)))

(declare-fun b!14034 () Bool)

(assert (=> b!14034 (= e!8375 (+ 1 (ListPrimitiveSize!23 (t!2810 (t!2810 l!522)))))))

(assert (= (and d!2085 c!1283) b!14032))

(assert (= (and d!2085 (not c!1283)) b!14034))

(declare-fun m!9377 () Bool)

(assert (=> b!14034 m!9377))

(assert (=> b!13996 d!2085))

(declare-fun d!2087 () Bool)

(declare-fun lt!3568 () Int)

(assert (=> d!2087 (>= lt!3568 0)))

(declare-fun e!8376 () Int)

(assert (=> d!2087 (= lt!3568 e!8376)))

(declare-fun c!1284 () Bool)

(assert (=> d!2087 (= c!1284 ((_ is Nil!411) l!522))))

(assert (=> d!2087 (= (ListPrimitiveSize!23 l!522) lt!3568)))

(declare-fun b!14035 () Bool)

(assert (=> b!14035 (= e!8376 0)))

(declare-fun b!14036 () Bool)

(assert (=> b!14036 (= e!8376 (+ 1 (ListPrimitiveSize!23 (t!2810 l!522))))))

(assert (= (and d!2087 c!1284) b!14035))

(assert (= (and d!2087 (not c!1284)) b!14036))

(assert (=> b!14036 m!9363))

(assert (=> b!13996 d!2087))

(declare-fun b!14049 () Bool)

(declare-fun e!8384 () Bool)

(declare-fun tp!2296 () Bool)

(assert (=> b!14049 (= e!8384 (and tp_is_empty!711 tp!2296))))

(assert (=> b!13997 (= tp!2288 e!8384)))

(assert (= (and b!13997 ((_ is Cons!410) (t!2810 l!522))) b!14049))

(check-sat (not b!14049) (not b!14036) tp_is_empty!711 (not b!14034) (not b!14018))
(check-sat)
