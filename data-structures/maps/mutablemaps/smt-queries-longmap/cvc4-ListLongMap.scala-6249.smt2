; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79992 () Bool)

(assert start!79992)

(declare-fun b!939897 () Bool)

(declare-fun b_free!17819 () Bool)

(declare-fun b_next!17819 () Bool)

(assert (=> b!939897 (= b_free!17819 (not b_next!17819))))

(declare-fun tp!61932 () Bool)

(declare-fun b_and!29249 () Bool)

(assert (=> b!939897 (= tp!61932 b_and!29249)))

(declare-fun b!939892 () Bool)

(declare-fun e!528104 () Bool)

(assert (=> b!939892 (= e!528104 false)))

(declare-datatypes ((SeekEntryResult!8975 0))(
  ( (MissingZero!8975 (index!38270 (_ BitVec 32))) (Found!8975 (index!38271 (_ BitVec 32))) (Intermediate!8975 (undefined!9787 Bool) (index!38272 (_ BitVec 32)) (x!80581 (_ BitVec 32))) (Undefined!8975) (MissingVacant!8975 (index!38273 (_ BitVec 32))) )
))
(declare-fun lt!424551 () SeekEntryResult!8975)

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32067 0))(
  ( (V!32068 (val!10214 Int)) )
))
(declare-datatypes ((ValueCell!9682 0))(
  ( (ValueCellFull!9682 (v!12745 V!32067)) (EmptyCell!9682) )
))
(declare-datatypes ((array!56624 0))(
  ( (array!56625 (arr!27243 (Array (_ BitVec 32) ValueCell!9682)) (size!27705 (_ BitVec 32))) )
))
(declare-datatypes ((array!56626 0))(
  ( (array!56627 (arr!27244 (Array (_ BitVec 32) (_ BitVec 64))) (size!27706 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4514 0))(
  ( (LongMapFixedSize!4515 (defaultEntry!5548 Int) (mask!27070 (_ BitVec 32)) (extraKeys!5280 (_ BitVec 32)) (zeroValue!5384 V!32067) (minValue!5384 V!32067) (_size!2312 (_ BitVec 32)) (_keys!10394 array!56626) (_values!5571 array!56624) (_vacant!2312 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4514)

(declare-fun seekEntry!0 ((_ BitVec 64) array!56626 (_ BitVec 32)) SeekEntryResult!8975)

(assert (=> b!939892 (= lt!424551 (seekEntry!0 key!756 (_keys!10394 thiss!1141) (mask!27070 thiss!1141)))))

(declare-fun res!632156 () Bool)

(assert (=> start!79992 (=> (not res!632156) (not e!528104))))

(declare-fun valid!1716 (LongMapFixedSize!4514) Bool)

(assert (=> start!79992 (= res!632156 (valid!1716 thiss!1141))))

(assert (=> start!79992 e!528104))

(declare-fun e!528106 () Bool)

(assert (=> start!79992 e!528106))

(assert (=> start!79992 true))

(declare-fun mapIsEmpty!32281 () Bool)

(declare-fun mapRes!32281 () Bool)

(assert (=> mapIsEmpty!32281 mapRes!32281))

(declare-fun mapNonEmpty!32281 () Bool)

(declare-fun tp!61933 () Bool)

(declare-fun e!528103 () Bool)

(assert (=> mapNonEmpty!32281 (= mapRes!32281 (and tp!61933 e!528103))))

(declare-fun mapRest!32281 () (Array (_ BitVec 32) ValueCell!9682))

(declare-fun mapValue!32281 () ValueCell!9682)

(declare-fun mapKey!32281 () (_ BitVec 32))

(assert (=> mapNonEmpty!32281 (= (arr!27243 (_values!5571 thiss!1141)) (store mapRest!32281 mapKey!32281 mapValue!32281))))

(declare-fun b!939893 () Bool)

(declare-fun res!632155 () Bool)

(assert (=> b!939893 (=> (not res!632155) (not e!528104))))

(assert (=> b!939893 (= res!632155 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!939894 () Bool)

(declare-fun e!528107 () Bool)

(declare-fun tp_is_empty!20327 () Bool)

(assert (=> b!939894 (= e!528107 tp_is_empty!20327)))

(declare-fun b!939895 () Bool)

(declare-fun e!528105 () Bool)

(assert (=> b!939895 (= e!528105 (and e!528107 mapRes!32281))))

(declare-fun condMapEmpty!32281 () Bool)

(declare-fun mapDefault!32281 () ValueCell!9682)

