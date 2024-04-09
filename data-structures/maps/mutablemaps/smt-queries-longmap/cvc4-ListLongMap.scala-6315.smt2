; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81074 () Bool)

(assert start!81074)

(declare-fun b!948881 () Bool)

(declare-fun b_free!18215 () Bool)

(declare-fun b_next!18215 () Bool)

(assert (=> b!948881 (= b_free!18215 (not b_next!18215))))

(declare-fun tp!63227 () Bool)

(declare-fun b_and!29673 () Bool)

(assert (=> b!948881 (= tp!63227 b_and!29673)))

(declare-fun b!948876 () Bool)

(declare-fun e!534215 () Bool)

(declare-datatypes ((V!32595 0))(
  ( (V!32596 (val!10412 Int)) )
))
(declare-datatypes ((ValueCell!9880 0))(
  ( (ValueCellFull!9880 (v!12951 V!32595)) (EmptyCell!9880) )
))
(declare-datatypes ((array!57478 0))(
  ( (array!57479 (arr!27639 (Array (_ BitVec 32) ValueCell!9880)) (size!28115 (_ BitVec 32))) )
))
(declare-datatypes ((array!57480 0))(
  ( (array!57481 (arr!27640 (Array (_ BitVec 32) (_ BitVec 64))) (size!28116 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4910 0))(
  ( (LongMapFixedSize!4911 (defaultEntry!5760 Int) (mask!27525 (_ BitVec 32)) (extraKeys!5492 (_ BitVec 32)) (zeroValue!5596 V!32595) (minValue!5596 V!32595) (_size!2510 (_ BitVec 32)) (_keys!10680 array!57480) (_values!5783 array!57478) (_vacant!2510 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4910)

(assert (=> b!948876 (= e!534215 (and (= (size!28115 (_values!5783 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27525 thiss!1141))) (= (size!28116 (_keys!10680 thiss!1141)) (size!28115 (_values!5783 thiss!1141))) (bvsge (mask!27525 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5492 thiss!1141) #b00000000000000000000000000000000)))))

(declare-fun b!948877 () Bool)

(declare-fun res!636575 () Bool)

(assert (=> b!948877 (=> (not res!636575) (not e!534215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!948877 (= res!636575 (validMask!0 (mask!27525 thiss!1141)))))

(declare-fun b!948878 () Bool)

(declare-fun res!636573 () Bool)

(assert (=> b!948878 (=> (not res!636573) (not e!534215))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9122 0))(
  ( (MissingZero!9122 (index!38858 (_ BitVec 32))) (Found!9122 (index!38859 (_ BitVec 32))) (Intermediate!9122 (undefined!9934 Bool) (index!38860 (_ BitVec 32)) (x!81637 (_ BitVec 32))) (Undefined!9122) (MissingVacant!9122 (index!38861 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57480 (_ BitVec 32)) SeekEntryResult!9122)

(assert (=> b!948878 (= res!636573 (not (is-Found!9122 (seekEntry!0 key!756 (_keys!10680 thiss!1141) (mask!27525 thiss!1141)))))))

(declare-fun b!948879 () Bool)

(declare-fun e!534214 () Bool)

(declare-fun tp_is_empty!20723 () Bool)

(assert (=> b!948879 (= e!534214 tp_is_empty!20723)))

(declare-fun b!948880 () Bool)

(declare-fun res!636577 () Bool)

(assert (=> b!948880 (=> (not res!636577) (not e!534215))))

(declare-datatypes ((tuple2!13630 0))(
  ( (tuple2!13631 (_1!6825 (_ BitVec 64)) (_2!6825 V!32595)) )
))
(declare-datatypes ((List!19455 0))(
  ( (Nil!19452) (Cons!19451 (h!20609 tuple2!13630) (t!27794 List!19455)) )
))
(declare-datatypes ((ListLongMap!12341 0))(
  ( (ListLongMap!12342 (toList!6186 List!19455)) )
))
(declare-fun contains!5223 (ListLongMap!12341 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3371 (array!57480 array!57478 (_ BitVec 32) (_ BitVec 32) V!32595 V!32595 (_ BitVec 32) Int) ListLongMap!12341)

(assert (=> b!948880 (= res!636577 (contains!5223 (getCurrentListMap!3371 (_keys!10680 thiss!1141) (_values!5783 thiss!1141) (mask!27525 thiss!1141) (extraKeys!5492 thiss!1141) (zeroValue!5596 thiss!1141) (minValue!5596 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5760 thiss!1141)) key!756))))

(declare-fun e!534212 () Bool)

(declare-fun e!534213 () Bool)

(declare-fun array_inv!21400 (array!57480) Bool)

(declare-fun array_inv!21401 (array!57478) Bool)

(assert (=> b!948881 (= e!534213 (and tp!63227 tp_is_empty!20723 (array_inv!21400 (_keys!10680 thiss!1141)) (array_inv!21401 (_values!5783 thiss!1141)) e!534212))))

(declare-fun mapNonEmpty!32982 () Bool)

(declare-fun mapRes!32982 () Bool)

(declare-fun tp!63228 () Bool)

(assert (=> mapNonEmpty!32982 (= mapRes!32982 (and tp!63228 e!534214))))

(declare-fun mapKey!32982 () (_ BitVec 32))

(declare-fun mapValue!32982 () ValueCell!9880)

(declare-fun mapRest!32982 () (Array (_ BitVec 32) ValueCell!9880))

(assert (=> mapNonEmpty!32982 (= (arr!27639 (_values!5783 thiss!1141)) (store mapRest!32982 mapKey!32982 mapValue!32982))))

(declare-fun mapIsEmpty!32982 () Bool)

(assert (=> mapIsEmpty!32982 mapRes!32982))

(declare-fun res!636574 () Bool)

(assert (=> start!81074 (=> (not res!636574) (not e!534215))))

(declare-fun valid!1845 (LongMapFixedSize!4910) Bool)

(assert (=> start!81074 (= res!636574 (valid!1845 thiss!1141))))

(assert (=> start!81074 e!534215))

(assert (=> start!81074 e!534213))

(assert (=> start!81074 true))

(declare-fun b!948882 () Bool)

(declare-fun e!534216 () Bool)

(assert (=> b!948882 (= e!534216 tp_is_empty!20723)))

(declare-fun b!948883 () Bool)

(assert (=> b!948883 (= e!534212 (and e!534216 mapRes!32982))))

(declare-fun condMapEmpty!32982 () Bool)

(declare-fun mapDefault!32982 () ValueCell!9880)

