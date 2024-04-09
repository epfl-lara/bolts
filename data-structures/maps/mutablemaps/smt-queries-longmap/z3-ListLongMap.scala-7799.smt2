; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97576 () Bool)

(assert start!97576)

(declare-fun b!1113742 () Bool)

(declare-fun e!634888 () Bool)

(declare-fun tp_is_empty!27771 () Bool)

(assert (=> b!1113742 (= e!634888 tp_is_empty!27771)))

(declare-fun b!1113743 () Bool)

(declare-fun res!743445 () Bool)

(declare-fun e!634884 () Bool)

(assert (=> b!1113743 (=> (not res!743445) (not e!634884))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1113743 (= res!743445 (validKeyInArray!0 k0!934))))

(declare-fun res!743451 () Bool)

(assert (=> start!97576 (=> (not res!743451) (not e!634884))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72394 0))(
  ( (array!72395 (arr!34846 (Array (_ BitVec 32) (_ BitVec 64))) (size!35383 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72394)

(assert (=> start!97576 (= res!743451 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35383 _keys!1208))))))

(assert (=> start!97576 e!634884))

(declare-fun array_inv!26656 (array!72394) Bool)

(assert (=> start!97576 (array_inv!26656 _keys!1208)))

(assert (=> start!97576 true))

(declare-datatypes ((V!42155 0))(
  ( (V!42156 (val!13942 Int)) )
))
(declare-datatypes ((ValueCell!13176 0))(
  ( (ValueCellFull!13176 (v!16576 V!42155)) (EmptyCell!13176) )
))
(declare-datatypes ((array!72396 0))(
  ( (array!72397 (arr!34847 (Array (_ BitVec 32) ValueCell!13176)) (size!35384 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72396)

(declare-fun e!634886 () Bool)

(declare-fun array_inv!26657 (array!72396) Bool)

(assert (=> start!97576 (and (array_inv!26657 _values!996) e!634886)))

(declare-fun b!1113744 () Bool)

(declare-fun e!634889 () Bool)

(assert (=> b!1113744 (= e!634889 (not true))))

(declare-fun arrayContainsKey!0 (array!72394 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1113744 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36459 0))(
  ( (Unit!36460) )
))
(declare-fun lt!496701 () Unit!36459)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72394 (_ BitVec 64) (_ BitVec 32)) Unit!36459)

(assert (=> b!1113744 (= lt!496701 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1113745 () Bool)

(declare-fun res!743447 () Bool)

(assert (=> b!1113745 (=> (not res!743447) (not e!634884))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1113745 (= res!743447 (and (= (size!35384 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35383 _keys!1208) (size!35384 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1113746 () Bool)

(declare-fun res!743450 () Bool)

(assert (=> b!1113746 (=> (not res!743450) (not e!634884))))

(assert (=> b!1113746 (= res!743450 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35383 _keys!1208))))))

(declare-fun b!1113747 () Bool)

(declare-fun res!743448 () Bool)

(assert (=> b!1113747 (=> (not res!743448) (not e!634884))))

(declare-datatypes ((List!24423 0))(
  ( (Nil!24420) (Cons!24419 (h!25628 (_ BitVec 64)) (t!34911 List!24423)) )
))
(declare-fun arrayNoDuplicates!0 (array!72394 (_ BitVec 32) List!24423) Bool)

(assert (=> b!1113747 (= res!743448 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24420))))

(declare-fun b!1113748 () Bool)

(declare-fun res!743443 () Bool)

(assert (=> b!1113748 (=> (not res!743443) (not e!634884))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1113748 (= res!743443 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!43474 () Bool)

(declare-fun mapRes!43474 () Bool)

(declare-fun tp!82719 () Bool)

(declare-fun e!634885 () Bool)

(assert (=> mapNonEmpty!43474 (= mapRes!43474 (and tp!82719 e!634885))))

(declare-fun mapRest!43474 () (Array (_ BitVec 32) ValueCell!13176))

(declare-fun mapKey!43474 () (_ BitVec 32))

(declare-fun mapValue!43474 () ValueCell!13176)

(assert (=> mapNonEmpty!43474 (= (arr!34847 _values!996) (store mapRest!43474 mapKey!43474 mapValue!43474))))

(declare-fun b!1113749 () Bool)

(assert (=> b!1113749 (= e!634884 e!634889)))

(declare-fun res!743446 () Bool)

(assert (=> b!1113749 (=> (not res!743446) (not e!634889))))

(declare-fun lt!496700 () array!72394)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72394 (_ BitVec 32)) Bool)

(assert (=> b!1113749 (= res!743446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!496700 mask!1564))))

(assert (=> b!1113749 (= lt!496700 (array!72395 (store (arr!34846 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35383 _keys!1208)))))

(declare-fun mapIsEmpty!43474 () Bool)

(assert (=> mapIsEmpty!43474 mapRes!43474))

(declare-fun b!1113750 () Bool)

(declare-fun res!743442 () Bool)

(assert (=> b!1113750 (=> (not res!743442) (not e!634884))))

(assert (=> b!1113750 (= res!743442 (= (select (arr!34846 _keys!1208) i!673) k0!934))))

(declare-fun b!1113751 () Bool)

(assert (=> b!1113751 (= e!634886 (and e!634888 mapRes!43474))))

(declare-fun condMapEmpty!43474 () Bool)

(declare-fun mapDefault!43474 () ValueCell!13176)

(assert (=> b!1113751 (= condMapEmpty!43474 (= (arr!34847 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13176)) mapDefault!43474)))))

(declare-fun b!1113752 () Bool)

(declare-fun res!743444 () Bool)

(assert (=> b!1113752 (=> (not res!743444) (not e!634884))))

(assert (=> b!1113752 (= res!743444 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1113753 () Bool)

(assert (=> b!1113753 (= e!634885 tp_is_empty!27771)))

(declare-fun b!1113754 () Bool)

(declare-fun res!743449 () Bool)

(assert (=> b!1113754 (=> (not res!743449) (not e!634889))))

(assert (=> b!1113754 (= res!743449 (arrayNoDuplicates!0 lt!496700 #b00000000000000000000000000000000 Nil!24420))))

(assert (= (and start!97576 res!743451) b!1113748))

(assert (= (and b!1113748 res!743443) b!1113745))

(assert (= (and b!1113745 res!743447) b!1113752))

(assert (= (and b!1113752 res!743444) b!1113747))

(assert (= (and b!1113747 res!743448) b!1113746))

(assert (= (and b!1113746 res!743450) b!1113743))

(assert (= (and b!1113743 res!743445) b!1113750))

(assert (= (and b!1113750 res!743442) b!1113749))

(assert (= (and b!1113749 res!743446) b!1113754))

(assert (= (and b!1113754 res!743449) b!1113744))

(assert (= (and b!1113751 condMapEmpty!43474) mapIsEmpty!43474))

(assert (= (and b!1113751 (not condMapEmpty!43474)) mapNonEmpty!43474))

(get-info :version)

(assert (= (and mapNonEmpty!43474 ((_ is ValueCellFull!13176) mapValue!43474)) b!1113753))

(assert (= (and b!1113751 ((_ is ValueCellFull!13176) mapDefault!43474)) b!1113742))

(assert (= start!97576 b!1113751))

(declare-fun m!1030953 () Bool)

(assert (=> b!1113749 m!1030953))

(declare-fun m!1030955 () Bool)

(assert (=> b!1113749 m!1030955))

(declare-fun m!1030957 () Bool)

(assert (=> b!1113747 m!1030957))

(declare-fun m!1030959 () Bool)

(assert (=> b!1113750 m!1030959))

(declare-fun m!1030961 () Bool)

(assert (=> mapNonEmpty!43474 m!1030961))

(declare-fun m!1030963 () Bool)

(assert (=> b!1113752 m!1030963))

(declare-fun m!1030965 () Bool)

(assert (=> b!1113754 m!1030965))

(declare-fun m!1030967 () Bool)

(assert (=> start!97576 m!1030967))

(declare-fun m!1030969 () Bool)

(assert (=> start!97576 m!1030969))

(declare-fun m!1030971 () Bool)

(assert (=> b!1113743 m!1030971))

(declare-fun m!1030973 () Bool)

(assert (=> b!1113748 m!1030973))

(declare-fun m!1030975 () Bool)

(assert (=> b!1113744 m!1030975))

(declare-fun m!1030977 () Bool)

(assert (=> b!1113744 m!1030977))

(check-sat (not b!1113744) (not b!1113747) (not b!1113752) (not b!1113749) (not mapNonEmpty!43474) tp_is_empty!27771 (not b!1113754) (not start!97576) (not b!1113743) (not b!1113748))
(check-sat)
