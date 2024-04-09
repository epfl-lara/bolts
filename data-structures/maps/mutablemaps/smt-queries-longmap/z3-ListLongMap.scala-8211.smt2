; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!100170 () Bool)

(assert start!100170)

(declare-fun mapIsEmpty!47192 () Bool)

(declare-fun mapRes!47192 () Bool)

(assert (=> mapIsEmpty!47192 mapRes!47192))

(declare-fun b!1194102 () Bool)

(declare-fun res!794565 () Bool)

(declare-fun e!678676 () Bool)

(assert (=> b!1194102 (=> (not res!794565) (not e!678676))))

(declare-datatypes ((array!77248 0))(
  ( (array!77249 (arr!37270 (Array (_ BitVec 32) (_ BitVec 64))) (size!37807 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!77248)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!77248 (_ BitVec 32)) Bool)

(assert (=> b!1194102 (= res!794565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1194103 () Bool)

(declare-fun res!794567 () Bool)

(assert (=> b!1194103 (=> (not res!794567) (not e!678676))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1194103 (= res!794567 (validKeyInArray!0 k0!934))))

(declare-fun b!1194104 () Bool)

(declare-fun res!794566 () Bool)

(assert (=> b!1194104 (=> (not res!794566) (not e!678676))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1194104 (= res!794566 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37807 _keys!1208))))))

(declare-fun b!1194105 () Bool)

(declare-fun e!678673 () Bool)

(assert (=> b!1194105 (= e!678676 e!678673)))

(declare-fun res!794564 () Bool)

(assert (=> b!1194105 (=> (not res!794564) (not e!678673))))

(declare-fun lt!542679 () array!77248)

(assert (=> b!1194105 (= res!794564 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!542679 mask!1564))))

(assert (=> b!1194105 (= lt!542679 (array!77249 (store (arr!37270 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37807 _keys!1208)))))

(declare-fun b!1194106 () Bool)

(declare-fun res!794572 () Bool)

(assert (=> b!1194106 (=> (not res!794572) (not e!678676))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!45451 0))(
  ( (V!45452 (val!15178 Int)) )
))
(declare-datatypes ((ValueCell!14412 0))(
  ( (ValueCellFull!14412 (v!17817 V!45451)) (EmptyCell!14412) )
))
(declare-datatypes ((array!77250 0))(
  ( (array!77251 (arr!37271 (Array (_ BitVec 32) ValueCell!14412)) (size!37808 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77250)

(assert (=> b!1194106 (= res!794572 (and (= (size!37808 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37807 _keys!1208) (size!37808 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1194107 () Bool)

(declare-fun res!794568 () Bool)

(assert (=> b!1194107 (=> (not res!794568) (not e!678676))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1194107 (= res!794568 (validMask!0 mask!1564))))

(declare-fun b!1194108 () Bool)

(declare-fun e!678675 () Bool)

(declare-fun e!678671 () Bool)

(assert (=> b!1194108 (= e!678675 (and e!678671 mapRes!47192))))

(declare-fun condMapEmpty!47192 () Bool)

(declare-fun mapDefault!47192 () ValueCell!14412)

(assert (=> b!1194108 (= condMapEmpty!47192 (= (arr!37271 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14412)) mapDefault!47192)))))

(declare-fun b!1194109 () Bool)

(declare-fun res!794570 () Bool)

(assert (=> b!1194109 (=> (not res!794570) (not e!678676))))

(assert (=> b!1194109 (= res!794570 (= (select (arr!37270 _keys!1208) i!673) k0!934))))

(declare-fun res!794571 () Bool)

(assert (=> start!100170 (=> (not res!794571) (not e!678676))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!100170 (= res!794571 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37807 _keys!1208))))))

(assert (=> start!100170 e!678676))

(declare-fun array_inv!28310 (array!77248) Bool)

(assert (=> start!100170 (array_inv!28310 _keys!1208)))

(assert (=> start!100170 true))

(declare-fun array_inv!28311 (array!77250) Bool)

(assert (=> start!100170 (and (array_inv!28311 _values!996) e!678675)))

(declare-fun b!1194110 () Bool)

(declare-fun res!794569 () Bool)

(assert (=> b!1194110 (=> (not res!794569) (not e!678676))))

(declare-datatypes ((List!26415 0))(
  ( (Nil!26412) (Cons!26411 (h!27620 (_ BitVec 64)) (t!39093 List!26415)) )
))
(declare-fun arrayNoDuplicates!0 (array!77248 (_ BitVec 32) List!26415) Bool)

(assert (=> b!1194110 (= res!794569 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26412))))

(declare-fun mapNonEmpty!47192 () Bool)

(declare-fun tp!89803 () Bool)

(declare-fun e!678674 () Bool)

(assert (=> mapNonEmpty!47192 (= mapRes!47192 (and tp!89803 e!678674))))

(declare-fun mapKey!47192 () (_ BitVec 32))

(declare-fun mapRest!47192 () (Array (_ BitVec 32) ValueCell!14412))

(declare-fun mapValue!47192 () ValueCell!14412)

(assert (=> mapNonEmpty!47192 (= (arr!37271 _values!996) (store mapRest!47192 mapKey!47192 mapValue!47192))))

(declare-fun b!1194111 () Bool)

(declare-fun tp_is_empty!30243 () Bool)

(assert (=> b!1194111 (= e!678674 tp_is_empty!30243)))

(declare-fun b!1194112 () Bool)

(assert (=> b!1194112 (= e!678671 tp_is_empty!30243)))

(declare-fun b!1194113 () Bool)

(assert (=> b!1194113 (= e!678673 false)))

(declare-fun lt!542678 () Bool)

(assert (=> b!1194113 (= lt!542678 (arrayNoDuplicates!0 lt!542679 #b00000000000000000000000000000000 Nil!26412))))

(assert (= (and start!100170 res!794571) b!1194107))

(assert (= (and b!1194107 res!794568) b!1194106))

(assert (= (and b!1194106 res!794572) b!1194102))

(assert (= (and b!1194102 res!794565) b!1194110))

(assert (= (and b!1194110 res!794569) b!1194104))

(assert (= (and b!1194104 res!794566) b!1194103))

(assert (= (and b!1194103 res!794567) b!1194109))

(assert (= (and b!1194109 res!794570) b!1194105))

(assert (= (and b!1194105 res!794564) b!1194113))

(assert (= (and b!1194108 condMapEmpty!47192) mapIsEmpty!47192))

(assert (= (and b!1194108 (not condMapEmpty!47192)) mapNonEmpty!47192))

(get-info :version)

(assert (= (and mapNonEmpty!47192 ((_ is ValueCellFull!14412) mapValue!47192)) b!1194111))

(assert (= (and b!1194108 ((_ is ValueCellFull!14412) mapDefault!47192)) b!1194112))

(assert (= start!100170 b!1194108))

(declare-fun m!1102173 () Bool)

(assert (=> mapNonEmpty!47192 m!1102173))

(declare-fun m!1102175 () Bool)

(assert (=> b!1194110 m!1102175))

(declare-fun m!1102177 () Bool)

(assert (=> b!1194105 m!1102177))

(declare-fun m!1102179 () Bool)

(assert (=> b!1194105 m!1102179))

(declare-fun m!1102181 () Bool)

(assert (=> b!1194109 m!1102181))

(declare-fun m!1102183 () Bool)

(assert (=> b!1194103 m!1102183))

(declare-fun m!1102185 () Bool)

(assert (=> b!1194107 m!1102185))

(declare-fun m!1102187 () Bool)

(assert (=> b!1194102 m!1102187))

(declare-fun m!1102189 () Bool)

(assert (=> start!100170 m!1102189))

(declare-fun m!1102191 () Bool)

(assert (=> start!100170 m!1102191))

(declare-fun m!1102193 () Bool)

(assert (=> b!1194113 m!1102193))

(check-sat (not b!1194113) (not b!1194103) (not b!1194107) tp_is_empty!30243 (not b!1194110) (not mapNonEmpty!47192) (not b!1194105) (not b!1194102) (not start!100170))
(check-sat)
