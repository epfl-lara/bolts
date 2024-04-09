; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100804 () Bool)

(assert start!100804)

(declare-fun b_free!25939 () Bool)

(declare-fun b_next!25939 () Bool)

(assert (=> start!100804 (= b_free!25939 (not b_next!25939))))

(declare-fun tp!90820 () Bool)

(declare-fun b_and!42875 () Bool)

(assert (=> start!100804 (= tp!90820 b_and!42875)))

(declare-fun b!1205887 () Bool)

(declare-fun e!684846 () Bool)

(declare-fun tp_is_empty!30643 () Bool)

(assert (=> b!1205887 (= e!684846 tp_is_empty!30643)))

(declare-fun b!1205888 () Bool)

(declare-fun res!802117 () Bool)

(declare-fun e!684852 () Bool)

(assert (=> b!1205888 (=> (not res!802117) (not e!684852))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1205888 (= res!802117 (validMask!0 mask!1564))))

(declare-fun b!1205889 () Bool)

(declare-fun res!802108 () Bool)

(assert (=> b!1205889 (=> (not res!802108) (not e!684852))))

(declare-datatypes ((array!78042 0))(
  ( (array!78043 (arr!37658 (Array (_ BitVec 32) (_ BitVec 64))) (size!38195 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78042)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1205889 (= res!802108 (= (select (arr!37658 _keys!1208) i!673) k!934))))

(declare-fun b!1205890 () Bool)

(declare-datatypes ((Unit!39901 0))(
  ( (Unit!39902) )
))
(declare-fun e!684847 () Unit!39901)

(declare-fun Unit!39903 () Unit!39901)

(assert (=> b!1205890 (= e!684847 Unit!39903)))

(declare-fun b!1205891 () Bool)

(declare-fun e!684857 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!78042 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1205891 (= e!684857 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1205892 () Bool)

(declare-fun res!802103 () Bool)

(assert (=> b!1205892 (=> (not res!802103) (not e!684852))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1205892 (= res!802103 (validKeyInArray!0 k!934))))

(declare-fun res!802110 () Bool)

(assert (=> start!100804 (=> (not res!802110) (not e!684852))))

(assert (=> start!100804 (= res!802110 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38195 _keys!1208))))))

(assert (=> start!100804 e!684852))

(assert (=> start!100804 tp_is_empty!30643))

(declare-fun array_inv!28588 (array!78042) Bool)

(assert (=> start!100804 (array_inv!28588 _keys!1208)))

(assert (=> start!100804 true))

(assert (=> start!100804 tp!90820))

(declare-datatypes ((V!45985 0))(
  ( (V!45986 (val!15378 Int)) )
))
(declare-datatypes ((ValueCell!14612 0))(
  ( (ValueCellFull!14612 (v!18023 V!45985)) (EmptyCell!14612) )
))
(declare-datatypes ((array!78044 0))(
  ( (array!78045 (arr!37659 (Array (_ BitVec 32) ValueCell!14612)) (size!38196 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78044)

(declare-fun e!684849 () Bool)

(declare-fun array_inv!28589 (array!78044) Bool)

(assert (=> start!100804 (and (array_inv!28589 _values!996) e!684849)))

(declare-fun b!1205893 () Bool)

(declare-fun res!802109 () Bool)

(assert (=> b!1205893 (=> (not res!802109) (not e!684852))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1205893 (= res!802109 (and (= (size!38196 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38195 _keys!1208) (size!38196 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1205894 () Bool)

(declare-fun e!684854 () Bool)

(assert (=> b!1205894 (= e!684854 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1205895 () Bool)

(declare-fun e!684851 () Bool)

(assert (=> b!1205895 (= e!684852 e!684851)))

(declare-fun res!802113 () Bool)

(assert (=> b!1205895 (=> (not res!802113) (not e!684851))))

(declare-fun lt!546962 () array!78042)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78042 (_ BitVec 32)) Bool)

(assert (=> b!1205895 (= res!802113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!546962 mask!1564))))

(assert (=> b!1205895 (= lt!546962 (array!78043 (store (arr!37658 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38195 _keys!1208)))))

(declare-fun b!1205896 () Bool)

(declare-fun res!802111 () Bool)

(assert (=> b!1205896 (=> (not res!802111) (not e!684852))))

(assert (=> b!1205896 (= res!802111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1205897 () Bool)

(declare-fun e!684853 () Bool)

(declare-fun e!684850 () Bool)

(assert (=> b!1205897 (= e!684853 e!684850)))

(declare-fun res!802112 () Bool)

(assert (=> b!1205897 (=> res!802112 e!684850)))

(assert (=> b!1205897 (= res!802112 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45985)

(declare-fun lt!546965 () array!78044)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45985)

(declare-datatypes ((tuple2!19862 0))(
  ( (tuple2!19863 (_1!9941 (_ BitVec 64)) (_2!9941 V!45985)) )
))
(declare-datatypes ((List!26687 0))(
  ( (Nil!26684) (Cons!26683 (h!27892 tuple2!19862) (t!39613 List!26687)) )
))
(declare-datatypes ((ListLongMap!17843 0))(
  ( (ListLongMap!17844 (toList!8937 List!26687)) )
))
(declare-fun lt!546961 () ListLongMap!17843)

(declare-fun getCurrentListMapNoExtraKeys!5345 (array!78042 array!78044 (_ BitVec 32) (_ BitVec 32) V!45985 V!45985 (_ BitVec 32) Int) ListLongMap!17843)

(assert (=> b!1205897 (= lt!546961 (getCurrentListMapNoExtraKeys!5345 lt!546962 lt!546965 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3266 (Int (_ BitVec 64)) V!45985)

(assert (=> b!1205897 (= lt!546965 (array!78045 (store (arr!37659 _values!996) i!673 (ValueCellFull!14612 (dynLambda!3266 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38196 _values!996)))))

(declare-fun lt!546966 () ListLongMap!17843)

(assert (=> b!1205897 (= lt!546966 (getCurrentListMapNoExtraKeys!5345 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1205898 () Bool)

(declare-fun mapRes!47820 () Bool)

(assert (=> b!1205898 (= e!684849 (and e!684846 mapRes!47820))))

(declare-fun condMapEmpty!47820 () Bool)

(declare-fun mapDefault!47820 () ValueCell!14612)

