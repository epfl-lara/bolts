; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106388 () Bool)

(assert start!106388)

(declare-fun b!1195732 () Bool)

(declare-fun e!768059 () Bool)

(declare-fun tp!340599 () Bool)

(assert (=> b!1195732 (= e!768059 tp!340599)))

(declare-fun res!539675 () Bool)

(declare-fun e!768058 () Bool)

(assert (=> start!106388 (=> (not res!539675) (not e!768058))))

(declare-fun from!553 () Int)

(declare-fun until!31 () Int)

(assert (=> start!106388 (= res!539675 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106388 e!768058))

(assert (=> start!106388 true))

(declare-datatypes ((T!21670 0))(
  ( (T!21671 (val!3872 Int)) )
))
(declare-datatypes ((List!12051 0))(
  ( (Nil!12027) (Cons!12027 (h!17428 T!21670) (t!112361 List!12051)) )
))
(declare-datatypes ((IArray!7925 0))(
  ( (IArray!7926 (innerList!4020 List!12051)) )
))
(declare-datatypes ((Conc!3960 0))(
  ( (Node!3960 (left!10488 Conc!3960) (right!10818 Conc!3960) (csize!8150 Int) (cheight!4171 Int)) (Leaf!6065 (xs!6667 IArray!7925) (csize!8151 Int)) (Empty!3960) )
))
(declare-fun t!4115 () Conc!3960)

(declare-fun e!768060 () Bool)

(declare-fun inv!16035 (Conc!3960) Bool)

(assert (=> start!106388 (and (inv!16035 t!4115) e!768060)))

(declare-fun b!1195733 () Bool)

(declare-fun inv!16036 (IArray!7925) Bool)

(assert (=> b!1195733 (= e!768060 (and (inv!16036 (xs!6667 t!4115)) e!768059))))

(declare-fun b!1195734 () Bool)

(declare-fun tp!340597 () Bool)

(declare-fun tp!340598 () Bool)

(assert (=> b!1195734 (= e!768060 (and (inv!16035 (left!10488 t!4115)) tp!340598 (inv!16035 (right!10818 t!4115)) tp!340597))))

(declare-fun b!1195735 () Bool)

(declare-fun res!539677 () Bool)

(assert (=> b!1195735 (=> (not res!539677) (not e!768058))))

(get-info :version)

(assert (=> b!1195735 (= res!539677 (and (not (= from!553 until!31)) ((_ is Leaf!6065) t!4115) (= (- until!31 from!553) 0)))))

(declare-fun b!1195736 () Bool)

(declare-fun res!539676 () Bool)

(assert (=> b!1195736 (=> (not res!539676) (not e!768058))))

(declare-fun isBalanced!1145 (Conc!3960) Bool)

(assert (=> b!1195736 (= res!539676 (isBalanced!1145 t!4115))))

(declare-fun b!1195737 () Bool)

(assert (=> b!1195737 (= e!768058 (not (inv!16035 Empty!3960)))))

(declare-fun b!1195738 () Bool)

(declare-fun res!539678 () Bool)

(assert (=> b!1195738 (=> (not res!539678) (not e!768058))))

(declare-fun size!9537 (Conc!3960) Int)

(assert (=> b!1195738 (= res!539678 (<= until!31 (size!9537 t!4115)))))

(assert (= (and start!106388 res!539675) b!1195738))

(assert (= (and b!1195738 res!539678) b!1195736))

(assert (= (and b!1195736 res!539676) b!1195735))

(assert (= (and b!1195735 res!539677) b!1195737))

(assert (= (and start!106388 ((_ is Node!3960) t!4115)) b!1195734))

(assert (= b!1195733 b!1195732))

(assert (= (and start!106388 ((_ is Leaf!6065) t!4115)) b!1195733))

(declare-fun m!1370257 () Bool)

(assert (=> b!1195737 m!1370257))

(declare-fun m!1370259 () Bool)

(assert (=> b!1195733 m!1370259))

(declare-fun m!1370261 () Bool)

(assert (=> b!1195736 m!1370261))

(declare-fun m!1370263 () Bool)

(assert (=> b!1195738 m!1370263))

(declare-fun m!1370265 () Bool)

(assert (=> start!106388 m!1370265))

(declare-fun m!1370267 () Bool)

(assert (=> b!1195734 m!1370267))

(declare-fun m!1370269 () Bool)

(assert (=> b!1195734 m!1370269))

(check-sat (not b!1195734) (not b!1195732) (not b!1195733) (not b!1195738) (not b!1195736) (not start!106388) (not b!1195737))
(check-sat)
