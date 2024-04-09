; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22916 () Bool)

(assert start!22916)

(declare-fun b!238564 () Bool)

(declare-fun b_free!6407 () Bool)

(declare-fun b_next!6407 () Bool)

(assert (=> b!238564 (= b_free!6407 (not b_next!6407))))

(declare-fun tp!22424 () Bool)

(declare-fun b_and!13391 () Bool)

(assert (=> b!238564 (= tp!22424 b_and!13391)))

(declare-fun b!238554 () Bool)

(declare-fun res!116930 () Bool)

(declare-fun e!154889 () Bool)

(assert (=> b!238554 (=> (not res!116930) (not e!154889))))

(declare-datatypes ((V!8005 0))(
  ( (V!8006 (val!3179 Int)) )
))
(declare-datatypes ((ValueCell!2791 0))(
  ( (ValueCellFull!2791 (v!5213 V!8005)) (EmptyCell!2791) )
))
(declare-datatypes ((array!11816 0))(
  ( (array!11817 (arr!5609 (Array (_ BitVec 32) ValueCell!2791)) (size!5950 (_ BitVec 32))) )
))
(declare-datatypes ((array!11818 0))(
  ( (array!11819 (arr!5610 (Array (_ BitVec 32) (_ BitVec 64))) (size!5951 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3482 0))(
  ( (LongMapFixedSize!3483 (defaultEntry!4426 Int) (mask!10462 (_ BitVec 32)) (extraKeys!4163 (_ BitVec 32)) (zeroValue!4267 V!8005) (minValue!4267 V!8005) (_size!1790 (_ BitVec 32)) (_keys!6528 array!11818) (_values!4409 array!11816) (_vacant!1790 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3482)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11818 (_ BitVec 32)) Bool)

(assert (=> b!238554 (= res!116930 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6528 thiss!1504) (mask!10462 thiss!1504)))))

(declare-fun mapIsEmpty!10635 () Bool)

(declare-fun mapRes!10635 () Bool)

(assert (=> mapIsEmpty!10635 mapRes!10635))

(declare-fun b!238555 () Bool)

(declare-fun e!154892 () Bool)

(declare-fun tp_is_empty!6269 () Bool)

(assert (=> b!238555 (= e!154892 tp_is_empty!6269)))

(declare-fun b!238556 () Bool)

(assert (=> b!238556 (= e!154889 false)))

(declare-fun lt!120642 () Bool)

(declare-datatypes ((List!3605 0))(
  ( (Nil!3602) (Cons!3601 (h!4257 (_ BitVec 64)) (t!8608 List!3605)) )
))
(declare-fun arrayNoDuplicates!0 (array!11818 (_ BitVec 32) List!3605) Bool)

(assert (=> b!238556 (= lt!120642 (arrayNoDuplicates!0 (_keys!6528 thiss!1504) #b00000000000000000000000000000000 Nil!3602))))

(declare-fun b!238557 () Bool)

(declare-fun res!116928 () Bool)

(assert (=> b!238557 (=> (not res!116928) (not e!154889))))

(assert (=> b!238557 (= res!116928 (and (= (size!5950 (_values!4409 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10462 thiss!1504))) (= (size!5951 (_keys!6528 thiss!1504)) (size!5950 (_values!4409 thiss!1504))) (bvsge (mask!10462 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4163 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4163 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!238558 () Bool)

(declare-fun e!154891 () Bool)

(declare-fun e!154894 () Bool)

(assert (=> b!238558 (= e!154891 (and e!154894 mapRes!10635))))

(declare-fun condMapEmpty!10635 () Bool)

(declare-fun mapDefault!10635 () ValueCell!2791)

