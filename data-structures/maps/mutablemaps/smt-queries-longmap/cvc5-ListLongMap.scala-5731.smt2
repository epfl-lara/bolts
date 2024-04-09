; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74210 () Bool)

(assert start!74210)

(declare-fun b!872464 () Bool)

(declare-fun res!593067 () Bool)

(declare-fun e!485913 () Bool)

(assert (=> b!872464 (=> (not res!593067) (not e!485913))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872464 (= res!593067 (validMask!0 mask!1196))))

(declare-fun b!872465 () Bool)

(declare-fun res!593068 () Bool)

(assert (=> b!872465 (=> (not res!593068) (not e!485913))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!50562 0))(
  ( (array!50563 (arr!24307 (Array (_ BitVec 32) (_ BitVec 64))) (size!24748 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50562)

(declare-datatypes ((V!28009 0))(
  ( (V!28010 (val!8658 Int)) )
))
(declare-datatypes ((ValueCell!8171 0))(
  ( (ValueCellFull!8171 (v!11079 V!28009)) (EmptyCell!8171) )
))
(declare-datatypes ((array!50564 0))(
  ( (array!50565 (arr!24308 (Array (_ BitVec 32) ValueCell!8171)) (size!24749 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50564)

(assert (=> b!872465 (= res!593068 (and (= (size!24749 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24748 _keys!868) (size!24749 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!872466 () Bool)

(declare-fun e!485911 () Bool)

(declare-fun tp_is_empty!17221 () Bool)

(assert (=> b!872466 (= e!485911 tp_is_empty!17221)))

(declare-fun mapNonEmpty!27434 () Bool)

(declare-fun mapRes!27434 () Bool)

(declare-fun tp!52634 () Bool)

(declare-fun e!485909 () Bool)

(assert (=> mapNonEmpty!27434 (= mapRes!27434 (and tp!52634 e!485909))))

(declare-fun mapValue!27434 () ValueCell!8171)

(declare-fun mapRest!27434 () (Array (_ BitVec 32) ValueCell!8171))

(declare-fun mapKey!27434 () (_ BitVec 32))

(assert (=> mapNonEmpty!27434 (= (arr!24308 _values!688) (store mapRest!27434 mapKey!27434 mapValue!27434))))

(declare-fun b!872467 () Bool)

(declare-fun e!485912 () Bool)

(assert (=> b!872467 (= e!485912 (and e!485911 mapRes!27434))))

(declare-fun condMapEmpty!27434 () Bool)

(declare-fun mapDefault!27434 () ValueCell!8171)

