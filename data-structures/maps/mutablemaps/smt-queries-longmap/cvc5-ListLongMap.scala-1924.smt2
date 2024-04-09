; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34198 () Bool)

(assert start!34198)

(declare-fun b_free!7213 () Bool)

(declare-fun b_next!7213 () Bool)

(assert (=> start!34198 (= b_free!7213 (not b_next!7213))))

(declare-fun tp!25173 () Bool)

(declare-fun b_and!14431 () Bool)

(assert (=> start!34198 (= tp!25173 b_and!14431)))

(declare-fun mapIsEmpty!12174 () Bool)

(declare-fun mapRes!12174 () Bool)

(assert (=> mapIsEmpty!12174 mapRes!12174))

(declare-fun b!340656 () Bool)

(declare-fun e!208967 () Bool)

(declare-fun tp_is_empty!7165 () Bool)

(assert (=> b!340656 (= e!208967 tp_is_empty!7165)))

(declare-fun b!340657 () Bool)

(declare-fun res!188288 () Bool)

(declare-fun e!208969 () Bool)

(assert (=> b!340657 (=> (not res!188288) (not e!208969))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!10531 0))(
  ( (V!10532 (val!3627 Int)) )
))
(declare-fun zeroValue!1467 () V!10531)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3239 0))(
  ( (ValueCellFull!3239 (v!5795 V!10531)) (EmptyCell!3239) )
))
(declare-datatypes ((array!17895 0))(
  ( (array!17896 (arr!8465 (Array (_ BitVec 32) ValueCell!3239)) (size!8817 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17895)

(declare-datatypes ((array!17897 0))(
  ( (array!17898 (arr!8466 (Array (_ BitVec 32) (_ BitVec 64))) (size!8818 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17897)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10531)

(declare-datatypes ((tuple2!5246 0))(
  ( (tuple2!5247 (_1!2633 (_ BitVec 64)) (_2!2633 V!10531)) )
))
(declare-datatypes ((List!4891 0))(
  ( (Nil!4888) (Cons!4887 (h!5743 tuple2!5246) (t!10007 List!4891)) )
))
(declare-datatypes ((ListLongMap!4173 0))(
  ( (ListLongMap!4174 (toList!2102 List!4891)) )
))
(declare-fun contains!2152 (ListLongMap!4173 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1622 (array!17897 array!17895 (_ BitVec 32) (_ BitVec 32) V!10531 V!10531 (_ BitVec 32) Int) ListLongMap!4173)

(assert (=> b!340657 (= res!188288 (not (contains!2152 (getCurrentListMap!1622 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapNonEmpty!12174 () Bool)

(declare-fun tp!25172 () Bool)

(declare-fun e!208968 () Bool)

(assert (=> mapNonEmpty!12174 (= mapRes!12174 (and tp!25172 e!208968))))

(declare-fun mapValue!12174 () ValueCell!3239)

(declare-fun mapRest!12174 () (Array (_ BitVec 32) ValueCell!3239))

(declare-fun mapKey!12174 () (_ BitVec 32))

(assert (=> mapNonEmpty!12174 (= (arr!8465 _values!1525) (store mapRest!12174 mapKey!12174 mapValue!12174))))

(declare-fun b!340658 () Bool)

(declare-fun e!208971 () Bool)

(assert (=> b!340658 (= e!208971 (and e!208967 mapRes!12174))))

(declare-fun condMapEmpty!12174 () Bool)

(declare-fun mapDefault!12174 () ValueCell!3239)

