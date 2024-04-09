; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16680 () Bool)

(assert start!16680)

(declare-fun b!166753 () Bool)

(declare-fun b_free!3973 () Bool)

(declare-fun b_next!3973 () Bool)

(assert (=> b!166753 (= b_free!3973 (not b_next!3973))))

(declare-fun tp!14519 () Bool)

(declare-fun b_and!10405 () Bool)

(assert (=> b!166753 (= tp!14519 b_and!10405)))

(declare-fun b!166741 () Bool)

(declare-fun e!109448 () Bool)

(declare-fun tp_is_empty!3775 () Bool)

(assert (=> b!166741 (= e!109448 tp_is_empty!3775)))

(declare-fun b!166742 () Bool)

(declare-fun e!109444 () Bool)

(declare-fun e!109441 () Bool)

(declare-fun mapRes!6381 () Bool)

(assert (=> b!166742 (= e!109444 (and e!109441 mapRes!6381))))

(declare-fun condMapEmpty!6381 () Bool)

(declare-datatypes ((V!4681 0))(
  ( (V!4682 (val!1932 Int)) )
))
(declare-datatypes ((ValueCell!1544 0))(
  ( (ValueCellFull!1544 (v!3793 V!4681)) (EmptyCell!1544) )
))
(declare-datatypes ((array!6646 0))(
  ( (array!6647 (arr!3158 (Array (_ BitVec 32) (_ BitVec 64))) (size!3446 (_ BitVec 32))) )
))
(declare-datatypes ((array!6648 0))(
  ( (array!6649 (arr!3159 (Array (_ BitVec 32) ValueCell!1544)) (size!3447 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1996 0))(
  ( (LongMapFixedSize!1997 (defaultEntry!3440 Int) (mask!8177 (_ BitVec 32)) (extraKeys!3181 (_ BitVec 32)) (zeroValue!3283 V!4681) (minValue!3283 V!4681) (_size!1047 (_ BitVec 32)) (_keys!5265 array!6646) (_values!3423 array!6648) (_vacant!1047 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1996)

(declare-fun mapDefault!6381 () ValueCell!1544)

