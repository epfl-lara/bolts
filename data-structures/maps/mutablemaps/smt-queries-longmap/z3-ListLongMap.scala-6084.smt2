; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78642 () Bool)

(assert start!78642)

(declare-fun b_free!16827 () Bool)

(declare-fun b_next!16827 () Bool)

(assert (=> start!78642 (= b_free!16827 (not b_next!16827))))

(declare-fun tp!58922 () Bool)

(declare-fun b_and!27467 () Bool)

(assert (=> start!78642 (= tp!58922 b_and!27467)))

(declare-fun b!916281 () Bool)

(declare-fun e!514379 () Bool)

(assert (=> b!916281 (= e!514379 false)))

(declare-datatypes ((V!30745 0))(
  ( (V!30746 (val!9718 Int)) )
))
(declare-fun lt!411735 () V!30745)

(declare-datatypes ((tuple2!12678 0))(
  ( (tuple2!12679 (_1!6349 (_ BitVec 64)) (_2!6349 V!30745)) )
))
(declare-datatypes ((List!18538 0))(
  ( (Nil!18535) (Cons!18534 (h!19680 tuple2!12678) (t!26159 List!18538)) )
))
(declare-datatypes ((ListLongMap!11389 0))(
  ( (ListLongMap!11390 (toList!5710 List!18538)) )
))
(declare-fun lt!411734 () ListLongMap!11389)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!540 (ListLongMap!11389 (_ BitVec 64)) V!30745)

(assert (=> b!916281 (= lt!411735 (apply!540 lt!411734 k0!1099))))

(declare-fun b!916282 () Bool)

(declare-fun e!514380 () Bool)

(declare-fun tp_is_empty!19335 () Bool)

(assert (=> b!916282 (= e!514380 tp_is_empty!19335)))

(declare-fun b!916283 () Bool)

(declare-fun e!514378 () Bool)

(declare-fun e!514376 () Bool)

(declare-fun mapRes!30759 () Bool)

(assert (=> b!916283 (= e!514378 (and e!514376 mapRes!30759))))

(declare-fun condMapEmpty!30759 () Bool)

(declare-datatypes ((ValueCell!9186 0))(
  ( (ValueCellFull!9186 (v!12236 V!30745)) (EmptyCell!9186) )
))
(declare-datatypes ((array!54672 0))(
  ( (array!54673 (arr!26277 (Array (_ BitVec 32) ValueCell!9186)) (size!26737 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54672)

(declare-fun mapDefault!30759 () ValueCell!9186)

(assert (=> b!916283 (= condMapEmpty!30759 (= (arr!26277 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9186)) mapDefault!30759)))))

(declare-fun mapIsEmpty!30759 () Bool)

(assert (=> mapIsEmpty!30759 mapRes!30759))

(declare-fun mapNonEmpty!30759 () Bool)

(declare-fun tp!58923 () Bool)

(assert (=> mapNonEmpty!30759 (= mapRes!30759 (and tp!58923 e!514380))))

(declare-fun mapRest!30759 () (Array (_ BitVec 32) ValueCell!9186))

(declare-fun mapValue!30759 () ValueCell!9186)

(declare-fun mapKey!30759 () (_ BitVec 32))

(assert (=> mapNonEmpty!30759 (= (arr!26277 _values!1231) (store mapRest!30759 mapKey!30759 mapValue!30759))))

(declare-fun b!916284 () Bool)

(declare-fun e!514377 () Bool)

(assert (=> b!916284 (= e!514377 e!514379)))

(declare-fun res!617827 () Bool)

(assert (=> b!916284 (=> (not res!617827) (not e!514379))))

(declare-fun contains!4730 (ListLongMap!11389 (_ BitVec 64)) Bool)

(assert (=> b!916284 (= res!617827 (contains!4730 lt!411734 k0!1099))))

(declare-datatypes ((array!54674 0))(
  ( (array!54675 (arr!26278 (Array (_ BitVec 32) (_ BitVec 64))) (size!26738 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54674)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!30745)

(declare-fun minValue!1173 () V!30745)

(declare-fun getCurrentListMap!2939 (array!54674 array!54672 (_ BitVec 32) (_ BitVec 32) V!30745 V!30745 (_ BitVec 32) Int) ListLongMap!11389)

(assert (=> b!916284 (= lt!411734 (getCurrentListMap!2939 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!916285 () Bool)

(assert (=> b!916285 (= e!514376 tp_is_empty!19335)))

(declare-fun res!617826 () Bool)

(assert (=> start!78642 (=> (not res!617826) (not e!514377))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78642 (= res!617826 (validMask!0 mask!1881))))

(assert (=> start!78642 e!514377))

(assert (=> start!78642 true))

(declare-fun array_inv!20488 (array!54672) Bool)

(assert (=> start!78642 (and (array_inv!20488 _values!1231) e!514378)))

(assert (=> start!78642 tp!58922))

(declare-fun array_inv!20489 (array!54674) Bool)

(assert (=> start!78642 (array_inv!20489 _keys!1487)))

(assert (=> start!78642 tp_is_empty!19335))

(declare-fun b!916286 () Bool)

(declare-fun res!617828 () Bool)

(assert (=> b!916286 (=> (not res!617828) (not e!514377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54674 (_ BitVec 32)) Bool)

(assert (=> b!916286 (= res!617828 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!916287 () Bool)

(declare-fun res!617824 () Bool)

(assert (=> b!916287 (=> (not res!617824) (not e!514377))))

(assert (=> b!916287 (= res!617824 (and (= (size!26737 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26738 _keys!1487) (size!26737 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!916288 () Bool)

(declare-fun res!617823 () Bool)

(assert (=> b!916288 (=> (not res!617823) (not e!514377))))

(assert (=> b!916288 (= res!617823 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!26738 _keys!1487))))))

(declare-fun b!916289 () Bool)

(declare-fun res!617825 () Bool)

(assert (=> b!916289 (=> (not res!617825) (not e!514377))))

(declare-datatypes ((List!18539 0))(
  ( (Nil!18536) (Cons!18535 (h!19681 (_ BitVec 64)) (t!26160 List!18539)) )
))
(declare-fun arrayNoDuplicates!0 (array!54674 (_ BitVec 32) List!18539) Bool)

(assert (=> b!916289 (= res!617825 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18536))))

(assert (= (and start!78642 res!617826) b!916287))

(assert (= (and b!916287 res!617824) b!916286))

(assert (= (and b!916286 res!617828) b!916289))

(assert (= (and b!916289 res!617825) b!916288))

(assert (= (and b!916288 res!617823) b!916284))

(assert (= (and b!916284 res!617827) b!916281))

(assert (= (and b!916283 condMapEmpty!30759) mapIsEmpty!30759))

(assert (= (and b!916283 (not condMapEmpty!30759)) mapNonEmpty!30759))

(get-info :version)

(assert (= (and mapNonEmpty!30759 ((_ is ValueCellFull!9186) mapValue!30759)) b!916282))

(assert (= (and b!916283 ((_ is ValueCellFull!9186) mapDefault!30759)) b!916285))

(assert (= start!78642 b!916283))

(declare-fun m!850417 () Bool)

(assert (=> b!916281 m!850417))

(declare-fun m!850419 () Bool)

(assert (=> start!78642 m!850419))

(declare-fun m!850421 () Bool)

(assert (=> start!78642 m!850421))

(declare-fun m!850423 () Bool)

(assert (=> start!78642 m!850423))

(declare-fun m!850425 () Bool)

(assert (=> b!916286 m!850425))

(declare-fun m!850427 () Bool)

(assert (=> b!916284 m!850427))

(declare-fun m!850429 () Bool)

(assert (=> b!916284 m!850429))

(declare-fun m!850431 () Bool)

(assert (=> b!916289 m!850431))

(declare-fun m!850433 () Bool)

(assert (=> mapNonEmpty!30759 m!850433))

(check-sat tp_is_empty!19335 (not b!916289) (not start!78642) (not b!916286) (not b_next!16827) b_and!27467 (not b!916284) (not b!916281) (not mapNonEmpty!30759))
(check-sat b_and!27467 (not b_next!16827))
