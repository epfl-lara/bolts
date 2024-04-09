; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89534 () Bool)

(assert start!89534)

(declare-fun b!1026356 () Bool)

(declare-fun b_free!20497 () Bool)

(declare-fun b_next!20497 () Bool)

(assert (=> b!1026356 (= b_free!20497 (not b_next!20497))))

(declare-fun tp!72538 () Bool)

(declare-fun b_and!32761 () Bool)

(assert (=> b!1026356 (= tp!72538 b_and!32761)))

(declare-fun b!1026347 () Bool)

(declare-fun e!579028 () Bool)

(declare-fun e!579027 () Bool)

(declare-fun mapRes!37754 () Bool)

(assert (=> b!1026347 (= e!579028 (and e!579027 mapRes!37754))))

(declare-fun condMapEmpty!37754 () Bool)

(declare-datatypes ((V!37163 0))(
  ( (V!37164 (val!12159 Int)) )
))
(declare-datatypes ((ValueCell!11405 0))(
  ( (ValueCellFull!11405 (v!14729 V!37163)) (EmptyCell!11405) )
))
(declare-datatypes ((array!64468 0))(
  ( (array!64469 (arr!31039 (Array (_ BitVec 32) (_ BitVec 64))) (size!31553 (_ BitVec 32))) )
))
(declare-datatypes ((array!64470 0))(
  ( (array!64471 (arr!31040 (Array (_ BitVec 32) ValueCell!11405)) (size!31554 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5404 0))(
  ( (LongMapFixedSize!5405 (defaultEntry!6054 Int) (mask!29743 (_ BitVec 32)) (extraKeys!5786 (_ BitVec 32)) (zeroValue!5890 V!37163) (minValue!5890 V!37163) (_size!2757 (_ BitVec 32)) (_keys!11198 array!64468) (_values!6077 array!64470) (_vacant!2757 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5404)

(declare-fun mapDefault!37754 () ValueCell!11405)

