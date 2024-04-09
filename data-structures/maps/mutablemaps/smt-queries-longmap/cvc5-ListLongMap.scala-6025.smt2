; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78062 () Bool)

(assert start!78062)

(declare-fun b_free!16561 () Bool)

(declare-fun b_next!16561 () Bool)

(assert (=> start!78062 (= b_free!16561 (not b_next!16561))))

(declare-fun tp!57954 () Bool)

(declare-fun b_and!27151 () Bool)

(assert (=> start!78062 (= tp!57954 b_and!27151)))

(declare-fun b!910755 () Bool)

(declare-fun res!614641 () Bool)

(declare-fun e!510741 () Bool)

(assert (=> b!910755 (=> (not res!614641) (not e!510741))))

(declare-datatypes ((array!53968 0))(
  ( (array!53969 (arr!25936 (Array (_ BitVec 32) (_ BitVec 64))) (size!26396 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53968)

(declare-datatypes ((List!18324 0))(
  ( (Nil!18321) (Cons!18320 (h!19466 (_ BitVec 64)) (t!25917 List!18324)) )
))
(declare-fun arrayNoDuplicates!0 (array!53968 (_ BitVec 32) List!18324) Bool)

(assert (=> b!910755 (= res!614641 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18321))))

(declare-fun mapIsEmpty!30190 () Bool)

(declare-fun mapRes!30190 () Bool)

(assert (=> mapIsEmpty!30190 mapRes!30190))

(declare-fun b!910756 () Bool)

(declare-fun e!510743 () Bool)

(declare-fun e!510739 () Bool)

(assert (=> b!910756 (= e!510743 (and e!510739 mapRes!30190))))

(declare-fun condMapEmpty!30190 () Bool)

(declare-datatypes ((V!30271 0))(
  ( (V!30272 (val!9540 Int)) )
))
(declare-datatypes ((ValueCell!9008 0))(
  ( (ValueCellFull!9008 (v!12049 V!30271)) (EmptyCell!9008) )
))
(declare-datatypes ((array!53970 0))(
  ( (array!53971 (arr!25937 (Array (_ BitVec 32) ValueCell!9008)) (size!26397 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53970)

(declare-fun mapDefault!30190 () ValueCell!9008)

