; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80022 () Bool)

(assert start!80022)

(declare-fun b!940269 () Bool)

(declare-fun b_free!17849 () Bool)

(declare-fun b_next!17849 () Bool)

(assert (=> b!940269 (= b_free!17849 (not b_next!17849))))

(declare-fun tp!62023 () Bool)

(declare-fun b_and!29279 () Bool)

(assert (=> b!940269 (= tp!62023 b_and!29279)))

(declare-fun res!632350 () Bool)

(declare-fun e!528427 () Bool)

(assert (=> start!80022 (=> (not res!632350) (not e!528427))))

(declare-datatypes ((V!32107 0))(
  ( (V!32108 (val!10229 Int)) )
))
(declare-datatypes ((ValueCell!9697 0))(
  ( (ValueCellFull!9697 (v!12760 V!32107)) (EmptyCell!9697) )
))
(declare-datatypes ((array!56684 0))(
  ( (array!56685 (arr!27273 (Array (_ BitVec 32) ValueCell!9697)) (size!27735 (_ BitVec 32))) )
))
(declare-datatypes ((array!56686 0))(
  ( (array!56687 (arr!27274 (Array (_ BitVec 32) (_ BitVec 64))) (size!27736 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4544 0))(
  ( (LongMapFixedSize!4545 (defaultEntry!5563 Int) (mask!27095 (_ BitVec 32)) (extraKeys!5295 (_ BitVec 32)) (zeroValue!5399 V!32107) (minValue!5399 V!32107) (_size!2327 (_ BitVec 32)) (_keys!10409 array!56686) (_values!5586 array!56684) (_vacant!2327 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4544)

(declare-fun valid!1727 (LongMapFixedSize!4544) Bool)

(assert (=> start!80022 (= res!632350 (valid!1727 thiss!1141))))

(assert (=> start!80022 e!528427))

(declare-fun e!528428 () Bool)

(assert (=> start!80022 e!528428))

(assert (=> start!80022 true))

(declare-fun b!940266 () Bool)

(declare-fun e!528431 () Bool)

(declare-fun tp_is_empty!20357 () Bool)

(assert (=> b!940266 (= e!528431 tp_is_empty!20357)))

(declare-fun b!940267 () Bool)

(declare-fun e!528429 () Bool)

(declare-fun e!528432 () Bool)

(assert (=> b!940267 (= e!528429 (not e!528432))))

(declare-fun res!632353 () Bool)

(assert (=> b!940267 (=> res!632353 e!528432)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!940267 (= res!632353 (not (validMask!0 (mask!27095 thiss!1141))))))

(declare-fun key!756 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!56686 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!940267 (arrayContainsKey!0 (_keys!10409 thiss!1141) key!756 #b00000000000000000000000000000000)))

(declare-datatypes ((SeekEntryResult!8987 0))(
  ( (MissingZero!8987 (index!38318 (_ BitVec 32))) (Found!8987 (index!38319 (_ BitVec 32))) (Intermediate!8987 (undefined!9799 Bool) (index!38320 (_ BitVec 32)) (x!80633 (_ BitVec 32))) (Undefined!8987) (MissingVacant!8987 (index!38321 (_ BitVec 32))) )
))
(declare-fun lt!424650 () SeekEntryResult!8987)

(declare-datatypes ((Unit!31767 0))(
  ( (Unit!31768) )
))
(declare-fun lt!424648 () Unit!31767)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56686 (_ BitVec 64) (_ BitVec 32)) Unit!31767)

(assert (=> b!940267 (= lt!424648 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!10409 thiss!1141) key!756 (index!38319 lt!424650)))))

(declare-fun b!940268 () Bool)

(declare-fun e!528430 () Bool)

(declare-fun mapRes!32326 () Bool)

(assert (=> b!940268 (= e!528430 (and e!528431 mapRes!32326))))

(declare-fun condMapEmpty!32326 () Bool)

(declare-fun mapDefault!32326 () ValueCell!9697)

