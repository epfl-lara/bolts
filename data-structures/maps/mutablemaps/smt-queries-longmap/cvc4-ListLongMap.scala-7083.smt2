; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89592 () Bool)

(assert start!89592)

(declare-fun b!1027218 () Bool)

(declare-fun b_free!20555 () Bool)

(declare-fun b_next!20555 () Bool)

(assert (=> b!1027218 (= b_free!20555 (not b_next!20555))))

(declare-fun tp!72711 () Bool)

(declare-fun b_and!32819 () Bool)

(assert (=> b!1027218 (= tp!72711 b_and!32819)))

(declare-fun b!1027217 () Bool)

(declare-fun e!579723 () Bool)

(declare-fun e!579726 () Bool)

(declare-fun mapRes!37841 () Bool)

(assert (=> b!1027217 (= e!579723 (and e!579726 mapRes!37841))))

(declare-fun condMapEmpty!37841 () Bool)

(declare-datatypes ((V!37239 0))(
  ( (V!37240 (val!12188 Int)) )
))
(declare-datatypes ((ValueCell!11434 0))(
  ( (ValueCellFull!11434 (v!14758 V!37239)) (EmptyCell!11434) )
))
(declare-datatypes ((array!64584 0))(
  ( (array!64585 (arr!31097 (Array (_ BitVec 32) (_ BitVec 64))) (size!31611 (_ BitVec 32))) )
))
(declare-datatypes ((array!64586 0))(
  ( (array!64587 (arr!31098 (Array (_ BitVec 32) ValueCell!11434)) (size!31612 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5462 0))(
  ( (LongMapFixedSize!5463 (defaultEntry!6083 Int) (mask!29790 (_ BitVec 32)) (extraKeys!5815 (_ BitVec 32)) (zeroValue!5919 V!37239) (minValue!5919 V!37239) (_size!2786 (_ BitVec 32)) (_keys!11227 array!64584) (_values!6106 array!64586) (_vacant!2786 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5462)

(declare-fun mapDefault!37841 () ValueCell!11434)

