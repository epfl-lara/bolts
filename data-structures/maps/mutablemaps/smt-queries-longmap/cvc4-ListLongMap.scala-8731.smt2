; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105920 () Bool)

(assert start!105920)

(declare-fun b_free!27425 () Bool)

(declare-fun b_next!27425 () Bool)

(assert (=> start!105920 (= b_free!27425 (not b_next!27425))))

(declare-fun tp!95808 () Bool)

(declare-fun b_and!45343 () Bool)

(assert (=> start!105920 (= tp!95808 b_and!45343)))

(declare-fun res!840463 () Bool)

(declare-fun e!717760 () Bool)

(assert (=> start!105920 (=> (not res!840463) (not e!717760))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105920 (= res!840463 (validMask!0 mask!1466))))

(assert (=> start!105920 e!717760))

(assert (=> start!105920 true))

(assert (=> start!105920 tp!95808))

(declare-fun tp_is_empty!32327 () Bool)

(assert (=> start!105920 tp_is_empty!32327))

(declare-datatypes ((array!82257 0))(
  ( (array!82258 (arr!39677 (Array (_ BitVec 32) (_ BitVec 64))) (size!40214 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82257)

(declare-fun array_inv!30157 (array!82257) Bool)

(assert (=> start!105920 (array_inv!30157 _keys!1118)))

(declare-datatypes ((V!48467 0))(
  ( (V!48468 (val!16226 Int)) )
))
(declare-datatypes ((ValueCell!15400 0))(
  ( (ValueCellFull!15400 (v!18930 V!48467)) (EmptyCell!15400) )
))
(declare-datatypes ((array!82259 0))(
  ( (array!82260 (arr!39678 (Array (_ BitVec 32) ValueCell!15400)) (size!40215 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82259)

(declare-fun e!717756 () Bool)

(declare-fun array_inv!30158 (array!82259) Bool)

(assert (=> start!105920 (and (array_inv!30158 _values!914) e!717756)))

(declare-fun b!1261112 () Bool)

(declare-fun e!717757 () Bool)

(declare-fun mapRes!50293 () Bool)

(assert (=> b!1261112 (= e!717756 (and e!717757 mapRes!50293))))

(declare-fun condMapEmpty!50293 () Bool)

(declare-fun mapDefault!50293 () ValueCell!15400)

