; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74220 () Bool)

(assert start!74220)

(declare-fun mapNonEmpty!27449 () Bool)

(declare-fun mapRes!27449 () Bool)

(declare-fun tp!52649 () Bool)

(declare-fun e!485984 () Bool)

(assert (=> mapNonEmpty!27449 (= mapRes!27449 (and tp!52649 e!485984))))

(declare-datatypes ((V!28021 0))(
  ( (V!28022 (val!8663 Int)) )
))
(declare-datatypes ((ValueCell!8176 0))(
  ( (ValueCellFull!8176 (v!11084 V!28021)) (EmptyCell!8176) )
))
(declare-fun mapValue!27449 () ValueCell!8176)

(declare-fun mapKey!27449 () (_ BitVec 32))

(declare-fun mapRest!27449 () (Array (_ BitVec 32) ValueCell!8176))

(declare-datatypes ((array!50582 0))(
  ( (array!50583 (arr!24317 (Array (_ BitVec 32) ValueCell!8176)) (size!24758 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50582)

(assert (=> mapNonEmpty!27449 (= (arr!24317 _values!688) (store mapRest!27449 mapKey!27449 mapValue!27449))))

(declare-fun res!593154 () Bool)

(declare-fun e!485988 () Bool)

(assert (=> start!74220 (=> (not res!593154) (not e!485988))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50584 0))(
  ( (array!50585 (arr!24318 (Array (_ BitVec 32) (_ BitVec 64))) (size!24759 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50584)

(assert (=> start!74220 (= res!593154 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24759 _keys!868))))))

(assert (=> start!74220 e!485988))

(assert (=> start!74220 true))

(declare-fun array_inv!19170 (array!50584) Bool)

(assert (=> start!74220 (array_inv!19170 _keys!868)))

(declare-fun e!485985 () Bool)

(declare-fun array_inv!19171 (array!50582) Bool)

(assert (=> start!74220 (and (array_inv!19171 _values!688) e!485985)))

(declare-fun b!872593 () Bool)

(declare-fun res!593155 () Bool)

(assert (=> b!872593 (=> (not res!593155) (not e!485988))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872593 (= res!593155 (validMask!0 mask!1196))))

(declare-fun b!872594 () Bool)

(declare-fun res!593153 () Bool)

(assert (=> b!872594 (=> (not res!593153) (not e!485988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50584 (_ BitVec 32)) Bool)

(assert (=> b!872594 (= res!593153 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!872595 () Bool)

(declare-fun res!593152 () Bool)

(assert (=> b!872595 (=> (not res!593152) (not e!485988))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!872595 (= res!593152 (validKeyInArray!0 k!854))))

(declare-fun b!872596 () Bool)

(declare-fun e!485986 () Bool)

(assert (=> b!872596 (= e!485985 (and e!485986 mapRes!27449))))

(declare-fun condMapEmpty!27449 () Bool)

(declare-fun mapDefault!27449 () ValueCell!8176)

