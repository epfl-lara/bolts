; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113466 () Bool)

(assert start!113466)

(declare-fun b_free!31481 () Bool)

(declare-fun b_next!31481 () Bool)

(assert (=> start!113466 (= b_free!31481 (not b_next!31481))))

(declare-fun tp!110249 () Bool)

(declare-fun b_and!50779 () Bool)

(assert (=> start!113466 (= tp!110249 b_and!50779)))

(declare-fun b!1346413 () Bool)

(declare-fun res!893494 () Bool)

(declare-fun e!766138 () Bool)

(assert (=> b!1346413 (=> (not res!893494) (not e!766138))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91753 0))(
  ( (array!91754 (arr!44328 (Array (_ BitVec 32) (_ BitVec 64))) (size!44879 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91753)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(assert (=> b!1346413 (= res!893494 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44879 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1346414 () Bool)

(declare-fun e!766141 () Bool)

(declare-fun tp_is_empty!37481 () Bool)

(assert (=> b!1346414 (= e!766141 tp_is_empty!37481)))

(declare-fun b!1346415 () Bool)

(declare-fun e!766139 () Bool)

(declare-fun mapRes!57928 () Bool)

(assert (=> b!1346415 (= e!766139 (and e!766141 mapRes!57928))))

(declare-fun condMapEmpty!57928 () Bool)

(declare-datatypes ((V!55077 0))(
  ( (V!55078 (val!18815 Int)) )
))
(declare-datatypes ((ValueCell!17842 0))(
  ( (ValueCellFull!17842 (v!21461 V!55077)) (EmptyCell!17842) )
))
(declare-datatypes ((array!91755 0))(
  ( (array!91756 (arr!44329 (Array (_ BitVec 32) ValueCell!17842)) (size!44880 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91755)

(declare-fun mapDefault!57928 () ValueCell!17842)

