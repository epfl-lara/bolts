; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97816 () Bool)

(assert start!97816)

(declare-fun b_free!23481 () Bool)

(declare-fun b_next!23481 () Bool)

(assert (=> start!97816 (= b_free!23481 (not b_next!23481))))

(declare-fun tp!83148 () Bool)

(declare-fun b_and!37777 () Bool)

(assert (=> start!97816 (= tp!83148 b_and!37777)))

(declare-fun b!1118490 () Bool)

(declare-fun e!637115 () Bool)

(declare-fun tp_is_empty!28011 () Bool)

(assert (=> b!1118490 (= e!637115 tp_is_empty!28011)))

(declare-fun b!1118491 () Bool)

(declare-fun res!747111 () Bool)

(declare-fun e!637116 () Bool)

(assert (=> b!1118491 (=> (not res!747111) (not e!637116))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1118491 (= res!747111 (validMask!0 mask!1564))))

(declare-fun b!1118492 () Bool)

(declare-fun e!637114 () Bool)

(assert (=> b!1118492 (= e!637114 true)))

(declare-datatypes ((V!42475 0))(
  ( (V!42476 (val!14062 Int)) )
))
(declare-fun zeroValue!944 () V!42475)

(declare-datatypes ((array!72852 0))(
  ( (array!72853 (arr!35075 (Array (_ BitVec 32) (_ BitVec 64))) (size!35612 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72852)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!17692 0))(
  ( (tuple2!17693 (_1!8856 (_ BitVec 64)) (_2!8856 V!42475)) )
))
(declare-datatypes ((List!24529 0))(
  ( (Nil!24526) (Cons!24525 (h!25734 tuple2!17692) (t!35017 List!24529)) )
))
(declare-datatypes ((ListLongMap!15673 0))(
  ( (ListLongMap!15674 (toList!7852 List!24529)) )
))
(declare-fun lt!497488 () ListLongMap!15673)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13296 0))(
  ( (ValueCellFull!13296 (v!16696 V!42475)) (EmptyCell!13296) )
))
(declare-datatypes ((array!72854 0))(
  ( (array!72855 (arr!35076 (Array (_ BitVec 32) ValueCell!13296)) (size!35613 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72854)

(declare-fun minValue!944 () V!42475)

(declare-fun getCurrentListMapNoExtraKeys!4313 (array!72852 array!72854 (_ BitVec 32) (_ BitVec 32) V!42475 V!42475 (_ BitVec 32) Int) ListLongMap!15673)

(assert (=> b!1118492 (= lt!497488 (getCurrentListMapNoExtraKeys!4313 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1118493 () Bool)

(declare-fun e!637118 () Bool)

(assert (=> b!1118493 (= e!637118 tp_is_empty!28011)))

(declare-fun b!1118494 () Bool)

(declare-fun res!747115 () Bool)

(assert (=> b!1118494 (=> (not res!747115) (not e!637116))))

(declare-datatypes ((List!24530 0))(
  ( (Nil!24527) (Cons!24526 (h!25735 (_ BitVec 64)) (t!35018 List!24530)) )
))
(declare-fun arrayNoDuplicates!0 (array!72852 (_ BitVec 32) List!24530) Bool)

(assert (=> b!1118494 (= res!747115 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24527))))

(declare-fun b!1118495 () Bool)

(declare-fun res!747118 () Bool)

(assert (=> b!1118495 (=> (not res!747118) (not e!637116))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1118495 (= res!747118 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35612 _keys!1208))))))

(declare-fun b!1118496 () Bool)

(declare-fun res!747117 () Bool)

(declare-fun e!637117 () Bool)

(assert (=> b!1118496 (=> (not res!747117) (not e!637117))))

(declare-fun lt!497489 () array!72852)

(assert (=> b!1118496 (= res!747117 (arrayNoDuplicates!0 lt!497489 #b00000000000000000000000000000000 Nil!24527))))

(declare-fun b!1118497 () Bool)

(declare-fun res!747120 () Bool)

(assert (=> b!1118497 (=> (not res!747120) (not e!637116))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1118497 (= res!747120 (= (select (arr!35075 _keys!1208) i!673) k0!934))))

(declare-fun b!1118498 () Bool)

(declare-fun res!747113 () Bool)

(assert (=> b!1118498 (=> (not res!747113) (not e!637116))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1118498 (= res!747113 (validKeyInArray!0 k0!934))))

(declare-fun b!1118499 () Bool)

(declare-fun e!637113 () Bool)

(declare-fun mapRes!43834 () Bool)

(assert (=> b!1118499 (= e!637113 (and e!637115 mapRes!43834))))

(declare-fun condMapEmpty!43834 () Bool)

(declare-fun mapDefault!43834 () ValueCell!13296)

(assert (=> b!1118499 (= condMapEmpty!43834 (= (arr!35076 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13296)) mapDefault!43834)))))

(declare-fun mapIsEmpty!43834 () Bool)

(assert (=> mapIsEmpty!43834 mapRes!43834))

(declare-fun b!1118500 () Bool)

(declare-fun res!747114 () Bool)

(assert (=> b!1118500 (=> (not res!747114) (not e!637116))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72852 (_ BitVec 32)) Bool)

(assert (=> b!1118500 (= res!747114 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!747119 () Bool)

(assert (=> start!97816 (=> (not res!747119) (not e!637116))))

(assert (=> start!97816 (= res!747119 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35612 _keys!1208))))))

(assert (=> start!97816 e!637116))

(assert (=> start!97816 tp_is_empty!28011))

(declare-fun array_inv!26814 (array!72852) Bool)

(assert (=> start!97816 (array_inv!26814 _keys!1208)))

(assert (=> start!97816 true))

(assert (=> start!97816 tp!83148))

(declare-fun array_inv!26815 (array!72854) Bool)

(assert (=> start!97816 (and (array_inv!26815 _values!996) e!637113)))

(declare-fun mapNonEmpty!43834 () Bool)

(declare-fun tp!83147 () Bool)

(assert (=> mapNonEmpty!43834 (= mapRes!43834 (and tp!83147 e!637118))))

(declare-fun mapKey!43834 () (_ BitVec 32))

(declare-fun mapValue!43834 () ValueCell!13296)

(declare-fun mapRest!43834 () (Array (_ BitVec 32) ValueCell!13296))

(assert (=> mapNonEmpty!43834 (= (arr!35076 _values!996) (store mapRest!43834 mapKey!43834 mapValue!43834))))

(declare-fun b!1118501 () Bool)

(assert (=> b!1118501 (= e!637117 (not e!637114))))

(declare-fun res!747110 () Bool)

(assert (=> b!1118501 (=> res!747110 e!637114)))

(assert (=> b!1118501 (= res!747110 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72852 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1118501 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36617 0))(
  ( (Unit!36618) )
))
(declare-fun lt!497490 () Unit!36617)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72852 (_ BitVec 64) (_ BitVec 32)) Unit!36617)

(assert (=> b!1118501 (= lt!497490 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1118502 () Bool)

(assert (=> b!1118502 (= e!637116 e!637117)))

(declare-fun res!747112 () Bool)

(assert (=> b!1118502 (=> (not res!747112) (not e!637117))))

(assert (=> b!1118502 (= res!747112 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497489 mask!1564))))

(assert (=> b!1118502 (= lt!497489 (array!72853 (store (arr!35075 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35612 _keys!1208)))))

(declare-fun b!1118503 () Bool)

(declare-fun res!747116 () Bool)

(assert (=> b!1118503 (=> (not res!747116) (not e!637116))))

(assert (=> b!1118503 (= res!747116 (and (= (size!35613 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35612 _keys!1208) (size!35613 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(assert (= (and start!97816 res!747119) b!1118491))

(assert (= (and b!1118491 res!747111) b!1118503))

(assert (= (and b!1118503 res!747116) b!1118500))

(assert (= (and b!1118500 res!747114) b!1118494))

(assert (= (and b!1118494 res!747115) b!1118495))

(assert (= (and b!1118495 res!747118) b!1118498))

(assert (= (and b!1118498 res!747113) b!1118497))

(assert (= (and b!1118497 res!747120) b!1118502))

(assert (= (and b!1118502 res!747112) b!1118496))

(assert (= (and b!1118496 res!747117) b!1118501))

(assert (= (and b!1118501 (not res!747110)) b!1118492))

(assert (= (and b!1118499 condMapEmpty!43834) mapIsEmpty!43834))

(assert (= (and b!1118499 (not condMapEmpty!43834)) mapNonEmpty!43834))

(get-info :version)

(assert (= (and mapNonEmpty!43834 ((_ is ValueCellFull!13296) mapValue!43834)) b!1118493))

(assert (= (and b!1118499 ((_ is ValueCellFull!13296) mapDefault!43834)) b!1118490))

(assert (= start!97816 b!1118499))

(declare-fun m!1034117 () Bool)

(assert (=> b!1118497 m!1034117))

(declare-fun m!1034119 () Bool)

(assert (=> b!1118494 m!1034119))

(declare-fun m!1034121 () Bool)

(assert (=> b!1118502 m!1034121))

(declare-fun m!1034123 () Bool)

(assert (=> b!1118502 m!1034123))

(declare-fun m!1034125 () Bool)

(assert (=> start!97816 m!1034125))

(declare-fun m!1034127 () Bool)

(assert (=> start!97816 m!1034127))

(declare-fun m!1034129 () Bool)

(assert (=> b!1118492 m!1034129))

(declare-fun m!1034131 () Bool)

(assert (=> b!1118498 m!1034131))

(declare-fun m!1034133 () Bool)

(assert (=> b!1118500 m!1034133))

(declare-fun m!1034135 () Bool)

(assert (=> b!1118496 m!1034135))

(declare-fun m!1034137 () Bool)

(assert (=> b!1118501 m!1034137))

(declare-fun m!1034139 () Bool)

(assert (=> b!1118501 m!1034139))

(declare-fun m!1034141 () Bool)

(assert (=> b!1118491 m!1034141))

(declare-fun m!1034143 () Bool)

(assert (=> mapNonEmpty!43834 m!1034143))

(check-sat (not b!1118502) (not b_next!23481) (not b!1118494) (not b!1118500) (not mapNonEmpty!43834) (not start!97816) tp_is_empty!28011 (not b!1118498) (not b!1118492) (not b!1118496) (not b!1118491) b_and!37777 (not b!1118501))
(check-sat b_and!37777 (not b_next!23481))
