; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21950 () Bool)

(assert start!21950)

(declare-fun b!223677 () Bool)

(declare-fun b_free!6005 () Bool)

(declare-fun b_next!6005 () Bool)

(assert (=> b!223677 (= b_free!6005 (not b_next!6005))))

(declare-fun tp!21157 () Bool)

(declare-fun b_and!12921 () Bool)

(assert (=> b!223677 (= tp!21157 b_and!12921)))

(declare-fun bm!20844 () Bool)

(declare-fun call!20847 () Bool)

(declare-datatypes ((V!7469 0))(
  ( (V!7470 (val!2978 Int)) )
))
(declare-datatypes ((ValueCell!2590 0))(
  ( (ValueCellFull!2590 (v!4994 V!7469)) (EmptyCell!2590) )
))
(declare-datatypes ((array!10976 0))(
  ( (array!10977 (arr!5207 (Array (_ BitVec 32) ValueCell!2590)) (size!5540 (_ BitVec 32))) )
))
(declare-datatypes ((array!10978 0))(
  ( (array!10979 (arr!5208 (Array (_ BitVec 32) (_ BitVec 64))) (size!5541 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3080 0))(
  ( (LongMapFixedSize!3081 (defaultEntry!4199 Int) (mask!10027 (_ BitVec 32)) (extraKeys!3936 (_ BitVec 32)) (zeroValue!4040 V!7469) (minValue!4040 V!7469) (_size!1589 (_ BitVec 32)) (_keys!6253 array!10978) (_values!4182 array!10976) (_vacant!1589 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3080)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!10978 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20844 (= call!20847 (arrayContainsKey!0 (_keys!6253 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!223657 () Bool)

(declare-fun e!145287 () Bool)

(declare-fun e!145279 () Bool)

(assert (=> b!223657 (= e!145287 e!145279)))

(declare-fun res!109972 () Bool)

(declare-fun call!20848 () Bool)

(assert (=> b!223657 (= res!109972 call!20848)))

(assert (=> b!223657 (=> (not res!109972) (not e!145279))))

(declare-fun mapNonEmpty!9970 () Bool)

(declare-fun mapRes!9970 () Bool)

(declare-fun tp!21156 () Bool)

(declare-fun e!145280 () Bool)

(assert (=> mapNonEmpty!9970 (= mapRes!9970 (and tp!21156 e!145280))))

(declare-fun mapKey!9970 () (_ BitVec 32))

(declare-fun mapValue!9970 () ValueCell!2590)

(declare-fun mapRest!9970 () (Array (_ BitVec 32) ValueCell!2590))

(assert (=> mapNonEmpty!9970 (= (arr!5207 (_values!4182 thiss!1504)) (store mapRest!9970 mapKey!9970 mapValue!9970))))

(declare-fun b!223658 () Bool)

(declare-fun res!109977 () Bool)

(declare-fun e!145282 () Bool)

(assert (=> b!223658 (=> (not res!109977) (not e!145282))))

(declare-datatypes ((SeekEntryResult!861 0))(
  ( (MissingZero!861 (index!5614 (_ BitVec 32))) (Found!861 (index!5615 (_ BitVec 32))) (Intermediate!861 (undefined!1673 Bool) (index!5616 (_ BitVec 32)) (x!23113 (_ BitVec 32))) (Undefined!861) (MissingVacant!861 (index!5617 (_ BitVec 32))) )
))
(declare-fun lt!112989 () SeekEntryResult!861)

(assert (=> b!223658 (= res!109977 (= (select (arr!5208 (_keys!6253 thiss!1504)) (index!5614 lt!112989)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!223659 () Bool)

(declare-fun e!145275 () Bool)

(declare-fun e!145288 () Bool)

(assert (=> b!223659 (= e!145275 e!145288)))

(declare-fun res!109965 () Bool)

(assert (=> b!223659 (=> (not res!109965) (not e!145288))))

(assert (=> b!223659 (= res!109965 (and (bvslt (size!5541 (_keys!6253 thiss!1504)) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!5541 (_keys!6253 thiss!1504)))))))

(declare-datatypes ((Unit!6723 0))(
  ( (Unit!6724) )
))
(declare-fun lt!112992 () Unit!6723)

(declare-fun e!145283 () Unit!6723)

(assert (=> b!223659 (= lt!112992 e!145283)))

(declare-fun c!37108 () Bool)

(declare-fun lt!112991 () Bool)

(assert (=> b!223659 (= c!37108 lt!112991)))

(assert (=> b!223659 (= lt!112991 (arrayContainsKey!0 (_keys!6253 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!223660 () Bool)

(declare-fun e!145271 () Bool)

(declare-datatypes ((List!3345 0))(
  ( (Nil!3342) (Cons!3341 (h!3989 (_ BitVec 64)) (t!8312 List!3345)) )
))
(declare-fun contains!1544 (List!3345 (_ BitVec 64)) Bool)

(assert (=> b!223660 (= e!145271 (contains!1544 Nil!3342 key!932))))

(declare-fun b!223661 () Bool)

(declare-fun e!145281 () Bool)

(declare-fun tp_is_empty!5867 () Bool)

(assert (=> b!223661 (= e!145281 tp_is_empty!5867)))

(declare-fun b!223662 () Bool)

(declare-fun e!145286 () Bool)

(assert (=> b!223662 (= e!145286 (not (contains!1544 Nil!3342 key!932)))))

(declare-fun b!223663 () Bool)

(declare-fun res!109966 () Bool)

(assert (=> b!223663 (=> (not res!109966) (not e!145282))))

(assert (=> b!223663 (= res!109966 call!20848)))

(declare-fun e!145284 () Bool)

(assert (=> b!223663 (= e!145284 e!145282)))

(declare-fun b!223664 () Bool)

(declare-fun Unit!6725 () Unit!6723)

(assert (=> b!223664 (= e!145283 Unit!6725)))

(declare-fun res!109971 () Bool)

(declare-fun e!145273 () Bool)

(assert (=> start!21950 (=> (not res!109971) (not e!145273))))

(declare-fun valid!1233 (LongMapFixedSize!3080) Bool)

(assert (=> start!21950 (= res!109971 (valid!1233 thiss!1504))))

(assert (=> start!21950 e!145273))

(declare-fun e!145276 () Bool)

(assert (=> start!21950 e!145276))

(assert (=> start!21950 true))

(declare-fun b!223665 () Bool)

(declare-fun res!109976 () Bool)

(assert (=> b!223665 (=> (not res!109976) (not e!145288))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!223665 (= res!109976 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!5541 (_keys!6253 thiss!1504)))))))

(declare-fun b!223666 () Bool)

(declare-fun Unit!6726 () Unit!6723)

(assert (=> b!223666 (= e!145283 Unit!6726)))

(declare-fun lt!112994 () Unit!6723)

(declare-fun lemmaArrayContainsKeyThenInListMap!74 (array!10978 array!10976 (_ BitVec 32) (_ BitVec 32) V!7469 V!7469 (_ BitVec 64) (_ BitVec 32) Int) Unit!6723)

(assert (=> b!223666 (= lt!112994 (lemmaArrayContainsKeyThenInListMap!74 (_keys!6253 thiss!1504) (_values!4182 thiss!1504) (mask!10027 thiss!1504) (extraKeys!3936 thiss!1504) (zeroValue!4040 thiss!1504) (minValue!4040 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4199 thiss!1504)))))

(assert (=> b!223666 false))

(declare-fun b!223667 () Bool)

(declare-fun res!109978 () Bool)

(assert (=> b!223667 (=> (not res!109978) (not e!145288))))

(declare-fun noDuplicate!80 (List!3345) Bool)

(assert (=> b!223667 (= res!109978 (noDuplicate!80 Nil!3342))))

(declare-fun b!223668 () Bool)

(assert (=> b!223668 (= e!145288 false)))

(declare-fun lt!112995 () Bool)

(assert (=> b!223668 (= lt!112995 (contains!1544 Nil!3342 key!932))))

(declare-fun b!223669 () Bool)

(assert (=> b!223669 (= e!145287 (is-Undefined!861 lt!112989))))

(declare-fun b!223670 () Bool)

(declare-fun res!109979 () Bool)

(assert (=> b!223670 (=> (not res!109979) (not e!145288))))

(assert (=> b!223670 (= res!109979 (not (contains!1544 Nil!3342 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!9970 () Bool)

(assert (=> mapIsEmpty!9970 mapRes!9970))

(declare-fun b!223671 () Bool)

(declare-fun res!109968 () Bool)

(assert (=> b!223671 (=> (not res!109968) (not e!145288))))

(declare-fun arrayNoDuplicates!0 (array!10978 (_ BitVec 32) List!3345) Bool)

(assert (=> b!223671 (= res!109968 (arrayNoDuplicates!0 (_keys!6253 thiss!1504) #b00000000000000000000000000000000 Nil!3342))))

(declare-fun b!223672 () Bool)

(declare-fun e!145285 () Bool)

(assert (=> b!223672 (= e!145285 (and e!145281 mapRes!9970))))

(declare-fun condMapEmpty!9970 () Bool)

(declare-fun mapDefault!9970 () ValueCell!2590)

