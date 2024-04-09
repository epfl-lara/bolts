; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97798 () Bool)

(assert start!97798)

(declare-fun b_free!23463 () Bool)

(declare-fun b_next!23463 () Bool)

(assert (=> start!97798 (= b_free!23463 (not b_next!23463))))

(declare-fun tp!83093 () Bool)

(declare-fun b_and!37759 () Bool)

(assert (=> start!97798 (= tp!83093 b_and!37759)))

(declare-fun b!1118112 () Bool)

(declare-fun res!746821 () Bool)

(declare-fun e!636924 () Bool)

(assert (=> b!1118112 (=> (not res!746821) (not e!636924))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1118112 (= res!746821 (validKeyInArray!0 k0!934))))

(declare-fun res!746815 () Bool)

(assert (=> start!97798 (=> (not res!746815) (not e!636924))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!72816 0))(
  ( (array!72817 (arr!35057 (Array (_ BitVec 32) (_ BitVec 64))) (size!35594 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72816)

(assert (=> start!97798 (= res!746815 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35594 _keys!1208))))))

(assert (=> start!97798 e!636924))

(declare-fun tp_is_empty!27993 () Bool)

(assert (=> start!97798 tp_is_empty!27993))

(declare-fun array_inv!26800 (array!72816) Bool)

(assert (=> start!97798 (array_inv!26800 _keys!1208)))

(assert (=> start!97798 true))

(assert (=> start!97798 tp!83093))

(declare-datatypes ((V!42451 0))(
  ( (V!42452 (val!14053 Int)) )
))
(declare-datatypes ((ValueCell!13287 0))(
  ( (ValueCellFull!13287 (v!16687 V!42451)) (EmptyCell!13287) )
))
(declare-datatypes ((array!72818 0))(
  ( (array!72819 (arr!35058 (Array (_ BitVec 32) ValueCell!13287)) (size!35595 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72818)

(declare-fun e!636923 () Bool)

(declare-fun array_inv!26801 (array!72818) Bool)

(assert (=> start!97798 (and (array_inv!26801 _values!996) e!636923)))

(declare-fun b!1118113 () Bool)

(declare-fun res!746819 () Bool)

(declare-fun e!636927 () Bool)

(assert (=> b!1118113 (=> (not res!746819) (not e!636927))))

(declare-fun lt!497408 () array!72816)

(declare-datatypes ((List!24514 0))(
  ( (Nil!24511) (Cons!24510 (h!25719 (_ BitVec 64)) (t!35002 List!24514)) )
))
(declare-fun arrayNoDuplicates!0 (array!72816 (_ BitVec 32) List!24514) Bool)

(assert (=> b!1118113 (= res!746819 (arrayNoDuplicates!0 lt!497408 #b00000000000000000000000000000000 Nil!24511))))

(declare-fun mapNonEmpty!43807 () Bool)

(declare-fun mapRes!43807 () Bool)

(declare-fun tp!83094 () Bool)

(declare-fun e!636929 () Bool)

(assert (=> mapNonEmpty!43807 (= mapRes!43807 (and tp!83094 e!636929))))

(declare-fun mapRest!43807 () (Array (_ BitVec 32) ValueCell!13287))

(declare-fun mapValue!43807 () ValueCell!13287)

(declare-fun mapKey!43807 () (_ BitVec 32))

(assert (=> mapNonEmpty!43807 (= (arr!35058 _values!996) (store mapRest!43807 mapKey!43807 mapValue!43807))))

(declare-fun b!1118114 () Bool)

(declare-fun res!746816 () Bool)

(assert (=> b!1118114 (=> (not res!746816) (not e!636924))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72816 (_ BitVec 32)) Bool)

(assert (=> b!1118114 (= res!746816 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1118115 () Bool)

(assert (=> b!1118115 (= e!636929 tp_is_empty!27993)))

(declare-fun b!1118116 () Bool)

(declare-fun e!636928 () Bool)

(assert (=> b!1118116 (= e!636928 true)))

(declare-fun zeroValue!944 () V!42451)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17680 0))(
  ( (tuple2!17681 (_1!8850 (_ BitVec 64)) (_2!8850 V!42451)) )
))
(declare-datatypes ((List!24515 0))(
  ( (Nil!24512) (Cons!24511 (h!25720 tuple2!17680) (t!35003 List!24515)) )
))
(declare-datatypes ((ListLongMap!15661 0))(
  ( (ListLongMap!15662 (toList!7846 List!24515)) )
))
(declare-fun lt!497409 () ListLongMap!15661)

(declare-fun minValue!944 () V!42451)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4307 (array!72816 array!72818 (_ BitVec 32) (_ BitVec 32) V!42451 V!42451 (_ BitVec 32) Int) ListLongMap!15661)

(assert (=> b!1118116 (= lt!497409 (getCurrentListMapNoExtraKeys!4307 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1118117 () Bool)

(declare-fun res!746820 () Bool)

(assert (=> b!1118117 (=> (not res!746820) (not e!636924))))

(assert (=> b!1118117 (= res!746820 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24511))))

(declare-fun b!1118118 () Bool)

(assert (=> b!1118118 (= e!636927 (not e!636928))))

(declare-fun res!746822 () Bool)

(assert (=> b!1118118 (=> res!746822 e!636928)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1118118 (= res!746822 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72816 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1118118 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36607 0))(
  ( (Unit!36608) )
))
(declare-fun lt!497407 () Unit!36607)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72816 (_ BitVec 64) (_ BitVec 32)) Unit!36607)

(assert (=> b!1118118 (= lt!497407 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1118119 () Bool)

(declare-fun e!636925 () Bool)

(assert (=> b!1118119 (= e!636923 (and e!636925 mapRes!43807))))

(declare-fun condMapEmpty!43807 () Bool)

(declare-fun mapDefault!43807 () ValueCell!13287)

(assert (=> b!1118119 (= condMapEmpty!43807 (= (arr!35058 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13287)) mapDefault!43807)))))

(declare-fun mapIsEmpty!43807 () Bool)

(assert (=> mapIsEmpty!43807 mapRes!43807))

(declare-fun b!1118120 () Bool)

(assert (=> b!1118120 (= e!636924 e!636927)))

(declare-fun res!746814 () Bool)

(assert (=> b!1118120 (=> (not res!746814) (not e!636927))))

(assert (=> b!1118120 (= res!746814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497408 mask!1564))))

(assert (=> b!1118120 (= lt!497408 (array!72817 (store (arr!35057 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35594 _keys!1208)))))

(declare-fun b!1118121 () Bool)

(declare-fun res!746813 () Bool)

(assert (=> b!1118121 (=> (not res!746813) (not e!636924))))

(assert (=> b!1118121 (= res!746813 (and (= (size!35595 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35594 _keys!1208) (size!35595 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1118122 () Bool)

(declare-fun res!746817 () Bool)

(assert (=> b!1118122 (=> (not res!746817) (not e!636924))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1118122 (= res!746817 (validMask!0 mask!1564))))

(declare-fun b!1118123 () Bool)

(assert (=> b!1118123 (= e!636925 tp_is_empty!27993)))

(declare-fun b!1118124 () Bool)

(declare-fun res!746818 () Bool)

(assert (=> b!1118124 (=> (not res!746818) (not e!636924))))

(assert (=> b!1118124 (= res!746818 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35594 _keys!1208))))))

(declare-fun b!1118125 () Bool)

(declare-fun res!746823 () Bool)

(assert (=> b!1118125 (=> (not res!746823) (not e!636924))))

(assert (=> b!1118125 (= res!746823 (= (select (arr!35057 _keys!1208) i!673) k0!934))))

(assert (= (and start!97798 res!746815) b!1118122))

(assert (= (and b!1118122 res!746817) b!1118121))

(assert (= (and b!1118121 res!746813) b!1118114))

(assert (= (and b!1118114 res!746816) b!1118117))

(assert (= (and b!1118117 res!746820) b!1118124))

(assert (= (and b!1118124 res!746818) b!1118112))

(assert (= (and b!1118112 res!746821) b!1118125))

(assert (= (and b!1118125 res!746823) b!1118120))

(assert (= (and b!1118120 res!746814) b!1118113))

(assert (= (and b!1118113 res!746819) b!1118118))

(assert (= (and b!1118118 (not res!746822)) b!1118116))

(assert (= (and b!1118119 condMapEmpty!43807) mapIsEmpty!43807))

(assert (= (and b!1118119 (not condMapEmpty!43807)) mapNonEmpty!43807))

(get-info :version)

(assert (= (and mapNonEmpty!43807 ((_ is ValueCellFull!13287) mapValue!43807)) b!1118115))

(assert (= (and b!1118119 ((_ is ValueCellFull!13287) mapDefault!43807)) b!1118123))

(assert (= start!97798 b!1118119))

(declare-fun m!1033865 () Bool)

(assert (=> b!1118125 m!1033865))

(declare-fun m!1033867 () Bool)

(assert (=> mapNonEmpty!43807 m!1033867))

(declare-fun m!1033869 () Bool)

(assert (=> b!1118113 m!1033869))

(declare-fun m!1033871 () Bool)

(assert (=> b!1118116 m!1033871))

(declare-fun m!1033873 () Bool)

(assert (=> b!1118122 m!1033873))

(declare-fun m!1033875 () Bool)

(assert (=> b!1118117 m!1033875))

(declare-fun m!1033877 () Bool)

(assert (=> b!1118114 m!1033877))

(declare-fun m!1033879 () Bool)

(assert (=> b!1118118 m!1033879))

(declare-fun m!1033881 () Bool)

(assert (=> b!1118118 m!1033881))

(declare-fun m!1033883 () Bool)

(assert (=> b!1118120 m!1033883))

(declare-fun m!1033885 () Bool)

(assert (=> b!1118120 m!1033885))

(declare-fun m!1033887 () Bool)

(assert (=> start!97798 m!1033887))

(declare-fun m!1033889 () Bool)

(assert (=> start!97798 m!1033889))

(declare-fun m!1033891 () Bool)

(assert (=> b!1118112 m!1033891))

(check-sat (not b!1118114) b_and!37759 (not b!1118118) (not b!1118117) (not b!1118116) (not b_next!23463) (not b!1118112) (not mapNonEmpty!43807) (not b!1118122) (not start!97798) (not b!1118120) (not b!1118113) tp_is_empty!27993)
(check-sat b_and!37759 (not b_next!23463))
