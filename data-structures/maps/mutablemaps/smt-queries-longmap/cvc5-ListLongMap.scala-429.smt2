; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8024 () Bool)

(assert start!8024)

(declare-fun b!50326 () Bool)

(declare-fun b_free!1537 () Bool)

(declare-fun b_next!1537 () Bool)

(assert (=> b!50326 (= b_free!1537 (not b_next!1537))))

(declare-fun tp!6667 () Bool)

(declare-fun b_and!2757 () Bool)

(assert (=> b!50326 (= tp!6667 b_and!2757)))

(declare-fun b!50317 () Bool)

(declare-fun b_free!1539 () Bool)

(declare-fun b_next!1539 () Bool)

(assert (=> b!50317 (= b_free!1539 (not b_next!1539))))

(declare-fun tp!6668 () Bool)

(declare-fun b_and!2759 () Bool)

(assert (=> b!50317 (= tp!6668 b_and!2759)))

(declare-fun b!50314 () Bool)

(declare-fun e!32498 () Bool)

(declare-fun e!32492 () Bool)

(assert (=> b!50314 (= e!32498 e!32492)))

(declare-fun mapIsEmpty!2181 () Bool)

(declare-fun mapRes!2181 () Bool)

(assert (=> mapIsEmpty!2181 mapRes!2181))

(declare-fun b!50315 () Bool)

(declare-fun e!32503 () Bool)

(declare-fun tp_is_empty!2185 () Bool)

(assert (=> b!50315 (= e!32503 tp_is_empty!2185)))

(declare-fun b!50316 () Bool)

(declare-fun e!32494 () Bool)

(declare-fun e!32496 () Bool)

(assert (=> b!50316 (= e!32494 (and e!32496 mapRes!2181))))

(declare-fun condMapEmpty!2182 () Bool)

(declare-datatypes ((V!2561 0))(
  ( (V!2562 (val!1137 Int)) )
))
(declare-datatypes ((array!3280 0))(
  ( (array!3281 (arr!1568 (Array (_ BitVec 32) (_ BitVec 64))) (size!1791 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!749 0))(
  ( (ValueCellFull!749 (v!2159 V!2561)) (EmptyCell!749) )
))
(declare-datatypes ((array!3282 0))(
  ( (array!3283 (arr!1569 (Array (_ BitVec 32) ValueCell!749)) (size!1792 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!406 0))(
  ( (LongMapFixedSize!407 (defaultEntry!1917 Int) (mask!5704 (_ BitVec 32)) (extraKeys!1808 (_ BitVec 32)) (zeroValue!1835 V!2561) (minValue!1835 V!2561) (_size!252 (_ BitVec 32)) (_keys!3525 array!3280) (_values!1900 array!3282) (_vacant!252 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!406)

(declare-fun mapDefault!2182 () ValueCell!749)

