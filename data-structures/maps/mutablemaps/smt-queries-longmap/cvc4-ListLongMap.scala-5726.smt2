; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74184 () Bool)

(assert start!74184)

(declare-fun b!872191 () Bool)

(declare-fun e!485716 () Bool)

(declare-fun tp_is_empty!17195 () Bool)

(assert (=> b!872191 (= e!485716 tp_is_empty!17195)))

(declare-fun mapNonEmpty!27395 () Bool)

(declare-fun mapRes!27395 () Bool)

(declare-fun tp!52595 () Bool)

(assert (=> mapNonEmpty!27395 (= mapRes!27395 (and tp!52595 e!485716))))

(declare-fun mapKey!27395 () (_ BitVec 32))

(declare-datatypes ((V!27973 0))(
  ( (V!27974 (val!8645 Int)) )
))
(declare-datatypes ((ValueCell!8158 0))(
  ( (ValueCellFull!8158 (v!11066 V!27973)) (EmptyCell!8158) )
))
(declare-fun mapValue!27395 () ValueCell!8158)

(declare-fun mapRest!27395 () (Array (_ BitVec 32) ValueCell!8158))

(declare-datatypes ((array!50514 0))(
  ( (array!50515 (arr!24283 (Array (_ BitVec 32) ValueCell!8158)) (size!24724 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50514)

(assert (=> mapNonEmpty!27395 (= (arr!24283 _values!688) (store mapRest!27395 mapKey!27395 mapValue!27395))))

(declare-fun b!872193 () Bool)

(declare-fun e!485715 () Bool)

(assert (=> b!872193 (= e!485715 tp_is_empty!17195)))

(declare-fun b!872194 () Bool)

(declare-fun res!592914 () Bool)

(declare-fun e!485718 () Bool)

(assert (=> b!872194 (=> (not res!592914) (not e!485718))))

(declare-datatypes ((array!50516 0))(
  ( (array!50517 (arr!24284 (Array (_ BitVec 32) (_ BitVec 64))) (size!24725 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50516)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50516 (_ BitVec 32)) Bool)

(assert (=> b!872194 (= res!592914 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!872192 () Bool)

(assert (=> b!872192 (= e!485718 false)))

(declare-fun lt!395553 () Bool)

(declare-datatypes ((List!17323 0))(
  ( (Nil!17320) (Cons!17319 (h!18450 (_ BitVec 64)) (t!24368 List!17323)) )
))
(declare-fun arrayNoDuplicates!0 (array!50516 (_ BitVec 32) List!17323) Bool)

(assert (=> b!872192 (= lt!395553 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17320))))

(declare-fun res!592911 () Bool)

(assert (=> start!74184 (=> (not res!592911) (not e!485718))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74184 (= res!592911 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24725 _keys!868))))))

(assert (=> start!74184 e!485718))

(assert (=> start!74184 true))

(declare-fun array_inv!19144 (array!50516) Bool)

(assert (=> start!74184 (array_inv!19144 _keys!868)))

(declare-fun e!485717 () Bool)

(declare-fun array_inv!19145 (array!50514) Bool)

(assert (=> start!74184 (and (array_inv!19145 _values!688) e!485717)))

(declare-fun b!872195 () Bool)

(assert (=> b!872195 (= e!485717 (and e!485715 mapRes!27395))))

(declare-fun condMapEmpty!27395 () Bool)

(declare-fun mapDefault!27395 () ValueCell!8158)

