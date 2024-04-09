; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34328 () Bool)

(assert start!34328)

(declare-fun b_free!7295 () Bool)

(declare-fun b_next!7295 () Bool)

(assert (=> start!34328 (= b_free!7295 (not b_next!7295))))

(declare-fun tp!25425 () Bool)

(declare-fun b_and!14517 () Bool)

(assert (=> start!34328 (= tp!25425 b_and!14517)))

(declare-fun b!342348 () Bool)

(declare-fun res!189313 () Bool)

(declare-fun e!209946 () Bool)

(assert (=> b!342348 (=> (not res!189313) (not e!209946))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((V!10639 0))(
  ( (V!10640 (val!3668 Int)) )
))
(declare-datatypes ((ValueCell!3280 0))(
  ( (ValueCellFull!3280 (v!5838 V!10639)) (EmptyCell!3280) )
))
(declare-datatypes ((array!18061 0))(
  ( (array!18062 (arr!8546 (Array (_ BitVec 32) ValueCell!3280)) (size!8898 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18061)

(declare-datatypes ((array!18063 0))(
  ( (array!18064 (arr!8547 (Array (_ BitVec 32) (_ BitVec 64))) (size!8899 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18063)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10639)

(declare-fun zeroValue!1467 () V!10639)

(declare-datatypes ((tuple2!5304 0))(
  ( (tuple2!5305 (_1!2662 (_ BitVec 64)) (_2!2662 V!10639)) )
))
(declare-datatypes ((List!4946 0))(
  ( (Nil!4943) (Cons!4942 (h!5798 tuple2!5304) (t!10066 List!4946)) )
))
(declare-datatypes ((ListLongMap!4231 0))(
  ( (ListLongMap!4232 (toList!2131 List!4946)) )
))
(declare-fun contains!2183 (ListLongMap!4231 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1651 (array!18063 array!18061 (_ BitVec 32) (_ BitVec 32) V!10639 V!10639 (_ BitVec 32) Int) ListLongMap!4231)

(assert (=> b!342348 (= res!189313 (not (contains!2183 (getCurrentListMap!1651 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!342350 () Bool)

(declare-fun e!209952 () Bool)

(declare-fun e!209949 () Bool)

(declare-fun mapRes!12303 () Bool)

(assert (=> b!342350 (= e!209952 (and e!209949 mapRes!12303))))

(declare-fun condMapEmpty!12303 () Bool)

(declare-fun mapDefault!12303 () ValueCell!3280)

