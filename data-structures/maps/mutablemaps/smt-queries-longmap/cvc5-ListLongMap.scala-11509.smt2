; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133970 () Bool)

(assert start!133970)

(declare-fun b_free!32161 () Bool)

(declare-fun b_next!32161 () Bool)

(assert (=> start!133970 (= b_free!32161 (not b_next!32161))))

(declare-fun tp!113786 () Bool)

(declare-fun b_and!51773 () Bool)

(assert (=> start!133970 (= tp!113786 b_and!51773)))

(declare-fun res!1070269 () Bool)

(declare-fun e!872654 () Bool)

(assert (=> start!133970 (=> (not res!1070269) (not e!872654))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!133970 (= res!1070269 (validMask!0 mask!947))))

(assert (=> start!133970 e!872654))

(assert (=> start!133970 tp!113786))

(declare-fun tp_is_empty!38935 () Bool)

(assert (=> start!133970 tp_is_empty!38935))

(assert (=> start!133970 true))

(declare-datatypes ((array!104531 0))(
  ( (array!104532 (arr!50448 (Array (_ BitVec 32) (_ BitVec 64))) (size!50999 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104531)

(declare-fun array_inv!39119 (array!104531) Bool)

(assert (=> start!133970 (array_inv!39119 _keys!637)))

(declare-datatypes ((V!60121 0))(
  ( (V!60122 (val!19551 Int)) )
))
(declare-datatypes ((ValueCell!18437 0))(
  ( (ValueCellFull!18437 (v!22304 V!60121)) (EmptyCell!18437) )
))
(declare-datatypes ((array!104533 0))(
  ( (array!104534 (arr!50449 (Array (_ BitVec 32) ValueCell!18437)) (size!51000 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104533)

(declare-fun e!872652 () Bool)

(declare-fun array_inv!39120 (array!104533) Bool)

(assert (=> start!133970 (and (array_inv!39120 _values!487) e!872652)))

(declare-fun b!1565568 () Bool)

(declare-fun e!872653 () Bool)

(declare-fun mapRes!59794 () Bool)

(assert (=> b!1565568 (= e!872652 (and e!872653 mapRes!59794))))

(declare-fun condMapEmpty!59794 () Bool)

(declare-fun mapDefault!59794 () ValueCell!18437)

