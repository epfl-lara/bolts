; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99100 () Bool)

(assert start!99100)

(declare-fun b_free!24669 () Bool)

(declare-fun b_next!24669 () Bool)

(assert (=> start!99100 (= b_free!24669 (not b_next!24669))))

(declare-fun tp!86719 () Bool)

(declare-fun b_and!40201 () Bool)

(assert (=> start!99100 (= tp!86719 b_and!40201)))

(declare-fun b!1164778 () Bool)

(declare-fun e!662260 () Bool)

(assert (=> b!1164778 (= e!662260 true)))

(declare-datatypes ((V!44059 0))(
  ( (V!44060 (val!14656 Int)) )
))
(declare-fun zeroValue!944 () V!44059)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13890 0))(
  ( (ValueCellFull!13890 (v!17294 V!44059)) (EmptyCell!13890) )
))
(declare-datatypes ((array!75182 0))(
  ( (array!75183 (arr!36238 (Array (_ BitVec 32) ValueCell!13890)) (size!36775 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75182)

(declare-fun minValue!944 () V!44059)

(declare-datatypes ((array!75184 0))(
  ( (array!75185 (arr!36239 (Array (_ BitVec 32) (_ BitVec 64))) (size!36776 (_ BitVec 32))) )
))
(declare-fun lt!524694 () array!75184)

(declare-datatypes ((tuple2!18762 0))(
  ( (tuple2!18763 (_1!9391 (_ BitVec 64)) (_2!9391 V!44059)) )
))
(declare-datatypes ((List!25539 0))(
  ( (Nil!25536) (Cons!25535 (h!26744 tuple2!18762) (t!37207 List!25539)) )
))
(declare-datatypes ((ListLongMap!16743 0))(
  ( (ListLongMap!16744 (toList!8387 List!25539)) )
))
(declare-fun lt!524697 () ListLongMap!16743)

(declare-fun getCurrentListMapNoExtraKeys!4820 (array!75184 array!75182 (_ BitVec 32) (_ BitVec 32) V!44059 V!44059 (_ BitVec 32) Int) ListLongMap!16743)

(declare-fun dynLambda!2817 (Int (_ BitVec 64)) V!44059)

(assert (=> b!1164778 (= lt!524697 (getCurrentListMapNoExtraKeys!4820 lt!524694 (array!75183 (store (arr!36238 _values!996) i!673 (ValueCellFull!13890 (dynLambda!2817 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36775 _values!996)) mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _keys!1208 () array!75184)

(declare-fun lt!524696 () ListLongMap!16743)

(assert (=> b!1164778 (= lt!524696 (getCurrentListMapNoExtraKeys!4820 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!772536 () Bool)

(declare-fun e!662259 () Bool)

(assert (=> start!99100 (=> (not res!772536) (not e!662259))))

(assert (=> start!99100 (= res!772536 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36776 _keys!1208))))))

(assert (=> start!99100 e!662259))

(declare-fun tp_is_empty!29199 () Bool)

(assert (=> start!99100 tp_is_empty!29199))

(declare-fun array_inv!27594 (array!75184) Bool)

(assert (=> start!99100 (array_inv!27594 _keys!1208)))

(assert (=> start!99100 true))

(assert (=> start!99100 tp!86719))

(declare-fun e!662261 () Bool)

(declare-fun array_inv!27595 (array!75182) Bool)

(assert (=> start!99100 (and (array_inv!27595 _values!996) e!662261)))

(declare-fun b!1164779 () Bool)

(declare-fun e!662258 () Bool)

(assert (=> b!1164779 (= e!662259 e!662258)))

(declare-fun res!772537 () Bool)

(assert (=> b!1164779 (=> (not res!772537) (not e!662258))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75184 (_ BitVec 32)) Bool)

(assert (=> b!1164779 (= res!772537 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524694 mask!1564))))

(assert (=> b!1164779 (= lt!524694 (array!75185 (store (arr!36239 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36776 _keys!1208)))))

(declare-fun b!1164780 () Bool)

(declare-fun e!662262 () Bool)

(declare-fun mapRes!45623 () Bool)

(assert (=> b!1164780 (= e!662261 (and e!662262 mapRes!45623))))

(declare-fun condMapEmpty!45623 () Bool)

(declare-fun mapDefault!45623 () ValueCell!13890)

(assert (=> b!1164780 (= condMapEmpty!45623 (= (arr!36238 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13890)) mapDefault!45623)))))

(declare-fun mapNonEmpty!45623 () Bool)

(declare-fun tp!86718 () Bool)

(declare-fun e!662257 () Bool)

(assert (=> mapNonEmpty!45623 (= mapRes!45623 (and tp!86718 e!662257))))

(declare-fun mapRest!45623 () (Array (_ BitVec 32) ValueCell!13890))

(declare-fun mapValue!45623 () ValueCell!13890)

(declare-fun mapKey!45623 () (_ BitVec 32))

(assert (=> mapNonEmpty!45623 (= (arr!36238 _values!996) (store mapRest!45623 mapKey!45623 mapValue!45623))))

(declare-fun b!1164781 () Bool)

(assert (=> b!1164781 (= e!662257 tp_is_empty!29199)))

(declare-fun b!1164782 () Bool)

(assert (=> b!1164782 (= e!662258 (not e!662260))))

(declare-fun res!772530 () Bool)

(assert (=> b!1164782 (=> res!772530 e!662260)))

(assert (=> b!1164782 (= res!772530 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75184 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1164782 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38332 0))(
  ( (Unit!38333) )
))
(declare-fun lt!524695 () Unit!38332)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75184 (_ BitVec 64) (_ BitVec 32)) Unit!38332)

(assert (=> b!1164782 (= lt!524695 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1164783 () Bool)

(declare-fun res!772529 () Bool)

(assert (=> b!1164783 (=> (not res!772529) (not e!662259))))

(assert (=> b!1164783 (= res!772529 (and (= (size!36775 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36776 _keys!1208) (size!36775 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1164784 () Bool)

(declare-fun res!772534 () Bool)

(assert (=> b!1164784 (=> (not res!772534) (not e!662259))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1164784 (= res!772534 (validKeyInArray!0 k0!934))))

(declare-fun b!1164785 () Bool)

(declare-fun res!772528 () Bool)

(assert (=> b!1164785 (=> (not res!772528) (not e!662259))))

(declare-datatypes ((List!25540 0))(
  ( (Nil!25537) (Cons!25536 (h!26745 (_ BitVec 64)) (t!37208 List!25540)) )
))
(declare-fun arrayNoDuplicates!0 (array!75184 (_ BitVec 32) List!25540) Bool)

(assert (=> b!1164785 (= res!772528 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25537))))

(declare-fun mapIsEmpty!45623 () Bool)

(assert (=> mapIsEmpty!45623 mapRes!45623))

(declare-fun b!1164786 () Bool)

(declare-fun res!772531 () Bool)

(assert (=> b!1164786 (=> (not res!772531) (not e!662259))))

(assert (=> b!1164786 (= res!772531 (= (select (arr!36239 _keys!1208) i!673) k0!934))))

(declare-fun b!1164787 () Bool)

(declare-fun res!772538 () Bool)

(assert (=> b!1164787 (=> (not res!772538) (not e!662259))))

(assert (=> b!1164787 (= res!772538 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36776 _keys!1208))))))

(declare-fun b!1164788 () Bool)

(declare-fun res!772532 () Bool)

(assert (=> b!1164788 (=> (not res!772532) (not e!662259))))

(assert (=> b!1164788 (= res!772532 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1164789 () Bool)

(declare-fun res!772535 () Bool)

(assert (=> b!1164789 (=> (not res!772535) (not e!662258))))

(assert (=> b!1164789 (= res!772535 (arrayNoDuplicates!0 lt!524694 #b00000000000000000000000000000000 Nil!25537))))

(declare-fun b!1164790 () Bool)

(declare-fun res!772533 () Bool)

(assert (=> b!1164790 (=> (not res!772533) (not e!662259))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1164790 (= res!772533 (validMask!0 mask!1564))))

(declare-fun b!1164791 () Bool)

(assert (=> b!1164791 (= e!662262 tp_is_empty!29199)))

(assert (= (and start!99100 res!772536) b!1164790))

(assert (= (and b!1164790 res!772533) b!1164783))

(assert (= (and b!1164783 res!772529) b!1164788))

(assert (= (and b!1164788 res!772532) b!1164785))

(assert (= (and b!1164785 res!772528) b!1164787))

(assert (= (and b!1164787 res!772538) b!1164784))

(assert (= (and b!1164784 res!772534) b!1164786))

(assert (= (and b!1164786 res!772531) b!1164779))

(assert (= (and b!1164779 res!772537) b!1164789))

(assert (= (and b!1164789 res!772535) b!1164782))

(assert (= (and b!1164782 (not res!772530)) b!1164778))

(assert (= (and b!1164780 condMapEmpty!45623) mapIsEmpty!45623))

(assert (= (and b!1164780 (not condMapEmpty!45623)) mapNonEmpty!45623))

(get-info :version)

(assert (= (and mapNonEmpty!45623 ((_ is ValueCellFull!13890) mapValue!45623)) b!1164781))

(assert (= (and b!1164780 ((_ is ValueCellFull!13890) mapDefault!45623)) b!1164791))

(assert (= start!99100 b!1164780))

(declare-fun b_lambda!19793 () Bool)

(assert (=> (not b_lambda!19793) (not b!1164778)))

(declare-fun t!37206 () Bool)

(declare-fun tb!9489 () Bool)

(assert (=> (and start!99100 (= defaultEntry!1004 defaultEntry!1004) t!37206) tb!9489))

(declare-fun result!19535 () Bool)

(assert (=> tb!9489 (= result!19535 tp_is_empty!29199)))

(assert (=> b!1164778 t!37206))

(declare-fun b_and!40203 () Bool)

(assert (= b_and!40201 (and (=> t!37206 result!19535) b_and!40203)))

(declare-fun m!1073165 () Bool)

(assert (=> b!1164785 m!1073165))

(declare-fun m!1073167 () Bool)

(assert (=> b!1164779 m!1073167))

(declare-fun m!1073169 () Bool)

(assert (=> b!1164779 m!1073169))

(declare-fun m!1073171 () Bool)

(assert (=> b!1164789 m!1073171))

(declare-fun m!1073173 () Bool)

(assert (=> b!1164784 m!1073173))

(declare-fun m!1073175 () Bool)

(assert (=> b!1164778 m!1073175))

(declare-fun m!1073177 () Bool)

(assert (=> b!1164778 m!1073177))

(declare-fun m!1073179 () Bool)

(assert (=> b!1164778 m!1073179))

(declare-fun m!1073181 () Bool)

(assert (=> b!1164778 m!1073181))

(declare-fun m!1073183 () Bool)

(assert (=> b!1164788 m!1073183))

(declare-fun m!1073185 () Bool)

(assert (=> mapNonEmpty!45623 m!1073185))

(declare-fun m!1073187 () Bool)

(assert (=> b!1164782 m!1073187))

(declare-fun m!1073189 () Bool)

(assert (=> b!1164782 m!1073189))

(declare-fun m!1073191 () Bool)

(assert (=> b!1164786 m!1073191))

(declare-fun m!1073193 () Bool)

(assert (=> b!1164790 m!1073193))

(declare-fun m!1073195 () Bool)

(assert (=> start!99100 m!1073195))

(declare-fun m!1073197 () Bool)

(assert (=> start!99100 m!1073197))

(check-sat (not b!1164790) (not b!1164779) (not b!1164782) (not b!1164784) (not b_lambda!19793) b_and!40203 (not b_next!24669) (not b!1164789) (not b!1164785) (not b!1164778) (not b!1164788) (not mapNonEmpty!45623) tp_is_empty!29199 (not start!99100))
(check-sat b_and!40203 (not b_next!24669))
