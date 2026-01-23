; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732876 () Bool)

(assert start!732876)

(declare-fun b!7600659 () Bool)

(assert (=> b!7600659 true))

(assert (=> b!7600659 true))

(assert (=> b!7600659 true))

(declare-fun res!3043297 () Bool)

(declare-fun e!4522009 () Bool)

(assert (=> b!7600659 (=> (not res!3043297) (not e!4522009))))

(declare-fun lambda!467583 () Int)

(declare-fun Exists!4371 (Int) Bool)

(assert (=> b!7600659 (= res!3043297 (not (Exists!4371 lambda!467583)))))

(declare-fun b!7600660 () Bool)

(assert (=> b!7600660 (= e!4522009 false)))

(declare-fun lt!2654324 () Bool)

(declare-datatypes ((C!40612 0))(
  ( (C!40613 (val!30746 Int)) )
))
(declare-datatypes ((Regex!20143 0))(
  ( (ElementMatch!20143 (c!1402232 C!40612)) (Concat!28988 (regOne!40798 Regex!20143) (regTwo!40798 Regex!20143)) (EmptyExpr!20143) (Star!20143 (reg!20472 Regex!20143)) (EmptyLang!20143) (Union!20143 (regOne!40799 Regex!20143) (regTwo!40799 Regex!20143)) )
))
(declare-fun r1!3349 () Regex!20143)

(declare-datatypes ((List!73026 0))(
  ( (Nil!72902) (Cons!72902 (h!79350 C!40612) (t!387761 List!73026)) )
))
(declare-datatypes ((tuple2!69004 0))(
  ( (tuple2!69005 (_1!37805 List!73026) (_2!37805 List!73026)) )
))
(declare-fun cut!34 () tuple2!69004)

(declare-fun matchR!9725 (Regex!20143 List!73026) Bool)

(assert (=> b!7600660 (= lt!2654324 (matchR!9725 r1!3349 (_1!37805 cut!34)))))

(declare-fun b!7600661 () Bool)

(declare-fun e!4522005 () Bool)

(declare-fun tp!2215912 () Bool)

(assert (=> b!7600661 (= e!4522005 tp!2215912)))

(declare-fun b!7600662 () Bool)

(declare-fun e!4522004 () Bool)

(declare-fun tp!2215910 () Bool)

(declare-fun tp!2215911 () Bool)

(assert (=> b!7600662 (= e!4522004 (and tp!2215910 tp!2215911))))

(declare-fun res!3043298 () Bool)

(assert (=> start!732876 (=> (not res!3043298) (not e!4522009))))

(declare-fun validRegex!10571 (Regex!20143) Bool)

(assert (=> start!732876 (= res!3043298 (validRegex!10571 r1!3349))))

(assert (=> start!732876 e!4522009))

(assert (=> start!732876 e!4522004))

(assert (=> start!732876 e!4522005))

(declare-fun e!4522006 () Bool)

(assert (=> start!732876 e!4522006))

(declare-fun e!4522008 () Bool)

(declare-fun e!4522007 () Bool)

(assert (=> start!732876 (and e!4522008 e!4522007)))

(declare-fun b!7600663 () Bool)

(declare-fun tp!2215913 () Bool)

(declare-fun tp!2215918 () Bool)

(assert (=> b!7600663 (= e!4522004 (and tp!2215913 tp!2215918))))

(declare-fun b!7600664 () Bool)

(declare-fun res!3043299 () Bool)

(assert (=> b!7600664 (=> (not res!3043299) (not e!4522009))))

(declare-fun s!10235 () List!73026)

(declare-fun ++!17549 (List!73026 List!73026) List!73026)

(assert (=> b!7600664 (= res!3043299 (= (++!17549 (_1!37805 cut!34) (_2!37805 cut!34)) s!10235))))

(declare-fun b!7600665 () Bool)

(declare-fun tp_is_empty!50641 () Bool)

(assert (=> b!7600665 (= e!4522005 tp_is_empty!50641)))

(declare-fun b!7600666 () Bool)

(declare-fun tp!2215909 () Bool)

(declare-fun tp!2215919 () Bool)

(assert (=> b!7600666 (= e!4522005 (and tp!2215909 tp!2215919))))

(declare-fun b!7600667 () Bool)

(assert (=> b!7600667 (= e!4522004 tp_is_empty!50641)))

(declare-fun b!7600668 () Bool)

(declare-fun tp!2215916 () Bool)

(assert (=> b!7600668 (= e!4522004 tp!2215916)))

(declare-fun b!7600669 () Bool)

(declare-fun tp!2215915 () Bool)

(assert (=> b!7600669 (= e!4522008 (and tp_is_empty!50641 tp!2215915))))

(declare-fun b!7600670 () Bool)

(declare-fun tp!2215907 () Bool)

(declare-fun tp!2215914 () Bool)

(assert (=> b!7600670 (= e!4522005 (and tp!2215907 tp!2215914))))

(declare-fun b!7600671 () Bool)

(declare-fun tp!2215917 () Bool)

(assert (=> b!7600671 (= e!4522007 (and tp_is_empty!50641 tp!2215917))))

(declare-fun b!7600672 () Bool)

(declare-fun res!3043300 () Bool)

(assert (=> b!7600672 (=> (not res!3043300) (not e!4522009))))

(declare-fun r2!3249 () Regex!20143)

(assert (=> b!7600672 (= res!3043300 (validRegex!10571 r2!3249))))

(declare-fun b!7600673 () Bool)

(declare-fun tp!2215908 () Bool)

(assert (=> b!7600673 (= e!4522006 (and tp_is_empty!50641 tp!2215908))))

(assert (= (and start!732876 res!3043298) b!7600672))

(assert (= (and b!7600672 res!3043300) b!7600659))

(assert (= (and b!7600659 res!3043297) b!7600664))

(assert (= (and b!7600664 res!3043299) b!7600660))

(get-info :version)

(assert (= (and start!732876 ((_ is ElementMatch!20143) r1!3349)) b!7600667))

(assert (= (and start!732876 ((_ is Concat!28988) r1!3349)) b!7600663))

(assert (= (and start!732876 ((_ is Star!20143) r1!3349)) b!7600668))

(assert (= (and start!732876 ((_ is Union!20143) r1!3349)) b!7600662))

(assert (= (and start!732876 ((_ is ElementMatch!20143) r2!3249)) b!7600665))

(assert (= (and start!732876 ((_ is Concat!28988) r2!3249)) b!7600670))

(assert (= (and start!732876 ((_ is Star!20143) r2!3249)) b!7600661))

(assert (= (and start!732876 ((_ is Union!20143) r2!3249)) b!7600666))

(assert (= (and start!732876 ((_ is Cons!72902) s!10235)) b!7600673))

(assert (= (and start!732876 ((_ is Cons!72902) (_1!37805 cut!34))) b!7600669))

(assert (= (and start!732876 ((_ is Cons!72902) (_2!37805 cut!34))) b!7600671))

(declare-fun m!8145032 () Bool)

(assert (=> b!7600660 m!8145032))

(declare-fun m!8145034 () Bool)

(assert (=> b!7600672 m!8145034))

(declare-fun m!8145036 () Bool)

(assert (=> b!7600659 m!8145036))

(declare-fun m!8145038 () Bool)

(assert (=> start!732876 m!8145038))

(declare-fun m!8145040 () Bool)

(assert (=> b!7600664 m!8145040))

(check-sat (not b!7600670) (not b!7600661) (not b!7600662) tp_is_empty!50641 (not b!7600663) (not b!7600669) (not b!7600660) (not b!7600668) (not b!7600666) (not b!7600664) (not b!7600672) (not b!7600659) (not start!732876) (not b!7600671) (not b!7600673))
(check-sat)
