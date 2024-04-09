; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74204 () Bool)

(assert start!74204)

(declare-fun b!872401 () Bool)

(declare-fun e!485866 () Bool)

(assert (=> b!872401 (= e!485866 false)))

(declare-fun lt!395583 () Bool)

(declare-datatypes ((array!50552 0))(
  ( (array!50553 (arr!24302 (Array (_ BitVec 32) (_ BitVec 64))) (size!24743 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50552)

(declare-datatypes ((List!17330 0))(
  ( (Nil!17327) (Cons!17326 (h!18457 (_ BitVec 64)) (t!24375 List!17330)) )
))
(declare-fun arrayNoDuplicates!0 (array!50552 (_ BitVec 32) List!17330) Bool)

(assert (=> b!872401 (= lt!395583 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17327))))

(declare-fun b!872402 () Bool)

(declare-fun e!485864 () Bool)

(declare-fun tp_is_empty!17215 () Bool)

(assert (=> b!872402 (= e!485864 tp_is_empty!17215)))

(declare-fun res!593034 () Bool)

(assert (=> start!74204 (=> (not res!593034) (not e!485866))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74204 (= res!593034 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24743 _keys!868))))))

(assert (=> start!74204 e!485866))

(assert (=> start!74204 true))

(declare-fun array_inv!19158 (array!50552) Bool)

(assert (=> start!74204 (array_inv!19158 _keys!868)))

(declare-datatypes ((V!28001 0))(
  ( (V!28002 (val!8655 Int)) )
))
(declare-datatypes ((ValueCell!8168 0))(
  ( (ValueCellFull!8168 (v!11076 V!28001)) (EmptyCell!8168) )
))
(declare-datatypes ((array!50554 0))(
  ( (array!50555 (arr!24303 (Array (_ BitVec 32) ValueCell!8168)) (size!24744 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50554)

(declare-fun e!485868 () Bool)

(declare-fun array_inv!19159 (array!50554) Bool)

(assert (=> start!74204 (and (array_inv!19159 _values!688) e!485868)))

(declare-fun b!872403 () Bool)

(declare-fun res!593031 () Bool)

(assert (=> b!872403 (=> (not res!593031) (not e!485866))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!872403 (= res!593031 (and (= (size!24744 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24743 _keys!868) (size!24744 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!872404 () Bool)

(declare-fun res!593033 () Bool)

(assert (=> b!872404 (=> (not res!593033) (not e!485866))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50552 (_ BitVec 32)) Bool)

(assert (=> b!872404 (= res!593033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!872405 () Bool)

(declare-fun res!593032 () Bool)

(assert (=> b!872405 (=> (not res!593032) (not e!485866))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872405 (= res!593032 (validMask!0 mask!1196))))

(declare-fun b!872406 () Bool)

(declare-fun e!485865 () Bool)

(assert (=> b!872406 (= e!485865 tp_is_empty!17215)))

(declare-fun b!872407 () Bool)

(declare-fun mapRes!27425 () Bool)

(assert (=> b!872407 (= e!485868 (and e!485864 mapRes!27425))))

(declare-fun condMapEmpty!27425 () Bool)

(declare-fun mapDefault!27425 () ValueCell!8168)

