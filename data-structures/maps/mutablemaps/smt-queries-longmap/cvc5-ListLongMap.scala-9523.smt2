; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113036 () Bool)

(assert start!113036)

(declare-fun b!1339272 () Bool)

(declare-fun res!888544 () Bool)

(declare-fun e!762836 () Bool)

(assert (=> b!1339272 (=> (not res!888544) (not e!762836))))

(declare-datatypes ((array!90921 0))(
  ( (array!90922 (arr!43912 (Array (_ BitVec 32) (_ BitVec 64))) (size!44463 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90921)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90921 (_ BitVec 32)) Bool)

(assert (=> b!1339272 (= res!888544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1339273 () Bool)

(declare-fun res!888545 () Bool)

(assert (=> b!1339273 (=> (not res!888545) (not e!762836))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54505 0))(
  ( (V!54506 (val!18600 Int)) )
))
(declare-datatypes ((ValueCell!17627 0))(
  ( (ValueCellFull!17627 (v!21246 V!54505)) (EmptyCell!17627) )
))
(declare-datatypes ((array!90923 0))(
  ( (array!90924 (arr!43913 (Array (_ BitVec 32) ValueCell!17627)) (size!44464 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90923)

(assert (=> b!1339273 (= res!888545 (and (= (size!44464 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44463 _keys!1571) (size!44464 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!57283 () Bool)

(declare-fun mapRes!57283 () Bool)

(assert (=> mapIsEmpty!57283 mapRes!57283))

(declare-fun b!1339274 () Bool)

(declare-fun e!762835 () Bool)

(declare-fun e!762833 () Bool)

(assert (=> b!1339274 (= e!762835 (and e!762833 mapRes!57283))))

(declare-fun condMapEmpty!57283 () Bool)

(declare-fun mapDefault!57283 () ValueCell!17627)

