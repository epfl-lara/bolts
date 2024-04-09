; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34690 () Bool)

(assert start!34690)

(declare-fun b_free!7489 () Bool)

(declare-fun b_next!7489 () Bool)

(assert (=> start!34690 (= b_free!7489 (not b_next!7489))))

(declare-fun tp!26030 () Bool)

(declare-fun b_and!14727 () Bool)

(assert (=> start!34690 (= tp!26030 b_and!14727)))

(declare-fun b!346295 () Bool)

(declare-fun res!191605 () Bool)

(declare-fun e!212257 () Bool)

(assert (=> b!346295 (=> (not res!191605) (not e!212257))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((V!10899 0))(
  ( (V!10900 (val!3765 Int)) )
))
(declare-datatypes ((ValueCell!3377 0))(
  ( (ValueCellFull!3377 (v!5943 V!10899)) (EmptyCell!3377) )
))
(declare-datatypes ((array!18441 0))(
  ( (array!18442 (arr!8728 (Array (_ BitVec 32) ValueCell!3377)) (size!9080 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18441)

(declare-datatypes ((array!18443 0))(
  ( (array!18444 (arr!8729 (Array (_ BitVec 32) (_ BitVec 64))) (size!9081 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18443)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10899)

(declare-fun zeroValue!1467 () V!10899)

(declare-datatypes ((tuple2!5434 0))(
  ( (tuple2!5435 (_1!2727 (_ BitVec 64)) (_2!2727 V!10899)) )
))
(declare-datatypes ((List!5080 0))(
  ( (Nil!5077) (Cons!5076 (h!5932 tuple2!5434) (t!10216 List!5080)) )
))
(declare-datatypes ((ListLongMap!4361 0))(
  ( (ListLongMap!4362 (toList!2196 List!5080)) )
))
(declare-fun contains!2256 (ListLongMap!4361 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1716 (array!18443 array!18441 (_ BitVec 32) (_ BitVec 32) V!10899 V!10899 (_ BitVec 32) Int) ListLongMap!4361)

(assert (=> b!346295 (= res!191605 (not (contains!2256 (getCurrentListMap!1716 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!346296 () Bool)

(declare-fun e!212258 () Bool)

(declare-fun e!212255 () Bool)

(declare-fun mapRes!12618 () Bool)

(assert (=> b!346296 (= e!212258 (and e!212255 mapRes!12618))))

(declare-fun condMapEmpty!12618 () Bool)

(declare-fun mapDefault!12618 () ValueCell!3377)

