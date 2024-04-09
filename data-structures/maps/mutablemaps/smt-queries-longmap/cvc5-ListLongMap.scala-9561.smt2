; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113264 () Bool)

(assert start!113264)

(declare-fun b_free!31279 () Bool)

(declare-fun b_next!31279 () Bool)

(assert (=> start!113264 (= b_free!31279 (not b_next!31279))))

(declare-fun tp!109643 () Bool)

(declare-fun b_and!50475 () Bool)

(assert (=> start!113264 (= tp!109643 b_and!50475)))

(declare-fun res!891189 () Bool)

(declare-fun e!764546 () Bool)

(assert (=> start!113264 (=> (not res!891189) (not e!764546))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113264 (= res!891189 (validMask!0 mask!1977))))

(assert (=> start!113264 e!764546))

(declare-fun tp_is_empty!37279 () Bool)

(assert (=> start!113264 tp_is_empty!37279))

(assert (=> start!113264 true))

(declare-datatypes ((array!91359 0))(
  ( (array!91360 (arr!44131 (Array (_ BitVec 32) (_ BitVec 64))) (size!44682 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91359)

(declare-fun array_inv!33181 (array!91359) Bool)

(assert (=> start!113264 (array_inv!33181 _keys!1571)))

(declare-datatypes ((V!54809 0))(
  ( (V!54810 (val!18714 Int)) )
))
(declare-datatypes ((ValueCell!17741 0))(
  ( (ValueCellFull!17741 (v!21360 V!54809)) (EmptyCell!17741) )
))
(declare-datatypes ((array!91361 0))(
  ( (array!91362 (arr!44132 (Array (_ BitVec 32) ValueCell!17741)) (size!44683 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91361)

(declare-fun e!764544 () Bool)

(declare-fun array_inv!33182 (array!91361) Bool)

(assert (=> start!113264 (and (array_inv!33182 _values!1303) e!764544)))

(assert (=> start!113264 tp!109643))

(declare-fun b!1343094 () Bool)

(declare-fun res!891184 () Bool)

(assert (=> b!1343094 (=> (not res!891184) (not e!764546))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1343094 (= res!891184 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1343095 () Bool)

(declare-fun res!891188 () Bool)

(assert (=> b!1343095 (=> (not res!891188) (not e!764546))))

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1343095 (= res!891188 (validKeyInArray!0 (select (arr!44131 _keys!1571) from!1960)))))

(declare-fun b!1343096 () Bool)

(declare-fun res!891185 () Bool)

(assert (=> b!1343096 (=> (not res!891185) (not e!764546))))

(assert (=> b!1343096 (= res!891185 (and (= (size!44683 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44682 _keys!1571) (size!44683 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1343097 () Bool)

(declare-fun e!764545 () Bool)

(declare-fun mapRes!57625 () Bool)

(assert (=> b!1343097 (= e!764544 (and e!764545 mapRes!57625))))

(declare-fun condMapEmpty!57625 () Bool)

(declare-fun mapDefault!57625 () ValueCell!17741)

