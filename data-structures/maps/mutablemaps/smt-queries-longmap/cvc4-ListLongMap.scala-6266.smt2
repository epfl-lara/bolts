; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80152 () Bool)

(assert start!80152)

(declare-fun b!941541 () Bool)

(declare-fun b_free!17921 () Bool)

(declare-fun b_next!17921 () Bool)

(assert (=> b!941541 (= b_free!17921 (not b_next!17921))))

(declare-fun tp!62250 () Bool)

(declare-fun b_and!29351 () Bool)

(assert (=> b!941541 (= tp!62250 b_and!29351)))

(declare-fun res!632994 () Bool)

(declare-fun e!529378 () Bool)

(assert (=> start!80152 (=> (not res!632994) (not e!529378))))

(declare-datatypes ((V!32203 0))(
  ( (V!32204 (val!10265 Int)) )
))
(declare-datatypes ((ValueCell!9733 0))(
  ( (ValueCellFull!9733 (v!12796 V!32203)) (EmptyCell!9733) )
))
(declare-datatypes ((array!56834 0))(
  ( (array!56835 (arr!27345 (Array (_ BitVec 32) ValueCell!9733)) (size!27809 (_ BitVec 32))) )
))
(declare-datatypes ((array!56836 0))(
  ( (array!56837 (arr!27346 (Array (_ BitVec 32) (_ BitVec 64))) (size!27810 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4616 0))(
  ( (LongMapFixedSize!4617 (defaultEntry!5599 Int) (mask!27169 (_ BitVec 32)) (extraKeys!5331 (_ BitVec 32)) (zeroValue!5435 V!32203) (minValue!5435 V!32203) (_size!2363 (_ BitVec 32)) (_keys!10454 array!56836) (_values!5622 array!56834) (_vacant!2363 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4616)

(declare-fun valid!1748 (LongMapFixedSize!4616) Bool)

(assert (=> start!80152 (= res!632994 (valid!1748 thiss!1141))))

(assert (=> start!80152 e!529378))

(declare-fun e!529379 () Bool)

(assert (=> start!80152 e!529379))

(assert (=> start!80152 true))

(declare-fun e!529380 () Bool)

(declare-fun tp_is_empty!20429 () Bool)

(declare-fun array_inv!21204 (array!56836) Bool)

(declare-fun array_inv!21205 (array!56834) Bool)

(assert (=> b!941541 (= e!529379 (and tp!62250 tp_is_empty!20429 (array_inv!21204 (_keys!10454 thiss!1141)) (array_inv!21205 (_values!5622 thiss!1141)) e!529380))))

(declare-fun mapIsEmpty!32445 () Bool)

(declare-fun mapRes!32445 () Bool)

(assert (=> mapIsEmpty!32445 mapRes!32445))

(declare-fun b!941542 () Bool)

(declare-fun e!529377 () Bool)

(assert (=> b!941542 (= e!529377 tp_is_empty!20429)))

(declare-fun b!941543 () Bool)

(assert (=> b!941543 (= e!529380 (and e!529377 mapRes!32445))))

(declare-fun condMapEmpty!32445 () Bool)

(declare-fun mapDefault!32445 () ValueCell!9733)

