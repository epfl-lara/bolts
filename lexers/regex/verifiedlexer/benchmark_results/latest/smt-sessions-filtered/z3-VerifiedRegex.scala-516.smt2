; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14278 () Bool)

(assert start!14278)

(declare-fun res!64064 () Bool)

(declare-fun e!79358 () Bool)

(assert (=> start!14278 (=> (not res!64064) (not e!79358))))

(declare-datatypes ((B!885 0))(
  ( (B!886 (val!928 Int)) )
))
(declare-datatypes ((List!2246 0))(
  ( (Nil!2240) (Cons!2240 (h!7637 B!885) (t!22832 List!2246)) )
))
(declare-fun sub!16 () List!2246)

(declare-fun lt!40911 () List!2246)

(declare-fun subseq!87 (List!2246 List!2246) Bool)

(assert (=> start!14278 (= res!64064 (subseq!87 sub!16 lt!40911))))

(declare-fun l1!1230 () List!2246)

(declare-fun l2!1199 () List!2246)

(declare-fun ++!514 (List!2246 List!2246) List!2246)

(assert (=> start!14278 (= lt!40911 (++!514 l1!1230 l2!1199))))

(assert (=> start!14278 e!79358))

(declare-fun e!79354 () Bool)

(assert (=> start!14278 e!79354))

(declare-fun e!79359 () Bool)

(assert (=> start!14278 e!79359))

(declare-fun e!79360 () Bool)

(assert (=> start!14278 e!79360))

(declare-fun e!79361 () Bool)

(assert (=> start!14278 e!79361))

(declare-fun b!136426 () Bool)

(declare-fun e!79356 () Bool)

(assert (=> b!136426 (= e!79356 (not (subseq!87 (t!22832 sub!16) (t!22832 lt!40911))))))

(declare-fun b!136427 () Bool)

(declare-fun e!79355 () Bool)

(assert (=> b!136427 (= e!79358 e!79355)))

(declare-fun res!64062 () Bool)

(assert (=> b!136427 (=> (not res!64062) (not e!79355))))

(declare-fun e!79357 () Bool)

(assert (=> b!136427 (= res!64062 e!79357)))

(declare-fun res!64068 () Bool)

(assert (=> b!136427 (=> res!64068 e!79357)))

(declare-fun lt!40912 () Bool)

(assert (=> b!136427 (= res!64068 lt!40912)))

(get-info :version)

(assert (=> b!136427 (= lt!40912 (not ((_ is Cons!2240) lt!40911)))))

(declare-fun b!136428 () Bool)

(declare-fun tp_is_empty!1529 () Bool)

(declare-fun tp!71147 () Bool)

(assert (=> b!136428 (= e!79360 (and tp_is_empty!1529 tp!71147))))

(declare-fun b!136429 () Bool)

(declare-fun l3!231 () List!2246)

(assert (=> b!136429 (= e!79355 (not (subseq!87 sub!16 (++!514 (++!514 l1!1230 l3!231) l2!1199))))))

(declare-fun b!136430 () Bool)

(declare-fun tp!71149 () Bool)

(assert (=> b!136430 (= e!79354 (and tp_is_empty!1529 tp!71149))))

(declare-fun b!136431 () Bool)

(declare-fun res!64063 () Bool)

(assert (=> b!136431 (=> (not res!64063) (not e!79358))))

(assert (=> b!136431 (= res!64063 (not ((_ is Nil!2240) sub!16)))))

(declare-fun b!136432 () Bool)

(declare-fun res!64067 () Bool)

(assert (=> b!136432 (=> (not res!64067) (not e!79355))))

(assert (=> b!136432 (= res!64067 (not ((_ is Cons!2240) lt!40911)))))

(declare-fun b!136433 () Bool)

(declare-fun tp!71148 () Bool)

(assert (=> b!136433 (= e!79359 (and tp_is_empty!1529 tp!71148))))

(declare-fun b!136434 () Bool)

(declare-fun res!64065 () Bool)

(assert (=> b!136434 (=> (not res!64065) (not e!79355))))

(assert (=> b!136434 (= res!64065 e!79356)))

(declare-fun res!64066 () Bool)

(assert (=> b!136434 (=> res!64066 e!79356)))

(assert (=> b!136434 (= res!64066 (or lt!40912 (not (= (h!7637 sub!16) (h!7637 lt!40911)))))))

(declare-fun b!136435 () Bool)

(declare-fun tp!71150 () Bool)

(assert (=> b!136435 (= e!79361 (and tp_is_empty!1529 tp!71150))))

(declare-fun b!136436 () Bool)

(declare-fun isEmpty!882 (List!2246) Bool)

(assert (=> b!136436 (= e!79357 (not (isEmpty!882 l1!1230)))))

(assert (= (and start!14278 res!64064) b!136431))

(assert (= (and b!136431 res!64063) b!136427))

(assert (= (and b!136427 (not res!64068)) b!136436))

(assert (= (and b!136427 res!64062) b!136434))

(assert (= (and b!136434 (not res!64066)) b!136426))

(assert (= (and b!136434 res!64065) b!136432))

(assert (= (and b!136432 res!64067) b!136429))

(assert (= (and start!14278 ((_ is Cons!2240) sub!16)) b!136430))

(assert (= (and start!14278 ((_ is Cons!2240) l3!231)) b!136433))

(assert (= (and start!14278 ((_ is Cons!2240) l1!1230)) b!136428))

(assert (= (and start!14278 ((_ is Cons!2240) l2!1199)) b!136435))

(declare-fun m!121007 () Bool)

(assert (=> start!14278 m!121007))

(declare-fun m!121009 () Bool)

(assert (=> start!14278 m!121009))

(declare-fun m!121011 () Bool)

(assert (=> b!136426 m!121011))

(declare-fun m!121013 () Bool)

(assert (=> b!136429 m!121013))

(assert (=> b!136429 m!121013))

(declare-fun m!121015 () Bool)

(assert (=> b!136429 m!121015))

(assert (=> b!136429 m!121015))

(declare-fun m!121017 () Bool)

(assert (=> b!136429 m!121017))

(declare-fun m!121019 () Bool)

(assert (=> b!136436 m!121019))

(check-sat tp_is_empty!1529 (not b!136436) (not b!136430) (not b!136435) (not b!136433) (not b!136426) (not b!136428) (not start!14278) (not b!136429))
(check-sat)
(get-model)

(declare-fun d!32701 () Bool)

(declare-fun res!64087 () Bool)

(declare-fun e!79381 () Bool)

(assert (=> d!32701 (=> res!64087 e!79381)))

(assert (=> d!32701 (= res!64087 ((_ is Nil!2240) sub!16))))

(assert (=> d!32701 (= (subseq!87 sub!16 lt!40911) e!79381)))

(declare-fun b!136455 () Bool)

(declare-fun e!79378 () Bool)

(assert (=> b!136455 (= e!79378 (subseq!87 (t!22832 sub!16) (t!22832 lt!40911)))))

(declare-fun b!136456 () Bool)

(declare-fun e!79380 () Bool)

(assert (=> b!136456 (= e!79380 (subseq!87 sub!16 (t!22832 lt!40911)))))

(declare-fun b!136453 () Bool)

(declare-fun e!79379 () Bool)

(assert (=> b!136453 (= e!79381 e!79379)))

(declare-fun res!64085 () Bool)

(assert (=> b!136453 (=> (not res!64085) (not e!79379))))

(assert (=> b!136453 (= res!64085 ((_ is Cons!2240) lt!40911))))

(declare-fun b!136454 () Bool)

(assert (=> b!136454 (= e!79379 e!79380)))

(declare-fun res!64086 () Bool)

(assert (=> b!136454 (=> res!64086 e!79380)))

(assert (=> b!136454 (= res!64086 e!79378)))

(declare-fun res!64088 () Bool)

(assert (=> b!136454 (=> (not res!64088) (not e!79378))))

(assert (=> b!136454 (= res!64088 (= (h!7637 sub!16) (h!7637 lt!40911)))))

(assert (= (and d!32701 (not res!64087)) b!136453))

(assert (= (and b!136453 res!64085) b!136454))

(assert (= (and b!136454 res!64088) b!136455))

(assert (= (and b!136454 (not res!64086)) b!136456))

(assert (=> b!136455 m!121011))

(declare-fun m!121021 () Bool)

(assert (=> b!136456 m!121021))

(assert (=> start!14278 d!32701))

(declare-fun lt!40917 () List!2246)

(declare-fun b!136480 () Bool)

(declare-fun e!79395 () Bool)

(assert (=> b!136480 (= e!79395 (or (not (= l2!1199 Nil!2240)) (= lt!40917 l1!1230)))))

(declare-fun b!136478 () Bool)

(declare-fun e!79394 () List!2246)

(assert (=> b!136478 (= e!79394 (Cons!2240 (h!7637 l1!1230) (++!514 (t!22832 l1!1230) l2!1199)))))

(declare-fun b!136479 () Bool)

(declare-fun res!64102 () Bool)

(assert (=> b!136479 (=> (not res!64102) (not e!79395))))

(declare-fun size!2028 (List!2246) Int)

(assert (=> b!136479 (= res!64102 (= (size!2028 lt!40917) (+ (size!2028 l1!1230) (size!2028 l2!1199))))))

(declare-fun b!136477 () Bool)

(assert (=> b!136477 (= e!79394 l2!1199)))

(declare-fun d!32705 () Bool)

(assert (=> d!32705 e!79395))

(declare-fun res!64101 () Bool)

(assert (=> d!32705 (=> (not res!64101) (not e!79395))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!340 (List!2246) (InoxSet B!885))

(assert (=> d!32705 (= res!64101 (= (content!340 lt!40917) ((_ map or) (content!340 l1!1230) (content!340 l2!1199))))))

(assert (=> d!32705 (= lt!40917 e!79394)))

(declare-fun c!28911 () Bool)

(assert (=> d!32705 (= c!28911 ((_ is Nil!2240) l1!1230))))

(assert (=> d!32705 (= (++!514 l1!1230 l2!1199) lt!40917)))

(assert (= (and d!32705 c!28911) b!136477))

(assert (= (and d!32705 (not c!28911)) b!136478))

(assert (= (and d!32705 res!64101) b!136479))

(assert (= (and b!136479 res!64102) b!136480))

(declare-fun m!121027 () Bool)

(assert (=> b!136478 m!121027))

(declare-fun m!121029 () Bool)

(assert (=> b!136479 m!121029))

(declare-fun m!121031 () Bool)

(assert (=> b!136479 m!121031))

(declare-fun m!121033 () Bool)

(assert (=> b!136479 m!121033))

(declare-fun m!121035 () Bool)

(assert (=> d!32705 m!121035))

(declare-fun m!121037 () Bool)

(assert (=> d!32705 m!121037))

(declare-fun m!121039 () Bool)

(assert (=> d!32705 m!121039))

(assert (=> start!14278 d!32705))

(declare-fun d!32709 () Bool)

(declare-fun res!64107 () Bool)

(declare-fun e!79401 () Bool)

(assert (=> d!32709 (=> res!64107 e!79401)))

(assert (=> d!32709 (= res!64107 ((_ is Nil!2240) sub!16))))

(assert (=> d!32709 (= (subseq!87 sub!16 (++!514 (++!514 l1!1230 l3!231) l2!1199)) e!79401)))

(declare-fun e!79398 () Bool)

(declare-fun b!136487 () Bool)

(assert (=> b!136487 (= e!79398 (subseq!87 (t!22832 sub!16) (t!22832 (++!514 (++!514 l1!1230 l3!231) l2!1199))))))

(declare-fun b!136488 () Bool)

(declare-fun e!79400 () Bool)

(assert (=> b!136488 (= e!79400 (subseq!87 sub!16 (t!22832 (++!514 (++!514 l1!1230 l3!231) l2!1199))))))

(declare-fun b!136485 () Bool)

(declare-fun e!79399 () Bool)

(assert (=> b!136485 (= e!79401 e!79399)))

(declare-fun res!64105 () Bool)

(assert (=> b!136485 (=> (not res!64105) (not e!79399))))

(assert (=> b!136485 (= res!64105 ((_ is Cons!2240) (++!514 (++!514 l1!1230 l3!231) l2!1199)))))

(declare-fun b!136486 () Bool)

(assert (=> b!136486 (= e!79399 e!79400)))

(declare-fun res!64106 () Bool)

(assert (=> b!136486 (=> res!64106 e!79400)))

(assert (=> b!136486 (= res!64106 e!79398)))

(declare-fun res!64108 () Bool)

(assert (=> b!136486 (=> (not res!64108) (not e!79398))))

(assert (=> b!136486 (= res!64108 (= (h!7637 sub!16) (h!7637 (++!514 (++!514 l1!1230 l3!231) l2!1199))))))

(assert (= (and d!32709 (not res!64107)) b!136485))

(assert (= (and b!136485 res!64105) b!136486))

(assert (= (and b!136486 res!64108) b!136487))

(assert (= (and b!136486 (not res!64106)) b!136488))

(declare-fun m!121055 () Bool)

(assert (=> b!136487 m!121055))

(declare-fun m!121057 () Bool)

(assert (=> b!136488 m!121057))

(assert (=> b!136429 d!32709))

(declare-fun e!79405 () Bool)

(declare-fun lt!40920 () List!2246)

(declare-fun b!136496 () Bool)

(assert (=> b!136496 (= e!79405 (or (not (= l2!1199 Nil!2240)) (= lt!40920 (++!514 l1!1230 l3!231))))))

(declare-fun e!79404 () List!2246)

(declare-fun b!136494 () Bool)

(assert (=> b!136494 (= e!79404 (Cons!2240 (h!7637 (++!514 l1!1230 l3!231)) (++!514 (t!22832 (++!514 l1!1230 l3!231)) l2!1199)))))

(declare-fun b!136495 () Bool)

(declare-fun res!64112 () Bool)

(assert (=> b!136495 (=> (not res!64112) (not e!79405))))

(assert (=> b!136495 (= res!64112 (= (size!2028 lt!40920) (+ (size!2028 (++!514 l1!1230 l3!231)) (size!2028 l2!1199))))))

(declare-fun b!136493 () Bool)

(assert (=> b!136493 (= e!79404 l2!1199)))

(declare-fun d!32713 () Bool)

(assert (=> d!32713 e!79405))

(declare-fun res!64111 () Bool)

(assert (=> d!32713 (=> (not res!64111) (not e!79405))))

(assert (=> d!32713 (= res!64111 (= (content!340 lt!40920) ((_ map or) (content!340 (++!514 l1!1230 l3!231)) (content!340 l2!1199))))))

(assert (=> d!32713 (= lt!40920 e!79404)))

(declare-fun c!28914 () Bool)

(assert (=> d!32713 (= c!28914 ((_ is Nil!2240) (++!514 l1!1230 l3!231)))))

(assert (=> d!32713 (= (++!514 (++!514 l1!1230 l3!231) l2!1199) lt!40920)))

(assert (= (and d!32713 c!28914) b!136493))

(assert (= (and d!32713 (not c!28914)) b!136494))

(assert (= (and d!32713 res!64111) b!136495))

(assert (= (and b!136495 res!64112) b!136496))

(declare-fun m!121073 () Bool)

(assert (=> b!136494 m!121073))

(declare-fun m!121075 () Bool)

(assert (=> b!136495 m!121075))

(assert (=> b!136495 m!121013))

(declare-fun m!121077 () Bool)

(assert (=> b!136495 m!121077))

(assert (=> b!136495 m!121033))

(declare-fun m!121079 () Bool)

(assert (=> d!32713 m!121079))

(assert (=> d!32713 m!121013))

(declare-fun m!121081 () Bool)

(assert (=> d!32713 m!121081))

(assert (=> d!32713 m!121039))

(assert (=> b!136429 d!32713))

(declare-fun e!79407 () Bool)

(declare-fun lt!40921 () List!2246)

(declare-fun b!136500 () Bool)

(assert (=> b!136500 (= e!79407 (or (not (= l3!231 Nil!2240)) (= lt!40921 l1!1230)))))

(declare-fun b!136498 () Bool)

(declare-fun e!79406 () List!2246)

(assert (=> b!136498 (= e!79406 (Cons!2240 (h!7637 l1!1230) (++!514 (t!22832 l1!1230) l3!231)))))

(declare-fun b!136499 () Bool)

(declare-fun res!64114 () Bool)

(assert (=> b!136499 (=> (not res!64114) (not e!79407))))

(assert (=> b!136499 (= res!64114 (= (size!2028 lt!40921) (+ (size!2028 l1!1230) (size!2028 l3!231))))))

(declare-fun b!136497 () Bool)

(assert (=> b!136497 (= e!79406 l3!231)))

(declare-fun d!32717 () Bool)

(assert (=> d!32717 e!79407))

(declare-fun res!64113 () Bool)

(assert (=> d!32717 (=> (not res!64113) (not e!79407))))

(assert (=> d!32717 (= res!64113 (= (content!340 lt!40921) ((_ map or) (content!340 l1!1230) (content!340 l3!231))))))

(assert (=> d!32717 (= lt!40921 e!79406)))

(declare-fun c!28915 () Bool)

(assert (=> d!32717 (= c!28915 ((_ is Nil!2240) l1!1230))))

(assert (=> d!32717 (= (++!514 l1!1230 l3!231) lt!40921)))

(assert (= (and d!32717 c!28915) b!136497))

(assert (= (and d!32717 (not c!28915)) b!136498))

(assert (= (and d!32717 res!64113) b!136499))

(assert (= (and b!136499 res!64114) b!136500))

(declare-fun m!121083 () Bool)

(assert (=> b!136498 m!121083))

(declare-fun m!121085 () Bool)

(assert (=> b!136499 m!121085))

(assert (=> b!136499 m!121031))

(declare-fun m!121087 () Bool)

(assert (=> b!136499 m!121087))

(declare-fun m!121089 () Bool)

(assert (=> d!32717 m!121089))

(assert (=> d!32717 m!121037))

(declare-fun m!121091 () Bool)

(assert (=> d!32717 m!121091))

(assert (=> b!136429 d!32717))

(declare-fun d!32721 () Bool)

(assert (=> d!32721 (= (isEmpty!882 l1!1230) ((_ is Nil!2240) l1!1230))))

(assert (=> b!136436 d!32721))

(declare-fun d!32725 () Bool)

(declare-fun res!64125 () Bool)

(declare-fun e!79419 () Bool)

(assert (=> d!32725 (=> res!64125 e!79419)))

(assert (=> d!32725 (= res!64125 ((_ is Nil!2240) (t!22832 sub!16)))))

(assert (=> d!32725 (= (subseq!87 (t!22832 sub!16) (t!22832 lt!40911)) e!79419)))

(declare-fun b!136511 () Bool)

(declare-fun e!79416 () Bool)

(assert (=> b!136511 (= e!79416 (subseq!87 (t!22832 (t!22832 sub!16)) (t!22832 (t!22832 lt!40911))))))

(declare-fun b!136512 () Bool)

(declare-fun e!79418 () Bool)

(assert (=> b!136512 (= e!79418 (subseq!87 (t!22832 sub!16) (t!22832 (t!22832 lt!40911))))))

(declare-fun b!136509 () Bool)

(declare-fun e!79417 () Bool)

(assert (=> b!136509 (= e!79419 e!79417)))

(declare-fun res!64123 () Bool)

(assert (=> b!136509 (=> (not res!64123) (not e!79417))))

(assert (=> b!136509 (= res!64123 ((_ is Cons!2240) (t!22832 lt!40911)))))

(declare-fun b!136510 () Bool)

(assert (=> b!136510 (= e!79417 e!79418)))

(declare-fun res!64124 () Bool)

(assert (=> b!136510 (=> res!64124 e!79418)))

(assert (=> b!136510 (= res!64124 e!79416)))

(declare-fun res!64126 () Bool)

(assert (=> b!136510 (=> (not res!64126) (not e!79416))))

(assert (=> b!136510 (= res!64126 (= (h!7637 (t!22832 sub!16)) (h!7637 (t!22832 lt!40911))))))

(assert (= (and d!32725 (not res!64125)) b!136509))

(assert (= (and b!136509 res!64123) b!136510))

(assert (= (and b!136510 res!64126) b!136511))

(assert (= (and b!136510 (not res!64124)) b!136512))

(declare-fun m!121099 () Bool)

(assert (=> b!136511 m!121099))

(declare-fun m!121101 () Bool)

(assert (=> b!136512 m!121101))

(assert (=> b!136426 d!32725))

(declare-fun b!136525 () Bool)

(declare-fun e!79426 () Bool)

(declare-fun tp!71155 () Bool)

(assert (=> b!136525 (= e!79426 (and tp_is_empty!1529 tp!71155))))

(assert (=> b!136430 (= tp!71149 e!79426)))

(assert (= (and b!136430 ((_ is Cons!2240) (t!22832 sub!16))) b!136525))

(declare-fun b!136527 () Bool)

(declare-fun e!79428 () Bool)

(declare-fun tp!71157 () Bool)

(assert (=> b!136527 (= e!79428 (and tp_is_empty!1529 tp!71157))))

(assert (=> b!136435 (= tp!71150 e!79428)))

(assert (= (and b!136435 ((_ is Cons!2240) (t!22832 l2!1199))) b!136527))

(declare-fun b!136528 () Bool)

(declare-fun e!79429 () Bool)

(declare-fun tp!71158 () Bool)

(assert (=> b!136528 (= e!79429 (and tp_is_empty!1529 tp!71158))))

(assert (=> b!136428 (= tp!71147 e!79429)))

(assert (= (and b!136428 ((_ is Cons!2240) (t!22832 l1!1230))) b!136528))

(declare-fun b!136530 () Bool)

(declare-fun e!79431 () Bool)

(declare-fun tp!71160 () Bool)

(assert (=> b!136530 (= e!79431 (and tp_is_empty!1529 tp!71160))))

(assert (=> b!136433 (= tp!71148 e!79431)))

(assert (= (and b!136433 ((_ is Cons!2240) (t!22832 l3!231))) b!136530))

(check-sat (not d!32705) tp_is_empty!1529 (not b!136499) (not b!136498) (not b!136528) (not b!136479) (not b!136511) (not b!136525) (not b!136487) (not b!136488) (not b!136530) (not b!136478) (not b!136455) (not b!136494) (not b!136495) (not b!136527) (not b!136456) (not d!32717) (not d!32713) (not b!136512))
(check-sat)
