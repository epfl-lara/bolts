; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!200452 () Bool)

(assert start!200452)

(declare-fun b_free!56791 () Bool)

(declare-fun b_next!57495 () Bool)

(assert (=> start!200452 (= b_free!56791 (not b_next!57495))))

(declare-fun tp!604450 () Bool)

(declare-fun b_and!162531 () Bool)

(assert (=> start!200452 (= tp!604450 b_and!162531)))

(declare-fun res!892319 () Bool)

(declare-fun e!1285236 () Bool)

(assert (=> start!200452 (=> (not res!892319) (not e!1285236))))

(declare-datatypes ((T!35864 0))(
  ( (T!35865 (val!6456 Int)) )
))
(declare-datatypes ((List!22339 0))(
  ( (Nil!22257) (Cons!22257 (h!27658 T!35864) (t!191170 List!22339)) )
))
(declare-datatypes ((IArray!14903 0))(
  ( (IArray!14904 (innerList!7509 List!22339)) )
))
(declare-datatypes ((Conc!7449 0))(
  ( (Node!7449 (left!17710 Conc!7449) (right!18040 Conc!7449) (csize!15128 Int) (cheight!7660 Int)) (Leaf!10915 (xs!10351 IArray!14903) (csize!15129 Int)) (Empty!7449) )
))
(declare-fun t!4319 () Conc!7449)

(declare-fun isBalanced!2327 (Conc!7449) Bool)

(assert (=> start!200452 (= res!892319 (isBalanced!2327 t!4319))))

(assert (=> start!200452 e!1285236))

(declare-fun e!1285234 () Bool)

(declare-fun inv!29473 (Conc!7449) Bool)

(assert (=> start!200452 (and (inv!29473 t!4319) e!1285234)))

(assert (=> start!200452 tp!604450))

(declare-fun b!2034911 () Bool)

(declare-fun e!1285235 () Bool)

(declare-fun inv!29474 (IArray!14903) Bool)

(assert (=> b!2034911 (= e!1285234 (and (inv!29474 (xs!10351 t!4319)) e!1285235))))

(declare-fun b!2034912 () Bool)

(declare-fun res!892317 () Bool)

(assert (=> b!2034912 (=> (not res!892317) (not e!1285236))))

(get-info :version)

(assert (=> b!2034912 (= res!892317 (and (not ((_ is Empty!7449) t!4319)) (not ((_ is Leaf!10915) t!4319))))))

(declare-fun b!2034913 () Bool)

(declare-fun e!1285237 () Bool)

(assert (=> b!2034913 (= e!1285237 (not (isBalanced!2327 (left!17710 t!4319))))))

(declare-fun b!2034914 () Bool)

(declare-fun tp!604452 () Bool)

(assert (=> b!2034914 (= e!1285235 tp!604452)))

(declare-fun tp!604449 () Bool)

(declare-fun tp!604451 () Bool)

(declare-fun b!2034915 () Bool)

(assert (=> b!2034915 (= e!1285234 (and (inv!29473 (left!17710 t!4319)) tp!604451 (inv!29473 (right!18040 t!4319)) tp!604449))))

(declare-fun b!2034916 () Bool)

(assert (=> b!2034916 (= e!1285236 e!1285237)))

(declare-fun res!892318 () Bool)

(assert (=> b!2034916 (=> (not res!892318) (not e!1285237))))

(declare-fun lt!764571 () List!22339)

(declare-fun lt!764570 () List!22339)

(declare-fun p!1489 () Int)

(declare-fun filter!440 (List!22339 Int) List!22339)

(declare-fun ++!6031 (List!22339 List!22339) List!22339)

(assert (=> b!2034916 (= res!892318 (= (filter!440 (++!6031 lt!764570 lt!764571) p!1489) (++!6031 (filter!440 lt!764570 p!1489) (filter!440 lt!764571 p!1489))))))

(declare-datatypes ((Unit!36956 0))(
  ( (Unit!36957) )
))
(declare-fun lt!764572 () Unit!36956)

(declare-fun lemmaFilterConcat!20 (List!22339 List!22339 Int) Unit!36956)

(assert (=> b!2034916 (= lt!764572 (lemmaFilterConcat!20 lt!764570 lt!764571 p!1489))))

(declare-fun list!9101 (Conc!7449) List!22339)

(assert (=> b!2034916 (= lt!764571 (list!9101 (right!18040 t!4319)))))

(assert (=> b!2034916 (= lt!764570 (list!9101 (left!17710 t!4319)))))

(assert (= (and start!200452 res!892319) b!2034912))

(assert (= (and b!2034912 res!892317) b!2034916))

(assert (= (and b!2034916 res!892318) b!2034913))

(assert (= (and start!200452 ((_ is Node!7449) t!4319)) b!2034915))

(assert (= b!2034911 b!2034914))

(assert (= (and start!200452 ((_ is Leaf!10915) t!4319)) b!2034911))

(declare-fun m!2477521 () Bool)

(assert (=> b!2034915 m!2477521))

(declare-fun m!2477523 () Bool)

(assert (=> b!2034915 m!2477523))

(declare-fun m!2477525 () Bool)

(assert (=> b!2034916 m!2477525))

(declare-fun m!2477527 () Bool)

(assert (=> b!2034916 m!2477527))

(declare-fun m!2477529 () Bool)

(assert (=> b!2034916 m!2477529))

(declare-fun m!2477531 () Bool)

(assert (=> b!2034916 m!2477531))

(declare-fun m!2477533 () Bool)

(assert (=> b!2034916 m!2477533))

(declare-fun m!2477535 () Bool)

(assert (=> b!2034916 m!2477535))

(declare-fun m!2477537 () Bool)

(assert (=> b!2034916 m!2477537))

(assert (=> b!2034916 m!2477535))

(assert (=> b!2034916 m!2477529))

(assert (=> b!2034916 m!2477527))

(declare-fun m!2477539 () Bool)

(assert (=> b!2034916 m!2477539))

(declare-fun m!2477541 () Bool)

(assert (=> b!2034911 m!2477541))

(declare-fun m!2477543 () Bool)

(assert (=> start!200452 m!2477543))

(declare-fun m!2477545 () Bool)

(assert (=> start!200452 m!2477545))

(declare-fun m!2477547 () Bool)

(assert (=> b!2034913 m!2477547))

(check-sat (not b_next!57495) b_and!162531 (not b!2034915) (not b!2034914) (not b!2034911) (not start!200452) (not b!2034916) (not b!2034913))
(check-sat b_and!162531 (not b_next!57495))
(get-model)

(declare-fun b!2034938 () Bool)

(declare-fun e!1285249 () Bool)

(declare-fun e!1285248 () Bool)

(assert (=> b!2034938 (= e!1285249 e!1285248)))

(declare-fun res!892337 () Bool)

(assert (=> b!2034938 (=> (not res!892337) (not e!1285248))))

(declare-fun height!1149 (Conc!7449) Int)

(assert (=> b!2034938 (= res!892337 (<= (- 1) (- (height!1149 (left!17710 (left!17710 t!4319))) (height!1149 (right!18040 (left!17710 t!4319))))))))

(declare-fun b!2034939 () Bool)

(declare-fun res!892338 () Bool)

(assert (=> b!2034939 (=> (not res!892338) (not e!1285248))))

(assert (=> b!2034939 (= res!892338 (isBalanced!2327 (right!18040 (left!17710 t!4319))))))

(declare-fun b!2034940 () Bool)

(declare-fun res!892336 () Bool)

(assert (=> b!2034940 (=> (not res!892336) (not e!1285248))))

(declare-fun isEmpty!13907 (Conc!7449) Bool)

(assert (=> b!2034940 (= res!892336 (not (isEmpty!13907 (left!17710 (left!17710 t!4319)))))))

(declare-fun b!2034941 () Bool)

(assert (=> b!2034941 (= e!1285248 (not (isEmpty!13907 (right!18040 (left!17710 t!4319)))))))

(declare-fun d!622950 () Bool)

(declare-fun res!892339 () Bool)

(assert (=> d!622950 (=> res!892339 e!1285249)))

(assert (=> d!622950 (= res!892339 (not ((_ is Node!7449) (left!17710 t!4319))))))

(assert (=> d!622950 (= (isBalanced!2327 (left!17710 t!4319)) e!1285249)))

(declare-fun b!2034942 () Bool)

(declare-fun res!892335 () Bool)

(assert (=> b!2034942 (=> (not res!892335) (not e!1285248))))

(assert (=> b!2034942 (= res!892335 (<= (- (height!1149 (left!17710 (left!17710 t!4319))) (height!1149 (right!18040 (left!17710 t!4319)))) 1))))

(declare-fun b!2034943 () Bool)

(declare-fun res!892340 () Bool)

(assert (=> b!2034943 (=> (not res!892340) (not e!1285248))))

(assert (=> b!2034943 (= res!892340 (isBalanced!2327 (left!17710 (left!17710 t!4319))))))

(assert (= (and d!622950 (not res!892339)) b!2034938))

(assert (= (and b!2034938 res!892337) b!2034942))

(assert (= (and b!2034942 res!892335) b!2034943))

(assert (= (and b!2034943 res!892340) b!2034939))

(assert (= (and b!2034939 res!892338) b!2034940))

(assert (= (and b!2034940 res!892336) b!2034941))

(declare-fun m!2477559 () Bool)

(assert (=> b!2034938 m!2477559))

(declare-fun m!2477561 () Bool)

(assert (=> b!2034938 m!2477561))

(declare-fun m!2477563 () Bool)

(assert (=> b!2034940 m!2477563))

(declare-fun m!2477565 () Bool)

(assert (=> b!2034943 m!2477565))

(declare-fun m!2477567 () Bool)

(assert (=> b!2034939 m!2477567))

(declare-fun m!2477569 () Bool)

(assert (=> b!2034941 m!2477569))

(assert (=> b!2034942 m!2477559))

(assert (=> b!2034942 m!2477561))

(assert (=> b!2034913 d!622950))

(declare-fun e!1285267 () List!22339)

(declare-fun b!2034977 () Bool)

(declare-fun call!124886 () List!22339)

(assert (=> b!2034977 (= e!1285267 (Cons!22257 (h!27658 (++!6031 lt!764570 lt!764571)) call!124886))))

(declare-fun b!2034978 () Bool)

(assert (=> b!2034978 (= e!1285267 call!124886)))

(declare-fun bm!124881 () Bool)

(assert (=> bm!124881 (= call!124886 (filter!440 (t!191170 (++!6031 lt!764570 lt!764571)) p!1489))))

(declare-fun d!622960 () Bool)

(declare-fun e!1285269 () Bool)

(assert (=> d!622960 e!1285269))

(declare-fun res!892353 () Bool)

(assert (=> d!622960 (=> (not res!892353) (not e!1285269))))

(declare-fun lt!764578 () List!22339)

(declare-fun size!17392 (List!22339) Int)

(assert (=> d!622960 (= res!892353 (<= (size!17392 lt!764578) (size!17392 (++!6031 lt!764570 lt!764571))))))

(declare-fun e!1285268 () List!22339)

(assert (=> d!622960 (= lt!764578 e!1285268)))

(declare-fun c!329499 () Bool)

(assert (=> d!622960 (= c!329499 ((_ is Nil!22257) (++!6031 lt!764570 lt!764571)))))

(assert (=> d!622960 (= (filter!440 (++!6031 lt!764570 lt!764571) p!1489) lt!764578)))

(declare-fun b!2034979 () Bool)

(declare-fun res!892352 () Bool)

(assert (=> b!2034979 (=> (not res!892352) (not e!1285269))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3293 (List!22339) (InoxSet T!35864))

(assert (=> b!2034979 (= res!892352 (= ((_ map implies) (content!3293 lt!764578) (content!3293 (++!6031 lt!764570 lt!764571))) ((as const (InoxSet T!35864)) true)))))

(declare-fun b!2034980 () Bool)

(assert (=> b!2034980 (= e!1285268 Nil!22257)))

(declare-fun b!2034981 () Bool)

(assert (=> b!2034981 (= e!1285268 e!1285267)))

(declare-fun c!329498 () Bool)

(declare-fun dynLambda!11090 (Int T!35864) Bool)

(assert (=> b!2034981 (= c!329498 (dynLambda!11090 p!1489 (h!27658 (++!6031 lt!764570 lt!764571))))))

(declare-fun b!2034982 () Bool)

(declare-fun forall!4740 (List!22339 Int) Bool)

(assert (=> b!2034982 (= e!1285269 (forall!4740 lt!764578 p!1489))))

(assert (= (and d!622960 c!329499) b!2034980))

(assert (= (and d!622960 (not c!329499)) b!2034981))

(assert (= (and b!2034981 c!329498) b!2034977))

(assert (= (and b!2034981 (not c!329498)) b!2034978))

(assert (= (or b!2034977 b!2034978) bm!124881))

(assert (= (and d!622960 res!892353) b!2034979))

(assert (= (and b!2034979 res!892352) b!2034982))

(declare-fun b_lambda!68655 () Bool)

(assert (=> (not b_lambda!68655) (not b!2034981)))

(declare-fun t!191175 () Bool)

(declare-fun tb!128783 () Bool)

(assert (=> (and start!200452 (= p!1489 p!1489) t!191175) tb!128783))

(declare-fun result!154006 () Bool)

(assert (=> tb!128783 (= result!154006 true)))

(assert (=> b!2034981 t!191175))

(declare-fun b_and!162535 () Bool)

(assert (= b_and!162531 (and (=> t!191175 result!154006) b_and!162535)))

(declare-fun m!2477585 () Bool)

(assert (=> b!2034979 m!2477585))

(assert (=> b!2034979 m!2477535))

(declare-fun m!2477587 () Bool)

(assert (=> b!2034979 m!2477587))

(declare-fun m!2477589 () Bool)

(assert (=> b!2034982 m!2477589))

(declare-fun m!2477591 () Bool)

(assert (=> bm!124881 m!2477591))

(declare-fun m!2477593 () Bool)

(assert (=> d!622960 m!2477593))

(assert (=> d!622960 m!2477535))

(declare-fun m!2477595 () Bool)

(assert (=> d!622960 m!2477595))

(declare-fun m!2477597 () Bool)

(assert (=> b!2034981 m!2477597))

(assert (=> b!2034916 d!622960))

(declare-fun b!2035006 () Bool)

(declare-fun lt!764586 () List!22339)

(declare-fun e!1285281 () Bool)

(assert (=> b!2035006 (= e!1285281 (or (not (= (filter!440 lt!764571 p!1489) Nil!22257)) (= lt!764586 (filter!440 lt!764570 p!1489))))))

(declare-fun d!622964 () Bool)

(assert (=> d!622964 e!1285281))

(declare-fun res!892362 () Bool)

(assert (=> d!622964 (=> (not res!892362) (not e!1285281))))

(assert (=> d!622964 (= res!892362 (= (content!3293 lt!764586) ((_ map or) (content!3293 (filter!440 lt!764570 p!1489)) (content!3293 (filter!440 lt!764571 p!1489)))))))

(declare-fun e!1285280 () List!22339)

(assert (=> d!622964 (= lt!764586 e!1285280)))

(declare-fun c!329506 () Bool)

(assert (=> d!622964 (= c!329506 ((_ is Nil!22257) (filter!440 lt!764570 p!1489)))))

(assert (=> d!622964 (= (++!6031 (filter!440 lt!764570 p!1489) (filter!440 lt!764571 p!1489)) lt!764586)))

(declare-fun b!2035004 () Bool)

(assert (=> b!2035004 (= e!1285280 (Cons!22257 (h!27658 (filter!440 lt!764570 p!1489)) (++!6031 (t!191170 (filter!440 lt!764570 p!1489)) (filter!440 lt!764571 p!1489))))))

(declare-fun b!2035003 () Bool)

(assert (=> b!2035003 (= e!1285280 (filter!440 lt!764571 p!1489))))

(declare-fun b!2035005 () Bool)

(declare-fun res!892363 () Bool)

(assert (=> b!2035005 (=> (not res!892363) (not e!1285281))))

(assert (=> b!2035005 (= res!892363 (= (size!17392 lt!764586) (+ (size!17392 (filter!440 lt!764570 p!1489)) (size!17392 (filter!440 lt!764571 p!1489)))))))

(assert (= (and d!622964 c!329506) b!2035003))

(assert (= (and d!622964 (not c!329506)) b!2035004))

(assert (= (and d!622964 res!892362) b!2035005))

(assert (= (and b!2035005 res!892363) b!2035006))

(declare-fun m!2477629 () Bool)

(assert (=> d!622964 m!2477629))

(assert (=> d!622964 m!2477529))

(declare-fun m!2477631 () Bool)

(assert (=> d!622964 m!2477631))

(assert (=> d!622964 m!2477527))

(declare-fun m!2477633 () Bool)

(assert (=> d!622964 m!2477633))

(assert (=> b!2035004 m!2477527))

(declare-fun m!2477635 () Bool)

(assert (=> b!2035004 m!2477635))

(declare-fun m!2477637 () Bool)

(assert (=> b!2035005 m!2477637))

(assert (=> b!2035005 m!2477529))

(declare-fun m!2477639 () Bool)

(assert (=> b!2035005 m!2477639))

(assert (=> b!2035005 m!2477527))

(declare-fun m!2477641 () Bool)

(assert (=> b!2035005 m!2477641))

(assert (=> b!2034916 d!622964))

(declare-fun b!2035030 () Bool)

(declare-fun e!1285293 () List!22339)

(assert (=> b!2035030 (= e!1285293 (++!6031 (list!9101 (left!17710 (left!17710 t!4319))) (list!9101 (right!18040 (left!17710 t!4319)))))))

(declare-fun b!2035028 () Bool)

(declare-fun e!1285292 () List!22339)

(assert (=> b!2035028 (= e!1285292 e!1285293)))

(declare-fun c!329518 () Bool)

(assert (=> b!2035028 (= c!329518 ((_ is Leaf!10915) (left!17710 t!4319)))))

(declare-fun b!2035029 () Bool)

(declare-fun list!9102 (IArray!14903) List!22339)

(assert (=> b!2035029 (= e!1285293 (list!9102 (xs!10351 (left!17710 t!4319))))))

(declare-fun b!2035027 () Bool)

(assert (=> b!2035027 (= e!1285292 Nil!22257)))

(declare-fun d!622972 () Bool)

(declare-fun c!329517 () Bool)

(assert (=> d!622972 (= c!329517 ((_ is Empty!7449) (left!17710 t!4319)))))

(assert (=> d!622972 (= (list!9101 (left!17710 t!4319)) e!1285292)))

(assert (= (and d!622972 c!329517) b!2035027))

(assert (= (and d!622972 (not c!329517)) b!2035028))

(assert (= (and b!2035028 c!329518) b!2035029))

(assert (= (and b!2035028 (not c!329518)) b!2035030))

(declare-fun m!2477651 () Bool)

(assert (=> b!2035030 m!2477651))

(declare-fun m!2477653 () Bool)

(assert (=> b!2035030 m!2477653))

(assert (=> b!2035030 m!2477651))

(assert (=> b!2035030 m!2477653))

(declare-fun m!2477655 () Bool)

(assert (=> b!2035030 m!2477655))

(declare-fun m!2477657 () Bool)

(assert (=> b!2035029 m!2477657))

(assert (=> b!2034916 d!622972))

(declare-fun b!2035034 () Bool)

(declare-fun e!1285295 () List!22339)

(assert (=> b!2035034 (= e!1285295 (++!6031 (list!9101 (left!17710 (right!18040 t!4319))) (list!9101 (right!18040 (right!18040 t!4319)))))))

(declare-fun b!2035032 () Bool)

(declare-fun e!1285294 () List!22339)

(assert (=> b!2035032 (= e!1285294 e!1285295)))

(declare-fun c!329520 () Bool)

(assert (=> b!2035032 (= c!329520 ((_ is Leaf!10915) (right!18040 t!4319)))))

(declare-fun b!2035033 () Bool)

(assert (=> b!2035033 (= e!1285295 (list!9102 (xs!10351 (right!18040 t!4319))))))

(declare-fun b!2035031 () Bool)

(assert (=> b!2035031 (= e!1285294 Nil!22257)))

(declare-fun d!622976 () Bool)

(declare-fun c!329519 () Bool)

(assert (=> d!622976 (= c!329519 ((_ is Empty!7449) (right!18040 t!4319)))))

(assert (=> d!622976 (= (list!9101 (right!18040 t!4319)) e!1285294)))

(assert (= (and d!622976 c!329519) b!2035031))

(assert (= (and d!622976 (not c!329519)) b!2035032))

(assert (= (and b!2035032 c!329520) b!2035033))

(assert (= (and b!2035032 (not c!329520)) b!2035034))

(declare-fun m!2477659 () Bool)

(assert (=> b!2035034 m!2477659))

(declare-fun m!2477661 () Bool)

(assert (=> b!2035034 m!2477661))

(assert (=> b!2035034 m!2477659))

(assert (=> b!2035034 m!2477661))

(declare-fun m!2477663 () Bool)

(assert (=> b!2035034 m!2477663))

(declare-fun m!2477665 () Bool)

(assert (=> b!2035033 m!2477665))

(assert (=> b!2034916 d!622976))

(declare-fun b!2035035 () Bool)

(declare-fun e!1285296 () List!22339)

(declare-fun call!124889 () List!22339)

(assert (=> b!2035035 (= e!1285296 (Cons!22257 (h!27658 lt!764571) call!124889))))

(declare-fun b!2035036 () Bool)

(assert (=> b!2035036 (= e!1285296 call!124889)))

(declare-fun bm!124884 () Bool)

(assert (=> bm!124884 (= call!124889 (filter!440 (t!191170 lt!764571) p!1489))))

(declare-fun d!622978 () Bool)

(declare-fun e!1285298 () Bool)

(assert (=> d!622978 e!1285298))

(declare-fun res!892365 () Bool)

(assert (=> d!622978 (=> (not res!892365) (not e!1285298))))

(declare-fun lt!764587 () List!22339)

(assert (=> d!622978 (= res!892365 (<= (size!17392 lt!764587) (size!17392 lt!764571)))))

(declare-fun e!1285297 () List!22339)

(assert (=> d!622978 (= lt!764587 e!1285297)))

(declare-fun c!329522 () Bool)

(assert (=> d!622978 (= c!329522 ((_ is Nil!22257) lt!764571))))

(assert (=> d!622978 (= (filter!440 lt!764571 p!1489) lt!764587)))

(declare-fun b!2035037 () Bool)

(declare-fun res!892364 () Bool)

(assert (=> b!2035037 (=> (not res!892364) (not e!1285298))))

(assert (=> b!2035037 (= res!892364 (= ((_ map implies) (content!3293 lt!764587) (content!3293 lt!764571)) ((as const (InoxSet T!35864)) true)))))

(declare-fun b!2035038 () Bool)

(assert (=> b!2035038 (= e!1285297 Nil!22257)))

(declare-fun b!2035039 () Bool)

(assert (=> b!2035039 (= e!1285297 e!1285296)))

(declare-fun c!329521 () Bool)

(assert (=> b!2035039 (= c!329521 (dynLambda!11090 p!1489 (h!27658 lt!764571)))))

(declare-fun b!2035040 () Bool)

(assert (=> b!2035040 (= e!1285298 (forall!4740 lt!764587 p!1489))))

(assert (= (and d!622978 c!329522) b!2035038))

(assert (= (and d!622978 (not c!329522)) b!2035039))

(assert (= (and b!2035039 c!329521) b!2035035))

(assert (= (and b!2035039 (not c!329521)) b!2035036))

(assert (= (or b!2035035 b!2035036) bm!124884))

(assert (= (and d!622978 res!892365) b!2035037))

(assert (= (and b!2035037 res!892364) b!2035040))

(declare-fun b_lambda!68661 () Bool)

(assert (=> (not b_lambda!68661) (not b!2035039)))

(declare-fun t!191183 () Bool)

(declare-fun tb!128789 () Bool)

(assert (=> (and start!200452 (= p!1489 p!1489) t!191183) tb!128789))

(declare-fun result!154012 () Bool)

(assert (=> tb!128789 (= result!154012 true)))

(assert (=> b!2035039 t!191183))

(declare-fun b_and!162541 () Bool)

(assert (= b_and!162535 (and (=> t!191183 result!154012) b_and!162541)))

(declare-fun m!2477667 () Bool)

(assert (=> b!2035037 m!2477667))

(declare-fun m!2477669 () Bool)

(assert (=> b!2035037 m!2477669))

(declare-fun m!2477671 () Bool)

(assert (=> b!2035040 m!2477671))

(declare-fun m!2477673 () Bool)

(assert (=> bm!124884 m!2477673))

(declare-fun m!2477675 () Bool)

(assert (=> d!622978 m!2477675))

(declare-fun m!2477677 () Bool)

(assert (=> d!622978 m!2477677))

(declare-fun m!2477679 () Bool)

(assert (=> b!2035039 m!2477679))

(assert (=> b!2034916 d!622978))

(declare-fun b!2035045 () Bool)

(declare-fun e!1285301 () List!22339)

(declare-fun call!124890 () List!22339)

(assert (=> b!2035045 (= e!1285301 (Cons!22257 (h!27658 lt!764570) call!124890))))

(declare-fun b!2035046 () Bool)

(assert (=> b!2035046 (= e!1285301 call!124890)))

(declare-fun bm!124885 () Bool)

(assert (=> bm!124885 (= call!124890 (filter!440 (t!191170 lt!764570) p!1489))))

(declare-fun d!622980 () Bool)

(declare-fun e!1285303 () Bool)

(assert (=> d!622980 e!1285303))

(declare-fun res!892367 () Bool)

(assert (=> d!622980 (=> (not res!892367) (not e!1285303))))

(declare-fun lt!764590 () List!22339)

(assert (=> d!622980 (= res!892367 (<= (size!17392 lt!764590) (size!17392 lt!764570)))))

(declare-fun e!1285302 () List!22339)

(assert (=> d!622980 (= lt!764590 e!1285302)))

(declare-fun c!329526 () Bool)

(assert (=> d!622980 (= c!329526 ((_ is Nil!22257) lt!764570))))

(assert (=> d!622980 (= (filter!440 lt!764570 p!1489) lt!764590)))

(declare-fun b!2035047 () Bool)

(declare-fun res!892366 () Bool)

(assert (=> b!2035047 (=> (not res!892366) (not e!1285303))))

(assert (=> b!2035047 (= res!892366 (= ((_ map implies) (content!3293 lt!764590) (content!3293 lt!764570)) ((as const (InoxSet T!35864)) true)))))

(declare-fun b!2035048 () Bool)

(assert (=> b!2035048 (= e!1285302 Nil!22257)))

(declare-fun b!2035049 () Bool)

(assert (=> b!2035049 (= e!1285302 e!1285301)))

(declare-fun c!329525 () Bool)

(assert (=> b!2035049 (= c!329525 (dynLambda!11090 p!1489 (h!27658 lt!764570)))))

(declare-fun b!2035050 () Bool)

(assert (=> b!2035050 (= e!1285303 (forall!4740 lt!764590 p!1489))))

(assert (= (and d!622980 c!329526) b!2035048))

(assert (= (and d!622980 (not c!329526)) b!2035049))

(assert (= (and b!2035049 c!329525) b!2035045))

(assert (= (and b!2035049 (not c!329525)) b!2035046))

(assert (= (or b!2035045 b!2035046) bm!124885))

(assert (= (and d!622980 res!892367) b!2035047))

(assert (= (and b!2035047 res!892366) b!2035050))

(declare-fun b_lambda!68663 () Bool)

(assert (=> (not b_lambda!68663) (not b!2035049)))

(declare-fun t!191185 () Bool)

(declare-fun tb!128791 () Bool)

(assert (=> (and start!200452 (= p!1489 p!1489) t!191185) tb!128791))

(declare-fun result!154014 () Bool)

(assert (=> tb!128791 (= result!154014 true)))

(assert (=> b!2035049 t!191185))

(declare-fun b_and!162543 () Bool)

(assert (= b_and!162541 (and (=> t!191185 result!154014) b_and!162543)))

(declare-fun m!2477681 () Bool)

(assert (=> b!2035047 m!2477681))

(declare-fun m!2477683 () Bool)

(assert (=> b!2035047 m!2477683))

(declare-fun m!2477685 () Bool)

(assert (=> b!2035050 m!2477685))

(declare-fun m!2477687 () Bool)

(assert (=> bm!124885 m!2477687))

(declare-fun m!2477689 () Bool)

(assert (=> d!622980 m!2477689))

(declare-fun m!2477691 () Bool)

(assert (=> d!622980 m!2477691))

(declare-fun m!2477693 () Bool)

(assert (=> b!2035049 m!2477693))

(assert (=> b!2034916 d!622980))

(declare-fun d!622982 () Bool)

(assert (=> d!622982 (= (filter!440 (++!6031 lt!764570 lt!764571) p!1489) (++!6031 (filter!440 lt!764570 p!1489) (filter!440 lt!764571 p!1489)))))

(declare-fun lt!764595 () Unit!36956)

(declare-fun choose!12418 (List!22339 List!22339 Int) Unit!36956)

(assert (=> d!622982 (= lt!764595 (choose!12418 lt!764570 lt!764571 p!1489))))

(assert (=> d!622982 (= (lemmaFilterConcat!20 lt!764570 lt!764571 p!1489) lt!764595)))

(declare-fun bs!421315 () Bool)

(assert (= bs!421315 d!622982))

(assert (=> bs!421315 m!2477529))

(assert (=> bs!421315 m!2477527))

(declare-fun m!2477723 () Bool)

(assert (=> bs!421315 m!2477723))

(assert (=> bs!421315 m!2477535))

(assert (=> bs!421315 m!2477529))

(assert (=> bs!421315 m!2477527))

(assert (=> bs!421315 m!2477539))

(assert (=> bs!421315 m!2477535))

(assert (=> bs!421315 m!2477537))

(assert (=> b!2034916 d!622982))

(declare-fun b!2035070 () Bool)

(declare-fun e!1285313 () Bool)

(declare-fun lt!764596 () List!22339)

(assert (=> b!2035070 (= e!1285313 (or (not (= lt!764571 Nil!22257)) (= lt!764596 lt!764570)))))

(declare-fun d!622990 () Bool)

(assert (=> d!622990 e!1285313))

(declare-fun res!892376 () Bool)

(assert (=> d!622990 (=> (not res!892376) (not e!1285313))))

(assert (=> d!622990 (= res!892376 (= (content!3293 lt!764596) ((_ map or) (content!3293 lt!764570) (content!3293 lt!764571))))))

(declare-fun e!1285312 () List!22339)

(assert (=> d!622990 (= lt!764596 e!1285312)))

(declare-fun c!329531 () Bool)

(assert (=> d!622990 (= c!329531 ((_ is Nil!22257) lt!764570))))

(assert (=> d!622990 (= (++!6031 lt!764570 lt!764571) lt!764596)))

(declare-fun b!2035068 () Bool)

(assert (=> b!2035068 (= e!1285312 (Cons!22257 (h!27658 lt!764570) (++!6031 (t!191170 lt!764570) lt!764571)))))

(declare-fun b!2035067 () Bool)

(assert (=> b!2035067 (= e!1285312 lt!764571)))

(declare-fun b!2035069 () Bool)

(declare-fun res!892377 () Bool)

(assert (=> b!2035069 (=> (not res!892377) (not e!1285313))))

(assert (=> b!2035069 (= res!892377 (= (size!17392 lt!764596) (+ (size!17392 lt!764570) (size!17392 lt!764571))))))

(assert (= (and d!622990 c!329531) b!2035067))

(assert (= (and d!622990 (not c!329531)) b!2035068))

(assert (= (and d!622990 res!892376) b!2035069))

(assert (= (and b!2035069 res!892377) b!2035070))

(declare-fun m!2477725 () Bool)

(assert (=> d!622990 m!2477725))

(assert (=> d!622990 m!2477683))

(assert (=> d!622990 m!2477669))

(declare-fun m!2477727 () Bool)

(assert (=> b!2035068 m!2477727))

(declare-fun m!2477729 () Bool)

(assert (=> b!2035069 m!2477729))

(assert (=> b!2035069 m!2477691))

(assert (=> b!2035069 m!2477677))

(assert (=> b!2034916 d!622990))

(declare-fun d!622992 () Bool)

(assert (=> d!622992 (= (inv!29474 (xs!10351 t!4319)) (<= (size!17392 (innerList!7509 (xs!10351 t!4319))) 2147483647))))

(declare-fun bs!421316 () Bool)

(assert (= bs!421316 d!622992))

(declare-fun m!2477731 () Bool)

(assert (=> bs!421316 m!2477731))

(assert (=> b!2034911 d!622992))

(declare-fun b!2035071 () Bool)

(declare-fun e!1285315 () Bool)

(declare-fun e!1285314 () Bool)

(assert (=> b!2035071 (= e!1285315 e!1285314)))

(declare-fun res!892380 () Bool)

(assert (=> b!2035071 (=> (not res!892380) (not e!1285314))))

(assert (=> b!2035071 (= res!892380 (<= (- 1) (- (height!1149 (left!17710 t!4319)) (height!1149 (right!18040 t!4319)))))))

(declare-fun b!2035072 () Bool)

(declare-fun res!892381 () Bool)

(assert (=> b!2035072 (=> (not res!892381) (not e!1285314))))

(assert (=> b!2035072 (= res!892381 (isBalanced!2327 (right!18040 t!4319)))))

(declare-fun b!2035073 () Bool)

(declare-fun res!892379 () Bool)

(assert (=> b!2035073 (=> (not res!892379) (not e!1285314))))

(assert (=> b!2035073 (= res!892379 (not (isEmpty!13907 (left!17710 t!4319))))))

(declare-fun b!2035074 () Bool)

(assert (=> b!2035074 (= e!1285314 (not (isEmpty!13907 (right!18040 t!4319))))))

(declare-fun d!622994 () Bool)

(declare-fun res!892382 () Bool)

(assert (=> d!622994 (=> res!892382 e!1285315)))

(assert (=> d!622994 (= res!892382 (not ((_ is Node!7449) t!4319)))))

(assert (=> d!622994 (= (isBalanced!2327 t!4319) e!1285315)))

(declare-fun b!2035075 () Bool)

(declare-fun res!892378 () Bool)

(assert (=> b!2035075 (=> (not res!892378) (not e!1285314))))

(assert (=> b!2035075 (= res!892378 (<= (- (height!1149 (left!17710 t!4319)) (height!1149 (right!18040 t!4319))) 1))))

(declare-fun b!2035076 () Bool)

(declare-fun res!892383 () Bool)

(assert (=> b!2035076 (=> (not res!892383) (not e!1285314))))

(assert (=> b!2035076 (= res!892383 (isBalanced!2327 (left!17710 t!4319)))))

(assert (= (and d!622994 (not res!892382)) b!2035071))

(assert (= (and b!2035071 res!892380) b!2035075))

(assert (= (and b!2035075 res!892378) b!2035076))

(assert (= (and b!2035076 res!892383) b!2035072))

(assert (= (and b!2035072 res!892381) b!2035073))

(assert (= (and b!2035073 res!892379) b!2035074))

(declare-fun m!2477733 () Bool)

(assert (=> b!2035071 m!2477733))

(declare-fun m!2477735 () Bool)

(assert (=> b!2035071 m!2477735))

(declare-fun m!2477737 () Bool)

(assert (=> b!2035073 m!2477737))

(assert (=> b!2035076 m!2477547))

(declare-fun m!2477739 () Bool)

(assert (=> b!2035072 m!2477739))

(declare-fun m!2477741 () Bool)

(assert (=> b!2035074 m!2477741))

(assert (=> b!2035075 m!2477733))

(assert (=> b!2035075 m!2477735))

(assert (=> start!200452 d!622994))

(declare-fun d!622996 () Bool)

(declare-fun c!329534 () Bool)

(assert (=> d!622996 (= c!329534 ((_ is Node!7449) t!4319))))

(declare-fun e!1285326 () Bool)

(assert (=> d!622996 (= (inv!29473 t!4319) e!1285326)))

(declare-fun b!2035101 () Bool)

(declare-fun inv!29477 (Conc!7449) Bool)

(assert (=> b!2035101 (= e!1285326 (inv!29477 t!4319))))

(declare-fun b!2035102 () Bool)

(declare-fun e!1285327 () Bool)

(assert (=> b!2035102 (= e!1285326 e!1285327)))

(declare-fun res!892404 () Bool)

(assert (=> b!2035102 (= res!892404 (not ((_ is Leaf!10915) t!4319)))))

(assert (=> b!2035102 (=> res!892404 e!1285327)))

(declare-fun b!2035103 () Bool)

(declare-fun inv!29478 (Conc!7449) Bool)

(assert (=> b!2035103 (= e!1285327 (inv!29478 t!4319))))

(assert (= (and d!622996 c!329534) b!2035101))

(assert (= (and d!622996 (not c!329534)) b!2035102))

(assert (= (and b!2035102 (not res!892404)) b!2035103))

(declare-fun m!2477743 () Bool)

(assert (=> b!2035101 m!2477743))

(declare-fun m!2477745 () Bool)

(assert (=> b!2035103 m!2477745))

(assert (=> start!200452 d!622996))

(declare-fun d!622998 () Bool)

(declare-fun c!329535 () Bool)

(assert (=> d!622998 (= c!329535 ((_ is Node!7449) (left!17710 t!4319)))))

(declare-fun e!1285328 () Bool)

(assert (=> d!622998 (= (inv!29473 (left!17710 t!4319)) e!1285328)))

(declare-fun b!2035104 () Bool)

(assert (=> b!2035104 (= e!1285328 (inv!29477 (left!17710 t!4319)))))

(declare-fun b!2035105 () Bool)

(declare-fun e!1285329 () Bool)

(assert (=> b!2035105 (= e!1285328 e!1285329)))

(declare-fun res!892405 () Bool)

(assert (=> b!2035105 (= res!892405 (not ((_ is Leaf!10915) (left!17710 t!4319))))))

(assert (=> b!2035105 (=> res!892405 e!1285329)))

(declare-fun b!2035106 () Bool)

(assert (=> b!2035106 (= e!1285329 (inv!29478 (left!17710 t!4319)))))

(assert (= (and d!622998 c!329535) b!2035104))

(assert (= (and d!622998 (not c!329535)) b!2035105))

(assert (= (and b!2035105 (not res!892405)) b!2035106))

(declare-fun m!2477749 () Bool)

(assert (=> b!2035104 m!2477749))

(declare-fun m!2477751 () Bool)

(assert (=> b!2035106 m!2477751))

(assert (=> b!2034915 d!622998))

(declare-fun d!623000 () Bool)

(declare-fun c!329536 () Bool)

(assert (=> d!623000 (= c!329536 ((_ is Node!7449) (right!18040 t!4319)))))

(declare-fun e!1285330 () Bool)

(assert (=> d!623000 (= (inv!29473 (right!18040 t!4319)) e!1285330)))

(declare-fun b!2035107 () Bool)

(assert (=> b!2035107 (= e!1285330 (inv!29477 (right!18040 t!4319)))))

(declare-fun b!2035108 () Bool)

(declare-fun e!1285331 () Bool)

(assert (=> b!2035108 (= e!1285330 e!1285331)))

(declare-fun res!892406 () Bool)

(assert (=> b!2035108 (= res!892406 (not ((_ is Leaf!10915) (right!18040 t!4319))))))

(assert (=> b!2035108 (=> res!892406 e!1285331)))

(declare-fun b!2035109 () Bool)

(assert (=> b!2035109 (= e!1285331 (inv!29478 (right!18040 t!4319)))))

(assert (= (and d!623000 c!329536) b!2035107))

(assert (= (and d!623000 (not c!329536)) b!2035108))

(assert (= (and b!2035108 (not res!892406)) b!2035109))

(declare-fun m!2477761 () Bool)

(assert (=> b!2035107 m!2477761))

(declare-fun m!2477763 () Bool)

(assert (=> b!2035109 m!2477763))

(assert (=> b!2034915 d!623000))

(declare-fun b!2035123 () Bool)

(declare-fun e!1285338 () Bool)

(declare-fun tp_is_empty!9235 () Bool)

(declare-fun tp!604455 () Bool)

(assert (=> b!2035123 (= e!1285338 (and tp_is_empty!9235 tp!604455))))

(assert (=> b!2034914 (= tp!604452 e!1285338)))

(assert (= (and b!2034914 ((_ is Cons!22257) (innerList!7509 (xs!10351 t!4319)))) b!2035123))

(declare-fun e!1285348 () Bool)

(declare-fun b!2035140 () Bool)

(declare-fun tp!604469 () Bool)

(declare-fun tp!604470 () Bool)

(assert (=> b!2035140 (= e!1285348 (and (inv!29473 (left!17710 (left!17710 t!4319))) tp!604469 (inv!29473 (right!18040 (left!17710 t!4319))) tp!604470))))

(declare-fun b!2035142 () Bool)

(declare-fun e!1285347 () Bool)

(declare-fun tp!604468 () Bool)

(assert (=> b!2035142 (= e!1285347 tp!604468)))

(declare-fun b!2035141 () Bool)

(assert (=> b!2035141 (= e!1285348 (and (inv!29474 (xs!10351 (left!17710 t!4319))) e!1285347))))

(assert (=> b!2034915 (= tp!604451 (and (inv!29473 (left!17710 t!4319)) e!1285348))))

(assert (= (and b!2034915 ((_ is Node!7449) (left!17710 t!4319))) b!2035140))

(assert (= b!2035141 b!2035142))

(assert (= (and b!2034915 ((_ is Leaf!10915) (left!17710 t!4319))) b!2035141))

(declare-fun m!2477781 () Bool)

(assert (=> b!2035140 m!2477781))

(declare-fun m!2477783 () Bool)

(assert (=> b!2035140 m!2477783))

(declare-fun m!2477785 () Bool)

(assert (=> b!2035141 m!2477785))

(assert (=> b!2034915 m!2477521))

(declare-fun b!2035146 () Bool)

(declare-fun tp!604475 () Bool)

(declare-fun e!1285352 () Bool)

(declare-fun tp!604476 () Bool)

(assert (=> b!2035146 (= e!1285352 (and (inv!29473 (left!17710 (right!18040 t!4319))) tp!604475 (inv!29473 (right!18040 (right!18040 t!4319))) tp!604476))))

(declare-fun b!2035148 () Bool)

(declare-fun e!1285351 () Bool)

(declare-fun tp!604474 () Bool)

(assert (=> b!2035148 (= e!1285351 tp!604474)))

(declare-fun b!2035147 () Bool)

(assert (=> b!2035147 (= e!1285352 (and (inv!29474 (xs!10351 (right!18040 t!4319))) e!1285351))))

(assert (=> b!2034915 (= tp!604449 (and (inv!29473 (right!18040 t!4319)) e!1285352))))

(assert (= (and b!2034915 ((_ is Node!7449) (right!18040 t!4319))) b!2035146))

(assert (= b!2035147 b!2035148))

(assert (= (and b!2034915 ((_ is Leaf!10915) (right!18040 t!4319))) b!2035147))

(declare-fun m!2477787 () Bool)

(assert (=> b!2035146 m!2477787))

(declare-fun m!2477789 () Bool)

(assert (=> b!2035146 m!2477789))

(declare-fun m!2477793 () Bool)

(assert (=> b!2035147 m!2477793))

(assert (=> b!2034915 m!2477523))

(declare-fun b_lambda!68665 () Bool)

(assert (= b_lambda!68655 (or (and start!200452 b_free!56791) b_lambda!68665)))

(declare-fun b_lambda!68667 () Bool)

(assert (= b_lambda!68661 (or (and start!200452 b_free!56791) b_lambda!68667)))

(declare-fun b_lambda!68669 () Bool)

(assert (= b_lambda!68663 (or (and start!200452 b_free!56791) b_lambda!68669)))

(check-sat (not b!2035069) (not b!2034982) (not b!2035033) b_and!162543 (not b!2035104) (not bm!124885) (not b!2035075) (not b!2035141) (not b!2034938) (not b!2035123) (not d!622960) (not b!2035106) (not b!2035037) (not d!622990) (not b!2035107) (not b!2034943) (not b!2035076) (not b!2035068) (not d!622964) (not b_next!57495) (not b!2035142) (not bm!124884) (not b_lambda!68669) (not d!622978) (not b!2035050) (not b!2035148) (not b!2034939) tp_is_empty!9235 (not b!2035074) (not d!622992) (not b!2034915) (not b!2035072) (not d!622982) (not b_lambda!68665) (not b!2034940) (not b!2035071) (not b!2034942) (not b_lambda!68667) (not b!2035101) (not b!2035029) (not b!2035146) (not b!2034979) (not b!2035103) (not b!2035004) (not b!2035030) (not bm!124881) (not b!2035073) (not b!2035034) (not b!2035109) (not b!2035040) (not b!2035147) (not b!2034941) (not b!2035140) (not b!2035047) (not d!622980) (not b!2035005))
(check-sat b_and!162543 (not b_next!57495))
