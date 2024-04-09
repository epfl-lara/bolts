; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74102 () Bool)

(assert start!74102)

(declare-fun b!871295 () Bool)

(declare-fun e!485144 () Bool)

(assert (=> b!871295 (= e!485144 false)))

(declare-fun lt!395412 () Bool)

(declare-datatypes ((array!50378 0))(
  ( (array!50379 (arr!24216 (Array (_ BitVec 32) (_ BitVec 64))) (size!24657 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50378)

(declare-datatypes ((List!17294 0))(
  ( (Nil!17291) (Cons!17290 (h!18421 (_ BitVec 64)) (t!24339 List!17294)) )
))
(declare-fun arrayNoDuplicates!0 (array!50378 (_ BitVec 32) List!17294) Bool)

(assert (=> b!871295 (= lt!395412 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17291))))

(declare-fun b!871296 () Bool)

(declare-fun res!592368 () Bool)

(assert (=> b!871296 (=> (not res!592368) (not e!485144))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871296 (= res!592368 (validMask!0 mask!1196))))

(declare-fun b!871297 () Bool)

(declare-fun e!485145 () Bool)

(declare-fun tp_is_empty!17125 () Bool)

(assert (=> b!871297 (= e!485145 tp_is_empty!17125)))

(declare-fun b!871298 () Bool)

(declare-fun res!592369 () Bool)

(assert (=> b!871298 (=> (not res!592369) (not e!485144))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!27881 0))(
  ( (V!27882 (val!8610 Int)) )
))
(declare-datatypes ((ValueCell!8123 0))(
  ( (ValueCellFull!8123 (v!11031 V!27881)) (EmptyCell!8123) )
))
(declare-datatypes ((array!50380 0))(
  ( (array!50381 (arr!24217 (Array (_ BitVec 32) ValueCell!8123)) (size!24658 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50380)

(assert (=> b!871298 (= res!592369 (and (= (size!24658 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24657 _keys!868) (size!24658 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!871299 () Bool)

(declare-fun res!592371 () Bool)

(assert (=> b!871299 (=> (not res!592371) (not e!485144))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50378 (_ BitVec 32)) Bool)

(assert (=> b!871299 (= res!592371 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!871300 () Bool)

(declare-fun e!485147 () Bool)

(declare-fun mapRes!27287 () Bool)

(assert (=> b!871300 (= e!485147 (and e!485145 mapRes!27287))))

(declare-fun condMapEmpty!27287 () Bool)

(declare-fun mapDefault!27287 () ValueCell!8123)

