; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!77978 () Bool)

(assert start!77978)

(declare-fun b_free!16493 () Bool)

(declare-fun b_next!16493 () Bool)

(assert (=> start!77978 (= b_free!16493 (not b_next!16493))))

(declare-fun tp!57748 () Bool)

(declare-fun b_and!27081 () Bool)

(assert (=> start!77978 (= tp!57748 b_and!27081)))

(declare-fun b!909914 () Bool)

(declare-fun e!510158 () Bool)

(declare-fun tp_is_empty!18911 () Bool)

(assert (=> b!909914 (= e!510158 tp_is_empty!18911)))

(declare-fun b!909915 () Bool)

(declare-fun e!510159 () Bool)

(assert (=> b!909915 (= e!510159 false)))

(declare-datatypes ((V!30179 0))(
  ( (V!30180 (val!9506 Int)) )
))
(declare-datatypes ((ValueCell!8974 0))(
  ( (ValueCellFull!8974 (v!12014 V!30179)) (EmptyCell!8974) )
))
(declare-datatypes ((array!53840 0))(
  ( (array!53841 (arr!25873 (Array (_ BitVec 32) ValueCell!8974)) (size!26333 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53840)

(declare-fun defaultEntry!1160 () Int)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30179)

(declare-datatypes ((array!53842 0))(
  ( (array!53843 (arr!25874 (Array (_ BitVec 32) (_ BitVec 64))) (size!26334 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53842)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun lt!410089 () Bool)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30179)

(declare-datatypes ((tuple2!12426 0))(
  ( (tuple2!12427 (_1!6223 (_ BitVec 64)) (_2!6223 V!30179)) )
))
(declare-datatypes ((List!18278 0))(
  ( (Nil!18275) (Cons!18274 (h!19420 tuple2!12426) (t!25869 List!18278)) )
))
(declare-datatypes ((ListLongMap!11137 0))(
  ( (ListLongMap!11138 (toList!5584 List!18278)) )
))
(declare-fun contains!4592 (ListLongMap!11137 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2814 (array!53842 array!53840 (_ BitVec 32) (_ BitVec 32) V!30179 V!30179 (_ BitVec 32) Int) ListLongMap!11137)

(assert (=> b!909915 (= lt!410089 (contains!4592 (getCurrentListMap!2814 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!909917 () Bool)

(declare-fun e!510157 () Bool)

(declare-fun mapRes!30085 () Bool)

(assert (=> b!909917 (= e!510157 (and e!510158 mapRes!30085))))

(declare-fun condMapEmpty!30085 () Bool)

(declare-fun mapDefault!30085 () ValueCell!8974)

