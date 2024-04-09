; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80416 () Bool)

(assert start!80416)

(declare-fun b!944002 () Bool)

(declare-fun b_free!18031 () Bool)

(declare-fun b_next!18031 () Bool)

(assert (=> b!944002 (= b_free!18031 (not b_next!18031))))

(declare-fun tp!62604 () Bool)

(declare-fun b_and!29467 () Bool)

(assert (=> b!944002 (= tp!62604 b_and!29467)))

(declare-fun b!943995 () Bool)

(declare-fun res!634288 () Bool)

(declare-fun e!530850 () Bool)

(assert (=> b!943995 (=> (not res!634288) (not e!530850))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32351 0))(
  ( (V!32352 (val!10320 Int)) )
))
(declare-datatypes ((ValueCell!9788 0))(
  ( (ValueCellFull!9788 (v!12852 V!32351)) (EmptyCell!9788) )
))
(declare-datatypes ((array!57068 0))(
  ( (array!57069 (arr!27455 (Array (_ BitVec 32) ValueCell!9788)) (size!27922 (_ BitVec 32))) )
))
(declare-datatypes ((array!57070 0))(
  ( (array!57071 (arr!27456 (Array (_ BitVec 32) (_ BitVec 64))) (size!27923 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4726 0))(
  ( (LongMapFixedSize!4727 (defaultEntry!5658 Int) (mask!27295 (_ BitVec 32)) (extraKeys!5390 (_ BitVec 32)) (zeroValue!5494 V!32351) (minValue!5494 V!32351) (_size!2418 (_ BitVec 32)) (_keys!10532 array!57070) (_values!5681 array!57068) (_vacant!2418 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4726)

(declare-datatypes ((SeekEntryResult!9052 0))(
  ( (MissingZero!9052 (index!38578 (_ BitVec 32))) (Found!9052 (index!38579 (_ BitVec 32))) (Intermediate!9052 (undefined!9864 Bool) (index!38580 (_ BitVec 32)) (x!81072 (_ BitVec 32))) (Undefined!9052) (MissingVacant!9052 (index!38581 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57070 (_ BitVec 32)) SeekEntryResult!9052)

(assert (=> b!943995 (= res!634288 (not (is-Found!9052 (seekEntry!0 key!756 (_keys!10532 thiss!1141) (mask!27295 thiss!1141)))))))

(declare-fun b!943996 () Bool)

(declare-fun res!634286 () Bool)

(assert (=> b!943996 (=> (not res!634286) (not e!530850))))

(declare-datatypes ((tuple2!13564 0))(
  ( (tuple2!13565 (_1!6792 (_ BitVec 64)) (_2!6792 V!32351)) )
))
(declare-datatypes ((List!19396 0))(
  ( (Nil!19393) (Cons!19392 (h!20543 tuple2!13564) (t!27721 List!19396)) )
))
(declare-datatypes ((ListLongMap!12275 0))(
  ( (ListLongMap!12276 (toList!6153 List!19396)) )
))
(declare-fun contains!5176 (ListLongMap!12275 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3341 (array!57070 array!57068 (_ BitVec 32) (_ BitVec 32) V!32351 V!32351 (_ BitVec 32) Int) ListLongMap!12275)

(assert (=> b!943996 (= res!634286 (contains!5176 (getCurrentListMap!3341 (_keys!10532 thiss!1141) (_values!5681 thiss!1141) (mask!27295 thiss!1141) (extraKeys!5390 thiss!1141) (zeroValue!5494 thiss!1141) (minValue!5494 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5658 thiss!1141)) key!756))))

(declare-fun mapNonEmpty!32634 () Bool)

(declare-fun mapRes!32634 () Bool)

(declare-fun tp!62603 () Bool)

(declare-fun e!530853 () Bool)

(assert (=> mapNonEmpty!32634 (= mapRes!32634 (and tp!62603 e!530853))))

(declare-fun mapValue!32634 () ValueCell!9788)

(declare-fun mapKey!32634 () (_ BitVec 32))

(declare-fun mapRest!32634 () (Array (_ BitVec 32) ValueCell!9788))

(assert (=> mapNonEmpty!32634 (= (arr!27455 (_values!5681 thiss!1141)) (store mapRest!32634 mapKey!32634 mapValue!32634))))

(declare-fun b!943997 () Bool)

(declare-fun e!530851 () Bool)

(declare-fun e!530855 () Bool)

(assert (=> b!943997 (= e!530851 (and e!530855 mapRes!32634))))

(declare-fun condMapEmpty!32634 () Bool)

(declare-fun mapDefault!32634 () ValueCell!9788)

