; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81380 () Bool)

(assert start!81380)

(declare-fun b!951235 () Bool)

(declare-fun b_free!18269 () Bool)

(declare-fun b_next!18269 () Bool)

(assert (=> b!951235 (= b_free!18269 (not b_next!18269))))

(declare-fun tp!63416 () Bool)

(declare-fun b_and!29755 () Bool)

(assert (=> b!951235 (= tp!63416 b_and!29755)))

(declare-fun b!951230 () Bool)

(declare-fun e!535675 () Bool)

(declare-fun tp_is_empty!20777 () Bool)

(assert (=> b!951230 (= e!535675 tp_is_empty!20777)))

(declare-fun b!951231 () Bool)

(declare-fun res!637630 () Bool)

(declare-fun e!535673 () Bool)

(assert (=> b!951231 (=> (not res!637630) (not e!535673))))

(declare-datatypes ((V!32667 0))(
  ( (V!32668 (val!10439 Int)) )
))
(declare-datatypes ((ValueCell!9907 0))(
  ( (ValueCellFull!9907 (v!12986 V!32667)) (EmptyCell!9907) )
))
(declare-datatypes ((array!57602 0))(
  ( (array!57603 (arr!27693 (Array (_ BitVec 32) ValueCell!9907)) (size!28172 (_ BitVec 32))) )
))
(declare-datatypes ((array!57604 0))(
  ( (array!57605 (arr!27694 (Array (_ BitVec 32) (_ BitVec 64))) (size!28173 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4964 0))(
  ( (LongMapFixedSize!4965 (defaultEntry!5803 Int) (mask!27616 (_ BitVec 32)) (extraKeys!5535 (_ BitVec 32)) (zeroValue!5639 V!32667) (minValue!5639 V!32667) (_size!2537 (_ BitVec 32)) (_keys!10742 array!57604) (_values!5826 array!57602) (_vacant!2537 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4964)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13660 0))(
  ( (tuple2!13661 (_1!6840 (_ BitVec 64)) (_2!6840 V!32667)) )
))
(declare-datatypes ((List!19482 0))(
  ( (Nil!19479) (Cons!19478 (h!20639 tuple2!13660) (t!27837 List!19482)) )
))
(declare-datatypes ((ListLongMap!12371 0))(
  ( (ListLongMap!12372 (toList!6201 List!19482)) )
))
(declare-fun contains!5245 (ListLongMap!12371 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3386 (array!57604 array!57602 (_ BitVec 32) (_ BitVec 32) V!32667 V!32667 (_ BitVec 32) Int) ListLongMap!12371)

(assert (=> b!951231 (= res!637630 (contains!5245 (getCurrentListMap!3386 (_keys!10742 thiss!1141) (_values!5826 thiss!1141) (mask!27616 thiss!1141) (extraKeys!5535 thiss!1141) (zeroValue!5639 thiss!1141) (minValue!5639 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5803 thiss!1141)) key!756))))

(declare-fun b!951232 () Bool)

(declare-fun res!637633 () Bool)

(assert (=> b!951232 (=> (not res!637633) (not e!535673))))

(assert (=> b!951232 (= res!637633 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!951233 () Bool)

(declare-fun res!637634 () Bool)

(declare-fun e!535670 () Bool)

(assert (=> b!951233 (=> res!637634 e!535670)))

(declare-fun lt!428467 () (_ BitVec 32))

(assert (=> b!951233 (= res!637634 (or (not (= (size!28173 (_keys!10742 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27616 thiss!1141)))) (bvsgt #b00000000000000000000000000000000 (size!28173 (_keys!10742 thiss!1141))) (bvslt lt!428467 #b00000000000000000000000000000000) (bvsgt lt!428467 (size!28173 (_keys!10742 thiss!1141)))))))

(declare-fun res!637632 () Bool)

(assert (=> start!81380 (=> (not res!637632) (not e!535673))))

(declare-fun valid!1859 (LongMapFixedSize!4964) Bool)

(assert (=> start!81380 (= res!637632 (valid!1859 thiss!1141))))

(assert (=> start!81380 e!535673))

(declare-fun e!535674 () Bool)

(assert (=> start!81380 e!535674))

(assert (=> start!81380 true))

(declare-fun b!951234 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57604 (_ BitVec 32)) Bool)

(assert (=> b!951234 (= e!535670 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10742 thiss!1141) (mask!27616 thiss!1141)))))

(declare-fun mapNonEmpty!33090 () Bool)

(declare-fun mapRes!33090 () Bool)

(declare-fun tp!63417 () Bool)

(declare-fun e!535671 () Bool)

(assert (=> mapNonEmpty!33090 (= mapRes!33090 (and tp!63417 e!535671))))

(declare-fun mapValue!33090 () ValueCell!9907)

(declare-fun mapKey!33090 () (_ BitVec 32))

(declare-fun mapRest!33090 () (Array (_ BitVec 32) ValueCell!9907))

(assert (=> mapNonEmpty!33090 (= (arr!27693 (_values!5826 thiss!1141)) (store mapRest!33090 mapKey!33090 mapValue!33090))))

(declare-fun mapIsEmpty!33090 () Bool)

(assert (=> mapIsEmpty!33090 mapRes!33090))

(declare-fun e!535669 () Bool)

(declare-fun array_inv!21438 (array!57604) Bool)

(declare-fun array_inv!21439 (array!57602) Bool)

(assert (=> b!951235 (= e!535674 (and tp!63416 tp_is_empty!20777 (array_inv!21438 (_keys!10742 thiss!1141)) (array_inv!21439 (_values!5826 thiss!1141)) e!535669))))

(declare-fun b!951236 () Bool)

(assert (=> b!951236 (= e!535673 (not e!535670))))

(declare-fun res!637635 () Bool)

(assert (=> b!951236 (=> res!637635 e!535670)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!951236 (= res!637635 (not (validMask!0 (mask!27616 thiss!1141))))))

(declare-fun arrayScanForKey!0 (array!57604 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!951236 (= lt!428467 (arrayScanForKey!0 (_keys!10742 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57604 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!951236 (arrayContainsKey!0 (_keys!10742 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!32012 0))(
  ( (Unit!32013) )
))
(declare-fun lt!428468 () Unit!32012)

(declare-fun lemmaKeyInListMapIsInArray!331 (array!57604 array!57602 (_ BitVec 32) (_ BitVec 32) V!32667 V!32667 (_ BitVec 64) Int) Unit!32012)

(assert (=> b!951236 (= lt!428468 (lemmaKeyInListMapIsInArray!331 (_keys!10742 thiss!1141) (_values!5826 thiss!1141) (mask!27616 thiss!1141) (extraKeys!5535 thiss!1141) (zeroValue!5639 thiss!1141) (minValue!5639 thiss!1141) key!756 (defaultEntry!5803 thiss!1141)))))

(declare-fun b!951237 () Bool)

(declare-fun res!637631 () Bool)

(assert (=> b!951237 (=> (not res!637631) (not e!535673))))

(declare-datatypes ((SeekEntryResult!9139 0))(
  ( (MissingZero!9139 (index!38926 (_ BitVec 32))) (Found!9139 (index!38927 (_ BitVec 32))) (Intermediate!9139 (undefined!9951 Bool) (index!38928 (_ BitVec 32)) (x!81830 (_ BitVec 32))) (Undefined!9139) (MissingVacant!9139 (index!38929 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57604 (_ BitVec 32)) SeekEntryResult!9139)

(assert (=> b!951237 (= res!637631 (not (is-Found!9139 (seekEntry!0 key!756 (_keys!10742 thiss!1141) (mask!27616 thiss!1141)))))))

(declare-fun b!951238 () Bool)

(assert (=> b!951238 (= e!535671 tp_is_empty!20777)))

(declare-fun b!951239 () Bool)

(assert (=> b!951239 (= e!535669 (and e!535675 mapRes!33090))))

(declare-fun condMapEmpty!33090 () Bool)

(declare-fun mapDefault!33090 () ValueCell!9907)

