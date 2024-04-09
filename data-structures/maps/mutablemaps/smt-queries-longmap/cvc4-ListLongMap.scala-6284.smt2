; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80414 () Bool)

(assert start!80414)

(declare-fun b!943965 () Bool)

(declare-fun b_free!18029 () Bool)

(declare-fun b_next!18029 () Bool)

(assert (=> b!943965 (= b_free!18029 (not b_next!18029))))

(declare-fun tp!62598 () Bool)

(declare-fun b_and!29465 () Bool)

(assert (=> b!943965 (= tp!62598 b_and!29465)))

(declare-fun e!530829 () Bool)

(declare-fun e!530832 () Bool)

(declare-fun tp_is_empty!20537 () Bool)

(declare-datatypes ((V!32347 0))(
  ( (V!32348 (val!10319 Int)) )
))
(declare-datatypes ((ValueCell!9787 0))(
  ( (ValueCellFull!9787 (v!12851 V!32347)) (EmptyCell!9787) )
))
(declare-datatypes ((array!57064 0))(
  ( (array!57065 (arr!27453 (Array (_ BitVec 32) ValueCell!9787)) (size!27920 (_ BitVec 32))) )
))
(declare-datatypes ((array!57066 0))(
  ( (array!57067 (arr!27454 (Array (_ BitVec 32) (_ BitVec 64))) (size!27921 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4724 0))(
  ( (LongMapFixedSize!4725 (defaultEntry!5657 Int) (mask!27292 (_ BitVec 32)) (extraKeys!5389 (_ BitVec 32)) (zeroValue!5493 V!32347) (minValue!5493 V!32347) (_size!2417 (_ BitVec 32)) (_keys!10531 array!57066) (_values!5680 array!57064) (_vacant!2417 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4724)

(declare-fun array_inv!21278 (array!57066) Bool)

(declare-fun array_inv!21279 (array!57064) Bool)

(assert (=> b!943965 (= e!530829 (and tp!62598 tp_is_empty!20537 (array_inv!21278 (_keys!10531 thiss!1141)) (array_inv!21279 (_values!5680 thiss!1141)) e!530832))))

(declare-fun res!634268 () Bool)

(declare-fun e!530835 () Bool)

(assert (=> start!80414 (=> (not res!634268) (not e!530835))))

(declare-fun valid!1784 (LongMapFixedSize!4724) Bool)

(assert (=> start!80414 (= res!634268 (valid!1784 thiss!1141))))

(assert (=> start!80414 e!530835))

(assert (=> start!80414 e!530829))

(assert (=> start!80414 true))

(declare-fun b!943966 () Bool)

(declare-fun e!530833 () Bool)

(assert (=> b!943966 (= e!530835 (not e!530833))))

(declare-fun res!634269 () Bool)

(assert (=> b!943966 (=> res!634269 e!530833)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!943966 (= res!634269 (not (validMask!0 (mask!27292 thiss!1141))))))

(declare-fun lt!425477 () (_ BitVec 32))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!57066 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!943966 (= lt!425477 (arrayScanForKey!0 (_keys!10531 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57066 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!943966 (arrayContainsKey!0 (_keys!10531 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31835 0))(
  ( (Unit!31836) )
))
(declare-fun lt!425475 () Unit!31835)

(declare-fun lemmaKeyInListMapIsInArray!301 (array!57066 array!57064 (_ BitVec 32) (_ BitVec 32) V!32347 V!32347 (_ BitVec 64) Int) Unit!31835)

(assert (=> b!943966 (= lt!425475 (lemmaKeyInListMapIsInArray!301 (_keys!10531 thiss!1141) (_values!5680 thiss!1141) (mask!27292 thiss!1141) (extraKeys!5389 thiss!1141) (zeroValue!5493 thiss!1141) (minValue!5493 thiss!1141) key!756 (defaultEntry!5657 thiss!1141)))))

(declare-fun mapNonEmpty!32631 () Bool)

(declare-fun mapRes!32631 () Bool)

(declare-fun tp!62597 () Bool)

(declare-fun e!530831 () Bool)

(assert (=> mapNonEmpty!32631 (= mapRes!32631 (and tp!62597 e!530831))))

(declare-fun mapValue!32631 () ValueCell!9787)

(declare-fun mapRest!32631 () (Array (_ BitVec 32) ValueCell!9787))

(declare-fun mapKey!32631 () (_ BitVec 32))

(assert (=> mapNonEmpty!32631 (= (arr!27453 (_values!5680 thiss!1141)) (store mapRest!32631 mapKey!32631 mapValue!32631))))

(declare-fun b!943967 () Bool)

(declare-fun res!634266 () Bool)

(assert (=> b!943967 (=> (not res!634266) (not e!530835))))

(assert (=> b!943967 (= res!634266 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!943968 () Bool)

(declare-fun res!634267 () Bool)

(assert (=> b!943968 (=> res!634267 e!530833)))

(assert (=> b!943968 (= res!634267 (or (not (= (size!27921 (_keys!10531 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27292 thiss!1141)))) (bvsgt #b00000000000000000000000000000000 (size!27921 (_keys!10531 thiss!1141))) (bvslt lt!425477 #b00000000000000000000000000000000) (bvsgt lt!425477 (size!27921 (_keys!10531 thiss!1141)))))))

(declare-fun mapIsEmpty!32631 () Bool)

(assert (=> mapIsEmpty!32631 mapRes!32631))

(declare-fun b!943969 () Bool)

(assert (=> b!943969 (= e!530833 true)))

(declare-fun lt!425476 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57066 (_ BitVec 32)) Bool)

(assert (=> b!943969 (= lt!425476 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10531 thiss!1141) (mask!27292 thiss!1141)))))

(declare-fun b!943970 () Bool)

(declare-fun res!634270 () Bool)

(assert (=> b!943970 (=> (not res!634270) (not e!530835))))

(declare-datatypes ((SeekEntryResult!9051 0))(
  ( (MissingZero!9051 (index!38574 (_ BitVec 32))) (Found!9051 (index!38575 (_ BitVec 32))) (Intermediate!9051 (undefined!9863 Bool) (index!38576 (_ BitVec 32)) (x!81063 (_ BitVec 32))) (Undefined!9051) (MissingVacant!9051 (index!38577 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57066 (_ BitVec 32)) SeekEntryResult!9051)

(assert (=> b!943970 (= res!634270 (not (is-Found!9051 (seekEntry!0 key!756 (_keys!10531 thiss!1141) (mask!27292 thiss!1141)))))))

(declare-fun b!943971 () Bool)

(declare-fun e!530830 () Bool)

(assert (=> b!943971 (= e!530830 tp_is_empty!20537)))

(declare-fun b!943972 () Bool)

(assert (=> b!943972 (= e!530832 (and e!530830 mapRes!32631))))

(declare-fun condMapEmpty!32631 () Bool)

(declare-fun mapDefault!32631 () ValueCell!9787)

