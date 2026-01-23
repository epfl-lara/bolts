; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!732824 () Bool)

(assert start!732824)

(declare-fun b!7599210 () Bool)

(assert (=> b!7599210 true))

(assert (=> b!7599210 true))

(assert (=> b!7599210 true))

(declare-fun b!7599208 () Bool)

(declare-fun e!4521407 () Bool)

(declare-fun tp!2214953 () Bool)

(declare-fun tp!2214960 () Bool)

(assert (=> b!7599208 (= e!4521407 (and tp!2214953 tp!2214960))))

(declare-fun b!7599209 () Bool)

(declare-fun e!4521404 () Bool)

(assert (=> b!7599209 (= e!4521404 false)))

(declare-datatypes ((C!40560 0))(
  ( (C!40561 (val!30720 Int)) )
))
(declare-datatypes ((List!73000 0))(
  ( (Nil!72876) (Cons!72876 (h!79324 C!40560) (t!387735 List!73000)) )
))
(declare-fun lt!2654036 () List!73000)

(declare-datatypes ((tuple2!68956 0))(
  ( (tuple2!68957 (_1!37781 List!73000) (_2!37781 List!73000)) )
))
(declare-fun cut!32 () tuple2!68956)

(declare-fun ++!17525 (List!73000 List!73000) List!73000)

(assert (=> b!7599209 (= lt!2654036 (++!17525 (_1!37781 cut!32) (_2!37781 cut!32)))))

(declare-fun res!3042749 () Bool)

(assert (=> b!7599210 (=> (not res!3042749) (not e!4521404))))

(declare-fun lambda!467447 () Int)

(declare-fun Exists!4345 (Int) Bool)

(assert (=> b!7599210 (= res!3042749 (Exists!4345 lambda!467447))))

(declare-fun b!7599211 () Bool)

(declare-fun tp!2214965 () Bool)

(declare-fun tp!2214962 () Bool)

(assert (=> b!7599211 (= e!4521407 (and tp!2214965 tp!2214962))))

(declare-fun b!7599212 () Bool)

(declare-fun e!4521405 () Bool)

(declare-fun tp_is_empty!50589 () Bool)

(declare-fun tp!2214964 () Bool)

(assert (=> b!7599212 (= e!4521405 (and tp_is_empty!50589 tp!2214964))))

(declare-fun b!7599213 () Bool)

(declare-fun e!4521406 () Bool)

(declare-fun tp!2214957 () Bool)

(assert (=> b!7599213 (= e!4521406 tp!2214957)))

(declare-fun b!7599214 () Bool)

(declare-fun e!4521403 () Bool)

(declare-fun tp!2214956 () Bool)

(assert (=> b!7599214 (= e!4521403 (and tp_is_empty!50589 tp!2214956))))

(declare-fun b!7599215 () Bool)

(declare-fun e!4521402 () Bool)

(declare-fun tp!2214958 () Bool)

(assert (=> b!7599215 (= e!4521402 (and tp_is_empty!50589 tp!2214958))))

(declare-fun b!7599216 () Bool)

(declare-fun res!3042750 () Bool)

(assert (=> b!7599216 (=> (not res!3042750) (not e!4521404))))

(declare-datatypes ((Regex!20117 0))(
  ( (ElementMatch!20117 (c!1402206 C!40560)) (Concat!28962 (regOne!40746 Regex!20117) (regTwo!40746 Regex!20117)) (EmptyExpr!20117) (Star!20117 (reg!20446 Regex!20117)) (EmptyLang!20117) (Union!20117 (regOne!40747 Regex!20117) (regTwo!40747 Regex!20117)) )
))
(declare-fun r2!3249 () Regex!20117)

(declare-fun validRegex!10545 (Regex!20117) Bool)

(assert (=> b!7599216 (= res!3042750 (validRegex!10545 r2!3249))))

(declare-fun res!3042748 () Bool)

(assert (=> start!732824 (=> (not res!3042748) (not e!4521404))))

(declare-fun r1!3349 () Regex!20117)

(assert (=> start!732824 (= res!3042748 (validRegex!10545 r1!3349))))

(assert (=> start!732824 e!4521404))

(assert (=> start!732824 e!4521406))

(assert (=> start!732824 e!4521407))

(assert (=> start!732824 e!4521403))

(assert (=> start!732824 (and e!4521405 e!4521402)))

(declare-fun b!7599217 () Bool)

(declare-fun tp!2214955 () Bool)

(declare-fun tp!2214961 () Bool)

(assert (=> b!7599217 (= e!4521406 (and tp!2214955 tp!2214961))))

(declare-fun b!7599218 () Bool)

(assert (=> b!7599218 (= e!4521407 tp_is_empty!50589)))

(declare-fun b!7599219 () Bool)

(declare-fun tp!2214959 () Bool)

(assert (=> b!7599219 (= e!4521407 tp!2214959)))

(declare-fun b!7599220 () Bool)

(assert (=> b!7599220 (= e!4521406 tp_is_empty!50589)))

(declare-fun b!7599221 () Bool)

(declare-fun tp!2214954 () Bool)

(declare-fun tp!2214963 () Bool)

(assert (=> b!7599221 (= e!4521406 (and tp!2214954 tp!2214963))))

(assert (= (and start!732824 res!3042748) b!7599216))

(assert (= (and b!7599216 res!3042750) b!7599210))

(assert (= (and b!7599210 res!3042749) b!7599209))

(get-info :version)

(assert (= (and start!732824 ((_ is ElementMatch!20117) r1!3349)) b!7599220))

(assert (= (and start!732824 ((_ is Concat!28962) r1!3349)) b!7599217))

(assert (= (and start!732824 ((_ is Star!20117) r1!3349)) b!7599213))

(assert (= (and start!732824 ((_ is Union!20117) r1!3349)) b!7599221))

(assert (= (and start!732824 ((_ is ElementMatch!20117) r2!3249)) b!7599218))

(assert (= (and start!732824 ((_ is Concat!28962) r2!3249)) b!7599208))

(assert (= (and start!732824 ((_ is Star!20117) r2!3249)) b!7599219))

(assert (= (and start!732824 ((_ is Union!20117) r2!3249)) b!7599211))

(declare-fun s!10235 () List!73000)

(assert (= (and start!732824 ((_ is Cons!72876) s!10235)) b!7599214))

(assert (= (and start!732824 ((_ is Cons!72876) (_1!37781 cut!32))) b!7599212))

(assert (= (and start!732824 ((_ is Cons!72876) (_2!37781 cut!32))) b!7599215))

(declare-fun m!8144570 () Bool)

(assert (=> b!7599209 m!8144570))

(declare-fun m!8144572 () Bool)

(assert (=> b!7599210 m!8144572))

(declare-fun m!8144574 () Bool)

(assert (=> b!7599216 m!8144574))

(declare-fun m!8144576 () Bool)

(assert (=> start!732824 m!8144576))

(check-sat (not b!7599214) (not b!7599211) (not b!7599219) (not b!7599215) (not b!7599216) (not b!7599208) (not b!7599213) (not b!7599217) (not b!7599210) (not b!7599209) tp_is_empty!50589 (not b!7599221) (not b!7599212) (not start!732824))
(check-sat)
