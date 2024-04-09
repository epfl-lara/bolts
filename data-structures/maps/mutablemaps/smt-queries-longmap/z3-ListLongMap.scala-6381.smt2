; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82068 () Bool)

(assert start!82068)

(declare-fun b_free!18447 () Bool)

(declare-fun b_next!18447 () Bool)

(assert (=> start!82068 (= b_free!18447 (not b_next!18447))))

(declare-fun tp!64153 () Bool)

(declare-fun b_and!29953 () Bool)

(assert (=> start!82068 (= tp!64153 b_and!29953)))

(declare-fun mapIsEmpty!33559 () Bool)

(declare-fun mapRes!33559 () Bool)

(assert (=> mapIsEmpty!33559 mapRes!33559))

(declare-fun b!956605 () Bool)

(declare-fun e!539101 () Bool)

(assert (=> b!956605 (= e!539101 (not true))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!33067 0))(
  ( (V!33068 (val!10582 Int)) )
))
(declare-fun zeroValue!1139 () V!33067)

(declare-fun i!735 () (_ BitVec 32))

(declare-datatypes ((array!58245 0))(
  ( (array!58246 (arr!27997 (Array (_ BitVec 32) (_ BitVec 64))) (size!28477 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58245)

(declare-datatypes ((ValueCell!10050 0))(
  ( (ValueCellFull!10050 (v!13138 V!33067)) (EmptyCell!10050) )
))
(declare-datatypes ((array!58247 0))(
  ( (array!58248 (arr!27998 (Array (_ BitVec 32) ValueCell!10050)) (size!28478 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58247)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-fun minValue!1139 () V!33067)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13788 0))(
  ( (tuple2!13789 (_1!6904 (_ BitVec 64)) (_2!6904 V!33067)) )
))
(declare-datatypes ((List!19633 0))(
  ( (Nil!19630) (Cons!19629 (h!20791 tuple2!13788) (t!28004 List!19633)) )
))
(declare-datatypes ((ListLongMap!12499 0))(
  ( (ListLongMap!12500 (toList!6265 List!19633)) )
))
(declare-fun contains!5316 (ListLongMap!12499 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3450 (array!58245 array!58247 (_ BitVec 32) (_ BitVec 32) V!33067 V!33067 (_ BitVec 32) Int) ListLongMap!12499)

(assert (=> b!956605 (contains!5316 (getCurrentListMap!3450 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!27997 _keys!1441) i!735))))

(declare-datatypes ((Unit!32127 0))(
  ( (Unit!32128) )
))
(declare-fun lt!430195 () Unit!32127)

(declare-fun lemmaInListMapFromThenFromZero!18 (array!58245 array!58247 (_ BitVec 32) (_ BitVec 32) V!33067 V!33067 (_ BitVec 32) (_ BitVec 32) Int) Unit!32127)

(assert (=> b!956605 (= lt!430195 (lemmaInListMapFromThenFromZero!18 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun b!956606 () Bool)

(declare-fun e!539102 () Bool)

(declare-fun e!539100 () Bool)

(assert (=> b!956606 (= e!539102 (and e!539100 mapRes!33559))))

(declare-fun condMapEmpty!33559 () Bool)

(declare-fun mapDefault!33559 () ValueCell!10050)

(assert (=> b!956606 (= condMapEmpty!33559 (= (arr!27998 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!10050)) mapDefault!33559)))))

(declare-fun b!956607 () Bool)

(declare-fun res!640585 () Bool)

(assert (=> b!956607 (=> (not res!640585) (not e!539101))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58245 (_ BitVec 32)) Bool)

(assert (=> b!956607 (= res!640585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun b!956608 () Bool)

(declare-fun tp_is_empty!21063 () Bool)

(assert (=> b!956608 (= e!539100 tp_is_empty!21063)))

(declare-fun b!956609 () Bool)

(declare-fun res!640586 () Bool)

(assert (=> b!956609 (=> (not res!640586) (not e!539101))))

(assert (=> b!956609 (= res!640586 (contains!5316 (getCurrentListMap!3450 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!27997 _keys!1441) i!735)))))

(declare-fun mapNonEmpty!33559 () Bool)

(declare-fun tp!64152 () Bool)

(declare-fun e!539103 () Bool)

(assert (=> mapNonEmpty!33559 (= mapRes!33559 (and tp!64152 e!539103))))

(declare-fun mapKey!33559 () (_ BitVec 32))

(declare-fun mapRest!33559 () (Array (_ BitVec 32) ValueCell!10050))

(declare-fun mapValue!33559 () ValueCell!10050)

(assert (=> mapNonEmpty!33559 (= (arr!27998 _values!1197) (store mapRest!33559 mapKey!33559 mapValue!33559))))

(declare-fun b!956611 () Bool)

(declare-fun res!640587 () Bool)

(assert (=> b!956611 (=> (not res!640587) (not e!539101))))

(declare-datatypes ((List!19634 0))(
  ( (Nil!19631) (Cons!19630 (h!20792 (_ BitVec 64)) (t!28005 List!19634)) )
))
(declare-fun arrayNoDuplicates!0 (array!58245 (_ BitVec 32) List!19634) Bool)

(assert (=> b!956611 (= res!640587 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19631))))

(declare-fun b!956612 () Bool)

(declare-fun res!640591 () Bool)

(assert (=> b!956612 (=> (not res!640591) (not e!539101))))

(assert (=> b!956612 (= res!640591 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28477 _keys!1441))))))

(declare-fun b!956613 () Bool)

(assert (=> b!956613 (= e!539103 tp_is_empty!21063)))

(declare-fun b!956614 () Bool)

(declare-fun res!640590 () Bool)

(assert (=> b!956614 (=> (not res!640590) (not e!539101))))

(assert (=> b!956614 (= res!640590 (and (= (size!28478 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28477 _keys!1441) (size!28478 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun res!640589 () Bool)

(assert (=> start!82068 (=> (not res!640589) (not e!539101))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82068 (= res!640589 (validMask!0 mask!1823))))

(assert (=> start!82068 e!539101))

(assert (=> start!82068 true))

(assert (=> start!82068 tp_is_empty!21063))

(declare-fun array_inv!21661 (array!58245) Bool)

(assert (=> start!82068 (array_inv!21661 _keys!1441)))

(declare-fun array_inv!21662 (array!58247) Bool)

(assert (=> start!82068 (and (array_inv!21662 _values!1197) e!539102)))

(assert (=> start!82068 tp!64153))

(declare-fun b!956610 () Bool)

(declare-fun res!640588 () Bool)

(assert (=> b!956610 (=> (not res!640588) (not e!539101))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!956610 (= res!640588 (validKeyInArray!0 (select (arr!27997 _keys!1441) i!735)))))

(assert (= (and start!82068 res!640589) b!956614))

(assert (= (and b!956614 res!640590) b!956607))

(assert (= (and b!956607 res!640585) b!956611))

(assert (= (and b!956611 res!640587) b!956612))

(assert (= (and b!956612 res!640591) b!956610))

(assert (= (and b!956610 res!640588) b!956609))

(assert (= (and b!956609 res!640586) b!956605))

(assert (= (and b!956606 condMapEmpty!33559) mapIsEmpty!33559))

(assert (= (and b!956606 (not condMapEmpty!33559)) mapNonEmpty!33559))

(get-info :version)

(assert (= (and mapNonEmpty!33559 ((_ is ValueCellFull!10050) mapValue!33559)) b!956613))

(assert (= (and b!956606 ((_ is ValueCellFull!10050) mapDefault!33559)) b!956608))

(assert (= start!82068 b!956606))

(declare-fun m!887899 () Bool)

(assert (=> b!956607 m!887899))

(declare-fun m!887901 () Bool)

(assert (=> b!956611 m!887901))

(declare-fun m!887903 () Bool)

(assert (=> mapNonEmpty!33559 m!887903))

(declare-fun m!887905 () Bool)

(assert (=> start!82068 m!887905))

(declare-fun m!887907 () Bool)

(assert (=> start!82068 m!887907))

(declare-fun m!887909 () Bool)

(assert (=> start!82068 m!887909))

(declare-fun m!887911 () Bool)

(assert (=> b!956610 m!887911))

(assert (=> b!956610 m!887911))

(declare-fun m!887913 () Bool)

(assert (=> b!956610 m!887913))

(declare-fun m!887915 () Bool)

(assert (=> b!956609 m!887915))

(assert (=> b!956609 m!887911))

(assert (=> b!956609 m!887915))

(assert (=> b!956609 m!887911))

(declare-fun m!887917 () Bool)

(assert (=> b!956609 m!887917))

(declare-fun m!887919 () Bool)

(assert (=> b!956605 m!887919))

(assert (=> b!956605 m!887911))

(assert (=> b!956605 m!887919))

(assert (=> b!956605 m!887911))

(declare-fun m!887921 () Bool)

(assert (=> b!956605 m!887921))

(declare-fun m!887923 () Bool)

(assert (=> b!956605 m!887923))

(check-sat (not start!82068) tp_is_empty!21063 (not b!956607) b_and!29953 (not b!956611) (not b!956609) (not mapNonEmpty!33559) (not b!956605) (not b!956610) (not b_next!18447))
(check-sat b_and!29953 (not b_next!18447))
