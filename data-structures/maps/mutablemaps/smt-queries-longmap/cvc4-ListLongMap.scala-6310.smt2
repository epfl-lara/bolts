; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80896 () Bool)

(assert start!80896)

(declare-fun b!947537 () Bool)

(declare-fun b_free!18185 () Bool)

(declare-fun b_next!18185 () Bool)

(assert (=> b!947537 (= b_free!18185 (not b_next!18185))))

(declare-fun tp!63120 () Bool)

(declare-fun b_and!29625 () Bool)

(assert (=> b!947537 (= tp!63120 b_and!29625)))

(declare-fun b!947533 () Bool)

(declare-fun e!533384 () Bool)

(declare-fun tp_is_empty!20693 () Bool)

(assert (=> b!947533 (= e!533384 tp_is_empty!20693)))

(declare-fun b!947534 () Bool)

(declare-fun res!635990 () Bool)

(declare-fun e!533388 () Bool)

(assert (=> b!947534 (=> (not res!635990) (not e!533388))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!947534 (= res!635990 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!947535 () Bool)

(declare-fun e!533385 () Bool)

(declare-datatypes ((V!32555 0))(
  ( (V!32556 (val!10397 Int)) )
))
(declare-datatypes ((ValueCell!9865 0))(
  ( (ValueCellFull!9865 (v!12931 V!32555)) (EmptyCell!9865) )
))
(declare-datatypes ((array!57408 0))(
  ( (array!57409 (arr!27609 (Array (_ BitVec 32) ValueCell!9865)) (size!28083 (_ BitVec 32))) )
))
(declare-datatypes ((array!57410 0))(
  ( (array!57411 (arr!27610 (Array (_ BitVec 32) (_ BitVec 64))) (size!28084 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4880 0))(
  ( (LongMapFixedSize!4881 (defaultEntry!5737 Int) (mask!27475 (_ BitVec 32)) (extraKeys!5469 (_ BitVec 32)) (zeroValue!5573 V!32555) (minValue!5573 V!32555) (_size!2495 (_ BitVec 32)) (_keys!10646 array!57410) (_values!5760 array!57408) (_vacant!2495 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4880)

(declare-datatypes ((tuple2!13610 0))(
  ( (tuple2!13611 (_1!6815 (_ BitVec 64)) (_2!6815 V!32555)) )
))
(declare-datatypes ((List!19440 0))(
  ( (Nil!19437) (Cons!19436 (h!20592 tuple2!13610) (t!27769 List!19440)) )
))
(declare-datatypes ((ListLongMap!12321 0))(
  ( (ListLongMap!12322 (toList!6176 List!19440)) )
))
(declare-fun contains!5209 (ListLongMap!12321 (_ BitVec 64)) Bool)

(declare-fun map!13070 (LongMapFixedSize!4880) ListLongMap!12321)

(assert (=> b!947535 (= e!533385 (not (contains!5209 (map!13070 thiss!1141) key!756)))))

(declare-datatypes ((SeekEntryResult!9111 0))(
  ( (MissingZero!9111 (index!38814 (_ BitVec 32))) (Found!9111 (index!38815 (_ BitVec 32))) (Intermediate!9111 (undefined!9923 Bool) (index!38816 (_ BitVec 32)) (x!81520 (_ BitVec 32))) (Undefined!9111) (MissingVacant!9111 (index!38817 (_ BitVec 32))) )
))
(declare-fun lt!426596 () SeekEntryResult!9111)

(declare-fun getCurrentListMap!3361 (array!57410 array!57408 (_ BitVec 32) (_ BitVec 32) V!32555 V!32555 (_ BitVec 32) Int) ListLongMap!12321)

(assert (=> b!947535 (contains!5209 (getCurrentListMap!3361 (_keys!10646 thiss!1141) (_values!5760 thiss!1141) (mask!27475 thiss!1141) (extraKeys!5469 thiss!1141) (zeroValue!5573 thiss!1141) (minValue!5573 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5737 thiss!1141)) (select (arr!27610 (_keys!10646 thiss!1141)) (index!38815 lt!426596)))))

(declare-datatypes ((Unit!31927 0))(
  ( (Unit!31928) )
))
(declare-fun lt!426594 () Unit!31927)

(declare-fun lemmaValidKeyInArrayIsInListMap!258 (array!57410 array!57408 (_ BitVec 32) (_ BitVec 32) V!32555 V!32555 (_ BitVec 32) Int) Unit!31927)

(assert (=> b!947535 (= lt!426594 (lemmaValidKeyInArrayIsInListMap!258 (_keys!10646 thiss!1141) (_values!5760 thiss!1141) (mask!27475 thiss!1141) (extraKeys!5469 thiss!1141) (zeroValue!5573 thiss!1141) (minValue!5573 thiss!1141) (index!38815 lt!426596) (defaultEntry!5737 thiss!1141)))))

(declare-fun arrayContainsKey!0 (array!57410 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!947535 (arrayContainsKey!0 (_keys!10646 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!426595 () Unit!31927)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!57410 (_ BitVec 64) (_ BitVec 32)) Unit!31927)

(assert (=> b!947535 (= lt!426595 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10646 thiss!1141) key!756 (index!38815 lt!426596)))))

(declare-fun e!533386 () Bool)

(declare-fun e!533389 () Bool)

(declare-fun array_inv!21380 (array!57410) Bool)

(declare-fun array_inv!21381 (array!57408) Bool)

(assert (=> b!947537 (= e!533389 (and tp!63120 tp_is_empty!20693 (array_inv!21380 (_keys!10646 thiss!1141)) (array_inv!21381 (_values!5760 thiss!1141)) e!533386))))

(declare-fun b!947538 () Bool)

(declare-fun e!533383 () Bool)

(declare-fun mapRes!32920 () Bool)

(assert (=> b!947538 (= e!533386 (and e!533383 mapRes!32920))))

(declare-fun condMapEmpty!32920 () Bool)

(declare-fun mapDefault!32920 () ValueCell!9865)

