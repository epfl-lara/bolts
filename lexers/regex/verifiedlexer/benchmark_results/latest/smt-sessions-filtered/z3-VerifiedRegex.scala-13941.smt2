; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739328 () Bool)

(assert start!739328)

(declare-fun b!7759483 () Bool)

(assert (=> b!7759483 true))

(assert (=> b!7759483 true))

(assert (=> b!7759483 true))

(declare-fun b!7759470 () Bool)

(declare-fun res!3093438 () Bool)

(declare-fun e!4598946 () Bool)

(assert (=> b!7759470 (=> (not res!3093438) (not e!4598946))))

(declare-datatypes ((C!41680 0))(
  ( (C!41681 (val!31280 Int)) )
))
(declare-datatypes ((List!73520 0))(
  ( (Nil!73396) (Cons!73396 (h!79844 C!41680) (t!388255 List!73520)) )
))
(declare-datatypes ((tuple2!69740 0))(
  ( (tuple2!69741 (_1!38173 List!73520) (_2!38173 List!73520)) )
))
(declare-datatypes ((Option!17664 0))(
  ( (None!17663) (Some!17663 (v!54798 tuple2!69740)) )
))
(declare-fun lt!2670177 () Option!17664)

(declare-fun isEmpty!42060 (Option!17664) Bool)

(assert (=> b!7759470 (= res!3093438 (isEmpty!42060 lt!2670177))))

(declare-fun b!7759471 () Bool)

(declare-fun e!4598948 () Bool)

(assert (=> b!7759471 (= e!4598948 e!4598946)))

(declare-fun res!3093440 () Bool)

(assert (=> b!7759471 (=> (not res!3093440) (not e!4598946))))

(declare-fun isDefined!14276 (Option!17664) Bool)

(assert (=> b!7759471 (= res!3093440 (not (isDefined!14276 lt!2670177)))))

(declare-datatypes ((Regex!20677 0))(
  ( (ElementMatch!20677 (c!1430666 C!41680)) (Concat!29522 (regOne!41866 Regex!20677) (regTwo!41866 Regex!20677)) (EmptyExpr!20677) (Star!20677 (reg!21006 Regex!20677)) (EmptyLang!20677) (Union!20677 (regOne!41867 Regex!20677) (regTwo!41867 Regex!20677)) )
))
(declare-fun r1!3330 () Regex!20677)

(declare-fun r2!3230 () Regex!20677)

(declare-fun s!10216 () List!73520)

(declare-fun findConcatSeparation!3694 (Regex!20677 Regex!20677 List!73520 List!73520 List!73520) Option!17664)

(assert (=> b!7759471 (= lt!2670177 (findConcatSeparation!3694 r1!3330 r2!3230 Nil!73396 s!10216 s!10216))))

(declare-fun b!7759472 () Bool)

(declare-fun e!4598950 () Bool)

(declare-fun tp_is_empty!51709 () Bool)

(declare-fun tp!2278252 () Bool)

(assert (=> b!7759472 (= e!4598950 (and tp_is_empty!51709 tp!2278252))))

(declare-fun b!7759473 () Bool)

(declare-fun e!4598947 () Bool)

(declare-fun tp!2278259 () Bool)

(assert (=> b!7759473 (= e!4598947 (and tp_is_empty!51709 tp!2278259))))

(declare-fun b!7759474 () Bool)

(declare-fun e!4598951 () Bool)

(declare-fun tp!2278255 () Bool)

(assert (=> b!7759474 (= e!4598951 tp!2278255)))

(declare-fun b!7759475 () Bool)

(declare-fun e!4598945 () Bool)

(declare-fun tp!2278263 () Bool)

(declare-fun tp!2278258 () Bool)

(assert (=> b!7759475 (= e!4598945 (and tp!2278263 tp!2278258))))

(declare-fun b!7759476 () Bool)

(declare-fun tp!2278253 () Bool)

(declare-fun tp!2278261 () Bool)

(assert (=> b!7759476 (= e!4598951 (and tp!2278253 tp!2278261))))

(declare-fun b!7759478 () Bool)

(declare-fun e!4598949 () Bool)

(declare-fun tp!2278256 () Bool)

(assert (=> b!7759478 (= e!4598949 (and tp_is_empty!51709 tp!2278256))))

(declare-fun b!7759479 () Bool)

(declare-fun tp!2278262 () Bool)

(declare-fun tp!2278257 () Bool)

(assert (=> b!7759479 (= e!4598951 (and tp!2278262 tp!2278257))))

(declare-fun b!7759480 () Bool)

(assert (=> b!7759480 (= e!4598951 tp_is_empty!51709)))

(declare-fun b!7759481 () Bool)

(assert (=> b!7759481 (= e!4598946 false)))

(declare-fun lt!2670178 () List!73520)

(declare-fun cut!25 () tuple2!69740)

(declare-fun ++!17854 (List!73520 List!73520) List!73520)

(assert (=> b!7759481 (= lt!2670178 (++!17854 (_1!38173 cut!25) (_2!38173 cut!25)))))

(declare-fun b!7759482 () Bool)

(declare-fun res!3093439 () Bool)

(assert (=> b!7759482 (=> (not res!3093439) (not e!4598948))))

(declare-fun validRegex!11093 (Regex!20677) Bool)

(assert (=> b!7759482 (= res!3093439 (validRegex!11093 r2!3230))))

(declare-fun res!3093436 () Bool)

(assert (=> b!7759483 (=> (not res!3093436) (not e!4598946))))

(declare-fun lambda!471963 () Int)

(declare-fun Exists!4723 (Int) Bool)

(assert (=> b!7759483 (= res!3093436 (Exists!4723 lambda!471963))))

(declare-fun b!7759484 () Bool)

(assert (=> b!7759484 (= e!4598945 tp_is_empty!51709)))

(declare-fun b!7759485 () Bool)

(declare-fun tp!2278260 () Bool)

(assert (=> b!7759485 (= e!4598945 tp!2278260)))

(declare-fun res!3093437 () Bool)

(assert (=> start!739328 (=> (not res!3093437) (not e!4598948))))

(assert (=> start!739328 (= res!3093437 (validRegex!11093 r1!3330))))

(assert (=> start!739328 e!4598948))

(assert (=> start!739328 e!4598945))

(assert (=> start!739328 e!4598951))

(assert (=> start!739328 (and e!4598947 e!4598949)))

(assert (=> start!739328 e!4598950))

(declare-fun b!7759477 () Bool)

(declare-fun tp!2278251 () Bool)

(declare-fun tp!2278254 () Bool)

(assert (=> b!7759477 (= e!4598945 (and tp!2278251 tp!2278254))))

(assert (= (and start!739328 res!3093437) b!7759482))

(assert (= (and b!7759482 res!3093439) b!7759471))

(assert (= (and b!7759471 res!3093440) b!7759470))

(assert (= (and b!7759470 res!3093438) b!7759483))

(assert (= (and b!7759483 res!3093436) b!7759481))

(get-info :version)

(assert (= (and start!739328 ((_ is ElementMatch!20677) r1!3330)) b!7759484))

(assert (= (and start!739328 ((_ is Concat!29522) r1!3330)) b!7759477))

(assert (= (and start!739328 ((_ is Star!20677) r1!3330)) b!7759485))

(assert (= (and start!739328 ((_ is Union!20677) r1!3330)) b!7759475))

(assert (= (and start!739328 ((_ is ElementMatch!20677) r2!3230)) b!7759480))

(assert (= (and start!739328 ((_ is Concat!29522) r2!3230)) b!7759476))

(assert (= (and start!739328 ((_ is Star!20677) r2!3230)) b!7759474))

(assert (= (and start!739328 ((_ is Union!20677) r2!3230)) b!7759479))

(assert (= (and start!739328 ((_ is Cons!73396) (_1!38173 cut!25))) b!7759473))

(assert (= (and start!739328 ((_ is Cons!73396) (_2!38173 cut!25))) b!7759478))

(assert (= (and start!739328 ((_ is Cons!73396) s!10216)) b!7759472))

(declare-fun m!8220204 () Bool)

(assert (=> b!7759483 m!8220204))

(declare-fun m!8220206 () Bool)

(assert (=> b!7759481 m!8220206))

(declare-fun m!8220208 () Bool)

(assert (=> b!7759471 m!8220208))

(declare-fun m!8220210 () Bool)

(assert (=> b!7759471 m!8220210))

(declare-fun m!8220212 () Bool)

(assert (=> b!7759470 m!8220212))

(declare-fun m!8220214 () Bool)

(assert (=> start!739328 m!8220214))

(declare-fun m!8220216 () Bool)

(assert (=> b!7759482 m!8220216))

(check-sat (not b!7759483) (not b!7759476) (not b!7759475) tp_is_empty!51709 (not start!739328) (not b!7759470) (not b!7759485) (not b!7759471) (not b!7759473) (not b!7759477) (not b!7759481) (not b!7759479) (not b!7759474) (not b!7759472) (not b!7759482) (not b!7759478))
(check-sat)
