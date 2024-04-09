; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74542 () Bool)

(assert start!74542)

(declare-fun b_free!15203 () Bool)

(declare-fun b_next!15203 () Bool)

(assert (=> start!74542 (= b_free!15203 (not b_next!15203))))

(declare-fun tp!53292 () Bool)

(declare-fun b_and!25097 () Bool)

(assert (=> start!74542 (= tp!53292 b_and!25097)))

(declare-fun mapIsEmpty!27786 () Bool)

(declare-fun mapRes!27786 () Bool)

(assert (=> mapIsEmpty!27786 mapRes!27786))

(declare-fun b!877535 () Bool)

(declare-fun res!596253 () Bool)

(declare-fun e!488505 () Bool)

(assert (=> b!877535 (=> (not res!596253) (not e!488505))))

(declare-datatypes ((array!51004 0))(
  ( (array!51005 (arr!24524 (Array (_ BitVec 32) (_ BitVec 64))) (size!24965 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51004)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51004 (_ BitVec 32)) Bool)

(assert (=> b!877535 (= res!596253 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!877536 () Bool)

(declare-fun res!596251 () Bool)

(assert (=> b!877536 (=> (not res!596251) (not e!488505))))

(declare-datatypes ((List!17495 0))(
  ( (Nil!17492) (Cons!17491 (h!18622 (_ BitVec 64)) (t!24592 List!17495)) )
))
(declare-fun arrayNoDuplicates!0 (array!51004 (_ BitVec 32) List!17495) Bool)

(assert (=> b!877536 (= res!596251 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17492))))

(declare-fun b!877537 () Bool)

(declare-fun res!596249 () Bool)

(assert (=> b!877537 (=> (not res!596249) (not e!488505))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!28309 0))(
  ( (V!28310 (val!8771 Int)) )
))
(declare-datatypes ((ValueCell!8284 0))(
  ( (ValueCellFull!8284 (v!11207 V!28309)) (EmptyCell!8284) )
))
(declare-datatypes ((array!51006 0))(
  ( (array!51007 (arr!24525 (Array (_ BitVec 32) ValueCell!8284)) (size!24966 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51006)

(assert (=> b!877537 (= res!596249 (and (= (size!24966 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24965 _keys!868) (size!24966 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!877538 () Bool)

(declare-fun e!488506 () Bool)

(declare-fun tp_is_empty!17447 () Bool)

(assert (=> b!877538 (= e!488506 tp_is_empty!17447)))

(declare-fun mapNonEmpty!27786 () Bool)

(declare-fun tp!53291 () Bool)

(declare-fun e!488508 () Bool)

(assert (=> mapNonEmpty!27786 (= mapRes!27786 (and tp!53291 e!488508))))

(declare-fun mapRest!27786 () (Array (_ BitVec 32) ValueCell!8284))

(declare-fun mapKey!27786 () (_ BitVec 32))

(declare-fun mapValue!27786 () ValueCell!8284)

(assert (=> mapNonEmpty!27786 (= (arr!24525 _values!688) (store mapRest!27786 mapKey!27786 mapValue!27786))))

(declare-fun res!596248 () Bool)

(assert (=> start!74542 (=> (not res!596248) (not e!488505))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74542 (= res!596248 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24965 _keys!868))))))

(assert (=> start!74542 e!488505))

(assert (=> start!74542 tp_is_empty!17447))

(assert (=> start!74542 true))

(assert (=> start!74542 tp!53292))

(declare-fun array_inv!19314 (array!51004) Bool)

(assert (=> start!74542 (array_inv!19314 _keys!868)))

(declare-fun e!488504 () Bool)

(declare-fun array_inv!19315 (array!51006) Bool)

(assert (=> start!74542 (and (array_inv!19315 _values!688) e!488504)))

(declare-fun b!877539 () Bool)

(assert (=> b!877539 (= e!488504 (and e!488506 mapRes!27786))))

(declare-fun condMapEmpty!27786 () Bool)

(declare-fun mapDefault!27786 () ValueCell!8284)

