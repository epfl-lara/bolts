; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99136 () Bool)

(assert start!99136)

(declare-fun b_free!24705 () Bool)

(declare-fun b_next!24705 () Bool)

(assert (=> start!99136 (= b_free!24705 (not b_next!24705))))

(declare-fun tp!86827 () Bool)

(declare-fun b_and!40273 () Bool)

(assert (=> start!99136 (= tp!86827 b_and!40273)))

(declare-fun b!1165570 () Bool)

(declare-fun res!773123 () Bool)

(declare-fun e!662639 () Bool)

(assert (=> b!1165570 (=> (not res!773123) (not e!662639))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1165570 (= res!773123 (validKeyInArray!0 k0!934))))

(declare-fun b!1165571 () Bool)

(declare-fun e!662640 () Bool)

(declare-fun e!662638 () Bool)

(declare-fun mapRes!45677 () Bool)

(assert (=> b!1165571 (= e!662640 (and e!662638 mapRes!45677))))

(declare-fun condMapEmpty!45677 () Bool)

(declare-datatypes ((V!44107 0))(
  ( (V!44108 (val!14674 Int)) )
))
(declare-datatypes ((ValueCell!13908 0))(
  ( (ValueCellFull!13908 (v!17312 V!44107)) (EmptyCell!13908) )
))
(declare-datatypes ((array!75252 0))(
  ( (array!75253 (arr!36273 (Array (_ BitVec 32) ValueCell!13908)) (size!36810 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75252)

(declare-fun mapDefault!45677 () ValueCell!13908)

(assert (=> b!1165571 (= condMapEmpty!45677 (= (arr!36273 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13908)) mapDefault!45677)))))

(declare-fun res!773130 () Bool)

(assert (=> start!99136 (=> (not res!773130) (not e!662639))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!75254 0))(
  ( (array!75255 (arr!36274 (Array (_ BitVec 32) (_ BitVec 64))) (size!36811 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75254)

(assert (=> start!99136 (= res!773130 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36811 _keys!1208))))))

(assert (=> start!99136 e!662639))

(declare-fun tp_is_empty!29235 () Bool)

(assert (=> start!99136 tp_is_empty!29235))

(declare-fun array_inv!27616 (array!75254) Bool)

(assert (=> start!99136 (array_inv!27616 _keys!1208)))

(assert (=> start!99136 true))

(assert (=> start!99136 tp!86827))

(declare-fun array_inv!27617 (array!75252) Bool)

(assert (=> start!99136 (and (array_inv!27617 _values!996) e!662640)))

(declare-fun b!1165572 () Bool)

(declare-fun res!773132 () Bool)

(assert (=> b!1165572 (=> (not res!773132) (not e!662639))))

(declare-datatypes ((List!25566 0))(
  ( (Nil!25563) (Cons!25562 (h!26771 (_ BitVec 64)) (t!37270 List!25566)) )
))
(declare-fun arrayNoDuplicates!0 (array!75254 (_ BitVec 32) List!25566) Bool)

(assert (=> b!1165572 (= res!773132 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25563))))

(declare-fun b!1165573 () Bool)

(declare-fun res!773128 () Bool)

(assert (=> b!1165573 (=> (not res!773128) (not e!662639))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75254 (_ BitVec 32)) Bool)

(assert (=> b!1165573 (= res!773128 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1165574 () Bool)

(assert (=> b!1165574 (= e!662638 tp_is_empty!29235)))

(declare-fun b!1165575 () Bool)

(declare-fun res!773126 () Bool)

(assert (=> b!1165575 (=> (not res!773126) (not e!662639))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1165575 (= res!773126 (= (select (arr!36274 _keys!1208) i!673) k0!934))))

(declare-fun mapIsEmpty!45677 () Bool)

(assert (=> mapIsEmpty!45677 mapRes!45677))

(declare-fun b!1165576 () Bool)

(declare-fun e!662634 () Bool)

(assert (=> b!1165576 (= e!662639 e!662634)))

(declare-fun res!773122 () Bool)

(assert (=> b!1165576 (=> (not res!773122) (not e!662634))))

(declare-fun lt!524913 () array!75254)

(assert (=> b!1165576 (= res!773122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524913 mask!1564))))

(assert (=> b!1165576 (= lt!524913 (array!75255 (store (arr!36274 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36811 _keys!1208)))))

(declare-fun b!1165577 () Bool)

(declare-fun res!773125 () Bool)

(assert (=> b!1165577 (=> (not res!773125) (not e!662639))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1165577 (= res!773125 (validMask!0 mask!1564))))

(declare-fun b!1165578 () Bool)

(declare-fun e!662636 () Bool)

(assert (=> b!1165578 (= e!662636 tp_is_empty!29235)))

(declare-fun b!1165579 () Bool)

(declare-fun res!773131 () Bool)

(assert (=> b!1165579 (=> (not res!773131) (not e!662634))))

(assert (=> b!1165579 (= res!773131 (arrayNoDuplicates!0 lt!524913 #b00000000000000000000000000000000 Nil!25563))))

(declare-fun b!1165580 () Bool)

(declare-fun res!773129 () Bool)

(assert (=> b!1165580 (=> (not res!773129) (not e!662639))))

(assert (=> b!1165580 (= res!773129 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36811 _keys!1208))))))

(declare-fun b!1165581 () Bool)

(declare-fun e!662637 () Bool)

(assert (=> b!1165581 (= e!662634 (not e!662637))))

(declare-fun res!773127 () Bool)

(assert (=> b!1165581 (=> res!773127 e!662637)))

(assert (=> b!1165581 (= res!773127 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75254 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1165581 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38356 0))(
  ( (Unit!38357) )
))
(declare-fun lt!524911 () Unit!38356)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75254 (_ BitVec 64) (_ BitVec 32)) Unit!38356)

(assert (=> b!1165581 (= lt!524911 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1165582 () Bool)

(declare-fun res!773124 () Bool)

(assert (=> b!1165582 (=> (not res!773124) (not e!662639))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1165582 (= res!773124 (and (= (size!36810 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36811 _keys!1208) (size!36810 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!45677 () Bool)

(declare-fun tp!86826 () Bool)

(assert (=> mapNonEmpty!45677 (= mapRes!45677 (and tp!86826 e!662636))))

(declare-fun mapValue!45677 () ValueCell!13908)

(declare-fun mapRest!45677 () (Array (_ BitVec 32) ValueCell!13908))

(declare-fun mapKey!45677 () (_ BitVec 32))

(assert (=> mapNonEmpty!45677 (= (arr!36273 _values!996) (store mapRest!45677 mapKey!45677 mapValue!45677))))

(declare-fun b!1165583 () Bool)

(assert (=> b!1165583 (= e!662637 true)))

(declare-fun zeroValue!944 () V!44107)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44107)

(declare-datatypes ((tuple2!18790 0))(
  ( (tuple2!18791 (_1!9405 (_ BitVec 64)) (_2!9405 V!44107)) )
))
(declare-datatypes ((List!25567 0))(
  ( (Nil!25564) (Cons!25563 (h!26772 tuple2!18790) (t!37271 List!25567)) )
))
(declare-datatypes ((ListLongMap!16771 0))(
  ( (ListLongMap!16772 (toList!8401 List!25567)) )
))
(declare-fun lt!524910 () ListLongMap!16771)

(declare-fun getCurrentListMapNoExtraKeys!4834 (array!75254 array!75252 (_ BitVec 32) (_ BitVec 32) V!44107 V!44107 (_ BitVec 32) Int) ListLongMap!16771)

(declare-fun dynLambda!2831 (Int (_ BitVec 64)) V!44107)

(assert (=> b!1165583 (= lt!524910 (getCurrentListMapNoExtraKeys!4834 lt!524913 (array!75253 (store (arr!36273 _values!996) i!673 (ValueCellFull!13908 (dynLambda!2831 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36810 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524912 () ListLongMap!16771)

(assert (=> b!1165583 (= lt!524912 (getCurrentListMapNoExtraKeys!4834 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (= (and start!99136 res!773130) b!1165577))

(assert (= (and b!1165577 res!773125) b!1165582))

(assert (= (and b!1165582 res!773124) b!1165573))

(assert (= (and b!1165573 res!773128) b!1165572))

(assert (= (and b!1165572 res!773132) b!1165580))

(assert (= (and b!1165580 res!773129) b!1165570))

(assert (= (and b!1165570 res!773123) b!1165575))

(assert (= (and b!1165575 res!773126) b!1165576))

(assert (= (and b!1165576 res!773122) b!1165579))

(assert (= (and b!1165579 res!773131) b!1165581))

(assert (= (and b!1165581 (not res!773127)) b!1165583))

(assert (= (and b!1165571 condMapEmpty!45677) mapIsEmpty!45677))

(assert (= (and b!1165571 (not condMapEmpty!45677)) mapNonEmpty!45677))

(get-info :version)

(assert (= (and mapNonEmpty!45677 ((_ is ValueCellFull!13908) mapValue!45677)) b!1165578))

(assert (= (and b!1165571 ((_ is ValueCellFull!13908) mapDefault!45677)) b!1165574))

(assert (= start!99136 b!1165571))

(declare-fun b_lambda!19829 () Bool)

(assert (=> (not b_lambda!19829) (not b!1165583)))

(declare-fun t!37269 () Bool)

(declare-fun tb!9525 () Bool)

(assert (=> (and start!99136 (= defaultEntry!1004 defaultEntry!1004) t!37269) tb!9525))

(declare-fun result!19607 () Bool)

(assert (=> tb!9525 (= result!19607 tp_is_empty!29235)))

(assert (=> b!1165583 t!37269))

(declare-fun b_and!40275 () Bool)

(assert (= b_and!40273 (and (=> t!37269 result!19607) b_and!40275)))

(declare-fun m!1073777 () Bool)

(assert (=> b!1165575 m!1073777))

(declare-fun m!1073779 () Bool)

(assert (=> mapNonEmpty!45677 m!1073779))

(declare-fun m!1073781 () Bool)

(assert (=> b!1165576 m!1073781))

(declare-fun m!1073783 () Bool)

(assert (=> b!1165576 m!1073783))

(declare-fun m!1073785 () Bool)

(assert (=> b!1165577 m!1073785))

(declare-fun m!1073787 () Bool)

(assert (=> b!1165570 m!1073787))

(declare-fun m!1073789 () Bool)

(assert (=> b!1165583 m!1073789))

(declare-fun m!1073791 () Bool)

(assert (=> b!1165583 m!1073791))

(declare-fun m!1073793 () Bool)

(assert (=> b!1165583 m!1073793))

(declare-fun m!1073795 () Bool)

(assert (=> b!1165583 m!1073795))

(declare-fun m!1073797 () Bool)

(assert (=> start!99136 m!1073797))

(declare-fun m!1073799 () Bool)

(assert (=> start!99136 m!1073799))

(declare-fun m!1073801 () Bool)

(assert (=> b!1165579 m!1073801))

(declare-fun m!1073803 () Bool)

(assert (=> b!1165581 m!1073803))

(declare-fun m!1073805 () Bool)

(assert (=> b!1165581 m!1073805))

(declare-fun m!1073807 () Bool)

(assert (=> b!1165573 m!1073807))

(declare-fun m!1073809 () Bool)

(assert (=> b!1165572 m!1073809))

(check-sat (not b!1165573) (not b!1165579) (not mapNonEmpty!45677) (not b_lambda!19829) b_and!40275 (not b!1165581) (not b!1165583) (not start!99136) (not b_next!24705) (not b!1165576) (not b!1165577) tp_is_empty!29235 (not b!1165572) (not b!1165570))
(check-sat b_and!40275 (not b_next!24705))
