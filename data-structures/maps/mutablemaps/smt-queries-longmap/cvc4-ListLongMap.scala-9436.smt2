; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112264 () Bool)

(assert start!112264)

(declare-fun b_free!30623 () Bool)

(declare-fun b_next!30623 () Bool)

(assert (=> start!112264 (= b_free!30623 (not b_next!30623))))

(declare-fun tp!107506 () Bool)

(declare-fun b_and!49311 () Bool)

(assert (=> start!112264 (= tp!107506 b_and!49311)))

(declare-fun b!1329298 () Bool)

(declare-fun res!882094 () Bool)

(declare-fun e!757849 () Bool)

(assert (=> b!1329298 (=> (not res!882094) (not e!757849))))

(declare-datatypes ((array!89921 0))(
  ( (array!89922 (arr!43422 (Array (_ BitVec 32) (_ BitVec 64))) (size!43973 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!89921)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1329298 (= res!882094 (validKeyInArray!0 (select (arr!43422 _keys!1590) from!1980)))))

(declare-fun b!1329299 () Bool)

(declare-fun e!757848 () Bool)

(declare-fun e!757846 () Bool)

(declare-fun mapRes!56473 () Bool)

(assert (=> b!1329299 (= e!757848 (and e!757846 mapRes!56473))))

(declare-fun condMapEmpty!56473 () Bool)

(declare-datatypes ((V!53813 0))(
  ( (V!53814 (val!18341 Int)) )
))
(declare-datatypes ((ValueCell!17368 0))(
  ( (ValueCellFull!17368 (v!20976 V!53813)) (EmptyCell!17368) )
))
(declare-datatypes ((array!89923 0))(
  ( (array!89924 (arr!43423 (Array (_ BitVec 32) ValueCell!17368)) (size!43974 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!89923)

(declare-fun mapDefault!56473 () ValueCell!17368)

