; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739192 () Bool)

(assert start!739192)

(declare-fun b!7756842 () Bool)

(declare-fun e!4597776 () Bool)

(declare-fun tp_is_empty!51641 () Bool)

(assert (=> b!7756842 (= e!4597776 tp_is_empty!51641)))

(declare-fun b!7756843 () Bool)

(declare-fun res!3092586 () Bool)

(declare-fun e!4597779 () Bool)

(assert (=> b!7756843 (=> (not res!3092586) (not e!4597779))))

(declare-datatypes ((C!41612 0))(
  ( (C!41613 (val!31246 Int)) )
))
(declare-datatypes ((List!73488 0))(
  ( (Nil!73364) (Cons!73364 (h!79812 C!41612) (t!388223 List!73488)) )
))
(declare-datatypes ((tuple2!69680 0))(
  ( (tuple2!69681 (_1!38143 List!73488) (_2!38143 List!73488)) )
))
(declare-datatypes ((Option!17634 0))(
  ( (None!17633) (Some!17633 (v!54768 tuple2!69680)) )
))
(declare-fun lt!2669866 () Option!17634)

(declare-fun s2!3712 () List!73488)

(declare-fun s1!4090 () List!73488)

(declare-fun get!26123 (Option!17634) tuple2!69680)

(assert (=> b!7756843 (= res!3092586 (= (get!26123 lt!2669866) (tuple2!69681 s1!4090 s2!3712)))))

(declare-fun b!7756844 () Bool)

(declare-fun tp!2276550 () Bool)

(declare-fun tp!2276553 () Bool)

(assert (=> b!7756844 (= e!4597776 (and tp!2276550 tp!2276553))))

(declare-fun b!7756845 () Bool)

(declare-fun tp!2276549 () Bool)

(declare-fun tp!2276555 () Bool)

(assert (=> b!7756845 (= e!4597776 (and tp!2276549 tp!2276555))))

(declare-fun b!7756846 () Bool)

(assert (=> b!7756846 (= e!4597779 (not true))))

(declare-datatypes ((Regex!20643 0))(
  ( (ElementMatch!20643 (c!1430482 C!41612)) (Concat!29488 (regOne!41798 Regex!20643) (regTwo!41798 Regex!20643)) (EmptyExpr!20643) (Star!20643 (reg!20972 Regex!20643)) (EmptyLang!20643) (Union!20643 (regOne!41799 Regex!20643) (regTwo!41799 Regex!20643)) )
))
(declare-fun r1!6249 () Regex!20643)

(declare-fun r2!6187 () Regex!20643)

(declare-fun lt!2669868 () List!73488)

(declare-fun matchR!10127 (Regex!20643 List!73488) Bool)

(assert (=> b!7756846 (matchR!10127 (Concat!29488 r1!6249 r2!6187) lt!2669868)))

(declare-datatypes ((Unit!168348 0))(
  ( (Unit!168349) )
))
(declare-fun lt!2669867 () Unit!168348)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!418 (Regex!20643 Regex!20643 List!73488 List!73488) Unit!168348)

(assert (=> b!7756846 (= lt!2669867 (lemmaTwoRegexMatchThenConcatMatchesConcatString!418 r1!6249 r2!6187 s1!4090 s2!3712))))

(declare-fun b!7756847 () Bool)

(declare-fun e!4597781 () Bool)

(declare-fun tp!2276556 () Bool)

(assert (=> b!7756847 (= e!4597781 (and tp_is_empty!51641 tp!2276556))))

(declare-fun res!3092584 () Bool)

(declare-fun e!4597780 () Bool)

(assert (=> start!739192 (=> (not res!3092584) (not e!4597780))))

(declare-fun validRegex!11061 (Regex!20643) Bool)

(assert (=> start!739192 (= res!3092584 (validRegex!11061 r1!6249))))

(assert (=> start!739192 e!4597780))

(declare-fun e!4597774 () Bool)

(assert (=> start!739192 e!4597774))

(assert (=> start!739192 e!4597781))

(declare-fun e!4597778 () Bool)

(assert (=> start!739192 e!4597778))

(declare-fun e!4597775 () Bool)

(assert (=> start!739192 e!4597775))

(assert (=> start!739192 e!4597776))

(declare-fun b!7756848 () Bool)

(declare-fun res!3092583 () Bool)

(assert (=> b!7756848 (=> (not res!3092583) (not e!4597779))))

(assert (=> b!7756848 (= res!3092583 (matchR!10127 r2!6187 s2!3712))))

(declare-fun b!7756849 () Bool)

(declare-fun tp!2276547 () Bool)

(assert (=> b!7756849 (= e!4597775 tp!2276547)))

(declare-fun b!7756850 () Bool)

(declare-fun tp!2276552 () Bool)

(declare-fun tp!2276554 () Bool)

(assert (=> b!7756850 (= e!4597775 (and tp!2276552 tp!2276554))))

(declare-fun b!7756851 () Bool)

(declare-fun tp!2276557 () Bool)

(declare-fun tp!2276551 () Bool)

(assert (=> b!7756851 (= e!4597775 (and tp!2276557 tp!2276551))))

(declare-fun b!7756852 () Bool)

(declare-fun tp!2276558 () Bool)

(assert (=> b!7756852 (= e!4597778 (and tp_is_empty!51641 tp!2276558))))

(declare-fun b!7756853 () Bool)

(declare-fun e!4597777 () Bool)

(assert (=> b!7756853 (= e!4597777 e!4597779)))

(declare-fun res!3092580 () Bool)

(assert (=> b!7756853 (=> (not res!3092580) (not e!4597779))))

(declare-fun isDefined!14248 (Option!17634) Bool)

(assert (=> b!7756853 (= res!3092580 (isDefined!14248 lt!2669866))))

(declare-fun s!14266 () List!73488)

(declare-fun findConcatSeparation!3664 (Regex!20643 Regex!20643 List!73488 List!73488 List!73488) Option!17634)

(assert (=> b!7756853 (= lt!2669866 (findConcatSeparation!3664 r1!6249 r2!6187 Nil!73364 s!14266 s!14266))))

(declare-fun b!7756854 () Bool)

(declare-fun tp!2276559 () Bool)

(assert (=> b!7756854 (= e!4597776 tp!2276559)))

(declare-fun b!7756855 () Bool)

(assert (=> b!7756855 (= e!4597780 e!4597777)))

(declare-fun res!3092582 () Bool)

(assert (=> b!7756855 (=> (not res!3092582) (not e!4597777))))

(assert (=> b!7756855 (= res!3092582 (= s!14266 lt!2669868))))

(declare-fun ++!17824 (List!73488 List!73488) List!73488)

(assert (=> b!7756855 (= lt!2669868 (++!17824 s1!4090 s2!3712))))

(declare-fun b!7756856 () Bool)

(declare-fun tp!2276548 () Bool)

(assert (=> b!7756856 (= e!4597774 (and tp_is_empty!51641 tp!2276548))))

(declare-fun b!7756857 () Bool)

(declare-fun res!3092585 () Bool)

(assert (=> b!7756857 (=> (not res!3092585) (not e!4597779))))

(assert (=> b!7756857 (= res!3092585 (matchR!10127 r1!6249 s1!4090))))

(declare-fun b!7756858 () Bool)

(assert (=> b!7756858 (= e!4597775 tp_is_empty!51641)))

(declare-fun b!7756859 () Bool)

(declare-fun res!3092581 () Bool)

(assert (=> b!7756859 (=> (not res!3092581) (not e!4597780))))

(assert (=> b!7756859 (= res!3092581 (validRegex!11061 r2!6187))))

(assert (= (and start!739192 res!3092584) b!7756859))

(assert (= (and b!7756859 res!3092581) b!7756855))

(assert (= (and b!7756855 res!3092582) b!7756853))

(assert (= (and b!7756853 res!3092580) b!7756843))

(assert (= (and b!7756843 res!3092586) b!7756857))

(assert (= (and b!7756857 res!3092585) b!7756848))

(assert (= (and b!7756848 res!3092583) b!7756846))

(get-info :version)

(assert (= (and start!739192 ((_ is Cons!73364) s!14266)) b!7756856))

(assert (= (and start!739192 ((_ is Cons!73364) s2!3712)) b!7756847))

(assert (= (and start!739192 ((_ is Cons!73364) s1!4090)) b!7756852))

(assert (= (and start!739192 ((_ is ElementMatch!20643) r1!6249)) b!7756858))

(assert (= (and start!739192 ((_ is Concat!29488) r1!6249)) b!7756850))

(assert (= (and start!739192 ((_ is Star!20643) r1!6249)) b!7756849))

(assert (= (and start!739192 ((_ is Union!20643) r1!6249)) b!7756851))

(assert (= (and start!739192 ((_ is ElementMatch!20643) r2!6187)) b!7756842))

(assert (= (and start!739192 ((_ is Concat!29488) r2!6187)) b!7756844))

(assert (= (and start!739192 ((_ is Star!20643) r2!6187)) b!7756854))

(assert (= (and start!739192 ((_ is Union!20643) r2!6187)) b!7756845))

(declare-fun m!8219274 () Bool)

(assert (=> start!739192 m!8219274))

(declare-fun m!8219276 () Bool)

(assert (=> b!7756859 m!8219276))

(declare-fun m!8219278 () Bool)

(assert (=> b!7756855 m!8219278))

(declare-fun m!8219280 () Bool)

(assert (=> b!7756853 m!8219280))

(declare-fun m!8219282 () Bool)

(assert (=> b!7756853 m!8219282))

(declare-fun m!8219284 () Bool)

(assert (=> b!7756857 m!8219284))

(declare-fun m!8219286 () Bool)

(assert (=> b!7756848 m!8219286))

(declare-fun m!8219288 () Bool)

(assert (=> b!7756846 m!8219288))

(declare-fun m!8219290 () Bool)

(assert (=> b!7756846 m!8219290))

(declare-fun m!8219292 () Bool)

(assert (=> b!7756843 m!8219292))

(check-sat (not start!739192) (not b!7756857) (not b!7756850) (not b!7756856) (not b!7756859) (not b!7756854) (not b!7756846) (not b!7756852) (not b!7756848) (not b!7756844) (not b!7756851) tp_is_empty!51641 (not b!7756855) (not b!7756847) (not b!7756849) (not b!7756845) (not b!7756853) (not b!7756843))
(check-sat)
