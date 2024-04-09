; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100044 () Bool)

(assert start!100044)

(declare-fun b_free!25587 () Bool)

(declare-fun b_next!25587 () Bool)

(assert (=> start!100044 (= b_free!25587 (not b_next!25587))))

(declare-fun tp!89476 () Bool)

(declare-fun b_and!42055 () Bool)

(assert (=> start!100044 (= tp!89476 b_and!42055)))

(declare-fun b!1191404 () Bool)

(declare-fun e!677288 () Bool)

(declare-fun e!677292 () Bool)

(assert (=> b!1191404 (= e!677288 e!677292)))

(declare-fun res!792552 () Bool)

(assert (=> b!1191404 (=> res!792552 e!677292)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1191404 (= res!792552 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-datatypes ((V!45283 0))(
  ( (V!45284 (val!15115 Int)) )
))
(declare-fun zeroValue!944 () V!45283)

(declare-datatypes ((array!77000 0))(
  ( (array!77001 (arr!37146 (Array (_ BitVec 32) (_ BitVec 64))) (size!37683 (_ BitVec 32))) )
))
(declare-fun lt!541789 () array!77000)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!19564 0))(
  ( (tuple2!19565 (_1!9792 (_ BitVec 64)) (_2!9792 V!45283)) )
))
(declare-datatypes ((List!26325 0))(
  ( (Nil!26322) (Cons!26321 (h!27530 tuple2!19564) (t!38911 List!26325)) )
))
(declare-datatypes ((ListLongMap!17545 0))(
  ( (ListLongMap!17546 (toList!8788 List!26325)) )
))
(declare-fun lt!541791 () ListLongMap!17545)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!45283)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14349 0))(
  ( (ValueCellFull!14349 (v!17754 V!45283)) (EmptyCell!14349) )
))
(declare-datatypes ((array!77002 0))(
  ( (array!77003 (arr!37147 (Array (_ BitVec 32) ValueCell!14349)) (size!37684 (_ BitVec 32))) )
))
(declare-fun lt!541790 () array!77002)

(declare-fun getCurrentListMapNoExtraKeys!5202 (array!77000 array!77002 (_ BitVec 32) (_ BitVec 32) V!45283 V!45283 (_ BitVec 32) Int) ListLongMap!17545)

(assert (=> b!1191404 (= lt!541791 (getCurrentListMapNoExtraKeys!5202 lt!541789 lt!541790 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!77002)

(declare-fun dynLambda!3147 (Int (_ BitVec 64)) V!45283)

(assert (=> b!1191404 (= lt!541790 (array!77003 (store (arr!37147 _values!996) i!673 (ValueCellFull!14349 (dynLambda!3147 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!37684 _values!996)))))

(declare-fun _keys!1208 () array!77000)

(declare-fun lt!541792 () ListLongMap!17545)

(assert (=> b!1191404 (= lt!541792 (getCurrentListMapNoExtraKeys!5202 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1191405 () Bool)

(assert (=> b!1191405 (= e!677292 true)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1768 (ListLongMap!17545 (_ BitVec 64)) ListLongMap!17545)

(assert (=> b!1191405 (= (getCurrentListMapNoExtraKeys!5202 lt!541789 lt!541790 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) (-!1768 (getCurrentListMapNoExtraKeys!5202 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-datatypes ((Unit!39470 0))(
  ( (Unit!39471) )
))
(declare-fun lt!541793 () Unit!39470)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!974 (array!77000 array!77002 (_ BitVec 32) (_ BitVec 32) V!45283 V!45283 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39470)

(assert (=> b!1191405 (= lt!541793 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!974 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1191406 () Bool)

(declare-fun e!677293 () Bool)

(declare-fun e!677286 () Bool)

(assert (=> b!1191406 (= e!677293 e!677286)))

(declare-fun res!792555 () Bool)

(assert (=> b!1191406 (=> (not res!792555) (not e!677286))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77000 (_ BitVec 32)) Bool)

(assert (=> b!1191406 (= res!792555 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!541789 mask!1564))))

(assert (=> b!1191406 (= lt!541789 (array!77001 (store (arr!37146 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37683 _keys!1208)))))

(declare-fun b!1191407 () Bool)

(declare-fun e!677289 () Bool)

(declare-fun e!677287 () Bool)

(declare-fun mapRes!47003 () Bool)

(assert (=> b!1191407 (= e!677289 (and e!677287 mapRes!47003))))

(declare-fun condMapEmpty!47003 () Bool)

(declare-fun mapDefault!47003 () ValueCell!14349)

(assert (=> b!1191407 (= condMapEmpty!47003 (= (arr!37147 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14349)) mapDefault!47003)))))

(declare-fun mapNonEmpty!47003 () Bool)

(declare-fun tp!89475 () Bool)

(declare-fun e!677290 () Bool)

(assert (=> mapNonEmpty!47003 (= mapRes!47003 (and tp!89475 e!677290))))

(declare-fun mapValue!47003 () ValueCell!14349)

(declare-fun mapKey!47003 () (_ BitVec 32))

(declare-fun mapRest!47003 () (Array (_ BitVec 32) ValueCell!14349))

(assert (=> mapNonEmpty!47003 (= (arr!37147 _values!996) (store mapRest!47003 mapKey!47003 mapValue!47003))))

(declare-fun b!1191408 () Bool)

(assert (=> b!1191408 (= e!677286 (not e!677288))))

(declare-fun res!792547 () Bool)

(assert (=> b!1191408 (=> res!792547 e!677288)))

(assert (=> b!1191408 (= res!792547 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77000 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1191408 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!541794 () Unit!39470)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77000 (_ BitVec 64) (_ BitVec 32)) Unit!39470)

(assert (=> b!1191408 (= lt!541794 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1191409 () Bool)

(declare-fun res!792550 () Bool)

(assert (=> b!1191409 (=> (not res!792550) (not e!677293))))

(assert (=> b!1191409 (= res!792550 (and (= (size!37684 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37683 _keys!1208) (size!37684 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1191410 () Bool)

(declare-fun tp_is_empty!30117 () Bool)

(assert (=> b!1191410 (= e!677287 tp_is_empty!30117)))

(declare-fun b!1191411 () Bool)

(declare-fun res!792549 () Bool)

(assert (=> b!1191411 (=> (not res!792549) (not e!677286))))

(declare-datatypes ((List!26326 0))(
  ( (Nil!26323) (Cons!26322 (h!27531 (_ BitVec 64)) (t!38912 List!26326)) )
))
(declare-fun arrayNoDuplicates!0 (array!77000 (_ BitVec 32) List!26326) Bool)

(assert (=> b!1191411 (= res!792549 (arrayNoDuplicates!0 lt!541789 #b00000000000000000000000000000000 Nil!26323))))

(declare-fun b!1191412 () Bool)

(declare-fun res!792553 () Bool)

(assert (=> b!1191412 (=> (not res!792553) (not e!677293))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1191412 (= res!792553 (validKeyInArray!0 k0!934))))

(declare-fun b!1191413 () Bool)

(declare-fun res!792556 () Bool)

(assert (=> b!1191413 (=> (not res!792556) (not e!677293))))

(assert (=> b!1191413 (= res!792556 (= (select (arr!37146 _keys!1208) i!673) k0!934))))

(declare-fun b!1191414 () Bool)

(declare-fun res!792554 () Bool)

(assert (=> b!1191414 (=> (not res!792554) (not e!677293))))

(assert (=> b!1191414 (= res!792554 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26323))))

(declare-fun mapIsEmpty!47003 () Bool)

(assert (=> mapIsEmpty!47003 mapRes!47003))

(declare-fun res!792548 () Bool)

(assert (=> start!100044 (=> (not res!792548) (not e!677293))))

(assert (=> start!100044 (= res!792548 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37683 _keys!1208))))))

(assert (=> start!100044 e!677293))

(assert (=> start!100044 tp_is_empty!30117))

(declare-fun array_inv!28228 (array!77000) Bool)

(assert (=> start!100044 (array_inv!28228 _keys!1208)))

(assert (=> start!100044 true))

(assert (=> start!100044 tp!89476))

(declare-fun array_inv!28229 (array!77002) Bool)

(assert (=> start!100044 (and (array_inv!28229 _values!996) e!677289)))

(declare-fun b!1191415 () Bool)

(declare-fun res!792546 () Bool)

(assert (=> b!1191415 (=> (not res!792546) (not e!677293))))

(assert (=> b!1191415 (= res!792546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1191416 () Bool)

(declare-fun res!792551 () Bool)

(assert (=> b!1191416 (=> (not res!792551) (not e!677293))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1191416 (= res!792551 (validMask!0 mask!1564))))

(declare-fun b!1191417 () Bool)

(declare-fun res!792545 () Bool)

(assert (=> b!1191417 (=> (not res!792545) (not e!677293))))

(assert (=> b!1191417 (= res!792545 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37683 _keys!1208))))))

(declare-fun b!1191418 () Bool)

(assert (=> b!1191418 (= e!677290 tp_is_empty!30117)))

(assert (= (and start!100044 res!792548) b!1191416))

(assert (= (and b!1191416 res!792551) b!1191409))

(assert (= (and b!1191409 res!792550) b!1191415))

(assert (= (and b!1191415 res!792546) b!1191414))

(assert (= (and b!1191414 res!792554) b!1191417))

(assert (= (and b!1191417 res!792545) b!1191412))

(assert (= (and b!1191412 res!792553) b!1191413))

(assert (= (and b!1191413 res!792556) b!1191406))

(assert (= (and b!1191406 res!792555) b!1191411))

(assert (= (and b!1191411 res!792549) b!1191408))

(assert (= (and b!1191408 (not res!792547)) b!1191404))

(assert (= (and b!1191404 (not res!792552)) b!1191405))

(assert (= (and b!1191407 condMapEmpty!47003) mapIsEmpty!47003))

(assert (= (and b!1191407 (not condMapEmpty!47003)) mapNonEmpty!47003))

(get-info :version)

(assert (= (and mapNonEmpty!47003 ((_ is ValueCellFull!14349) mapValue!47003)) b!1191418))

(assert (= (and b!1191407 ((_ is ValueCellFull!14349) mapDefault!47003)) b!1191410))

(assert (= start!100044 b!1191407))

(declare-fun b_lambda!20749 () Bool)

(assert (=> (not b_lambda!20749) (not b!1191404)))

(declare-fun t!38910 () Bool)

(declare-fun tb!10407 () Bool)

(assert (=> (and start!100044 (= defaultEntry!1004 defaultEntry!1004) t!38910) tb!10407))

(declare-fun result!21373 () Bool)

(assert (=> tb!10407 (= result!21373 tp_is_empty!30117)))

(assert (=> b!1191404 t!38910))

(declare-fun b_and!42057 () Bool)

(assert (= b_and!42055 (and (=> t!38910 result!21373) b_and!42057)))

(declare-fun m!1099919 () Bool)

(assert (=> b!1191413 m!1099919))

(declare-fun m!1099921 () Bool)

(assert (=> b!1191411 m!1099921))

(declare-fun m!1099923 () Bool)

(assert (=> b!1191416 m!1099923))

(declare-fun m!1099925 () Bool)

(assert (=> b!1191414 m!1099925))

(declare-fun m!1099927 () Bool)

(assert (=> start!100044 m!1099927))

(declare-fun m!1099929 () Bool)

(assert (=> start!100044 m!1099929))

(declare-fun m!1099931 () Bool)

(assert (=> b!1191408 m!1099931))

(declare-fun m!1099933 () Bool)

(assert (=> b!1191408 m!1099933))

(declare-fun m!1099935 () Bool)

(assert (=> b!1191412 m!1099935))

(declare-fun m!1099937 () Bool)

(assert (=> b!1191415 m!1099937))

(declare-fun m!1099939 () Bool)

(assert (=> b!1191404 m!1099939))

(declare-fun m!1099941 () Bool)

(assert (=> b!1191404 m!1099941))

(declare-fun m!1099943 () Bool)

(assert (=> b!1191404 m!1099943))

(declare-fun m!1099945 () Bool)

(assert (=> b!1191404 m!1099945))

(declare-fun m!1099947 () Bool)

(assert (=> b!1191405 m!1099947))

(declare-fun m!1099949 () Bool)

(assert (=> b!1191405 m!1099949))

(assert (=> b!1191405 m!1099949))

(declare-fun m!1099951 () Bool)

(assert (=> b!1191405 m!1099951))

(declare-fun m!1099953 () Bool)

(assert (=> b!1191405 m!1099953))

(declare-fun m!1099955 () Bool)

(assert (=> mapNonEmpty!47003 m!1099955))

(declare-fun m!1099957 () Bool)

(assert (=> b!1191406 m!1099957))

(declare-fun m!1099959 () Bool)

(assert (=> b!1191406 m!1099959))

(check-sat (not b!1191411) (not b_next!25587) (not b!1191414) (not b!1191408) (not b!1191406) tp_is_empty!30117 (not b!1191404) b_and!42057 (not mapNonEmpty!47003) (not b!1191412) (not b!1191405) (not start!100044) (not b!1191415) (not b!1191416) (not b_lambda!20749))
(check-sat b_and!42057 (not b_next!25587))
