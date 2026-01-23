; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!516740 () Bool)

(assert start!516740)

(declare-fun b!4921598 () Bool)

(declare-fun e!3075486 () Bool)

(declare-datatypes ((C!26940 0))(
  ( (C!26941 (val!22804 Int)) )
))
(declare-datatypes ((List!56793 0))(
  ( (Nil!56669) (Cons!56669 (h!63117 C!26940) (t!367231 List!56793)) )
))
(declare-fun size!37453 (List!56793) Int)

(assert (=> b!4921598 (= e!3075486 (not (= 0 (size!37453 Nil!56669))))))

(declare-datatypes ((Regex!13365 0))(
  ( (ElementMatch!13365 (c!837539 C!26940)) (Concat!21938 (regOne!27242 Regex!13365) (regTwo!27242 Regex!13365)) (EmptyExpr!13365) (Star!13365 (reg!13694 Regex!13365)) (EmptyLang!13365) (Union!13365 (regOne!27243 Regex!13365) (regTwo!27243 Regex!13365)) )
))
(declare-datatypes ((List!56794 0))(
  ( (Nil!56670) (Cons!56670 (h!63118 Regex!13365) (t!367232 List!56794)) )
))
(declare-datatypes ((Context!6014 0))(
  ( (Context!6015 (exprs!3507 List!56794)) )
))
(declare-fun setElem!27478 () Context!6014)

(declare-fun e!3075488 () Bool)

(declare-fun tp!1383038 () Bool)

(declare-fun setNonEmpty!27478 () Bool)

(declare-fun setRes!27478 () Bool)

(declare-fun inv!73409 (Context!6014) Bool)

(assert (=> setNonEmpty!27478 (= setRes!27478 (and tp!1383038 (inv!73409 setElem!27478) e!3075488))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3559 () (InoxSet Context!6014))

(declare-fun setRest!27478 () (InoxSet Context!6014))

(assert (=> setNonEmpty!27478 (= z!3559 ((_ map or) (store ((as const (Array Context!6014 Bool)) false) setElem!27478 true) setRest!27478))))

(declare-fun setIsEmpty!27478 () Bool)

(assert (=> setIsEmpty!27478 setRes!27478))

(declare-fun b!4921599 () Bool)

(declare-fun e!3075487 () Bool)

(declare-datatypes ((IArray!29789 0))(
  ( (IArray!29790 (innerList!14952 List!56793)) )
))
(declare-datatypes ((Conc!14864 0))(
  ( (Node!14864 (left!41318 Conc!14864) (right!41648 Conc!14864) (csize!29958 Int) (cheight!15075 Int)) (Leaf!24729 (xs!18184 IArray!29789) (csize!29959 Int)) (Empty!14864) )
))
(declare-datatypes ((BalanceConc!29158 0))(
  ( (BalanceConc!29159 (c!837540 Conc!14864)) )
))
(declare-fun input!5492 () BalanceConc!29158)

(declare-fun tp!1383039 () Bool)

(declare-fun inv!73410 (Conc!14864) Bool)

(assert (=> b!4921599 (= e!3075487 (and (inv!73410 (c!837540 input!5492)) tp!1383039))))

(declare-fun b!4921597 () Bool)

(declare-fun tp!1383037 () Bool)

(assert (=> b!4921597 (= e!3075488 tp!1383037)))

(declare-fun res!2101264 () Bool)

(assert (=> start!516740 (=> (not res!2101264) (not e!3075486))))

(declare-fun lt!2022845 () List!56793)

(declare-fun ++!12314 (List!56793 List!56793) List!56793)

(assert (=> start!516740 (= res!2101264 (= (++!12314 Nil!56669 lt!2022845) lt!2022845))))

(declare-fun lt!2022841 () Int)

(declare-datatypes ((tuple2!61124 0))(
  ( (tuple2!61125 (_1!33865 List!56793) (_2!33865 List!56793)) )
))
(declare-fun lt!2022844 () tuple2!61124)

(declare-fun findLongestMatchInnerZipper!50 ((InoxSet Context!6014) List!56793 Int List!56793 List!56793 Int) tuple2!61124)

(assert (=> start!516740 (= lt!2022844 (findLongestMatchInnerZipper!50 z!3559 Nil!56669 0 lt!2022845 lt!2022845 lt!2022841))))

(declare-fun lt!2022842 () List!56793)

(declare-datatypes ((tuple2!61126 0))(
  ( (tuple2!61127 (_1!33866 BalanceConc!29158) (_2!33866 BalanceConc!29158)) )
))
(declare-fun lt!2022840 () tuple2!61126)

(declare-fun list!17933 (BalanceConc!29158) List!56793)

(assert (=> start!516740 (= lt!2022842 (list!17933 (_2!33866 lt!2022840)))))

(declare-fun lt!2022843 () List!56793)

(assert (=> start!516740 (= lt!2022843 (list!17933 (_1!33866 lt!2022840)))))

(declare-fun splitAt!255 (BalanceConc!29158 Int) tuple2!61126)

(declare-fun findLongestMatchInnerZipperFast!77 ((InoxSet Context!6014) List!56793 Int List!56793 BalanceConc!29158 Int) Int)

(assert (=> start!516740 (= lt!2022840 (splitAt!255 input!5492 (findLongestMatchInnerZipperFast!77 z!3559 Nil!56669 0 lt!2022845 input!5492 lt!2022841)))))

(declare-fun size!37454 (BalanceConc!29158) Int)

(assert (=> start!516740 (= lt!2022841 (size!37454 input!5492))))

(assert (=> start!516740 (= lt!2022845 (list!17933 input!5492))))

(assert (=> start!516740 e!3075486))

(declare-fun inv!73411 (BalanceConc!29158) Bool)

(assert (=> start!516740 (and (inv!73411 input!5492) e!3075487)))

(declare-fun condSetEmpty!27478 () Bool)

(assert (=> start!516740 (= condSetEmpty!27478 (= z!3559 ((as const (Array Context!6014 Bool)) false)))))

(assert (=> start!516740 setRes!27478))

(assert (= (and start!516740 res!2101264) b!4921598))

(assert (= start!516740 b!4921599))

(assert (= (and start!516740 condSetEmpty!27478) setIsEmpty!27478))

(assert (= (and start!516740 (not condSetEmpty!27478)) setNonEmpty!27478))

(assert (= setNonEmpty!27478 b!4921597))

(declare-fun m!5936352 () Bool)

(assert (=> b!4921598 m!5936352))

(declare-fun m!5936354 () Bool)

(assert (=> setNonEmpty!27478 m!5936354))

(declare-fun m!5936356 () Bool)

(assert (=> b!4921599 m!5936356))

(declare-fun m!5936358 () Bool)

(assert (=> start!516740 m!5936358))

(declare-fun m!5936360 () Bool)

(assert (=> start!516740 m!5936360))

(declare-fun m!5936362 () Bool)

(assert (=> start!516740 m!5936362))

(declare-fun m!5936364 () Bool)

(assert (=> start!516740 m!5936364))

(assert (=> start!516740 m!5936358))

(declare-fun m!5936366 () Bool)

(assert (=> start!516740 m!5936366))

(declare-fun m!5936368 () Bool)

(assert (=> start!516740 m!5936368))

(declare-fun m!5936370 () Bool)

(assert (=> start!516740 m!5936370))

(declare-fun m!5936372 () Bool)

(assert (=> start!516740 m!5936372))

(declare-fun m!5936374 () Bool)

(assert (=> start!516740 m!5936374))

(check-sat (not b!4921598) (not b!4921597) (not start!516740) (not setNonEmpty!27478) (not b!4921599))
(check-sat)
(get-model)

(declare-fun d!1583191 () Bool)

(declare-fun c!837543 () Bool)

(get-info :version)

(assert (=> d!1583191 (= c!837543 ((_ is Node!14864) (c!837540 input!5492)))))

(declare-fun e!3075493 () Bool)

(assert (=> d!1583191 (= (inv!73410 (c!837540 input!5492)) e!3075493)))

(declare-fun b!4921606 () Bool)

(declare-fun inv!73412 (Conc!14864) Bool)

(assert (=> b!4921606 (= e!3075493 (inv!73412 (c!837540 input!5492)))))

(declare-fun b!4921607 () Bool)

(declare-fun e!3075494 () Bool)

(assert (=> b!4921607 (= e!3075493 e!3075494)))

(declare-fun res!2101267 () Bool)

(assert (=> b!4921607 (= res!2101267 (not ((_ is Leaf!24729) (c!837540 input!5492))))))

(assert (=> b!4921607 (=> res!2101267 e!3075494)))

(declare-fun b!4921608 () Bool)

(declare-fun inv!73413 (Conc!14864) Bool)

(assert (=> b!4921608 (= e!3075494 (inv!73413 (c!837540 input!5492)))))

(assert (= (and d!1583191 c!837543) b!4921606))

(assert (= (and d!1583191 (not c!837543)) b!4921607))

(assert (= (and b!4921607 (not res!2101267)) b!4921608))

(declare-fun m!5936376 () Bool)

(assert (=> b!4921606 m!5936376))

(declare-fun m!5936378 () Bool)

(assert (=> b!4921608 m!5936378))

(assert (=> b!4921599 d!1583191))

(declare-fun d!1583193 () Bool)

(declare-fun list!17934 (Conc!14864) List!56793)

(assert (=> d!1583193 (= (list!17933 (_2!33866 lt!2022840)) (list!17934 (c!837540 (_2!33866 lt!2022840))))))

(declare-fun bs!1179175 () Bool)

(assert (= bs!1179175 d!1583193))

(declare-fun m!5936380 () Bool)

(assert (=> bs!1179175 m!5936380))

(assert (=> start!516740 d!1583193))

(declare-fun d!1583195 () Bool)

(assert (=> d!1583195 (= (list!17933 (_1!33866 lt!2022840)) (list!17934 (c!837540 (_1!33866 lt!2022840))))))

(declare-fun bs!1179176 () Bool)

(assert (= bs!1179176 d!1583195))

(declare-fun m!5936382 () Bool)

(assert (=> bs!1179176 m!5936382))

(assert (=> start!516740 d!1583195))

(declare-fun d!1583197 () Bool)

(declare-fun e!3075500 () Bool)

(assert (=> d!1583197 e!3075500))

(declare-fun res!2101279 () Bool)

(assert (=> d!1583197 (=> (not res!2101279) (not e!3075500))))

(declare-fun lt!2022857 () tuple2!61126)

(declare-fun isBalanced!4079 (Conc!14864) Bool)

(assert (=> d!1583197 (= res!2101279 (isBalanced!4079 (c!837540 (_1!33866 lt!2022857))))))

(declare-datatypes ((tuple2!61130 0))(
  ( (tuple2!61131 (_1!33868 Conc!14864) (_2!33868 Conc!14864)) )
))
(declare-fun lt!2022856 () tuple2!61130)

(assert (=> d!1583197 (= lt!2022857 (tuple2!61127 (BalanceConc!29159 (_1!33868 lt!2022856)) (BalanceConc!29159 (_2!33868 lt!2022856))))))

(declare-fun splitAt!257 (Conc!14864 Int) tuple2!61130)

(assert (=> d!1583197 (= lt!2022856 (splitAt!257 (c!837540 input!5492) (findLongestMatchInnerZipperFast!77 z!3559 Nil!56669 0 lt!2022845 input!5492 lt!2022841)))))

(assert (=> d!1583197 (isBalanced!4079 (c!837540 input!5492))))

(assert (=> d!1583197 (= (splitAt!255 input!5492 (findLongestMatchInnerZipperFast!77 z!3559 Nil!56669 0 lt!2022845 input!5492 lt!2022841)) lt!2022857)))

(declare-fun b!4921619 () Bool)

(declare-fun res!2101278 () Bool)

(assert (=> b!4921619 (=> (not res!2101278) (not e!3075500))))

(assert (=> b!4921619 (= res!2101278 (isBalanced!4079 (c!837540 (_2!33866 lt!2022857))))))

(declare-fun b!4921620 () Bool)

(declare-fun splitAtIndex!95 (List!56793 Int) tuple2!61124)

(assert (=> b!4921620 (= e!3075500 (= (tuple2!61125 (list!17933 (_1!33866 lt!2022857)) (list!17933 (_2!33866 lt!2022857))) (splitAtIndex!95 (list!17933 input!5492) (findLongestMatchInnerZipperFast!77 z!3559 Nil!56669 0 lt!2022845 input!5492 lt!2022841))))))

(assert (= (and d!1583197 res!2101279) b!4921619))

(assert (= (and b!4921619 res!2101278) b!4921620))

(declare-fun m!5936398 () Bool)

(assert (=> d!1583197 m!5936398))

(assert (=> d!1583197 m!5936358))

(declare-fun m!5936400 () Bool)

(assert (=> d!1583197 m!5936400))

(declare-fun m!5936402 () Bool)

(assert (=> d!1583197 m!5936402))

(declare-fun m!5936404 () Bool)

(assert (=> b!4921619 m!5936404))

(declare-fun m!5936406 () Bool)

(assert (=> b!4921620 m!5936406))

(declare-fun m!5936408 () Bool)

(assert (=> b!4921620 m!5936408))

(assert (=> b!4921620 m!5936372))

(assert (=> b!4921620 m!5936372))

(assert (=> b!4921620 m!5936358))

(declare-fun m!5936410 () Bool)

(assert (=> b!4921620 m!5936410))

(assert (=> start!516740 d!1583197))

(declare-fun d!1583201 () Bool)

(declare-fun lt!2022860 () Int)

(assert (=> d!1583201 (= lt!2022860 (size!37453 (list!17933 input!5492)))))

(declare-fun size!37455 (Conc!14864) Int)

(assert (=> d!1583201 (= lt!2022860 (size!37455 (c!837540 input!5492)))))

(assert (=> d!1583201 (= (size!37454 input!5492) lt!2022860)))

(declare-fun bs!1179177 () Bool)

(assert (= bs!1179177 d!1583201))

(assert (=> bs!1179177 m!5936372))

(assert (=> bs!1179177 m!5936372))

(declare-fun m!5936412 () Bool)

(assert (=> bs!1179177 m!5936412))

(declare-fun m!5936414 () Bool)

(assert (=> bs!1179177 m!5936414))

(assert (=> start!516740 d!1583201))

(declare-fun b!4921685 () Bool)

(declare-fun c!837577 () Bool)

(declare-fun call!342610 () Bool)

(assert (=> b!4921685 (= c!837577 call!342610)))

(declare-datatypes ((Unit!147089 0))(
  ( (Unit!147090) )
))
(declare-fun lt!2023049 () Unit!147089)

(declare-fun lt!2023056 () Unit!147089)

(assert (=> b!4921685 (= lt!2023049 lt!2023056)))

(declare-fun lt!2023058 () C!26940)

(declare-fun lt!2023063 () List!56793)

(assert (=> b!4921685 (= (++!12314 (++!12314 Nil!56669 (Cons!56669 lt!2023058 Nil!56669)) lt!2023063) lt!2022845)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1385 (List!56793 C!26940 List!56793 List!56793) Unit!147089)

(assert (=> b!4921685 (= lt!2023056 (lemmaMoveElementToOtherListKeepsConcatEq!1385 Nil!56669 lt!2023058 lt!2023063 lt!2022845))))

(declare-fun tail!9661 (List!56793) List!56793)

(assert (=> b!4921685 (= lt!2023063 (tail!9661 lt!2022845))))

(declare-fun head!10514 (List!56793) C!26940)

(assert (=> b!4921685 (= lt!2023058 (head!10514 lt!2022845))))

(declare-fun lt!2023064 () Unit!147089)

(declare-fun lt!2023059 () Unit!147089)

(assert (=> b!4921685 (= lt!2023064 lt!2023059)))

(declare-fun isPrefix!4955 (List!56793 List!56793) Bool)

(declare-fun getSuffix!2943 (List!56793 List!56793) List!56793)

(assert (=> b!4921685 (isPrefix!4955 (++!12314 Nil!56669 (Cons!56669 (head!10514 (getSuffix!2943 lt!2022845 Nil!56669)) Nil!56669)) lt!2022845)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!767 (List!56793 List!56793) Unit!147089)

(assert (=> b!4921685 (= lt!2023059 (lemmaAddHeadSuffixToPrefixStillPrefix!767 Nil!56669 lt!2022845))))

(declare-fun lt!2023057 () List!56793)

(assert (=> b!4921685 (= lt!2023057 (++!12314 Nil!56669 (Cons!56669 (head!10514 lt!2022845) Nil!56669)))))

(declare-fun lt!2023061 () Unit!147089)

(declare-fun e!3075539 () Unit!147089)

(assert (=> b!4921685 (= lt!2023061 e!3075539)))

(declare-fun c!837576 () Bool)

(assert (=> b!4921685 (= c!837576 (= (size!37453 Nil!56669) (size!37453 lt!2022845)))))

(declare-fun lt!2023047 () Unit!147089)

(declare-fun lt!2023048 () Unit!147089)

(assert (=> b!4921685 (= lt!2023047 lt!2023048)))

(assert (=> b!4921685 (<= (size!37453 Nil!56669) (size!37453 lt!2022845))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!679 (List!56793 List!56793) Unit!147089)

(assert (=> b!4921685 (= lt!2023048 (lemmaIsPrefixThenSmallerEqSize!679 Nil!56669 lt!2022845))))

(declare-fun e!3075536 () tuple2!61124)

(declare-fun e!3075537 () tuple2!61124)

(assert (=> b!4921685 (= e!3075536 e!3075537)))

(declare-fun b!4921686 () Bool)

(declare-fun e!3075540 () tuple2!61124)

(assert (=> b!4921686 (= e!3075540 (tuple2!61125 Nil!56669 lt!2022845))))

(declare-fun bm!342600 () Bool)

(declare-fun call!342608 () C!26940)

(assert (=> bm!342600 (= call!342608 (head!10514 lt!2022845))))

(declare-fun bm!342601 () Bool)

(declare-fun call!342607 () (InoxSet Context!6014))

(declare-fun derivationStepZipper!582 ((InoxSet Context!6014) C!26940) (InoxSet Context!6014))

(assert (=> bm!342601 (= call!342607 (derivationStepZipper!582 z!3559 call!342608))))

(declare-fun b!4921687 () Bool)

(declare-fun e!3075542 () tuple2!61124)

(assert (=> b!4921687 (= e!3075542 (tuple2!61125 Nil!56669 Nil!56669))))

(declare-fun b!4921688 () Bool)

(assert (=> b!4921688 (= e!3075537 e!3075540)))

(declare-fun lt!2023046 () tuple2!61124)

(declare-fun call!342612 () tuple2!61124)

(assert (=> b!4921688 (= lt!2023046 call!342612)))

(declare-fun c!837578 () Bool)

(declare-fun isEmpty!30559 (List!56793) Bool)

(assert (=> b!4921688 (= c!837578 (isEmpty!30559 (_1!33865 lt!2023046)))))

(declare-fun bm!342602 () Bool)

(declare-fun call!342609 () Unit!147089)

(declare-fun lemmaIsPrefixRefl!3351 (List!56793 List!56793) Unit!147089)

(assert (=> bm!342602 (= call!342609 (lemmaIsPrefixRefl!3351 lt!2022845 lt!2022845))))

(declare-fun b!4921690 () Bool)

(assert (=> b!4921690 (= e!3075542 (tuple2!61125 Nil!56669 lt!2022845))))

(declare-fun b!4921691 () Bool)

(declare-fun e!3075541 () Bool)

(declare-fun e!3075538 () Bool)

(assert (=> b!4921691 (= e!3075541 e!3075538)))

(declare-fun res!2101285 () Bool)

(assert (=> b!4921691 (=> res!2101285 e!3075538)))

(declare-fun lt!2023050 () tuple2!61124)

(assert (=> b!4921691 (= res!2101285 (isEmpty!30559 (_1!33865 lt!2023050)))))

(declare-fun b!4921692 () Bool)

(assert (=> b!4921692 (= e!3075540 lt!2023046)))

(declare-fun b!4921693 () Bool)

(declare-fun e!3075535 () tuple2!61124)

(assert (=> b!4921693 (= e!3075535 e!3075536)))

(declare-fun c!837579 () Bool)

(assert (=> b!4921693 (= c!837579 (= 0 lt!2022841))))

(declare-fun bm!342603 () Bool)

(declare-fun call!342611 () List!56793)

(assert (=> bm!342603 (= call!342611 (tail!9661 lt!2022845))))

(declare-fun b!4921694 () Bool)

(declare-fun Unit!147091 () Unit!147089)

(assert (=> b!4921694 (= e!3075539 Unit!147091)))

(declare-fun lt!2023060 () Unit!147089)

(assert (=> b!4921694 (= lt!2023060 call!342609)))

(declare-fun call!342605 () Bool)

(assert (=> b!4921694 call!342605))

(declare-fun lt!2023053 () Unit!147089)

(assert (=> b!4921694 (= lt!2023053 lt!2023060)))

(declare-fun lt!2023039 () Unit!147089)

(declare-fun call!342606 () Unit!147089)

(assert (=> b!4921694 (= lt!2023039 call!342606)))

(assert (=> b!4921694 (= lt!2022845 Nil!56669)))

(declare-fun lt!2023042 () Unit!147089)

(assert (=> b!4921694 (= lt!2023042 lt!2023039)))

(assert (=> b!4921694 false))

(declare-fun b!4921695 () Bool)

(assert (=> b!4921695 (= e!3075537 call!342612)))

(declare-fun b!4921696 () Bool)

(declare-fun c!837575 () Bool)

(assert (=> b!4921696 (= c!837575 call!342610)))

(declare-fun lt!2023044 () Unit!147089)

(declare-fun lt!2023040 () Unit!147089)

(assert (=> b!4921696 (= lt!2023044 lt!2023040)))

(assert (=> b!4921696 (= lt!2022845 Nil!56669)))

(assert (=> b!4921696 (= lt!2023040 call!342606)))

(declare-fun lt!2023054 () Unit!147089)

(declare-fun lt!2023055 () Unit!147089)

(assert (=> b!4921696 (= lt!2023054 lt!2023055)))

(assert (=> b!4921696 call!342605))

(assert (=> b!4921696 (= lt!2023055 call!342609)))

(assert (=> b!4921696 (= e!3075536 e!3075542)))

(declare-fun b!4921697 () Bool)

(assert (=> b!4921697 (= e!3075535 (tuple2!61125 Nil!56669 lt!2022845))))

(declare-fun bm!342604 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1113 (List!56793 List!56793 List!56793) Unit!147089)

(assert (=> bm!342604 (= call!342606 (lemmaIsPrefixSameLengthThenSameList!1113 lt!2022845 Nil!56669 lt!2022845))))

(declare-fun b!4921698 () Bool)

(assert (=> b!4921698 (= e!3075538 (>= (size!37453 (_1!33865 lt!2023050)) (size!37453 Nil!56669)))))

(declare-fun bm!342605 () Bool)

(assert (=> bm!342605 (= call!342605 (isPrefix!4955 lt!2022845 lt!2022845))))

(declare-fun b!4921689 () Bool)

(declare-fun Unit!147092 () Unit!147089)

(assert (=> b!4921689 (= e!3075539 Unit!147092)))

(declare-fun d!1583203 () Bool)

(assert (=> d!1583203 e!3075541))

(declare-fun res!2101284 () Bool)

(assert (=> d!1583203 (=> (not res!2101284) (not e!3075541))))

(assert (=> d!1583203 (= res!2101284 (= (++!12314 (_1!33865 lt!2023050) (_2!33865 lt!2023050)) lt!2022845))))

(assert (=> d!1583203 (= lt!2023050 e!3075535)))

(declare-fun c!837574 () Bool)

(declare-fun lostCauseZipper!685 ((InoxSet Context!6014)) Bool)

(assert (=> d!1583203 (= c!837574 (lostCauseZipper!685 z!3559))))

(declare-fun lt!2023043 () Unit!147089)

(declare-fun Unit!147093 () Unit!147089)

(assert (=> d!1583203 (= lt!2023043 Unit!147093)))

(assert (=> d!1583203 (= (getSuffix!2943 lt!2022845 Nil!56669) lt!2022845)))

(declare-fun lt!2023041 () Unit!147089)

(declare-fun lt!2023051 () Unit!147089)

(assert (=> d!1583203 (= lt!2023041 lt!2023051)))

(declare-fun lt!2023045 () List!56793)

(assert (=> d!1583203 (= lt!2022845 lt!2023045)))

(declare-fun lemmaSamePrefixThenSameSuffix!2359 (List!56793 List!56793 List!56793 List!56793 List!56793) Unit!147089)

(assert (=> d!1583203 (= lt!2023051 (lemmaSamePrefixThenSameSuffix!2359 Nil!56669 lt!2022845 Nil!56669 lt!2023045 lt!2022845))))

(assert (=> d!1583203 (= lt!2023045 (getSuffix!2943 lt!2022845 Nil!56669))))

(declare-fun lt!2023052 () Unit!147089)

(declare-fun lt!2023062 () Unit!147089)

(assert (=> d!1583203 (= lt!2023052 lt!2023062)))

(assert (=> d!1583203 (isPrefix!4955 Nil!56669 (++!12314 Nil!56669 lt!2022845))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3179 (List!56793 List!56793) Unit!147089)

(assert (=> d!1583203 (= lt!2023062 (lemmaConcatTwoListThenFirstIsPrefix!3179 Nil!56669 lt!2022845))))

(assert (=> d!1583203 (= (++!12314 Nil!56669 lt!2022845) lt!2022845)))

(assert (=> d!1583203 (= (findLongestMatchInnerZipper!50 z!3559 Nil!56669 0 lt!2022845 lt!2022845 lt!2022841) lt!2023050)))

(declare-fun bm!342606 () Bool)

(declare-fun nullableZipper!804 ((InoxSet Context!6014)) Bool)

(assert (=> bm!342606 (= call!342610 (nullableZipper!804 z!3559))))

(declare-fun bm!342607 () Bool)

(assert (=> bm!342607 (= call!342612 (findLongestMatchInnerZipper!50 call!342607 lt!2023057 (+ 0 1) call!342611 lt!2022845 lt!2022841))))

(assert (= (and d!1583203 c!837574) b!4921697))

(assert (= (and d!1583203 (not c!837574)) b!4921693))

(assert (= (and b!4921693 c!837579) b!4921696))

(assert (= (and b!4921693 (not c!837579)) b!4921685))

(assert (= (and b!4921696 c!837575) b!4921687))

(assert (= (and b!4921696 (not c!837575)) b!4921690))

(assert (= (and b!4921685 c!837576) b!4921694))

(assert (= (and b!4921685 (not c!837576)) b!4921689))

(assert (= (and b!4921685 c!837577) b!4921688))

(assert (= (and b!4921685 (not c!837577)) b!4921695))

(assert (= (and b!4921688 c!837578) b!4921686))

(assert (= (and b!4921688 (not c!837578)) b!4921692))

(assert (= (or b!4921688 b!4921695) bm!342603))

(assert (= (or b!4921688 b!4921695) bm!342600))

(assert (= (or b!4921688 b!4921695) bm!342601))

(assert (= (or b!4921688 b!4921695) bm!342607))

(assert (= (or b!4921696 b!4921694) bm!342605))

(assert (= (or b!4921696 b!4921694) bm!342602))

(assert (= (or b!4921696 b!4921694) bm!342604))

(assert (= (or b!4921696 b!4921685) bm!342606))

(assert (= (and d!1583203 res!2101284) b!4921691))

(assert (= (and b!4921691 (not res!2101285)) b!4921698))

(declare-fun m!5936484 () Bool)

(assert (=> bm!342607 m!5936484))

(declare-fun m!5936486 () Bool)

(assert (=> d!1583203 m!5936486))

(declare-fun m!5936488 () Bool)

(assert (=> d!1583203 m!5936488))

(declare-fun m!5936490 () Bool)

(assert (=> d!1583203 m!5936490))

(declare-fun m!5936492 () Bool)

(assert (=> d!1583203 m!5936492))

(assert (=> d!1583203 m!5936370))

(declare-fun m!5936494 () Bool)

(assert (=> d!1583203 m!5936494))

(assert (=> d!1583203 m!5936370))

(declare-fun m!5936496 () Bool)

(assert (=> d!1583203 m!5936496))

(declare-fun m!5936498 () Bool)

(assert (=> b!4921688 m!5936498))

(declare-fun m!5936500 () Bool)

(assert (=> bm!342601 m!5936500))

(declare-fun m!5936502 () Bool)

(assert (=> bm!342604 m!5936502))

(declare-fun m!5936504 () Bool)

(assert (=> b!4921698 m!5936504))

(assert (=> b!4921698 m!5936352))

(declare-fun m!5936506 () Bool)

(assert (=> b!4921691 m!5936506))

(declare-fun m!5936508 () Bool)

(assert (=> bm!342602 m!5936508))

(declare-fun m!5936510 () Bool)

(assert (=> bm!342606 m!5936510))

(declare-fun m!5936512 () Bool)

(assert (=> bm!342605 m!5936512))

(declare-fun m!5936514 () Bool)

(assert (=> bm!342600 m!5936514))

(declare-fun m!5936516 () Bool)

(assert (=> bm!342603 m!5936516))

(assert (=> b!4921685 m!5936352))

(declare-fun m!5936518 () Bool)

(assert (=> b!4921685 m!5936518))

(declare-fun m!5936520 () Bool)

(assert (=> b!4921685 m!5936520))

(declare-fun m!5936522 () Bool)

(assert (=> b!4921685 m!5936522))

(assert (=> b!4921685 m!5936522))

(declare-fun m!5936524 () Bool)

(assert (=> b!4921685 m!5936524))

(assert (=> b!4921685 m!5936488))

(declare-fun m!5936526 () Bool)

(assert (=> b!4921685 m!5936526))

(declare-fun m!5936528 () Bool)

(assert (=> b!4921685 m!5936528))

(declare-fun m!5936530 () Bool)

(assert (=> b!4921685 m!5936530))

(declare-fun m!5936532 () Bool)

(assert (=> b!4921685 m!5936532))

(declare-fun m!5936534 () Bool)

(assert (=> b!4921685 m!5936534))

(assert (=> b!4921685 m!5936514))

(assert (=> b!4921685 m!5936530))

(declare-fun m!5936536 () Bool)

(assert (=> b!4921685 m!5936536))

(assert (=> b!4921685 m!5936516))

(assert (=> b!4921685 m!5936488))

(assert (=> start!516740 d!1583203))

(declare-fun b!4921710 () Bool)

(declare-fun e!3075547 () Bool)

(declare-fun lt!2023067 () List!56793)

(assert (=> b!4921710 (= e!3075547 (or (not (= lt!2022845 Nil!56669)) (= lt!2023067 Nil!56669)))))

(declare-fun b!4921707 () Bool)

(declare-fun e!3075548 () List!56793)

(assert (=> b!4921707 (= e!3075548 lt!2022845)))

(declare-fun b!4921708 () Bool)

(assert (=> b!4921708 (= e!3075548 (Cons!56669 (h!63117 Nil!56669) (++!12314 (t!367231 Nil!56669) lt!2022845)))))

(declare-fun d!1583207 () Bool)

(assert (=> d!1583207 e!3075547))

(declare-fun res!2101291 () Bool)

(assert (=> d!1583207 (=> (not res!2101291) (not e!3075547))))

(declare-fun content!10063 (List!56793) (InoxSet C!26940))

(assert (=> d!1583207 (= res!2101291 (= (content!10063 lt!2023067) ((_ map or) (content!10063 Nil!56669) (content!10063 lt!2022845))))))

(assert (=> d!1583207 (= lt!2023067 e!3075548)))

(declare-fun c!837582 () Bool)

(assert (=> d!1583207 (= c!837582 ((_ is Nil!56669) Nil!56669))))

(assert (=> d!1583207 (= (++!12314 Nil!56669 lt!2022845) lt!2023067)))

(declare-fun b!4921709 () Bool)

(declare-fun res!2101290 () Bool)

(assert (=> b!4921709 (=> (not res!2101290) (not e!3075547))))

(assert (=> b!4921709 (= res!2101290 (= (size!37453 lt!2023067) (+ (size!37453 Nil!56669) (size!37453 lt!2022845))))))

(assert (= (and d!1583207 c!837582) b!4921707))

(assert (= (and d!1583207 (not c!837582)) b!4921708))

(assert (= (and d!1583207 res!2101291) b!4921709))

(assert (= (and b!4921709 res!2101290) b!4921710))

(declare-fun m!5936538 () Bool)

(assert (=> b!4921708 m!5936538))

(declare-fun m!5936540 () Bool)

(assert (=> d!1583207 m!5936540))

(declare-fun m!5936542 () Bool)

(assert (=> d!1583207 m!5936542))

(declare-fun m!5936544 () Bool)

(assert (=> d!1583207 m!5936544))

(declare-fun m!5936546 () Bool)

(assert (=> b!4921709 m!5936546))

(assert (=> b!4921709 m!5936352))

(assert (=> b!4921709 m!5936518))

(assert (=> start!516740 d!1583207))

(declare-fun bm!342652 () Bool)

(declare-fun call!342665 () Bool)

(assert (=> bm!342652 (= call!342665 (nullableZipper!804 z!3559))))

(declare-fun b!4921795 () Bool)

(declare-fun e!3075595 () List!56793)

(declare-fun call!342664 () List!56793)

(assert (=> b!4921795 (= e!3075595 call!342664)))

(declare-fun bm!342653 () Bool)

(declare-fun call!342657 () (InoxSet Context!6014))

(declare-fun call!342661 () C!26940)

(assert (=> bm!342653 (= call!342657 (derivationStepZipper!582 z!3559 call!342661))))

(declare-fun b!4921796 () Bool)

(declare-fun e!3075598 () Int)

(declare-fun call!342663 () Int)

(assert (=> b!4921796 (= e!3075598 call!342663)))

(declare-fun c!837623 () Bool)

(declare-fun lt!2023272 () List!56793)

(declare-fun call!342660 () Unit!147089)

(declare-fun bm!342654 () Bool)

(declare-fun lt!2023241 () List!56793)

(declare-fun lt!2023266 () List!56793)

(declare-fun lt!2023274 () List!56793)

(assert (=> bm!342654 (= call!342660 (lemmaIsPrefixRefl!3351 (ite c!837623 lt!2023272 lt!2023274) (ite c!837623 lt!2023241 lt!2023266)))))

(declare-fun b!4921797 () Bool)

(declare-fun e!3075594 () Int)

(assert (=> b!4921797 (= e!3075594 0)))

(declare-fun b!4921798 () Bool)

(assert (=> b!4921798 (= e!3075594 0)))

(declare-fun b!4921799 () Bool)

(declare-fun e!3075597 () Unit!147089)

(declare-fun Unit!147094 () Unit!147089)

(assert (=> b!4921799 (= e!3075597 Unit!147094)))

(assert (=> b!4921799 (= lt!2023274 (list!17933 input!5492))))

(assert (=> b!4921799 (= lt!2023266 (list!17933 input!5492))))

(declare-fun lt!2023277 () Unit!147089)

(assert (=> b!4921799 (= lt!2023277 call!342660)))

(declare-fun call!342658 () Bool)

(assert (=> b!4921799 call!342658))

(declare-fun lt!2023250 () Unit!147089)

(assert (=> b!4921799 (= lt!2023250 lt!2023277)))

(declare-fun lt!2023278 () List!56793)

(assert (=> b!4921799 (= lt!2023278 (list!17933 input!5492))))

(declare-fun lt!2023271 () Unit!147089)

(declare-fun call!342659 () Unit!147089)

(assert (=> b!4921799 (= lt!2023271 call!342659)))

(assert (=> b!4921799 (= lt!2023278 Nil!56669)))

(declare-fun lt!2023256 () Unit!147089)

(assert (=> b!4921799 (= lt!2023256 lt!2023271)))

(assert (=> b!4921799 false))

(declare-fun b!4921800 () Bool)

(declare-fun c!837621 () Bool)

(assert (=> b!4921800 (= c!837621 call!342665)))

(declare-fun lt!2023258 () Unit!147089)

(declare-fun lt!2023252 () Unit!147089)

(assert (=> b!4921800 (= lt!2023258 lt!2023252)))

(declare-fun lt!2023275 () C!26940)

(declare-fun lt!2023264 () List!56793)

(declare-fun lt!2023268 () List!56793)

(assert (=> b!4921800 (= (++!12314 (++!12314 Nil!56669 (Cons!56669 lt!2023275 Nil!56669)) lt!2023264) lt!2023268)))

(assert (=> b!4921800 (= lt!2023252 (lemmaMoveElementToOtherListKeepsConcatEq!1385 Nil!56669 lt!2023275 lt!2023264 lt!2023268))))

(assert (=> b!4921800 (= lt!2023268 (list!17933 input!5492))))

(assert (=> b!4921800 (= lt!2023264 (tail!9661 lt!2022845))))

(declare-fun apply!13643 (BalanceConc!29158 Int) C!26940)

(assert (=> b!4921800 (= lt!2023275 (apply!13643 input!5492 0))))

(declare-fun lt!2023243 () Unit!147089)

(declare-fun lt!2023269 () Unit!147089)

(assert (=> b!4921800 (= lt!2023243 lt!2023269)))

(declare-fun lt!2023260 () List!56793)

(assert (=> b!4921800 (isPrefix!4955 (++!12314 Nil!56669 (Cons!56669 (head!10514 (getSuffix!2943 lt!2023260 Nil!56669)) Nil!56669)) lt!2023260)))

(assert (=> b!4921800 (= lt!2023269 (lemmaAddHeadSuffixToPrefixStillPrefix!767 Nil!56669 lt!2023260))))

(assert (=> b!4921800 (= lt!2023260 (list!17933 input!5492))))

(declare-fun lt!2023261 () Unit!147089)

(assert (=> b!4921800 (= lt!2023261 e!3075597)))

(declare-fun c!837622 () Bool)

(assert (=> b!4921800 (= c!837622 (= (size!37453 Nil!56669) (size!37454 input!5492)))))

(declare-fun lt!2023242 () Unit!147089)

(declare-fun lt!2023253 () Unit!147089)

(assert (=> b!4921800 (= lt!2023242 lt!2023253)))

(declare-fun lt!2023247 () List!56793)

(assert (=> b!4921800 (<= (size!37453 Nil!56669) (size!37453 lt!2023247))))

(assert (=> b!4921800 (= lt!2023253 (lemmaIsPrefixThenSmallerEqSize!679 Nil!56669 lt!2023247))))

(assert (=> b!4921800 (= lt!2023247 (list!17933 input!5492))))

(declare-fun lt!2023251 () Unit!147089)

(declare-fun lt!2023267 () Unit!147089)

(assert (=> b!4921800 (= lt!2023251 lt!2023267)))

(declare-fun lt!2023280 () List!56793)

(declare-fun drop!2218 (List!56793 Int) List!56793)

(declare-fun apply!13644 (List!56793 Int) C!26940)

(assert (=> b!4921800 (= (head!10514 (drop!2218 lt!2023280 0)) (apply!13644 lt!2023280 0))))

(declare-fun lemmaDropApply!1276 (List!56793 Int) Unit!147089)

(assert (=> b!4921800 (= lt!2023267 (lemmaDropApply!1276 lt!2023280 0))))

(assert (=> b!4921800 (= lt!2023280 (list!17933 input!5492))))

(declare-fun lt!2023265 () Unit!147089)

(declare-fun lt!2023246 () Unit!147089)

(assert (=> b!4921800 (= lt!2023265 lt!2023246)))

(declare-fun lt!2023259 () List!56793)

(declare-fun lt!2023240 () List!56793)

(assert (=> b!4921800 (and (= lt!2023259 Nil!56669) (= lt!2023240 lt!2022845))))

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!651 (List!56793 List!56793 List!56793 List!56793) Unit!147089)

(assert (=> b!4921800 (= lt!2023246 (lemmaConcatSameAndSameSizesThenSameLists!651 lt!2023259 lt!2023240 Nil!56669 lt!2022845))))

(assert (=> b!4921800 (= lt!2023240 call!342664)))

(declare-fun lt!2023257 () tuple2!61126)

(assert (=> b!4921800 (= lt!2023259 (list!17933 (_1!33866 lt!2023257)))))

(assert (=> b!4921800 (= lt!2023257 (splitAt!255 input!5492 0))))

(declare-fun e!3075596 () Int)

(assert (=> b!4921800 (= e!3075596 e!3075598)))

(declare-fun call!342662 () List!56793)

(declare-fun call!342666 () List!56793)

(declare-fun bm!342655 () Bool)

(assert (=> bm!342655 (= call!342663 (findLongestMatchInnerZipperFast!77 call!342657 call!342666 (+ 0 1) call!342662 input!5492 lt!2022841))))

(declare-fun b!4921801 () Bool)

(declare-fun e!3075599 () Int)

(assert (=> b!4921801 (= e!3075599 0)))

(declare-fun bm!342656 () Bool)

(assert (=> bm!342656 (= call!342666 (++!12314 Nil!56669 (Cons!56669 call!342661 Nil!56669)))))

(declare-fun b!4921802 () Bool)

(declare-fun Unit!147095 () Unit!147089)

(assert (=> b!4921802 (= e!3075597 Unit!147095)))

(declare-fun bm!342657 () Bool)

(assert (=> bm!342657 (= call!342664 (list!17933 (ite c!837623 input!5492 (_2!33866 lt!2023257))))))

(declare-fun b!4921803 () Bool)

(declare-fun c!837620 () Bool)

(assert (=> b!4921803 (= c!837620 call!342665)))

(declare-fun lt!2023270 () Unit!147089)

(declare-fun lt!2023262 () Unit!147089)

(assert (=> b!4921803 (= lt!2023270 lt!2023262)))

(declare-fun lt!2023239 () List!56793)

(assert (=> b!4921803 (= lt!2023239 Nil!56669)))

(assert (=> b!4921803 (= lt!2023262 call!342659)))

(assert (=> b!4921803 (= lt!2023239 call!342664)))

(declare-fun lt!2023254 () Unit!147089)

(declare-fun lt!2023276 () Unit!147089)

(assert (=> b!4921803 (= lt!2023254 lt!2023276)))

(assert (=> b!4921803 call!342658))

(assert (=> b!4921803 (= lt!2023276 call!342660)))

(assert (=> b!4921803 (= lt!2023241 call!342664)))

(assert (=> b!4921803 (= lt!2023272 call!342664)))

(assert (=> b!4921803 (= e!3075596 e!3075594)))

(declare-fun b!4921804 () Bool)

(assert (=> b!4921804 (= e!3075595 (list!17933 input!5492))))

(declare-fun bm!342658 () Bool)

(declare-fun c!837624 () Bool)

(assert (=> bm!342658 (= c!837624 c!837623)))

(assert (=> bm!342658 (= call!342659 (lemmaIsPrefixSameLengthThenSameList!1113 (ite c!837623 lt!2023239 lt!2023278) Nil!56669 e!3075595))))

(declare-fun bm!342659 () Bool)

(assert (=> bm!342659 (= call!342661 (apply!13643 input!5492 0))))

(declare-fun b!4921805 () Bool)

(assert (=> b!4921805 (= e!3075599 e!3075596)))

(assert (=> b!4921805 (= c!837623 (= 0 lt!2022841))))

(declare-fun bm!342660 () Bool)

(assert (=> bm!342660 (= call!342662 (tail!9661 lt!2022845))))

(declare-fun d!1583209 () Bool)

(declare-fun lt!2023244 () Int)

(assert (=> d!1583209 (= (size!37453 (_1!33865 (findLongestMatchInnerZipper!50 z!3559 Nil!56669 0 lt!2022845 (list!17933 input!5492) lt!2022841))) lt!2023244)))

(assert (=> d!1583209 (= lt!2023244 e!3075599)))

(declare-fun c!837619 () Bool)

(assert (=> d!1583209 (= c!837619 (lostCauseZipper!685 z!3559))))

(declare-fun lt!2023263 () Unit!147089)

(declare-fun Unit!147096 () Unit!147089)

(assert (=> d!1583209 (= lt!2023263 Unit!147096)))

(assert (=> d!1583209 (= (getSuffix!2943 (list!17933 input!5492) Nil!56669) lt!2022845)))

(declare-fun lt!2023273 () Unit!147089)

(declare-fun lt!2023245 () Unit!147089)

(assert (=> d!1583209 (= lt!2023273 lt!2023245)))

(declare-fun lt!2023248 () List!56793)

(assert (=> d!1583209 (= lt!2022845 lt!2023248)))

(assert (=> d!1583209 (= lt!2023245 (lemmaSamePrefixThenSameSuffix!2359 Nil!56669 lt!2022845 Nil!56669 lt!2023248 (list!17933 input!5492)))))

(assert (=> d!1583209 (= lt!2023248 (getSuffix!2943 (list!17933 input!5492) Nil!56669))))

(declare-fun lt!2023255 () Unit!147089)

(declare-fun lt!2023249 () Unit!147089)

(assert (=> d!1583209 (= lt!2023255 lt!2023249)))

(assert (=> d!1583209 (isPrefix!4955 Nil!56669 (++!12314 Nil!56669 lt!2022845))))

(assert (=> d!1583209 (= lt!2023249 (lemmaConcatTwoListThenFirstIsPrefix!3179 Nil!56669 lt!2022845))))

(assert (=> d!1583209 (= (++!12314 Nil!56669 lt!2022845) (list!17933 input!5492))))

(assert (=> d!1583209 (= (findLongestMatchInnerZipperFast!77 z!3559 Nil!56669 0 lt!2022845 input!5492 lt!2022841) lt!2023244)))

(declare-fun bm!342661 () Bool)

(assert (=> bm!342661 (= call!342658 (isPrefix!4955 (ite c!837623 lt!2023272 lt!2023274) (ite c!837623 lt!2023241 lt!2023266)))))

(declare-fun b!4921806 () Bool)

(declare-fun lt!2023279 () Int)

(assert (=> b!4921806 (= e!3075598 (ite (= lt!2023279 0) 0 lt!2023279))))

(assert (=> b!4921806 (= lt!2023279 call!342663)))

(assert (= (and d!1583209 c!837619) b!4921801))

(assert (= (and d!1583209 (not c!837619)) b!4921805))

(assert (= (and b!4921805 c!837623) b!4921803))

(assert (= (and b!4921805 (not c!837623)) b!4921800))

(assert (= (and b!4921803 c!837620) b!4921797))

(assert (= (and b!4921803 (not c!837620)) b!4921798))

(assert (= (and b!4921800 c!837622) b!4921799))

(assert (= (and b!4921800 (not c!837622)) b!4921802))

(assert (= (and b!4921800 c!837621) b!4921806))

(assert (= (and b!4921800 (not c!837621)) b!4921796))

(assert (= (or b!4921806 b!4921796) bm!342659))

(assert (= (or b!4921806 b!4921796) bm!342660))

(assert (= (or b!4921806 b!4921796) bm!342653))

(assert (= (or b!4921806 b!4921796) bm!342656))

(assert (= (or b!4921806 b!4921796) bm!342655))

(assert (= (or b!4921803 b!4921800) bm!342652))

(assert (= (or b!4921803 b!4921799) bm!342654))

(assert (= (or b!4921803 b!4921799) bm!342661))

(assert (= (or b!4921803 b!4921800) bm!342657))

(assert (= (or b!4921803 b!4921799) bm!342658))

(assert (= (and bm!342658 c!837624) b!4921795))

(assert (= (and bm!342658 (not c!837624)) b!4921804))

(declare-fun m!5936614 () Bool)

(assert (=> bm!342659 m!5936614))

(declare-fun m!5936616 () Bool)

(assert (=> b!4921800 m!5936616))

(declare-fun m!5936618 () Bool)

(assert (=> b!4921800 m!5936618))

(assert (=> b!4921800 m!5936516))

(declare-fun m!5936620 () Bool)

(assert (=> b!4921800 m!5936620))

(declare-fun m!5936622 () Bool)

(assert (=> b!4921800 m!5936622))

(declare-fun m!5936624 () Bool)

(assert (=> b!4921800 m!5936624))

(declare-fun m!5936626 () Bool)

(assert (=> b!4921800 m!5936626))

(declare-fun m!5936628 () Bool)

(assert (=> b!4921800 m!5936628))

(assert (=> b!4921800 m!5936364))

(declare-fun m!5936630 () Bool)

(assert (=> b!4921800 m!5936630))

(declare-fun m!5936632 () Bool)

(assert (=> b!4921800 m!5936632))

(declare-fun m!5936634 () Bool)

(assert (=> b!4921800 m!5936634))

(assert (=> b!4921800 m!5936352))

(assert (=> b!4921800 m!5936614))

(assert (=> b!4921800 m!5936628))

(declare-fun m!5936636 () Bool)

(assert (=> b!4921800 m!5936636))

(declare-fun m!5936638 () Bool)

(assert (=> b!4921800 m!5936638))

(declare-fun m!5936640 () Bool)

(assert (=> b!4921800 m!5936640))

(assert (=> b!4921800 m!5936618))

(declare-fun m!5936642 () Bool)

(assert (=> b!4921800 m!5936642))

(declare-fun m!5936644 () Bool)

(assert (=> b!4921800 m!5936644))

(assert (=> b!4921800 m!5936372))

(assert (=> b!4921800 m!5936630))

(declare-fun m!5936646 () Bool)

(assert (=> b!4921800 m!5936646))

(assert (=> b!4921800 m!5936644))

(declare-fun m!5936648 () Bool)

(assert (=> b!4921800 m!5936648))

(declare-fun m!5936650 () Bool)

(assert (=> bm!342655 m!5936650))

(assert (=> bm!342652 m!5936510))

(declare-fun m!5936652 () Bool)

(assert (=> bm!342656 m!5936652))

(assert (=> b!4921804 m!5936372))

(declare-fun m!5936654 () Bool)

(assert (=> bm!342658 m!5936654))

(declare-fun m!5936656 () Bool)

(assert (=> bm!342654 m!5936656))

(assert (=> d!1583209 m!5936372))

(assert (=> d!1583209 m!5936370))

(assert (=> d!1583209 m!5936496))

(declare-fun m!5936658 () Bool)

(assert (=> d!1583209 m!5936658))

(assert (=> d!1583209 m!5936372))

(declare-fun m!5936660 () Bool)

(assert (=> d!1583209 m!5936660))

(assert (=> d!1583209 m!5936372))

(declare-fun m!5936662 () Bool)

(assert (=> d!1583209 m!5936662))

(assert (=> d!1583209 m!5936372))

(declare-fun m!5936664 () Bool)

(assert (=> d!1583209 m!5936664))

(assert (=> d!1583209 m!5936494))

(assert (=> d!1583209 m!5936492))

(assert (=> d!1583209 m!5936370))

(assert (=> b!4921799 m!5936372))

(declare-fun m!5936666 () Bool)

(assert (=> bm!342657 m!5936666))

(declare-fun m!5936668 () Bool)

(assert (=> bm!342661 m!5936668))

(declare-fun m!5936670 () Bool)

(assert (=> bm!342653 m!5936670))

(assert (=> bm!342660 m!5936516))

(assert (=> start!516740 d!1583209))

(declare-fun d!1583227 () Bool)

(assert (=> d!1583227 (= (list!17933 input!5492) (list!17934 (c!837540 input!5492)))))

(declare-fun bs!1179183 () Bool)

(assert (= bs!1179183 d!1583227))

(declare-fun m!5936672 () Bool)

(assert (=> bs!1179183 m!5936672))

(assert (=> start!516740 d!1583227))

(declare-fun d!1583229 () Bool)

(assert (=> d!1583229 (= (inv!73411 input!5492) (isBalanced!4079 (c!837540 input!5492)))))

(declare-fun bs!1179184 () Bool)

(assert (= bs!1179184 d!1583229))

(assert (=> bs!1179184 m!5936402))

(assert (=> start!516740 d!1583229))

(declare-fun d!1583231 () Bool)

(declare-fun lambda!245106 () Int)

(declare-fun forall!13126 (List!56794 Int) Bool)

(assert (=> d!1583231 (= (inv!73409 setElem!27478) (forall!13126 (exprs!3507 setElem!27478) lambda!245106))))

(declare-fun bs!1179186 () Bool)

(assert (= bs!1179186 d!1583231))

(declare-fun m!5936688 () Bool)

(assert (=> bs!1179186 m!5936688))

(assert (=> setNonEmpty!27478 d!1583231))

(declare-fun d!1583235 () Bool)

(declare-fun lt!2023283 () Int)

(assert (=> d!1583235 (>= lt!2023283 0)))

(declare-fun e!3075620 () Int)

(assert (=> d!1583235 (= lt!2023283 e!3075620)))

(declare-fun c!837630 () Bool)

(assert (=> d!1583235 (= c!837630 ((_ is Nil!56669) Nil!56669))))

(assert (=> d!1583235 (= (size!37453 Nil!56669) lt!2023283)))

(declare-fun b!4921841 () Bool)

(assert (=> b!4921841 (= e!3075620 0)))

(declare-fun b!4921842 () Bool)

(assert (=> b!4921842 (= e!3075620 (+ 1 (size!37453 (t!367231 Nil!56669))))))

(assert (= (and d!1583235 c!837630) b!4921841))

(assert (= (and d!1583235 (not c!837630)) b!4921842))

(declare-fun m!5936690 () Bool)

(assert (=> b!4921842 m!5936690))

(assert (=> b!4921598 d!1583235))

(declare-fun b!4921851 () Bool)

(declare-fun tp!1383068 () Bool)

(declare-fun tp!1383069 () Bool)

(declare-fun e!3075625 () Bool)

(assert (=> b!4921851 (= e!3075625 (and (inv!73410 (left!41318 (c!837540 input!5492))) tp!1383068 (inv!73410 (right!41648 (c!837540 input!5492))) tp!1383069))))

(declare-fun b!4921853 () Bool)

(declare-fun e!3075626 () Bool)

(declare-fun tp!1383067 () Bool)

(assert (=> b!4921853 (= e!3075626 tp!1383067)))

(declare-fun b!4921852 () Bool)

(declare-fun inv!73417 (IArray!29789) Bool)

(assert (=> b!4921852 (= e!3075625 (and (inv!73417 (xs!18184 (c!837540 input!5492))) e!3075626))))

(assert (=> b!4921599 (= tp!1383039 (and (inv!73410 (c!837540 input!5492)) e!3075625))))

(assert (= (and b!4921599 ((_ is Node!14864) (c!837540 input!5492))) b!4921851))

(assert (= b!4921852 b!4921853))

(assert (= (and b!4921599 ((_ is Leaf!24729) (c!837540 input!5492))) b!4921852))

(declare-fun m!5936692 () Bool)

(assert (=> b!4921851 m!5936692))

(declare-fun m!5936694 () Bool)

(assert (=> b!4921851 m!5936694))

(declare-fun m!5936696 () Bool)

(assert (=> b!4921852 m!5936696))

(assert (=> b!4921599 m!5936356))

(declare-fun condSetEmpty!27484 () Bool)

(assert (=> setNonEmpty!27478 (= condSetEmpty!27484 (= setRest!27478 ((as const (Array Context!6014 Bool)) false)))))

(declare-fun setRes!27484 () Bool)

(assert (=> setNonEmpty!27478 (= tp!1383038 setRes!27484)))

(declare-fun setIsEmpty!27484 () Bool)

(assert (=> setIsEmpty!27484 setRes!27484))

(declare-fun e!3075629 () Bool)

(declare-fun tp!1383074 () Bool)

(declare-fun setNonEmpty!27484 () Bool)

(declare-fun setElem!27484 () Context!6014)

(assert (=> setNonEmpty!27484 (= setRes!27484 (and tp!1383074 (inv!73409 setElem!27484) e!3075629))))

(declare-fun setRest!27484 () (InoxSet Context!6014))

(assert (=> setNonEmpty!27484 (= setRest!27478 ((_ map or) (store ((as const (Array Context!6014 Bool)) false) setElem!27484 true) setRest!27484))))

(declare-fun b!4921858 () Bool)

(declare-fun tp!1383075 () Bool)

(assert (=> b!4921858 (= e!3075629 tp!1383075)))

(assert (= (and setNonEmpty!27478 condSetEmpty!27484) setIsEmpty!27484))

(assert (= (and setNonEmpty!27478 (not condSetEmpty!27484)) setNonEmpty!27484))

(assert (= setNonEmpty!27484 b!4921858))

(declare-fun m!5936698 () Bool)

(assert (=> setNonEmpty!27484 m!5936698))

(declare-fun b!4921863 () Bool)

(declare-fun e!3075632 () Bool)

(declare-fun tp!1383080 () Bool)

(declare-fun tp!1383081 () Bool)

(assert (=> b!4921863 (= e!3075632 (and tp!1383080 tp!1383081))))

(assert (=> b!4921597 (= tp!1383037 e!3075632)))

(assert (= (and b!4921597 ((_ is Cons!56670) (exprs!3507 setElem!27478))) b!4921863))

(check-sat (not bm!342661) (not d!1583193) (not b!4921800) (not b!4921685) (not bm!342602) (not d!1583203) (not b!4921853) (not bm!342605) (not b!4921842) (not bm!342600) (not bm!342660) (not bm!342657) (not b!4921799) (not bm!342652) (not bm!342656) (not b!4921804) (not d!1583197) (not b!4921608) (not b!4921698) (not b!4921691) (not b!4921851) (not d!1583229) (not bm!342655) (not bm!342603) (not bm!342604) (not b!4921620) (not bm!342653) (not setNonEmpty!27484) (not bm!342654) (not bm!342606) (not d!1583231) (not b!4921863) (not b!4921606) (not d!1583195) (not d!1583201) (not b!4921852) (not bm!342607) (not b!4921709) (not b!4921688) (not b!4921858) (not d!1583227) (not d!1583207) (not d!1583209) (not bm!342659) (not b!4921619) (not b!4921708) (not bm!342658) (not b!4921599) (not bm!342601))
(check-sat)
