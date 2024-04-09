; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133776 () Bool)

(assert start!133776)

(declare-fun b_free!32107 () Bool)

(declare-fun b_next!32107 () Bool)

(assert (=> start!133776 (= b_free!32107 (not b_next!32107))))

(declare-fun tp!113527 () Bool)

(declare-fun b_and!51687 () Bool)

(assert (=> start!133776 (= tp!113527 b_and!51687)))

(declare-fun b!1563748 () Bool)

(declare-fun res!1069166 () Bool)

(declare-fun e!871566 () Bool)

(assert (=> b!1563748 (=> (not res!1069166) (not e!871566))))

(declare-fun mask!947 () (_ BitVec 32))

(declare-fun extraKeys!434 () (_ BitVec 32))

(declare-datatypes ((array!104315 0))(
  ( (array!104316 (arr!50345 (Array (_ BitVec 32) (_ BitVec 64))) (size!50896 (_ BitVec 32))) )
))
(declare-fun _keys!637 () array!104315)

(declare-datatypes ((V!59977 0))(
  ( (V!59978 (val!19497 Int)) )
))
(declare-datatypes ((ValueCell!18383 0))(
  ( (ValueCellFull!18383 (v!22246 V!59977)) (EmptyCell!18383) )
))
(declare-datatypes ((array!104317 0))(
  ( (array!104318 (arr!50346 (Array (_ BitVec 32) ValueCell!18383)) (size!50897 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104317)

(assert (=> b!1563748 (= res!1069166 (and (= (size!50897 _values!487) (bvadd #b00000000000000000000000000000001 mask!947)) (= (size!50896 _keys!637) (size!50897 _values!487)) (bvsge mask!947 #b00000000000000000000000000000000) (bvsge extraKeys!434 #b00000000000000000000000000000000) (bvsle extraKeys!434 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!59616 () Bool)

(declare-fun mapRes!59616 () Bool)

(assert (=> mapIsEmpty!59616 mapRes!59616))

(declare-fun b!1563749 () Bool)

(declare-fun e!871569 () Bool)

(declare-fun tp_is_empty!38827 () Bool)

(assert (=> b!1563749 (= e!871569 tp_is_empty!38827)))

(declare-fun b!1563750 () Bool)

(declare-fun e!871567 () Bool)

(declare-fun e!871571 () Bool)

(assert (=> b!1563750 (= e!871567 (and e!871571 mapRes!59616))))

(declare-fun condMapEmpty!59616 () Bool)

(declare-fun mapDefault!59616 () ValueCell!18383)

