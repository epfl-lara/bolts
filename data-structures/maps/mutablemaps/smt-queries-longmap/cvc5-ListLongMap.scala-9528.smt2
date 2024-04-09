; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113066 () Bool)

(assert start!113066)

(declare-fun b_free!31081 () Bool)

(declare-fun b_next!31081 () Bool)

(assert (=> start!113066 (= b_free!31081 (not b_next!31081))))

(declare-fun tp!109048 () Bool)

(declare-fun b_and!50121 () Bool)

(assert (=> start!113066 (= tp!109048 b_and!50121)))

(declare-fun b!1339591 () Bool)

(declare-fun res!888729 () Bool)

(declare-fun e!763058 () Bool)

(assert (=> b!1339591 (=> (not res!888729) (not e!763058))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!90981 0))(
  ( (array!90982 (arr!43942 (Array (_ BitVec 32) (_ BitVec 64))) (size!44493 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!90981)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1339591 (= res!888729 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44493 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1339592 () Bool)

(declare-fun e!763061 () Bool)

(declare-fun tp_is_empty!37081 () Bool)

(assert (=> b!1339592 (= e!763061 tp_is_empty!37081)))

(declare-fun b!1339593 () Bool)

(declare-fun res!888727 () Bool)

(assert (=> b!1339593 (=> (not res!888727) (not e!763058))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90981 (_ BitVec 32)) Bool)

(assert (=> b!1339593 (= res!888727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun res!888730 () Bool)

(assert (=> start!113066 (=> (not res!888730) (not e!763058))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113066 (= res!888730 (validMask!0 mask!1977))))

(assert (=> start!113066 e!763058))

(assert (=> start!113066 tp_is_empty!37081))

(assert (=> start!113066 true))

(declare-fun array_inv!33057 (array!90981) Bool)

(assert (=> start!113066 (array_inv!33057 _keys!1571)))

(declare-datatypes ((V!54545 0))(
  ( (V!54546 (val!18615 Int)) )
))
(declare-datatypes ((ValueCell!17642 0))(
  ( (ValueCellFull!17642 (v!21261 V!54545)) (EmptyCell!17642) )
))
(declare-datatypes ((array!90983 0))(
  ( (array!90984 (arr!43943 (Array (_ BitVec 32) ValueCell!17642)) (size!44494 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90983)

(declare-fun e!763060 () Bool)

(declare-fun array_inv!33058 (array!90983) Bool)

(assert (=> start!113066 (and (array_inv!33058 _values!1303) e!763060)))

(assert (=> start!113066 tp!109048))

(declare-fun mapIsEmpty!57328 () Bool)

(declare-fun mapRes!57328 () Bool)

(assert (=> mapIsEmpty!57328 mapRes!57328))

(declare-fun b!1339594 () Bool)

(assert (=> b!1339594 (= e!763060 (and e!763061 mapRes!57328))))

(declare-fun condMapEmpty!57328 () Bool)

(declare-fun mapDefault!57328 () ValueCell!17642)

