; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37422 () Bool)

(assert start!37422)

(declare-fun b_free!8541 () Bool)

(declare-fun b_next!8541 () Bool)

(assert (=> start!37422 (= b_free!8541 (not b_next!8541))))

(declare-fun tp!30338 () Bool)

(declare-fun b_and!15801 () Bool)

(assert (=> start!37422 (= tp!30338 b_and!15801)))

(declare-fun b!380430 () Bool)

(declare-fun res!216061 () Bool)

(declare-fun e!231381 () Bool)

(assert (=> b!380430 (=> (not res!216061) (not e!231381))))

(declare-fun i!548 () (_ BitVec 32))

(declare-datatypes ((array!22275 0))(
  ( (array!22276 (arr!10603 (Array (_ BitVec 32) (_ BitVec 64))) (size!10955 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22275)

(assert (=> b!380430 (= res!216061 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10955 _keys!658))))))

(declare-fun b!380431 () Bool)

(declare-fun res!216057 () Bool)

(assert (=> b!380431 (=> (not res!216057) (not e!231381))))

(assert (=> b!380431 (= res!216057 (or (= (select (arr!10603 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10603 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!380432 () Bool)

(declare-fun res!216052 () Bool)

(assert (=> b!380432 (=> (not res!216052) (not e!231381))))

(declare-fun extraKeys!453 () (_ BitVec 32))

(declare-fun mask!970 () (_ BitVec 32))

(declare-datatypes ((V!13357 0))(
  ( (V!13358 (val!4639 Int)) )
))
(declare-datatypes ((ValueCell!4251 0))(
  ( (ValueCellFull!4251 (v!6832 V!13357)) (EmptyCell!4251) )
))
(declare-datatypes ((array!22277 0))(
  ( (array!22278 (arr!10604 (Array (_ BitVec 32) ValueCell!4251)) (size!10956 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22277)

(assert (=> b!380432 (= res!216052 (and (= (size!10956 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10955 _keys!658) (size!10956 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!380433 () Bool)

(declare-fun res!216059 () Bool)

(assert (=> b!380433 (=> (not res!216059) (not e!231381))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22275 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!380433 (= res!216059 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!380434 () Bool)

(declare-fun res!216054 () Bool)

(assert (=> b!380434 (=> (not res!216054) (not e!231381))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!380434 (= res!216054 (validKeyInArray!0 k0!778))))

(declare-fun b!380435 () Bool)

(declare-fun e!231382 () Bool)

(declare-fun e!231386 () Bool)

(assert (=> b!380435 (= e!231382 (not e!231386))))

(declare-fun res!216056 () Bool)

(assert (=> b!380435 (=> res!216056 e!231386)))

(assert (=> b!380435 (= res!216056 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!6184 0))(
  ( (tuple2!6185 (_1!3102 (_ BitVec 64)) (_2!3102 V!13357)) )
))
(declare-datatypes ((List!6054 0))(
  ( (Nil!6051) (Cons!6050 (h!6906 tuple2!6184) (t!11212 List!6054)) )
))
(declare-datatypes ((ListLongMap!5111 0))(
  ( (ListLongMap!5112 (toList!2571 List!6054)) )
))
(declare-fun lt!178181 () ListLongMap!5111)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13357)

(declare-fun minValue!472 () V!13357)

(declare-fun getCurrentListMap!1995 (array!22275 array!22277 (_ BitVec 32) (_ BitVec 32) V!13357 V!13357 (_ BitVec 32) Int) ListLongMap!5111)

(assert (=> b!380435 (= lt!178181 (getCurrentListMap!1995 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178178 () ListLongMap!5111)

(declare-fun lt!178174 () array!22277)

(declare-fun lt!178186 () array!22275)

(assert (=> b!380435 (= lt!178178 (getCurrentListMap!1995 lt!178186 lt!178174 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!178177 () ListLongMap!5111)

(declare-fun lt!178185 () ListLongMap!5111)

(assert (=> b!380435 (and (= lt!178177 lt!178185) (= lt!178185 lt!178177))))

(declare-fun lt!178175 () ListLongMap!5111)

(declare-fun lt!178180 () tuple2!6184)

(declare-fun +!912 (ListLongMap!5111 tuple2!6184) ListLongMap!5111)

(assert (=> b!380435 (= lt!178185 (+!912 lt!178175 lt!178180))))

(declare-fun v!373 () V!13357)

(assert (=> b!380435 (= lt!178180 (tuple2!6185 k0!778 v!373))))

(declare-datatypes ((Unit!11719 0))(
  ( (Unit!11720) )
))
(declare-fun lt!178179 () Unit!11719)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!146 (array!22275 array!22277 (_ BitVec 32) (_ BitVec 32) V!13357 V!13357 (_ BitVec 32) (_ BitVec 64) V!13357 (_ BitVec 32) Int) Unit!11719)

(assert (=> b!380435 (= lt!178179 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!146 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!813 (array!22275 array!22277 (_ BitVec 32) (_ BitVec 32) V!13357 V!13357 (_ BitVec 32) Int) ListLongMap!5111)

(assert (=> b!380435 (= lt!178177 (getCurrentListMapNoExtraKeys!813 lt!178186 lt!178174 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!380435 (= lt!178174 (array!22278 (store (arr!10604 _values!506) i!548 (ValueCellFull!4251 v!373)) (size!10956 _values!506)))))

(assert (=> b!380435 (= lt!178175 (getCurrentListMapNoExtraKeys!813 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun mapNonEmpty!15348 () Bool)

(declare-fun mapRes!15348 () Bool)

(declare-fun tp!30339 () Bool)

(declare-fun e!231380 () Bool)

(assert (=> mapNonEmpty!15348 (= mapRes!15348 (and tp!30339 e!231380))))

(declare-fun mapRest!15348 () (Array (_ BitVec 32) ValueCell!4251))

(declare-fun mapKey!15348 () (_ BitVec 32))

(declare-fun mapValue!15348 () ValueCell!4251)

(assert (=> mapNonEmpty!15348 (= (arr!10604 _values!506) (store mapRest!15348 mapKey!15348 mapValue!15348))))

(declare-fun b!380436 () Bool)

(declare-fun res!216058 () Bool)

(assert (=> b!380436 (=> (not res!216058) (not e!231381))))

(declare-datatypes ((List!6055 0))(
  ( (Nil!6052) (Cons!6051 (h!6907 (_ BitVec 64)) (t!11213 List!6055)) )
))
(declare-fun arrayNoDuplicates!0 (array!22275 (_ BitVec 32) List!6055) Bool)

(assert (=> b!380436 (= res!216058 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6052))))

(declare-fun b!380437 () Bool)

(declare-fun tp_is_empty!9189 () Bool)

(assert (=> b!380437 (= e!231380 tp_is_empty!9189)))

(declare-fun b!380438 () Bool)

(declare-fun res!216053 () Bool)

(assert (=> b!380438 (=> (not res!216053) (not e!231381))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22275 (_ BitVec 32)) Bool)

(assert (=> b!380438 (= res!216053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!380439 () Bool)

(assert (=> b!380439 (= e!231381 e!231382)))

(declare-fun res!216060 () Bool)

(assert (=> b!380439 (=> (not res!216060) (not e!231382))))

(assert (=> b!380439 (= res!216060 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!178186 mask!970))))

(assert (=> b!380439 (= lt!178186 (array!22276 (store (arr!10603 _keys!658) i!548 k0!778) (size!10955 _keys!658)))))

(declare-fun b!380440 () Bool)

(declare-fun e!231384 () Bool)

(assert (=> b!380440 (= e!231384 true)))

(declare-fun lt!178176 () ListLongMap!5111)

(declare-fun lt!178184 () ListLongMap!5111)

(assert (=> b!380440 (= lt!178176 (+!912 lt!178184 lt!178180))))

(declare-fun lt!178182 () Unit!11719)

(declare-fun addCommutativeForDiffKeys!323 (ListLongMap!5111 (_ BitVec 64) V!13357 (_ BitVec 64) V!13357) Unit!11719)

(assert (=> b!380440 (= lt!178182 (addCommutativeForDiffKeys!323 lt!178175 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun mapIsEmpty!15348 () Bool)

(assert (=> mapIsEmpty!15348 mapRes!15348))

(declare-fun b!380441 () Bool)

(declare-fun e!231385 () Bool)

(assert (=> b!380441 (= e!231385 tp_is_empty!9189)))

(declare-fun b!380442 () Bool)

(assert (=> b!380442 (= e!231386 e!231384)))

(declare-fun res!216055 () Bool)

(assert (=> b!380442 (=> res!216055 e!231384)))

(assert (=> b!380442 (= res!216055 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!380442 (= lt!178181 lt!178184)))

(declare-fun lt!178183 () tuple2!6184)

(assert (=> b!380442 (= lt!178184 (+!912 lt!178175 lt!178183))))

(assert (=> b!380442 (= lt!178178 lt!178176)))

(assert (=> b!380442 (= lt!178176 (+!912 lt!178185 lt!178183))))

(assert (=> b!380442 (= lt!178178 (+!912 lt!178177 lt!178183))))

(assert (=> b!380442 (= lt!178183 (tuple2!6185 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!380443 () Bool)

(declare-fun e!231387 () Bool)

(assert (=> b!380443 (= e!231387 (and e!231385 mapRes!15348))))

(declare-fun condMapEmpty!15348 () Bool)

(declare-fun mapDefault!15348 () ValueCell!4251)

(assert (=> b!380443 (= condMapEmpty!15348 (= (arr!10604 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4251)) mapDefault!15348)))))

(declare-fun res!216062 () Bool)

(assert (=> start!37422 (=> (not res!216062) (not e!231381))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37422 (= res!216062 (validMask!0 mask!970))))

(assert (=> start!37422 e!231381))

(declare-fun array_inv!7800 (array!22277) Bool)

(assert (=> start!37422 (and (array_inv!7800 _values!506) e!231387)))

(assert (=> start!37422 tp!30338))

(assert (=> start!37422 true))

(assert (=> start!37422 tp_is_empty!9189))

(declare-fun array_inv!7801 (array!22275) Bool)

(assert (=> start!37422 (array_inv!7801 _keys!658)))

(declare-fun b!380444 () Bool)

(declare-fun res!216051 () Bool)

(assert (=> b!380444 (=> (not res!216051) (not e!231382))))

(assert (=> b!380444 (= res!216051 (arrayNoDuplicates!0 lt!178186 #b00000000000000000000000000000000 Nil!6052))))

(assert (= (and start!37422 res!216062) b!380432))

(assert (= (and b!380432 res!216052) b!380438))

(assert (= (and b!380438 res!216053) b!380436))

(assert (= (and b!380436 res!216058) b!380430))

(assert (= (and b!380430 res!216061) b!380434))

(assert (= (and b!380434 res!216054) b!380431))

(assert (= (and b!380431 res!216057) b!380433))

(assert (= (and b!380433 res!216059) b!380439))

(assert (= (and b!380439 res!216060) b!380444))

(assert (= (and b!380444 res!216051) b!380435))

(assert (= (and b!380435 (not res!216056)) b!380442))

(assert (= (and b!380442 (not res!216055)) b!380440))

(assert (= (and b!380443 condMapEmpty!15348) mapIsEmpty!15348))

(assert (= (and b!380443 (not condMapEmpty!15348)) mapNonEmpty!15348))

(get-info :version)

(assert (= (and mapNonEmpty!15348 ((_ is ValueCellFull!4251) mapValue!15348)) b!380437))

(assert (= (and b!380443 ((_ is ValueCellFull!4251) mapDefault!15348)) b!380441))

(assert (= start!37422 b!380443))

(declare-fun m!377429 () Bool)

(assert (=> b!380436 m!377429))

(declare-fun m!377431 () Bool)

(assert (=> start!37422 m!377431))

(declare-fun m!377433 () Bool)

(assert (=> start!37422 m!377433))

(declare-fun m!377435 () Bool)

(assert (=> start!37422 m!377435))

(declare-fun m!377437 () Bool)

(assert (=> b!380431 m!377437))

(declare-fun m!377439 () Bool)

(assert (=> b!380435 m!377439))

(declare-fun m!377441 () Bool)

(assert (=> b!380435 m!377441))

(declare-fun m!377443 () Bool)

(assert (=> b!380435 m!377443))

(declare-fun m!377445 () Bool)

(assert (=> b!380435 m!377445))

(declare-fun m!377447 () Bool)

(assert (=> b!380435 m!377447))

(declare-fun m!377449 () Bool)

(assert (=> b!380435 m!377449))

(declare-fun m!377451 () Bool)

(assert (=> b!380435 m!377451))

(declare-fun m!377453 () Bool)

(assert (=> b!380442 m!377453))

(declare-fun m!377455 () Bool)

(assert (=> b!380442 m!377455))

(declare-fun m!377457 () Bool)

(assert (=> b!380442 m!377457))

(declare-fun m!377459 () Bool)

(assert (=> b!380433 m!377459))

(declare-fun m!377461 () Bool)

(assert (=> b!380434 m!377461))

(declare-fun m!377463 () Bool)

(assert (=> b!380438 m!377463))

(declare-fun m!377465 () Bool)

(assert (=> b!380444 m!377465))

(declare-fun m!377467 () Bool)

(assert (=> b!380440 m!377467))

(declare-fun m!377469 () Bool)

(assert (=> b!380440 m!377469))

(declare-fun m!377471 () Bool)

(assert (=> mapNonEmpty!15348 m!377471))

(declare-fun m!377473 () Bool)

(assert (=> b!380439 m!377473))

(declare-fun m!377475 () Bool)

(assert (=> b!380439 m!377475))

(check-sat (not b!380436) tp_is_empty!9189 (not b!380439) (not b!380435) (not b_next!8541) (not b!380440) (not b!380433) (not b!380438) b_and!15801 (not b!380434) (not b!380442) (not mapNonEmpty!15348) (not b!380444) (not start!37422))
(check-sat b_and!15801 (not b_next!8541))
