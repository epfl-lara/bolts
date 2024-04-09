; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113384 () Bool)

(assert start!113384)

(declare-fun b_free!31399 () Bool)

(declare-fun b_next!31399 () Bool)

(assert (=> start!113384 (= b_free!31399 (not b_next!31399))))

(declare-fun tp!110002 () Bool)

(declare-fun b_and!50661 () Bool)

(assert (=> start!113384 (= tp!110002 b_and!50661)))

(declare-fun b!1345082 () Bool)

(declare-fun res!892566 () Bool)

(declare-fun e!765475 () Bool)

(assert (=> b!1345082 (=> (not res!892566) (not e!765475))))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1345082 (= res!892566 (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!57805 () Bool)

(declare-fun mapRes!57805 () Bool)

(declare-fun tp!110003 () Bool)

(declare-fun e!765473 () Bool)

(assert (=> mapNonEmpty!57805 (= mapRes!57805 (and tp!110003 e!765473))))

(declare-datatypes ((V!54969 0))(
  ( (V!54970 (val!18774 Int)) )
))
(declare-datatypes ((ValueCell!17801 0))(
  ( (ValueCellFull!17801 (v!21420 V!54969)) (EmptyCell!17801) )
))
(declare-fun mapValue!57805 () ValueCell!17801)

(declare-fun mapRest!57805 () (Array (_ BitVec 32) ValueCell!17801))

(declare-fun mapKey!57805 () (_ BitVec 32))

(declare-datatypes ((array!91595 0))(
  ( (array!91596 (arr!44249 (Array (_ BitVec 32) ValueCell!17801)) (size!44800 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91595)

(assert (=> mapNonEmpty!57805 (= (arr!44249 _values!1303) (store mapRest!57805 mapKey!57805 mapValue!57805))))

(declare-fun mapIsEmpty!57805 () Bool)

(assert (=> mapIsEmpty!57805 mapRes!57805))

(declare-fun b!1345083 () Bool)

(declare-fun res!892569 () Bool)

(assert (=> b!1345083 (=> (not res!892569) (not e!765475))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91597 0))(
  ( (array!91598 (arr!44250 (Array (_ BitVec 32) (_ BitVec 64))) (size!44801 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91597)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1345083 (= res!892569 (not (= (select (arr!44250 _keys!1571) from!1960) k!1142)))))

(declare-fun b!1345084 () Bool)

(declare-fun e!765472 () Bool)

(declare-fun e!765471 () Bool)

(assert (=> b!1345084 (= e!765472 (and e!765471 mapRes!57805))))

(declare-fun condMapEmpty!57805 () Bool)

(declare-fun mapDefault!57805 () ValueCell!17801)

