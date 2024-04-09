; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78220 () Bool)

(assert start!78220)

(declare-fun b_free!16683 () Bool)

(declare-fun b_next!16683 () Bool)

(assert (=> start!78220 (= b_free!16683 (not b_next!16683))))

(declare-fun tp!58327 () Bool)

(declare-fun b_and!27277 () Bool)

(assert (=> start!78220 (= tp!58327 b_and!27277)))

(declare-fun b!912353 () Bool)

(declare-fun res!615559 () Bool)

(declare-fun e!511808 () Bool)

(assert (=> b!912353 (=> (not res!615559) (not e!511808))))

(declare-datatypes ((V!30433 0))(
  ( (V!30434 (val!9601 Int)) )
))
(declare-datatypes ((ValueCell!9069 0))(
  ( (ValueCellFull!9069 (v!12112 V!30433)) (EmptyCell!9069) )
))
(declare-datatypes ((array!54208 0))(
  ( (array!54209 (arr!26054 (Array (_ BitVec 32) ValueCell!9069)) (size!26514 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54208)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30433)

(declare-datatypes ((array!54210 0))(
  ( (array!54211 (arr!26055 (Array (_ BitVec 32) (_ BitVec 64))) (size!26515 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54210)

(declare-fun k0!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30433)

(declare-datatypes ((tuple2!12566 0))(
  ( (tuple2!12567 (_1!6293 (_ BitVec 64)) (_2!6293 V!30433)) )
))
(declare-datatypes ((List!18408 0))(
  ( (Nil!18405) (Cons!18404 (h!19550 tuple2!12566) (t!26005 List!18408)) )
))
(declare-datatypes ((ListLongMap!11277 0))(
  ( (ListLongMap!11278 (toList!5654 List!18408)) )
))
(declare-fun contains!4665 (ListLongMap!11277 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2884 (array!54210 array!54208 (_ BitVec 32) (_ BitVec 32) V!30433 V!30433 (_ BitVec 32) Int) ListLongMap!11277)

(assert (=> b!912353 (= res!615559 (contains!4665 (getCurrentListMap!2884 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun mapNonEmpty!30379 () Bool)

(declare-fun mapRes!30379 () Bool)

(declare-fun tp!58326 () Bool)

(declare-fun e!511811 () Bool)

(assert (=> mapNonEmpty!30379 (= mapRes!30379 (and tp!58326 e!511811))))

(declare-fun mapValue!30379 () ValueCell!9069)

(declare-fun mapRest!30379 () (Array (_ BitVec 32) ValueCell!9069))

(declare-fun mapKey!30379 () (_ BitVec 32))

(assert (=> mapNonEmpty!30379 (= (arr!26054 _values!1152) (store mapRest!30379 mapKey!30379 mapValue!30379))))

(declare-fun mapIsEmpty!30379 () Bool)

(assert (=> mapIsEmpty!30379 mapRes!30379))

(declare-fun b!912355 () Bool)

(declare-fun res!615560 () Bool)

(assert (=> b!912355 (=> (not res!615560) (not e!511808))))

(assert (=> b!912355 (= res!615560 (and (= (size!26514 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26515 _keys!1386) (size!26514 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!912356 () Bool)

(declare-fun e!511810 () Bool)

(declare-fun tp_is_empty!19101 () Bool)

(assert (=> b!912356 (= e!511810 tp_is_empty!19101)))

(declare-fun b!912357 () Bool)

(assert (=> b!912357 (= e!511811 tp_is_empty!19101)))

(declare-fun res!615557 () Bool)

(assert (=> start!78220 (=> (not res!615557) (not e!511808))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78220 (= res!615557 (validMask!0 mask!1756))))

(assert (=> start!78220 e!511808))

(declare-fun e!511807 () Bool)

(declare-fun array_inv!20342 (array!54208) Bool)

(assert (=> start!78220 (and (array_inv!20342 _values!1152) e!511807)))

(assert (=> start!78220 tp!58327))

(assert (=> start!78220 true))

(assert (=> start!78220 tp_is_empty!19101))

(declare-fun array_inv!20343 (array!54210) Bool)

(assert (=> start!78220 (array_inv!20343 _keys!1386)))

(declare-fun b!912354 () Bool)

(assert (=> b!912354 (= e!511808 (not true))))

(declare-fun arrayContainsKey!0 (array!54210 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912354 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30853 0))(
  ( (Unit!30854) )
))
(declare-fun lt!410620 () Unit!30853)

(declare-fun lemmaKeyInListMapIsInArray!272 (array!54210 array!54208 (_ BitVec 32) (_ BitVec 32) V!30433 V!30433 (_ BitVec 64) Int) Unit!30853)

(assert (=> b!912354 (= lt!410620 (lemmaKeyInListMapIsInArray!272 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun b!912358 () Bool)

(declare-fun res!615561 () Bool)

(assert (=> b!912358 (=> (not res!615561) (not e!511808))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912358 (= res!615561 (inRange!0 i!717 mask!1756))))

(declare-fun b!912359 () Bool)

(assert (=> b!912359 (= e!511807 (and e!511810 mapRes!30379))))

(declare-fun condMapEmpty!30379 () Bool)

(declare-fun mapDefault!30379 () ValueCell!9069)

(assert (=> b!912359 (= condMapEmpty!30379 (= (arr!26054 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9069)) mapDefault!30379)))))

(declare-fun b!912360 () Bool)

(declare-fun res!615562 () Bool)

(assert (=> b!912360 (=> (not res!615562) (not e!511808))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54210 (_ BitVec 32)) Bool)

(assert (=> b!912360 (= res!615562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912361 () Bool)

(declare-fun res!615556 () Bool)

(assert (=> b!912361 (=> (not res!615556) (not e!511808))))

(declare-datatypes ((List!18409 0))(
  ( (Nil!18406) (Cons!18405 (h!19551 (_ BitVec 64)) (t!26006 List!18409)) )
))
(declare-fun arrayNoDuplicates!0 (array!54210 (_ BitVec 32) List!18409) Bool)

(assert (=> b!912361 (= res!615556 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18406))))

(declare-fun b!912362 () Bool)

(declare-fun res!615558 () Bool)

(assert (=> b!912362 (=> (not res!615558) (not e!511808))))

(assert (=> b!912362 (= res!615558 (and (= (select (arr!26055 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (= (and start!78220 res!615557) b!912355))

(assert (= (and b!912355 res!615560) b!912360))

(assert (= (and b!912360 res!615562) b!912361))

(assert (= (and b!912361 res!615556) b!912353))

(assert (= (and b!912353 res!615559) b!912358))

(assert (= (and b!912358 res!615561) b!912362))

(assert (= (and b!912362 res!615558) b!912354))

(assert (= (and b!912359 condMapEmpty!30379) mapIsEmpty!30379))

(assert (= (and b!912359 (not condMapEmpty!30379)) mapNonEmpty!30379))

(get-info :version)

(assert (= (and mapNonEmpty!30379 ((_ is ValueCellFull!9069) mapValue!30379)) b!912357))

(assert (= (and b!912359 ((_ is ValueCellFull!9069) mapDefault!30379)) b!912356))

(assert (= start!78220 b!912359))

(declare-fun m!846951 () Bool)

(assert (=> b!912353 m!846951))

(assert (=> b!912353 m!846951))

(declare-fun m!846953 () Bool)

(assert (=> b!912353 m!846953))

(declare-fun m!846955 () Bool)

(assert (=> b!912362 m!846955))

(declare-fun m!846957 () Bool)

(assert (=> b!912354 m!846957))

(declare-fun m!846959 () Bool)

(assert (=> b!912354 m!846959))

(declare-fun m!846961 () Bool)

(assert (=> b!912361 m!846961))

(declare-fun m!846963 () Bool)

(assert (=> b!912358 m!846963))

(declare-fun m!846965 () Bool)

(assert (=> b!912360 m!846965))

(declare-fun m!846967 () Bool)

(assert (=> mapNonEmpty!30379 m!846967))

(declare-fun m!846969 () Bool)

(assert (=> start!78220 m!846969))

(declare-fun m!846971 () Bool)

(assert (=> start!78220 m!846971))

(declare-fun m!846973 () Bool)

(assert (=> start!78220 m!846973))

(check-sat (not b!912354) (not b_next!16683) b_and!27277 (not mapNonEmpty!30379) (not b!912360) (not b!912353) (not b!912361) (not start!78220) (not b!912358) tp_is_empty!19101)
(check-sat b_and!27277 (not b_next!16683))
