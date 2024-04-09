; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!37380 () Bool)

(assert start!37380)

(declare-fun b_free!8499 () Bool)

(declare-fun b_next!8499 () Bool)

(assert (=> start!37380 (= b_free!8499 (not b_next!8499))))

(declare-fun tp!30212 () Bool)

(declare-fun b_and!15759 () Bool)

(assert (=> start!37380 (= tp!30212 b_and!15759)))

(declare-fun b!379486 () Bool)

(declare-fun res!215295 () Bool)

(declare-fun e!230876 () Bool)

(assert (=> b!379486 (=> (not res!215295) (not e!230876))))

(declare-datatypes ((array!22191 0))(
  ( (array!22192 (arr!10561 (Array (_ BitVec 32) (_ BitVec 64))) (size!10913 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22191)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22191 (_ BitVec 32)) Bool)

(assert (=> b!379486 (= res!215295 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!379487 () Bool)

(declare-fun e!230879 () Bool)

(declare-fun e!230883 () Bool)

(declare-fun mapRes!15285 () Bool)

(assert (=> b!379487 (= e!230879 (and e!230883 mapRes!15285))))

(declare-fun condMapEmpty!15285 () Bool)

(declare-datatypes ((V!13301 0))(
  ( (V!13302 (val!4618 Int)) )
))
(declare-datatypes ((ValueCell!4230 0))(
  ( (ValueCellFull!4230 (v!6811 V!13301)) (EmptyCell!4230) )
))
(declare-datatypes ((array!22193 0))(
  ( (array!22194 (arr!10562 (Array (_ BitVec 32) ValueCell!4230)) (size!10914 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22193)

(declare-fun mapDefault!15285 () ValueCell!4230)

(assert (=> b!379487 (= condMapEmpty!15285 (= (arr!10562 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4230)) mapDefault!15285)))))

(declare-fun b!379488 () Bool)

(declare-fun res!215302 () Bool)

(assert (=> b!379488 (=> (not res!215302) (not e!230876))))

(declare-fun k0!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22191 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!379488 (= res!215302 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!15285 () Bool)

(assert (=> mapIsEmpty!15285 mapRes!15285))

(declare-fun b!379489 () Bool)

(declare-fun res!215305 () Bool)

(declare-fun e!230878 () Bool)

(assert (=> b!379489 (=> (not res!215305) (not e!230878))))

(declare-fun lt!177361 () array!22191)

(declare-datatypes ((List!6019 0))(
  ( (Nil!6016) (Cons!6015 (h!6871 (_ BitVec 64)) (t!11177 List!6019)) )
))
(declare-fun arrayNoDuplicates!0 (array!22191 (_ BitVec 32) List!6019) Bool)

(assert (=> b!379489 (= res!215305 (arrayNoDuplicates!0 lt!177361 #b00000000000000000000000000000000 Nil!6016))))

(declare-fun b!379490 () Bool)

(declare-fun res!215300 () Bool)

(assert (=> b!379490 (=> (not res!215300) (not e!230876))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!379490 (= res!215300 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!10913 _keys!658))))))

(declare-fun b!379491 () Bool)

(declare-fun e!230877 () Bool)

(declare-fun tp_is_empty!9147 () Bool)

(assert (=> b!379491 (= e!230877 tp_is_empty!9147)))

(declare-fun b!379485 () Bool)

(declare-fun res!215299 () Bool)

(assert (=> b!379485 (=> (not res!215299) (not e!230876))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!379485 (= res!215299 (validKeyInArray!0 k0!778))))

(declare-fun res!215297 () Bool)

(assert (=> start!37380 (=> (not res!215297) (not e!230876))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37380 (= res!215297 (validMask!0 mask!970))))

(assert (=> start!37380 e!230876))

(declare-fun array_inv!7768 (array!22193) Bool)

(assert (=> start!37380 (and (array_inv!7768 _values!506) e!230879)))

(assert (=> start!37380 tp!30212))

(assert (=> start!37380 true))

(assert (=> start!37380 tp_is_empty!9147))

(declare-fun array_inv!7769 (array!22191) Bool)

(assert (=> start!37380 (array_inv!7769 _keys!658)))

(declare-fun b!379492 () Bool)

(declare-fun e!230882 () Bool)

(assert (=> b!379492 (= e!230878 (not e!230882))))

(declare-fun res!215301 () Bool)

(assert (=> b!379492 (=> res!215301 e!230882)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!379492 (= res!215301 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!6146 0))(
  ( (tuple2!6147 (_1!3083 (_ BitVec 64)) (_2!3083 V!13301)) )
))
(declare-datatypes ((List!6020 0))(
  ( (Nil!6017) (Cons!6016 (h!6872 tuple2!6146) (t!11178 List!6020)) )
))
(declare-datatypes ((ListLongMap!5073 0))(
  ( (ListLongMap!5074 (toList!2552 List!6020)) )
))
(declare-fun lt!177360 () ListLongMap!5073)

(declare-fun defaultEntry!514 () Int)

(declare-fun zeroValue!472 () V!13301)

(declare-fun minValue!472 () V!13301)

(declare-fun getCurrentListMap!1979 (array!22191 array!22193 (_ BitVec 32) (_ BitVec 32) V!13301 V!13301 (_ BitVec 32) Int) ListLongMap!5073)

(assert (=> b!379492 (= lt!177360 (getCurrentListMap!1979 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177356 () array!22193)

(declare-fun lt!177365 () ListLongMap!5073)

(assert (=> b!379492 (= lt!177365 (getCurrentListMap!1979 lt!177361 lt!177356 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!177362 () ListLongMap!5073)

(declare-fun lt!177366 () ListLongMap!5073)

(assert (=> b!379492 (and (= lt!177362 lt!177366) (= lt!177366 lt!177362))))

(declare-fun lt!177367 () ListLongMap!5073)

(declare-fun lt!177357 () tuple2!6146)

(declare-fun +!893 (ListLongMap!5073 tuple2!6146) ListLongMap!5073)

(assert (=> b!379492 (= lt!177366 (+!893 lt!177367 lt!177357))))

(declare-fun v!373 () V!13301)

(assert (=> b!379492 (= lt!177357 (tuple2!6147 k0!778 v!373))))

(declare-datatypes ((Unit!11681 0))(
  ( (Unit!11682) )
))
(declare-fun lt!177359 () Unit!11681)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!130 (array!22191 array!22193 (_ BitVec 32) (_ BitVec 32) V!13301 V!13301 (_ BitVec 32) (_ BitVec 64) V!13301 (_ BitVec 32) Int) Unit!11681)

(assert (=> b!379492 (= lt!177359 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!130 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!797 (array!22191 array!22193 (_ BitVec 32) (_ BitVec 32) V!13301 V!13301 (_ BitVec 32) Int) ListLongMap!5073)

(assert (=> b!379492 (= lt!177362 (getCurrentListMapNoExtraKeys!797 lt!177361 lt!177356 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!379492 (= lt!177356 (array!22194 (store (arr!10562 _values!506) i!548 (ValueCellFull!4230 v!373)) (size!10914 _values!506)))))

(assert (=> b!379492 (= lt!177367 (getCurrentListMapNoExtraKeys!797 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!379493 () Bool)

(declare-fun res!215303 () Bool)

(assert (=> b!379493 (=> (not res!215303) (not e!230876))))

(assert (=> b!379493 (= res!215303 (or (= (select (arr!10561 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!10561 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!379494 () Bool)

(assert (=> b!379494 (= e!230876 e!230878)))

(declare-fun res!215296 () Bool)

(assert (=> b!379494 (=> (not res!215296) (not e!230878))))

(assert (=> b!379494 (= res!215296 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!177361 mask!970))))

(assert (=> b!379494 (= lt!177361 (array!22192 (store (arr!10561 _keys!658) i!548 k0!778) (size!10913 _keys!658)))))

(declare-fun b!379495 () Bool)

(declare-fun res!215298 () Bool)

(assert (=> b!379495 (=> (not res!215298) (not e!230876))))

(assert (=> b!379495 (= res!215298 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6016))))

(declare-fun b!379496 () Bool)

(declare-fun res!215304 () Bool)

(assert (=> b!379496 (=> (not res!215304) (not e!230876))))

(assert (=> b!379496 (= res!215304 (and (= (size!10914 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!10913 _keys!658) (size!10914 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun b!379497 () Bool)

(declare-fun e!230881 () Bool)

(assert (=> b!379497 (= e!230881 true)))

(declare-fun lt!177358 () ListLongMap!5073)

(declare-fun lt!177363 () ListLongMap!5073)

(assert (=> b!379497 (= lt!177358 (+!893 lt!177363 lt!177357))))

(declare-fun lt!177364 () Unit!11681)

(declare-fun addCommutativeForDiffKeys!305 (ListLongMap!5073 (_ BitVec 64) V!13301 (_ BitVec 64) V!13301) Unit!11681)

(assert (=> b!379497 (= lt!177364 (addCommutativeForDiffKeys!305 lt!177367 k0!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379498 () Bool)

(assert (=> b!379498 (= e!230882 e!230881)))

(declare-fun res!215306 () Bool)

(assert (=> b!379498 (=> res!215306 e!230881)))

(assert (=> b!379498 (= res!215306 (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!379498 (= lt!177360 lt!177363)))

(declare-fun lt!177355 () tuple2!6146)

(assert (=> b!379498 (= lt!177363 (+!893 lt!177367 lt!177355))))

(assert (=> b!379498 (= lt!177365 lt!177358)))

(assert (=> b!379498 (= lt!177358 (+!893 lt!177366 lt!177355))))

(assert (=> b!379498 (= lt!177365 (+!893 lt!177362 lt!177355))))

(assert (=> b!379498 (= lt!177355 (tuple2!6147 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379499 () Bool)

(assert (=> b!379499 (= e!230883 tp_is_empty!9147)))

(declare-fun mapNonEmpty!15285 () Bool)

(declare-fun tp!30213 () Bool)

(assert (=> mapNonEmpty!15285 (= mapRes!15285 (and tp!30213 e!230877))))

(declare-fun mapKey!15285 () (_ BitVec 32))

(declare-fun mapRest!15285 () (Array (_ BitVec 32) ValueCell!4230))

(declare-fun mapValue!15285 () ValueCell!4230)

(assert (=> mapNonEmpty!15285 (= (arr!10562 _values!506) (store mapRest!15285 mapKey!15285 mapValue!15285))))

(assert (= (and start!37380 res!215297) b!379496))

(assert (= (and b!379496 res!215304) b!379486))

(assert (= (and b!379486 res!215295) b!379495))

(assert (= (and b!379495 res!215298) b!379490))

(assert (= (and b!379490 res!215300) b!379485))

(assert (= (and b!379485 res!215299) b!379493))

(assert (= (and b!379493 res!215303) b!379488))

(assert (= (and b!379488 res!215302) b!379494))

(assert (= (and b!379494 res!215296) b!379489))

(assert (= (and b!379489 res!215305) b!379492))

(assert (= (and b!379492 (not res!215301)) b!379498))

(assert (= (and b!379498 (not res!215306)) b!379497))

(assert (= (and b!379487 condMapEmpty!15285) mapIsEmpty!15285))

(assert (= (and b!379487 (not condMapEmpty!15285)) mapNonEmpty!15285))

(get-info :version)

(assert (= (and mapNonEmpty!15285 ((_ is ValueCellFull!4230) mapValue!15285)) b!379491))

(assert (= (and b!379487 ((_ is ValueCellFull!4230) mapDefault!15285)) b!379499))

(assert (= start!37380 b!379487))

(declare-fun m!376421 () Bool)

(assert (=> b!379493 m!376421))

(declare-fun m!376423 () Bool)

(assert (=> b!379497 m!376423))

(declare-fun m!376425 () Bool)

(assert (=> b!379497 m!376425))

(declare-fun m!376427 () Bool)

(assert (=> b!379495 m!376427))

(declare-fun m!376429 () Bool)

(assert (=> b!379485 m!376429))

(declare-fun m!376431 () Bool)

(assert (=> b!379488 m!376431))

(declare-fun m!376433 () Bool)

(assert (=> mapNonEmpty!15285 m!376433))

(declare-fun m!376435 () Bool)

(assert (=> b!379492 m!376435))

(declare-fun m!376437 () Bool)

(assert (=> b!379492 m!376437))

(declare-fun m!376439 () Bool)

(assert (=> b!379492 m!376439))

(declare-fun m!376441 () Bool)

(assert (=> b!379492 m!376441))

(declare-fun m!376443 () Bool)

(assert (=> b!379492 m!376443))

(declare-fun m!376445 () Bool)

(assert (=> b!379492 m!376445))

(declare-fun m!376447 () Bool)

(assert (=> b!379492 m!376447))

(declare-fun m!376449 () Bool)

(assert (=> b!379486 m!376449))

(declare-fun m!376451 () Bool)

(assert (=> b!379498 m!376451))

(declare-fun m!376453 () Bool)

(assert (=> b!379498 m!376453))

(declare-fun m!376455 () Bool)

(assert (=> b!379498 m!376455))

(declare-fun m!376457 () Bool)

(assert (=> b!379494 m!376457))

(declare-fun m!376459 () Bool)

(assert (=> b!379494 m!376459))

(declare-fun m!376461 () Bool)

(assert (=> start!37380 m!376461))

(declare-fun m!376463 () Bool)

(assert (=> start!37380 m!376463))

(declare-fun m!376465 () Bool)

(assert (=> start!37380 m!376465))

(declare-fun m!376467 () Bool)

(assert (=> b!379489 m!376467))

(check-sat (not b!379488) b_and!15759 (not mapNonEmpty!15285) (not b!379497) (not b!379489) (not b_next!8499) (not b!379498) (not b!379486) (not b!379495) (not b!379492) (not b!379494) (not b!379485) (not start!37380) tp_is_empty!9147)
(check-sat b_and!15759 (not b_next!8499))
