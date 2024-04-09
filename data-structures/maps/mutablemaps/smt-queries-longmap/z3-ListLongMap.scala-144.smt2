; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2646 () Bool)

(assert start!2646)

(declare-fun b_free!543 () Bool)

(declare-fun b_next!543 () Bool)

(assert (=> start!2646 (= b_free!543 (not b_next!543))))

(declare-fun tp!2755 () Bool)

(declare-fun b_and!1037 () Bool)

(assert (=> start!2646 (= tp!2755 b_and!1037)))

(declare-fun res!11881 () Bool)

(declare-fun e!9676 () Bool)

(assert (=> start!2646 (=> (not res!11881) (not e!9676))))

(declare-datatypes ((B!664 0))(
  ( (B!665 (val!430 Int)) )
))
(declare-datatypes ((tuple2!642 0))(
  ( (tuple2!643 (_1!321 (_ BitVec 64)) (_2!321 B!664)) )
))
(declare-datatypes ((List!510 0))(
  ( (Nil!507) (Cons!506 (h!1072 tuple2!642) (t!2996 List!510)) )
))
(declare-datatypes ((ListLongMap!473 0))(
  ( (ListLongMap!474 (toList!252 List!510)) )
))
(declare-fun lm!221 () ListLongMap!473)

(declare-fun p!191 () Int)

(declare-fun forall!132 (List!510 Int) Bool)

(assert (=> start!2646 (= res!11881 (forall!132 (toList!252 lm!221) p!191))))

(assert (=> start!2646 e!9676))

(declare-fun e!9675 () Bool)

(declare-fun inv!857 (ListLongMap!473) Bool)

(assert (=> start!2646 (and (inv!857 lm!221) e!9675)))

(assert (=> start!2646 tp!2755))

(declare-fun b!15840 () Bool)

(declare-fun res!11880 () Bool)

(assert (=> b!15840 (=> (not res!11880) (not e!9676))))

(declare-fun isEmpty!142 (ListLongMap!473) Bool)

(assert (=> b!15840 (= res!11880 (not (isEmpty!142 lm!221)))))

(declare-fun b!15841 () Bool)

(assert (=> b!15841 (= e!9676 false)))

(declare-fun lt!3921 () Bool)

(declare-fun tail!66 (ListLongMap!473) ListLongMap!473)

(assert (=> b!15841 (= lt!3921 (forall!132 (toList!252 (tail!66 lm!221)) p!191))))

(declare-fun b!15842 () Bool)

(declare-fun tp!2756 () Bool)

(assert (=> b!15842 (= e!9675 tp!2756)))

(assert (= (and start!2646 res!11881) b!15840))

(assert (= (and b!15840 res!11880) b!15841))

(assert (= start!2646 b!15842))

(declare-fun m!10865 () Bool)

(assert (=> start!2646 m!10865))

(declare-fun m!10867 () Bool)

(assert (=> start!2646 m!10867))

(declare-fun m!10869 () Bool)

(assert (=> b!15840 m!10869))

(declare-fun m!10871 () Bool)

(assert (=> b!15841 m!10871))

(declare-fun m!10873 () Bool)

(assert (=> b!15841 m!10873))

(check-sat (not b!15842) (not b!15840) (not start!2646) b_and!1037 (not b_next!543) (not b!15841))
(check-sat b_and!1037 (not b_next!543))
