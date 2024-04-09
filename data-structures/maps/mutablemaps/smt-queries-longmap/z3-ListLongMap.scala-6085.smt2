; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78648 () Bool)

(assert start!78648)

(declare-fun b_free!16833 () Bool)

(declare-fun b_next!16833 () Bool)

(assert (=> start!78648 (= b_free!16833 (not b_next!16833))))

(declare-fun tp!58941 () Bool)

(declare-fun b_and!27473 () Bool)

(assert (=> start!78648 (= tp!58941 b_and!27473)))

(declare-fun b!916362 () Bool)

(declare-fun e!514429 () Bool)

(declare-fun e!514430 () Bool)

(declare-fun mapRes!30768 () Bool)

(assert (=> b!916362 (= e!514429 (and e!514430 mapRes!30768))))

(declare-fun condMapEmpty!30768 () Bool)

(declare-datatypes ((V!30753 0))(
  ( (V!30754 (val!9721 Int)) )
))
(declare-datatypes ((ValueCell!9189 0))(
  ( (ValueCellFull!9189 (v!12239 V!30753)) (EmptyCell!9189) )
))
(declare-datatypes ((array!54684 0))(
  ( (array!54685 (arr!26283 (Array (_ BitVec 32) ValueCell!9189)) (size!26743 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54684)

(declare-fun mapDefault!30768 () ValueCell!9189)

(assert (=> b!916362 (= condMapEmpty!30768 (= (arr!26283 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9189)) mapDefault!30768)))))

(declare-fun b!916363 () Bool)

(declare-fun e!514432 () Bool)

(declare-fun tp_is_empty!19341 () Bool)

(assert (=> b!916363 (= e!514432 tp_is_empty!19341)))

(declare-fun b!916365 () Bool)

(declare-fun e!514434 () Bool)

(declare-fun e!514431 () Bool)

(assert (=> b!916365 (= e!514434 e!514431)))

(declare-fun res!617881 () Bool)

(assert (=> b!916365 (=> (not res!617881) (not e!514431))))

(declare-datatypes ((tuple2!12684 0))(
  ( (tuple2!12685 (_1!6352 (_ BitVec 64)) (_2!6352 V!30753)) )
))
(declare-datatypes ((List!18544 0))(
  ( (Nil!18541) (Cons!18540 (h!19686 tuple2!12684) (t!26165 List!18544)) )
))
(declare-datatypes ((ListLongMap!11395 0))(
  ( (ListLongMap!11396 (toList!5713 List!18544)) )
))
(declare-fun lt!411752 () ListLongMap!11395)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4733 (ListLongMap!11395 (_ BitVec 64)) Bool)

(assert (=> b!916365 (= res!617881 (contains!4733 lt!411752 k0!1099))))

(declare-datatypes ((array!54686 0))(
  ( (array!54687 (arr!26284 (Array (_ BitVec 32) (_ BitVec 64))) (size!26744 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54686)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30753)

(declare-fun minValue!1173 () V!30753)

(declare-fun getCurrentListMap!2942 (array!54686 array!54684 (_ BitVec 32) (_ BitVec 32) V!30753 V!30753 (_ BitVec 32) Int) ListLongMap!11395)

(assert (=> b!916365 (= lt!411752 (getCurrentListMap!2942 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapIsEmpty!30768 () Bool)

(assert (=> mapIsEmpty!30768 mapRes!30768))

(declare-fun b!916366 () Bool)

(declare-fun res!617877 () Bool)

(assert (=> b!916366 (=> (not res!617877) (not e!514434))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54686 (_ BitVec 32)) Bool)

(assert (=> b!916366 (= res!617877 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!30768 () Bool)

(declare-fun tp!58940 () Bool)

(assert (=> mapNonEmpty!30768 (= mapRes!30768 (and tp!58940 e!514432))))

(declare-fun mapRest!30768 () (Array (_ BitVec 32) ValueCell!9189))

(declare-fun mapKey!30768 () (_ BitVec 32))

(declare-fun mapValue!30768 () ValueCell!9189)

(assert (=> mapNonEmpty!30768 (= (arr!26283 _values!1231) (store mapRest!30768 mapKey!30768 mapValue!30768))))

(declare-fun res!617879 () Bool)

(assert (=> start!78648 (=> (not res!617879) (not e!514434))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78648 (= res!617879 (validMask!0 mask!1881))))

(assert (=> start!78648 e!514434))

(assert (=> start!78648 true))

(declare-fun array_inv!20494 (array!54684) Bool)

(assert (=> start!78648 (and (array_inv!20494 _values!1231) e!514429)))

(assert (=> start!78648 tp!58941))

(declare-fun array_inv!20495 (array!54686) Bool)

(assert (=> start!78648 (array_inv!20495 _keys!1487)))

(assert (=> start!78648 tp_is_empty!19341))

(declare-fun b!916364 () Bool)

(declare-fun res!617882 () Bool)

(assert (=> b!916364 (=> (not res!617882) (not e!514434))))

(assert (=> b!916364 (= res!617882 (and (= (size!26743 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26744 _keys!1487) (size!26743 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916367 () Bool)

(declare-fun res!617878 () Bool)

(assert (=> b!916367 (=> (not res!617878) (not e!514434))))

(declare-datatypes ((List!18545 0))(
  ( (Nil!18542) (Cons!18541 (h!19687 (_ BitVec 64)) (t!26166 List!18545)) )
))
(declare-fun arrayNoDuplicates!0 (array!54686 (_ BitVec 32) List!18545) Bool)

(assert (=> b!916367 (= res!617878 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18542))))

(declare-fun b!916368 () Bool)

(assert (=> b!916368 (= e!514431 false)))

(declare-fun lt!411753 () V!30753)

(declare-fun apply!542 (ListLongMap!11395 (_ BitVec 64)) V!30753)

(assert (=> b!916368 (= lt!411753 (apply!542 lt!411752 k0!1099))))

(declare-fun b!916369 () Bool)

(assert (=> b!916369 (= e!514430 tp_is_empty!19341)))

(declare-fun b!916370 () Bool)

(declare-fun res!617880 () Bool)

(assert (=> b!916370 (=> (not res!617880) (not e!514434))))

(assert (=> b!916370 (= res!617880 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26744 _keys!1487))))))

(assert (= (and start!78648 res!617879) b!916364))

(assert (= (and b!916364 res!617882) b!916366))

(assert (= (and b!916366 res!617877) b!916367))

(assert (= (and b!916367 res!617878) b!916370))

(assert (= (and b!916370 res!617880) b!916365))

(assert (= (and b!916365 res!617881) b!916368))

(assert (= (and b!916362 condMapEmpty!30768) mapIsEmpty!30768))

(assert (= (and b!916362 (not condMapEmpty!30768)) mapNonEmpty!30768))

(get-info :version)

(assert (= (and mapNonEmpty!30768 ((_ is ValueCellFull!9189) mapValue!30768)) b!916363))

(assert (= (and b!916362 ((_ is ValueCellFull!9189) mapDefault!30768)) b!916369))

(assert (= start!78648 b!916362))

(declare-fun m!850471 () Bool)

(assert (=> b!916368 m!850471))

(declare-fun m!850473 () Bool)

(assert (=> b!916366 m!850473))

(declare-fun m!850475 () Bool)

(assert (=> b!916365 m!850475))

(declare-fun m!850477 () Bool)

(assert (=> b!916365 m!850477))

(declare-fun m!850479 () Bool)

(assert (=> b!916367 m!850479))

(declare-fun m!850481 () Bool)

(assert (=> start!78648 m!850481))

(declare-fun m!850483 () Bool)

(assert (=> start!78648 m!850483))

(declare-fun m!850485 () Bool)

(assert (=> start!78648 m!850485))

(declare-fun m!850487 () Bool)

(assert (=> mapNonEmpty!30768 m!850487))

(check-sat (not b!916368) (not b!916365) (not start!78648) (not b!916366) b_and!27473 (not b!916367) (not b_next!16833) (not mapNonEmpty!30768) tp_is_empty!19341)
(check-sat b_and!27473 (not b_next!16833))
