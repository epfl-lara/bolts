; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6452 () Bool)

(assert start!6452)

(declare-fun b_free!1481 () Bool)

(declare-fun b_next!1481 () Bool)

(assert (=> start!6452 (= b_free!1481 (not b_next!1481))))

(declare-fun tp!5909 () Bool)

(declare-fun b_and!2621 () Bool)

(assert (=> start!6452 (= tp!5909 b_and!2621)))

(declare-fun res!25522 () Bool)

(declare-fun e!27246 () Bool)

(assert (=> start!6452 (=> (not res!25522) (not e!27246))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6452 (= res!25522 (validMask!0 mask!853))))

(assert (=> start!6452 e!27246))

(assert (=> start!6452 true))

(assert (=> start!6452 tp!5909))

(declare-fun b!42976 () Bool)

(assert (=> b!42976 (= e!27246 (not true))))

(declare-datatypes ((array!2883 0))(
  ( (array!2884 (arr!1385 (Array (_ BitVec 32) (_ BitVec 64))) (size!1570 (_ BitVec 32))) )
))
(declare-fun lt!18184 () array!2883)

(declare-datatypes ((V!2281 0))(
  ( (V!2282 (val!974 Int)) )
))
(declare-fun lt!18185 () V!2281)

(declare-datatypes ((tuple2!1606 0))(
  ( (tuple2!1607 (_1!813 (_ BitVec 64)) (_2!813 V!2281)) )
))
(declare-datatypes ((List!1192 0))(
  ( (Nil!1189) (Cons!1188 (h!1765 tuple2!1606) (t!4177 List!1192)) )
))
(declare-datatypes ((ListLongMap!1187 0))(
  ( (ListLongMap!1188 (toList!609 List!1192)) )
))
(declare-fun lt!18187 () ListLongMap!1187)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!688 0))(
  ( (ValueCellFull!688 (v!2063 V!2281)) (EmptyCell!688) )
))
(declare-datatypes ((array!2885 0))(
  ( (array!2886 (arr!1386 (Array (_ BitVec 32) ValueCell!688)) (size!1571 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!356 0))(
  ( (LongMapFixedSize!357 (defaultEntry!1871 Int) (mask!5412 (_ BitVec 32)) (extraKeys!1762 (_ BitVec 32)) (zeroValue!1789 V!2281) (minValue!1789 V!2281) (_size!227 (_ BitVec 32)) (_keys!3420 array!2883) (_values!1854 array!2885) (_vacant!227 (_ BitVec 32))) )
))
(declare-fun map!817 (LongMapFixedSize!356) ListLongMap!1187)

(assert (=> b!42976 (= lt!18187 (map!817 (LongMapFixedSize!357 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18185 lt!18185 #b00000000000000000000000000000000 lt!18184 (array!2886 ((as const (Array (_ BitVec 32) ValueCell!688)) EmptyCell!688) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1193 0))(
  ( (Nil!1190) (Cons!1189 (h!1766 (_ BitVec 64)) (t!4178 List!1193)) )
))
(declare-fun arrayNoDuplicates!0 (array!2883 (_ BitVec 32) List!1193) Bool)

(assert (=> b!42976 (arrayNoDuplicates!0 lt!18184 #b00000000000000000000000000000000 Nil!1190)))

(declare-datatypes ((Unit!1179 0))(
  ( (Unit!1180) )
))
(declare-fun lt!18186 () Unit!1179)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2883 (_ BitVec 32) (_ BitVec 32) List!1193) Unit!1179)

(assert (=> b!42976 (= lt!18186 (lemmaArrayNoDuplicatesInAll0Array!0 lt!18184 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1190))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2883 (_ BitVec 32)) Bool)

(assert (=> b!42976 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18184 mask!853)))

(declare-fun lt!18183 () Unit!1179)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2883 (_ BitVec 32) (_ BitVec 32)) Unit!1179)

(assert (=> b!42976 (= lt!18183 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18184 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2883 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42976 (= (arrayCountValidKeys!0 lt!18184 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18182 () Unit!1179)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2883 (_ BitVec 32) (_ BitVec 32)) Unit!1179)

(assert (=> b!42976 (= lt!18182 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18184 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42976 (= lt!18184 (array!2884 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!249 (Int (_ BitVec 64)) V!2281)

(assert (=> b!42976 (= lt!18185 (dynLambda!249 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6452 res!25522) b!42976))

(declare-fun b_lambda!2243 () Bool)

(assert (=> (not b_lambda!2243) (not b!42976)))

(declare-fun t!4176 () Bool)

(declare-fun tb!971 () Bool)

(assert (=> (and start!6452 (= defaultEntry!470 defaultEntry!470) t!4176) tb!971))

(declare-fun result!1685 () Bool)

(declare-fun tp_is_empty!1871 () Bool)

(assert (=> tb!971 (= result!1685 tp_is_empty!1871)))

(assert (=> b!42976 t!4176))

(declare-fun b_and!2623 () Bool)

(assert (= b_and!2621 (and (=> t!4176 result!1685) b_and!2623)))

(declare-fun m!36767 () Bool)

(assert (=> start!6452 m!36767))

(declare-fun m!36769 () Bool)

(assert (=> b!42976 m!36769))

(declare-fun m!36771 () Bool)

(assert (=> b!42976 m!36771))

(declare-fun m!36773 () Bool)

(assert (=> b!42976 m!36773))

(declare-fun m!36775 () Bool)

(assert (=> b!42976 m!36775))

(declare-fun m!36777 () Bool)

(assert (=> b!42976 m!36777))

(declare-fun m!36779 () Bool)

(assert (=> b!42976 m!36779))

(declare-fun m!36781 () Bool)

(assert (=> b!42976 m!36781))

(declare-fun m!36783 () Bool)

(assert (=> b!42976 m!36783))

(push 1)

(assert (not b_lambda!2243))

(assert (not start!6452))

(assert b_and!2623)

(assert (not b!42976))

(assert tp_is_empty!1871)

(assert (not b_next!1481))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2623)

(assert (not b_next!1481))

