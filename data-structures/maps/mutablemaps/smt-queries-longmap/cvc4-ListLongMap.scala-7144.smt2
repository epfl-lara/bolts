; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!90822 () Bool)

(assert start!90822)

(declare-fun b!1037835 () Bool)

(declare-fun b_free!20921 () Bool)

(declare-fun b_next!20921 () Bool)

(assert (=> b!1037835 (= b_free!20921 (not b_next!20921))))

(declare-fun tp!73919 () Bool)

(declare-fun b_and!33471 () Bool)

(assert (=> b!1037835 (= tp!73919 b_and!33471)))

(declare-fun b!1037829 () Bool)

(declare-fun e!587199 () Bool)

(declare-fun tp_is_empty!24641 () Bool)

(assert (=> b!1037829 (= e!587199 tp_is_empty!24641)))

(declare-fun b!1037830 () Bool)

(declare-fun res!692463 () Bool)

(declare-fun e!587197 () Bool)

(assert (=> b!1037830 (=> res!692463 e!587197)))

(declare-datatypes ((List!22047 0))(
  ( (Nil!22044) (Cons!22043 (h!23246 (_ BitVec 64)) (t!31268 List!22047)) )
))
(declare-fun contains!6052 (List!22047 (_ BitVec 64)) Bool)

(assert (=> b!1037830 (= res!692463 (contains!6052 Nil!22044 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1037831 () Bool)

(declare-fun e!587201 () Bool)

(assert (=> b!1037831 (= e!587201 tp_is_empty!24641)))

(declare-fun b!1037832 () Bool)

(declare-fun e!587203 () Bool)

(declare-fun mapRes!38499 () Bool)

(assert (=> b!1037832 (= e!587203 (and e!587199 mapRes!38499))))

(declare-fun condMapEmpty!38499 () Bool)

(declare-datatypes ((V!37727 0))(
  ( (V!37728 (val!12371 Int)) )
))
(declare-datatypes ((ValueCell!11617 0))(
  ( (ValueCellFull!11617 (v!14956 V!37727)) (EmptyCell!11617) )
))
(declare-datatypes ((array!65376 0))(
  ( (array!65377 (arr!31463 (Array (_ BitVec 32) (_ BitVec 64))) (size!31994 (_ BitVec 32))) )
))
(declare-datatypes ((array!65378 0))(
  ( (array!65379 (arr!31464 (Array (_ BitVec 32) ValueCell!11617)) (size!31995 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5828 0))(
  ( (LongMapFixedSize!5829 (defaultEntry!6296 Int) (mask!30219 (_ BitVec 32)) (extraKeys!6024 (_ BitVec 32)) (zeroValue!6130 V!37727) (minValue!6130 V!37727) (_size!2969 (_ BitVec 32)) (_keys!11492 array!65376) (_values!6319 array!65378) (_vacant!2969 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5828)

(declare-fun mapDefault!38499 () ValueCell!11617)

