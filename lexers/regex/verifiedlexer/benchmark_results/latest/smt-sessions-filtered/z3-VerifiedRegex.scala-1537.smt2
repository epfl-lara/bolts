; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!80594 () Bool)

(assert start!80594)

(declare-fun b!894889 () Bool)

(assert (=> b!894889 true))

(assert (=> b!894889 true))

(assert (=> b!894889 true))

(declare-fun lambda!27644 () Int)

(declare-fun lambda!27643 () Int)

(assert (=> b!894889 (not (= lambda!27644 lambda!27643))))

(assert (=> b!894889 true))

(assert (=> b!894889 true))

(assert (=> b!894889 true))

(declare-fun b!894885 () Bool)

(declare-fun e!585929 () Bool)

(declare-fun tp_is_empty!4309 () Bool)

(assert (=> b!894885 (= e!585929 tp_is_empty!4309)))

(declare-fun b!894886 () Bool)

(declare-fun e!585931 () Bool)

(declare-fun e!585930 () Bool)

(assert (=> b!894886 (= e!585931 (not e!585930))))

(declare-fun res!406745 () Bool)

(assert (=> b!894886 (=> res!406745 e!585930)))

(declare-fun lt!333204 () Bool)

(declare-datatypes ((C!5236 0))(
  ( (C!5237 (val!2866 Int)) )
))
(declare-datatypes ((Regex!2333 0))(
  ( (ElementMatch!2333 (c!144922 C!5236)) (Concat!4166 (regOne!5178 Regex!2333) (regTwo!5178 Regex!2333)) (EmptyExpr!2333) (Star!2333 (reg!2662 Regex!2333)) (EmptyLang!2333) (Union!2333 (regOne!5179 Regex!2333) (regTwo!5179 Regex!2333)) )
))
(declare-fun r!15766 () Regex!2333)

(get-info :version)

(assert (=> b!894886 (= res!406745 (or (not lt!333204) (and ((_ is Concat!4166) r!15766) ((_ is EmptyExpr!2333) (regOne!5178 r!15766))) (and ((_ is Concat!4166) r!15766) ((_ is EmptyExpr!2333) (regTwo!5178 r!15766))) ((_ is Concat!4166) r!15766) ((_ is Union!2333) r!15766) (not ((_ is Star!2333) r!15766))))))

(declare-datatypes ((List!9563 0))(
  ( (Nil!9547) (Cons!9547 (h!14948 C!5236) (t!100609 List!9563)) )
))
(declare-fun s!10566 () List!9563)

(declare-fun matchRSpec!134 (Regex!2333 List!9563) Bool)

(assert (=> b!894886 (= lt!333204 (matchRSpec!134 r!15766 s!10566))))

(declare-fun matchR!871 (Regex!2333 List!9563) Bool)

(assert (=> b!894886 (= lt!333204 (matchR!871 r!15766 s!10566))))

(declare-datatypes ((Unit!14245 0))(
  ( (Unit!14246) )
))
(declare-fun lt!333207 () Unit!14245)

(declare-fun mainMatchTheorem!134 (Regex!2333 List!9563) Unit!14245)

(assert (=> b!894886 (= lt!333207 (mainMatchTheorem!134 r!15766 s!10566))))

(declare-fun b!894887 () Bool)

(declare-fun e!585928 () Bool)

(declare-fun tp!281340 () Bool)

(assert (=> b!894887 (= e!585928 (and tp_is_empty!4309 tp!281340))))

(declare-fun res!406746 () Bool)

(assert (=> start!80594 (=> (not res!406746) (not e!585931))))

(declare-fun validRegex!802 (Regex!2333) Bool)

(assert (=> start!80594 (= res!406746 (validRegex!802 r!15766))))

(assert (=> start!80594 e!585931))

(assert (=> start!80594 e!585929))

(assert (=> start!80594 e!585928))

(declare-fun b!894888 () Bool)

(declare-fun tp!281343 () Bool)

(declare-fun tp!281341 () Bool)

(assert (=> b!894888 (= e!585929 (and tp!281343 tp!281341))))

(assert (=> b!894889 (= e!585930 true)))

(declare-fun Exists!110 (Int) Bool)

(assert (=> b!894889 (= (Exists!110 lambda!27643) (Exists!110 lambda!27644))))

(declare-fun lt!333203 () Unit!14245)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!2 (Regex!2333 List!9563) Unit!14245)

(assert (=> b!894889 (= lt!333203 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!2 (reg!2662 r!15766) s!10566))))

(declare-fun lt!333205 () Regex!2333)

(declare-datatypes ((tuple2!10668 0))(
  ( (tuple2!10669 (_1!6160 List!9563) (_2!6160 List!9563)) )
))
(declare-datatypes ((Option!1976 0))(
  ( (None!1975) (Some!1975 (v!19392 tuple2!10668)) )
))
(declare-fun isDefined!1618 (Option!1976) Bool)

(declare-fun findConcatSeparation!82 (Regex!2333 Regex!2333 List!9563 List!9563 List!9563) Option!1976)

(assert (=> b!894889 (= (isDefined!1618 (findConcatSeparation!82 (reg!2662 r!15766) lt!333205 Nil!9547 s!10566 s!10566)) (Exists!110 lambda!27643))))

(declare-fun lt!333206 () Unit!14245)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!82 (Regex!2333 Regex!2333 List!9563) Unit!14245)

(assert (=> b!894889 (= lt!333206 (lemmaFindConcatSeparationEquivalentToExists!82 (reg!2662 r!15766) lt!333205 s!10566))))

(assert (=> b!894889 (= lt!333205 (Star!2333 (reg!2662 r!15766)))))

(declare-fun b!894890 () Bool)

(declare-fun tp!281339 () Bool)

(declare-fun tp!281342 () Bool)

(assert (=> b!894890 (= e!585929 (and tp!281339 tp!281342))))

(declare-fun b!894891 () Bool)

(declare-fun tp!281344 () Bool)

(assert (=> b!894891 (= e!585929 tp!281344)))

(assert (= (and start!80594 res!406746) b!894886))

(assert (= (and b!894886 (not res!406745)) b!894889))

(assert (= (and start!80594 ((_ is ElementMatch!2333) r!15766)) b!894885))

(assert (= (and start!80594 ((_ is Concat!4166) r!15766)) b!894888))

(assert (= (and start!80594 ((_ is Star!2333) r!15766)) b!894891))

(assert (= (and start!80594 ((_ is Union!2333) r!15766)) b!894890))

(assert (= (and start!80594 ((_ is Cons!9547) s!10566)) b!894887))

(declare-fun m!1135561 () Bool)

(assert (=> b!894886 m!1135561))

(declare-fun m!1135563 () Bool)

(assert (=> b!894886 m!1135563))

(declare-fun m!1135565 () Bool)

(assert (=> b!894886 m!1135565))

(declare-fun m!1135567 () Bool)

(assert (=> start!80594 m!1135567))

(declare-fun m!1135569 () Bool)

(assert (=> b!894889 m!1135569))

(declare-fun m!1135571 () Bool)

(assert (=> b!894889 m!1135571))

(declare-fun m!1135573 () Bool)

(assert (=> b!894889 m!1135573))

(declare-fun m!1135575 () Bool)

(assert (=> b!894889 m!1135575))

(assert (=> b!894889 m!1135569))

(declare-fun m!1135577 () Bool)

(assert (=> b!894889 m!1135577))

(declare-fun m!1135579 () Bool)

(assert (=> b!894889 m!1135579))

(assert (=> b!894889 m!1135573))

(check-sat (not b!894891) (not b!894886) tp_is_empty!4309 (not b!894889) (not b!894890) (not start!80594) (not b!894887) (not b!894888))
(check-sat)
