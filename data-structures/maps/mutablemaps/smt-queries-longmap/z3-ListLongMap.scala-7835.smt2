; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97792 () Bool)

(assert start!97792)

(declare-fun b_free!23457 () Bool)

(declare-fun b_next!23457 () Bool)

(assert (=> start!97792 (= b_free!23457 (not b_next!23457))))

(declare-fun tp!83075 () Bool)

(declare-fun b_and!37753 () Bool)

(assert (=> start!97792 (= tp!83075 b_and!37753)))

(declare-fun b!1117986 () Bool)

(declare-fun e!636864 () Bool)

(declare-fun tp_is_empty!27987 () Bool)

(assert (=> b!1117986 (= e!636864 tp_is_empty!27987)))

(declare-fun b!1117987 () Bool)

(declare-fun e!636862 () Bool)

(assert (=> b!1117987 (= e!636862 true)))

(declare-datatypes ((V!42443 0))(
  ( (V!42444 (val!14050 Int)) )
))
(declare-fun zeroValue!944 () V!42443)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17676 0))(
  ( (tuple2!17677 (_1!8848 (_ BitVec 64)) (_2!8848 V!42443)) )
))
(declare-datatypes ((List!24510 0))(
  ( (Nil!24507) (Cons!24506 (h!25715 tuple2!17676) (t!34998 List!24510)) )
))
(declare-datatypes ((ListLongMap!15657 0))(
  ( (ListLongMap!15658 (toList!7844 List!24510)) )
))
(declare-fun lt!497380 () ListLongMap!15657)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13284 0))(
  ( (ValueCellFull!13284 (v!16684 V!42443)) (EmptyCell!13284) )
))
(declare-datatypes ((array!72804 0))(
  ( (array!72805 (arr!35051 (Array (_ BitVec 32) ValueCell!13284)) (size!35588 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!72804)

(declare-fun minValue!944 () V!42443)

(declare-datatypes ((array!72806 0))(
  ( (array!72807 (arr!35052 (Array (_ BitVec 32) (_ BitVec 64))) (size!35589 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!72806)

(declare-fun getCurrentListMapNoExtraKeys!4305 (array!72806 array!72804 (_ BitVec 32) (_ BitVec 32) V!42443 V!42443 (_ BitVec 32) Int) ListLongMap!15657)

(assert (=> b!1117987 (= lt!497380 (getCurrentListMapNoExtraKeys!4305 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!43798 () Bool)

(declare-fun mapRes!43798 () Bool)

(declare-fun tp!83076 () Bool)

(declare-fun e!636861 () Bool)

(assert (=> mapNonEmpty!43798 (= mapRes!43798 (and tp!83076 e!636861))))

(declare-fun mapKey!43798 () (_ BitVec 32))

(declare-fun mapValue!43798 () ValueCell!13284)

(declare-fun mapRest!43798 () (Array (_ BitVec 32) ValueCell!13284))

(assert (=> mapNonEmpty!43798 (= (arr!35051 _values!996) (store mapRest!43798 mapKey!43798 mapValue!43798))))

(declare-fun b!1117988 () Bool)

(declare-fun res!746723 () Bool)

(declare-fun e!636865 () Bool)

(assert (=> b!1117988 (=> (not res!746723) (not e!636865))))

(declare-datatypes ((List!24511 0))(
  ( (Nil!24508) (Cons!24507 (h!25716 (_ BitVec 64)) (t!34999 List!24511)) )
))
(declare-fun arrayNoDuplicates!0 (array!72806 (_ BitVec 32) List!24511) Bool)

(assert (=> b!1117988 (= res!746723 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24508))))

(declare-fun b!1117989 () Bool)

(declare-fun e!636860 () Bool)

(assert (=> b!1117989 (= e!636860 (and e!636864 mapRes!43798))))

(declare-fun condMapEmpty!43798 () Bool)

(declare-fun mapDefault!43798 () ValueCell!13284)

(assert (=> b!1117989 (= condMapEmpty!43798 (= (arr!35051 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13284)) mapDefault!43798)))))

(declare-fun b!1117990 () Bool)

(declare-fun res!746722 () Bool)

(assert (=> b!1117990 (=> (not res!746722) (not e!636865))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1117990 (= res!746722 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35589 _keys!1208))))))

(declare-fun b!1117991 () Bool)

(declare-fun res!746724 () Bool)

(assert (=> b!1117991 (=> (not res!746724) (not e!636865))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1117991 (= res!746724 (validMask!0 mask!1564))))

(declare-fun b!1117992 () Bool)

(declare-fun res!746715 () Bool)

(assert (=> b!1117992 (=> (not res!746715) (not e!636865))))

(assert (=> b!1117992 (= res!746715 (and (= (size!35588 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35589 _keys!1208) (size!35588 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1117993 () Bool)

(declare-fun res!746716 () Bool)

(assert (=> b!1117993 (=> (not res!746716) (not e!636865))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1117993 (= res!746716 (validKeyInArray!0 k0!934))))

(declare-fun b!1117994 () Bool)

(assert (=> b!1117994 (= e!636861 tp_is_empty!27987)))

(declare-fun b!1117995 () Bool)

(declare-fun res!746717 () Bool)

(assert (=> b!1117995 (=> (not res!746717) (not e!636865))))

(assert (=> b!1117995 (= res!746717 (= (select (arr!35052 _keys!1208) i!673) k0!934))))

(declare-fun b!1117996 () Bool)

(declare-fun e!636863 () Bool)

(assert (=> b!1117996 (= e!636865 e!636863)))

(declare-fun res!746719 () Bool)

(assert (=> b!1117996 (=> (not res!746719) (not e!636863))))

(declare-fun lt!497382 () array!72806)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!72806 (_ BitVec 32)) Bool)

(assert (=> b!1117996 (= res!746719 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!497382 mask!1564))))

(assert (=> b!1117996 (= lt!497382 (array!72807 (store (arr!35052 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35589 _keys!1208)))))

(declare-fun b!1117997 () Bool)

(declare-fun res!746720 () Bool)

(assert (=> b!1117997 (=> (not res!746720) (not e!636865))))

(assert (=> b!1117997 (= res!746720 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1117998 () Bool)

(assert (=> b!1117998 (= e!636863 (not e!636862))))

(declare-fun res!746721 () Bool)

(assert (=> b!1117998 (=> res!746721 e!636862)))

(assert (=> b!1117998 (= res!746721 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!72806 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1117998 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36603 0))(
  ( (Unit!36604) )
))
(declare-fun lt!497381 () Unit!36603)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!72806 (_ BitVec 64) (_ BitVec 32)) Unit!36603)

(assert (=> b!1117998 (= lt!497381 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1117999 () Bool)

(declare-fun res!746718 () Bool)

(assert (=> b!1117999 (=> (not res!746718) (not e!636863))))

(assert (=> b!1117999 (= res!746718 (arrayNoDuplicates!0 lt!497382 #b00000000000000000000000000000000 Nil!24508))))

(declare-fun res!746714 () Bool)

(assert (=> start!97792 (=> (not res!746714) (not e!636865))))

(assert (=> start!97792 (= res!746714 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35589 _keys!1208))))))

(assert (=> start!97792 e!636865))

(assert (=> start!97792 tp_is_empty!27987))

(declare-fun array_inv!26796 (array!72806) Bool)

(assert (=> start!97792 (array_inv!26796 _keys!1208)))

(assert (=> start!97792 true))

(assert (=> start!97792 tp!83075))

(declare-fun array_inv!26797 (array!72804) Bool)

(assert (=> start!97792 (and (array_inv!26797 _values!996) e!636860)))

(declare-fun mapIsEmpty!43798 () Bool)

(assert (=> mapIsEmpty!43798 mapRes!43798))

(assert (= (and start!97792 res!746714) b!1117991))

(assert (= (and b!1117991 res!746724) b!1117992))

(assert (= (and b!1117992 res!746715) b!1117997))

(assert (= (and b!1117997 res!746720) b!1117988))

(assert (= (and b!1117988 res!746723) b!1117990))

(assert (= (and b!1117990 res!746722) b!1117993))

(assert (= (and b!1117993 res!746716) b!1117995))

(assert (= (and b!1117995 res!746717) b!1117996))

(assert (= (and b!1117996 res!746719) b!1117999))

(assert (= (and b!1117999 res!746718) b!1117998))

(assert (= (and b!1117998 (not res!746721)) b!1117987))

(assert (= (and b!1117989 condMapEmpty!43798) mapIsEmpty!43798))

(assert (= (and b!1117989 (not condMapEmpty!43798)) mapNonEmpty!43798))

(get-info :version)

(assert (= (and mapNonEmpty!43798 ((_ is ValueCellFull!13284) mapValue!43798)) b!1117994))

(assert (= (and b!1117989 ((_ is ValueCellFull!13284) mapDefault!43798)) b!1117986))

(assert (= start!97792 b!1117989))

(declare-fun m!1033781 () Bool)

(assert (=> b!1117993 m!1033781))

(declare-fun m!1033783 () Bool)

(assert (=> b!1117998 m!1033783))

(declare-fun m!1033785 () Bool)

(assert (=> b!1117998 m!1033785))

(declare-fun m!1033787 () Bool)

(assert (=> b!1117996 m!1033787))

(declare-fun m!1033789 () Bool)

(assert (=> b!1117996 m!1033789))

(declare-fun m!1033791 () Bool)

(assert (=> b!1117987 m!1033791))

(declare-fun m!1033793 () Bool)

(assert (=> b!1117999 m!1033793))

(declare-fun m!1033795 () Bool)

(assert (=> b!1117988 m!1033795))

(declare-fun m!1033797 () Bool)

(assert (=> b!1117995 m!1033797))

(declare-fun m!1033799 () Bool)

(assert (=> b!1117997 m!1033799))

(declare-fun m!1033801 () Bool)

(assert (=> mapNonEmpty!43798 m!1033801))

(declare-fun m!1033803 () Bool)

(assert (=> b!1117991 m!1033803))

(declare-fun m!1033805 () Bool)

(assert (=> start!97792 m!1033805))

(declare-fun m!1033807 () Bool)

(assert (=> start!97792 m!1033807))

(check-sat (not b!1117998) (not b!1117991) (not b!1117987) (not b!1117997) (not start!97792) tp_is_empty!27987 (not b!1117988) (not mapNonEmpty!43798) (not b!1117999) b_and!37753 (not b!1117996) (not b_next!23457) (not b!1117993))
(check-sat b_and!37753 (not b_next!23457))
