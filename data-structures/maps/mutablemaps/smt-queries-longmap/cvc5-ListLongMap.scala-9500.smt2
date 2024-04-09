; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112702 () Bool)

(assert start!112702)

(declare-fun b_free!31003 () Bool)

(declare-fun b_next!31003 () Bool)

(assert (=> start!112702 (= b_free!31003 (not b_next!31003))))

(declare-fun tp!108650 () Bool)

(declare-fun b_and!49953 () Bool)

(assert (=> start!112702 (= tp!108650 b_and!49953)))

(declare-fun b!1336266 () Bool)

(declare-fun res!886878 () Bool)

(declare-fun e!761019 () Bool)

(assert (=> b!1336266 (=> (not res!886878) (not e!761019))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun extraKeys!1241 () (_ BitVec 32))

(declare-datatypes ((array!90659 0))(
  ( (array!90660 (arr!43790 (Array (_ BitVec 32) (_ BitVec 64))) (size!44341 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90659)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1336266 (= res!886878 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44341 _keys!1590)) (not (= k!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1336267 () Bool)

(declare-fun res!886881 () Bool)

(assert (=> b!1336267 (=> (not res!886881) (not e!761019))))

(assert (=> b!1336267 (= res!886881 (not (= (select (arr!43790 _keys!1590) from!1980) k!1153)))))

(declare-fun b!1336268 () Bool)

(declare-fun res!886882 () Bool)

(assert (=> b!1336268 (=> (not res!886882) (not e!761019))))

(declare-datatypes ((V!54321 0))(
  ( (V!54322 (val!18531 Int)) )
))
(declare-datatypes ((ValueCell!17558 0))(
  ( (ValueCellFull!17558 (v!21169 V!54321)) (EmptyCell!17558) )
))
(declare-datatypes ((array!90661 0))(
  ( (array!90662 (arr!43791 (Array (_ BitVec 32) ValueCell!17558)) (size!44342 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90661)

(declare-fun mask!1998 () (_ BitVec 32))

(assert (=> b!1336268 (= res!886882 (and (= (size!44342 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44341 _keys!1590) (size!44342 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1336269 () Bool)

(declare-fun e!761021 () Bool)

(declare-fun e!761023 () Bool)

(declare-fun mapRes!57047 () Bool)

(assert (=> b!1336269 (= e!761021 (and e!761023 mapRes!57047))))

(declare-fun condMapEmpty!57047 () Bool)

(declare-fun mapDefault!57047 () ValueCell!17558)

