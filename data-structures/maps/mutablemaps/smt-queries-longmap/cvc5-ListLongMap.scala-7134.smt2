; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90570 () Bool)

(assert start!90570)

(declare-fun b!1035540 () Bool)

(declare-fun b_free!20857 () Bool)

(declare-fun b_next!20857 () Bool)

(assert (=> b!1035540 (= b_free!20857 (not b_next!20857))))

(declare-fun tp!73700 () Bool)

(declare-fun b_and!33375 () Bool)

(assert (=> b!1035540 (= tp!73700 b_and!33375)))

(declare-fun b!1035535 () Bool)

(declare-fun e!585613 () Bool)

(declare-fun e!585616 () Bool)

(declare-fun mapRes!38376 () Bool)

(assert (=> b!1035535 (= e!585613 (and e!585616 mapRes!38376))))

(declare-fun condMapEmpty!38376 () Bool)

(declare-datatypes ((V!37643 0))(
  ( (V!37644 (val!12339 Int)) )
))
(declare-datatypes ((ValueCell!11585 0))(
  ( (ValueCellFull!11585 (v!14920 V!37643)) (EmptyCell!11585) )
))
(declare-datatypes ((array!65232 0))(
  ( (array!65233 (arr!31399 (Array (_ BitVec 32) (_ BitVec 64))) (size!31928 (_ BitVec 32))) )
))
(declare-datatypes ((array!65234 0))(
  ( (array!65235 (arr!31400 (Array (_ BitVec 32) ValueCell!11585)) (size!31929 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5764 0))(
  ( (LongMapFixedSize!5765 (defaultEntry!6260 Int) (mask!30146 (_ BitVec 32)) (extraKeys!5990 (_ BitVec 32)) (zeroValue!6094 V!37643) (minValue!6096 V!37643) (_size!2937 (_ BitVec 32)) (_keys!11444 array!65232) (_values!6283 array!65234) (_vacant!2937 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5764)

(declare-fun mapDefault!38376 () ValueCell!11585)

