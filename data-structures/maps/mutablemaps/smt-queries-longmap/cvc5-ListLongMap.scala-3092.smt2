; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43500 () Bool)

(assert start!43500)

(declare-fun b_free!12271 () Bool)

(declare-fun b_next!12271 () Bool)

(assert (=> start!43500 (= b_free!12271 (not b_next!12271))))

(declare-fun tp!43096 () Bool)

(declare-fun b_and!21049 () Bool)

(assert (=> start!43500 (= tp!43096 b_and!21049)))

(declare-fun b!481706 () Bool)

(declare-fun res!287236 () Bool)

(declare-fun e!283431 () Bool)

(assert (=> b!481706 (=> (not res!287236) (not e!283431))))

(declare-datatypes ((array!31199 0))(
  ( (array!31200 (arr!14999 (Array (_ BitVec 32) (_ BitVec 64))) (size!15357 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31199)

(declare-datatypes ((List!9223 0))(
  ( (Nil!9220) (Cons!9219 (h!10075 (_ BitVec 64)) (t!15445 List!9223)) )
))
(declare-fun arrayNoDuplicates!0 (array!31199 (_ BitVec 32) List!9223) Bool)

(assert (=> b!481706 (= res!287236 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9220))))

(declare-fun b!481707 () Bool)

(declare-fun e!283430 () Bool)

(declare-fun e!283432 () Bool)

(declare-fun mapRes!22384 () Bool)

(assert (=> b!481707 (= e!283430 (and e!283432 mapRes!22384))))

(declare-fun condMapEmpty!22384 () Bool)

(declare-datatypes ((V!19449 0))(
  ( (V!19450 (val!6939 Int)) )
))
(declare-datatypes ((ValueCell!6530 0))(
  ( (ValueCellFull!6530 (v!9228 V!19449)) (EmptyCell!6530) )
))
(declare-datatypes ((array!31201 0))(
  ( (array!31202 (arr!15000 (Array (_ BitVec 32) ValueCell!6530)) (size!15358 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31201)

(declare-fun mapDefault!22384 () ValueCell!6530)

