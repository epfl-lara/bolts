; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74198 () Bool)

(assert start!74198)

(declare-fun res!592997 () Bool)

(declare-fun e!485819 () Bool)

(assert (=> start!74198 (=> (not res!592997) (not e!485819))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50540 0))(
  ( (array!50541 (arr!24296 (Array (_ BitVec 32) (_ BitVec 64))) (size!24737 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50540)

(assert (=> start!74198 (= res!592997 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24737 _keys!868))))))

(assert (=> start!74198 e!485819))

(assert (=> start!74198 true))

(declare-fun array_inv!19154 (array!50540) Bool)

(assert (=> start!74198 (array_inv!19154 _keys!868)))

(declare-datatypes ((V!27993 0))(
  ( (V!27994 (val!8652 Int)) )
))
(declare-datatypes ((ValueCell!8165 0))(
  ( (ValueCellFull!8165 (v!11073 V!27993)) (EmptyCell!8165) )
))
(declare-datatypes ((array!50542 0))(
  ( (array!50543 (arr!24297 (Array (_ BitVec 32) ValueCell!8165)) (size!24738 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50542)

(declare-fun e!485821 () Bool)

(declare-fun array_inv!19155 (array!50542) Bool)

(assert (=> start!74198 (and (array_inv!19155 _values!688) e!485821)))

(declare-fun mapIsEmpty!27416 () Bool)

(declare-fun mapRes!27416 () Bool)

(assert (=> mapIsEmpty!27416 mapRes!27416))

(declare-fun b!872338 () Bool)

(declare-fun res!592995 () Bool)

(assert (=> b!872338 (=> (not res!592995) (not e!485819))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!872338 (= res!592995 (and (= (size!24738 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24737 _keys!868) (size!24738 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!872339 () Bool)

(declare-fun res!592998 () Bool)

(assert (=> b!872339 (=> (not res!592998) (not e!485819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872339 (= res!592998 (validMask!0 mask!1196))))

(declare-fun b!872340 () Bool)

(declare-fun e!485823 () Bool)

(assert (=> b!872340 (= e!485821 (and e!485823 mapRes!27416))))

(declare-fun condMapEmpty!27416 () Bool)

(declare-fun mapDefault!27416 () ValueCell!8165)

