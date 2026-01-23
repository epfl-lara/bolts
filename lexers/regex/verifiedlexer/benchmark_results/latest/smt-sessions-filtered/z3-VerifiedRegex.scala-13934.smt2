; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!739256 () Bool)

(assert start!739256)

(declare-fun b!7758114 () Bool)

(assert (=> b!7758114 true))

(assert (=> b!7758114 true))

(assert (=> b!7758114 true))

(declare-fun b!7758109 () Bool)

(declare-fun e!4598329 () Bool)

(declare-fun e!4598328 () Bool)

(assert (=> b!7758109 (= e!4598329 e!4598328)))

(declare-fun res!3092952 () Bool)

(assert (=> b!7758109 (=> (not res!3092952) (not e!4598328))))

(declare-datatypes ((C!41652 0))(
  ( (C!41653 (val!31266 Int)) )
))
(declare-datatypes ((List!73506 0))(
  ( (Nil!73382) (Cons!73382 (h!79830 C!41652) (t!388241 List!73506)) )
))
(declare-datatypes ((tuple2!69712 0))(
  ( (tuple2!69713 (_1!38159 List!73506) (_2!38159 List!73506)) )
))
(declare-fun lt!2670011 () tuple2!69712)

(declare-fun s!10216 () List!73506)

(declare-fun ++!17840 (List!73506 List!73506) List!73506)

(assert (=> b!7758109 (= res!3092952 (= (++!17840 (_1!38159 lt!2670011) (_2!38159 lt!2670011)) s!10216))))

(declare-datatypes ((Option!17650 0))(
  ( (None!17649) (Some!17649 (v!54784 tuple2!69712)) )
))
(declare-fun lt!2670010 () Option!17650)

(declare-fun get!26147 (Option!17650) tuple2!69712)

(assert (=> b!7758109 (= lt!2670011 (get!26147 lt!2670010))))

(declare-fun b!7758110 () Bool)

(declare-fun e!4598326 () Bool)

(declare-fun tp!2277489 () Bool)

(declare-fun tp!2277481 () Bool)

(assert (=> b!7758110 (= e!4598326 (and tp!2277489 tp!2277481))))

(declare-fun b!7758111 () Bool)

(declare-fun res!3092956 () Bool)

(declare-fun e!4598325 () Bool)

(assert (=> b!7758111 (=> (not res!3092956) (not e!4598325))))

(declare-datatypes ((Regex!20663 0))(
  ( (ElementMatch!20663 (c!1430558 C!41652)) (Concat!29508 (regOne!41838 Regex!20663) (regTwo!41838 Regex!20663)) (EmptyExpr!20663) (Star!20663 (reg!20992 Regex!20663)) (EmptyLang!20663) (Union!20663 (regOne!41839 Regex!20663) (regTwo!41839 Regex!20663)) )
))
(declare-fun r2!3230 () Regex!20663)

(declare-fun validRegex!11079 (Regex!20663) Bool)

(assert (=> b!7758111 (= res!3092956 (validRegex!11079 r2!3230))))

(declare-fun b!7758112 () Bool)

(declare-fun res!3092951 () Bool)

(assert (=> b!7758112 (=> (not res!3092951) (not e!4598328))))

(declare-fun r1!3330 () Regex!20663)

(declare-fun matchR!10139 (Regex!20663 List!73506) Bool)

(assert (=> b!7758112 (= res!3092951 (matchR!10139 r1!3330 (_1!38159 lt!2670011)))))

(declare-fun b!7758113 () Bool)

(declare-fun tp_is_empty!51681 () Bool)

(assert (=> b!7758113 (= e!4598326 tp_is_empty!51681)))

(declare-fun b!7758115 () Bool)

(declare-fun e!4598327 () Bool)

(declare-fun tp!2277480 () Bool)

(declare-fun tp!2277484 () Bool)

(assert (=> b!7758115 (= e!4598327 (and tp!2277480 tp!2277484))))

(declare-fun b!7758116 () Bool)

(declare-fun tp!2277485 () Bool)

(declare-fun tp!2277479 () Bool)

(assert (=> b!7758116 (= e!4598326 (and tp!2277485 tp!2277479))))

(declare-fun b!7758117 () Bool)

(declare-fun res!3092954 () Bool)

(assert (=> b!7758117 (=> (not res!3092954) (not e!4598328))))

(assert (=> b!7758117 (= res!3092954 (matchR!10139 r2!3230 (_2!38159 lt!2670011)))))

(declare-fun b!7758118 () Bool)

(declare-fun e!4598324 () Bool)

(declare-fun tp!2277488 () Bool)

(assert (=> b!7758118 (= e!4598324 (and tp_is_empty!51681 tp!2277488))))

(declare-fun b!7758119 () Bool)

(declare-fun tp!2277487 () Bool)

(assert (=> b!7758119 (= e!4598326 tp!2277487)))

(declare-fun b!7758120 () Bool)

(assert (=> b!7758120 (= e!4598327 tp_is_empty!51681)))

(declare-fun b!7758121 () Bool)

(declare-fun tp!2277483 () Bool)

(declare-fun tp!2277486 () Bool)

(assert (=> b!7758121 (= e!4598327 (and tp!2277483 tp!2277486))))

(declare-fun b!7758122 () Bool)

(declare-fun tp!2277482 () Bool)

(assert (=> b!7758122 (= e!4598327 tp!2277482)))

(declare-fun b!7758123 () Bool)

(assert (=> b!7758123 (= e!4598325 e!4598329)))

(declare-fun res!3092955 () Bool)

(assert (=> b!7758123 (=> (not res!3092955) (not e!4598329))))

(declare-fun isDefined!14262 (Option!17650) Bool)

(assert (=> b!7758123 (= res!3092955 (isDefined!14262 lt!2670010))))

(declare-fun findConcatSeparation!3680 (Regex!20663 Regex!20663 List!73506 List!73506 List!73506) Option!17650)

(assert (=> b!7758123 (= lt!2670010 (findConcatSeparation!3680 r1!3330 r2!3230 Nil!73382 s!10216 s!10216))))

(assert (=> b!7758114 (= e!4598328 false)))

(declare-datatypes ((Unit!168356 0))(
  ( (Unit!168357) )
))
(declare-fun lt!2670012 () Unit!168356)

(declare-fun lambda!471939 () Int)

(declare-fun ExistsThe!62 (tuple2!69712 Int) Unit!168356)

(assert (=> b!7758114 (= lt!2670012 (ExistsThe!62 (tuple2!69713 (_1!38159 lt!2670011) (_2!38159 lt!2670011)) lambda!471939))))

(declare-fun res!3092953 () Bool)

(assert (=> start!739256 (=> (not res!3092953) (not e!4598325))))

(assert (=> start!739256 (= res!3092953 (validRegex!11079 r1!3330))))

(assert (=> start!739256 e!4598325))

(assert (=> start!739256 e!4598327))

(assert (=> start!739256 e!4598326))

(assert (=> start!739256 e!4598324))

(assert (= (and start!739256 res!3092953) b!7758111))

(assert (= (and b!7758111 res!3092956) b!7758123))

(assert (= (and b!7758123 res!3092955) b!7758109))

(assert (= (and b!7758109 res!3092952) b!7758112))

(assert (= (and b!7758112 res!3092951) b!7758117))

(assert (= (and b!7758117 res!3092954) b!7758114))

(get-info :version)

(assert (= (and start!739256 ((_ is ElementMatch!20663) r1!3330)) b!7758120))

(assert (= (and start!739256 ((_ is Concat!29508) r1!3330)) b!7758115))

(assert (= (and start!739256 ((_ is Star!20663) r1!3330)) b!7758122))

(assert (= (and start!739256 ((_ is Union!20663) r1!3330)) b!7758121))

(assert (= (and start!739256 ((_ is ElementMatch!20663) r2!3230)) b!7758113))

(assert (= (and start!739256 ((_ is Concat!29508) r2!3230)) b!7758116))

(assert (= (and start!739256 ((_ is Star!20663) r2!3230)) b!7758119))

(assert (= (and start!739256 ((_ is Union!20663) r2!3230)) b!7758110))

(assert (= (and start!739256 ((_ is Cons!73382) s!10216)) b!7758118))

(declare-fun m!8219668 () Bool)

(assert (=> b!7758123 m!8219668))

(declare-fun m!8219670 () Bool)

(assert (=> b!7758123 m!8219670))

(declare-fun m!8219672 () Bool)

(assert (=> b!7758111 m!8219672))

(declare-fun m!8219674 () Bool)

(assert (=> start!739256 m!8219674))

(declare-fun m!8219676 () Bool)

(assert (=> b!7758109 m!8219676))

(declare-fun m!8219678 () Bool)

(assert (=> b!7758109 m!8219678))

(declare-fun m!8219680 () Bool)

(assert (=> b!7758117 m!8219680))

(declare-fun m!8219682 () Bool)

(assert (=> b!7758112 m!8219682))

(declare-fun m!8219684 () Bool)

(assert (=> b!7758114 m!8219684))

(check-sat (not b!7758115) (not b!7758122) (not b!7758117) (not b!7758123) (not b!7758111) (not b!7758114) (not start!739256) (not b!7758118) (not b!7758110) (not b!7758121) (not b!7758112) (not b!7758109) (not b!7758119) tp_is_empty!51681 (not b!7758116))
(check-sat)
