; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239742 () Bool)

(assert start!239742)

(declare-fun b!2459411 () Bool)

(declare-fun e!1559900 () Bool)

(declare-fun tp!783064 () Bool)

(declare-fun tp!783058 () Bool)

(assert (=> b!2459411 (= e!1559900 (and tp!783064 tp!783058))))

(declare-fun res!1042248 () Bool)

(declare-fun e!1559903 () Bool)

(assert (=> start!239742 (=> (not res!1042248) (not e!1559903))))

(declare-datatypes ((C!14620 0))(
  ( (C!14621 (val!8552 Int)) )
))
(declare-datatypes ((Regex!7231 0))(
  ( (ElementMatch!7231 (c!392513 C!14620)) (Concat!11867 (regOne!14974 Regex!7231) (regTwo!14974 Regex!7231)) (EmptyExpr!7231) (Star!7231 (reg!7560 Regex!7231)) (EmptyLang!7231) (Union!7231 (regOne!14975 Regex!7231) (regTwo!14975 Regex!7231)) )
))
(declare-datatypes ((List!28698 0))(
  ( (Nil!28600) (Cons!28600 (h!34001 Regex!7231) (t!208675 List!28698)) )
))
(declare-fun l!9164 () List!28698)

(declare-fun lambda!93085 () Int)

(declare-fun forall!5865 (List!28698 Int) Bool)

(assert (=> start!239742 (= res!1042248 (forall!5865 l!9164 lambda!93085))))

(assert (=> start!239742 e!1559903))

(declare-fun e!1559904 () Bool)

(assert (=> start!239742 e!1559904))

(assert (=> start!239742 e!1559900))

(declare-fun e!1559902 () Bool)

(assert (=> start!239742 e!1559902))

(declare-fun b!2459412 () Bool)

(declare-fun tp!783063 () Bool)

(assert (=> b!2459412 (= e!1559900 tp!783063)))

(declare-fun b!2459413 () Bool)

(declare-fun res!1042243 () Bool)

(declare-fun e!1559892 () Bool)

(assert (=> b!2459413 (=> res!1042243 e!1559892)))

(declare-fun isEmpty!16625 (List!28698) Bool)

(assert (=> b!2459413 (= res!1042243 (isEmpty!16625 l!9164))))

(declare-fun b!2459414 () Bool)

(assert (=> b!2459414 (= e!1559903 (not e!1559892))))

(declare-fun res!1042245 () Bool)

(assert (=> b!2459414 (=> res!1042245 e!1559892)))

(declare-fun r!13927 () Regex!7231)

(get-info :version)

(assert (=> b!2459414 (= res!1042245 (or ((_ is Concat!11867) r!13927) ((_ is EmptyExpr!7231) r!13927)))))

(declare-datatypes ((List!28699 0))(
  ( (Nil!28601) (Cons!28601 (h!34002 C!14620) (t!208676 List!28699)) )
))
(declare-fun s!9460 () List!28699)

(declare-fun matchR!3346 (Regex!7231 List!28699) Bool)

(declare-fun matchRSpec!1078 (Regex!7231 List!28699) Bool)

(assert (=> b!2459414 (= (matchR!3346 r!13927 s!9460) (matchRSpec!1078 r!13927 s!9460))))

(declare-datatypes ((Unit!41929 0))(
  ( (Unit!41930) )
))
(declare-fun lt!880634 () Unit!41929)

(declare-fun mainMatchTheorem!1078 (Regex!7231 List!28699) Unit!41929)

(assert (=> b!2459414 (= lt!880634 (mainMatchTheorem!1078 r!13927 s!9460))))

(declare-fun lt!880636 () Regex!7231)

(declare-fun lt!880625 () Regex!7231)

(declare-fun bm!151250 () Bool)

(declare-fun c!392511 () Bool)

(declare-datatypes ((tuple2!28190 0))(
  ( (tuple2!28191 (_1!16636 List!28699) (_2!16636 List!28699)) )
))
(declare-datatypes ((Option!5706 0))(
  ( (None!5705) (Some!5705 (v!31113 tuple2!28190)) )
))
(declare-fun call!151260 () Option!5706)

(declare-fun findConcatSeparation!814 (Regex!7231 Regex!7231 List!28699 List!28699 List!28699) Option!5706)

(assert (=> bm!151250 (= call!151260 (findConcatSeparation!814 lt!880636 (ite c!392511 lt!880625 EmptyExpr!7231) Nil!28601 s!9460 s!9460))))

(declare-fun b!2459415 () Bool)

(declare-fun e!1559897 () Bool)

(assert (=> b!2459415 (= e!1559897 true)))

(declare-fun lt!880629 () Unit!41929)

(declare-fun e!1559901 () Unit!41929)

(assert (=> b!2459415 (= lt!880629 e!1559901)))

(assert (=> b!2459415 (= c!392511 (matchR!3346 lt!880636 s!9460))))

(declare-fun head!5613 (List!28698) Regex!7231)

(assert (=> b!2459415 (= lt!880636 (head!5613 l!9164))))

(declare-fun b!2459416 () Bool)

(declare-fun e!1559899 () Bool)

(assert (=> b!2459416 e!1559899))

(declare-fun res!1042250 () Bool)

(assert (=> b!2459416 (=> (not res!1042250) (not e!1559899))))

(declare-fun call!151257 () Bool)

(assert (=> b!2459416 (= res!1042250 call!151257)))

(declare-fun lt!880631 () Unit!41929)

(declare-fun lt!880633 () tuple2!28190)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!104 (Regex!7231 Regex!7231 List!28699 List!28699 List!28699) Unit!41929)

(assert (=> b!2459416 (= lt!880631 (lemmaFindSeparationIsDefinedThenConcatMatches!104 lt!880636 EmptyExpr!7231 (_1!16636 lt!880633) (_2!16636 lt!880633) s!9460))))

(declare-fun lt!880627 () Option!5706)

(declare-fun get!8853 (Option!5706) tuple2!28190)

(assert (=> b!2459416 (= lt!880633 (get!8853 lt!880627))))

(declare-fun e!1559896 () Unit!41929)

(declare-fun Unit!41931 () Unit!41929)

(assert (=> b!2459416 (= e!1559896 Unit!41931)))

(declare-fun b!2459417 () Bool)

(declare-fun e!1559893 () Bool)

(declare-fun call!151258 () Bool)

(assert (=> b!2459417 (= e!1559893 call!151258)))

(declare-fun b!2459418 () Bool)

(declare-fun Unit!41932 () Unit!41929)

(assert (=> b!2459418 (= e!1559901 Unit!41932)))

(declare-fun lt!880628 () Unit!41929)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!134 (Regex!7231 Regex!7231 List!28699 List!28699) Unit!41929)

(assert (=> b!2459418 (= lt!880628 (lemmaTwoRegexMatchThenConcatMatchesConcatString!134 lt!880636 EmptyExpr!7231 s!9460 Nil!28601))))

(declare-fun lt!880630 () Regex!7231)

(assert (=> b!2459418 (= lt!880630 (Concat!11867 lt!880636 EmptyExpr!7231))))

(declare-fun res!1042249 () Bool)

(declare-fun call!151255 () List!28699)

(assert (=> b!2459418 (= res!1042249 (matchR!3346 lt!880630 call!151255))))

(declare-fun e!1559895 () Bool)

(assert (=> b!2459418 (=> (not res!1042249) (not e!1559895))))

(assert (=> b!2459418 e!1559895))

(declare-fun lt!880624 () Unit!41929)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!96 (Regex!7231 Regex!7231 List!28699) Unit!41929)

(assert (=> b!2459418 (= lt!880624 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!96 lt!880636 EmptyExpr!7231 s!9460))))

(declare-fun res!1042247 () Bool)

(declare-fun call!151256 () Bool)

(assert (=> b!2459418 (= res!1042247 call!151256)))

(assert (=> b!2459418 (=> (not res!1042247) (not e!1559893))))

(assert (=> b!2459418 e!1559893))

(declare-fun b!2459419 () Bool)

(assert (=> b!2459419 (= e!1559899 false)))

(declare-fun b!2459420 () Bool)

(declare-fun tp!783061 () Bool)

(declare-fun tp!783060 () Bool)

(assert (=> b!2459420 (= e!1559904 (and tp!783061 tp!783060))))

(declare-fun b!2459421 () Bool)

(declare-fun tp_is_empty!11875 () Bool)

(declare-fun tp!783059 () Bool)

(assert (=> b!2459421 (= e!1559902 (and tp_is_empty!11875 tp!783059))))

(declare-fun b!2459422 () Bool)

(declare-fun tp!783062 () Bool)

(declare-fun tp!783065 () Bool)

(assert (=> b!2459422 (= e!1559900 (and tp!783062 tp!783065))))

(declare-fun b!2459423 () Bool)

(declare-fun Unit!41933 () Unit!41929)

(assert (=> b!2459423 (= e!1559896 Unit!41933)))

(declare-fun b!2459424 () Bool)

(declare-fun res!1042246 () Bool)

(assert (=> b!2459424 (=> (not res!1042246) (not e!1559903))))

(declare-fun generalisedConcat!332 (List!28698) Regex!7231)

(assert (=> b!2459424 (= res!1042246 (= r!13927 (generalisedConcat!332 l!9164)))))

(declare-fun b!2459425 () Bool)

(declare-fun Unit!41934 () Unit!41929)

(assert (=> b!2459425 (= e!1559901 Unit!41934)))

(assert (=> b!2459425 (= lt!880627 call!151260)))

(declare-fun lt!880626 () Bool)

(assert (=> b!2459425 (= lt!880626 call!151258)))

(declare-fun c!392512 () Bool)

(assert (=> b!2459425 (= c!392512 lt!880626)))

(declare-fun lt!880635 () Unit!41929)

(assert (=> b!2459425 (= lt!880635 e!1559896)))

(declare-fun res!1042244 () Bool)

(assert (=> b!2459425 (= res!1042244 (not lt!880626))))

(declare-fun e!1559894 () Bool)

(assert (=> b!2459425 (=> (not res!1042244) (not e!1559894))))

(assert (=> b!2459425 e!1559894))

(declare-fun b!2459426 () Bool)

(assert (=> b!2459426 (= e!1559895 call!151257)))

(declare-fun bm!151251 () Bool)

(declare-fun isDefined!4532 (Option!5706) Bool)

(assert (=> bm!151251 (= call!151258 (isDefined!4532 (ite c!392511 call!151260 lt!880627)))))

(declare-fun bm!151252 () Bool)

(declare-fun ++!7119 (List!28699 List!28699) List!28699)

(assert (=> bm!151252 (= call!151255 (++!7119 (ite c!392511 s!9460 (_1!16636 lt!880633)) (ite c!392511 Nil!28601 (_2!16636 lt!880633))))))

(declare-fun bm!151253 () Bool)

(declare-fun call!151259 () Option!5706)

(assert (=> bm!151253 (= call!151256 (isDefined!4532 call!151259))))

(declare-fun bm!151254 () Bool)

(assert (=> bm!151254 (= call!151259 (findConcatSeparation!814 lt!880636 (ite c!392511 EmptyExpr!7231 lt!880625) Nil!28601 s!9460 s!9460))))

(declare-fun b!2459427 () Bool)

(declare-fun e!1559898 () Bool)

(assert (=> b!2459427 (= e!1559898 e!1559897)))

(declare-fun res!1042242 () Bool)

(assert (=> b!2459427 (=> res!1042242 e!1559897)))

(assert (=> b!2459427 (= res!1042242 (not (= lt!880625 EmptyExpr!7231)))))

(declare-fun lt!880632 () List!28698)

(assert (=> b!2459427 (= lt!880625 (generalisedConcat!332 lt!880632))))

(declare-fun b!2459428 () Bool)

(assert (=> b!2459428 (= e!1559894 (not call!151256))))

(declare-fun bm!151255 () Bool)

(assert (=> bm!151255 (= call!151257 (matchR!3346 (ite c!392511 lt!880630 (Concat!11867 lt!880636 EmptyExpr!7231)) (ite c!392511 s!9460 call!151255)))))

(declare-fun b!2459429 () Bool)

(assert (=> b!2459429 (= e!1559900 tp_is_empty!11875)))

(declare-fun b!2459430 () Bool)

(assert (=> b!2459430 (= e!1559892 e!1559898)))

(declare-fun res!1042241 () Bool)

(assert (=> b!2459430 (=> res!1042241 e!1559898)))

(assert (=> b!2459430 (= res!1042241 (not (isEmpty!16625 lt!880632)))))

(declare-fun tail!3886 (List!28698) List!28698)

(assert (=> b!2459430 (= lt!880632 (tail!3886 l!9164))))

(assert (= (and start!239742 res!1042248) b!2459424))

(assert (= (and b!2459424 res!1042246) b!2459414))

(assert (= (and b!2459414 (not res!1042245)) b!2459413))

(assert (= (and b!2459413 (not res!1042243)) b!2459430))

(assert (= (and b!2459430 (not res!1042241)) b!2459427))

(assert (= (and b!2459427 (not res!1042242)) b!2459415))

(assert (= (and b!2459415 c!392511) b!2459418))

(assert (= (and b!2459415 (not c!392511)) b!2459425))

(assert (= (and b!2459418 res!1042249) b!2459426))

(assert (= (and b!2459418 res!1042247) b!2459417))

(assert (= (and b!2459425 c!392512) b!2459416))

(assert (= (and b!2459425 (not c!392512)) b!2459423))

(assert (= (and b!2459416 res!1042250) b!2459419))

(assert (= (and b!2459425 res!1042244) b!2459428))

(assert (= (or b!2459418 b!2459428) bm!151254))

(assert (= (or b!2459418 b!2459416) bm!151252))

(assert (= (or b!2459417 b!2459425) bm!151250))

(assert (= (or b!2459417 b!2459425) bm!151251))

(assert (= (or b!2459426 b!2459416) bm!151255))

(assert (= (or b!2459418 b!2459428) bm!151253))

(assert (= (and start!239742 ((_ is Cons!28600) l!9164)) b!2459420))

(assert (= (and start!239742 ((_ is ElementMatch!7231) r!13927)) b!2459429))

(assert (= (and start!239742 ((_ is Concat!11867) r!13927)) b!2459411))

(assert (= (and start!239742 ((_ is Star!7231) r!13927)) b!2459412))

(assert (= (and start!239742 ((_ is Union!7231) r!13927)) b!2459422))

(assert (= (and start!239742 ((_ is Cons!28601) s!9460)) b!2459421))

(declare-fun m!2829099 () Bool)

(assert (=> b!2459414 m!2829099))

(declare-fun m!2829101 () Bool)

(assert (=> b!2459414 m!2829101))

(declare-fun m!2829103 () Bool)

(assert (=> b!2459414 m!2829103))

(declare-fun m!2829105 () Bool)

(assert (=> bm!151252 m!2829105))

(declare-fun m!2829107 () Bool)

(assert (=> bm!151253 m!2829107))

(declare-fun m!2829109 () Bool)

(assert (=> bm!151255 m!2829109))

(declare-fun m!2829111 () Bool)

(assert (=> b!2459413 m!2829111))

(declare-fun m!2829113 () Bool)

(assert (=> bm!151254 m!2829113))

(declare-fun m!2829115 () Bool)

(assert (=> b!2459427 m!2829115))

(declare-fun m!2829117 () Bool)

(assert (=> start!239742 m!2829117))

(declare-fun m!2829119 () Bool)

(assert (=> b!2459415 m!2829119))

(declare-fun m!2829121 () Bool)

(assert (=> b!2459415 m!2829121))

(declare-fun m!2829123 () Bool)

(assert (=> bm!151250 m!2829123))

(declare-fun m!2829125 () Bool)

(assert (=> b!2459424 m!2829125))

(declare-fun m!2829127 () Bool)

(assert (=> b!2459416 m!2829127))

(declare-fun m!2829129 () Bool)

(assert (=> b!2459416 m!2829129))

(declare-fun m!2829131 () Bool)

(assert (=> b!2459430 m!2829131))

(declare-fun m!2829133 () Bool)

(assert (=> b!2459430 m!2829133))

(declare-fun m!2829135 () Bool)

(assert (=> b!2459418 m!2829135))

(declare-fun m!2829137 () Bool)

(assert (=> b!2459418 m!2829137))

(declare-fun m!2829139 () Bool)

(assert (=> b!2459418 m!2829139))

(declare-fun m!2829141 () Bool)

(assert (=> bm!151251 m!2829141))

(check-sat (not bm!151251) (not b!2459430) (not b!2459418) (not b!2459411) (not b!2459412) (not bm!151252) (not bm!151255) (not b!2459421) (not b!2459427) (not bm!151250) (not bm!151253) (not b!2459424) (not b!2459416) tp_is_empty!11875 (not b!2459422) (not start!239742) (not b!2459413) (not b!2459420) (not bm!151254) (not b!2459415) (not b!2459414))
(check-sat)
