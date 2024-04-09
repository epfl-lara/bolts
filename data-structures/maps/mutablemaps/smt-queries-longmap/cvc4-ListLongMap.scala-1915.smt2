; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34092 () Bool)

(assert start!34092)

(declare-fun b_free!7163 () Bool)

(declare-fun b_next!7163 () Bool)

(assert (=> start!34092 (= b_free!7163 (not b_next!7163))))

(declare-fun tp!25014 () Bool)

(declare-fun b_and!14375 () Bool)

(assert (=> start!34092 (= tp!25014 b_and!14375)))

(declare-fun b!339499 () Bool)

(declare-fun res!187600 () Bool)

(declare-fun e!208297 () Bool)

(assert (=> b!339499 (=> (not res!187600) (not e!208297))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((V!10463 0))(
  ( (V!10464 (val!3602 Int)) )
))
(declare-datatypes ((ValueCell!3214 0))(
  ( (ValueCellFull!3214 (v!5767 V!10463)) (EmptyCell!3214) )
))
(declare-datatypes ((array!17801 0))(
  ( (array!17802 (arr!8421 (Array (_ BitVec 32) ValueCell!3214)) (size!8773 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17801)

(declare-datatypes ((array!17803 0))(
  ( (array!17804 (arr!8422 (Array (_ BitVec 32) (_ BitVec 64))) (size!8774 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17803)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10463)

(declare-fun zeroValue!1467 () V!10463)

(declare-datatypes ((tuple2!5220 0))(
  ( (tuple2!5221 (_1!2620 (_ BitVec 64)) (_2!2620 V!10463)) )
))
(declare-datatypes ((List!4863 0))(
  ( (Nil!4860) (Cons!4859 (h!5715 tuple2!5220) (t!9973 List!4863)) )
))
(declare-datatypes ((ListLongMap!4147 0))(
  ( (ListLongMap!4148 (toList!2089 List!4863)) )
))
(declare-fun contains!2136 (ListLongMap!4147 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1609 (array!17803 array!17801 (_ BitVec 32) (_ BitVec 32) V!10463 V!10463 (_ BitVec 32) Int) ListLongMap!4147)

(assert (=> b!339499 (= res!187600 (not (contains!2136 (getCurrentListMap!1609 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!339500 () Bool)

(declare-fun res!187603 () Bool)

(assert (=> b!339500 (=> (not res!187603) (not e!208297))))

(declare-datatypes ((List!4864 0))(
  ( (Nil!4861) (Cons!4860 (h!5716 (_ BitVec 64)) (t!9974 List!4864)) )
))
(declare-fun arrayNoDuplicates!0 (array!17803 (_ BitVec 32) List!4864) Bool)

(assert (=> b!339500 (= res!187603 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4861))))

(declare-fun b!339501 () Bool)

(declare-fun e!208295 () Bool)

(declare-fun e!208298 () Bool)

(declare-fun mapRes!12090 () Bool)

(assert (=> b!339501 (= e!208295 (and e!208298 mapRes!12090))))

(declare-fun condMapEmpty!12090 () Bool)

(declare-fun mapDefault!12090 () ValueCell!3214)

