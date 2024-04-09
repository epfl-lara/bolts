; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80228 () Bool)

(assert start!80228)

(declare-fun b!942069 () Bool)

(declare-fun b_free!17939 () Bool)

(declare-fun b_next!17939 () Bool)

(assert (=> b!942069 (= b_free!17939 (not b_next!17939))))

(declare-fun tp!62314 () Bool)

(declare-fun b_and!29369 () Bool)

(assert (=> b!942069 (= tp!62314 b_and!29369)))

(declare-fun mapNonEmpty!32483 () Bool)

(declare-fun mapRes!32483 () Bool)

(declare-fun tp!62315 () Bool)

(declare-fun e!529704 () Bool)

(assert (=> mapNonEmpty!32483 (= mapRes!32483 (and tp!62315 e!529704))))

(declare-datatypes ((V!32227 0))(
  ( (V!32228 (val!10274 Int)) )
))
(declare-datatypes ((ValueCell!9742 0))(
  ( (ValueCellFull!9742 (v!12805 V!32227)) (EmptyCell!9742) )
))
(declare-fun mapRest!32483 () (Array (_ BitVec 32) ValueCell!9742))

(declare-fun mapValue!32483 () ValueCell!9742)

(declare-datatypes ((array!56876 0))(
  ( (array!56877 (arr!27363 (Array (_ BitVec 32) ValueCell!9742)) (size!27829 (_ BitVec 32))) )
))
(declare-datatypes ((array!56878 0))(
  ( (array!56879 (arr!27364 (Array (_ BitVec 32) (_ BitVec 64))) (size!27830 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4634 0))(
  ( (LongMapFixedSize!4635 (defaultEntry!5608 Int) (mask!27198 (_ BitVec 32)) (extraKeys!5340 (_ BitVec 32)) (zeroValue!5444 V!32227) (minValue!5444 V!32227) (_size!2372 (_ BitVec 32)) (_keys!10472 array!56878) (_values!5631 array!56876) (_vacant!2372 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4634)

(declare-fun mapKey!32483 () (_ BitVec 32))

(assert (=> mapNonEmpty!32483 (= (arr!27363 (_values!5631 thiss!1141)) (store mapRest!32483 mapKey!32483 mapValue!32483))))

(declare-fun b!942066 () Bool)

(declare-fun res!633210 () Bool)

(declare-fun e!529705 () Bool)

(assert (=> b!942066 (=> (not res!633210) (not e!529705))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9022 0))(
  ( (MissingZero!9022 (index!38458 (_ BitVec 32))) (Found!9022 (index!38459 (_ BitVec 32))) (Intermediate!9022 (undefined!9834 Bool) (index!38460 (_ BitVec 32)) (x!80872 (_ BitVec 32))) (Undefined!9022) (MissingVacant!9022 (index!38461 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56878 (_ BitVec 32)) SeekEntryResult!9022)

(assert (=> b!942066 (= res!633210 (not (is-Found!9022 (seekEntry!0 key!756 (_keys!10472 thiss!1141) (mask!27198 thiss!1141)))))))

(declare-fun b!942067 () Bool)

(declare-fun res!633211 () Bool)

(assert (=> b!942067 (=> (not res!633211) (not e!529705))))

(assert (=> b!942067 (= res!633211 (and (= (size!27829 (_values!5631 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27198 thiss!1141))) (= (size!27830 (_keys!10472 thiss!1141)) (size!27829 (_values!5631 thiss!1141))) (bvsge (mask!27198 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5340 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5340 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!942068 () Bool)

(declare-fun res!633209 () Bool)

(assert (=> b!942068 (=> (not res!633209) (not e!529705))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!942068 (= res!633209 (validMask!0 (mask!27198 thiss!1141)))))

(declare-fun e!529708 () Bool)

(declare-fun e!529709 () Bool)

(declare-fun tp_is_empty!20447 () Bool)

(declare-fun array_inv!21220 (array!56878) Bool)

(declare-fun array_inv!21221 (array!56876) Bool)

(assert (=> b!942069 (= e!529709 (and tp!62314 tp_is_empty!20447 (array_inv!21220 (_keys!10472 thiss!1141)) (array_inv!21221 (_values!5631 thiss!1141)) e!529708))))

(declare-fun b!942070 () Bool)

(assert (=> b!942070 (= e!529704 tp_is_empty!20447)))

(declare-fun b!942071 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56878 (_ BitVec 32)) Bool)

(assert (=> b!942071 (= e!529705 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10472 thiss!1141) (mask!27198 thiss!1141))))))

(declare-fun b!942072 () Bool)

(declare-fun res!633212 () Bool)

(assert (=> b!942072 (=> (not res!633212) (not e!529705))))

(assert (=> b!942072 (= res!633212 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!942073 () Bool)

(declare-fun e!529707 () Bool)

(assert (=> b!942073 (= e!529707 tp_is_empty!20447)))

(declare-fun mapIsEmpty!32483 () Bool)

(assert (=> mapIsEmpty!32483 mapRes!32483))

(declare-fun b!942074 () Bool)

(assert (=> b!942074 (= e!529708 (and e!529707 mapRes!32483))))

(declare-fun condMapEmpty!32483 () Bool)

(declare-fun mapDefault!32483 () ValueCell!9742)

