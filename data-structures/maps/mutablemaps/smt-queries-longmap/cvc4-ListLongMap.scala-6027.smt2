; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!78078 () Bool)

(assert start!78078)

(declare-fun b_free!16577 () Bool)

(declare-fun b_next!16577 () Bool)

(assert (=> start!78078 (= b_free!16577 (not b_next!16577))))

(declare-fun tp!58002 () Bool)

(declare-fun b_and!27167 () Bool)

(assert (=> start!78078 (= tp!58002 b_and!27167)))

(declare-fun b!910923 () Bool)

(declare-fun e!510861 () Bool)

(declare-fun tp_is_empty!18995 () Bool)

(assert (=> b!910923 (= e!510861 tp_is_empty!18995)))

(declare-fun b!910924 () Bool)

(declare-fun e!510859 () Bool)

(assert (=> b!910924 (= e!510859 false)))

(declare-datatypes ((V!30291 0))(
  ( (V!30292 (val!9548 Int)) )
))
(declare-datatypes ((ValueCell!9016 0))(
  ( (ValueCellFull!9016 (v!12057 V!30291)) (EmptyCell!9016) )
))
(declare-datatypes ((array!54000 0))(
  ( (array!54001 (arr!25952 (Array (_ BitVec 32) ValueCell!9016)) (size!26412 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54000)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun zeroValue!1094 () V!30291)

(declare-datatypes ((array!54002 0))(
  ( (array!54003 (arr!25953 (Array (_ BitVec 32) (_ BitVec 64))) (size!26413 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54002)

(declare-fun k!1033 () (_ BitVec 64))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30291)

(declare-fun lt!410293 () Bool)

(declare-fun defaultEntry!1160 () Int)

(declare-datatypes ((tuple2!12484 0))(
  ( (tuple2!12485 (_1!6252 (_ BitVec 64)) (_2!6252 V!30291)) )
))
(declare-datatypes ((List!18334 0))(
  ( (Nil!18331) (Cons!18330 (h!19476 tuple2!12484) (t!25927 List!18334)) )
))
(declare-datatypes ((ListLongMap!11195 0))(
  ( (ListLongMap!11196 (toList!5613 List!18334)) )
))
(declare-fun contains!4622 (ListLongMap!11195 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2843 (array!54002 array!54000 (_ BitVec 32) (_ BitVec 32) V!30291 V!30291 (_ BitVec 32) Int) ListLongMap!11195)

(assert (=> b!910924 (= lt!410293 (contains!4622 (getCurrentListMap!2843 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k!1033))))

(declare-fun res!614737 () Bool)

(assert (=> start!78078 (=> (not res!614737) (not e!510859))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78078 (= res!614737 (validMask!0 mask!1756))))

(assert (=> start!78078 e!510859))

(declare-fun e!510862 () Bool)

(declare-fun array_inv!20274 (array!54000) Bool)

(assert (=> start!78078 (and (array_inv!20274 _values!1152) e!510862)))

(assert (=> start!78078 tp!58002))

(assert (=> start!78078 true))

(assert (=> start!78078 tp_is_empty!18995))

(declare-fun array_inv!20275 (array!54002) Bool)

(assert (=> start!78078 (array_inv!20275 _keys!1386)))

(declare-fun b!910925 () Bool)

(declare-fun mapRes!30214 () Bool)

(assert (=> b!910925 (= e!510862 (and e!510861 mapRes!30214))))

(declare-fun condMapEmpty!30214 () Bool)

(declare-fun mapDefault!30214 () ValueCell!9016)

