; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37382 () Bool)

(assert start!37382)

(declare-fun b_free!8501 () Bool)

(declare-fun b_next!8501 () Bool)

(assert (=> start!37382 (= b_free!8501 (not b_next!8501))))

(declare-fun tp!30219 () Bool)

(declare-fun b_and!15761 () Bool)

(assert (=> start!37382 (= tp!30219 b_and!15761)))

(declare-fun res!215340 () Bool)

(declare-fun e!230905 () Bool)

(assert (=> start!37382 (=> (not res!215340) (not e!230905))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37382 (= res!215340 (validMask!0 mask!970))))

(assert (=> start!37382 e!230905))

(declare-datatypes ((V!13303 0))(
  ( (V!13304 (val!4619 Int)) )
))
(declare-datatypes ((ValueCell!4231 0))(
  ( (ValueCellFull!4231 (v!6812 V!13303)) (EmptyCell!4231) )
))
(declare-datatypes ((array!22195 0))(
  ( (array!22196 (arr!10563 (Array (_ BitVec 32) ValueCell!4231)) (size!10915 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22195)

(declare-fun e!230904 () Bool)

(declare-fun array_inv!7770 (array!22195) Bool)

(assert (=> start!37382 (and (array_inv!7770 _values!506) e!230904)))

(assert (=> start!37382 tp!30219))

(assert (=> start!37382 true))

(declare-fun tp_is_empty!9149 () Bool)

(assert (=> start!37382 tp_is_empty!9149))

(declare-datatypes ((array!22197 0))(
  ( (array!22198 (arr!10564 (Array (_ BitVec 32) (_ BitVec 64))) (size!10916 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22197)

(declare-fun array_inv!7771 (array!22197) Bool)

(assert (=> start!37382 (array_inv!7771 _keys!658)))

(declare-fun b!379530 () Bool)

(declare-fun e!230902 () Bool)

(assert (=> b!379530 (= e!230902 tp_is_empty!9149)))

(declare-fun b!379531 () Bool)

(declare-fun res!215334 () Bool)

(assert (=> b!379531 (=> (not res!215334) (not e!230905))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!22197 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!379531 (= res!215334 (not (arrayContainsKey!0 _keys!658 k!778 #b00000000000000000000000000000000)))))

(declare-fun b!379532 () Bool)

(declare-fun e!230906 () Bool)

(assert (=> b!379532 (= e!230906 true)))

(declare-datatypes ((tuple2!6148 0))(
  ( (tuple2!6149 (_1!3084 (_ BitVec 64)) (_2!3084 V!13303)) )
))
(declare-datatypes ((List!6021 0))(
  ( (Nil!6018) (Cons!6017 (h!6873 tuple2!6148) (t!11179 List!6021)) )
))
(declare-datatypes ((ListLongMap!5075 0))(
  ( (ListLongMap!5076 (toList!2553 List!6021)) )
))
(declare-fun lt!177395 () ListLongMap!5075)

(declare-fun lt!177399 () ListLongMap!5075)

(declare-fun lt!177397 () tuple2!6148)

(declare-fun +!894 (ListLongMap!5075 tuple2!6148) ListLongMap!5075)

(assert (=> b!379532 (= lt!177395 (+!894 lt!177399 lt!177397))))

(declare-fun v!373 () V!13303)

(declare-datatypes ((Unit!11683 0))(
  ( (Unit!11684) )
))
(declare-fun lt!177394 () Unit!11683)

(declare-fun lt!177404 () ListLongMap!5075)

(declare-fun minValue!472 () V!13303)

(declare-fun addCommutativeForDiffKeys!306 (ListLongMap!5075 (_ BitVec 64) V!13303 (_ BitVec 64) V!13303) Unit!11683)

(assert (=> b!379532 (= lt!177394 (addCommutativeForDiffKeys!306 lt!177404 k!778 v!373 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))

(declare-fun b!379533 () Bool)

(declare-fun mapRes!15288 () Bool)

(assert (=> b!379533 (= e!230904 (and e!230902 mapRes!15288))))

(declare-fun condMapEmpty!15288 () Bool)

(declare-fun mapDefault!15288 () ValueCell!4231)

