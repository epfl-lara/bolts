; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35272 () Bool)

(assert start!35272)

(declare-fun mapNonEmpty!13149 () Bool)

(declare-fun mapRes!13149 () Bool)

(declare-fun tp!27045 () Bool)

(declare-fun e!216363 () Bool)

(assert (=> mapNonEmpty!13149 (= mapRes!13149 (and tp!27045 e!216363))))

(declare-datatypes ((V!11341 0))(
  ( (V!11342 (val!3931 Int)) )
))
(declare-datatypes ((ValueCell!3543 0))(
  ( (ValueCellFull!3543 (v!6120 V!11341)) (EmptyCell!3543) )
))
(declare-fun mapRest!13149 () (Array (_ BitVec 32) ValueCell!3543))

(declare-fun mapKey!13149 () (_ BitVec 32))

(declare-datatypes ((array!19097 0))(
  ( (array!19098 (arr!9045 (Array (_ BitVec 32) ValueCell!3543)) (size!9397 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19097)

(declare-fun mapValue!13149 () ValueCell!3543)

(assert (=> mapNonEmpty!13149 (= (arr!9045 _values!1208) (store mapRest!13149 mapKey!13149 mapValue!13149))))

(declare-fun b!353274 () Bool)

(declare-fun e!216359 () Bool)

(declare-fun tp_is_empty!7773 () Bool)

(assert (=> b!353274 (= e!216359 tp_is_empty!7773)))

(declare-fun res!195941 () Bool)

(declare-fun e!216362 () Bool)

(assert (=> start!35272 (=> (not res!195941) (not e!216362))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35272 (= res!195941 (validMask!0 mask!1842))))

(assert (=> start!35272 e!216362))

(assert (=> start!35272 true))

(declare-fun e!216360 () Bool)

(declare-fun array_inv!6662 (array!19097) Bool)

(assert (=> start!35272 (and (array_inv!6662 _values!1208) e!216360)))

(declare-datatypes ((array!19099 0))(
  ( (array!19100 (arr!9046 (Array (_ BitVec 32) (_ BitVec 64))) (size!9398 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19099)

(declare-fun array_inv!6663 (array!19099) Bool)

(assert (=> start!35272 (array_inv!6663 _keys!1456)))

(declare-fun b!353275 () Bool)

(assert (=> b!353275 (= e!216363 tp_is_empty!7773)))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(declare-fun b!353276 () Bool)

(assert (=> b!353276 (= e!216362 (and (= (size!9397 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9398 _keys!1456) (size!9397 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011) (= (size!9398 _keys!1456) (bvadd #b00000000000000000000000000000001 mask!1842)) (bvsgt #b00000000000000000000000000000000 (size!9398 _keys!1456))))))

(declare-fun mapIsEmpty!13149 () Bool)

(assert (=> mapIsEmpty!13149 mapRes!13149))

(declare-fun b!353277 () Bool)

(assert (=> b!353277 (= e!216360 (and e!216359 mapRes!13149))))

(declare-fun condMapEmpty!13149 () Bool)

(declare-fun mapDefault!13149 () ValueCell!3543)

(assert (=> b!353277 (= condMapEmpty!13149 (= (arr!9045 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3543)) mapDefault!13149)))))

(assert (= (and start!35272 res!195941) b!353276))

(assert (= (and b!353277 condMapEmpty!13149) mapIsEmpty!13149))

(assert (= (and b!353277 (not condMapEmpty!13149)) mapNonEmpty!13149))

(get-info :version)

(assert (= (and mapNonEmpty!13149 ((_ is ValueCellFull!3543) mapValue!13149)) b!353275))

(assert (= (and b!353277 ((_ is ValueCellFull!3543) mapDefault!13149)) b!353274))

(assert (= start!35272 b!353277))

(declare-fun m!352687 () Bool)

(assert (=> mapNonEmpty!13149 m!352687))

(declare-fun m!352689 () Bool)

(assert (=> start!35272 m!352689))

(declare-fun m!352691 () Bool)

(assert (=> start!35272 m!352691))

(declare-fun m!352693 () Bool)

(assert (=> start!35272 m!352693))

(check-sat (not start!35272) (not mapNonEmpty!13149) tp_is_empty!7773)
(check-sat)
(get-model)

(declare-fun d!71481 () Bool)

(assert (=> d!71481 (= (validMask!0 mask!1842) (and (or (= mask!1842 #b00000000000000000000000000000111) (= mask!1842 #b00000000000000000000000000001111) (= mask!1842 #b00000000000000000000000000011111) (= mask!1842 #b00000000000000000000000000111111) (= mask!1842 #b00000000000000000000000001111111) (= mask!1842 #b00000000000000000000000011111111) (= mask!1842 #b00000000000000000000000111111111) (= mask!1842 #b00000000000000000000001111111111) (= mask!1842 #b00000000000000000000011111111111) (= mask!1842 #b00000000000000000000111111111111) (= mask!1842 #b00000000000000000001111111111111) (= mask!1842 #b00000000000000000011111111111111) (= mask!1842 #b00000000000000000111111111111111) (= mask!1842 #b00000000000000001111111111111111) (= mask!1842 #b00000000000000011111111111111111) (= mask!1842 #b00000000000000111111111111111111) (= mask!1842 #b00000000000001111111111111111111) (= mask!1842 #b00000000000011111111111111111111) (= mask!1842 #b00000000000111111111111111111111) (= mask!1842 #b00000000001111111111111111111111) (= mask!1842 #b00000000011111111111111111111111) (= mask!1842 #b00000000111111111111111111111111) (= mask!1842 #b00000001111111111111111111111111) (= mask!1842 #b00000011111111111111111111111111) (= mask!1842 #b00000111111111111111111111111111) (= mask!1842 #b00001111111111111111111111111111) (= mask!1842 #b00011111111111111111111111111111) (= mask!1842 #b00111111111111111111111111111111)) (bvsle mask!1842 #b00111111111111111111111111111111)))))

(assert (=> start!35272 d!71481))

(declare-fun d!71483 () Bool)

(assert (=> d!71483 (= (array_inv!6662 _values!1208) (bvsge (size!9397 _values!1208) #b00000000000000000000000000000000))))

(assert (=> start!35272 d!71483))

(declare-fun d!71485 () Bool)

(assert (=> d!71485 (= (array_inv!6663 _keys!1456) (bvsge (size!9398 _keys!1456) #b00000000000000000000000000000000))))

(assert (=> start!35272 d!71485))

(declare-fun condMapEmpty!13155 () Bool)

(declare-fun mapDefault!13155 () ValueCell!3543)

(assert (=> mapNonEmpty!13149 (= condMapEmpty!13155 (= mapRest!13149 ((as const (Array (_ BitVec 32) ValueCell!3543)) mapDefault!13155)))))

(declare-fun e!216384 () Bool)

(declare-fun mapRes!13155 () Bool)

(assert (=> mapNonEmpty!13149 (= tp!27045 (and e!216384 mapRes!13155))))

(declare-fun b!353297 () Bool)

(assert (=> b!353297 (= e!216384 tp_is_empty!7773)))

(declare-fun mapIsEmpty!13155 () Bool)

(assert (=> mapIsEmpty!13155 mapRes!13155))

(declare-fun mapNonEmpty!13155 () Bool)

(declare-fun tp!27051 () Bool)

(declare-fun e!216383 () Bool)

(assert (=> mapNonEmpty!13155 (= mapRes!13155 (and tp!27051 e!216383))))

(declare-fun mapValue!13155 () ValueCell!3543)

(declare-fun mapKey!13155 () (_ BitVec 32))

(declare-fun mapRest!13155 () (Array (_ BitVec 32) ValueCell!3543))

(assert (=> mapNonEmpty!13155 (= mapRest!13149 (store mapRest!13155 mapKey!13155 mapValue!13155))))

(declare-fun b!353296 () Bool)

(assert (=> b!353296 (= e!216383 tp_is_empty!7773)))

(assert (= (and mapNonEmpty!13149 condMapEmpty!13155) mapIsEmpty!13155))

(assert (= (and mapNonEmpty!13149 (not condMapEmpty!13155)) mapNonEmpty!13155))

(assert (= (and mapNonEmpty!13155 ((_ is ValueCellFull!3543) mapValue!13155)) b!353296))

(assert (= (and mapNonEmpty!13149 ((_ is ValueCellFull!3543) mapDefault!13155)) b!353297))

(declare-fun m!352703 () Bool)

(assert (=> mapNonEmpty!13155 m!352703))

(check-sat (not mapNonEmpty!13155) tp_is_empty!7773)
(check-sat)
