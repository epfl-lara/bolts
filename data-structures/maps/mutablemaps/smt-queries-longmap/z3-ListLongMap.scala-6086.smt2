; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78654 () Bool)

(assert start!78654)

(declare-fun b_free!16839 () Bool)

(declare-fun b_next!16839 () Bool)

(assert (=> start!78654 (= b_free!16839 (not b_next!16839))))

(declare-fun tp!58959 () Bool)

(declare-fun b_and!27479 () Bool)

(assert (=> start!78654 (= tp!58959 b_and!27479)))

(declare-fun b!916443 () Bool)

(declare-fun e!514488 () Bool)

(assert (=> b!916443 (= e!514488 false)))

(declare-datatypes ((V!30761 0))(
  ( (V!30762 (val!9724 Int)) )
))
(declare-fun lt!411771 () V!30761)

(declare-datatypes ((tuple2!12690 0))(
  ( (tuple2!12691 (_1!6355 (_ BitVec 64)) (_2!6355 V!30761)) )
))
(declare-datatypes ((List!18550 0))(
  ( (Nil!18547) (Cons!18546 (h!19692 tuple2!12690) (t!26171 List!18550)) )
))
(declare-datatypes ((ListLongMap!11401 0))(
  ( (ListLongMap!11402 (toList!5716 List!18550)) )
))
(declare-fun lt!411770 () ListLongMap!11401)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!545 (ListLongMap!11401 (_ BitVec 64)) V!30761)

(assert (=> b!916443 (= lt!411771 (apply!545 lt!411770 k0!1099))))

(declare-fun b!916444 () Bool)

(declare-fun res!617932 () Bool)

(declare-fun e!514487 () Bool)

(assert (=> b!916444 (=> (not res!617932) (not e!514487))))

(declare-datatypes ((array!54696 0))(
  ( (array!54697 (arr!26289 (Array (_ BitVec 32) (_ BitVec 64))) (size!26749 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54696)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9192 0))(
  ( (ValueCellFull!9192 (v!12242 V!30761)) (EmptyCell!9192) )
))
(declare-datatypes ((array!54698 0))(
  ( (array!54699 (arr!26290 (Array (_ BitVec 32) ValueCell!9192)) (size!26750 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54698)

(assert (=> b!916444 (= res!617932 (and (= (size!26750 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26749 _keys!1487) (size!26750 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916445 () Bool)

(declare-fun res!617934 () Bool)

(assert (=> b!916445 (=> (not res!617934) (not e!514487))))

(declare-datatypes ((List!18551 0))(
  ( (Nil!18548) (Cons!18547 (h!19693 (_ BitVec 64)) (t!26172 List!18551)) )
))
(declare-fun arrayNoDuplicates!0 (array!54696 (_ BitVec 32) List!18551) Bool)

(assert (=> b!916445 (= res!617934 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18548))))

(declare-fun b!916446 () Bool)

(assert (=> b!916446 (= e!514487 e!514488)))

(declare-fun res!617931 () Bool)

(assert (=> b!916446 (=> (not res!617931) (not e!514488))))

(declare-fun contains!4736 (ListLongMap!11401 (_ BitVec 64)) Bool)

(assert (=> b!916446 (= res!617931 (contains!4736 lt!411770 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30761)

(declare-fun minValue!1173 () V!30761)

(declare-fun getCurrentListMap!2945 (array!54696 array!54698 (_ BitVec 32) (_ BitVec 32) V!30761 V!30761 (_ BitVec 32) Int) ListLongMap!11401)

(assert (=> b!916446 (= lt!411770 (getCurrentListMap!2945 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!916447 () Bool)

(declare-fun e!514484 () Bool)

(declare-fun tp_is_empty!19347 () Bool)

(assert (=> b!916447 (= e!514484 tp_is_empty!19347)))

(declare-fun mapIsEmpty!30777 () Bool)

(declare-fun mapRes!30777 () Bool)

(assert (=> mapIsEmpty!30777 mapRes!30777))

(declare-fun res!617933 () Bool)

(assert (=> start!78654 (=> (not res!617933) (not e!514487))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78654 (= res!617933 (validMask!0 mask!1881))))

(assert (=> start!78654 e!514487))

(assert (=> start!78654 true))

(declare-fun e!514486 () Bool)

(declare-fun array_inv!20500 (array!54698) Bool)

(assert (=> start!78654 (and (array_inv!20500 _values!1231) e!514486)))

(assert (=> start!78654 tp!58959))

(declare-fun array_inv!20501 (array!54696) Bool)

(assert (=> start!78654 (array_inv!20501 _keys!1487)))

(assert (=> start!78654 tp_is_empty!19347))

(declare-fun b!916448 () Bool)

(declare-fun res!617935 () Bool)

(assert (=> b!916448 (=> (not res!617935) (not e!514487))))

(assert (=> b!916448 (= res!617935 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26749 _keys!1487))))))

(declare-fun mapNonEmpty!30777 () Bool)

(declare-fun tp!58958 () Bool)

(declare-fun e!514483 () Bool)

(assert (=> mapNonEmpty!30777 (= mapRes!30777 (and tp!58958 e!514483))))

(declare-fun mapValue!30777 () ValueCell!9192)

(declare-fun mapKey!30777 () (_ BitVec 32))

(declare-fun mapRest!30777 () (Array (_ BitVec 32) ValueCell!9192))

(assert (=> mapNonEmpty!30777 (= (arr!26290 _values!1231) (store mapRest!30777 mapKey!30777 mapValue!30777))))

(declare-fun b!916449 () Bool)

(assert (=> b!916449 (= e!514483 tp_is_empty!19347)))

(declare-fun b!916450 () Bool)

(declare-fun res!617936 () Bool)

(assert (=> b!916450 (=> (not res!617936) (not e!514487))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54696 (_ BitVec 32)) Bool)

(assert (=> b!916450 (= res!617936 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!916451 () Bool)

(assert (=> b!916451 (= e!514486 (and e!514484 mapRes!30777))))

(declare-fun condMapEmpty!30777 () Bool)

(declare-fun mapDefault!30777 () ValueCell!9192)

(assert (=> b!916451 (= condMapEmpty!30777 (= (arr!26290 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9192)) mapDefault!30777)))))

(assert (= (and start!78654 res!617933) b!916444))

(assert (= (and b!916444 res!617932) b!916450))

(assert (= (and b!916450 res!617936) b!916445))

(assert (= (and b!916445 res!617934) b!916448))

(assert (= (and b!916448 res!617935) b!916446))

(assert (= (and b!916446 res!617931) b!916443))

(assert (= (and b!916451 condMapEmpty!30777) mapIsEmpty!30777))

(assert (= (and b!916451 (not condMapEmpty!30777)) mapNonEmpty!30777))

(get-info :version)

(assert (= (and mapNonEmpty!30777 ((_ is ValueCellFull!9192) mapValue!30777)) b!916449))

(assert (= (and b!916451 ((_ is ValueCellFull!9192) mapDefault!30777)) b!916447))

(assert (= start!78654 b!916451))

(declare-fun m!850525 () Bool)

(assert (=> b!916450 m!850525))

(declare-fun m!850527 () Bool)

(assert (=> start!78654 m!850527))

(declare-fun m!850529 () Bool)

(assert (=> start!78654 m!850529))

(declare-fun m!850531 () Bool)

(assert (=> start!78654 m!850531))

(declare-fun m!850533 () Bool)

(assert (=> b!916445 m!850533))

(declare-fun m!850535 () Bool)

(assert (=> mapNonEmpty!30777 m!850535))

(declare-fun m!850537 () Bool)

(assert (=> b!916446 m!850537))

(declare-fun m!850539 () Bool)

(assert (=> b!916446 m!850539))

(declare-fun m!850541 () Bool)

(assert (=> b!916443 m!850541))

(check-sat b_and!27479 (not b!916445) (not b!916450) (not mapNonEmpty!30777) tp_is_empty!19347 (not b_next!16839) (not start!78654) (not b!916446) (not b!916443))
(check-sat b_and!27479 (not b_next!16839))
