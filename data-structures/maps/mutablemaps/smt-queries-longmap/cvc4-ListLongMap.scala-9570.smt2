; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113322 () Bool)

(assert start!113322)

(declare-fun b_free!31337 () Bool)

(declare-fun b_next!31337 () Bool)

(assert (=> start!113322 (= b_free!31337 (not b_next!31337))))

(declare-fun tp!109817 () Bool)

(declare-fun b_and!50569 () Bool)

(assert (=> start!113322 (= tp!109817 b_and!50569)))

(declare-fun mapNonEmpty!57712 () Bool)

(declare-fun mapRes!57712 () Bool)

(declare-fun tp!109816 () Bool)

(declare-fun e!764981 () Bool)

(assert (=> mapNonEmpty!57712 (= mapRes!57712 (and tp!109816 e!764981))))

(declare-datatypes ((V!54885 0))(
  ( (V!54886 (val!18743 Int)) )
))
(declare-datatypes ((ValueCell!17770 0))(
  ( (ValueCellFull!17770 (v!21389 V!54885)) (EmptyCell!17770) )
))
(declare-fun mapRest!57712 () (Array (_ BitVec 32) ValueCell!17770))

(declare-fun mapKey!57712 () (_ BitVec 32))

(declare-fun mapValue!57712 () ValueCell!17770)

(declare-datatypes ((array!91473 0))(
  ( (array!91474 (arr!44188 (Array (_ BitVec 32) ValueCell!17770)) (size!44739 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91473)

(assert (=> mapNonEmpty!57712 (= (arr!44188 _values!1303) (store mapRest!57712 mapKey!57712 mapValue!57712))))

(declare-fun b!1344034 () Bool)

(declare-fun res!891829 () Bool)

(declare-fun e!764980 () Bool)

(assert (=> b!1344034 (=> (not res!891829) (not e!764980))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(declare-datatypes ((array!91475 0))(
  ( (array!91476 (arr!44189 (Array (_ BitVec 32) (_ BitVec 64))) (size!44740 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91475)

(assert (=> b!1344034 (= res!891829 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44740 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1344035 () Bool)

(declare-fun e!764977 () Bool)

(declare-fun e!764978 () Bool)

(assert (=> b!1344035 (= e!764977 (and e!764978 mapRes!57712))))

(declare-fun condMapEmpty!57712 () Bool)

(declare-fun mapDefault!57712 () ValueCell!17770)

