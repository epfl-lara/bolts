; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34478 () Bool)

(assert start!34478)

(declare-fun b_free!7393 () Bool)

(declare-fun b_next!7393 () Bool)

(assert (=> start!34478 (= b_free!7393 (not b_next!7393))))

(declare-fun tp!25724 () Bool)

(declare-fun b_and!14619 () Bool)

(assert (=> start!34478 (= tp!25724 b_and!14619)))

(declare-fun b!344150 () Bool)

(declare-fun res!190388 () Bool)

(declare-fun e!210992 () Bool)

(assert (=> b!344150 (=> (not res!190388) (not e!210992))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10771 0))(
  ( (V!10772 (val!3717 Int)) )
))
(declare-fun zeroValue!1467 () V!10771)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3329 0))(
  ( (ValueCellFull!3329 (v!5889 V!10771)) (EmptyCell!3329) )
))
(declare-datatypes ((array!18247 0))(
  ( (array!18248 (arr!8637 (Array (_ BitVec 32) ValueCell!3329)) (size!8989 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18247)

(declare-datatypes ((array!18249 0))(
  ( (array!18250 (arr!8638 (Array (_ BitVec 32) (_ BitVec 64))) (size!8990 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18249)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10771)

(declare-datatypes ((tuple2!5368 0))(
  ( (tuple2!5369 (_1!2694 (_ BitVec 64)) (_2!2694 V!10771)) )
))
(declare-datatypes ((List!5014 0))(
  ( (Nil!5011) (Cons!5010 (h!5866 tuple2!5368) (t!10138 List!5014)) )
))
(declare-datatypes ((ListLongMap!4295 0))(
  ( (ListLongMap!4296 (toList!2163 List!5014)) )
))
(declare-fun contains!2217 (ListLongMap!4295 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1683 (array!18249 array!18247 (_ BitVec 32) (_ BitVec 32) V!10771 V!10771 (_ BitVec 32) Int) ListLongMap!4295)

(assert (=> b!344150 (= res!190388 (not (contains!2217 (getCurrentListMap!1683 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!344151 () Bool)

(declare-fun e!210991 () Bool)

(declare-fun e!210989 () Bool)

(declare-fun mapRes!12456 () Bool)

(assert (=> b!344151 (= e!210991 (and e!210989 mapRes!12456))))

(declare-fun condMapEmpty!12456 () Bool)

(declare-fun mapDefault!12456 () ValueCell!3329)

