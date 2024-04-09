; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81536 () Bool)

(assert start!81536)

(declare-fun b!952293 () Bool)

(declare-fun b_free!18289 () Bool)

(declare-fun b_next!18289 () Bool)

(assert (=> b!952293 (= b_free!18289 (not b_next!18289))))

(declare-fun tp!63489 () Bool)

(declare-fun b_and!29787 () Bool)

(assert (=> b!952293 (= tp!63489 b_and!29787)))

(declare-fun mapNonEmpty!33133 () Bool)

(declare-fun mapRes!33133 () Bool)

(declare-fun tp!63490 () Bool)

(declare-fun e!536345 () Bool)

(assert (=> mapNonEmpty!33133 (= mapRes!33133 (and tp!63490 e!536345))))

(declare-datatypes ((V!32695 0))(
  ( (V!32696 (val!10449 Int)) )
))
(declare-datatypes ((ValueCell!9917 0))(
  ( (ValueCellFull!9917 (v!13000 V!32695)) (EmptyCell!9917) )
))
(declare-fun mapValue!33133 () ValueCell!9917)

(declare-fun mapRest!33133 () (Array (_ BitVec 32) ValueCell!9917))

(declare-datatypes ((array!57650 0))(
  ( (array!57651 (arr!27713 (Array (_ BitVec 32) ValueCell!9917)) (size!28193 (_ BitVec 32))) )
))
(declare-datatypes ((array!57652 0))(
  ( (array!57653 (arr!27714 (Array (_ BitVec 32) (_ BitVec 64))) (size!28194 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4984 0))(
  ( (LongMapFixedSize!4985 (defaultEntry!5823 Int) (mask!27664 (_ BitVec 32)) (extraKeys!5555 (_ BitVec 32)) (zeroValue!5659 V!32695) (minValue!5659 V!32695) (_size!2547 (_ BitVec 32)) (_keys!10773 array!57652) (_values!5846 array!57650) (_vacant!2547 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4984)

(declare-fun mapKey!33133 () (_ BitVec 32))

(assert (=> mapNonEmpty!33133 (= (arr!27713 (_values!5846 thiss!1141)) (store mapRest!33133 mapKey!33133 mapValue!33133))))

(declare-fun b!952287 () Bool)

(declare-fun res!638076 () Bool)

(declare-fun e!536339 () Bool)

(assert (=> b!952287 (=> (not res!638076) (not e!536339))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9147 0))(
  ( (MissingZero!9147 (index!38958 (_ BitVec 32))) (Found!9147 (index!38959 (_ BitVec 32))) (Intermediate!9147 (undefined!9959 Bool) (index!38960 (_ BitVec 32)) (x!81918 (_ BitVec 32))) (Undefined!9147) (MissingVacant!9147 (index!38961 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57652 (_ BitVec 32)) SeekEntryResult!9147)

(assert (=> b!952287 (= res!638076 (not (is-Found!9147 (seekEntry!0 key!756 (_keys!10773 thiss!1141) (mask!27664 thiss!1141)))))))

(declare-fun b!952288 () Bool)

(declare-fun res!638081 () Bool)

(assert (=> b!952288 (=> (not res!638081) (not e!536339))))

(declare-datatypes ((tuple2!13674 0))(
  ( (tuple2!13675 (_1!6847 (_ BitVec 64)) (_2!6847 V!32695)) )
))
(declare-datatypes ((List!19493 0))(
  ( (Nil!19490) (Cons!19489 (h!20651 tuple2!13674) (t!27856 List!19493)) )
))
(declare-datatypes ((ListLongMap!12385 0))(
  ( (ListLongMap!12386 (toList!6208 List!19493)) )
))
(declare-fun contains!5254 (ListLongMap!12385 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3393 (array!57652 array!57650 (_ BitVec 32) (_ BitVec 32) V!32695 V!32695 (_ BitVec 32) Int) ListLongMap!12385)

(assert (=> b!952288 (= res!638081 (contains!5254 (getCurrentListMap!3393 (_keys!10773 thiss!1141) (_values!5846 thiss!1141) (mask!27664 thiss!1141) (extraKeys!5555 thiss!1141) (zeroValue!5659 thiss!1141) (minValue!5659 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5823 thiss!1141)) key!756))))

(declare-fun b!952289 () Bool)

(declare-fun e!536340 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!952289 (= e!536340 (validKeyInArray!0 key!756))))

(declare-fun mapIsEmpty!33133 () Bool)

(assert (=> mapIsEmpty!33133 mapRes!33133))

(declare-fun b!952290 () Bool)

(declare-fun res!638080 () Bool)

(assert (=> b!952290 (=> res!638080 e!536340)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57652 (_ BitVec 32)) Bool)

(assert (=> b!952290 (= res!638080 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10773 thiss!1141) (mask!27664 thiss!1141))))))

(declare-fun res!638077 () Bool)

(assert (=> start!81536 (=> (not res!638077) (not e!536339))))

(declare-fun valid!1866 (LongMapFixedSize!4984) Bool)

(assert (=> start!81536 (= res!638077 (valid!1866 thiss!1141))))

(assert (=> start!81536 e!536339))

(declare-fun e!536341 () Bool)

(assert (=> start!81536 e!536341))

(assert (=> start!81536 true))

(declare-fun b!952291 () Bool)

(declare-fun e!536344 () Bool)

(declare-fun e!536342 () Bool)

(assert (=> b!952291 (= e!536344 (and e!536342 mapRes!33133))))

(declare-fun condMapEmpty!33133 () Bool)

(declare-fun mapDefault!33133 () ValueCell!9917)

