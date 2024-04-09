; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78110 () Bool)

(assert start!78110)

(declare-fun b_free!16609 () Bool)

(declare-fun b_next!16609 () Bool)

(assert (=> start!78110 (= b_free!16609 (not b_next!16609))))

(declare-fun tp!58099 () Bool)

(declare-fun b_and!27199 () Bool)

(assert (=> start!78110 (= tp!58099 b_and!27199)))

(declare-fun b!911263 () Bool)

(declare-fun res!614933 () Bool)

(declare-fun e!511101 () Bool)

(assert (=> b!911263 (=> (not res!614933) (not e!511101))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!911263 (= res!614933 (inRange!0 i!717 mask!1756))))

(declare-fun b!911264 () Bool)

(declare-fun res!614938 () Bool)

(assert (=> b!911264 (=> (not res!614938) (not e!511101))))

(declare-datatypes ((V!30335 0))(
  ( (V!30336 (val!9564 Int)) )
))
(declare-datatypes ((ValueCell!9032 0))(
  ( (ValueCellFull!9032 (v!12073 V!30335)) (EmptyCell!9032) )
))
(declare-datatypes ((array!54060 0))(
  ( (array!54061 (arr!25982 (Array (_ BitVec 32) ValueCell!9032)) (size!26442 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54060)

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30335)

(declare-datatypes ((array!54062 0))(
  ( (array!54063 (arr!25983 (Array (_ BitVec 32) (_ BitVec 64))) (size!26443 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54062)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30335)

(declare-datatypes ((tuple2!12508 0))(
  ( (tuple2!12509 (_1!6264 (_ BitVec 64)) (_2!6264 V!30335)) )
))
(declare-datatypes ((List!18355 0))(
  ( (Nil!18352) (Cons!18351 (h!19497 tuple2!12508) (t!25948 List!18355)) )
))
(declare-datatypes ((ListLongMap!11219 0))(
  ( (ListLongMap!11220 (toList!5625 List!18355)) )
))
(declare-fun contains!4634 (ListLongMap!11219 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2855 (array!54062 array!54060 (_ BitVec 32) (_ BitVec 32) V!30335 V!30335 (_ BitVec 32) Int) ListLongMap!11219)

(assert (=> b!911264 (= res!614938 (contains!4634 (getCurrentListMap!2855 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun mapIsEmpty!30262 () Bool)

(declare-fun mapRes!30262 () Bool)

(assert (=> mapIsEmpty!30262 mapRes!30262))

(declare-fun mapNonEmpty!30262 () Bool)

(declare-fun tp!58098 () Bool)

(declare-fun e!511103 () Bool)

(assert (=> mapNonEmpty!30262 (= mapRes!30262 (and tp!58098 e!511103))))

(declare-fun mapValue!30262 () ValueCell!9032)

(declare-fun mapRest!30262 () (Array (_ BitVec 32) ValueCell!9032))

(declare-fun mapKey!30262 () (_ BitVec 32))

(assert (=> mapNonEmpty!30262 (= (arr!25982 _values!1152) (store mapRest!30262 mapKey!30262 mapValue!30262))))

(declare-fun b!911265 () Bool)

(declare-fun e!511100 () Bool)

(declare-fun e!511099 () Bool)

(assert (=> b!911265 (= e!511100 (and e!511099 mapRes!30262))))

(declare-fun condMapEmpty!30262 () Bool)

(declare-fun mapDefault!30262 () ValueCell!9032)

