; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107958 () Bool)

(assert start!107958)

(declare-fun mapIsEmpty!51371 () Bool)

(declare-fun mapRes!51371 () Bool)

(assert (=> mapIsEmpty!51371 mapRes!51371))

(declare-fun b!1275166 () Bool)

(declare-fun e!727926 () Bool)

(declare-fun tp_is_empty!33239 () Bool)

(assert (=> b!1275166 (= e!727926 tp_is_empty!33239)))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-fun b!1275168 () Bool)

(declare-datatypes ((array!83527 0))(
  ( (array!83528 (arr!40276 (Array (_ BitVec 32) (_ BitVec 64))) (size!40827 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83527)

(declare-fun e!727925 () Bool)

(declare-datatypes ((V!49421 0))(
  ( (V!49422 (val!16694 Int)) )
))
(declare-datatypes ((ValueCell!15721 0))(
  ( (ValueCellFull!15721 (v!19288 V!49421)) (EmptyCell!15721) )
))
(declare-datatypes ((array!83529 0))(
  ( (array!83530 (arr!40277 (Array (_ BitVec 32) ValueCell!15721)) (size!40828 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83529)

(assert (=> b!1275168 (= e!727925 (and (= (size!40828 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40827 _keys!1427) (size!40828 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011) (not (= (size!40827 _keys!1427) (bvadd #b00000000000000000000000000000001 mask!1805)))))))

(declare-fun b!1275169 () Bool)

(declare-fun e!727929 () Bool)

(declare-fun e!727927 () Bool)

(assert (=> b!1275169 (= e!727929 (and e!727927 mapRes!51371))))

(declare-fun condMapEmpty!51371 () Bool)

(declare-fun mapDefault!51371 () ValueCell!15721)

