; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!208722 () Bool)

(assert start!208722)

(assert (=> start!208722 true))

(declare-fun b!2151698 () Bool)

(declare-fun e!1376100 () Bool)

(declare-datatypes ((C!11888 0))(
  ( (C!11889 (val!6930 Int)) )
))
(declare-datatypes ((List!24782 0))(
  ( (Nil!24698) (Cons!24698 (h!30099 C!11888) (t!197330 List!24782)) )
))
(declare-datatypes ((IArray!16019 0))(
  ( (IArray!16020 (innerList!8067 List!24782)) )
))
(declare-datatypes ((Conc!8007 0))(
  ( (Node!8007 (left!18973 Conc!8007) (right!19303 Conc!8007) (csize!16244 Int) (cheight!8218 Int)) (Leaf!11710 (xs!10949 IArray!16019) (csize!16245 Int)) (Empty!8007) )
))
(declare-datatypes ((Regex!5871 0))(
  ( (ElementMatch!5871 (c!341301 C!11888)) (Concat!10173 (regOne!12254 Regex!5871) (regTwo!12254 Regex!5871)) (EmptyExpr!5871) (Star!5871 (reg!6200 Regex!5871)) (EmptyLang!5871) (Union!5871 (regOne!12255 Regex!5871) (regTwo!12255 Regex!5871)) )
))
(declare-datatypes ((List!24783 0))(
  ( (Nil!24699) (Cons!24699 (h!30100 Regex!5871) (t!197331 List!24783)) )
))
(declare-datatypes ((Context!2882 0))(
  ( (Context!2883 (exprs!1941 List!24783)) )
))
(declare-datatypes ((BalanceConc!15776 0))(
  ( (BalanceConc!15777 (c!341302 Conc!8007)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((StackFrame!276 0))(
  ( (StackFrame!277 (z!5940 (InoxSet Context!2882)) (from!2783 Int) (lastNullablePos!470 Int) (res!927800 Int) (totalInput!3272 BalanceConc!15776)) )
))
(declare-datatypes ((List!24784 0))(
  ( (Nil!24700) (Cons!24700 (h!30101 StackFrame!276) (t!197332 List!24784)) )
))
(declare-fun s!7978 () List!24784)

(declare-fun lambda!80968 () Int)

(declare-fun forall!5043 (List!24784 Int) Bool)

(assert (=> b!2151698 (= e!1376100 (not (forall!5043 (t!197332 s!7978) lambda!80968)))))

(declare-fun e!1376097 () Bool)

(declare-fun setRes!17272 () Bool)

(declare-fun e!1376099 () Bool)

(declare-fun b!2151699 () Bool)

(declare-fun inv!32556 (BalanceConc!15776) Bool)

(assert (=> b!2151699 (= e!1376097 (and setRes!17272 (inv!32556 (totalInput!3272 (h!30101 s!7978))) e!1376099))))

(declare-fun condSetEmpty!17272 () Bool)

(assert (=> b!2151699 (= condSetEmpty!17272 (= (z!5940 (h!30101 s!7978)) ((as const (Array Context!2882 Bool)) false)))))

(declare-fun b!2151700 () Bool)

(declare-fun e!1376101 () Bool)

(declare-fun tp!668836 () Bool)

(assert (=> b!2151700 (= e!1376101 tp!668836)))

(declare-fun tp!668835 () Bool)

(declare-fun setNonEmpty!17272 () Bool)

(declare-fun setElem!17272 () Context!2882)

(declare-fun inv!32557 (Context!2882) Bool)

(assert (=> setNonEmpty!17272 (= setRes!17272 (and tp!668835 (inv!32557 setElem!17272) e!1376101))))

(declare-fun setRest!17272 () (InoxSet Context!2882))

(assert (=> setNonEmpty!17272 (= (z!5940 (h!30101 s!7978)) ((_ map or) (store ((as const (Array Context!2882 Bool)) false) setElem!17272 true) setRest!17272))))

(declare-fun b!2151701 () Bool)

(declare-fun res!927799 () Bool)

(declare-fun e!1376102 () Bool)

(assert (=> b!2151701 (=> (not res!927799) (not e!1376102))))

(declare-fun res1!7 () Int)

(declare-fun res2!7 () Int)

(get-info :version)

(assert (=> b!2151701 (= res!927799 (and (= res1!7 res2!7) (not ((_ is Nil!24700) s!7978))))))

(declare-fun setIsEmpty!17272 () Bool)

(assert (=> setIsEmpty!17272 setRes!17272))

(declare-fun e!1376098 () Bool)

(declare-fun tp!668837 () Bool)

(declare-fun b!2151702 () Bool)

(declare-fun inv!32558 (StackFrame!276) Bool)

(assert (=> b!2151702 (= e!1376098 (and (inv!32558 (h!30101 s!7978)) e!1376097 tp!668837))))

(declare-fun b!2151703 () Bool)

(declare-fun tp!668834 () Bool)

(declare-fun inv!32559 (Conc!8007) Bool)

(assert (=> b!2151703 (= e!1376099 (and (inv!32559 (c!341302 (totalInput!3272 (h!30101 s!7978)))) tp!668834))))

(declare-fun b!2151704 () Bool)

(assert (=> b!2151704 (= e!1376102 e!1376100)))

(declare-fun res!927798 () Bool)

(assert (=> b!2151704 (=> (not res!927798) (not e!1376100))))

(assert (=> b!2151704 (= res!927798 (forall!5043 (t!197332 s!7978) lambda!80968))))

(declare-datatypes ((Unit!37864 0))(
  ( (Unit!37865) )
))
(declare-fun lt!801204 () Unit!37864)

(declare-fun lemmaInv!789 (StackFrame!276) Unit!37864)

(assert (=> b!2151704 (= lt!801204 (lemmaInv!789 (h!30101 s!7978)))))

(declare-fun res!927797 () Bool)

(assert (=> start!208722 (=> (not res!927797) (not e!1376102))))

(assert (=> start!208722 (= res!927797 (forall!5043 s!7978 lambda!80968))))

(assert (=> start!208722 e!1376102))

(assert (=> start!208722 e!1376098))

(assert (=> start!208722 true))

(assert (= (and start!208722 res!927797) b!2151701))

(assert (= (and b!2151701 res!927799) b!2151704))

(assert (= (and b!2151704 res!927798) b!2151698))

(assert (= (and b!2151699 condSetEmpty!17272) setIsEmpty!17272))

(assert (= (and b!2151699 (not condSetEmpty!17272)) setNonEmpty!17272))

(assert (= setNonEmpty!17272 b!2151700))

(assert (= b!2151699 b!2151703))

(assert (= b!2151702 b!2151699))

(assert (= (and start!208722 ((_ is Cons!24700) s!7978)) b!2151702))

(declare-fun m!2594224 () Bool)

(assert (=> b!2151699 m!2594224))

(declare-fun m!2594226 () Bool)

(assert (=> b!2151698 m!2594226))

(assert (=> b!2151704 m!2594226))

(declare-fun m!2594228 () Bool)

(assert (=> b!2151704 m!2594228))

(declare-fun m!2594230 () Bool)

(assert (=> b!2151703 m!2594230))

(declare-fun m!2594232 () Bool)

(assert (=> start!208722 m!2594232))

(declare-fun m!2594234 () Bool)

(assert (=> setNonEmpty!17272 m!2594234))

(declare-fun m!2594236 () Bool)

(assert (=> b!2151702 m!2594236))

(check-sat (not setNonEmpty!17272) (not start!208722) (not b!2151704) (not b!2151698) (not b!2151702) (not b!2151700) (not b!2151703) (not b!2151699))
(check-sat)
