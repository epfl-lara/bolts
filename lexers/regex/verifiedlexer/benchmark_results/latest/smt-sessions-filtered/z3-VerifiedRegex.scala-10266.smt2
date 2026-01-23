; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534294 () Bool)

(assert start!534294)

(declare-fun b!5051054 () Bool)

(declare-fun e!3153552 () Bool)

(declare-fun tp_is_empty!36971 () Bool)

(declare-fun tp!1412288 () Bool)

(assert (=> b!5051054 (= e!3153552 (and tp_is_empty!36971 tp!1412288))))

(declare-fun b!5051053 () Bool)

(declare-fun e!3153550 () Bool)

(declare-fun lt!2086623 () Int)

(declare-fun lt!2086622 () Int)

(assert (=> b!5051053 (= e!3153550 (or (< lt!2086623 0) (< lt!2086622 0)))))

(declare-datatypes ((T!104838 0))(
  ( (T!104839 (val!23608 Int)) )
))
(declare-datatypes ((List!58518 0))(
  ( (Nil!58394) (Cons!58394 (h!64842 T!104838) (t!371157 List!58518)) )
))
(declare-fun r!2041 () List!58518)

(declare-fun ListPrimitiveSize!391 (List!58518) Int)

(assert (=> b!5051053 (= lt!2086622 (ListPrimitiveSize!391 r!2041))))

(declare-fun l!2757 () List!58518)

(assert (=> b!5051053 (= lt!2086623 (ListPrimitiveSize!391 l!2757))))

(declare-fun b!5051055 () Bool)

(declare-fun e!3153551 () Bool)

(declare-fun tp!1412289 () Bool)

(assert (=> b!5051055 (= e!3153551 (and tp_is_empty!36971 tp!1412289))))

(declare-fun b!5051052 () Bool)

(declare-fun res!2151102 () Bool)

(assert (=> b!5051052 (=> (not res!2151102) (not e!3153550))))

(declare-fun i!652 () Int)

(declare-fun size!39017 (List!58518) Int)

(assert (=> b!5051052 (= res!2151102 (<= i!652 (+ (size!39017 l!2757) (size!39017 r!2041))))))

(declare-fun res!2151103 () Bool)

(assert (=> start!534294 (=> (not res!2151103) (not e!3153550))))

(assert (=> start!534294 (= res!2151103 (<= 0 i!652))))

(assert (=> start!534294 e!3153550))

(assert (=> start!534294 true))

(assert (=> start!534294 e!3153552))

(assert (=> start!534294 e!3153551))

(assert (= (and start!534294 res!2151103) b!5051052))

(assert (= (and b!5051052 res!2151102) b!5051053))

(get-info :version)

(assert (= (and start!534294 ((_ is Cons!58394) l!2757)) b!5051054))

(assert (= (and start!534294 ((_ is Cons!58394) r!2041)) b!5051055))

(declare-fun m!6085114 () Bool)

(assert (=> b!5051053 m!6085114))

(declare-fun m!6085116 () Bool)

(assert (=> b!5051053 m!6085116))

(declare-fun m!6085118 () Bool)

(assert (=> b!5051052 m!6085118))

(declare-fun m!6085120 () Bool)

(assert (=> b!5051052 m!6085120))

(check-sat (not b!5051052) (not b!5051053) tp_is_empty!36971 (not b!5051055) (not b!5051054))
(check-sat)
(get-model)

(declare-fun d!1625129 () Bool)

(declare-fun lt!2086630 () Int)

(assert (=> d!1625129 (>= lt!2086630 0)))

(declare-fun e!3153559 () Int)

(assert (=> d!1625129 (= lt!2086630 e!3153559)))

(declare-fun c!866380 () Bool)

(assert (=> d!1625129 (= c!866380 ((_ is Nil!58394) r!2041))))

(assert (=> d!1625129 (= (ListPrimitiveSize!391 r!2041) lt!2086630)))

(declare-fun b!5051068 () Bool)

(assert (=> b!5051068 (= e!3153559 0)))

(declare-fun b!5051069 () Bool)

(assert (=> b!5051069 (= e!3153559 (+ 1 (ListPrimitiveSize!391 (t!371157 r!2041))))))

(assert (= (and d!1625129 c!866380) b!5051068))

(assert (= (and d!1625129 (not c!866380)) b!5051069))

(declare-fun m!6085126 () Bool)

(assert (=> b!5051069 m!6085126))

(assert (=> b!5051053 d!1625129))

(declare-fun d!1625135 () Bool)

(declare-fun lt!2086633 () Int)

(assert (=> d!1625135 (>= lt!2086633 0)))

(declare-fun e!3153562 () Int)

(assert (=> d!1625135 (= lt!2086633 e!3153562)))

(declare-fun c!866383 () Bool)

(assert (=> d!1625135 (= c!866383 ((_ is Nil!58394) l!2757))))

(assert (=> d!1625135 (= (ListPrimitiveSize!391 l!2757) lt!2086633)))

(declare-fun b!5051074 () Bool)

(assert (=> b!5051074 (= e!3153562 0)))

(declare-fun b!5051075 () Bool)

(assert (=> b!5051075 (= e!3153562 (+ 1 (ListPrimitiveSize!391 (t!371157 l!2757))))))

(assert (= (and d!1625135 c!866383) b!5051074))

(assert (= (and d!1625135 (not c!866383)) b!5051075))

(declare-fun m!6085128 () Bool)

(assert (=> b!5051075 m!6085128))

(assert (=> b!5051053 d!1625135))

(declare-fun d!1625137 () Bool)

(declare-fun lt!2086638 () Int)

(assert (=> d!1625137 (>= lt!2086638 0)))

(declare-fun e!3153571 () Int)

(assert (=> d!1625137 (= lt!2086638 e!3153571)))

(declare-fun c!866388 () Bool)

(assert (=> d!1625137 (= c!866388 ((_ is Nil!58394) l!2757))))

(assert (=> d!1625137 (= (size!39017 l!2757) lt!2086638)))

(declare-fun b!5051090 () Bool)

(assert (=> b!5051090 (= e!3153571 0)))

(declare-fun b!5051091 () Bool)

(assert (=> b!5051091 (= e!3153571 (+ 1 (size!39017 (t!371157 l!2757))))))

(assert (= (and d!1625137 c!866388) b!5051090))

(assert (= (and d!1625137 (not c!866388)) b!5051091))

(declare-fun m!6085134 () Bool)

(assert (=> b!5051091 m!6085134))

(assert (=> b!5051052 d!1625137))

(declare-fun d!1625141 () Bool)

(declare-fun lt!2086639 () Int)

(assert (=> d!1625141 (>= lt!2086639 0)))

(declare-fun e!3153572 () Int)

(assert (=> d!1625141 (= lt!2086639 e!3153572)))

(declare-fun c!866389 () Bool)

(assert (=> d!1625141 (= c!866389 ((_ is Nil!58394) r!2041))))

(assert (=> d!1625141 (= (size!39017 r!2041) lt!2086639)))

(declare-fun b!5051092 () Bool)

(assert (=> b!5051092 (= e!3153572 0)))

(declare-fun b!5051093 () Bool)

(assert (=> b!5051093 (= e!3153572 (+ 1 (size!39017 (t!371157 r!2041))))))

(assert (= (and d!1625141 c!866389) b!5051092))

(assert (= (and d!1625141 (not c!866389)) b!5051093))

(declare-fun m!6085136 () Bool)

(assert (=> b!5051093 m!6085136))

(assert (=> b!5051052 d!1625141))

(declare-fun b!5051098 () Bool)

(declare-fun e!3153575 () Bool)

(declare-fun tp!1412296 () Bool)

(assert (=> b!5051098 (= e!3153575 (and tp_is_empty!36971 tp!1412296))))

(assert (=> b!5051055 (= tp!1412289 e!3153575)))

(assert (= (and b!5051055 ((_ is Cons!58394) (t!371157 r!2041))) b!5051098))

(declare-fun b!5051099 () Bool)

(declare-fun e!3153576 () Bool)

(declare-fun tp!1412297 () Bool)

(assert (=> b!5051099 (= e!3153576 (and tp_is_empty!36971 tp!1412297))))

(assert (=> b!5051054 (= tp!1412288 e!3153576)))

(assert (= (and b!5051054 ((_ is Cons!58394) (t!371157 l!2757))) b!5051099))

(check-sat (not b!5051093) (not b!5051098) (not b!5051099) tp_is_empty!36971 (not b!5051075) (not b!5051069) (not b!5051091))
(check-sat)
