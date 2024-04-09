; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108108 () Bool)

(assert start!108108)

(declare-fun b_free!27785 () Bool)

(declare-fun b_next!27785 () Bool)

(assert (=> start!108108 (= b_free!27785 (not b_next!27785))))

(declare-fun tp!98310 () Bool)

(declare-fun b_and!45851 () Bool)

(assert (=> start!108108 (= tp!98310 b_and!45851)))

(declare-fun b!1276215 () Bool)

(declare-fun res!848233 () Bool)

(declare-fun e!728771 () Bool)

(assert (=> b!1276215 (=> (not res!848233) (not e!728771))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(declare-datatypes ((array!83721 0))(
  ( (array!83722 (arr!40367 (Array (_ BitVec 32) (_ BitVec 64))) (size!40918 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83721)

(declare-datatypes ((V!49549 0))(
  ( (V!49550 (val!16742 Int)) )
))
(declare-datatypes ((ValueCell!15769 0))(
  ( (ValueCellFull!15769 (v!19337 V!49549)) (EmptyCell!15769) )
))
(declare-datatypes ((array!83723 0))(
  ( (array!83724 (arr!40368 (Array (_ BitVec 32) ValueCell!15769)) (size!40919 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83723)

(assert (=> b!1276215 (= res!848233 (and (= (size!40919 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40918 _keys!1427) (size!40919 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1276216 () Bool)

(declare-fun e!728769 () Bool)

(declare-fun e!728767 () Bool)

(declare-fun mapRes!51533 () Bool)

(assert (=> b!1276216 (= e!728769 (and e!728767 mapRes!51533))))

(declare-fun condMapEmpty!51533 () Bool)

(declare-fun mapDefault!51533 () ValueCell!15769)

