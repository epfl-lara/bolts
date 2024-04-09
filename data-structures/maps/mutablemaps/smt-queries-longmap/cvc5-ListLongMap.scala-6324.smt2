; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81376 () Bool)

(assert start!81376)

(declare-fun b!951171 () Bool)

(declare-fun b_free!18265 () Bool)

(declare-fun b_next!18265 () Bool)

(assert (=> b!951171 (= b_free!18265 (not b_next!18265))))

(declare-fun tp!63404 () Bool)

(declare-fun b_and!29751 () Bool)

(assert (=> b!951171 (= tp!63404 b_and!29751)))

(declare-fun b!951170 () Bool)

(declare-fun res!637596 () Bool)

(declare-fun e!535627 () Bool)

(assert (=> b!951170 (=> (not res!637596) (not e!535627))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32663 0))(
  ( (V!32664 (val!10437 Int)) )
))
(declare-datatypes ((ValueCell!9905 0))(
  ( (ValueCellFull!9905 (v!12984 V!32663)) (EmptyCell!9905) )
))
(declare-datatypes ((array!57594 0))(
  ( (array!57595 (arr!27689 (Array (_ BitVec 32) ValueCell!9905)) (size!28168 (_ BitVec 32))) )
))
(declare-datatypes ((array!57596 0))(
  ( (array!57597 (arr!27690 (Array (_ BitVec 32) (_ BitVec 64))) (size!28169 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4960 0))(
  ( (LongMapFixedSize!4961 (defaultEntry!5801 Int) (mask!27614 (_ BitVec 32)) (extraKeys!5533 (_ BitVec 32)) (zeroValue!5637 V!32663) (minValue!5637 V!32663) (_size!2535 (_ BitVec 32)) (_keys!10740 array!57596) (_values!5824 array!57594) (_vacant!2535 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4960)

(declare-datatypes ((SeekEntryResult!9137 0))(
  ( (MissingZero!9137 (index!38918 (_ BitVec 32))) (Found!9137 (index!38919 (_ BitVec 32))) (Intermediate!9137 (undefined!9949 Bool) (index!38920 (_ BitVec 32)) (x!81828 (_ BitVec 32))) (Undefined!9137) (MissingVacant!9137 (index!38921 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57596 (_ BitVec 32)) SeekEntryResult!9137)

(assert (=> b!951170 (= res!637596 (not (is-Found!9137 (seekEntry!0 key!756 (_keys!10740 thiss!1141) (mask!27614 thiss!1141)))))))

(declare-fun tp_is_empty!20773 () Bool)

(declare-fun e!535631 () Bool)

(declare-fun e!535628 () Bool)

(declare-fun array_inv!21434 (array!57596) Bool)

(declare-fun array_inv!21435 (array!57594) Bool)

(assert (=> b!951171 (= e!535631 (and tp!63404 tp_is_empty!20773 (array_inv!21434 (_keys!10740 thiss!1141)) (array_inv!21435 (_values!5824 thiss!1141)) e!535628))))

(declare-fun b!951172 () Bool)

(declare-fun e!535633 () Bool)

(assert (=> b!951172 (= e!535633 tp_is_empty!20773)))

(declare-fun b!951173 () Bool)

(declare-fun res!637598 () Bool)

(assert (=> b!951173 (=> (not res!637598) (not e!535627))))

(assert (=> b!951173 (= res!637598 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!637597 () Bool)

(assert (=> start!81376 (=> (not res!637597) (not e!535627))))

(declare-fun valid!1857 (LongMapFixedSize!4960) Bool)

(assert (=> start!81376 (= res!637597 (valid!1857 thiss!1141))))

(assert (=> start!81376 e!535627))

(assert (=> start!81376 e!535631))

(assert (=> start!81376 true))

(declare-fun b!951174 () Bool)

(declare-fun e!535629 () Bool)

(assert (=> b!951174 (= e!535629 tp_is_empty!20773)))

(declare-fun mapNonEmpty!33084 () Bool)

(declare-fun mapRes!33084 () Bool)

(declare-fun tp!63405 () Bool)

(assert (=> mapNonEmpty!33084 (= mapRes!33084 (and tp!63405 e!535633))))

(declare-fun mapRest!33084 () (Array (_ BitVec 32) ValueCell!9905))

(declare-fun mapValue!33084 () ValueCell!9905)

(declare-fun mapKey!33084 () (_ BitVec 32))

(assert (=> mapNonEmpty!33084 (= (arr!27689 (_values!5824 thiss!1141)) (store mapRest!33084 mapKey!33084 mapValue!33084))))

(declare-fun mapIsEmpty!33084 () Bool)

(assert (=> mapIsEmpty!33084 mapRes!33084))

(declare-fun b!951175 () Bool)

(declare-fun e!535630 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57596 (_ BitVec 32)) Bool)

(assert (=> b!951175 (= e!535630 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10740 thiss!1141) (mask!27614 thiss!1141)))))

(declare-fun b!951176 () Bool)

(assert (=> b!951176 (= e!535627 (not e!535630))))

(declare-fun res!637599 () Bool)

(assert (=> b!951176 (=> res!637599 e!535630)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!951176 (= res!637599 (not (validMask!0 (mask!27614 thiss!1141))))))

(declare-fun lt!428456 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!57596 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!951176 (= lt!428456 (arrayScanForKey!0 (_keys!10740 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57596 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!951176 (arrayContainsKey!0 (_keys!10740 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!32008 0))(
  ( (Unit!32009) )
))
(declare-fun lt!428455 () Unit!32008)

(declare-fun lemmaKeyInListMapIsInArray!329 (array!57596 array!57594 (_ BitVec 32) (_ BitVec 32) V!32663 V!32663 (_ BitVec 64) Int) Unit!32008)

(assert (=> b!951176 (= lt!428455 (lemmaKeyInListMapIsInArray!329 (_keys!10740 thiss!1141) (_values!5824 thiss!1141) (mask!27614 thiss!1141) (extraKeys!5533 thiss!1141) (zeroValue!5637 thiss!1141) (minValue!5637 thiss!1141) key!756 (defaultEntry!5801 thiss!1141)))))

(declare-fun b!951177 () Bool)

(declare-fun res!637594 () Bool)

(assert (=> b!951177 (=> res!637594 e!535630)))

(assert (=> b!951177 (= res!637594 (or (not (= (size!28169 (_keys!10740 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27614 thiss!1141)))) (bvsgt #b00000000000000000000000000000000 (size!28169 (_keys!10740 thiss!1141))) (bvslt lt!428456 #b00000000000000000000000000000000) (bvsgt lt!428456 (size!28169 (_keys!10740 thiss!1141)))))))

(declare-fun b!951178 () Bool)

(assert (=> b!951178 (= e!535628 (and e!535629 mapRes!33084))))

(declare-fun condMapEmpty!33084 () Bool)

(declare-fun mapDefault!33084 () ValueCell!9905)

