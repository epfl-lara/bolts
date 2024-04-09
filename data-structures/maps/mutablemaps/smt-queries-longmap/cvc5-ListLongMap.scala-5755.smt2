; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74386 () Bool)

(assert start!74386)

(declare-fun b_free!15121 () Bool)

(declare-fun b_next!15121 () Bool)

(assert (=> start!74386 (= b_free!15121 (not b_next!15121))))

(declare-fun tp!53038 () Bool)

(declare-fun b_and!24915 () Bool)

(assert (=> start!74386 (= tp!53038 b_and!24915)))

(declare-fun b!875092 () Bool)

(declare-fun res!594830 () Bool)

(declare-fun e!487204 () Bool)

(assert (=> b!875092 (=> (not res!594830) (not e!487204))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!875092 (= res!594830 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!27656 () Bool)

(declare-fun mapRes!27656 () Bool)

(assert (=> mapIsEmpty!27656 mapRes!27656))

(declare-fun b!875093 () Bool)

(declare-fun e!487206 () Bool)

(declare-fun tp_is_empty!17365 () Bool)

(assert (=> b!875093 (= e!487206 tp_is_empty!17365)))

(declare-datatypes ((V!28201 0))(
  ( (V!28202 (val!8730 Int)) )
))
(declare-datatypes ((tuple2!11538 0))(
  ( (tuple2!11539 (_1!5779 (_ BitVec 64)) (_2!5779 V!28201)) )
))
(declare-datatypes ((List!17426 0))(
  ( (Nil!17423) (Cons!17422 (h!18553 tuple2!11538) (t!24475 List!17426)) )
))
(declare-datatypes ((ListLongMap!10321 0))(
  ( (ListLongMap!10322 (toList!5176 List!17426)) )
))
(declare-fun call!38588 () ListLongMap!10321)

(declare-fun v!557 () V!28201)

(declare-fun e!487203 () Bool)

(declare-fun b!875094 () Bool)

(declare-fun call!38589 () ListLongMap!10321)

(declare-fun +!2421 (ListLongMap!10321 tuple2!11538) ListLongMap!10321)

(assert (=> b!875094 (= e!487203 (= call!38588 (+!2421 call!38589 (tuple2!11539 k!854 v!557))))))

(declare-fun b!875095 () Bool)

(declare-fun e!487200 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8243 0))(
  ( (ValueCellFull!8243 (v!11155 V!28201)) (EmptyCell!8243) )
))
(declare-datatypes ((array!50842 0))(
  ( (array!50843 (arr!24445 (Array (_ BitVec 32) ValueCell!8243)) (size!24886 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50842)

(assert (=> b!875095 (= e!487200 (bvslt i!612 (size!24886 _values!688)))))

(declare-fun b!875096 () Bool)

(declare-fun e!487205 () Bool)

(assert (=> b!875096 (= e!487205 (and e!487206 mapRes!27656))))

(declare-fun condMapEmpty!27656 () Bool)

(declare-fun mapDefault!27656 () ValueCell!8243)

