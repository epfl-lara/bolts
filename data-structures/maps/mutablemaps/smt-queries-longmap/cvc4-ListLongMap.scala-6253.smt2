; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80016 () Bool)

(assert start!80016)

(declare-fun b!940181 () Bool)

(declare-fun b_free!17843 () Bool)

(declare-fun b_next!17843 () Bool)

(assert (=> b!940181 (= b_free!17843 (not b_next!17843))))

(declare-fun tp!62005 () Bool)

(declare-fun b_and!29273 () Bool)

(assert (=> b!940181 (= tp!62005 b_and!29273)))

(declare-fun b!940176 () Bool)

(declare-fun e!528354 () Bool)

(declare-fun e!528356 () Bool)

(declare-fun mapRes!32317 () Bool)

(assert (=> b!940176 (= e!528354 (and e!528356 mapRes!32317))))

(declare-fun condMapEmpty!32317 () Bool)

(declare-datatypes ((V!32099 0))(
  ( (V!32100 (val!10226 Int)) )
))
(declare-datatypes ((ValueCell!9694 0))(
  ( (ValueCellFull!9694 (v!12757 V!32099)) (EmptyCell!9694) )
))
(declare-datatypes ((array!56672 0))(
  ( (array!56673 (arr!27267 (Array (_ BitVec 32) ValueCell!9694)) (size!27729 (_ BitVec 32))) )
))
(declare-datatypes ((array!56674 0))(
  ( (array!56675 (arr!27268 (Array (_ BitVec 32) (_ BitVec 64))) (size!27730 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4538 0))(
  ( (LongMapFixedSize!4539 (defaultEntry!5560 Int) (mask!27090 (_ BitVec 32)) (extraKeys!5292 (_ BitVec 32)) (zeroValue!5396 V!32099) (minValue!5396 V!32099) (_size!2324 (_ BitVec 32)) (_keys!10406 array!56674) (_values!5583 array!56672) (_vacant!2324 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4538)

(declare-fun mapDefault!32317 () ValueCell!9694)

