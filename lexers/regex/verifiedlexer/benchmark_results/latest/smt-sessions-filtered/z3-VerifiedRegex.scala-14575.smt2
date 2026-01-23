; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755524 () Bool)

(assert start!755524)

(declare-fun res!3173506 () Bool)

(declare-fun e!4727511 () Bool)

(assert (=> start!755524 (=> (not res!3173506) (not e!4727511))))

(declare-datatypes ((T!148320 0))(
  ( (T!148321 (val!32548 Int)) )
))
(declare-datatypes ((List!75060 0))(
  ( (Nil!74936) (Cons!74936 (h!81384 T!148320) (t!390807 List!75060)) )
))
(declare-datatypes ((IArray!31941 0))(
  ( (IArray!31942 (innerList!16028 List!75060)) )
))
(declare-datatypes ((Conc!15940 0))(
  ( (Node!15940 (left!57155 Conc!15940) (right!57485 Conc!15940) (csize!32110 Int) (cheight!16151 Int)) (Leaf!30516 (xs!19338 IArray!31941) (csize!32111 Int)) (Empty!15940) )
))
(declare-fun t!3624 () Conc!15940)

(get-info :version)

(assert (=> start!755524 (= res!3173506 (and (not ((_ is Empty!15940) t!3624)) ((_ is Leaf!30516) t!3624)))))

(assert (=> start!755524 e!4727511))

(declare-fun e!4727510 () Bool)

(declare-fun inv!96601 (Conc!15940) Bool)

(assert (=> start!755524 (and (inv!96601 t!3624) e!4727510)))

(declare-fun b!8024941 () Bool)

(declare-fun e!4727509 () Bool)

(declare-fun tp!2401669 () Bool)

(assert (=> b!8024941 (= e!4727509 tp!2401669)))

(declare-fun b!8024940 () Bool)

(declare-fun inv!96602 (IArray!31941) Bool)

(assert (=> b!8024940 (= e!4727510 (and (inv!96602 (xs!19338 t!3624)) e!4727509))))

(declare-fun tp!2401668 () Bool)

(declare-fun b!8024939 () Bool)

(declare-fun tp!2401667 () Bool)

(assert (=> b!8024939 (= e!4727510 (and (inv!96601 (left!57155 t!3624)) tp!2401667 (inv!96601 (right!57485 t!3624)) tp!2401668))))

(declare-fun b!8024938 () Bool)

(declare-fun size!43707 (List!75060) Int)

(declare-fun list!19478 (Conc!15940) List!75060)

(assert (=> b!8024938 (= e!4727511 (not (= (csize!32111 t!3624) (size!43707 (list!19478 t!3624)))))))

(assert (= (and start!755524 res!3173506) b!8024938))

(assert (= (and start!755524 ((_ is Node!15940) t!3624)) b!8024939))

(assert (= b!8024940 b!8024941))

(assert (= (and start!755524 ((_ is Leaf!30516) t!3624)) b!8024940))

(declare-fun m!8387214 () Bool)

(assert (=> start!755524 m!8387214))

(declare-fun m!8387216 () Bool)

(assert (=> b!8024940 m!8387216))

(declare-fun m!8387218 () Bool)

(assert (=> b!8024939 m!8387218))

(declare-fun m!8387220 () Bool)

(assert (=> b!8024939 m!8387220))

(declare-fun m!8387222 () Bool)

(assert (=> b!8024938 m!8387222))

(assert (=> b!8024938 m!8387222))

(declare-fun m!8387224 () Bool)

(assert (=> b!8024938 m!8387224))

(check-sat (not start!755524) (not b!8024939) (not b!8024941) (not b!8024938) (not b!8024940))
(check-sat)
(get-model)

(declare-fun d!2392864 () Bool)

(declare-fun c!1472501 () Bool)

(assert (=> d!2392864 (= c!1472501 ((_ is Node!15940) (left!57155 t!3624)))))

(declare-fun e!4727521 () Bool)

(assert (=> d!2392864 (= (inv!96601 (left!57155 t!3624)) e!4727521)))

(declare-fun b!8024958 () Bool)

(declare-fun inv!96603 (Conc!15940) Bool)

(assert (=> b!8024958 (= e!4727521 (inv!96603 (left!57155 t!3624)))))

(declare-fun b!8024959 () Bool)

(declare-fun e!4727522 () Bool)

(assert (=> b!8024959 (= e!4727521 e!4727522)))

(declare-fun res!3173509 () Bool)

(assert (=> b!8024959 (= res!3173509 (not ((_ is Leaf!30516) (left!57155 t!3624))))))

(assert (=> b!8024959 (=> res!3173509 e!4727522)))

(declare-fun b!8024960 () Bool)

(declare-fun inv!96604 (Conc!15940) Bool)

(assert (=> b!8024960 (= e!4727522 (inv!96604 (left!57155 t!3624)))))

(assert (= (and d!2392864 c!1472501) b!8024958))

(assert (= (and d!2392864 (not c!1472501)) b!8024959))

(assert (= (and b!8024959 (not res!3173509)) b!8024960))

(declare-fun m!8387228 () Bool)

(assert (=> b!8024958 m!8387228))

(declare-fun m!8387230 () Bool)

(assert (=> b!8024960 m!8387230))

(assert (=> b!8024939 d!2392864))

(declare-fun d!2392868 () Bool)

(declare-fun c!1472504 () Bool)

(assert (=> d!2392868 (= c!1472504 ((_ is Node!15940) (right!57485 t!3624)))))

(declare-fun e!4727525 () Bool)

(assert (=> d!2392868 (= (inv!96601 (right!57485 t!3624)) e!4727525)))

(declare-fun b!8024965 () Bool)

(assert (=> b!8024965 (= e!4727525 (inv!96603 (right!57485 t!3624)))))

(declare-fun b!8024966 () Bool)

(declare-fun e!4727526 () Bool)

(assert (=> b!8024966 (= e!4727525 e!4727526)))

(declare-fun res!3173510 () Bool)

(assert (=> b!8024966 (= res!3173510 (not ((_ is Leaf!30516) (right!57485 t!3624))))))

(assert (=> b!8024966 (=> res!3173510 e!4727526)))

(declare-fun b!8024967 () Bool)

(assert (=> b!8024967 (= e!4727526 (inv!96604 (right!57485 t!3624)))))

(assert (= (and d!2392868 c!1472504) b!8024965))

(assert (= (and d!2392868 (not c!1472504)) b!8024966))

(assert (= (and b!8024966 (not res!3173510)) b!8024967))

(declare-fun m!8387232 () Bool)

(assert (=> b!8024965 m!8387232))

(declare-fun m!8387234 () Bool)

(assert (=> b!8024967 m!8387234))

(assert (=> b!8024939 d!2392868))

(declare-fun d!2392870 () Bool)

(assert (=> d!2392870 (= (inv!96602 (xs!19338 t!3624)) (<= (size!43707 (innerList!16028 (xs!19338 t!3624))) 2147483647))))

(declare-fun bs!1971255 () Bool)

(assert (= bs!1971255 d!2392870))

(declare-fun m!8387236 () Bool)

(assert (=> bs!1971255 m!8387236))

(assert (=> b!8024940 d!2392870))

(declare-fun d!2392872 () Bool)

(declare-fun c!1472505 () Bool)

(assert (=> d!2392872 (= c!1472505 ((_ is Node!15940) t!3624))))

(declare-fun e!4727527 () Bool)

(assert (=> d!2392872 (= (inv!96601 t!3624) e!4727527)))

(declare-fun b!8024968 () Bool)

(assert (=> b!8024968 (= e!4727527 (inv!96603 t!3624))))

(declare-fun b!8024969 () Bool)

(declare-fun e!4727528 () Bool)

(assert (=> b!8024969 (= e!4727527 e!4727528)))

(declare-fun res!3173511 () Bool)

(assert (=> b!8024969 (= res!3173511 (not ((_ is Leaf!30516) t!3624)))))

(assert (=> b!8024969 (=> res!3173511 e!4727528)))

(declare-fun b!8024970 () Bool)

(assert (=> b!8024970 (= e!4727528 (inv!96604 t!3624))))

(assert (= (and d!2392872 c!1472505) b!8024968))

(assert (= (and d!2392872 (not c!1472505)) b!8024969))

(assert (= (and b!8024969 (not res!3173511)) b!8024970))

(declare-fun m!8387238 () Bool)

(assert (=> b!8024968 m!8387238))

(declare-fun m!8387240 () Bool)

(assert (=> b!8024970 m!8387240))

(assert (=> start!755524 d!2392872))

(declare-fun d!2392874 () Bool)

(declare-fun lt!2720696 () Int)

(assert (=> d!2392874 (>= lt!2720696 0)))

(declare-fun e!4727533 () Int)

(assert (=> d!2392874 (= lt!2720696 e!4727533)))

(declare-fun c!1472510 () Bool)

(assert (=> d!2392874 (= c!1472510 ((_ is Nil!74936) (list!19478 t!3624)))))

(assert (=> d!2392874 (= (size!43707 (list!19478 t!3624)) lt!2720696)))

(declare-fun b!8024979 () Bool)

(assert (=> b!8024979 (= e!4727533 0)))

(declare-fun b!8024980 () Bool)

(assert (=> b!8024980 (= e!4727533 (+ 1 (size!43707 (t!390807 (list!19478 t!3624)))))))

(assert (= (and d!2392874 c!1472510) b!8024979))

(assert (= (and d!2392874 (not c!1472510)) b!8024980))

(declare-fun m!8387250 () Bool)

(assert (=> b!8024980 m!8387250))

(assert (=> b!8024938 d!2392874))

(declare-fun b!8025020 () Bool)

(declare-fun e!4727556 () List!75060)

(declare-fun ++!18578 (List!75060 List!75060) List!75060)

(assert (=> b!8025020 (= e!4727556 (++!18578 (list!19478 (left!57155 t!3624)) (list!19478 (right!57485 t!3624))))))

(declare-fun b!8025017 () Bool)

(declare-fun e!4727555 () List!75060)

(assert (=> b!8025017 (= e!4727555 Nil!74936)))

(declare-fun b!8025018 () Bool)

(assert (=> b!8025018 (= e!4727555 e!4727556)))

(declare-fun c!1472521 () Bool)

(assert (=> b!8025018 (= c!1472521 ((_ is Leaf!30516) t!3624))))

(declare-fun d!2392878 () Bool)

(declare-fun c!1472520 () Bool)

(assert (=> d!2392878 (= c!1472520 ((_ is Empty!15940) t!3624))))

(assert (=> d!2392878 (= (list!19478 t!3624) e!4727555)))

(declare-fun b!8025019 () Bool)

(declare-fun list!19480 (IArray!31941) List!75060)

(assert (=> b!8025019 (= e!4727556 (list!19480 (xs!19338 t!3624)))))

(assert (= (and d!2392878 c!1472520) b!8025017))

(assert (= (and d!2392878 (not c!1472520)) b!8025018))

(assert (= (and b!8025018 c!1472521) b!8025019))

(assert (= (and b!8025018 (not c!1472521)) b!8025020))

(declare-fun m!8387266 () Bool)

(assert (=> b!8025020 m!8387266))

(declare-fun m!8387268 () Bool)

(assert (=> b!8025020 m!8387268))

(assert (=> b!8025020 m!8387266))

(assert (=> b!8025020 m!8387268))

(declare-fun m!8387270 () Bool)

(assert (=> b!8025020 m!8387270))

(declare-fun m!8387272 () Bool)

(assert (=> b!8025019 m!8387272))

(assert (=> b!8024938 d!2392878))

(declare-fun b!8025025 () Bool)

(declare-fun e!4727559 () Bool)

(declare-fun tp_is_empty!54201 () Bool)

(declare-fun tp!2401681 () Bool)

(assert (=> b!8025025 (= e!4727559 (and tp_is_empty!54201 tp!2401681))))

(assert (=> b!8024941 (= tp!2401669 e!4727559)))

(assert (= (and b!8024941 ((_ is Cons!74936) (innerList!16028 (xs!19338 t!3624)))) b!8025025))

(declare-fun tp!2401695 () Bool)

(declare-fun b!8025040 () Bool)

(declare-fun e!4727568 () Bool)

(declare-fun tp!2401696 () Bool)

(assert (=> b!8025040 (= e!4727568 (and (inv!96601 (left!57155 (left!57155 t!3624))) tp!2401695 (inv!96601 (right!57485 (left!57155 t!3624))) tp!2401696))))

(declare-fun b!8025042 () Bool)

(declare-fun e!4727569 () Bool)

(declare-fun tp!2401694 () Bool)

(assert (=> b!8025042 (= e!4727569 tp!2401694)))

(declare-fun b!8025041 () Bool)

(assert (=> b!8025041 (= e!4727568 (and (inv!96602 (xs!19338 (left!57155 t!3624))) e!4727569))))

(assert (=> b!8024939 (= tp!2401667 (and (inv!96601 (left!57155 t!3624)) e!4727568))))

(assert (= (and b!8024939 ((_ is Node!15940) (left!57155 t!3624))) b!8025040))

(assert (= b!8025041 b!8025042))

(assert (= (and b!8024939 ((_ is Leaf!30516) (left!57155 t!3624))) b!8025041))

(declare-fun m!8387286 () Bool)

(assert (=> b!8025040 m!8387286))

(declare-fun m!8387288 () Bool)

(assert (=> b!8025040 m!8387288))

(declare-fun m!8387290 () Bool)

(assert (=> b!8025041 m!8387290))

(assert (=> b!8024939 m!8387218))

(declare-fun e!4727570 () Bool)

(declare-fun tp!2401698 () Bool)

(declare-fun b!8025043 () Bool)

(declare-fun tp!2401699 () Bool)

(assert (=> b!8025043 (= e!4727570 (and (inv!96601 (left!57155 (right!57485 t!3624))) tp!2401698 (inv!96601 (right!57485 (right!57485 t!3624))) tp!2401699))))

(declare-fun b!8025045 () Bool)

(declare-fun e!4727571 () Bool)

(declare-fun tp!2401697 () Bool)

(assert (=> b!8025045 (= e!4727571 tp!2401697)))

(declare-fun b!8025044 () Bool)

(assert (=> b!8025044 (= e!4727570 (and (inv!96602 (xs!19338 (right!57485 t!3624))) e!4727571))))

(assert (=> b!8024939 (= tp!2401668 (and (inv!96601 (right!57485 t!3624)) e!4727570))))

(assert (= (and b!8024939 ((_ is Node!15940) (right!57485 t!3624))) b!8025043))

(assert (= b!8025044 b!8025045))

(assert (= (and b!8024939 ((_ is Leaf!30516) (right!57485 t!3624))) b!8025044))

(declare-fun m!8387292 () Bool)

(assert (=> b!8025043 m!8387292))

(declare-fun m!8387294 () Bool)

(assert (=> b!8025043 m!8387294))

(declare-fun m!8387296 () Bool)

(assert (=> b!8025044 m!8387296))

(assert (=> b!8024939 m!8387220))

(check-sat (not b!8025045) (not b!8024968) (not b!8024958) (not b!8025040) tp_is_empty!54201 (not b!8025025) (not b!8025044) (not d!2392870) (not b!8024980) (not b!8024970) (not b!8024967) (not b!8025041) (not b!8024939) (not b!8024965) (not b!8025019) (not b!8025042) (not b!8024960) (not b!8025020) (not b!8025043))
(check-sat)
(get-model)

(declare-fun d!2392886 () Bool)

(declare-fun e!4727577 () Bool)

(assert (=> d!2392886 e!4727577))

(declare-fun res!3173521 () Bool)

(assert (=> d!2392886 (=> (not res!3173521) (not e!4727577))))

(declare-fun lt!2720699 () List!75060)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15960 (List!75060) (InoxSet T!148320))

(assert (=> d!2392886 (= res!3173521 (= (content!15960 lt!2720699) ((_ map or) (content!15960 (list!19478 (left!57155 t!3624))) (content!15960 (list!19478 (right!57485 t!3624))))))))

(declare-fun e!4727576 () List!75060)

(assert (=> d!2392886 (= lt!2720699 e!4727576)))

(declare-fun c!1472524 () Bool)

(assert (=> d!2392886 (= c!1472524 ((_ is Nil!74936) (list!19478 (left!57155 t!3624))))))

(assert (=> d!2392886 (= (++!18578 (list!19478 (left!57155 t!3624)) (list!19478 (right!57485 t!3624))) lt!2720699)))

(declare-fun b!8025056 () Bool)

(declare-fun res!3173522 () Bool)

(assert (=> b!8025056 (=> (not res!3173522) (not e!4727577))))

(assert (=> b!8025056 (= res!3173522 (= (size!43707 lt!2720699) (+ (size!43707 (list!19478 (left!57155 t!3624))) (size!43707 (list!19478 (right!57485 t!3624))))))))

(declare-fun b!8025057 () Bool)

(assert (=> b!8025057 (= e!4727577 (or (not (= (list!19478 (right!57485 t!3624)) Nil!74936)) (= lt!2720699 (list!19478 (left!57155 t!3624)))))))

(declare-fun b!8025054 () Bool)

(assert (=> b!8025054 (= e!4727576 (list!19478 (right!57485 t!3624)))))

(declare-fun b!8025055 () Bool)

(assert (=> b!8025055 (= e!4727576 (Cons!74936 (h!81384 (list!19478 (left!57155 t!3624))) (++!18578 (t!390807 (list!19478 (left!57155 t!3624))) (list!19478 (right!57485 t!3624)))))))

(assert (= (and d!2392886 c!1472524) b!8025054))

(assert (= (and d!2392886 (not c!1472524)) b!8025055))

(assert (= (and d!2392886 res!3173521) b!8025056))

(assert (= (and b!8025056 res!3173522) b!8025057))

(declare-fun m!8387298 () Bool)

(assert (=> d!2392886 m!8387298))

(assert (=> d!2392886 m!8387266))

(declare-fun m!8387300 () Bool)

(assert (=> d!2392886 m!8387300))

(assert (=> d!2392886 m!8387268))

(declare-fun m!8387302 () Bool)

(assert (=> d!2392886 m!8387302))

(declare-fun m!8387304 () Bool)

(assert (=> b!8025056 m!8387304))

(assert (=> b!8025056 m!8387266))

(declare-fun m!8387306 () Bool)

(assert (=> b!8025056 m!8387306))

(assert (=> b!8025056 m!8387268))

(declare-fun m!8387308 () Bool)

(assert (=> b!8025056 m!8387308))

(assert (=> b!8025055 m!8387268))

(declare-fun m!8387310 () Bool)

(assert (=> b!8025055 m!8387310))

(assert (=> b!8025020 d!2392886))

(declare-fun b!8025061 () Bool)

(declare-fun e!4727579 () List!75060)

(assert (=> b!8025061 (= e!4727579 (++!18578 (list!19478 (left!57155 (left!57155 t!3624))) (list!19478 (right!57485 (left!57155 t!3624)))))))

(declare-fun b!8025058 () Bool)

(declare-fun e!4727578 () List!75060)

(assert (=> b!8025058 (= e!4727578 Nil!74936)))

(declare-fun b!8025059 () Bool)

(assert (=> b!8025059 (= e!4727578 e!4727579)))

(declare-fun c!1472526 () Bool)

(assert (=> b!8025059 (= c!1472526 ((_ is Leaf!30516) (left!57155 t!3624)))))

(declare-fun d!2392888 () Bool)

(declare-fun c!1472525 () Bool)

(assert (=> d!2392888 (= c!1472525 ((_ is Empty!15940) (left!57155 t!3624)))))

(assert (=> d!2392888 (= (list!19478 (left!57155 t!3624)) e!4727578)))

(declare-fun b!8025060 () Bool)

(assert (=> b!8025060 (= e!4727579 (list!19480 (xs!19338 (left!57155 t!3624))))))

(assert (= (and d!2392888 c!1472525) b!8025058))

(assert (= (and d!2392888 (not c!1472525)) b!8025059))

(assert (= (and b!8025059 c!1472526) b!8025060))

(assert (= (and b!8025059 (not c!1472526)) b!8025061))

(declare-fun m!8387312 () Bool)

(assert (=> b!8025061 m!8387312))

(declare-fun m!8387314 () Bool)

(assert (=> b!8025061 m!8387314))

(assert (=> b!8025061 m!8387312))

(assert (=> b!8025061 m!8387314))

(declare-fun m!8387316 () Bool)

(assert (=> b!8025061 m!8387316))

(declare-fun m!8387318 () Bool)

(assert (=> b!8025060 m!8387318))

(assert (=> b!8025020 d!2392888))

(declare-fun b!8025065 () Bool)

(declare-fun e!4727581 () List!75060)

(assert (=> b!8025065 (= e!4727581 (++!18578 (list!19478 (left!57155 (right!57485 t!3624))) (list!19478 (right!57485 (right!57485 t!3624)))))))

(declare-fun b!8025062 () Bool)

(declare-fun e!4727580 () List!75060)

(assert (=> b!8025062 (= e!4727580 Nil!74936)))

(declare-fun b!8025063 () Bool)

(assert (=> b!8025063 (= e!4727580 e!4727581)))

(declare-fun c!1472528 () Bool)

(assert (=> b!8025063 (= c!1472528 ((_ is Leaf!30516) (right!57485 t!3624)))))

(declare-fun d!2392890 () Bool)

(declare-fun c!1472527 () Bool)

(assert (=> d!2392890 (= c!1472527 ((_ is Empty!15940) (right!57485 t!3624)))))

(assert (=> d!2392890 (= (list!19478 (right!57485 t!3624)) e!4727580)))

(declare-fun b!8025064 () Bool)

(assert (=> b!8025064 (= e!4727581 (list!19480 (xs!19338 (right!57485 t!3624))))))

(assert (= (and d!2392890 c!1472527) b!8025062))

(assert (= (and d!2392890 (not c!1472527)) b!8025063))

(assert (= (and b!8025063 c!1472528) b!8025064))

(assert (= (and b!8025063 (not c!1472528)) b!8025065))

(declare-fun m!8387320 () Bool)

(assert (=> b!8025065 m!8387320))

(declare-fun m!8387322 () Bool)

(assert (=> b!8025065 m!8387322))

(assert (=> b!8025065 m!8387320))

(assert (=> b!8025065 m!8387322))

(declare-fun m!8387324 () Bool)

(assert (=> b!8025065 m!8387324))

(declare-fun m!8387326 () Bool)

(assert (=> b!8025064 m!8387326))

(assert (=> b!8025020 d!2392890))

(declare-fun d!2392892 () Bool)

(assert (=> d!2392892 (= (inv!96602 (xs!19338 (right!57485 t!3624))) (<= (size!43707 (innerList!16028 (xs!19338 (right!57485 t!3624)))) 2147483647))))

(declare-fun bs!1971257 () Bool)

(assert (= bs!1971257 d!2392892))

(declare-fun m!8387328 () Bool)

(assert (=> bs!1971257 m!8387328))

(assert (=> b!8025044 d!2392892))

(declare-fun d!2392894 () Bool)

(assert (=> d!2392894 (= (list!19480 (xs!19338 t!3624)) (innerList!16028 (xs!19338 t!3624)))))

(assert (=> b!8025019 d!2392894))

(declare-fun d!2392896 () Bool)

(declare-fun c!1472529 () Bool)

(assert (=> d!2392896 (= c!1472529 ((_ is Node!15940) (left!57155 (right!57485 t!3624))))))

(declare-fun e!4727582 () Bool)

(assert (=> d!2392896 (= (inv!96601 (left!57155 (right!57485 t!3624))) e!4727582)))

(declare-fun b!8025066 () Bool)

(assert (=> b!8025066 (= e!4727582 (inv!96603 (left!57155 (right!57485 t!3624))))))

(declare-fun b!8025067 () Bool)

(declare-fun e!4727583 () Bool)

(assert (=> b!8025067 (= e!4727582 e!4727583)))

(declare-fun res!3173523 () Bool)

(assert (=> b!8025067 (= res!3173523 (not ((_ is Leaf!30516) (left!57155 (right!57485 t!3624)))))))

(assert (=> b!8025067 (=> res!3173523 e!4727583)))

(declare-fun b!8025068 () Bool)

(assert (=> b!8025068 (= e!4727583 (inv!96604 (left!57155 (right!57485 t!3624))))))

(assert (= (and d!2392896 c!1472529) b!8025066))

(assert (= (and d!2392896 (not c!1472529)) b!8025067))

(assert (= (and b!8025067 (not res!3173523)) b!8025068))

(declare-fun m!8387330 () Bool)

(assert (=> b!8025066 m!8387330))

(declare-fun m!8387332 () Bool)

(assert (=> b!8025068 m!8387332))

(assert (=> b!8025043 d!2392896))

(declare-fun d!2392898 () Bool)

(declare-fun c!1472530 () Bool)

(assert (=> d!2392898 (= c!1472530 ((_ is Node!15940) (right!57485 (right!57485 t!3624))))))

(declare-fun e!4727584 () Bool)

(assert (=> d!2392898 (= (inv!96601 (right!57485 (right!57485 t!3624))) e!4727584)))

(declare-fun b!8025069 () Bool)

(assert (=> b!8025069 (= e!4727584 (inv!96603 (right!57485 (right!57485 t!3624))))))

(declare-fun b!8025070 () Bool)

(declare-fun e!4727585 () Bool)

(assert (=> b!8025070 (= e!4727584 e!4727585)))

(declare-fun res!3173524 () Bool)

(assert (=> b!8025070 (= res!3173524 (not ((_ is Leaf!30516) (right!57485 (right!57485 t!3624)))))))

(assert (=> b!8025070 (=> res!3173524 e!4727585)))

(declare-fun b!8025071 () Bool)

(assert (=> b!8025071 (= e!4727585 (inv!96604 (right!57485 (right!57485 t!3624))))))

(assert (= (and d!2392898 c!1472530) b!8025069))

(assert (= (and d!2392898 (not c!1472530)) b!8025070))

(assert (= (and b!8025070 (not res!3173524)) b!8025071))

(declare-fun m!8387334 () Bool)

(assert (=> b!8025069 m!8387334))

(declare-fun m!8387336 () Bool)

(assert (=> b!8025071 m!8387336))

(assert (=> b!8025043 d!2392898))

(declare-fun d!2392900 () Bool)

(declare-fun lt!2720700 () Int)

(assert (=> d!2392900 (>= lt!2720700 0)))

(declare-fun e!4727586 () Int)

(assert (=> d!2392900 (= lt!2720700 e!4727586)))

(declare-fun c!1472531 () Bool)

(assert (=> d!2392900 (= c!1472531 ((_ is Nil!74936) (innerList!16028 (xs!19338 t!3624))))))

(assert (=> d!2392900 (= (size!43707 (innerList!16028 (xs!19338 t!3624))) lt!2720700)))

(declare-fun b!8025072 () Bool)

(assert (=> b!8025072 (= e!4727586 0)))

(declare-fun b!8025073 () Bool)

(assert (=> b!8025073 (= e!4727586 (+ 1 (size!43707 (t!390807 (innerList!16028 (xs!19338 t!3624))))))))

(assert (= (and d!2392900 c!1472531) b!8025072))

(assert (= (and d!2392900 (not c!1472531)) b!8025073))

(declare-fun m!8387338 () Bool)

(assert (=> b!8025073 m!8387338))

(assert (=> d!2392870 d!2392900))

(declare-fun d!2392902 () Bool)

(declare-fun res!3173531 () Bool)

(declare-fun e!4727589 () Bool)

(assert (=> d!2392902 (=> (not res!3173531) (not e!4727589))))

(declare-fun size!43709 (Conc!15940) Int)

(assert (=> d!2392902 (= res!3173531 (= (csize!32110 t!3624) (+ (size!43709 (left!57155 t!3624)) (size!43709 (right!57485 t!3624)))))))

(assert (=> d!2392902 (= (inv!96603 t!3624) e!4727589)))

(declare-fun b!8025080 () Bool)

(declare-fun res!3173532 () Bool)

(assert (=> b!8025080 (=> (not res!3173532) (not e!4727589))))

(assert (=> b!8025080 (= res!3173532 (and (not (= (left!57155 t!3624) Empty!15940)) (not (= (right!57485 t!3624) Empty!15940))))))

(declare-fun b!8025081 () Bool)

(declare-fun res!3173533 () Bool)

(assert (=> b!8025081 (=> (not res!3173533) (not e!4727589))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2243 (Conc!15940) Int)

(assert (=> b!8025081 (= res!3173533 (= (cheight!16151 t!3624) (+ (max!0 (height!2243 (left!57155 t!3624)) (height!2243 (right!57485 t!3624))) 1)))))

(declare-fun b!8025082 () Bool)

(assert (=> b!8025082 (= e!4727589 (<= 0 (cheight!16151 t!3624)))))

(assert (= (and d!2392902 res!3173531) b!8025080))

(assert (= (and b!8025080 res!3173532) b!8025081))

(assert (= (and b!8025081 res!3173533) b!8025082))

(declare-fun m!8387340 () Bool)

(assert (=> d!2392902 m!8387340))

(declare-fun m!8387342 () Bool)

(assert (=> d!2392902 m!8387342))

(declare-fun m!8387344 () Bool)

(assert (=> b!8025081 m!8387344))

(declare-fun m!8387346 () Bool)

(assert (=> b!8025081 m!8387346))

(assert (=> b!8025081 m!8387344))

(assert (=> b!8025081 m!8387346))

(declare-fun m!8387348 () Bool)

(assert (=> b!8025081 m!8387348))

(assert (=> b!8024968 d!2392902))

(declare-fun d!2392904 () Bool)

(declare-fun res!3173534 () Bool)

(declare-fun e!4727590 () Bool)

(assert (=> d!2392904 (=> (not res!3173534) (not e!4727590))))

(assert (=> d!2392904 (= res!3173534 (= (csize!32110 (right!57485 t!3624)) (+ (size!43709 (left!57155 (right!57485 t!3624))) (size!43709 (right!57485 (right!57485 t!3624))))))))

(assert (=> d!2392904 (= (inv!96603 (right!57485 t!3624)) e!4727590)))

(declare-fun b!8025083 () Bool)

(declare-fun res!3173535 () Bool)

(assert (=> b!8025083 (=> (not res!3173535) (not e!4727590))))

(assert (=> b!8025083 (= res!3173535 (and (not (= (left!57155 (right!57485 t!3624)) Empty!15940)) (not (= (right!57485 (right!57485 t!3624)) Empty!15940))))))

(declare-fun b!8025084 () Bool)

(declare-fun res!3173536 () Bool)

(assert (=> b!8025084 (=> (not res!3173536) (not e!4727590))))

(assert (=> b!8025084 (= res!3173536 (= (cheight!16151 (right!57485 t!3624)) (+ (max!0 (height!2243 (left!57155 (right!57485 t!3624))) (height!2243 (right!57485 (right!57485 t!3624)))) 1)))))

(declare-fun b!8025085 () Bool)

(assert (=> b!8025085 (= e!4727590 (<= 0 (cheight!16151 (right!57485 t!3624))))))

(assert (= (and d!2392904 res!3173534) b!8025083))

(assert (= (and b!8025083 res!3173535) b!8025084))

(assert (= (and b!8025084 res!3173536) b!8025085))

(declare-fun m!8387350 () Bool)

(assert (=> d!2392904 m!8387350))

(declare-fun m!8387352 () Bool)

(assert (=> d!2392904 m!8387352))

(declare-fun m!8387354 () Bool)

(assert (=> b!8025084 m!8387354))

(declare-fun m!8387356 () Bool)

(assert (=> b!8025084 m!8387356))

(assert (=> b!8025084 m!8387354))

(assert (=> b!8025084 m!8387356))

(declare-fun m!8387358 () Bool)

(assert (=> b!8025084 m!8387358))

(assert (=> b!8024965 d!2392904))

(declare-fun d!2392906 () Bool)

(declare-fun res!3173537 () Bool)

(declare-fun e!4727591 () Bool)

(assert (=> d!2392906 (=> (not res!3173537) (not e!4727591))))

(assert (=> d!2392906 (= res!3173537 (= (csize!32110 (left!57155 t!3624)) (+ (size!43709 (left!57155 (left!57155 t!3624))) (size!43709 (right!57485 (left!57155 t!3624))))))))

(assert (=> d!2392906 (= (inv!96603 (left!57155 t!3624)) e!4727591)))

(declare-fun b!8025086 () Bool)

(declare-fun res!3173538 () Bool)

(assert (=> b!8025086 (=> (not res!3173538) (not e!4727591))))

(assert (=> b!8025086 (= res!3173538 (and (not (= (left!57155 (left!57155 t!3624)) Empty!15940)) (not (= (right!57485 (left!57155 t!3624)) Empty!15940))))))

(declare-fun b!8025087 () Bool)

(declare-fun res!3173539 () Bool)

(assert (=> b!8025087 (=> (not res!3173539) (not e!4727591))))

(assert (=> b!8025087 (= res!3173539 (= (cheight!16151 (left!57155 t!3624)) (+ (max!0 (height!2243 (left!57155 (left!57155 t!3624))) (height!2243 (right!57485 (left!57155 t!3624)))) 1)))))

(declare-fun b!8025088 () Bool)

(assert (=> b!8025088 (= e!4727591 (<= 0 (cheight!16151 (left!57155 t!3624))))))

(assert (= (and d!2392906 res!3173537) b!8025086))

(assert (= (and b!8025086 res!3173538) b!8025087))

(assert (= (and b!8025087 res!3173539) b!8025088))

(declare-fun m!8387360 () Bool)

(assert (=> d!2392906 m!8387360))

(declare-fun m!8387362 () Bool)

(assert (=> d!2392906 m!8387362))

(declare-fun m!8387364 () Bool)

(assert (=> b!8025087 m!8387364))

(declare-fun m!8387366 () Bool)

(assert (=> b!8025087 m!8387366))

(assert (=> b!8025087 m!8387364))

(assert (=> b!8025087 m!8387366))

(declare-fun m!8387368 () Bool)

(assert (=> b!8025087 m!8387368))

(assert (=> b!8024958 d!2392906))

(declare-fun d!2392908 () Bool)

(declare-fun c!1472532 () Bool)

(assert (=> d!2392908 (= c!1472532 ((_ is Node!15940) (left!57155 (left!57155 t!3624))))))

(declare-fun e!4727592 () Bool)

(assert (=> d!2392908 (= (inv!96601 (left!57155 (left!57155 t!3624))) e!4727592)))

(declare-fun b!8025089 () Bool)

(assert (=> b!8025089 (= e!4727592 (inv!96603 (left!57155 (left!57155 t!3624))))))

(declare-fun b!8025090 () Bool)

(declare-fun e!4727593 () Bool)

(assert (=> b!8025090 (= e!4727592 e!4727593)))

(declare-fun res!3173540 () Bool)

(assert (=> b!8025090 (= res!3173540 (not ((_ is Leaf!30516) (left!57155 (left!57155 t!3624)))))))

(assert (=> b!8025090 (=> res!3173540 e!4727593)))

(declare-fun b!8025091 () Bool)

(assert (=> b!8025091 (= e!4727593 (inv!96604 (left!57155 (left!57155 t!3624))))))

(assert (= (and d!2392908 c!1472532) b!8025089))

(assert (= (and d!2392908 (not c!1472532)) b!8025090))

(assert (= (and b!8025090 (not res!3173540)) b!8025091))

(declare-fun m!8387370 () Bool)

(assert (=> b!8025089 m!8387370))

(declare-fun m!8387372 () Bool)

(assert (=> b!8025091 m!8387372))

(assert (=> b!8025040 d!2392908))

(declare-fun d!2392910 () Bool)

(declare-fun c!1472533 () Bool)

(assert (=> d!2392910 (= c!1472533 ((_ is Node!15940) (right!57485 (left!57155 t!3624))))))

(declare-fun e!4727594 () Bool)

(assert (=> d!2392910 (= (inv!96601 (right!57485 (left!57155 t!3624))) e!4727594)))

(declare-fun b!8025092 () Bool)

(assert (=> b!8025092 (= e!4727594 (inv!96603 (right!57485 (left!57155 t!3624))))))

(declare-fun b!8025093 () Bool)

(declare-fun e!4727595 () Bool)

(assert (=> b!8025093 (= e!4727594 e!4727595)))

(declare-fun res!3173541 () Bool)

(assert (=> b!8025093 (= res!3173541 (not ((_ is Leaf!30516) (right!57485 (left!57155 t!3624)))))))

(assert (=> b!8025093 (=> res!3173541 e!4727595)))

(declare-fun b!8025094 () Bool)

(assert (=> b!8025094 (= e!4727595 (inv!96604 (right!57485 (left!57155 t!3624))))))

(assert (= (and d!2392910 c!1472533) b!8025092))

(assert (= (and d!2392910 (not c!1472533)) b!8025093))

(assert (= (and b!8025093 (not res!3173541)) b!8025094))

(declare-fun m!8387374 () Bool)

(assert (=> b!8025092 m!8387374))

(declare-fun m!8387378 () Bool)

(assert (=> b!8025094 m!8387378))

(assert (=> b!8025040 d!2392910))

(assert (=> b!8024939 d!2392864))

(assert (=> b!8024939 d!2392868))

(declare-fun d!2392914 () Bool)

(declare-fun res!3173546 () Bool)

(declare-fun e!4727598 () Bool)

(assert (=> d!2392914 (=> (not res!3173546) (not e!4727598))))

(assert (=> d!2392914 (= res!3173546 (<= (size!43707 (list!19480 (xs!19338 (left!57155 t!3624)))) 512))))

(assert (=> d!2392914 (= (inv!96604 (left!57155 t!3624)) e!4727598)))

(declare-fun b!8025099 () Bool)

(declare-fun res!3173547 () Bool)

(assert (=> b!8025099 (=> (not res!3173547) (not e!4727598))))

(assert (=> b!8025099 (= res!3173547 (= (csize!32111 (left!57155 t!3624)) (size!43707 (list!19480 (xs!19338 (left!57155 t!3624))))))))

(declare-fun b!8025100 () Bool)

(assert (=> b!8025100 (= e!4727598 (and (> (csize!32111 (left!57155 t!3624)) 0) (<= (csize!32111 (left!57155 t!3624)) 512)))))

(assert (= (and d!2392914 res!3173546) b!8025099))

(assert (= (and b!8025099 res!3173547) b!8025100))

(assert (=> d!2392914 m!8387318))

(assert (=> d!2392914 m!8387318))

(declare-fun m!8387380 () Bool)

(assert (=> d!2392914 m!8387380))

(assert (=> b!8025099 m!8387318))

(assert (=> b!8025099 m!8387318))

(assert (=> b!8025099 m!8387380))

(assert (=> b!8024960 d!2392914))

(declare-fun d!2392918 () Bool)

(declare-fun lt!2720701 () Int)

(assert (=> d!2392918 (>= lt!2720701 0)))

(declare-fun e!4727599 () Int)

(assert (=> d!2392918 (= lt!2720701 e!4727599)))

(declare-fun c!1472534 () Bool)

(assert (=> d!2392918 (= c!1472534 ((_ is Nil!74936) (t!390807 (list!19478 t!3624))))))

(assert (=> d!2392918 (= (size!43707 (t!390807 (list!19478 t!3624))) lt!2720701)))

(declare-fun b!8025101 () Bool)

(assert (=> b!8025101 (= e!4727599 0)))

(declare-fun b!8025102 () Bool)

(assert (=> b!8025102 (= e!4727599 (+ 1 (size!43707 (t!390807 (t!390807 (list!19478 t!3624))))))))

(assert (= (and d!2392918 c!1472534) b!8025101))

(assert (= (and d!2392918 (not c!1472534)) b!8025102))

(declare-fun m!8387382 () Bool)

(assert (=> b!8025102 m!8387382))

(assert (=> b!8024980 d!2392918))

(declare-fun d!2392920 () Bool)

(declare-fun res!3173550 () Bool)

(declare-fun e!4727602 () Bool)

(assert (=> d!2392920 (=> (not res!3173550) (not e!4727602))))

(assert (=> d!2392920 (= res!3173550 (<= (size!43707 (list!19480 (xs!19338 t!3624))) 512))))

(assert (=> d!2392920 (= (inv!96604 t!3624) e!4727602)))

(declare-fun b!8025103 () Bool)

(declare-fun res!3173551 () Bool)

(assert (=> b!8025103 (=> (not res!3173551) (not e!4727602))))

(assert (=> b!8025103 (= res!3173551 (= (csize!32111 t!3624) (size!43707 (list!19480 (xs!19338 t!3624)))))))

(declare-fun b!8025104 () Bool)

(assert (=> b!8025104 (= e!4727602 (and (> (csize!32111 t!3624) 0) (<= (csize!32111 t!3624) 512)))))

(assert (= (and d!2392920 res!3173550) b!8025103))

(assert (= (and b!8025103 res!3173551) b!8025104))

(assert (=> d!2392920 m!8387272))

(assert (=> d!2392920 m!8387272))

(declare-fun m!8387384 () Bool)

(assert (=> d!2392920 m!8387384))

(assert (=> b!8025103 m!8387272))

(assert (=> b!8025103 m!8387272))

(assert (=> b!8025103 m!8387384))

(assert (=> b!8024970 d!2392920))

(declare-fun d!2392922 () Bool)

(assert (=> d!2392922 (= (inv!96602 (xs!19338 (left!57155 t!3624))) (<= (size!43707 (innerList!16028 (xs!19338 (left!57155 t!3624)))) 2147483647))))

(declare-fun bs!1971259 () Bool)

(assert (= bs!1971259 d!2392922))

(declare-fun m!8387386 () Bool)

(assert (=> bs!1971259 m!8387386))

(assert (=> b!8025041 d!2392922))

(declare-fun d!2392924 () Bool)

(declare-fun res!3173556 () Bool)

(declare-fun e!4727603 () Bool)

(assert (=> d!2392924 (=> (not res!3173556) (not e!4727603))))

(assert (=> d!2392924 (= res!3173556 (<= (size!43707 (list!19480 (xs!19338 (right!57485 t!3624)))) 512))))

(assert (=> d!2392924 (= (inv!96604 (right!57485 t!3624)) e!4727603)))

(declare-fun b!8025111 () Bool)

(declare-fun res!3173557 () Bool)

(assert (=> b!8025111 (=> (not res!3173557) (not e!4727603))))

(assert (=> b!8025111 (= res!3173557 (= (csize!32111 (right!57485 t!3624)) (size!43707 (list!19480 (xs!19338 (right!57485 t!3624))))))))

(declare-fun b!8025112 () Bool)

(assert (=> b!8025112 (= e!4727603 (and (> (csize!32111 (right!57485 t!3624)) 0) (<= (csize!32111 (right!57485 t!3624)) 512)))))

(assert (= (and d!2392924 res!3173556) b!8025111))

(assert (= (and b!8025111 res!3173557) b!8025112))

(assert (=> d!2392924 m!8387326))

(assert (=> d!2392924 m!8387326))

(declare-fun m!8387388 () Bool)

(assert (=> d!2392924 m!8387388))

(assert (=> b!8025111 m!8387326))

(assert (=> b!8025111 m!8387326))

(assert (=> b!8025111 m!8387388))

(assert (=> b!8024967 d!2392924))

(declare-fun b!8025113 () Bool)

(declare-fun e!4727604 () Bool)

(declare-fun tp!2401700 () Bool)

(assert (=> b!8025113 (= e!4727604 (and tp_is_empty!54201 tp!2401700))))

(assert (=> b!8025045 (= tp!2401697 e!4727604)))

(assert (= (and b!8025045 ((_ is Cons!74936) (innerList!16028 (xs!19338 (right!57485 t!3624))))) b!8025113))

(declare-fun tp!2401702 () Bool)

(declare-fun b!8025114 () Bool)

(declare-fun e!4727605 () Bool)

(declare-fun tp!2401703 () Bool)

(assert (=> b!8025114 (= e!4727605 (and (inv!96601 (left!57155 (left!57155 (left!57155 t!3624)))) tp!2401702 (inv!96601 (right!57485 (left!57155 (left!57155 t!3624)))) tp!2401703))))

(declare-fun b!8025116 () Bool)

(declare-fun e!4727606 () Bool)

(declare-fun tp!2401701 () Bool)

(assert (=> b!8025116 (= e!4727606 tp!2401701)))

(declare-fun b!8025115 () Bool)

(assert (=> b!8025115 (= e!4727605 (and (inv!96602 (xs!19338 (left!57155 (left!57155 t!3624)))) e!4727606))))

(assert (=> b!8025040 (= tp!2401695 (and (inv!96601 (left!57155 (left!57155 t!3624))) e!4727605))))

(assert (= (and b!8025040 ((_ is Node!15940) (left!57155 (left!57155 t!3624)))) b!8025114))

(assert (= b!8025115 b!8025116))

(assert (= (and b!8025040 ((_ is Leaf!30516) (left!57155 (left!57155 t!3624)))) b!8025115))

(declare-fun m!8387390 () Bool)

(assert (=> b!8025114 m!8387390))

(declare-fun m!8387392 () Bool)

(assert (=> b!8025114 m!8387392))

(declare-fun m!8387394 () Bool)

(assert (=> b!8025115 m!8387394))

(assert (=> b!8025040 m!8387286))

(declare-fun b!8025117 () Bool)

(declare-fun tp!2401705 () Bool)

(declare-fun e!4727607 () Bool)

(declare-fun tp!2401706 () Bool)

(assert (=> b!8025117 (= e!4727607 (and (inv!96601 (left!57155 (right!57485 (left!57155 t!3624)))) tp!2401705 (inv!96601 (right!57485 (right!57485 (left!57155 t!3624)))) tp!2401706))))

(declare-fun b!8025119 () Bool)

(declare-fun e!4727608 () Bool)

(declare-fun tp!2401704 () Bool)

(assert (=> b!8025119 (= e!4727608 tp!2401704)))

(declare-fun b!8025118 () Bool)

(assert (=> b!8025118 (= e!4727607 (and (inv!96602 (xs!19338 (right!57485 (left!57155 t!3624)))) e!4727608))))

(assert (=> b!8025040 (= tp!2401696 (and (inv!96601 (right!57485 (left!57155 t!3624))) e!4727607))))

(assert (= (and b!8025040 ((_ is Node!15940) (right!57485 (left!57155 t!3624)))) b!8025117))

(assert (= b!8025118 b!8025119))

(assert (= (and b!8025040 ((_ is Leaf!30516) (right!57485 (left!57155 t!3624)))) b!8025118))

(declare-fun m!8387396 () Bool)

(assert (=> b!8025117 m!8387396))

(declare-fun m!8387398 () Bool)

(assert (=> b!8025117 m!8387398))

(declare-fun m!8387400 () Bool)

(assert (=> b!8025118 m!8387400))

(assert (=> b!8025040 m!8387288))

(declare-fun tp!2401709 () Bool)

(declare-fun e!4727609 () Bool)

(declare-fun b!8025120 () Bool)

(declare-fun tp!2401708 () Bool)

(assert (=> b!8025120 (= e!4727609 (and (inv!96601 (left!57155 (left!57155 (right!57485 t!3624)))) tp!2401708 (inv!96601 (right!57485 (left!57155 (right!57485 t!3624)))) tp!2401709))))

(declare-fun b!8025122 () Bool)

(declare-fun e!4727610 () Bool)

(declare-fun tp!2401707 () Bool)

(assert (=> b!8025122 (= e!4727610 tp!2401707)))

(declare-fun b!8025121 () Bool)

(assert (=> b!8025121 (= e!4727609 (and (inv!96602 (xs!19338 (left!57155 (right!57485 t!3624)))) e!4727610))))

(assert (=> b!8025043 (= tp!2401698 (and (inv!96601 (left!57155 (right!57485 t!3624))) e!4727609))))

(assert (= (and b!8025043 ((_ is Node!15940) (left!57155 (right!57485 t!3624)))) b!8025120))

(assert (= b!8025121 b!8025122))

(assert (= (and b!8025043 ((_ is Leaf!30516) (left!57155 (right!57485 t!3624)))) b!8025121))

(declare-fun m!8387402 () Bool)

(assert (=> b!8025120 m!8387402))

(declare-fun m!8387404 () Bool)

(assert (=> b!8025120 m!8387404))

(declare-fun m!8387406 () Bool)

(assert (=> b!8025121 m!8387406))

(assert (=> b!8025043 m!8387292))

(declare-fun tp!2401711 () Bool)

(declare-fun b!8025126 () Bool)

(declare-fun e!4727612 () Bool)

(declare-fun tp!2401712 () Bool)

(assert (=> b!8025126 (= e!4727612 (and (inv!96601 (left!57155 (right!57485 (right!57485 t!3624)))) tp!2401711 (inv!96601 (right!57485 (right!57485 (right!57485 t!3624)))) tp!2401712))))

(declare-fun b!8025128 () Bool)

(declare-fun e!4727613 () Bool)

(declare-fun tp!2401710 () Bool)

(assert (=> b!8025128 (= e!4727613 tp!2401710)))

(declare-fun b!8025127 () Bool)

(assert (=> b!8025127 (= e!4727612 (and (inv!96602 (xs!19338 (right!57485 (right!57485 t!3624)))) e!4727613))))

(assert (=> b!8025043 (= tp!2401699 (and (inv!96601 (right!57485 (right!57485 t!3624))) e!4727612))))

(assert (= (and b!8025043 ((_ is Node!15940) (right!57485 (right!57485 t!3624)))) b!8025126))

(assert (= b!8025127 b!8025128))

(assert (= (and b!8025043 ((_ is Leaf!30516) (right!57485 (right!57485 t!3624)))) b!8025127))

(declare-fun m!8387408 () Bool)

(assert (=> b!8025126 m!8387408))

(declare-fun m!8387410 () Bool)

(assert (=> b!8025126 m!8387410))

(declare-fun m!8387412 () Bool)

(assert (=> b!8025127 m!8387412))

(assert (=> b!8025043 m!8387294))

(declare-fun b!8025129 () Bool)

(declare-fun e!4727614 () Bool)

(declare-fun tp!2401713 () Bool)

(assert (=> b!8025129 (= e!4727614 (and tp_is_empty!54201 tp!2401713))))

(assert (=> b!8025042 (= tp!2401694 e!4727614)))

(assert (= (and b!8025042 ((_ is Cons!74936) (innerList!16028 (xs!19338 (left!57155 t!3624))))) b!8025129))

(declare-fun b!8025130 () Bool)

(declare-fun e!4727615 () Bool)

(declare-fun tp!2401714 () Bool)

(assert (=> b!8025130 (= e!4727615 (and tp_is_empty!54201 tp!2401714))))

(assert (=> b!8025025 (= tp!2401681 e!4727615)))

(assert (= (and b!8025025 ((_ is Cons!74936) (t!390807 (innerList!16028 (xs!19338 t!3624))))) b!8025130))

(check-sat (not d!2392892) (not b!8025066) (not d!2392902) (not b!8025084) (not b!8025121) (not b!8025103) (not b!8025087) (not b!8025056) (not d!2392920) (not b!8025119) (not b!8025120) (not b!8025061) (not b!8025115) (not b!8025129) (not b!8025118) (not d!2392922) (not b!8025089) (not b!8025128) (not b!8025065) (not b!8025040) (not b!8025113) tp_is_empty!54201 (not b!8025081) (not b!8025122) (not b!8025068) (not d!2392886) (not b!8025116) (not b!8025127) (not b!8025091) (not b!8025130) (not d!2392924) (not b!8025060) (not b!8025064) (not b!8025102) (not b!8025099) (not b!8025117) (not b!8025126) (not b!8025114) (not b!8025073) (not b!8025094) (not b!8025111) (not b!8025071) (not b!8025043) (not d!2392906) (not b!8025069) (not b!8025092) (not d!2392914) (not b!8025055) (not d!2392904))
(check-sat)
