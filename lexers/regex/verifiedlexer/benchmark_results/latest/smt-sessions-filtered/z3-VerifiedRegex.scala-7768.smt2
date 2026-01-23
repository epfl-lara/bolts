; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!408286 () Bool)

(assert start!408286)

(declare-fun b_free!126685 () Bool)

(declare-fun b_next!127389 () Bool)

(assert (=> start!408286 (= b_free!126685 (not b_next!127389))))

(declare-fun tp!1306960 () Bool)

(declare-fun b_and!337691 () Bool)

(assert (=> start!408286 (= tp!1306960 b_and!337691)))

(declare-fun res!1751343 () Bool)

(declare-fun e!2645984 () Bool)

(assert (=> start!408286 (=> (not res!1751343) (not e!2645984))))

(declare-datatypes ((T!79406 0))(
  ( (T!79407 (val!15233 Int)) )
))
(declare-datatypes ((List!47362 0))(
  ( (Nil!47238) (Cons!47238 (h!52658 T!79406) (t!353185 List!47362)) )
))
(declare-datatypes ((IArray!28493 0))(
  ( (IArray!28494 (innerList!14304 List!47362)) )
))
(declare-datatypes ((Conc!14244 0))(
  ( (Node!14244 (left!35020 Conc!14244) (right!35350 Conc!14244) (csize!28718 Int) (cheight!14455 Int)) (Leaf!22013 (xs!17550 IArray!28493) (csize!28719 Int)) (Empty!14244) )
))
(declare-fun t!4386 () Conc!14244)

(declare-fun isBalanced!3802 (Conc!14244) Bool)

(assert (=> start!408286 (= res!1751343 (isBalanced!3802 t!4386))))

(assert (=> start!408286 e!2645984))

(declare-fun e!2645983 () Bool)

(declare-fun inv!62137 (Conc!14244) Bool)

(assert (=> start!408286 (and (inv!62137 t!4386) e!2645983)))

(assert (=> start!408286 tp!1306960))

(declare-fun b!4260791 () Bool)

(declare-fun e!2645982 () Bool)

(declare-fun height!1868 (Conc!14244) Int)

(assert (=> b!4260791 (= e!2645982 (>= (height!1868 (right!35350 t!4386)) (height!1868 t!4386)))))

(declare-datatypes ((B!2821 0))(
  ( (B!2822 (val!15234 Int)) )
))
(declare-datatypes ((List!47363 0))(
  ( (Nil!47239) (Cons!47239 (h!52659 B!2821) (t!353186 List!47363)) )
))
(declare-datatypes ((IArray!28495 0))(
  ( (IArray!28496 (innerList!14305 List!47363)) )
))
(declare-datatypes ((Conc!14245 0))(
  ( (Node!14245 (left!35021 Conc!14245) (right!35351 Conc!14245) (csize!28720 Int) (cheight!14456 Int)) (Leaf!22014 (xs!17551 IArray!28495) (csize!28721 Int)) (Empty!14245) )
))
(declare-fun lt!1510607 () Conc!14245)

(declare-fun f!428 () Int)

(declare-fun map!9667 (Conc!14244 Int) Conc!14245)

(assert (=> b!4260791 (= lt!1510607 (map!9667 (left!35020 t!4386) f!428))))

(declare-fun tp!1306957 () Bool)

(declare-fun b!4260792 () Bool)

(declare-fun tp!1306959 () Bool)

(assert (=> b!4260792 (= e!2645983 (and (inv!62137 (left!35020 t!4386)) tp!1306959 (inv!62137 (right!35350 t!4386)) tp!1306957))))

(declare-fun b!4260793 () Bool)

(assert (=> b!4260793 (= e!2645984 e!2645982)))

(declare-fun res!1751345 () Bool)

(assert (=> b!4260793 (=> (not res!1751345) (not e!2645982))))

(declare-fun lt!1510605 () List!47362)

(declare-fun lt!1510606 () List!47362)

(declare-fun map!9668 (List!47362 Int) List!47363)

(declare-fun ++!12031 (List!47362 List!47362) List!47362)

(declare-fun ++!12032 (List!47363 List!47363) List!47363)

(assert (=> b!4260793 (= res!1751345 (= (map!9668 (++!12031 lt!1510605 lt!1510606) f!428) (++!12032 (map!9668 lt!1510605 f!428) (map!9668 lt!1510606 f!428))))))

(declare-datatypes ((Unit!66135 0))(
  ( (Unit!66136) )
))
(declare-fun lt!1510608 () Unit!66135)

(declare-fun lemmaMapConcat!30 (List!47362 List!47362 Int) Unit!66135)

(assert (=> b!4260793 (= lt!1510608 (lemmaMapConcat!30 lt!1510605 lt!1510606 f!428))))

(declare-fun list!17058 (Conc!14244) List!47362)

(assert (=> b!4260793 (= lt!1510606 (list!17058 (right!35350 t!4386)))))

(assert (=> b!4260793 (= lt!1510605 (list!17058 (left!35020 t!4386)))))

(declare-fun b!4260794 () Bool)

(declare-fun e!2645981 () Bool)

(declare-fun inv!62138 (IArray!28493) Bool)

(assert (=> b!4260794 (= e!2645983 (and (inv!62138 (xs!17550 t!4386)) e!2645981))))

(declare-fun b!4260795 () Bool)

(declare-fun tp!1306958 () Bool)

(assert (=> b!4260795 (= e!2645981 tp!1306958)))

(declare-fun b!4260796 () Bool)

(declare-fun res!1751344 () Bool)

(assert (=> b!4260796 (=> (not res!1751344) (not e!2645984))))

(get-info :version)

(assert (=> b!4260796 (= res!1751344 (and (not ((_ is Empty!14244) t!4386)) (not ((_ is Leaf!22013) t!4386))))))

(assert (= (and start!408286 res!1751343) b!4260796))

(assert (= (and b!4260796 res!1751344) b!4260793))

(assert (= (and b!4260793 res!1751345) b!4260791))

(assert (= (and start!408286 ((_ is Node!14244) t!4386)) b!4260792))

(assert (= b!4260794 b!4260795))

(assert (= (and start!408286 ((_ is Leaf!22013) t!4386)) b!4260794))

(declare-fun m!4848335 () Bool)

(assert (=> b!4260793 m!4848335))

(assert (=> b!4260793 m!4848335))

(declare-fun m!4848337 () Bool)

(assert (=> b!4260793 m!4848337))

(declare-fun m!4848339 () Bool)

(assert (=> b!4260793 m!4848339))

(declare-fun m!4848341 () Bool)

(assert (=> b!4260793 m!4848341))

(declare-fun m!4848343 () Bool)

(assert (=> b!4260793 m!4848343))

(declare-fun m!4848345 () Bool)

(assert (=> b!4260793 m!4848345))

(assert (=> b!4260793 m!4848339))

(declare-fun m!4848347 () Bool)

(assert (=> b!4260793 m!4848347))

(declare-fun m!4848349 () Bool)

(assert (=> b!4260793 m!4848349))

(assert (=> b!4260793 m!4848347))

(declare-fun m!4848351 () Bool)

(assert (=> b!4260792 m!4848351))

(declare-fun m!4848353 () Bool)

(assert (=> b!4260792 m!4848353))

(declare-fun m!4848355 () Bool)

(assert (=> start!408286 m!4848355))

(declare-fun m!4848357 () Bool)

(assert (=> start!408286 m!4848357))

(declare-fun m!4848359 () Bool)

(assert (=> b!4260791 m!4848359))

(declare-fun m!4848361 () Bool)

(assert (=> b!4260791 m!4848361))

(declare-fun m!4848363 () Bool)

(assert (=> b!4260791 m!4848363))

(declare-fun m!4848365 () Bool)

(assert (=> b!4260794 m!4848365))

(check-sat (not start!408286) (not b!4260795) (not b_next!127389) (not b!4260793) b_and!337691 (not b!4260794) (not b!4260792) (not b!4260791))
(check-sat b_and!337691 (not b_next!127389))
(get-model)

(declare-fun d!1254109 () Bool)

(assert (=> d!1254109 (= (height!1868 (right!35350 t!4386)) (ite ((_ is Empty!14244) (right!35350 t!4386)) 0 (ite ((_ is Leaf!22013) (right!35350 t!4386)) 1 (cheight!14455 (right!35350 t!4386)))))))

(assert (=> b!4260791 d!1254109))

(declare-fun d!1254111 () Bool)

(assert (=> d!1254111 (= (height!1868 t!4386) (ite ((_ is Empty!14244) t!4386) 0 (ite ((_ is Leaf!22013) t!4386) 1 (cheight!14455 t!4386))))))

(assert (=> b!4260791 d!1254111))

(declare-fun b!4260819 () Bool)

(declare-fun e!2646001 () Conc!14245)

(assert (=> b!4260819 (= e!2646001 Empty!14245)))

(declare-fun b!4260820 () Bool)

(declare-fun e!2646000 () Conc!14245)

(declare-fun map!9669 (IArray!28493 Int) IArray!28495)

(assert (=> b!4260820 (= e!2646000 (Leaf!22014 (map!9669 (xs!17550 (left!35020 t!4386)) f!428) (csize!28719 (left!35020 t!4386))))))

(declare-fun b!4260821 () Bool)

(declare-fun e!2645999 () Bool)

(declare-fun lt!1510616 () Conc!14245)

(declare-fun isBalanced!3803 (Conc!14245) Bool)

(assert (=> b!4260821 (= e!2645999 (isBalanced!3803 lt!1510616))))

(declare-fun b!4260822 () Bool)

(declare-fun lt!1510617 () Unit!66135)

(assert (=> b!4260822 (= lt!1510617 (lemmaMapConcat!30 (list!17058 (left!35020 (left!35020 t!4386))) (list!17058 (right!35350 (left!35020 t!4386))) f!428))))

(assert (=> b!4260822 (= e!2646000 (Node!14245 (map!9667 (left!35020 (left!35020 t!4386)) f!428) (map!9667 (right!35350 (left!35020 t!4386)) f!428) (csize!28718 (left!35020 t!4386)) (cheight!14455 (left!35020 t!4386))))))

(declare-fun d!1254113 () Bool)

(assert (=> d!1254113 e!2645999))

(declare-fun res!1751352 () Bool)

(assert (=> d!1254113 (=> (not res!1751352) (not e!2645999))))

(declare-fun list!17059 (Conc!14245) List!47363)

(assert (=> d!1254113 (= res!1751352 (= (list!17059 lt!1510616) (map!9668 (list!17058 (left!35020 t!4386)) f!428)))))

(assert (=> d!1254113 (= lt!1510616 e!2646001)))

(declare-fun c!723690 () Bool)

(assert (=> d!1254113 (= c!723690 ((_ is Empty!14244) (left!35020 t!4386)))))

(assert (=> d!1254113 (isBalanced!3802 (left!35020 t!4386))))

(assert (=> d!1254113 (= (map!9667 (left!35020 t!4386) f!428) lt!1510616)))

(declare-fun b!4260823 () Bool)

(assert (=> b!4260823 (= e!2646001 e!2646000)))

(declare-fun c!723691 () Bool)

(assert (=> b!4260823 (= c!723691 ((_ is Leaf!22013) (left!35020 t!4386)))))

(assert (= (and d!1254113 c!723690) b!4260819))

(assert (= (and d!1254113 (not c!723690)) b!4260823))

(assert (= (and b!4260823 c!723691) b!4260820))

(assert (= (and b!4260823 (not c!723691)) b!4260822))

(assert (= (and d!1254113 res!1751352) b!4260821))

(declare-fun m!4848379 () Bool)

(assert (=> b!4260820 m!4848379))

(declare-fun m!4848381 () Bool)

(assert (=> b!4260821 m!4848381))

(declare-fun m!4848383 () Bool)

(assert (=> b!4260822 m!4848383))

(declare-fun m!4848385 () Bool)

(assert (=> b!4260822 m!4848385))

(declare-fun m!4848387 () Bool)

(assert (=> b!4260822 m!4848387))

(assert (=> b!4260822 m!4848385))

(assert (=> b!4260822 m!4848387))

(declare-fun m!4848389 () Bool)

(assert (=> b!4260822 m!4848389))

(declare-fun m!4848391 () Bool)

(assert (=> b!4260822 m!4848391))

(declare-fun m!4848393 () Bool)

(assert (=> d!1254113 m!4848393))

(assert (=> d!1254113 m!4848341))

(assert (=> d!1254113 m!4848341))

(declare-fun m!4848395 () Bool)

(assert (=> d!1254113 m!4848395))

(declare-fun m!4848397 () Bool)

(assert (=> d!1254113 m!4848397))

(assert (=> b!4260791 d!1254113))

(declare-fun b!4260852 () Bool)

(declare-fun res!1751370 () Bool)

(declare-fun e!2646014 () Bool)

(assert (=> b!4260852 (=> (not res!1751370) (not e!2646014))))

(declare-fun isEmpty!27978 (Conc!14244) Bool)

(assert (=> b!4260852 (= res!1751370 (not (isEmpty!27978 (left!35020 t!4386))))))

(declare-fun b!4260853 () Bool)

(declare-fun e!2646015 () Bool)

(assert (=> b!4260853 (= e!2646015 e!2646014)))

(declare-fun res!1751365 () Bool)

(assert (=> b!4260853 (=> (not res!1751365) (not e!2646014))))

(assert (=> b!4260853 (= res!1751365 (<= (- 1) (- (height!1868 (left!35020 t!4386)) (height!1868 (right!35350 t!4386)))))))

(declare-fun b!4260854 () Bool)

(declare-fun res!1751366 () Bool)

(assert (=> b!4260854 (=> (not res!1751366) (not e!2646014))))

(assert (=> b!4260854 (= res!1751366 (isBalanced!3802 (left!35020 t!4386)))))

(declare-fun d!1254125 () Bool)

(declare-fun res!1751369 () Bool)

(assert (=> d!1254125 (=> res!1751369 e!2646015)))

(assert (=> d!1254125 (= res!1751369 (not ((_ is Node!14244) t!4386)))))

(assert (=> d!1254125 (= (isBalanced!3802 t!4386) e!2646015)))

(declare-fun b!4260855 () Bool)

(declare-fun res!1751367 () Bool)

(assert (=> b!4260855 (=> (not res!1751367) (not e!2646014))))

(assert (=> b!4260855 (= res!1751367 (isBalanced!3802 (right!35350 t!4386)))))

(declare-fun b!4260856 () Bool)

(assert (=> b!4260856 (= e!2646014 (not (isEmpty!27978 (right!35350 t!4386))))))

(declare-fun b!4260857 () Bool)

(declare-fun res!1751368 () Bool)

(assert (=> b!4260857 (=> (not res!1751368) (not e!2646014))))

(assert (=> b!4260857 (= res!1751368 (<= (- (height!1868 (left!35020 t!4386)) (height!1868 (right!35350 t!4386))) 1))))

(assert (= (and d!1254125 (not res!1751369)) b!4260853))

(assert (= (and b!4260853 res!1751365) b!4260857))

(assert (= (and b!4260857 res!1751368) b!4260854))

(assert (= (and b!4260854 res!1751366) b!4260855))

(assert (= (and b!4260855 res!1751367) b!4260852))

(assert (= (and b!4260852 res!1751370) b!4260856))

(declare-fun m!4848407 () Bool)

(assert (=> b!4260853 m!4848407))

(assert (=> b!4260853 m!4848359))

(assert (=> b!4260854 m!4848397))

(declare-fun m!4848409 () Bool)

(assert (=> b!4260856 m!4848409))

(assert (=> b!4260857 m!4848407))

(assert (=> b!4260857 m!4848359))

(declare-fun m!4848411 () Bool)

(assert (=> b!4260855 m!4848411))

(declare-fun m!4848413 () Bool)

(assert (=> b!4260852 m!4848413))

(assert (=> start!408286 d!1254125))

(declare-fun d!1254129 () Bool)

(declare-fun c!723706 () Bool)

(assert (=> d!1254129 (= c!723706 ((_ is Node!14244) t!4386))))

(declare-fun e!2646024 () Bool)

(assert (=> d!1254129 (= (inv!62137 t!4386) e!2646024)))

(declare-fun b!4260874 () Bool)

(declare-fun inv!62141 (Conc!14244) Bool)

(assert (=> b!4260874 (= e!2646024 (inv!62141 t!4386))))

(declare-fun b!4260875 () Bool)

(declare-fun e!2646025 () Bool)

(assert (=> b!4260875 (= e!2646024 e!2646025)))

(declare-fun res!1751373 () Bool)

(assert (=> b!4260875 (= res!1751373 (not ((_ is Leaf!22013) t!4386)))))

(assert (=> b!4260875 (=> res!1751373 e!2646025)))

(declare-fun b!4260876 () Bool)

(declare-fun inv!62142 (Conc!14244) Bool)

(assert (=> b!4260876 (= e!2646025 (inv!62142 t!4386))))

(assert (= (and d!1254129 c!723706) b!4260874))

(assert (= (and d!1254129 (not c!723706)) b!4260875))

(assert (= (and b!4260875 (not res!1751373)) b!4260876))

(declare-fun m!4848443 () Bool)

(assert (=> b!4260874 m!4848443))

(declare-fun m!4848445 () Bool)

(assert (=> b!4260876 m!4848445))

(assert (=> start!408286 d!1254129))

(declare-fun d!1254137 () Bool)

(declare-fun c!723709 () Bool)

(assert (=> d!1254137 (= c!723709 ((_ is Node!14244) (left!35020 t!4386)))))

(declare-fun e!2646028 () Bool)

(assert (=> d!1254137 (= (inv!62137 (left!35020 t!4386)) e!2646028)))

(declare-fun b!4260881 () Bool)

(assert (=> b!4260881 (= e!2646028 (inv!62141 (left!35020 t!4386)))))

(declare-fun b!4260882 () Bool)

(declare-fun e!2646029 () Bool)

(assert (=> b!4260882 (= e!2646028 e!2646029)))

(declare-fun res!1751374 () Bool)

(assert (=> b!4260882 (= res!1751374 (not ((_ is Leaf!22013) (left!35020 t!4386))))))

(assert (=> b!4260882 (=> res!1751374 e!2646029)))

(declare-fun b!4260883 () Bool)

(assert (=> b!4260883 (= e!2646029 (inv!62142 (left!35020 t!4386)))))

(assert (= (and d!1254137 c!723709) b!4260881))

(assert (= (and d!1254137 (not c!723709)) b!4260882))

(assert (= (and b!4260882 (not res!1751374)) b!4260883))

(declare-fun m!4848447 () Bool)

(assert (=> b!4260881 m!4848447))

(declare-fun m!4848449 () Bool)

(assert (=> b!4260883 m!4848449))

(assert (=> b!4260792 d!1254137))

(declare-fun d!1254139 () Bool)

(declare-fun c!723710 () Bool)

(assert (=> d!1254139 (= c!723710 ((_ is Node!14244) (right!35350 t!4386)))))

(declare-fun e!2646030 () Bool)

(assert (=> d!1254139 (= (inv!62137 (right!35350 t!4386)) e!2646030)))

(declare-fun b!4260884 () Bool)

(assert (=> b!4260884 (= e!2646030 (inv!62141 (right!35350 t!4386)))))

(declare-fun b!4260885 () Bool)

(declare-fun e!2646031 () Bool)

(assert (=> b!4260885 (= e!2646030 e!2646031)))

(declare-fun res!1751375 () Bool)

(assert (=> b!4260885 (= res!1751375 (not ((_ is Leaf!22013) (right!35350 t!4386))))))

(assert (=> b!4260885 (=> res!1751375 e!2646031)))

(declare-fun b!4260886 () Bool)

(assert (=> b!4260886 (= e!2646031 (inv!62142 (right!35350 t!4386)))))

(assert (= (and d!1254139 c!723710) b!4260884))

(assert (= (and d!1254139 (not c!723710)) b!4260885))

(assert (= (and b!4260885 (not res!1751375)) b!4260886))

(declare-fun m!4848451 () Bool)

(assert (=> b!4260884 m!4848451))

(declare-fun m!4848453 () Bool)

(assert (=> b!4260886 m!4848453))

(assert (=> b!4260792 d!1254139))

(declare-fun b!4260906 () Bool)

(declare-fun e!2646041 () List!47362)

(declare-fun e!2646042 () List!47362)

(assert (=> b!4260906 (= e!2646041 e!2646042)))

(declare-fun c!723718 () Bool)

(assert (=> b!4260906 (= c!723718 ((_ is Leaf!22013) (left!35020 t!4386)))))

(declare-fun d!1254141 () Bool)

(declare-fun c!723717 () Bool)

(assert (=> d!1254141 (= c!723717 ((_ is Empty!14244) (left!35020 t!4386)))))

(assert (=> d!1254141 (= (list!17058 (left!35020 t!4386)) e!2646041)))

(declare-fun b!4260905 () Bool)

(assert (=> b!4260905 (= e!2646041 Nil!47238)))

(declare-fun b!4260907 () Bool)

(declare-fun list!17061 (IArray!28493) List!47362)

(assert (=> b!4260907 (= e!2646042 (list!17061 (xs!17550 (left!35020 t!4386))))))

(declare-fun b!4260908 () Bool)

(assert (=> b!4260908 (= e!2646042 (++!12031 (list!17058 (left!35020 (left!35020 t!4386))) (list!17058 (right!35350 (left!35020 t!4386)))))))

(assert (= (and d!1254141 c!723717) b!4260905))

(assert (= (and d!1254141 (not c!723717)) b!4260906))

(assert (= (and b!4260906 c!723718) b!4260907))

(assert (= (and b!4260906 (not c!723718)) b!4260908))

(declare-fun m!4848475 () Bool)

(assert (=> b!4260907 m!4848475))

(assert (=> b!4260908 m!4848385))

(assert (=> b!4260908 m!4848387))

(assert (=> b!4260908 m!4848385))

(assert (=> b!4260908 m!4848387))

(declare-fun m!4848477 () Bool)

(assert (=> b!4260908 m!4848477))

(assert (=> b!4260793 d!1254141))

(declare-fun d!1254147 () Bool)

(declare-fun lt!1510630 () List!47363)

(declare-fun size!34597 (List!47363) Int)

(declare-fun size!34598 (List!47362) Int)

(assert (=> d!1254147 (= (size!34597 lt!1510630) (size!34598 (++!12031 lt!1510605 lt!1510606)))))

(declare-fun e!2646049 () List!47363)

(assert (=> d!1254147 (= lt!1510630 e!2646049)))

(declare-fun c!723723 () Bool)

(assert (=> d!1254147 (= c!723723 ((_ is Nil!47238) (++!12031 lt!1510605 lt!1510606)))))

(assert (=> d!1254147 (= (map!9668 (++!12031 lt!1510605 lt!1510606) f!428) lt!1510630)))

(declare-fun b!4260921 () Bool)

(assert (=> b!4260921 (= e!2646049 Nil!47239)))

(declare-fun b!4260922 () Bool)

(declare-fun $colon$colon!631 (List!47363 B!2821) List!47363)

(declare-fun dynLambda!20219 (Int T!79406) B!2821)

(assert (=> b!4260922 (= e!2646049 ($colon$colon!631 (map!9668 (t!353185 (++!12031 lt!1510605 lt!1510606)) f!428) (dynLambda!20219 f!428 (h!52658 (++!12031 lt!1510605 lt!1510606)))))))

(assert (= (and d!1254147 c!723723) b!4260921))

(assert (= (and d!1254147 (not c!723723)) b!4260922))

(declare-fun b_lambda!125705 () Bool)

(assert (=> (not b_lambda!125705) (not b!4260922)))

(declare-fun t!353199 () Bool)

(declare-fun tb!256893 () Bool)

(assert (=> (and start!408286 (= f!428 f!428) t!353199) tb!256893))

(declare-fun result!313448 () Bool)

(declare-fun tp_is_empty!22873 () Bool)

(assert (=> tb!256893 (= result!313448 tp_is_empty!22873)))

(assert (=> b!4260922 t!353199))

(declare-fun b_and!337699 () Bool)

(assert (= b_and!337691 (and (=> t!353199 result!313448) b_and!337699)))

(declare-fun m!4848479 () Bool)

(assert (=> d!1254147 m!4848479))

(assert (=> d!1254147 m!4848335))

(declare-fun m!4848481 () Bool)

(assert (=> d!1254147 m!4848481))

(declare-fun m!4848483 () Bool)

(assert (=> b!4260922 m!4848483))

(declare-fun m!4848485 () Bool)

(assert (=> b!4260922 m!4848485))

(assert (=> b!4260922 m!4848483))

(assert (=> b!4260922 m!4848485))

(declare-fun m!4848487 () Bool)

(assert (=> b!4260922 m!4848487))

(assert (=> b!4260793 d!1254147))

(declare-fun d!1254149 () Bool)

(declare-fun lt!1510631 () List!47363)

(assert (=> d!1254149 (= (size!34597 lt!1510631) (size!34598 lt!1510606))))

(declare-fun e!2646050 () List!47363)

(assert (=> d!1254149 (= lt!1510631 e!2646050)))

(declare-fun c!723724 () Bool)

(assert (=> d!1254149 (= c!723724 ((_ is Nil!47238) lt!1510606))))

(assert (=> d!1254149 (= (map!9668 lt!1510606 f!428) lt!1510631)))

(declare-fun b!4260925 () Bool)

(assert (=> b!4260925 (= e!2646050 Nil!47239)))

(declare-fun b!4260926 () Bool)

(assert (=> b!4260926 (= e!2646050 ($colon$colon!631 (map!9668 (t!353185 lt!1510606) f!428) (dynLambda!20219 f!428 (h!52658 lt!1510606))))))

(assert (= (and d!1254149 c!723724) b!4260925))

(assert (= (and d!1254149 (not c!723724)) b!4260926))

(declare-fun b_lambda!125707 () Bool)

(assert (=> (not b_lambda!125707) (not b!4260926)))

(declare-fun t!353201 () Bool)

(declare-fun tb!256895 () Bool)

(assert (=> (and start!408286 (= f!428 f!428) t!353201) tb!256895))

(declare-fun result!313452 () Bool)

(assert (=> tb!256895 (= result!313452 tp_is_empty!22873)))

(assert (=> b!4260926 t!353201))

(declare-fun b_and!337701 () Bool)

(assert (= b_and!337699 (and (=> t!353201 result!313452) b_and!337701)))

(declare-fun m!4848489 () Bool)

(assert (=> d!1254149 m!4848489))

(declare-fun m!4848491 () Bool)

(assert (=> d!1254149 m!4848491))

(declare-fun m!4848493 () Bool)

(assert (=> b!4260926 m!4848493))

(declare-fun m!4848495 () Bool)

(assert (=> b!4260926 m!4848495))

(assert (=> b!4260926 m!4848493))

(assert (=> b!4260926 m!4848495))

(declare-fun m!4848501 () Bool)

(assert (=> b!4260926 m!4848501))

(assert (=> b!4260793 d!1254149))

(declare-fun d!1254151 () Bool)

(assert (=> d!1254151 (= (map!9668 (++!12031 lt!1510605 lt!1510606) f!428) (++!12032 (map!9668 lt!1510605 f!428) (map!9668 lt!1510606 f!428)))))

(declare-fun lt!1510635 () Unit!66135)

(declare-fun choose!25984 (List!47362 List!47362 Int) Unit!66135)

(assert (=> d!1254151 (= lt!1510635 (choose!25984 lt!1510605 lt!1510606 f!428))))

(assert (=> d!1254151 (= (lemmaMapConcat!30 lt!1510605 lt!1510606 f!428) lt!1510635)))

(declare-fun bs!599040 () Bool)

(assert (= bs!599040 d!1254151))

(assert (=> bs!599040 m!4848339))

(assert (=> bs!599040 m!4848335))

(declare-fun m!4848513 () Bool)

(assert (=> bs!599040 m!4848513))

(assert (=> bs!599040 m!4848339))

(assert (=> bs!599040 m!4848347))

(assert (=> bs!599040 m!4848349))

(assert (=> bs!599040 m!4848347))

(assert (=> bs!599040 m!4848335))

(assert (=> bs!599040 m!4848337))

(assert (=> b!4260793 d!1254151))

(declare-fun b!4260932 () Bool)

(declare-fun e!2646053 () List!47362)

(declare-fun e!2646054 () List!47362)

(assert (=> b!4260932 (= e!2646053 e!2646054)))

(declare-fun c!723727 () Bool)

(assert (=> b!4260932 (= c!723727 ((_ is Leaf!22013) (right!35350 t!4386)))))

(declare-fun d!1254159 () Bool)

(declare-fun c!723726 () Bool)

(assert (=> d!1254159 (= c!723726 ((_ is Empty!14244) (right!35350 t!4386)))))

(assert (=> d!1254159 (= (list!17058 (right!35350 t!4386)) e!2646053)))

(declare-fun b!4260931 () Bool)

(assert (=> b!4260931 (= e!2646053 Nil!47238)))

(declare-fun b!4260933 () Bool)

(assert (=> b!4260933 (= e!2646054 (list!17061 (xs!17550 (right!35350 t!4386))))))

(declare-fun b!4260934 () Bool)

(assert (=> b!4260934 (= e!2646054 (++!12031 (list!17058 (left!35020 (right!35350 t!4386))) (list!17058 (right!35350 (right!35350 t!4386)))))))

(assert (= (and d!1254159 c!723726) b!4260931))

(assert (= (and d!1254159 (not c!723726)) b!4260932))

(assert (= (and b!4260932 c!723727) b!4260933))

(assert (= (and b!4260932 (not c!723727)) b!4260934))

(declare-fun m!4848515 () Bool)

(assert (=> b!4260933 m!4848515))

(declare-fun m!4848517 () Bool)

(assert (=> b!4260934 m!4848517))

(declare-fun m!4848519 () Bool)

(assert (=> b!4260934 m!4848519))

(assert (=> b!4260934 m!4848517))

(assert (=> b!4260934 m!4848519))

(declare-fun m!4848521 () Bool)

(assert (=> b!4260934 m!4848521))

(assert (=> b!4260793 d!1254159))

(declare-fun d!1254161 () Bool)

(declare-fun lt!1510636 () List!47363)

(assert (=> d!1254161 (= (size!34597 lt!1510636) (size!34598 lt!1510605))))

(declare-fun e!2646055 () List!47363)

(assert (=> d!1254161 (= lt!1510636 e!2646055)))

(declare-fun c!723728 () Bool)

(assert (=> d!1254161 (= c!723728 ((_ is Nil!47238) lt!1510605))))

(assert (=> d!1254161 (= (map!9668 lt!1510605 f!428) lt!1510636)))

(declare-fun b!4260935 () Bool)

(assert (=> b!4260935 (= e!2646055 Nil!47239)))

(declare-fun b!4260936 () Bool)

(assert (=> b!4260936 (= e!2646055 ($colon$colon!631 (map!9668 (t!353185 lt!1510605) f!428) (dynLambda!20219 f!428 (h!52658 lt!1510605))))))

(assert (= (and d!1254161 c!723728) b!4260935))

(assert (= (and d!1254161 (not c!723728)) b!4260936))

(declare-fun b_lambda!125709 () Bool)

(assert (=> (not b_lambda!125709) (not b!4260936)))

(declare-fun t!353204 () Bool)

(declare-fun tb!256897 () Bool)

(assert (=> (and start!408286 (= f!428 f!428) t!353204) tb!256897))

(declare-fun result!313454 () Bool)

(assert (=> tb!256897 (= result!313454 tp_is_empty!22873)))

(assert (=> b!4260936 t!353204))

(declare-fun b_and!337703 () Bool)

(assert (= b_and!337701 (and (=> t!353204 result!313454) b_and!337703)))

(declare-fun m!4848523 () Bool)

(assert (=> d!1254161 m!4848523))

(declare-fun m!4848525 () Bool)

(assert (=> d!1254161 m!4848525))

(declare-fun m!4848527 () Bool)

(assert (=> b!4260936 m!4848527))

(declare-fun m!4848529 () Bool)

(assert (=> b!4260936 m!4848529))

(assert (=> b!4260936 m!4848527))

(assert (=> b!4260936 m!4848529))

(declare-fun m!4848531 () Bool)

(assert (=> b!4260936 m!4848531))

(assert (=> b!4260793 d!1254161))

(declare-fun b!4260957 () Bool)

(declare-fun res!1751394 () Bool)

(declare-fun e!2646067 () Bool)

(assert (=> b!4260957 (=> (not res!1751394) (not e!2646067))))

(declare-fun lt!1510643 () List!47362)

(assert (=> b!4260957 (= res!1751394 (= (size!34598 lt!1510643) (+ (size!34598 lt!1510605) (size!34598 lt!1510606))))))

(declare-fun b!4260956 () Bool)

(declare-fun e!2646066 () List!47362)

(assert (=> b!4260956 (= e!2646066 (Cons!47238 (h!52658 lt!1510605) (++!12031 (t!353185 lt!1510605) lt!1510606)))))

(declare-fun b!4260955 () Bool)

(assert (=> b!4260955 (= e!2646066 lt!1510606)))

(declare-fun d!1254163 () Bool)

(assert (=> d!1254163 e!2646067))

(declare-fun res!1751395 () Bool)

(assert (=> d!1254163 (=> (not res!1751395) (not e!2646067))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7443 (List!47362) (InoxSet T!79406))

(assert (=> d!1254163 (= res!1751395 (= (content!7443 lt!1510643) ((_ map or) (content!7443 lt!1510605) (content!7443 lt!1510606))))))

(assert (=> d!1254163 (= lt!1510643 e!2646066)))

(declare-fun c!723735 () Bool)

(assert (=> d!1254163 (= c!723735 ((_ is Nil!47238) lt!1510605))))

(assert (=> d!1254163 (= (++!12031 lt!1510605 lt!1510606) lt!1510643)))

(declare-fun b!4260958 () Bool)

(assert (=> b!4260958 (= e!2646067 (or (not (= lt!1510606 Nil!47238)) (= lt!1510643 lt!1510605)))))

(assert (= (and d!1254163 c!723735) b!4260955))

(assert (= (and d!1254163 (not c!723735)) b!4260956))

(assert (= (and d!1254163 res!1751395) b!4260957))

(assert (= (and b!4260957 res!1751394) b!4260958))

(declare-fun m!4848533 () Bool)

(assert (=> b!4260957 m!4848533))

(assert (=> b!4260957 m!4848525))

(assert (=> b!4260957 m!4848491))

(declare-fun m!4848535 () Bool)

(assert (=> b!4260956 m!4848535))

(declare-fun m!4848537 () Bool)

(assert (=> d!1254163 m!4848537))

(declare-fun m!4848539 () Bool)

(assert (=> d!1254163 m!4848539))

(declare-fun m!4848541 () Bool)

(assert (=> d!1254163 m!4848541))

(assert (=> b!4260793 d!1254163))

(declare-fun b!4260984 () Bool)

(declare-fun e!2646079 () List!47363)

(assert (=> b!4260984 (= e!2646079 (map!9668 lt!1510606 f!428))))

(declare-fun d!1254165 () Bool)

(declare-fun e!2646080 () Bool)

(assert (=> d!1254165 e!2646080))

(declare-fun res!1751414 () Bool)

(assert (=> d!1254165 (=> (not res!1751414) (not e!2646080))))

(declare-fun lt!1510648 () List!47363)

(declare-fun content!7444 (List!47363) (InoxSet B!2821))

(assert (=> d!1254165 (= res!1751414 (= (content!7444 lt!1510648) ((_ map or) (content!7444 (map!9668 lt!1510605 f!428)) (content!7444 (map!9668 lt!1510606 f!428)))))))

(assert (=> d!1254165 (= lt!1510648 e!2646079)))

(declare-fun c!723740 () Bool)

(assert (=> d!1254165 (= c!723740 ((_ is Nil!47239) (map!9668 lt!1510605 f!428)))))

(assert (=> d!1254165 (= (++!12032 (map!9668 lt!1510605 f!428) (map!9668 lt!1510606 f!428)) lt!1510648)))

(declare-fun b!4260987 () Bool)

(assert (=> b!4260987 (= e!2646080 (or (not (= (map!9668 lt!1510606 f!428) Nil!47239)) (= lt!1510648 (map!9668 lt!1510605 f!428))))))

(declare-fun b!4260986 () Bool)

(declare-fun res!1751413 () Bool)

(assert (=> b!4260986 (=> (not res!1751413) (not e!2646080))))

(assert (=> b!4260986 (= res!1751413 (= (size!34597 lt!1510648) (+ (size!34597 (map!9668 lt!1510605 f!428)) (size!34597 (map!9668 lt!1510606 f!428)))))))

(declare-fun b!4260985 () Bool)

(assert (=> b!4260985 (= e!2646079 (Cons!47239 (h!52659 (map!9668 lt!1510605 f!428)) (++!12032 (t!353186 (map!9668 lt!1510605 f!428)) (map!9668 lt!1510606 f!428))))))

(assert (= (and d!1254165 c!723740) b!4260984))

(assert (= (and d!1254165 (not c!723740)) b!4260985))

(assert (= (and d!1254165 res!1751414) b!4260986))

(assert (= (and b!4260986 res!1751413) b!4260987))

(declare-fun m!4848559 () Bool)

(assert (=> d!1254165 m!4848559))

(assert (=> d!1254165 m!4848339))

(declare-fun m!4848561 () Bool)

(assert (=> d!1254165 m!4848561))

(assert (=> d!1254165 m!4848347))

(declare-fun m!4848563 () Bool)

(assert (=> d!1254165 m!4848563))

(declare-fun m!4848565 () Bool)

(assert (=> b!4260986 m!4848565))

(assert (=> b!4260986 m!4848339))

(declare-fun m!4848567 () Bool)

(assert (=> b!4260986 m!4848567))

(assert (=> b!4260986 m!4848347))

(declare-fun m!4848569 () Bool)

(assert (=> b!4260986 m!4848569))

(assert (=> b!4260985 m!4848347))

(declare-fun m!4848571 () Bool)

(assert (=> b!4260985 m!4848571))

(assert (=> b!4260793 d!1254165))

(declare-fun d!1254169 () Bool)

(assert (=> d!1254169 (= (inv!62138 (xs!17550 t!4386)) (<= (size!34598 (innerList!14304 (xs!17550 t!4386))) 2147483647))))

(declare-fun bs!599041 () Bool)

(assert (= bs!599041 d!1254169))

(declare-fun m!4848585 () Bool)

(assert (=> bs!599041 m!4848585))

(assert (=> b!4260794 d!1254169))

(declare-fun tp!1306979 () Bool)

(declare-fun b!4261023 () Bool)

(declare-fun e!2646100 () Bool)

(declare-fun tp!1306981 () Bool)

(assert (=> b!4261023 (= e!2646100 (and (inv!62137 (left!35020 (left!35020 t!4386))) tp!1306981 (inv!62137 (right!35350 (left!35020 t!4386))) tp!1306979))))

(declare-fun b!4261025 () Bool)

(declare-fun e!2646099 () Bool)

(declare-fun tp!1306980 () Bool)

(assert (=> b!4261025 (= e!2646099 tp!1306980)))

(declare-fun b!4261024 () Bool)

(assert (=> b!4261024 (= e!2646100 (and (inv!62138 (xs!17550 (left!35020 t!4386))) e!2646099))))

(assert (=> b!4260792 (= tp!1306959 (and (inv!62137 (left!35020 t!4386)) e!2646100))))

(assert (= (and b!4260792 ((_ is Node!14244) (left!35020 t!4386))) b!4261023))

(assert (= b!4261024 b!4261025))

(assert (= (and b!4260792 ((_ is Leaf!22013) (left!35020 t!4386))) b!4261024))

(declare-fun m!4848599 () Bool)

(assert (=> b!4261023 m!4848599))

(declare-fun m!4848601 () Bool)

(assert (=> b!4261023 m!4848601))

(declare-fun m!4848603 () Bool)

(assert (=> b!4261024 m!4848603))

(assert (=> b!4260792 m!4848351))

(declare-fun tp!1306987 () Bool)

(declare-fun tp!1306985 () Bool)

(declare-fun b!4261027 () Bool)

(declare-fun e!2646103 () Bool)

(assert (=> b!4261027 (= e!2646103 (and (inv!62137 (left!35020 (right!35350 t!4386))) tp!1306987 (inv!62137 (right!35350 (right!35350 t!4386))) tp!1306985))))

(declare-fun b!4261029 () Bool)

(declare-fun e!2646102 () Bool)

(declare-fun tp!1306986 () Bool)

(assert (=> b!4261029 (= e!2646102 tp!1306986)))

(declare-fun b!4261028 () Bool)

(assert (=> b!4261028 (= e!2646103 (and (inv!62138 (xs!17550 (right!35350 t!4386))) e!2646102))))

(assert (=> b!4260792 (= tp!1306957 (and (inv!62137 (right!35350 t!4386)) e!2646103))))

(assert (= (and b!4260792 ((_ is Node!14244) (right!35350 t!4386))) b!4261027))

(assert (= b!4261028 b!4261029))

(assert (= (and b!4260792 ((_ is Leaf!22013) (right!35350 t!4386))) b!4261028))

(declare-fun m!4848605 () Bool)

(assert (=> b!4261027 m!4848605))

(declare-fun m!4848607 () Bool)

(assert (=> b!4261027 m!4848607))

(declare-fun m!4848609 () Bool)

(assert (=> b!4261028 m!4848609))

(assert (=> b!4260792 m!4848353))

(declare-fun b!4261034 () Bool)

(declare-fun e!2646106 () Bool)

(declare-fun tp_is_empty!22877 () Bool)

(declare-fun tp!1306990 () Bool)

(assert (=> b!4261034 (= e!2646106 (and tp_is_empty!22877 tp!1306990))))

(assert (=> b!4260795 (= tp!1306958 e!2646106)))

(assert (= (and b!4260795 ((_ is Cons!47238) (innerList!14304 (xs!17550 t!4386)))) b!4261034))

(declare-fun b_lambda!125717 () Bool)

(assert (= b_lambda!125709 (or (and start!408286 b_free!126685) b_lambda!125717)))

(declare-fun b_lambda!125719 () Bool)

(assert (= b_lambda!125705 (or (and start!408286 b_free!126685) b_lambda!125719)))

(declare-fun b_lambda!125721 () Bool)

(assert (= b_lambda!125707 (or (and start!408286 b_free!126685) b_lambda!125721)))

(check-sat (not b!4260926) (not b!4260822) (not b!4261029) (not b!4260934) (not b!4260820) (not b!4261024) (not b!4260957) (not b!4260852) (not b!4260856) (not b!4260986) (not b!4260908) (not b!4261028) (not b!4260936) (not b_lambda!125721) (not b_next!127389) tp_is_empty!22873 (not b!4260874) (not b!4260857) (not b!4260933) (not b!4260886) (not b!4261034) (not d!1254151) (not b!4260922) (not b!4260876) (not d!1254147) (not d!1254163) (not b!4260853) (not b!4260855) b_and!337703 (not b!4261027) (not b!4260821) (not b!4260883) (not b!4260956) (not b!4260907) (not b_lambda!125717) (not b!4261023) (not b!4260985) (not d!1254169) (not b!4260884) (not b!4260854) (not b!4260792) (not d!1254149) (not d!1254165) (not d!1254161) (not b_lambda!125719) (not b!4260881) (not d!1254113) tp_is_empty!22877 (not b!4261025))
(check-sat b_and!337703 (not b_next!127389))
(get-model)

(declare-fun d!1254173 () Bool)

(assert (=> d!1254173 (= (height!1868 (left!35020 t!4386)) (ite ((_ is Empty!14244) (left!35020 t!4386)) 0 (ite ((_ is Leaf!22013) (left!35020 t!4386)) 1 (cheight!14455 (left!35020 t!4386)))))))

(assert (=> b!4260853 d!1254173))

(assert (=> b!4260853 d!1254109))

(declare-fun d!1254175 () Bool)

(declare-fun lt!1510651 () Int)

(assert (=> d!1254175 (>= lt!1510651 0)))

(declare-fun e!2646109 () Int)

(assert (=> d!1254175 (= lt!1510651 e!2646109)))

(declare-fun c!723744 () Bool)

(assert (=> d!1254175 (= c!723744 ((_ is Nil!47239) lt!1510630))))

(assert (=> d!1254175 (= (size!34597 lt!1510630) lt!1510651)))

(declare-fun b!4261039 () Bool)

(assert (=> b!4261039 (= e!2646109 0)))

(declare-fun b!4261040 () Bool)

(assert (=> b!4261040 (= e!2646109 (+ 1 (size!34597 (t!353186 lt!1510630))))))

(assert (= (and d!1254175 c!723744) b!4261039))

(assert (= (and d!1254175 (not c!723744)) b!4261040))

(declare-fun m!4848611 () Bool)

(assert (=> b!4261040 m!4848611))

(assert (=> d!1254147 d!1254175))

(declare-fun d!1254177 () Bool)

(declare-fun lt!1510654 () Int)

(assert (=> d!1254177 (>= lt!1510654 0)))

(declare-fun e!2646112 () Int)

(assert (=> d!1254177 (= lt!1510654 e!2646112)))

(declare-fun c!723747 () Bool)

(assert (=> d!1254177 (= c!723747 ((_ is Nil!47238) (++!12031 lt!1510605 lt!1510606)))))

(assert (=> d!1254177 (= (size!34598 (++!12031 lt!1510605 lt!1510606)) lt!1510654)))

(declare-fun b!4261045 () Bool)

(assert (=> b!4261045 (= e!2646112 0)))

(declare-fun b!4261046 () Bool)

(assert (=> b!4261046 (= e!2646112 (+ 1 (size!34598 (t!353185 (++!12031 lt!1510605 lt!1510606)))))))

(assert (= (and d!1254177 c!723747) b!4261045))

(assert (= (and d!1254177 (not c!723747)) b!4261046))

(declare-fun m!4848613 () Bool)

(assert (=> b!4261046 m!4848613))

(assert (=> d!1254147 d!1254177))

(declare-fun d!1254179 () Bool)

(assert (=> d!1254179 (= ($colon$colon!631 (map!9668 (t!353185 (++!12031 lt!1510605 lt!1510606)) f!428) (dynLambda!20219 f!428 (h!52658 (++!12031 lt!1510605 lt!1510606)))) (Cons!47239 (dynLambda!20219 f!428 (h!52658 (++!12031 lt!1510605 lt!1510606))) (map!9668 (t!353185 (++!12031 lt!1510605 lt!1510606)) f!428)))))

(assert (=> b!4260922 d!1254179))

(declare-fun d!1254181 () Bool)

(declare-fun lt!1510655 () List!47363)

(assert (=> d!1254181 (= (size!34597 lt!1510655) (size!34598 (t!353185 (++!12031 lt!1510605 lt!1510606))))))

(declare-fun e!2646113 () List!47363)

(assert (=> d!1254181 (= lt!1510655 e!2646113)))

(declare-fun c!723748 () Bool)

(assert (=> d!1254181 (= c!723748 ((_ is Nil!47238) (t!353185 (++!12031 lt!1510605 lt!1510606))))))

(assert (=> d!1254181 (= (map!9668 (t!353185 (++!12031 lt!1510605 lt!1510606)) f!428) lt!1510655)))

(declare-fun b!4261047 () Bool)

(assert (=> b!4261047 (= e!2646113 Nil!47239)))

(declare-fun b!4261048 () Bool)

(assert (=> b!4261048 (= e!2646113 ($colon$colon!631 (map!9668 (t!353185 (t!353185 (++!12031 lt!1510605 lt!1510606))) f!428) (dynLambda!20219 f!428 (h!52658 (t!353185 (++!12031 lt!1510605 lt!1510606))))))))

(assert (= (and d!1254181 c!723748) b!4261047))

(assert (= (and d!1254181 (not c!723748)) b!4261048))

(declare-fun b_lambda!125723 () Bool)

(assert (=> (not b_lambda!125723) (not b!4261048)))

(declare-fun t!353209 () Bool)

(declare-fun tb!256899 () Bool)

(assert (=> (and start!408286 (= f!428 f!428) t!353209) tb!256899))

(declare-fun result!313464 () Bool)

(assert (=> tb!256899 (= result!313464 tp_is_empty!22873)))

(assert (=> b!4261048 t!353209))

(declare-fun b_and!337705 () Bool)

(assert (= b_and!337703 (and (=> t!353209 result!313464) b_and!337705)))

(declare-fun m!4848615 () Bool)

(assert (=> d!1254181 m!4848615))

(assert (=> d!1254181 m!4848613))

(declare-fun m!4848617 () Bool)

(assert (=> b!4261048 m!4848617))

(declare-fun m!4848619 () Bool)

(assert (=> b!4261048 m!4848619))

(assert (=> b!4261048 m!4848617))

(assert (=> b!4261048 m!4848619))

(declare-fun m!4848621 () Bool)

(assert (=> b!4261048 m!4848621))

(assert (=> b!4260922 d!1254181))

(declare-fun d!1254183 () Bool)

(declare-fun lt!1510656 () Int)

(assert (=> d!1254183 (>= lt!1510656 0)))

(declare-fun e!2646114 () Int)

(assert (=> d!1254183 (= lt!1510656 e!2646114)))

(declare-fun c!723749 () Bool)

(assert (=> d!1254183 (= c!723749 ((_ is Nil!47239) lt!1510648))))

(assert (=> d!1254183 (= (size!34597 lt!1510648) lt!1510656)))

(declare-fun b!4261049 () Bool)

(assert (=> b!4261049 (= e!2646114 0)))

(declare-fun b!4261050 () Bool)

(assert (=> b!4261050 (= e!2646114 (+ 1 (size!34597 (t!353186 lt!1510648))))))

(assert (= (and d!1254183 c!723749) b!4261049))

(assert (= (and d!1254183 (not c!723749)) b!4261050))

(declare-fun m!4848623 () Bool)

(assert (=> b!4261050 m!4848623))

(assert (=> b!4260986 d!1254183))

(declare-fun d!1254185 () Bool)

(declare-fun lt!1510657 () Int)

(assert (=> d!1254185 (>= lt!1510657 0)))

(declare-fun e!2646115 () Int)

(assert (=> d!1254185 (= lt!1510657 e!2646115)))

(declare-fun c!723750 () Bool)

(assert (=> d!1254185 (= c!723750 ((_ is Nil!47239) (map!9668 lt!1510605 f!428)))))

(assert (=> d!1254185 (= (size!34597 (map!9668 lt!1510605 f!428)) lt!1510657)))

(declare-fun b!4261051 () Bool)

(assert (=> b!4261051 (= e!2646115 0)))

(declare-fun b!4261052 () Bool)

(assert (=> b!4261052 (= e!2646115 (+ 1 (size!34597 (t!353186 (map!9668 lt!1510605 f!428)))))))

(assert (= (and d!1254185 c!723750) b!4261051))

(assert (= (and d!1254185 (not c!723750)) b!4261052))

(declare-fun m!4848625 () Bool)

(assert (=> b!4261052 m!4848625))

(assert (=> b!4260986 d!1254185))

(declare-fun d!1254187 () Bool)

(declare-fun lt!1510658 () Int)

(assert (=> d!1254187 (>= lt!1510658 0)))

(declare-fun e!2646116 () Int)

(assert (=> d!1254187 (= lt!1510658 e!2646116)))

(declare-fun c!723751 () Bool)

(assert (=> d!1254187 (= c!723751 ((_ is Nil!47239) (map!9668 lt!1510606 f!428)))))

(assert (=> d!1254187 (= (size!34597 (map!9668 lt!1510606 f!428)) lt!1510658)))

(declare-fun b!4261053 () Bool)

(assert (=> b!4261053 (= e!2646116 0)))

(declare-fun b!4261054 () Bool)

(assert (=> b!4261054 (= e!2646116 (+ 1 (size!34597 (t!353186 (map!9668 lt!1510606 f!428)))))))

(assert (= (and d!1254187 c!723751) b!4261053))

(assert (= (and d!1254187 (not c!723751)) b!4261054))

(declare-fun m!4848627 () Bool)

(assert (=> b!4261054 m!4848627))

(assert (=> b!4260986 d!1254187))

(declare-fun b!4261055 () Bool)

(declare-fun res!1751427 () Bool)

(declare-fun e!2646117 () Bool)

(assert (=> b!4261055 (=> (not res!1751427) (not e!2646117))))

(assert (=> b!4261055 (= res!1751427 (not (isEmpty!27978 (left!35020 (left!35020 t!4386)))))))

(declare-fun b!4261056 () Bool)

(declare-fun e!2646118 () Bool)

(assert (=> b!4261056 (= e!2646118 e!2646117)))

(declare-fun res!1751422 () Bool)

(assert (=> b!4261056 (=> (not res!1751422) (not e!2646117))))

(assert (=> b!4261056 (= res!1751422 (<= (- 1) (- (height!1868 (left!35020 (left!35020 t!4386))) (height!1868 (right!35350 (left!35020 t!4386))))))))

(declare-fun b!4261057 () Bool)

(declare-fun res!1751423 () Bool)

(assert (=> b!4261057 (=> (not res!1751423) (not e!2646117))))

(assert (=> b!4261057 (= res!1751423 (isBalanced!3802 (left!35020 (left!35020 t!4386))))))

(declare-fun d!1254189 () Bool)

(declare-fun res!1751426 () Bool)

(assert (=> d!1254189 (=> res!1751426 e!2646118)))

(assert (=> d!1254189 (= res!1751426 (not ((_ is Node!14244) (left!35020 t!4386))))))

(assert (=> d!1254189 (= (isBalanced!3802 (left!35020 t!4386)) e!2646118)))

(declare-fun b!4261058 () Bool)

(declare-fun res!1751424 () Bool)

(assert (=> b!4261058 (=> (not res!1751424) (not e!2646117))))

(assert (=> b!4261058 (= res!1751424 (isBalanced!3802 (right!35350 (left!35020 t!4386))))))

(declare-fun b!4261059 () Bool)

(assert (=> b!4261059 (= e!2646117 (not (isEmpty!27978 (right!35350 (left!35020 t!4386)))))))

(declare-fun b!4261060 () Bool)

(declare-fun res!1751425 () Bool)

(assert (=> b!4261060 (=> (not res!1751425) (not e!2646117))))

(assert (=> b!4261060 (= res!1751425 (<= (- (height!1868 (left!35020 (left!35020 t!4386))) (height!1868 (right!35350 (left!35020 t!4386)))) 1))))

(assert (= (and d!1254189 (not res!1751426)) b!4261056))

(assert (= (and b!4261056 res!1751422) b!4261060))

(assert (= (and b!4261060 res!1751425) b!4261057))

(assert (= (and b!4261057 res!1751423) b!4261058))

(assert (= (and b!4261058 res!1751424) b!4261055))

(assert (= (and b!4261055 res!1751427) b!4261059))

(declare-fun m!4848629 () Bool)

(assert (=> b!4261056 m!4848629))

(declare-fun m!4848631 () Bool)

(assert (=> b!4261056 m!4848631))

(declare-fun m!4848633 () Bool)

(assert (=> b!4261057 m!4848633))

(declare-fun m!4848635 () Bool)

(assert (=> b!4261059 m!4848635))

(assert (=> b!4261060 m!4848629))

(assert (=> b!4261060 m!4848631))

(declare-fun m!4848637 () Bool)

(assert (=> b!4261058 m!4848637))

(declare-fun m!4848639 () Bool)

(assert (=> b!4261055 m!4848639))

(assert (=> b!4260854 d!1254189))

(assert (=> b!4260792 d!1254137))

(assert (=> b!4260792 d!1254139))

(declare-fun b!4261061 () Bool)

(declare-fun e!2646119 () List!47363)

(assert (=> b!4261061 (= e!2646119 (map!9668 lt!1510606 f!428))))

(declare-fun d!1254191 () Bool)

(declare-fun e!2646120 () Bool)

(assert (=> d!1254191 e!2646120))

(declare-fun res!1751429 () Bool)

(assert (=> d!1254191 (=> (not res!1751429) (not e!2646120))))

(declare-fun lt!1510659 () List!47363)

(assert (=> d!1254191 (= res!1751429 (= (content!7444 lt!1510659) ((_ map or) (content!7444 (t!353186 (map!9668 lt!1510605 f!428))) (content!7444 (map!9668 lt!1510606 f!428)))))))

(assert (=> d!1254191 (= lt!1510659 e!2646119)))

(declare-fun c!723752 () Bool)

(assert (=> d!1254191 (= c!723752 ((_ is Nil!47239) (t!353186 (map!9668 lt!1510605 f!428))))))

(assert (=> d!1254191 (= (++!12032 (t!353186 (map!9668 lt!1510605 f!428)) (map!9668 lt!1510606 f!428)) lt!1510659)))

(declare-fun b!4261064 () Bool)

(assert (=> b!4261064 (= e!2646120 (or (not (= (map!9668 lt!1510606 f!428) Nil!47239)) (= lt!1510659 (t!353186 (map!9668 lt!1510605 f!428)))))))

(declare-fun b!4261063 () Bool)

(declare-fun res!1751428 () Bool)

(assert (=> b!4261063 (=> (not res!1751428) (not e!2646120))))

(assert (=> b!4261063 (= res!1751428 (= (size!34597 lt!1510659) (+ (size!34597 (t!353186 (map!9668 lt!1510605 f!428))) (size!34597 (map!9668 lt!1510606 f!428)))))))

(declare-fun b!4261062 () Bool)

(assert (=> b!4261062 (= e!2646119 (Cons!47239 (h!52659 (t!353186 (map!9668 lt!1510605 f!428))) (++!12032 (t!353186 (t!353186 (map!9668 lt!1510605 f!428))) (map!9668 lt!1510606 f!428))))))

(assert (= (and d!1254191 c!723752) b!4261061))

(assert (= (and d!1254191 (not c!723752)) b!4261062))

(assert (= (and d!1254191 res!1751429) b!4261063))

(assert (= (and b!4261063 res!1751428) b!4261064))

(declare-fun m!4848641 () Bool)

(assert (=> d!1254191 m!4848641))

(declare-fun m!4848643 () Bool)

(assert (=> d!1254191 m!4848643))

(assert (=> d!1254191 m!4848347))

(assert (=> d!1254191 m!4848563))

(declare-fun m!4848645 () Bool)

(assert (=> b!4261063 m!4848645))

(assert (=> b!4261063 m!4848625))

(assert (=> b!4261063 m!4848347))

(assert (=> b!4261063 m!4848569))

(assert (=> b!4261062 m!4848347))

(declare-fun m!4848647 () Bool)

(assert (=> b!4261062 m!4848647))

(assert (=> b!4260985 d!1254191))

(declare-fun b!4261065 () Bool)

(declare-fun res!1751435 () Bool)

(declare-fun e!2646121 () Bool)

(assert (=> b!4261065 (=> (not res!1751435) (not e!2646121))))

(assert (=> b!4261065 (= res!1751435 (not (isEmpty!27978 (left!35020 (right!35350 t!4386)))))))

(declare-fun b!4261066 () Bool)

(declare-fun e!2646122 () Bool)

(assert (=> b!4261066 (= e!2646122 e!2646121)))

(declare-fun res!1751430 () Bool)

(assert (=> b!4261066 (=> (not res!1751430) (not e!2646121))))

(assert (=> b!4261066 (= res!1751430 (<= (- 1) (- (height!1868 (left!35020 (right!35350 t!4386))) (height!1868 (right!35350 (right!35350 t!4386))))))))

(declare-fun b!4261067 () Bool)

(declare-fun res!1751431 () Bool)

(assert (=> b!4261067 (=> (not res!1751431) (not e!2646121))))

(assert (=> b!4261067 (= res!1751431 (isBalanced!3802 (left!35020 (right!35350 t!4386))))))

(declare-fun d!1254193 () Bool)

(declare-fun res!1751434 () Bool)

(assert (=> d!1254193 (=> res!1751434 e!2646122)))

(assert (=> d!1254193 (= res!1751434 (not ((_ is Node!14244) (right!35350 t!4386))))))

(assert (=> d!1254193 (= (isBalanced!3802 (right!35350 t!4386)) e!2646122)))

(declare-fun b!4261068 () Bool)

(declare-fun res!1751432 () Bool)

(assert (=> b!4261068 (=> (not res!1751432) (not e!2646121))))

(assert (=> b!4261068 (= res!1751432 (isBalanced!3802 (right!35350 (right!35350 t!4386))))))

(declare-fun b!4261069 () Bool)

(assert (=> b!4261069 (= e!2646121 (not (isEmpty!27978 (right!35350 (right!35350 t!4386)))))))

(declare-fun b!4261070 () Bool)

(declare-fun res!1751433 () Bool)

(assert (=> b!4261070 (=> (not res!1751433) (not e!2646121))))

(assert (=> b!4261070 (= res!1751433 (<= (- (height!1868 (left!35020 (right!35350 t!4386))) (height!1868 (right!35350 (right!35350 t!4386)))) 1))))

(assert (= (and d!1254193 (not res!1751434)) b!4261066))

(assert (= (and b!4261066 res!1751430) b!4261070))

(assert (= (and b!4261070 res!1751433) b!4261067))

(assert (= (and b!4261067 res!1751431) b!4261068))

(assert (= (and b!4261068 res!1751432) b!4261065))

(assert (= (and b!4261065 res!1751435) b!4261069))

(declare-fun m!4848649 () Bool)

(assert (=> b!4261066 m!4848649))

(declare-fun m!4848651 () Bool)

(assert (=> b!4261066 m!4848651))

(declare-fun m!4848653 () Bool)

(assert (=> b!4261067 m!4848653))

(declare-fun m!4848655 () Bool)

(assert (=> b!4261069 m!4848655))

(assert (=> b!4261070 m!4848649))

(assert (=> b!4261070 m!4848651))

(declare-fun m!4848657 () Bool)

(assert (=> b!4261068 m!4848657))

(declare-fun m!4848659 () Bool)

(assert (=> b!4261065 m!4848659))

(assert (=> b!4260855 d!1254193))

(declare-fun d!1254195 () Bool)

(declare-fun lt!1510660 () Int)

(assert (=> d!1254195 (>= lt!1510660 0)))

(declare-fun e!2646123 () Int)

(assert (=> d!1254195 (= lt!1510660 e!2646123)))

(declare-fun c!723753 () Bool)

(assert (=> d!1254195 (= c!723753 ((_ is Nil!47238) lt!1510643))))

(assert (=> d!1254195 (= (size!34598 lt!1510643) lt!1510660)))

(declare-fun b!4261071 () Bool)

(assert (=> b!4261071 (= e!2646123 0)))

(declare-fun b!4261072 () Bool)

(assert (=> b!4261072 (= e!2646123 (+ 1 (size!34598 (t!353185 lt!1510643))))))

(assert (= (and d!1254195 c!723753) b!4261071))

(assert (= (and d!1254195 (not c!723753)) b!4261072))

(declare-fun m!4848661 () Bool)

(assert (=> b!4261072 m!4848661))

(assert (=> b!4260957 d!1254195))

(declare-fun d!1254197 () Bool)

(declare-fun lt!1510661 () Int)

(assert (=> d!1254197 (>= lt!1510661 0)))

(declare-fun e!2646124 () Int)

(assert (=> d!1254197 (= lt!1510661 e!2646124)))

(declare-fun c!723754 () Bool)

(assert (=> d!1254197 (= c!723754 ((_ is Nil!47238) lt!1510605))))

(assert (=> d!1254197 (= (size!34598 lt!1510605) lt!1510661)))

(declare-fun b!4261073 () Bool)

(assert (=> b!4261073 (= e!2646124 0)))

(declare-fun b!4261074 () Bool)

(assert (=> b!4261074 (= e!2646124 (+ 1 (size!34598 (t!353185 lt!1510605))))))

(assert (= (and d!1254197 c!723754) b!4261073))

(assert (= (and d!1254197 (not c!723754)) b!4261074))

(declare-fun m!4848663 () Bool)

(assert (=> b!4261074 m!4848663))

(assert (=> b!4260957 d!1254197))

(declare-fun d!1254199 () Bool)

(declare-fun lt!1510662 () Int)

(assert (=> d!1254199 (>= lt!1510662 0)))

(declare-fun e!2646125 () Int)

(assert (=> d!1254199 (= lt!1510662 e!2646125)))

(declare-fun c!723755 () Bool)

(assert (=> d!1254199 (= c!723755 ((_ is Nil!47238) lt!1510606))))

(assert (=> d!1254199 (= (size!34598 lt!1510606) lt!1510662)))

(declare-fun b!4261075 () Bool)

(assert (=> b!4261075 (= e!2646125 0)))

(declare-fun b!4261076 () Bool)

(assert (=> b!4261076 (= e!2646125 (+ 1 (size!34598 (t!353185 lt!1510606))))))

(assert (= (and d!1254199 c!723755) b!4261075))

(assert (= (and d!1254199 (not c!723755)) b!4261076))

(declare-fun m!4848665 () Bool)

(assert (=> b!4261076 m!4848665))

(assert (=> b!4260957 d!1254199))

(declare-fun d!1254201 () Bool)

(declare-fun c!723756 () Bool)

(assert (=> d!1254201 (= c!723756 ((_ is Node!14244) (left!35020 (right!35350 t!4386))))))

(declare-fun e!2646126 () Bool)

(assert (=> d!1254201 (= (inv!62137 (left!35020 (right!35350 t!4386))) e!2646126)))

(declare-fun b!4261077 () Bool)

(assert (=> b!4261077 (= e!2646126 (inv!62141 (left!35020 (right!35350 t!4386))))))

(declare-fun b!4261078 () Bool)

(declare-fun e!2646127 () Bool)

(assert (=> b!4261078 (= e!2646126 e!2646127)))

(declare-fun res!1751436 () Bool)

(assert (=> b!4261078 (= res!1751436 (not ((_ is Leaf!22013) (left!35020 (right!35350 t!4386)))))))

(assert (=> b!4261078 (=> res!1751436 e!2646127)))

(declare-fun b!4261079 () Bool)

(assert (=> b!4261079 (= e!2646127 (inv!62142 (left!35020 (right!35350 t!4386))))))

(assert (= (and d!1254201 c!723756) b!4261077))

(assert (= (and d!1254201 (not c!723756)) b!4261078))

(assert (= (and b!4261078 (not res!1751436)) b!4261079))

(declare-fun m!4848667 () Bool)

(assert (=> b!4261077 m!4848667))

(declare-fun m!4848669 () Bool)

(assert (=> b!4261079 m!4848669))

(assert (=> b!4261027 d!1254201))

(declare-fun d!1254203 () Bool)

(declare-fun c!723757 () Bool)

(assert (=> d!1254203 (= c!723757 ((_ is Node!14244) (right!35350 (right!35350 t!4386))))))

(declare-fun e!2646128 () Bool)

(assert (=> d!1254203 (= (inv!62137 (right!35350 (right!35350 t!4386))) e!2646128)))

(declare-fun b!4261080 () Bool)

(assert (=> b!4261080 (= e!2646128 (inv!62141 (right!35350 (right!35350 t!4386))))))

(declare-fun b!4261081 () Bool)

(declare-fun e!2646129 () Bool)

(assert (=> b!4261081 (= e!2646128 e!2646129)))

(declare-fun res!1751437 () Bool)

(assert (=> b!4261081 (= res!1751437 (not ((_ is Leaf!22013) (right!35350 (right!35350 t!4386)))))))

(assert (=> b!4261081 (=> res!1751437 e!2646129)))

(declare-fun b!4261082 () Bool)

(assert (=> b!4261082 (= e!2646129 (inv!62142 (right!35350 (right!35350 t!4386))))))

(assert (= (and d!1254203 c!723757) b!4261080))

(assert (= (and d!1254203 (not c!723757)) b!4261081))

(assert (= (and b!4261081 (not res!1751437)) b!4261082))

(declare-fun m!4848671 () Bool)

(assert (=> b!4261080 m!4848671))

(declare-fun m!4848673 () Bool)

(assert (=> b!4261082 m!4848673))

(assert (=> b!4261027 d!1254203))

(declare-fun d!1254205 () Bool)

(assert (=> d!1254205 (= ($colon$colon!631 (map!9668 (t!353185 lt!1510605) f!428) (dynLambda!20219 f!428 (h!52658 lt!1510605))) (Cons!47239 (dynLambda!20219 f!428 (h!52658 lt!1510605)) (map!9668 (t!353185 lt!1510605) f!428)))))

(assert (=> b!4260936 d!1254205))

(declare-fun d!1254207 () Bool)

(declare-fun lt!1510663 () List!47363)

(assert (=> d!1254207 (= (size!34597 lt!1510663) (size!34598 (t!353185 lt!1510605)))))

(declare-fun e!2646130 () List!47363)

(assert (=> d!1254207 (= lt!1510663 e!2646130)))

(declare-fun c!723758 () Bool)

(assert (=> d!1254207 (= c!723758 ((_ is Nil!47238) (t!353185 lt!1510605)))))

(assert (=> d!1254207 (= (map!9668 (t!353185 lt!1510605) f!428) lt!1510663)))

(declare-fun b!4261083 () Bool)

(assert (=> b!4261083 (= e!2646130 Nil!47239)))

(declare-fun b!4261084 () Bool)

(assert (=> b!4261084 (= e!2646130 ($colon$colon!631 (map!9668 (t!353185 (t!353185 lt!1510605)) f!428) (dynLambda!20219 f!428 (h!52658 (t!353185 lt!1510605)))))))

(assert (= (and d!1254207 c!723758) b!4261083))

(assert (= (and d!1254207 (not c!723758)) b!4261084))

(declare-fun b_lambda!125725 () Bool)

(assert (=> (not b_lambda!125725) (not b!4261084)))

(declare-fun t!353211 () Bool)

(declare-fun tb!256901 () Bool)

(assert (=> (and start!408286 (= f!428 f!428) t!353211) tb!256901))

(declare-fun result!313466 () Bool)

(assert (=> tb!256901 (= result!313466 tp_is_empty!22873)))

(assert (=> b!4261084 t!353211))

(declare-fun b_and!337707 () Bool)

(assert (= b_and!337705 (and (=> t!353211 result!313466) b_and!337707)))

(declare-fun m!4848675 () Bool)

(assert (=> d!1254207 m!4848675))

(assert (=> d!1254207 m!4848663))

(declare-fun m!4848677 () Bool)

(assert (=> b!4261084 m!4848677))

(declare-fun m!4848679 () Bool)

(assert (=> b!4261084 m!4848679))

(assert (=> b!4261084 m!4848677))

(assert (=> b!4261084 m!4848679))

(declare-fun m!4848681 () Bool)

(assert (=> b!4261084 m!4848681))

(assert (=> b!4260936 d!1254207))

(declare-fun d!1254209 () Bool)

(assert (=> d!1254209 (= (inv!62138 (xs!17550 (left!35020 t!4386))) (<= (size!34598 (innerList!14304 (xs!17550 (left!35020 t!4386)))) 2147483647))))

(declare-fun bs!599042 () Bool)

(assert (= bs!599042 d!1254209))

(declare-fun m!4848683 () Bool)

(assert (=> bs!599042 m!4848683))

(assert (=> b!4261024 d!1254209))

(declare-fun d!1254211 () Bool)

(declare-fun lt!1510666 () Bool)

(declare-fun isEmpty!27980 (List!47362) Bool)

(assert (=> d!1254211 (= lt!1510666 (isEmpty!27980 (list!17058 (left!35020 t!4386))))))

(declare-fun size!34599 (Conc!14244) Int)

(assert (=> d!1254211 (= lt!1510666 (= (size!34599 (left!35020 t!4386)) 0))))

(assert (=> d!1254211 (= (isEmpty!27978 (left!35020 t!4386)) lt!1510666)))

(declare-fun bs!599043 () Bool)

(assert (= bs!599043 d!1254211))

(assert (=> bs!599043 m!4848341))

(assert (=> bs!599043 m!4848341))

(declare-fun m!4848685 () Bool)

(assert (=> bs!599043 m!4848685))

(declare-fun m!4848687 () Bool)

(assert (=> bs!599043 m!4848687))

(assert (=> b!4260852 d!1254211))

(declare-fun d!1254213 () Bool)

(declare-fun c!723761 () Bool)

(assert (=> d!1254213 (= c!723761 ((_ is Nil!47238) lt!1510643))))

(declare-fun e!2646133 () (InoxSet T!79406))

(assert (=> d!1254213 (= (content!7443 lt!1510643) e!2646133)))

(declare-fun b!4261089 () Bool)

(assert (=> b!4261089 (= e!2646133 ((as const (Array T!79406 Bool)) false))))

(declare-fun b!4261090 () Bool)

(assert (=> b!4261090 (= e!2646133 ((_ map or) (store ((as const (Array T!79406 Bool)) false) (h!52658 lt!1510643) true) (content!7443 (t!353185 lt!1510643))))))

(assert (= (and d!1254213 c!723761) b!4261089))

(assert (= (and d!1254213 (not c!723761)) b!4261090))

(declare-fun m!4848689 () Bool)

(assert (=> b!4261090 m!4848689))

(declare-fun m!4848691 () Bool)

(assert (=> b!4261090 m!4848691))

(assert (=> d!1254163 d!1254213))

(declare-fun d!1254215 () Bool)

(declare-fun c!723762 () Bool)

(assert (=> d!1254215 (= c!723762 ((_ is Nil!47238) lt!1510605))))

(declare-fun e!2646134 () (InoxSet T!79406))

(assert (=> d!1254215 (= (content!7443 lt!1510605) e!2646134)))

(declare-fun b!4261091 () Bool)

(assert (=> b!4261091 (= e!2646134 ((as const (Array T!79406 Bool)) false))))

(declare-fun b!4261092 () Bool)

(assert (=> b!4261092 (= e!2646134 ((_ map or) (store ((as const (Array T!79406 Bool)) false) (h!52658 lt!1510605) true) (content!7443 (t!353185 lt!1510605))))))

(assert (= (and d!1254215 c!723762) b!4261091))

(assert (= (and d!1254215 (not c!723762)) b!4261092))

(declare-fun m!4848693 () Bool)

(assert (=> b!4261092 m!4848693))

(declare-fun m!4848695 () Bool)

(assert (=> b!4261092 m!4848695))

(assert (=> d!1254163 d!1254215))

(declare-fun d!1254217 () Bool)

(declare-fun c!723763 () Bool)

(assert (=> d!1254217 (= c!723763 ((_ is Nil!47238) lt!1510606))))

(declare-fun e!2646135 () (InoxSet T!79406))

(assert (=> d!1254217 (= (content!7443 lt!1510606) e!2646135)))

(declare-fun b!4261093 () Bool)

(assert (=> b!4261093 (= e!2646135 ((as const (Array T!79406 Bool)) false))))

(declare-fun b!4261094 () Bool)

(assert (=> b!4261094 (= e!2646135 ((_ map or) (store ((as const (Array T!79406 Bool)) false) (h!52658 lt!1510606) true) (content!7443 (t!353185 lt!1510606))))))

(assert (= (and d!1254217 c!723763) b!4261093))

(assert (= (and d!1254217 (not c!723763)) b!4261094))

(declare-fun m!4848697 () Bool)

(assert (=> b!4261094 m!4848697))

(declare-fun m!4848699 () Bool)

(assert (=> b!4261094 m!4848699))

(assert (=> d!1254163 d!1254217))

(declare-fun d!1254219 () Bool)

(declare-fun c!723764 () Bool)

(assert (=> d!1254219 (= c!723764 ((_ is Node!14244) (left!35020 (left!35020 t!4386))))))

(declare-fun e!2646136 () Bool)

(assert (=> d!1254219 (= (inv!62137 (left!35020 (left!35020 t!4386))) e!2646136)))

(declare-fun b!4261095 () Bool)

(assert (=> b!4261095 (= e!2646136 (inv!62141 (left!35020 (left!35020 t!4386))))))

(declare-fun b!4261096 () Bool)

(declare-fun e!2646137 () Bool)

(assert (=> b!4261096 (= e!2646136 e!2646137)))

(declare-fun res!1751438 () Bool)

(assert (=> b!4261096 (= res!1751438 (not ((_ is Leaf!22013) (left!35020 (left!35020 t!4386)))))))

(assert (=> b!4261096 (=> res!1751438 e!2646137)))

(declare-fun b!4261097 () Bool)

(assert (=> b!4261097 (= e!2646137 (inv!62142 (left!35020 (left!35020 t!4386))))))

(assert (= (and d!1254219 c!723764) b!4261095))

(assert (= (and d!1254219 (not c!723764)) b!4261096))

(assert (= (and b!4261096 (not res!1751438)) b!4261097))

(declare-fun m!4848701 () Bool)

(assert (=> b!4261095 m!4848701))

(declare-fun m!4848703 () Bool)

(assert (=> b!4261097 m!4848703))

(assert (=> b!4261023 d!1254219))

(declare-fun d!1254221 () Bool)

(declare-fun c!723765 () Bool)

(assert (=> d!1254221 (= c!723765 ((_ is Node!14244) (right!35350 (left!35020 t!4386))))))

(declare-fun e!2646138 () Bool)

(assert (=> d!1254221 (= (inv!62137 (right!35350 (left!35020 t!4386))) e!2646138)))

(declare-fun b!4261098 () Bool)

(assert (=> b!4261098 (= e!2646138 (inv!62141 (right!35350 (left!35020 t!4386))))))

(declare-fun b!4261099 () Bool)

(declare-fun e!2646139 () Bool)

(assert (=> b!4261099 (= e!2646138 e!2646139)))

(declare-fun res!1751439 () Bool)

(assert (=> b!4261099 (= res!1751439 (not ((_ is Leaf!22013) (right!35350 (left!35020 t!4386)))))))

(assert (=> b!4261099 (=> res!1751439 e!2646139)))

(declare-fun b!4261100 () Bool)

(assert (=> b!4261100 (= e!2646139 (inv!62142 (right!35350 (left!35020 t!4386))))))

(assert (= (and d!1254221 c!723765) b!4261098))

(assert (= (and d!1254221 (not c!723765)) b!4261099))

(assert (= (and b!4261099 (not res!1751439)) b!4261100))

(declare-fun m!4848705 () Bool)

(assert (=> b!4261098 m!4848705))

(declare-fun m!4848707 () Bool)

(assert (=> b!4261100 m!4848707))

(assert (=> b!4261023 d!1254221))

(declare-fun d!1254223 () Bool)

(declare-fun res!1751444 () Bool)

(declare-fun e!2646142 () Bool)

(assert (=> d!1254223 (=> (not res!1751444) (not e!2646142))))

(assert (=> d!1254223 (= res!1751444 (<= (size!34598 (list!17061 (xs!17550 (left!35020 t!4386)))) 512))))

(assert (=> d!1254223 (= (inv!62142 (left!35020 t!4386)) e!2646142)))

(declare-fun b!4261105 () Bool)

(declare-fun res!1751445 () Bool)

(assert (=> b!4261105 (=> (not res!1751445) (not e!2646142))))

(assert (=> b!4261105 (= res!1751445 (= (csize!28719 (left!35020 t!4386)) (size!34598 (list!17061 (xs!17550 (left!35020 t!4386))))))))

(declare-fun b!4261106 () Bool)

(assert (=> b!4261106 (= e!2646142 (and (> (csize!28719 (left!35020 t!4386)) 0) (<= (csize!28719 (left!35020 t!4386)) 512)))))

(assert (= (and d!1254223 res!1751444) b!4261105))

(assert (= (and b!4261105 res!1751445) b!4261106))

(assert (=> d!1254223 m!4848475))

(assert (=> d!1254223 m!4848475))

(declare-fun m!4848709 () Bool)

(assert (=> d!1254223 m!4848709))

(assert (=> b!4261105 m!4848475))

(assert (=> b!4261105 m!4848475))

(assert (=> b!4261105 m!4848709))

(assert (=> b!4260883 d!1254223))

(declare-fun b!4261109 () Bool)

(declare-fun res!1751446 () Bool)

(declare-fun e!2646144 () Bool)

(assert (=> b!4261109 (=> (not res!1751446) (not e!2646144))))

(declare-fun lt!1510667 () List!47362)

(assert (=> b!4261109 (= res!1751446 (= (size!34598 lt!1510667) (+ (size!34598 (t!353185 lt!1510605)) (size!34598 lt!1510606))))))

(declare-fun b!4261108 () Bool)

(declare-fun e!2646143 () List!47362)

(assert (=> b!4261108 (= e!2646143 (Cons!47238 (h!52658 (t!353185 lt!1510605)) (++!12031 (t!353185 (t!353185 lt!1510605)) lt!1510606)))))

(declare-fun b!4261107 () Bool)

(assert (=> b!4261107 (= e!2646143 lt!1510606)))

(declare-fun d!1254225 () Bool)

(assert (=> d!1254225 e!2646144))

(declare-fun res!1751447 () Bool)

(assert (=> d!1254225 (=> (not res!1751447) (not e!2646144))))

(assert (=> d!1254225 (= res!1751447 (= (content!7443 lt!1510667) ((_ map or) (content!7443 (t!353185 lt!1510605)) (content!7443 lt!1510606))))))

(assert (=> d!1254225 (= lt!1510667 e!2646143)))

(declare-fun c!723766 () Bool)

(assert (=> d!1254225 (= c!723766 ((_ is Nil!47238) (t!353185 lt!1510605)))))

(assert (=> d!1254225 (= (++!12031 (t!353185 lt!1510605) lt!1510606) lt!1510667)))

(declare-fun b!4261110 () Bool)

(assert (=> b!4261110 (= e!2646144 (or (not (= lt!1510606 Nil!47238)) (= lt!1510667 (t!353185 lt!1510605))))))

(assert (= (and d!1254225 c!723766) b!4261107))

(assert (= (and d!1254225 (not c!723766)) b!4261108))

(assert (= (and d!1254225 res!1751447) b!4261109))

(assert (= (and b!4261109 res!1751446) b!4261110))

(declare-fun m!4848711 () Bool)

(assert (=> b!4261109 m!4848711))

(assert (=> b!4261109 m!4848663))

(assert (=> b!4261109 m!4848491))

(declare-fun m!4848713 () Bool)

(assert (=> b!4261108 m!4848713))

(declare-fun m!4848715 () Bool)

(assert (=> d!1254225 m!4848715))

(assert (=> d!1254225 m!4848695))

(assert (=> d!1254225 m!4848541))

(assert (=> b!4260956 d!1254225))

(declare-fun d!1254227 () Bool)

(assert (=> d!1254227 (= ($colon$colon!631 (map!9668 (t!353185 lt!1510606) f!428) (dynLambda!20219 f!428 (h!52658 lt!1510606))) (Cons!47239 (dynLambda!20219 f!428 (h!52658 lt!1510606)) (map!9668 (t!353185 lt!1510606) f!428)))))

(assert (=> b!4260926 d!1254227))

(declare-fun d!1254229 () Bool)

(declare-fun lt!1510668 () List!47363)

(assert (=> d!1254229 (= (size!34597 lt!1510668) (size!34598 (t!353185 lt!1510606)))))

(declare-fun e!2646145 () List!47363)

(assert (=> d!1254229 (= lt!1510668 e!2646145)))

(declare-fun c!723767 () Bool)

(assert (=> d!1254229 (= c!723767 ((_ is Nil!47238) (t!353185 lt!1510606)))))

(assert (=> d!1254229 (= (map!9668 (t!353185 lt!1510606) f!428) lt!1510668)))

(declare-fun b!4261111 () Bool)

(assert (=> b!4261111 (= e!2646145 Nil!47239)))

(declare-fun b!4261112 () Bool)

(assert (=> b!4261112 (= e!2646145 ($colon$colon!631 (map!9668 (t!353185 (t!353185 lt!1510606)) f!428) (dynLambda!20219 f!428 (h!52658 (t!353185 lt!1510606)))))))

(assert (= (and d!1254229 c!723767) b!4261111))

(assert (= (and d!1254229 (not c!723767)) b!4261112))

(declare-fun b_lambda!125727 () Bool)

(assert (=> (not b_lambda!125727) (not b!4261112)))

(declare-fun t!353214 () Bool)

(declare-fun tb!256903 () Bool)

(assert (=> (and start!408286 (= f!428 f!428) t!353214) tb!256903))

(declare-fun result!313468 () Bool)

(assert (=> tb!256903 (= result!313468 tp_is_empty!22873)))

(assert (=> b!4261112 t!353214))

(declare-fun b_and!337709 () Bool)

(assert (= b_and!337707 (and (=> t!353214 result!313468) b_and!337709)))

(declare-fun m!4848717 () Bool)

(assert (=> d!1254229 m!4848717))

(assert (=> d!1254229 m!4848665))

(declare-fun m!4848719 () Bool)

(assert (=> b!4261112 m!4848719))

(declare-fun m!4848721 () Bool)

(assert (=> b!4261112 m!4848721))

(assert (=> b!4261112 m!4848719))

(assert (=> b!4261112 m!4848721))

(declare-fun m!4848723 () Bool)

(assert (=> b!4261112 m!4848723))

(assert (=> b!4260926 d!1254229))

(declare-fun d!1254231 () Bool)

(assert (=> d!1254231 (= (list!17061 (xs!17550 (left!35020 t!4386))) (innerList!14304 (xs!17550 (left!35020 t!4386))))))

(assert (=> b!4260907 d!1254231))

(declare-fun d!1254233 () Bool)

(declare-fun lt!1510669 () Int)

(assert (=> d!1254233 (>= lt!1510669 0)))

(declare-fun e!2646146 () Int)

(assert (=> d!1254233 (= lt!1510669 e!2646146)))

(declare-fun c!723768 () Bool)

(assert (=> d!1254233 (= c!723768 ((_ is Nil!47239) lt!1510636))))

(assert (=> d!1254233 (= (size!34597 lt!1510636) lt!1510669)))

(declare-fun b!4261113 () Bool)

(assert (=> b!4261113 (= e!2646146 0)))

(declare-fun b!4261114 () Bool)

(assert (=> b!4261114 (= e!2646146 (+ 1 (size!34597 (t!353186 lt!1510636))))))

(assert (= (and d!1254233 c!723768) b!4261113))

(assert (= (and d!1254233 (not c!723768)) b!4261114))

(declare-fun m!4848725 () Bool)

(assert (=> b!4261114 m!4848725))

(assert (=> d!1254161 d!1254233))

(assert (=> d!1254161 d!1254197))

(declare-fun d!1254235 () Bool)

(declare-fun res!1751454 () Bool)

(declare-fun e!2646149 () Bool)

(assert (=> d!1254235 (=> (not res!1751454) (not e!2646149))))

(assert (=> d!1254235 (= res!1751454 (= (csize!28718 (left!35020 t!4386)) (+ (size!34599 (left!35020 (left!35020 t!4386))) (size!34599 (right!35350 (left!35020 t!4386))))))))

(assert (=> d!1254235 (= (inv!62141 (left!35020 t!4386)) e!2646149)))

(declare-fun b!4261121 () Bool)

(declare-fun res!1751455 () Bool)

(assert (=> b!4261121 (=> (not res!1751455) (not e!2646149))))

(assert (=> b!4261121 (= res!1751455 (and (not (= (left!35020 (left!35020 t!4386)) Empty!14244)) (not (= (right!35350 (left!35020 t!4386)) Empty!14244))))))

(declare-fun b!4261122 () Bool)

(declare-fun res!1751456 () Bool)

(assert (=> b!4261122 (=> (not res!1751456) (not e!2646149))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4261122 (= res!1751456 (= (cheight!14455 (left!35020 t!4386)) (+ (max!0 (height!1868 (left!35020 (left!35020 t!4386))) (height!1868 (right!35350 (left!35020 t!4386)))) 1)))))

(declare-fun b!4261123 () Bool)

(assert (=> b!4261123 (= e!2646149 (<= 0 (cheight!14455 (left!35020 t!4386))))))

(assert (= (and d!1254235 res!1751454) b!4261121))

(assert (= (and b!4261121 res!1751455) b!4261122))

(assert (= (and b!4261122 res!1751456) b!4261123))

(declare-fun m!4848727 () Bool)

(assert (=> d!1254235 m!4848727))

(declare-fun m!4848729 () Bool)

(assert (=> d!1254235 m!4848729))

(assert (=> b!4261122 m!4848629))

(assert (=> b!4261122 m!4848631))

(assert (=> b!4261122 m!4848629))

(assert (=> b!4261122 m!4848631))

(declare-fun m!4848731 () Bool)

(assert (=> b!4261122 m!4848731))

(assert (=> b!4260881 d!1254235))

(declare-fun b!4261126 () Bool)

(declare-fun res!1751457 () Bool)

(declare-fun e!2646151 () Bool)

(assert (=> b!4261126 (=> (not res!1751457) (not e!2646151))))

(declare-fun lt!1510670 () List!47362)

(assert (=> b!4261126 (= res!1751457 (= (size!34598 lt!1510670) (+ (size!34598 (list!17058 (left!35020 (left!35020 t!4386)))) (size!34598 (list!17058 (right!35350 (left!35020 t!4386)))))))))

(declare-fun b!4261125 () Bool)

(declare-fun e!2646150 () List!47362)

(assert (=> b!4261125 (= e!2646150 (Cons!47238 (h!52658 (list!17058 (left!35020 (left!35020 t!4386)))) (++!12031 (t!353185 (list!17058 (left!35020 (left!35020 t!4386)))) (list!17058 (right!35350 (left!35020 t!4386))))))))

(declare-fun b!4261124 () Bool)

(assert (=> b!4261124 (= e!2646150 (list!17058 (right!35350 (left!35020 t!4386))))))

(declare-fun d!1254237 () Bool)

(assert (=> d!1254237 e!2646151))

(declare-fun res!1751458 () Bool)

(assert (=> d!1254237 (=> (not res!1751458) (not e!2646151))))

(assert (=> d!1254237 (= res!1751458 (= (content!7443 lt!1510670) ((_ map or) (content!7443 (list!17058 (left!35020 (left!35020 t!4386)))) (content!7443 (list!17058 (right!35350 (left!35020 t!4386)))))))))

(assert (=> d!1254237 (= lt!1510670 e!2646150)))

(declare-fun c!723769 () Bool)

(assert (=> d!1254237 (= c!723769 ((_ is Nil!47238) (list!17058 (left!35020 (left!35020 t!4386)))))))

(assert (=> d!1254237 (= (++!12031 (list!17058 (left!35020 (left!35020 t!4386))) (list!17058 (right!35350 (left!35020 t!4386)))) lt!1510670)))

(declare-fun b!4261127 () Bool)

(assert (=> b!4261127 (= e!2646151 (or (not (= (list!17058 (right!35350 (left!35020 t!4386))) Nil!47238)) (= lt!1510670 (list!17058 (left!35020 (left!35020 t!4386))))))))

(assert (= (and d!1254237 c!723769) b!4261124))

(assert (= (and d!1254237 (not c!723769)) b!4261125))

(assert (= (and d!1254237 res!1751458) b!4261126))

(assert (= (and b!4261126 res!1751457) b!4261127))

(declare-fun m!4848733 () Bool)

(assert (=> b!4261126 m!4848733))

(assert (=> b!4261126 m!4848385))

(declare-fun m!4848735 () Bool)

(assert (=> b!4261126 m!4848735))

(assert (=> b!4261126 m!4848387))

(declare-fun m!4848737 () Bool)

(assert (=> b!4261126 m!4848737))

(assert (=> b!4261125 m!4848387))

(declare-fun m!4848739 () Bool)

(assert (=> b!4261125 m!4848739))

(declare-fun m!4848741 () Bool)

(assert (=> d!1254237 m!4848741))

(assert (=> d!1254237 m!4848385))

(declare-fun m!4848743 () Bool)

(assert (=> d!1254237 m!4848743))

(assert (=> d!1254237 m!4848387))

(declare-fun m!4848745 () Bool)

(assert (=> d!1254237 m!4848745))

(assert (=> b!4260908 d!1254237))

(declare-fun b!4261129 () Bool)

(declare-fun e!2646152 () List!47362)

(declare-fun e!2646153 () List!47362)

(assert (=> b!4261129 (= e!2646152 e!2646153)))

(declare-fun c!723771 () Bool)

(assert (=> b!4261129 (= c!723771 ((_ is Leaf!22013) (left!35020 (left!35020 t!4386))))))

(declare-fun d!1254239 () Bool)

(declare-fun c!723770 () Bool)

(assert (=> d!1254239 (= c!723770 ((_ is Empty!14244) (left!35020 (left!35020 t!4386))))))

(assert (=> d!1254239 (= (list!17058 (left!35020 (left!35020 t!4386))) e!2646152)))

(declare-fun b!4261128 () Bool)

(assert (=> b!4261128 (= e!2646152 Nil!47238)))

(declare-fun b!4261130 () Bool)

(assert (=> b!4261130 (= e!2646153 (list!17061 (xs!17550 (left!35020 (left!35020 t!4386)))))))

(declare-fun b!4261131 () Bool)

(assert (=> b!4261131 (= e!2646153 (++!12031 (list!17058 (left!35020 (left!35020 (left!35020 t!4386)))) (list!17058 (right!35350 (left!35020 (left!35020 t!4386))))))))

(assert (= (and d!1254239 c!723770) b!4261128))

(assert (= (and d!1254239 (not c!723770)) b!4261129))

(assert (= (and b!4261129 c!723771) b!4261130))

(assert (= (and b!4261129 (not c!723771)) b!4261131))

(declare-fun m!4848747 () Bool)

(assert (=> b!4261130 m!4848747))

(declare-fun m!4848749 () Bool)

(assert (=> b!4261131 m!4848749))

(declare-fun m!4848751 () Bool)

(assert (=> b!4261131 m!4848751))

(assert (=> b!4261131 m!4848749))

(assert (=> b!4261131 m!4848751))

(declare-fun m!4848753 () Bool)

(assert (=> b!4261131 m!4848753))

(assert (=> b!4260908 d!1254239))

(declare-fun b!4261133 () Bool)

(declare-fun e!2646154 () List!47362)

(declare-fun e!2646155 () List!47362)

(assert (=> b!4261133 (= e!2646154 e!2646155)))

(declare-fun c!723773 () Bool)

(assert (=> b!4261133 (= c!723773 ((_ is Leaf!22013) (right!35350 (left!35020 t!4386))))))

(declare-fun d!1254241 () Bool)

(declare-fun c!723772 () Bool)

(assert (=> d!1254241 (= c!723772 ((_ is Empty!14244) (right!35350 (left!35020 t!4386))))))

(assert (=> d!1254241 (= (list!17058 (right!35350 (left!35020 t!4386))) e!2646154)))

(declare-fun b!4261132 () Bool)

(assert (=> b!4261132 (= e!2646154 Nil!47238)))

(declare-fun b!4261134 () Bool)

(assert (=> b!4261134 (= e!2646155 (list!17061 (xs!17550 (right!35350 (left!35020 t!4386)))))))

(declare-fun b!4261135 () Bool)

(assert (=> b!4261135 (= e!2646155 (++!12031 (list!17058 (left!35020 (right!35350 (left!35020 t!4386)))) (list!17058 (right!35350 (right!35350 (left!35020 t!4386))))))))

(assert (= (and d!1254241 c!723772) b!4261132))

(assert (= (and d!1254241 (not c!723772)) b!4261133))

(assert (= (and b!4261133 c!723773) b!4261134))

(assert (= (and b!4261133 (not c!723773)) b!4261135))

(declare-fun m!4848755 () Bool)

(assert (=> b!4261134 m!4848755))

(declare-fun m!4848757 () Bool)

(assert (=> b!4261135 m!4848757))

(declare-fun m!4848759 () Bool)

(assert (=> b!4261135 m!4848759))

(assert (=> b!4261135 m!4848757))

(assert (=> b!4261135 m!4848759))

(declare-fun m!4848761 () Bool)

(assert (=> b!4261135 m!4848761))

(assert (=> b!4260908 d!1254241))

(declare-fun d!1254243 () Bool)

(declare-fun res!1751459 () Bool)

(declare-fun e!2646156 () Bool)

(assert (=> d!1254243 (=> (not res!1751459) (not e!2646156))))

(assert (=> d!1254243 (= res!1751459 (<= (size!34598 (list!17061 (xs!17550 t!4386))) 512))))

(assert (=> d!1254243 (= (inv!62142 t!4386) e!2646156)))

(declare-fun b!4261136 () Bool)

(declare-fun res!1751460 () Bool)

(assert (=> b!4261136 (=> (not res!1751460) (not e!2646156))))

(assert (=> b!4261136 (= res!1751460 (= (csize!28719 t!4386) (size!34598 (list!17061 (xs!17550 t!4386)))))))

(declare-fun b!4261137 () Bool)

(assert (=> b!4261137 (= e!2646156 (and (> (csize!28719 t!4386) 0) (<= (csize!28719 t!4386) 512)))))

(assert (= (and d!1254243 res!1751459) b!4261136))

(assert (= (and b!4261136 res!1751460) b!4261137))

(declare-fun m!4848763 () Bool)

(assert (=> d!1254243 m!4848763))

(assert (=> d!1254243 m!4848763))

(declare-fun m!4848765 () Bool)

(assert (=> d!1254243 m!4848765))

(assert (=> b!4261136 m!4848763))

(assert (=> b!4261136 m!4848763))

(assert (=> b!4261136 m!4848765))

(assert (=> b!4260876 d!1254243))

(declare-fun d!1254245 () Bool)

(declare-fun c!723778 () Bool)

(assert (=> d!1254245 (= c!723778 ((_ is Empty!14245) lt!1510616))))

(declare-fun e!2646161 () List!47363)

(assert (=> d!1254245 (= (list!17059 lt!1510616) e!2646161)))

(declare-fun b!4261147 () Bool)

(declare-fun e!2646162 () List!47363)

(assert (=> b!4261147 (= e!2646161 e!2646162)))

(declare-fun c!723779 () Bool)

(assert (=> b!4261147 (= c!723779 ((_ is Leaf!22014) lt!1510616))))

(declare-fun b!4261146 () Bool)

(assert (=> b!4261146 (= e!2646161 Nil!47239)))

(declare-fun b!4261149 () Bool)

(assert (=> b!4261149 (= e!2646162 (++!12032 (list!17059 (left!35021 lt!1510616)) (list!17059 (right!35351 lt!1510616))))))

(declare-fun b!4261148 () Bool)

(declare-fun list!17063 (IArray!28495) List!47363)

(assert (=> b!4261148 (= e!2646162 (list!17063 (xs!17551 lt!1510616)))))

(assert (= (and d!1254245 c!723778) b!4261146))

(assert (= (and d!1254245 (not c!723778)) b!4261147))

(assert (= (and b!4261147 c!723779) b!4261148))

(assert (= (and b!4261147 (not c!723779)) b!4261149))

(declare-fun m!4848767 () Bool)

(assert (=> b!4261149 m!4848767))

(declare-fun m!4848769 () Bool)

(assert (=> b!4261149 m!4848769))

(assert (=> b!4261149 m!4848767))

(assert (=> b!4261149 m!4848769))

(declare-fun m!4848771 () Bool)

(assert (=> b!4261149 m!4848771))

(declare-fun m!4848773 () Bool)

(assert (=> b!4261148 m!4848773))

(assert (=> d!1254113 d!1254245))

(declare-fun d!1254247 () Bool)

(declare-fun lt!1510671 () List!47363)

(assert (=> d!1254247 (= (size!34597 lt!1510671) (size!34598 (list!17058 (left!35020 t!4386))))))

(declare-fun e!2646163 () List!47363)

(assert (=> d!1254247 (= lt!1510671 e!2646163)))

(declare-fun c!723780 () Bool)

(assert (=> d!1254247 (= c!723780 ((_ is Nil!47238) (list!17058 (left!35020 t!4386))))))

(assert (=> d!1254247 (= (map!9668 (list!17058 (left!35020 t!4386)) f!428) lt!1510671)))

(declare-fun b!4261150 () Bool)

(assert (=> b!4261150 (= e!2646163 Nil!47239)))

(declare-fun b!4261151 () Bool)

(assert (=> b!4261151 (= e!2646163 ($colon$colon!631 (map!9668 (t!353185 (list!17058 (left!35020 t!4386))) f!428) (dynLambda!20219 f!428 (h!52658 (list!17058 (left!35020 t!4386))))))))

(assert (= (and d!1254247 c!723780) b!4261150))

(assert (= (and d!1254247 (not c!723780)) b!4261151))

(declare-fun b_lambda!125729 () Bool)

(assert (=> (not b_lambda!125729) (not b!4261151)))

(declare-fun t!353217 () Bool)

(declare-fun tb!256905 () Bool)

(assert (=> (and start!408286 (= f!428 f!428) t!353217) tb!256905))

(declare-fun result!313470 () Bool)

(assert (=> tb!256905 (= result!313470 tp_is_empty!22873)))

(assert (=> b!4261151 t!353217))

(declare-fun b_and!337711 () Bool)

(assert (= b_and!337709 (and (=> t!353217 result!313470) b_and!337711)))

(declare-fun m!4848775 () Bool)

(assert (=> d!1254247 m!4848775))

(assert (=> d!1254247 m!4848341))

(declare-fun m!4848777 () Bool)

(assert (=> d!1254247 m!4848777))

(declare-fun m!4848779 () Bool)

(assert (=> b!4261151 m!4848779))

(declare-fun m!4848781 () Bool)

(assert (=> b!4261151 m!4848781))

(assert (=> b!4261151 m!4848779))

(assert (=> b!4261151 m!4848781))

(declare-fun m!4848783 () Bool)

(assert (=> b!4261151 m!4848783))

(assert (=> d!1254113 d!1254247))

(assert (=> d!1254113 d!1254141))

(assert (=> d!1254113 d!1254189))

(declare-fun d!1254249 () Bool)

(declare-fun lt!1510672 () Int)

(assert (=> d!1254249 (>= lt!1510672 0)))

(declare-fun e!2646164 () Int)

(assert (=> d!1254249 (= lt!1510672 e!2646164)))

(declare-fun c!723781 () Bool)

(assert (=> d!1254249 (= c!723781 ((_ is Nil!47238) (innerList!14304 (xs!17550 t!4386))))))

(assert (=> d!1254249 (= (size!34598 (innerList!14304 (xs!17550 t!4386))) lt!1510672)))

(declare-fun b!4261152 () Bool)

(assert (=> b!4261152 (= e!2646164 0)))

(declare-fun b!4261153 () Bool)

(assert (=> b!4261153 (= e!2646164 (+ 1 (size!34598 (t!353185 (innerList!14304 (xs!17550 t!4386))))))))

(assert (= (and d!1254249 c!723781) b!4261152))

(assert (= (and d!1254249 (not c!723781)) b!4261153))

(declare-fun m!4848785 () Bool)

(assert (=> b!4261153 m!4848785))

(assert (=> d!1254169 d!1254249))

(declare-fun b!4261154 () Bool)

(declare-fun e!2646167 () Conc!14245)

(assert (=> b!4261154 (= e!2646167 Empty!14245)))

(declare-fun b!4261155 () Bool)

(declare-fun e!2646166 () Conc!14245)

(assert (=> b!4261155 (= e!2646166 (Leaf!22014 (map!9669 (xs!17550 (right!35350 (left!35020 t!4386))) f!428) (csize!28719 (right!35350 (left!35020 t!4386)))))))

(declare-fun b!4261156 () Bool)

(declare-fun e!2646165 () Bool)

(declare-fun lt!1510673 () Conc!14245)

(assert (=> b!4261156 (= e!2646165 (isBalanced!3803 lt!1510673))))

(declare-fun b!4261157 () Bool)

(declare-fun lt!1510674 () Unit!66135)

(assert (=> b!4261157 (= lt!1510674 (lemmaMapConcat!30 (list!17058 (left!35020 (right!35350 (left!35020 t!4386)))) (list!17058 (right!35350 (right!35350 (left!35020 t!4386)))) f!428))))

(assert (=> b!4261157 (= e!2646166 (Node!14245 (map!9667 (left!35020 (right!35350 (left!35020 t!4386))) f!428) (map!9667 (right!35350 (right!35350 (left!35020 t!4386))) f!428) (csize!28718 (right!35350 (left!35020 t!4386))) (cheight!14455 (right!35350 (left!35020 t!4386)))))))

(declare-fun d!1254251 () Bool)

(assert (=> d!1254251 e!2646165))

(declare-fun res!1751461 () Bool)

(assert (=> d!1254251 (=> (not res!1751461) (not e!2646165))))

(assert (=> d!1254251 (= res!1751461 (= (list!17059 lt!1510673) (map!9668 (list!17058 (right!35350 (left!35020 t!4386))) f!428)))))

(assert (=> d!1254251 (= lt!1510673 e!2646167)))

(declare-fun c!723782 () Bool)

(assert (=> d!1254251 (= c!723782 ((_ is Empty!14244) (right!35350 (left!35020 t!4386))))))

(assert (=> d!1254251 (isBalanced!3802 (right!35350 (left!35020 t!4386)))))

(assert (=> d!1254251 (= (map!9667 (right!35350 (left!35020 t!4386)) f!428) lt!1510673)))

(declare-fun b!4261158 () Bool)

(assert (=> b!4261158 (= e!2646167 e!2646166)))

(declare-fun c!723783 () Bool)

(assert (=> b!4261158 (= c!723783 ((_ is Leaf!22013) (right!35350 (left!35020 t!4386))))))

(assert (= (and d!1254251 c!723782) b!4261154))

(assert (= (and d!1254251 (not c!723782)) b!4261158))

(assert (= (and b!4261158 c!723783) b!4261155))

(assert (= (and b!4261158 (not c!723783)) b!4261157))

(assert (= (and d!1254251 res!1751461) b!4261156))

(declare-fun m!4848787 () Bool)

(assert (=> b!4261155 m!4848787))

(declare-fun m!4848789 () Bool)

(assert (=> b!4261156 m!4848789))

(declare-fun m!4848791 () Bool)

(assert (=> b!4261157 m!4848791))

(assert (=> b!4261157 m!4848757))

(assert (=> b!4261157 m!4848759))

(assert (=> b!4261157 m!4848757))

(assert (=> b!4261157 m!4848759))

(declare-fun m!4848793 () Bool)

(assert (=> b!4261157 m!4848793))

(declare-fun m!4848795 () Bool)

(assert (=> b!4261157 m!4848795))

(declare-fun m!4848797 () Bool)

(assert (=> d!1254251 m!4848797))

(assert (=> d!1254251 m!4848387))

(assert (=> d!1254251 m!4848387))

(declare-fun m!4848799 () Bool)

(assert (=> d!1254251 m!4848799))

(assert (=> d!1254251 m!4848637))

(assert (=> b!4260822 d!1254251))

(assert (=> b!4260822 d!1254239))

(declare-fun b!4261159 () Bool)

(declare-fun e!2646170 () Conc!14245)

(assert (=> b!4261159 (= e!2646170 Empty!14245)))

(declare-fun b!4261160 () Bool)

(declare-fun e!2646169 () Conc!14245)

(assert (=> b!4261160 (= e!2646169 (Leaf!22014 (map!9669 (xs!17550 (left!35020 (left!35020 t!4386))) f!428) (csize!28719 (left!35020 (left!35020 t!4386)))))))

(declare-fun b!4261161 () Bool)

(declare-fun e!2646168 () Bool)

(declare-fun lt!1510675 () Conc!14245)

(assert (=> b!4261161 (= e!2646168 (isBalanced!3803 lt!1510675))))

(declare-fun b!4261162 () Bool)

(declare-fun lt!1510676 () Unit!66135)

(assert (=> b!4261162 (= lt!1510676 (lemmaMapConcat!30 (list!17058 (left!35020 (left!35020 (left!35020 t!4386)))) (list!17058 (right!35350 (left!35020 (left!35020 t!4386)))) f!428))))

(assert (=> b!4261162 (= e!2646169 (Node!14245 (map!9667 (left!35020 (left!35020 (left!35020 t!4386))) f!428) (map!9667 (right!35350 (left!35020 (left!35020 t!4386))) f!428) (csize!28718 (left!35020 (left!35020 t!4386))) (cheight!14455 (left!35020 (left!35020 t!4386)))))))

(declare-fun d!1254253 () Bool)

(assert (=> d!1254253 e!2646168))

(declare-fun res!1751462 () Bool)

(assert (=> d!1254253 (=> (not res!1751462) (not e!2646168))))

(assert (=> d!1254253 (= res!1751462 (= (list!17059 lt!1510675) (map!9668 (list!17058 (left!35020 (left!35020 t!4386))) f!428)))))

(assert (=> d!1254253 (= lt!1510675 e!2646170)))

(declare-fun c!723784 () Bool)

(assert (=> d!1254253 (= c!723784 ((_ is Empty!14244) (left!35020 (left!35020 t!4386))))))

(assert (=> d!1254253 (isBalanced!3802 (left!35020 (left!35020 t!4386)))))

(assert (=> d!1254253 (= (map!9667 (left!35020 (left!35020 t!4386)) f!428) lt!1510675)))

(declare-fun b!4261163 () Bool)

(assert (=> b!4261163 (= e!2646170 e!2646169)))

(declare-fun c!723785 () Bool)

(assert (=> b!4261163 (= c!723785 ((_ is Leaf!22013) (left!35020 (left!35020 t!4386))))))

(assert (= (and d!1254253 c!723784) b!4261159))

(assert (= (and d!1254253 (not c!723784)) b!4261163))

(assert (= (and b!4261163 c!723785) b!4261160))

(assert (= (and b!4261163 (not c!723785)) b!4261162))

(assert (= (and d!1254253 res!1751462) b!4261161))

(declare-fun m!4848801 () Bool)

(assert (=> b!4261160 m!4848801))

(declare-fun m!4848803 () Bool)

(assert (=> b!4261161 m!4848803))

(declare-fun m!4848805 () Bool)

(assert (=> b!4261162 m!4848805))

(assert (=> b!4261162 m!4848749))

(assert (=> b!4261162 m!4848751))

(assert (=> b!4261162 m!4848749))

(assert (=> b!4261162 m!4848751))

(declare-fun m!4848807 () Bool)

(assert (=> b!4261162 m!4848807))

(declare-fun m!4848809 () Bool)

(assert (=> b!4261162 m!4848809))

(declare-fun m!4848811 () Bool)

(assert (=> d!1254253 m!4848811))

(assert (=> d!1254253 m!4848385))

(assert (=> d!1254253 m!4848385))

(declare-fun m!4848813 () Bool)

(assert (=> d!1254253 m!4848813))

(assert (=> d!1254253 m!4848633))

(assert (=> b!4260822 d!1254253))

(declare-fun d!1254255 () Bool)

(assert (=> d!1254255 (= (map!9668 (++!12031 (list!17058 (left!35020 (left!35020 t!4386))) (list!17058 (right!35350 (left!35020 t!4386)))) f!428) (++!12032 (map!9668 (list!17058 (left!35020 (left!35020 t!4386))) f!428) (map!9668 (list!17058 (right!35350 (left!35020 t!4386))) f!428)))))

(declare-fun lt!1510677 () Unit!66135)

(assert (=> d!1254255 (= lt!1510677 (choose!25984 (list!17058 (left!35020 (left!35020 t!4386))) (list!17058 (right!35350 (left!35020 t!4386))) f!428))))

(assert (=> d!1254255 (= (lemmaMapConcat!30 (list!17058 (left!35020 (left!35020 t!4386))) (list!17058 (right!35350 (left!35020 t!4386))) f!428) lt!1510677)))

(declare-fun bs!599044 () Bool)

(assert (= bs!599044 d!1254255))

(assert (=> bs!599044 m!4848385))

(assert (=> bs!599044 m!4848813))

(assert (=> bs!599044 m!4848385))

(assert (=> bs!599044 m!4848387))

(assert (=> bs!599044 m!4848477))

(assert (=> bs!599044 m!4848385))

(assert (=> bs!599044 m!4848387))

(declare-fun m!4848815 () Bool)

(assert (=> bs!599044 m!4848815))

(assert (=> bs!599044 m!4848813))

(assert (=> bs!599044 m!4848799))

(declare-fun m!4848817 () Bool)

(assert (=> bs!599044 m!4848817))

(assert (=> bs!599044 m!4848387))

(assert (=> bs!599044 m!4848799))

(assert (=> bs!599044 m!4848477))

(declare-fun m!4848819 () Bool)

(assert (=> bs!599044 m!4848819))

(assert (=> b!4260822 d!1254255))

(assert (=> b!4260822 d!1254241))

(declare-fun d!1254257 () Bool)

(declare-fun res!1751463 () Bool)

(declare-fun e!2646171 () Bool)

(assert (=> d!1254257 (=> (not res!1751463) (not e!2646171))))

(assert (=> d!1254257 (= res!1751463 (<= (size!34598 (list!17061 (xs!17550 (right!35350 t!4386)))) 512))))

(assert (=> d!1254257 (= (inv!62142 (right!35350 t!4386)) e!2646171)))

(declare-fun b!4261164 () Bool)

(declare-fun res!1751464 () Bool)

(assert (=> b!4261164 (=> (not res!1751464) (not e!2646171))))

(assert (=> b!4261164 (= res!1751464 (= (csize!28719 (right!35350 t!4386)) (size!34598 (list!17061 (xs!17550 (right!35350 t!4386))))))))

(declare-fun b!4261165 () Bool)

(assert (=> b!4261165 (= e!2646171 (and (> (csize!28719 (right!35350 t!4386)) 0) (<= (csize!28719 (right!35350 t!4386)) 512)))))

(assert (= (and d!1254257 res!1751463) b!4261164))

(assert (= (and b!4261164 res!1751464) b!4261165))

(assert (=> d!1254257 m!4848515))

(assert (=> d!1254257 m!4848515))

(declare-fun m!4848821 () Bool)

(assert (=> d!1254257 m!4848821))

(assert (=> b!4261164 m!4848515))

(assert (=> b!4261164 m!4848515))

(assert (=> b!4261164 m!4848821))

(assert (=> b!4260886 d!1254257))

(declare-fun d!1254259 () Bool)

(declare-fun lt!1510678 () Int)

(assert (=> d!1254259 (>= lt!1510678 0)))

(declare-fun e!2646172 () Int)

(assert (=> d!1254259 (= lt!1510678 e!2646172)))

(declare-fun c!723786 () Bool)

(assert (=> d!1254259 (= c!723786 ((_ is Nil!47239) lt!1510631))))

(assert (=> d!1254259 (= (size!34597 lt!1510631) lt!1510678)))

(declare-fun b!4261166 () Bool)

(assert (=> b!4261166 (= e!2646172 0)))

(declare-fun b!4261167 () Bool)

(assert (=> b!4261167 (= e!2646172 (+ 1 (size!34597 (t!353186 lt!1510631))))))

(assert (= (and d!1254259 c!723786) b!4261166))

(assert (= (and d!1254259 (not c!723786)) b!4261167))

(declare-fun m!4848823 () Bool)

(assert (=> b!4261167 m!4848823))

(assert (=> d!1254149 d!1254259))

(assert (=> d!1254149 d!1254199))

(assert (=> d!1254151 d!1254147))

(assert (=> d!1254151 d!1254149))

(assert (=> d!1254151 d!1254161))

(declare-fun d!1254261 () Bool)

(assert (=> d!1254261 (= (map!9668 (++!12031 lt!1510605 lt!1510606) f!428) (++!12032 (map!9668 lt!1510605 f!428) (map!9668 lt!1510606 f!428)))))

(assert (=> d!1254261 true))

(declare-fun _$82!104 () Unit!66135)

(assert (=> d!1254261 (= (choose!25984 lt!1510605 lt!1510606 f!428) _$82!104)))

(declare-fun bs!599045 () Bool)

(assert (= bs!599045 d!1254261))

(assert (=> bs!599045 m!4848339))

(assert (=> bs!599045 m!4848347))

(assert (=> bs!599045 m!4848349))

(assert (=> bs!599045 m!4848347))

(assert (=> bs!599045 m!4848339))

(assert (=> bs!599045 m!4848335))

(assert (=> bs!599045 m!4848335))

(assert (=> bs!599045 m!4848337))

(assert (=> d!1254151 d!1254261))

(assert (=> d!1254151 d!1254163))

(assert (=> d!1254151 d!1254165))

(declare-fun d!1254263 () Bool)

(declare-fun res!1751465 () Bool)

(declare-fun e!2646173 () Bool)

(assert (=> d!1254263 (=> (not res!1751465) (not e!2646173))))

(assert (=> d!1254263 (= res!1751465 (= (csize!28718 t!4386) (+ (size!34599 (left!35020 t!4386)) (size!34599 (right!35350 t!4386)))))))

(assert (=> d!1254263 (= (inv!62141 t!4386) e!2646173)))

(declare-fun b!4261168 () Bool)

(declare-fun res!1751466 () Bool)

(assert (=> b!4261168 (=> (not res!1751466) (not e!2646173))))

(assert (=> b!4261168 (= res!1751466 (and (not (= (left!35020 t!4386) Empty!14244)) (not (= (right!35350 t!4386) Empty!14244))))))

(declare-fun b!4261169 () Bool)

(declare-fun res!1751467 () Bool)

(assert (=> b!4261169 (=> (not res!1751467) (not e!2646173))))

(assert (=> b!4261169 (= res!1751467 (= (cheight!14455 t!4386) (+ (max!0 (height!1868 (left!35020 t!4386)) (height!1868 (right!35350 t!4386))) 1)))))

(declare-fun b!4261170 () Bool)

(assert (=> b!4261170 (= e!2646173 (<= 0 (cheight!14455 t!4386)))))

(assert (= (and d!1254263 res!1751465) b!4261168))

(assert (= (and b!4261168 res!1751466) b!4261169))

(assert (= (and b!4261169 res!1751467) b!4261170))

(assert (=> d!1254263 m!4848687))

(declare-fun m!4848825 () Bool)

(assert (=> d!1254263 m!4848825))

(assert (=> b!4261169 m!4848407))

(assert (=> b!4261169 m!4848359))

(assert (=> b!4261169 m!4848407))

(assert (=> b!4261169 m!4848359))

(declare-fun m!4848827 () Bool)

(assert (=> b!4261169 m!4848827))

(assert (=> b!4260874 d!1254263))

(declare-fun d!1254265 () Bool)

(declare-fun lt!1510682 () IArray!28495)

(assert (=> d!1254265 (= lt!1510682 (IArray!28496 (map!9668 (list!17061 (xs!17550 (left!35020 t!4386))) f!428)))))

(declare-fun choose!25985 (IArray!28493 Int) IArray!28495)

(assert (=> d!1254265 (= lt!1510682 (choose!25985 (xs!17550 (left!35020 t!4386)) f!428))))

(assert (=> d!1254265 (= (map!9669 (xs!17550 (left!35020 t!4386)) f!428) lt!1510682)))

(declare-fun bs!599046 () Bool)

(assert (= bs!599046 d!1254265))

(assert (=> bs!599046 m!4848475))

(assert (=> bs!599046 m!4848475))

(declare-fun m!4848829 () Bool)

(assert (=> bs!599046 m!4848829))

(declare-fun m!4848831 () Bool)

(assert (=> bs!599046 m!4848831))

(assert (=> b!4260820 d!1254265))

(declare-fun d!1254269 () Bool)

(declare-fun res!1751470 () Bool)

(declare-fun e!2646176 () Bool)

(assert (=> d!1254269 (=> (not res!1751470) (not e!2646176))))

(assert (=> d!1254269 (= res!1751470 (= (csize!28718 (right!35350 t!4386)) (+ (size!34599 (left!35020 (right!35350 t!4386))) (size!34599 (right!35350 (right!35350 t!4386))))))))

(assert (=> d!1254269 (= (inv!62141 (right!35350 t!4386)) e!2646176)))

(declare-fun b!4261175 () Bool)

(declare-fun res!1751471 () Bool)

(assert (=> b!4261175 (=> (not res!1751471) (not e!2646176))))

(assert (=> b!4261175 (= res!1751471 (and (not (= (left!35020 (right!35350 t!4386)) Empty!14244)) (not (= (right!35350 (right!35350 t!4386)) Empty!14244))))))

(declare-fun b!4261176 () Bool)

(declare-fun res!1751472 () Bool)

(assert (=> b!4261176 (=> (not res!1751472) (not e!2646176))))

(assert (=> b!4261176 (= res!1751472 (= (cheight!14455 (right!35350 t!4386)) (+ (max!0 (height!1868 (left!35020 (right!35350 t!4386))) (height!1868 (right!35350 (right!35350 t!4386)))) 1)))))

(declare-fun b!4261177 () Bool)

(assert (=> b!4261177 (= e!2646176 (<= 0 (cheight!14455 (right!35350 t!4386))))))

(assert (= (and d!1254269 res!1751470) b!4261175))

(assert (= (and b!4261175 res!1751471) b!4261176))

(assert (= (and b!4261176 res!1751472) b!4261177))

(declare-fun m!4848833 () Bool)

(assert (=> d!1254269 m!4848833))

(declare-fun m!4848835 () Bool)

(assert (=> d!1254269 m!4848835))

(assert (=> b!4261176 m!4848649))

(assert (=> b!4261176 m!4848651))

(assert (=> b!4261176 m!4848649))

(assert (=> b!4261176 m!4848651))

(declare-fun m!4848839 () Bool)

(assert (=> b!4261176 m!4848839))

(assert (=> b!4260884 d!1254269))

(declare-fun b!4261202 () Bool)

(declare-fun res!1751488 () Bool)

(declare-fun e!2646188 () Bool)

(assert (=> b!4261202 (=> (not res!1751488) (not e!2646188))))

(assert (=> b!4261202 (= res!1751488 (isBalanced!3803 (right!35351 lt!1510616)))))

(declare-fun b!4261203 () Bool)

(declare-fun res!1751486 () Bool)

(assert (=> b!4261203 (=> (not res!1751486) (not e!2646188))))

(declare-fun height!1870 (Conc!14245) Int)

(assert (=> b!4261203 (= res!1751486 (<= (- (height!1870 (left!35021 lt!1510616)) (height!1870 (right!35351 lt!1510616))) 1))))

(declare-fun b!4261204 () Bool)

(declare-fun isEmpty!27982 (Conc!14245) Bool)

(assert (=> b!4261204 (= e!2646188 (not (isEmpty!27982 (right!35351 lt!1510616))))))

(declare-fun d!1254271 () Bool)

(declare-fun res!1751489 () Bool)

(declare-fun e!2646187 () Bool)

(assert (=> d!1254271 (=> res!1751489 e!2646187)))

(assert (=> d!1254271 (= res!1751489 (not ((_ is Node!14245) lt!1510616)))))

(assert (=> d!1254271 (= (isBalanced!3803 lt!1510616) e!2646187)))

(declare-fun b!4261205 () Bool)

(assert (=> b!4261205 (= e!2646187 e!2646188)))

(declare-fun res!1751485 () Bool)

(assert (=> b!4261205 (=> (not res!1751485) (not e!2646188))))

(assert (=> b!4261205 (= res!1751485 (<= (- 1) (- (height!1870 (left!35021 lt!1510616)) (height!1870 (right!35351 lt!1510616)))))))

(declare-fun b!4261206 () Bool)

(declare-fun res!1751490 () Bool)

(assert (=> b!4261206 (=> (not res!1751490) (not e!2646188))))

(assert (=> b!4261206 (= res!1751490 (not (isEmpty!27982 (left!35021 lt!1510616))))))

(declare-fun b!4261207 () Bool)

(declare-fun res!1751487 () Bool)

(assert (=> b!4261207 (=> (not res!1751487) (not e!2646188))))

(assert (=> b!4261207 (= res!1751487 (isBalanced!3803 (left!35021 lt!1510616)))))

(assert (= (and d!1254271 (not res!1751489)) b!4261205))

(assert (= (and b!4261205 res!1751485) b!4261203))

(assert (= (and b!4261203 res!1751486) b!4261207))

(assert (= (and b!4261207 res!1751487) b!4261202))

(assert (= (and b!4261202 res!1751488) b!4261206))

(assert (= (and b!4261206 res!1751490) b!4261204))

(declare-fun m!4848855 () Bool)

(assert (=> b!4261207 m!4848855))

(declare-fun m!4848857 () Bool)

(assert (=> b!4261205 m!4848857))

(declare-fun m!4848859 () Bool)

(assert (=> b!4261205 m!4848859))

(declare-fun m!4848861 () Bool)

(assert (=> b!4261204 m!4848861))

(declare-fun m!4848863 () Bool)

(assert (=> b!4261202 m!4848863))

(declare-fun m!4848865 () Bool)

(assert (=> b!4261206 m!4848865))

(assert (=> b!4261203 m!4848857))

(assert (=> b!4261203 m!4848859))

(assert (=> b!4260821 d!1254271))

(declare-fun d!1254283 () Bool)

(assert (=> d!1254283 (= (inv!62138 (xs!17550 (right!35350 t!4386))) (<= (size!34598 (innerList!14304 (xs!17550 (right!35350 t!4386)))) 2147483647))))

(declare-fun bs!599047 () Bool)

(assert (= bs!599047 d!1254283))

(declare-fun m!4848867 () Bool)

(assert (=> bs!599047 m!4848867))

(assert (=> b!4261028 d!1254283))

(declare-fun d!1254285 () Bool)

(declare-fun c!723799 () Bool)

(assert (=> d!1254285 (= c!723799 ((_ is Nil!47239) lt!1510648))))

(declare-fun e!2646194 () (InoxSet B!2821))

(assert (=> d!1254285 (= (content!7444 lt!1510648) e!2646194)))

(declare-fun b!4261218 () Bool)

(assert (=> b!4261218 (= e!2646194 ((as const (Array B!2821 Bool)) false))))

(declare-fun b!4261219 () Bool)

(assert (=> b!4261219 (= e!2646194 ((_ map or) (store ((as const (Array B!2821 Bool)) false) (h!52659 lt!1510648) true) (content!7444 (t!353186 lt!1510648))))))

(assert (= (and d!1254285 c!723799) b!4261218))

(assert (= (and d!1254285 (not c!723799)) b!4261219))

(declare-fun m!4848873 () Bool)

(assert (=> b!4261219 m!4848873))

(declare-fun m!4848875 () Bool)

(assert (=> b!4261219 m!4848875))

(assert (=> d!1254165 d!1254285))

(declare-fun d!1254293 () Bool)

(declare-fun c!723801 () Bool)

(assert (=> d!1254293 (= c!723801 ((_ is Nil!47239) (map!9668 lt!1510605 f!428)))))

(declare-fun e!2646197 () (InoxSet B!2821))

(assert (=> d!1254293 (= (content!7444 (map!9668 lt!1510605 f!428)) e!2646197)))

(declare-fun b!4261224 () Bool)

(assert (=> b!4261224 (= e!2646197 ((as const (Array B!2821 Bool)) false))))

(declare-fun b!4261225 () Bool)

(assert (=> b!4261225 (= e!2646197 ((_ map or) (store ((as const (Array B!2821 Bool)) false) (h!52659 (map!9668 lt!1510605 f!428)) true) (content!7444 (t!353186 (map!9668 lt!1510605 f!428)))))))

(assert (= (and d!1254293 c!723801) b!4261224))

(assert (= (and d!1254293 (not c!723801)) b!4261225))

(declare-fun m!4848877 () Bool)

(assert (=> b!4261225 m!4848877))

(assert (=> b!4261225 m!4848643))

(assert (=> d!1254165 d!1254293))

(declare-fun d!1254295 () Bool)

(declare-fun c!723802 () Bool)

(assert (=> d!1254295 (= c!723802 ((_ is Nil!47239) (map!9668 lt!1510606 f!428)))))

(declare-fun e!2646198 () (InoxSet B!2821))

(assert (=> d!1254295 (= (content!7444 (map!9668 lt!1510606 f!428)) e!2646198)))

(declare-fun b!4261226 () Bool)

(assert (=> b!4261226 (= e!2646198 ((as const (Array B!2821 Bool)) false))))

(declare-fun b!4261227 () Bool)

(assert (=> b!4261227 (= e!2646198 ((_ map or) (store ((as const (Array B!2821 Bool)) false) (h!52659 (map!9668 lt!1510606 f!428)) true) (content!7444 (t!353186 (map!9668 lt!1510606 f!428)))))))

(assert (= (and d!1254295 c!723802) b!4261226))

(assert (= (and d!1254295 (not c!723802)) b!4261227))

(declare-fun m!4848879 () Bool)

(assert (=> b!4261227 m!4848879))

(declare-fun m!4848883 () Bool)

(assert (=> b!4261227 m!4848883))

(assert (=> d!1254165 d!1254295))

(declare-fun d!1254297 () Bool)

(declare-fun lt!1510693 () Bool)

(assert (=> d!1254297 (= lt!1510693 (isEmpty!27980 (list!17058 (right!35350 t!4386))))))

(assert (=> d!1254297 (= lt!1510693 (= (size!34599 (right!35350 t!4386)) 0))))

(assert (=> d!1254297 (= (isEmpty!27978 (right!35350 t!4386)) lt!1510693)))

(declare-fun bs!599049 () Bool)

(assert (= bs!599049 d!1254297))

(assert (=> bs!599049 m!4848343))

(assert (=> bs!599049 m!4848343))

(declare-fun m!4848893 () Bool)

(assert (=> bs!599049 m!4848893))

(assert (=> bs!599049 m!4848825))

(assert (=> b!4260856 d!1254297))

(declare-fun d!1254299 () Bool)

(assert (=> d!1254299 (= (list!17061 (xs!17550 (right!35350 t!4386))) (innerList!14304 (xs!17550 (right!35350 t!4386))))))

(assert (=> b!4260933 d!1254299))

(assert (=> b!4260857 d!1254173))

(assert (=> b!4260857 d!1254109))

(declare-fun b!4261234 () Bool)

(declare-fun res!1751493 () Bool)

(declare-fun e!2646202 () Bool)

(assert (=> b!4261234 (=> (not res!1751493) (not e!2646202))))

(declare-fun lt!1510694 () List!47362)

(assert (=> b!4261234 (= res!1751493 (= (size!34598 lt!1510694) (+ (size!34598 (list!17058 (left!35020 (right!35350 t!4386)))) (size!34598 (list!17058 (right!35350 (right!35350 t!4386)))))))))

(declare-fun b!4261233 () Bool)

(declare-fun e!2646201 () List!47362)

(assert (=> b!4261233 (= e!2646201 (Cons!47238 (h!52658 (list!17058 (left!35020 (right!35350 t!4386)))) (++!12031 (t!353185 (list!17058 (left!35020 (right!35350 t!4386)))) (list!17058 (right!35350 (right!35350 t!4386))))))))

(declare-fun b!4261232 () Bool)

(assert (=> b!4261232 (= e!2646201 (list!17058 (right!35350 (right!35350 t!4386))))))

(declare-fun d!1254303 () Bool)

(assert (=> d!1254303 e!2646202))

(declare-fun res!1751494 () Bool)

(assert (=> d!1254303 (=> (not res!1751494) (not e!2646202))))

(assert (=> d!1254303 (= res!1751494 (= (content!7443 lt!1510694) ((_ map or) (content!7443 (list!17058 (left!35020 (right!35350 t!4386)))) (content!7443 (list!17058 (right!35350 (right!35350 t!4386)))))))))

(assert (=> d!1254303 (= lt!1510694 e!2646201)))

(declare-fun c!723805 () Bool)

(assert (=> d!1254303 (= c!723805 ((_ is Nil!47238) (list!17058 (left!35020 (right!35350 t!4386)))))))

(assert (=> d!1254303 (= (++!12031 (list!17058 (left!35020 (right!35350 t!4386))) (list!17058 (right!35350 (right!35350 t!4386)))) lt!1510694)))

(declare-fun b!4261235 () Bool)

(assert (=> b!4261235 (= e!2646202 (or (not (= (list!17058 (right!35350 (right!35350 t!4386))) Nil!47238)) (= lt!1510694 (list!17058 (left!35020 (right!35350 t!4386))))))))

(assert (= (and d!1254303 c!723805) b!4261232))

(assert (= (and d!1254303 (not c!723805)) b!4261233))

(assert (= (and d!1254303 res!1751494) b!4261234))

(assert (= (and b!4261234 res!1751493) b!4261235))

(declare-fun m!4848905 () Bool)

(assert (=> b!4261234 m!4848905))

(assert (=> b!4261234 m!4848517))

(declare-fun m!4848907 () Bool)

(assert (=> b!4261234 m!4848907))

(assert (=> b!4261234 m!4848519))

(declare-fun m!4848909 () Bool)

(assert (=> b!4261234 m!4848909))

(assert (=> b!4261233 m!4848519))

(declare-fun m!4848913 () Bool)

(assert (=> b!4261233 m!4848913))

(declare-fun m!4848915 () Bool)

(assert (=> d!1254303 m!4848915))

(assert (=> d!1254303 m!4848517))

(declare-fun m!4848917 () Bool)

(assert (=> d!1254303 m!4848917))

(assert (=> d!1254303 m!4848519))

(declare-fun m!4848919 () Bool)

(assert (=> d!1254303 m!4848919))

(assert (=> b!4260934 d!1254303))

(declare-fun b!4261241 () Bool)

(declare-fun e!2646205 () List!47362)

(declare-fun e!2646206 () List!47362)

(assert (=> b!4261241 (= e!2646205 e!2646206)))

(declare-fun c!723809 () Bool)

(assert (=> b!4261241 (= c!723809 ((_ is Leaf!22013) (left!35020 (right!35350 t!4386))))))

(declare-fun d!1254307 () Bool)

(declare-fun c!723808 () Bool)

(assert (=> d!1254307 (= c!723808 ((_ is Empty!14244) (left!35020 (right!35350 t!4386))))))

(assert (=> d!1254307 (= (list!17058 (left!35020 (right!35350 t!4386))) e!2646205)))

(declare-fun b!4261240 () Bool)

(assert (=> b!4261240 (= e!2646205 Nil!47238)))

(declare-fun b!4261242 () Bool)

(assert (=> b!4261242 (= e!2646206 (list!17061 (xs!17550 (left!35020 (right!35350 t!4386)))))))

(declare-fun b!4261243 () Bool)

(assert (=> b!4261243 (= e!2646206 (++!12031 (list!17058 (left!35020 (left!35020 (right!35350 t!4386)))) (list!17058 (right!35350 (left!35020 (right!35350 t!4386))))))))

(assert (= (and d!1254307 c!723808) b!4261240))

(assert (= (and d!1254307 (not c!723808)) b!4261241))

(assert (= (and b!4261241 c!723809) b!4261242))

(assert (= (and b!4261241 (not c!723809)) b!4261243))

(declare-fun m!4848925 () Bool)

(assert (=> b!4261242 m!4848925))

(declare-fun m!4848929 () Bool)

(assert (=> b!4261243 m!4848929))

(declare-fun m!4848931 () Bool)

(assert (=> b!4261243 m!4848931))

(assert (=> b!4261243 m!4848929))

(assert (=> b!4261243 m!4848931))

(declare-fun m!4848933 () Bool)

(assert (=> b!4261243 m!4848933))

(assert (=> b!4260934 d!1254307))

(declare-fun b!4261245 () Bool)

(declare-fun e!2646207 () List!47362)

(declare-fun e!2646208 () List!47362)

(assert (=> b!4261245 (= e!2646207 e!2646208)))

(declare-fun c!723811 () Bool)

(assert (=> b!4261245 (= c!723811 ((_ is Leaf!22013) (right!35350 (right!35350 t!4386))))))

(declare-fun d!1254309 () Bool)

(declare-fun c!723810 () Bool)

(assert (=> d!1254309 (= c!723810 ((_ is Empty!14244) (right!35350 (right!35350 t!4386))))))

(assert (=> d!1254309 (= (list!17058 (right!35350 (right!35350 t!4386))) e!2646207)))

(declare-fun b!4261244 () Bool)

(assert (=> b!4261244 (= e!2646207 Nil!47238)))

(declare-fun b!4261246 () Bool)

(assert (=> b!4261246 (= e!2646208 (list!17061 (xs!17550 (right!35350 (right!35350 t!4386)))))))

(declare-fun b!4261247 () Bool)

(assert (=> b!4261247 (= e!2646208 (++!12031 (list!17058 (left!35020 (right!35350 (right!35350 t!4386)))) (list!17058 (right!35350 (right!35350 (right!35350 t!4386))))))))

(assert (= (and d!1254309 c!723810) b!4261244))

(assert (= (and d!1254309 (not c!723810)) b!4261245))

(assert (= (and b!4261245 c!723811) b!4261246))

(assert (= (and b!4261245 (not c!723811)) b!4261247))

(declare-fun m!4848937 () Bool)

(assert (=> b!4261246 m!4848937))

(declare-fun m!4848939 () Bool)

(assert (=> b!4261247 m!4848939))

(declare-fun m!4848941 () Bool)

(assert (=> b!4261247 m!4848941))

(assert (=> b!4261247 m!4848939))

(assert (=> b!4261247 m!4848941))

(declare-fun m!4848943 () Bool)

(assert (=> b!4261247 m!4848943))

(assert (=> b!4260934 d!1254309))

(declare-fun b!4261251 () Bool)

(declare-fun e!2646211 () Bool)

(declare-fun tp!1306991 () Bool)

(assert (=> b!4261251 (= e!2646211 (and tp_is_empty!22877 tp!1306991))))

(assert (=> b!4261029 (= tp!1306986 e!2646211)))

(assert (= (and b!4261029 ((_ is Cons!47238) (innerList!14304 (xs!17550 (right!35350 t!4386))))) b!4261251))

(declare-fun b!4261252 () Bool)

(declare-fun e!2646212 () Bool)

(declare-fun tp!1306992 () Bool)

(assert (=> b!4261252 (= e!2646212 (and tp_is_empty!22877 tp!1306992))))

(assert (=> b!4261025 (= tp!1306980 e!2646212)))

(assert (= (and b!4261025 ((_ is Cons!47238) (innerList!14304 (xs!17550 (left!35020 t!4386))))) b!4261252))

(declare-fun b!4261256 () Bool)

(declare-fun e!2646216 () Bool)

(declare-fun tp!1306993 () Bool)

(declare-fun tp!1306995 () Bool)

(assert (=> b!4261256 (= e!2646216 (and (inv!62137 (left!35020 (left!35020 (right!35350 t!4386)))) tp!1306995 (inv!62137 (right!35350 (left!35020 (right!35350 t!4386)))) tp!1306993))))

(declare-fun b!4261258 () Bool)

(declare-fun e!2646215 () Bool)

(declare-fun tp!1306994 () Bool)

(assert (=> b!4261258 (= e!2646215 tp!1306994)))

(declare-fun b!4261257 () Bool)

(assert (=> b!4261257 (= e!2646216 (and (inv!62138 (xs!17550 (left!35020 (right!35350 t!4386)))) e!2646215))))

(assert (=> b!4261027 (= tp!1306987 (and (inv!62137 (left!35020 (right!35350 t!4386))) e!2646216))))

(assert (= (and b!4261027 ((_ is Node!14244) (left!35020 (right!35350 t!4386)))) b!4261256))

(assert (= b!4261257 b!4261258))

(assert (= (and b!4261027 ((_ is Leaf!22013) (left!35020 (right!35350 t!4386)))) b!4261257))

(declare-fun m!4848949 () Bool)

(assert (=> b!4261256 m!4848949))

(declare-fun m!4848953 () Bool)

(assert (=> b!4261256 m!4848953))

(declare-fun m!4848955 () Bool)

(assert (=> b!4261257 m!4848955))

(assert (=> b!4261027 m!4848605))

(declare-fun tp!1306996 () Bool)

(declare-fun e!2646218 () Bool)

(declare-fun tp!1306998 () Bool)

(declare-fun b!4261259 () Bool)

(assert (=> b!4261259 (= e!2646218 (and (inv!62137 (left!35020 (right!35350 (right!35350 t!4386)))) tp!1306998 (inv!62137 (right!35350 (right!35350 (right!35350 t!4386)))) tp!1306996))))

(declare-fun b!4261261 () Bool)

(declare-fun e!2646217 () Bool)

(declare-fun tp!1306997 () Bool)

(assert (=> b!4261261 (= e!2646217 tp!1306997)))

(declare-fun b!4261260 () Bool)

(assert (=> b!4261260 (= e!2646218 (and (inv!62138 (xs!17550 (right!35350 (right!35350 t!4386)))) e!2646217))))

(assert (=> b!4261027 (= tp!1306985 (and (inv!62137 (right!35350 (right!35350 t!4386))) e!2646218))))

(assert (= (and b!4261027 ((_ is Node!14244) (right!35350 (right!35350 t!4386)))) b!4261259))

(assert (= b!4261260 b!4261261))

(assert (= (and b!4261027 ((_ is Leaf!22013) (right!35350 (right!35350 t!4386)))) b!4261260))

(declare-fun m!4848961 () Bool)

(assert (=> b!4261259 m!4848961))

(declare-fun m!4848963 () Bool)

(assert (=> b!4261259 m!4848963))

(declare-fun m!4848965 () Bool)

(assert (=> b!4261260 m!4848965))

(assert (=> b!4261027 m!4848607))

(declare-fun e!2646220 () Bool)

(declare-fun b!4261262 () Bool)

(declare-fun tp!1306999 () Bool)

(declare-fun tp!1307001 () Bool)

(assert (=> b!4261262 (= e!2646220 (and (inv!62137 (left!35020 (left!35020 (left!35020 t!4386)))) tp!1307001 (inv!62137 (right!35350 (left!35020 (left!35020 t!4386)))) tp!1306999))))

(declare-fun b!4261264 () Bool)

(declare-fun e!2646219 () Bool)

(declare-fun tp!1307000 () Bool)

(assert (=> b!4261264 (= e!2646219 tp!1307000)))

(declare-fun b!4261263 () Bool)

(assert (=> b!4261263 (= e!2646220 (and (inv!62138 (xs!17550 (left!35020 (left!35020 t!4386)))) e!2646219))))

(assert (=> b!4261023 (= tp!1306981 (and (inv!62137 (left!35020 (left!35020 t!4386))) e!2646220))))

(assert (= (and b!4261023 ((_ is Node!14244) (left!35020 (left!35020 t!4386)))) b!4261262))

(assert (= b!4261263 b!4261264))

(assert (= (and b!4261023 ((_ is Leaf!22013) (left!35020 (left!35020 t!4386)))) b!4261263))

(declare-fun m!4848967 () Bool)

(assert (=> b!4261262 m!4848967))

(declare-fun m!4848969 () Bool)

(assert (=> b!4261262 m!4848969))

(declare-fun m!4848971 () Bool)

(assert (=> b!4261263 m!4848971))

(assert (=> b!4261023 m!4848599))

(declare-fun tp!1307004 () Bool)

(declare-fun tp!1307002 () Bool)

(declare-fun b!4261265 () Bool)

(declare-fun e!2646222 () Bool)

(assert (=> b!4261265 (= e!2646222 (and (inv!62137 (left!35020 (right!35350 (left!35020 t!4386)))) tp!1307004 (inv!62137 (right!35350 (right!35350 (left!35020 t!4386)))) tp!1307002))))

(declare-fun b!4261267 () Bool)

(declare-fun e!2646221 () Bool)

(declare-fun tp!1307003 () Bool)

(assert (=> b!4261267 (= e!2646221 tp!1307003)))

(declare-fun b!4261266 () Bool)

(assert (=> b!4261266 (= e!2646222 (and (inv!62138 (xs!17550 (right!35350 (left!35020 t!4386)))) e!2646221))))

(assert (=> b!4261023 (= tp!1306979 (and (inv!62137 (right!35350 (left!35020 t!4386))) e!2646222))))

(assert (= (and b!4261023 ((_ is Node!14244) (right!35350 (left!35020 t!4386)))) b!4261265))

(assert (= b!4261266 b!4261267))

(assert (= (and b!4261023 ((_ is Leaf!22013) (right!35350 (left!35020 t!4386)))) b!4261266))

(declare-fun m!4848973 () Bool)

(assert (=> b!4261265 m!4848973))

(declare-fun m!4848975 () Bool)

(assert (=> b!4261265 m!4848975))

(declare-fun m!4848977 () Bool)

(assert (=> b!4261266 m!4848977))

(assert (=> b!4261023 m!4848601))

(declare-fun b!4261268 () Bool)

(declare-fun e!2646223 () Bool)

(declare-fun tp!1307005 () Bool)

(assert (=> b!4261268 (= e!2646223 (and tp_is_empty!22877 tp!1307005))))

(assert (=> b!4261034 (= tp!1306990 e!2646223)))

(assert (= (and b!4261034 ((_ is Cons!47238) (t!353185 (innerList!14304 (xs!17550 t!4386))))) b!4261268))

(declare-fun b_lambda!125731 () Bool)

(assert (= b_lambda!125727 (or (and start!408286 b_free!126685) b_lambda!125731)))

(declare-fun b_lambda!125733 () Bool)

(assert (= b_lambda!125725 (or (and start!408286 b_free!126685) b_lambda!125733)))

(declare-fun b_lambda!125735 () Bool)

(assert (= b_lambda!125723 (or (and start!408286 b_free!126685) b_lambda!125735)))

(declare-fun b_lambda!125737 () Bool)

(assert (= b_lambda!125729 (or (and start!408286 b_free!126685) b_lambda!125737)))

(check-sat (not d!1254235) (not b!4261122) (not d!1254261) (not b!4261072) (not b!4261057) (not d!1254181) (not b!4261259) (not b!4261260) (not b!4261153) (not d!1254263) (not d!1254297) (not b!4261164) (not b!4261084) (not b!4261176) (not b!4261267) (not b!4261256) (not d!1254229) (not b!4261246) (not b!4261100) (not b!4261066) (not b!4261094) (not b!4261079) (not d!1254237) b_and!337711 (not b_lambda!125731) (not b!4261052) (not b!4261136) (not b!4261063) (not b_lambda!125721) (not b_next!127389) (not d!1254257) tp_is_empty!22873 (not b!4261233) (not d!1254265) (not d!1254283) (not b!4261109) (not b!4261268) (not b!4261219) (not b!4261046) (not b!4261074) (not b!4261050) (not b!4261098) (not b!4261148) (not b!4261040) (not d!1254255) (not b!4261056) (not b!4261090) (not b!4261205) (not b!4261264) (not b!4261149) (not b!4261076) (not d!1254191) (not b!4261162) (not b!4261206) (not b!4261242) (not b!4261243) (not b!4261080) (not b!4261207) (not b!4261114) (not d!1254251) (not b!4261252) (not b!4261157) (not b!4261169) (not b!4261155) (not d!1254269) (not b!4261202) (not d!1254211) (not b!4261167) (not b!4261027) (not b!4261265) (not b!4261092) (not d!1254303) (not b!4261055) (not b!4261261) (not d!1254223) (not b!4261266) (not b!4261134) (not b!4261263) (not b_lambda!125717) (not b!4261203) (not d!1254253) (not b!4261023) (not d!1254243) (not b!4261059) (not b_lambda!125737) (not b!4261257) (not b!4261048) (not b!4261065) (not b!4261077) (not b_lambda!125735) (not d!1254207) (not b!4261131) (not b!4261054) (not b!4261156) (not b!4261130) (not b!4261160) (not d!1254209) (not b!4261262) (not d!1254247) (not b!4261069) (not b!4261204) (not b!4261112) (not b!4261125) (not b_lambda!125719) (not b!4261082) (not b!4261068) (not b!4261258) (not b!4261151) (not b!4261108) (not b!4261227) (not b!4261095) (not b!4261161) (not b!4261070) (not b_lambda!125733) (not b!4261067) (not d!1254225) (not b!4261234) (not b!4261126) (not b!4261105) (not b!4261062) (not b!4261247) tp_is_empty!22877 (not b!4261058) (not b!4261251) (not b!4261060) (not b!4261135) (not b!4261097) (not b!4261225))
(check-sat b_and!337711 (not b_next!127389))
(get-model)

(declare-fun d!1254405 () Bool)

(declare-fun lt!1510719 () Int)

(assert (=> d!1254405 (>= lt!1510719 0)))

(declare-fun e!2646299 () Int)

(assert (=> d!1254405 (= lt!1510719 e!2646299)))

(declare-fun c!723852 () Bool)

(assert (=> d!1254405 (= c!723852 ((_ is Nil!47238) (list!17061 (xs!17550 t!4386))))))

(assert (=> d!1254405 (= (size!34598 (list!17061 (xs!17550 t!4386))) lt!1510719)))

(declare-fun b!4261423 () Bool)

(assert (=> b!4261423 (= e!2646299 0)))

(declare-fun b!4261424 () Bool)

(assert (=> b!4261424 (= e!2646299 (+ 1 (size!34598 (t!353185 (list!17061 (xs!17550 t!4386))))))))

(assert (= (and d!1254405 c!723852) b!4261423))

(assert (= (and d!1254405 (not c!723852)) b!4261424))

(declare-fun m!4849227 () Bool)

(assert (=> b!4261424 m!4849227))

(assert (=> b!4261136 d!1254405))

(declare-fun d!1254407 () Bool)

(assert (=> d!1254407 (= (list!17061 (xs!17550 t!4386)) (innerList!14304 (xs!17550 t!4386)))))

(assert (=> b!4261136 d!1254407))

(declare-fun d!1254409 () Bool)

(declare-fun c!723853 () Bool)

(assert (=> d!1254409 (= c!723853 ((_ is Nil!47238) (t!353185 lt!1510643)))))

(declare-fun e!2646300 () (InoxSet T!79406))

(assert (=> d!1254409 (= (content!7443 (t!353185 lt!1510643)) e!2646300)))

(declare-fun b!4261425 () Bool)

(assert (=> b!4261425 (= e!2646300 ((as const (Array T!79406 Bool)) false))))

(declare-fun b!4261426 () Bool)

(assert (=> b!4261426 (= e!2646300 ((_ map or) (store ((as const (Array T!79406 Bool)) false) (h!52658 (t!353185 lt!1510643)) true) (content!7443 (t!353185 (t!353185 lt!1510643)))))))

(assert (= (and d!1254409 c!723853) b!4261425))

(assert (= (and d!1254409 (not c!723853)) b!4261426))

(declare-fun m!4849229 () Bool)

(assert (=> b!4261426 m!4849229))

(declare-fun m!4849231 () Bool)

(assert (=> b!4261426 m!4849231))

(assert (=> b!4261090 d!1254409))

(declare-fun d!1254411 () Bool)

(declare-fun lt!1510720 () Int)

(assert (=> d!1254411 (>= lt!1510720 0)))

(declare-fun e!2646301 () Int)

(assert (=> d!1254411 (= lt!1510720 e!2646301)))

(declare-fun c!723854 () Bool)

(assert (=> d!1254411 (= c!723854 ((_ is Nil!47239) (t!353186 (map!9668 lt!1510606 f!428))))))

(assert (=> d!1254411 (= (size!34597 (t!353186 (map!9668 lt!1510606 f!428))) lt!1510720)))

(declare-fun b!4261427 () Bool)

(assert (=> b!4261427 (= e!2646301 0)))

(declare-fun b!4261428 () Bool)

(assert (=> b!4261428 (= e!2646301 (+ 1 (size!34597 (t!353186 (t!353186 (map!9668 lt!1510606 f!428))))))))

(assert (= (and d!1254411 c!723854) b!4261427))

(assert (= (and d!1254411 (not c!723854)) b!4261428))

(declare-fun m!4849233 () Bool)

(assert (=> b!4261428 m!4849233))

(assert (=> b!4261054 d!1254411))

(declare-fun b!4261429 () Bool)

(declare-fun res!1751565 () Bool)

(declare-fun e!2646302 () Bool)

(assert (=> b!4261429 (=> (not res!1751565) (not e!2646302))))

(assert (=> b!4261429 (= res!1751565 (not (isEmpty!27978 (left!35020 (left!35020 (right!35350 t!4386))))))))

(declare-fun b!4261430 () Bool)

(declare-fun e!2646303 () Bool)

(assert (=> b!4261430 (= e!2646303 e!2646302)))

(declare-fun res!1751560 () Bool)

(assert (=> b!4261430 (=> (not res!1751560) (not e!2646302))))

(assert (=> b!4261430 (= res!1751560 (<= (- 1) (- (height!1868 (left!35020 (left!35020 (right!35350 t!4386)))) (height!1868 (right!35350 (left!35020 (right!35350 t!4386)))))))))

(declare-fun b!4261431 () Bool)

(declare-fun res!1751561 () Bool)

(assert (=> b!4261431 (=> (not res!1751561) (not e!2646302))))

(assert (=> b!4261431 (= res!1751561 (isBalanced!3802 (left!35020 (left!35020 (right!35350 t!4386)))))))

(declare-fun d!1254413 () Bool)

(declare-fun res!1751564 () Bool)

(assert (=> d!1254413 (=> res!1751564 e!2646303)))

(assert (=> d!1254413 (= res!1751564 (not ((_ is Node!14244) (left!35020 (right!35350 t!4386)))))))

(assert (=> d!1254413 (= (isBalanced!3802 (left!35020 (right!35350 t!4386))) e!2646303)))

(declare-fun b!4261432 () Bool)

(declare-fun res!1751562 () Bool)

(assert (=> b!4261432 (=> (not res!1751562) (not e!2646302))))

(assert (=> b!4261432 (= res!1751562 (isBalanced!3802 (right!35350 (left!35020 (right!35350 t!4386)))))))

(declare-fun b!4261433 () Bool)

(assert (=> b!4261433 (= e!2646302 (not (isEmpty!27978 (right!35350 (left!35020 (right!35350 t!4386))))))))

(declare-fun b!4261434 () Bool)

(declare-fun res!1751563 () Bool)

(assert (=> b!4261434 (=> (not res!1751563) (not e!2646302))))

(assert (=> b!4261434 (= res!1751563 (<= (- (height!1868 (left!35020 (left!35020 (right!35350 t!4386)))) (height!1868 (right!35350 (left!35020 (right!35350 t!4386))))) 1))))

(assert (= (and d!1254413 (not res!1751564)) b!4261430))

(assert (= (and b!4261430 res!1751560) b!4261434))

(assert (= (and b!4261434 res!1751563) b!4261431))

(assert (= (and b!4261431 res!1751561) b!4261432))

(assert (= (and b!4261432 res!1751562) b!4261429))

(assert (= (and b!4261429 res!1751565) b!4261433))

(declare-fun m!4849235 () Bool)

(assert (=> b!4261430 m!4849235))

(declare-fun m!4849237 () Bool)

(assert (=> b!4261430 m!4849237))

(declare-fun m!4849239 () Bool)

(assert (=> b!4261431 m!4849239))

(declare-fun m!4849241 () Bool)

(assert (=> b!4261433 m!4849241))

(assert (=> b!4261434 m!4849235))

(assert (=> b!4261434 m!4849237))

(declare-fun m!4849243 () Bool)

(assert (=> b!4261432 m!4849243))

(declare-fun m!4849245 () Bool)

(assert (=> b!4261429 m!4849245))

(assert (=> b!4261067 d!1254413))

(assert (=> b!4261023 d!1254219))

(assert (=> b!4261023 d!1254221))

(assert (=> d!1254243 d!1254405))

(assert (=> d!1254243 d!1254407))

(declare-fun d!1254415 () Bool)

(declare-fun c!723855 () Bool)

(assert (=> d!1254415 (= c!723855 ((_ is Empty!14245) lt!1510673))))

(declare-fun e!2646304 () List!47363)

(assert (=> d!1254415 (= (list!17059 lt!1510673) e!2646304)))

(declare-fun b!4261436 () Bool)

(declare-fun e!2646305 () List!47363)

(assert (=> b!4261436 (= e!2646304 e!2646305)))

(declare-fun c!723856 () Bool)

(assert (=> b!4261436 (= c!723856 ((_ is Leaf!22014) lt!1510673))))

(declare-fun b!4261435 () Bool)

(assert (=> b!4261435 (= e!2646304 Nil!47239)))

(declare-fun b!4261438 () Bool)

(assert (=> b!4261438 (= e!2646305 (++!12032 (list!17059 (left!35021 lt!1510673)) (list!17059 (right!35351 lt!1510673))))))

(declare-fun b!4261437 () Bool)

(assert (=> b!4261437 (= e!2646305 (list!17063 (xs!17551 lt!1510673)))))

(assert (= (and d!1254415 c!723855) b!4261435))

(assert (= (and d!1254415 (not c!723855)) b!4261436))

(assert (= (and b!4261436 c!723856) b!4261437))

(assert (= (and b!4261436 (not c!723856)) b!4261438))

(declare-fun m!4849247 () Bool)

(assert (=> b!4261438 m!4849247))

(declare-fun m!4849249 () Bool)

(assert (=> b!4261438 m!4849249))

(assert (=> b!4261438 m!4849247))

(assert (=> b!4261438 m!4849249))

(declare-fun m!4849251 () Bool)

(assert (=> b!4261438 m!4849251))

(declare-fun m!4849253 () Bool)

(assert (=> b!4261437 m!4849253))

(assert (=> d!1254251 d!1254415))

(declare-fun d!1254417 () Bool)

(declare-fun lt!1510721 () List!47363)

(assert (=> d!1254417 (= (size!34597 lt!1510721) (size!34598 (list!17058 (right!35350 (left!35020 t!4386)))))))

(declare-fun e!2646306 () List!47363)

(assert (=> d!1254417 (= lt!1510721 e!2646306)))

(declare-fun c!723857 () Bool)

(assert (=> d!1254417 (= c!723857 ((_ is Nil!47238) (list!17058 (right!35350 (left!35020 t!4386)))))))

(assert (=> d!1254417 (= (map!9668 (list!17058 (right!35350 (left!35020 t!4386))) f!428) lt!1510721)))

(declare-fun b!4261439 () Bool)

(assert (=> b!4261439 (= e!2646306 Nil!47239)))

(declare-fun b!4261440 () Bool)

(assert (=> b!4261440 (= e!2646306 ($colon$colon!631 (map!9668 (t!353185 (list!17058 (right!35350 (left!35020 t!4386)))) f!428) (dynLambda!20219 f!428 (h!52658 (list!17058 (right!35350 (left!35020 t!4386)))))))))

(assert (= (and d!1254417 c!723857) b!4261439))

(assert (= (and d!1254417 (not c!723857)) b!4261440))

(declare-fun b_lambda!125755 () Bool)

(assert (=> (not b_lambda!125755) (not b!4261440)))

(declare-fun t!353232 () Bool)

(declare-fun tb!256915 () Bool)

(assert (=> (and start!408286 (= f!428 f!428) t!353232) tb!256915))

(declare-fun result!313480 () Bool)

(assert (=> tb!256915 (= result!313480 tp_is_empty!22873)))

(assert (=> b!4261440 t!353232))

(declare-fun b_and!337721 () Bool)

(assert (= b_and!337711 (and (=> t!353232 result!313480) b_and!337721)))

(declare-fun m!4849255 () Bool)

(assert (=> d!1254417 m!4849255))

(assert (=> d!1254417 m!4848387))

(assert (=> d!1254417 m!4848737))

(declare-fun m!4849257 () Bool)

(assert (=> b!4261440 m!4849257))

(declare-fun m!4849259 () Bool)

(assert (=> b!4261440 m!4849259))

(assert (=> b!4261440 m!4849257))

(assert (=> b!4261440 m!4849259))

(declare-fun m!4849261 () Bool)

(assert (=> b!4261440 m!4849261))

(assert (=> d!1254251 d!1254417))

(assert (=> d!1254251 d!1254241))

(declare-fun b!4261441 () Bool)

(declare-fun res!1751571 () Bool)

(declare-fun e!2646307 () Bool)

(assert (=> b!4261441 (=> (not res!1751571) (not e!2646307))))

(assert (=> b!4261441 (= res!1751571 (not (isEmpty!27978 (left!35020 (right!35350 (left!35020 t!4386))))))))

(declare-fun b!4261442 () Bool)

(declare-fun e!2646308 () Bool)

(assert (=> b!4261442 (= e!2646308 e!2646307)))

(declare-fun res!1751566 () Bool)

(assert (=> b!4261442 (=> (not res!1751566) (not e!2646307))))

(assert (=> b!4261442 (= res!1751566 (<= (- 1) (- (height!1868 (left!35020 (right!35350 (left!35020 t!4386)))) (height!1868 (right!35350 (right!35350 (left!35020 t!4386)))))))))

(declare-fun b!4261443 () Bool)

(declare-fun res!1751567 () Bool)

(assert (=> b!4261443 (=> (not res!1751567) (not e!2646307))))

(assert (=> b!4261443 (= res!1751567 (isBalanced!3802 (left!35020 (right!35350 (left!35020 t!4386)))))))

(declare-fun d!1254419 () Bool)

(declare-fun res!1751570 () Bool)

(assert (=> d!1254419 (=> res!1751570 e!2646308)))

(assert (=> d!1254419 (= res!1751570 (not ((_ is Node!14244) (right!35350 (left!35020 t!4386)))))))

(assert (=> d!1254419 (= (isBalanced!3802 (right!35350 (left!35020 t!4386))) e!2646308)))

(declare-fun b!4261444 () Bool)

(declare-fun res!1751568 () Bool)

(assert (=> b!4261444 (=> (not res!1751568) (not e!2646307))))

(assert (=> b!4261444 (= res!1751568 (isBalanced!3802 (right!35350 (right!35350 (left!35020 t!4386)))))))

(declare-fun b!4261445 () Bool)

(assert (=> b!4261445 (= e!2646307 (not (isEmpty!27978 (right!35350 (right!35350 (left!35020 t!4386))))))))

(declare-fun b!4261446 () Bool)

(declare-fun res!1751569 () Bool)

(assert (=> b!4261446 (=> (not res!1751569) (not e!2646307))))

(assert (=> b!4261446 (= res!1751569 (<= (- (height!1868 (left!35020 (right!35350 (left!35020 t!4386)))) (height!1868 (right!35350 (right!35350 (left!35020 t!4386))))) 1))))

(assert (= (and d!1254419 (not res!1751570)) b!4261442))

(assert (= (and b!4261442 res!1751566) b!4261446))

(assert (= (and b!4261446 res!1751569) b!4261443))

(assert (= (and b!4261443 res!1751567) b!4261444))

(assert (= (and b!4261444 res!1751568) b!4261441))

(assert (= (and b!4261441 res!1751571) b!4261445))

(declare-fun m!4849263 () Bool)

(assert (=> b!4261442 m!4849263))

(declare-fun m!4849265 () Bool)

(assert (=> b!4261442 m!4849265))

(declare-fun m!4849267 () Bool)

(assert (=> b!4261443 m!4849267))

(declare-fun m!4849269 () Bool)

(assert (=> b!4261445 m!4849269))

(assert (=> b!4261446 m!4849263))

(assert (=> b!4261446 m!4849265))

(declare-fun m!4849271 () Bool)

(assert (=> b!4261444 m!4849271))

(declare-fun m!4849273 () Bool)

(assert (=> b!4261441 m!4849273))

(assert (=> d!1254251 d!1254419))

(declare-fun d!1254421 () Bool)

(declare-fun lt!1510722 () Bool)

(assert (=> d!1254421 (= lt!1510722 (isEmpty!27980 (list!17058 (left!35020 (left!35020 t!4386)))))))

(assert (=> d!1254421 (= lt!1510722 (= (size!34599 (left!35020 (left!35020 t!4386))) 0))))

(assert (=> d!1254421 (= (isEmpty!27978 (left!35020 (left!35020 t!4386))) lt!1510722)))

(declare-fun bs!599056 () Bool)

(assert (= bs!599056 d!1254421))

(assert (=> bs!599056 m!4848385))

(assert (=> bs!599056 m!4848385))

(declare-fun m!4849275 () Bool)

(assert (=> bs!599056 m!4849275))

(assert (=> bs!599056 m!4848727))

(assert (=> b!4261055 d!1254421))

(declare-fun d!1254423 () Bool)

(declare-fun c!723858 () Bool)

(assert (=> d!1254423 (= c!723858 ((_ is Node!14244) (left!35020 (left!35020 (right!35350 t!4386)))))))

(declare-fun e!2646309 () Bool)

(assert (=> d!1254423 (= (inv!62137 (left!35020 (left!35020 (right!35350 t!4386)))) e!2646309)))

(declare-fun b!4261447 () Bool)

(assert (=> b!4261447 (= e!2646309 (inv!62141 (left!35020 (left!35020 (right!35350 t!4386)))))))

(declare-fun b!4261448 () Bool)

(declare-fun e!2646310 () Bool)

(assert (=> b!4261448 (= e!2646309 e!2646310)))

(declare-fun res!1751572 () Bool)

(assert (=> b!4261448 (= res!1751572 (not ((_ is Leaf!22013) (left!35020 (left!35020 (right!35350 t!4386))))))))

(assert (=> b!4261448 (=> res!1751572 e!2646310)))

(declare-fun b!4261449 () Bool)

(assert (=> b!4261449 (= e!2646310 (inv!62142 (left!35020 (left!35020 (right!35350 t!4386)))))))

(assert (= (and d!1254423 c!723858) b!4261447))

(assert (= (and d!1254423 (not c!723858)) b!4261448))

(assert (= (and b!4261448 (not res!1751572)) b!4261449))

(declare-fun m!4849277 () Bool)

(assert (=> b!4261447 m!4849277))

(declare-fun m!4849279 () Bool)

(assert (=> b!4261449 m!4849279))

(assert (=> b!4261256 d!1254423))

(declare-fun d!1254425 () Bool)

(declare-fun c!723859 () Bool)

(assert (=> d!1254425 (= c!723859 ((_ is Node!14244) (right!35350 (left!35020 (right!35350 t!4386)))))))

(declare-fun e!2646311 () Bool)

(assert (=> d!1254425 (= (inv!62137 (right!35350 (left!35020 (right!35350 t!4386)))) e!2646311)))

(declare-fun b!4261450 () Bool)

(assert (=> b!4261450 (= e!2646311 (inv!62141 (right!35350 (left!35020 (right!35350 t!4386)))))))

(declare-fun b!4261451 () Bool)

(declare-fun e!2646312 () Bool)

(assert (=> b!4261451 (= e!2646311 e!2646312)))

(declare-fun res!1751573 () Bool)

(assert (=> b!4261451 (= res!1751573 (not ((_ is Leaf!22013) (right!35350 (left!35020 (right!35350 t!4386))))))))

(assert (=> b!4261451 (=> res!1751573 e!2646312)))

(declare-fun b!4261452 () Bool)

(assert (=> b!4261452 (= e!2646312 (inv!62142 (right!35350 (left!35020 (right!35350 t!4386)))))))

(assert (= (and d!1254425 c!723859) b!4261450))

(assert (= (and d!1254425 (not c!723859)) b!4261451))

(assert (= (and b!4261451 (not res!1751573)) b!4261452))

(declare-fun m!4849281 () Bool)

(assert (=> b!4261450 m!4849281))

(declare-fun m!4849283 () Bool)

(assert (=> b!4261452 m!4849283))

(assert (=> b!4261256 d!1254425))

(declare-fun d!1254427 () Bool)

(assert (=> d!1254427 (= (height!1870 (left!35021 lt!1510616)) (ite ((_ is Empty!14245) (left!35021 lt!1510616)) 0 (ite ((_ is Leaf!22014) (left!35021 lt!1510616)) 1 (cheight!14456 (left!35021 lt!1510616)))))))

(assert (=> b!4261203 d!1254427))

(declare-fun d!1254429 () Bool)

(assert (=> d!1254429 (= (height!1870 (right!35351 lt!1510616)) (ite ((_ is Empty!14245) (right!35351 lt!1510616)) 0 (ite ((_ is Leaf!22014) (right!35351 lt!1510616)) 1 (cheight!14456 (right!35351 lt!1510616)))))))

(assert (=> b!4261203 d!1254429))

(declare-fun d!1254431 () Bool)

(declare-fun lt!1510723 () List!47363)

(assert (=> d!1254431 (= (size!34597 lt!1510723) (size!34598 (list!17058 (left!35020 (left!35020 t!4386)))))))

(declare-fun e!2646313 () List!47363)

(assert (=> d!1254431 (= lt!1510723 e!2646313)))

(declare-fun c!723860 () Bool)

(assert (=> d!1254431 (= c!723860 ((_ is Nil!47238) (list!17058 (left!35020 (left!35020 t!4386)))))))

(assert (=> d!1254431 (= (map!9668 (list!17058 (left!35020 (left!35020 t!4386))) f!428) lt!1510723)))

(declare-fun b!4261453 () Bool)

(assert (=> b!4261453 (= e!2646313 Nil!47239)))

(declare-fun b!4261454 () Bool)

(assert (=> b!4261454 (= e!2646313 ($colon$colon!631 (map!9668 (t!353185 (list!17058 (left!35020 (left!35020 t!4386)))) f!428) (dynLambda!20219 f!428 (h!52658 (list!17058 (left!35020 (left!35020 t!4386)))))))))

(assert (= (and d!1254431 c!723860) b!4261453))

(assert (= (and d!1254431 (not c!723860)) b!4261454))

(declare-fun b_lambda!125757 () Bool)

(assert (=> (not b_lambda!125757) (not b!4261454)))

(declare-fun t!353235 () Bool)

(declare-fun tb!256917 () Bool)

(assert (=> (and start!408286 (= f!428 f!428) t!353235) tb!256917))

(declare-fun result!313482 () Bool)

(assert (=> tb!256917 (= result!313482 tp_is_empty!22873)))

(assert (=> b!4261454 t!353235))

(declare-fun b_and!337723 () Bool)

(assert (= b_and!337721 (and (=> t!353235 result!313482) b_and!337723)))

(declare-fun m!4849285 () Bool)

(assert (=> d!1254431 m!4849285))

(assert (=> d!1254431 m!4848385))

(assert (=> d!1254431 m!4848735))

(declare-fun m!4849287 () Bool)

(assert (=> b!4261454 m!4849287))

(declare-fun m!4849289 () Bool)

(assert (=> b!4261454 m!4849289))

(assert (=> b!4261454 m!4849287))

(assert (=> b!4261454 m!4849289))

(declare-fun m!4849291 () Bool)

(assert (=> b!4261454 m!4849291))

(assert (=> d!1254255 d!1254431))

(declare-fun d!1254433 () Bool)

(declare-fun lt!1510724 () List!47363)

(assert (=> d!1254433 (= (size!34597 lt!1510724) (size!34598 (++!12031 (list!17058 (left!35020 (left!35020 t!4386))) (list!17058 (right!35350 (left!35020 t!4386))))))))

(declare-fun e!2646314 () List!47363)

(assert (=> d!1254433 (= lt!1510724 e!2646314)))

(declare-fun c!723861 () Bool)

(assert (=> d!1254433 (= c!723861 ((_ is Nil!47238) (++!12031 (list!17058 (left!35020 (left!35020 t!4386))) (list!17058 (right!35350 (left!35020 t!4386))))))))

(assert (=> d!1254433 (= (map!9668 (++!12031 (list!17058 (left!35020 (left!35020 t!4386))) (list!17058 (right!35350 (left!35020 t!4386)))) f!428) lt!1510724)))

(declare-fun b!4261455 () Bool)

(assert (=> b!4261455 (= e!2646314 Nil!47239)))

(declare-fun b!4261456 () Bool)

(assert (=> b!4261456 (= e!2646314 ($colon$colon!631 (map!9668 (t!353185 (++!12031 (list!17058 (left!35020 (left!35020 t!4386))) (list!17058 (right!35350 (left!35020 t!4386))))) f!428) (dynLambda!20219 f!428 (h!52658 (++!12031 (list!17058 (left!35020 (left!35020 t!4386))) (list!17058 (right!35350 (left!35020 t!4386))))))))))

(assert (= (and d!1254433 c!723861) b!4261455))

(assert (= (and d!1254433 (not c!723861)) b!4261456))

(declare-fun b_lambda!125759 () Bool)

(assert (=> (not b_lambda!125759) (not b!4261456)))

(declare-fun t!353237 () Bool)

(declare-fun tb!256919 () Bool)

(assert (=> (and start!408286 (= f!428 f!428) t!353237) tb!256919))

(declare-fun result!313484 () Bool)

(assert (=> tb!256919 (= result!313484 tp_is_empty!22873)))

(assert (=> b!4261456 t!353237))

(declare-fun b_and!337725 () Bool)

(assert (= b_and!337723 (and (=> t!353237 result!313484) b_and!337725)))

(declare-fun m!4849293 () Bool)

(assert (=> d!1254433 m!4849293))

(assert (=> d!1254433 m!4848477))

(declare-fun m!4849295 () Bool)

(assert (=> d!1254433 m!4849295))

(declare-fun m!4849297 () Bool)

(assert (=> b!4261456 m!4849297))

(declare-fun m!4849299 () Bool)

(assert (=> b!4261456 m!4849299))

(assert (=> b!4261456 m!4849297))

(assert (=> b!4261456 m!4849299))

(declare-fun m!4849301 () Bool)

(assert (=> b!4261456 m!4849301))

(assert (=> d!1254255 d!1254433))

(declare-fun d!1254435 () Bool)

(assert (=> d!1254435 (= (map!9668 (++!12031 (list!17058 (left!35020 (left!35020 t!4386))) (list!17058 (right!35350 (left!35020 t!4386)))) f!428) (++!12032 (map!9668 (list!17058 (left!35020 (left!35020 t!4386))) f!428) (map!9668 (list!17058 (right!35350 (left!35020 t!4386))) f!428)))))

(assert (=> d!1254435 true))

(declare-fun _$82!108 () Unit!66135)

(assert (=> d!1254435 (= (choose!25984 (list!17058 (left!35020 (left!35020 t!4386))) (list!17058 (right!35350 (left!35020 t!4386))) f!428) _$82!108)))

(declare-fun bs!599057 () Bool)

(assert (= bs!599057 d!1254435))

(assert (=> bs!599057 m!4848813))

(assert (=> bs!599057 m!4848799))

(assert (=> bs!599057 m!4848817))

(assert (=> bs!599057 m!4848387))

(assert (=> bs!599057 m!4848799))

(assert (=> bs!599057 m!4848385))

(assert (=> bs!599057 m!4848813))

(assert (=> bs!599057 m!4848385))

(assert (=> bs!599057 m!4848387))

(assert (=> bs!599057 m!4848477))

(assert (=> bs!599057 m!4848477))

(assert (=> bs!599057 m!4848819))

(assert (=> d!1254255 d!1254435))

(assert (=> d!1254255 d!1254237))

(declare-fun b!4261457 () Bool)

(declare-fun e!2646315 () List!47363)

(assert (=> b!4261457 (= e!2646315 (map!9668 (list!17058 (right!35350 (left!35020 t!4386))) f!428))))

(declare-fun d!1254437 () Bool)

(declare-fun e!2646316 () Bool)

(assert (=> d!1254437 e!2646316))

(declare-fun res!1751575 () Bool)

(assert (=> d!1254437 (=> (not res!1751575) (not e!2646316))))

(declare-fun lt!1510725 () List!47363)

(assert (=> d!1254437 (= res!1751575 (= (content!7444 lt!1510725) ((_ map or) (content!7444 (map!9668 (list!17058 (left!35020 (left!35020 t!4386))) f!428)) (content!7444 (map!9668 (list!17058 (right!35350 (left!35020 t!4386))) f!428)))))))

(assert (=> d!1254437 (= lt!1510725 e!2646315)))

(declare-fun c!723862 () Bool)

(assert (=> d!1254437 (= c!723862 ((_ is Nil!47239) (map!9668 (list!17058 (left!35020 (left!35020 t!4386))) f!428)))))

(assert (=> d!1254437 (= (++!12032 (map!9668 (list!17058 (left!35020 (left!35020 t!4386))) f!428) (map!9668 (list!17058 (right!35350 (left!35020 t!4386))) f!428)) lt!1510725)))

(declare-fun b!4261460 () Bool)

(assert (=> b!4261460 (= e!2646316 (or (not (= (map!9668 (list!17058 (right!35350 (left!35020 t!4386))) f!428) Nil!47239)) (= lt!1510725 (map!9668 (list!17058 (left!35020 (left!35020 t!4386))) f!428))))))

(declare-fun b!4261459 () Bool)

(declare-fun res!1751574 () Bool)

(assert (=> b!4261459 (=> (not res!1751574) (not e!2646316))))

(assert (=> b!4261459 (= res!1751574 (= (size!34597 lt!1510725) (+ (size!34597 (map!9668 (list!17058 (left!35020 (left!35020 t!4386))) f!428)) (size!34597 (map!9668 (list!17058 (right!35350 (left!35020 t!4386))) f!428)))))))

(declare-fun b!4261458 () Bool)

(assert (=> b!4261458 (= e!2646315 (Cons!47239 (h!52659 (map!9668 (list!17058 (left!35020 (left!35020 t!4386))) f!428)) (++!12032 (t!353186 (map!9668 (list!17058 (left!35020 (left!35020 t!4386))) f!428)) (map!9668 (list!17058 (right!35350 (left!35020 t!4386))) f!428))))))

(assert (= (and d!1254437 c!723862) b!4261457))

(assert (= (and d!1254437 (not c!723862)) b!4261458))

(assert (= (and d!1254437 res!1751575) b!4261459))

(assert (= (and b!4261459 res!1751574) b!4261460))

(declare-fun m!4849303 () Bool)

(assert (=> d!1254437 m!4849303))

(assert (=> d!1254437 m!4848813))

(declare-fun m!4849305 () Bool)

(assert (=> d!1254437 m!4849305))

(assert (=> d!1254437 m!4848799))

(declare-fun m!4849307 () Bool)

(assert (=> d!1254437 m!4849307))

(declare-fun m!4849309 () Bool)

(assert (=> b!4261459 m!4849309))

(assert (=> b!4261459 m!4848813))

(declare-fun m!4849311 () Bool)

(assert (=> b!4261459 m!4849311))

(assert (=> b!4261459 m!4848799))

(declare-fun m!4849313 () Bool)

(assert (=> b!4261459 m!4849313))

(assert (=> b!4261458 m!4848799))

(declare-fun m!4849315 () Bool)

(assert (=> b!4261458 m!4849315))

(assert (=> d!1254255 d!1254437))

(assert (=> d!1254255 d!1254417))

(declare-fun d!1254439 () Bool)

(declare-fun lt!1510726 () Bool)

(assert (=> d!1254439 (= lt!1510726 (isEmpty!27980 (list!17058 (right!35350 (left!35020 t!4386)))))))

(assert (=> d!1254439 (= lt!1510726 (= (size!34599 (right!35350 (left!35020 t!4386))) 0))))

(assert (=> d!1254439 (= (isEmpty!27978 (right!35350 (left!35020 t!4386))) lt!1510726)))

(declare-fun bs!599058 () Bool)

(assert (= bs!599058 d!1254439))

(assert (=> bs!599058 m!4848387))

(assert (=> bs!599058 m!4848387))

(declare-fun m!4849317 () Bool)

(assert (=> bs!599058 m!4849317))

(assert (=> bs!599058 m!4848729))

(assert (=> b!4261059 d!1254439))

(declare-fun b!4261461 () Bool)

(declare-fun res!1751579 () Bool)

(declare-fun e!2646318 () Bool)

(assert (=> b!4261461 (=> (not res!1751579) (not e!2646318))))

(assert (=> b!4261461 (= res!1751579 (isBalanced!3803 (right!35351 (left!35021 lt!1510616))))))

(declare-fun b!4261462 () Bool)

(declare-fun res!1751577 () Bool)

(assert (=> b!4261462 (=> (not res!1751577) (not e!2646318))))

(assert (=> b!4261462 (= res!1751577 (<= (- (height!1870 (left!35021 (left!35021 lt!1510616))) (height!1870 (right!35351 (left!35021 lt!1510616)))) 1))))

(declare-fun b!4261463 () Bool)

(assert (=> b!4261463 (= e!2646318 (not (isEmpty!27982 (right!35351 (left!35021 lt!1510616)))))))

(declare-fun d!1254441 () Bool)

(declare-fun res!1751580 () Bool)

(declare-fun e!2646317 () Bool)

(assert (=> d!1254441 (=> res!1751580 e!2646317)))

(assert (=> d!1254441 (= res!1751580 (not ((_ is Node!14245) (left!35021 lt!1510616))))))

(assert (=> d!1254441 (= (isBalanced!3803 (left!35021 lt!1510616)) e!2646317)))

(declare-fun b!4261464 () Bool)

(assert (=> b!4261464 (= e!2646317 e!2646318)))

(declare-fun res!1751576 () Bool)

(assert (=> b!4261464 (=> (not res!1751576) (not e!2646318))))

(assert (=> b!4261464 (= res!1751576 (<= (- 1) (- (height!1870 (left!35021 (left!35021 lt!1510616))) (height!1870 (right!35351 (left!35021 lt!1510616))))))))

(declare-fun b!4261465 () Bool)

(declare-fun res!1751581 () Bool)

(assert (=> b!4261465 (=> (not res!1751581) (not e!2646318))))

(assert (=> b!4261465 (= res!1751581 (not (isEmpty!27982 (left!35021 (left!35021 lt!1510616)))))))

(declare-fun b!4261466 () Bool)

(declare-fun res!1751578 () Bool)

(assert (=> b!4261466 (=> (not res!1751578) (not e!2646318))))

(assert (=> b!4261466 (= res!1751578 (isBalanced!3803 (left!35021 (left!35021 lt!1510616))))))

(assert (= (and d!1254441 (not res!1751580)) b!4261464))

(assert (= (and b!4261464 res!1751576) b!4261462))

(assert (= (and b!4261462 res!1751577) b!4261466))

(assert (= (and b!4261466 res!1751578) b!4261461))

(assert (= (and b!4261461 res!1751579) b!4261465))

(assert (= (and b!4261465 res!1751581) b!4261463))

(declare-fun m!4849319 () Bool)

(assert (=> b!4261466 m!4849319))

(declare-fun m!4849321 () Bool)

(assert (=> b!4261464 m!4849321))

(declare-fun m!4849323 () Bool)

(assert (=> b!4261464 m!4849323))

(declare-fun m!4849325 () Bool)

(assert (=> b!4261463 m!4849325))

(declare-fun m!4849327 () Bool)

(assert (=> b!4261461 m!4849327))

(declare-fun m!4849329 () Bool)

(assert (=> b!4261465 m!4849329))

(assert (=> b!4261462 m!4849321))

(assert (=> b!4261462 m!4849323))

(assert (=> b!4261207 d!1254441))

(declare-fun b!4261467 () Bool)

(declare-fun e!2646321 () Conc!14245)

(assert (=> b!4261467 (= e!2646321 Empty!14245)))

(declare-fun b!4261468 () Bool)

(declare-fun e!2646320 () Conc!14245)

(assert (=> b!4261468 (= e!2646320 (Leaf!22014 (map!9669 (xs!17550 (right!35350 (left!35020 (left!35020 t!4386)))) f!428) (csize!28719 (right!35350 (left!35020 (left!35020 t!4386))))))))

(declare-fun b!4261469 () Bool)

(declare-fun e!2646319 () Bool)

(declare-fun lt!1510727 () Conc!14245)

(assert (=> b!4261469 (= e!2646319 (isBalanced!3803 lt!1510727))))

(declare-fun b!4261470 () Bool)

(declare-fun lt!1510728 () Unit!66135)

(assert (=> b!4261470 (= lt!1510728 (lemmaMapConcat!30 (list!17058 (left!35020 (right!35350 (left!35020 (left!35020 t!4386))))) (list!17058 (right!35350 (right!35350 (left!35020 (left!35020 t!4386))))) f!428))))

(assert (=> b!4261470 (= e!2646320 (Node!14245 (map!9667 (left!35020 (right!35350 (left!35020 (left!35020 t!4386)))) f!428) (map!9667 (right!35350 (right!35350 (left!35020 (left!35020 t!4386)))) f!428) (csize!28718 (right!35350 (left!35020 (left!35020 t!4386)))) (cheight!14455 (right!35350 (left!35020 (left!35020 t!4386))))))))

(declare-fun d!1254443 () Bool)

(assert (=> d!1254443 e!2646319))

(declare-fun res!1751582 () Bool)

(assert (=> d!1254443 (=> (not res!1751582) (not e!2646319))))

(assert (=> d!1254443 (= res!1751582 (= (list!17059 lt!1510727) (map!9668 (list!17058 (right!35350 (left!35020 (left!35020 t!4386)))) f!428)))))

(assert (=> d!1254443 (= lt!1510727 e!2646321)))

(declare-fun c!723863 () Bool)

(assert (=> d!1254443 (= c!723863 ((_ is Empty!14244) (right!35350 (left!35020 (left!35020 t!4386)))))))

(assert (=> d!1254443 (isBalanced!3802 (right!35350 (left!35020 (left!35020 t!4386))))))

(assert (=> d!1254443 (= (map!9667 (right!35350 (left!35020 (left!35020 t!4386))) f!428) lt!1510727)))

(declare-fun b!4261471 () Bool)

(assert (=> b!4261471 (= e!2646321 e!2646320)))

(declare-fun c!723864 () Bool)

(assert (=> b!4261471 (= c!723864 ((_ is Leaf!22013) (right!35350 (left!35020 (left!35020 t!4386)))))))

(assert (= (and d!1254443 c!723863) b!4261467))

(assert (= (and d!1254443 (not c!723863)) b!4261471))

(assert (= (and b!4261471 c!723864) b!4261468))

(assert (= (and b!4261471 (not c!723864)) b!4261470))

(assert (= (and d!1254443 res!1751582) b!4261469))

(declare-fun m!4849331 () Bool)

(assert (=> b!4261468 m!4849331))

(declare-fun m!4849333 () Bool)

(assert (=> b!4261469 m!4849333))

(declare-fun m!4849335 () Bool)

(assert (=> b!4261470 m!4849335))

(declare-fun m!4849337 () Bool)

(assert (=> b!4261470 m!4849337))

(declare-fun m!4849339 () Bool)

(assert (=> b!4261470 m!4849339))

(assert (=> b!4261470 m!4849337))

(assert (=> b!4261470 m!4849339))

(declare-fun m!4849341 () Bool)

(assert (=> b!4261470 m!4849341))

(declare-fun m!4849343 () Bool)

(assert (=> b!4261470 m!4849343))

(declare-fun m!4849345 () Bool)

(assert (=> d!1254443 m!4849345))

(assert (=> d!1254443 m!4848751))

(assert (=> d!1254443 m!4848751))

(declare-fun m!4849347 () Bool)

(assert (=> d!1254443 m!4849347))

(declare-fun m!4849349 () Bool)

(assert (=> d!1254443 m!4849349))

(assert (=> b!4261162 d!1254443))

(declare-fun b!4261472 () Bool)

(declare-fun e!2646324 () Conc!14245)

(assert (=> b!4261472 (= e!2646324 Empty!14245)))

(declare-fun b!4261473 () Bool)

(declare-fun e!2646323 () Conc!14245)

(assert (=> b!4261473 (= e!2646323 (Leaf!22014 (map!9669 (xs!17550 (left!35020 (left!35020 (left!35020 t!4386)))) f!428) (csize!28719 (left!35020 (left!35020 (left!35020 t!4386))))))))

(declare-fun b!4261474 () Bool)

(declare-fun e!2646322 () Bool)

(declare-fun lt!1510729 () Conc!14245)

(assert (=> b!4261474 (= e!2646322 (isBalanced!3803 lt!1510729))))

(declare-fun b!4261475 () Bool)

(declare-fun lt!1510730 () Unit!66135)

(assert (=> b!4261475 (= lt!1510730 (lemmaMapConcat!30 (list!17058 (left!35020 (left!35020 (left!35020 (left!35020 t!4386))))) (list!17058 (right!35350 (left!35020 (left!35020 (left!35020 t!4386))))) f!428))))

(assert (=> b!4261475 (= e!2646323 (Node!14245 (map!9667 (left!35020 (left!35020 (left!35020 (left!35020 t!4386)))) f!428) (map!9667 (right!35350 (left!35020 (left!35020 (left!35020 t!4386)))) f!428) (csize!28718 (left!35020 (left!35020 (left!35020 t!4386)))) (cheight!14455 (left!35020 (left!35020 (left!35020 t!4386))))))))

(declare-fun d!1254445 () Bool)

(assert (=> d!1254445 e!2646322))

(declare-fun res!1751583 () Bool)

(assert (=> d!1254445 (=> (not res!1751583) (not e!2646322))))

(assert (=> d!1254445 (= res!1751583 (= (list!17059 lt!1510729) (map!9668 (list!17058 (left!35020 (left!35020 (left!35020 t!4386)))) f!428)))))

(assert (=> d!1254445 (= lt!1510729 e!2646324)))

(declare-fun c!723865 () Bool)

(assert (=> d!1254445 (= c!723865 ((_ is Empty!14244) (left!35020 (left!35020 (left!35020 t!4386)))))))

(assert (=> d!1254445 (isBalanced!3802 (left!35020 (left!35020 (left!35020 t!4386))))))

(assert (=> d!1254445 (= (map!9667 (left!35020 (left!35020 (left!35020 t!4386))) f!428) lt!1510729)))

(declare-fun b!4261476 () Bool)

(assert (=> b!4261476 (= e!2646324 e!2646323)))

(declare-fun c!723866 () Bool)

(assert (=> b!4261476 (= c!723866 ((_ is Leaf!22013) (left!35020 (left!35020 (left!35020 t!4386)))))))

(assert (= (and d!1254445 c!723865) b!4261472))

(assert (= (and d!1254445 (not c!723865)) b!4261476))

(assert (= (and b!4261476 c!723866) b!4261473))

(assert (= (and b!4261476 (not c!723866)) b!4261475))

(assert (= (and d!1254445 res!1751583) b!4261474))

(declare-fun m!4849351 () Bool)

(assert (=> b!4261473 m!4849351))

(declare-fun m!4849353 () Bool)

(assert (=> b!4261474 m!4849353))

(declare-fun m!4849355 () Bool)

(assert (=> b!4261475 m!4849355))

(declare-fun m!4849357 () Bool)

(assert (=> b!4261475 m!4849357))

(declare-fun m!4849359 () Bool)

(assert (=> b!4261475 m!4849359))

(assert (=> b!4261475 m!4849357))

(assert (=> b!4261475 m!4849359))

(declare-fun m!4849361 () Bool)

(assert (=> b!4261475 m!4849361))

(declare-fun m!4849363 () Bool)

(assert (=> b!4261475 m!4849363))

(declare-fun m!4849365 () Bool)

(assert (=> d!1254445 m!4849365))

(assert (=> d!1254445 m!4848749))

(assert (=> d!1254445 m!4848749))

(declare-fun m!4849367 () Bool)

(assert (=> d!1254445 m!4849367))

(declare-fun m!4849369 () Bool)

(assert (=> d!1254445 m!4849369))

(assert (=> b!4261162 d!1254445))

(declare-fun b!4261478 () Bool)

(declare-fun e!2646325 () List!47362)

(declare-fun e!2646326 () List!47362)

(assert (=> b!4261478 (= e!2646325 e!2646326)))

(declare-fun c!723868 () Bool)

(assert (=> b!4261478 (= c!723868 ((_ is Leaf!22013) (right!35350 (left!35020 (left!35020 t!4386)))))))

(declare-fun d!1254447 () Bool)

(declare-fun c!723867 () Bool)

(assert (=> d!1254447 (= c!723867 ((_ is Empty!14244) (right!35350 (left!35020 (left!35020 t!4386)))))))

(assert (=> d!1254447 (= (list!17058 (right!35350 (left!35020 (left!35020 t!4386)))) e!2646325)))

(declare-fun b!4261477 () Bool)

(assert (=> b!4261477 (= e!2646325 Nil!47238)))

(declare-fun b!4261479 () Bool)

(assert (=> b!4261479 (= e!2646326 (list!17061 (xs!17550 (right!35350 (left!35020 (left!35020 t!4386))))))))

(declare-fun b!4261480 () Bool)

(assert (=> b!4261480 (= e!2646326 (++!12031 (list!17058 (left!35020 (right!35350 (left!35020 (left!35020 t!4386))))) (list!17058 (right!35350 (right!35350 (left!35020 (left!35020 t!4386)))))))))

(assert (= (and d!1254447 c!723867) b!4261477))

(assert (= (and d!1254447 (not c!723867)) b!4261478))

(assert (= (and b!4261478 c!723868) b!4261479))

(assert (= (and b!4261478 (not c!723868)) b!4261480))

(declare-fun m!4849371 () Bool)

(assert (=> b!4261479 m!4849371))

(assert (=> b!4261480 m!4849337))

(assert (=> b!4261480 m!4849339))

(assert (=> b!4261480 m!4849337))

(assert (=> b!4261480 m!4849339))

(declare-fun m!4849373 () Bool)

(assert (=> b!4261480 m!4849373))

(assert (=> b!4261162 d!1254447))

(declare-fun d!1254449 () Bool)

(assert (=> d!1254449 (= (map!9668 (++!12031 (list!17058 (left!35020 (left!35020 (left!35020 t!4386)))) (list!17058 (right!35350 (left!35020 (left!35020 t!4386))))) f!428) (++!12032 (map!9668 (list!17058 (left!35020 (left!35020 (left!35020 t!4386)))) f!428) (map!9668 (list!17058 (right!35350 (left!35020 (left!35020 t!4386)))) f!428)))))

(declare-fun lt!1510731 () Unit!66135)

(assert (=> d!1254449 (= lt!1510731 (choose!25984 (list!17058 (left!35020 (left!35020 (left!35020 t!4386)))) (list!17058 (right!35350 (left!35020 (left!35020 t!4386)))) f!428))))

(assert (=> d!1254449 (= (lemmaMapConcat!30 (list!17058 (left!35020 (left!35020 (left!35020 t!4386)))) (list!17058 (right!35350 (left!35020 (left!35020 t!4386)))) f!428) lt!1510731)))

(declare-fun bs!599059 () Bool)

(assert (= bs!599059 d!1254449))

(assert (=> bs!599059 m!4848749))

(assert (=> bs!599059 m!4849367))

(assert (=> bs!599059 m!4848749))

(assert (=> bs!599059 m!4848751))

(assert (=> bs!599059 m!4848753))

(assert (=> bs!599059 m!4848749))

(assert (=> bs!599059 m!4848751))

(declare-fun m!4849375 () Bool)

(assert (=> bs!599059 m!4849375))

(assert (=> bs!599059 m!4849367))

(assert (=> bs!599059 m!4849347))

(declare-fun m!4849377 () Bool)

(assert (=> bs!599059 m!4849377))

(assert (=> bs!599059 m!4848751))

(assert (=> bs!599059 m!4849347))

(assert (=> bs!599059 m!4848753))

(declare-fun m!4849379 () Bool)

(assert (=> bs!599059 m!4849379))

(assert (=> b!4261162 d!1254449))

(declare-fun b!4261482 () Bool)

(declare-fun e!2646327 () List!47362)

(declare-fun e!2646328 () List!47362)

(assert (=> b!4261482 (= e!2646327 e!2646328)))

(declare-fun c!723870 () Bool)

(assert (=> b!4261482 (= c!723870 ((_ is Leaf!22013) (left!35020 (left!35020 (left!35020 t!4386)))))))

(declare-fun d!1254451 () Bool)

(declare-fun c!723869 () Bool)

(assert (=> d!1254451 (= c!723869 ((_ is Empty!14244) (left!35020 (left!35020 (left!35020 t!4386)))))))

(assert (=> d!1254451 (= (list!17058 (left!35020 (left!35020 (left!35020 t!4386)))) e!2646327)))

(declare-fun b!4261481 () Bool)

(assert (=> b!4261481 (= e!2646327 Nil!47238)))

(declare-fun b!4261483 () Bool)

(assert (=> b!4261483 (= e!2646328 (list!17061 (xs!17550 (left!35020 (left!35020 (left!35020 t!4386))))))))

(declare-fun b!4261484 () Bool)

(assert (=> b!4261484 (= e!2646328 (++!12031 (list!17058 (left!35020 (left!35020 (left!35020 (left!35020 t!4386))))) (list!17058 (right!35350 (left!35020 (left!35020 (left!35020 t!4386)))))))))

(assert (= (and d!1254451 c!723869) b!4261481))

(assert (= (and d!1254451 (not c!723869)) b!4261482))

(assert (= (and b!4261482 c!723870) b!4261483))

(assert (= (and b!4261482 (not c!723870)) b!4261484))

(declare-fun m!4849381 () Bool)

(assert (=> b!4261483 m!4849381))

(assert (=> b!4261484 m!4849357))

(assert (=> b!4261484 m!4849359))

(assert (=> b!4261484 m!4849357))

(assert (=> b!4261484 m!4849359))

(declare-fun m!4849383 () Bool)

(assert (=> b!4261484 m!4849383))

(assert (=> b!4261162 d!1254451))

(declare-fun d!1254453 () Bool)

(declare-fun c!723871 () Bool)

(assert (=> d!1254453 (= c!723871 ((_ is Nil!47239) (t!353186 lt!1510648)))))

(declare-fun e!2646329 () (InoxSet B!2821))

(assert (=> d!1254453 (= (content!7444 (t!353186 lt!1510648)) e!2646329)))

(declare-fun b!4261485 () Bool)

(assert (=> b!4261485 (= e!2646329 ((as const (Array B!2821 Bool)) false))))

(declare-fun b!4261486 () Bool)

(assert (=> b!4261486 (= e!2646329 ((_ map or) (store ((as const (Array B!2821 Bool)) false) (h!52659 (t!353186 lt!1510648)) true) (content!7444 (t!353186 (t!353186 lt!1510648)))))))

(assert (= (and d!1254453 c!723871) b!4261485))

(assert (= (and d!1254453 (not c!723871)) b!4261486))

(declare-fun m!4849385 () Bool)

(assert (=> b!4261486 m!4849385))

(declare-fun m!4849387 () Bool)

(assert (=> b!4261486 m!4849387))

(assert (=> b!4261219 d!1254453))

(declare-fun d!1254455 () Bool)

(declare-fun lt!1510732 () Int)

(assert (=> d!1254455 (>= lt!1510732 0)))

(declare-fun e!2646330 () Int)

(assert (=> d!1254455 (= lt!1510732 e!2646330)))

(declare-fun c!723872 () Bool)

(assert (=> d!1254455 (= c!723872 ((_ is Nil!47238) (t!353185 (innerList!14304 (xs!17550 t!4386)))))))

(assert (=> d!1254455 (= (size!34598 (t!353185 (innerList!14304 (xs!17550 t!4386)))) lt!1510732)))

(declare-fun b!4261487 () Bool)

(assert (=> b!4261487 (= e!2646330 0)))

(declare-fun b!4261488 () Bool)

(assert (=> b!4261488 (= e!2646330 (+ 1 (size!34598 (t!353185 (t!353185 (innerList!14304 (xs!17550 t!4386)))))))))

(assert (= (and d!1254455 c!723872) b!4261487))

(assert (= (and d!1254455 (not c!723872)) b!4261488))

(declare-fun m!4849389 () Bool)

(assert (=> b!4261488 m!4849389))

(assert (=> b!4261153 d!1254455))

(declare-fun d!1254457 () Bool)

(assert (=> d!1254457 (= (max!0 (height!1868 (left!35020 (left!35020 t!4386))) (height!1868 (right!35350 (left!35020 t!4386)))) (ite (< (height!1868 (left!35020 (left!35020 t!4386))) (height!1868 (right!35350 (left!35020 t!4386)))) (height!1868 (right!35350 (left!35020 t!4386))) (height!1868 (left!35020 (left!35020 t!4386)))))))

(assert (=> b!4261122 d!1254457))

(declare-fun d!1254459 () Bool)

(assert (=> d!1254459 (= (height!1868 (left!35020 (left!35020 t!4386))) (ite ((_ is Empty!14244) (left!35020 (left!35020 t!4386))) 0 (ite ((_ is Leaf!22013) (left!35020 (left!35020 t!4386))) 1 (cheight!14455 (left!35020 (left!35020 t!4386))))))))

(assert (=> b!4261122 d!1254459))

(declare-fun d!1254461 () Bool)

(assert (=> d!1254461 (= (height!1868 (right!35350 (left!35020 t!4386))) (ite ((_ is Empty!14244) (right!35350 (left!35020 t!4386))) 0 (ite ((_ is Leaf!22013) (right!35350 (left!35020 t!4386))) 1 (cheight!14455 (right!35350 (left!35020 t!4386))))))))

(assert (=> b!4261122 d!1254461))

(declare-fun d!1254463 () Bool)

(declare-fun res!1751584 () Bool)

(declare-fun e!2646331 () Bool)

(assert (=> d!1254463 (=> (not res!1751584) (not e!2646331))))

(assert (=> d!1254463 (= res!1751584 (<= (size!34598 (list!17061 (xs!17550 (left!35020 (right!35350 t!4386))))) 512))))

(assert (=> d!1254463 (= (inv!62142 (left!35020 (right!35350 t!4386))) e!2646331)))

(declare-fun b!4261489 () Bool)

(declare-fun res!1751585 () Bool)

(assert (=> b!4261489 (=> (not res!1751585) (not e!2646331))))

(assert (=> b!4261489 (= res!1751585 (= (csize!28719 (left!35020 (right!35350 t!4386))) (size!34598 (list!17061 (xs!17550 (left!35020 (right!35350 t!4386)))))))))

(declare-fun b!4261490 () Bool)

(assert (=> b!4261490 (= e!2646331 (and (> (csize!28719 (left!35020 (right!35350 t!4386))) 0) (<= (csize!28719 (left!35020 (right!35350 t!4386))) 512)))))

(assert (= (and d!1254463 res!1751584) b!4261489))

(assert (= (and b!4261489 res!1751585) b!4261490))

(assert (=> d!1254463 m!4848925))

(assert (=> d!1254463 m!4848925))

(declare-fun m!4849391 () Bool)

(assert (=> d!1254463 m!4849391))

(assert (=> b!4261489 m!4848925))

(assert (=> b!4261489 m!4848925))

(assert (=> b!4261489 m!4849391))

(assert (=> b!4261079 d!1254463))

(declare-fun d!1254465 () Bool)

(declare-fun lt!1510733 () Int)

(assert (=> d!1254465 (>= lt!1510733 0)))

(declare-fun e!2646332 () Int)

(assert (=> d!1254465 (= lt!1510733 e!2646332)))

(declare-fun c!723873 () Bool)

(assert (=> d!1254465 (= c!723873 ((_ is Nil!47239) lt!1510663))))

(assert (=> d!1254465 (= (size!34597 lt!1510663) lt!1510733)))

(declare-fun b!4261491 () Bool)

(assert (=> b!4261491 (= e!2646332 0)))

(declare-fun b!4261492 () Bool)

(assert (=> b!4261492 (= e!2646332 (+ 1 (size!34597 (t!353186 lt!1510663))))))

(assert (= (and d!1254465 c!723873) b!4261491))

(assert (= (and d!1254465 (not c!723873)) b!4261492))

(declare-fun m!4849393 () Bool)

(assert (=> b!4261492 m!4849393))

(assert (=> d!1254207 d!1254465))

(declare-fun d!1254467 () Bool)

(declare-fun lt!1510734 () Int)

(assert (=> d!1254467 (>= lt!1510734 0)))

(declare-fun e!2646333 () Int)

(assert (=> d!1254467 (= lt!1510734 e!2646333)))

(declare-fun c!723874 () Bool)

(assert (=> d!1254467 (= c!723874 ((_ is Nil!47238) (t!353185 lt!1510605)))))

(assert (=> d!1254467 (= (size!34598 (t!353185 lt!1510605)) lt!1510734)))

(declare-fun b!4261493 () Bool)

(assert (=> b!4261493 (= e!2646333 0)))

(declare-fun b!4261494 () Bool)

(assert (=> b!4261494 (= e!2646333 (+ 1 (size!34598 (t!353185 (t!353185 lt!1510605)))))))

(assert (= (and d!1254467 c!723874) b!4261493))

(assert (= (and d!1254467 (not c!723874)) b!4261494))

(declare-fun m!4849395 () Bool)

(assert (=> b!4261494 m!4849395))

(assert (=> d!1254207 d!1254467))

(declare-fun d!1254469 () Bool)

(assert (=> d!1254469 (= (list!17061 (xs!17550 (left!35020 (left!35020 t!4386)))) (innerList!14304 (xs!17550 (left!35020 (left!35020 t!4386)))))))

(assert (=> b!4261130 d!1254469))

(declare-fun d!1254471 () Bool)

(assert (=> d!1254471 (= (max!0 (height!1868 (left!35020 (right!35350 t!4386))) (height!1868 (right!35350 (right!35350 t!4386)))) (ite (< (height!1868 (left!35020 (right!35350 t!4386))) (height!1868 (right!35350 (right!35350 t!4386)))) (height!1868 (right!35350 (right!35350 t!4386))) (height!1868 (left!35020 (right!35350 t!4386)))))))

(assert (=> b!4261176 d!1254471))

(declare-fun d!1254473 () Bool)

(assert (=> d!1254473 (= (height!1868 (left!35020 (right!35350 t!4386))) (ite ((_ is Empty!14244) (left!35020 (right!35350 t!4386))) 0 (ite ((_ is Leaf!22013) (left!35020 (right!35350 t!4386))) 1 (cheight!14455 (left!35020 (right!35350 t!4386))))))))

(assert (=> b!4261176 d!1254473))

(declare-fun d!1254475 () Bool)

(assert (=> d!1254475 (= (height!1868 (right!35350 (right!35350 t!4386))) (ite ((_ is Empty!14244) (right!35350 (right!35350 t!4386))) 0 (ite ((_ is Leaf!22013) (right!35350 (right!35350 t!4386))) 1 (cheight!14455 (right!35350 (right!35350 t!4386))))))))

(assert (=> b!4261176 d!1254475))

(declare-fun d!1254477 () Bool)

(declare-fun lt!1510735 () Int)

(assert (=> d!1254477 (>= lt!1510735 0)))

(declare-fun e!2646334 () Int)

(assert (=> d!1254477 (= lt!1510735 e!2646334)))

(declare-fun c!723875 () Bool)

(assert (=> d!1254477 (= c!723875 ((_ is Nil!47238) (innerList!14304 (xs!17550 (left!35020 t!4386)))))))

(assert (=> d!1254477 (= (size!34598 (innerList!14304 (xs!17550 (left!35020 t!4386)))) lt!1510735)))

(declare-fun b!4261495 () Bool)

(assert (=> b!4261495 (= e!2646334 0)))

(declare-fun b!4261496 () Bool)

(assert (=> b!4261496 (= e!2646334 (+ 1 (size!34598 (t!353185 (innerList!14304 (xs!17550 (left!35020 t!4386)))))))))

(assert (= (and d!1254477 c!723875) b!4261495))

(assert (= (and d!1254477 (not c!723875)) b!4261496))

(declare-fun m!4849397 () Bool)

(assert (=> b!4261496 m!4849397))

(assert (=> d!1254209 d!1254477))

(declare-fun b!4261497 () Bool)

(declare-fun e!2646335 () List!47363)

(assert (=> b!4261497 (= e!2646335 (list!17059 (right!35351 lt!1510616)))))

(declare-fun d!1254479 () Bool)

(declare-fun e!2646336 () Bool)

(assert (=> d!1254479 e!2646336))

(declare-fun res!1751587 () Bool)

(assert (=> d!1254479 (=> (not res!1751587) (not e!2646336))))

(declare-fun lt!1510736 () List!47363)

(assert (=> d!1254479 (= res!1751587 (= (content!7444 lt!1510736) ((_ map or) (content!7444 (list!17059 (left!35021 lt!1510616))) (content!7444 (list!17059 (right!35351 lt!1510616))))))))

(assert (=> d!1254479 (= lt!1510736 e!2646335)))

(declare-fun c!723876 () Bool)

(assert (=> d!1254479 (= c!723876 ((_ is Nil!47239) (list!17059 (left!35021 lt!1510616))))))

(assert (=> d!1254479 (= (++!12032 (list!17059 (left!35021 lt!1510616)) (list!17059 (right!35351 lt!1510616))) lt!1510736)))

(declare-fun b!4261500 () Bool)

(assert (=> b!4261500 (= e!2646336 (or (not (= (list!17059 (right!35351 lt!1510616)) Nil!47239)) (= lt!1510736 (list!17059 (left!35021 lt!1510616)))))))

(declare-fun b!4261499 () Bool)

(declare-fun res!1751586 () Bool)

(assert (=> b!4261499 (=> (not res!1751586) (not e!2646336))))

(assert (=> b!4261499 (= res!1751586 (= (size!34597 lt!1510736) (+ (size!34597 (list!17059 (left!35021 lt!1510616))) (size!34597 (list!17059 (right!35351 lt!1510616))))))))

(declare-fun b!4261498 () Bool)

(assert (=> b!4261498 (= e!2646335 (Cons!47239 (h!52659 (list!17059 (left!35021 lt!1510616))) (++!12032 (t!353186 (list!17059 (left!35021 lt!1510616))) (list!17059 (right!35351 lt!1510616)))))))

(assert (= (and d!1254479 c!723876) b!4261497))

(assert (= (and d!1254479 (not c!723876)) b!4261498))

(assert (= (and d!1254479 res!1751587) b!4261499))

(assert (= (and b!4261499 res!1751586) b!4261500))

(declare-fun m!4849399 () Bool)

(assert (=> d!1254479 m!4849399))

(assert (=> d!1254479 m!4848767))

(declare-fun m!4849401 () Bool)

(assert (=> d!1254479 m!4849401))

(assert (=> d!1254479 m!4848769))

(declare-fun m!4849403 () Bool)

(assert (=> d!1254479 m!4849403))

(declare-fun m!4849405 () Bool)

(assert (=> b!4261499 m!4849405))

(assert (=> b!4261499 m!4848767))

(declare-fun m!4849407 () Bool)

(assert (=> b!4261499 m!4849407))

(assert (=> b!4261499 m!4848769))

(declare-fun m!4849409 () Bool)

(assert (=> b!4261499 m!4849409))

(assert (=> b!4261498 m!4848769))

(declare-fun m!4849411 () Bool)

(assert (=> b!4261498 m!4849411))

(assert (=> b!4261149 d!1254479))

(declare-fun d!1254481 () Bool)

(declare-fun c!723877 () Bool)

(assert (=> d!1254481 (= c!723877 ((_ is Empty!14245) (left!35021 lt!1510616)))))

(declare-fun e!2646337 () List!47363)

(assert (=> d!1254481 (= (list!17059 (left!35021 lt!1510616)) e!2646337)))

(declare-fun b!4261502 () Bool)

(declare-fun e!2646338 () List!47363)

(assert (=> b!4261502 (= e!2646337 e!2646338)))

(declare-fun c!723878 () Bool)

(assert (=> b!4261502 (= c!723878 ((_ is Leaf!22014) (left!35021 lt!1510616)))))

(declare-fun b!4261501 () Bool)

(assert (=> b!4261501 (= e!2646337 Nil!47239)))

(declare-fun b!4261504 () Bool)

(assert (=> b!4261504 (= e!2646338 (++!12032 (list!17059 (left!35021 (left!35021 lt!1510616))) (list!17059 (right!35351 (left!35021 lt!1510616)))))))

(declare-fun b!4261503 () Bool)

(assert (=> b!4261503 (= e!2646338 (list!17063 (xs!17551 (left!35021 lt!1510616))))))

(assert (= (and d!1254481 c!723877) b!4261501))

(assert (= (and d!1254481 (not c!723877)) b!4261502))

(assert (= (and b!4261502 c!723878) b!4261503))

(assert (= (and b!4261502 (not c!723878)) b!4261504))

(declare-fun m!4849413 () Bool)

(assert (=> b!4261504 m!4849413))

(declare-fun m!4849415 () Bool)

(assert (=> b!4261504 m!4849415))

(assert (=> b!4261504 m!4849413))

(assert (=> b!4261504 m!4849415))

(declare-fun m!4849417 () Bool)

(assert (=> b!4261504 m!4849417))

(declare-fun m!4849419 () Bool)

(assert (=> b!4261503 m!4849419))

(assert (=> b!4261149 d!1254481))

(declare-fun d!1254483 () Bool)

(declare-fun c!723879 () Bool)

(assert (=> d!1254483 (= c!723879 ((_ is Empty!14245) (right!35351 lt!1510616)))))

(declare-fun e!2646339 () List!47363)

(assert (=> d!1254483 (= (list!17059 (right!35351 lt!1510616)) e!2646339)))

(declare-fun b!4261506 () Bool)

(declare-fun e!2646340 () List!47363)

(assert (=> b!4261506 (= e!2646339 e!2646340)))

(declare-fun c!723880 () Bool)

(assert (=> b!4261506 (= c!723880 ((_ is Leaf!22014) (right!35351 lt!1510616)))))

(declare-fun b!4261505 () Bool)

(assert (=> b!4261505 (= e!2646339 Nil!47239)))

(declare-fun b!4261508 () Bool)

(assert (=> b!4261508 (= e!2646340 (++!12032 (list!17059 (left!35021 (right!35351 lt!1510616))) (list!17059 (right!35351 (right!35351 lt!1510616)))))))

(declare-fun b!4261507 () Bool)

(assert (=> b!4261507 (= e!2646340 (list!17063 (xs!17551 (right!35351 lt!1510616))))))

(assert (= (and d!1254483 c!723879) b!4261505))

(assert (= (and d!1254483 (not c!723879)) b!4261506))

(assert (= (and b!4261506 c!723880) b!4261507))

(assert (= (and b!4261506 (not c!723880)) b!4261508))

(declare-fun m!4849421 () Bool)

(assert (=> b!4261508 m!4849421))

(declare-fun m!4849423 () Bool)

(assert (=> b!4261508 m!4849423))

(assert (=> b!4261508 m!4849421))

(assert (=> b!4261508 m!4849423))

(declare-fun m!4849425 () Bool)

(assert (=> b!4261508 m!4849425))

(declare-fun m!4849427 () Bool)

(assert (=> b!4261507 m!4849427))

(assert (=> b!4261149 d!1254483))

(declare-fun b!4261511 () Bool)

(declare-fun res!1751588 () Bool)

(declare-fun e!2646342 () Bool)

(assert (=> b!4261511 (=> (not res!1751588) (not e!2646342))))

(declare-fun lt!1510737 () List!47362)

(assert (=> b!4261511 (= res!1751588 (= (size!34598 lt!1510737) (+ (size!34598 (t!353185 (list!17058 (left!35020 (left!35020 t!4386))))) (size!34598 (list!17058 (right!35350 (left!35020 t!4386)))))))))

(declare-fun b!4261510 () Bool)

(declare-fun e!2646341 () List!47362)

(assert (=> b!4261510 (= e!2646341 (Cons!47238 (h!52658 (t!353185 (list!17058 (left!35020 (left!35020 t!4386))))) (++!12031 (t!353185 (t!353185 (list!17058 (left!35020 (left!35020 t!4386))))) (list!17058 (right!35350 (left!35020 t!4386))))))))

(declare-fun b!4261509 () Bool)

(assert (=> b!4261509 (= e!2646341 (list!17058 (right!35350 (left!35020 t!4386))))))

(declare-fun d!1254485 () Bool)

(assert (=> d!1254485 e!2646342))

(declare-fun res!1751589 () Bool)

(assert (=> d!1254485 (=> (not res!1751589) (not e!2646342))))

(assert (=> d!1254485 (= res!1751589 (= (content!7443 lt!1510737) ((_ map or) (content!7443 (t!353185 (list!17058 (left!35020 (left!35020 t!4386))))) (content!7443 (list!17058 (right!35350 (left!35020 t!4386)))))))))

(assert (=> d!1254485 (= lt!1510737 e!2646341)))

(declare-fun c!723881 () Bool)

(assert (=> d!1254485 (= c!723881 ((_ is Nil!47238) (t!353185 (list!17058 (left!35020 (left!35020 t!4386))))))))

(assert (=> d!1254485 (= (++!12031 (t!353185 (list!17058 (left!35020 (left!35020 t!4386)))) (list!17058 (right!35350 (left!35020 t!4386)))) lt!1510737)))

(declare-fun b!4261512 () Bool)

(assert (=> b!4261512 (= e!2646342 (or (not (= (list!17058 (right!35350 (left!35020 t!4386))) Nil!47238)) (= lt!1510737 (t!353185 (list!17058 (left!35020 (left!35020 t!4386)))))))))

(assert (= (and d!1254485 c!723881) b!4261509))

(assert (= (and d!1254485 (not c!723881)) b!4261510))

(assert (= (and d!1254485 res!1751589) b!4261511))

(assert (= (and b!4261511 res!1751588) b!4261512))

(declare-fun m!4849429 () Bool)

(assert (=> b!4261511 m!4849429))

(declare-fun m!4849431 () Bool)

(assert (=> b!4261511 m!4849431))

(assert (=> b!4261511 m!4848387))

(assert (=> b!4261511 m!4848737))

(assert (=> b!4261510 m!4848387))

(declare-fun m!4849433 () Bool)

(assert (=> b!4261510 m!4849433))

(declare-fun m!4849435 () Bool)

(assert (=> d!1254485 m!4849435))

(declare-fun m!4849437 () Bool)

(assert (=> d!1254485 m!4849437))

(assert (=> d!1254485 m!4848387))

(assert (=> d!1254485 m!4848745))

(assert (=> b!4261125 d!1254485))

(declare-fun d!1254487 () Bool)

(declare-fun lt!1510738 () Int)

(assert (=> d!1254487 (>= lt!1510738 0)))

(declare-fun e!2646343 () Int)

(assert (=> d!1254487 (= lt!1510738 e!2646343)))

(declare-fun c!723882 () Bool)

(assert (=> d!1254487 (= c!723882 ((_ is Nil!47238) (t!353185 (++!12031 lt!1510605 lt!1510606))))))

(assert (=> d!1254487 (= (size!34598 (t!353185 (++!12031 lt!1510605 lt!1510606))) lt!1510738)))

(declare-fun b!4261513 () Bool)

(assert (=> b!4261513 (= e!2646343 0)))

(declare-fun b!4261514 () Bool)

(assert (=> b!4261514 (= e!2646343 (+ 1 (size!34598 (t!353185 (t!353185 (++!12031 lt!1510605 lt!1510606))))))))

(assert (= (and d!1254487 c!723882) b!4261513))

(assert (= (and d!1254487 (not c!723882)) b!4261514))

(declare-fun m!4849439 () Bool)

(assert (=> b!4261514 m!4849439))

(assert (=> b!4261046 d!1254487))

(declare-fun d!1254489 () Bool)

(declare-fun c!723883 () Bool)

(assert (=> d!1254489 (= c!723883 ((_ is Empty!14245) lt!1510675))))

(declare-fun e!2646344 () List!47363)

(assert (=> d!1254489 (= (list!17059 lt!1510675) e!2646344)))

(declare-fun b!4261516 () Bool)

(declare-fun e!2646345 () List!47363)

(assert (=> b!4261516 (= e!2646344 e!2646345)))

(declare-fun c!723884 () Bool)

(assert (=> b!4261516 (= c!723884 ((_ is Leaf!22014) lt!1510675))))

(declare-fun b!4261515 () Bool)

(assert (=> b!4261515 (= e!2646344 Nil!47239)))

(declare-fun b!4261518 () Bool)

(assert (=> b!4261518 (= e!2646345 (++!12032 (list!17059 (left!35021 lt!1510675)) (list!17059 (right!35351 lt!1510675))))))

(declare-fun b!4261517 () Bool)

(assert (=> b!4261517 (= e!2646345 (list!17063 (xs!17551 lt!1510675)))))

(assert (= (and d!1254489 c!723883) b!4261515))

(assert (= (and d!1254489 (not c!723883)) b!4261516))

(assert (= (and b!4261516 c!723884) b!4261517))

(assert (= (and b!4261516 (not c!723884)) b!4261518))

(declare-fun m!4849441 () Bool)

(assert (=> b!4261518 m!4849441))

(declare-fun m!4849443 () Bool)

(assert (=> b!4261518 m!4849443))

(assert (=> b!4261518 m!4849441))

(assert (=> b!4261518 m!4849443))

(declare-fun m!4849445 () Bool)

(assert (=> b!4261518 m!4849445))

(declare-fun m!4849447 () Bool)

(assert (=> b!4261517 m!4849447))

(assert (=> d!1254253 d!1254489))

(assert (=> d!1254253 d!1254431))

(assert (=> d!1254253 d!1254239))

(declare-fun b!4261519 () Bool)

(declare-fun res!1751595 () Bool)

(declare-fun e!2646346 () Bool)

(assert (=> b!4261519 (=> (not res!1751595) (not e!2646346))))

(assert (=> b!4261519 (= res!1751595 (not (isEmpty!27978 (left!35020 (left!35020 (left!35020 t!4386))))))))

(declare-fun b!4261520 () Bool)

(declare-fun e!2646347 () Bool)

(assert (=> b!4261520 (= e!2646347 e!2646346)))

(declare-fun res!1751590 () Bool)

(assert (=> b!4261520 (=> (not res!1751590) (not e!2646346))))

(assert (=> b!4261520 (= res!1751590 (<= (- 1) (- (height!1868 (left!35020 (left!35020 (left!35020 t!4386)))) (height!1868 (right!35350 (left!35020 (left!35020 t!4386)))))))))

(declare-fun b!4261521 () Bool)

(declare-fun res!1751591 () Bool)

(assert (=> b!4261521 (=> (not res!1751591) (not e!2646346))))

(assert (=> b!4261521 (= res!1751591 (isBalanced!3802 (left!35020 (left!35020 (left!35020 t!4386)))))))

(declare-fun d!1254491 () Bool)

(declare-fun res!1751594 () Bool)

(assert (=> d!1254491 (=> res!1751594 e!2646347)))

(assert (=> d!1254491 (= res!1751594 (not ((_ is Node!14244) (left!35020 (left!35020 t!4386)))))))

(assert (=> d!1254491 (= (isBalanced!3802 (left!35020 (left!35020 t!4386))) e!2646347)))

(declare-fun b!4261522 () Bool)

(declare-fun res!1751592 () Bool)

(assert (=> b!4261522 (=> (not res!1751592) (not e!2646346))))

(assert (=> b!4261522 (= res!1751592 (isBalanced!3802 (right!35350 (left!35020 (left!35020 t!4386)))))))

(declare-fun b!4261523 () Bool)

(assert (=> b!4261523 (= e!2646346 (not (isEmpty!27978 (right!35350 (left!35020 (left!35020 t!4386))))))))

(declare-fun b!4261524 () Bool)

(declare-fun res!1751593 () Bool)

(assert (=> b!4261524 (=> (not res!1751593) (not e!2646346))))

(assert (=> b!4261524 (= res!1751593 (<= (- (height!1868 (left!35020 (left!35020 (left!35020 t!4386)))) (height!1868 (right!35350 (left!35020 (left!35020 t!4386))))) 1))))

(assert (= (and d!1254491 (not res!1751594)) b!4261520))

(assert (= (and b!4261520 res!1751590) b!4261524))

(assert (= (and b!4261524 res!1751593) b!4261521))

(assert (= (and b!4261521 res!1751591) b!4261522))

(assert (= (and b!4261522 res!1751592) b!4261519))

(assert (= (and b!4261519 res!1751595) b!4261523))

(declare-fun m!4849449 () Bool)

(assert (=> b!4261520 m!4849449))

(declare-fun m!4849451 () Bool)

(assert (=> b!4261520 m!4849451))

(assert (=> b!4261521 m!4849369))

(declare-fun m!4849453 () Bool)

(assert (=> b!4261523 m!4849453))

(assert (=> b!4261524 m!4849449))

(assert (=> b!4261524 m!4849451))

(assert (=> b!4261522 m!4849349))

(declare-fun m!4849455 () Bool)

(assert (=> b!4261519 m!4849455))

(assert (=> d!1254253 d!1254491))

(assert (=> b!4261060 d!1254459))

(assert (=> b!4261060 d!1254461))

(declare-fun b!4261525 () Bool)

(declare-fun res!1751601 () Bool)

(declare-fun e!2646348 () Bool)

(assert (=> b!4261525 (=> (not res!1751601) (not e!2646348))))

(assert (=> b!4261525 (= res!1751601 (not (isEmpty!27978 (left!35020 (right!35350 (right!35350 t!4386))))))))

(declare-fun b!4261526 () Bool)

(declare-fun e!2646349 () Bool)

(assert (=> b!4261526 (= e!2646349 e!2646348)))

(declare-fun res!1751596 () Bool)

(assert (=> b!4261526 (=> (not res!1751596) (not e!2646348))))

(assert (=> b!4261526 (= res!1751596 (<= (- 1) (- (height!1868 (left!35020 (right!35350 (right!35350 t!4386)))) (height!1868 (right!35350 (right!35350 (right!35350 t!4386)))))))))

(declare-fun b!4261527 () Bool)

(declare-fun res!1751597 () Bool)

(assert (=> b!4261527 (=> (not res!1751597) (not e!2646348))))

(assert (=> b!4261527 (= res!1751597 (isBalanced!3802 (left!35020 (right!35350 (right!35350 t!4386)))))))

(declare-fun d!1254493 () Bool)

(declare-fun res!1751600 () Bool)

(assert (=> d!1254493 (=> res!1751600 e!2646349)))

(assert (=> d!1254493 (= res!1751600 (not ((_ is Node!14244) (right!35350 (right!35350 t!4386)))))))

(assert (=> d!1254493 (= (isBalanced!3802 (right!35350 (right!35350 t!4386))) e!2646349)))

(declare-fun b!4261528 () Bool)

(declare-fun res!1751598 () Bool)

(assert (=> b!4261528 (=> (not res!1751598) (not e!2646348))))

(assert (=> b!4261528 (= res!1751598 (isBalanced!3802 (right!35350 (right!35350 (right!35350 t!4386)))))))

(declare-fun b!4261529 () Bool)

(assert (=> b!4261529 (= e!2646348 (not (isEmpty!27978 (right!35350 (right!35350 (right!35350 t!4386))))))))

(declare-fun b!4261530 () Bool)

(declare-fun res!1751599 () Bool)

(assert (=> b!4261530 (=> (not res!1751599) (not e!2646348))))

(assert (=> b!4261530 (= res!1751599 (<= (- (height!1868 (left!35020 (right!35350 (right!35350 t!4386)))) (height!1868 (right!35350 (right!35350 (right!35350 t!4386))))) 1))))

(assert (= (and d!1254493 (not res!1751600)) b!4261526))

(assert (= (and b!4261526 res!1751596) b!4261530))

(assert (= (and b!4261530 res!1751599) b!4261527))

(assert (= (and b!4261527 res!1751597) b!4261528))

(assert (= (and b!4261528 res!1751598) b!4261525))

(assert (= (and b!4261525 res!1751601) b!4261529))

(declare-fun m!4849457 () Bool)

(assert (=> b!4261526 m!4849457))

(declare-fun m!4849459 () Bool)

(assert (=> b!4261526 m!4849459))

(declare-fun m!4849461 () Bool)

(assert (=> b!4261527 m!4849461))

(declare-fun m!4849463 () Bool)

(assert (=> b!4261529 m!4849463))

(assert (=> b!4261530 m!4849457))

(assert (=> b!4261530 m!4849459))

(declare-fun m!4849465 () Bool)

(assert (=> b!4261528 m!4849465))

(declare-fun m!4849467 () Bool)

(assert (=> b!4261525 m!4849467))

(assert (=> b!4261068 d!1254493))

(declare-fun d!1254495 () Bool)

(declare-fun lt!1510739 () Int)

(assert (=> d!1254495 (>= lt!1510739 0)))

(declare-fun e!2646350 () Int)

(assert (=> d!1254495 (= lt!1510739 e!2646350)))

(declare-fun c!723885 () Bool)

(assert (=> d!1254495 (= c!723885 ((_ is Nil!47238) (t!353185 lt!1510643)))))

(assert (=> d!1254495 (= (size!34598 (t!353185 lt!1510643)) lt!1510739)))

(declare-fun b!4261531 () Bool)

(assert (=> b!4261531 (= e!2646350 0)))

(declare-fun b!4261532 () Bool)

(assert (=> b!4261532 (= e!2646350 (+ 1 (size!34598 (t!353185 (t!353185 lt!1510643)))))))

(assert (= (and d!1254495 c!723885) b!4261531))

(assert (= (and d!1254495 (not c!723885)) b!4261532))

(declare-fun m!4849469 () Bool)

(assert (=> b!4261532 m!4849469))

(assert (=> b!4261072 d!1254495))

(declare-fun d!1254497 () Bool)

(declare-fun res!1751602 () Bool)

(declare-fun e!2646351 () Bool)

(assert (=> d!1254497 (=> (not res!1751602) (not e!2646351))))

(assert (=> d!1254497 (= res!1751602 (<= (size!34598 (list!17061 (xs!17550 (right!35350 (right!35350 t!4386))))) 512))))

(assert (=> d!1254497 (= (inv!62142 (right!35350 (right!35350 t!4386))) e!2646351)))

(declare-fun b!4261533 () Bool)

(declare-fun res!1751603 () Bool)

(assert (=> b!4261533 (=> (not res!1751603) (not e!2646351))))

(assert (=> b!4261533 (= res!1751603 (= (csize!28719 (right!35350 (right!35350 t!4386))) (size!34598 (list!17061 (xs!17550 (right!35350 (right!35350 t!4386)))))))))

(declare-fun b!4261534 () Bool)

(assert (=> b!4261534 (= e!2646351 (and (> (csize!28719 (right!35350 (right!35350 t!4386))) 0) (<= (csize!28719 (right!35350 (right!35350 t!4386))) 512)))))

(assert (= (and d!1254497 res!1751602) b!4261533))

(assert (= (and b!4261533 res!1751603) b!4261534))

(assert (=> d!1254497 m!4848937))

(assert (=> d!1254497 m!4848937))

(declare-fun m!4849471 () Bool)

(assert (=> d!1254497 m!4849471))

(assert (=> b!4261533 m!4848937))

(assert (=> b!4261533 m!4848937))

(assert (=> b!4261533 m!4849471))

(assert (=> b!4261082 d!1254497))

(declare-fun d!1254499 () Bool)

(assert (=> d!1254499 (= (inv!62138 (xs!17550 (left!35020 (right!35350 t!4386)))) (<= (size!34598 (innerList!14304 (xs!17550 (left!35020 (right!35350 t!4386))))) 2147483647))))

(declare-fun bs!599060 () Bool)

(assert (= bs!599060 d!1254499))

(declare-fun m!4849473 () Bool)

(assert (=> bs!599060 m!4849473))

(assert (=> b!4261257 d!1254499))

(declare-fun d!1254501 () Bool)

(declare-fun lt!1510742 () Bool)

(declare-fun isEmpty!27984 (List!47363) Bool)

(assert (=> d!1254501 (= lt!1510742 (isEmpty!27984 (list!17059 (right!35351 lt!1510616))))))

(declare-fun size!34601 (Conc!14245) Int)

(assert (=> d!1254501 (= lt!1510742 (= (size!34601 (right!35351 lt!1510616)) 0))))

(assert (=> d!1254501 (= (isEmpty!27982 (right!35351 lt!1510616)) lt!1510742)))

(declare-fun bs!599061 () Bool)

(assert (= bs!599061 d!1254501))

(assert (=> bs!599061 m!4848769))

(assert (=> bs!599061 m!4848769))

(declare-fun m!4849475 () Bool)

(assert (=> bs!599061 m!4849475))

(declare-fun m!4849477 () Bool)

(assert (=> bs!599061 m!4849477))

(assert (=> b!4261204 d!1254501))

(assert (=> b!4261056 d!1254459))

(assert (=> b!4261056 d!1254461))

(declare-fun d!1254503 () Bool)

(assert (=> d!1254503 (= (isEmpty!27980 (list!17058 (right!35350 t!4386))) ((_ is Nil!47238) (list!17058 (right!35350 t!4386))))))

(assert (=> d!1254297 d!1254503))

(assert (=> d!1254297 d!1254159))

(declare-fun d!1254505 () Bool)

(declare-fun lt!1510745 () Int)

(assert (=> d!1254505 (= lt!1510745 (size!34598 (list!17058 (right!35350 t!4386))))))

(assert (=> d!1254505 (= lt!1510745 (ite ((_ is Empty!14244) (right!35350 t!4386)) 0 (ite ((_ is Leaf!22013) (right!35350 t!4386)) (csize!28719 (right!35350 t!4386)) (csize!28718 (right!35350 t!4386)))))))

(assert (=> d!1254505 (= (size!34599 (right!35350 t!4386)) lt!1510745)))

(declare-fun bs!599062 () Bool)

(assert (= bs!599062 d!1254505))

(assert (=> bs!599062 m!4848343))

(assert (=> bs!599062 m!4848343))

(declare-fun m!4849479 () Bool)

(assert (=> bs!599062 m!4849479))

(assert (=> d!1254297 d!1254505))

(declare-fun d!1254507 () Bool)

(declare-fun c!723886 () Bool)

(assert (=> d!1254507 (= c!723886 ((_ is Nil!47238) lt!1510670))))

(declare-fun e!2646352 () (InoxSet T!79406))

(assert (=> d!1254507 (= (content!7443 lt!1510670) e!2646352)))

(declare-fun b!4261535 () Bool)

(assert (=> b!4261535 (= e!2646352 ((as const (Array T!79406 Bool)) false))))

(declare-fun b!4261536 () Bool)

(assert (=> b!4261536 (= e!2646352 ((_ map or) (store ((as const (Array T!79406 Bool)) false) (h!52658 lt!1510670) true) (content!7443 (t!353185 lt!1510670))))))

(assert (= (and d!1254507 c!723886) b!4261535))

(assert (= (and d!1254507 (not c!723886)) b!4261536))

(declare-fun m!4849481 () Bool)

(assert (=> b!4261536 m!4849481))

(declare-fun m!4849483 () Bool)

(assert (=> b!4261536 m!4849483))

(assert (=> d!1254237 d!1254507))

(declare-fun d!1254509 () Bool)

(declare-fun c!723887 () Bool)

(assert (=> d!1254509 (= c!723887 ((_ is Nil!47238) (list!17058 (left!35020 (left!35020 t!4386)))))))

(declare-fun e!2646353 () (InoxSet T!79406))

(assert (=> d!1254509 (= (content!7443 (list!17058 (left!35020 (left!35020 t!4386)))) e!2646353)))

(declare-fun b!4261537 () Bool)

(assert (=> b!4261537 (= e!2646353 ((as const (Array T!79406 Bool)) false))))

(declare-fun b!4261538 () Bool)

(assert (=> b!4261538 (= e!2646353 ((_ map or) (store ((as const (Array T!79406 Bool)) false) (h!52658 (list!17058 (left!35020 (left!35020 t!4386)))) true) (content!7443 (t!353185 (list!17058 (left!35020 (left!35020 t!4386)))))))))

(assert (= (and d!1254509 c!723887) b!4261537))

(assert (= (and d!1254509 (not c!723887)) b!4261538))

(declare-fun m!4849485 () Bool)

(assert (=> b!4261538 m!4849485))

(assert (=> b!4261538 m!4849437))

(assert (=> d!1254237 d!1254509))

(declare-fun d!1254511 () Bool)

(declare-fun c!723888 () Bool)

(assert (=> d!1254511 (= c!723888 ((_ is Nil!47238) (list!17058 (right!35350 (left!35020 t!4386)))))))

(declare-fun e!2646354 () (InoxSet T!79406))

(assert (=> d!1254511 (= (content!7443 (list!17058 (right!35350 (left!35020 t!4386)))) e!2646354)))

(declare-fun b!4261539 () Bool)

(assert (=> b!4261539 (= e!2646354 ((as const (Array T!79406 Bool)) false))))

(declare-fun b!4261540 () Bool)

(assert (=> b!4261540 (= e!2646354 ((_ map or) (store ((as const (Array T!79406 Bool)) false) (h!52658 (list!17058 (right!35350 (left!35020 t!4386)))) true) (content!7443 (t!353185 (list!17058 (right!35350 (left!35020 t!4386)))))))))

(assert (= (and d!1254511 c!723888) b!4261539))

(assert (= (and d!1254511 (not c!723888)) b!4261540))

(declare-fun m!4849487 () Bool)

(assert (=> b!4261540 m!4849487))

(declare-fun m!4849489 () Bool)

(assert (=> b!4261540 m!4849489))

(assert (=> d!1254237 d!1254511))

(declare-fun d!1254513 () Bool)

(assert (=> d!1254513 (= (isEmpty!27980 (list!17058 (left!35020 t!4386))) ((_ is Nil!47238) (list!17058 (left!35020 t!4386))))))

(assert (=> d!1254211 d!1254513))

(assert (=> d!1254211 d!1254141))

(declare-fun d!1254515 () Bool)

(declare-fun lt!1510746 () Int)

(assert (=> d!1254515 (= lt!1510746 (size!34598 (list!17058 (left!35020 t!4386))))))

(assert (=> d!1254515 (= lt!1510746 (ite ((_ is Empty!14244) (left!35020 t!4386)) 0 (ite ((_ is Leaf!22013) (left!35020 t!4386)) (csize!28719 (left!35020 t!4386)) (csize!28718 (left!35020 t!4386)))))))

(assert (=> d!1254515 (= (size!34599 (left!35020 t!4386)) lt!1510746)))

(declare-fun bs!599063 () Bool)

(assert (= bs!599063 d!1254515))

(assert (=> bs!599063 m!4848341))

(assert (=> bs!599063 m!4848341))

(assert (=> bs!599063 m!4848777))

(assert (=> d!1254211 d!1254515))

(declare-fun d!1254517 () Bool)

(assert (=> d!1254517 (= (list!17061 (xs!17550 (right!35350 (right!35350 t!4386)))) (innerList!14304 (xs!17550 (right!35350 (right!35350 t!4386)))))))

(assert (=> b!4261246 d!1254517))

(assert (=> b!4261074 d!1254467))

(assert (=> d!1254263 d!1254515))

(assert (=> d!1254263 d!1254505))

(declare-fun b!4261543 () Bool)

(declare-fun res!1751604 () Bool)

(declare-fun e!2646356 () Bool)

(assert (=> b!4261543 (=> (not res!1751604) (not e!2646356))))

(declare-fun lt!1510747 () List!47362)

(assert (=> b!4261543 (= res!1751604 (= (size!34598 lt!1510747) (+ (size!34598 (list!17058 (left!35020 (left!35020 (left!35020 t!4386))))) (size!34598 (list!17058 (right!35350 (left!35020 (left!35020 t!4386))))))))))

(declare-fun b!4261542 () Bool)

(declare-fun e!2646355 () List!47362)

(assert (=> b!4261542 (= e!2646355 (Cons!47238 (h!52658 (list!17058 (left!35020 (left!35020 (left!35020 t!4386))))) (++!12031 (t!353185 (list!17058 (left!35020 (left!35020 (left!35020 t!4386))))) (list!17058 (right!35350 (left!35020 (left!35020 t!4386)))))))))

(declare-fun b!4261541 () Bool)

(assert (=> b!4261541 (= e!2646355 (list!17058 (right!35350 (left!35020 (left!35020 t!4386)))))))

(declare-fun d!1254519 () Bool)

(assert (=> d!1254519 e!2646356))

(declare-fun res!1751605 () Bool)

(assert (=> d!1254519 (=> (not res!1751605) (not e!2646356))))

(assert (=> d!1254519 (= res!1751605 (= (content!7443 lt!1510747) ((_ map or) (content!7443 (list!17058 (left!35020 (left!35020 (left!35020 t!4386))))) (content!7443 (list!17058 (right!35350 (left!35020 (left!35020 t!4386))))))))))

(assert (=> d!1254519 (= lt!1510747 e!2646355)))

(declare-fun c!723889 () Bool)

(assert (=> d!1254519 (= c!723889 ((_ is Nil!47238) (list!17058 (left!35020 (left!35020 (left!35020 t!4386))))))))

(assert (=> d!1254519 (= (++!12031 (list!17058 (left!35020 (left!35020 (left!35020 t!4386)))) (list!17058 (right!35350 (left!35020 (left!35020 t!4386))))) lt!1510747)))

(declare-fun b!4261544 () Bool)

(assert (=> b!4261544 (= e!2646356 (or (not (= (list!17058 (right!35350 (left!35020 (left!35020 t!4386)))) Nil!47238)) (= lt!1510747 (list!17058 (left!35020 (left!35020 (left!35020 t!4386)))))))))

(assert (= (and d!1254519 c!723889) b!4261541))

(assert (= (and d!1254519 (not c!723889)) b!4261542))

(assert (= (and d!1254519 res!1751605) b!4261543))

(assert (= (and b!4261543 res!1751604) b!4261544))

(declare-fun m!4849491 () Bool)

(assert (=> b!4261543 m!4849491))

(assert (=> b!4261543 m!4848749))

(declare-fun m!4849493 () Bool)

(assert (=> b!4261543 m!4849493))

(assert (=> b!4261543 m!4848751))

(declare-fun m!4849495 () Bool)

(assert (=> b!4261543 m!4849495))

(assert (=> b!4261542 m!4848751))

(declare-fun m!4849497 () Bool)

(assert (=> b!4261542 m!4849497))

(declare-fun m!4849499 () Bool)

(assert (=> d!1254519 m!4849499))

(assert (=> d!1254519 m!4848749))

(declare-fun m!4849501 () Bool)

(assert (=> d!1254519 m!4849501))

(assert (=> d!1254519 m!4848751))

(declare-fun m!4849503 () Bool)

(assert (=> d!1254519 m!4849503))

(assert (=> b!4261131 d!1254519))

(assert (=> b!4261131 d!1254451))

(assert (=> b!4261131 d!1254447))

(declare-fun b!4261547 () Bool)

(declare-fun res!1751606 () Bool)

(declare-fun e!2646358 () Bool)

(assert (=> b!4261547 (=> (not res!1751606) (not e!2646358))))

(declare-fun lt!1510748 () List!47362)

(assert (=> b!4261547 (= res!1751606 (= (size!34598 lt!1510748) (+ (size!34598 (t!353185 (list!17058 (left!35020 (right!35350 t!4386))))) (size!34598 (list!17058 (right!35350 (right!35350 t!4386)))))))))

(declare-fun b!4261546 () Bool)

(declare-fun e!2646357 () List!47362)

(assert (=> b!4261546 (= e!2646357 (Cons!47238 (h!52658 (t!353185 (list!17058 (left!35020 (right!35350 t!4386))))) (++!12031 (t!353185 (t!353185 (list!17058 (left!35020 (right!35350 t!4386))))) (list!17058 (right!35350 (right!35350 t!4386))))))))

(declare-fun b!4261545 () Bool)

(assert (=> b!4261545 (= e!2646357 (list!17058 (right!35350 (right!35350 t!4386))))))

(declare-fun d!1254521 () Bool)

(assert (=> d!1254521 e!2646358))

(declare-fun res!1751607 () Bool)

(assert (=> d!1254521 (=> (not res!1751607) (not e!2646358))))

(assert (=> d!1254521 (= res!1751607 (= (content!7443 lt!1510748) ((_ map or) (content!7443 (t!353185 (list!17058 (left!35020 (right!35350 t!4386))))) (content!7443 (list!17058 (right!35350 (right!35350 t!4386)))))))))

(assert (=> d!1254521 (= lt!1510748 e!2646357)))

(declare-fun c!723890 () Bool)

(assert (=> d!1254521 (= c!723890 ((_ is Nil!47238) (t!353185 (list!17058 (left!35020 (right!35350 t!4386))))))))

(assert (=> d!1254521 (= (++!12031 (t!353185 (list!17058 (left!35020 (right!35350 t!4386)))) (list!17058 (right!35350 (right!35350 t!4386)))) lt!1510748)))

(declare-fun b!4261548 () Bool)

(assert (=> b!4261548 (= e!2646358 (or (not (= (list!17058 (right!35350 (right!35350 t!4386))) Nil!47238)) (= lt!1510748 (t!353185 (list!17058 (left!35020 (right!35350 t!4386)))))))))

(assert (= (and d!1254521 c!723890) b!4261545))

(assert (= (and d!1254521 (not c!723890)) b!4261546))

(assert (= (and d!1254521 res!1751607) b!4261547))

(assert (= (and b!4261547 res!1751606) b!4261548))

(declare-fun m!4849505 () Bool)

(assert (=> b!4261547 m!4849505))

(declare-fun m!4849507 () Bool)

(assert (=> b!4261547 m!4849507))

(assert (=> b!4261547 m!4848519))

(assert (=> b!4261547 m!4848909))

(assert (=> b!4261546 m!4848519))

(declare-fun m!4849509 () Bool)

(assert (=> b!4261546 m!4849509))

(declare-fun m!4849511 () Bool)

(assert (=> d!1254521 m!4849511))

(declare-fun m!4849513 () Bool)

(assert (=> d!1254521 m!4849513))

(assert (=> d!1254521 m!4848519))

(assert (=> d!1254521 m!4848919))

(assert (=> b!4261233 d!1254521))

(declare-fun d!1254523 () Bool)

(assert (=> d!1254523 (= ($colon$colon!631 (map!9668 (t!353185 (t!353185 lt!1510605)) f!428) (dynLambda!20219 f!428 (h!52658 (t!353185 lt!1510605)))) (Cons!47239 (dynLambda!20219 f!428 (h!52658 (t!353185 lt!1510605))) (map!9668 (t!353185 (t!353185 lt!1510605)) f!428)))))

(assert (=> b!4261084 d!1254523))

(declare-fun d!1254525 () Bool)

(declare-fun lt!1510749 () List!47363)

(assert (=> d!1254525 (= (size!34597 lt!1510749) (size!34598 (t!353185 (t!353185 lt!1510605))))))

(declare-fun e!2646359 () List!47363)

(assert (=> d!1254525 (= lt!1510749 e!2646359)))

(declare-fun c!723891 () Bool)

(assert (=> d!1254525 (= c!723891 ((_ is Nil!47238) (t!353185 (t!353185 lt!1510605))))))

(assert (=> d!1254525 (= (map!9668 (t!353185 (t!353185 lt!1510605)) f!428) lt!1510749)))

(declare-fun b!4261549 () Bool)

(assert (=> b!4261549 (= e!2646359 Nil!47239)))

(declare-fun b!4261550 () Bool)

(assert (=> b!4261550 (= e!2646359 ($colon$colon!631 (map!9668 (t!353185 (t!353185 (t!353185 lt!1510605))) f!428) (dynLambda!20219 f!428 (h!52658 (t!353185 (t!353185 lt!1510605))))))))

(assert (= (and d!1254525 c!723891) b!4261549))

(assert (= (and d!1254525 (not c!723891)) b!4261550))

(declare-fun b_lambda!125761 () Bool)

(assert (=> (not b_lambda!125761) (not b!4261550)))

(declare-fun t!353241 () Bool)

(declare-fun tb!256921 () Bool)

(assert (=> (and start!408286 (= f!428 f!428) t!353241) tb!256921))

(declare-fun result!313486 () Bool)

(assert (=> tb!256921 (= result!313486 tp_is_empty!22873)))

(assert (=> b!4261550 t!353241))

(declare-fun b_and!337727 () Bool)

(assert (= b_and!337725 (and (=> t!353241 result!313486) b_and!337727)))

(declare-fun m!4849515 () Bool)

(assert (=> d!1254525 m!4849515))

(assert (=> d!1254525 m!4849395))

(declare-fun m!4849517 () Bool)

(assert (=> b!4261550 m!4849517))

(declare-fun m!4849519 () Bool)

(assert (=> b!4261550 m!4849519))

(assert (=> b!4261550 m!4849517))

(assert (=> b!4261550 m!4849519))

(declare-fun m!4849521 () Bool)

(assert (=> b!4261550 m!4849521))

(assert (=> b!4261084 d!1254525))

(declare-fun d!1254527 () Bool)

(declare-fun c!723892 () Bool)

(assert (=> d!1254527 (= c!723892 ((_ is Nil!47238) (t!353185 lt!1510605)))))

(declare-fun e!2646360 () (InoxSet T!79406))

(assert (=> d!1254527 (= (content!7443 (t!353185 lt!1510605)) e!2646360)))

(declare-fun b!4261551 () Bool)

(assert (=> b!4261551 (= e!2646360 ((as const (Array T!79406 Bool)) false))))

(declare-fun b!4261552 () Bool)

(assert (=> b!4261552 (= e!2646360 ((_ map or) (store ((as const (Array T!79406 Bool)) false) (h!52658 (t!353185 lt!1510605)) true) (content!7443 (t!353185 (t!353185 lt!1510605)))))))

(assert (= (and d!1254527 c!723892) b!4261551))

(assert (= (and d!1254527 (not c!723892)) b!4261552))

(declare-fun m!4849523 () Bool)

(assert (=> b!4261552 m!4849523))

(declare-fun m!4849525 () Bool)

(assert (=> b!4261552 m!4849525))

(assert (=> b!4261092 d!1254527))

(declare-fun d!1254529 () Bool)

(declare-fun res!1751608 () Bool)

(declare-fun e!2646361 () Bool)

(assert (=> d!1254529 (=> (not res!1751608) (not e!2646361))))

(assert (=> d!1254529 (= res!1751608 (= (csize!28718 (left!35020 (left!35020 t!4386))) (+ (size!34599 (left!35020 (left!35020 (left!35020 t!4386)))) (size!34599 (right!35350 (left!35020 (left!35020 t!4386)))))))))

(assert (=> d!1254529 (= (inv!62141 (left!35020 (left!35020 t!4386))) e!2646361)))

(declare-fun b!4261553 () Bool)

(declare-fun res!1751609 () Bool)

(assert (=> b!4261553 (=> (not res!1751609) (not e!2646361))))

(assert (=> b!4261553 (= res!1751609 (and (not (= (left!35020 (left!35020 (left!35020 t!4386))) Empty!14244)) (not (= (right!35350 (left!35020 (left!35020 t!4386))) Empty!14244))))))

(declare-fun b!4261554 () Bool)

(declare-fun res!1751610 () Bool)

(assert (=> b!4261554 (=> (not res!1751610) (not e!2646361))))

(assert (=> b!4261554 (= res!1751610 (= (cheight!14455 (left!35020 (left!35020 t!4386))) (+ (max!0 (height!1868 (left!35020 (left!35020 (left!35020 t!4386)))) (height!1868 (right!35350 (left!35020 (left!35020 t!4386))))) 1)))))

(declare-fun b!4261555 () Bool)

(assert (=> b!4261555 (= e!2646361 (<= 0 (cheight!14455 (left!35020 (left!35020 t!4386)))))))

(assert (= (and d!1254529 res!1751608) b!4261553))

(assert (= (and b!4261553 res!1751609) b!4261554))

(assert (= (and b!4261554 res!1751610) b!4261555))

(declare-fun m!4849527 () Bool)

(assert (=> d!1254529 m!4849527))

(declare-fun m!4849529 () Bool)

(assert (=> d!1254529 m!4849529))

(assert (=> b!4261554 m!4849449))

(assert (=> b!4261554 m!4849451))

(assert (=> b!4261554 m!4849449))

(assert (=> b!4261554 m!4849451))

(declare-fun m!4849531 () Bool)

(assert (=> b!4261554 m!4849531))

(assert (=> b!4261095 d!1254529))

(declare-fun d!1254531 () Bool)

(declare-fun lt!1510750 () Int)

(assert (=> d!1254531 (>= lt!1510750 0)))

(declare-fun e!2646362 () Int)

(assert (=> d!1254531 (= lt!1510750 e!2646362)))

(declare-fun c!723893 () Bool)

(assert (=> d!1254531 (= c!723893 ((_ is Nil!47238) (list!17061 (xs!17550 (left!35020 t!4386)))))))

(assert (=> d!1254531 (= (size!34598 (list!17061 (xs!17550 (left!35020 t!4386)))) lt!1510750)))

(declare-fun b!4261556 () Bool)

(assert (=> b!4261556 (= e!2646362 0)))

(declare-fun b!4261557 () Bool)

(assert (=> b!4261557 (= e!2646362 (+ 1 (size!34598 (t!353185 (list!17061 (xs!17550 (left!35020 t!4386)))))))))

(assert (= (and d!1254531 c!723893) b!4261556))

(assert (= (and d!1254531 (not c!723893)) b!4261557))

(declare-fun m!4849533 () Bool)

(assert (=> b!4261557 m!4849533))

(assert (=> d!1254223 d!1254531))

(assert (=> d!1254223 d!1254231))

(declare-fun d!1254533 () Bool)

(declare-fun c!723894 () Bool)

(assert (=> d!1254533 (= c!723894 ((_ is Node!14244) (left!35020 (left!35020 (left!35020 t!4386)))))))

(declare-fun e!2646363 () Bool)

(assert (=> d!1254533 (= (inv!62137 (left!35020 (left!35020 (left!35020 t!4386)))) e!2646363)))

(declare-fun b!4261558 () Bool)

(assert (=> b!4261558 (= e!2646363 (inv!62141 (left!35020 (left!35020 (left!35020 t!4386)))))))

(declare-fun b!4261559 () Bool)

(declare-fun e!2646364 () Bool)

(assert (=> b!4261559 (= e!2646363 e!2646364)))

(declare-fun res!1751611 () Bool)

(assert (=> b!4261559 (= res!1751611 (not ((_ is Leaf!22013) (left!35020 (left!35020 (left!35020 t!4386))))))))

(assert (=> b!4261559 (=> res!1751611 e!2646364)))

(declare-fun b!4261560 () Bool)

(assert (=> b!4261560 (= e!2646364 (inv!62142 (left!35020 (left!35020 (left!35020 t!4386)))))))

(assert (= (and d!1254533 c!723894) b!4261558))

(assert (= (and d!1254533 (not c!723894)) b!4261559))

(assert (= (and b!4261559 (not res!1751611)) b!4261560))

(declare-fun m!4849535 () Bool)

(assert (=> b!4261558 m!4849535))

(declare-fun m!4849537 () Bool)

(assert (=> b!4261560 m!4849537))

(assert (=> b!4261262 d!1254533))

(declare-fun d!1254535 () Bool)

(declare-fun c!723895 () Bool)

(assert (=> d!1254535 (= c!723895 ((_ is Node!14244) (right!35350 (left!35020 (left!35020 t!4386)))))))

(declare-fun e!2646365 () Bool)

(assert (=> d!1254535 (= (inv!62137 (right!35350 (left!35020 (left!35020 t!4386)))) e!2646365)))

(declare-fun b!4261561 () Bool)

(assert (=> b!4261561 (= e!2646365 (inv!62141 (right!35350 (left!35020 (left!35020 t!4386)))))))

(declare-fun b!4261562 () Bool)

(declare-fun e!2646366 () Bool)

(assert (=> b!4261562 (= e!2646365 e!2646366)))

(declare-fun res!1751612 () Bool)

(assert (=> b!4261562 (= res!1751612 (not ((_ is Leaf!22013) (right!35350 (left!35020 (left!35020 t!4386))))))))

(assert (=> b!4261562 (=> res!1751612 e!2646366)))

(declare-fun b!4261563 () Bool)

(assert (=> b!4261563 (= e!2646366 (inv!62142 (right!35350 (left!35020 (left!35020 t!4386)))))))

(assert (= (and d!1254535 c!723895) b!4261561))

(assert (= (and d!1254535 (not c!723895)) b!4261562))

(assert (= (and b!4261562 (not res!1751612)) b!4261563))

(declare-fun m!4849539 () Bool)

(assert (=> b!4261561 m!4849539))

(declare-fun m!4849541 () Bool)

(assert (=> b!4261563 m!4849541))

(assert (=> b!4261262 d!1254535))

(declare-fun d!1254537 () Bool)

(declare-fun lt!1510751 () Int)

(assert (=> d!1254537 (>= lt!1510751 0)))

(declare-fun e!2646367 () Int)

(assert (=> d!1254537 (= lt!1510751 e!2646367)))

(declare-fun c!723896 () Bool)

(assert (=> d!1254537 (= c!723896 ((_ is Nil!47239) lt!1510668))))

(assert (=> d!1254537 (= (size!34597 lt!1510668) lt!1510751)))

(declare-fun b!4261564 () Bool)

(assert (=> b!4261564 (= e!2646367 0)))

(declare-fun b!4261565 () Bool)

(assert (=> b!4261565 (= e!2646367 (+ 1 (size!34597 (t!353186 lt!1510668))))))

(assert (= (and d!1254537 c!723896) b!4261564))

(assert (= (and d!1254537 (not c!723896)) b!4261565))

(declare-fun m!4849543 () Bool)

(assert (=> b!4261565 m!4849543))

(assert (=> d!1254229 d!1254537))

(declare-fun d!1254539 () Bool)

(declare-fun lt!1510752 () Int)

(assert (=> d!1254539 (>= lt!1510752 0)))

(declare-fun e!2646368 () Int)

(assert (=> d!1254539 (= lt!1510752 e!2646368)))

(declare-fun c!723897 () Bool)

(assert (=> d!1254539 (= c!723897 ((_ is Nil!47238) (t!353185 lt!1510606)))))

(assert (=> d!1254539 (= (size!34598 (t!353185 lt!1510606)) lt!1510752)))

(declare-fun b!4261566 () Bool)

(assert (=> b!4261566 (= e!2646368 0)))

(declare-fun b!4261567 () Bool)

(assert (=> b!4261567 (= e!2646368 (+ 1 (size!34598 (t!353185 (t!353185 lt!1510606)))))))

(assert (= (and d!1254539 c!723897) b!4261566))

(assert (= (and d!1254539 (not c!723897)) b!4261567))

(declare-fun m!4849545 () Bool)

(assert (=> b!4261567 m!4849545))

(assert (=> d!1254229 d!1254539))

(declare-fun d!1254541 () Bool)

(declare-fun c!723898 () Bool)

(assert (=> d!1254541 (= c!723898 ((_ is Node!14244) (left!35020 (right!35350 (right!35350 t!4386)))))))

(declare-fun e!2646369 () Bool)

(assert (=> d!1254541 (= (inv!62137 (left!35020 (right!35350 (right!35350 t!4386)))) e!2646369)))

(declare-fun b!4261568 () Bool)

(assert (=> b!4261568 (= e!2646369 (inv!62141 (left!35020 (right!35350 (right!35350 t!4386)))))))

(declare-fun b!4261569 () Bool)

(declare-fun e!2646370 () Bool)

(assert (=> b!4261569 (= e!2646369 e!2646370)))

(declare-fun res!1751613 () Bool)

(assert (=> b!4261569 (= res!1751613 (not ((_ is Leaf!22013) (left!35020 (right!35350 (right!35350 t!4386))))))))

(assert (=> b!4261569 (=> res!1751613 e!2646370)))

(declare-fun b!4261570 () Bool)

(assert (=> b!4261570 (= e!2646370 (inv!62142 (left!35020 (right!35350 (right!35350 t!4386)))))))

(assert (= (and d!1254541 c!723898) b!4261568))

(assert (= (and d!1254541 (not c!723898)) b!4261569))

(assert (= (and b!4261569 (not res!1751613)) b!4261570))

(declare-fun m!4849547 () Bool)

(assert (=> b!4261568 m!4849547))

(declare-fun m!4849549 () Bool)

(assert (=> b!4261570 m!4849549))

(assert (=> b!4261259 d!1254541))

(declare-fun d!1254543 () Bool)

(declare-fun c!723899 () Bool)

(assert (=> d!1254543 (= c!723899 ((_ is Node!14244) (right!35350 (right!35350 (right!35350 t!4386)))))))

(declare-fun e!2646371 () Bool)

(assert (=> d!1254543 (= (inv!62137 (right!35350 (right!35350 (right!35350 t!4386)))) e!2646371)))

(declare-fun b!4261571 () Bool)

(assert (=> b!4261571 (= e!2646371 (inv!62141 (right!35350 (right!35350 (right!35350 t!4386)))))))

(declare-fun b!4261572 () Bool)

(declare-fun e!2646372 () Bool)

(assert (=> b!4261572 (= e!2646371 e!2646372)))

(declare-fun res!1751614 () Bool)

(assert (=> b!4261572 (= res!1751614 (not ((_ is Leaf!22013) (right!35350 (right!35350 (right!35350 t!4386))))))))

(assert (=> b!4261572 (=> res!1751614 e!2646372)))

(declare-fun b!4261573 () Bool)

(assert (=> b!4261573 (= e!2646372 (inv!62142 (right!35350 (right!35350 (right!35350 t!4386)))))))

(assert (= (and d!1254543 c!723899) b!4261571))

(assert (= (and d!1254543 (not c!723899)) b!4261572))

(assert (= (and b!4261572 (not res!1751614)) b!4261573))

(declare-fun m!4849551 () Bool)

(assert (=> b!4261571 m!4849551))

(declare-fun m!4849553 () Bool)

(assert (=> b!4261573 m!4849553))

(assert (=> b!4261259 d!1254543))

(declare-fun d!1254545 () Bool)

(assert (=> d!1254545 (= (list!17061 (xs!17550 (right!35350 (left!35020 t!4386)))) (innerList!14304 (xs!17550 (right!35350 (left!35020 t!4386)))))))

(assert (=> b!4261134 d!1254545))

(declare-fun d!1254547 () Bool)

(declare-fun res!1751615 () Bool)

(declare-fun e!2646373 () Bool)

(assert (=> d!1254547 (=> (not res!1751615) (not e!2646373))))

(assert (=> d!1254547 (= res!1751615 (= (csize!28718 (right!35350 (left!35020 t!4386))) (+ (size!34599 (left!35020 (right!35350 (left!35020 t!4386)))) (size!34599 (right!35350 (right!35350 (left!35020 t!4386)))))))))

(assert (=> d!1254547 (= (inv!62141 (right!35350 (left!35020 t!4386))) e!2646373)))

(declare-fun b!4261574 () Bool)

(declare-fun res!1751616 () Bool)

(assert (=> b!4261574 (=> (not res!1751616) (not e!2646373))))

(assert (=> b!4261574 (= res!1751616 (and (not (= (left!35020 (right!35350 (left!35020 t!4386))) Empty!14244)) (not (= (right!35350 (right!35350 (left!35020 t!4386))) Empty!14244))))))

(declare-fun b!4261575 () Bool)

(declare-fun res!1751617 () Bool)

(assert (=> b!4261575 (=> (not res!1751617) (not e!2646373))))

(assert (=> b!4261575 (= res!1751617 (= (cheight!14455 (right!35350 (left!35020 t!4386))) (+ (max!0 (height!1868 (left!35020 (right!35350 (left!35020 t!4386)))) (height!1868 (right!35350 (right!35350 (left!35020 t!4386))))) 1)))))

(declare-fun b!4261576 () Bool)

(assert (=> b!4261576 (= e!2646373 (<= 0 (cheight!14455 (right!35350 (left!35020 t!4386)))))))

(assert (= (and d!1254547 res!1751615) b!4261574))

(assert (= (and b!4261574 res!1751616) b!4261575))

(assert (= (and b!4261575 res!1751617) b!4261576))

(declare-fun m!4849555 () Bool)

(assert (=> d!1254547 m!4849555))

(declare-fun m!4849557 () Bool)

(assert (=> d!1254547 m!4849557))

(assert (=> b!4261575 m!4849263))

(assert (=> b!4261575 m!4849265))

(assert (=> b!4261575 m!4849263))

(assert (=> b!4261575 m!4849265))

(declare-fun m!4849559 () Bool)

(assert (=> b!4261575 m!4849559))

(assert (=> b!4261098 d!1254547))

(declare-fun d!1254549 () Bool)

(declare-fun lt!1510753 () IArray!28495)

(assert (=> d!1254549 (= lt!1510753 (IArray!28496 (map!9668 (list!17061 (xs!17550 (right!35350 (left!35020 t!4386)))) f!428)))))

(assert (=> d!1254549 (= lt!1510753 (choose!25985 (xs!17550 (right!35350 (left!35020 t!4386))) f!428))))

(assert (=> d!1254549 (= (map!9669 (xs!17550 (right!35350 (left!35020 t!4386))) f!428) lt!1510753)))

(declare-fun bs!599064 () Bool)

(assert (= bs!599064 d!1254549))

(assert (=> bs!599064 m!4848755))

(assert (=> bs!599064 m!4848755))

(declare-fun m!4849561 () Bool)

(assert (=> bs!599064 m!4849561))

(declare-fun m!4849563 () Bool)

(assert (=> bs!599064 m!4849563))

(assert (=> b!4261155 d!1254549))

(declare-fun d!1254551 () Bool)

(declare-fun lt!1510754 () Int)

(assert (=> d!1254551 (>= lt!1510754 0)))

(declare-fun e!2646374 () Int)

(assert (=> d!1254551 (= lt!1510754 e!2646374)))

(declare-fun c!723900 () Bool)

(assert (=> d!1254551 (= c!723900 ((_ is Nil!47238) (innerList!14304 (xs!17550 (right!35350 t!4386)))))))

(assert (=> d!1254551 (= (size!34598 (innerList!14304 (xs!17550 (right!35350 t!4386)))) lt!1510754)))

(declare-fun b!4261577 () Bool)

(assert (=> b!4261577 (= e!2646374 0)))

(declare-fun b!4261578 () Bool)

(assert (=> b!4261578 (= e!2646374 (+ 1 (size!34598 (t!353185 (innerList!14304 (xs!17550 (right!35350 t!4386)))))))))

(assert (= (and d!1254551 c!723900) b!4261577))

(assert (= (and d!1254551 (not c!723900)) b!4261578))

(declare-fun m!4849565 () Bool)

(assert (=> b!4261578 m!4849565))

(assert (=> d!1254283 d!1254551))

(assert (=> b!4261105 d!1254531))

(assert (=> b!4261105 d!1254231))

(declare-fun d!1254553 () Bool)

(declare-fun lt!1510755 () Int)

(assert (=> d!1254553 (>= lt!1510755 0)))

(declare-fun e!2646375 () Int)

(assert (=> d!1254553 (= lt!1510755 e!2646375)))

(declare-fun c!723901 () Bool)

(assert (=> d!1254553 (= c!723901 ((_ is Nil!47238) (list!17061 (xs!17550 (right!35350 t!4386)))))))

(assert (=> d!1254553 (= (size!34598 (list!17061 (xs!17550 (right!35350 t!4386)))) lt!1510755)))

(declare-fun b!4261579 () Bool)

(assert (=> b!4261579 (= e!2646375 0)))

(declare-fun b!4261580 () Bool)

(assert (=> b!4261580 (= e!2646375 (+ 1 (size!34598 (t!353185 (list!17061 (xs!17550 (right!35350 t!4386)))))))))

(assert (= (and d!1254553 c!723901) b!4261579))

(assert (= (and d!1254553 (not c!723901)) b!4261580))

(declare-fun m!4849567 () Bool)

(assert (=> b!4261580 m!4849567))

(assert (=> b!4261164 d!1254553))

(assert (=> b!4261164 d!1254299))

(declare-fun d!1254555 () Bool)

(declare-fun lt!1510756 () Int)

(assert (=> d!1254555 (>= lt!1510756 0)))

(declare-fun e!2646376 () Int)

(assert (=> d!1254555 (= lt!1510756 e!2646376)))

(declare-fun c!723902 () Bool)

(assert (=> d!1254555 (= c!723902 ((_ is Nil!47238) lt!1510670))))

(assert (=> d!1254555 (= (size!34598 lt!1510670) lt!1510756)))

(declare-fun b!4261581 () Bool)

(assert (=> b!4261581 (= e!2646376 0)))

(declare-fun b!4261582 () Bool)

(assert (=> b!4261582 (= e!2646376 (+ 1 (size!34598 (t!353185 lt!1510670))))))

(assert (= (and d!1254555 c!723902) b!4261581))

(assert (= (and d!1254555 (not c!723902)) b!4261582))

(declare-fun m!4849569 () Bool)

(assert (=> b!4261582 m!4849569))

(assert (=> b!4261126 d!1254555))

(declare-fun d!1254557 () Bool)

(declare-fun lt!1510757 () Int)

(assert (=> d!1254557 (>= lt!1510757 0)))

(declare-fun e!2646377 () Int)

(assert (=> d!1254557 (= lt!1510757 e!2646377)))

(declare-fun c!723903 () Bool)

(assert (=> d!1254557 (= c!723903 ((_ is Nil!47238) (list!17058 (left!35020 (left!35020 t!4386)))))))

(assert (=> d!1254557 (= (size!34598 (list!17058 (left!35020 (left!35020 t!4386)))) lt!1510757)))

(declare-fun b!4261583 () Bool)

(assert (=> b!4261583 (= e!2646377 0)))

(declare-fun b!4261584 () Bool)

(assert (=> b!4261584 (= e!2646377 (+ 1 (size!34598 (t!353185 (list!17058 (left!35020 (left!35020 t!4386)))))))))

(assert (= (and d!1254557 c!723903) b!4261583))

(assert (= (and d!1254557 (not c!723903)) b!4261584))

(assert (=> b!4261584 m!4849431))

(assert (=> b!4261126 d!1254557))

(declare-fun d!1254559 () Bool)

(declare-fun lt!1510758 () Int)

(assert (=> d!1254559 (>= lt!1510758 0)))

(declare-fun e!2646378 () Int)

(assert (=> d!1254559 (= lt!1510758 e!2646378)))

(declare-fun c!723904 () Bool)

(assert (=> d!1254559 (= c!723904 ((_ is Nil!47238) (list!17058 (right!35350 (left!35020 t!4386)))))))

(assert (=> d!1254559 (= (size!34598 (list!17058 (right!35350 (left!35020 t!4386)))) lt!1510758)))

(declare-fun b!4261585 () Bool)

(assert (=> b!4261585 (= e!2646378 0)))

(declare-fun b!4261586 () Bool)

(assert (=> b!4261586 (= e!2646378 (+ 1 (size!34598 (t!353185 (list!17058 (right!35350 (left!35020 t!4386)))))))))

(assert (= (and d!1254559 c!723904) b!4261585))

(assert (= (and d!1254559 (not c!723904)) b!4261586))

(declare-fun m!4849571 () Bool)

(assert (=> b!4261586 m!4849571))

(assert (=> b!4261126 d!1254559))

(declare-fun d!1254561 () Bool)

(declare-fun c!723905 () Bool)

(assert (=> d!1254561 (= c!723905 ((_ is Nil!47239) (t!353186 (map!9668 lt!1510606 f!428))))))

(declare-fun e!2646379 () (InoxSet B!2821))

(assert (=> d!1254561 (= (content!7444 (t!353186 (map!9668 lt!1510606 f!428))) e!2646379)))

(declare-fun b!4261587 () Bool)

(assert (=> b!4261587 (= e!2646379 ((as const (Array B!2821 Bool)) false))))

(declare-fun b!4261588 () Bool)

(assert (=> b!4261588 (= e!2646379 ((_ map or) (store ((as const (Array B!2821 Bool)) false) (h!52659 (t!353186 (map!9668 lt!1510606 f!428))) true) (content!7444 (t!353186 (t!353186 (map!9668 lt!1510606 f!428))))))))

(assert (= (and d!1254561 c!723905) b!4261587))

(assert (= (and d!1254561 (not c!723905)) b!4261588))

(declare-fun m!4849573 () Bool)

(assert (=> b!4261588 m!4849573))

(declare-fun m!4849575 () Bool)

(assert (=> b!4261588 m!4849575))

(assert (=> b!4261227 d!1254561))

(declare-fun d!1254563 () Bool)

(declare-fun lt!1510759 () Int)

(assert (=> d!1254563 (>= lt!1510759 0)))

(declare-fun e!2646380 () Int)

(assert (=> d!1254563 (= lt!1510759 e!2646380)))

(declare-fun c!723906 () Bool)

(assert (=> d!1254563 (= c!723906 ((_ is Nil!47239) lt!1510671))))

(assert (=> d!1254563 (= (size!34597 lt!1510671) lt!1510759)))

(declare-fun b!4261589 () Bool)

(assert (=> b!4261589 (= e!2646380 0)))

(declare-fun b!4261590 () Bool)

(assert (=> b!4261590 (= e!2646380 (+ 1 (size!34597 (t!353186 lt!1510671))))))

(assert (= (and d!1254563 c!723906) b!4261589))

(assert (= (and d!1254563 (not c!723906)) b!4261590))

(declare-fun m!4849577 () Bool)

(assert (=> b!4261590 m!4849577))

(assert (=> d!1254247 d!1254563))

(declare-fun d!1254565 () Bool)

(declare-fun lt!1510760 () Int)

(assert (=> d!1254565 (>= lt!1510760 0)))

(declare-fun e!2646381 () Int)

(assert (=> d!1254565 (= lt!1510760 e!2646381)))

(declare-fun c!723907 () Bool)

(assert (=> d!1254565 (= c!723907 ((_ is Nil!47238) (list!17058 (left!35020 t!4386))))))

(assert (=> d!1254565 (= (size!34598 (list!17058 (left!35020 t!4386))) lt!1510760)))

(declare-fun b!4261591 () Bool)

(assert (=> b!4261591 (= e!2646381 0)))

(declare-fun b!4261592 () Bool)

(assert (=> b!4261592 (= e!2646381 (+ 1 (size!34598 (t!353185 (list!17058 (left!35020 t!4386))))))))

(assert (= (and d!1254565 c!723907) b!4261591))

(assert (= (and d!1254565 (not c!723907)) b!4261592))

(declare-fun m!4849579 () Bool)

(assert (=> b!4261592 m!4849579))

(assert (=> d!1254247 d!1254565))

(declare-fun b!4261595 () Bool)

(declare-fun res!1751618 () Bool)

(declare-fun e!2646383 () Bool)

(assert (=> b!4261595 (=> (not res!1751618) (not e!2646383))))

(declare-fun lt!1510761 () List!47362)

(assert (=> b!4261595 (= res!1751618 (= (size!34598 lt!1510761) (+ (size!34598 (t!353185 (t!353185 lt!1510605))) (size!34598 lt!1510606))))))

(declare-fun b!4261594 () Bool)

(declare-fun e!2646382 () List!47362)

(assert (=> b!4261594 (= e!2646382 (Cons!47238 (h!52658 (t!353185 (t!353185 lt!1510605))) (++!12031 (t!353185 (t!353185 (t!353185 lt!1510605))) lt!1510606)))))

(declare-fun b!4261593 () Bool)

(assert (=> b!4261593 (= e!2646382 lt!1510606)))

(declare-fun d!1254567 () Bool)

(assert (=> d!1254567 e!2646383))

(declare-fun res!1751619 () Bool)

(assert (=> d!1254567 (=> (not res!1751619) (not e!2646383))))

(assert (=> d!1254567 (= res!1751619 (= (content!7443 lt!1510761) ((_ map or) (content!7443 (t!353185 (t!353185 lt!1510605))) (content!7443 lt!1510606))))))

(assert (=> d!1254567 (= lt!1510761 e!2646382)))

(declare-fun c!723908 () Bool)

(assert (=> d!1254567 (= c!723908 ((_ is Nil!47238) (t!353185 (t!353185 lt!1510605))))))

(assert (=> d!1254567 (= (++!12031 (t!353185 (t!353185 lt!1510605)) lt!1510606) lt!1510761)))

(declare-fun b!4261596 () Bool)

(assert (=> b!4261596 (= e!2646383 (or (not (= lt!1510606 Nil!47238)) (= lt!1510761 (t!353185 (t!353185 lt!1510605)))))))

(assert (= (and d!1254567 c!723908) b!4261593))

(assert (= (and d!1254567 (not c!723908)) b!4261594))

(assert (= (and d!1254567 res!1751619) b!4261595))

(assert (= (and b!4261595 res!1751618) b!4261596))

(declare-fun m!4849581 () Bool)

(assert (=> b!4261595 m!4849581))

(assert (=> b!4261595 m!4849395))

(assert (=> b!4261595 m!4848491))

(declare-fun m!4849583 () Bool)

(assert (=> b!4261594 m!4849583))

(declare-fun m!4849585 () Bool)

(assert (=> d!1254567 m!4849585))

(assert (=> d!1254567 m!4849525))

(assert (=> d!1254567 m!4848541))

(assert (=> b!4261108 d!1254567))

(declare-fun b!4261597 () Bool)

(declare-fun e!2646384 () List!47363)

(assert (=> b!4261597 (= e!2646384 (map!9668 lt!1510606 f!428))))

(declare-fun d!1254569 () Bool)

(declare-fun e!2646385 () Bool)

(assert (=> d!1254569 e!2646385))

(declare-fun res!1751621 () Bool)

(assert (=> d!1254569 (=> (not res!1751621) (not e!2646385))))

(declare-fun lt!1510762 () List!47363)

(assert (=> d!1254569 (= res!1751621 (= (content!7444 lt!1510762) ((_ map or) (content!7444 (t!353186 (t!353186 (map!9668 lt!1510605 f!428)))) (content!7444 (map!9668 lt!1510606 f!428)))))))

(assert (=> d!1254569 (= lt!1510762 e!2646384)))

(declare-fun c!723909 () Bool)

(assert (=> d!1254569 (= c!723909 ((_ is Nil!47239) (t!353186 (t!353186 (map!9668 lt!1510605 f!428)))))))

(assert (=> d!1254569 (= (++!12032 (t!353186 (t!353186 (map!9668 lt!1510605 f!428))) (map!9668 lt!1510606 f!428)) lt!1510762)))

(declare-fun b!4261600 () Bool)

(assert (=> b!4261600 (= e!2646385 (or (not (= (map!9668 lt!1510606 f!428) Nil!47239)) (= lt!1510762 (t!353186 (t!353186 (map!9668 lt!1510605 f!428))))))))

(declare-fun b!4261599 () Bool)

(declare-fun res!1751620 () Bool)

(assert (=> b!4261599 (=> (not res!1751620) (not e!2646385))))

(assert (=> b!4261599 (= res!1751620 (= (size!34597 lt!1510762) (+ (size!34597 (t!353186 (t!353186 (map!9668 lt!1510605 f!428)))) (size!34597 (map!9668 lt!1510606 f!428)))))))

(declare-fun b!4261598 () Bool)

(assert (=> b!4261598 (= e!2646384 (Cons!47239 (h!52659 (t!353186 (t!353186 (map!9668 lt!1510605 f!428)))) (++!12032 (t!353186 (t!353186 (t!353186 (map!9668 lt!1510605 f!428)))) (map!9668 lt!1510606 f!428))))))

(assert (= (and d!1254569 c!723909) b!4261597))

(assert (= (and d!1254569 (not c!723909)) b!4261598))

(assert (= (and d!1254569 res!1751621) b!4261599))

(assert (= (and b!4261599 res!1751620) b!4261600))

(declare-fun m!4849587 () Bool)

(assert (=> d!1254569 m!4849587))

(declare-fun m!4849589 () Bool)

(assert (=> d!1254569 m!4849589))

(assert (=> d!1254569 m!4848347))

(assert (=> d!1254569 m!4848563))

(declare-fun m!4849591 () Bool)

(assert (=> b!4261599 m!4849591))

(declare-fun m!4849593 () Bool)

(assert (=> b!4261599 m!4849593))

(assert (=> b!4261599 m!4848347))

(assert (=> b!4261599 m!4848569))

(assert (=> b!4261598 m!4848347))

(declare-fun m!4849595 () Bool)

(assert (=> b!4261598 m!4849595))

(assert (=> b!4261062 d!1254569))

(declare-fun d!1254571 () Bool)

(declare-fun lt!1510763 () Bool)

(assert (=> d!1254571 (= lt!1510763 (isEmpty!27980 (list!17058 (left!35020 (right!35350 t!4386)))))))

(assert (=> d!1254571 (= lt!1510763 (= (size!34599 (left!35020 (right!35350 t!4386))) 0))))

(assert (=> d!1254571 (= (isEmpty!27978 (left!35020 (right!35350 t!4386))) lt!1510763)))

(declare-fun bs!599065 () Bool)

(assert (= bs!599065 d!1254571))

(assert (=> bs!599065 m!4848517))

(assert (=> bs!599065 m!4848517))

(declare-fun m!4849597 () Bool)

(assert (=> bs!599065 m!4849597))

(assert (=> bs!599065 m!4848833))

(assert (=> b!4261065 d!1254571))

(assert (=> b!4261076 d!1254539))

(declare-fun d!1254573 () Bool)

(declare-fun c!723910 () Bool)

(assert (=> d!1254573 (= c!723910 ((_ is Nil!47239) (t!353186 (map!9668 lt!1510605 f!428))))))

(declare-fun e!2646386 () (InoxSet B!2821))

(assert (=> d!1254573 (= (content!7444 (t!353186 (map!9668 lt!1510605 f!428))) e!2646386)))

(declare-fun b!4261601 () Bool)

(assert (=> b!4261601 (= e!2646386 ((as const (Array B!2821 Bool)) false))))

(declare-fun b!4261602 () Bool)

(assert (=> b!4261602 (= e!2646386 ((_ map or) (store ((as const (Array B!2821 Bool)) false) (h!52659 (t!353186 (map!9668 lt!1510605 f!428))) true) (content!7444 (t!353186 (t!353186 (map!9668 lt!1510605 f!428))))))))

(assert (= (and d!1254573 c!723910) b!4261601))

(assert (= (and d!1254573 (not c!723910)) b!4261602))

(declare-fun m!4849599 () Bool)

(assert (=> b!4261602 m!4849599))

(assert (=> b!4261602 m!4849589))

(assert (=> b!4261225 d!1254573))

(declare-fun d!1254575 () Bool)

(declare-fun lt!1510764 () Bool)

(assert (=> d!1254575 (= lt!1510764 (isEmpty!27980 (list!17058 (right!35350 (right!35350 t!4386)))))))

(assert (=> d!1254575 (= lt!1510764 (= (size!34599 (right!35350 (right!35350 t!4386))) 0))))

(assert (=> d!1254575 (= (isEmpty!27978 (right!35350 (right!35350 t!4386))) lt!1510764)))

(declare-fun bs!599066 () Bool)

(assert (= bs!599066 d!1254575))

(assert (=> bs!599066 m!4848519))

(assert (=> bs!599066 m!4848519))

(declare-fun m!4849601 () Bool)

(assert (=> bs!599066 m!4849601))

(assert (=> bs!599066 m!4848835))

(assert (=> b!4261069 d!1254575))

(assert (=> d!1254257 d!1254553))

(assert (=> d!1254257 d!1254299))

(assert (=> b!4261027 d!1254201))

(assert (=> b!4261027 d!1254203))

(declare-fun d!1254577 () Bool)

(declare-fun lt!1510765 () List!47363)

(assert (=> d!1254577 (= (size!34597 lt!1510765) (size!34598 (list!17061 (xs!17550 (left!35020 t!4386)))))))

(declare-fun e!2646387 () List!47363)

(assert (=> d!1254577 (= lt!1510765 e!2646387)))

(declare-fun c!723911 () Bool)

(assert (=> d!1254577 (= c!723911 ((_ is Nil!47238) (list!17061 (xs!17550 (left!35020 t!4386)))))))

(assert (=> d!1254577 (= (map!9668 (list!17061 (xs!17550 (left!35020 t!4386))) f!428) lt!1510765)))

(declare-fun b!4261603 () Bool)

(assert (=> b!4261603 (= e!2646387 Nil!47239)))

(declare-fun b!4261604 () Bool)

(assert (=> b!4261604 (= e!2646387 ($colon$colon!631 (map!9668 (t!353185 (list!17061 (xs!17550 (left!35020 t!4386)))) f!428) (dynLambda!20219 f!428 (h!52658 (list!17061 (xs!17550 (left!35020 t!4386)))))))))

(assert (= (and d!1254577 c!723911) b!4261603))

(assert (= (and d!1254577 (not c!723911)) b!4261604))

(declare-fun b_lambda!125763 () Bool)

(assert (=> (not b_lambda!125763) (not b!4261604)))

(declare-fun t!353243 () Bool)

(declare-fun tb!256923 () Bool)

(assert (=> (and start!408286 (= f!428 f!428) t!353243) tb!256923))

(declare-fun result!313488 () Bool)

(assert (=> tb!256923 (= result!313488 tp_is_empty!22873)))

(assert (=> b!4261604 t!353243))

(declare-fun b_and!337729 () Bool)

(assert (= b_and!337727 (and (=> t!353243 result!313488) b_and!337729)))

(declare-fun m!4849603 () Bool)

(assert (=> d!1254577 m!4849603))

(assert (=> d!1254577 m!4848475))

(assert (=> d!1254577 m!4848709))

(declare-fun m!4849605 () Bool)

(assert (=> b!4261604 m!4849605))

(declare-fun m!4849607 () Bool)

(assert (=> b!4261604 m!4849607))

(assert (=> b!4261604 m!4849605))

(assert (=> b!4261604 m!4849607))

(declare-fun m!4849609 () Bool)

(assert (=> b!4261604 m!4849609))

(assert (=> d!1254265 d!1254577))

(assert (=> d!1254265 d!1254231))

(declare-fun d!1254579 () Bool)

(declare-fun _$10!126 () IArray!28495)

(assert (=> d!1254579 (= _$10!126 (IArray!28496 (map!9668 (list!17061 (xs!17550 (left!35020 t!4386))) f!428)))))

(declare-fun e!2646390 () Bool)

(declare-fun inv!62143 (IArray!28495) Bool)

(assert (=> d!1254579 (and (inv!62143 _$10!126) e!2646390)))

(assert (=> d!1254579 (= (choose!25985 (xs!17550 (left!35020 t!4386)) f!428) _$10!126)))

(declare-fun b!4261607 () Bool)

(declare-fun tp!1307023 () Bool)

(assert (=> b!4261607 (= e!2646390 tp!1307023)))

(assert (= d!1254579 b!4261607))

(assert (=> d!1254579 m!4848475))

(assert (=> d!1254579 m!4848475))

(assert (=> d!1254579 m!4848829))

(declare-fun m!4849611 () Bool)

(assert (=> d!1254579 m!4849611))

(assert (=> d!1254265 d!1254579))

(declare-fun d!1254581 () Bool)

(declare-fun lt!1510766 () IArray!28495)

(assert (=> d!1254581 (= lt!1510766 (IArray!28496 (map!9668 (list!17061 (xs!17550 (left!35020 (left!35020 t!4386)))) f!428)))))

(assert (=> d!1254581 (= lt!1510766 (choose!25985 (xs!17550 (left!35020 (left!35020 t!4386))) f!428))))

(assert (=> d!1254581 (= (map!9669 (xs!17550 (left!35020 (left!35020 t!4386))) f!428) lt!1510766)))

(declare-fun bs!599067 () Bool)

(assert (= bs!599067 d!1254581))

(assert (=> bs!599067 m!4848747))

(assert (=> bs!599067 m!4848747))

(declare-fun m!4849613 () Bool)

(assert (=> bs!599067 m!4849613))

(declare-fun m!4849615 () Bool)

(assert (=> bs!599067 m!4849615))

(assert (=> b!4261160 d!1254581))

(declare-fun d!1254583 () Bool)

(assert (=> d!1254583 (= ($colon$colon!631 (map!9668 (t!353185 (t!353185 lt!1510606)) f!428) (dynLambda!20219 f!428 (h!52658 (t!353185 lt!1510606)))) (Cons!47239 (dynLambda!20219 f!428 (h!52658 (t!353185 lt!1510606))) (map!9668 (t!353185 (t!353185 lt!1510606)) f!428)))))

(assert (=> b!4261112 d!1254583))

(declare-fun d!1254585 () Bool)

(declare-fun lt!1510767 () List!47363)

(assert (=> d!1254585 (= (size!34597 lt!1510767) (size!34598 (t!353185 (t!353185 lt!1510606))))))

(declare-fun e!2646391 () List!47363)

(assert (=> d!1254585 (= lt!1510767 e!2646391)))

(declare-fun c!723912 () Bool)

(assert (=> d!1254585 (= c!723912 ((_ is Nil!47238) (t!353185 (t!353185 lt!1510606))))))

(assert (=> d!1254585 (= (map!9668 (t!353185 (t!353185 lt!1510606)) f!428) lt!1510767)))

(declare-fun b!4261608 () Bool)

(assert (=> b!4261608 (= e!2646391 Nil!47239)))

(declare-fun b!4261609 () Bool)

(assert (=> b!4261609 (= e!2646391 ($colon$colon!631 (map!9668 (t!353185 (t!353185 (t!353185 lt!1510606))) f!428) (dynLambda!20219 f!428 (h!52658 (t!353185 (t!353185 lt!1510606))))))))

(assert (= (and d!1254585 c!723912) b!4261608))

(assert (= (and d!1254585 (not c!723912)) b!4261609))

(declare-fun b_lambda!125765 () Bool)

(assert (=> (not b_lambda!125765) (not b!4261609)))

(declare-fun t!353245 () Bool)

(declare-fun tb!256925 () Bool)

(assert (=> (and start!408286 (= f!428 f!428) t!353245) tb!256925))

(declare-fun result!313490 () Bool)

(assert (=> tb!256925 (= result!313490 tp_is_empty!22873)))

(assert (=> b!4261609 t!353245))

(declare-fun b_and!337731 () Bool)

(assert (= b_and!337729 (and (=> t!353245 result!313490) b_and!337731)))

(declare-fun m!4849617 () Bool)

(assert (=> d!1254585 m!4849617))

(assert (=> d!1254585 m!4849545))

(declare-fun m!4849619 () Bool)

(assert (=> b!4261609 m!4849619))

(declare-fun m!4849621 () Bool)

(assert (=> b!4261609 m!4849621))

(assert (=> b!4261609 m!4849619))

(assert (=> b!4261609 m!4849621))

(declare-fun m!4849623 () Bool)

(assert (=> b!4261609 m!4849623))

(assert (=> b!4261112 d!1254585))

(declare-fun d!1254587 () Bool)

(declare-fun c!723913 () Bool)

(assert (=> d!1254587 (= c!723913 ((_ is Nil!47238) lt!1510694))))

(declare-fun e!2646392 () (InoxSet T!79406))

(assert (=> d!1254587 (= (content!7443 lt!1510694) e!2646392)))

(declare-fun b!4261610 () Bool)

(assert (=> b!4261610 (= e!2646392 ((as const (Array T!79406 Bool)) false))))

(declare-fun b!4261611 () Bool)

(assert (=> b!4261611 (= e!2646392 ((_ map or) (store ((as const (Array T!79406 Bool)) false) (h!52658 lt!1510694) true) (content!7443 (t!353185 lt!1510694))))))

(assert (= (and d!1254587 c!723913) b!4261610))

(assert (= (and d!1254587 (not c!723913)) b!4261611))

(declare-fun m!4849625 () Bool)

(assert (=> b!4261611 m!4849625))

(declare-fun m!4849627 () Bool)

(assert (=> b!4261611 m!4849627))

(assert (=> d!1254303 d!1254587))

(declare-fun d!1254589 () Bool)

(declare-fun c!723914 () Bool)

(assert (=> d!1254589 (= c!723914 ((_ is Nil!47238) (list!17058 (left!35020 (right!35350 t!4386)))))))

(declare-fun e!2646393 () (InoxSet T!79406))

(assert (=> d!1254589 (= (content!7443 (list!17058 (left!35020 (right!35350 t!4386)))) e!2646393)))

(declare-fun b!4261612 () Bool)

(assert (=> b!4261612 (= e!2646393 ((as const (Array T!79406 Bool)) false))))

(declare-fun b!4261613 () Bool)

(assert (=> b!4261613 (= e!2646393 ((_ map or) (store ((as const (Array T!79406 Bool)) false) (h!52658 (list!17058 (left!35020 (right!35350 t!4386)))) true) (content!7443 (t!353185 (list!17058 (left!35020 (right!35350 t!4386)))))))))

(assert (= (and d!1254589 c!723914) b!4261612))

(assert (= (and d!1254589 (not c!723914)) b!4261613))

(declare-fun m!4849629 () Bool)

(assert (=> b!4261613 m!4849629))

(assert (=> b!4261613 m!4849513))

(assert (=> d!1254303 d!1254589))

(declare-fun d!1254591 () Bool)

(declare-fun c!723915 () Bool)

(assert (=> d!1254591 (= c!723915 ((_ is Nil!47238) (list!17058 (right!35350 (right!35350 t!4386)))))))

(declare-fun e!2646394 () (InoxSet T!79406))

(assert (=> d!1254591 (= (content!7443 (list!17058 (right!35350 (right!35350 t!4386)))) e!2646394)))

(declare-fun b!4261614 () Bool)

(assert (=> b!4261614 (= e!2646394 ((as const (Array T!79406 Bool)) false))))

(declare-fun b!4261615 () Bool)

(assert (=> b!4261615 (= e!2646394 ((_ map or) (store ((as const (Array T!79406 Bool)) false) (h!52658 (list!17058 (right!35350 (right!35350 t!4386)))) true) (content!7443 (t!353185 (list!17058 (right!35350 (right!35350 t!4386)))))))))

(assert (= (and d!1254591 c!723915) b!4261614))

(assert (= (and d!1254591 (not c!723915)) b!4261615))

(declare-fun m!4849631 () Bool)

(assert (=> b!4261615 m!4849631))

(declare-fun m!4849633 () Bool)

(assert (=> b!4261615 m!4849633))

(assert (=> d!1254303 d!1254591))

(declare-fun d!1254593 () Bool)

(declare-fun lt!1510768 () Int)

(assert (=> d!1254593 (>= lt!1510768 0)))

(declare-fun e!2646395 () Int)

(assert (=> d!1254593 (= lt!1510768 e!2646395)))

(declare-fun c!723916 () Bool)

(assert (=> d!1254593 (= c!723916 ((_ is Nil!47239) lt!1510655))))

(assert (=> d!1254593 (= (size!34597 lt!1510655) lt!1510768)))

(declare-fun b!4261616 () Bool)

(assert (=> b!4261616 (= e!2646395 0)))

(declare-fun b!4261617 () Bool)

(assert (=> b!4261617 (= e!2646395 (+ 1 (size!34597 (t!353186 lt!1510655))))))

(assert (= (and d!1254593 c!723916) b!4261616))

(assert (= (and d!1254593 (not c!723916)) b!4261617))

(declare-fun m!4849635 () Bool)

(assert (=> b!4261617 m!4849635))

(assert (=> d!1254181 d!1254593))

(assert (=> d!1254181 d!1254487))

(declare-fun b!4261620 () Bool)

(declare-fun res!1751622 () Bool)

(declare-fun e!2646397 () Bool)

(assert (=> b!4261620 (=> (not res!1751622) (not e!2646397))))

(declare-fun lt!1510769 () List!47362)

(assert (=> b!4261620 (= res!1751622 (= (size!34598 lt!1510769) (+ (size!34598 (list!17058 (left!35020 (right!35350 (right!35350 t!4386))))) (size!34598 (list!17058 (right!35350 (right!35350 (right!35350 t!4386))))))))))

(declare-fun b!4261619 () Bool)

(declare-fun e!2646396 () List!47362)

(assert (=> b!4261619 (= e!2646396 (Cons!47238 (h!52658 (list!17058 (left!35020 (right!35350 (right!35350 t!4386))))) (++!12031 (t!353185 (list!17058 (left!35020 (right!35350 (right!35350 t!4386))))) (list!17058 (right!35350 (right!35350 (right!35350 t!4386)))))))))

(declare-fun b!4261618 () Bool)

(assert (=> b!4261618 (= e!2646396 (list!17058 (right!35350 (right!35350 (right!35350 t!4386)))))))

(declare-fun d!1254595 () Bool)

(assert (=> d!1254595 e!2646397))

(declare-fun res!1751623 () Bool)

(assert (=> d!1254595 (=> (not res!1751623) (not e!2646397))))

(assert (=> d!1254595 (= res!1751623 (= (content!7443 lt!1510769) ((_ map or) (content!7443 (list!17058 (left!35020 (right!35350 (right!35350 t!4386))))) (content!7443 (list!17058 (right!35350 (right!35350 (right!35350 t!4386))))))))))

(assert (=> d!1254595 (= lt!1510769 e!2646396)))

(declare-fun c!723917 () Bool)

(assert (=> d!1254595 (= c!723917 ((_ is Nil!47238) (list!17058 (left!35020 (right!35350 (right!35350 t!4386))))))))

(assert (=> d!1254595 (= (++!12031 (list!17058 (left!35020 (right!35350 (right!35350 t!4386)))) (list!17058 (right!35350 (right!35350 (right!35350 t!4386))))) lt!1510769)))

(declare-fun b!4261621 () Bool)

(assert (=> b!4261621 (= e!2646397 (or (not (= (list!17058 (right!35350 (right!35350 (right!35350 t!4386)))) Nil!47238)) (= lt!1510769 (list!17058 (left!35020 (right!35350 (right!35350 t!4386)))))))))

(assert (= (and d!1254595 c!723917) b!4261618))

(assert (= (and d!1254595 (not c!723917)) b!4261619))

(assert (= (and d!1254595 res!1751623) b!4261620))

(assert (= (and b!4261620 res!1751622) b!4261621))

(declare-fun m!4849637 () Bool)

(assert (=> b!4261620 m!4849637))

(assert (=> b!4261620 m!4848939))

(declare-fun m!4849639 () Bool)

(assert (=> b!4261620 m!4849639))

(assert (=> b!4261620 m!4848941))

(declare-fun m!4849641 () Bool)

(assert (=> b!4261620 m!4849641))

(assert (=> b!4261619 m!4848941))

(declare-fun m!4849643 () Bool)

(assert (=> b!4261619 m!4849643))

(declare-fun m!4849645 () Bool)

(assert (=> d!1254595 m!4849645))

(assert (=> d!1254595 m!4848939))

(declare-fun m!4849647 () Bool)

(assert (=> d!1254595 m!4849647))

(assert (=> d!1254595 m!4848941))

(declare-fun m!4849649 () Bool)

(assert (=> d!1254595 m!4849649))

(assert (=> b!4261247 d!1254595))

(declare-fun b!4261623 () Bool)

(declare-fun e!2646398 () List!47362)

(declare-fun e!2646399 () List!47362)

(assert (=> b!4261623 (= e!2646398 e!2646399)))

(declare-fun c!723919 () Bool)

(assert (=> b!4261623 (= c!723919 ((_ is Leaf!22013) (left!35020 (right!35350 (right!35350 t!4386)))))))

(declare-fun d!1254597 () Bool)

(declare-fun c!723918 () Bool)

(assert (=> d!1254597 (= c!723918 ((_ is Empty!14244) (left!35020 (right!35350 (right!35350 t!4386)))))))

(assert (=> d!1254597 (= (list!17058 (left!35020 (right!35350 (right!35350 t!4386)))) e!2646398)))

(declare-fun b!4261622 () Bool)

(assert (=> b!4261622 (= e!2646398 Nil!47238)))

(declare-fun b!4261624 () Bool)

(assert (=> b!4261624 (= e!2646399 (list!17061 (xs!17550 (left!35020 (right!35350 (right!35350 t!4386))))))))

(declare-fun b!4261625 () Bool)

(assert (=> b!4261625 (= e!2646399 (++!12031 (list!17058 (left!35020 (left!35020 (right!35350 (right!35350 t!4386))))) (list!17058 (right!35350 (left!35020 (right!35350 (right!35350 t!4386)))))))))

(assert (= (and d!1254597 c!723918) b!4261622))

(assert (= (and d!1254597 (not c!723918)) b!4261623))

(assert (= (and b!4261623 c!723919) b!4261624))

(assert (= (and b!4261623 (not c!723919)) b!4261625))

(declare-fun m!4849651 () Bool)

(assert (=> b!4261624 m!4849651))

(declare-fun m!4849653 () Bool)

(assert (=> b!4261625 m!4849653))

(declare-fun m!4849655 () Bool)

(assert (=> b!4261625 m!4849655))

(assert (=> b!4261625 m!4849653))

(assert (=> b!4261625 m!4849655))

(declare-fun m!4849657 () Bool)

(assert (=> b!4261625 m!4849657))

(assert (=> b!4261247 d!1254597))

(declare-fun b!4261627 () Bool)

(declare-fun e!2646400 () List!47362)

(declare-fun e!2646401 () List!47362)

(assert (=> b!4261627 (= e!2646400 e!2646401)))

(declare-fun c!723921 () Bool)

(assert (=> b!4261627 (= c!723921 ((_ is Leaf!22013) (right!35350 (right!35350 (right!35350 t!4386)))))))

(declare-fun d!1254599 () Bool)

(declare-fun c!723920 () Bool)

(assert (=> d!1254599 (= c!723920 ((_ is Empty!14244) (right!35350 (right!35350 (right!35350 t!4386)))))))

(assert (=> d!1254599 (= (list!17058 (right!35350 (right!35350 (right!35350 t!4386)))) e!2646400)))

(declare-fun b!4261626 () Bool)

(assert (=> b!4261626 (= e!2646400 Nil!47238)))

(declare-fun b!4261628 () Bool)

(assert (=> b!4261628 (= e!2646401 (list!17061 (xs!17550 (right!35350 (right!35350 (right!35350 t!4386))))))))

(declare-fun b!4261629 () Bool)

(assert (=> b!4261629 (= e!2646401 (++!12031 (list!17058 (left!35020 (right!35350 (right!35350 (right!35350 t!4386))))) (list!17058 (right!35350 (right!35350 (right!35350 (right!35350 t!4386)))))))))

(assert (= (and d!1254599 c!723920) b!4261626))

(assert (= (and d!1254599 (not c!723920)) b!4261627))

(assert (= (and b!4261627 c!723921) b!4261628))

(assert (= (and b!4261627 (not c!723921)) b!4261629))

(declare-fun m!4849659 () Bool)

(assert (=> b!4261628 m!4849659))

(declare-fun m!4849661 () Bool)

(assert (=> b!4261629 m!4849661))

(declare-fun m!4849663 () Bool)

(assert (=> b!4261629 m!4849663))

(assert (=> b!4261629 m!4849661))

(assert (=> b!4261629 m!4849663))

(declare-fun m!4849665 () Bool)

(assert (=> b!4261629 m!4849665))

(assert (=> b!4261247 d!1254599))

(assert (=> b!4261057 d!1254491))

(assert (=> b!4261205 d!1254427))

(assert (=> b!4261205 d!1254429))

(declare-fun d!1254601 () Bool)

(declare-fun lt!1510770 () Int)

(assert (=> d!1254601 (>= lt!1510770 0)))

(declare-fun e!2646402 () Int)

(assert (=> d!1254601 (= lt!1510770 e!2646402)))

(declare-fun c!723922 () Bool)

(assert (=> d!1254601 (= c!723922 ((_ is Nil!47238) lt!1510694))))

(assert (=> d!1254601 (= (size!34598 lt!1510694) lt!1510770)))

(declare-fun b!4261630 () Bool)

(assert (=> b!4261630 (= e!2646402 0)))

(declare-fun b!4261631 () Bool)

(assert (=> b!4261631 (= e!2646402 (+ 1 (size!34598 (t!353185 lt!1510694))))))

(assert (= (and d!1254601 c!723922) b!4261630))

(assert (= (and d!1254601 (not c!723922)) b!4261631))

(declare-fun m!4849667 () Bool)

(assert (=> b!4261631 m!4849667))

(assert (=> b!4261234 d!1254601))

(declare-fun d!1254603 () Bool)

(declare-fun lt!1510771 () Int)

(assert (=> d!1254603 (>= lt!1510771 0)))

(declare-fun e!2646403 () Int)

(assert (=> d!1254603 (= lt!1510771 e!2646403)))

(declare-fun c!723923 () Bool)

(assert (=> d!1254603 (= c!723923 ((_ is Nil!47238) (list!17058 (left!35020 (right!35350 t!4386)))))))

(assert (=> d!1254603 (= (size!34598 (list!17058 (left!35020 (right!35350 t!4386)))) lt!1510771)))

(declare-fun b!4261632 () Bool)

(assert (=> b!4261632 (= e!2646403 0)))

(declare-fun b!4261633 () Bool)

(assert (=> b!4261633 (= e!2646403 (+ 1 (size!34598 (t!353185 (list!17058 (left!35020 (right!35350 t!4386)))))))))

(assert (= (and d!1254603 c!723923) b!4261632))

(assert (= (and d!1254603 (not c!723923)) b!4261633))

(assert (=> b!4261633 m!4849507))

(assert (=> b!4261234 d!1254603))

(declare-fun d!1254605 () Bool)

(declare-fun lt!1510772 () Int)

(assert (=> d!1254605 (>= lt!1510772 0)))

(declare-fun e!2646404 () Int)

(assert (=> d!1254605 (= lt!1510772 e!2646404)))

(declare-fun c!723924 () Bool)

(assert (=> d!1254605 (= c!723924 ((_ is Nil!47238) (list!17058 (right!35350 (right!35350 t!4386)))))))

(assert (=> d!1254605 (= (size!34598 (list!17058 (right!35350 (right!35350 t!4386)))) lt!1510772)))

(declare-fun b!4261634 () Bool)

(assert (=> b!4261634 (= e!2646404 0)))

(declare-fun b!4261635 () Bool)

(assert (=> b!4261635 (= e!2646404 (+ 1 (size!34598 (t!353185 (list!17058 (right!35350 (right!35350 t!4386)))))))))

(assert (= (and d!1254605 c!723924) b!4261634))

(assert (= (and d!1254605 (not c!723924)) b!4261635))

(declare-fun m!4849669 () Bool)

(assert (=> b!4261635 m!4849669))

(assert (=> b!4261234 d!1254605))

(declare-fun d!1254607 () Bool)

(assert (=> d!1254607 (= (list!17061 (xs!17550 (left!35020 (right!35350 t!4386)))) (innerList!14304 (xs!17550 (left!35020 (right!35350 t!4386)))))))

(assert (=> b!4261242 d!1254607))

(declare-fun d!1254609 () Bool)

(assert (=> d!1254609 (= (inv!62138 (xs!17550 (right!35350 (right!35350 t!4386)))) (<= (size!34598 (innerList!14304 (xs!17550 (right!35350 (right!35350 t!4386))))) 2147483647))))

(declare-fun bs!599068 () Bool)

(assert (= bs!599068 d!1254609))

(declare-fun m!4849671 () Bool)

(assert (=> bs!599068 m!4849671))

(assert (=> b!4261260 d!1254609))

(declare-fun d!1254611 () Bool)

(declare-fun c!723925 () Bool)

(assert (=> d!1254611 (= c!723925 ((_ is Nil!47238) lt!1510667))))

(declare-fun e!2646405 () (InoxSet T!79406))

(assert (=> d!1254611 (= (content!7443 lt!1510667) e!2646405)))

(declare-fun b!4261636 () Bool)

(assert (=> b!4261636 (= e!2646405 ((as const (Array T!79406 Bool)) false))))

(declare-fun b!4261637 () Bool)

(assert (=> b!4261637 (= e!2646405 ((_ map or) (store ((as const (Array T!79406 Bool)) false) (h!52658 lt!1510667) true) (content!7443 (t!353185 lt!1510667))))))

(assert (= (and d!1254611 c!723925) b!4261636))

(assert (= (and d!1254611 (not c!723925)) b!4261637))

(declare-fun m!4849673 () Bool)

(assert (=> b!4261637 m!4849673))

(declare-fun m!4849675 () Bool)

(assert (=> b!4261637 m!4849675))

(assert (=> d!1254225 d!1254611))

(assert (=> d!1254225 d!1254527))

(assert (=> d!1254225 d!1254217))

(declare-fun d!1254613 () Bool)

(declare-fun c!723926 () Bool)

(assert (=> d!1254613 (= c!723926 ((_ is Nil!47239) lt!1510659))))

(declare-fun e!2646406 () (InoxSet B!2821))

(assert (=> d!1254613 (= (content!7444 lt!1510659) e!2646406)))

(declare-fun b!4261638 () Bool)

(assert (=> b!4261638 (= e!2646406 ((as const (Array B!2821 Bool)) false))))

(declare-fun b!4261639 () Bool)

(assert (=> b!4261639 (= e!2646406 ((_ map or) (store ((as const (Array B!2821 Bool)) false) (h!52659 lt!1510659) true) (content!7444 (t!353186 lt!1510659))))))

(assert (= (and d!1254613 c!723926) b!4261638))

(assert (= (and d!1254613 (not c!723926)) b!4261639))

(declare-fun m!4849677 () Bool)

(assert (=> b!4261639 m!4849677))

(declare-fun m!4849679 () Bool)

(assert (=> b!4261639 m!4849679))

(assert (=> d!1254191 d!1254613))

(assert (=> d!1254191 d!1254573))

(assert (=> d!1254191 d!1254295))

(declare-fun d!1254615 () Bool)

(assert (=> d!1254615 (= (inv!62138 (xs!17550 (left!35020 (left!35020 t!4386)))) (<= (size!34598 (innerList!14304 (xs!17550 (left!35020 (left!35020 t!4386))))) 2147483647))))

(declare-fun bs!599069 () Bool)

(assert (= bs!599069 d!1254615))

(declare-fun m!4849681 () Bool)

(assert (=> bs!599069 m!4849681))

(assert (=> b!4261263 d!1254615))

(declare-fun d!1254617 () Bool)

(assert (=> d!1254617 (= ($colon$colon!631 (map!9668 (t!353185 (list!17058 (left!35020 t!4386))) f!428) (dynLambda!20219 f!428 (h!52658 (list!17058 (left!35020 t!4386))))) (Cons!47239 (dynLambda!20219 f!428 (h!52658 (list!17058 (left!35020 t!4386)))) (map!9668 (t!353185 (list!17058 (left!35020 t!4386))) f!428)))))

(assert (=> b!4261151 d!1254617))

(declare-fun d!1254619 () Bool)

(declare-fun lt!1510773 () List!47363)

(assert (=> d!1254619 (= (size!34597 lt!1510773) (size!34598 (t!353185 (list!17058 (left!35020 t!4386)))))))

(declare-fun e!2646407 () List!47363)

(assert (=> d!1254619 (= lt!1510773 e!2646407)))

(declare-fun c!723927 () Bool)

(assert (=> d!1254619 (= c!723927 ((_ is Nil!47238) (t!353185 (list!17058 (left!35020 t!4386)))))))

(assert (=> d!1254619 (= (map!9668 (t!353185 (list!17058 (left!35020 t!4386))) f!428) lt!1510773)))

(declare-fun b!4261640 () Bool)

(assert (=> b!4261640 (= e!2646407 Nil!47239)))

(declare-fun b!4261641 () Bool)

(assert (=> b!4261641 (= e!2646407 ($colon$colon!631 (map!9668 (t!353185 (t!353185 (list!17058 (left!35020 t!4386)))) f!428) (dynLambda!20219 f!428 (h!52658 (t!353185 (list!17058 (left!35020 t!4386)))))))))

(assert (= (and d!1254619 c!723927) b!4261640))

(assert (= (and d!1254619 (not c!723927)) b!4261641))

(declare-fun b_lambda!125767 () Bool)

(assert (=> (not b_lambda!125767) (not b!4261641)))

(declare-fun t!353247 () Bool)

(declare-fun tb!256927 () Bool)

(assert (=> (and start!408286 (= f!428 f!428) t!353247) tb!256927))

(declare-fun result!313492 () Bool)

(assert (=> tb!256927 (= result!313492 tp_is_empty!22873)))

(assert (=> b!4261641 t!353247))

(declare-fun b_and!337733 () Bool)

(assert (= b_and!337731 (and (=> t!353247 result!313492) b_and!337733)))

(declare-fun m!4849683 () Bool)

(assert (=> d!1254619 m!4849683))

(assert (=> d!1254619 m!4849579))

(declare-fun m!4849685 () Bool)

(assert (=> b!4261641 m!4849685))

(declare-fun m!4849687 () Bool)

(assert (=> b!4261641 m!4849687))

(assert (=> b!4261641 m!4849685))

(assert (=> b!4261641 m!4849687))

(declare-fun m!4849689 () Bool)

(assert (=> b!4261641 m!4849689))

(assert (=> b!4261151 d!1254619))

(declare-fun d!1254621 () Bool)

(declare-fun lt!1510774 () Int)

(assert (=> d!1254621 (>= lt!1510774 0)))

(declare-fun e!2646408 () Int)

(assert (=> d!1254621 (= lt!1510774 e!2646408)))

(declare-fun c!723928 () Bool)

(assert (=> d!1254621 (= c!723928 ((_ is Nil!47239) (t!353186 lt!1510648)))))

(assert (=> d!1254621 (= (size!34597 (t!353186 lt!1510648)) lt!1510774)))

(declare-fun b!4261642 () Bool)

(assert (=> b!4261642 (= e!2646408 0)))

(declare-fun b!4261643 () Bool)

(assert (=> b!4261643 (= e!2646408 (+ 1 (size!34597 (t!353186 (t!353186 lt!1510648)))))))

(assert (= (and d!1254621 c!723928) b!4261642))

(assert (= (and d!1254621 (not c!723928)) b!4261643))

(declare-fun m!4849691 () Bool)

(assert (=> b!4261643 m!4849691))

(assert (=> b!4261050 d!1254621))

(declare-fun b!4261644 () Bool)

(declare-fun res!1751627 () Bool)

(declare-fun e!2646410 () Bool)

(assert (=> b!4261644 (=> (not res!1751627) (not e!2646410))))

(assert (=> b!4261644 (= res!1751627 (isBalanced!3803 (right!35351 lt!1510673)))))

(declare-fun b!4261645 () Bool)

(declare-fun res!1751625 () Bool)

(assert (=> b!4261645 (=> (not res!1751625) (not e!2646410))))

(assert (=> b!4261645 (= res!1751625 (<= (- (height!1870 (left!35021 lt!1510673)) (height!1870 (right!35351 lt!1510673))) 1))))

(declare-fun b!4261646 () Bool)

(assert (=> b!4261646 (= e!2646410 (not (isEmpty!27982 (right!35351 lt!1510673))))))

(declare-fun d!1254623 () Bool)

(declare-fun res!1751628 () Bool)

(declare-fun e!2646409 () Bool)

(assert (=> d!1254623 (=> res!1751628 e!2646409)))

(assert (=> d!1254623 (= res!1751628 (not ((_ is Node!14245) lt!1510673)))))

(assert (=> d!1254623 (= (isBalanced!3803 lt!1510673) e!2646409)))

(declare-fun b!4261647 () Bool)

(assert (=> b!4261647 (= e!2646409 e!2646410)))

(declare-fun res!1751624 () Bool)

(assert (=> b!4261647 (=> (not res!1751624) (not e!2646410))))

(assert (=> b!4261647 (= res!1751624 (<= (- 1) (- (height!1870 (left!35021 lt!1510673)) (height!1870 (right!35351 lt!1510673)))))))

(declare-fun b!4261648 () Bool)

(declare-fun res!1751629 () Bool)

(assert (=> b!4261648 (=> (not res!1751629) (not e!2646410))))

(assert (=> b!4261648 (= res!1751629 (not (isEmpty!27982 (left!35021 lt!1510673))))))

(declare-fun b!4261649 () Bool)

(declare-fun res!1751626 () Bool)

(assert (=> b!4261649 (=> (not res!1751626) (not e!2646410))))

(assert (=> b!4261649 (= res!1751626 (isBalanced!3803 (left!35021 lt!1510673)))))

(assert (= (and d!1254623 (not res!1751628)) b!4261647))

(assert (= (and b!4261647 res!1751624) b!4261645))

(assert (= (and b!4261645 res!1751625) b!4261649))

(assert (= (and b!4261649 res!1751626) b!4261644))

(assert (= (and b!4261644 res!1751627) b!4261648))

(assert (= (and b!4261648 res!1751629) b!4261646))

(declare-fun m!4849693 () Bool)

(assert (=> b!4261649 m!4849693))

(declare-fun m!4849695 () Bool)

(assert (=> b!4261647 m!4849695))

(declare-fun m!4849697 () Bool)

(assert (=> b!4261647 m!4849697))

(declare-fun m!4849699 () Bool)

(assert (=> b!4261646 m!4849699))

(declare-fun m!4849701 () Bool)

(assert (=> b!4261644 m!4849701))

(declare-fun m!4849703 () Bool)

(assert (=> b!4261648 m!4849703))

(assert (=> b!4261645 m!4849695))

(assert (=> b!4261645 m!4849697))

(assert (=> b!4261156 d!1254623))

(declare-fun d!1254625 () Bool)

(declare-fun c!723929 () Bool)

(assert (=> d!1254625 (= c!723929 ((_ is Node!14244) (left!35020 (right!35350 (left!35020 t!4386)))))))

(declare-fun e!2646411 () Bool)

(assert (=> d!1254625 (= (inv!62137 (left!35020 (right!35350 (left!35020 t!4386)))) e!2646411)))

(declare-fun b!4261650 () Bool)

(assert (=> b!4261650 (= e!2646411 (inv!62141 (left!35020 (right!35350 (left!35020 t!4386)))))))

(declare-fun b!4261651 () Bool)

(declare-fun e!2646412 () Bool)

(assert (=> b!4261651 (= e!2646411 e!2646412)))

(declare-fun res!1751630 () Bool)

(assert (=> b!4261651 (= res!1751630 (not ((_ is Leaf!22013) (left!35020 (right!35350 (left!35020 t!4386))))))))

(assert (=> b!4261651 (=> res!1751630 e!2646412)))

(declare-fun b!4261652 () Bool)

(assert (=> b!4261652 (= e!2646412 (inv!62142 (left!35020 (right!35350 (left!35020 t!4386)))))))

(assert (= (and d!1254625 c!723929) b!4261650))

(assert (= (and d!1254625 (not c!723929)) b!4261651))

(assert (= (and b!4261651 (not res!1751630)) b!4261652))

(declare-fun m!4849705 () Bool)

(assert (=> b!4261650 m!4849705))

(declare-fun m!4849707 () Bool)

(assert (=> b!4261652 m!4849707))

(assert (=> b!4261265 d!1254625))

(declare-fun d!1254627 () Bool)

(declare-fun c!723930 () Bool)

(assert (=> d!1254627 (= c!723930 ((_ is Node!14244) (right!35350 (right!35350 (left!35020 t!4386)))))))

(declare-fun e!2646413 () Bool)

(assert (=> d!1254627 (= (inv!62137 (right!35350 (right!35350 (left!35020 t!4386)))) e!2646413)))

(declare-fun b!4261653 () Bool)

(assert (=> b!4261653 (= e!2646413 (inv!62141 (right!35350 (right!35350 (left!35020 t!4386)))))))

(declare-fun b!4261654 () Bool)

(declare-fun e!2646414 () Bool)

(assert (=> b!4261654 (= e!2646413 e!2646414)))

(declare-fun res!1751631 () Bool)

(assert (=> b!4261654 (= res!1751631 (not ((_ is Leaf!22013) (right!35350 (right!35350 (left!35020 t!4386))))))))

(assert (=> b!4261654 (=> res!1751631 e!2646414)))

(declare-fun b!4261655 () Bool)

(assert (=> b!4261655 (= e!2646414 (inv!62142 (right!35350 (right!35350 (left!35020 t!4386)))))))

(assert (= (and d!1254627 c!723930) b!4261653))

(assert (= (and d!1254627 (not c!723930)) b!4261654))

(assert (= (and b!4261654 (not res!1751631)) b!4261655))

(declare-fun m!4849709 () Bool)

(assert (=> b!4261653 m!4849709))

(declare-fun m!4849711 () Bool)

(assert (=> b!4261655 m!4849711))

(assert (=> b!4261265 d!1254627))

(assert (=> b!4261070 d!1254473))

(assert (=> b!4261070 d!1254475))

(declare-fun d!1254629 () Bool)

(declare-fun lt!1510775 () Int)

(assert (=> d!1254629 (>= lt!1510775 0)))

(declare-fun e!2646415 () Int)

(assert (=> d!1254629 (= lt!1510775 e!2646415)))

(declare-fun c!723931 () Bool)

(assert (=> d!1254629 (= c!723931 ((_ is Nil!47239) (t!353186 lt!1510636)))))

(assert (=> d!1254629 (= (size!34597 (t!353186 lt!1510636)) lt!1510775)))

(declare-fun b!4261656 () Bool)

(assert (=> b!4261656 (= e!2646415 0)))

(declare-fun b!4261657 () Bool)

(assert (=> b!4261657 (= e!2646415 (+ 1 (size!34597 (t!353186 (t!353186 lt!1510636)))))))

(assert (= (and d!1254629 c!723931) b!4261656))

(assert (= (and d!1254629 (not c!723931)) b!4261657))

(declare-fun m!4849713 () Bool)

(assert (=> b!4261657 m!4849713))

(assert (=> b!4261114 d!1254629))

(declare-fun d!1254631 () Bool)

(declare-fun lt!1510776 () Int)

(assert (=> d!1254631 (= lt!1510776 (size!34598 (list!17058 (left!35020 (left!35020 t!4386)))))))

(assert (=> d!1254631 (= lt!1510776 (ite ((_ is Empty!14244) (left!35020 (left!35020 t!4386))) 0 (ite ((_ is Leaf!22013) (left!35020 (left!35020 t!4386))) (csize!28719 (left!35020 (left!35020 t!4386))) (csize!28718 (left!35020 (left!35020 t!4386))))))))

(assert (=> d!1254631 (= (size!34599 (left!35020 (left!35020 t!4386))) lt!1510776)))

(declare-fun bs!599070 () Bool)

(assert (= bs!599070 d!1254631))

(assert (=> bs!599070 m!4848385))

(assert (=> bs!599070 m!4848385))

(assert (=> bs!599070 m!4848735))

(assert (=> d!1254235 d!1254631))

(declare-fun d!1254633 () Bool)

(declare-fun lt!1510777 () Int)

(assert (=> d!1254633 (= lt!1510777 (size!34598 (list!17058 (right!35350 (left!35020 t!4386)))))))

(assert (=> d!1254633 (= lt!1510777 (ite ((_ is Empty!14244) (right!35350 (left!35020 t!4386))) 0 (ite ((_ is Leaf!22013) (right!35350 (left!35020 t!4386))) (csize!28719 (right!35350 (left!35020 t!4386))) (csize!28718 (right!35350 (left!35020 t!4386))))))))

(assert (=> d!1254633 (= (size!34599 (right!35350 (left!35020 t!4386))) lt!1510777)))

(declare-fun bs!599071 () Bool)

(assert (= bs!599071 d!1254633))

(assert (=> bs!599071 m!4848387))

(assert (=> bs!599071 m!4848387))

(assert (=> bs!599071 m!4848737))

(assert (=> d!1254235 d!1254633))

(declare-fun d!1254635 () Bool)

(declare-fun res!1751632 () Bool)

(declare-fun e!2646416 () Bool)

(assert (=> d!1254635 (=> (not res!1751632) (not e!2646416))))

(assert (=> d!1254635 (= res!1751632 (= (csize!28718 (left!35020 (right!35350 t!4386))) (+ (size!34599 (left!35020 (left!35020 (right!35350 t!4386)))) (size!34599 (right!35350 (left!35020 (right!35350 t!4386)))))))))

(assert (=> d!1254635 (= (inv!62141 (left!35020 (right!35350 t!4386))) e!2646416)))

(declare-fun b!4261658 () Bool)

(declare-fun res!1751633 () Bool)

(assert (=> b!4261658 (=> (not res!1751633) (not e!2646416))))

(assert (=> b!4261658 (= res!1751633 (and (not (= (left!35020 (left!35020 (right!35350 t!4386))) Empty!14244)) (not (= (right!35350 (left!35020 (right!35350 t!4386))) Empty!14244))))))

(declare-fun b!4261659 () Bool)

(declare-fun res!1751634 () Bool)

(assert (=> b!4261659 (=> (not res!1751634) (not e!2646416))))

(assert (=> b!4261659 (= res!1751634 (= (cheight!14455 (left!35020 (right!35350 t!4386))) (+ (max!0 (height!1868 (left!35020 (left!35020 (right!35350 t!4386)))) (height!1868 (right!35350 (left!35020 (right!35350 t!4386))))) 1)))))

(declare-fun b!4261660 () Bool)

(assert (=> b!4261660 (= e!2646416 (<= 0 (cheight!14455 (left!35020 (right!35350 t!4386)))))))

(assert (= (and d!1254635 res!1751632) b!4261658))

(assert (= (and b!4261658 res!1751633) b!4261659))

(assert (= (and b!4261659 res!1751634) b!4261660))

(declare-fun m!4849715 () Bool)

(assert (=> d!1254635 m!4849715))

(declare-fun m!4849717 () Bool)

(assert (=> d!1254635 m!4849717))

(assert (=> b!4261659 m!4849235))

(assert (=> b!4261659 m!4849237))

(assert (=> b!4261659 m!4849235))

(assert (=> b!4261659 m!4849237))

(declare-fun m!4849719 () Bool)

(assert (=> b!4261659 m!4849719))

(assert (=> b!4261077 d!1254635))

(declare-fun d!1254637 () Bool)

(declare-fun lt!1510778 () Int)

(assert (=> d!1254637 (= lt!1510778 (size!34598 (list!17058 (left!35020 (right!35350 t!4386)))))))

(assert (=> d!1254637 (= lt!1510778 (ite ((_ is Empty!14244) (left!35020 (right!35350 t!4386))) 0 (ite ((_ is Leaf!22013) (left!35020 (right!35350 t!4386))) (csize!28719 (left!35020 (right!35350 t!4386))) (csize!28718 (left!35020 (right!35350 t!4386))))))))

(assert (=> d!1254637 (= (size!34599 (left!35020 (right!35350 t!4386))) lt!1510778)))

(declare-fun bs!599072 () Bool)

(assert (= bs!599072 d!1254637))

(assert (=> bs!599072 m!4848517))

(assert (=> bs!599072 m!4848517))

(assert (=> bs!599072 m!4848907))

(assert (=> d!1254269 d!1254637))

(declare-fun d!1254639 () Bool)

(declare-fun lt!1510779 () Int)

(assert (=> d!1254639 (= lt!1510779 (size!34598 (list!17058 (right!35350 (right!35350 t!4386)))))))

(assert (=> d!1254639 (= lt!1510779 (ite ((_ is Empty!14244) (right!35350 (right!35350 t!4386))) 0 (ite ((_ is Leaf!22013) (right!35350 (right!35350 t!4386))) (csize!28719 (right!35350 (right!35350 t!4386))) (csize!28718 (right!35350 (right!35350 t!4386))))))))

(assert (=> d!1254639 (= (size!34599 (right!35350 (right!35350 t!4386))) lt!1510779)))

(declare-fun bs!599073 () Bool)

(assert (= bs!599073 d!1254639))

(assert (=> bs!599073 m!4848519))

(assert (=> bs!599073 m!4848519))

(assert (=> bs!599073 m!4848909))

(assert (=> d!1254269 d!1254639))

(declare-fun b!4261663 () Bool)

(declare-fun res!1751635 () Bool)

(declare-fun e!2646418 () Bool)

(assert (=> b!4261663 (=> (not res!1751635) (not e!2646418))))

(declare-fun lt!1510780 () List!47362)

(assert (=> b!4261663 (= res!1751635 (= (size!34598 lt!1510780) (+ (size!34598 (list!17058 (left!35020 (right!35350 (left!35020 t!4386))))) (size!34598 (list!17058 (right!35350 (right!35350 (left!35020 t!4386))))))))))

(declare-fun b!4261662 () Bool)

(declare-fun e!2646417 () List!47362)

(assert (=> b!4261662 (= e!2646417 (Cons!47238 (h!52658 (list!17058 (left!35020 (right!35350 (left!35020 t!4386))))) (++!12031 (t!353185 (list!17058 (left!35020 (right!35350 (left!35020 t!4386))))) (list!17058 (right!35350 (right!35350 (left!35020 t!4386)))))))))

(declare-fun b!4261661 () Bool)

(assert (=> b!4261661 (= e!2646417 (list!17058 (right!35350 (right!35350 (left!35020 t!4386)))))))

(declare-fun d!1254641 () Bool)

(assert (=> d!1254641 e!2646418))

(declare-fun res!1751636 () Bool)

(assert (=> d!1254641 (=> (not res!1751636) (not e!2646418))))

(assert (=> d!1254641 (= res!1751636 (= (content!7443 lt!1510780) ((_ map or) (content!7443 (list!17058 (left!35020 (right!35350 (left!35020 t!4386))))) (content!7443 (list!17058 (right!35350 (right!35350 (left!35020 t!4386))))))))))

(assert (=> d!1254641 (= lt!1510780 e!2646417)))

(declare-fun c!723932 () Bool)

(assert (=> d!1254641 (= c!723932 ((_ is Nil!47238) (list!17058 (left!35020 (right!35350 (left!35020 t!4386))))))))

(assert (=> d!1254641 (= (++!12031 (list!17058 (left!35020 (right!35350 (left!35020 t!4386)))) (list!17058 (right!35350 (right!35350 (left!35020 t!4386))))) lt!1510780)))

(declare-fun b!4261664 () Bool)

(assert (=> b!4261664 (= e!2646418 (or (not (= (list!17058 (right!35350 (right!35350 (left!35020 t!4386)))) Nil!47238)) (= lt!1510780 (list!17058 (left!35020 (right!35350 (left!35020 t!4386)))))))))

(assert (= (and d!1254641 c!723932) b!4261661))

(assert (= (and d!1254641 (not c!723932)) b!4261662))

(assert (= (and d!1254641 res!1751636) b!4261663))

(assert (= (and b!4261663 res!1751635) b!4261664))

(declare-fun m!4849721 () Bool)

(assert (=> b!4261663 m!4849721))

(assert (=> b!4261663 m!4848757))

(declare-fun m!4849723 () Bool)

(assert (=> b!4261663 m!4849723))

(assert (=> b!4261663 m!4848759))

(declare-fun m!4849725 () Bool)

(assert (=> b!4261663 m!4849725))

(assert (=> b!4261662 m!4848759))

(declare-fun m!4849727 () Bool)

(assert (=> b!4261662 m!4849727))

(declare-fun m!4849729 () Bool)

(assert (=> d!1254641 m!4849729))

(assert (=> d!1254641 m!4848757))

(declare-fun m!4849731 () Bool)

(assert (=> d!1254641 m!4849731))

(assert (=> d!1254641 m!4848759))

(declare-fun m!4849733 () Bool)

(assert (=> d!1254641 m!4849733))

(assert (=> b!4261135 d!1254641))

(declare-fun b!4261666 () Bool)

(declare-fun e!2646419 () List!47362)

(declare-fun e!2646420 () List!47362)

(assert (=> b!4261666 (= e!2646419 e!2646420)))

(declare-fun c!723934 () Bool)

(assert (=> b!4261666 (= c!723934 ((_ is Leaf!22013) (left!35020 (right!35350 (left!35020 t!4386)))))))

(declare-fun d!1254643 () Bool)

(declare-fun c!723933 () Bool)

(assert (=> d!1254643 (= c!723933 ((_ is Empty!14244) (left!35020 (right!35350 (left!35020 t!4386)))))))

(assert (=> d!1254643 (= (list!17058 (left!35020 (right!35350 (left!35020 t!4386)))) e!2646419)))

(declare-fun b!4261665 () Bool)

(assert (=> b!4261665 (= e!2646419 Nil!47238)))

(declare-fun b!4261667 () Bool)

(assert (=> b!4261667 (= e!2646420 (list!17061 (xs!17550 (left!35020 (right!35350 (left!35020 t!4386))))))))

(declare-fun b!4261668 () Bool)

(assert (=> b!4261668 (= e!2646420 (++!12031 (list!17058 (left!35020 (left!35020 (right!35350 (left!35020 t!4386))))) (list!17058 (right!35350 (left!35020 (right!35350 (left!35020 t!4386)))))))))

(assert (= (and d!1254643 c!723933) b!4261665))

(assert (= (and d!1254643 (not c!723933)) b!4261666))

(assert (= (and b!4261666 c!723934) b!4261667))

(assert (= (and b!4261666 (not c!723934)) b!4261668))

(declare-fun m!4849735 () Bool)

(assert (=> b!4261667 m!4849735))

(declare-fun m!4849737 () Bool)

(assert (=> b!4261668 m!4849737))

(declare-fun m!4849739 () Bool)

(assert (=> b!4261668 m!4849739))

(assert (=> b!4261668 m!4849737))

(assert (=> b!4261668 m!4849739))

(declare-fun m!4849741 () Bool)

(assert (=> b!4261668 m!4849741))

(assert (=> b!4261135 d!1254643))

(declare-fun b!4261670 () Bool)

(declare-fun e!2646421 () List!47362)

(declare-fun e!2646422 () List!47362)

(assert (=> b!4261670 (= e!2646421 e!2646422)))

(declare-fun c!723936 () Bool)

(assert (=> b!4261670 (= c!723936 ((_ is Leaf!22013) (right!35350 (right!35350 (left!35020 t!4386)))))))

(declare-fun d!1254645 () Bool)

(declare-fun c!723935 () Bool)

(assert (=> d!1254645 (= c!723935 ((_ is Empty!14244) (right!35350 (right!35350 (left!35020 t!4386)))))))

(assert (=> d!1254645 (= (list!17058 (right!35350 (right!35350 (left!35020 t!4386)))) e!2646421)))

(declare-fun b!4261669 () Bool)

(assert (=> b!4261669 (= e!2646421 Nil!47238)))

(declare-fun b!4261671 () Bool)

(assert (=> b!4261671 (= e!2646422 (list!17061 (xs!17550 (right!35350 (right!35350 (left!35020 t!4386))))))))

(declare-fun b!4261672 () Bool)

(assert (=> b!4261672 (= e!2646422 (++!12031 (list!17058 (left!35020 (right!35350 (right!35350 (left!35020 t!4386))))) (list!17058 (right!35350 (right!35350 (right!35350 (left!35020 t!4386)))))))))

(assert (= (and d!1254645 c!723935) b!4261669))

(assert (= (and d!1254645 (not c!723935)) b!4261670))

(assert (= (and b!4261670 c!723936) b!4261671))

(assert (= (and b!4261670 (not c!723936)) b!4261672))

(declare-fun m!4849743 () Bool)

(assert (=> b!4261671 m!4849743))

(declare-fun m!4849745 () Bool)

(assert (=> b!4261672 m!4849745))

(declare-fun m!4849747 () Bool)

(assert (=> b!4261672 m!4849747))

(assert (=> b!4261672 m!4849745))

(assert (=> b!4261672 m!4849747))

(declare-fun m!4849749 () Bool)

(assert (=> b!4261672 m!4849749))

(assert (=> b!4261135 d!1254645))

(declare-fun d!1254647 () Bool)

(declare-fun lt!1510781 () Int)

(assert (=> d!1254647 (>= lt!1510781 0)))

(declare-fun e!2646423 () Int)

(assert (=> d!1254647 (= lt!1510781 e!2646423)))

(declare-fun c!723937 () Bool)

(assert (=> d!1254647 (= c!723937 ((_ is Nil!47238) lt!1510667))))

(assert (=> d!1254647 (= (size!34598 lt!1510667) lt!1510781)))

(declare-fun b!4261673 () Bool)

(assert (=> b!4261673 (= e!2646423 0)))

(declare-fun b!4261674 () Bool)

(assert (=> b!4261674 (= e!2646423 (+ 1 (size!34598 (t!353185 lt!1510667))))))

(assert (= (and d!1254647 c!723937) b!4261673))

(assert (= (and d!1254647 (not c!723937)) b!4261674))

(declare-fun m!4849751 () Bool)

(assert (=> b!4261674 m!4849751))

(assert (=> b!4261109 d!1254647))

(assert (=> b!4261109 d!1254467))

(assert (=> b!4261109 d!1254199))

(declare-fun d!1254649 () Bool)

(declare-fun lt!1510782 () Int)

(assert (=> d!1254649 (>= lt!1510782 0)))

(declare-fun e!2646424 () Int)

(assert (=> d!1254649 (= lt!1510782 e!2646424)))

(declare-fun c!723938 () Bool)

(assert (=> d!1254649 (= c!723938 ((_ is Nil!47239) lt!1510659))))

(assert (=> d!1254649 (= (size!34597 lt!1510659) lt!1510782)))

(declare-fun b!4261675 () Bool)

(assert (=> b!4261675 (= e!2646424 0)))

(declare-fun b!4261676 () Bool)

(assert (=> b!4261676 (= e!2646424 (+ 1 (size!34597 (t!353186 lt!1510659))))))

(assert (= (and d!1254649 c!723938) b!4261675))

(assert (= (and d!1254649 (not c!723938)) b!4261676))

(declare-fun m!4849753 () Bool)

(assert (=> b!4261676 m!4849753))

(assert (=> b!4261063 d!1254649))

(declare-fun d!1254651 () Bool)

(declare-fun lt!1510783 () Int)

(assert (=> d!1254651 (>= lt!1510783 0)))

(declare-fun e!2646425 () Int)

(assert (=> d!1254651 (= lt!1510783 e!2646425)))

(declare-fun c!723939 () Bool)

(assert (=> d!1254651 (= c!723939 ((_ is Nil!47239) (t!353186 (map!9668 lt!1510605 f!428))))))

(assert (=> d!1254651 (= (size!34597 (t!353186 (map!9668 lt!1510605 f!428))) lt!1510783)))

(declare-fun b!4261677 () Bool)

(assert (=> b!4261677 (= e!2646425 0)))

(declare-fun b!4261678 () Bool)

(assert (=> b!4261678 (= e!2646425 (+ 1 (size!34597 (t!353186 (t!353186 (map!9668 lt!1510605 f!428))))))))

(assert (= (and d!1254651 c!723939) b!4261677))

(assert (= (and d!1254651 (not c!723939)) b!4261678))

(assert (=> b!4261678 m!4849593))

(assert (=> b!4261063 d!1254651))

(assert (=> b!4261063 d!1254187))

(assert (=> b!4261066 d!1254473))

(assert (=> b!4261066 d!1254475))

(assert (=> d!1254261 d!1254147))

(assert (=> d!1254261 d!1254149))

(assert (=> d!1254261 d!1254161))

(assert (=> d!1254261 d!1254163))

(assert (=> d!1254261 d!1254165))

(declare-fun d!1254653 () Bool)

(declare-fun res!1751637 () Bool)

(declare-fun e!2646426 () Bool)

(assert (=> d!1254653 (=> (not res!1751637) (not e!2646426))))

(assert (=> d!1254653 (= res!1751637 (= (csize!28718 (right!35350 (right!35350 t!4386))) (+ (size!34599 (left!35020 (right!35350 (right!35350 t!4386)))) (size!34599 (right!35350 (right!35350 (right!35350 t!4386)))))))))

(assert (=> d!1254653 (= (inv!62141 (right!35350 (right!35350 t!4386))) e!2646426)))

(declare-fun b!4261679 () Bool)

(declare-fun res!1751638 () Bool)

(assert (=> b!4261679 (=> (not res!1751638) (not e!2646426))))

(assert (=> b!4261679 (= res!1751638 (and (not (= (left!35020 (right!35350 (right!35350 t!4386))) Empty!14244)) (not (= (right!35350 (right!35350 (right!35350 t!4386))) Empty!14244))))))

(declare-fun b!4261680 () Bool)

(declare-fun res!1751639 () Bool)

(assert (=> b!4261680 (=> (not res!1751639) (not e!2646426))))

(assert (=> b!4261680 (= res!1751639 (= (cheight!14455 (right!35350 (right!35350 t!4386))) (+ (max!0 (height!1868 (left!35020 (right!35350 (right!35350 t!4386)))) (height!1868 (right!35350 (right!35350 (right!35350 t!4386))))) 1)))))

(declare-fun b!4261681 () Bool)

(assert (=> b!4261681 (= e!2646426 (<= 0 (cheight!14455 (right!35350 (right!35350 t!4386)))))))

(assert (= (and d!1254653 res!1751637) b!4261679))

(assert (= (and b!4261679 res!1751638) b!4261680))

(assert (= (and b!4261680 res!1751639) b!4261681))

(declare-fun m!4849755 () Bool)

(assert (=> d!1254653 m!4849755))

(declare-fun m!4849757 () Bool)

(assert (=> d!1254653 m!4849757))

(assert (=> b!4261680 m!4849457))

(assert (=> b!4261680 m!4849459))

(assert (=> b!4261680 m!4849457))

(assert (=> b!4261680 m!4849459))

(declare-fun m!4849759 () Bool)

(assert (=> b!4261680 m!4849759))

(assert (=> b!4261080 d!1254653))

(declare-fun d!1254655 () Bool)

(assert (=> d!1254655 (= ($colon$colon!631 (map!9668 (t!353185 (t!353185 (++!12031 lt!1510605 lt!1510606))) f!428) (dynLambda!20219 f!428 (h!52658 (t!353185 (++!12031 lt!1510605 lt!1510606))))) (Cons!47239 (dynLambda!20219 f!428 (h!52658 (t!353185 (++!12031 lt!1510605 lt!1510606)))) (map!9668 (t!353185 (t!353185 (++!12031 lt!1510605 lt!1510606))) f!428)))))

(assert (=> b!4261048 d!1254655))

(declare-fun d!1254657 () Bool)

(declare-fun lt!1510784 () List!47363)

(assert (=> d!1254657 (= (size!34597 lt!1510784) (size!34598 (t!353185 (t!353185 (++!12031 lt!1510605 lt!1510606)))))))

(declare-fun e!2646427 () List!47363)

(assert (=> d!1254657 (= lt!1510784 e!2646427)))

(declare-fun c!723940 () Bool)

(assert (=> d!1254657 (= c!723940 ((_ is Nil!47238) (t!353185 (t!353185 (++!12031 lt!1510605 lt!1510606)))))))

(assert (=> d!1254657 (= (map!9668 (t!353185 (t!353185 (++!12031 lt!1510605 lt!1510606))) f!428) lt!1510784)))

(declare-fun b!4261682 () Bool)

(assert (=> b!4261682 (= e!2646427 Nil!47239)))

(declare-fun b!4261683 () Bool)

(assert (=> b!4261683 (= e!2646427 ($colon$colon!631 (map!9668 (t!353185 (t!353185 (t!353185 (++!12031 lt!1510605 lt!1510606)))) f!428) (dynLambda!20219 f!428 (h!52658 (t!353185 (t!353185 (++!12031 lt!1510605 lt!1510606)))))))))

(assert (= (and d!1254657 c!723940) b!4261682))

(assert (= (and d!1254657 (not c!723940)) b!4261683))

(declare-fun b_lambda!125769 () Bool)

(assert (=> (not b_lambda!125769) (not b!4261683)))

(declare-fun t!353249 () Bool)

(declare-fun tb!256929 () Bool)

(assert (=> (and start!408286 (= f!428 f!428) t!353249) tb!256929))

(declare-fun result!313494 () Bool)

(assert (=> tb!256929 (= result!313494 tp_is_empty!22873)))

(assert (=> b!4261683 t!353249))

(declare-fun b_and!337735 () Bool)

(assert (= b_and!337733 (and (=> t!353249 result!313494) b_and!337735)))

(declare-fun m!4849761 () Bool)

(assert (=> d!1254657 m!4849761))

(assert (=> d!1254657 m!4849439))

(declare-fun m!4849763 () Bool)

(assert (=> b!4261683 m!4849763))

(declare-fun m!4849765 () Bool)

(assert (=> b!4261683 m!4849765))

(assert (=> b!4261683 m!4849763))

(assert (=> b!4261683 m!4849765))

(declare-fun m!4849767 () Bool)

(assert (=> b!4261683 m!4849767))

(assert (=> b!4261048 d!1254657))

(declare-fun d!1254659 () Bool)

(declare-fun c!723941 () Bool)

(assert (=> d!1254659 (= c!723941 ((_ is Nil!47238) (t!353185 lt!1510606)))))

(declare-fun e!2646428 () (InoxSet T!79406))

(assert (=> d!1254659 (= (content!7443 (t!353185 lt!1510606)) e!2646428)))

(declare-fun b!4261684 () Bool)

(assert (=> b!4261684 (= e!2646428 ((as const (Array T!79406 Bool)) false))))

(declare-fun b!4261685 () Bool)

(assert (=> b!4261685 (= e!2646428 ((_ map or) (store ((as const (Array T!79406 Bool)) false) (h!52658 (t!353185 lt!1510606)) true) (content!7443 (t!353185 (t!353185 lt!1510606)))))))

(assert (= (and d!1254659 c!723941) b!4261684))

(assert (= (and d!1254659 (not c!723941)) b!4261685))

(declare-fun m!4849769 () Bool)

(assert (=> b!4261685 m!4849769))

(declare-fun m!4849771 () Bool)

(assert (=> b!4261685 m!4849771))

(assert (=> b!4261094 d!1254659))

(declare-fun d!1254661 () Bool)

(assert (=> d!1254661 (= (max!0 (height!1868 (left!35020 t!4386)) (height!1868 (right!35350 t!4386))) (ite (< (height!1868 (left!35020 t!4386)) (height!1868 (right!35350 t!4386))) (height!1868 (right!35350 t!4386)) (height!1868 (left!35020 t!4386))))))

(assert (=> b!4261169 d!1254661))

(assert (=> b!4261169 d!1254173))

(assert (=> b!4261169 d!1254109))

(declare-fun d!1254663 () Bool)

(declare-fun res!1751640 () Bool)

(declare-fun e!2646429 () Bool)

(assert (=> d!1254663 (=> (not res!1751640) (not e!2646429))))

(assert (=> d!1254663 (= res!1751640 (<= (size!34598 (list!17061 (xs!17550 (left!35020 (left!35020 t!4386))))) 512))))

(assert (=> d!1254663 (= (inv!62142 (left!35020 (left!35020 t!4386))) e!2646429)))

(declare-fun b!4261686 () Bool)

(declare-fun res!1751641 () Bool)

(assert (=> b!4261686 (=> (not res!1751641) (not e!2646429))))

(assert (=> b!4261686 (= res!1751641 (= (csize!28719 (left!35020 (left!35020 t!4386))) (size!34598 (list!17061 (xs!17550 (left!35020 (left!35020 t!4386)))))))))

(declare-fun b!4261687 () Bool)

(assert (=> b!4261687 (= e!2646429 (and (> (csize!28719 (left!35020 (left!35020 t!4386))) 0) (<= (csize!28719 (left!35020 (left!35020 t!4386))) 512)))))

(assert (= (and d!1254663 res!1751640) b!4261686))

(assert (= (and b!4261686 res!1751641) b!4261687))

(assert (=> d!1254663 m!4848747))

(assert (=> d!1254663 m!4848747))

(declare-fun m!4849773 () Bool)

(assert (=> d!1254663 m!4849773))

(assert (=> b!4261686 m!4848747))

(assert (=> b!4261686 m!4848747))

(assert (=> b!4261686 m!4849773))

(assert (=> b!4261097 d!1254663))

(declare-fun b!4261688 () Bool)

(declare-fun res!1751645 () Bool)

(declare-fun e!2646431 () Bool)

(assert (=> b!4261688 (=> (not res!1751645) (not e!2646431))))

(assert (=> b!4261688 (= res!1751645 (isBalanced!3803 (right!35351 (right!35351 lt!1510616))))))

(declare-fun b!4261689 () Bool)

(declare-fun res!1751643 () Bool)

(assert (=> b!4261689 (=> (not res!1751643) (not e!2646431))))

(assert (=> b!4261689 (= res!1751643 (<= (- (height!1870 (left!35021 (right!35351 lt!1510616))) (height!1870 (right!35351 (right!35351 lt!1510616)))) 1))))

(declare-fun b!4261690 () Bool)

(assert (=> b!4261690 (= e!2646431 (not (isEmpty!27982 (right!35351 (right!35351 lt!1510616)))))))

(declare-fun d!1254665 () Bool)

(declare-fun res!1751646 () Bool)

(declare-fun e!2646430 () Bool)

(assert (=> d!1254665 (=> res!1751646 e!2646430)))

(assert (=> d!1254665 (= res!1751646 (not ((_ is Node!14245) (right!35351 lt!1510616))))))

(assert (=> d!1254665 (= (isBalanced!3803 (right!35351 lt!1510616)) e!2646430)))

(declare-fun b!4261691 () Bool)

(assert (=> b!4261691 (= e!2646430 e!2646431)))

(declare-fun res!1751642 () Bool)

(assert (=> b!4261691 (=> (not res!1751642) (not e!2646431))))

(assert (=> b!4261691 (= res!1751642 (<= (- 1) (- (height!1870 (left!35021 (right!35351 lt!1510616))) (height!1870 (right!35351 (right!35351 lt!1510616))))))))

(declare-fun b!4261692 () Bool)

(declare-fun res!1751647 () Bool)

(assert (=> b!4261692 (=> (not res!1751647) (not e!2646431))))

(assert (=> b!4261692 (= res!1751647 (not (isEmpty!27982 (left!35021 (right!35351 lt!1510616)))))))

(declare-fun b!4261693 () Bool)

(declare-fun res!1751644 () Bool)

(assert (=> b!4261693 (=> (not res!1751644) (not e!2646431))))

(assert (=> b!4261693 (= res!1751644 (isBalanced!3803 (left!35021 (right!35351 lt!1510616))))))

(assert (= (and d!1254665 (not res!1751646)) b!4261691))

(assert (= (and b!4261691 res!1751642) b!4261689))

(assert (= (and b!4261689 res!1751643) b!4261693))

(assert (= (and b!4261693 res!1751644) b!4261688))

(assert (= (and b!4261688 res!1751645) b!4261692))

(assert (= (and b!4261692 res!1751647) b!4261690))

(declare-fun m!4849775 () Bool)

(assert (=> b!4261693 m!4849775))

(declare-fun m!4849777 () Bool)

(assert (=> b!4261691 m!4849777))

(declare-fun m!4849779 () Bool)

(assert (=> b!4261691 m!4849779))

(declare-fun m!4849781 () Bool)

(assert (=> b!4261690 m!4849781))

(declare-fun m!4849783 () Bool)

(assert (=> b!4261688 m!4849783))

(declare-fun m!4849785 () Bool)

(assert (=> b!4261692 m!4849785))

(assert (=> b!4261689 m!4849777))

(assert (=> b!4261689 m!4849779))

(assert (=> b!4261202 d!1254665))

(assert (=> b!4261052 d!1254651))

(declare-fun d!1254667 () Bool)

(declare-fun lt!1510785 () Bool)

(assert (=> d!1254667 (= lt!1510785 (isEmpty!27984 (list!17059 (left!35021 lt!1510616))))))

(assert (=> d!1254667 (= lt!1510785 (= (size!34601 (left!35021 lt!1510616)) 0))))

(assert (=> d!1254667 (= (isEmpty!27982 (left!35021 lt!1510616)) lt!1510785)))

(declare-fun bs!599074 () Bool)

(assert (= bs!599074 d!1254667))

(assert (=> bs!599074 m!4848767))

(assert (=> bs!599074 m!4848767))

(declare-fun m!4849787 () Bool)

(assert (=> bs!599074 m!4849787))

(declare-fun m!4849789 () Bool)

(assert (=> bs!599074 m!4849789))

(assert (=> b!4261206 d!1254667))

(assert (=> b!4261058 d!1254419))

(declare-fun b!4261694 () Bool)

(declare-fun res!1751651 () Bool)

(declare-fun e!2646433 () Bool)

(assert (=> b!4261694 (=> (not res!1751651) (not e!2646433))))

(assert (=> b!4261694 (= res!1751651 (isBalanced!3803 (right!35351 lt!1510675)))))

(declare-fun b!4261695 () Bool)

(declare-fun res!1751649 () Bool)

(assert (=> b!4261695 (=> (not res!1751649) (not e!2646433))))

(assert (=> b!4261695 (= res!1751649 (<= (- (height!1870 (left!35021 lt!1510675)) (height!1870 (right!35351 lt!1510675))) 1))))

(declare-fun b!4261696 () Bool)

(assert (=> b!4261696 (= e!2646433 (not (isEmpty!27982 (right!35351 lt!1510675))))))

(declare-fun d!1254669 () Bool)

(declare-fun res!1751652 () Bool)

(declare-fun e!2646432 () Bool)

(assert (=> d!1254669 (=> res!1751652 e!2646432)))

(assert (=> d!1254669 (= res!1751652 (not ((_ is Node!14245) lt!1510675)))))

(assert (=> d!1254669 (= (isBalanced!3803 lt!1510675) e!2646432)))

(declare-fun b!4261697 () Bool)

(assert (=> b!4261697 (= e!2646432 e!2646433)))

(declare-fun res!1751648 () Bool)

(assert (=> b!4261697 (=> (not res!1751648) (not e!2646433))))

(assert (=> b!4261697 (= res!1751648 (<= (- 1) (- (height!1870 (left!35021 lt!1510675)) (height!1870 (right!35351 lt!1510675)))))))

(declare-fun b!4261698 () Bool)

(declare-fun res!1751653 () Bool)

(assert (=> b!4261698 (=> (not res!1751653) (not e!2646433))))

(assert (=> b!4261698 (= res!1751653 (not (isEmpty!27982 (left!35021 lt!1510675))))))

(declare-fun b!4261699 () Bool)

(declare-fun res!1751650 () Bool)

(assert (=> b!4261699 (=> (not res!1751650) (not e!2646433))))

(assert (=> b!4261699 (= res!1751650 (isBalanced!3803 (left!35021 lt!1510675)))))

(assert (= (and d!1254669 (not res!1751652)) b!4261697))

(assert (= (and b!4261697 res!1751648) b!4261695))

(assert (= (and b!4261695 res!1751649) b!4261699))

(assert (= (and b!4261699 res!1751650) b!4261694))

(assert (= (and b!4261694 res!1751651) b!4261698))

(assert (= (and b!4261698 res!1751653) b!4261696))

(declare-fun m!4849791 () Bool)

(assert (=> b!4261699 m!4849791))

(declare-fun m!4849793 () Bool)

(assert (=> b!4261697 m!4849793))

(declare-fun m!4849795 () Bool)

(assert (=> b!4261697 m!4849795))

(declare-fun m!4849797 () Bool)

(assert (=> b!4261696 m!4849797))

(declare-fun m!4849799 () Bool)

(assert (=> b!4261694 m!4849799))

(declare-fun m!4849801 () Bool)

(assert (=> b!4261698 m!4849801))

(assert (=> b!4261695 m!4849793))

(assert (=> b!4261695 m!4849795))

(assert (=> b!4261161 d!1254669))

(declare-fun d!1254671 () Bool)

(declare-fun lt!1510786 () Int)

(assert (=> d!1254671 (>= lt!1510786 0)))

(declare-fun e!2646434 () Int)

(assert (=> d!1254671 (= lt!1510786 e!2646434)))

(declare-fun c!723942 () Bool)

(assert (=> d!1254671 (= c!723942 ((_ is Nil!47239) (t!353186 lt!1510631)))))

(assert (=> d!1254671 (= (size!34597 (t!353186 lt!1510631)) lt!1510786)))

(declare-fun b!4261700 () Bool)

(assert (=> b!4261700 (= e!2646434 0)))

(declare-fun b!4261701 () Bool)

(assert (=> b!4261701 (= e!2646434 (+ 1 (size!34597 (t!353186 (t!353186 lt!1510631)))))))

(assert (= (and d!1254671 c!723942) b!4261700))

(assert (= (and d!1254671 (not c!723942)) b!4261701))

(declare-fun m!4849803 () Bool)

(assert (=> b!4261701 m!4849803))

(assert (=> b!4261167 d!1254671))

(declare-fun d!1254673 () Bool)

(assert (=> d!1254673 (= (list!17063 (xs!17551 lt!1510616)) (innerList!14305 (xs!17551 lt!1510616)))))

(assert (=> b!4261148 d!1254673))

(declare-fun b!4261704 () Bool)

(declare-fun res!1751654 () Bool)

(declare-fun e!2646436 () Bool)

(assert (=> b!4261704 (=> (not res!1751654) (not e!2646436))))

(declare-fun lt!1510787 () List!47362)

(assert (=> b!4261704 (= res!1751654 (= (size!34598 lt!1510787) (+ (size!34598 (list!17058 (left!35020 (left!35020 (right!35350 t!4386))))) (size!34598 (list!17058 (right!35350 (left!35020 (right!35350 t!4386))))))))))

(declare-fun b!4261703 () Bool)

(declare-fun e!2646435 () List!47362)

(assert (=> b!4261703 (= e!2646435 (Cons!47238 (h!52658 (list!17058 (left!35020 (left!35020 (right!35350 t!4386))))) (++!12031 (t!353185 (list!17058 (left!35020 (left!35020 (right!35350 t!4386))))) (list!17058 (right!35350 (left!35020 (right!35350 t!4386)))))))))

(declare-fun b!4261702 () Bool)

(assert (=> b!4261702 (= e!2646435 (list!17058 (right!35350 (left!35020 (right!35350 t!4386)))))))

(declare-fun d!1254675 () Bool)

(assert (=> d!1254675 e!2646436))

(declare-fun res!1751655 () Bool)

(assert (=> d!1254675 (=> (not res!1751655) (not e!2646436))))

(assert (=> d!1254675 (= res!1751655 (= (content!7443 lt!1510787) ((_ map or) (content!7443 (list!17058 (left!35020 (left!35020 (right!35350 t!4386))))) (content!7443 (list!17058 (right!35350 (left!35020 (right!35350 t!4386))))))))))

(assert (=> d!1254675 (= lt!1510787 e!2646435)))

(declare-fun c!723943 () Bool)

(assert (=> d!1254675 (= c!723943 ((_ is Nil!47238) (list!17058 (left!35020 (left!35020 (right!35350 t!4386))))))))

(assert (=> d!1254675 (= (++!12031 (list!17058 (left!35020 (left!35020 (right!35350 t!4386)))) (list!17058 (right!35350 (left!35020 (right!35350 t!4386))))) lt!1510787)))

(declare-fun b!4261705 () Bool)

(assert (=> b!4261705 (= e!2646436 (or (not (= (list!17058 (right!35350 (left!35020 (right!35350 t!4386)))) Nil!47238)) (= lt!1510787 (list!17058 (left!35020 (left!35020 (right!35350 t!4386)))))))))

(assert (= (and d!1254675 c!723943) b!4261702))

(assert (= (and d!1254675 (not c!723943)) b!4261703))

(assert (= (and d!1254675 res!1751655) b!4261704))

(assert (= (and b!4261704 res!1751654) b!4261705))

(declare-fun m!4849805 () Bool)

(assert (=> b!4261704 m!4849805))

(assert (=> b!4261704 m!4848929))

(declare-fun m!4849807 () Bool)

(assert (=> b!4261704 m!4849807))

(assert (=> b!4261704 m!4848931))

(declare-fun m!4849809 () Bool)

(assert (=> b!4261704 m!4849809))

(assert (=> b!4261703 m!4848931))

(declare-fun m!4849811 () Bool)

(assert (=> b!4261703 m!4849811))

(declare-fun m!4849813 () Bool)

(assert (=> d!1254675 m!4849813))

(assert (=> d!1254675 m!4848929))

(declare-fun m!4849815 () Bool)

(assert (=> d!1254675 m!4849815))

(assert (=> d!1254675 m!4848931))

(declare-fun m!4849817 () Bool)

(assert (=> d!1254675 m!4849817))

(assert (=> b!4261243 d!1254675))

(declare-fun b!4261707 () Bool)

(declare-fun e!2646437 () List!47362)

(declare-fun e!2646438 () List!47362)

(assert (=> b!4261707 (= e!2646437 e!2646438)))

(declare-fun c!723945 () Bool)

(assert (=> b!4261707 (= c!723945 ((_ is Leaf!22013) (left!35020 (left!35020 (right!35350 t!4386)))))))

(declare-fun d!1254677 () Bool)

(declare-fun c!723944 () Bool)

(assert (=> d!1254677 (= c!723944 ((_ is Empty!14244) (left!35020 (left!35020 (right!35350 t!4386)))))))

(assert (=> d!1254677 (= (list!17058 (left!35020 (left!35020 (right!35350 t!4386)))) e!2646437)))

(declare-fun b!4261706 () Bool)

(assert (=> b!4261706 (= e!2646437 Nil!47238)))

(declare-fun b!4261708 () Bool)

(assert (=> b!4261708 (= e!2646438 (list!17061 (xs!17550 (left!35020 (left!35020 (right!35350 t!4386))))))))

(declare-fun b!4261709 () Bool)

(assert (=> b!4261709 (= e!2646438 (++!12031 (list!17058 (left!35020 (left!35020 (left!35020 (right!35350 t!4386))))) (list!17058 (right!35350 (left!35020 (left!35020 (right!35350 t!4386)))))))))

(assert (= (and d!1254677 c!723944) b!4261706))

(assert (= (and d!1254677 (not c!723944)) b!4261707))

(assert (= (and b!4261707 c!723945) b!4261708))

(assert (= (and b!4261707 (not c!723945)) b!4261709))

(declare-fun m!4849819 () Bool)

(assert (=> b!4261708 m!4849819))

(declare-fun m!4849821 () Bool)

(assert (=> b!4261709 m!4849821))

(declare-fun m!4849823 () Bool)

(assert (=> b!4261709 m!4849823))

(assert (=> b!4261709 m!4849821))

(assert (=> b!4261709 m!4849823))

(declare-fun m!4849825 () Bool)

(assert (=> b!4261709 m!4849825))

(assert (=> b!4261243 d!1254677))

(declare-fun b!4261711 () Bool)

(declare-fun e!2646439 () List!47362)

(declare-fun e!2646440 () List!47362)

(assert (=> b!4261711 (= e!2646439 e!2646440)))

(declare-fun c!723947 () Bool)

(assert (=> b!4261711 (= c!723947 ((_ is Leaf!22013) (right!35350 (left!35020 (right!35350 t!4386)))))))

(declare-fun d!1254679 () Bool)

(declare-fun c!723946 () Bool)

(assert (=> d!1254679 (= c!723946 ((_ is Empty!14244) (right!35350 (left!35020 (right!35350 t!4386)))))))

(assert (=> d!1254679 (= (list!17058 (right!35350 (left!35020 (right!35350 t!4386)))) e!2646439)))

(declare-fun b!4261710 () Bool)

(assert (=> b!4261710 (= e!2646439 Nil!47238)))

(declare-fun b!4261712 () Bool)

(assert (=> b!4261712 (= e!2646440 (list!17061 (xs!17550 (right!35350 (left!35020 (right!35350 t!4386))))))))

(declare-fun b!4261713 () Bool)

(assert (=> b!4261713 (= e!2646440 (++!12031 (list!17058 (left!35020 (right!35350 (left!35020 (right!35350 t!4386))))) (list!17058 (right!35350 (right!35350 (left!35020 (right!35350 t!4386)))))))))

(assert (= (and d!1254679 c!723946) b!4261710))

(assert (= (and d!1254679 (not c!723946)) b!4261711))

(assert (= (and b!4261711 c!723947) b!4261712))

(assert (= (and b!4261711 (not c!723947)) b!4261713))

(declare-fun m!4849827 () Bool)

(assert (=> b!4261712 m!4849827))

(declare-fun m!4849829 () Bool)

(assert (=> b!4261713 m!4849829))

(declare-fun m!4849831 () Bool)

(assert (=> b!4261713 m!4849831))

(assert (=> b!4261713 m!4849829))

(assert (=> b!4261713 m!4849831))

(declare-fun m!4849833 () Bool)

(assert (=> b!4261713 m!4849833))

(assert (=> b!4261243 d!1254679))

(declare-fun d!1254681 () Bool)

(assert (=> d!1254681 (= (map!9668 (++!12031 (list!17058 (left!35020 (right!35350 (left!35020 t!4386)))) (list!17058 (right!35350 (right!35350 (left!35020 t!4386))))) f!428) (++!12032 (map!9668 (list!17058 (left!35020 (right!35350 (left!35020 t!4386)))) f!428) (map!9668 (list!17058 (right!35350 (right!35350 (left!35020 t!4386)))) f!428)))))

(declare-fun lt!1510788 () Unit!66135)

(assert (=> d!1254681 (= lt!1510788 (choose!25984 (list!17058 (left!35020 (right!35350 (left!35020 t!4386)))) (list!17058 (right!35350 (right!35350 (left!35020 t!4386)))) f!428))))

(assert (=> d!1254681 (= (lemmaMapConcat!30 (list!17058 (left!35020 (right!35350 (left!35020 t!4386)))) (list!17058 (right!35350 (right!35350 (left!35020 t!4386)))) f!428) lt!1510788)))

(declare-fun bs!599075 () Bool)

(assert (= bs!599075 d!1254681))

(assert (=> bs!599075 m!4848757))

(declare-fun m!4849835 () Bool)

(assert (=> bs!599075 m!4849835))

(assert (=> bs!599075 m!4848757))

(assert (=> bs!599075 m!4848759))

(assert (=> bs!599075 m!4848761))

(assert (=> bs!599075 m!4848757))

(assert (=> bs!599075 m!4848759))

(declare-fun m!4849837 () Bool)

(assert (=> bs!599075 m!4849837))

(assert (=> bs!599075 m!4849835))

(declare-fun m!4849839 () Bool)

(assert (=> bs!599075 m!4849839))

(declare-fun m!4849841 () Bool)

(assert (=> bs!599075 m!4849841))

(assert (=> bs!599075 m!4848759))

(assert (=> bs!599075 m!4849839))

(assert (=> bs!599075 m!4848761))

(declare-fun m!4849843 () Bool)

(assert (=> bs!599075 m!4849843))

(assert (=> b!4261157 d!1254681))

(assert (=> b!4261157 d!1254643))

(declare-fun b!4261714 () Bool)

(declare-fun e!2646443 () Conc!14245)

(assert (=> b!4261714 (= e!2646443 Empty!14245)))

(declare-fun b!4261715 () Bool)

(declare-fun e!2646442 () Conc!14245)

(assert (=> b!4261715 (= e!2646442 (Leaf!22014 (map!9669 (xs!17550 (right!35350 (right!35350 (left!35020 t!4386)))) f!428) (csize!28719 (right!35350 (right!35350 (left!35020 t!4386))))))))

(declare-fun b!4261716 () Bool)

(declare-fun e!2646441 () Bool)

(declare-fun lt!1510789 () Conc!14245)

(assert (=> b!4261716 (= e!2646441 (isBalanced!3803 lt!1510789))))

(declare-fun b!4261717 () Bool)

(declare-fun lt!1510790 () Unit!66135)

(assert (=> b!4261717 (= lt!1510790 (lemmaMapConcat!30 (list!17058 (left!35020 (right!35350 (right!35350 (left!35020 t!4386))))) (list!17058 (right!35350 (right!35350 (right!35350 (left!35020 t!4386))))) f!428))))

(assert (=> b!4261717 (= e!2646442 (Node!14245 (map!9667 (left!35020 (right!35350 (right!35350 (left!35020 t!4386)))) f!428) (map!9667 (right!35350 (right!35350 (right!35350 (left!35020 t!4386)))) f!428) (csize!28718 (right!35350 (right!35350 (left!35020 t!4386)))) (cheight!14455 (right!35350 (right!35350 (left!35020 t!4386))))))))

(declare-fun d!1254683 () Bool)

(assert (=> d!1254683 e!2646441))

(declare-fun res!1751656 () Bool)

(assert (=> d!1254683 (=> (not res!1751656) (not e!2646441))))

(assert (=> d!1254683 (= res!1751656 (= (list!17059 lt!1510789) (map!9668 (list!17058 (right!35350 (right!35350 (left!35020 t!4386)))) f!428)))))

(assert (=> d!1254683 (= lt!1510789 e!2646443)))

(declare-fun c!723948 () Bool)

(assert (=> d!1254683 (= c!723948 ((_ is Empty!14244) (right!35350 (right!35350 (left!35020 t!4386)))))))

(assert (=> d!1254683 (isBalanced!3802 (right!35350 (right!35350 (left!35020 t!4386))))))

(assert (=> d!1254683 (= (map!9667 (right!35350 (right!35350 (left!35020 t!4386))) f!428) lt!1510789)))

(declare-fun b!4261718 () Bool)

(assert (=> b!4261718 (= e!2646443 e!2646442)))

(declare-fun c!723949 () Bool)

(assert (=> b!4261718 (= c!723949 ((_ is Leaf!22013) (right!35350 (right!35350 (left!35020 t!4386)))))))

(assert (= (and d!1254683 c!723948) b!4261714))

(assert (= (and d!1254683 (not c!723948)) b!4261718))

(assert (= (and b!4261718 c!723949) b!4261715))

(assert (= (and b!4261718 (not c!723949)) b!4261717))

(assert (= (and d!1254683 res!1751656) b!4261716))

(declare-fun m!4849845 () Bool)

(assert (=> b!4261715 m!4849845))

(declare-fun m!4849847 () Bool)

(assert (=> b!4261716 m!4849847))

(declare-fun m!4849849 () Bool)

(assert (=> b!4261717 m!4849849))

(assert (=> b!4261717 m!4849745))

(assert (=> b!4261717 m!4849747))

(assert (=> b!4261717 m!4849745))

(assert (=> b!4261717 m!4849747))

(declare-fun m!4849851 () Bool)

(assert (=> b!4261717 m!4849851))

(declare-fun m!4849853 () Bool)

(assert (=> b!4261717 m!4849853))

(declare-fun m!4849855 () Bool)

(assert (=> d!1254683 m!4849855))

(assert (=> d!1254683 m!4848759))

(assert (=> d!1254683 m!4848759))

(assert (=> d!1254683 m!4849839))

(assert (=> d!1254683 m!4849271))

(assert (=> b!4261157 d!1254683))

(declare-fun b!4261719 () Bool)

(declare-fun e!2646446 () Conc!14245)

(assert (=> b!4261719 (= e!2646446 Empty!14245)))

(declare-fun b!4261720 () Bool)

(declare-fun e!2646445 () Conc!14245)

(assert (=> b!4261720 (= e!2646445 (Leaf!22014 (map!9669 (xs!17550 (left!35020 (right!35350 (left!35020 t!4386)))) f!428) (csize!28719 (left!35020 (right!35350 (left!35020 t!4386))))))))

(declare-fun b!4261721 () Bool)

(declare-fun e!2646444 () Bool)

(declare-fun lt!1510791 () Conc!14245)

(assert (=> b!4261721 (= e!2646444 (isBalanced!3803 lt!1510791))))

(declare-fun b!4261722 () Bool)

(declare-fun lt!1510792 () Unit!66135)

(assert (=> b!4261722 (= lt!1510792 (lemmaMapConcat!30 (list!17058 (left!35020 (left!35020 (right!35350 (left!35020 t!4386))))) (list!17058 (right!35350 (left!35020 (right!35350 (left!35020 t!4386))))) f!428))))

(assert (=> b!4261722 (= e!2646445 (Node!14245 (map!9667 (left!35020 (left!35020 (right!35350 (left!35020 t!4386)))) f!428) (map!9667 (right!35350 (left!35020 (right!35350 (left!35020 t!4386)))) f!428) (csize!28718 (left!35020 (right!35350 (left!35020 t!4386)))) (cheight!14455 (left!35020 (right!35350 (left!35020 t!4386))))))))

(declare-fun d!1254685 () Bool)

(assert (=> d!1254685 e!2646444))

(declare-fun res!1751657 () Bool)

(assert (=> d!1254685 (=> (not res!1751657) (not e!2646444))))

(assert (=> d!1254685 (= res!1751657 (= (list!17059 lt!1510791) (map!9668 (list!17058 (left!35020 (right!35350 (left!35020 t!4386)))) f!428)))))

(assert (=> d!1254685 (= lt!1510791 e!2646446)))

(declare-fun c!723950 () Bool)

(assert (=> d!1254685 (= c!723950 ((_ is Empty!14244) (left!35020 (right!35350 (left!35020 t!4386)))))))

(assert (=> d!1254685 (isBalanced!3802 (left!35020 (right!35350 (left!35020 t!4386))))))

(assert (=> d!1254685 (= (map!9667 (left!35020 (right!35350 (left!35020 t!4386))) f!428) lt!1510791)))

(declare-fun b!4261723 () Bool)

(assert (=> b!4261723 (= e!2646446 e!2646445)))

(declare-fun c!723951 () Bool)

(assert (=> b!4261723 (= c!723951 ((_ is Leaf!22013) (left!35020 (right!35350 (left!35020 t!4386)))))))

(assert (= (and d!1254685 c!723950) b!4261719))

(assert (= (and d!1254685 (not c!723950)) b!4261723))

(assert (= (and b!4261723 c!723951) b!4261720))

(assert (= (and b!4261723 (not c!723951)) b!4261722))

(assert (= (and d!1254685 res!1751657) b!4261721))

(declare-fun m!4849857 () Bool)

(assert (=> b!4261720 m!4849857))

(declare-fun m!4849859 () Bool)

(assert (=> b!4261721 m!4849859))

(declare-fun m!4849861 () Bool)

(assert (=> b!4261722 m!4849861))

(assert (=> b!4261722 m!4849737))

(assert (=> b!4261722 m!4849739))

(assert (=> b!4261722 m!4849737))

(assert (=> b!4261722 m!4849739))

(declare-fun m!4849863 () Bool)

(assert (=> b!4261722 m!4849863))

(declare-fun m!4849865 () Bool)

(assert (=> b!4261722 m!4849865))

(declare-fun m!4849867 () Bool)

(assert (=> d!1254685 m!4849867))

(assert (=> d!1254685 m!4848757))

(assert (=> d!1254685 m!4848757))

(assert (=> d!1254685 m!4849835))

(assert (=> d!1254685 m!4849267))

(assert (=> b!4261157 d!1254685))

(assert (=> b!4261157 d!1254645))

(declare-fun d!1254687 () Bool)

(assert (=> d!1254687 (= (inv!62138 (xs!17550 (right!35350 (left!35020 t!4386)))) (<= (size!34598 (innerList!14304 (xs!17550 (right!35350 (left!35020 t!4386))))) 2147483647))))

(declare-fun bs!599076 () Bool)

(assert (= bs!599076 d!1254687))

(declare-fun m!4849869 () Bool)

(assert (=> bs!599076 m!4849869))

(assert (=> b!4261266 d!1254687))

(declare-fun d!1254689 () Bool)

(declare-fun lt!1510793 () Int)

(assert (=> d!1254689 (>= lt!1510793 0)))

(declare-fun e!2646447 () Int)

(assert (=> d!1254689 (= lt!1510793 e!2646447)))

(declare-fun c!723952 () Bool)

(assert (=> d!1254689 (= c!723952 ((_ is Nil!47239) (t!353186 lt!1510630)))))

(assert (=> d!1254689 (= (size!34597 (t!353186 lt!1510630)) lt!1510793)))

(declare-fun b!4261724 () Bool)

(assert (=> b!4261724 (= e!2646447 0)))

(declare-fun b!4261725 () Bool)

(assert (=> b!4261725 (= e!2646447 (+ 1 (size!34597 (t!353186 (t!353186 lt!1510630)))))))

(assert (= (and d!1254689 c!723952) b!4261724))

(assert (= (and d!1254689 (not c!723952)) b!4261725))

(declare-fun m!4849871 () Bool)

(assert (=> b!4261725 m!4849871))

(assert (=> b!4261040 d!1254689))

(declare-fun d!1254691 () Bool)

(declare-fun res!1751658 () Bool)

(declare-fun e!2646448 () Bool)

(assert (=> d!1254691 (=> (not res!1751658) (not e!2646448))))

(assert (=> d!1254691 (= res!1751658 (<= (size!34598 (list!17061 (xs!17550 (right!35350 (left!35020 t!4386))))) 512))))

(assert (=> d!1254691 (= (inv!62142 (right!35350 (left!35020 t!4386))) e!2646448)))

(declare-fun b!4261726 () Bool)

(declare-fun res!1751659 () Bool)

(assert (=> b!4261726 (=> (not res!1751659) (not e!2646448))))

(assert (=> b!4261726 (= res!1751659 (= (csize!28719 (right!35350 (left!35020 t!4386))) (size!34598 (list!17061 (xs!17550 (right!35350 (left!35020 t!4386)))))))))

(declare-fun b!4261727 () Bool)

(assert (=> b!4261727 (= e!2646448 (and (> (csize!28719 (right!35350 (left!35020 t!4386))) 0) (<= (csize!28719 (right!35350 (left!35020 t!4386))) 512)))))

(assert (= (and d!1254691 res!1751658) b!4261726))

(assert (= (and b!4261726 res!1751659) b!4261727))

(assert (=> d!1254691 m!4848755))

(assert (=> d!1254691 m!4848755))

(declare-fun m!4849873 () Bool)

(assert (=> d!1254691 m!4849873))

(assert (=> b!4261726 m!4848755))

(assert (=> b!4261726 m!4848755))

(assert (=> b!4261726 m!4849873))

(assert (=> b!4261100 d!1254691))

(declare-fun b!4261728 () Bool)

(declare-fun e!2646449 () Bool)

(declare-fun tp!1307024 () Bool)

(assert (=> b!4261728 (= e!2646449 (and tp_is_empty!22877 tp!1307024))))

(assert (=> b!4261264 (= tp!1307000 e!2646449)))

(assert (= (and b!4261264 ((_ is Cons!47238) (innerList!14304 (xs!17550 (left!35020 (left!35020 t!4386)))))) b!4261728))

(declare-fun b!4261729 () Bool)

(declare-fun e!2646450 () Bool)

(declare-fun tp!1307025 () Bool)

(assert (=> b!4261729 (= e!2646450 (and tp_is_empty!22877 tp!1307025))))

(assert (=> b!4261261 (= tp!1306997 e!2646450)))

(assert (= (and b!4261261 ((_ is Cons!47238) (innerList!14304 (xs!17550 (right!35350 (right!35350 t!4386)))))) b!4261729))

(declare-fun b!4261730 () Bool)

(declare-fun e!2646451 () Bool)

(declare-fun tp!1307026 () Bool)

(assert (=> b!4261730 (= e!2646451 (and tp_is_empty!22877 tp!1307026))))

(assert (=> b!4261252 (= tp!1306992 e!2646451)))

(assert (= (and b!4261252 ((_ is Cons!47238) (t!353185 (innerList!14304 (xs!17550 (left!35020 t!4386)))))) b!4261730))

(declare-fun e!2646453 () Bool)

(declare-fun tp!1307029 () Bool)

(declare-fun tp!1307027 () Bool)

(declare-fun b!4261731 () Bool)

(assert (=> b!4261731 (= e!2646453 (and (inv!62137 (left!35020 (left!35020 (left!35020 (left!35020 t!4386))))) tp!1307029 (inv!62137 (right!35350 (left!35020 (left!35020 (left!35020 t!4386))))) tp!1307027))))

(declare-fun b!4261733 () Bool)

(declare-fun e!2646452 () Bool)

(declare-fun tp!1307028 () Bool)

(assert (=> b!4261733 (= e!2646452 tp!1307028)))

(declare-fun b!4261732 () Bool)

(assert (=> b!4261732 (= e!2646453 (and (inv!62138 (xs!17550 (left!35020 (left!35020 (left!35020 t!4386))))) e!2646452))))

(assert (=> b!4261262 (= tp!1307001 (and (inv!62137 (left!35020 (left!35020 (left!35020 t!4386)))) e!2646453))))

(assert (= (and b!4261262 ((_ is Node!14244) (left!35020 (left!35020 (left!35020 t!4386))))) b!4261731))

(assert (= b!4261732 b!4261733))

(assert (= (and b!4261262 ((_ is Leaf!22013) (left!35020 (left!35020 (left!35020 t!4386))))) b!4261732))

(declare-fun m!4849875 () Bool)

(assert (=> b!4261731 m!4849875))

(declare-fun m!4849877 () Bool)

(assert (=> b!4261731 m!4849877))

(declare-fun m!4849879 () Bool)

(assert (=> b!4261732 m!4849879))

(assert (=> b!4261262 m!4848967))

(declare-fun tp!1307030 () Bool)

(declare-fun b!4261734 () Bool)

(declare-fun tp!1307032 () Bool)

(declare-fun e!2646455 () Bool)

(assert (=> b!4261734 (= e!2646455 (and (inv!62137 (left!35020 (right!35350 (left!35020 (left!35020 t!4386))))) tp!1307032 (inv!62137 (right!35350 (right!35350 (left!35020 (left!35020 t!4386))))) tp!1307030))))

(declare-fun b!4261736 () Bool)

(declare-fun e!2646454 () Bool)

(declare-fun tp!1307031 () Bool)

(assert (=> b!4261736 (= e!2646454 tp!1307031)))

(declare-fun b!4261735 () Bool)

(assert (=> b!4261735 (= e!2646455 (and (inv!62138 (xs!17550 (right!35350 (left!35020 (left!35020 t!4386))))) e!2646454))))

(assert (=> b!4261262 (= tp!1306999 (and (inv!62137 (right!35350 (left!35020 (left!35020 t!4386)))) e!2646455))))

(assert (= (and b!4261262 ((_ is Node!14244) (right!35350 (left!35020 (left!35020 t!4386))))) b!4261734))

(assert (= b!4261735 b!4261736))

(assert (= (and b!4261262 ((_ is Leaf!22013) (right!35350 (left!35020 (left!35020 t!4386))))) b!4261735))

(declare-fun m!4849881 () Bool)

(assert (=> b!4261734 m!4849881))

(declare-fun m!4849883 () Bool)

(assert (=> b!4261734 m!4849883))

(declare-fun m!4849885 () Bool)

(assert (=> b!4261735 m!4849885))

(assert (=> b!4261262 m!4848969))

(declare-fun tp!1307033 () Bool)

(declare-fun e!2646457 () Bool)

(declare-fun b!4261737 () Bool)

(declare-fun tp!1307035 () Bool)

(assert (=> b!4261737 (= e!2646457 (and (inv!62137 (left!35020 (left!35020 (right!35350 (right!35350 t!4386))))) tp!1307035 (inv!62137 (right!35350 (left!35020 (right!35350 (right!35350 t!4386))))) tp!1307033))))

(declare-fun b!4261739 () Bool)

(declare-fun e!2646456 () Bool)

(declare-fun tp!1307034 () Bool)

(assert (=> b!4261739 (= e!2646456 tp!1307034)))

(declare-fun b!4261738 () Bool)

(assert (=> b!4261738 (= e!2646457 (and (inv!62138 (xs!17550 (left!35020 (right!35350 (right!35350 t!4386))))) e!2646456))))

(assert (=> b!4261259 (= tp!1306998 (and (inv!62137 (left!35020 (right!35350 (right!35350 t!4386)))) e!2646457))))

(assert (= (and b!4261259 ((_ is Node!14244) (left!35020 (right!35350 (right!35350 t!4386))))) b!4261737))

(assert (= b!4261738 b!4261739))

(assert (= (and b!4261259 ((_ is Leaf!22013) (left!35020 (right!35350 (right!35350 t!4386))))) b!4261738))

(declare-fun m!4849887 () Bool)

(assert (=> b!4261737 m!4849887))

(declare-fun m!4849889 () Bool)

(assert (=> b!4261737 m!4849889))

(declare-fun m!4849891 () Bool)

(assert (=> b!4261738 m!4849891))

(assert (=> b!4261259 m!4848961))

(declare-fun e!2646459 () Bool)

(declare-fun tp!1307036 () Bool)

(declare-fun tp!1307038 () Bool)

(declare-fun b!4261740 () Bool)

(assert (=> b!4261740 (= e!2646459 (and (inv!62137 (left!35020 (right!35350 (right!35350 (right!35350 t!4386))))) tp!1307038 (inv!62137 (right!35350 (right!35350 (right!35350 (right!35350 t!4386))))) tp!1307036))))

(declare-fun b!4261742 () Bool)

(declare-fun e!2646458 () Bool)

(declare-fun tp!1307037 () Bool)

(assert (=> b!4261742 (= e!2646458 tp!1307037)))

(declare-fun b!4261741 () Bool)

(assert (=> b!4261741 (= e!2646459 (and (inv!62138 (xs!17550 (right!35350 (right!35350 (right!35350 t!4386))))) e!2646458))))

(assert (=> b!4261259 (= tp!1306996 (and (inv!62137 (right!35350 (right!35350 (right!35350 t!4386)))) e!2646459))))

(assert (= (and b!4261259 ((_ is Node!14244) (right!35350 (right!35350 (right!35350 t!4386))))) b!4261740))

(assert (= b!4261741 b!4261742))

(assert (= (and b!4261259 ((_ is Leaf!22013) (right!35350 (right!35350 (right!35350 t!4386))))) b!4261741))

(declare-fun m!4849893 () Bool)

(assert (=> b!4261740 m!4849893))

(declare-fun m!4849895 () Bool)

(assert (=> b!4261740 m!4849895))

(declare-fun m!4849897 () Bool)

(assert (=> b!4261741 m!4849897))

(assert (=> b!4261259 m!4848963))

(declare-fun tp!1307041 () Bool)

(declare-fun tp!1307039 () Bool)

(declare-fun e!2646461 () Bool)

(declare-fun b!4261743 () Bool)

(assert (=> b!4261743 (= e!2646461 (and (inv!62137 (left!35020 (left!35020 (right!35350 (left!35020 t!4386))))) tp!1307041 (inv!62137 (right!35350 (left!35020 (right!35350 (left!35020 t!4386))))) tp!1307039))))

(declare-fun b!4261745 () Bool)

(declare-fun e!2646460 () Bool)

(declare-fun tp!1307040 () Bool)

(assert (=> b!4261745 (= e!2646460 tp!1307040)))

(declare-fun b!4261744 () Bool)

(assert (=> b!4261744 (= e!2646461 (and (inv!62138 (xs!17550 (left!35020 (right!35350 (left!35020 t!4386))))) e!2646460))))

(assert (=> b!4261265 (= tp!1307004 (and (inv!62137 (left!35020 (right!35350 (left!35020 t!4386)))) e!2646461))))

(assert (= (and b!4261265 ((_ is Node!14244) (left!35020 (right!35350 (left!35020 t!4386))))) b!4261743))

(assert (= b!4261744 b!4261745))

(assert (= (and b!4261265 ((_ is Leaf!22013) (left!35020 (right!35350 (left!35020 t!4386))))) b!4261744))

(declare-fun m!4849899 () Bool)

(assert (=> b!4261743 m!4849899))

(declare-fun m!4849901 () Bool)

(assert (=> b!4261743 m!4849901))

(declare-fun m!4849903 () Bool)

(assert (=> b!4261744 m!4849903))

(assert (=> b!4261265 m!4848973))

(declare-fun b!4261746 () Bool)

(declare-fun e!2646463 () Bool)

(declare-fun tp!1307042 () Bool)

(declare-fun tp!1307044 () Bool)

(assert (=> b!4261746 (= e!2646463 (and (inv!62137 (left!35020 (right!35350 (right!35350 (left!35020 t!4386))))) tp!1307044 (inv!62137 (right!35350 (right!35350 (right!35350 (left!35020 t!4386))))) tp!1307042))))

(declare-fun b!4261748 () Bool)

(declare-fun e!2646462 () Bool)

(declare-fun tp!1307043 () Bool)

(assert (=> b!4261748 (= e!2646462 tp!1307043)))

(declare-fun b!4261747 () Bool)

(assert (=> b!4261747 (= e!2646463 (and (inv!62138 (xs!17550 (right!35350 (right!35350 (left!35020 t!4386))))) e!2646462))))

(assert (=> b!4261265 (= tp!1307002 (and (inv!62137 (right!35350 (right!35350 (left!35020 t!4386)))) e!2646463))))

(assert (= (and b!4261265 ((_ is Node!14244) (right!35350 (right!35350 (left!35020 t!4386))))) b!4261746))

(assert (= b!4261747 b!4261748))

(assert (= (and b!4261265 ((_ is Leaf!22013) (right!35350 (right!35350 (left!35020 t!4386))))) b!4261747))

(declare-fun m!4849905 () Bool)

(assert (=> b!4261746 m!4849905))

(declare-fun m!4849907 () Bool)

(assert (=> b!4261746 m!4849907))

(declare-fun m!4849909 () Bool)

(assert (=> b!4261747 m!4849909))

(assert (=> b!4261265 m!4848975))

(declare-fun tp!1307045 () Bool)

(declare-fun tp!1307047 () Bool)

(declare-fun e!2646465 () Bool)

(declare-fun b!4261749 () Bool)

(assert (=> b!4261749 (= e!2646465 (and (inv!62137 (left!35020 (left!35020 (left!35020 (right!35350 t!4386))))) tp!1307047 (inv!62137 (right!35350 (left!35020 (left!35020 (right!35350 t!4386))))) tp!1307045))))

(declare-fun b!4261751 () Bool)

(declare-fun e!2646464 () Bool)

(declare-fun tp!1307046 () Bool)

(assert (=> b!4261751 (= e!2646464 tp!1307046)))

(declare-fun b!4261750 () Bool)

(assert (=> b!4261750 (= e!2646465 (and (inv!62138 (xs!17550 (left!35020 (left!35020 (right!35350 t!4386))))) e!2646464))))

(assert (=> b!4261256 (= tp!1306995 (and (inv!62137 (left!35020 (left!35020 (right!35350 t!4386)))) e!2646465))))

(assert (= (and b!4261256 ((_ is Node!14244) (left!35020 (left!35020 (right!35350 t!4386))))) b!4261749))

(assert (= b!4261750 b!4261751))

(assert (= (and b!4261256 ((_ is Leaf!22013) (left!35020 (left!35020 (right!35350 t!4386))))) b!4261750))

(declare-fun m!4849911 () Bool)

(assert (=> b!4261749 m!4849911))

(declare-fun m!4849913 () Bool)

(assert (=> b!4261749 m!4849913))

(declare-fun m!4849915 () Bool)

(assert (=> b!4261750 m!4849915))

(assert (=> b!4261256 m!4848949))

(declare-fun tp!1307048 () Bool)

(declare-fun tp!1307050 () Bool)

(declare-fun b!4261752 () Bool)

(declare-fun e!2646467 () Bool)

(assert (=> b!4261752 (= e!2646467 (and (inv!62137 (left!35020 (right!35350 (left!35020 (right!35350 t!4386))))) tp!1307050 (inv!62137 (right!35350 (right!35350 (left!35020 (right!35350 t!4386))))) tp!1307048))))

(declare-fun b!4261754 () Bool)

(declare-fun e!2646466 () Bool)

(declare-fun tp!1307049 () Bool)

(assert (=> b!4261754 (= e!2646466 tp!1307049)))

(declare-fun b!4261753 () Bool)

(assert (=> b!4261753 (= e!2646467 (and (inv!62138 (xs!17550 (right!35350 (left!35020 (right!35350 t!4386))))) e!2646466))))

(assert (=> b!4261256 (= tp!1306993 (and (inv!62137 (right!35350 (left!35020 (right!35350 t!4386)))) e!2646467))))

(assert (= (and b!4261256 ((_ is Node!14244) (right!35350 (left!35020 (right!35350 t!4386))))) b!4261752))

(assert (= b!4261753 b!4261754))

(assert (= (and b!4261256 ((_ is Leaf!22013) (right!35350 (left!35020 (right!35350 t!4386))))) b!4261753))

(declare-fun m!4849917 () Bool)

(assert (=> b!4261752 m!4849917))

(declare-fun m!4849919 () Bool)

(assert (=> b!4261752 m!4849919))

(declare-fun m!4849921 () Bool)

(assert (=> b!4261753 m!4849921))

(assert (=> b!4261256 m!4848953))

(declare-fun b!4261755 () Bool)

(declare-fun e!2646468 () Bool)

(declare-fun tp!1307051 () Bool)

(assert (=> b!4261755 (= e!2646468 (and tp_is_empty!22877 tp!1307051))))

(assert (=> b!4261268 (= tp!1307005 e!2646468)))

(assert (= (and b!4261268 ((_ is Cons!47238) (t!353185 (t!353185 (innerList!14304 (xs!17550 t!4386)))))) b!4261755))

(declare-fun b!4261756 () Bool)

(declare-fun e!2646469 () Bool)

(declare-fun tp!1307052 () Bool)

(assert (=> b!4261756 (= e!2646469 (and tp_is_empty!22877 tp!1307052))))

(assert (=> b!4261251 (= tp!1306991 e!2646469)))

(assert (= (and b!4261251 ((_ is Cons!47238) (t!353185 (innerList!14304 (xs!17550 (right!35350 t!4386)))))) b!4261756))

(declare-fun b!4261757 () Bool)

(declare-fun e!2646470 () Bool)

(declare-fun tp!1307053 () Bool)

(assert (=> b!4261757 (= e!2646470 (and tp_is_empty!22877 tp!1307053))))

(assert (=> b!4261267 (= tp!1307003 e!2646470)))

(assert (= (and b!4261267 ((_ is Cons!47238) (innerList!14304 (xs!17550 (right!35350 (left!35020 t!4386)))))) b!4261757))

(declare-fun b!4261758 () Bool)

(declare-fun e!2646471 () Bool)

(declare-fun tp!1307054 () Bool)

(assert (=> b!4261758 (= e!2646471 (and tp_is_empty!22877 tp!1307054))))

(assert (=> b!4261258 (= tp!1306994 e!2646471)))

(assert (= (and b!4261258 ((_ is Cons!47238) (innerList!14304 (xs!17550 (left!35020 (right!35350 t!4386)))))) b!4261758))

(declare-fun b_lambda!125771 () Bool)

(assert (= b_lambda!125761 (or (and start!408286 b_free!126685) b_lambda!125771)))

(declare-fun b_lambda!125773 () Bool)

(assert (= b_lambda!125759 (or (and start!408286 b_free!126685) b_lambda!125773)))

(declare-fun b_lambda!125775 () Bool)

(assert (= b_lambda!125765 (or (and start!408286 b_free!126685) b_lambda!125775)))

(declare-fun b_lambda!125777 () Bool)

(assert (= b_lambda!125755 (or (and start!408286 b_free!126685) b_lambda!125777)))

(declare-fun b_lambda!125779 () Bool)

(assert (= b_lambda!125767 (or (and start!408286 b_free!126685) b_lambda!125779)))

(declare-fun b_lambda!125781 () Bool)

(assert (= b_lambda!125757 (or (and start!408286 b_free!126685) b_lambda!125781)))

(declare-fun b_lambda!125783 () Bool)

(assert (= b_lambda!125769 (or (and start!408286 b_free!126685) b_lambda!125783)))

(declare-fun b_lambda!125785 () Bool)

(assert (= b_lambda!125763 (or (and start!408286 b_free!126685) b_lambda!125785)))

(check-sat (not b!4261752) (not b_lambda!125777) (not d!1254595) (not b!4261685) (not b!4261662) (not d!1254663) (not b!4261590) (not b!4261647) (not b!4261733) (not b!4261259) (not d!1254631) (not b!4261466) (not b!4261641) (not d!1254567) (not d!1254657) (not d!1254439) (not b!4261732) (not b!4261613) (not b!4261456) (not b!4261256) (not d!1254619) (not d!1254417) (not b!4261607) (not b!4261540) (not b_lambda!125779) (not b!4261649) (not b!4261728) (not b!4261701) (not d!1254437) (not b_lambda!125785) (not b!4261698) (not b!4261725) (not b!4261440) (not b!4261543) (not d!1254691) (not b!4261570) (not d!1254435) (not b!4261432) (not b!4261474) (not b!4261696) (not b!4261498) (not b!4261450) (not d!1254609) (not b_lambda!125731) (not b!4261454) (not b!4261447) (not d!1254501) (not b!4261755) (not b!4261697) (not b!4261692) (not b!4261748) (not b_lambda!125721) (not b_next!127389) (not b!4261522) tp_is_empty!22873 (not b!4261708) (not b!4261527) (not b!4261672) (not d!1254639) (not b!4261469) (not b!4261686) (not b!4261595) (not d!1254575) (not b!4261437) (not b!4261720) (not d!1254571) (not b!4261536) (not b!4261526) (not b!4261635) (not b!4261480) (not b!4261528) (not b!4261464) (not b!4261511) (not d!1254579) (not b!4261443) (not b!4261586) (not b!4261624) (not b!4261628) (not b!4261465) (not d!1254443) (not b!4261735) (not d!1254497) (not b!4261582) (not b!4261530) (not d!1254585) (not d!1254641) (not b!4261433) (not b!4261523) (not b!4261499) (not b!4261573) (not b!4261568) (not d!1254577) (not b!4261644) (not b!4261588) (not b!4261584) (not b!4261428) (not b!4261538) (not d!1254547) (not d!1254485) (not b!4261592) (not b!4261558) (not b!4261611) (not b!4261667) (not b!4261557) (not b!4261561) (not d!1254549) (not b_lambda!125773) (not b!4261463) (not b!4261546) (not b!4261674) (not b!4261461) (not b!4261438) (not b!4261525) (not b!4261470) (not b!4261441) (not b!4261514) (not d!1254681) (not b!4261615) (not b!4261715) (not b!4261695) (not b!4261580) (not b!4261434) (not b!4261552) (not b!4261594) (not d!1254667) (not b!4261652) (not d!1254521) (not b!4261484) (not b!4261426) (not d!1254519) (not b!4261508) (not b!4261475) (not b!4261496) (not d!1254433) (not d!1254445) (not b!4261633) (not b!4261726) (not d!1254499) (not b!4261563) (not b!4261722) (not b!4261489) (not d!1254637) (not b_lambda!125781) (not b!4261646) (not b!4261547) (not b!4261691) (not d!1254421) (not b!4261609) (not b!4261533) (not b!4261704) (not b!4261492) (not b!4261617) (not d!1254463) (not b!4261694) (not b!4261265) (not b!4261751) (not b!4261462) (not b_lambda!125771) (not b!4261645) (not b!4261631) (not b!4261429) (not b!4261639) (not b!4261745) (not b!4261648) (not b!4261554) (not b!4261458) (not b!4261750) (not b!4261663) (not b!4261473) (not b!4261699) (not b!4261521) (not b!4261444) (not b!4261680) (not b!4261560) (not b!4261650) (not b!4261678) (not b!4261756) (not d!1254525) (not b!4261690) (not b!4261693) (not d!1254687) b_and!337735 (not b!4261519) (not b_lambda!125717) (not b!4261716) (not d!1254479) (not b!4261503) (not d!1254675) (not b!4261712) (not b_lambda!125737) (not d!1254581) (not b!4261598) (not b!4261753) (not b!4261431) (not b!4261734) (not b!4261739) (not b!4261657) (not b!4261668) (not b!4261629) (not b!4261729) (not b!4261731) (not b!4261575) (not b!4261747) (not b!4261468) (not b!4261738) (not b!4261625) (not b!4261643) (not b_lambda!125735) (not b!4261494) (not d!1254505) (not b!4261709) (not b!4261504) (not b!4261510) (not d!1254633) (not b!4261683) (not b!4261655) (not b!4261262) (not b!4261671) (not b!4261758) (not b!4261532) (not b!4261717) (not b!4261746) (not b!4261743) (not b!4261449) (not b!4261637) (not b_lambda!125783) (not b!4261483) (not b!4261542) (not b!4261713) (not b!4261740) (not b!4261442) (not b!4261507) (not b!4261620) (not b!4261602) (not b!4261446) (not b_lambda!125719) (not b!4261653) (not b!4261430) (not b!4261520) (not b_lambda!125733) (not b!4261524) (not b!4261479) (not d!1254635) (not b!4261619) (not b!4261604) (not b!4261749) (not b!4261741) (not d!1254449) (not b!4261744) (not d!1254569) (not b!4261459) (not b!4261424) (not b!4261517) (not b!4261757) (not b!4261565) (not b!4261518) (not d!1254431) (not b!4261452) (not b!4261703) (not b!4261736) (not d!1254515) (not d!1254683) (not b!4261599) (not b!4261445) (not b!4261742) (not b_lambda!125775) (not b!4261721) (not b!4261578) (not b!4261737) tp_is_empty!22877 (not b!4261486) (not b!4261571) (not b!4261730) (not b!4261676) (not b!4261754) (not b!4261659) (not d!1254615) (not b!4261550) (not b!4261567) (not b!4261689) (not d!1254685) (not b!4261688) (not b!4261529) (not d!1254653) (not d!1254529) (not b!4261488))
(check-sat b_and!337735 (not b_next!127389))
