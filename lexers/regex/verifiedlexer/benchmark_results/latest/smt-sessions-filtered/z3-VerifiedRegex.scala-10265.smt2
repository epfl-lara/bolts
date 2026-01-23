; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534274 () Bool)

(assert start!534274)

(declare-fun b!5050964 () Bool)

(declare-fun res!2151072 () Bool)

(declare-fun e!3153500 () Bool)

(assert (=> b!5050964 (=> (not res!2151072) (not e!3153500))))

(declare-datatypes ((T!104824 0))(
  ( (T!104825 (val!23606 Int)) )
))
(declare-datatypes ((List!58516 0))(
  ( (Nil!58392) (Cons!58392 (h!64840 T!104824) (t!371155 List!58516)) )
))
(declare-fun r!2041 () List!58516)

(declare-fun i!652 () Int)

(declare-fun l!2757 () List!58516)

(declare-fun size!39015 (List!58516) Int)

(assert (=> b!5050964 (= res!2151072 (<= i!652 (+ (size!39015 l!2757) (size!39015 r!2041))))))

(declare-fun b!5050965 () Bool)

(declare-fun res!2151075 () Bool)

(assert (=> b!5050965 (=> (not res!2151075) (not e!3153500))))

(assert (=> b!5050965 (= res!2151075 (and (not (= l!2757 Nil!58392)) (not (= r!2041 Nil!58392))))))

(declare-fun b!5050966 () Bool)

(declare-fun res!2151074 () Bool)

(assert (=> b!5050966 (=> (not res!2151074) (not e!3153500))))

(assert (=> b!5050966 (= res!2151074 (> i!652 0))))

(declare-fun b!5050967 () Bool)

(declare-fun e!3153502 () Bool)

(declare-fun tp_is_empty!36967 () Bool)

(declare-fun tp!1412269 () Bool)

(assert (=> b!5050967 (= e!3153502 (and tp_is_empty!36967 tp!1412269))))

(declare-fun b!5050968 () Bool)

(declare-fun res!2151073 () Bool)

(assert (=> b!5050968 (=> (not res!2151073) (not e!3153500))))

(declare-fun isEmpty!31575 (List!58516) Bool)

(assert (=> b!5050968 (= res!2151073 (not (isEmpty!31575 r!2041)))))

(declare-fun b!5050969 () Bool)

(declare-fun res!2151071 () Bool)

(assert (=> b!5050969 (=> (not res!2151071) (not e!3153500))))

(assert (=> b!5050969 (= res!2151071 (not (isEmpty!31575 l!2757)))))

(declare-fun b!5050970 () Bool)

(declare-fun tail!9944 (List!58516) List!58516)

(declare-fun ++!12757 (List!58516 List!58516) List!58516)

(assert (=> b!5050970 (= e!3153500 (not (= (tail!9944 (++!12757 l!2757 r!2041)) (++!12757 (tail!9944 l!2757) r!2041))))))

(declare-fun b!5050971 () Bool)

(declare-fun e!3153501 () Bool)

(declare-fun tp!1412268 () Bool)

(assert (=> b!5050971 (= e!3153501 (and tp_is_empty!36967 tp!1412268))))

(declare-fun res!2151070 () Bool)

(assert (=> start!534274 (=> (not res!2151070) (not e!3153500))))

(assert (=> start!534274 (= res!2151070 (<= 0 i!652))))

(assert (=> start!534274 e!3153500))

(assert (=> start!534274 true))

(assert (=> start!534274 e!3153501))

(assert (=> start!534274 e!3153502))

(assert (= (and start!534274 res!2151070) b!5050964))

(assert (= (and b!5050964 res!2151072) b!5050965))

(assert (= (and b!5050965 res!2151075) b!5050969))

(assert (= (and b!5050969 res!2151071) b!5050968))

(assert (= (and b!5050968 res!2151073) b!5050966))

(assert (= (and b!5050966 res!2151074) b!5050970))

(get-info :version)

(assert (= (and start!534274 ((_ is Cons!58392) l!2757)) b!5050971))

(assert (= (and start!534274 ((_ is Cons!58392) r!2041)) b!5050967))

(declare-fun m!6085042 () Bool)

(assert (=> b!5050964 m!6085042))

(declare-fun m!6085044 () Bool)

(assert (=> b!5050964 m!6085044))

(declare-fun m!6085046 () Bool)

(assert (=> b!5050968 m!6085046))

(declare-fun m!6085048 () Bool)

(assert (=> b!5050969 m!6085048))

(declare-fun m!6085050 () Bool)

(assert (=> b!5050970 m!6085050))

(assert (=> b!5050970 m!6085050))

(declare-fun m!6085052 () Bool)

(assert (=> b!5050970 m!6085052))

(declare-fun m!6085054 () Bool)

(assert (=> b!5050970 m!6085054))

(assert (=> b!5050970 m!6085054))

(declare-fun m!6085056 () Bool)

(assert (=> b!5050970 m!6085056))

(check-sat tp_is_empty!36967 (not b!5050967) (not b!5050969) (not b!5050971) (not b!5050964) (not b!5050968) (not b!5050970))
(check-sat)
(get-model)

(declare-fun d!1625094 () Bool)

(assert (=> d!1625094 (= (tail!9944 (++!12757 l!2757 r!2041)) (t!371155 (++!12757 l!2757 r!2041)))))

(assert (=> b!5050970 d!1625094))

(declare-fun b!5050995 () Bool)

(declare-fun lt!2086604 () List!58516)

(declare-fun e!3153514 () Bool)

(assert (=> b!5050995 (= e!3153514 (or (not (= r!2041 Nil!58392)) (= lt!2086604 l!2757)))))

(declare-fun b!5050994 () Bool)

(declare-fun res!2151081 () Bool)

(assert (=> b!5050994 (=> (not res!2151081) (not e!3153514))))

(assert (=> b!5050994 (= res!2151081 (= (size!39015 lt!2086604) (+ (size!39015 l!2757) (size!39015 r!2041))))))

(declare-fun b!5050993 () Bool)

(declare-fun e!3153513 () List!58516)

(assert (=> b!5050993 (= e!3153513 (Cons!58392 (h!64840 l!2757) (++!12757 (t!371155 l!2757) r!2041)))))

(declare-fun b!5050992 () Bool)

(assert (=> b!5050992 (= e!3153513 r!2041)))

(declare-fun d!1625098 () Bool)

(assert (=> d!1625098 e!3153514))

(declare-fun res!2151080 () Bool)

(assert (=> d!1625098 (=> (not res!2151080) (not e!3153514))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10395 (List!58516) (InoxSet T!104824))

(assert (=> d!1625098 (= res!2151080 (= (content!10395 lt!2086604) ((_ map or) (content!10395 l!2757) (content!10395 r!2041))))))

(assert (=> d!1625098 (= lt!2086604 e!3153513)))

(declare-fun c!866366 () Bool)

(assert (=> d!1625098 (= c!866366 ((_ is Nil!58392) l!2757))))

(assert (=> d!1625098 (= (++!12757 l!2757 r!2041) lt!2086604)))

(assert (= (and d!1625098 c!866366) b!5050992))

(assert (= (and d!1625098 (not c!866366)) b!5050993))

(assert (= (and d!1625098 res!2151080) b!5050994))

(assert (= (and b!5050994 res!2151081) b!5050995))

(declare-fun m!6085062 () Bool)

(assert (=> b!5050994 m!6085062))

(assert (=> b!5050994 m!6085042))

(assert (=> b!5050994 m!6085044))

(declare-fun m!6085064 () Bool)

(assert (=> b!5050993 m!6085064))

(declare-fun m!6085066 () Bool)

(assert (=> d!1625098 m!6085066))

(declare-fun m!6085068 () Bool)

(assert (=> d!1625098 m!6085068))

(declare-fun m!6085070 () Bool)

(assert (=> d!1625098 m!6085070))

(assert (=> b!5050970 d!1625098))

(declare-fun lt!2086605 () List!58516)

(declare-fun b!5051003 () Bool)

(declare-fun e!3153518 () Bool)

(assert (=> b!5051003 (= e!3153518 (or (not (= r!2041 Nil!58392)) (= lt!2086605 (tail!9944 l!2757))))))

(declare-fun b!5051002 () Bool)

(declare-fun res!2151087 () Bool)

(assert (=> b!5051002 (=> (not res!2151087) (not e!3153518))))

(assert (=> b!5051002 (= res!2151087 (= (size!39015 lt!2086605) (+ (size!39015 (tail!9944 l!2757)) (size!39015 r!2041))))))

(declare-fun b!5051001 () Bool)

(declare-fun e!3153517 () List!58516)

(assert (=> b!5051001 (= e!3153517 (Cons!58392 (h!64840 (tail!9944 l!2757)) (++!12757 (t!371155 (tail!9944 l!2757)) r!2041)))))

(declare-fun b!5051000 () Bool)

(assert (=> b!5051000 (= e!3153517 r!2041)))

(declare-fun d!1625106 () Bool)

(assert (=> d!1625106 e!3153518))

(declare-fun res!2151086 () Bool)

(assert (=> d!1625106 (=> (not res!2151086) (not e!3153518))))

(assert (=> d!1625106 (= res!2151086 (= (content!10395 lt!2086605) ((_ map or) (content!10395 (tail!9944 l!2757)) (content!10395 r!2041))))))

(assert (=> d!1625106 (= lt!2086605 e!3153517)))

(declare-fun c!866367 () Bool)

(assert (=> d!1625106 (= c!866367 ((_ is Nil!58392) (tail!9944 l!2757)))))

(assert (=> d!1625106 (= (++!12757 (tail!9944 l!2757) r!2041) lt!2086605)))

(assert (= (and d!1625106 c!866367) b!5051000))

(assert (= (and d!1625106 (not c!866367)) b!5051001))

(assert (= (and d!1625106 res!2151086) b!5051002))

(assert (= (and b!5051002 res!2151087) b!5051003))

(declare-fun m!6085072 () Bool)

(assert (=> b!5051002 m!6085072))

(assert (=> b!5051002 m!6085054))

(declare-fun m!6085074 () Bool)

(assert (=> b!5051002 m!6085074))

(assert (=> b!5051002 m!6085044))

(declare-fun m!6085076 () Bool)

(assert (=> b!5051001 m!6085076))

(declare-fun m!6085078 () Bool)

(assert (=> d!1625106 m!6085078))

(assert (=> d!1625106 m!6085054))

(declare-fun m!6085080 () Bool)

(assert (=> d!1625106 m!6085080))

(assert (=> d!1625106 m!6085070))

(assert (=> b!5050970 d!1625106))

(declare-fun d!1625108 () Bool)

(assert (=> d!1625108 (= (tail!9944 l!2757) (t!371155 l!2757))))

(assert (=> b!5050970 d!1625108))

(declare-fun d!1625110 () Bool)

(declare-fun lt!2086610 () Int)

(assert (=> d!1625110 (>= lt!2086610 0)))

(declare-fun e!3153525 () Int)

(assert (=> d!1625110 (= lt!2086610 e!3153525)))

(declare-fun c!866372 () Bool)

(assert (=> d!1625110 (= c!866372 ((_ is Nil!58392) l!2757))))

(assert (=> d!1625110 (= (size!39015 l!2757) lt!2086610)))

(declare-fun b!5051016 () Bool)

(assert (=> b!5051016 (= e!3153525 0)))

(declare-fun b!5051017 () Bool)

(assert (=> b!5051017 (= e!3153525 (+ 1 (size!39015 (t!371155 l!2757))))))

(assert (= (and d!1625110 c!866372) b!5051016))

(assert (= (and d!1625110 (not c!866372)) b!5051017))

(declare-fun m!6085102 () Bool)

(assert (=> b!5051017 m!6085102))

(assert (=> b!5050964 d!1625110))

(declare-fun d!1625118 () Bool)

(declare-fun lt!2086611 () Int)

(assert (=> d!1625118 (>= lt!2086611 0)))

(declare-fun e!3153526 () Int)

(assert (=> d!1625118 (= lt!2086611 e!3153526)))

(declare-fun c!866373 () Bool)

(assert (=> d!1625118 (= c!866373 ((_ is Nil!58392) r!2041))))

(assert (=> d!1625118 (= (size!39015 r!2041) lt!2086611)))

(declare-fun b!5051018 () Bool)

(assert (=> b!5051018 (= e!3153526 0)))

(declare-fun b!5051019 () Bool)

(assert (=> b!5051019 (= e!3153526 (+ 1 (size!39015 (t!371155 r!2041))))))

(assert (= (and d!1625118 c!866373) b!5051018))

(assert (= (and d!1625118 (not c!866373)) b!5051019))

(declare-fun m!6085104 () Bool)

(assert (=> b!5051019 m!6085104))

(assert (=> b!5050964 d!1625118))

(declare-fun d!1625122 () Bool)

(assert (=> d!1625122 (= (isEmpty!31575 l!2757) ((_ is Nil!58392) l!2757))))

(assert (=> b!5050969 d!1625122))

(declare-fun d!1625124 () Bool)

(assert (=> d!1625124 (= (isEmpty!31575 r!2041) ((_ is Nil!58392) r!2041))))

(assert (=> b!5050968 d!1625124))

(declare-fun b!5051030 () Bool)

(declare-fun e!3153533 () Bool)

(declare-fun tp!1412276 () Bool)

(assert (=> b!5051030 (= e!3153533 (and tp_is_empty!36967 tp!1412276))))

(assert (=> b!5050971 (= tp!1412268 e!3153533)))

(assert (= (and b!5050971 ((_ is Cons!58392) (t!371155 l!2757))) b!5051030))

(declare-fun b!5051031 () Bool)

(declare-fun e!3153534 () Bool)

(declare-fun tp!1412277 () Bool)

(assert (=> b!5051031 (= e!3153534 (and tp_is_empty!36967 tp!1412277))))

(assert (=> b!5050967 (= tp!1412269 e!3153534)))

(assert (= (and b!5050967 ((_ is Cons!58392) (t!371155 r!2041))) b!5051031))

(check-sat tp_is_empty!36967 (not d!1625106) (not b!5051017) (not b!5051031) (not b!5051019) (not b!5051002) (not b!5051030) (not d!1625098) (not b!5051001) (not b!5050993) (not b!5050994))
(check-sat)
