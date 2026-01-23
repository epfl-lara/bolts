; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106392 () Bool)

(assert start!106392)

(declare-fun tp!340617 () Bool)

(declare-fun tp!340615 () Bool)

(declare-datatypes ((T!21684 0))(
  ( (T!21685 (val!3874 Int)) )
))
(declare-datatypes ((List!12053 0))(
  ( (Nil!12029) (Cons!12029 (h!17430 T!21684) (t!112363 List!12053)) )
))
(declare-datatypes ((IArray!7929 0))(
  ( (IArray!7930 (innerList!4022 List!12053)) )
))
(declare-datatypes ((Conc!3962 0))(
  ( (Node!3962 (left!10491 Conc!3962) (right!10821 Conc!3962) (csize!8154 Int) (cheight!4173 Int)) (Leaf!6068 (xs!6669 IArray!7929) (csize!8155 Int)) (Empty!3962) )
))
(declare-fun t!4115 () Conc!3962)

(declare-fun e!768081 () Bool)

(declare-fun b!1195779 () Bool)

(declare-fun inv!16042 (Conc!3962) Bool)

(assert (=> b!1195779 (= e!768081 (and (inv!16042 (left!10491 t!4115)) tp!340617 (inv!16042 (right!10821 t!4115)) tp!340615))))

(declare-fun b!1195780 () Bool)

(declare-fun e!768083 () Bool)

(declare-fun inv!16043 (IArray!7929) Bool)

(assert (=> b!1195780 (= e!768081 (and (inv!16043 (xs!6669 t!4115)) e!768083))))

(declare-fun b!1195781 () Bool)

(declare-fun e!768084 () Bool)

(declare-fun e!768082 () Bool)

(assert (=> b!1195781 (= e!768084 e!768082)))

(declare-fun res!539704 () Bool)

(assert (=> b!1195781 (=> res!539704 e!768082)))

(declare-fun isBalanced!1147 (Conc!3962) Bool)

(assert (=> b!1195781 (= res!539704 (not (isBalanced!1147 Empty!3962)))))

(declare-fun b!1195783 () Bool)

(declare-fun res!539706 () Bool)

(assert (=> b!1195783 (=> (not res!539706) (not e!768084))))

(declare-fun from!553 () Int)

(declare-fun until!31 () Int)

(get-info :version)

(assert (=> b!1195783 (= res!539706 (and (not (= from!553 until!31)) ((_ is Leaf!6068) t!4115) (= (- until!31 from!553) 0)))))

(declare-fun b!1195784 () Bool)

(declare-fun list!4459 (Conc!3962) List!12053)

(declare-fun slice!451 (List!12053 Int Int) List!12053)

(assert (=> b!1195784 (= e!768082 (not (= (list!4459 Empty!3962) (slice!451 (list!4459 t!4115) from!553 until!31))))))

(declare-fun b!1195785 () Bool)

(declare-fun res!539707 () Bool)

(assert (=> b!1195785 (=> (not res!539707) (not e!768084))))

(declare-fun size!9539 (Conc!3962) Int)

(assert (=> b!1195785 (= res!539707 (<= until!31 (size!9539 t!4115)))))

(declare-fun b!1195786 () Bool)

(declare-fun res!539708 () Bool)

(assert (=> b!1195786 (=> (not res!539708) (not e!768084))))

(assert (=> b!1195786 (= res!539708 (isBalanced!1147 t!4115))))

(declare-fun res!539705 () Bool)

(assert (=> start!106392 (=> (not res!539705) (not e!768084))))

(assert (=> start!106392 (= res!539705 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106392 e!768084))

(assert (=> start!106392 true))

(assert (=> start!106392 (and (inv!16042 t!4115) e!768081)))

(declare-fun b!1195782 () Bool)

(declare-fun tp!340616 () Bool)

(assert (=> b!1195782 (= e!768083 tp!340616)))

(assert (= (and start!106392 res!539705) b!1195785))

(assert (= (and b!1195785 res!539707) b!1195786))

(assert (= (and b!1195786 res!539708) b!1195783))

(assert (= (and b!1195783 res!539706) b!1195781))

(assert (= (and b!1195781 (not res!539704)) b!1195784))

(assert (= (and start!106392 ((_ is Node!3962) t!4115)) b!1195779))

(assert (= b!1195780 b!1195782))

(assert (= (and start!106392 ((_ is Leaf!6068) t!4115)) b!1195780))

(declare-fun m!1370291 () Bool)

(assert (=> b!1195781 m!1370291))

(declare-fun m!1370293 () Bool)

(assert (=> b!1195780 m!1370293))

(declare-fun m!1370295 () Bool)

(assert (=> b!1195779 m!1370295))

(declare-fun m!1370297 () Bool)

(assert (=> b!1195779 m!1370297))

(declare-fun m!1370299 () Bool)

(assert (=> b!1195785 m!1370299))

(declare-fun m!1370301 () Bool)

(assert (=> start!106392 m!1370301))

(declare-fun m!1370303 () Bool)

(assert (=> b!1195784 m!1370303))

(declare-fun m!1370305 () Bool)

(assert (=> b!1195784 m!1370305))

(assert (=> b!1195784 m!1370305))

(declare-fun m!1370307 () Bool)

(assert (=> b!1195784 m!1370307))

(declare-fun m!1370309 () Bool)

(assert (=> b!1195786 m!1370309))

(check-sat (not b!1195781) (not b!1195785) (not b!1195786) (not b!1195780) (not b!1195784) (not b!1195779) (not start!106392) (not b!1195782))
(check-sat)
