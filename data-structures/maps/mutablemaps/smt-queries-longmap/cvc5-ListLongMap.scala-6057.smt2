; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78416 () Bool)

(assert start!78416)

(declare-fun b_free!16753 () Bool)

(declare-fun b_next!16753 () Bool)

(assert (=> start!78416 (= b_free!16753 (not b_next!16753))))

(declare-fun tp!58547 () Bool)

(declare-fun b_and!27391 () Bool)

(assert (=> start!78416 (= tp!58547 b_and!27391)))

(declare-fun b!914287 () Bool)

(declare-fun e!512928 () Bool)

(assert (=> b!914287 (= e!512928 false)))

(declare-datatypes ((V!30527 0))(
  ( (V!30528 (val!9636 Int)) )
))
(declare-datatypes ((ValueCell!9104 0))(
  ( (ValueCellFull!9104 (v!12152 V!30527)) (EmptyCell!9104) )
))
(declare-datatypes ((array!54348 0))(
  ( (array!54349 (arr!26121 (Array (_ BitVec 32) ValueCell!9104)) (size!26581 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54348)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun lt!411428 () Bool)

(declare-fun zeroValue!1094 () V!30527)

(declare-datatypes ((array!54350 0))(
  ( (array!54351 (arr!26122 (Array (_ BitVec 32) (_ BitVec 64))) (size!26582 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54350)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30527)

(declare-datatypes ((tuple2!12622 0))(
  ( (tuple2!12623 (_1!6321 (_ BitVec 64)) (_2!6321 V!30527)) )
))
(declare-datatypes ((List!18461 0))(
  ( (Nil!18458) (Cons!18457 (h!19603 tuple2!12622) (t!26080 List!18461)) )
))
(declare-datatypes ((ListLongMap!11333 0))(
  ( (ListLongMap!11334 (toList!5682 List!18461)) )
))
(declare-fun contains!4697 (ListLongMap!11333 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2911 (array!54350 array!54348 (_ BitVec 32) (_ BitVec 32) V!30527 V!30527 (_ BitVec 32) Int) ListLongMap!11333)

(assert (=> b!914287 (= lt!411428 (contains!4697 (getCurrentListMap!2911 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!914288 () Bool)

(declare-fun e!512930 () Bool)

(declare-fun e!512929 () Bool)

(declare-fun mapRes!30495 () Bool)

(assert (=> b!914288 (= e!512930 (and e!512929 mapRes!30495))))

(declare-fun condMapEmpty!30495 () Bool)

(declare-fun mapDefault!30495 () ValueCell!9104)

