; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90158 () Bool)

(assert start!90158)

(declare-fun b!1032338 () Bool)

(declare-fun b_free!20729 () Bool)

(declare-fun b_next!20729 () Bool)

(assert (=> b!1032338 (= b_free!20729 (not b_next!20729))))

(declare-fun tp!73258 () Bool)

(declare-fun b_and!33215 () Bool)

(assert (=> b!1032338 (= tp!73258 b_and!33215)))

(declare-fun b!1032336 () Bool)

(declare-fun res!690072 () Bool)

(declare-fun e!583352 () Bool)

(assert (=> b!1032336 (=> (not res!690072) (not e!583352))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1032336 (= res!690072 (and (= key!909 (bvneg key!909)) (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapIsEmpty!38127 () Bool)

(declare-fun mapRes!38127 () Bool)

(assert (=> mapIsEmpty!38127 mapRes!38127))

(declare-fun e!583356 () Bool)

(declare-fun tp_is_empty!24449 () Bool)

(declare-fun e!583353 () Bool)

(declare-datatypes ((V!37471 0))(
  ( (V!37472 (val!12275 Int)) )
))
(declare-datatypes ((ValueCell!11521 0))(
  ( (ValueCellFull!11521 (v!14853 V!37471)) (EmptyCell!11521) )
))
(declare-datatypes ((array!64946 0))(
  ( (array!64947 (arr!31271 (Array (_ BitVec 32) (_ BitVec 64))) (size!31789 (_ BitVec 32))) )
))
(declare-datatypes ((array!64948 0))(
  ( (array!64949 (arr!31272 (Array (_ BitVec 32) ValueCell!11521)) (size!31790 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5636 0))(
  ( (LongMapFixedSize!5637 (defaultEntry!6192 Int) (mask!30005 (_ BitVec 32)) (extraKeys!5924 (_ BitVec 32)) (zeroValue!6028 V!37471) (minValue!6028 V!37471) (_size!2873 (_ BitVec 32)) (_keys!11362 array!64946) (_values!6215 array!64948) (_vacant!2873 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5636)

(declare-fun array_inv!24039 (array!64946) Bool)

(declare-fun array_inv!24040 (array!64948) Bool)

(assert (=> b!1032338 (= e!583353 (and tp!73258 tp_is_empty!24449 (array_inv!24039 (_keys!11362 thiss!1427)) (array_inv!24040 (_values!6215 thiss!1427)) e!583356))))

(declare-fun b!1032339 () Bool)

(declare-fun e!583355 () Bool)

(assert (=> b!1032339 (= e!583356 (and e!583355 mapRes!38127))))

(declare-fun condMapEmpty!38127 () Bool)

(declare-fun mapDefault!38127 () ValueCell!11521)

