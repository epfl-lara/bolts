; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108436 () Bool)

(assert start!108436)

(declare-fun b_free!27947 () Bool)

(declare-fun b_next!27947 () Bool)

(assert (=> start!108436 (= b_free!27947 (not b_next!27947))))

(declare-fun tp!98951 () Bool)

(declare-fun b_and!46017 () Bool)

(assert (=> start!108436 (= tp!98951 b_and!46017)))

(declare-fun res!849886 () Bool)

(declare-fun e!730944 () Bool)

(assert (=> start!108436 (=> (not res!849886) (not e!730944))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108436 (= res!849886 (validMask!0 mask!2175))))

(assert (=> start!108436 e!730944))

(declare-fun tp_is_empty!33587 () Bool)

(assert (=> start!108436 tp_is_empty!33587))

(assert (=> start!108436 true))

(declare-datatypes ((V!49885 0))(
  ( (V!49886 (val!16868 Int)) )
))
(declare-datatypes ((ValueCell!15895 0))(
  ( (ValueCellFull!15895 (v!19466 V!49885)) (EmptyCell!15895) )
))
(declare-datatypes ((array!84209 0))(
  ( (array!84210 (arr!40604 (Array (_ BitVec 32) ValueCell!15895)) (size!41155 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84209)

(declare-fun e!730945 () Bool)

(declare-fun array_inv!30807 (array!84209) Bool)

(assert (=> start!108436 (and (array_inv!30807 _values!1445) e!730945)))

(declare-datatypes ((array!84211 0))(
  ( (array!84212 (arr!40605 (Array (_ BitVec 32) (_ BitVec 64))) (size!41156 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84211)

(declare-fun array_inv!30808 (array!84211) Bool)

(assert (=> start!108436 (array_inv!30808 _keys!1741)))

(assert (=> start!108436 tp!98951))

(declare-fun b!1279270 () Bool)

(declare-fun e!730943 () Bool)

(declare-fun mapRes!51932 () Bool)

(assert (=> b!1279270 (= e!730945 (and e!730943 mapRes!51932))))

(declare-fun condMapEmpty!51932 () Bool)

(declare-fun mapDefault!51932 () ValueCell!15895)

