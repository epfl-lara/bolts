; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99978 () Bool)

(assert start!99978)

(declare-fun b_free!25521 () Bool)

(declare-fun b_next!25521 () Bool)

(assert (=> start!99978 (= b_free!25521 (not b_next!25521))))

(declare-fun tp!89278 () Bool)

(declare-fun b_and!41923 () Bool)

(assert (=> start!99978 (= tp!89278 b_and!41923)))

(declare-fun b!1189853 () Bool)

(declare-fun e!676495 () Bool)

(declare-fun e!676494 () Bool)

(declare-fun mapRes!46904 () Bool)

(assert (=> b!1189853 (= e!676495 (and e!676494 mapRes!46904))))

(declare-fun condMapEmpty!46904 () Bool)

(declare-datatypes ((V!45195 0))(
  ( (V!45196 (val!15082 Int)) )
))
(declare-datatypes ((ValueCell!14316 0))(
  ( (ValueCellFull!14316 (v!17721 V!45195)) (EmptyCell!14316) )
))
(declare-datatypes ((array!76868 0))(
  ( (array!76869 (arr!37080 (Array (_ BitVec 32) ValueCell!14316)) (size!37617 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!76868)

(declare-fun mapDefault!46904 () ValueCell!14316)

(assert (=> b!1189853 (= condMapEmpty!46904 (= (arr!37080 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14316)) mapDefault!46904)))))

(declare-fun b!1189854 () Bool)

(declare-fun res!791359 () Bool)

(declare-fun e!676497 () Bool)

(assert (=> b!1189854 (=> (not res!791359) (not e!676497))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!76870 0))(
  ( (array!76871 (arr!37081 (Array (_ BitVec 32) (_ BitVec 64))) (size!37618 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!76870)

(assert (=> b!1189854 (= res!791359 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37618 _keys!1208))))))

(declare-fun b!1189855 () Bool)

(declare-fun e!676499 () Bool)

(declare-fun tp_is_empty!30051 () Bool)

(assert (=> b!1189855 (= e!676499 tp_is_empty!30051)))

(declare-fun b!1189856 () Bool)

(declare-fun res!791367 () Bool)

(assert (=> b!1189856 (=> (not res!791367) (not e!676497))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1189856 (= res!791367 (validMask!0 mask!1564))))

(declare-fun b!1189857 () Bool)

(declare-fun res!791368 () Bool)

(assert (=> b!1189857 (=> (not res!791368) (not e!676497))))

(declare-datatypes ((List!26267 0))(
  ( (Nil!26264) (Cons!26263 (h!27472 (_ BitVec 64)) (t!38787 List!26267)) )
))
(declare-fun arrayNoDuplicates!0 (array!76870 (_ BitVec 32) List!26267) Bool)

(assert (=> b!1189857 (= res!791368 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26264))))

(declare-fun b!1189858 () Bool)

(declare-fun res!791360 () Bool)

(assert (=> b!1189858 (=> (not res!791360) (not e!676497))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1189858 (= res!791360 (= (select (arr!37081 _keys!1208) i!673) k0!934))))

(declare-fun b!1189859 () Bool)

(declare-fun res!791365 () Bool)

(declare-fun e!676498 () Bool)

(assert (=> b!1189859 (=> (not res!791365) (not e!676498))))

(declare-fun lt!541199 () array!76870)

(assert (=> b!1189859 (= res!791365 (arrayNoDuplicates!0 lt!541199 #b00000000000000000000000000000000 Nil!26264))))

(declare-fun res!791363 () Bool)

(assert (=> start!99978 (=> (not res!791363) (not e!676497))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99978 (= res!791363 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37618 _keys!1208))))))

(assert (=> start!99978 e!676497))

(assert (=> start!99978 tp_is_empty!30051))

(declare-fun array_inv!28174 (array!76870) Bool)

(assert (=> start!99978 (array_inv!28174 _keys!1208)))

(assert (=> start!99978 true))

(assert (=> start!99978 tp!89278))

(declare-fun array_inv!28175 (array!76868) Bool)

(assert (=> start!99978 (and (array_inv!28175 _values!996) e!676495)))

(declare-fun mapNonEmpty!46904 () Bool)

(declare-fun tp!89277 () Bool)

(assert (=> mapNonEmpty!46904 (= mapRes!46904 (and tp!89277 e!676499))))

(declare-fun mapValue!46904 () ValueCell!14316)

(declare-fun mapRest!46904 () (Array (_ BitVec 32) ValueCell!14316))

(declare-fun mapKey!46904 () (_ BitVec 32))

(assert (=> mapNonEmpty!46904 (= (arr!37080 _values!996) (store mapRest!46904 mapKey!46904 mapValue!46904))))

(declare-fun b!1189860 () Bool)

(declare-fun e!676500 () Bool)

(declare-fun e!676496 () Bool)

(assert (=> b!1189860 (= e!676500 e!676496)))

(declare-fun res!791364 () Bool)

(assert (=> b!1189860 (=> res!791364 e!676496)))

(assert (=> b!1189860 (= res!791364 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!45195)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!541195 () array!76868)

(declare-fun minValue!944 () V!45195)

(declare-datatypes ((tuple2!19508 0))(
  ( (tuple2!19509 (_1!9764 (_ BitVec 64)) (_2!9764 V!45195)) )
))
(declare-datatypes ((List!26268 0))(
  ( (Nil!26265) (Cons!26264 (h!27473 tuple2!19508) (t!38788 List!26268)) )
))
(declare-datatypes ((ListLongMap!17489 0))(
  ( (ListLongMap!17490 (toList!8760 List!26268)) )
))
(declare-fun lt!541200 () ListLongMap!17489)

(declare-fun getCurrentListMapNoExtraKeys!5174 (array!76870 array!76868 (_ BitVec 32) (_ BitVec 32) V!45195 V!45195 (_ BitVec 32) Int) ListLongMap!17489)

(assert (=> b!1189860 (= lt!541200 (getCurrentListMapNoExtraKeys!5174 lt!541199 lt!541195 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3125 (Int (_ BitVec 64)) V!45195)

(assert (=> b!1189860 (= lt!541195 (array!76869 (store (arr!37080 _values!996) i!673 (ValueCellFull!14316 (dynLambda!3125 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37617 _values!996)))))

(declare-fun lt!541197 () ListLongMap!17489)

(assert (=> b!1189860 (= lt!541197 (getCurrentListMapNoExtraKeys!5174 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!46904 () Bool)

(assert (=> mapIsEmpty!46904 mapRes!46904))

(declare-fun b!1189861 () Bool)

(declare-fun res!791366 () Bool)

(assert (=> b!1189861 (=> (not res!791366) (not e!676497))))

(assert (=> b!1189861 (= res!791366 (and (= (size!37617 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37618 _keys!1208) (size!37617 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1189862 () Bool)

(declare-fun res!791361 () Bool)

(assert (=> b!1189862 (=> (not res!791361) (not e!676497))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1189862 (= res!791361 (validKeyInArray!0 k0!934))))

(declare-fun b!1189863 () Bool)

(assert (=> b!1189863 (= e!676494 tp_is_empty!30051)))

(declare-fun b!1189864 () Bool)

(assert (=> b!1189864 (= e!676496 true)))

(declare-fun -!1742 (ListLongMap!17489 (_ BitVec 64)) ListLongMap!17489)

(assert (=> b!1189864 (= (getCurrentListMapNoExtraKeys!5174 lt!541199 lt!541195 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1742 (getCurrentListMapNoExtraKeys!5174 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!39412 0))(
  ( (Unit!39413) )
))
(declare-fun lt!541196 () Unit!39412)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!948 (array!76870 array!76868 (_ BitVec 32) (_ BitVec 32) V!45195 V!45195 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39412)

(assert (=> b!1189864 (= lt!541196 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!948 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1189865 () Bool)

(assert (=> b!1189865 (= e!676498 (not e!676500))))

(declare-fun res!791357 () Bool)

(assert (=> b!1189865 (=> res!791357 e!676500)))

(assert (=> b!1189865 (= res!791357 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!76870 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1189865 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!541198 () Unit!39412)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!76870 (_ BitVec 64) (_ BitVec 32)) Unit!39412)

(assert (=> b!1189865 (= lt!541198 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1189866 () Bool)

(assert (=> b!1189866 (= e!676497 e!676498)))

(declare-fun res!791362 () Bool)

(assert (=> b!1189866 (=> (not res!791362) (not e!676498))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!76870 (_ BitVec 32)) Bool)

(assert (=> b!1189866 (= res!791362 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541199 mask!1564))))

(assert (=> b!1189866 (= lt!541199 (array!76871 (store (arr!37081 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37618 _keys!1208)))))

(declare-fun b!1189867 () Bool)

(declare-fun res!791358 () Bool)

(assert (=> b!1189867 (=> (not res!791358) (not e!676497))))

(assert (=> b!1189867 (= res!791358 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(assert (= (and start!99978 res!791363) b!1189856))

(assert (= (and b!1189856 res!791367) b!1189861))

(assert (= (and b!1189861 res!791366) b!1189867))

(assert (= (and b!1189867 res!791358) b!1189857))

(assert (= (and b!1189857 res!791368) b!1189854))

(assert (= (and b!1189854 res!791359) b!1189862))

(assert (= (and b!1189862 res!791361) b!1189858))

(assert (= (and b!1189858 res!791360) b!1189866))

(assert (= (and b!1189866 res!791362) b!1189859))

(assert (= (and b!1189859 res!791365) b!1189865))

(assert (= (and b!1189865 (not res!791357)) b!1189860))

(assert (= (and b!1189860 (not res!791364)) b!1189864))

(assert (= (and b!1189853 condMapEmpty!46904) mapIsEmpty!46904))

(assert (= (and b!1189853 (not condMapEmpty!46904)) mapNonEmpty!46904))

(get-info :version)

(assert (= (and mapNonEmpty!46904 ((_ is ValueCellFull!14316) mapValue!46904)) b!1189855))

(assert (= (and b!1189853 ((_ is ValueCellFull!14316) mapDefault!46904)) b!1189863))

(assert (= start!99978 b!1189853))

(declare-fun b_lambda!20683 () Bool)

(assert (=> (not b_lambda!20683) (not b!1189860)))

(declare-fun t!38786 () Bool)

(declare-fun tb!10341 () Bool)

(assert (=> (and start!99978 (= defaultEntry!1004 defaultEntry!1004) t!38786) tb!10341))

(declare-fun result!21241 () Bool)

(assert (=> tb!10341 (= result!21241 tp_is_empty!30051)))

(assert (=> b!1189860 t!38786))

(declare-fun b_and!41925 () Bool)

(assert (= b_and!41923 (and (=> t!38786 result!21241) b_and!41925)))

(declare-fun m!1098533 () Bool)

(assert (=> b!1189856 m!1098533))

(declare-fun m!1098535 () Bool)

(assert (=> b!1189867 m!1098535))

(declare-fun m!1098537 () Bool)

(assert (=> mapNonEmpty!46904 m!1098537))

(declare-fun m!1098539 () Bool)

(assert (=> b!1189857 m!1098539))

(declare-fun m!1098541 () Bool)

(assert (=> b!1189862 m!1098541))

(declare-fun m!1098543 () Bool)

(assert (=> b!1189865 m!1098543))

(declare-fun m!1098545 () Bool)

(assert (=> b!1189865 m!1098545))

(declare-fun m!1098547 () Bool)

(assert (=> b!1189860 m!1098547))

(declare-fun m!1098549 () Bool)

(assert (=> b!1189860 m!1098549))

(declare-fun m!1098551 () Bool)

(assert (=> b!1189860 m!1098551))

(declare-fun m!1098553 () Bool)

(assert (=> b!1189860 m!1098553))

(declare-fun m!1098555 () Bool)

(assert (=> start!99978 m!1098555))

(declare-fun m!1098557 () Bool)

(assert (=> start!99978 m!1098557))

(declare-fun m!1098559 () Bool)

(assert (=> b!1189858 m!1098559))

(declare-fun m!1098561 () Bool)

(assert (=> b!1189866 m!1098561))

(declare-fun m!1098563 () Bool)

(assert (=> b!1189866 m!1098563))

(declare-fun m!1098565 () Bool)

(assert (=> b!1189864 m!1098565))

(declare-fun m!1098567 () Bool)

(assert (=> b!1189864 m!1098567))

(assert (=> b!1189864 m!1098567))

(declare-fun m!1098569 () Bool)

(assert (=> b!1189864 m!1098569))

(declare-fun m!1098571 () Bool)

(assert (=> b!1189864 m!1098571))

(declare-fun m!1098573 () Bool)

(assert (=> b!1189859 m!1098573))

(check-sat (not b!1189864) (not b!1189867) (not start!99978) (not b!1189856) (not b!1189862) (not b_next!25521) (not b!1189857) b_and!41925 (not b!1189860) (not b_lambda!20683) tp_is_empty!30051 (not b!1189866) (not b!1189865) (not b!1189859) (not mapNonEmpty!46904))
(check-sat b_and!41925 (not b_next!25521))
