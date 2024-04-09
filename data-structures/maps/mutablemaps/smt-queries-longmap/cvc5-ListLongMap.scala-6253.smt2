; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80012 () Bool)

(assert start!80012)

(declare-fun b!940122 () Bool)

(declare-fun b_free!17839 () Bool)

(declare-fun b_next!17839 () Bool)

(assert (=> b!940122 (= b_free!17839 (not b_next!17839))))

(declare-fun tp!61993 () Bool)

(declare-fun b_and!29269 () Bool)

(assert (=> b!940122 (= tp!61993 b_and!29269)))

(declare-fun b!940116 () Bool)

(declare-fun e!528308 () Bool)

(declare-fun e!528312 () Bool)

(assert (=> b!940116 (= e!528308 (not e!528312))))

(declare-fun res!632259 () Bool)

(assert (=> b!940116 (=> res!632259 e!528312)))

(declare-datatypes ((V!32095 0))(
  ( (V!32096 (val!10224 Int)) )
))
(declare-datatypes ((ValueCell!9692 0))(
  ( (ValueCellFull!9692 (v!12755 V!32095)) (EmptyCell!9692) )
))
(declare-datatypes ((array!56664 0))(
  ( (array!56665 (arr!27263 (Array (_ BitVec 32) ValueCell!9692)) (size!27725 (_ BitVec 32))) )
))
(declare-datatypes ((array!56666 0))(
  ( (array!56667 (arr!27264 (Array (_ BitVec 32) (_ BitVec 64))) (size!27726 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4534 0))(
  ( (LongMapFixedSize!4535 (defaultEntry!5558 Int) (mask!27088 (_ BitVec 32)) (extraKeys!5290 (_ BitVec 32)) (zeroValue!5394 V!32095) (minValue!5394 V!32095) (_size!2322 (_ BitVec 32)) (_keys!10404 array!56666) (_values!5581 array!56664) (_vacant!2322 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4534)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940116 (= res!632259 (not (validMask!0 (mask!27088 thiss!1141))))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!56666 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940116 (arrayContainsKey!0 (_keys!10404 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!8983 0))(
  ( (MissingZero!8983 (index!38302 (_ BitVec 32))) (Found!8983 (index!38303 (_ BitVec 32))) (Intermediate!8983 (undefined!9795 Bool) (index!38304 (_ BitVec 32)) (x!80621 (_ BitVec 32))) (Undefined!8983) (MissingVacant!8983 (index!38305 (_ BitVec 32))) )
))
(declare-fun lt!424605 () SeekEntryResult!8983)

(declare-datatypes ((Unit!31759 0))(
  ( (Unit!31760) )
))
(declare-fun lt!424604 () Unit!31759)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56666 (_ BitVec 64) (_ BitVec 32)) Unit!31759)

(assert (=> b!940116 (= lt!424604 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10404 thiss!1141) key!756 (index!38303 lt!424605)))))

(declare-fun b!940117 () Bool)

(declare-fun res!632261 () Bool)

(assert (=> b!940117 (=> res!632261 e!528312)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56666 (_ BitVec 32)) Bool)

(assert (=> b!940117 (= res!632261 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10404 thiss!1141) (mask!27088 thiss!1141))))))

(declare-fun mapNonEmpty!32311 () Bool)

(declare-fun mapRes!32311 () Bool)

(declare-fun tp!61992 () Bool)

(declare-fun e!528306 () Bool)

(assert (=> mapNonEmpty!32311 (= mapRes!32311 (and tp!61992 e!528306))))

(declare-fun mapKey!32311 () (_ BitVec 32))

(declare-fun mapValue!32311 () ValueCell!9692)

(declare-fun mapRest!32311 () (Array (_ BitVec 32) ValueCell!9692))

(assert (=> mapNonEmpty!32311 (= (arr!27263 (_values!5581 thiss!1141)) (store mapRest!32311 mapKey!32311 mapValue!32311))))

(declare-fun res!632264 () Bool)

(declare-fun e!528311 () Bool)

(assert (=> start!80012 (=> (not res!632264) (not e!528311))))

(declare-fun valid!1723 (LongMapFixedSize!4534) Bool)

(assert (=> start!80012 (= res!632264 (valid!1723 thiss!1141))))

(assert (=> start!80012 e!528311))

(declare-fun e!528307 () Bool)

(assert (=> start!80012 e!528307))

(assert (=> start!80012 true))

(declare-fun b!940118 () Bool)

(declare-fun res!632263 () Bool)

(assert (=> b!940118 (=> (not res!632263) (not e!528311))))

(assert (=> b!940118 (= res!632263 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!940119 () Bool)

(assert (=> b!940119 (= e!528312 true)))

(declare-fun lt!424603 () Bool)

(declare-datatypes ((List!19317 0))(
  ( (Nil!19314) (Cons!19313 (h!20459 (_ BitVec 64)) (t!27640 List!19317)) )
))
(declare-fun arrayNoDuplicates!0 (array!56666 (_ BitVec 32) List!19317) Bool)

(assert (=> b!940119 (= lt!424603 (arrayNoDuplicates!0 (_keys!10404 thiss!1141) #b00000000000000000000000000000000 Nil!19314))))

(declare-fun mapIsEmpty!32311 () Bool)

(assert (=> mapIsEmpty!32311 mapRes!32311))

(declare-fun b!940120 () Bool)

(declare-fun res!632262 () Bool)

(assert (=> b!940120 (=> res!632262 e!528312)))

(assert (=> b!940120 (= res!632262 (or (not (= (size!27725 (_values!5581 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27088 thiss!1141)))) (not (= (size!27726 (_keys!10404 thiss!1141)) (size!27725 (_values!5581 thiss!1141)))) (bvslt (mask!27088 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5290 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5290 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!940121 () Bool)

(assert (=> b!940121 (= e!528311 e!528308)))

(declare-fun res!632260 () Bool)

(assert (=> b!940121 (=> (not res!632260) (not e!528308))))

(assert (=> b!940121 (= res!632260 (is-Found!8983 lt!424605))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56666 (_ BitVec 32)) SeekEntryResult!8983)

(assert (=> b!940121 (= lt!424605 (seekEntry!0 key!756 (_keys!10404 thiss!1141) (mask!27088 thiss!1141)))))

(declare-fun e!528310 () Bool)

(declare-fun tp_is_empty!20347 () Bool)

(declare-fun array_inv!21148 (array!56666) Bool)

(declare-fun array_inv!21149 (array!56664) Bool)

(assert (=> b!940122 (= e!528307 (and tp!61993 tp_is_empty!20347 (array_inv!21148 (_keys!10404 thiss!1141)) (array_inv!21149 (_values!5581 thiss!1141)) e!528310))))

(declare-fun b!940123 () Bool)

(declare-fun e!528305 () Bool)

(assert (=> b!940123 (= e!528310 (and e!528305 mapRes!32311))))

(declare-fun condMapEmpty!32311 () Bool)

(declare-fun mapDefault!32311 () ValueCell!9692)

