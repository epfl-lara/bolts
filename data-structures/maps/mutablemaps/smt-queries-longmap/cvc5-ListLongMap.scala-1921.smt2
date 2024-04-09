; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34180 () Bool)

(assert start!34180)

(declare-fun b_free!7195 () Bool)

(declare-fun b_next!7195 () Bool)

(assert (=> start!34180 (= b_free!7195 (not b_next!7195))))

(declare-fun tp!25118 () Bool)

(declare-fun b_and!14413 () Bool)

(assert (=> start!34180 (= tp!25118 b_and!14413)))

(declare-fun b!340358 () Bool)

(declare-fun res!188074 () Bool)

(declare-fun e!208808 () Bool)

(assert (=> b!340358 (=> (not res!188074) (not e!208808))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10507 0))(
  ( (V!10508 (val!3618 Int)) )
))
(declare-fun zeroValue!1467 () V!10507)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3230 0))(
  ( (ValueCellFull!3230 (v!5786 V!10507)) (EmptyCell!3230) )
))
(declare-datatypes ((array!17865 0))(
  ( (array!17866 (arr!8450 (Array (_ BitVec 32) ValueCell!3230)) (size!8802 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17865)

(declare-datatypes ((array!17867 0))(
  ( (array!17868 (arr!8451 (Array (_ BitVec 32) (_ BitVec 64))) (size!8803 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17867)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10507)

(declare-datatypes ((tuple2!5238 0))(
  ( (tuple2!5239 (_1!2629 (_ BitVec 64)) (_2!2629 V!10507)) )
))
(declare-datatypes ((List!4884 0))(
  ( (Nil!4881) (Cons!4880 (h!5736 tuple2!5238) (t!10000 List!4884)) )
))
(declare-datatypes ((ListLongMap!4165 0))(
  ( (ListLongMap!4166 (toList!2098 List!4884)) )
))
(declare-fun contains!2148 (ListLongMap!4165 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1618 (array!17867 array!17865 (_ BitVec 32) (_ BitVec 32) V!10507 V!10507 (_ BitVec 32) Int) ListLongMap!4165)

(assert (=> b!340358 (= res!188074 (not (contains!2148 (getCurrentListMap!1618 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapIsEmpty!12147 () Bool)

(declare-fun mapRes!12147 () Bool)

(assert (=> mapIsEmpty!12147 mapRes!12147))

(declare-fun b!340359 () Bool)

(declare-fun e!208807 () Bool)

(declare-fun tp_is_empty!7147 () Bool)

(assert (=> b!340359 (= e!208807 tp_is_empty!7147)))

(declare-fun b!340360 () Bool)

(declare-fun res!188069 () Bool)

(assert (=> b!340360 (=> (not res!188069) (not e!208808))))

(assert (=> b!340360 (= res!188069 (and (= (size!8802 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8803 _keys!1895) (size!8802 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!340361 () Bool)

(declare-fun e!208806 () Bool)

(declare-fun e!208809 () Bool)

(assert (=> b!340361 (= e!208806 (and e!208809 mapRes!12147))))

(declare-fun condMapEmpty!12147 () Bool)

(declare-fun mapDefault!12147 () ValueCell!3230)

