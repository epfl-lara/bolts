; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739252 () Bool)

(assert start!739252)

(declare-fun b!7758008 () Bool)

(declare-fun e!4598289 () Bool)

(declare-fun tp_is_empty!51677 () Bool)

(declare-fun tp!2277418 () Bool)

(assert (=> b!7758008 (= e!4598289 (and tp_is_empty!51677 tp!2277418))))

(declare-fun b!7758009 () Bool)

(declare-fun e!4598288 () Bool)

(declare-fun tp!2277419 () Bool)

(assert (=> b!7758009 (= e!4598288 tp!2277419)))

(declare-fun b!7758011 () Bool)

(declare-fun e!4598285 () Bool)

(assert (=> b!7758011 (= e!4598285 tp_is_empty!51677)))

(declare-fun b!7758012 () Bool)

(declare-fun tp!2277421 () Bool)

(declare-fun tp!2277413 () Bool)

(assert (=> b!7758012 (= e!4598288 (and tp!2277421 tp!2277413))))

(declare-fun b!7758013 () Bool)

(declare-fun e!4598287 () Bool)

(declare-fun e!4598286 () Bool)

(assert (=> b!7758013 (= e!4598287 e!4598286)))

(declare-fun res!3092908 () Bool)

(assert (=> b!7758013 (=> (not res!3092908) (not e!4598286))))

(declare-datatypes ((C!41648 0))(
  ( (C!41649 (val!31264 Int)) )
))
(declare-datatypes ((List!73504 0))(
  ( (Nil!73380) (Cons!73380 (h!79828 C!41648) (t!388239 List!73504)) )
))
(declare-datatypes ((tuple2!69708 0))(
  ( (tuple2!69709 (_1!38157 List!73504) (_2!38157 List!73504)) )
))
(declare-fun lt!2669994 () tuple2!69708)

(declare-fun s!10216 () List!73504)

(declare-fun ++!17838 (List!73504 List!73504) List!73504)

(assert (=> b!7758013 (= res!3092908 (= (++!17838 (_1!38157 lt!2669994) (_2!38157 lt!2669994)) s!10216))))

(declare-datatypes ((Option!17648 0))(
  ( (None!17647) (Some!17647 (v!54782 tuple2!69708)) )
))
(declare-fun lt!2669993 () Option!17648)

(declare-fun get!26144 (Option!17648) tuple2!69708)

(assert (=> b!7758013 (= lt!2669994 (get!26144 lt!2669993))))

(declare-fun b!7758014 () Bool)

(declare-fun tp!2277414 () Bool)

(declare-fun tp!2277420 () Bool)

(assert (=> b!7758014 (= e!4598288 (and tp!2277414 tp!2277420))))

(declare-fun b!7758015 () Bool)

(declare-fun res!3092910 () Bool)

(declare-fun e!4598284 () Bool)

(assert (=> b!7758015 (=> (not res!3092910) (not e!4598284))))

(declare-datatypes ((Regex!20661 0))(
  ( (ElementMatch!20661 (c!1430556 C!41648)) (Concat!29506 (regOne!41834 Regex!20661) (regTwo!41834 Regex!20661)) (EmptyExpr!20661) (Star!20661 (reg!20990 Regex!20661)) (EmptyLang!20661) (Union!20661 (regOne!41835 Regex!20661) (regTwo!41835 Regex!20661)) )
))
(declare-fun r2!3230 () Regex!20661)

(declare-fun validRegex!11077 (Regex!20661) Bool)

(assert (=> b!7758015 (= res!3092910 (validRegex!11077 r2!3230))))

(declare-fun b!7758016 () Bool)

(assert (=> b!7758016 (= e!4598286 false)))

(declare-fun lt!2669992 () Bool)

(declare-fun matchR!10137 (Regex!20661 List!73504) Bool)

(assert (=> b!7758016 (= lt!2669992 (matchR!10137 r2!3230 (_2!38157 lt!2669994)))))

(declare-fun b!7758017 () Bool)

(assert (=> b!7758017 (= e!4598288 tp_is_empty!51677)))

(declare-fun b!7758018 () Bool)

(declare-fun tp!2277416 () Bool)

(declare-fun tp!2277422 () Bool)

(assert (=> b!7758018 (= e!4598285 (and tp!2277416 tp!2277422))))

(declare-fun b!7758019 () Bool)

(assert (=> b!7758019 (= e!4598284 e!4598287)))

(declare-fun res!3092912 () Bool)

(assert (=> b!7758019 (=> (not res!3092912) (not e!4598287))))

(declare-fun isDefined!14260 (Option!17648) Bool)

(assert (=> b!7758019 (= res!3092912 (isDefined!14260 lt!2669993))))

(declare-fun r1!3330 () Regex!20661)

(declare-fun findConcatSeparation!3678 (Regex!20661 Regex!20661 List!73504 List!73504 List!73504) Option!17648)

(assert (=> b!7758019 (= lt!2669993 (findConcatSeparation!3678 r1!3330 r2!3230 Nil!73380 s!10216 s!10216))))

(declare-fun b!7758020 () Bool)

(declare-fun tp!2277423 () Bool)

(declare-fun tp!2277417 () Bool)

(assert (=> b!7758020 (= e!4598285 (and tp!2277423 tp!2277417))))

(declare-fun b!7758021 () Bool)

(declare-fun res!3092909 () Bool)

(assert (=> b!7758021 (=> (not res!3092909) (not e!4598286))))

(assert (=> b!7758021 (= res!3092909 (matchR!10137 r1!3330 (_1!38157 lt!2669994)))))

(declare-fun b!7758010 () Bool)

(declare-fun tp!2277415 () Bool)

(assert (=> b!7758010 (= e!4598285 tp!2277415)))

(declare-fun res!3092911 () Bool)

(assert (=> start!739252 (=> (not res!3092911) (not e!4598284))))

(assert (=> start!739252 (= res!3092911 (validRegex!11077 r1!3330))))

(assert (=> start!739252 e!4598284))

(assert (=> start!739252 e!4598288))

(assert (=> start!739252 e!4598285))

(assert (=> start!739252 e!4598289))

(assert (= (and start!739252 res!3092911) b!7758015))

(assert (= (and b!7758015 res!3092910) b!7758019))

(assert (= (and b!7758019 res!3092912) b!7758013))

(assert (= (and b!7758013 res!3092908) b!7758021))

(assert (= (and b!7758021 res!3092909) b!7758016))

(get-info :version)

(assert (= (and start!739252 ((_ is ElementMatch!20661) r1!3330)) b!7758017))

(assert (= (and start!739252 ((_ is Concat!29506) r1!3330)) b!7758014))

(assert (= (and start!739252 ((_ is Star!20661) r1!3330)) b!7758009))

(assert (= (and start!739252 ((_ is Union!20661) r1!3330)) b!7758012))

(assert (= (and start!739252 ((_ is ElementMatch!20661) r2!3230)) b!7758011))

(assert (= (and start!739252 ((_ is Concat!29506) r2!3230)) b!7758020))

(assert (= (and start!739252 ((_ is Star!20661) r2!3230)) b!7758010))

(assert (= (and start!739252 ((_ is Union!20661) r2!3230)) b!7758018))

(assert (= (and start!739252 ((_ is Cons!73380) s!10216)) b!7758008))

(declare-fun m!8219634 () Bool)

(assert (=> b!7758019 m!8219634))

(declare-fun m!8219636 () Bool)

(assert (=> b!7758019 m!8219636))

(declare-fun m!8219638 () Bool)

(assert (=> b!7758015 m!8219638))

(declare-fun m!8219640 () Bool)

(assert (=> b!7758016 m!8219640))

(declare-fun m!8219642 () Bool)

(assert (=> start!739252 m!8219642))

(declare-fun m!8219644 () Bool)

(assert (=> b!7758021 m!8219644))

(declare-fun m!8219646 () Bool)

(assert (=> b!7758013 m!8219646))

(declare-fun m!8219648 () Bool)

(assert (=> b!7758013 m!8219648))

(check-sat (not b!7758021) (not b!7758018) (not b!7758019) (not start!739252) (not b!7758012) (not b!7758020) (not b!7758016) (not b!7758013) (not b!7758009) (not b!7758010) (not b!7758014) (not b!7758008) tp_is_empty!51677 (not b!7758015))
(check-sat)
