; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16602 () Bool)

(assert start!16602)

(declare-fun b!165365 () Bool)

(declare-fun b_free!3895 () Bool)

(declare-fun b_next!3895 () Bool)

(assert (=> b!165365 (= b_free!3895 (not b_next!3895))))

(declare-fun tp!14286 () Bool)

(declare-fun b_and!10327 () Bool)

(assert (=> b!165365 (= tp!14286 b_and!10327)))

(declare-fun b!165360 () Bool)

(declare-fun res!78465 () Bool)

(declare-fun e!108486 () Bool)

(assert (=> b!165360 (=> (not res!78465) (not e!108486))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!165360 (= res!78465 (not (= key!828 (bvneg key!828))))))

(declare-fun b!165361 () Bool)

(declare-fun e!108484 () Bool)

(declare-fun tp_is_empty!3697 () Bool)

(assert (=> b!165361 (= e!108484 tp_is_empty!3697)))

(declare-fun b!165362 () Bool)

(declare-fun e!108485 () Bool)

(assert (=> b!165362 (= e!108485 tp_is_empty!3697)))

(declare-fun mapIsEmpty!6264 () Bool)

(declare-fun mapRes!6264 () Bool)

(assert (=> mapIsEmpty!6264 mapRes!6264))

(declare-fun b!165363 () Bool)

(declare-fun res!78467 () Bool)

(declare-fun e!108481 () Bool)

(assert (=> b!165363 (=> (not res!78467) (not e!108481))))

(declare-datatypes ((V!4577 0))(
  ( (V!4578 (val!1893 Int)) )
))
(declare-datatypes ((ValueCell!1505 0))(
  ( (ValueCellFull!1505 (v!3754 V!4577)) (EmptyCell!1505) )
))
(declare-datatypes ((array!6490 0))(
  ( (array!6491 (arr!3080 (Array (_ BitVec 32) (_ BitVec 64))) (size!3368 (_ BitVec 32))) )
))
(declare-datatypes ((array!6492 0))(
  ( (array!6493 (arr!3081 (Array (_ BitVec 32) ValueCell!1505)) (size!3369 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1918 0))(
  ( (LongMapFixedSize!1919 (defaultEntry!3401 Int) (mask!8112 (_ BitVec 32)) (extraKeys!3142 (_ BitVec 32)) (zeroValue!3244 V!4577) (minValue!3244 V!4577) (_size!1008 (_ BitVec 32)) (_keys!5226 array!6490) (_values!3384 array!6492) (_vacant!1008 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1918)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165363 (= res!78467 (validMask!0 (mask!8112 thiss!1248)))))

(declare-fun b!165364 () Bool)

(declare-fun res!78466 () Bool)

(assert (=> b!165364 (=> (not res!78466) (not e!108481))))

(assert (=> b!165364 (= res!78466 (and (= (size!3369 (_values!3384 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8112 thiss!1248))) (= (size!3368 (_keys!5226 thiss!1248)) (size!3369 (_values!3384 thiss!1248))) (bvsge (mask!8112 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3142 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3142 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun e!108487 () Bool)

(declare-fun e!108483 () Bool)

(declare-fun array_inv!1969 (array!6490) Bool)

(declare-fun array_inv!1970 (array!6492) Bool)

(assert (=> b!165365 (= e!108487 (and tp!14286 tp_is_empty!3697 (array_inv!1969 (_keys!5226 thiss!1248)) (array_inv!1970 (_values!3384 thiss!1248)) e!108483))))

(declare-fun res!78464 () Bool)

(assert (=> start!16602 (=> (not res!78464) (not e!108486))))

(declare-fun valid!841 (LongMapFixedSize!1918) Bool)

(assert (=> start!16602 (= res!78464 (valid!841 thiss!1248))))

(assert (=> start!16602 e!108486))

(assert (=> start!16602 e!108487))

(assert (=> start!16602 true))

(declare-fun b!165366 () Bool)

(assert (=> b!165366 (= e!108481 false)))

(declare-fun lt!83086 () Bool)

(declare-datatypes ((List!2071 0))(
  ( (Nil!2068) (Cons!2067 (h!2684 (_ BitVec 64)) (t!6881 List!2071)) )
))
(declare-fun arrayNoDuplicates!0 (array!6490 (_ BitVec 32) List!2071) Bool)

(assert (=> b!165366 (= lt!83086 (arrayNoDuplicates!0 (_keys!5226 thiss!1248) #b00000000000000000000000000000000 Nil!2068))))

(declare-fun b!165367 () Bool)

(declare-fun res!78463 () Bool)

(assert (=> b!165367 (=> (not res!78463) (not e!108481))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6490 (_ BitVec 32)) Bool)

(assert (=> b!165367 (= res!78463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5226 thiss!1248) (mask!8112 thiss!1248)))))

(declare-fun b!165368 () Bool)

(declare-fun res!78462 () Bool)

(assert (=> b!165368 (=> (not res!78462) (not e!108481))))

(declare-datatypes ((tuple2!3064 0))(
  ( (tuple2!3065 (_1!1542 (_ BitVec 64)) (_2!1542 V!4577)) )
))
(declare-datatypes ((List!2072 0))(
  ( (Nil!2069) (Cons!2068 (h!2685 tuple2!3064) (t!6882 List!2072)) )
))
(declare-datatypes ((ListLongMap!2033 0))(
  ( (ListLongMap!2034 (toList!1032 List!2072)) )
))
(declare-fun contains!1068 (ListLongMap!2033 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!685 (array!6490 array!6492 (_ BitVec 32) (_ BitVec 32) V!4577 V!4577 (_ BitVec 32) Int) ListLongMap!2033)

(assert (=> b!165368 (= res!78462 (not (contains!1068 (getCurrentListMap!685 (_keys!5226 thiss!1248) (_values!3384 thiss!1248) (mask!8112 thiss!1248) (extraKeys!3142 thiss!1248) (zeroValue!3244 thiss!1248) (minValue!3244 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3401 thiss!1248)) key!828)))))

(declare-fun b!165369 () Bool)

(assert (=> b!165369 (= e!108483 (and e!108484 mapRes!6264))))

(declare-fun condMapEmpty!6264 () Bool)

(declare-fun mapDefault!6264 () ValueCell!1505)

