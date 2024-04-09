; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100468 () Bool)

(assert start!100468)

(declare-fun b_free!25755 () Bool)

(declare-fun b_next!25755 () Bool)

(assert (=> start!100468 (= b_free!25755 (not b_next!25755))))

(declare-fun tp!90256 () Bool)

(declare-fun b_and!42411 () Bool)

(assert (=> start!100468 (= tp!90256 b_and!42411)))

(declare-fun res!798083 () Bool)

(declare-fun e!681047 () Bool)

(assert (=> start!100468 (=> (not res!798083) (not e!681047))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!77676 0))(
  ( (array!77677 (arr!37479 (Array (_ BitVec 32) (_ BitVec 64))) (size!38016 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77676)

(assert (=> start!100468 (= res!798083 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38016 _keys!1208))))))

(assert (=> start!100468 e!681047))

(declare-fun tp_is_empty!30459 () Bool)

(assert (=> start!100468 tp_is_empty!30459))

(declare-fun array_inv!28468 (array!77676) Bool)

(assert (=> start!100468 (array_inv!28468 _keys!1208)))

(assert (=> start!100468 true))

(assert (=> start!100468 tp!90256))

(declare-datatypes ((V!45739 0))(
  ( (V!45740 (val!15286 Int)) )
))
(declare-datatypes ((ValueCell!14520 0))(
  ( (ValueCellFull!14520 (v!17925 V!45739)) (EmptyCell!14520) )
))
(declare-datatypes ((array!77678 0))(
  ( (array!77679 (arr!37480 (Array (_ BitVec 32) ValueCell!14520)) (size!38017 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77678)

(declare-fun e!681044 () Bool)

(declare-fun array_inv!28469 (array!77678) Bool)

(assert (=> start!100468 (and (array_inv!28469 _values!996) e!681044)))

(declare-fun mapNonEmpty!47531 () Bool)

(declare-fun mapRes!47531 () Bool)

(declare-fun tp!90255 () Bool)

(declare-fun e!681043 () Bool)

(assert (=> mapNonEmpty!47531 (= mapRes!47531 (and tp!90255 e!681043))))

(declare-fun mapKey!47531 () (_ BitVec 32))

(declare-fun mapRest!47531 () (Array (_ BitVec 32) ValueCell!14520))

(declare-fun mapValue!47531 () ValueCell!14520)

(assert (=> mapNonEmpty!47531 (= (arr!37480 _values!996) (store mapRest!47531 mapKey!47531 mapValue!47531))))

(declare-fun b!1198948 () Bool)

(assert (=> b!1198948 (= e!681043 tp_is_empty!30459)))

(declare-fun b!1198949 () Bool)

(declare-fun res!798088 () Bool)

(assert (=> b!1198949 (=> (not res!798088) (not e!681047))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1198949 (= res!798088 (= (select (arr!37479 _keys!1208) i!673) k0!934))))

(declare-fun b!1198950 () Bool)

(declare-fun res!798086 () Bool)

(declare-fun e!681045 () Bool)

(assert (=> b!1198950 (=> (not res!798086) (not e!681045))))

(declare-fun lt!543599 () array!77676)

(declare-datatypes ((List!26535 0))(
  ( (Nil!26532) (Cons!26531 (h!27740 (_ BitVec 64)) (t!39277 List!26535)) )
))
(declare-fun arrayNoDuplicates!0 (array!77676 (_ BitVec 32) List!26535) Bool)

(assert (=> b!1198950 (= res!798086 (arrayNoDuplicates!0 lt!543599 #b00000000000000000000000000000000 Nil!26532))))

(declare-fun b!1198951 () Bool)

(assert (=> b!1198951 (= e!681047 e!681045)))

(declare-fun res!798082 () Bool)

(assert (=> b!1198951 (=> (not res!798082) (not e!681045))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77676 (_ BitVec 32)) Bool)

(assert (=> b!1198951 (= res!798082 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543599 mask!1564))))

(assert (=> b!1198951 (= lt!543599 (array!77677 (store (arr!37479 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38016 _keys!1208)))))

(declare-fun b!1198952 () Bool)

(declare-fun res!798090 () Bool)

(assert (=> b!1198952 (=> (not res!798090) (not e!681047))))

(assert (=> b!1198952 (= res!798090 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38016 _keys!1208))))))

(declare-fun b!1198953 () Bool)

(declare-fun res!798087 () Bool)

(assert (=> b!1198953 (=> (not res!798087) (not e!681047))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1198953 (= res!798087 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!47531 () Bool)

(assert (=> mapIsEmpty!47531 mapRes!47531))

(declare-fun b!1198954 () Bool)

(declare-fun e!681046 () Bool)

(assert (=> b!1198954 (= e!681044 (and e!681046 mapRes!47531))))

(declare-fun condMapEmpty!47531 () Bool)

(declare-fun mapDefault!47531 () ValueCell!14520)

(assert (=> b!1198954 (= condMapEmpty!47531 (= (arr!37480 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14520)) mapDefault!47531)))))

(declare-fun b!1198955 () Bool)

(declare-fun res!798089 () Bool)

(assert (=> b!1198955 (=> (not res!798089) (not e!681047))))

(assert (=> b!1198955 (= res!798089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1198956 () Bool)

(declare-fun res!798085 () Bool)

(assert (=> b!1198956 (=> (not res!798085) (not e!681047))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1198956 (= res!798085 (and (= (size!38017 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38016 _keys!1208) (size!38017 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1198957 () Bool)

(declare-fun res!798080 () Bool)

(assert (=> b!1198957 (=> (not res!798080) (not e!681047))))

(assert (=> b!1198957 (= res!798080 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26532))))

(declare-fun b!1198958 () Bool)

(declare-fun res!798081 () Bool)

(assert (=> b!1198958 (=> (not res!798081) (not e!681047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1198958 (= res!798081 (validMask!0 mask!1564))))

(declare-fun b!1198959 () Bool)

(declare-fun e!681048 () Bool)

(assert (=> b!1198959 (= e!681045 (not e!681048))))

(declare-fun res!798084 () Bool)

(assert (=> b!1198959 (=> res!798084 e!681048)))

(assert (=> b!1198959 (= res!798084 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77676 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1198959 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39688 0))(
  ( (Unit!39689) )
))
(declare-fun lt!543598 () Unit!39688)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77676 (_ BitVec 64) (_ BitVec 32)) Unit!39688)

(assert (=> b!1198959 (= lt!543598 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1198960 () Bool)

(assert (=> b!1198960 (= e!681046 tp_is_empty!30459)))

(declare-fun b!1198961 () Bool)

(assert (=> b!1198961 (= e!681048 true)))

(declare-fun zeroValue!944 () V!45739)

(declare-fun minValue!944 () V!45739)

(declare-datatypes ((tuple2!19706 0))(
  ( (tuple2!19707 (_1!9863 (_ BitVec 64)) (_2!9863 V!45739)) )
))
(declare-datatypes ((List!26536 0))(
  ( (Nil!26533) (Cons!26532 (h!27741 tuple2!19706) (t!39278 List!26536)) )
))
(declare-datatypes ((ListLongMap!17687 0))(
  ( (ListLongMap!17688 (toList!8859 List!26536)) )
))
(declare-fun lt!543601 () ListLongMap!17687)

(declare-fun defaultEntry!1004 () Int)

(declare-fun getCurrentListMapNoExtraKeys!5272 (array!77676 array!77678 (_ BitVec 32) (_ BitVec 32) V!45739 V!45739 (_ BitVec 32) Int) ListLongMap!17687)

(declare-fun dynLambda!3203 (Int (_ BitVec 64)) V!45739)

(assert (=> b!1198961 (= lt!543601 (getCurrentListMapNoExtraKeys!5272 lt!543599 (array!77679 (store (arr!37480 _values!996) i!673 (ValueCellFull!14520 (dynLambda!3203 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38017 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543600 () ListLongMap!17687)

(assert (=> b!1198961 (= lt!543600 (getCurrentListMapNoExtraKeys!5272 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (= (and start!100468 res!798083) b!1198958))

(assert (= (and b!1198958 res!798081) b!1198956))

(assert (= (and b!1198956 res!798085) b!1198955))

(assert (= (and b!1198955 res!798089) b!1198957))

(assert (= (and b!1198957 res!798080) b!1198952))

(assert (= (and b!1198952 res!798090) b!1198953))

(assert (= (and b!1198953 res!798087) b!1198949))

(assert (= (and b!1198949 res!798088) b!1198951))

(assert (= (and b!1198951 res!798082) b!1198950))

(assert (= (and b!1198950 res!798086) b!1198959))

(assert (= (and b!1198959 (not res!798084)) b!1198961))

(assert (= (and b!1198954 condMapEmpty!47531) mapIsEmpty!47531))

(assert (= (and b!1198954 (not condMapEmpty!47531)) mapNonEmpty!47531))

(get-info :version)

(assert (= (and mapNonEmpty!47531 ((_ is ValueCellFull!14520) mapValue!47531)) b!1198948))

(assert (= (and b!1198954 ((_ is ValueCellFull!14520) mapDefault!47531)) b!1198960))

(assert (= start!100468 b!1198954))

(declare-fun b_lambda!20969 () Bool)

(assert (=> (not b_lambda!20969) (not b!1198961)))

(declare-fun t!39276 () Bool)

(declare-fun tb!10563 () Bool)

(assert (=> (and start!100468 (= defaultEntry!1004 defaultEntry!1004) t!39276) tb!10563))

(declare-fun result!21695 () Bool)

(assert (=> tb!10563 (= result!21695 tp_is_empty!30459)))

(assert (=> b!1198961 t!39276))

(declare-fun b_and!42413 () Bool)

(assert (= b_and!42411 (and (=> t!39276 result!21695) b_and!42413)))

(declare-fun m!1105637 () Bool)

(assert (=> b!1198953 m!1105637))

(declare-fun m!1105639 () Bool)

(assert (=> b!1198950 m!1105639))

(declare-fun m!1105641 () Bool)

(assert (=> b!1198957 m!1105641))

(declare-fun m!1105643 () Bool)

(assert (=> mapNonEmpty!47531 m!1105643))

(declare-fun m!1105645 () Bool)

(assert (=> b!1198958 m!1105645))

(declare-fun m!1105647 () Bool)

(assert (=> b!1198961 m!1105647))

(declare-fun m!1105649 () Bool)

(assert (=> b!1198961 m!1105649))

(declare-fun m!1105651 () Bool)

(assert (=> b!1198961 m!1105651))

(declare-fun m!1105653 () Bool)

(assert (=> b!1198961 m!1105653))

(declare-fun m!1105655 () Bool)

(assert (=> b!1198959 m!1105655))

(declare-fun m!1105657 () Bool)

(assert (=> b!1198959 m!1105657))

(declare-fun m!1105659 () Bool)

(assert (=> b!1198949 m!1105659))

(declare-fun m!1105661 () Bool)

(assert (=> b!1198951 m!1105661))

(declare-fun m!1105663 () Bool)

(assert (=> b!1198951 m!1105663))

(declare-fun m!1105665 () Bool)

(assert (=> b!1198955 m!1105665))

(declare-fun m!1105667 () Bool)

(assert (=> start!100468 m!1105667))

(declare-fun m!1105669 () Bool)

(assert (=> start!100468 m!1105669))

(check-sat (not b!1198961) (not b_next!25755) tp_is_empty!30459 (not b!1198950) (not mapNonEmpty!47531) (not b!1198957) (not b!1198958) (not b!1198951) (not b_lambda!20969) (not start!100468) b_and!42413 (not b!1198959) (not b!1198953) (not b!1198955))
(check-sat b_and!42413 (not b_next!25755))
