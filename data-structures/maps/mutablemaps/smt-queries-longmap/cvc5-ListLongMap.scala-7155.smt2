; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!91072 () Bool)

(assert start!91072)

(declare-fun b!1039597 () Bool)

(declare-fun b_free!20983 () Bool)

(declare-fun b_next!20983 () Bool)

(assert (=> b!1039597 (= b_free!20983 (not b_next!20983))))

(declare-fun tp!74133 () Bool)

(declare-fun b_and!33533 () Bool)

(assert (=> b!1039597 (= tp!74133 b_and!33533)))

(declare-fun b!1039595 () Bool)

(declare-fun e!588455 () Bool)

(declare-fun e!588457 () Bool)

(declare-fun mapRes!38620 () Bool)

(assert (=> b!1039595 (= e!588455 (and e!588457 mapRes!38620))))

(declare-fun condMapEmpty!38620 () Bool)

(declare-datatypes ((V!37811 0))(
  ( (V!37812 (val!12402 Int)) )
))
(declare-datatypes ((ValueCell!11648 0))(
  ( (ValueCellFull!11648 (v!14990 V!37811)) (EmptyCell!11648) )
))
(declare-datatypes ((array!65518 0))(
  ( (array!65519 (arr!31525 (Array (_ BitVec 32) (_ BitVec 64))) (size!32057 (_ BitVec 32))) )
))
(declare-datatypes ((array!65520 0))(
  ( (array!65521 (arr!31526 (Array (_ BitVec 32) ValueCell!11648)) (size!32058 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5890 0))(
  ( (LongMapFixedSize!5891 (defaultEntry!6327 Int) (mask!30293 (_ BitVec 32)) (extraKeys!6055 (_ BitVec 32)) (zeroValue!6161 V!37811) (minValue!6161 V!37811) (_size!3000 (_ BitVec 32)) (_keys!11536 array!65518) (_values!6350 array!65520) (_vacant!3000 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5890)

(declare-fun mapDefault!38620 () ValueCell!11648)

