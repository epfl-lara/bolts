; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80092 () Bool)

(assert start!80092)

(declare-fun b!941131 () Bool)

(declare-fun b_free!17909 () Bool)

(declare-fun b_next!17909 () Bool)

(assert (=> b!941131 (= b_free!17909 (not b_next!17909))))

(declare-fun tp!62205 () Bool)

(declare-fun b_and!29339 () Bool)

(assert (=> b!941131 (= tp!62205 b_and!29339)))

(declare-fun tp_is_empty!20417 () Bool)

(declare-fun e!529123 () Bool)

(declare-datatypes ((V!32187 0))(
  ( (V!32188 (val!10259 Int)) )
))
(declare-datatypes ((ValueCell!9727 0))(
  ( (ValueCellFull!9727 (v!12790 V!32187)) (EmptyCell!9727) )
))
(declare-datatypes ((array!56806 0))(
  ( (array!56807 (arr!27333 (Array (_ BitVec 32) ValueCell!9727)) (size!27795 (_ BitVec 32))) )
))
(declare-datatypes ((array!56808 0))(
  ( (array!56809 (arr!27334 (Array (_ BitVec 32) (_ BitVec 64))) (size!27796 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4604 0))(
  ( (LongMapFixedSize!4605 (defaultEntry!5593 Int) (mask!27147 (_ BitVec 32)) (extraKeys!5325 (_ BitVec 32)) (zeroValue!5429 V!32187) (minValue!5429 V!32187) (_size!2357 (_ BitVec 32)) (_keys!10440 array!56808) (_values!5616 array!56806) (_vacant!2357 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4604)

(declare-fun e!529121 () Bool)

(declare-fun array_inv!21196 (array!56808) Bool)

(declare-fun array_inv!21197 (array!56806) Bool)

(assert (=> b!941131 (= e!529121 (and tp!62205 tp_is_empty!20417 (array_inv!21196 (_keys!10440 thiss!1141)) (array_inv!21197 (_values!5616 thiss!1141)) e!529123))))

(declare-fun mapIsEmpty!32419 () Bool)

(declare-fun mapRes!32419 () Bool)

(assert (=> mapIsEmpty!32419 mapRes!32419))

(declare-fun b!941132 () Bool)

(declare-fun res!632828 () Bool)

(declare-fun e!529122 () Bool)

(assert (=> b!941132 (=> (not res!632828) (not e!529122))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!941132 (= res!632828 (validMask!0 (mask!27147 thiss!1141)))))

(declare-fun b!941133 () Bool)

(declare-fun res!632830 () Bool)

(assert (=> b!941133 (=> (not res!632830) (not e!529122))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!9013 0))(
  ( (MissingZero!9013 (index!38422 (_ BitVec 32))) (Found!9013 (index!38423 (_ BitVec 32))) (Intermediate!9013 (undefined!9825 Bool) (index!38424 (_ BitVec 32)) (x!80747 (_ BitVec 32))) (Undefined!9013) (MissingVacant!9013 (index!38425 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!56808 (_ BitVec 32)) SeekEntryResult!9013)

(assert (=> b!941133 (= res!632830 (not (is-Found!9013 (seekEntry!0 key!756 (_keys!10440 thiss!1141) (mask!27147 thiss!1141)))))))

(declare-fun b!941134 () Bool)

(assert (=> b!941134 (= e!529122 (not (= (size!27795 (_values!5616 thiss!1141)) (bvadd #b00000000000000000000000000000001 (mask!27147 thiss!1141)))))))

(declare-fun mapNonEmpty!32419 () Bool)

(declare-fun tp!62206 () Bool)

(declare-fun e!529120 () Bool)

(assert (=> mapNonEmpty!32419 (= mapRes!32419 (and tp!62206 e!529120))))

(declare-fun mapRest!32419 () (Array (_ BitVec 32) ValueCell!9727))

(declare-fun mapKey!32419 () (_ BitVec 32))

(declare-fun mapValue!32419 () ValueCell!9727)

(assert (=> mapNonEmpty!32419 (= (arr!27333 (_values!5616 thiss!1141)) (store mapRest!32419 mapKey!32419 mapValue!32419))))

(declare-fun b!941135 () Bool)

(declare-fun e!529124 () Bool)

(assert (=> b!941135 (= e!529123 (and e!529124 mapRes!32419))))

(declare-fun condMapEmpty!32419 () Bool)

(declare-fun mapDefault!32419 () ValueCell!9727)

