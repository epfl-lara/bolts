; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82074 () Bool)

(assert start!82074)

(declare-fun b_free!18453 () Bool)

(declare-fun b_next!18453 () Bool)

(assert (=> start!82074 (= b_free!18453 (not b_next!18453))))

(declare-fun tp!64171 () Bool)

(declare-fun b_and!29959 () Bool)

(assert (=> start!82074 (= tp!64171 b_and!29959)))

(declare-fun b!956695 () Bool)

(declare-fun res!640652 () Bool)

(declare-fun e!539144 () Bool)

(assert (=> b!956695 (=> (not res!640652) (not e!539144))))

(declare-fun extraKeys!1118 () (_ BitVec 32))

(declare-datatypes ((V!33075 0))(
  ( (V!33076 (val!10585 Int)) )
))
(declare-datatypes ((ValueCell!10053 0))(
  ( (ValueCellFull!10053 (v!13141 V!33075)) (EmptyCell!10053) )
))
(declare-datatypes ((array!58257 0))(
  ( (array!58258 (arr!28003 (Array (_ BitVec 32) ValueCell!10053)) (size!28483 (_ BitVec 32))) )
))
(declare-fun _values!1197 () array!58257)

(declare-fun mask!1823 () (_ BitVec 32))

(declare-datatypes ((array!58259 0))(
  ( (array!58260 (arr!28004 (Array (_ BitVec 32) (_ BitVec 64))) (size!28484 (_ BitVec 32))) )
))
(declare-fun _keys!1441 () array!58259)

(assert (=> b!956695 (= res!640652 (and (= (size!28483 _values!1197) (bvadd #b00000000000000000000000000000001 mask!1823)) (= (size!28484 _keys!1441) (size!28483 _values!1197)) (bvsge mask!1823 #b00000000000000000000000000000000) (bvsge extraKeys!1118 #b00000000000000000000000000000000) (bvsle extraKeys!1118 #b00000000000000000000000000000011)))))

(declare-fun b!956696 () Bool)

(declare-fun e!539145 () Bool)

(declare-fun tp_is_empty!21069 () Bool)

(assert (=> b!956696 (= e!539145 tp_is_empty!21069)))

(declare-fun b!956697 () Bool)

(declare-fun res!640651 () Bool)

(assert (=> b!956697 (=> (not res!640651) (not e!539144))))

(declare-fun i!735 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!956697 (= res!640651 (validKeyInArray!0 (select (arr!28004 _keys!1441) i!735)))))

(declare-fun res!640649 () Bool)

(assert (=> start!82074 (=> (not res!640649) (not e!539144))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82074 (= res!640649 (validMask!0 mask!1823))))

(assert (=> start!82074 e!539144))

(assert (=> start!82074 true))

(assert (=> start!82074 tp_is_empty!21069))

(declare-fun array_inv!21667 (array!58259) Bool)

(assert (=> start!82074 (array_inv!21667 _keys!1441)))

(declare-fun e!539147 () Bool)

(declare-fun array_inv!21668 (array!58257) Bool)

(assert (=> start!82074 (and (array_inv!21668 _values!1197) e!539147)))

(assert (=> start!82074 tp!64171))

(declare-fun b!956698 () Bool)

(assert (=> b!956698 (= e!539144 (not true))))

(declare-fun zeroValue!1139 () V!33075)

(declare-fun minValue!1139 () V!33075)

(declare-fun defaultEntry!1205 () Int)

(declare-datatypes ((tuple2!13792 0))(
  ( (tuple2!13793 (_1!6906 (_ BitVec 64)) (_2!6906 V!33075)) )
))
(declare-datatypes ((List!19637 0))(
  ( (Nil!19634) (Cons!19633 (h!20795 tuple2!13792) (t!28008 List!19637)) )
))
(declare-datatypes ((ListLongMap!12503 0))(
  ( (ListLongMap!12504 (toList!6267 List!19637)) )
))
(declare-fun contains!5318 (ListLongMap!12503 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3452 (array!58259 array!58257 (_ BitVec 32) (_ BitVec 32) V!33075 V!33075 (_ BitVec 32) Int) ListLongMap!12503)

(assert (=> b!956698 (contains!5318 (getCurrentListMap!3452 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 #b00000000000000000000000000000000 defaultEntry!1205) (select (arr!28004 _keys!1441) i!735))))

(declare-datatypes ((Unit!32131 0))(
  ( (Unit!32132) )
))
(declare-fun lt!430204 () Unit!32131)

(declare-fun lemmaInListMapFromThenFromZero!20 (array!58259 array!58257 (_ BitVec 32) (_ BitVec 32) V!33075 V!33075 (_ BitVec 32) (_ BitVec 32) Int) Unit!32131)

(assert (=> b!956698 (= lt!430204 (lemmaInListMapFromThenFromZero!20 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 i!735 defaultEntry!1205))))

(declare-fun b!956699 () Bool)

(declare-fun e!539146 () Bool)

(assert (=> b!956699 (= e!539146 tp_is_empty!21069)))

(declare-fun b!956700 () Bool)

(declare-fun mapRes!33568 () Bool)

(assert (=> b!956700 (= e!539147 (and e!539145 mapRes!33568))))

(declare-fun condMapEmpty!33568 () Bool)

(declare-fun mapDefault!33568 () ValueCell!10053)

(assert (=> b!956700 (= condMapEmpty!33568 (= (arr!28003 _values!1197) ((as const (Array (_ BitVec 32) ValueCell!10053)) mapDefault!33568)))))

(declare-fun mapIsEmpty!33568 () Bool)

(assert (=> mapIsEmpty!33568 mapRes!33568))

(declare-fun b!956701 () Bool)

(declare-fun res!640648 () Bool)

(assert (=> b!956701 (=> (not res!640648) (not e!539144))))

(assert (=> b!956701 (= res!640648 (contains!5318 (getCurrentListMap!3452 _keys!1441 _values!1197 mask!1823 extraKeys!1118 zeroValue!1139 minValue!1139 i!735 defaultEntry!1205) (select (arr!28004 _keys!1441) i!735)))))

(declare-fun b!956702 () Bool)

(declare-fun res!640654 () Bool)

(assert (=> b!956702 (=> (not res!640654) (not e!539144))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58259 (_ BitVec 32)) Bool)

(assert (=> b!956702 (= res!640654 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1441 mask!1823))))

(declare-fun mapNonEmpty!33568 () Bool)

(declare-fun tp!64170 () Bool)

(assert (=> mapNonEmpty!33568 (= mapRes!33568 (and tp!64170 e!539146))))

(declare-fun mapValue!33568 () ValueCell!10053)

(declare-fun mapKey!33568 () (_ BitVec 32))

(declare-fun mapRest!33568 () (Array (_ BitVec 32) ValueCell!10053))

(assert (=> mapNonEmpty!33568 (= (arr!28003 _values!1197) (store mapRest!33568 mapKey!33568 mapValue!33568))))

(declare-fun b!956703 () Bool)

(declare-fun res!640650 () Bool)

(assert (=> b!956703 (=> (not res!640650) (not e!539144))))

(declare-datatypes ((List!19638 0))(
  ( (Nil!19635) (Cons!19634 (h!20796 (_ BitVec 64)) (t!28009 List!19638)) )
))
(declare-fun arrayNoDuplicates!0 (array!58259 (_ BitVec 32) List!19638) Bool)

(assert (=> b!956703 (= res!640650 (arrayNoDuplicates!0 _keys!1441 #b00000000000000000000000000000000 Nil!19635))))

(declare-fun b!956704 () Bool)

(declare-fun res!640653 () Bool)

(assert (=> b!956704 (=> (not res!640653) (not e!539144))))

(assert (=> b!956704 (= res!640653 (and (bvsge i!735 #b00000000000000000000000000000000) (bvslt i!735 (size!28484 _keys!1441))))))

(assert (= (and start!82074 res!640649) b!956695))

(assert (= (and b!956695 res!640652) b!956702))

(assert (= (and b!956702 res!640654) b!956703))

(assert (= (and b!956703 res!640650) b!956704))

(assert (= (and b!956704 res!640653) b!956697))

(assert (= (and b!956697 res!640651) b!956701))

(assert (= (and b!956701 res!640648) b!956698))

(assert (= (and b!956700 condMapEmpty!33568) mapIsEmpty!33568))

(assert (= (and b!956700 (not condMapEmpty!33568)) mapNonEmpty!33568))

(get-info :version)

(assert (= (and mapNonEmpty!33568 ((_ is ValueCellFull!10053) mapValue!33568)) b!956699))

(assert (= (and b!956700 ((_ is ValueCellFull!10053) mapDefault!33568)) b!956696))

(assert (= start!82074 b!956700))

(declare-fun m!887977 () Bool)

(assert (=> b!956701 m!887977))

(declare-fun m!887979 () Bool)

(assert (=> b!956701 m!887979))

(assert (=> b!956701 m!887977))

(assert (=> b!956701 m!887979))

(declare-fun m!887981 () Bool)

(assert (=> b!956701 m!887981))

(declare-fun m!887983 () Bool)

(assert (=> mapNonEmpty!33568 m!887983))

(declare-fun m!887985 () Bool)

(assert (=> b!956702 m!887985))

(declare-fun m!887987 () Bool)

(assert (=> b!956703 m!887987))

(assert (=> b!956697 m!887979))

(assert (=> b!956697 m!887979))

(declare-fun m!887989 () Bool)

(assert (=> b!956697 m!887989))

(declare-fun m!887991 () Bool)

(assert (=> b!956698 m!887991))

(assert (=> b!956698 m!887979))

(assert (=> b!956698 m!887991))

(assert (=> b!956698 m!887979))

(declare-fun m!887993 () Bool)

(assert (=> b!956698 m!887993))

(declare-fun m!887995 () Bool)

(assert (=> b!956698 m!887995))

(declare-fun m!887997 () Bool)

(assert (=> start!82074 m!887997))

(declare-fun m!887999 () Bool)

(assert (=> start!82074 m!887999))

(declare-fun m!888001 () Bool)

(assert (=> start!82074 m!888001))

(check-sat (not b!956703) b_and!29959 (not b!956702) (not b!956698) (not start!82074) (not b_next!18453) (not mapNonEmpty!33568) (not b!956701) (not b!956697) tp_is_empty!21069)
(check-sat b_and!29959 (not b_next!18453))
