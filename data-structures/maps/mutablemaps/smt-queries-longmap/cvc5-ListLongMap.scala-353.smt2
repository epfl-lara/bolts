; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!6466 () Bool)

(assert start!6466)

(declare-fun b_free!1495 () Bool)

(declare-fun b_next!1495 () Bool)

(assert (=> start!6466 (= b_free!1495 (not b_next!1495))))

(declare-fun tp!5930 () Bool)

(declare-fun b_and!2649 () Bool)

(assert (=> start!6466 (= tp!5930 b_and!2649)))

(declare-fun res!25543 () Bool)

(declare-fun e!27267 () Bool)

(assert (=> start!6466 (=> (not res!25543) (not e!27267))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6466 (= res!25543 (validMask!0 mask!853))))

(assert (=> start!6466 e!27267))

(assert (=> start!6466 true))

(assert (=> start!6466 tp!5930))

(declare-fun b!43011 () Bool)

(assert (=> b!43011 (= e!27267 (not true))))

(declare-datatypes ((array!2911 0))(
  ( (array!2912 (arr!1399 (Array (_ BitVec 32) (_ BitVec 64))) (size!1584 (_ BitVec 32))) )
))
(declare-fun lt!18311 () array!2911)

(declare-datatypes ((V!2301 0))(
  ( (V!2302 (val!981 Int)) )
))
(declare-datatypes ((tuple2!1620 0))(
  ( (tuple2!1621 (_1!820 (_ BitVec 64)) (_2!820 V!2301)) )
))
(declare-datatypes ((List!1206 0))(
  ( (Nil!1203) (Cons!1202 (h!1779 tuple2!1620) (t!4205 List!1206)) )
))
(declare-datatypes ((ListLongMap!1201 0))(
  ( (ListLongMap!1202 (toList!616 List!1206)) )
))
(declare-fun lt!18308 () ListLongMap!1201)

(declare-fun lt!18310 () V!2301)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!695 0))(
  ( (ValueCellFull!695 (v!2070 V!2301)) (EmptyCell!695) )
))
(declare-datatypes ((array!2913 0))(
  ( (array!2914 (arr!1400 (Array (_ BitVec 32) ValueCell!695)) (size!1585 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!370 0))(
  ( (LongMapFixedSize!371 (defaultEntry!1878 Int) (mask!5425 (_ BitVec 32)) (extraKeys!1769 (_ BitVec 32)) (zeroValue!1796 V!2301) (minValue!1796 V!2301) (_size!234 (_ BitVec 32)) (_keys!3427 array!2911) (_values!1861 array!2913) (_vacant!234 (_ BitVec 32))) )
))
(declare-fun map!830 (LongMapFixedSize!370) ListLongMap!1201)

(assert (=> b!43011 (= lt!18308 (map!830 (LongMapFixedSize!371 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18310 lt!18310 #b00000000000000000000000000000000 lt!18311 (array!2914 ((as const (Array (_ BitVec 32) ValueCell!695)) EmptyCell!695) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1207 0))(
  ( (Nil!1204) (Cons!1203 (h!1780 (_ BitVec 64)) (t!4206 List!1207)) )
))
(declare-fun arrayNoDuplicates!0 (array!2911 (_ BitVec 32) List!1207) Bool)

(assert (=> b!43011 (arrayNoDuplicates!0 lt!18311 #b00000000000000000000000000000000 Nil!1204)))

(declare-datatypes ((Unit!1193 0))(
  ( (Unit!1194) )
))
(declare-fun lt!18309 () Unit!1193)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2911 (_ BitVec 32) (_ BitVec 32) List!1207) Unit!1193)

(assert (=> b!43011 (= lt!18309 (lemmaArrayNoDuplicatesInAll0Array!0 lt!18311 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1204))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2911 (_ BitVec 32)) Bool)

(assert (=> b!43011 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18311 mask!853)))

(declare-fun lt!18312 () Unit!1193)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2911 (_ BitVec 32) (_ BitVec 32)) Unit!1193)

(assert (=> b!43011 (= lt!18312 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18311 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2911 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!43011 (= (arrayCountValidKeys!0 lt!18311 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18313 () Unit!1193)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2911 (_ BitVec 32) (_ BitVec 32)) Unit!1193)

(assert (=> b!43011 (= lt!18313 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18311 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!43011 (= lt!18311 (array!2912 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!256 (Int (_ BitVec 64)) V!2301)

(assert (=> b!43011 (= lt!18310 (dynLambda!256 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6466 res!25543) b!43011))

(declare-fun b_lambda!2257 () Bool)

(assert (=> (not b_lambda!2257) (not b!43011)))

(declare-fun t!4204 () Bool)

(declare-fun tb!985 () Bool)

(assert (=> (and start!6466 (= defaultEntry!470 defaultEntry!470) t!4204) tb!985))

(declare-fun result!1713 () Bool)

(declare-fun tp_is_empty!1885 () Bool)

(assert (=> tb!985 (= result!1713 tp_is_empty!1885)))

(assert (=> b!43011 t!4204))

(declare-fun b_and!2651 () Bool)

(assert (= b_and!2649 (and (=> t!4204 result!1713) b_and!2651)))

(declare-fun m!36893 () Bool)

(assert (=> start!6466 m!36893))

(declare-fun m!36895 () Bool)

(assert (=> b!43011 m!36895))

(declare-fun m!36897 () Bool)

(assert (=> b!43011 m!36897))

(declare-fun m!36899 () Bool)

(assert (=> b!43011 m!36899))

(declare-fun m!36901 () Bool)

(assert (=> b!43011 m!36901))

(declare-fun m!36903 () Bool)

(assert (=> b!43011 m!36903))

(declare-fun m!36905 () Bool)

(assert (=> b!43011 m!36905))

(declare-fun m!36907 () Bool)

(assert (=> b!43011 m!36907))

(declare-fun m!36909 () Bool)

(assert (=> b!43011 m!36909))

(push 1)

(assert b_and!2651)

(assert tp_is_empty!1885)

(assert (not b_next!1495))

(assert (not start!6466))

(assert (not b_lambda!2257))

(assert (not b!43011))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2651)

(assert (not b_next!1495))

(check-sat)

(pop 1)

