; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6448 () Bool)

(assert start!6448)

(declare-fun b_free!1477 () Bool)

(declare-fun b_next!1477 () Bool)

(assert (=> start!6448 (= b_free!1477 (not b_next!1477))))

(declare-fun tp!5903 () Bool)

(declare-fun b_and!2613 () Bool)

(assert (=> start!6448 (= tp!5903 b_and!2613)))

(declare-fun res!25516 () Bool)

(declare-fun e!27240 () Bool)

(assert (=> start!6448 (=> (not res!25516) (not e!27240))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6448 (= res!25516 (validMask!0 mask!853))))

(assert (=> start!6448 e!27240))

(assert (=> start!6448 true))

(assert (=> start!6448 tp!5903))

(declare-fun b!42966 () Bool)

(assert (=> b!42966 (= e!27240 (not true))))

(declare-datatypes ((V!2277 0))(
  ( (V!2278 (val!972 Int)) )
))
(declare-datatypes ((tuple2!1602 0))(
  ( (tuple2!1603 (_1!811 (_ BitVec 64)) (_2!811 V!2277)) )
))
(declare-datatypes ((List!1188 0))(
  ( (Nil!1185) (Cons!1184 (h!1761 tuple2!1602) (t!4169 List!1188)) )
))
(declare-datatypes ((ListLongMap!1183 0))(
  ( (ListLongMap!1184 (toList!607 List!1188)) )
))
(declare-fun lt!18150 () ListLongMap!1183)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2875 0))(
  ( (array!2876 (arr!1381 (Array (_ BitVec 32) (_ BitVec 64))) (size!1566 (_ BitVec 32))) )
))
(declare-fun lt!18151 () array!2875)

(declare-fun lt!18148 () V!2277)

(declare-datatypes ((ValueCell!686 0))(
  ( (ValueCellFull!686 (v!2061 V!2277)) (EmptyCell!686) )
))
(declare-datatypes ((array!2877 0))(
  ( (array!2878 (arr!1382 (Array (_ BitVec 32) ValueCell!686)) (size!1567 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!352 0))(
  ( (LongMapFixedSize!353 (defaultEntry!1869 Int) (mask!5410 (_ BitVec 32)) (extraKeys!1760 (_ BitVec 32)) (zeroValue!1787 V!2277) (minValue!1787 V!2277) (_size!225 (_ BitVec 32)) (_keys!3418 array!2875) (_values!1852 array!2877) (_vacant!225 (_ BitVec 32))) )
))
(declare-fun map!815 (LongMapFixedSize!352) ListLongMap!1183)

(assert (=> b!42966 (= lt!18150 (map!815 (LongMapFixedSize!353 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18148 lt!18148 #b00000000000000000000000000000000 lt!18151 (array!2878 ((as const (Array (_ BitVec 32) ValueCell!686)) EmptyCell!686) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1189 0))(
  ( (Nil!1186) (Cons!1185 (h!1762 (_ BitVec 64)) (t!4170 List!1189)) )
))
(declare-fun arrayNoDuplicates!0 (array!2875 (_ BitVec 32) List!1189) Bool)

(assert (=> b!42966 (arrayNoDuplicates!0 lt!18151 #b00000000000000000000000000000000 Nil!1186)))

(declare-datatypes ((Unit!1175 0))(
  ( (Unit!1176) )
))
(declare-fun lt!18147 () Unit!1175)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2875 (_ BitVec 32) (_ BitVec 32) List!1189) Unit!1175)

(assert (=> b!42966 (= lt!18147 (lemmaArrayNoDuplicatesInAll0Array!0 lt!18151 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1186))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2875 (_ BitVec 32)) Bool)

(assert (=> b!42966 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18151 mask!853)))

(declare-fun lt!18149 () Unit!1175)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2875 (_ BitVec 32) (_ BitVec 32)) Unit!1175)

(assert (=> b!42966 (= lt!18149 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18151 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2875 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42966 (= (arrayCountValidKeys!0 lt!18151 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18146 () Unit!1175)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2875 (_ BitVec 32) (_ BitVec 32)) Unit!1175)

(assert (=> b!42966 (= lt!18146 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18151 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42966 (= lt!18151 (array!2876 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!247 (Int (_ BitVec 64)) V!2277)

(assert (=> b!42966 (= lt!18148 (dynLambda!247 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6448 res!25516) b!42966))

(declare-fun b_lambda!2239 () Bool)

(assert (=> (not b_lambda!2239) (not b!42966)))

(declare-fun t!4168 () Bool)

(declare-fun tb!967 () Bool)

(assert (=> (and start!6448 (= defaultEntry!470 defaultEntry!470) t!4168) tb!967))

(declare-fun result!1677 () Bool)

(declare-fun tp_is_empty!1867 () Bool)

(assert (=> tb!967 (= result!1677 tp_is_empty!1867)))

(assert (=> b!42966 t!4168))

(declare-fun b_and!2615 () Bool)

(assert (= b_and!2613 (and (=> t!4168 result!1677) b_and!2615)))

(declare-fun m!36731 () Bool)

(assert (=> start!6448 m!36731))

(declare-fun m!36733 () Bool)

(assert (=> b!42966 m!36733))

(declare-fun m!36735 () Bool)

(assert (=> b!42966 m!36735))

(declare-fun m!36737 () Bool)

(assert (=> b!42966 m!36737))

(declare-fun m!36739 () Bool)

(assert (=> b!42966 m!36739))

(declare-fun m!36741 () Bool)

(assert (=> b!42966 m!36741))

(declare-fun m!36743 () Bool)

(assert (=> b!42966 m!36743))

(declare-fun m!36745 () Bool)

(assert (=> b!42966 m!36745))

(declare-fun m!36747 () Bool)

(assert (=> b!42966 m!36747))

(push 1)

(assert (not b_lambda!2239))

(assert tp_is_empty!1867)

(assert (not b_next!1477))

(assert (not b!42966))

(assert (not start!6448))

(assert b_and!2615)

(check-sat)

(pop 1)

(push 1)

(assert b_and!2615)

(assert (not b_next!1477))

(check-sat)

(pop 1)

