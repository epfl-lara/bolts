; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!516700 () Bool)

(assert start!516700)

(declare-fun b!4921329 () Bool)

(declare-fun e!3075332 () Bool)

(declare-fun tp!1382978 () Bool)

(assert (=> b!4921329 (= e!3075332 tp!1382978)))

(declare-fun b!4921328 () Bool)

(declare-fun e!3075331 () Bool)

(declare-datatypes ((C!26936 0))(
  ( (C!26937 (val!22802 Int)) )
))
(declare-datatypes ((List!56789 0))(
  ( (Nil!56665) (Cons!56665 (h!63113 C!26936) (t!367227 List!56789)) )
))
(declare-datatypes ((IArray!29785 0))(
  ( (IArray!29786 (innerList!14950 List!56789)) )
))
(declare-datatypes ((Conc!14862 0))(
  ( (Node!14862 (left!41315 Conc!14862) (right!41645 Conc!14862) (csize!29954 Int) (cheight!15073 Int)) (Leaf!24726 (xs!18182 IArray!29785) (csize!29955 Int)) (Empty!14862) )
))
(declare-datatypes ((BalanceConc!29154 0))(
  ( (BalanceConc!29155 (c!837451 Conc!14862)) )
))
(declare-fun input!5492 () BalanceConc!29154)

(declare-fun tp!1382977 () Bool)

(declare-fun inv!73394 (Conc!14862) Bool)

(assert (=> b!4921328 (= e!3075331 (and (inv!73394 (c!837451 input!5492)) tp!1382977))))

(declare-fun lt!2022373 () List!56789)

(declare-datatypes ((tuple2!61112 0))(
  ( (tuple2!61113 (_1!33859 List!56789) (_2!33859 List!56789)) )
))
(declare-fun lt!2022374 () tuple2!61112)

(declare-fun lt!2022377 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13363 0))(
  ( (ElementMatch!13363 (c!837452 C!26936)) (Concat!21936 (regOne!27238 Regex!13363) (regTwo!27238 Regex!13363)) (EmptyExpr!13363) (Star!13363 (reg!13692 Regex!13363)) (EmptyLang!13363) (Union!13363 (regOne!27239 Regex!13363) (regTwo!27239 Regex!13363)) )
))
(declare-datatypes ((List!56790 0))(
  ( (Nil!56666) (Cons!56666 (h!63114 Regex!13363) (t!367228 List!56790)) )
))
(declare-datatypes ((Context!6010 0))(
  ( (Context!6011 (exprs!3505 List!56790)) )
))
(declare-fun z!3559 () (InoxSet Context!6010))

(declare-fun findLongestMatchInnerZipper!48 ((InoxSet Context!6010) List!56789 Int List!56789 List!56789 Int) tuple2!61112)

(assert (=> start!516700 (= lt!2022374 (findLongestMatchInnerZipper!48 z!3559 Nil!56665 0 lt!2022373 lt!2022373 lt!2022377))))

(declare-fun lt!2022375 () List!56789)

(declare-datatypes ((tuple2!61114 0))(
  ( (tuple2!61115 (_1!33860 BalanceConc!29154) (_2!33860 BalanceConc!29154)) )
))
(declare-fun lt!2022376 () tuple2!61114)

(declare-fun list!17929 (BalanceConc!29154) List!56789)

(assert (=> start!516700 (= lt!2022375 (list!17929 (_2!33860 lt!2022376)))))

(declare-fun lt!2022372 () List!56789)

(assert (=> start!516700 (= lt!2022372 (list!17929 (_1!33860 lt!2022376)))))

(declare-fun splitAt!251 (BalanceConc!29154 Int) tuple2!61114)

(declare-fun findLongestMatchInnerZipperFast!75 ((InoxSet Context!6010) List!56789 Int List!56789 BalanceConc!29154 Int) Int)

(assert (=> start!516700 (= lt!2022376 (splitAt!251 input!5492 (findLongestMatchInnerZipperFast!75 z!3559 Nil!56665 0 lt!2022373 input!5492 lt!2022377)))))

(declare-fun size!37446 (BalanceConc!29154) Int)

(assert (=> start!516700 (= lt!2022377 (size!37446 input!5492))))

(assert (=> start!516700 (= lt!2022373 (list!17929 input!5492))))

(declare-fun ++!12312 (List!56789 List!56789) List!56789)

(assert (=> start!516700 (not (= (++!12312 Nil!56665 lt!2022373) lt!2022373))))

(declare-fun inv!73395 (BalanceConc!29154) Bool)

(assert (=> start!516700 (and (inv!73395 input!5492) e!3075331)))

(declare-fun condSetEmpty!27466 () Bool)

(assert (=> start!516700 (= condSetEmpty!27466 (= z!3559 ((as const (Array Context!6010 Bool)) false)))))

(declare-fun setRes!27466 () Bool)

(assert (=> start!516700 setRes!27466))

(declare-fun setElem!27466 () Context!6010)

(declare-fun setNonEmpty!27466 () Bool)

(declare-fun tp!1382979 () Bool)

(declare-fun inv!73396 (Context!6010) Bool)

(assert (=> setNonEmpty!27466 (= setRes!27466 (and tp!1382979 (inv!73396 setElem!27466) e!3075332))))

(declare-fun setRest!27466 () (InoxSet Context!6010))

(assert (=> setNonEmpty!27466 (= z!3559 ((_ map or) (store ((as const (Array Context!6010 Bool)) false) setElem!27466 true) setRest!27466))))

(declare-fun setIsEmpty!27466 () Bool)

(assert (=> setIsEmpty!27466 setRes!27466))

(assert (= start!516700 b!4921328))

(assert (= (and start!516700 condSetEmpty!27466) setIsEmpty!27466))

(assert (= (and start!516700 (not condSetEmpty!27466)) setNonEmpty!27466))

(assert (= setNonEmpty!27466 b!4921329))

(declare-fun m!5935982 () Bool)

(assert (=> b!4921328 m!5935982))

(declare-fun m!5935984 () Bool)

(assert (=> start!516700 m!5935984))

(declare-fun m!5935986 () Bool)

(assert (=> start!516700 m!5935986))

(declare-fun m!5935988 () Bool)

(assert (=> start!516700 m!5935988))

(assert (=> start!516700 m!5935988))

(declare-fun m!5935990 () Bool)

(assert (=> start!516700 m!5935990))

(declare-fun m!5935992 () Bool)

(assert (=> start!516700 m!5935992))

(declare-fun m!5935994 () Bool)

(assert (=> start!516700 m!5935994))

(declare-fun m!5935996 () Bool)

(assert (=> start!516700 m!5935996))

(declare-fun m!5935998 () Bool)

(assert (=> start!516700 m!5935998))

(declare-fun m!5936000 () Bool)

(assert (=> start!516700 m!5936000))

(declare-fun m!5936002 () Bool)

(assert (=> setNonEmpty!27466 m!5936002))

(check-sat (not setNonEmpty!27466) (not b!4921328) (not start!516700) (not b!4921329))
(check-sat)
(get-model)

(declare-fun d!1583146 () Bool)

(declare-fun lambda!245097 () Int)

(declare-fun forall!13123 (List!56790 Int) Bool)

(assert (=> d!1583146 (= (inv!73396 setElem!27466) (forall!13123 (exprs!3505 setElem!27466) lambda!245097))))

(declare-fun bs!1179166 () Bool)

(assert (= bs!1179166 d!1583146))

(declare-fun m!5936156 () Bool)

(assert (=> bs!1179166 m!5936156))

(assert (=> setNonEmpty!27466 d!1583146))

(declare-fun d!1583168 () Bool)

(declare-fun c!837497 () Bool)

(get-info :version)

(assert (=> d!1583168 (= c!837497 ((_ is Node!14862) (c!837451 input!5492)))))

(declare-fun e!3075394 () Bool)

(assert (=> d!1583168 (= (inv!73394 (c!837451 input!5492)) e!3075394)))

(declare-fun b!4921441 () Bool)

(declare-fun inv!73399 (Conc!14862) Bool)

(assert (=> b!4921441 (= e!3075394 (inv!73399 (c!837451 input!5492)))))

(declare-fun b!4921442 () Bool)

(declare-fun e!3075395 () Bool)

(assert (=> b!4921442 (= e!3075394 e!3075395)))

(declare-fun res!2101240 () Bool)

(assert (=> b!4921442 (= res!2101240 (not ((_ is Leaf!24726) (c!837451 input!5492))))))

(assert (=> b!4921442 (=> res!2101240 e!3075395)))

(declare-fun b!4921443 () Bool)

(declare-fun inv!73400 (Conc!14862) Bool)

(assert (=> b!4921443 (= e!3075395 (inv!73400 (c!837451 input!5492)))))

(assert (= (and d!1583168 c!837497) b!4921441))

(assert (= (and d!1583168 (not c!837497)) b!4921442))

(assert (= (and b!4921442 (not res!2101240)) b!4921443))

(declare-fun m!5936158 () Bool)

(assert (=> b!4921441 m!5936158))

(declare-fun m!5936160 () Bool)

(assert (=> b!4921443 m!5936160))

(assert (=> b!4921328 d!1583168))

(declare-fun d!1583170 () Bool)

(declare-fun list!17931 (Conc!14862) List!56789)

(assert (=> d!1583170 (= (list!17929 (_1!33860 lt!2022376)) (list!17931 (c!837451 (_1!33860 lt!2022376))))))

(declare-fun bs!1179167 () Bool)

(assert (= bs!1179167 d!1583170))

(declare-fun m!5936162 () Bool)

(assert (=> bs!1179167 m!5936162))

(assert (=> start!516700 d!1583170))

(declare-fun d!1583172 () Bool)

(assert (=> d!1583172 (= (list!17929 (_2!33860 lt!2022376)) (list!17931 (c!837451 (_2!33860 lt!2022376))))))

(declare-fun bs!1179168 () Bool)

(assert (= bs!1179168 d!1583172))

(declare-fun m!5936164 () Bool)

(assert (=> bs!1179168 m!5936164))

(assert (=> start!516700 d!1583172))

(declare-fun d!1583174 () Bool)

(declare-fun e!3075398 () Bool)

(assert (=> d!1583174 e!3075398))

(declare-fun res!2101245 () Bool)

(assert (=> d!1583174 (=> (not res!2101245) (not e!3075398))))

(declare-fun lt!2022598 () tuple2!61114)

(declare-fun isBalanced!4077 (Conc!14862) Bool)

(assert (=> d!1583174 (= res!2101245 (isBalanced!4077 (c!837451 (_1!33860 lt!2022598))))))

(declare-datatypes ((tuple2!61118 0))(
  ( (tuple2!61119 (_1!33862 Conc!14862) (_2!33862 Conc!14862)) )
))
(declare-fun lt!2022599 () tuple2!61118)

(assert (=> d!1583174 (= lt!2022598 (tuple2!61115 (BalanceConc!29155 (_1!33862 lt!2022599)) (BalanceConc!29155 (_2!33862 lt!2022599))))))

(declare-fun splitAt!253 (Conc!14862 Int) tuple2!61118)

(assert (=> d!1583174 (= lt!2022599 (splitAt!253 (c!837451 input!5492) (findLongestMatchInnerZipperFast!75 z!3559 Nil!56665 0 lt!2022373 input!5492 lt!2022377)))))

(assert (=> d!1583174 (isBalanced!4077 (c!837451 input!5492))))

(assert (=> d!1583174 (= (splitAt!251 input!5492 (findLongestMatchInnerZipperFast!75 z!3559 Nil!56665 0 lt!2022373 input!5492 lt!2022377)) lt!2022598)))

(declare-fun b!4921448 () Bool)

(declare-fun res!2101246 () Bool)

(assert (=> b!4921448 (=> (not res!2101246) (not e!3075398))))

(assert (=> b!4921448 (= res!2101246 (isBalanced!4077 (c!837451 (_2!33860 lt!2022598))))))

(declare-fun b!4921449 () Bool)

(declare-fun splitAtIndex!93 (List!56789 Int) tuple2!61112)

(assert (=> b!4921449 (= e!3075398 (= (tuple2!61113 (list!17929 (_1!33860 lt!2022598)) (list!17929 (_2!33860 lt!2022598))) (splitAtIndex!93 (list!17929 input!5492) (findLongestMatchInnerZipperFast!75 z!3559 Nil!56665 0 lt!2022373 input!5492 lt!2022377))))))

(assert (= (and d!1583174 res!2101245) b!4921448))

(assert (= (and b!4921448 res!2101246) b!4921449))

(declare-fun m!5936166 () Bool)

(assert (=> d!1583174 m!5936166))

(assert (=> d!1583174 m!5935988))

(declare-fun m!5936168 () Bool)

(assert (=> d!1583174 m!5936168))

(declare-fun m!5936170 () Bool)

(assert (=> d!1583174 m!5936170))

(declare-fun m!5936172 () Bool)

(assert (=> b!4921448 m!5936172))

(declare-fun m!5936174 () Bool)

(assert (=> b!4921449 m!5936174))

(declare-fun m!5936176 () Bool)

(assert (=> b!4921449 m!5936176))

(assert (=> b!4921449 m!5935994))

(assert (=> b!4921449 m!5935994))

(assert (=> b!4921449 m!5935988))

(declare-fun m!5936178 () Bool)

(assert (=> b!4921449 m!5936178))

(assert (=> start!516700 d!1583174))

(declare-fun b!4921459 () Bool)

(declare-fun e!3075404 () List!56789)

(assert (=> b!4921459 (= e!3075404 (Cons!56665 (h!63113 Nil!56665) (++!12312 (t!367227 Nil!56665) lt!2022373)))))

(declare-fun d!1583176 () Bool)

(declare-fun e!3075403 () Bool)

(assert (=> d!1583176 e!3075403))

(declare-fun res!2101252 () Bool)

(assert (=> d!1583176 (=> (not res!2101252) (not e!3075403))))

(declare-fun lt!2022602 () List!56789)

(declare-fun content!10061 (List!56789) (InoxSet C!26936))

(assert (=> d!1583176 (= res!2101252 (= (content!10061 lt!2022602) ((_ map or) (content!10061 Nil!56665) (content!10061 lt!2022373))))))

(assert (=> d!1583176 (= lt!2022602 e!3075404)))

(declare-fun c!837500 () Bool)

(assert (=> d!1583176 (= c!837500 ((_ is Nil!56665) Nil!56665))))

(assert (=> d!1583176 (= (++!12312 Nil!56665 lt!2022373) lt!2022602)))

(declare-fun b!4921460 () Bool)

(declare-fun res!2101251 () Bool)

(assert (=> b!4921460 (=> (not res!2101251) (not e!3075403))))

(declare-fun size!37449 (List!56789) Int)

(assert (=> b!4921460 (= res!2101251 (= (size!37449 lt!2022602) (+ (size!37449 Nil!56665) (size!37449 lt!2022373))))))

(declare-fun b!4921461 () Bool)

(assert (=> b!4921461 (= e!3075403 (or (not (= lt!2022373 Nil!56665)) (= lt!2022602 Nil!56665)))))

(declare-fun b!4921458 () Bool)

(assert (=> b!4921458 (= e!3075404 lt!2022373)))

(assert (= (and d!1583176 c!837500) b!4921458))

(assert (= (and d!1583176 (not c!837500)) b!4921459))

(assert (= (and d!1583176 res!2101252) b!4921460))

(assert (= (and b!4921460 res!2101251) b!4921461))

(declare-fun m!5936180 () Bool)

(assert (=> b!4921459 m!5936180))

(declare-fun m!5936182 () Bool)

(assert (=> d!1583176 m!5936182))

(declare-fun m!5936184 () Bool)

(assert (=> d!1583176 m!5936184))

(declare-fun m!5936186 () Bool)

(assert (=> d!1583176 m!5936186))

(declare-fun m!5936188 () Bool)

(assert (=> b!4921460 m!5936188))

(declare-fun m!5936190 () Bool)

(assert (=> b!4921460 m!5936190))

(declare-fun m!5936192 () Bool)

(assert (=> b!4921460 m!5936192))

(assert (=> start!516700 d!1583176))

(declare-fun d!1583178 () Bool)

(declare-fun lt!2022605 () Int)

(assert (=> d!1583178 (= lt!2022605 (size!37449 (list!17929 input!5492)))))

(declare-fun size!37450 (Conc!14862) Int)

(assert (=> d!1583178 (= lt!2022605 (size!37450 (c!837451 input!5492)))))

(assert (=> d!1583178 (= (size!37446 input!5492) lt!2022605)))

(declare-fun bs!1179169 () Bool)

(assert (= bs!1179169 d!1583178))

(assert (=> bs!1179169 m!5935994))

(assert (=> bs!1179169 m!5935994))

(declare-fun m!5936194 () Bool)

(assert (=> bs!1179169 m!5936194))

(declare-fun m!5936196 () Bool)

(assert (=> bs!1179169 m!5936196))

(assert (=> start!516700 d!1583178))

(declare-fun b!4921486 () Bool)

(declare-fun e!3075421 () Int)

(assert (=> b!4921486 (= e!3075421 0)))

(declare-fun lt!2022724 () List!56789)

(declare-fun bm!342520 () Bool)

(declare-fun lt!2022703 () List!56789)

(declare-fun lt!2022707 () List!56789)

(declare-fun c!837513 () Bool)

(declare-fun lt!2022711 () List!56789)

(declare-fun call!342531 () Bool)

(declare-fun isPrefix!4953 (List!56789 List!56789) Bool)

(assert (=> bm!342520 (= call!342531 (isPrefix!4953 (ite c!837513 lt!2022703 lt!2022707) (ite c!837513 lt!2022724 lt!2022711)))))

(declare-fun bm!342521 () Bool)

(declare-fun call!342526 () C!26936)

(declare-fun apply!13639 (BalanceConc!29154 Int) C!26936)

(assert (=> bm!342521 (= call!342526 (apply!13639 input!5492 0))))

(declare-fun bm!342522 () Bool)

(declare-fun call!342527 () List!56789)

(assert (=> bm!342522 (= call!342527 (++!12312 Nil!56665 (Cons!56665 call!342526 Nil!56665)))))

(declare-fun bm!342523 () Bool)

(declare-fun call!342532 () (InoxSet Context!6010))

(declare-fun derivationStepZipper!580 ((InoxSet Context!6010) C!26936) (InoxSet Context!6010))

(assert (=> bm!342523 (= call!342532 (derivationStepZipper!580 z!3559 call!342526))))

(declare-fun lt!2022725 () Int)

(declare-fun d!1583180 () Bool)

(assert (=> d!1583180 (= (size!37449 (_1!33859 (findLongestMatchInnerZipper!48 z!3559 Nil!56665 0 lt!2022373 (list!17929 input!5492) lt!2022377))) lt!2022725)))

(declare-fun e!3075420 () Int)

(assert (=> d!1583180 (= lt!2022725 e!3075420)))

(declare-fun c!837515 () Bool)

(declare-fun lostCauseZipper!683 ((InoxSet Context!6010)) Bool)

(assert (=> d!1583180 (= c!837515 (lostCauseZipper!683 z!3559))))

(declare-datatypes ((Unit!147073 0))(
  ( (Unit!147074) )
))
(declare-fun lt!2022698 () Unit!147073)

(declare-fun Unit!147075 () Unit!147073)

(assert (=> d!1583180 (= lt!2022698 Unit!147075)))

(declare-fun getSuffix!2941 (List!56789 List!56789) List!56789)

(assert (=> d!1583180 (= (getSuffix!2941 (list!17929 input!5492) Nil!56665) lt!2022373)))

(declare-fun lt!2022722 () Unit!147073)

(declare-fun lt!2022712 () Unit!147073)

(assert (=> d!1583180 (= lt!2022722 lt!2022712)))

(declare-fun lt!2022692 () List!56789)

(assert (=> d!1583180 (= lt!2022373 lt!2022692)))

(declare-fun lemmaSamePrefixThenSameSuffix!2357 (List!56789 List!56789 List!56789 List!56789 List!56789) Unit!147073)

(assert (=> d!1583180 (= lt!2022712 (lemmaSamePrefixThenSameSuffix!2357 Nil!56665 lt!2022373 Nil!56665 lt!2022692 (list!17929 input!5492)))))

(assert (=> d!1583180 (= lt!2022692 (getSuffix!2941 (list!17929 input!5492) Nil!56665))))

(declare-fun lt!2022695 () Unit!147073)

(declare-fun lt!2022715 () Unit!147073)

(assert (=> d!1583180 (= lt!2022695 lt!2022715)))

(assert (=> d!1583180 (isPrefix!4953 Nil!56665 (++!12312 Nil!56665 lt!2022373))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3177 (List!56789 List!56789) Unit!147073)

(assert (=> d!1583180 (= lt!2022715 (lemmaConcatTwoListThenFirstIsPrefix!3177 Nil!56665 lt!2022373))))

(assert (=> d!1583180 (= (++!12312 Nil!56665 lt!2022373) (list!17929 input!5492))))

(assert (=> d!1583180 (= (findLongestMatchInnerZipperFast!75 z!3559 Nil!56665 0 lt!2022373 input!5492 lt!2022377) lt!2022725)))

(declare-fun bm!342524 () Bool)

(declare-fun call!342530 () List!56789)

(declare-fun tail!9659 (List!56789) List!56789)

(assert (=> bm!342524 (= call!342530 (tail!9659 lt!2022373))))

(declare-fun b!4921487 () Bool)

(declare-fun e!3075418 () Int)

(assert (=> b!4921487 (= e!3075420 e!3075418)))

(assert (=> b!4921487 (= c!837513 (= 0 lt!2022377))))

(declare-fun b!4921488 () Bool)

(declare-fun c!837517 () Bool)

(declare-fun call!342529 () Bool)

(assert (=> b!4921488 (= c!837517 call!342529)))

(declare-fun lt!2022701 () Unit!147073)

(declare-fun lt!2022694 () Unit!147073)

(assert (=> b!4921488 (= lt!2022701 lt!2022694)))

(declare-fun lt!2022729 () C!26936)

(declare-fun lt!2022727 () List!56789)

(declare-fun lt!2022705 () List!56789)

(assert (=> b!4921488 (= (++!12312 (++!12312 Nil!56665 (Cons!56665 lt!2022729 Nil!56665)) lt!2022727) lt!2022705)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1383 (List!56789 C!26936 List!56789 List!56789) Unit!147073)

(assert (=> b!4921488 (= lt!2022694 (lemmaMoveElementToOtherListKeepsConcatEq!1383 Nil!56665 lt!2022729 lt!2022727 lt!2022705))))

(assert (=> b!4921488 (= lt!2022705 (list!17929 input!5492))))

(assert (=> b!4921488 (= lt!2022727 (tail!9659 lt!2022373))))

(assert (=> b!4921488 (= lt!2022729 (apply!13639 input!5492 0))))

(declare-fun lt!2022706 () Unit!147073)

(declare-fun lt!2022726 () Unit!147073)

(assert (=> b!4921488 (= lt!2022706 lt!2022726)))

(declare-fun lt!2022720 () List!56789)

(declare-fun head!10512 (List!56789) C!26936)

(assert (=> b!4921488 (isPrefix!4953 (++!12312 Nil!56665 (Cons!56665 (head!10512 (getSuffix!2941 lt!2022720 Nil!56665)) Nil!56665)) lt!2022720)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!765 (List!56789 List!56789) Unit!147073)

(assert (=> b!4921488 (= lt!2022726 (lemmaAddHeadSuffixToPrefixStillPrefix!765 Nil!56665 lt!2022720))))

(assert (=> b!4921488 (= lt!2022720 (list!17929 input!5492))))

(declare-fun lt!2022702 () Unit!147073)

(declare-fun e!3075422 () Unit!147073)

(assert (=> b!4921488 (= lt!2022702 e!3075422)))

(declare-fun c!837518 () Bool)

(assert (=> b!4921488 (= c!837518 (= (size!37449 Nil!56665) (size!37446 input!5492)))))

(declare-fun lt!2022708 () Unit!147073)

(declare-fun lt!2022690 () Unit!147073)

(assert (=> b!4921488 (= lt!2022708 lt!2022690)))

(declare-fun lt!2022699 () List!56789)

(assert (=> b!4921488 (<= (size!37449 Nil!56665) (size!37449 lt!2022699))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!677 (List!56789 List!56789) Unit!147073)

(assert (=> b!4921488 (= lt!2022690 (lemmaIsPrefixThenSmallerEqSize!677 Nil!56665 lt!2022699))))

(assert (=> b!4921488 (= lt!2022699 (list!17929 input!5492))))

(declare-fun lt!2022718 () Unit!147073)

(declare-fun lt!2022717 () Unit!147073)

(assert (=> b!4921488 (= lt!2022718 lt!2022717)))

(declare-fun lt!2022693 () List!56789)

(declare-fun drop!2216 (List!56789 Int) List!56789)

(declare-fun apply!13640 (List!56789 Int) C!26936)

(assert (=> b!4921488 (= (head!10512 (drop!2216 lt!2022693 0)) (apply!13640 lt!2022693 0))))

(declare-fun lemmaDropApply!1274 (List!56789 Int) Unit!147073)

(assert (=> b!4921488 (= lt!2022717 (lemmaDropApply!1274 lt!2022693 0))))

(assert (=> b!4921488 (= lt!2022693 (list!17929 input!5492))))

(declare-fun lt!2022719 () Unit!147073)

(declare-fun lt!2022730 () Unit!147073)

(assert (=> b!4921488 (= lt!2022719 lt!2022730)))

(declare-fun lt!2022710 () List!56789)

(declare-fun lt!2022721 () List!56789)

(assert (=> b!4921488 (and (= lt!2022710 Nil!56665) (= lt!2022721 lt!2022373))))

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!649 (List!56789 List!56789 List!56789 List!56789) Unit!147073)

(assert (=> b!4921488 (= lt!2022730 (lemmaConcatSameAndSameSizesThenSameLists!649 lt!2022710 lt!2022721 Nil!56665 lt!2022373))))

(declare-fun lt!2022731 () tuple2!61114)

(assert (=> b!4921488 (= lt!2022721 (list!17929 (_2!33860 lt!2022731)))))

(declare-fun call!342534 () List!56789)

(assert (=> b!4921488 (= lt!2022710 call!342534)))

(assert (=> b!4921488 (= lt!2022731 (splitAt!251 input!5492 0))))

(declare-fun e!3075419 () Int)

(assert (=> b!4921488 (= e!3075418 e!3075419)))

(declare-fun b!4921489 () Bool)

(assert (=> b!4921489 (= e!3075420 0)))

(declare-fun b!4921490 () Bool)

(declare-fun call!342525 () Int)

(assert (=> b!4921490 (= e!3075419 call!342525)))

(declare-fun bm!342525 () Bool)

(assert (=> bm!342525 (= call!342534 (list!17929 (ite c!837513 input!5492 (_1!33860 lt!2022731))))))

(declare-fun call!342528 () Unit!147073)

(declare-fun bm!342526 () Bool)

(declare-fun lemmaIsPrefixRefl!3349 (List!56789 List!56789) Unit!147073)

(assert (=> bm!342526 (= call!342528 (lemmaIsPrefixRefl!3349 (ite c!837513 lt!2022703 lt!2022707) (ite c!837513 lt!2022724 lt!2022711)))))

(declare-fun b!4921491 () Bool)

(declare-fun lt!2022691 () Int)

(assert (=> b!4921491 (= e!3075419 (ite (= lt!2022691 0) 0 lt!2022691))))

(assert (=> b!4921491 (= lt!2022691 call!342525)))

(declare-fun b!4921492 () Bool)

(declare-fun e!3075417 () List!56789)

(assert (=> b!4921492 (= e!3075417 (list!17929 input!5492))))

(declare-fun b!4921493 () Bool)

(declare-fun c!837516 () Bool)

(assert (=> b!4921493 (= c!837516 call!342529)))

(declare-fun lt!2022709 () Unit!147073)

(declare-fun lt!2022704 () Unit!147073)

(assert (=> b!4921493 (= lt!2022709 lt!2022704)))

(declare-fun lt!2022696 () List!56789)

(assert (=> b!4921493 (= lt!2022696 Nil!56665)))

(declare-fun call!342533 () Unit!147073)

(assert (=> b!4921493 (= lt!2022704 call!342533)))

(assert (=> b!4921493 (= lt!2022696 call!342534)))

(declare-fun lt!2022713 () Unit!147073)

(declare-fun lt!2022700 () Unit!147073)

(assert (=> b!4921493 (= lt!2022713 lt!2022700)))

(assert (=> b!4921493 call!342531))

(assert (=> b!4921493 (= lt!2022700 call!342528)))

(assert (=> b!4921493 (= lt!2022724 call!342534)))

(assert (=> b!4921493 (= lt!2022703 call!342534)))

(assert (=> b!4921493 (= e!3075418 e!3075421)))

(declare-fun bm!342527 () Bool)

(declare-fun nullableZipper!802 ((InoxSet Context!6010)) Bool)

(assert (=> bm!342527 (= call!342529 (nullableZipper!802 z!3559))))

(declare-fun bm!342528 () Bool)

(assert (=> bm!342528 (= call!342525 (findLongestMatchInnerZipperFast!75 call!342532 call!342527 (+ 0 1) call!342530 input!5492 lt!2022377))))

(declare-fun b!4921494 () Bool)

(assert (=> b!4921494 (= e!3075421 0)))

(declare-fun b!4921495 () Bool)

(assert (=> b!4921495 (= e!3075417 call!342534)))

(declare-fun bm!342529 () Bool)

(declare-fun c!837514 () Bool)

(assert (=> bm!342529 (= c!837514 c!837513)))

(declare-fun lt!2022723 () List!56789)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1111 (List!56789 List!56789 List!56789) Unit!147073)

(assert (=> bm!342529 (= call!342533 (lemmaIsPrefixSameLengthThenSameList!1111 (ite c!837513 lt!2022696 lt!2022723) Nil!56665 e!3075417))))

(declare-fun b!4921496 () Bool)

(declare-fun Unit!147076 () Unit!147073)

(assert (=> b!4921496 (= e!3075422 Unit!147076)))

(declare-fun b!4921497 () Bool)

(declare-fun Unit!147077 () Unit!147073)

(assert (=> b!4921497 (= e!3075422 Unit!147077)))

(assert (=> b!4921497 (= lt!2022707 (list!17929 input!5492))))

(assert (=> b!4921497 (= lt!2022711 (list!17929 input!5492))))

(declare-fun lt!2022716 () Unit!147073)

(assert (=> b!4921497 (= lt!2022716 call!342528)))

(assert (=> b!4921497 call!342531))

(declare-fun lt!2022714 () Unit!147073)

(assert (=> b!4921497 (= lt!2022714 lt!2022716)))

(assert (=> b!4921497 (= lt!2022723 (list!17929 input!5492))))

(declare-fun lt!2022728 () Unit!147073)

(assert (=> b!4921497 (= lt!2022728 call!342533)))

(assert (=> b!4921497 (= lt!2022723 Nil!56665)))

(declare-fun lt!2022697 () Unit!147073)

(assert (=> b!4921497 (= lt!2022697 lt!2022728)))

(assert (=> b!4921497 false))

(assert (= (and d!1583180 c!837515) b!4921489))

(assert (= (and d!1583180 (not c!837515)) b!4921487))

(assert (= (and b!4921487 c!837513) b!4921493))

(assert (= (and b!4921487 (not c!837513)) b!4921488))

(assert (= (and b!4921493 c!837516) b!4921494))

(assert (= (and b!4921493 (not c!837516)) b!4921486))

(assert (= (and b!4921488 c!837518) b!4921497))

(assert (= (and b!4921488 (not c!837518)) b!4921496))

(assert (= (and b!4921488 c!837517) b!4921491))

(assert (= (and b!4921488 (not c!837517)) b!4921490))

(assert (= (or b!4921491 b!4921490) bm!342524))

(assert (= (or b!4921491 b!4921490) bm!342521))

(assert (= (or b!4921491 b!4921490) bm!342522))

(assert (= (or b!4921491 b!4921490) bm!342523))

(assert (= (or b!4921491 b!4921490) bm!342528))

(assert (= (or b!4921493 b!4921497) bm!342526))

(assert (= (or b!4921493 b!4921488) bm!342527))

(assert (= (or b!4921493 b!4921488) bm!342525))

(assert (= (or b!4921493 b!4921497) bm!342520))

(assert (= (or b!4921493 b!4921497) bm!342529))

(assert (= (and bm!342529 c!837514) b!4921495))

(assert (= (and bm!342529 (not c!837514)) b!4921492))

(declare-fun m!5936198 () Bool)

(assert (=> bm!342524 m!5936198))

(declare-fun m!5936200 () Bool)

(assert (=> bm!342520 m!5936200))

(declare-fun m!5936202 () Bool)

(assert (=> b!4921488 m!5936202))

(declare-fun m!5936204 () Bool)

(assert (=> b!4921488 m!5936204))

(declare-fun m!5936206 () Bool)

(assert (=> b!4921488 m!5936206))

(assert (=> b!4921488 m!5936190))

(declare-fun m!5936208 () Bool)

(assert (=> b!4921488 m!5936208))

(declare-fun m!5936210 () Bool)

(assert (=> b!4921488 m!5936210))

(declare-fun m!5936212 () Bool)

(assert (=> b!4921488 m!5936212))

(declare-fun m!5936214 () Bool)

(assert (=> b!4921488 m!5936214))

(declare-fun m!5936216 () Bool)

(assert (=> b!4921488 m!5936216))

(declare-fun m!5936218 () Bool)

(assert (=> b!4921488 m!5936218))

(declare-fun m!5936220 () Bool)

(assert (=> b!4921488 m!5936220))

(declare-fun m!5936222 () Bool)

(assert (=> b!4921488 m!5936222))

(declare-fun m!5936224 () Bool)

(assert (=> b!4921488 m!5936224))

(assert (=> b!4921488 m!5935996))

(declare-fun m!5936226 () Bool)

(assert (=> b!4921488 m!5936226))

(assert (=> b!4921488 m!5936202))

(declare-fun m!5936228 () Bool)

(assert (=> b!4921488 m!5936228))

(assert (=> b!4921488 m!5936224))

(declare-fun m!5936230 () Bool)

(assert (=> b!4921488 m!5936230))

(assert (=> b!4921488 m!5936198))

(assert (=> b!4921488 m!5936208))

(declare-fun m!5936232 () Bool)

(assert (=> b!4921488 m!5936232))

(declare-fun m!5936234 () Bool)

(assert (=> b!4921488 m!5936234))

(assert (=> b!4921488 m!5935994))

(declare-fun m!5936236 () Bool)

(assert (=> b!4921488 m!5936236))

(assert (=> b!4921488 m!5936218))

(declare-fun m!5936238 () Bool)

(assert (=> d!1583180 m!5936238))

(assert (=> d!1583180 m!5935986))

(declare-fun m!5936240 () Bool)

(assert (=> d!1583180 m!5936240))

(declare-fun m!5936242 () Bool)

(assert (=> d!1583180 m!5936242))

(assert (=> d!1583180 m!5935986))

(assert (=> d!1583180 m!5935994))

(declare-fun m!5936244 () Bool)

(assert (=> d!1583180 m!5936244))

(assert (=> d!1583180 m!5935994))

(assert (=> d!1583180 m!5935994))

(declare-fun m!5936246 () Bool)

(assert (=> d!1583180 m!5936246))

(assert (=> d!1583180 m!5935994))

(declare-fun m!5936248 () Bool)

(assert (=> d!1583180 m!5936248))

(declare-fun m!5936250 () Bool)

(assert (=> d!1583180 m!5936250))

(declare-fun m!5936252 () Bool)

(assert (=> bm!342523 m!5936252))

(assert (=> b!4921492 m!5935994))

(declare-fun m!5936254 () Bool)

(assert (=> bm!342527 m!5936254))

(declare-fun m!5936256 () Bool)

(assert (=> bm!342522 m!5936256))

(declare-fun m!5936258 () Bool)

(assert (=> bm!342526 m!5936258))

(assert (=> b!4921497 m!5935994))

(declare-fun m!5936260 () Bool)

(assert (=> bm!342529 m!5936260))

(assert (=> bm!342521 m!5936206))

(declare-fun m!5936262 () Bool)

(assert (=> bm!342528 m!5936262))

(declare-fun m!5936264 () Bool)

(assert (=> bm!342525 m!5936264))

(assert (=> start!516700 d!1583180))

(declare-fun d!1583182 () Bool)

(assert (=> d!1583182 (= (list!17929 input!5492) (list!17931 (c!837451 input!5492)))))

(declare-fun bs!1179170 () Bool)

(assert (= bs!1179170 d!1583182))

(declare-fun m!5936266 () Bool)

(assert (=> bs!1179170 m!5936266))

(assert (=> start!516700 d!1583182))

(declare-fun d!1583184 () Bool)

(assert (=> d!1583184 (= (inv!73395 input!5492) (isBalanced!4077 (c!837451 input!5492)))))

(declare-fun bs!1179171 () Bool)

(assert (= bs!1179171 d!1583184))

(assert (=> bs!1179171 m!5936170))

(assert (=> start!516700 d!1583184))

(declare-fun b!4921547 () Bool)

(declare-fun e!3075458 () tuple2!61112)

(assert (=> b!4921547 (= e!3075458 (tuple2!61113 Nil!56665 lt!2022373))))

(declare-fun b!4921548 () Bool)

(declare-fun e!3075455 () Bool)

(declare-fun e!3075456 () Bool)

(assert (=> b!4921548 (= e!3075455 e!3075456)))

(declare-fun res!2101257 () Bool)

(assert (=> b!4921548 (=> res!2101257 e!3075456)))

(declare-fun lt!2022792 () tuple2!61112)

(declare-fun isEmpty!30557 (List!56789) Bool)

(assert (=> b!4921548 (= res!2101257 (isEmpty!30557 (_1!33859 lt!2022792)))))

(declare-fun b!4921549 () Bool)

(declare-fun lt!2022791 () tuple2!61112)

(assert (=> b!4921549 (= e!3075458 lt!2022791)))

(declare-fun d!1583186 () Bool)

(assert (=> d!1583186 e!3075455))

(declare-fun res!2101258 () Bool)

(assert (=> d!1583186 (=> (not res!2101258) (not e!3075455))))

(assert (=> d!1583186 (= res!2101258 (= (++!12312 (_1!33859 lt!2022792) (_2!33859 lt!2022792)) lt!2022373))))

(declare-fun e!3075451 () tuple2!61112)

(assert (=> d!1583186 (= lt!2022792 e!3075451)))

(declare-fun c!837535 () Bool)

(assert (=> d!1583186 (= c!837535 (lostCauseZipper!683 z!3559))))

(declare-fun lt!2022785 () Unit!147073)

(declare-fun Unit!147078 () Unit!147073)

(assert (=> d!1583186 (= lt!2022785 Unit!147078)))

(assert (=> d!1583186 (= (getSuffix!2941 lt!2022373 Nil!56665) lt!2022373)))

(declare-fun lt!2022794 () Unit!147073)

(declare-fun lt!2022789 () Unit!147073)

(assert (=> d!1583186 (= lt!2022794 lt!2022789)))

(declare-fun lt!2022793 () List!56789)

(assert (=> d!1583186 (= lt!2022373 lt!2022793)))

(assert (=> d!1583186 (= lt!2022789 (lemmaSamePrefixThenSameSuffix!2357 Nil!56665 lt!2022373 Nil!56665 lt!2022793 lt!2022373))))

(assert (=> d!1583186 (= lt!2022793 (getSuffix!2941 lt!2022373 Nil!56665))))

(declare-fun lt!2022797 () Unit!147073)

(declare-fun lt!2022803 () Unit!147073)

(assert (=> d!1583186 (= lt!2022797 lt!2022803)))

(assert (=> d!1583186 (isPrefix!4953 Nil!56665 (++!12312 Nil!56665 lt!2022373))))

(assert (=> d!1583186 (= lt!2022803 (lemmaConcatTwoListThenFirstIsPrefix!3177 Nil!56665 lt!2022373))))

(assert (=> d!1583186 (= (++!12312 Nil!56665 lt!2022373) lt!2022373)))

(assert (=> d!1583186 (= (findLongestMatchInnerZipper!48 z!3559 Nil!56665 0 lt!2022373 lt!2022373 lt!2022377) lt!2022792)))

(declare-fun bm!342546 () Bool)

(declare-fun call!342555 () Unit!147073)

(assert (=> bm!342546 (= call!342555 (lemmaIsPrefixSameLengthThenSameList!1111 lt!2022373 Nil!56665 lt!2022373))))

(declare-fun bm!342547 () Bool)

(declare-fun call!342557 () (InoxSet Context!6010))

(declare-fun call!342553 () C!26936)

(assert (=> bm!342547 (= call!342557 (derivationStepZipper!580 z!3559 call!342553))))

(declare-fun b!4921550 () Bool)

(declare-fun e!3075454 () Unit!147073)

(declare-fun Unit!147079 () Unit!147073)

(assert (=> b!4921550 (= e!3075454 Unit!147079)))

(declare-fun lt!2022790 () Unit!147073)

(declare-fun call!342551 () Unit!147073)

(assert (=> b!4921550 (= lt!2022790 call!342551)))

(declare-fun call!342554 () Bool)

(assert (=> b!4921550 call!342554))

(declare-fun lt!2022795 () Unit!147073)

(assert (=> b!4921550 (= lt!2022795 lt!2022790)))

(declare-fun lt!2022809 () Unit!147073)

(assert (=> b!4921550 (= lt!2022809 call!342555)))

(assert (=> b!4921550 (= lt!2022373 Nil!56665)))

(declare-fun lt!2022806 () Unit!147073)

(assert (=> b!4921550 (= lt!2022806 lt!2022809)))

(assert (=> b!4921550 false))

(declare-fun b!4921551 () Bool)

(assert (=> b!4921551 (= e!3075456 (>= (size!37449 (_1!33859 lt!2022792)) (size!37449 Nil!56665)))))

(declare-fun b!4921552 () Bool)

(declare-fun e!3075457 () tuple2!61112)

(assert (=> b!4921552 (= e!3075451 e!3075457)))

(declare-fun c!837534 () Bool)

(assert (=> b!4921552 (= c!837534 (= 0 lt!2022377))))

(declare-fun b!4921553 () Bool)

(declare-fun c!837531 () Bool)

(declare-fun call!342552 () Bool)

(assert (=> b!4921553 (= c!837531 call!342552)))

(declare-fun lt!2022786 () Unit!147073)

(declare-fun lt!2022804 () Unit!147073)

(assert (=> b!4921553 (= lt!2022786 lt!2022804)))

(assert (=> b!4921553 (= lt!2022373 Nil!56665)))

(assert (=> b!4921553 (= lt!2022804 call!342555)))

(declare-fun lt!2022807 () Unit!147073)

(declare-fun lt!2022805 () Unit!147073)

(assert (=> b!4921553 (= lt!2022807 lt!2022805)))

(assert (=> b!4921553 call!342554))

(assert (=> b!4921553 (= lt!2022805 call!342551)))

(declare-fun e!3075452 () tuple2!61112)

(assert (=> b!4921553 (= e!3075457 e!3075452)))

(declare-fun b!4921554 () Bool)

(declare-fun e!3075453 () tuple2!61112)

(assert (=> b!4921554 (= e!3075453 e!3075458)))

(declare-fun call!342558 () tuple2!61112)

(assert (=> b!4921554 (= lt!2022791 call!342558)))

(declare-fun c!837536 () Bool)

(assert (=> b!4921554 (= c!837536 (isEmpty!30557 (_1!33859 lt!2022791)))))

(declare-fun b!4921555 () Bool)

(assert (=> b!4921555 (= e!3075453 call!342558)))

(declare-fun bm!342548 () Bool)

(assert (=> bm!342548 (= call!342554 (isPrefix!4953 lt!2022373 lt!2022373))))

(declare-fun bm!342549 () Bool)

(assert (=> bm!342549 (= call!342551 (lemmaIsPrefixRefl!3349 lt!2022373 lt!2022373))))

(declare-fun b!4921556 () Bool)

(assert (=> b!4921556 (= e!3075452 (tuple2!61113 Nil!56665 lt!2022373))))

(declare-fun bm!342550 () Bool)

(assert (=> bm!342550 (= call!342553 (head!10512 lt!2022373))))

(declare-fun call!342556 () List!56789)

(declare-fun lt!2022798 () List!56789)

(declare-fun bm!342551 () Bool)

(assert (=> bm!342551 (= call!342558 (findLongestMatchInnerZipper!48 call!342557 lt!2022798 (+ 0 1) call!342556 lt!2022373 lt!2022377))))

(declare-fun bm!342552 () Bool)

(assert (=> bm!342552 (= call!342556 (tail!9659 lt!2022373))))

(declare-fun b!4921557 () Bool)

(declare-fun Unit!147080 () Unit!147073)

(assert (=> b!4921557 (= e!3075454 Unit!147080)))

(declare-fun bm!342553 () Bool)

(assert (=> bm!342553 (= call!342552 (nullableZipper!802 z!3559))))

(declare-fun b!4921558 () Bool)

(declare-fun c!837532 () Bool)

(assert (=> b!4921558 (= c!837532 call!342552)))

(declare-fun lt!2022796 () Unit!147073)

(declare-fun lt!2022788 () Unit!147073)

(assert (=> b!4921558 (= lt!2022796 lt!2022788)))

(declare-fun lt!2022799 () C!26936)

(declare-fun lt!2022801 () List!56789)

(assert (=> b!4921558 (= (++!12312 (++!12312 Nil!56665 (Cons!56665 lt!2022799 Nil!56665)) lt!2022801) lt!2022373)))

(assert (=> b!4921558 (= lt!2022788 (lemmaMoveElementToOtherListKeepsConcatEq!1383 Nil!56665 lt!2022799 lt!2022801 lt!2022373))))

(assert (=> b!4921558 (= lt!2022801 (tail!9659 lt!2022373))))

(assert (=> b!4921558 (= lt!2022799 (head!10512 lt!2022373))))

(declare-fun lt!2022787 () Unit!147073)

(declare-fun lt!2022802 () Unit!147073)

(assert (=> b!4921558 (= lt!2022787 lt!2022802)))

(assert (=> b!4921558 (isPrefix!4953 (++!12312 Nil!56665 (Cons!56665 (head!10512 (getSuffix!2941 lt!2022373 Nil!56665)) Nil!56665)) lt!2022373)))

(assert (=> b!4921558 (= lt!2022802 (lemmaAddHeadSuffixToPrefixStillPrefix!765 Nil!56665 lt!2022373))))

(assert (=> b!4921558 (= lt!2022798 (++!12312 Nil!56665 (Cons!56665 (head!10512 lt!2022373) Nil!56665)))))

(declare-fun lt!2022800 () Unit!147073)

(assert (=> b!4921558 (= lt!2022800 e!3075454)))

(declare-fun c!837533 () Bool)

(assert (=> b!4921558 (= c!837533 (= (size!37449 Nil!56665) (size!37449 lt!2022373)))))

(declare-fun lt!2022784 () Unit!147073)

(declare-fun lt!2022808 () Unit!147073)

(assert (=> b!4921558 (= lt!2022784 lt!2022808)))

(assert (=> b!4921558 (<= (size!37449 Nil!56665) (size!37449 lt!2022373))))

(assert (=> b!4921558 (= lt!2022808 (lemmaIsPrefixThenSmallerEqSize!677 Nil!56665 lt!2022373))))

(assert (=> b!4921558 (= e!3075457 e!3075453)))

(declare-fun b!4921559 () Bool)

(assert (=> b!4921559 (= e!3075451 (tuple2!61113 Nil!56665 lt!2022373))))

(declare-fun b!4921560 () Bool)

(assert (=> b!4921560 (= e!3075452 (tuple2!61113 Nil!56665 Nil!56665))))

(assert (= (and d!1583186 c!837535) b!4921559))

(assert (= (and d!1583186 (not c!837535)) b!4921552))

(assert (= (and b!4921552 c!837534) b!4921553))

(assert (= (and b!4921552 (not c!837534)) b!4921558))

(assert (= (and b!4921553 c!837531) b!4921560))

(assert (= (and b!4921553 (not c!837531)) b!4921556))

(assert (= (and b!4921558 c!837533) b!4921550))

(assert (= (and b!4921558 (not c!837533)) b!4921557))

(assert (= (and b!4921558 c!837532) b!4921554))

(assert (= (and b!4921558 (not c!837532)) b!4921555))

(assert (= (and b!4921554 c!837536) b!4921547))

(assert (= (and b!4921554 (not c!837536)) b!4921549))

(assert (= (or b!4921554 b!4921555) bm!342552))

(assert (= (or b!4921554 b!4921555) bm!342550))

(assert (= (or b!4921554 b!4921555) bm!342547))

(assert (= (or b!4921554 b!4921555) bm!342551))

(assert (= (or b!4921553 b!4921550) bm!342548))

(assert (= (or b!4921553 b!4921550) bm!342549))

(assert (= (or b!4921553 b!4921550) bm!342546))

(assert (= (or b!4921553 b!4921558) bm!342553))

(assert (= (and d!1583186 res!2101258) b!4921548))

(assert (= (and b!4921548 (not res!2101257)) b!4921551))

(declare-fun m!5936278 () Bool)

(assert (=> b!4921551 m!5936278))

(assert (=> b!4921551 m!5936190))

(declare-fun m!5936280 () Bool)

(assert (=> b!4921548 m!5936280))

(assert (=> bm!342553 m!5936254))

(declare-fun m!5936282 () Bool)

(assert (=> bm!342546 m!5936282))

(declare-fun m!5936284 () Bool)

(assert (=> b!4921558 m!5936284))

(declare-fun m!5936286 () Bool)

(assert (=> b!4921558 m!5936286))

(declare-fun m!5936288 () Bool)

(assert (=> b!4921558 m!5936288))

(declare-fun m!5936290 () Bool)

(assert (=> b!4921558 m!5936290))

(declare-fun m!5936292 () Bool)

(assert (=> b!4921558 m!5936292))

(declare-fun m!5936294 () Bool)

(assert (=> b!4921558 m!5936294))

(declare-fun m!5936296 () Bool)

(assert (=> b!4921558 m!5936296))

(assert (=> b!4921558 m!5936190))

(declare-fun m!5936298 () Bool)

(assert (=> b!4921558 m!5936298))

(declare-fun m!5936300 () Bool)

(assert (=> b!4921558 m!5936300))

(declare-fun m!5936302 () Bool)

(assert (=> b!4921558 m!5936302))

(declare-fun m!5936304 () Bool)

(assert (=> b!4921558 m!5936304))

(assert (=> b!4921558 m!5936192))

(assert (=> b!4921558 m!5936302))

(assert (=> b!4921558 m!5936298))

(assert (=> b!4921558 m!5936198))

(assert (=> b!4921558 m!5936286))

(assert (=> d!1583186 m!5936250))

(assert (=> d!1583186 m!5935986))

(assert (=> d!1583186 m!5936240))

(declare-fun m!5936306 () Bool)

(assert (=> d!1583186 m!5936306))

(assert (=> d!1583186 m!5935986))

(declare-fun m!5936308 () Bool)

(assert (=> d!1583186 m!5936308))

(assert (=> d!1583186 m!5936238))

(assert (=> d!1583186 m!5936286))

(declare-fun m!5936310 () Bool)

(assert (=> bm!342548 m!5936310))

(declare-fun m!5936312 () Bool)

(assert (=> b!4921554 m!5936312))

(declare-fun m!5936314 () Bool)

(assert (=> bm!342547 m!5936314))

(declare-fun m!5936316 () Bool)

(assert (=> bm!342551 m!5936316))

(assert (=> bm!342550 m!5936294))

(assert (=> bm!342552 m!5936198))

(declare-fun m!5936318 () Bool)

(assert (=> bm!342549 m!5936318))

(assert (=> start!516700 d!1583186))

(declare-fun condSetEmpty!27472 () Bool)

(assert (=> setNonEmpty!27466 (= condSetEmpty!27472 (= setRest!27466 ((as const (Array Context!6010 Bool)) false)))))

(declare-fun setRes!27472 () Bool)

(assert (=> setNonEmpty!27466 (= tp!1382979 setRes!27472)))

(declare-fun setIsEmpty!27472 () Bool)

(assert (=> setIsEmpty!27472 setRes!27472))

(declare-fun setElem!27472 () Context!6010)

(declare-fun setNonEmpty!27472 () Bool)

(declare-fun e!3075461 () Bool)

(declare-fun tp!1383005 () Bool)

(assert (=> setNonEmpty!27472 (= setRes!27472 (and tp!1383005 (inv!73396 setElem!27472) e!3075461))))

(declare-fun setRest!27472 () (InoxSet Context!6010))

(assert (=> setNonEmpty!27472 (= setRest!27466 ((_ map or) (store ((as const (Array Context!6010 Bool)) false) setElem!27472 true) setRest!27472))))

(declare-fun b!4921565 () Bool)

(declare-fun tp!1383006 () Bool)

(assert (=> b!4921565 (= e!3075461 tp!1383006)))

(assert (= (and setNonEmpty!27466 condSetEmpty!27472) setIsEmpty!27472))

(assert (= (and setNonEmpty!27466 (not condSetEmpty!27472)) setNonEmpty!27472))

(assert (= setNonEmpty!27472 b!4921565))

(declare-fun m!5936320 () Bool)

(assert (=> setNonEmpty!27472 m!5936320))

(declare-fun b!4921574 () Bool)

(declare-fun e!3075466 () Bool)

(declare-fun tp!1383015 () Bool)

(declare-fun tp!1383014 () Bool)

(assert (=> b!4921574 (= e!3075466 (and (inv!73394 (left!41315 (c!837451 input!5492))) tp!1383015 (inv!73394 (right!41645 (c!837451 input!5492))) tp!1383014))))

(declare-fun b!4921576 () Bool)

(declare-fun e!3075467 () Bool)

(declare-fun tp!1383013 () Bool)

(assert (=> b!4921576 (= e!3075467 tp!1383013)))

(declare-fun b!4921575 () Bool)

(declare-fun inv!73402 (IArray!29785) Bool)

(assert (=> b!4921575 (= e!3075466 (and (inv!73402 (xs!18182 (c!837451 input!5492))) e!3075467))))

(assert (=> b!4921328 (= tp!1382977 (and (inv!73394 (c!837451 input!5492)) e!3075466))))

(assert (= (and b!4921328 ((_ is Node!14862) (c!837451 input!5492))) b!4921574))

(assert (= b!4921575 b!4921576))

(assert (= (and b!4921328 ((_ is Leaf!24726) (c!837451 input!5492))) b!4921575))

(declare-fun m!5936322 () Bool)

(assert (=> b!4921574 m!5936322))

(declare-fun m!5936324 () Bool)

(assert (=> b!4921574 m!5936324))

(declare-fun m!5936326 () Bool)

(assert (=> b!4921575 m!5936326))

(assert (=> b!4921328 m!5935982))

(declare-fun b!4921581 () Bool)

(declare-fun e!3075470 () Bool)

(declare-fun tp!1383020 () Bool)

(declare-fun tp!1383021 () Bool)

(assert (=> b!4921581 (= e!3075470 (and tp!1383020 tp!1383021))))

(assert (=> b!4921329 (= tp!1382978 e!3075470)))

(assert (= (and b!4921329 ((_ is Cons!56666) (exprs!3505 setElem!27466))) b!4921581))

(check-sat (not d!1583172) (not bm!342521) (not bm!342526) (not b!4921581) (not bm!342547) (not bm!342528) (not bm!342525) (not b!4921554) (not b!4921492) (not b!4921449) (not bm!342553) (not b!4921459) (not d!1583186) (not bm!342549) (not bm!342546) (not bm!342524) (not setNonEmpty!27472) (not bm!342522) (not bm!342523) (not d!1583184) (not b!4921328) (not b!4921497) (not d!1583170) (not bm!342548) (not d!1583178) (not b!4921551) (not d!1583146) (not bm!342552) (not b!4921448) (not bm!342529) (not b!4921558) (not b!4921576) (not bm!342550) (not b!4921460) (not b!4921565) (not d!1583174) (not bm!342527) (not d!1583182) (not b!4921443) (not d!1583180) (not bm!342551) (not b!4921575) (not d!1583176) (not b!4921548) (not b!4921488) (not b!4921441) (not bm!342520) (not b!4921574))
(check-sat)
