; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80118 () Bool)

(assert start!80118)

(declare-fun b!941289 () Bool)

(declare-fun b_free!17911 () Bool)

(declare-fun b_next!17911 () Bool)

(assert (=> b!941289 (= b_free!17911 (not b_next!17911))))

(declare-fun tp!62215 () Bool)

(declare-fun b_and!29341 () Bool)

(assert (=> b!941289 (= tp!62215 b_and!29341)))

(declare-fun b!941288 () Bool)

(declare-fun e!529214 () Bool)

(declare-fun tp_is_empty!20419 () Bool)

(assert (=> b!941288 (= e!529214 tp_is_empty!20419)))

(declare-fun res!632889 () Bool)

(declare-fun e!529215 () Bool)

(assert (=> start!80118 (=> (not res!632889) (not e!529215))))

(declare-datatypes ((V!32191 0))(
  ( (V!32192 (val!10260 Int)) )
))
(declare-datatypes ((ValueCell!9728 0))(
  ( (ValueCellFull!9728 (v!12791 V!32191)) (EmptyCell!9728) )
))
(declare-datatypes ((array!56812 0))(
  ( (array!56813 (arr!27335 (Array (_ BitVec 32) ValueCell!9728)) (size!27798 (_ BitVec 32))) )
))
(declare-datatypes ((array!56814 0))(
  ( (array!56815 (arr!27336 (Array (_ BitVec 32) (_ BitVec 64))) (size!27799 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4606 0))(
  ( (LongMapFixedSize!4607 (defaultEntry!5594 Int) (mask!27156 (_ BitVec 32)) (extraKeys!5326 (_ BitVec 32)) (zeroValue!5430 V!32191) (minValue!5430 V!32191) (_size!2358 (_ BitVec 32)) (_keys!10445 array!56814) (_values!5617 array!56812) (_vacant!2358 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4606)

(declare-fun valid!1745 (LongMapFixedSize!4606) Bool)

(assert (=> start!80118 (= res!632889 (valid!1745 thiss!1141))))

(assert (=> start!80118 e!529215))

(declare-fun e!529213 () Bool)

(assert (=> start!80118 e!529213))

(assert (=> start!80118 true))

(declare-fun e!529216 () Bool)

(declare-fun array_inv!21198 (array!56814) Bool)

(declare-fun array_inv!21199 (array!56812) Bool)

(assert (=> b!941289 (= e!529213 (and tp!62215 tp_is_empty!20419 (array_inv!21198 (_keys!10445 thiss!1141)) (array_inv!21199 (_values!5617 thiss!1141)) e!529216))))

(declare-fun b!941290 () Bool)

(assert (=> b!941290 (= e!529215 (and (= (size!27798 (_values!5617 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27156 thiss!1141))) (not (= (size!27799 (_keys!10445 thiss!1141)) (size!27798 (_values!5617 thiss!1141))))))))

(declare-fun b!941291 () Bool)

(declare-fun e!529217 () Bool)

(assert (=> b!941291 (= e!529217 tp_is_empty!20419)))

(declare-fun b!941292 () Bool)

(declare-fun res!632887 () Bool)

(assert (=> b!941292 (=> (not res!632887) (not e!529215))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!941292 (= res!632887 (validMask!0 (mask!27156 thiss!1141)))))

(declare-fun mapIsEmpty!32426 () Bool)

(declare-fun mapRes!32426 () Bool)

(assert (=> mapIsEmpty!32426 mapRes!32426))

(declare-fun b!941293 () Bool)

(declare-fun res!632886 () Bool)

(assert (=> b!941293 (=> (not res!632886) (not e!529215))))

(declare-fun key!756 () (_ BitVec 64))

(assert (=> b!941293 (= res!632886 (and (not (= key!756 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!756 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!941294 () Bool)

(assert (=> b!941294 (= e!529216 (and e!529217 mapRes!32426))))

(declare-fun condMapEmpty!32426 () Bool)

(declare-fun mapDefault!32426 () ValueCell!9728)

