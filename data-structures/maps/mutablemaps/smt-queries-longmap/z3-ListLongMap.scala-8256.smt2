; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100522 () Bool)

(assert start!100522)

(declare-fun b_free!25809 () Bool)

(declare-fun b_next!25809 () Bool)

(assert (=> start!100522 (= b_free!25809 (not b_next!25809))))

(declare-fun tp!90418 () Bool)

(declare-fun b_and!42519 () Bool)

(assert (=> start!100522 (= tp!90418 b_and!42519)))

(declare-fun b!1200136 () Bool)

(declare-fun res!798977 () Bool)

(declare-fun e!681615 () Bool)

(assert (=> b!1200136 (=> (not res!798977) (not e!681615))))

(declare-datatypes ((array!77780 0))(
  ( (array!77781 (arr!37531 (Array (_ BitVec 32) (_ BitVec 64))) (size!38068 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77780)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1200136 (= res!798977 (= (select (arr!37531 _keys!1208) i!673) k0!934))))

(declare-fun b!1200137 () Bool)

(declare-fun e!681614 () Bool)

(assert (=> b!1200137 (= e!681615 e!681614)))

(declare-fun res!798981 () Bool)

(assert (=> b!1200137 (=> (not res!798981) (not e!681614))))

(declare-fun lt!543925 () array!77780)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77780 (_ BitVec 32)) Bool)

(assert (=> b!1200137 (= res!798981 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543925 mask!1564))))

(assert (=> b!1200137 (= lt!543925 (array!77781 (store (arr!37531 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38068 _keys!1208)))))

(declare-fun b!1200138 () Bool)

(declare-fun e!681610 () Bool)

(declare-fun tp_is_empty!30513 () Bool)

(assert (=> b!1200138 (= e!681610 tp_is_empty!30513)))

(declare-fun b!1200139 () Bool)

(declare-fun e!681613 () Bool)

(assert (=> b!1200139 (= e!681614 (not e!681613))))

(declare-fun res!798973 () Bool)

(assert (=> b!1200139 (=> res!798973 e!681613)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1200139 (= res!798973 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77780 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1200139 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39722 0))(
  ( (Unit!39723) )
))
(declare-fun lt!543923 () Unit!39722)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77780 (_ BitVec 64) (_ BitVec 32)) Unit!39722)

(assert (=> b!1200139 (= lt!543923 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1200140 () Bool)

(assert (=> b!1200140 (= e!681613 true)))

(declare-datatypes ((V!45811 0))(
  ( (V!45812 (val!15313 Int)) )
))
(declare-fun zeroValue!944 () V!45811)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!14547 0))(
  ( (ValueCellFull!14547 (v!17952 V!45811)) (EmptyCell!14547) )
))
(declare-datatypes ((array!77782 0))(
  ( (array!77783 (arr!37532 (Array (_ BitVec 32) ValueCell!14547)) (size!38069 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77782)

(declare-fun minValue!944 () V!45811)

(declare-datatypes ((tuple2!19742 0))(
  ( (tuple2!19743 (_1!9881 (_ BitVec 64)) (_2!9881 V!45811)) )
))
(declare-datatypes ((List!26575 0))(
  ( (Nil!26572) (Cons!26571 (h!27780 tuple2!19742) (t!39371 List!26575)) )
))
(declare-datatypes ((ListLongMap!17723 0))(
  ( (ListLongMap!17724 (toList!8877 List!26575)) )
))
(declare-fun lt!543924 () ListLongMap!17723)

(declare-fun getCurrentListMapNoExtraKeys!5290 (array!77780 array!77782 (_ BitVec 32) (_ BitVec 32) V!45811 V!45811 (_ BitVec 32) Int) ListLongMap!17723)

(declare-fun dynLambda!3221 (Int (_ BitVec 64)) V!45811)

(assert (=> b!1200140 (= lt!543924 (getCurrentListMapNoExtraKeys!5290 lt!543925 (array!77783 (store (arr!37532 _values!996) i!673 (ValueCellFull!14547 (dynLambda!3221 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38069 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543922 () ListLongMap!17723)

(assert (=> b!1200140 (= lt!543922 (getCurrentListMapNoExtraKeys!5290 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1200141 () Bool)

(declare-fun res!798976 () Bool)

(assert (=> b!1200141 (=> (not res!798976) (not e!681615))))

(declare-datatypes ((List!26576 0))(
  ( (Nil!26573) (Cons!26572 (h!27781 (_ BitVec 64)) (t!39372 List!26576)) )
))
(declare-fun arrayNoDuplicates!0 (array!77780 (_ BitVec 32) List!26576) Bool)

(assert (=> b!1200141 (= res!798976 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26573))))

(declare-fun b!1200142 () Bool)

(declare-fun res!798975 () Bool)

(assert (=> b!1200142 (=> (not res!798975) (not e!681614))))

(assert (=> b!1200142 (= res!798975 (arrayNoDuplicates!0 lt!543925 #b00000000000000000000000000000000 Nil!26573))))

(declare-fun res!798980 () Bool)

(assert (=> start!100522 (=> (not res!798980) (not e!681615))))

(assert (=> start!100522 (= res!798980 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38068 _keys!1208))))))

(assert (=> start!100522 e!681615))

(assert (=> start!100522 tp_is_empty!30513))

(declare-fun array_inv!28504 (array!77780) Bool)

(assert (=> start!100522 (array_inv!28504 _keys!1208)))

(assert (=> start!100522 true))

(assert (=> start!100522 tp!90418))

(declare-fun e!681612 () Bool)

(declare-fun array_inv!28505 (array!77782) Bool)

(assert (=> start!100522 (and (array_inv!28505 _values!996) e!681612)))

(declare-fun b!1200143 () Bool)

(declare-fun mapRes!47612 () Bool)

(assert (=> b!1200143 (= e!681612 (and e!681610 mapRes!47612))))

(declare-fun condMapEmpty!47612 () Bool)

(declare-fun mapDefault!47612 () ValueCell!14547)

(assert (=> b!1200143 (= condMapEmpty!47612 (= (arr!37532 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14547)) mapDefault!47612)))))

(declare-fun b!1200144 () Bool)

(declare-fun res!798978 () Bool)

(assert (=> b!1200144 (=> (not res!798978) (not e!681615))))

(assert (=> b!1200144 (= res!798978 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38068 _keys!1208))))))

(declare-fun b!1200145 () Bool)

(declare-fun res!798972 () Bool)

(assert (=> b!1200145 (=> (not res!798972) (not e!681615))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1200145 (= res!798972 (validKeyInArray!0 k0!934))))

(declare-fun b!1200146 () Bool)

(declare-fun res!798979 () Bool)

(assert (=> b!1200146 (=> (not res!798979) (not e!681615))))

(assert (=> b!1200146 (= res!798979 (and (= (size!38069 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38068 _keys!1208) (size!38069 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!47612 () Bool)

(declare-fun tp!90417 () Bool)

(declare-fun e!681616 () Bool)

(assert (=> mapNonEmpty!47612 (= mapRes!47612 (and tp!90417 e!681616))))

(declare-fun mapRest!47612 () (Array (_ BitVec 32) ValueCell!14547))

(declare-fun mapValue!47612 () ValueCell!14547)

(declare-fun mapKey!47612 () (_ BitVec 32))

(assert (=> mapNonEmpty!47612 (= (arr!37532 _values!996) (store mapRest!47612 mapKey!47612 mapValue!47612))))

(declare-fun b!1200147 () Bool)

(declare-fun res!798971 () Bool)

(assert (=> b!1200147 (=> (not res!798971) (not e!681615))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1200147 (= res!798971 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!47612 () Bool)

(assert (=> mapIsEmpty!47612 mapRes!47612))

(declare-fun b!1200148 () Bool)

(declare-fun res!798974 () Bool)

(assert (=> b!1200148 (=> (not res!798974) (not e!681615))))

(assert (=> b!1200148 (= res!798974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1200149 () Bool)

(assert (=> b!1200149 (= e!681616 tp_is_empty!30513)))

(assert (= (and start!100522 res!798980) b!1200147))

(assert (= (and b!1200147 res!798971) b!1200146))

(assert (= (and b!1200146 res!798979) b!1200148))

(assert (= (and b!1200148 res!798974) b!1200141))

(assert (= (and b!1200141 res!798976) b!1200144))

(assert (= (and b!1200144 res!798978) b!1200145))

(assert (= (and b!1200145 res!798972) b!1200136))

(assert (= (and b!1200136 res!798977) b!1200137))

(assert (= (and b!1200137 res!798981) b!1200142))

(assert (= (and b!1200142 res!798975) b!1200139))

(assert (= (and b!1200139 (not res!798973)) b!1200140))

(assert (= (and b!1200143 condMapEmpty!47612) mapIsEmpty!47612))

(assert (= (and b!1200143 (not condMapEmpty!47612)) mapNonEmpty!47612))

(get-info :version)

(assert (= (and mapNonEmpty!47612 ((_ is ValueCellFull!14547) mapValue!47612)) b!1200149))

(assert (= (and b!1200143 ((_ is ValueCellFull!14547) mapDefault!47612)) b!1200138))

(assert (= start!100522 b!1200143))

(declare-fun b_lambda!21023 () Bool)

(assert (=> (not b_lambda!21023) (not b!1200140)))

(declare-fun t!39370 () Bool)

(declare-fun tb!10617 () Bool)

(assert (=> (and start!100522 (= defaultEntry!1004 defaultEntry!1004) t!39370) tb!10617))

(declare-fun result!21803 () Bool)

(assert (=> tb!10617 (= result!21803 tp_is_empty!30513)))

(assert (=> b!1200140 t!39370))

(declare-fun b_and!42521 () Bool)

(assert (= b_and!42519 (and (=> t!39370 result!21803) b_and!42521)))

(declare-fun m!1106555 () Bool)

(assert (=> b!1200145 m!1106555))

(declare-fun m!1106557 () Bool)

(assert (=> b!1200142 m!1106557))

(declare-fun m!1106559 () Bool)

(assert (=> b!1200137 m!1106559))

(declare-fun m!1106561 () Bool)

(assert (=> b!1200137 m!1106561))

(declare-fun m!1106563 () Bool)

(assert (=> b!1200147 m!1106563))

(declare-fun m!1106565 () Bool)

(assert (=> mapNonEmpty!47612 m!1106565))

(declare-fun m!1106567 () Bool)

(assert (=> b!1200140 m!1106567))

(declare-fun m!1106569 () Bool)

(assert (=> b!1200140 m!1106569))

(declare-fun m!1106571 () Bool)

(assert (=> b!1200140 m!1106571))

(declare-fun m!1106573 () Bool)

(assert (=> b!1200140 m!1106573))

(declare-fun m!1106575 () Bool)

(assert (=> b!1200141 m!1106575))

(declare-fun m!1106577 () Bool)

(assert (=> b!1200139 m!1106577))

(declare-fun m!1106579 () Bool)

(assert (=> b!1200139 m!1106579))

(declare-fun m!1106581 () Bool)

(assert (=> start!100522 m!1106581))

(declare-fun m!1106583 () Bool)

(assert (=> start!100522 m!1106583))

(declare-fun m!1106585 () Bool)

(assert (=> b!1200136 m!1106585))

(declare-fun m!1106587 () Bool)

(assert (=> b!1200148 m!1106587))

(check-sat (not b_next!25809) (not b!1200145) (not b!1200147) (not mapNonEmpty!47612) (not b!1200140) (not b!1200139) b_and!42521 tp_is_empty!30513 (not b!1200141) (not b!1200137) (not b!1200142) (not b!1200148) (not b_lambda!21023) (not start!100522))
(check-sat b_and!42521 (not b_next!25809))
