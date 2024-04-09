; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35394 () Bool)

(assert start!35394)

(declare-fun res!196345 () Bool)

(declare-fun e!216978 () Bool)

(assert (=> start!35394 (=> (not res!196345) (not e!216978))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35394 (= res!196345 (validMask!0 mask!1842))))

(assert (=> start!35394 e!216978))

(assert (=> start!35394 true))

(declare-datatypes ((V!11429 0))(
  ( (V!11430 (val!3964 Int)) )
))
(declare-datatypes ((ValueCell!3576 0))(
  ( (ValueCellFull!3576 (v!6154 V!11429)) (EmptyCell!3576) )
))
(declare-datatypes ((array!19235 0))(
  ( (array!19236 (arr!9108 (Array (_ BitVec 32) ValueCell!3576)) (size!9460 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19235)

(declare-fun e!216976 () Bool)

(declare-fun array_inv!6702 (array!19235) Bool)

(assert (=> start!35394 (and (array_inv!6702 _values!1208) e!216976)))

(declare-datatypes ((array!19237 0))(
  ( (array!19238 (arr!9109 (Array (_ BitVec 32) (_ BitVec 64))) (size!9461 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19237)

(declare-fun array_inv!6703 (array!19237) Bool)

(assert (=> start!35394 (array_inv!6703 _keys!1456)))

(declare-fun b!354057 () Bool)

(declare-fun e!216979 () Bool)

(declare-fun tp_is_empty!7839 () Bool)

(assert (=> b!354057 (= e!216979 tp_is_empty!7839)))

(declare-fun b!354058 () Bool)

(declare-fun res!196344 () Bool)

(assert (=> b!354058 (=> (not res!196344) (not e!216978))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!354058 (= res!196344 (and (= (size!9460 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9461 _keys!1456) (size!9460 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!13266 () Bool)

(declare-fun mapRes!13266 () Bool)

(assert (=> mapIsEmpty!13266 mapRes!13266))

(declare-fun b!354059 () Bool)

(declare-fun e!216980 () Bool)

(assert (=> b!354059 (= e!216980 tp_is_empty!7839)))

(declare-fun mapNonEmpty!13266 () Bool)

(declare-fun tp!27162 () Bool)

(assert (=> mapNonEmpty!13266 (= mapRes!13266 (and tp!27162 e!216979))))

(declare-fun mapValue!13266 () ValueCell!3576)

(declare-fun mapKey!13266 () (_ BitVec 32))

(declare-fun mapRest!13266 () (Array (_ BitVec 32) ValueCell!3576))

(assert (=> mapNonEmpty!13266 (= (arr!9108 _values!1208) (store mapRest!13266 mapKey!13266 mapValue!13266))))

(declare-fun b!354060 () Bool)

(assert (=> b!354060 (= e!216976 (and e!216980 mapRes!13266))))

(declare-fun condMapEmpty!13266 () Bool)

(declare-fun mapDefault!13266 () ValueCell!3576)

(assert (=> b!354060 (= condMapEmpty!13266 (= (arr!9108 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3576)) mapDefault!13266)))))

(declare-fun b!354061 () Bool)

(assert (=> b!354061 (= e!216978 false)))

(declare-fun lt!165634 () Bool)

(declare-datatypes ((List!5310 0))(
  ( (Nil!5307) (Cons!5306 (h!6162 (_ BitVec 64)) (t!10468 List!5310)) )
))
(declare-fun arrayNoDuplicates!0 (array!19237 (_ BitVec 32) List!5310) Bool)

(assert (=> b!354061 (= lt!165634 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5307))))

(declare-fun b!354062 () Bool)

(declare-fun res!196343 () Bool)

(assert (=> b!354062 (=> (not res!196343) (not e!216978))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19237 (_ BitVec 32)) Bool)

(assert (=> b!354062 (= res!196343 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(assert (= (and start!35394 res!196345) b!354058))

(assert (= (and b!354058 res!196344) b!354062))

(assert (= (and b!354062 res!196343) b!354061))

(assert (= (and b!354060 condMapEmpty!13266) mapIsEmpty!13266))

(assert (= (and b!354060 (not condMapEmpty!13266)) mapNonEmpty!13266))

(get-info :version)

(assert (= (and mapNonEmpty!13266 ((_ is ValueCellFull!3576) mapValue!13266)) b!354057))

(assert (= (and b!354060 ((_ is ValueCellFull!3576) mapDefault!13266)) b!354059))

(assert (= start!35394 b!354060))

(declare-fun m!353175 () Bool)

(assert (=> start!35394 m!353175))

(declare-fun m!353177 () Bool)

(assert (=> start!35394 m!353177))

(declare-fun m!353179 () Bool)

(assert (=> start!35394 m!353179))

(declare-fun m!353181 () Bool)

(assert (=> mapNonEmpty!13266 m!353181))

(declare-fun m!353183 () Bool)

(assert (=> b!354061 m!353183))

(declare-fun m!353185 () Bool)

(assert (=> b!354062 m!353185))

(check-sat tp_is_empty!7839 (not b!354062) (not b!354061) (not start!35394) (not mapNonEmpty!13266))
(check-sat)
