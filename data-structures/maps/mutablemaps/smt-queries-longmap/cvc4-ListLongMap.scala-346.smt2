; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6374 () Bool)

(assert start!6374)

(declare-fun b_free!1457 () Bool)

(declare-fun b_next!1457 () Bool)

(assert (=> start!6374 (= b_free!1457 (not b_next!1457))))

(declare-fun tp!5873 () Bool)

(declare-fun b_and!2573 () Bool)

(assert (=> start!6374 (= tp!5873 b_and!2573)))

(declare-fun res!25423 () Bool)

(declare-fun e!27120 () Bool)

(assert (=> start!6374 (=> (not res!25423) (not e!27120))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6374 (= res!25423 (validMask!0 mask!853))))

(assert (=> start!6374 e!27120))

(assert (=> start!6374 true))

(assert (=> start!6374 tp!5873))

(declare-fun b!42781 () Bool)

(assert (=> b!42781 (= e!27120 (not true))))

(declare-datatypes ((V!2249 0))(
  ( (V!2250 (val!962 Int)) )
))
(declare-fun lt!17908 () V!2249)

(declare-datatypes ((array!2835 0))(
  ( (array!2836 (arr!1361 (Array (_ BitVec 32) (_ BitVec 64))) (size!1540 (_ BitVec 32))) )
))
(declare-fun lt!17904 () array!2835)

(declare-datatypes ((tuple2!1582 0))(
  ( (tuple2!1583 (_1!801 (_ BitVec 64)) (_2!801 V!2249)) )
))
(declare-datatypes ((List!1168 0))(
  ( (Nil!1165) (Cons!1164 (h!1741 tuple2!1582) (t!4129 List!1168)) )
))
(declare-datatypes ((ListLongMap!1163 0))(
  ( (ListLongMap!1164 (toList!597 List!1168)) )
))
(declare-fun lt!17903 () ListLongMap!1163)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!676 0))(
  ( (ValueCellFull!676 (v!2051 V!2249)) (EmptyCell!676) )
))
(declare-datatypes ((array!2837 0))(
  ( (array!2838 (arr!1362 (Array (_ BitVec 32) ValueCell!676)) (size!1541 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!332 0))(
  ( (LongMapFixedSize!333 (defaultEntry!1859 Int) (mask!5383 (_ BitVec 32)) (extraKeys!1750 (_ BitVec 32)) (zeroValue!1777 V!2249) (minValue!1777 V!2249) (_size!215 (_ BitVec 32)) (_keys!3402 array!2835) (_values!1842 array!2837) (_vacant!215 (_ BitVec 32))) )
))
(declare-fun map!797 (LongMapFixedSize!332) ListLongMap!1163)

(assert (=> b!42781 (= lt!17903 (map!797 (LongMapFixedSize!333 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17908 lt!17908 #b00000000000000000000000000000000 lt!17904 (array!2838 ((as const (Array (_ BitVec 32) ValueCell!676)) EmptyCell!676) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1169 0))(
  ( (Nil!1166) (Cons!1165 (h!1742 (_ BitVec 64)) (t!4130 List!1169)) )
))
(declare-fun arrayNoDuplicates!0 (array!2835 (_ BitVec 32) List!1169) Bool)

(assert (=> b!42781 (arrayNoDuplicates!0 lt!17904 #b00000000000000000000000000000000 Nil!1166)))

(declare-datatypes ((Unit!1155 0))(
  ( (Unit!1156) )
))
(declare-fun lt!17907 () Unit!1155)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2835 (_ BitVec 32) (_ BitVec 32) List!1169) Unit!1155)

(assert (=> b!42781 (= lt!17907 (lemmaArrayNoDuplicatesInAll0Array!0 lt!17904 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2835 (_ BitVec 32)) Bool)

(assert (=> b!42781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17904 mask!853)))

(declare-fun lt!17906 () Unit!1155)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2835 (_ BitVec 32) (_ BitVec 32)) Unit!1155)

(assert (=> b!42781 (= lt!17906 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17904 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2835 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42781 (= (arrayCountValidKeys!0 lt!17904 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17905 () Unit!1155)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2835 (_ BitVec 32) (_ BitVec 32)) Unit!1155)

(assert (=> b!42781 (= lt!17905 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17904 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42781 (= lt!17904 (array!2836 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!237 (Int (_ BitVec 64)) V!2249)

(assert (=> b!42781 (= lt!17908 (dynLambda!237 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6374 res!25423) b!42781))

(declare-fun b_lambda!2213 () Bool)

(assert (=> (not b_lambda!2213) (not b!42781)))

(declare-fun t!4128 () Bool)

(declare-fun tb!947 () Bool)

(assert (=> (and start!6374 (= defaultEntry!470 defaultEntry!470) t!4128) tb!947))

(declare-fun result!1637 () Bool)

(declare-fun tp_is_empty!1847 () Bool)

(assert (=> tb!947 (= result!1637 tp_is_empty!1847)))

(assert (=> b!42781 t!4128))

(declare-fun b_and!2575 () Bool)

(assert (= b_and!2573 (and (=> t!4128 result!1637) b_and!2575)))

(declare-fun m!36467 () Bool)

(assert (=> start!6374 m!36467))

(declare-fun m!36469 () Bool)

(assert (=> b!42781 m!36469))

(declare-fun m!36471 () Bool)

(assert (=> b!42781 m!36471))

(declare-fun m!36473 () Bool)

(assert (=> b!42781 m!36473))

(declare-fun m!36475 () Bool)

(assert (=> b!42781 m!36475))

(declare-fun m!36477 () Bool)

(assert (=> b!42781 m!36477))

(declare-fun m!36479 () Bool)

(assert (=> b!42781 m!36479))

(declare-fun m!36481 () Bool)

(assert (=> b!42781 m!36481))

(declare-fun m!36483 () Bool)

(assert (=> b!42781 m!36483))

(push 1)

(assert (not b_lambda!2213))

(assert tp_is_empty!1847)

(assert (not b_next!1457))

(assert b_and!2575)

(assert (not start!6374))

(assert (not b!42781))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2575)

(assert (not b_next!1457))

(check-sat)

(pop 1)

