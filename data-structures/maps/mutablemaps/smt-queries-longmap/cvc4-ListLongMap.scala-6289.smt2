; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80444 () Bool)

(assert start!80444)

(declare-fun b!944458 () Bool)

(declare-fun b_free!18059 () Bool)

(declare-fun b_next!18059 () Bool)

(assert (=> b!944458 (= b_free!18059 (not b_next!18059))))

(declare-fun tp!62688 () Bool)

(declare-fun b_and!29495 () Bool)

(assert (=> b!944458 (= tp!62688 b_and!29495)))

(declare-fun b!944449 () Bool)

(declare-fun e!531150 () Bool)

(declare-fun e!531148 () Bool)

(assert (=> b!944449 (= e!531150 (not e!531148))))

(declare-fun res!634572 () Bool)

(assert (=> b!944449 (=> res!634572 e!531148)))

(declare-datatypes ((V!32387 0))(
  ( (V!32388 (val!10334 Int)) )
))
(declare-datatypes ((ValueCell!9802 0))(
  ( (ValueCellFull!9802 (v!12866 V!32387)) (EmptyCell!9802) )
))
(declare-datatypes ((array!57124 0))(
  ( (array!57125 (arr!27483 (Array (_ BitVec 32) ValueCell!9802)) (size!27950 (_ BitVec 32))) )
))
(declare-datatypes ((array!57126 0))(
  ( (array!57127 (arr!27484 (Array (_ BitVec 32) (_ BitVec 64))) (size!27951 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4754 0))(
  ( (LongMapFixedSize!4755 (defaultEntry!5672 Int) (mask!27317 (_ BitVec 32)) (extraKeys!5404 (_ BitVec 32)) (zeroValue!5508 V!32387) (minValue!5508 V!32387) (_size!2432 (_ BitVec 32)) (_keys!10546 array!57126) (_values!5695 array!57124) (_vacant!2432 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4754)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!944449 (= res!634572 (not (validMask!0 (mask!27317 thiss!1141))))))

(declare-fun lt!425630 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57126 (_ BitVec 32)) Bool)

(assert (=> b!944449 (arrayForallSeekEntryOrOpenFound!0 lt!425630 (_keys!10546 thiss!1141) (mask!27317 thiss!1141))))

(declare-datatypes ((Unit!31853 0))(
  ( (Unit!31854) )
))
(declare-fun lt!425628 () Unit!31853)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57126 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!31853)

(assert (=> b!944449 (= lt!425628 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10546 thiss!1141) (mask!27317 thiss!1141) #b00000000000000000000000000000000 lt!425630))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!57126 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!944449 (= lt!425630 (arrayScanForKey!0 (_keys!10546 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57126 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!944449 (arrayContainsKey!0 (_keys!10546 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!425629 () Unit!31853)

(declare-fun lemmaKeyInListMapIsInArray!310 (array!57126 array!57124 (_ BitVec 32) (_ BitVec 32) V!32387 V!32387 (_ BitVec 64) Int) Unit!31853)

(assert (=> b!944449 (= lt!425629 (lemmaKeyInListMapIsInArray!310 (_keys!10546 thiss!1141) (_values!5695 thiss!1141) (mask!27317 thiss!1141) (extraKeys!5404 thiss!1141) (zeroValue!5508 thiss!1141) (minValue!5508 thiss!1141) key!756 (defaultEntry!5672 thiss!1141)))))

(declare-fun b!944450 () Bool)

(assert (=> b!944450 (= e!531148 true)))

(declare-datatypes ((SeekEntryResult!9062 0))(
  ( (MissingZero!9062 (index!38618 (_ BitVec 32))) (Found!9062 (index!38619 (_ BitVec 32))) (Intermediate!9062 (undefined!9874 Bool) (index!38620 (_ BitVec 32)) (x!81114 (_ BitVec 32))) (Undefined!9062) (MissingVacant!9062 (index!38621 (_ BitVec 32))) )
))
(declare-fun lt!425627 () SeekEntryResult!9062)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!57126 (_ BitVec 32)) SeekEntryResult!9062)

(assert (=> b!944450 (= lt!425627 (seekEntryOrOpen!0 key!756 (_keys!10546 thiss!1141) (mask!27317 thiss!1141)))))

(declare-fun b!944451 () Bool)

(declare-fun e!531147 () Bool)

(declare-fun tp_is_empty!20567 () Bool)

(assert (=> b!944451 (= e!531147 tp_is_empty!20567)))

(declare-fun mapIsEmpty!32676 () Bool)

(declare-fun mapRes!32676 () Bool)

(assert (=> mapIsEmpty!32676 mapRes!32676))

(declare-fun b!944453 () Bool)

(declare-fun e!531145 () Bool)

(assert (=> b!944453 (= e!531145 tp_is_empty!20567)))

(declare-fun b!944454 () Bool)

(declare-fun res!634571 () Bool)

(assert (=> b!944454 (=> res!634571 e!531148)))

(assert (=> b!944454 (= res!634571 (not (= (size!27951 (_keys!10546 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27317 thiss!1141)))))))

(declare-fun mapNonEmpty!32676 () Bool)

(declare-fun tp!62687 () Bool)

(assert (=> mapNonEmpty!32676 (= mapRes!32676 (and tp!62687 e!531145))))

(declare-fun mapValue!32676 () ValueCell!9802)

(declare-fun mapRest!32676 () (Array (_ BitVec 32) ValueCell!9802))

(declare-fun mapKey!32676 () (_ BitVec 32))

(assert (=> mapNonEmpty!32676 (= (arr!27483 (_values!5695 thiss!1141)) (store mapRest!32676 mapKey!32676 mapValue!32676))))

(declare-fun b!944455 () Bool)

(declare-fun res!634576 () Bool)

(assert (=> b!944455 (=> (not res!634576) (not e!531150))))

(assert (=> b!944455 (= res!634576 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!944456 () Bool)

(declare-fun res!634569 () Bool)

(assert (=> b!944456 (=> (not res!634569) (not e!531150))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!57126 (_ BitVec 32)) SeekEntryResult!9062)

(assert (=> b!944456 (= res!634569 (not (is-Found!9062 (seekEntry!0 key!756 (_keys!10546 thiss!1141) (mask!27317 thiss!1141)))))))

(declare-fun b!944457 () Bool)

(declare-fun res!634570 () Bool)

(assert (=> b!944457 (=> (not res!634570) (not e!531150))))

(declare-datatypes ((tuple2!13584 0))(
  ( (tuple2!13585 (_1!6802 (_ BitVec 64)) (_2!6802 V!32387)) )
))
(declare-datatypes ((List!19406 0))(
  ( (Nil!19403) (Cons!19402 (h!20553 tuple2!13584) (t!27731 List!19406)) )
))
(declare-datatypes ((ListLongMap!12295 0))(
  ( (ListLongMap!12296 (toList!6163 List!19406)) )
))
(declare-fun contains!5186 (ListLongMap!12295 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3351 (array!57126 array!57124 (_ BitVec 32) (_ BitVec 32) V!32387 V!32387 (_ BitVec 32) Int) ListLongMap!12295)

(assert (=> b!944457 (= res!634570 (contains!5186 (getCurrentListMap!3351 (_keys!10546 thiss!1141) (_values!5695 thiss!1141) (mask!27317 thiss!1141) (extraKeys!5404 thiss!1141) (zeroValue!5508 thiss!1141) (minValue!5508 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5672 thiss!1141)) key!756))))

(declare-fun e!531144 () Bool)

(declare-fun e!531146 () Bool)

(declare-fun array_inv!21298 (array!57126) Bool)

(declare-fun array_inv!21299 (array!57124) Bool)

(assert (=> b!944458 (= e!531146 (and tp!62688 tp_is_empty!20567 (array_inv!21298 (_keys!10546 thiss!1141)) (array_inv!21299 (_values!5695 thiss!1141)) e!531144))))

(declare-fun b!944459 () Bool)

(assert (=> b!944459 (= e!531144 (and e!531147 mapRes!32676))))

(declare-fun condMapEmpty!32676 () Bool)

(declare-fun mapDefault!32676 () ValueCell!9802)

