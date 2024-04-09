; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37338 () Bool)

(assert start!37338)

(declare-fun b_free!8457 () Bool)

(declare-fun b_next!8457 () Bool)

(assert (=> start!37338 (= b_free!8457 (not b_next!8457))))

(declare-fun tp!30087 () Bool)

(declare-fun b_and!15717 () Bool)

(assert (=> start!37338 (= tp!30087 b_and!15717)))

(declare-fun b!378540 () Bool)

(declare-fun e!230376 () Bool)

(declare-fun e!230374 () Bool)

(assert (=> b!378540 (= e!230376 e!230374)))

(declare-fun res!214542 () Bool)

(assert (=> b!378540 (=> (not res!214542) (not e!230374))))

(declare-datatypes ((array!22107 0))(
  ( (array!22108 (arr!10519 (Array (_ BitVec 32) (_ BitVec 64))) (size!10871 (_ BitVec 32))) )
))
(declare-fun lt!176548 () array!22107)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22107 (_ BitVec 32)) Bool)

(assert (=> b!378540 (= res!214542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!176548 mask!970))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun _keys!658 () array!22107)

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!378540 (= lt!176548 (array!22108 (store (arr!10519 _keys!658) i!548 k0!778) (size!10871 _keys!658)))))

(declare-fun b!378541 () Bool)

(declare-fun e!230372 () Bool)

(declare-fun tp_is_empty!9105 () Bool)

(assert (=> b!378541 (= e!230372 tp_is_empty!9105)))

(declare-fun b!378542 () Bool)

(declare-fun e!230379 () Bool)

(assert (=> b!378542 (= e!230379 tp_is_empty!9105)))

(declare-fun b!378544 () Bool)

(declare-fun e!230373 () Bool)

(declare-fun e!230378 () Bool)

(assert (=> b!378544 (= e!230373 e!230378)))

(declare-fun res!214550 () Bool)

(assert (=> b!378544 (=> res!214550 e!230378)))

(assert (=> b!378544 (= res!214550 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!13245 0))(
  ( (V!13246 (val!4597 Int)) )
))
(declare-datatypes ((tuple2!6110 0))(
  ( (tuple2!6111 (_1!3065 (_ BitVec 64)) (_2!3065 V!13245)) )
))
(declare-datatypes ((List!5982 0))(
  ( (Nil!5979) (Cons!5978 (h!6834 tuple2!6110) (t!11140 List!5982)) )
))
(declare-datatypes ((ListLongMap!5037 0))(
  ( (ListLongMap!5038 (toList!2534 List!5982)) )
))
(declare-fun lt!176547 () ListLongMap!5037)

(declare-fun lt!176546 () ListLongMap!5037)

(assert (=> b!378544 (= lt!176547 lt!176546)))

(declare-fun lt!176541 () ListLongMap!5037)

(declare-fun lt!176545 () tuple2!6110)

(declare-fun +!875 (ListLongMap!5037 tuple2!6110) ListLongMap!5037)

(assert (=> b!378544 (= lt!176546 (+!875 lt!176541 lt!176545))))

(declare-fun lt!176536 () ListLongMap!5037)

(declare-fun lt!176543 () ListLongMap!5037)

(assert (=> b!378544 (= lt!176536 lt!176543)))

(declare-fun lt!176542 () ListLongMap!5037)

(assert (=> b!378544 (= lt!176543 (+!875 lt!176542 lt!176545))))

(declare-fun lt!176540 () ListLongMap!5037)

(assert (=> b!378544 (= lt!176536 (+!875 lt!176540 lt!176545))))

(declare-fun minValue!472 () V!13245)

(assert (=> b!378544 (= lt!176545 (tuple2!6111 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun mapNonEmpty!15222 () Bool)

(declare-fun mapRes!15222 () Bool)

(declare-fun tp!30086 () Bool)

(assert (=> mapNonEmpty!15222 (= mapRes!15222 (and tp!30086 e!230379))))

(declare-datatypes ((ValueCell!4209 0))(
  ( (ValueCellFull!4209 (v!6790 V!13245)) (EmptyCell!4209) )
))
(declare-fun mapValue!15222 () ValueCell!4209)

(declare-fun mapRest!15222 () (Array (_ BitVec 32) ValueCell!4209))

(declare-datatypes ((array!22109 0))(
  ( (array!22110 (arr!10520 (Array (_ BitVec 32) ValueCell!4209)) (size!10872 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22109)

(declare-fun mapKey!15222 () (_ BitVec 32))

(assert (=> mapNonEmpty!15222 (= (arr!10520 _values!506) (store mapRest!15222 mapKey!15222 mapValue!15222))))

(declare-fun b!378545 () Bool)

(declare-fun res!214546 () Bool)

(assert (=> b!378545 (=> (not res!214546) (not e!230376))))

(assert (=> b!378545 (= res!214546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun mapIsEmpty!15222 () Bool)

(assert (=> mapIsEmpty!15222 mapRes!15222))

(declare-fun b!378546 () Bool)

(declare-fun e!230375 () Bool)

(assert (=> b!378546 (= e!230375 (and e!230372 mapRes!15222))))

(declare-fun condMapEmpty!15222 () Bool)

(declare-fun mapDefault!15222 () ValueCell!4209)

(assert (=> b!378546 (= condMapEmpty!15222 (= (arr!10520 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4209)) mapDefault!15222)))))

(declare-fun b!378547 () Bool)

(declare-fun res!214540 () Bool)

(assert (=> b!378547 (=> (not res!214540) (not e!230376))))

(declare-fun arrayContainsKey!0 (array!22107 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!378547 (= res!214540 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!378548 () Bool)

(assert (=> b!378548 (= e!230374 (not e!230373))))

(declare-fun res!214539 () Bool)

(assert (=> b!378548 (=> res!214539 e!230373)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!378548 (= res!214539 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13245)

(declare-fun getCurrentListMap!1965 (array!22107 array!22109 (_ BitVec 32) (_ BitVec 32) V!13245 V!13245 (_ BitVec 32) Int) ListLongMap!5037)

(assert (=> b!378548 (= lt!176547 (getCurrentListMap!1965 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!176537 () array!22109)

(assert (=> b!378548 (= lt!176536 (getCurrentListMap!1965 lt!176548 lt!176537 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!378548 (and (= lt!176540 lt!176542) (= lt!176542 lt!176540))))

(declare-fun lt!176544 () tuple2!6110)

(assert (=> b!378548 (= lt!176542 (+!875 lt!176541 lt!176544))))

(declare-fun v!373 () V!13245)

(assert (=> b!378548 (= lt!176544 (tuple2!6111 k0!778 v!373))))

(declare-datatypes ((Unit!11647 0))(
  ( (Unit!11648) )
))
(declare-fun lt!176538 () Unit!11647)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!116 (array!22107 array!22109 (_ BitVec 32) (_ BitVec 32) V!13245 V!13245 (_ BitVec 32) (_ BitVec 64) V!13245 (_ BitVec 32) Int) Unit!11647)

(assert (=> b!378548 (= lt!176538 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!116 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!783 (array!22107 array!22109 (_ BitVec 32) (_ BitVec 32) V!13245 V!13245 (_ BitVec 32) Int) ListLongMap!5037)

(assert (=> b!378548 (= lt!176540 (getCurrentListMapNoExtraKeys!783 lt!176548 lt!176537 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!378548 (= lt!176537 (array!22110 (store (arr!10520 _values!506) i!548 (ValueCellFull!4209 v!373)) (size!10872 _values!506)))))

(assert (=> b!378548 (= lt!176541 (getCurrentListMapNoExtraKeys!783 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!378549 () Bool)

(declare-fun res!214543 () Bool)

(assert (=> b!378549 (=> (not res!214543) (not e!230376))))

(assert (=> b!378549 (= res!214543 (or (= (select (arr!10519 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10519 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!214548 () Bool)

(assert (=> start!37338 (=> (not res!214548) (not e!230376))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37338 (= res!214548 (validMask!0 mask!970))))

(assert (=> start!37338 e!230376))

(declare-fun array_inv!7740 (array!22109) Bool)

(assert (=> start!37338 (and (array_inv!7740 _values!506) e!230375)))

(assert (=> start!37338 tp!30087))

(assert (=> start!37338 true))

(assert (=> start!37338 tp_is_empty!9105))

(declare-fun array_inv!7741 (array!22107) Bool)

(assert (=> start!37338 (array_inv!7741 _keys!658)))

(declare-fun b!378543 () Bool)

(assert (=> b!378543 (= e!230378 true)))

(assert (=> b!378543 (= lt!176543 (+!875 lt!176546 lt!176544))))

(declare-fun lt!176539 () Unit!11647)

(declare-fun addCommutativeForDiffKeys!290 (ListLongMap!5037 (_ BitVec 64) V!13245 (_ BitVec 64) V!13245) Unit!11647)

(assert (=> b!378543 (= lt!176539 (addCommutativeForDiffKeys!290 lt!176541 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!378550 () Bool)

(declare-fun res!214547 () Bool)

(assert (=> b!378550 (=> (not res!214547) (not e!230376))))

(declare-datatypes ((List!5983 0))(
  ( (Nil!5980) (Cons!5979 (h!6835 (_ BitVec 64)) (t!11141 List!5983)) )
))
(declare-fun arrayNoDuplicates!0 (array!22107 (_ BitVec 32) List!5983) Bool)

(assert (=> b!378550 (= res!214547 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!5980))))

(declare-fun b!378551 () Bool)

(declare-fun res!214549 () Bool)

(assert (=> b!378551 (=> (not res!214549) (not e!230376))))

(assert (=> b!378551 (= res!214549 (and (= (size!10872 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10871 _keys!658) (size!10872 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!378552 () Bool)

(declare-fun res!214545 () Bool)

(assert (=> b!378552 (=> (not res!214545) (not e!230376))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!378552 (= res!214545 (validKeyInArray!0 k0!778))))

(declare-fun b!378553 () Bool)

(declare-fun res!214541 () Bool)

(assert (=> b!378553 (=> (not res!214541) (not e!230374))))

(assert (=> b!378553 (= res!214541 (arrayNoDuplicates!0 lt!176548 #b00000000000000000000000000000000 Nil!5980))))

(declare-fun b!378554 () Bool)

(declare-fun res!214544 () Bool)

(assert (=> b!378554 (=> (not res!214544) (not e!230376))))

(assert (=> b!378554 (= res!214544 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10871 _keys!658))))))

(assert (= (and start!37338 res!214548) b!378551))

(assert (= (and b!378551 res!214549) b!378545))

(assert (= (and b!378545 res!214546) b!378550))

(assert (= (and b!378550 res!214547) b!378554))

(assert (= (and b!378554 res!214544) b!378552))

(assert (= (and b!378552 res!214545) b!378549))

(assert (= (and b!378549 res!214543) b!378547))

(assert (= (and b!378547 res!214540) b!378540))

(assert (= (and b!378540 res!214542) b!378553))

(assert (= (and b!378553 res!214541) b!378548))

(assert (= (and b!378548 (not res!214539)) b!378544))

(assert (= (and b!378544 (not res!214550)) b!378543))

(assert (= (and b!378546 condMapEmpty!15222) mapIsEmpty!15222))

(assert (= (and b!378546 (not condMapEmpty!15222)) mapNonEmpty!15222))

(get-info :version)

(assert (= (and mapNonEmpty!15222 ((_ is ValueCellFull!4209) mapValue!15222)) b!378542))

(assert (= (and b!378546 ((_ is ValueCellFull!4209) mapDefault!15222)) b!378541))

(assert (= start!37338 b!378546))

(declare-fun m!375413 () Bool)

(assert (=> b!378552 m!375413))

(declare-fun m!375415 () Bool)

(assert (=> b!378545 m!375415))

(declare-fun m!375417 () Bool)

(assert (=> b!378548 m!375417))

(declare-fun m!375419 () Bool)

(assert (=> b!378548 m!375419))

(declare-fun m!375421 () Bool)

(assert (=> b!378548 m!375421))

(declare-fun m!375423 () Bool)

(assert (=> b!378548 m!375423))

(declare-fun m!375425 () Bool)

(assert (=> b!378548 m!375425))

(declare-fun m!375427 () Bool)

(assert (=> b!378548 m!375427))

(declare-fun m!375429 () Bool)

(assert (=> b!378548 m!375429))

(declare-fun m!375431 () Bool)

(assert (=> b!378543 m!375431))

(declare-fun m!375433 () Bool)

(assert (=> b!378543 m!375433))

(declare-fun m!375435 () Bool)

(assert (=> b!378549 m!375435))

(declare-fun m!375437 () Bool)

(assert (=> b!378547 m!375437))

(declare-fun m!375439 () Bool)

(assert (=> b!378553 m!375439))

(declare-fun m!375441 () Bool)

(assert (=> b!378540 m!375441))

(declare-fun m!375443 () Bool)

(assert (=> b!378540 m!375443))

(declare-fun m!375445 () Bool)

(assert (=> start!37338 m!375445))

(declare-fun m!375447 () Bool)

(assert (=> start!37338 m!375447))

(declare-fun m!375449 () Bool)

(assert (=> start!37338 m!375449))

(declare-fun m!375451 () Bool)

(assert (=> b!378544 m!375451))

(declare-fun m!375453 () Bool)

(assert (=> b!378544 m!375453))

(declare-fun m!375455 () Bool)

(assert (=> b!378544 m!375455))

(declare-fun m!375457 () Bool)

(assert (=> b!378550 m!375457))

(declare-fun m!375459 () Bool)

(assert (=> mapNonEmpty!15222 m!375459))

(check-sat (not b!378553) (not b!378548) tp_is_empty!9105 b_and!15717 (not b!378544) (not b!378552) (not b!378550) (not mapNonEmpty!15222) (not b!378545) (not b_next!8457) (not b!378543) (not b!378547) (not start!37338) (not b!378540))
(check-sat b_and!15717 (not b_next!8457))
