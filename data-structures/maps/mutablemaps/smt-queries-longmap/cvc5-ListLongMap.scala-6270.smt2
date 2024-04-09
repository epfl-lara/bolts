; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80242 () Bool)

(assert start!80242)

(declare-fun b!942151 () Bool)

(declare-fun b_free!17941 () Bool)

(declare-fun b_next!17941 () Bool)

(assert (=> b!942151 (= b_free!17941 (not b_next!17941))))

(declare-fun tp!62324 () Bool)

(declare-fun b_and!29371 () Bool)

(assert (=> b!942151 (= tp!62324 b_and!29371)))

(declare-fun mapNonEmpty!32489 () Bool)

(declare-fun mapRes!32489 () Bool)

(declare-fun tp!62323 () Bool)

(declare-fun e!529753 () Bool)

(assert (=> mapNonEmpty!32489 (= mapRes!32489 (and tp!62323 e!529753))))

(declare-fun mapKey!32489 () (_ BitVec 32))

(declare-datatypes ((V!32231 0))(
  ( (V!32232 (val!10275 Int)) )
))
(declare-datatypes ((ValueCell!9743 0))(
  ( (ValueCellFull!9743 (v!12806 V!32231)) (EmptyCell!9743) )
))
(declare-datatypes ((array!56882 0))(
  ( (array!56883 (arr!27365 (Array (_ BitVec 32) ValueCell!9743)) (size!27831 (_ BitVec 32))) )
))
(declare-datatypes ((array!56884 0))(
  ( (array!56885 (arr!27366 (Array (_ BitVec 32) (_ BitVec 64))) (size!27832 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4636 0))(
  ( (LongMapFixedSize!4637 (defaultEntry!5609 Int) (mask!27204 (_ BitVec 32)) (extraKeys!5341 (_ BitVec 32)) (zeroValue!5445 V!32231) (minValue!5445 V!32231) (_size!2373 (_ BitVec 32)) (_keys!10475 array!56884) (_values!5632 array!56882) (_vacant!2373 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4636)

(declare-fun mapRest!32489 () (Array (_ BitVec 32) ValueCell!9743))

(declare-fun mapValue!32489 () ValueCell!9743)

(assert (=> mapNonEmpty!32489 (= (arr!27365 (_values!5632 thiss!1141)) (store mapRest!32489 mapKey!32489 mapValue!32489))))

(declare-fun b!942142 () Bool)

(declare-fun res!633241 () Bool)

(declare-fun e!529752 () Bool)

(assert (=> b!942142 (=> (not res!633241) (not e!529752))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!942142 (= res!633241 (validMask!0 (mask!27204 thiss!1141)))))

(declare-fun b!942143 () Bool)

(declare-fun res!633245 () Bool)

(assert (=> b!942143 (=> (not res!633245) (not e!529752))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56884 (_ BitVec 32)) Bool)

(assert (=> b!942143 (= res!633245 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!10475 thiss!1141) (mask!27204 thiss!1141)))))

(declare-fun b!942144 () Bool)

(declare-fun res!633244 () Bool)

(assert (=> b!942144 (=> (not res!633244) (not e!529752))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!942144 (= res!633244 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!942145 () Bool)

(declare-fun e!529751 () Bool)

(declare-fun tp_is_empty!20449 () Bool)

(assert (=> b!942145 (= e!529751 tp_is_empty!20449)))

(declare-fun b!942146 () Bool)

(declare-fun res!633243 () Bool)

(assert (=> b!942146 (=> (not res!633243) (not e!529752))))

(assert (=> b!942146 (= res!633243 (and (= (size!27831 (_values!5632 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27204 thiss!1141))) (= (size!27832 (_keys!10475 thiss!1141)) (size!27831 (_values!5632 thiss!1141))) (bvsge (mask!27204 thiss!1141) #b00000000000000000000000000000000) (bvsge (extraKeys!5341 thiss!1141) #b00000000000000000000000000000000) (bvsle (extraKeys!5341 thiss!1141) #b00000000000000000000000000000011)))))

(declare-fun res!633242 () Bool)

(assert (=> start!80242 (=> (not res!633242) (not e!529752))))

(declare-fun valid!1755 (LongMapFixedSize!4636) Bool)

(assert (=> start!80242 (= res!633242 (valid!1755 thiss!1141))))

(assert (=> start!80242 e!529752))

(declare-fun e!529754 () Bool)

(assert (=> start!80242 e!529754))

(assert (=> start!80242 true))

(declare-fun b!942147 () Bool)

(declare-fun e!529749 () Bool)

(assert (=> b!942147 (= e!529749 (and e!529751 mapRes!32489))))

(declare-fun condMapEmpty!32489 () Bool)

(declare-fun mapDefault!32489 () ValueCell!9743)

