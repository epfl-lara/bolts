; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78080 () Bool)

(assert start!78080)

(declare-fun b_free!16579 () Bool)

(declare-fun b_next!16579 () Bool)

(assert (=> start!78080 (= b_free!16579 (not b_next!16579))))

(declare-fun tp!58008 () Bool)

(declare-fun b_and!27169 () Bool)

(assert (=> start!78080 (= tp!58008 b_and!27169)))

(declare-fun b!910944 () Bool)

(declare-fun e!510875 () Bool)

(assert (=> b!910944 (= e!510875 false)))

(declare-datatypes ((V!30295 0))(
  ( (V!30296 (val!9549 Int)) )
))
(declare-datatypes ((ValueCell!9017 0))(
  ( (ValueCellFull!9017 (v!12058 V!30295)) (EmptyCell!9017) )
))
(declare-datatypes ((array!54004 0))(
  ( (array!54005 (arr!25954 (Array (_ BitVec 32) ValueCell!9017)) (size!26414 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54004)

(declare-fun defaultEntry!1160 () Int)

(declare-fun lt!410296 () Bool)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30295)

(declare-datatypes ((array!54006 0))(
  ( (array!54007 (arr!25955 (Array (_ BitVec 32) (_ BitVec 64))) (size!26415 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54006)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30295)

(declare-datatypes ((tuple2!12486 0))(
  ( (tuple2!12487 (_1!6253 (_ BitVec 64)) (_2!6253 V!30295)) )
))
(declare-datatypes ((List!18335 0))(
  ( (Nil!18332) (Cons!18331 (h!19477 tuple2!12486) (t!25928 List!18335)) )
))
(declare-datatypes ((ListLongMap!11197 0))(
  ( (ListLongMap!11198 (toList!5614 List!18335)) )
))
(declare-fun contains!4623 (ListLongMap!11197 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2844 (array!54006 array!54004 (_ BitVec 32) (_ BitVec 32) V!30295 V!30295 (_ BitVec 32) Int) ListLongMap!11197)

(assert (=> b!910944 (= lt!410296 (contains!4623 (getCurrentListMap!2844 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun b!910945 () Bool)

(declare-fun e!510878 () Bool)

(declare-fun e!510877 () Bool)

(declare-fun mapRes!30217 () Bool)

(assert (=> b!910945 (= e!510878 (and e!510877 mapRes!30217))))

(declare-fun condMapEmpty!30217 () Bool)

(declare-fun mapDefault!30217 () ValueCell!9017)

