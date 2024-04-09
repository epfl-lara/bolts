; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100516 () Bool)

(assert start!100516)

(declare-fun b_free!25803 () Bool)

(declare-fun b_next!25803 () Bool)

(assert (=> start!100516 (= b_free!25803 (not b_next!25803))))

(declare-fun tp!90400 () Bool)

(declare-fun b_and!42507 () Bool)

(assert (=> start!100516 (= tp!90400 b_and!42507)))

(declare-fun b!1200004 () Bool)

(declare-fun res!798882 () Bool)

(declare-fun e!681552 () Bool)

(assert (=> b!1200004 (=> (not res!798882) (not e!681552))))

(declare-datatypes ((array!77768 0))(
  ( (array!77769 (arr!37525 (Array (_ BitVec 32) (_ BitVec 64))) (size!38062 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77768)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1200004 (= res!798882 (= (select (arr!37525 _keys!1208) i!673) k0!934))))

(declare-fun b!1200006 () Bool)

(declare-fun e!681549 () Bool)

(declare-fun tp_is_empty!30507 () Bool)

(assert (=> b!1200006 (= e!681549 tp_is_empty!30507)))

(declare-fun b!1200007 () Bool)

(declare-fun res!798875 () Bool)

(assert (=> b!1200007 (=> (not res!798875) (not e!681552))))

(declare-datatypes ((List!26569 0))(
  ( (Nil!26566) (Cons!26565 (h!27774 (_ BitVec 64)) (t!39359 List!26569)) )
))
(declare-fun arrayNoDuplicates!0 (array!77768 (_ BitVec 32) List!26569) Bool)

(assert (=> b!1200007 (= res!798875 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26566))))

(declare-fun b!1200008 () Bool)

(declare-fun e!681551 () Bool)

(assert (=> b!1200008 (= e!681551 tp_is_empty!30507)))

(declare-fun b!1200009 () Bool)

(declare-fun e!681553 () Bool)

(assert (=> b!1200009 (= e!681553 true)))

(declare-datatypes ((V!45803 0))(
  ( (V!45804 (val!15310 Int)) )
))
(declare-fun zeroValue!944 () V!45803)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14544 0))(
  ( (ValueCellFull!14544 (v!17949 V!45803)) (EmptyCell!14544) )
))
(declare-datatypes ((array!77770 0))(
  ( (array!77771 (arr!37526 (Array (_ BitVec 32) ValueCell!14544)) (size!38063 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77770)

(declare-datatypes ((tuple2!19736 0))(
  ( (tuple2!19737 (_1!9878 (_ BitVec 64)) (_2!9878 V!45803)) )
))
(declare-datatypes ((List!26570 0))(
  ( (Nil!26567) (Cons!26566 (h!27775 tuple2!19736) (t!39360 List!26570)) )
))
(declare-datatypes ((ListLongMap!17717 0))(
  ( (ListLongMap!17718 (toList!8874 List!26570)) )
))
(declare-fun lt!543886 () ListLongMap!17717)

(declare-fun lt!543889 () array!77768)

(declare-fun minValue!944 () V!45803)

(declare-fun getCurrentListMapNoExtraKeys!5287 (array!77768 array!77770 (_ BitVec 32) (_ BitVec 32) V!45803 V!45803 (_ BitVec 32) Int) ListLongMap!17717)

(declare-fun dynLambda!3218 (Int (_ BitVec 64)) V!45803)

(assert (=> b!1200009 (= lt!543886 (getCurrentListMapNoExtraKeys!5287 lt!543889 (array!77771 (store (arr!37526 _values!996) i!673 (ValueCellFull!14544 (dynLambda!3218 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38063 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!543887 () ListLongMap!17717)

(assert (=> b!1200009 (= lt!543887 (getCurrentListMapNoExtraKeys!5287 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1200010 () Bool)

(declare-fun res!798879 () Bool)

(assert (=> b!1200010 (=> (not res!798879) (not e!681552))))

(assert (=> b!1200010 (= res!798879 (and (= (size!38063 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38062 _keys!1208) (size!38063 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!47603 () Bool)

(declare-fun mapRes!47603 () Bool)

(assert (=> mapIsEmpty!47603 mapRes!47603))

(declare-fun b!1200011 () Bool)

(declare-fun res!798880 () Bool)

(assert (=> b!1200011 (=> (not res!798880) (not e!681552))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1200011 (= res!798880 (validKeyInArray!0 k0!934))))

(declare-fun b!1200012 () Bool)

(declare-fun res!798873 () Bool)

(assert (=> b!1200012 (=> (not res!798873) (not e!681552))))

(assert (=> b!1200012 (= res!798873 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38062 _keys!1208))))))

(declare-fun res!798877 () Bool)

(assert (=> start!100516 (=> (not res!798877) (not e!681552))))

(assert (=> start!100516 (= res!798877 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38062 _keys!1208))))))

(assert (=> start!100516 e!681552))

(assert (=> start!100516 tp_is_empty!30507))

(declare-fun array_inv!28498 (array!77768) Bool)

(assert (=> start!100516 (array_inv!28498 _keys!1208)))

(assert (=> start!100516 true))

(assert (=> start!100516 tp!90400))

(declare-fun e!681548 () Bool)

(declare-fun array_inv!28499 (array!77770) Bool)

(assert (=> start!100516 (and (array_inv!28499 _values!996) e!681548)))

(declare-fun b!1200005 () Bool)

(declare-fun res!798876 () Bool)

(assert (=> b!1200005 (=> (not res!798876) (not e!681552))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77768 (_ BitVec 32)) Bool)

(assert (=> b!1200005 (= res!798876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1200013 () Bool)

(assert (=> b!1200013 (= e!681548 (and e!681551 mapRes!47603))))

(declare-fun condMapEmpty!47603 () Bool)

(declare-fun mapDefault!47603 () ValueCell!14544)

(assert (=> b!1200013 (= condMapEmpty!47603 (= (arr!37526 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14544)) mapDefault!47603)))))

(declare-fun mapNonEmpty!47603 () Bool)

(declare-fun tp!90399 () Bool)

(assert (=> mapNonEmpty!47603 (= mapRes!47603 (and tp!90399 e!681549))))

(declare-fun mapKey!47603 () (_ BitVec 32))

(declare-fun mapRest!47603 () (Array (_ BitVec 32) ValueCell!14544))

(declare-fun mapValue!47603 () ValueCell!14544)

(assert (=> mapNonEmpty!47603 (= (arr!37526 _values!996) (store mapRest!47603 mapKey!47603 mapValue!47603))))

(declare-fun b!1200014 () Bool)

(declare-fun e!681547 () Bool)

(assert (=> b!1200014 (= e!681547 (not e!681553))))

(declare-fun res!798874 () Bool)

(assert (=> b!1200014 (=> res!798874 e!681553)))

(assert (=> b!1200014 (= res!798874 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77768 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1200014 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39716 0))(
  ( (Unit!39717) )
))
(declare-fun lt!543888 () Unit!39716)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77768 (_ BitVec 64) (_ BitVec 32)) Unit!39716)

(assert (=> b!1200014 (= lt!543888 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1200015 () Bool)

(declare-fun res!798878 () Bool)

(assert (=> b!1200015 (=> (not res!798878) (not e!681547))))

(assert (=> b!1200015 (= res!798878 (arrayNoDuplicates!0 lt!543889 #b00000000000000000000000000000000 Nil!26566))))

(declare-fun b!1200016 () Bool)

(declare-fun res!798872 () Bool)

(assert (=> b!1200016 (=> (not res!798872) (not e!681552))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1200016 (= res!798872 (validMask!0 mask!1564))))

(declare-fun b!1200017 () Bool)

(assert (=> b!1200017 (= e!681552 e!681547)))

(declare-fun res!798881 () Bool)

(assert (=> b!1200017 (=> (not res!798881) (not e!681547))))

(assert (=> b!1200017 (= res!798881 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543889 mask!1564))))

(assert (=> b!1200017 (= lt!543889 (array!77769 (store (arr!37525 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38062 _keys!1208)))))

(assert (= (and start!100516 res!798877) b!1200016))

(assert (= (and b!1200016 res!798872) b!1200010))

(assert (= (and b!1200010 res!798879) b!1200005))

(assert (= (and b!1200005 res!798876) b!1200007))

(assert (= (and b!1200007 res!798875) b!1200012))

(assert (= (and b!1200012 res!798873) b!1200011))

(assert (= (and b!1200011 res!798880) b!1200004))

(assert (= (and b!1200004 res!798882) b!1200017))

(assert (= (and b!1200017 res!798881) b!1200015))

(assert (= (and b!1200015 res!798878) b!1200014))

(assert (= (and b!1200014 (not res!798874)) b!1200009))

(assert (= (and b!1200013 condMapEmpty!47603) mapIsEmpty!47603))

(assert (= (and b!1200013 (not condMapEmpty!47603)) mapNonEmpty!47603))

(get-info :version)

(assert (= (and mapNonEmpty!47603 ((_ is ValueCellFull!14544) mapValue!47603)) b!1200006))

(assert (= (and b!1200013 ((_ is ValueCellFull!14544) mapDefault!47603)) b!1200008))

(assert (= start!100516 b!1200013))

(declare-fun b_lambda!21017 () Bool)

(assert (=> (not b_lambda!21017) (not b!1200009)))

(declare-fun t!39358 () Bool)

(declare-fun tb!10611 () Bool)

(assert (=> (and start!100516 (= defaultEntry!1004 defaultEntry!1004) t!39358) tb!10611))

(declare-fun result!21791 () Bool)

(assert (=> tb!10611 (= result!21791 tp_is_empty!30507)))

(assert (=> b!1200009 t!39358))

(declare-fun b_and!42509 () Bool)

(assert (= b_and!42507 (and (=> t!39358 result!21791) b_and!42509)))

(declare-fun m!1106453 () Bool)

(assert (=> b!1200007 m!1106453))

(declare-fun m!1106455 () Bool)

(assert (=> start!100516 m!1106455))

(declare-fun m!1106457 () Bool)

(assert (=> start!100516 m!1106457))

(declare-fun m!1106459 () Bool)

(assert (=> b!1200005 m!1106459))

(declare-fun m!1106461 () Bool)

(assert (=> b!1200011 m!1106461))

(declare-fun m!1106463 () Bool)

(assert (=> b!1200009 m!1106463))

(declare-fun m!1106465 () Bool)

(assert (=> b!1200009 m!1106465))

(declare-fun m!1106467 () Bool)

(assert (=> b!1200009 m!1106467))

(declare-fun m!1106469 () Bool)

(assert (=> b!1200009 m!1106469))

(declare-fun m!1106471 () Bool)

(assert (=> b!1200014 m!1106471))

(declare-fun m!1106473 () Bool)

(assert (=> b!1200014 m!1106473))

(declare-fun m!1106475 () Bool)

(assert (=> b!1200017 m!1106475))

(declare-fun m!1106477 () Bool)

(assert (=> b!1200017 m!1106477))

(declare-fun m!1106479 () Bool)

(assert (=> mapNonEmpty!47603 m!1106479))

(declare-fun m!1106481 () Bool)

(assert (=> b!1200016 m!1106481))

(declare-fun m!1106483 () Bool)

(assert (=> b!1200015 m!1106483))

(declare-fun m!1106485 () Bool)

(assert (=> b!1200004 m!1106485))

(check-sat (not b!1200009) (not b!1200007) (not mapNonEmpty!47603) (not b_next!25803) (not b!1200015) b_and!42509 (not b_lambda!21017) (not b!1200017) tp_is_empty!30507 (not b!1200016) (not b!1200005) (not start!100516) (not b!1200011) (not b!1200014))
(check-sat b_and!42509 (not b_next!25803))
