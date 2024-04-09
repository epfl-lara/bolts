; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16686 () Bool)

(assert start!16686)

(declare-fun b!166868 () Bool)

(declare-fun b_free!3979 () Bool)

(declare-fun b_next!3979 () Bool)

(assert (=> b!166868 (= b_free!3979 (not b_next!3979))))

(declare-fun tp!14537 () Bool)

(declare-fun b_and!10411 () Bool)

(assert (=> b!166868 (= tp!14537 b_and!10411)))

(declare-fun res!79349 () Bool)

(declare-fun e!109531 () Bool)

(assert (=> start!16686 (=> (not res!79349) (not e!109531))))

(declare-datatypes ((V!4689 0))(
  ( (V!4690 (val!1935 Int)) )
))
(declare-datatypes ((ValueCell!1547 0))(
  ( (ValueCellFull!1547 (v!3796 V!4689)) (EmptyCell!1547) )
))
(declare-datatypes ((array!6658 0))(
  ( (array!6659 (arr!3164 (Array (_ BitVec 32) (_ BitVec 64))) (size!3452 (_ BitVec 32))) )
))
(declare-datatypes ((array!6660 0))(
  ( (array!6661 (arr!3165 (Array (_ BitVec 32) ValueCell!1547)) (size!3453 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2002 0))(
  ( (LongMapFixedSize!2003 (defaultEntry!3443 Int) (mask!8182 (_ BitVec 32)) (extraKeys!3184 (_ BitVec 32)) (zeroValue!3286 V!4689) (minValue!3286 V!4689) (_size!1050 (_ BitVec 32)) (_keys!5268 array!6658) (_values!3426 array!6660) (_vacant!1050 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2002)

(declare-fun valid!869 (LongMapFixedSize!2002) Bool)

(assert (=> start!16686 (= res!79349 (valid!869 thiss!1248))))

(assert (=> start!16686 e!109531))

(declare-fun e!109539 () Bool)

(assert (=> start!16686 e!109539))

(assert (=> start!16686 true))

(declare-fun mapIsEmpty!6390 () Bool)

(declare-fun mapRes!6390 () Bool)

(assert (=> mapIsEmpty!6390 mapRes!6390))

(declare-fun b!166858 () Bool)

(declare-datatypes ((Unit!5087 0))(
  ( (Unit!5088) )
))
(declare-fun e!109533 () Unit!5087)

(declare-fun Unit!5089 () Unit!5087)

(assert (=> b!166858 (= e!109533 Unit!5089)))

(declare-fun lt!83510 () Unit!5087)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!95 (array!6658 array!6660 (_ BitVec 32) (_ BitVec 32) V!4689 V!4689 (_ BitVec 64) Int) Unit!5087)

(assert (=> b!166858 (= lt!83510 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!95 (_keys!5268 thiss!1248) (_values!3426 thiss!1248) (mask!8182 thiss!1248) (extraKeys!3184 thiss!1248) (zeroValue!3286 thiss!1248) (minValue!3286 thiss!1248) key!828 (defaultEntry!3443 thiss!1248)))))

(assert (=> b!166858 false))

(declare-fun b!166859 () Bool)

(declare-fun e!109537 () Bool)

(declare-fun tp_is_empty!3781 () Bool)

(assert (=> b!166859 (= e!109537 tp_is_empty!3781)))

(declare-fun b!166860 () Bool)

(declare-fun e!109534 () Bool)

(assert (=> b!166860 (= e!109534 tp_is_empty!3781)))

(declare-fun b!166861 () Bool)

(declare-fun e!109538 () Bool)

(declare-datatypes ((SeekEntryResult!476 0))(
  ( (MissingZero!476 (index!4072 (_ BitVec 32))) (Found!476 (index!4073 (_ BitVec 32))) (Intermediate!476 (undefined!1288 Bool) (index!4074 (_ BitVec 32)) (x!18488 (_ BitVec 32))) (Undefined!476) (MissingVacant!476 (index!4075 (_ BitVec 32))) )
))
(declare-fun lt!83509 () SeekEntryResult!476)

(assert (=> b!166861 (= e!109538 (= (select (arr!3164 (_keys!5268 thiss!1248)) (index!4073 lt!83509)) key!828))))

(declare-fun b!166862 () Bool)

(declare-fun e!109536 () Bool)

(assert (=> b!166862 (= e!109531 e!109536)))

(declare-fun res!79345 () Bool)

(assert (=> b!166862 (=> (not res!79345) (not e!109536))))

(assert (=> b!166862 (= res!79345 (and (not (is-Undefined!476 lt!83509)) (not (is-MissingVacant!476 lt!83509)) (not (is-MissingZero!476 lt!83509)) (is-Found!476 lt!83509)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6658 (_ BitVec 32)) SeekEntryResult!476)

(assert (=> b!166862 (= lt!83509 (seekEntryOrOpen!0 key!828 (_keys!5268 thiss!1248) (mask!8182 thiss!1248)))))

(declare-fun b!166863 () Bool)

(declare-fun res!79344 () Bool)

(assert (=> b!166863 (=> (not res!79344) (not e!109531))))

(assert (=> b!166863 (= res!79344 (not (= key!828 (bvneg key!828))))))

(declare-fun b!166864 () Bool)

(declare-fun e!109540 () Bool)

(assert (=> b!166864 (= e!109536 e!109540)))

(declare-fun res!79348 () Bool)

(assert (=> b!166864 (=> (not res!79348) (not e!109540))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!166864 (= res!79348 (validMask!0 (mask!8182 thiss!1248)))))

(declare-fun lt!83507 () Unit!5087)

(assert (=> b!166864 (= lt!83507 e!109533)))

(declare-fun c!30231 () Bool)

(declare-datatypes ((tuple2!3116 0))(
  ( (tuple2!3117 (_1!1568 (_ BitVec 64)) (_2!1568 V!4689)) )
))
(declare-datatypes ((List!2128 0))(
  ( (Nil!2125) (Cons!2124 (h!2741 tuple2!3116) (t!6938 List!2128)) )
))
(declare-datatypes ((ListLongMap!2085 0))(
  ( (ListLongMap!2086 (toList!1058 List!2128)) )
))
(declare-fun contains!1094 (ListLongMap!2085 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!711 (array!6658 array!6660 (_ BitVec 32) (_ BitVec 32) V!4689 V!4689 (_ BitVec 32) Int) ListLongMap!2085)

(assert (=> b!166864 (= c!30231 (contains!1094 (getCurrentListMap!711 (_keys!5268 thiss!1248) (_values!3426 thiss!1248) (mask!8182 thiss!1248) (extraKeys!3184 thiss!1248) (zeroValue!3286 thiss!1248) (minValue!3286 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3443 thiss!1248)) key!828))))

(declare-fun b!166865 () Bool)

(declare-fun e!109532 () Bool)

(assert (=> b!166865 (= e!109532 (and e!109534 mapRes!6390))))

(declare-fun condMapEmpty!6390 () Bool)

(declare-fun mapDefault!6390 () ValueCell!1547)

