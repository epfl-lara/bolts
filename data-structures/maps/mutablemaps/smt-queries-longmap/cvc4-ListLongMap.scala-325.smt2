; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5942 () Bool)

(assert start!5942)

(declare-fun b_free!1415 () Bool)

(declare-fun b_next!1415 () Bool)

(assert (=> start!5942 (= b_free!1415 (not b_next!1415))))

(declare-fun tp!5810 () Bool)

(declare-fun b_and!2489 () Bool)

(assert (=> start!5942 (= tp!5810 b_and!2489)))

(declare-fun b!41699 () Bool)

(declare-fun res!24817 () Bool)

(declare-fun e!26369 () Bool)

(assert (=> b!41699 (=> res!24817 e!26369)))

(declare-datatypes ((V!2165 0))(
  ( (V!2166 (val!941 Int)) )
))
(declare-datatypes ((tuple2!1540 0))(
  ( (tuple2!1541 (_1!780 (_ BitVec 64)) (_2!780 V!2165)) )
))
(declare-datatypes ((List!1120 0))(
  ( (Nil!1117) (Cons!1116 (h!1693 tuple2!1540) (t!4039 List!1120)) )
))
(declare-datatypes ((ListLongMap!1121 0))(
  ( (ListLongMap!1122 (toList!576 List!1120)) )
))
(declare-fun lt!16747 () ListLongMap!1121)

(declare-fun isEmpty!261 (List!1120) Bool)

(assert (=> b!41699 (= res!24817 (isEmpty!261 (toList!576 lt!16747)))))

(declare-fun b!41700 () Bool)

(declare-fun res!24816 () Bool)

(assert (=> b!41700 (=> res!24816 e!26369)))

(declare-fun mask!853 () (_ BitVec 32))

(assert (=> b!41700 (= res!24816 (bvslt mask!853 #b00000000000000000000000000000000))))

(declare-fun b!41701 () Bool)

(assert (=> b!41701 (= e!26369 true)))

(declare-fun lt!16745 () V!2165)

(declare-datatypes ((array!2691 0))(
  ( (array!2692 (arr!1289 (Array (_ BitVec 32) (_ BitVec 64))) (size!1441 (_ BitVec 32))) )
))
(declare-fun lt!16748 () array!2691)

(declare-datatypes ((ValueCell!655 0))(
  ( (ValueCellFull!655 (v!2024 V!2165)) (EmptyCell!655) )
))
(declare-datatypes ((array!2693 0))(
  ( (array!2694 (arr!1290 (Array (_ BitVec 32) ValueCell!655)) (size!1442 (_ BitVec 32))) )
))
(declare-fun lt!16746 () array!2693)

(declare-fun lt!16743 () Bool)

(declare-fun defaultEntry!470 () Int)

(declare-fun contains!542 (ListLongMap!1121 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!334 (array!2691 array!2693 (_ BitVec 32) (_ BitVec 32) V!2165 V!2165 (_ BitVec 32) Int) ListLongMap!1121)

(declare-fun head!871 (List!1120) tuple2!1540)

(assert (=> b!41701 (= lt!16743 (contains!542 (getCurrentListMap!334 lt!16748 lt!16746 mask!853 #b00000000000000000000000000000000 lt!16745 lt!16745 #b00000000000000000000000000000000 defaultEntry!470) (_1!780 (head!871 (toList!576 lt!16747)))))))

(declare-fun res!24814 () Bool)

(declare-fun e!26370 () Bool)

(assert (=> start!5942 (=> (not res!24814) (not e!26370))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!5942 (= res!24814 (validMask!0 mask!853))))

(assert (=> start!5942 e!26370))

(assert (=> start!5942 true))

(assert (=> start!5942 tp!5810))

(declare-fun b!41698 () Bool)

(assert (=> b!41698 (= e!26370 (not e!26369))))

(declare-fun res!24815 () Bool)

(assert (=> b!41698 (=> res!24815 e!26369)))

(assert (=> b!41698 (= res!24815 (= lt!16747 (ListLongMap!1122 Nil!1117)))))

(declare-datatypes ((LongMapFixedSize!290 0))(
  ( (LongMapFixedSize!291 (defaultEntry!1835 Int) (mask!5248 (_ BitVec 32)) (extraKeys!1726 (_ BitVec 32)) (zeroValue!1753 V!2165) (minValue!1753 V!2165) (_size!194 (_ BitVec 32)) (_keys!3342 array!2691) (_values!1818 array!2693) (_vacant!194 (_ BitVec 32))) )
))
(declare-fun map!734 (LongMapFixedSize!290) ListLongMap!1121)

(assert (=> b!41698 (= lt!16747 (map!734 (LongMapFixedSize!291 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!16745 lt!16745 #b00000000000000000000000000000000 lt!16748 lt!16746 #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1121 0))(
  ( (Nil!1118) (Cons!1117 (h!1694 (_ BitVec 64)) (t!4040 List!1121)) )
))
(declare-fun arrayNoDuplicates!0 (array!2691 (_ BitVec 32) List!1121) Bool)

(assert (=> b!41698 (arrayNoDuplicates!0 lt!16748 #b00000000000000000000000000000000 Nil!1118)))

(declare-datatypes ((Unit!1047 0))(
  ( (Unit!1048) )
))
(declare-fun lt!16750 () Unit!1047)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2691 (_ BitVec 32) (_ BitVec 32) List!1121) Unit!1047)

(assert (=> b!41698 (= lt!16750 (lemmaArrayNoDuplicatesInAll0Array!0 lt!16748 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1118))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2691 (_ BitVec 32)) Bool)

(assert (=> b!41698 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!16748 mask!853)))

(declare-fun lt!16744 () Unit!1047)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2691 (_ BitVec 32) (_ BitVec 32)) Unit!1047)

(assert (=> b!41698 (= lt!16744 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!16748 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2691 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!41698 (= (arrayCountValidKeys!0 lt!16748 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!16749 () Unit!1047)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2691 (_ BitVec 32) (_ BitVec 32)) Unit!1047)

(assert (=> b!41698 (= lt!16749 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!16748 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41698 (= lt!16746 (array!2694 ((as const (Array (_ BitVec 32) ValueCell!655)) EmptyCell!655) (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!41698 (= lt!16748 (array!2692 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!216 (Int (_ BitVec 64)) V!2165)

(assert (=> b!41698 (= lt!16745 (dynLambda!216 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!5942 res!24814) b!41698))

(assert (= (and b!41698 (not res!24815)) b!41699))

(assert (= (and b!41699 (not res!24817)) b!41700))

(assert (= (and b!41700 (not res!24816)) b!41701))

(declare-fun b_lambda!2159 () Bool)

(assert (=> (not b_lambda!2159) (not b!41698)))

(declare-fun t!4038 () Bool)

(declare-fun tb!905 () Bool)

(assert (=> (and start!5942 (= defaultEntry!470 defaultEntry!470) t!4038) tb!905))

(declare-fun result!1553 () Bool)

(declare-fun tp_is_empty!1805 () Bool)

(assert (=> tb!905 (= result!1553 tp_is_empty!1805)))

(assert (=> b!41698 t!4038))

(declare-fun b_and!2491 () Bool)

(assert (= b_and!2489 (and (=> t!4038 result!1553) b_and!2491)))

(declare-fun m!35163 () Bool)

(assert (=> b!41699 m!35163))

(declare-fun m!35165 () Bool)

(assert (=> b!41701 m!35165))

(declare-fun m!35167 () Bool)

(assert (=> b!41701 m!35167))

(assert (=> b!41701 m!35165))

(declare-fun m!35169 () Bool)

(assert (=> b!41701 m!35169))

(declare-fun m!35171 () Bool)

(assert (=> start!5942 m!35171))

(declare-fun m!35173 () Bool)

(assert (=> b!41698 m!35173))

(declare-fun m!35175 () Bool)

(assert (=> b!41698 m!35175))

(declare-fun m!35177 () Bool)

(assert (=> b!41698 m!35177))

(declare-fun m!35179 () Bool)

(assert (=> b!41698 m!35179))

(declare-fun m!35181 () Bool)

(assert (=> b!41698 m!35181))

(declare-fun m!35183 () Bool)

(assert (=> b!41698 m!35183))

(declare-fun m!35185 () Bool)

(assert (=> b!41698 m!35185))

(declare-fun m!35187 () Bool)

(assert (=> b!41698 m!35187))

(push 1)

(assert b_and!2491)

(assert (not b!41698))

(assert (not b!41699))

(assert tp_is_empty!1805)

(assert (not b!41701))

(assert (not b_lambda!2159))

(assert (not b_next!1415))

(assert (not start!5942))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2491)

(assert (not b_next!1415))

(check-sat)

