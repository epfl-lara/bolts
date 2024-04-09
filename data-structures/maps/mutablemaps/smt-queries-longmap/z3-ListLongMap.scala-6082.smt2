; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78630 () Bool)

(assert start!78630)

(declare-fun b_free!16815 () Bool)

(declare-fun b_next!16815 () Bool)

(assert (=> start!78630 (= b_free!16815 (not b_next!16815))))

(declare-fun tp!58887 () Bool)

(declare-fun b_and!27455 () Bool)

(assert (=> start!78630 (= tp!58887 b_and!27455)))

(declare-fun b!916128 () Bool)

(declare-fun res!617727 () Bool)

(declare-fun e!514280 () Bool)

(assert (=> b!916128 (=> (not res!617727) (not e!514280))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30729 0))(
  ( (V!30730 (val!9712 Int)) )
))
(declare-datatypes ((ValueCell!9180 0))(
  ( (ValueCellFull!9180 (v!12230 V!30729)) (EmptyCell!9180) )
))
(declare-datatypes ((array!54648 0))(
  ( (array!54649 (arr!26265 (Array (_ BitVec 32) ValueCell!9180)) (size!26725 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54648)

(declare-fun defaultEntry!1235 () Int)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-datatypes ((array!54650 0))(
  ( (array!54651 (arr!26266 (Array (_ BitVec 32) (_ BitVec 64))) (size!26726 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54650)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!30729)

(declare-fun minValue!1173 () V!30729)

(declare-datatypes ((tuple2!12668 0))(
  ( (tuple2!12669 (_1!6344 (_ BitVec 64)) (_2!6344 V!30729)) )
))
(declare-datatypes ((List!18529 0))(
  ( (Nil!18526) (Cons!18525 (h!19671 tuple2!12668) (t!26150 List!18529)) )
))
(declare-datatypes ((ListLongMap!11379 0))(
  ( (ListLongMap!11380 (toList!5705 List!18529)) )
))
(declare-fun contains!4725 (ListLongMap!11379 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2934 (array!54650 array!54648 (_ BitVec 32) (_ BitVec 32) V!30729 V!30729 (_ BitVec 32) Int) ListLongMap!11379)

(assert (=> b!916128 (= res!617727 (contains!4725 (getCurrentListMap!2934 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k0!1099))))

(declare-fun b!916129 () Bool)

(declare-fun e!514282 () Bool)

(declare-fun e!514281 () Bool)

(declare-fun mapRes!30741 () Bool)

(assert (=> b!916129 (= e!514282 (and e!514281 mapRes!30741))))

(declare-fun condMapEmpty!30741 () Bool)

(declare-fun mapDefault!30741 () ValueCell!9180)

(assert (=> b!916129 (= condMapEmpty!30741 (= (arr!26265 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9180)) mapDefault!30741)))))

(declare-fun mapNonEmpty!30741 () Bool)

(declare-fun tp!58886 () Bool)

(declare-fun e!514284 () Bool)

(assert (=> mapNonEmpty!30741 (= mapRes!30741 (and tp!58886 e!514284))))

(declare-fun mapRest!30741 () (Array (_ BitVec 32) ValueCell!9180))

(declare-fun mapKey!30741 () (_ BitVec 32))

(declare-fun mapValue!30741 () ValueCell!9180)

(assert (=> mapNonEmpty!30741 (= (arr!26265 _values!1231) (store mapRest!30741 mapKey!30741 mapValue!30741))))

(declare-fun res!617724 () Bool)

(assert (=> start!78630 (=> (not res!617724) (not e!514280))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78630 (= res!617724 (validMask!0 mask!1881))))

(assert (=> start!78630 e!514280))

(assert (=> start!78630 true))

(declare-fun array_inv!20480 (array!54648) Bool)

(assert (=> start!78630 (and (array_inv!20480 _values!1231) e!514282)))

(assert (=> start!78630 tp!58887))

(declare-fun array_inv!20481 (array!54650) Bool)

(assert (=> start!78630 (array_inv!20481 _keys!1487)))

(declare-fun tp_is_empty!19323 () Bool)

(assert (=> start!78630 tp_is_empty!19323))

(declare-fun b!916130 () Bool)

(declare-fun res!617728 () Bool)

(assert (=> b!916130 (=> (not res!617728) (not e!514280))))

(assert (=> b!916130 (= res!617728 (and (= (size!26725 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26726 _keys!1487) (size!26725 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916131 () Bool)

(declare-fun res!617729 () Bool)

(assert (=> b!916131 (=> (not res!617729) (not e!514280))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54650 (_ BitVec 32)) Bool)

(assert (=> b!916131 (= res!617729 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!916132 () Bool)

(declare-fun res!617725 () Bool)

(assert (=> b!916132 (=> (not res!617725) (not e!514280))))

(assert (=> b!916132 (= res!617725 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26726 _keys!1487))))))

(declare-fun b!916133 () Bool)

(assert (=> b!916133 (= e!514280 (bvsgt from!1844 (size!26726 _keys!1487)))))

(declare-fun b!916134 () Bool)

(assert (=> b!916134 (= e!514281 tp_is_empty!19323)))

(declare-fun b!916135 () Bool)

(assert (=> b!916135 (= e!514284 tp_is_empty!19323)))

(declare-fun b!916136 () Bool)

(declare-fun res!617726 () Bool)

(assert (=> b!916136 (=> (not res!617726) (not e!514280))))

(declare-datatypes ((List!18530 0))(
  ( (Nil!18527) (Cons!18526 (h!19672 (_ BitVec 64)) (t!26151 List!18530)) )
))
(declare-fun arrayNoDuplicates!0 (array!54650 (_ BitVec 32) List!18530) Bool)

(assert (=> b!916136 (= res!617726 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18527))))

(declare-fun mapIsEmpty!30741 () Bool)

(assert (=> mapIsEmpty!30741 mapRes!30741))

(assert (= (and start!78630 res!617724) b!916130))

(assert (= (and b!916130 res!617728) b!916131))

(assert (= (and b!916131 res!617729) b!916136))

(assert (= (and b!916136 res!617726) b!916132))

(assert (= (and b!916132 res!617725) b!916128))

(assert (= (and b!916128 res!617727) b!916133))

(assert (= (and b!916129 condMapEmpty!30741) mapIsEmpty!30741))

(assert (= (and b!916129 (not condMapEmpty!30741)) mapNonEmpty!30741))

(get-info :version)

(assert (= (and mapNonEmpty!30741 ((_ is ValueCellFull!9180) mapValue!30741)) b!916135))

(assert (= (and b!916129 ((_ is ValueCellFull!9180) mapDefault!30741)) b!916134))

(assert (= start!78630 b!916129))

(declare-fun m!850319 () Bool)

(assert (=> start!78630 m!850319))

(declare-fun m!850321 () Bool)

(assert (=> start!78630 m!850321))

(declare-fun m!850323 () Bool)

(assert (=> start!78630 m!850323))

(declare-fun m!850325 () Bool)

(assert (=> b!916128 m!850325))

(assert (=> b!916128 m!850325))

(declare-fun m!850327 () Bool)

(assert (=> b!916128 m!850327))

(declare-fun m!850329 () Bool)

(assert (=> mapNonEmpty!30741 m!850329))

(declare-fun m!850331 () Bool)

(assert (=> b!916131 m!850331))

(declare-fun m!850333 () Bool)

(assert (=> b!916136 m!850333))

(check-sat (not b_next!16815) (not mapNonEmpty!30741) (not start!78630) (not b!916131) b_and!27455 (not b!916136) tp_is_empty!19323 (not b!916128))
(check-sat b_and!27455 (not b_next!16815))
