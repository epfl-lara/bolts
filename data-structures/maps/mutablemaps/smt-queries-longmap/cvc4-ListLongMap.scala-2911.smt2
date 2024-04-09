; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41634 () Bool)

(assert start!41634)

(declare-fun b_free!11279 () Bool)

(declare-fun b_next!11279 () Bool)

(assert (=> start!41634 (= b_free!11279 (not b_next!11279))))

(declare-fun tp!39838 () Bool)

(declare-fun b_and!19645 () Bool)

(assert (=> start!41634 (= tp!39838 b_and!19645)))

(declare-fun b!464666 () Bool)

(declare-fun e!271487 () Bool)

(declare-fun e!271490 () Bool)

(declare-fun mapRes!20740 () Bool)

(assert (=> b!464666 (= e!271487 (and e!271490 mapRes!20740))))

(declare-fun condMapEmpty!20740 () Bool)

(declare-datatypes ((V!18047 0))(
  ( (V!18048 (val!6398 Int)) )
))
(declare-datatypes ((ValueCell!6010 0))(
  ( (ValueCellFull!6010 (v!8681 V!18047)) (EmptyCell!6010) )
))
(declare-datatypes ((array!29163 0))(
  ( (array!29164 (arr!14009 (Array (_ BitVec 32) ValueCell!6010)) (size!14361 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29163)

(declare-fun mapDefault!20740 () ValueCell!6010)

