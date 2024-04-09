; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77082 () Bool)

(assert start!77082)

(declare-fun b!899749 () Bool)

(declare-fun b_free!16043 () Bool)

(declare-fun b_next!16043 () Bool)

(assert (=> b!899749 (= b_free!16043 (not b_next!16043))))

(declare-fun tp!56213 () Bool)

(declare-fun b_and!26375 () Bool)

(assert (=> b!899749 (= tp!56213 b_and!26375)))

(declare-fun b!899747 () Bool)

(declare-fun e!503558 () Bool)

(declare-fun e!503559 () Bool)

(declare-fun mapRes!29226 () Bool)

(assert (=> b!899747 (= e!503558 (and e!503559 mapRes!29226))))

(declare-fun condMapEmpty!29226 () Bool)

(declare-datatypes ((array!52774 0))(
  ( (array!52775 (arr!25356 (Array (_ BitVec 32) (_ BitVec 64))) (size!25815 (_ BitVec 32))) )
))
(declare-datatypes ((V!29459 0))(
  ( (V!29460 (val!9236 Int)) )
))
(declare-datatypes ((ValueCell!8704 0))(
  ( (ValueCellFull!8704 (v!11728 V!29459)) (EmptyCell!8704) )
))
(declare-datatypes ((array!52776 0))(
  ( (array!52777 (arr!25357 (Array (_ BitVec 32) ValueCell!8704)) (size!25816 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4424 0))(
  ( (LongMapFixedSize!4425 (defaultEntry!5440 Int) (mask!26202 (_ BitVec 32)) (extraKeys!5163 (_ BitVec 32)) (zeroValue!5267 V!29459) (minValue!5267 V!29459) (_size!2267 (_ BitVec 32)) (_keys!10231 array!52774) (_values!5454 array!52776) (_vacant!2267 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4424)

(declare-fun mapDefault!29226 () ValueCell!8704)

