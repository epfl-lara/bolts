; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21708 () Bool)

(assert start!21708)

(declare-fun b!217920 () Bool)

(declare-fun b_free!5845 () Bool)

(declare-fun b_next!5845 () Bool)

(assert (=> b!217920 (= b_free!5845 (not b_next!5845))))

(declare-fun tp!20669 () Bool)

(declare-fun b_and!12753 () Bool)

(assert (=> b!217920 (= tp!20669 b_and!12753)))

(declare-fun mapIsEmpty!9723 () Bool)

(declare-fun mapRes!9723 () Bool)

(assert (=> mapIsEmpty!9723 mapRes!9723))

(declare-fun b!217910 () Bool)

(declare-fun res!106797 () Bool)

(declare-fun e!141766 () Bool)

(assert (=> b!217910 (=> (not res!106797) (not e!141766))))

(declare-datatypes ((V!7257 0))(
  ( (V!7258 (val!2898 Int)) )
))
(declare-datatypes ((ValueCell!2510 0))(
  ( (ValueCellFull!2510 (v!4912 V!7257)) (EmptyCell!2510) )
))
(declare-datatypes ((array!10652 0))(
  ( (array!10653 (arr!5047 (Array (_ BitVec 32) ValueCell!2510)) (size!5379 (_ BitVec 32))) )
))
(declare-datatypes ((array!10654 0))(
  ( (array!10655 (arr!5048 (Array (_ BitVec 32) (_ BitVec 64))) (size!5380 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2920 0))(
  ( (LongMapFixedSize!2921 (defaultEntry!4110 Int) (mask!9877 (_ BitVec 32)) (extraKeys!3847 (_ BitVec 32)) (zeroValue!3951 V!7257) (minValue!3951 V!7257) (_size!1509 (_ BitVec 32)) (_keys!6159 array!10654) (_values!4093 array!10652) (_vacant!1509 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2920)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10654 (_ BitVec 32)) Bool)

(assert (=> b!217910 (= res!106797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6159 thiss!1504) (mask!9877 thiss!1504)))))

(declare-fun b!217911 () Bool)

(declare-fun e!141762 () Bool)

(declare-fun tp_is_empty!5707 () Bool)

(assert (=> b!217911 (= e!141762 tp_is_empty!5707)))

(declare-fun mapNonEmpty!9723 () Bool)

(declare-fun tp!20670 () Bool)

(declare-fun e!141764 () Bool)

(assert (=> mapNonEmpty!9723 (= mapRes!9723 (and tp!20670 e!141764))))

(declare-fun mapRest!9723 () (Array (_ BitVec 32) ValueCell!2510))

(declare-fun mapValue!9723 () ValueCell!2510)

(declare-fun mapKey!9723 () (_ BitVec 32))

(assert (=> mapNonEmpty!9723 (= (arr!5047 (_values!4093 thiss!1504)) (store mapRest!9723 mapKey!9723 mapValue!9723))))

(declare-fun b!217912 () Bool)

(declare-fun res!106795 () Bool)

(declare-fun e!141767 () Bool)

(assert (=> b!217912 (=> (not res!106795) (not e!141767))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!217912 (= res!106795 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!217913 () Bool)

(assert (=> b!217913 (= e!141766 false)))

(declare-fun lt!111463 () Bool)

(declare-datatypes ((List!3231 0))(
  ( (Nil!3228) (Cons!3227 (h!3874 (_ BitVec 64)) (t!8194 List!3231)) )
))
(declare-fun arrayNoDuplicates!0 (array!10654 (_ BitVec 32) List!3231) Bool)

(assert (=> b!217913 (= lt!111463 (arrayNoDuplicates!0 (_keys!6159 thiss!1504) #b00000000000000000000000000000000 Nil!3228))))

(declare-fun b!217914 () Bool)

(declare-fun res!106792 () Bool)

(assert (=> b!217914 (=> (not res!106792) (not e!141766))))

(declare-datatypes ((tuple2!4302 0))(
  ( (tuple2!4303 (_1!2161 (_ BitVec 64)) (_2!2161 V!7257)) )
))
(declare-datatypes ((List!3232 0))(
  ( (Nil!3229) (Cons!3228 (h!3875 tuple2!4302) (t!8195 List!3232)) )
))
(declare-datatypes ((ListLongMap!3229 0))(
  ( (ListLongMap!3230 (toList!1630 List!3232)) )
))
(declare-fun contains!1465 (ListLongMap!3229 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1153 (array!10654 array!10652 (_ BitVec 32) (_ BitVec 32) V!7257 V!7257 (_ BitVec 32) Int) ListLongMap!3229)

(assert (=> b!217914 (= res!106792 (not (contains!1465 (getCurrentListMap!1153 (_keys!6159 thiss!1504) (_values!4093 thiss!1504) (mask!9877 thiss!1504) (extraKeys!3847 thiss!1504) (zeroValue!3951 thiss!1504) (minValue!3951 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4110 thiss!1504)) key!932)))))

(declare-fun b!217915 () Bool)

(declare-fun e!141768 () Bool)

(assert (=> b!217915 (= e!141768 (and e!141762 mapRes!9723))))

(declare-fun condMapEmpty!9723 () Bool)

(declare-fun mapDefault!9723 () ValueCell!2510)

