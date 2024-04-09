; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78618 () Bool)

(assert start!78618)

(declare-fun b_free!16803 () Bool)

(declare-fun b_next!16803 () Bool)

(assert (=> start!78618 (= b_free!16803 (not b_next!16803))))

(declare-fun tp!58851 () Bool)

(declare-fun b_and!27443 () Bool)

(assert (=> start!78618 (= tp!58851 b_and!27443)))

(declare-fun b!915979 () Bool)

(declare-fun e!514190 () Bool)

(declare-fun tp_is_empty!19311 () Bool)

(assert (=> b!915979 (= e!514190 tp_is_empty!19311)))

(declare-fun mapIsEmpty!30723 () Bool)

(declare-fun mapRes!30723 () Bool)

(assert (=> mapIsEmpty!30723 mapRes!30723))

(declare-fun b!915980 () Bool)

(declare-fun res!617629 () Bool)

(declare-fun e!514193 () Bool)

(assert (=> b!915980 (=> (not res!617629) (not e!514193))))

(declare-datatypes ((array!54624 0))(
  ( (array!54625 (arr!26253 (Array (_ BitVec 32) (_ BitVec 64))) (size!26713 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54624)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!30713 0))(
  ( (V!30714 (val!9706 Int)) )
))
(declare-datatypes ((ValueCell!9174 0))(
  ( (ValueCellFull!9174 (v!12224 V!30713)) (EmptyCell!9174) )
))
(declare-datatypes ((array!54626 0))(
  ( (array!54627 (arr!26254 (Array (_ BitVec 32) ValueCell!9174)) (size!26714 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54626)

(assert (=> b!915980 (= res!617629 (and (= (size!26714 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26713 _keys!1487) (size!26714 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30723 () Bool)

(declare-fun tp!58850 () Bool)

(declare-fun e!514191 () Bool)

(assert (=> mapNonEmpty!30723 (= mapRes!30723 (and tp!58850 e!514191))))

(declare-fun mapKey!30723 () (_ BitVec 32))

(declare-fun mapRest!30723 () (Array (_ BitVec 32) ValueCell!9174))

(declare-fun mapValue!30723 () ValueCell!9174)

(assert (=> mapNonEmpty!30723 (= (arr!26254 _values!1231) (store mapRest!30723 mapKey!30723 mapValue!30723))))

(declare-fun res!617630 () Bool)

(assert (=> start!78618 (=> (not res!617630) (not e!514193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78618 (= res!617630 (validMask!0 mask!1881))))

(assert (=> start!78618 e!514193))

(assert (=> start!78618 true))

(declare-fun e!514194 () Bool)

(declare-fun array_inv!20472 (array!54626) Bool)

(assert (=> start!78618 (and (array_inv!20472 _values!1231) e!514194)))

(assert (=> start!78618 tp!58851))

(declare-fun array_inv!20473 (array!54624) Bool)

(assert (=> start!78618 (array_inv!20473 _keys!1487)))

(assert (=> start!78618 tp_is_empty!19311))

(declare-fun b!915981 () Bool)

(declare-fun res!617631 () Bool)

(assert (=> b!915981 (=> (not res!617631) (not e!514193))))

(declare-datatypes ((List!18519 0))(
  ( (Nil!18516) (Cons!18515 (h!19661 (_ BitVec 64)) (t!26140 List!18519)) )
))
(declare-fun arrayNoDuplicates!0 (array!54624 (_ BitVec 32) List!18519) Bool)

(assert (=> b!915981 (= res!617631 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18516))))

(declare-fun b!915982 () Bool)

(declare-fun res!617633 () Bool)

(assert (=> b!915982 (=> (not res!617633) (not e!514193))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54624 (_ BitVec 32)) Bool)

(assert (=> b!915982 (= res!617633 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!915983 () Bool)

(declare-fun res!617632 () Bool)

(assert (=> b!915983 (=> (not res!617632) (not e!514193))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!915983 (= res!617632 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26713 _keys!1487))))))

(declare-fun b!915984 () Bool)

(assert (=> b!915984 (= e!514191 tp_is_empty!19311)))

(declare-fun b!915985 () Bool)

(assert (=> b!915985 (= e!514193 false)))

(declare-fun defaultEntry!1235 () Int)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun lt!411702 () Bool)

(declare-fun zeroValue!1173 () V!30713)

(declare-fun minValue!1173 () V!30713)

(declare-datatypes ((tuple2!12660 0))(
  ( (tuple2!12661 (_1!6340 (_ BitVec 64)) (_2!6340 V!30713)) )
))
(declare-datatypes ((List!18520 0))(
  ( (Nil!18517) (Cons!18516 (h!19662 tuple2!12660) (t!26141 List!18520)) )
))
(declare-datatypes ((ListLongMap!11371 0))(
  ( (ListLongMap!11372 (toList!5701 List!18520)) )
))
(declare-fun contains!4721 (ListLongMap!11371 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2930 (array!54624 array!54626 (_ BitVec 32) (_ BitVec 32) V!30713 V!30713 (_ BitVec 32) Int) ListLongMap!11371)

(assert (=> b!915985 (= lt!411702 (contains!4721 (getCurrentListMap!2930 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) k0!1099))))

(declare-fun b!915986 () Bool)

(assert (=> b!915986 (= e!514194 (and e!514190 mapRes!30723))))

(declare-fun condMapEmpty!30723 () Bool)

(declare-fun mapDefault!30723 () ValueCell!9174)

(assert (=> b!915986 (= condMapEmpty!30723 (= (arr!26254 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9174)) mapDefault!30723)))))

(assert (= (and start!78618 res!617630) b!915980))

(assert (= (and b!915980 res!617629) b!915982))

(assert (= (and b!915982 res!617633) b!915981))

(assert (= (and b!915981 res!617631) b!915983))

(assert (= (and b!915983 res!617632) b!915985))

(assert (= (and b!915986 condMapEmpty!30723) mapIsEmpty!30723))

(assert (= (and b!915986 (not condMapEmpty!30723)) mapNonEmpty!30723))

(get-info :version)

(assert (= (and mapNonEmpty!30723 ((_ is ValueCellFull!9174) mapValue!30723)) b!915984))

(assert (= (and b!915986 ((_ is ValueCellFull!9174) mapDefault!30723)) b!915979))

(assert (= start!78618 b!915986))

(declare-fun m!850223 () Bool)

(assert (=> start!78618 m!850223))

(declare-fun m!850225 () Bool)

(assert (=> start!78618 m!850225))

(declare-fun m!850227 () Bool)

(assert (=> start!78618 m!850227))

(declare-fun m!850229 () Bool)

(assert (=> b!915981 m!850229))

(declare-fun m!850231 () Bool)

(assert (=> mapNonEmpty!30723 m!850231))

(declare-fun m!850233 () Bool)

(assert (=> b!915982 m!850233))

(declare-fun m!850235 () Bool)

(assert (=> b!915985 m!850235))

(assert (=> b!915985 m!850235))

(declare-fun m!850237 () Bool)

(assert (=> b!915985 m!850237))

(check-sat (not start!78618) tp_is_empty!19311 (not mapNonEmpty!30723) (not b!915982) (not b!915981) (not b!915985) b_and!27443 (not b_next!16803))
(check-sat b_and!27443 (not b_next!16803))
