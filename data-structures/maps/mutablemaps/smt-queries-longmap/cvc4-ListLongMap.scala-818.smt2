; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19982 () Bool)

(assert start!19982)

(declare-fun mapNonEmpty!7841 () Bool)

(declare-fun mapRes!7841 () Bool)

(declare-fun tp!17129 () Bool)

(declare-fun e!128873 () Bool)

(assert (=> mapNonEmpty!7841 (= mapRes!7841 (and tp!17129 e!128873))))

(declare-datatypes ((V!5677 0))(
  ( (V!5678 (val!2306 Int)) )
))
(declare-datatypes ((ValueCell!1918 0))(
  ( (ValueCellFull!1918 (v!4271 V!5677)) (EmptyCell!1918) )
))
(declare-datatypes ((array!8302 0))(
  ( (array!8303 (arr!3905 (Array (_ BitVec 32) ValueCell!1918)) (size!4230 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8302)

(declare-fun mapValue!7841 () ValueCell!1918)

(declare-fun mapRest!7841 () (Array (_ BitVec 32) ValueCell!1918))

(declare-fun mapKey!7841 () (_ BitVec 32))

(assert (=> mapNonEmpty!7841 (= (arr!3905 _values!649) (store mapRest!7841 mapKey!7841 mapValue!7841))))

(declare-fun b!195783 () Bool)

(declare-fun tp_is_empty!4523 () Bool)

(assert (=> b!195783 (= e!128873 tp_is_empty!4523)))

(declare-fun b!195784 () Bool)

(declare-fun e!128874 () Bool)

(declare-fun e!128875 () Bool)

(assert (=> b!195784 (= e!128874 (and e!128875 mapRes!7841))))

(declare-fun condMapEmpty!7841 () Bool)

(declare-fun mapDefault!7841 () ValueCell!1918)

