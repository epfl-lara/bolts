; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112130 () Bool)

(assert start!112130)

(declare-fun b!1327602 () Bool)

(declare-fun res!881023 () Bool)

(declare-fun e!756841 () Bool)

(assert (=> b!1327602 (=> (not res!881023) (not e!756841))))

(declare-datatypes ((V!53635 0))(
  ( (V!53636 (val!18274 Int)) )
))
(declare-datatypes ((ValueCell!17301 0))(
  ( (ValueCellFull!17301 (v!20909 V!53635)) (EmptyCell!17301) )
))
(declare-datatypes ((array!89665 0))(
  ( (array!89666 (arr!43294 (Array (_ BitVec 32) ValueCell!17301)) (size!43845 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89665)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!89667 0))(
  ( (array!89668 (arr!43295 (Array (_ BitVec 32) (_ BitVec 64))) (size!43846 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89667)

(assert (=> b!1327602 (= res!881023 (and (= (size!43845 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!43846 _keys!1590) (size!43845 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1327603 () Bool)

(declare-fun e!756840 () Bool)

(declare-fun tp_is_empty!36399 () Bool)

(assert (=> b!1327603 (= e!756840 tp_is_empty!36399)))

(declare-fun b!1327604 () Bool)

(declare-fun e!756842 () Bool)

(assert (=> b!1327604 (= e!756842 tp_is_empty!36399)))

(declare-fun b!1327605 () Bool)

(declare-fun res!881022 () Bool)

(assert (=> b!1327605 (=> (not res!881022) (not e!756841))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89667 (_ BitVec 32)) Bool)

(assert (=> b!1327605 (= res!881022 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1327606 () Bool)

(declare-fun e!756844 () Bool)

(declare-fun mapRes!56272 () Bool)

(assert (=> b!1327606 (= e!756844 (and e!756840 mapRes!56272))))

(declare-fun condMapEmpty!56272 () Bool)

(declare-fun mapDefault!56272 () ValueCell!17301)

(assert (=> b!1327606 (= condMapEmpty!56272 (= (arr!43294 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17301)) mapDefault!56272)))))

(declare-fun mapIsEmpty!56272 () Bool)

(assert (=> mapIsEmpty!56272 mapRes!56272))

(declare-fun b!1327607 () Bool)

(assert (=> b!1327607 (= e!756841 false)))

(declare-fun lt!590672 () Bool)

(declare-datatypes ((List!30873 0))(
  ( (Nil!30870) (Cons!30869 (h!32078 (_ BitVec 64)) (t!44886 List!30873)) )
))
(declare-fun arrayNoDuplicates!0 (array!89667 (_ BitVec 32) List!30873) Bool)

(assert (=> b!1327607 (= lt!590672 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!30870))))

(declare-fun res!881024 () Bool)

(assert (=> start!112130 (=> (not res!881024) (not e!756841))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112130 (= res!881024 (validMask!0 mask!1998))))

(assert (=> start!112130 e!756841))

(assert (=> start!112130 true))

(declare-fun array_inv!32621 (array!89665) Bool)

(assert (=> start!112130 (and (array_inv!32621 _values!1320) e!756844)))

(declare-fun array_inv!32622 (array!89667) Bool)

(assert (=> start!112130 (array_inv!32622 _keys!1590)))

(declare-fun mapNonEmpty!56272 () Bool)

(declare-fun tp!107180 () Bool)

(assert (=> mapNonEmpty!56272 (= mapRes!56272 (and tp!107180 e!756842))))

(declare-fun mapValue!56272 () ValueCell!17301)

(declare-fun mapKey!56272 () (_ BitVec 32))

(declare-fun mapRest!56272 () (Array (_ BitVec 32) ValueCell!17301))

(assert (=> mapNonEmpty!56272 (= (arr!43294 _values!1320) (store mapRest!56272 mapKey!56272 mapValue!56272))))

(assert (= (and start!112130 res!881024) b!1327602))

(assert (= (and b!1327602 res!881023) b!1327605))

(assert (= (and b!1327605 res!881022) b!1327607))

(assert (= (and b!1327606 condMapEmpty!56272) mapIsEmpty!56272))

(assert (= (and b!1327606 (not condMapEmpty!56272)) mapNonEmpty!56272))

(get-info :version)

(assert (= (and mapNonEmpty!56272 ((_ is ValueCellFull!17301) mapValue!56272)) b!1327604))

(assert (= (and b!1327606 ((_ is ValueCellFull!17301) mapDefault!56272)) b!1327603))

(assert (= start!112130 b!1327606))

(declare-fun m!1216869 () Bool)

(assert (=> b!1327605 m!1216869))

(declare-fun m!1216871 () Bool)

(assert (=> b!1327607 m!1216871))

(declare-fun m!1216873 () Bool)

(assert (=> start!112130 m!1216873))

(declare-fun m!1216875 () Bool)

(assert (=> start!112130 m!1216875))

(declare-fun m!1216877 () Bool)

(assert (=> start!112130 m!1216877))

(declare-fun m!1216879 () Bool)

(assert (=> mapNonEmpty!56272 m!1216879))

(check-sat (not b!1327607) tp_is_empty!36399 (not start!112130) (not mapNonEmpty!56272) (not b!1327605))
(check-sat)
