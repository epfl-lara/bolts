; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6450 () Bool)

(assert start!6450)

(declare-fun b_free!1479 () Bool)

(declare-fun b_next!1479 () Bool)

(assert (=> start!6450 (= b_free!1479 (not b_next!1479))))

(declare-fun tp!5906 () Bool)

(declare-fun b_and!2617 () Bool)

(assert (=> start!6450 (= tp!5906 b_and!2617)))

(declare-fun res!25519 () Bool)

(declare-fun e!27243 () Bool)

(assert (=> start!6450 (=> (not res!25519) (not e!27243))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6450 (= res!25519 (validMask!0 mask!853))))

(assert (=> start!6450 e!27243))

(assert (=> start!6450 true))

(assert (=> start!6450 tp!5906))

(declare-fun b!42971 () Bool)

(assert (=> b!42971 (= e!27243 (not true))))

(declare-datatypes ((V!2279 0))(
  ( (V!2280 (val!973 Int)) )
))
(declare-fun lt!18166 () V!2279)

(declare-datatypes ((tuple2!1604 0))(
  ( (tuple2!1605 (_1!812 (_ BitVec 64)) (_2!812 V!2279)) )
))
(declare-datatypes ((List!1190 0))(
  ( (Nil!1187) (Cons!1186 (h!1763 tuple2!1604) (t!4173 List!1190)) )
))
(declare-datatypes ((ListLongMap!1185 0))(
  ( (ListLongMap!1186 (toList!608 List!1190)) )
))
(declare-fun lt!18168 () ListLongMap!1185)

(declare-datatypes ((array!2879 0))(
  ( (array!2880 (arr!1383 (Array (_ BitVec 32) (_ BitVec 64))) (size!1568 (_ BitVec 32))) )
))
(declare-fun lt!18165 () array!2879)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((ValueCell!687 0))(
  ( (ValueCellFull!687 (v!2062 V!2279)) (EmptyCell!687) )
))
(declare-datatypes ((array!2881 0))(
  ( (array!2882 (arr!1384 (Array (_ BitVec 32) ValueCell!687)) (size!1569 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!354 0))(
  ( (LongMapFixedSize!355 (defaultEntry!1870 Int) (mask!5411 (_ BitVec 32)) (extraKeys!1761 (_ BitVec 32)) (zeroValue!1788 V!2279) (minValue!1788 V!2279) (_size!226 (_ BitVec 32)) (_keys!3419 array!2879) (_values!1853 array!2881) (_vacant!226 (_ BitVec 32))) )
))
(declare-fun map!816 (LongMapFixedSize!354) ListLongMap!1185)

(assert (=> b!42971 (= lt!18168 (map!816 (LongMapFixedSize!355 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18166 lt!18166 #b00000000000000000000000000000000 lt!18165 (array!2882 ((as const (Array (_ BitVec 32) ValueCell!687)) EmptyCell!687) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1191 0))(
  ( (Nil!1188) (Cons!1187 (h!1764 (_ BitVec 64)) (t!4174 List!1191)) )
))
(declare-fun arrayNoDuplicates!0 (array!2879 (_ BitVec 32) List!1191) Bool)

(assert (=> b!42971 (arrayNoDuplicates!0 lt!18165 #b00000000000000000000000000000000 Nil!1188)))

(declare-datatypes ((Unit!1177 0))(
  ( (Unit!1178) )
))
(declare-fun lt!18167 () Unit!1177)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2879 (_ BitVec 32) (_ BitVec 32) List!1191) Unit!1177)

(assert (=> b!42971 (= lt!18167 (lemmaArrayNoDuplicatesInAll0Array!0 lt!18165 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1188))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2879 (_ BitVec 32)) Bool)

(assert (=> b!42971 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18165 mask!853)))

(declare-fun lt!18169 () Unit!1177)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2879 (_ BitVec 32) (_ BitVec 32)) Unit!1177)

(assert (=> b!42971 (= lt!18169 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18165 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2879 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!42971 (= (arrayCountValidKeys!0 lt!18165 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18164 () Unit!1177)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2879 (_ BitVec 32) (_ BitVec 32)) Unit!1177)

(assert (=> b!42971 (= lt!18164 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18165 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!42971 (= lt!18165 (array!2880 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!248 (Int (_ BitVec 64)) V!2279)

(assert (=> b!42971 (= lt!18166 (dynLambda!248 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6450 res!25519) b!42971))

(declare-fun b_lambda!2241 () Bool)

(assert (=> (not b_lambda!2241) (not b!42971)))

(declare-fun t!4172 () Bool)

(declare-fun tb!969 () Bool)

(assert (=> (and start!6450 (= defaultEntry!470 defaultEntry!470) t!4172) tb!969))

(declare-fun result!1681 () Bool)

(declare-fun tp_is_empty!1869 () Bool)

(assert (=> tb!969 (= result!1681 tp_is_empty!1869)))

(assert (=> b!42971 t!4172))

(declare-fun b_and!2619 () Bool)

(assert (= b_and!2617 (and (=> t!4172 result!1681) b_and!2619)))

(declare-fun m!36749 () Bool)

(assert (=> start!6450 m!36749))

(declare-fun m!36751 () Bool)

(assert (=> b!42971 m!36751))

(declare-fun m!36753 () Bool)

(assert (=> b!42971 m!36753))

(declare-fun m!36755 () Bool)

(assert (=> b!42971 m!36755))

(declare-fun m!36757 () Bool)

(assert (=> b!42971 m!36757))

(declare-fun m!36759 () Bool)

(assert (=> b!42971 m!36759))

(declare-fun m!36761 () Bool)

(assert (=> b!42971 m!36761))

(declare-fun m!36763 () Bool)

(assert (=> b!42971 m!36763))

(declare-fun m!36765 () Bool)

(assert (=> b!42971 m!36765))

(check-sat (not b_lambda!2241) (not b_next!1479) b_and!2619 tp_is_empty!1869 (not b!42971) (not start!6450))
(check-sat b_and!2619 (not b_next!1479))
