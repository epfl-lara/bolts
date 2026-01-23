; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533942 () Bool)

(assert start!533942)

(declare-fun b!5048423 () Bool)

(declare-fun e!3151996 () Bool)

(declare-datatypes ((T!104334 0))(
  ( (T!104335 (val!23536 Int)) )
))
(declare-datatypes ((List!58446 0))(
  ( (Nil!58322) (Cons!58322 (h!64770 T!104334) (t!371085 List!58446)) )
))
(declare-datatypes ((IArray!31129 0))(
  ( (IArray!31130 (innerList!15622 List!58446)) )
))
(declare-datatypes ((Conc!15534 0))(
  ( (Node!15534 (left!42730 Conc!15534) (right!43060 Conc!15534) (csize!31298 Int) (cheight!15745 Int)) (Leaf!25765 (xs!18864 IArray!31129) (csize!31299 Int)) (Empty!15534) )
))
(declare-fun t!4198 () Conc!15534)

(declare-fun e!3151997 () Bool)

(declare-fun inv!77271 (IArray!31129) Bool)

(assert (=> b!5048423 (= e!3151996 (and (inv!77271 (xs!18864 t!4198)) e!3151997))))

(declare-fun b!5048424 () Bool)

(declare-fun tp!1411921 () Bool)

(assert (=> b!5048424 (= e!3151997 tp!1411921)))

(declare-fun b!5048425 () Bool)

(declare-fun e!3151998 () Bool)

(assert (=> b!5048425 (= e!3151998 false)))

(declare-fun lt!2085951 () Int)

(declare-fun size!38947 (Conc!15534) Int)

(assert (=> b!5048425 (= lt!2085951 (size!38947 t!4198))))

(declare-fun res!2150082 () Bool)

(assert (=> start!533942 (=> (not res!2150082) (not e!3151998))))

(declare-fun isBalanced!4396 (Conc!15534) Bool)

(assert (=> start!533942 (= res!2150082 (isBalanced!4396 t!4198))))

(assert (=> start!533942 e!3151998))

(declare-fun inv!77272 (Conc!15534) Bool)

(assert (=> start!533942 (and (inv!77272 t!4198) e!3151996)))

(assert (=> start!533942 true))

(declare-fun b!5048426 () Bool)

(declare-fun res!2150083 () Bool)

(assert (=> b!5048426 (=> (not res!2150083) (not e!3151998))))

(declare-fun i!618 () Int)

(assert (=> b!5048426 (= res!2150083 (<= 0 i!618))))

(declare-fun tp!1411920 () Bool)

(declare-fun b!5048427 () Bool)

(declare-fun tp!1411919 () Bool)

(assert (=> b!5048427 (= e!3151996 (and (inv!77272 (left!42730 t!4198)) tp!1411920 (inv!77272 (right!43060 t!4198)) tp!1411919))))

(assert (= (and start!533942 res!2150082) b!5048426))

(assert (= (and b!5048426 res!2150083) b!5048425))

(get-info :version)

(assert (= (and start!533942 ((_ is Node!15534) t!4198)) b!5048427))

(assert (= b!5048423 b!5048424))

(assert (= (and start!533942 ((_ is Leaf!25765) t!4198)) b!5048423))

(declare-fun m!6083670 () Bool)

(assert (=> b!5048423 m!6083670))

(declare-fun m!6083672 () Bool)

(assert (=> b!5048425 m!6083672))

(declare-fun m!6083674 () Bool)

(assert (=> start!533942 m!6083674))

(declare-fun m!6083676 () Bool)

(assert (=> start!533942 m!6083676))

(declare-fun m!6083678 () Bool)

(assert (=> b!5048427 m!6083678))

(declare-fun m!6083680 () Bool)

(assert (=> b!5048427 m!6083680))

(check-sat (not b!5048423) (not start!533942) (not b!5048424) (not b!5048427) (not b!5048425))
(check-sat)
