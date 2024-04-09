; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100438 () Bool)

(assert start!100438)

(declare-fun b_free!25725 () Bool)

(declare-fun b_next!25725 () Bool)

(assert (=> start!100438 (= b_free!25725 (not b_next!25725))))

(declare-fun tp!90165 () Bool)

(declare-fun b_and!42355 () Bool)

(assert (=> start!100438 (= tp!90165 b_and!42355)))

(declare-fun b!1198292 () Bool)

(declare-fun res!797591 () Bool)

(declare-fun e!680730 () Bool)

(assert (=> b!1198292 (=> (not res!797591) (not e!680730))))

(declare-datatypes ((array!77620 0))(
  ( (array!77621 (arr!37451 (Array (_ BitVec 32) (_ BitVec 64))) (size!37988 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77620)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77620 (_ BitVec 32)) Bool)

(assert (=> b!1198292 (= res!797591 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1198293 () Bool)

(declare-fun res!797590 () Bool)

(assert (=> b!1198293 (=> (not res!797590) (not e!680730))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45699 0))(
  ( (V!45700 (val!15271 Int)) )
))
(declare-datatypes ((ValueCell!14505 0))(
  ( (ValueCellFull!14505 (v!17910 V!45699)) (EmptyCell!14505) )
))
(declare-datatypes ((array!77622 0))(
  ( (array!77623 (arr!37452 (Array (_ BitVec 32) ValueCell!14505)) (size!37989 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77622)

(assert (=> b!1198293 (= res!797590 (and (= (size!37989 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37988 _keys!1208) (size!37989 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1198294 () Bool)

(declare-fun res!797585 () Bool)

(assert (=> b!1198294 (=> (not res!797585) (not e!680730))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1198294 (= res!797585 (validMask!0 mask!1564))))

(declare-fun b!1198295 () Bool)

(declare-fun e!680733 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1198295 (= e!680733 (bvslt i!673 (size!37989 _values!996)))))

(declare-fun zeroValue!944 () V!45699)

(declare-datatypes ((tuple2!19684 0))(
  ( (tuple2!19685 (_1!9852 (_ BitVec 64)) (_2!9852 V!45699)) )
))
(declare-datatypes ((List!26511 0))(
  ( (Nil!26508) (Cons!26507 (h!27716 tuple2!19684) (t!39225 List!26511)) )
))
(declare-datatypes ((ListLongMap!17665 0))(
  ( (ListLongMap!17666 (toList!8848 List!26511)) )
))
(declare-fun lt!543424 () ListLongMap!17665)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!45699)

(declare-fun getCurrentListMapNoExtraKeys!5261 (array!77620 array!77622 (_ BitVec 32) (_ BitVec 32) V!45699 V!45699 (_ BitVec 32) Int) ListLongMap!17665)

(assert (=> b!1198295 (= lt!543424 (getCurrentListMapNoExtraKeys!5261 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1198296 () Bool)

(declare-fun res!797593 () Bool)

(assert (=> b!1198296 (=> (not res!797593) (not e!680730))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1198296 (= res!797593 (validKeyInArray!0 k0!934))))

(declare-fun b!1198297 () Bool)

(declare-fun e!680734 () Bool)

(assert (=> b!1198297 (= e!680734 (not e!680733))))

(declare-fun res!797592 () Bool)

(assert (=> b!1198297 (=> res!797592 e!680733)))

(assert (=> b!1198297 (= res!797592 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77620 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1198297 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39662 0))(
  ( (Unit!39663) )
))
(declare-fun lt!543423 () Unit!39662)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77620 (_ BitVec 64) (_ BitVec 32)) Unit!39662)

(assert (=> b!1198297 (= lt!543423 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapIsEmpty!47486 () Bool)

(declare-fun mapRes!47486 () Bool)

(assert (=> mapIsEmpty!47486 mapRes!47486))

(declare-fun b!1198298 () Bool)

(declare-fun e!680731 () Bool)

(declare-fun tp_is_empty!30429 () Bool)

(assert (=> b!1198298 (= e!680731 tp_is_empty!30429)))

(declare-fun b!1198299 () Bool)

(declare-fun e!680732 () Bool)

(assert (=> b!1198299 (= e!680732 (and e!680731 mapRes!47486))))

(declare-fun condMapEmpty!47486 () Bool)

(declare-fun mapDefault!47486 () ValueCell!14505)

(assert (=> b!1198299 (= condMapEmpty!47486 (= (arr!37452 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14505)) mapDefault!47486)))))

(declare-fun b!1198300 () Bool)

(assert (=> b!1198300 (= e!680730 e!680734)))

(declare-fun res!797587 () Bool)

(assert (=> b!1198300 (=> (not res!797587) (not e!680734))))

(declare-fun lt!543422 () array!77620)

(assert (=> b!1198300 (= res!797587 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543422 mask!1564))))

(assert (=> b!1198300 (= lt!543422 (array!77621 (store (arr!37451 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37988 _keys!1208)))))

(declare-fun b!1198301 () Bool)

(declare-fun res!797589 () Bool)

(assert (=> b!1198301 (=> (not res!797589) (not e!680730))))

(declare-datatypes ((List!26512 0))(
  ( (Nil!26509) (Cons!26508 (h!27717 (_ BitVec 64)) (t!39226 List!26512)) )
))
(declare-fun arrayNoDuplicates!0 (array!77620 (_ BitVec 32) List!26512) Bool)

(assert (=> b!1198301 (= res!797589 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26509))))

(declare-fun b!1198302 () Bool)

(declare-fun e!680728 () Bool)

(assert (=> b!1198302 (= e!680728 tp_is_empty!30429)))

(declare-fun b!1198303 () Bool)

(declare-fun res!797594 () Bool)

(assert (=> b!1198303 (=> (not res!797594) (not e!680734))))

(assert (=> b!1198303 (= res!797594 (arrayNoDuplicates!0 lt!543422 #b00000000000000000000000000000000 Nil!26509))))

(declare-fun b!1198304 () Bool)

(declare-fun res!797595 () Bool)

(assert (=> b!1198304 (=> (not res!797595) (not e!680730))))

(assert (=> b!1198304 (= res!797595 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37988 _keys!1208))))))

(declare-fun b!1198305 () Bool)

(declare-fun res!797586 () Bool)

(assert (=> b!1198305 (=> (not res!797586) (not e!680730))))

(assert (=> b!1198305 (= res!797586 (= (select (arr!37451 _keys!1208) i!673) k0!934))))

(declare-fun mapNonEmpty!47486 () Bool)

(declare-fun tp!90166 () Bool)

(assert (=> mapNonEmpty!47486 (= mapRes!47486 (and tp!90166 e!680728))))

(declare-fun mapRest!47486 () (Array (_ BitVec 32) ValueCell!14505))

(declare-fun mapValue!47486 () ValueCell!14505)

(declare-fun mapKey!47486 () (_ BitVec 32))

(assert (=> mapNonEmpty!47486 (= (arr!37452 _values!996) (store mapRest!47486 mapKey!47486 mapValue!47486))))

(declare-fun res!797588 () Bool)

(assert (=> start!100438 (=> (not res!797588) (not e!680730))))

(assert (=> start!100438 (= res!797588 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37988 _keys!1208))))))

(assert (=> start!100438 e!680730))

(assert (=> start!100438 tp_is_empty!30429))

(declare-fun array_inv!28446 (array!77620) Bool)

(assert (=> start!100438 (array_inv!28446 _keys!1208)))

(assert (=> start!100438 true))

(assert (=> start!100438 tp!90165))

(declare-fun array_inv!28447 (array!77622) Bool)

(assert (=> start!100438 (and (array_inv!28447 _values!996) e!680732)))

(assert (= (and start!100438 res!797588) b!1198294))

(assert (= (and b!1198294 res!797585) b!1198293))

(assert (= (and b!1198293 res!797590) b!1198292))

(assert (= (and b!1198292 res!797591) b!1198301))

(assert (= (and b!1198301 res!797589) b!1198304))

(assert (= (and b!1198304 res!797595) b!1198296))

(assert (= (and b!1198296 res!797593) b!1198305))

(assert (= (and b!1198305 res!797586) b!1198300))

(assert (= (and b!1198300 res!797587) b!1198303))

(assert (= (and b!1198303 res!797594) b!1198297))

(assert (= (and b!1198297 (not res!797592)) b!1198295))

(assert (= (and b!1198299 condMapEmpty!47486) mapIsEmpty!47486))

(assert (= (and b!1198299 (not condMapEmpty!47486)) mapNonEmpty!47486))

(get-info :version)

(assert (= (and mapNonEmpty!47486 ((_ is ValueCellFull!14505) mapValue!47486)) b!1198302))

(assert (= (and b!1198299 ((_ is ValueCellFull!14505) mapDefault!47486)) b!1198298))

(assert (= start!100438 b!1198299))

(declare-fun m!1105139 () Bool)

(assert (=> mapNonEmpty!47486 m!1105139))

(declare-fun m!1105141 () Bool)

(assert (=> b!1198292 m!1105141))

(declare-fun m!1105143 () Bool)

(assert (=> b!1198301 m!1105143))

(declare-fun m!1105145 () Bool)

(assert (=> b!1198303 m!1105145))

(declare-fun m!1105147 () Bool)

(assert (=> b!1198294 m!1105147))

(declare-fun m!1105149 () Bool)

(assert (=> b!1198297 m!1105149))

(declare-fun m!1105151 () Bool)

(assert (=> b!1198297 m!1105151))

(declare-fun m!1105153 () Bool)

(assert (=> b!1198296 m!1105153))

(declare-fun m!1105155 () Bool)

(assert (=> b!1198300 m!1105155))

(declare-fun m!1105157 () Bool)

(assert (=> b!1198300 m!1105157))

(declare-fun m!1105159 () Bool)

(assert (=> start!100438 m!1105159))

(declare-fun m!1105161 () Bool)

(assert (=> start!100438 m!1105161))

(declare-fun m!1105163 () Bool)

(assert (=> b!1198305 m!1105163))

(declare-fun m!1105165 () Bool)

(assert (=> b!1198295 m!1105165))

(check-sat (not b!1198301) (not b!1198300) (not b_next!25725) (not b!1198292) (not b!1198303) (not b!1198294) (not b!1198297) (not b!1198296) (not start!100438) b_and!42355 tp_is_empty!30429 (not mapNonEmpty!47486) (not b!1198295))
(check-sat b_and!42355 (not b_next!25725))
