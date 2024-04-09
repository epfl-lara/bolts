; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100432 () Bool)

(assert start!100432)

(declare-fun b_free!25719 () Bool)

(declare-fun b_next!25719 () Bool)

(assert (=> start!100432 (= b_free!25719 (not b_next!25719))))

(declare-fun tp!90147 () Bool)

(declare-fun b_and!42349 () Bool)

(assert (=> start!100432 (= tp!90147 b_and!42349)))

(declare-fun b!1198166 () Bool)

(declare-fun res!797487 () Bool)

(declare-fun e!680669 () Bool)

(assert (=> b!1198166 (=> (not res!797487) (not e!680669))))

(declare-datatypes ((array!77608 0))(
  ( (array!77609 (arr!37445 (Array (_ BitVec 32) (_ BitVec 64))) (size!37982 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77608)

(declare-datatypes ((List!26506 0))(
  ( (Nil!26503) (Cons!26502 (h!27711 (_ BitVec 64)) (t!39220 List!26506)) )
))
(declare-fun arrayNoDuplicates!0 (array!77608 (_ BitVec 32) List!26506) Bool)

(assert (=> b!1198166 (= res!797487 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26503))))

(declare-fun b!1198167 () Bool)

(declare-fun e!680671 () Bool)

(declare-fun e!680667 () Bool)

(declare-fun mapRes!47477 () Bool)

(assert (=> b!1198167 (= e!680671 (and e!680667 mapRes!47477))))

(declare-fun condMapEmpty!47477 () Bool)

(declare-datatypes ((V!45691 0))(
  ( (V!45692 (val!15268 Int)) )
))
(declare-datatypes ((ValueCell!14502 0))(
  ( (ValueCellFull!14502 (v!17907 V!45691)) (EmptyCell!14502) )
))
(declare-datatypes ((array!77610 0))(
  ( (array!77611 (arr!37446 (Array (_ BitVec 32) ValueCell!14502)) (size!37983 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77610)

(declare-fun mapDefault!47477 () ValueCell!14502)

(assert (=> b!1198167 (= condMapEmpty!47477 (= (arr!37446 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14502)) mapDefault!47477)))))

(declare-fun mapNonEmpty!47477 () Bool)

(declare-fun tp!90148 () Bool)

(declare-fun e!680666 () Bool)

(assert (=> mapNonEmpty!47477 (= mapRes!47477 (and tp!90148 e!680666))))

(declare-fun mapValue!47477 () ValueCell!14502)

(declare-fun mapRest!47477 () (Array (_ BitVec 32) ValueCell!14502))

(declare-fun mapKey!47477 () (_ BitVec 32))

(assert (=> mapNonEmpty!47477 (= (arr!37446 _values!996) (store mapRest!47477 mapKey!47477 mapValue!47477))))

(declare-fun b!1198168 () Bool)

(declare-fun res!797489 () Bool)

(assert (=> b!1198168 (=> (not res!797489) (not e!680669))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1198168 (= res!797489 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37982 _keys!1208))))))

(declare-fun mapIsEmpty!47477 () Bool)

(assert (=> mapIsEmpty!47477 mapRes!47477))

(declare-fun b!1198169 () Bool)

(declare-fun tp_is_empty!30423 () Bool)

(assert (=> b!1198169 (= e!680667 tp_is_empty!30423)))

(declare-fun b!1198170 () Bool)

(declare-fun e!680668 () Bool)

(assert (=> b!1198170 (= e!680669 e!680668)))

(declare-fun res!797493 () Bool)

(assert (=> b!1198170 (=> (not res!797493) (not e!680668))))

(declare-fun lt!543395 () array!77608)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77608 (_ BitVec 32)) Bool)

(assert (=> b!1198170 (= res!797493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!543395 mask!1564))))

(assert (=> b!1198170 (= lt!543395 (array!77609 (store (arr!37445 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37982 _keys!1208)))))

(declare-fun b!1198171 () Bool)

(declare-fun e!680670 () Bool)

(assert (=> b!1198171 (= e!680670 true)))

(declare-fun zeroValue!944 () V!45691)

(declare-datatypes ((tuple2!19680 0))(
  ( (tuple2!19681 (_1!9850 (_ BitVec 64)) (_2!9850 V!45691)) )
))
(declare-datatypes ((List!26507 0))(
  ( (Nil!26504) (Cons!26503 (h!27712 tuple2!19680) (t!39221 List!26507)) )
))
(declare-datatypes ((ListLongMap!17661 0))(
  ( (ListLongMap!17662 (toList!8846 List!26507)) )
))
(declare-fun lt!543397 () ListLongMap!17661)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!45691)

(declare-fun getCurrentListMapNoExtraKeys!5259 (array!77608 array!77610 (_ BitVec 32) (_ BitVec 32) V!45691 V!45691 (_ BitVec 32) Int) ListLongMap!17661)

(assert (=> b!1198171 (= lt!543397 (getCurrentListMapNoExtraKeys!5259 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1198172 () Bool)

(assert (=> b!1198172 (= e!680666 tp_is_empty!30423)))

(declare-fun b!1198173 () Bool)

(declare-fun res!797488 () Bool)

(assert (=> b!1198173 (=> (not res!797488) (not e!680669))))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1198173 (= res!797488 (= (select (arr!37445 _keys!1208) i!673) k0!934))))

(declare-fun res!797492 () Bool)

(assert (=> start!100432 (=> (not res!797492) (not e!680669))))

(assert (=> start!100432 (= res!797492 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37982 _keys!1208))))))

(assert (=> start!100432 e!680669))

(assert (=> start!100432 tp_is_empty!30423))

(declare-fun array_inv!28442 (array!77608) Bool)

(assert (=> start!100432 (array_inv!28442 _keys!1208)))

(assert (=> start!100432 true))

(assert (=> start!100432 tp!90147))

(declare-fun array_inv!28443 (array!77610) Bool)

(assert (=> start!100432 (and (array_inv!28443 _values!996) e!680671)))

(declare-fun b!1198174 () Bool)

(declare-fun res!797496 () Bool)

(assert (=> b!1198174 (=> (not res!797496) (not e!680669))))

(assert (=> b!1198174 (= res!797496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1198175 () Bool)

(declare-fun res!797494 () Bool)

(assert (=> b!1198175 (=> (not res!797494) (not e!680669))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1198175 (= res!797494 (validKeyInArray!0 k0!934))))

(declare-fun b!1198176 () Bool)

(assert (=> b!1198176 (= e!680668 (not e!680670))))

(declare-fun res!797491 () Bool)

(assert (=> b!1198176 (=> res!797491 e!680670)))

(assert (=> b!1198176 (= res!797491 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!77608 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1198176 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!39658 0))(
  ( (Unit!39659) )
))
(declare-fun lt!543396 () Unit!39658)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!77608 (_ BitVec 64) (_ BitVec 32)) Unit!39658)

(assert (=> b!1198176 (= lt!543396 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1198177 () Bool)

(declare-fun res!797490 () Bool)

(assert (=> b!1198177 (=> (not res!797490) (not e!680669))))

(assert (=> b!1198177 (= res!797490 (and (= (size!37983 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37982 _keys!1208) (size!37983 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1198178 () Bool)

(declare-fun res!797486 () Bool)

(assert (=> b!1198178 (=> (not res!797486) (not e!680669))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1198178 (= res!797486 (validMask!0 mask!1564))))

(declare-fun b!1198179 () Bool)

(declare-fun res!797495 () Bool)

(assert (=> b!1198179 (=> (not res!797495) (not e!680668))))

(assert (=> b!1198179 (= res!797495 (arrayNoDuplicates!0 lt!543395 #b00000000000000000000000000000000 Nil!26503))))

(assert (= (and start!100432 res!797492) b!1198178))

(assert (= (and b!1198178 res!797486) b!1198177))

(assert (= (and b!1198177 res!797490) b!1198174))

(assert (= (and b!1198174 res!797496) b!1198166))

(assert (= (and b!1198166 res!797487) b!1198168))

(assert (= (and b!1198168 res!797489) b!1198175))

(assert (= (and b!1198175 res!797494) b!1198173))

(assert (= (and b!1198173 res!797488) b!1198170))

(assert (= (and b!1198170 res!797493) b!1198179))

(assert (= (and b!1198179 res!797495) b!1198176))

(assert (= (and b!1198176 (not res!797491)) b!1198171))

(assert (= (and b!1198167 condMapEmpty!47477) mapIsEmpty!47477))

(assert (= (and b!1198167 (not condMapEmpty!47477)) mapNonEmpty!47477))

(get-info :version)

(assert (= (and mapNonEmpty!47477 ((_ is ValueCellFull!14502) mapValue!47477)) b!1198172))

(assert (= (and b!1198167 ((_ is ValueCellFull!14502) mapDefault!47477)) b!1198169))

(assert (= start!100432 b!1198167))

(declare-fun m!1105055 () Bool)

(assert (=> b!1198166 m!1105055))

(declare-fun m!1105057 () Bool)

(assert (=> b!1198176 m!1105057))

(declare-fun m!1105059 () Bool)

(assert (=> b!1198176 m!1105059))

(declare-fun m!1105061 () Bool)

(assert (=> b!1198179 m!1105061))

(declare-fun m!1105063 () Bool)

(assert (=> b!1198178 m!1105063))

(declare-fun m!1105065 () Bool)

(assert (=> start!100432 m!1105065))

(declare-fun m!1105067 () Bool)

(assert (=> start!100432 m!1105067))

(declare-fun m!1105069 () Bool)

(assert (=> b!1198175 m!1105069))

(declare-fun m!1105071 () Bool)

(assert (=> b!1198173 m!1105071))

(declare-fun m!1105073 () Bool)

(assert (=> b!1198174 m!1105073))

(declare-fun m!1105075 () Bool)

(assert (=> b!1198171 m!1105075))

(declare-fun m!1105077 () Bool)

(assert (=> mapNonEmpty!47477 m!1105077))

(declare-fun m!1105079 () Bool)

(assert (=> b!1198170 m!1105079))

(declare-fun m!1105081 () Bool)

(assert (=> b!1198170 m!1105081))

(check-sat (not b!1198178) (not b!1198170) (not b!1198171) (not b!1198176) (not b_next!25719) b_and!42349 (not b!1198175) (not b!1198179) (not mapNonEmpty!47477) (not b!1198166) (not start!100432) (not b!1198174) tp_is_empty!30423)
(check-sat b_and!42349 (not b_next!25719))
