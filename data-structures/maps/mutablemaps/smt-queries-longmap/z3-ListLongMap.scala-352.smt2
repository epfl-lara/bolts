; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!6462 () Bool)

(assert start!6462)

(declare-fun b_free!1491 () Bool)

(declare-fun b_next!1491 () Bool)

(assert (=> start!6462 (= b_free!1491 (not b_next!1491))))

(declare-fun tp!5924 () Bool)

(declare-fun b_and!2641 () Bool)

(assert (=> start!6462 (= tp!5924 b_and!2641)))

(declare-fun res!25537 () Bool)

(declare-fun e!27261 () Bool)

(assert (=> start!6462 (=> (not res!25537) (not e!27261))))

(declare-fun mask!853 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!6462 (= res!25537 (validMask!0 mask!853))))

(assert (=> start!6462 e!27261))

(assert (=> start!6462 true))

(assert (=> start!6462 tp!5924))

(declare-fun b!43001 () Bool)

(assert (=> b!43001 (= e!27261 (not true))))

(declare-datatypes ((V!2295 0))(
  ( (V!2296 (val!979 Int)) )
))
(declare-datatypes ((tuple2!1616 0))(
  ( (tuple2!1617 (_1!818 (_ BitVec 64)) (_2!818 V!2295)) )
))
(declare-datatypes ((List!1202 0))(
  ( (Nil!1199) (Cons!1198 (h!1775 tuple2!1616) (t!4197 List!1202)) )
))
(declare-datatypes ((ListLongMap!1197 0))(
  ( (ListLongMap!1198 (toList!614 List!1202)) )
))
(declare-fun lt!18274 () ListLongMap!1197)

(declare-fun lt!18272 () V!2295)

(declare-fun defaultEntry!470 () Int)

(declare-datatypes ((array!2903 0))(
  ( (array!2904 (arr!1395 (Array (_ BitVec 32) (_ BitVec 64))) (size!1580 (_ BitVec 32))) )
))
(declare-fun lt!18277 () array!2903)

(declare-datatypes ((ValueCell!693 0))(
  ( (ValueCellFull!693 (v!2068 V!2295)) (EmptyCell!693) )
))
(declare-datatypes ((array!2905 0))(
  ( (array!2906 (arr!1396 (Array (_ BitVec 32) ValueCell!693)) (size!1581 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!366 0))(
  ( (LongMapFixedSize!367 (defaultEntry!1876 Int) (mask!5421 (_ BitVec 32)) (extraKeys!1767 (_ BitVec 32)) (zeroValue!1794 V!2295) (minValue!1794 V!2295) (_size!232 (_ BitVec 32)) (_keys!3425 array!2903) (_values!1859 array!2905) (_vacant!232 (_ BitVec 32))) )
))
(declare-fun map!826 (LongMapFixedSize!366) ListLongMap!1197)

(assert (=> b!43001 (= lt!18274 (map!826 (LongMapFixedSize!367 defaultEntry!470 mask!853 #b00000000000000000000000000000000 lt!18272 lt!18272 #b00000000000000000000000000000000 lt!18277 (array!2906 ((as const (Array (_ BitVec 32) ValueCell!693)) EmptyCell!693) (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))))

(declare-datatypes ((List!1203 0))(
  ( (Nil!1200) (Cons!1199 (h!1776 (_ BitVec 64)) (t!4198 List!1203)) )
))
(declare-fun arrayNoDuplicates!0 (array!2903 (_ BitVec 32) List!1203) Bool)

(assert (=> b!43001 (arrayNoDuplicates!0 lt!18277 #b00000000000000000000000000000000 Nil!1200)))

(declare-datatypes ((Unit!1189 0))(
  ( (Unit!1190) )
))
(declare-fun lt!18275 () Unit!1189)

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!2903 (_ BitVec 32) (_ BitVec 32) List!1203) Unit!1189)

(assert (=> b!43001 (= lt!18275 (lemmaArrayNoDuplicatesInAll0Array!0 lt!18277 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853) Nil!1200))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2903 (_ BitVec 32)) Bool)

(assert (=> b!43001 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!18277 mask!853)))

(declare-fun lt!18273 () Unit!1189)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!2903 (_ BitVec 32) (_ BitVec 32)) Unit!1189)

(assert (=> b!43001 (= lt!18273 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!18277 mask!853 #b00000000000000000000000000000000))))

(declare-fun arrayCountValidKeys!0 (array!2903 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!43001 (= (arrayCountValidKeys!0 lt!18277 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)) #b00000000000000000000000000000000)))

(declare-fun lt!18276 () Unit!1189)

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!2903 (_ BitVec 32) (_ BitVec 32)) Unit!1189)

(assert (=> b!43001 (= lt!18276 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!18277 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 mask!853)))))

(assert (=> b!43001 (= lt!18277 (array!2904 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd #b00000000000000000000000000000001 mask!853)))))

(declare-fun dynLambda!254 (Int (_ BitVec 64)) V!2295)

(assert (=> b!43001 (= lt!18272 (dynLambda!254 defaultEntry!470 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!6462 res!25537) b!43001))

(declare-fun b_lambda!2253 () Bool)

(assert (=> (not b_lambda!2253) (not b!43001)))

(declare-fun t!4196 () Bool)

(declare-fun tb!981 () Bool)

(assert (=> (and start!6462 (= defaultEntry!470 defaultEntry!470) t!4196) tb!981))

(declare-fun result!1705 () Bool)

(declare-fun tp_is_empty!1881 () Bool)

(assert (=> tb!981 (= result!1705 tp_is_empty!1881)))

(assert (=> b!43001 t!4196))

(declare-fun b_and!2643 () Bool)

(assert (= b_and!2641 (and (=> t!4196 result!1705) b_and!2643)))

(declare-fun m!36857 () Bool)

(assert (=> start!6462 m!36857))

(declare-fun m!36859 () Bool)

(assert (=> b!43001 m!36859))

(declare-fun m!36861 () Bool)

(assert (=> b!43001 m!36861))

(declare-fun m!36863 () Bool)

(assert (=> b!43001 m!36863))

(declare-fun m!36865 () Bool)

(assert (=> b!43001 m!36865))

(declare-fun m!36867 () Bool)

(assert (=> b!43001 m!36867))

(declare-fun m!36869 () Bool)

(assert (=> b!43001 m!36869))

(declare-fun m!36871 () Bool)

(assert (=> b!43001 m!36871))

(declare-fun m!36873 () Bool)

(assert (=> b!43001 m!36873))

(check-sat tp_is_empty!1881 (not b_next!1491) (not b_lambda!2253) (not start!6462) (not b!43001) b_and!2643)
(check-sat b_and!2643 (not b_next!1491))
