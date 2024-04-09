; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16690 () Bool)

(assert start!16690)

(declare-fun b!166941 () Bool)

(declare-fun b_free!3983 () Bool)

(declare-fun b_next!3983 () Bool)

(assert (=> b!166941 (= b_free!3983 (not b_next!3983))))

(declare-fun tp!14550 () Bool)

(declare-fun b_and!10415 () Bool)

(assert (=> b!166941 (= tp!14550 b_and!10415)))

(declare-fun b!166936 () Bool)

(declare-fun e!109598 () Bool)

(declare-fun e!109593 () Bool)

(assert (=> b!166936 (= e!109598 e!109593)))

(declare-fun res!79388 () Bool)

(assert (=> b!166936 (=> (not res!79388) (not e!109593))))

(declare-datatypes ((V!4693 0))(
  ( (V!4694 (val!1937 Int)) )
))
(declare-datatypes ((ValueCell!1549 0))(
  ( (ValueCellFull!1549 (v!3798 V!4693)) (EmptyCell!1549) )
))
(declare-datatypes ((array!6666 0))(
  ( (array!6667 (arr!3168 (Array (_ BitVec 32) (_ BitVec 64))) (size!3456 (_ BitVec 32))) )
))
(declare-datatypes ((array!6668 0))(
  ( (array!6669 (arr!3169 (Array (_ BitVec 32) ValueCell!1549)) (size!3457 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2006 0))(
  ( (LongMapFixedSize!2007 (defaultEntry!3445 Int) (mask!8184 (_ BitVec 32)) (extraKeys!3186 (_ BitVec 32)) (zeroValue!3288 V!4693) (minValue!3288 V!4693) (_size!1052 (_ BitVec 32)) (_keys!5270 array!6666) (_values!3428 array!6668) (_vacant!1052 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2006)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!166936 (= res!79388 (validMask!0 (mask!8184 thiss!1248)))))

(declare-datatypes ((Unit!5093 0))(
  ( (Unit!5094) )
))
(declare-fun lt!83540 () Unit!5093)

(declare-fun e!109592 () Unit!5093)

(assert (=> b!166936 (= lt!83540 e!109592)))

(declare-fun c!30237 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3120 0))(
  ( (tuple2!3121 (_1!1570 (_ BitVec 64)) (_2!1570 V!4693)) )
))
(declare-datatypes ((List!2131 0))(
  ( (Nil!2128) (Cons!2127 (h!2744 tuple2!3120) (t!6941 List!2131)) )
))
(declare-datatypes ((ListLongMap!2089 0))(
  ( (ListLongMap!2090 (toList!1060 List!2131)) )
))
(declare-fun contains!1096 (ListLongMap!2089 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!713 (array!6666 array!6668 (_ BitVec 32) (_ BitVec 32) V!4693 V!4693 (_ BitVec 32) Int) ListLongMap!2089)

(assert (=> b!166936 (= c!30237 (contains!1096 (getCurrentListMap!713 (_keys!5270 thiss!1248) (_values!3428 thiss!1248) (mask!8184 thiss!1248) (extraKeys!3186 thiss!1248) (zeroValue!3288 thiss!1248) (minValue!3288 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3445 thiss!1248)) key!828))))

(declare-fun b!166937 () Bool)

(declare-fun e!109591 () Bool)

(declare-fun tp_is_empty!3785 () Bool)

(assert (=> b!166937 (= e!109591 tp_is_empty!3785)))

(declare-fun b!166938 () Bool)

(declare-fun lt!83537 () Unit!5093)

(assert (=> b!166938 (= e!109592 lt!83537)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!97 (array!6666 array!6668 (_ BitVec 32) (_ BitVec 32) V!4693 V!4693 (_ BitVec 64) Int) Unit!5093)

(assert (=> b!166938 (= lt!83537 (lemmaInListMapThenSeekEntryOrOpenFindsIt!97 (_keys!5270 thiss!1248) (_values!3428 thiss!1248) (mask!8184 thiss!1248) (extraKeys!3186 thiss!1248) (zeroValue!3288 thiss!1248) (minValue!3288 thiss!1248) key!828 (defaultEntry!3445 thiss!1248)))))

(declare-fun res!79391 () Bool)

(declare-datatypes ((SeekEntryResult!478 0))(
  ( (MissingZero!478 (index!4080 (_ BitVec 32))) (Found!478 (index!4081 (_ BitVec 32))) (Intermediate!478 (undefined!1290 Bool) (index!4082 (_ BitVec 32)) (x!18490 (_ BitVec 32))) (Undefined!478) (MissingVacant!478 (index!4083 (_ BitVec 32))) )
))
(declare-fun lt!83536 () SeekEntryResult!478)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!166938 (= res!79391 (inRange!0 (index!4081 lt!83536) (mask!8184 thiss!1248)))))

(declare-fun e!109597 () Bool)

(assert (=> b!166938 (=> (not res!79391) (not e!109597))))

(assert (=> b!166938 e!109597))

(declare-fun mapNonEmpty!6396 () Bool)

(declare-fun mapRes!6396 () Bool)

(declare-fun tp!14549 () Bool)

(assert (=> mapNonEmpty!6396 (= mapRes!6396 (and tp!14549 e!109591))))

(declare-fun mapValue!6396 () ValueCell!1549)

(declare-fun mapRest!6396 () (Array (_ BitVec 32) ValueCell!1549))

(declare-fun mapKey!6396 () (_ BitVec 32))

(assert (=> mapNonEmpty!6396 (= (arr!3169 (_values!3428 thiss!1248)) (store mapRest!6396 mapKey!6396 mapValue!6396))))

(declare-fun b!166939 () Bool)

(declare-fun res!79392 () Bool)

(declare-fun e!109600 () Bool)

(assert (=> b!166939 (=> (not res!79392) (not e!109600))))

(assert (=> b!166939 (= res!79392 (not (= key!828 (bvneg key!828))))))

(declare-fun b!166940 () Bool)

(assert (=> b!166940 (= e!109593 false)))

(declare-fun lt!83539 () Bool)

(declare-datatypes ((List!2132 0))(
  ( (Nil!2129) (Cons!2128 (h!2745 (_ BitVec 64)) (t!6942 List!2132)) )
))
(declare-fun arrayNoDuplicates!0 (array!6666 (_ BitVec 32) List!2132) Bool)

(assert (=> b!166940 (= lt!83539 (arrayNoDuplicates!0 (_keys!5270 thiss!1248) #b00000000000000000000000000000000 Nil!2129))))

(declare-fun e!109595 () Bool)

(declare-fun e!109594 () Bool)

(declare-fun array_inv!2025 (array!6666) Bool)

(declare-fun array_inv!2026 (array!6668) Bool)

(assert (=> b!166941 (= e!109594 (and tp!14550 tp_is_empty!3785 (array_inv!2025 (_keys!5270 thiss!1248)) (array_inv!2026 (_values!3428 thiss!1248)) e!109595))))

(declare-fun b!166942 () Bool)

(declare-fun e!109599 () Bool)

(assert (=> b!166942 (= e!109595 (and e!109599 mapRes!6396))))

(declare-fun condMapEmpty!6396 () Bool)

(declare-fun mapDefault!6396 () ValueCell!1549)

