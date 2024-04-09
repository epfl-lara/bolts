; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80028 () Bool)

(assert start!80028)

(declare-fun b!940363 () Bool)

(declare-fun b_free!17855 () Bool)

(declare-fun b_next!17855 () Bool)

(assert (=> b!940363 (= b_free!17855 (not b_next!17855))))

(declare-fun tp!62041 () Bool)

(declare-fun b_and!29285 () Bool)

(assert (=> b!940363 (= tp!62041 b_and!29285)))

(declare-fun b!940356 () Bool)

(declare-fun e!528499 () Bool)

(assert (=> b!940356 (= e!528499 true)))

(declare-fun lt!424676 () Bool)

(declare-datatypes ((V!32115 0))(
  ( (V!32116 (val!10232 Int)) )
))
(declare-datatypes ((ValueCell!9700 0))(
  ( (ValueCellFull!9700 (v!12763 V!32115)) (EmptyCell!9700) )
))
(declare-datatypes ((array!56696 0))(
  ( (array!56697 (arr!27279 (Array (_ BitVec 32) ValueCell!9700)) (size!27741 (_ BitVec 32))) )
))
(declare-datatypes ((array!56698 0))(
  ( (array!56699 (arr!27280 (Array (_ BitVec 32) (_ BitVec 64))) (size!27742 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4550 0))(
  ( (LongMapFixedSize!4551 (defaultEntry!5566 Int) (mask!27100 (_ BitVec 32)) (extraKeys!5298 (_ BitVec 32)) (zeroValue!5402 V!32115) (minValue!5402 V!32115) (_size!2330 (_ BitVec 32)) (_keys!10412 array!56698) (_values!5589 array!56696) (_vacant!2330 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4550)

(declare-datatypes ((List!19322 0))(
  ( (Nil!19319) (Cons!19318 (h!20464 (_ BitVec 64)) (t!27645 List!19322)) )
))
(declare-fun arrayNoDuplicates!0 (array!56698 (_ BitVec 32) List!19322) Bool)

(assert (=> b!940356 (= lt!424676 (arrayNoDuplicates!0 (_keys!10412 thiss!1141) #b00000000000000000000000000000000 Nil!19319))))

(declare-fun mapIsEmpty!32335 () Bool)

(declare-fun mapRes!32335 () Bool)

(assert (=> mapIsEmpty!32335 mapRes!32335))

(declare-fun b!940357 () Bool)

(declare-fun e!528503 () Bool)

(declare-fun e!528501 () Bool)

(assert (=> b!940357 (= e!528503 e!528501)))

(declare-fun res!632408 () Bool)

(assert (=> b!940357 (=> (not res!632408) (not e!528501))))

(declare-datatypes ((SeekEntryResult!8990 0))(
  ( (MissingZero!8990 (index!38330 (_ BitVec 32))) (Found!8990 (index!38331 (_ BitVec 32))) (Intermediate!8990 (undefined!9802 Bool) (index!38332 (_ BitVec 32)) (x!80644 (_ BitVec 32))) (Undefined!8990) (MissingVacant!8990 (index!38333 (_ BitVec 32))) )
))
(declare-fun lt!424675 () SeekEntryResult!8990)

(assert (=> b!940357 (= res!632408 (is-Found!8990 lt!424675))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!56698 (_ BitVec 32)) SeekEntryResult!8990)

(assert (=> b!940357 (= lt!424675 (seekEntry!0 key!756 (_keys!10412 thiss!1141) (mask!27100 thiss!1141)))))

(declare-fun res!632405 () Bool)

(assert (=> start!80028 (=> (not res!632405) (not e!528503))))

(declare-fun valid!1729 (LongMapFixedSize!4550) Bool)

(assert (=> start!80028 (= res!632405 (valid!1729 thiss!1141))))

(assert (=> start!80028 e!528503))

(declare-fun e!528504 () Bool)

(assert (=> start!80028 e!528504))

(assert (=> start!80028 true))

(declare-fun b!940358 () Bool)

(declare-fun res!632406 () Bool)

(assert (=> b!940358 (=> (not res!632406) (not e!528503))))

(assert (=> b!940358 (= res!632406 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!940359 () Bool)

(assert (=> b!940359 (= e!528501 (not e!528499))))

(declare-fun res!632404 () Bool)

(assert (=> b!940359 (=> res!632404 e!528499)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940359 (= res!632404 (not (validMask!0 (mask!27100 thiss!1141))))))

(declare-fun arrayContainsKey!0 (array!56698 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940359 (arrayContainsKey!0 (_keys!10412 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!31773 0))(
  ( (Unit!31774) )
))
(declare-fun lt!424677 () Unit!31773)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56698 (_ BitVec 64) (_ BitVec 32)) Unit!31773)

(assert (=> b!940359 (= lt!424677 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10412 thiss!1141) key!756 (index!38331 lt!424675)))))

(declare-fun b!940360 () Bool)

(declare-fun res!632407 () Bool)

(assert (=> b!940360 (=> res!632407 e!528499)))

(assert (=> b!940360 (= res!632407 (or (not (= (size!27741 (_values!5589 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27100 thiss!1141)))) (not (= (size!27742 (_keys!10412 thiss!1141)) (size!27741 (_values!5589 thiss!1141)))) (bvslt (mask!27100 thiss!1141) #b00000000000000000000000000000000) (bvslt (extraKeys!5298 thiss!1141) #b00000000000000000000000000000000) (bvsgt (extraKeys!5298 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun b!940361 () Bool)

(declare-fun e!528502 () Bool)

(declare-fun tp_is_empty!20363 () Bool)

(assert (=> b!940361 (= e!528502 tp_is_empty!20363)))

(declare-fun mapNonEmpty!32335 () Bool)

(declare-fun tp!62040 () Bool)

(assert (=> mapNonEmpty!32335 (= mapRes!32335 (and tp!62040 e!528502))))

(declare-fun mapValue!32335 () ValueCell!9700)

(declare-fun mapRest!32335 () (Array (_ BitVec 32) ValueCell!9700))

(declare-fun mapKey!32335 () (_ BitVec 32))

(assert (=> mapNonEmpty!32335 (= (arr!27279 (_values!5589 thiss!1141)) (store mapRest!32335 mapKey!32335 mapValue!32335))))

(declare-fun b!940362 () Bool)

(declare-fun e!528500 () Bool)

(assert (=> b!940362 (= e!528500 tp_is_empty!20363)))

(declare-fun e!528497 () Bool)

(declare-fun array_inv!21158 (array!56698) Bool)

(declare-fun array_inv!21159 (array!56696) Bool)

(assert (=> b!940363 (= e!528504 (and tp!62041 tp_is_empty!20363 (array_inv!21158 (_keys!10412 thiss!1141)) (array_inv!21159 (_values!5589 thiss!1141)) e!528497))))

(declare-fun b!940364 () Bool)

(declare-fun res!632403 () Bool)

(assert (=> b!940364 (=> res!632403 e!528499)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56698 (_ BitVec 32)) Bool)

(assert (=> b!940364 (= res!632403 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10412 thiss!1141) (mask!27100 thiss!1141))))))

(declare-fun b!940365 () Bool)

(assert (=> b!940365 (= e!528497 (and e!528500 mapRes!32335))))

(declare-fun condMapEmpty!32335 () Bool)

(declare-fun mapDefault!32335 () ValueCell!9700)

