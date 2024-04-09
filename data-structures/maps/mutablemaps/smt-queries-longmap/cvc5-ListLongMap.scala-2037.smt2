; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35398 () Bool)

(assert start!35398)

(declare-fun b!354093 () Bool)

(declare-fun e!217009 () Bool)

(assert (=> b!354093 (= e!217009 false)))

(declare-fun lt!165640 () Bool)

(declare-datatypes ((array!19243 0))(
  ( (array!19244 (arr!9112 (Array (_ BitVec 32) (_ BitVec 64))) (size!9464 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19243)

(declare-datatypes ((List!5312 0))(
  ( (Nil!5309) (Cons!5308 (h!6164 (_ BitVec 64)) (t!10470 List!5312)) )
))
(declare-fun arrayNoDuplicates!0 (array!19243 (_ BitVec 32) List!5312) Bool)

(assert (=> b!354093 (= lt!165640 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5309))))

(declare-fun mapIsEmpty!13272 () Bool)

(declare-fun mapRes!13272 () Bool)

(assert (=> mapIsEmpty!13272 mapRes!13272))

(declare-fun b!354094 () Bool)

(declare-fun res!196362 () Bool)

(assert (=> b!354094 (=> (not res!196362) (not e!217009))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-datatypes ((V!11435 0))(
  ( (V!11436 (val!3966 Int)) )
))
(declare-datatypes ((ValueCell!3578 0))(
  ( (ValueCellFull!3578 (v!6156 V!11435)) (EmptyCell!3578) )
))
(declare-datatypes ((array!19245 0))(
  ( (array!19246 (arr!9113 (Array (_ BitVec 32) ValueCell!3578)) (size!9465 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19245)

(assert (=> b!354094 (= res!196362 (and (= (size!9465 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9464 _keys!1456) (size!9465 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun b!354096 () Bool)

(declare-fun e!217006 () Bool)

(declare-fun tp_is_empty!7843 () Bool)

(assert (=> b!354096 (= e!217006 tp_is_empty!7843)))

(declare-fun mapNonEmpty!13272 () Bool)

(declare-fun tp!27168 () Bool)

(declare-fun e!217010 () Bool)

(assert (=> mapNonEmpty!13272 (= mapRes!13272 (and tp!27168 e!217010))))

(declare-fun mapValue!13272 () ValueCell!3578)

(declare-fun mapRest!13272 () (Array (_ BitVec 32) ValueCell!3578))

(declare-fun mapKey!13272 () (_ BitVec 32))

(assert (=> mapNonEmpty!13272 (= (arr!9113 _values!1208) (store mapRest!13272 mapKey!13272 mapValue!13272))))

(declare-fun b!354097 () Bool)

(declare-fun res!196361 () Bool)

(assert (=> b!354097 (=> (not res!196361) (not e!217009))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19243 (_ BitVec 32)) Bool)

(assert (=> b!354097 (= res!196361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!354098 () Bool)

(assert (=> b!354098 (= e!217010 tp_is_empty!7843)))

(declare-fun res!196363 () Bool)

(assert (=> start!35398 (=> (not res!196363) (not e!217009))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35398 (= res!196363 (validMask!0 mask!1842))))

(assert (=> start!35398 e!217009))

(assert (=> start!35398 true))

(declare-fun e!217007 () Bool)

(declare-fun array_inv!6706 (array!19245) Bool)

(assert (=> start!35398 (and (array_inv!6706 _values!1208) e!217007)))

(declare-fun array_inv!6707 (array!19243) Bool)

(assert (=> start!35398 (array_inv!6707 _keys!1456)))

(declare-fun b!354095 () Bool)

(assert (=> b!354095 (= e!217007 (and e!217006 mapRes!13272))))

(declare-fun condMapEmpty!13272 () Bool)

(declare-fun mapDefault!13272 () ValueCell!3578)

