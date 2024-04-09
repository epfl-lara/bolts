; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78606 () Bool)

(assert start!78606)

(declare-fun b_free!16791 () Bool)

(declare-fun b_next!16791 () Bool)

(assert (=> start!78606 (= b_free!16791 (not b_next!16791))))

(declare-fun tp!58814 () Bool)

(declare-fun b_and!27431 () Bool)

(assert (=> start!78606 (= tp!58814 b_and!27431)))

(declare-fun b!915835 () Bool)

(declare-fun res!617542 () Bool)

(declare-fun e!514102 () Bool)

(assert (=> b!915835 (=> (not res!617542) (not e!514102))))

(declare-datatypes ((array!54600 0))(
  ( (array!54601 (arr!26241 (Array (_ BitVec 32) (_ BitVec 64))) (size!26701 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54600)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30697 0))(
  ( (V!30698 (val!9700 Int)) )
))
(declare-datatypes ((ValueCell!9168 0))(
  ( (ValueCellFull!9168 (v!12218 V!30697)) (EmptyCell!9168) )
))
(declare-datatypes ((array!54602 0))(
  ( (array!54603 (arr!26242 (Array (_ BitVec 32) ValueCell!9168)) (size!26702 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54602)

(assert (=> b!915835 (= res!617542 (and (= (size!26702 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26701 _keys!1487) (size!26702 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!915836 () Bool)

(assert (=> b!915836 (= e!514102 false)))

(declare-fun defaultEntry!1235 () Int)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!30697)

(declare-fun minValue!1173 () V!30697)

(declare-fun lt!411684 () Bool)

(declare-datatypes ((tuple2!12654 0))(
  ( (tuple2!12655 (_1!6337 (_ BitVec 64)) (_2!6337 V!30697)) )
))
(declare-datatypes ((List!18512 0))(
  ( (Nil!18509) (Cons!18508 (h!19654 tuple2!12654) (t!26133 List!18512)) )
))
(declare-datatypes ((ListLongMap!11365 0))(
  ( (ListLongMap!11366 (toList!5698 List!18512)) )
))
(declare-fun contains!4718 (ListLongMap!11365 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2927 (array!54600 array!54602 (_ BitVec 32) (_ BitVec 32) V!30697 V!30697 (_ BitVec 32) Int) ListLongMap!11365)

(assert (=> b!915836 (= lt!411684 (contains!4718 (getCurrentListMap!2927 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k0!1099))))

(declare-fun b!915837 () Bool)

(declare-fun res!617543 () Bool)

(assert (=> b!915837 (=> (not res!617543) (not e!514102))))

(declare-datatypes ((List!18513 0))(
  ( (Nil!18510) (Cons!18509 (h!19655 (_ BitVec 64)) (t!26134 List!18513)) )
))
(declare-fun arrayNoDuplicates!0 (array!54600 (_ BitVec 32) List!18513) Bool)

(assert (=> b!915837 (= res!617543 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18510))))

(declare-fun res!617541 () Bool)

(assert (=> start!78606 (=> (not res!617541) (not e!514102))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78606 (= res!617541 (validMask!0 mask!1881))))

(assert (=> start!78606 e!514102))

(assert (=> start!78606 true))

(declare-fun e!514103 () Bool)

(declare-fun array_inv!20466 (array!54602) Bool)

(assert (=> start!78606 (and (array_inv!20466 _values!1231) e!514103)))

(assert (=> start!78606 tp!58814))

(declare-fun array_inv!20467 (array!54600) Bool)

(assert (=> start!78606 (array_inv!20467 _keys!1487)))

(declare-fun tp_is_empty!19299 () Bool)

(assert (=> start!78606 tp_is_empty!19299))

(declare-fun b!915838 () Bool)

(declare-fun e!514101 () Bool)

(assert (=> b!915838 (= e!514101 tp_is_empty!19299)))

(declare-fun b!915839 () Bool)

(declare-fun e!514104 () Bool)

(assert (=> b!915839 (= e!514104 tp_is_empty!19299)))

(declare-fun b!915840 () Bool)

(declare-fun res!617539 () Bool)

(assert (=> b!915840 (=> (not res!617539) (not e!514102))))

(assert (=> b!915840 (= res!617539 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26701 _keys!1487))))))

(declare-fun mapIsEmpty!30705 () Bool)

(declare-fun mapRes!30705 () Bool)

(assert (=> mapIsEmpty!30705 mapRes!30705))

(declare-fun b!915841 () Bool)

(declare-fun res!617540 () Bool)

(assert (=> b!915841 (=> (not res!617540) (not e!514102))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54600 (_ BitVec 32)) Bool)

(assert (=> b!915841 (= res!617540 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!30705 () Bool)

(declare-fun tp!58815 () Bool)

(assert (=> mapNonEmpty!30705 (= mapRes!30705 (and tp!58815 e!514104))))

(declare-fun mapValue!30705 () ValueCell!9168)

(declare-fun mapKey!30705 () (_ BitVec 32))

(declare-fun mapRest!30705 () (Array (_ BitVec 32) ValueCell!9168))

(assert (=> mapNonEmpty!30705 (= (arr!26242 _values!1231) (store mapRest!30705 mapKey!30705 mapValue!30705))))

(declare-fun b!915842 () Bool)

(assert (=> b!915842 (= e!514103 (and e!514101 mapRes!30705))))

(declare-fun condMapEmpty!30705 () Bool)

(declare-fun mapDefault!30705 () ValueCell!9168)

(assert (=> b!915842 (= condMapEmpty!30705 (= (arr!26242 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9168)) mapDefault!30705)))))

(assert (= (and start!78606 res!617541) b!915835))

(assert (= (and b!915835 res!617542) b!915841))

(assert (= (and b!915841 res!617540) b!915837))

(assert (= (and b!915837 res!617543) b!915840))

(assert (= (and b!915840 res!617539) b!915836))

(assert (= (and b!915842 condMapEmpty!30705) mapIsEmpty!30705))

(assert (= (and b!915842 (not condMapEmpty!30705)) mapNonEmpty!30705))

(get-info :version)

(assert (= (and mapNonEmpty!30705 ((_ is ValueCellFull!9168) mapValue!30705)) b!915839))

(assert (= (and b!915842 ((_ is ValueCellFull!9168) mapDefault!30705)) b!915838))

(assert (= start!78606 b!915842))

(declare-fun m!850127 () Bool)

(assert (=> b!915841 m!850127))

(declare-fun m!850129 () Bool)

(assert (=> mapNonEmpty!30705 m!850129))

(declare-fun m!850131 () Bool)

(assert (=> b!915837 m!850131))

(declare-fun m!850133 () Bool)

(assert (=> b!915836 m!850133))

(assert (=> b!915836 m!850133))

(declare-fun m!850135 () Bool)

(assert (=> b!915836 m!850135))

(declare-fun m!850137 () Bool)

(assert (=> start!78606 m!850137))

(declare-fun m!850139 () Bool)

(assert (=> start!78606 m!850139))

(declare-fun m!850141 () Bool)

(assert (=> start!78606 m!850141))

(check-sat (not b!915841) (not start!78606) (not mapNonEmpty!30705) b_and!27431 (not b_next!16791) (not b!915836) (not b!915837) tp_is_empty!19299)
(check-sat b_and!27431 (not b_next!16791))
