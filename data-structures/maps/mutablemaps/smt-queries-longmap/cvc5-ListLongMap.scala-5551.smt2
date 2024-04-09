; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73118 () Bool)

(assert start!73118)

(declare-fun b_free!14005 () Bool)

(declare-fun b_next!14005 () Bool)

(assert (=> start!73118 (= b_free!14005 (not b_next!14005))))

(declare-fun tp!49520 () Bool)

(declare-fun b_and!23187 () Bool)

(assert (=> start!73118 (= tp!49520 b_and!23187)))

(declare-fun b!850122 () Bool)

(declare-fun e!474275 () Bool)

(declare-datatypes ((V!26569 0))(
  ( (V!26570 (val!8118 Int)) )
))
(declare-datatypes ((tuple2!10652 0))(
  ( (tuple2!10653 (_1!5336 (_ BitVec 64)) (_2!5336 V!26569)) )
))
(declare-datatypes ((List!16549 0))(
  ( (Nil!16546) (Cons!16545 (h!17676 tuple2!10652) (t!23008 List!16549)) )
))
(declare-datatypes ((ListLongMap!9435 0))(
  ( (ListLongMap!9436 (toList!4733 List!16549)) )
))
(declare-fun call!37870 () ListLongMap!9435)

(declare-fun call!37871 () ListLongMap!9435)

(assert (=> b!850122 (= e!474275 (= call!37870 call!37871))))

(declare-fun b!850123 () Bool)

(declare-fun e!474271 () Bool)

(declare-fun e!474270 () Bool)

(declare-fun mapRes!25811 () Bool)

(assert (=> b!850123 (= e!474271 (and e!474270 mapRes!25811))))

(declare-fun condMapEmpty!25811 () Bool)

(declare-datatypes ((ValueCell!7631 0))(
  ( (ValueCellFull!7631 (v!10539 V!26569)) (EmptyCell!7631) )
))
(declare-datatypes ((array!48474 0))(
  ( (array!48475 (arr!23264 (Array (_ BitVec 32) ValueCell!7631)) (size!23705 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48474)

(declare-fun mapDefault!25811 () ValueCell!7631)

