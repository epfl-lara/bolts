; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6372 () Bool)

(assert start!6372)

(declare-fun b_free!1455 () Bool)

(declare-fun b_next!1455 () Bool)

(assert (=> start!6372 (= b_free!1455 (not b_next!1455))))

(declare-fun tp!5870 () Bool)

(declare-fun b_and!2569 () Bool)

(assert (=> start!6372 (= tp!5870 b_and!2569)))

(declare-fun res!25420 () Bool)

(declare-fun e!27117 () Bool)

(assert (=> start!6372 (=> (not res!25420) (not e!27117))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6372 (= res!25420 (validMask!0 mask!853))))

(assert (=> start!6372 e!27117))

(assert (=> start!6372 true))

(assert (=> start!6372 tp!5870))

(declare-fun b!42776 () Bool)

(assert (=> b!42776 (= e!27117 (not true))))

(declare-datatypes ((V!2247 0))(
  ( (V!2248 (val!961 Int)) )
))
(declare-fun lt!17888 () V!2247)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((tuple2!1580 0))(
  ( (tuple2!1581 (_1!800 (_ BitVec 64)) (_2!800 V!2247)) )
))
(declare-datatypes ((List!1166 0))(
  ( (Nil!1163) (Cons!1162 (h!1739 tuple2!1580) (t!4125 List!1166)) )
))
(declare-datatypes ((ListLongMap!1161 0))(
  ( (ListLongMap!1162 (toList!596 List!1166)) )
))
(declare-fun lt!17887 () ListLongMap!1161)

(declare-datatypes ((array!2831 0))(
  ( (array!2832 (arr!1359 (Array (_ BitVec 32) (_ BitVec 64))) (size!1538 (_ BitVec 32))) )
))
(declare-fun lt!17886 () array!2831)

(declare-datatypes ((ValueCell!675 0))(
  ( (ValueCellFull!675 (v!2050 V!2247)) (EmptyCell!675) )
))
(declare-datatypes ((array!2833 0))(
  ( (array!2834 (arr!1360 (Array (_ BitVec 32) ValueCell!675)) (size!1539 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!330 0))(
  ( (LongMapFixedSize!331 (defaultEntry!1858 Int) (mask!5382 (_ BitVec 32)) (extraKeys!1749 (_ BitVec 32)) (zeroValue!1776 V!2247) (minValue!1776 V!2247) (_size!214 (_ BitVec 32)) (_keys!3401 array!2831) (_values!1841 array!2833) (_vacant!214 (_ BitVec 32))) )
))
(declare-fun map!796 (LongMapFixedSize!330) ListLongMap!1161)

(assert (=> b!42776 (= lt!17887 (map!796 (LongMapFixedSize!331 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!17888 lt!17888 #b00000000000000000000000000000000 lt!17886 (array!2834 ((as const (Array (_ BitVec 32) ValueCell!675)) EmptyCell!675) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1167 0))(
  ( (Nil!1164) (Cons!1163 (h!1740 (_ BitVec 64)) (t!4126 List!1167)) )
))
(declare-fun arrayNoDuplicates!0 (array!2831 (_ BitVec 32) List!1167) Bool)

(assert (=> b!42776 (arrayNoDuplicates!0 lt!17886 #b00000000000000000000000000000000 Nil!1164)))

(declare-datatypes ((Unit!1153 0))(
  ( (Unit!1154) )
))
(declare-fun lt!17890 () Unit!1153)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2831 (_ BitVec 32) (_ BitVec 32) List!1167) Unit!1153)

(assert (=> b!42776 (= lt!17890 (lemmaArrayNoDuplicatesInAll0Array!0 lt!17886 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1164))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2831 (_ BitVec 32)) Bool)

(assert (=> b!42776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!17886 mask!853)))

(declare-fun lt!17885 () Unit!1153)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2831 (_ BitVec 32) (_ BitVec 32)) Unit!1153)

(assert (=> b!42776 (= lt!17885 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!17886 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2831 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42776 (= (arrayCountValidKeys!0 lt!17886 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!17889 () Unit!1153)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2831 (_ BitVec 32) (_ BitVec 32)) Unit!1153)

(assert (=> b!42776 (= lt!17889 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!17886 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42776 (= lt!17886 (array!2832 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!236 (Int (_ BitVec 64)) V!2247)

(assert (=> b!42776 (= lt!17888 (dynLambda!236 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6372 res!25420) b!42776))

(declare-fun b_lambda!2211 () Bool)

(assert (=> (not b_lambda!2211) (not b!42776)))

(declare-fun t!4124 () Bool)

(declare-fun tb!945 () Bool)

(assert (=> (and start!6372 (= defaultEntry!470 defaultEntry!470) t!4124) tb!945))

(declare-fun result!1633 () Bool)

(declare-fun tp_is_empty!1845 () Bool)

(assert (=> tb!945 (= result!1633 tp_is_empty!1845)))

(assert (=> b!42776 t!4124))

(declare-fun b_and!2571 () Bool)

(assert (= b_and!2569 (and (=> t!4124 result!1633) b_and!2571)))

(declare-fun m!36449 () Bool)

(assert (=> start!6372 m!36449))

(declare-fun m!36451 () Bool)

(assert (=> b!42776 m!36451))

(declare-fun m!36453 () Bool)

(assert (=> b!42776 m!36453))

(declare-fun m!36455 () Bool)

(assert (=> b!42776 m!36455))

(declare-fun m!36457 () Bool)

(assert (=> b!42776 m!36457))

(declare-fun m!36459 () Bool)

(assert (=> b!42776 m!36459))

(declare-fun m!36461 () Bool)

(assert (=> b!42776 m!36461))

(declare-fun m!36463 () Bool)

(assert (=> b!42776 m!36463))

(declare-fun m!36465 () Bool)

(assert (=> b!42776 m!36465))

(check-sat (not b!42776) (not b_lambda!2211) b_and!2571 (not b_next!1455) (not start!6372) tp_is_empty!1845)
(check-sat b_and!2571 (not b_next!1455))
