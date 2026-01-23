; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208798 () Bool)

(assert start!208798)

(assert (=> start!208798 true))

(declare-fun bs!445678 () Bool)

(declare-fun b!2152275 () Bool)

(assert (= bs!445678 (and b!2152275 start!208798)))

(declare-fun res1!7 () Int)

(declare-fun res2!7 () Int)

(declare-fun lambda!81063 () Int)

(declare-fun lambda!81064 () Int)

(assert (=> bs!445678 (= (= res2!7 res1!7) (= lambda!81064 lambda!81063))))

(assert (=> b!2152275 true))

(declare-datatypes ((C!11912 0))(
  ( (C!11913 (val!6942 Int)) )
))
(declare-datatypes ((Regex!5883 0))(
  ( (ElementMatch!5883 (c!341343 C!11912)) (Concat!10185 (regOne!12278 Regex!5883) (regTwo!12278 Regex!5883)) (EmptyExpr!5883) (Star!5883 (reg!6212 Regex!5883)) (EmptyLang!5883) (Union!5883 (regOne!12279 Regex!5883) (regTwo!12279 Regex!5883)) )
))
(declare-datatypes ((List!24818 0))(
  ( (Nil!24734) (Cons!24734 (h!30135 Regex!5883) (t!197366 List!24818)) )
))
(declare-datatypes ((Context!2906 0))(
  ( (Context!2907 (exprs!1953 List!24818)) )
))
(declare-fun setElem!17332 () Context!2906)

(declare-fun setNonEmpty!17332 () Bool)

(declare-fun tp!669112 () Bool)

(declare-fun e!1376483 () Bool)

(declare-fun setRes!17332 () Bool)

(declare-fun inv!32633 (Context!2906) Bool)

(assert (=> setNonEmpty!17332 (= setRes!17332 (and tp!669112 (inv!32633 setElem!17332) e!1376483))))

(declare-datatypes ((List!24819 0))(
  ( (Nil!24735) (Cons!24735 (h!30136 C!11912) (t!197367 List!24819)) )
))
(declare-datatypes ((IArray!16043 0))(
  ( (IArray!16044 (innerList!8079 List!24819)) )
))
(declare-datatypes ((Conc!8019 0))(
  ( (Node!8019 (left!19015 Conc!8019) (right!19345 Conc!8019) (csize!16268 Int) (cheight!8230 Int)) (Leaf!11728 (xs!10961 IArray!16043) (csize!16269 Int)) (Empty!8019) )
))
(declare-datatypes ((BalanceConc!15800 0))(
  ( (BalanceConc!15801 (c!341344 Conc!8019)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!300 0))(
  ( (StackFrame!301 (z!5952 (InoxSet Context!2906)) (from!2795 Int) (lastNullablePos!482 Int) (res!928044 Int) (totalInput!3284 BalanceConc!15800)) )
))
(declare-datatypes ((List!24820 0))(
  ( (Nil!24736) (Cons!24736 (h!30137 StackFrame!300) (t!197368 List!24820)) )
))
(declare-fun s!7978 () List!24820)

(declare-fun setRest!17332 () (InoxSet Context!2906))

(assert (=> setNonEmpty!17332 (= (z!5952 (h!30137 s!7978)) ((_ map or) (store ((as const (Array Context!2906 Bool)) false) setElem!17332 true) setRest!17332))))

(declare-fun e!1376482 () Bool)

(declare-fun forall!5059 (List!24820 Int) Bool)

(assert (=> b!2152275 (= e!1376482 (not (forall!5059 s!7978 lambda!81064)))))

(declare-fun tp!669113 () Bool)

(declare-fun e!1376481 () Bool)

(declare-fun b!2152276 () Bool)

(declare-fun e!1376480 () Bool)

(declare-fun inv!32634 (StackFrame!300) Bool)

(assert (=> b!2152276 (= e!1376480 (and (inv!32634 (h!30137 s!7978)) e!1376481 tp!669113))))

(declare-fun res!928042 () Bool)

(assert (=> start!208798 (=> (not res!928042) (not e!1376482))))

(assert (=> start!208798 (= res!928042 (forall!5059 s!7978 lambda!81063))))

(assert (=> start!208798 e!1376482))

(assert (=> start!208798 e!1376480))

(assert (=> start!208798 true))

(declare-fun e!1376484 () Bool)

(declare-fun b!2152277 () Bool)

(declare-fun inv!32635 (BalanceConc!15800) Bool)

(assert (=> b!2152277 (= e!1376481 (and setRes!17332 (inv!32635 (totalInput!3284 (h!30137 s!7978))) e!1376484))))

(declare-fun condSetEmpty!17332 () Bool)

(assert (=> b!2152277 (= condSetEmpty!17332 (= (z!5952 (h!30137 s!7978)) ((as const (Array Context!2906 Bool)) false)))))

(declare-fun b!2152278 () Bool)

(declare-fun res!928043 () Bool)

(assert (=> b!2152278 (=> (not res!928043) (not e!1376482))))

(get-info :version)

(assert (=> b!2152278 (= res!928043 (and (= res1!7 res2!7) ((_ is Nil!24736) s!7978)))))

(declare-fun b!2152279 () Bool)

(declare-fun tp!669110 () Bool)

(declare-fun inv!32636 (Conc!8019) Bool)

(assert (=> b!2152279 (= e!1376484 (and (inv!32636 (c!341344 (totalInput!3284 (h!30137 s!7978)))) tp!669110))))

(declare-fun b!2152280 () Bool)

(declare-fun tp!669111 () Bool)

(assert (=> b!2152280 (= e!1376483 tp!669111)))

(declare-fun setIsEmpty!17332 () Bool)

(assert (=> setIsEmpty!17332 setRes!17332))

(assert (= (and start!208798 res!928042) b!2152278))

(assert (= (and b!2152278 res!928043) b!2152275))

(assert (= (and b!2152277 condSetEmpty!17332) setIsEmpty!17332))

(assert (= (and b!2152277 (not condSetEmpty!17332)) setNonEmpty!17332))

(assert (= setNonEmpty!17332 b!2152280))

(assert (= b!2152277 b!2152279))

(assert (= b!2152276 b!2152277))

(assert (= (and start!208798 ((_ is Cons!24736) s!7978)) b!2152276))

(declare-fun m!2594554 () Bool)

(assert (=> b!2152275 m!2594554))

(declare-fun m!2594556 () Bool)

(assert (=> b!2152279 m!2594556))

(declare-fun m!2594558 () Bool)

(assert (=> setNonEmpty!17332 m!2594558))

(declare-fun m!2594560 () Bool)

(assert (=> b!2152277 m!2594560))

(declare-fun m!2594562 () Bool)

(assert (=> start!208798 m!2594562))

(declare-fun m!2594564 () Bool)

(assert (=> b!2152276 m!2594564))

(check-sat (not b!2152279) (not setNonEmpty!17332) (not b!2152276) (not b!2152277) (not b!2152280) (not start!208798) (not b!2152275))
(check-sat)
