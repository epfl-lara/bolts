; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113108 () Bool)

(assert start!113108)

(declare-fun b_free!31123 () Bool)

(declare-fun b_next!31123 () Bool)

(assert (=> start!113108 (= b_free!31123 (not b_next!31123))))

(declare-fun tp!109175 () Bool)

(declare-fun b_and!50163 () Bool)

(assert (=> start!113108 (= tp!109175 b_and!50163)))

(declare-fun b!1340130 () Bool)

(declare-fun res!889081 () Bool)

(declare-fun e!763372 () Bool)

(assert (=> b!1340130 (=> (not res!889081) (not e!763372))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-datatypes ((array!91057 0))(
  ( (array!91058 (arr!43980 (Array (_ BitVec 32) (_ BitVec 64))) (size!44531 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91057)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((V!54601 0))(
  ( (V!54602 (val!18636 Int)) )
))
(declare-datatypes ((ValueCell!17663 0))(
  ( (ValueCellFull!17663 (v!21282 V!54601)) (EmptyCell!17663) )
))
(declare-datatypes ((array!91059 0))(
  ( (array!91060 (arr!43981 (Array (_ BitVec 32) ValueCell!17663)) (size!44532 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91059)

(assert (=> b!1340130 (= res!889081 (and (= (size!44532 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44531 _keys!1571) (size!44532 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1340131 () Bool)

(declare-fun e!763376 () Bool)

(declare-fun e!763375 () Bool)

(declare-fun mapRes!57391 () Bool)

(assert (=> b!1340131 (= e!763376 (and e!763375 mapRes!57391))))

(declare-fun condMapEmpty!57391 () Bool)

(declare-fun mapDefault!57391 () ValueCell!17663)

