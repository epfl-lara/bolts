; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6376 () Bool)

(assert start!6376)

(declare-fun b_free!1459 () Bool)

(declare-fun b_next!1459 () Bool)

(assert (=> start!6376 (= b_free!1459 (not b_next!1459))))

(declare-fun tp!5876 () Bool)

(declare-fun b_and!2577 () Bool)

(assert (=> start!6376 (= tp!5876 b_and!2577)))

(declare-fun res!25426 () Bool)

(declare-fun e!27123 () Bool)

(assert (=> start!6376 (=> (not res!25426) (not e!27123))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6376 (= res!25426 (validMask!0 mask!853))))

(assert (=> start!6376 e!27123))

(assert (=> start!6376 true))

(assert (=> start!6376 tp!5876))

(declare-fun b!42786 () Bool)

(assert (=> b!42786 (= e!27123 (not true))))

(declare-datatypes ((array!2839 0))(
  ( (array!2840 (arr!1363 (Array (_ BitVec 32) (_ BitVec 64))) (size!1542 (_ BitVec 32))) )
))
(declare-fun lt!17922 () array!2839)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((V!2253 0))(
  ( (V!2254 (val!963 Int)) )
))
(declare-fun lt!17926 () V!2253)

(declare-datatypes ((tuple2!1584 0))(
  ( (tuple2!1585 (_1!802 (_ BitVec 64)) (_2!802 V!2253)) )
))
(declare-datatypes ((List!1170 0))(
  ( (Nil!1167) (Cons!1166 (h!1743 tuple2!1584) (t!4133 List!1170)) )
))
(declare-datatypes ((ListLongMap!1165 0))(
  ( (ListLongMap!1166 (toList!598 List!1170)) )
))
(declare-fun lt!17923 () ListLongMap!1165)

(declare-datatypes ((ValueCell!677 0))(
  ( (ValueCellFull!677 (v!2052 V!2253)) (EmptyCell!677) )
))
(declare-datatypes ((array!2841 0))(
  ( (array!2842 (arr!1364 (Array (_ BitVec 32) ValueCell!677)) (size!1543 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!334 0))(
  ( (LongMapFixedSize!335 (defaultEntry!1860 Int) (mask!5386 (_ BitVec 32)) (extraKeys!1751 (_ BitVec 32)) (zeroValue!1778 V!2253) (minValue!1778 V!2253) (_size!216 (_ BitVec 32)) (_keys!3403 array!2839) (_values!1843 array!2841) (_vacant!216 (_ BitVec 32))) )
))
(declare-fun map!800 (LongMapFixedSize!334) ListLongMap!1165)

(assert (=> b!42786 (= lt!17923 (map!800 (LongMapFixedSize!335 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17926 lt!17926 #b00000000000000000000000000000000 lt!17922 (array!2842 ((as const (Array (_ BitVec 32) ValueCell!677)) EmptyCell!677) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1171 0))(
  ( (Nil!1168) (Cons!1167 (h!1744 (_ BitVec 64)) (t!4134 List!1171)) )
))
(declare-fun arrayNoDuplicates!0 (array!2839 (_ BitVec 32) List!1171) Bool)

(assert (=> b!42786 (arrayNoDuplicates!0 lt!17922 #b00000000000000000000000000000000 Nil!1168)))

(declare-datatypes ((Unit!1157 0))(
  ( (Unit!1158) )
))
(declare-fun lt!17924 () Unit!1157)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2839 (_ BitVec 32) (_ BitVec 32) List!1171) Unit!1157)

(assert (=> b!42786 (= lt!17924 (lemmaArrayNoDuplicatesInAll0Array!0 lt!17922 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2839 (_ BitVec 32)) Bool)

(assert (=> b!42786 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17922 mask!853)))

(declare-fun lt!17921 () Unit!1157)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2839 (_ BitVec 32) (_ BitVec 32)) Unit!1157)

(assert (=> b!42786 (= lt!17921 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17922 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2839 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42786 (= (arrayCountValidKeys!0 lt!17922 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17925 () Unit!1157)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2839 (_ BitVec 32) (_ BitVec 32)) Unit!1157)

(assert (=> b!42786 (= lt!17925 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17922 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42786 (= lt!17922 (array!2840 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!238 (Int (_ BitVec 64)) V!2253)

(assert (=> b!42786 (= lt!17926 (dynLambda!238 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6376 res!25426) b!42786))

(declare-fun b_lambda!2215 () Bool)

(assert (=> (not b_lambda!2215) (not b!42786)))

(declare-fun t!4132 () Bool)

(declare-fun tb!949 () Bool)

(assert (=> (and start!6376 (= defaultEntry!470 defaultEntry!470) t!4132) tb!949))

(declare-fun result!1641 () Bool)

(declare-fun tp_is_empty!1849 () Bool)

(assert (=> tb!949 (= result!1641 tp_is_empty!1849)))

(assert (=> b!42786 t!4132))

(declare-fun b_and!2579 () Bool)

(assert (= b_and!2577 (and (=> t!4132 result!1641) b_and!2579)))

(declare-fun m!36485 () Bool)

(assert (=> start!6376 m!36485))

(declare-fun m!36487 () Bool)

(assert (=> b!42786 m!36487))

(declare-fun m!36489 () Bool)

(assert (=> b!42786 m!36489))

(declare-fun m!36491 () Bool)

(assert (=> b!42786 m!36491))

(declare-fun m!36493 () Bool)

(assert (=> b!42786 m!36493))

(declare-fun m!36495 () Bool)

(assert (=> b!42786 m!36495))

(declare-fun m!36497 () Bool)

(assert (=> b!42786 m!36497))

(declare-fun m!36499 () Bool)

(assert (=> b!42786 m!36499))

(declare-fun m!36501 () Bool)

(assert (=> b!42786 m!36501))

(push 1)

(assert (not b_lambda!2215))

(assert tp_is_empty!1849)

(assert (not b!42786))

(assert (not start!6376))

(assert b_and!2579)

(assert (not b_next!1459))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2579)

(assert (not b_next!1459))

(check-sat)

(pop 1)

