; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107496 () Bool)

(assert start!107496)

(declare-fun b!1207374 () Bool)

(declare-fun e!774460 () Bool)

(declare-fun e!774459 () Bool)

(assert (=> b!1207374 (= e!774460 e!774459)))

(declare-fun res!543198 () Bool)

(assert (=> b!1207374 (=> res!543198 e!774459)))

(declare-fun from!613 () Int)

(declare-fun until!61 () Int)

(assert (=> b!1207374 (= res!543198 (or (> 0 (- from!613 1)) (> (- from!613 1) (- until!61 1))))))

(declare-fun b!1207375 () Bool)

(declare-fun e!774462 () Bool)

(declare-fun e!774464 () Bool)

(assert (=> b!1207375 (= e!774462 e!774464)))

(declare-fun res!543200 () Bool)

(assert (=> b!1207375 (=> (not res!543200) (not e!774464))))

(declare-fun lt!412642 () Int)

(declare-datatypes ((T!22314 0))(
  ( (T!22315 (val!3964 Int)) )
))
(declare-datatypes ((List!12143 0))(
  ( (Nil!12119) (Cons!12119 (h!17520 T!22314) (t!112559 List!12143)) )
))
(declare-fun r!2028 () List!12143)

(declare-fun lt!412641 () Int)

(declare-fun l!2744 () List!12143)

(assert (=> b!1207375 (= res!543200 (and (<= until!61 (+ lt!412641 lt!412642)) (not (= l!2744 Nil!12119)) (not (= r!2028 Nil!12119)) (not (= until!61 0))))))

(declare-fun size!9659 (List!12143) Int)

(assert (=> b!1207375 (= lt!412642 (size!9659 r!2028))))

(assert (=> b!1207375 (= lt!412641 (size!9659 l!2744))))

(declare-fun b!1207377 () Bool)

(declare-fun lt!412640 () List!12143)

(assert (=> b!1207377 (= e!774459 (> (- until!61 1) (+ (size!9659 lt!412640) lt!412642)))))

(declare-fun b!1207378 () Bool)

(declare-fun e!774461 () Bool)

(declare-fun tp_is_empty!6131 () Bool)

(declare-fun tp!342081 () Bool)

(assert (=> b!1207378 (= e!774461 (and tp_is_empty!6131 tp!342081))))

(declare-fun b!1207379 () Bool)

(declare-fun res!543199 () Bool)

(assert (=> b!1207379 (=> (not res!543199) (not e!774460))))

(assert (=> b!1207379 (= res!543199 (not (= from!613 0)))))

(declare-fun b!1207380 () Bool)

(assert (=> b!1207380 (= e!774464 e!774460)))

(declare-fun res!543201 () Bool)

(assert (=> b!1207380 (=> (not res!543201) (not e!774460))))

(declare-fun tail!1740 (List!12143) List!12143)

(declare-fun ++!3141 (List!12143 List!12143) List!12143)

(assert (=> b!1207380 (= res!543201 (= (tail!1740 (++!3141 l!2744 r!2028)) (++!3141 lt!412640 r!2028)))))

(assert (=> b!1207380 (= lt!412640 (tail!1740 l!2744))))

(declare-fun res!543202 () Bool)

(assert (=> start!107496 (=> (not res!543202) (not e!774462))))

(assert (=> start!107496 (= res!543202 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107496 e!774462))

(assert (=> start!107496 true))

(declare-fun e!774463 () Bool)

(assert (=> start!107496 e!774463))

(assert (=> start!107496 e!774461))

(declare-fun b!1207376 () Bool)

(declare-fun tp!342080 () Bool)

(assert (=> b!1207376 (= e!774463 (and tp_is_empty!6131 tp!342080))))

(assert (= (and start!107496 res!543202) b!1207375))

(assert (= (and b!1207375 res!543200) b!1207380))

(assert (= (and b!1207380 res!543201) b!1207379))

(assert (= (and b!1207379 res!543199) b!1207374))

(assert (= (and b!1207374 (not res!543198)) b!1207377))

(get-info :version)

(assert (= (and start!107496 ((_ is Cons!12119) l!2744)) b!1207376))

(assert (= (and start!107496 ((_ is Cons!12119) r!2028)) b!1207378))

(declare-fun m!1382743 () Bool)

(assert (=> b!1207375 m!1382743))

(declare-fun m!1382745 () Bool)

(assert (=> b!1207375 m!1382745))

(declare-fun m!1382747 () Bool)

(assert (=> b!1207377 m!1382747))

(declare-fun m!1382749 () Bool)

(assert (=> b!1207380 m!1382749))

(assert (=> b!1207380 m!1382749))

(declare-fun m!1382751 () Bool)

(assert (=> b!1207380 m!1382751))

(declare-fun m!1382753 () Bool)

(assert (=> b!1207380 m!1382753))

(declare-fun m!1382755 () Bool)

(assert (=> b!1207380 m!1382755))

(check-sat (not b!1207377) (not b!1207380) (not b!1207375) (not b!1207378) tp_is_empty!6131 (not b!1207376))
(check-sat)
(get-model)

(declare-fun d!345297 () Bool)

(declare-fun lt!412645 () Int)

(assert (=> d!345297 (>= lt!412645 0)))

(declare-fun e!774467 () Int)

(assert (=> d!345297 (= lt!412645 e!774467)))

(declare-fun c!202027 () Bool)

(assert (=> d!345297 (= c!202027 ((_ is Nil!12119) lt!412640))))

(assert (=> d!345297 (= (size!9659 lt!412640) lt!412645)))

(declare-fun b!1207385 () Bool)

(assert (=> b!1207385 (= e!774467 0)))

(declare-fun b!1207386 () Bool)

(assert (=> b!1207386 (= e!774467 (+ 1 (size!9659 (t!112559 lt!412640))))))

(assert (= (and d!345297 c!202027) b!1207385))

(assert (= (and d!345297 (not c!202027)) b!1207386))

(declare-fun m!1382757 () Bool)

(assert (=> b!1207386 m!1382757))

(assert (=> b!1207377 d!345297))

(declare-fun d!345301 () Bool)

(declare-fun lt!412646 () Int)

(assert (=> d!345301 (>= lt!412646 0)))

(declare-fun e!774468 () Int)

(assert (=> d!345301 (= lt!412646 e!774468)))

(declare-fun c!202028 () Bool)

(assert (=> d!345301 (= c!202028 ((_ is Nil!12119) r!2028))))

(assert (=> d!345301 (= (size!9659 r!2028) lt!412646)))

(declare-fun b!1207387 () Bool)

(assert (=> b!1207387 (= e!774468 0)))

(declare-fun b!1207388 () Bool)

(assert (=> b!1207388 (= e!774468 (+ 1 (size!9659 (t!112559 r!2028))))))

(assert (= (and d!345301 c!202028) b!1207387))

(assert (= (and d!345301 (not c!202028)) b!1207388))

(declare-fun m!1382759 () Bool)

(assert (=> b!1207388 m!1382759))

(assert (=> b!1207375 d!345301))

(declare-fun d!345303 () Bool)

(declare-fun lt!412647 () Int)

(assert (=> d!345303 (>= lt!412647 0)))

(declare-fun e!774469 () Int)

(assert (=> d!345303 (= lt!412647 e!774469)))

(declare-fun c!202029 () Bool)

(assert (=> d!345303 (= c!202029 ((_ is Nil!12119) l!2744))))

(assert (=> d!345303 (= (size!9659 l!2744) lt!412647)))

(declare-fun b!1207389 () Bool)

(assert (=> b!1207389 (= e!774469 0)))

(declare-fun b!1207390 () Bool)

(assert (=> b!1207390 (= e!774469 (+ 1 (size!9659 (t!112559 l!2744))))))

(assert (= (and d!345303 c!202029) b!1207389))

(assert (= (and d!345303 (not c!202029)) b!1207390))

(declare-fun m!1382761 () Bool)

(assert (=> b!1207390 m!1382761))

(assert (=> b!1207375 d!345303))

(declare-fun d!345305 () Bool)

(assert (=> d!345305 (= (tail!1740 (++!3141 l!2744 r!2028)) (t!112559 (++!3141 l!2744 r!2028)))))

(assert (=> b!1207380 d!345305))

(declare-fun b!1207414 () Bool)

(declare-fun e!774482 () List!12143)

(assert (=> b!1207414 (= e!774482 (Cons!12119 (h!17520 l!2744) (++!3141 (t!112559 l!2744) r!2028)))))

(declare-fun e!774481 () Bool)

(declare-fun lt!412655 () List!12143)

(declare-fun b!1207416 () Bool)

(assert (=> b!1207416 (= e!774481 (or (not (= r!2028 Nil!12119)) (= lt!412655 l!2744)))))

(declare-fun d!345307 () Bool)

(assert (=> d!345307 e!774481))

(declare-fun res!543211 () Bool)

(assert (=> d!345307 (=> (not res!543211) (not e!774481))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1718 (List!12143) (InoxSet T!22314))

(assert (=> d!345307 (= res!543211 (= (content!1718 lt!412655) ((_ map or) (content!1718 l!2744) (content!1718 r!2028))))))

(assert (=> d!345307 (= lt!412655 e!774482)))

(declare-fun c!202037 () Bool)

(assert (=> d!345307 (= c!202037 ((_ is Nil!12119) l!2744))))

(assert (=> d!345307 (= (++!3141 l!2744 r!2028) lt!412655)))

(declare-fun b!1207415 () Bool)

(declare-fun res!543212 () Bool)

(assert (=> b!1207415 (=> (not res!543212) (not e!774481))))

(assert (=> b!1207415 (= res!543212 (= (size!9659 lt!412655) (+ (size!9659 l!2744) (size!9659 r!2028))))))

(declare-fun b!1207413 () Bool)

(assert (=> b!1207413 (= e!774482 r!2028)))

(assert (= (and d!345307 c!202037) b!1207413))

(assert (= (and d!345307 (not c!202037)) b!1207414))

(assert (= (and d!345307 res!543211) b!1207415))

(assert (= (and b!1207415 res!543212) b!1207416))

(declare-fun m!1382765 () Bool)

(assert (=> b!1207414 m!1382765))

(declare-fun m!1382767 () Bool)

(assert (=> d!345307 m!1382767))

(declare-fun m!1382769 () Bool)

(assert (=> d!345307 m!1382769))

(declare-fun m!1382771 () Bool)

(assert (=> d!345307 m!1382771))

(declare-fun m!1382773 () Bool)

(assert (=> b!1207415 m!1382773))

(assert (=> b!1207415 m!1382745))

(assert (=> b!1207415 m!1382743))

(assert (=> b!1207380 d!345307))

(declare-fun b!1207418 () Bool)

(declare-fun e!774484 () List!12143)

(assert (=> b!1207418 (= e!774484 (Cons!12119 (h!17520 lt!412640) (++!3141 (t!112559 lt!412640) r!2028)))))

(declare-fun b!1207420 () Bool)

(declare-fun lt!412656 () List!12143)

(declare-fun e!774483 () Bool)

(assert (=> b!1207420 (= e!774483 (or (not (= r!2028 Nil!12119)) (= lt!412656 lt!412640)))))

(declare-fun d!345313 () Bool)

(assert (=> d!345313 e!774483))

(declare-fun res!543213 () Bool)

(assert (=> d!345313 (=> (not res!543213) (not e!774483))))

(assert (=> d!345313 (= res!543213 (= (content!1718 lt!412656) ((_ map or) (content!1718 lt!412640) (content!1718 r!2028))))))

(assert (=> d!345313 (= lt!412656 e!774484)))

(declare-fun c!202038 () Bool)

(assert (=> d!345313 (= c!202038 ((_ is Nil!12119) lt!412640))))

(assert (=> d!345313 (= (++!3141 lt!412640 r!2028) lt!412656)))

(declare-fun b!1207419 () Bool)

(declare-fun res!543214 () Bool)

(assert (=> b!1207419 (=> (not res!543214) (not e!774483))))

(assert (=> b!1207419 (= res!543214 (= (size!9659 lt!412656) (+ (size!9659 lt!412640) (size!9659 r!2028))))))

(declare-fun b!1207417 () Bool)

(assert (=> b!1207417 (= e!774484 r!2028)))

(assert (= (and d!345313 c!202038) b!1207417))

(assert (= (and d!345313 (not c!202038)) b!1207418))

(assert (= (and d!345313 res!543213) b!1207419))

(assert (= (and b!1207419 res!543214) b!1207420))

(declare-fun m!1382775 () Bool)

(assert (=> b!1207418 m!1382775))

(declare-fun m!1382777 () Bool)

(assert (=> d!345313 m!1382777))

(declare-fun m!1382779 () Bool)

(assert (=> d!345313 m!1382779))

(assert (=> d!345313 m!1382771))

(declare-fun m!1382781 () Bool)

(assert (=> b!1207419 m!1382781))

(assert (=> b!1207419 m!1382747))

(assert (=> b!1207419 m!1382743))

(assert (=> b!1207380 d!345313))

(declare-fun d!345315 () Bool)

(assert (=> d!345315 (= (tail!1740 l!2744) (t!112559 l!2744))))

(assert (=> b!1207380 d!345315))

(declare-fun b!1207429 () Bool)

(declare-fun e!774489 () Bool)

(declare-fun tp!342084 () Bool)

(assert (=> b!1207429 (= e!774489 (and tp_is_empty!6131 tp!342084))))

(assert (=> b!1207378 (= tp!342081 e!774489)))

(assert (= (and b!1207378 ((_ is Cons!12119) (t!112559 r!2028))) b!1207429))

(declare-fun b!1207430 () Bool)

(declare-fun e!774490 () Bool)

(declare-fun tp!342085 () Bool)

(assert (=> b!1207430 (= e!774490 (and tp_is_empty!6131 tp!342085))))

(assert (=> b!1207376 (= tp!342080 e!774490)))

(assert (= (and b!1207376 ((_ is Cons!12119) (t!112559 l!2744))) b!1207430))

(check-sat (not b!1207430) (not d!345313) (not b!1207419) (not b!1207386) (not b!1207414) (not b!1207418) (not b!1207390) tp_is_empty!6131 (not d!345307) (not b!1207415) (not b!1207388) (not b!1207429))
(check-sat)
