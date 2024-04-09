; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!81404 () Bool)

(assert start!81404)

(declare-fun b!951395 () Bool)

(declare-fun b_free!18271 () Bool)

(declare-fun b_next!18271 () Bool)

(assert (=> b!951395 (= b_free!18271 (not b_next!18271))))

(declare-fun tp!63426 () Bool)

(declare-fun b_and!29759 () Bool)

(assert (=> b!951395 (= tp!63426 b_and!29759)))

(declare-fun tp_is_empty!20779 () Bool)

(declare-fun e!535772 () Bool)

(declare-datatypes ((V!32671 0))(
  ( (V!32672 (val!10440 Int)) )
))
(declare-datatypes ((ValueCell!9908 0))(
  ( (ValueCellFull!9908 (v!12988 V!32671)) (EmptyCell!9908) )
))
(declare-datatypes ((array!57608 0))(
  ( (array!57609 (arr!27695 (Array (_ BitVec 32) ValueCell!9908)) (size!28174 (_ BitVec 32))) )
))
(declare-datatypes ((array!57610 0))(
  ( (array!57611 (arr!27696 (Array (_ BitVec 32) (_ BitVec 64))) (size!28175 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4966 0))(
  ( (LongMapFixedSize!4967 (defaultEntry!5806 Int) (mask!27624 (_ BitVec 32)) (extraKeys!5538 (_ BitVec 32)) (zeroValue!5642 V!32671) (minValue!5642 V!32671) (_size!2538 (_ BitVec 32)) (_keys!10747 array!57610) (_values!5829 array!57608) (_vacant!2538 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4966)

(declare-fun e!535774 () Bool)

(declare-fun array_inv!21440 (array!57610) Bool)

(declare-fun array_inv!21441 (array!57608) Bool)

(assert (=> b!951395 (= e!535774 (and tp!63426 tp_is_empty!20779 (array_inv!21440 (_keys!10747 thiss!1141)) (array_inv!21441 (_values!5829 thiss!1141)) e!535772))))

(declare-fun mapIsEmpty!33096 () Bool)

(declare-fun mapRes!33096 () Bool)

(assert (=> mapIsEmpty!33096 mapRes!33096))

(declare-fun b!951396 () Bool)

(declare-fun e!535777 () Bool)

(assert (=> b!951396 (= e!535777 tp_is_empty!20779)))

(declare-fun b!951397 () Bool)

(declare-fun e!535773 () Bool)

(assert (=> b!951397 (= e!535773 tp_is_empty!20779)))

(declare-fun b!951399 () Bool)

(declare-fun res!637695 () Bool)

(declare-fun e!535776 () Bool)

(assert (=> b!951399 (=> (not res!637695) (not e!535776))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!951399 (= res!637695 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!951400 () Bool)

(declare-fun res!637698 () Bool)

(assert (=> b!951400 (=> (not res!637698) (not e!535776))))

(declare-datatypes ((SeekEntryResult!9140 0))(
  ( (MissingZero!9140 (index!38930 (_ BitVec 32))) (Found!9140 (index!38931 (_ BitVec 32))) (Intermediate!9140 (undefined!9952 Bool) (index!38932 (_ BitVec 32)) (x!81849 (_ BitVec 32))) (Undefined!9140) (MissingVacant!9140 (index!38933 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57610 (_ BitVec 32)) SeekEntryResult!9140)

(assert (=> b!951400 (= res!637698 (not (is-Found!9140 (seekEntry!0 key!756 (_keys!10747 thiss!1141) (mask!27624 thiss!1141)))))))

(declare-fun b!951401 () Bool)

(declare-fun res!637696 () Bool)

(assert (=> b!951401 (=> (not res!637696) (not e!535776))))

(declare-datatypes ((tuple2!13662 0))(
  ( (tuple2!13663 (_1!6841 (_ BitVec 64)) (_2!6841 V!32671)) )
))
(declare-datatypes ((List!19484 0))(
  ( (Nil!19481) (Cons!19480 (h!20641 tuple2!13662) (t!27841 List!19484)) )
))
(declare-datatypes ((ListLongMap!12373 0))(
  ( (ListLongMap!12374 (toList!6202 List!19484)) )
))
(declare-fun contains!5246 (ListLongMap!12373 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3387 (array!57610 array!57608 (_ BitVec 32) (_ BitVec 32) V!32671 V!32671 (_ BitVec 32) Int) ListLongMap!12373)

(assert (=> b!951401 (= res!637696 (contains!5246 (getCurrentListMap!3387 (_keys!10747 thiss!1141) (_values!5829 thiss!1141) (mask!27624 thiss!1141) (extraKeys!5538 thiss!1141) (zeroValue!5642 thiss!1141) (minValue!5642 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5806 thiss!1141)) key!756))))

(declare-fun mapNonEmpty!33096 () Bool)

(declare-fun tp!63425 () Bool)

(assert (=> mapNonEmpty!33096 (= mapRes!33096 (and tp!63425 e!535777))))

(declare-fun mapRest!33096 () (Array (_ BitVec 32) ValueCell!9908))

(declare-fun mapValue!33096 () ValueCell!9908)

(declare-fun mapKey!33096 () (_ BitVec 32))

(assert (=> mapNonEmpty!33096 (= (arr!27695 (_values!5829 thiss!1141)) (store mapRest!33096 mapKey!33096 mapValue!33096))))

(declare-fun b!951402 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!951402 (= e!535776 (not (validMask!0 (mask!27624 thiss!1141))))))

(declare-fun lt!428580 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!57610 (_ BitVec 32)) Bool)

(assert (=> b!951402 (arrayForallSeekEntryOrOpenFound!0 lt!428580 (_keys!10747 thiss!1141) (mask!27624 thiss!1141))))

(declare-datatypes ((Unit!32016 0))(
  ( (Unit!32017) )
))
(declare-fun lt!428581 () Unit!32016)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!57610 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!32016)

(assert (=> b!951402 (= lt!428581 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!10747 thiss!1141) (mask!27624 thiss!1141) #b00000000000000000000000000000000 lt!428580))))

(declare-fun arrayScanForKey!0 (array!57610 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!951402 (= lt!428580 (arrayScanForKey!0 (_keys!10747 thiss!1141) key!756 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!57610 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!951402 (arrayContainsKey!0 (_keys!10747 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-fun lt!428582 () Unit!32016)

(declare-fun lemmaKeyInListMapIsInArray!332 (array!57610 array!57608 (_ BitVec 32) (_ BitVec 32) V!32671 V!32671 (_ BitVec 64) Int) Unit!32016)

(assert (=> b!951402 (= lt!428582 (lemmaKeyInListMapIsInArray!332 (_keys!10747 thiss!1141) (_values!5829 thiss!1141) (mask!27624 thiss!1141) (extraKeys!5538 thiss!1141) (zeroValue!5642 thiss!1141) (minValue!5642 thiss!1141) key!756 (defaultEntry!5806 thiss!1141)))))

(declare-fun res!637697 () Bool)

(assert (=> start!81404 (=> (not res!637697) (not e!535776))))

(declare-fun valid!1860 (LongMapFixedSize!4966) Bool)

(assert (=> start!81404 (= res!637697 (valid!1860 thiss!1141))))

(assert (=> start!81404 e!535776))

(assert (=> start!81404 e!535774))

(assert (=> start!81404 true))

(declare-fun b!951398 () Bool)

(assert (=> b!951398 (= e!535772 (and e!535773 mapRes!33096))))

(declare-fun condMapEmpty!33096 () Bool)

(declare-fun mapDefault!33096 () ValueCell!9908)

