; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!186432 () Bool)

(assert start!186432)

(declare-fun b!1863658 () Bool)

(declare-fun e!1189836 () Bool)

(declare-fun e!1189838 () Bool)

(assert (=> b!1863658 (= e!1189836 (not e!1189838))))

(declare-fun res!834521 () Bool)

(assert (=> b!1863658 (=> res!834521 e!1189838)))

(declare-datatypes ((T!33032 0))(
  ( (T!33033 (val!5930 Int)) )
))
(declare-datatypes ((List!20747 0))(
  ( (Nil!20665) (Cons!20665 (h!26066 T!33032) (t!172830 List!20747)) )
))
(declare-datatypes ((IArray!13725 0))(
  ( (IArray!13726 (innerList!6920 List!20747)) )
))
(declare-datatypes ((Conc!6860 0))(
  ( (Node!6860 (left!16643 Conc!6860) (right!16973 Conc!6860) (csize!13950 Int) (cheight!7071 Int)) (Leaf!10058 (xs!9736 IArray!13725) (csize!13951 Int)) (Empty!6860) )
))
(declare-fun t!4595 () Conc!6860)

(declare-fun isBalanced!2161 (Conc!6860) Bool)

(assert (=> b!1863658 (= res!834521 (not (isBalanced!2161 (left!16643 t!4595))))))

(declare-fun lt!718160 () List!20747)

(declare-fun lt!718161 () List!20747)

(declare-fun tail!2817 (List!20747) List!20747)

(declare-fun ++!5588 (List!20747 List!20747) List!20747)

(assert (=> b!1863658 (= (tail!2817 (++!5588 lt!718160 lt!718161)) (++!5588 (tail!2817 lt!718160) lt!718161))))

(declare-datatypes ((Unit!35283 0))(
  ( (Unit!35284) )
))
(declare-fun lt!718159 () Unit!35283)

(declare-fun lemmaTailOfConcatIsTailConcat!32 (List!20747 List!20747) Unit!35283)

(assert (=> b!1863658 (= lt!718159 (lemmaTailOfConcatIsTailConcat!32 lt!718160 lt!718161))))

(declare-fun list!8436 (Conc!6860) List!20747)

(assert (=> b!1863658 (= lt!718161 (list!8436 (right!16973 t!4595)))))

(assert (=> b!1863658 (= lt!718160 (list!8436 (left!16643 t!4595)))))

(declare-fun b!1863660 () Bool)

(declare-fun res!834520 () Bool)

(assert (=> b!1863660 (=> (not res!834520) (not e!1189836))))

(get-info :version)

(assert (=> b!1863660 (= res!834520 ((_ is Node!6860) t!4595))))

(declare-fun b!1863661 () Bool)

(declare-fun e!1189837 () Bool)

(declare-fun tp!530877 () Bool)

(assert (=> b!1863661 (= e!1189837 tp!530877)))

(declare-fun b!1863662 () Bool)

(declare-fun e!1189839 () Bool)

(declare-fun inv!27294 (IArray!13725) Bool)

(assert (=> b!1863662 (= e!1189839 (and (inv!27294 (xs!9736 t!4595)) e!1189837))))

(declare-fun b!1863663 () Bool)

(declare-fun e!1189835 () Bool)

(declare-fun isEmpty!12875 (Conc!6860) Bool)

(assert (=> b!1863663 (= e!1189835 (not (isEmpty!12875 (left!16643 t!4595))))))

(declare-fun b!1863664 () Bool)

(declare-fun res!834519 () Bool)

(assert (=> b!1863664 (=> (not res!834519) (not e!1189836))))

(assert (=> b!1863664 (= res!834519 (not (isEmpty!12875 t!4595)))))

(declare-fun tp!530876 () Bool)

(declare-fun b!1863665 () Bool)

(declare-fun tp!530878 () Bool)

(declare-fun inv!27295 (Conc!6860) Bool)

(assert (=> b!1863665 (= e!1189839 (and (inv!27295 (left!16643 t!4595)) tp!530878 (inv!27295 (right!16973 t!4595)) tp!530876))))

(declare-fun b!1863666 () Bool)

(declare-fun res!834518 () Bool)

(assert (=> b!1863666 (=> (not res!834518) (not e!1189836))))

(assert (=> b!1863666 (= res!834518 e!1189835)))

(declare-fun res!834515 () Bool)

(assert (=> b!1863666 (=> res!834515 e!1189835)))

(assert (=> b!1863666 (= res!834515 (not ((_ is Node!6860) t!4595)))))

(declare-fun b!1863667 () Bool)

(assert (=> b!1863667 (= e!1189838 (not (isEmpty!12875 (left!16643 t!4595))))))

(declare-fun b!1863659 () Bool)

(declare-fun res!834517 () Bool)

(assert (=> b!1863659 (=> (not res!834517) (not e!1189836))))

(assert (=> b!1863659 (= res!834517 (not ((_ is Leaf!10058) t!4595)))))

(declare-fun res!834516 () Bool)

(assert (=> start!186432 (=> (not res!834516) (not e!1189836))))

(assert (=> start!186432 (= res!834516 (isBalanced!2161 t!4595))))

(assert (=> start!186432 e!1189836))

(assert (=> start!186432 (and (inv!27295 t!4595) e!1189839)))

(assert (= (and start!186432 res!834516) b!1863664))

(assert (= (and b!1863664 res!834519) b!1863659))

(assert (= (and b!1863659 res!834517) b!1863666))

(assert (= (and b!1863666 (not res!834515)) b!1863663))

(assert (= (and b!1863666 res!834518) b!1863660))

(assert (= (and b!1863660 res!834520) b!1863658))

(assert (= (and b!1863658 (not res!834521)) b!1863667))

(assert (= (and start!186432 ((_ is Node!6860) t!4595)) b!1863665))

(assert (= b!1863662 b!1863661))

(assert (= (and start!186432 ((_ is Leaf!10058) t!4595)) b!1863662))

(declare-fun m!2287685 () Bool)

(assert (=> b!1863662 m!2287685))

(declare-fun m!2287687 () Bool)

(assert (=> b!1863658 m!2287687))

(declare-fun m!2287689 () Bool)

(assert (=> b!1863658 m!2287689))

(declare-fun m!2287691 () Bool)

(assert (=> b!1863658 m!2287691))

(declare-fun m!2287693 () Bool)

(assert (=> b!1863658 m!2287693))

(assert (=> b!1863658 m!2287687))

(declare-fun m!2287695 () Bool)

(assert (=> b!1863658 m!2287695))

(declare-fun m!2287697 () Bool)

(assert (=> b!1863658 m!2287697))

(declare-fun m!2287699 () Bool)

(assert (=> b!1863658 m!2287699))

(declare-fun m!2287701 () Bool)

(assert (=> b!1863658 m!2287701))

(assert (=> b!1863658 m!2287691))

(declare-fun m!2287703 () Bool)

(assert (=> b!1863667 m!2287703))

(declare-fun m!2287705 () Bool)

(assert (=> b!1863664 m!2287705))

(assert (=> b!1863663 m!2287703))

(declare-fun m!2287707 () Bool)

(assert (=> start!186432 m!2287707))

(declare-fun m!2287709 () Bool)

(assert (=> start!186432 m!2287709))

(declare-fun m!2287711 () Bool)

(assert (=> b!1863665 m!2287711))

(declare-fun m!2287713 () Bool)

(assert (=> b!1863665 m!2287713))

(check-sat (not b!1863662) (not b!1863667) (not b!1863661) (not b!1863663) (not b!1863664) (not start!186432) (not b!1863665) (not b!1863658))
(check-sat)
