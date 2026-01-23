; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739344 () Bool)

(assert start!739344)

(declare-fun b!7759920 () Bool)

(assert (=> b!7759920 true))

(assert (=> b!7759920 true))

(assert (=> b!7759920 true))

(declare-fun b!7759919 () Bool)

(declare-fun e!4599117 () Bool)

(declare-fun tp!2278532 () Bool)

(assert (=> b!7759919 (= e!4599117 tp!2278532)))

(declare-fun res!3093623 () Bool)

(declare-fun e!4599115 () Bool)

(assert (=> b!7759920 (=> (not res!3093623) (not e!4599115))))

(declare-fun lambda!471999 () Int)

(declare-fun Exists!4731 (Int) Bool)

(assert (=> b!7759920 (= res!3093623 (Exists!4731 lambda!471999))))

(declare-fun b!7759921 () Bool)

(declare-fun tp!2278529 () Bool)

(declare-fun tp!2278536 () Bool)

(assert (=> b!7759921 (= e!4599117 (and tp!2278529 tp!2278536))))

(declare-fun b!7759922 () Bool)

(declare-fun e!4599113 () Bool)

(declare-fun tp!2278539 () Bool)

(declare-fun tp!2278534 () Bool)

(assert (=> b!7759922 (= e!4599113 (and tp!2278539 tp!2278534))))

(declare-fun res!3093628 () Bool)

(declare-fun e!4599112 () Bool)

(assert (=> start!739344 (=> (not res!3093628) (not e!4599112))))

(declare-datatypes ((C!41696 0))(
  ( (C!41697 (val!31288 Int)) )
))
(declare-datatypes ((Regex!20685 0))(
  ( (ElementMatch!20685 (c!1430674 C!41696)) (Concat!29530 (regOne!41882 Regex!20685) (regTwo!41882 Regex!20685)) (EmptyExpr!20685) (Star!20685 (reg!21014 Regex!20685)) (EmptyLang!20685) (Union!20685 (regOne!41883 Regex!20685) (regTwo!41883 Regex!20685)) )
))
(declare-fun r1!3330 () Regex!20685)

(declare-fun validRegex!11101 (Regex!20685) Bool)

(assert (=> start!739344 (= res!3093628 (validRegex!11101 r1!3330))))

(assert (=> start!739344 e!4599112))

(assert (=> start!739344 e!4599117))

(assert (=> start!739344 e!4599113))

(declare-fun e!4599114 () Bool)

(assert (=> start!739344 e!4599114))

(declare-fun b!7759923 () Bool)

(declare-fun tp_is_empty!51725 () Bool)

(assert (=> b!7759923 (= e!4599117 tp_is_empty!51725)))

(declare-fun b!7759924 () Bool)

(declare-fun res!3093627 () Bool)

(assert (=> b!7759924 (=> (not res!3093627) (not e!4599112))))

(declare-fun r2!3230 () Regex!20685)

(assert (=> b!7759924 (= res!3093627 (validRegex!11101 r2!3230))))

(declare-fun b!7759925 () Bool)

(declare-fun tp!2278531 () Bool)

(assert (=> b!7759925 (= e!4599114 (and tp_is_empty!51725 tp!2278531))))

(declare-fun b!7759926 () Bool)

(declare-fun tp!2278538 () Bool)

(declare-fun tp!2278535 () Bool)

(assert (=> b!7759926 (= e!4599113 (and tp!2278538 tp!2278535))))

(declare-fun b!7759927 () Bool)

(assert (=> b!7759927 (= e!4599113 tp_is_empty!51725)))

(declare-fun b!7759928 () Bool)

(declare-fun e!4599116 () Bool)

(assert (=> b!7759928 (= e!4599115 e!4599116)))

(declare-fun res!3093626 () Bool)

(assert (=> b!7759928 (=> (not res!3093626) (not e!4599116))))

(declare-datatypes ((List!73528 0))(
  ( (Nil!73404) (Cons!73404 (h!79852 C!41696) (t!388263 List!73528)) )
))
(declare-datatypes ((tuple2!69756 0))(
  ( (tuple2!69757 (_1!38181 List!73528) (_2!38181 List!73528)) )
))
(declare-fun lt!2670230 () tuple2!69756)

(declare-fun s!10216 () List!73528)

(declare-fun ++!17860 (List!73528 List!73528) List!73528)

(assert (=> b!7759928 (= res!3093626 (= (++!17860 (_1!38181 lt!2670230) (_2!38181 lt!2670230)) s!10216))))

(declare-fun pickWitness!558 (Int) tuple2!69756)

(assert (=> b!7759928 (= lt!2670230 (pickWitness!558 lambda!471999))))

(declare-fun b!7759929 () Bool)

(assert (=> b!7759929 (= e!4599116 false)))

(declare-fun lt!2670231 () Bool)

(declare-fun matchR!10153 (Regex!20685 List!73528) Bool)

(assert (=> b!7759929 (= lt!2670231 (matchR!10153 r1!3330 (_1!38181 lt!2670230)))))

(declare-fun b!7759930 () Bool)

(assert (=> b!7759930 (= e!4599112 e!4599115)))

(declare-fun res!3093625 () Bool)

(assert (=> b!7759930 (=> (not res!3093625) (not e!4599115))))

(declare-datatypes ((Option!17672 0))(
  ( (None!17671) (Some!17671 (v!54806 tuple2!69756)) )
))
(declare-fun lt!2670232 () Option!17672)

(declare-fun isDefined!14284 (Option!17672) Bool)

(assert (=> b!7759930 (= res!3093625 (not (isDefined!14284 lt!2670232)))))

(declare-fun findConcatSeparation!3702 (Regex!20685 Regex!20685 List!73528 List!73528 List!73528) Option!17672)

(assert (=> b!7759930 (= lt!2670232 (findConcatSeparation!3702 r1!3330 r2!3230 Nil!73404 s!10216 s!10216))))

(declare-fun b!7759931 () Bool)

(declare-fun tp!2278533 () Bool)

(declare-fun tp!2278530 () Bool)

(assert (=> b!7759931 (= e!4599117 (and tp!2278533 tp!2278530))))

(declare-fun b!7759932 () Bool)

(declare-fun tp!2278537 () Bool)

(assert (=> b!7759932 (= e!4599113 tp!2278537)))

(declare-fun b!7759933 () Bool)

(declare-fun res!3093624 () Bool)

(assert (=> b!7759933 (=> (not res!3093624) (not e!4599115))))

(declare-fun isEmpty!42068 (Option!17672) Bool)

(assert (=> b!7759933 (= res!3093624 (isEmpty!42068 lt!2670232))))

(assert (= (and start!739344 res!3093628) b!7759924))

(assert (= (and b!7759924 res!3093627) b!7759930))

(assert (= (and b!7759930 res!3093625) b!7759933))

(assert (= (and b!7759933 res!3093624) b!7759920))

(assert (= (and b!7759920 res!3093623) b!7759928))

(assert (= (and b!7759928 res!3093626) b!7759929))

(get-info :version)

(assert (= (and start!739344 ((_ is ElementMatch!20685) r1!3330)) b!7759923))

(assert (= (and start!739344 ((_ is Concat!29530) r1!3330)) b!7759931))

(assert (= (and start!739344 ((_ is Star!20685) r1!3330)) b!7759919))

(assert (= (and start!739344 ((_ is Union!20685) r1!3330)) b!7759921))

(assert (= (and start!739344 ((_ is ElementMatch!20685) r2!3230)) b!7759927))

(assert (= (and start!739344 ((_ is Concat!29530) r2!3230)) b!7759922))

(assert (= (and start!739344 ((_ is Star!20685) r2!3230)) b!7759932))

(assert (= (and start!739344 ((_ is Union!20685) r2!3230)) b!7759926))

(assert (= (and start!739344 ((_ is Cons!73404) s!10216)) b!7759925))

(declare-fun m!8220324 () Bool)

(assert (=> b!7759928 m!8220324))

(declare-fun m!8220326 () Bool)

(assert (=> b!7759928 m!8220326))

(declare-fun m!8220328 () Bool)

(assert (=> b!7759924 m!8220328))

(declare-fun m!8220330 () Bool)

(assert (=> b!7759930 m!8220330))

(declare-fun m!8220332 () Bool)

(assert (=> b!7759930 m!8220332))

(declare-fun m!8220334 () Bool)

(assert (=> b!7759929 m!8220334))

(declare-fun m!8220336 () Bool)

(assert (=> start!739344 m!8220336))

(declare-fun m!8220338 () Bool)

(assert (=> b!7759920 m!8220338))

(declare-fun m!8220340 () Bool)

(assert (=> b!7759933 m!8220340))

(check-sat (not b!7759919) (not b!7759926) tp_is_empty!51725 (not b!7759922) (not b!7759928) (not start!739344) (not b!7759929) (not b!7759932) (not b!7759931) (not b!7759930) (not b!7759920) (not b!7759925) (not b!7759933) (not b!7759921) (not b!7759924))
(check-sat)
