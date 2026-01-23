; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739296 () Bool)

(assert start!739296)

(declare-fun b!7758843 () Bool)

(assert (=> b!7758843 true))

(assert (=> b!7758843 true))

(assert (=> b!7758843 true))

(declare-fun b!7758838 () Bool)

(declare-fun e!4598666 () Bool)

(assert (=> b!7758838 (= e!4598666 false)))

(declare-fun lt!2670115 () Bool)

(declare-datatypes ((C!41664 0))(
  ( (C!41665 (val!31272 Int)) )
))
(declare-datatypes ((Regex!20669 0))(
  ( (ElementMatch!20669 (c!1430624 C!41664)) (Concat!29514 (regOne!41850 Regex!20669) (regTwo!41850 Regex!20669)) (EmptyExpr!20669) (Star!20669 (reg!20998 Regex!20669)) (EmptyLang!20669) (Union!20669 (regOne!41851 Regex!20669) (regTwo!41851 Regex!20669)) )
))
(declare-fun r1!3330 () Regex!20669)

(declare-datatypes ((List!73512 0))(
  ( (Nil!73388) (Cons!73388 (h!79836 C!41664) (t!388247 List!73512)) )
))
(declare-datatypes ((tuple2!69724 0))(
  ( (tuple2!69725 (_1!38165 List!73512) (_2!38165 List!73512)) )
))
(declare-fun cut!21 () tuple2!69724)

(declare-fun matchR!10145 (Regex!20669 List!73512) Bool)

(assert (=> b!7758838 (= lt!2670115 (matchR!10145 r1!3330 (_1!38165 cut!21)))))

(declare-fun b!7758839 () Bool)

(declare-fun res!3093242 () Bool)

(declare-fun e!4598665 () Bool)

(assert (=> b!7758839 (=> (not res!3093242) (not e!4598665))))

(declare-fun r2!3230 () Regex!20669)

(declare-fun validRegex!11085 (Regex!20669) Bool)

(assert (=> b!7758839 (= res!3093242 (validRegex!11085 r2!3230))))

(declare-fun b!7758840 () Bool)

(declare-fun e!4598668 () Bool)

(declare-fun tp!2277827 () Bool)

(declare-fun tp!2277835 () Bool)

(assert (=> b!7758840 (= e!4598668 (and tp!2277827 tp!2277835))))

(declare-fun b!7758841 () Bool)

(declare-fun e!4598667 () Bool)

(declare-fun tp!2277830 () Bool)

(assert (=> b!7758841 (= e!4598667 tp!2277830)))

(declare-fun b!7758842 () Bool)

(declare-fun tp!2277828 () Bool)

(declare-fun tp!2277826 () Bool)

(assert (=> b!7758842 (= e!4598667 (and tp!2277828 tp!2277826))))

(declare-fun e!4598669 () Bool)

(assert (=> b!7758843 (= e!4598669 e!4598666)))

(declare-fun res!3093247 () Bool)

(assert (=> b!7758843 (=> (not res!3093247) (not e!4598666))))

(declare-fun s!10216 () List!73512)

(declare-fun ++!17846 (List!73512 List!73512) List!73512)

(assert (=> b!7758843 (= res!3093247 (= (++!17846 (_1!38165 cut!21) (_2!38165 cut!21)) s!10216))))

(declare-datatypes ((Unit!168368 0))(
  ( (Unit!168369) )
))
(declare-fun lt!2670116 () Unit!168368)

(declare-fun lt!2670118 () tuple2!69724)

(declare-fun lambda!471957 () Int)

(declare-fun ExistsThe!68 (tuple2!69724 Int) Unit!168368)

(assert (=> b!7758843 (= lt!2670116 (ExistsThe!68 (tuple2!69725 (_1!38165 lt!2670118) (_2!38165 lt!2670118)) lambda!471957))))

(declare-fun b!7758844 () Bool)

(declare-fun tp!2277829 () Bool)

(declare-fun tp!2277833 () Bool)

(assert (=> b!7758844 (= e!4598668 (and tp!2277829 tp!2277833))))

(declare-fun b!7758845 () Bool)

(declare-fun e!4598661 () Bool)

(declare-fun tp_is_empty!51693 () Bool)

(declare-fun tp!2277832 () Bool)

(assert (=> b!7758845 (= e!4598661 (and tp_is_empty!51693 tp!2277832))))

(declare-fun b!7758846 () Bool)

(declare-fun e!4598662 () Bool)

(assert (=> b!7758846 (= e!4598665 e!4598662)))

(declare-fun res!3093245 () Bool)

(assert (=> b!7758846 (=> (not res!3093245) (not e!4598662))))

(declare-datatypes ((Option!17656 0))(
  ( (None!17655) (Some!17655 (v!54790 tuple2!69724)) )
))
(declare-fun lt!2670117 () Option!17656)

(declare-fun isDefined!14268 (Option!17656) Bool)

(assert (=> b!7758846 (= res!3093245 (isDefined!14268 lt!2670117))))

(declare-fun findConcatSeparation!3686 (Regex!20669 Regex!20669 List!73512 List!73512 List!73512) Option!17656)

(assert (=> b!7758846 (= lt!2670117 (findConcatSeparation!3686 r1!3330 r2!3230 Nil!73388 s!10216 s!10216))))

(declare-fun res!3093243 () Bool)

(assert (=> start!739296 (=> (not res!3093243) (not e!4598665))))

(assert (=> start!739296 (= res!3093243 (validRegex!11085 r1!3330))))

(assert (=> start!739296 e!4598665))

(assert (=> start!739296 e!4598668))

(assert (=> start!739296 e!4598667))

(declare-fun e!4598664 () Bool)

(assert (=> start!739296 e!4598664))

(declare-fun e!4598663 () Bool)

(assert (=> start!739296 (and e!4598661 e!4598663)))

(declare-fun b!7758847 () Bool)

(assert (=> b!7758847 (= e!4598662 e!4598669)))

(declare-fun res!3093244 () Bool)

(assert (=> b!7758847 (=> (not res!3093244) (not e!4598669))))

(assert (=> b!7758847 (= res!3093244 (= (++!17846 (_1!38165 lt!2670118) (_2!38165 lt!2670118)) s!10216))))

(declare-fun get!26156 (Option!17656) tuple2!69724)

(assert (=> b!7758847 (= lt!2670118 (get!26156 lt!2670117))))

(declare-fun b!7758848 () Bool)

(declare-fun res!3093246 () Bool)

(assert (=> b!7758848 (=> (not res!3093246) (not e!4598669))))

(assert (=> b!7758848 (= res!3093246 (matchR!10145 r2!3230 (_2!38165 lt!2670118)))))

(declare-fun b!7758849 () Bool)

(assert (=> b!7758849 (= e!4598667 tp_is_empty!51693)))

(declare-fun b!7758850 () Bool)

(declare-fun tp!2277837 () Bool)

(declare-fun tp!2277831 () Bool)

(assert (=> b!7758850 (= e!4598667 (and tp!2277837 tp!2277831))))

(declare-fun b!7758851 () Bool)

(declare-fun tp!2277834 () Bool)

(assert (=> b!7758851 (= e!4598668 tp!2277834)))

(declare-fun b!7758852 () Bool)

(declare-fun tp!2277836 () Bool)

(assert (=> b!7758852 (= e!4598663 (and tp_is_empty!51693 tp!2277836))))

(declare-fun b!7758853 () Bool)

(assert (=> b!7758853 (= e!4598668 tp_is_empty!51693)))

(declare-fun b!7758854 () Bool)

(declare-fun res!3093248 () Bool)

(assert (=> b!7758854 (=> (not res!3093248) (not e!4598669))))

(assert (=> b!7758854 (= res!3093248 (matchR!10145 r1!3330 (_1!38165 lt!2670118)))))

(declare-fun b!7758855 () Bool)

(declare-fun tp!2277825 () Bool)

(assert (=> b!7758855 (= e!4598664 (and tp_is_empty!51693 tp!2277825))))

(assert (= (and start!739296 res!3093243) b!7758839))

(assert (= (and b!7758839 res!3093242) b!7758846))

(assert (= (and b!7758846 res!3093245) b!7758847))

(assert (= (and b!7758847 res!3093244) b!7758854))

(assert (= (and b!7758854 res!3093248) b!7758848))

(assert (= (and b!7758848 res!3093246) b!7758843))

(assert (= (and b!7758843 res!3093247) b!7758838))

(get-info :version)

(assert (= (and start!739296 ((_ is ElementMatch!20669) r1!3330)) b!7758853))

(assert (= (and start!739296 ((_ is Concat!29514) r1!3330)) b!7758844))

(assert (= (and start!739296 ((_ is Star!20669) r1!3330)) b!7758851))

(assert (= (and start!739296 ((_ is Union!20669) r1!3330)) b!7758840))

(assert (= (and start!739296 ((_ is ElementMatch!20669) r2!3230)) b!7758849))

(assert (= (and start!739296 ((_ is Concat!29514) r2!3230)) b!7758850))

(assert (= (and start!739296 ((_ is Star!20669) r2!3230)) b!7758841))

(assert (= (and start!739296 ((_ is Union!20669) r2!3230)) b!7758842))

(assert (= (and start!739296 ((_ is Cons!73388) s!10216)) b!7758855))

(assert (= (and start!739296 ((_ is Cons!73388) (_1!38165 cut!21))) b!7758845))

(assert (= (and start!739296 ((_ is Cons!73388) (_2!38165 cut!21))) b!7758852))

(declare-fun m!8219996 () Bool)

(assert (=> b!7758854 m!8219996))

(declare-fun m!8219998 () Bool)

(assert (=> b!7758846 m!8219998))

(declare-fun m!8220000 () Bool)

(assert (=> b!7758846 m!8220000))

(declare-fun m!8220002 () Bool)

(assert (=> b!7758839 m!8220002))

(declare-fun m!8220004 () Bool)

(assert (=> start!739296 m!8220004))

(declare-fun m!8220006 () Bool)

(assert (=> b!7758838 m!8220006))

(declare-fun m!8220008 () Bool)

(assert (=> b!7758848 m!8220008))

(declare-fun m!8220010 () Bool)

(assert (=> b!7758843 m!8220010))

(declare-fun m!8220012 () Bool)

(assert (=> b!7758843 m!8220012))

(declare-fun m!8220014 () Bool)

(assert (=> b!7758847 m!8220014))

(declare-fun m!8220016 () Bool)

(assert (=> b!7758847 m!8220016))

(check-sat (not b!7758847) tp_is_empty!51693 (not b!7758842) (not b!7758855) (not b!7758850) (not b!7758838) (not start!739296) (not b!7758843) (not b!7758851) (not b!7758852) (not b!7758854) (not b!7758841) (not b!7758845) (not b!7758846) (not b!7758839) (not b!7758848) (not b!7758840) (not b!7758844))
(check-sat)
