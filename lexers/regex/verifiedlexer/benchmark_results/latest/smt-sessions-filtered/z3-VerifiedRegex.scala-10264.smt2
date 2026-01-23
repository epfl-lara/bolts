; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534262 () Bool)

(assert start!534262)

(declare-fun b!5050890 () Bool)

(declare-fun e!3153466 () Bool)

(declare-fun e!3153467 () Bool)

(assert (=> b!5050890 (= e!3153466 e!3153467)))

(declare-fun res!2151039 () Bool)

(assert (=> b!5050890 (=> res!2151039 e!3153467)))

(declare-datatypes ((T!104810 0))(
  ( (T!104811 (val!23604 Int)) )
))
(declare-datatypes ((List!58514 0))(
  ( (Nil!58390) (Cons!58390 (h!64838 T!104810) (t!371153 List!58514)) )
))
(declare-fun l!2757 () List!58514)

(declare-fun isEmpty!31573 (List!58514) Bool)

(assert (=> b!5050890 (= res!2151039 (isEmpty!31573 l!2757))))

(declare-fun b!5050892 () Bool)

(declare-fun r!2041 () List!58514)

(assert (=> b!5050892 (= e!3153467 (isEmpty!31573 r!2041))))

(declare-fun b!5050893 () Bool)

(declare-fun e!3153468 () Bool)

(declare-fun tp_is_empty!36963 () Bool)

(declare-fun tp!1412249 () Bool)

(assert (=> b!5050893 (= e!3153468 (and tp_is_empty!36963 tp!1412249))))

(declare-fun b!5050894 () Bool)

(declare-fun e!3153465 () Bool)

(declare-fun tp!1412248 () Bool)

(assert (=> b!5050894 (= e!3153465 (and tp_is_empty!36963 tp!1412248))))

(declare-fun b!5050895 () Bool)

(declare-fun res!2151038 () Bool)

(assert (=> b!5050895 (=> (not res!2151038) (not e!3153466))))

(declare-fun i!652 () Int)

(declare-fun size!39013 (List!58514) Int)

(assert (=> b!5050895 (= res!2151038 (<= i!652 (+ (size!39013 l!2757) (size!39013 r!2041))))))

(declare-fun b!5050891 () Bool)

(declare-fun res!2151037 () Bool)

(assert (=> b!5050891 (=> (not res!2151037) (not e!3153466))))

(assert (=> b!5050891 (= res!2151037 (and (not (= l!2757 Nil!58390)) (not (= r!2041 Nil!58390))))))

(declare-fun res!2151036 () Bool)

(assert (=> start!534262 (=> (not res!2151036) (not e!3153466))))

(assert (=> start!534262 (= res!2151036 (<= 0 i!652))))

(assert (=> start!534262 e!3153466))

(assert (=> start!534262 true))

(assert (=> start!534262 e!3153465))

(assert (=> start!534262 e!3153468))

(assert (= (and start!534262 res!2151036) b!5050895))

(assert (= (and b!5050895 res!2151038) b!5050891))

(assert (= (and b!5050891 res!2151037) b!5050890))

(assert (= (and b!5050890 (not res!2151039)) b!5050892))

(get-info :version)

(assert (= (and start!534262 ((_ is Cons!58390) l!2757)) b!5050894))

(assert (= (and start!534262 ((_ is Cons!58390) r!2041)) b!5050893))

(declare-fun m!6085010 () Bool)

(assert (=> b!5050890 m!6085010))

(declare-fun m!6085012 () Bool)

(assert (=> b!5050892 m!6085012))

(declare-fun m!6085014 () Bool)

(assert (=> b!5050895 m!6085014))

(declare-fun m!6085016 () Bool)

(assert (=> b!5050895 m!6085016))

(check-sat (not b!5050890) (not b!5050893) (not b!5050892) (not b!5050894) tp_is_empty!36963 (not b!5050895))
(check-sat)
(get-model)

(declare-fun d!1625077 () Bool)

(assert (=> d!1625077 (= (isEmpty!31573 l!2757) ((_ is Nil!58390) l!2757))))

(assert (=> b!5050890 d!1625077))

(declare-fun d!1625081 () Bool)

(declare-fun lt!2086592 () Int)

(assert (=> d!1625081 (>= lt!2086592 0)))

(declare-fun e!3153473 () Int)

(assert (=> d!1625081 (= lt!2086592 e!3153473)))

(declare-fun c!866354 () Bool)

(assert (=> d!1625081 (= c!866354 ((_ is Nil!58390) l!2757))))

(assert (=> d!1625081 (= (size!39013 l!2757) lt!2086592)))

(declare-fun b!5050904 () Bool)

(assert (=> b!5050904 (= e!3153473 0)))

(declare-fun b!5050905 () Bool)

(assert (=> b!5050905 (= e!3153473 (+ 1 (size!39013 (t!371153 l!2757))))))

(assert (= (and d!1625081 c!866354) b!5050904))

(assert (= (and d!1625081 (not c!866354)) b!5050905))

(declare-fun m!6085018 () Bool)

(assert (=> b!5050905 m!6085018))

(assert (=> b!5050895 d!1625081))

(declare-fun d!1625087 () Bool)

(declare-fun lt!2086593 () Int)

(assert (=> d!1625087 (>= lt!2086593 0)))

(declare-fun e!3153474 () Int)

(assert (=> d!1625087 (= lt!2086593 e!3153474)))

(declare-fun c!866355 () Bool)

(assert (=> d!1625087 (= c!866355 ((_ is Nil!58390) r!2041))))

(assert (=> d!1625087 (= (size!39013 r!2041) lt!2086593)))

(declare-fun b!5050906 () Bool)

(assert (=> b!5050906 (= e!3153474 0)))

(declare-fun b!5050907 () Bool)

(assert (=> b!5050907 (= e!3153474 (+ 1 (size!39013 (t!371153 r!2041))))))

(assert (= (and d!1625087 c!866355) b!5050906))

(assert (= (and d!1625087 (not c!866355)) b!5050907))

(declare-fun m!6085020 () Bool)

(assert (=> b!5050907 m!6085020))

(assert (=> b!5050895 d!1625087))

(declare-fun d!1625089 () Bool)

(assert (=> d!1625089 (= (isEmpty!31573 r!2041) ((_ is Nil!58390) r!2041))))

(assert (=> b!5050892 d!1625089))

(declare-fun b!5050916 () Bool)

(declare-fun e!3153479 () Bool)

(declare-fun tp!1412252 () Bool)

(assert (=> b!5050916 (= e!3153479 (and tp_is_empty!36963 tp!1412252))))

(assert (=> b!5050894 (= tp!1412248 e!3153479)))

(assert (= (and b!5050894 ((_ is Cons!58390) (t!371153 l!2757))) b!5050916))

(declare-fun b!5050921 () Bool)

(declare-fun e!3153482 () Bool)

(declare-fun tp!1412255 () Bool)

(assert (=> b!5050921 (= e!3153482 (and tp_is_empty!36963 tp!1412255))))

(assert (=> b!5050893 (= tp!1412249 e!3153482)))

(assert (= (and b!5050893 ((_ is Cons!58390) (t!371153 r!2041))) b!5050921))

(check-sat tp_is_empty!36963 (not b!5050905) (not b!5050907) (not b!5050916) (not b!5050921))
(check-sat)
