; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111912 () Bool)

(assert start!111912)

(declare-fun b_free!30475 () Bool)

(declare-fun b_next!30475 () Bool)

(assert (=> start!111912 (= b_free!30475 (not b_next!30475))))

(declare-fun tp!106905 () Bool)

(declare-fun b_and!49055 () Bool)

(assert (=> start!111912 (= tp!106905 b_and!49055)))

(declare-fun b!1325492 () Bool)

(declare-fun res!879797 () Bool)

(declare-fun e!755633 () Bool)

(assert (=> b!1325492 (=> (not res!879797) (not e!755633))))

(declare-datatypes ((array!89459 0))(
  ( (array!89460 (arr!43198 (Array (_ BitVec 32) (_ BitVec 64))) (size!43749 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89459)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun k!1164 () (_ BitVec 64))

(assert (=> b!1325492 (= res!879797 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43749 _keys!1609)) (not (= k!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1325493 () Bool)

(declare-fun e!755631 () Bool)

(declare-fun e!755634 () Bool)

(declare-fun mapRes!56094 () Bool)

(assert (=> b!1325493 (= e!755631 (and e!755634 mapRes!56094))))

(declare-fun condMapEmpty!56094 () Bool)

(declare-datatypes ((V!53497 0))(
  ( (V!53498 (val!18222 Int)) )
))
(declare-datatypes ((ValueCell!17249 0))(
  ( (ValueCellFull!17249 (v!20853 V!53497)) (EmptyCell!17249) )
))
(declare-datatypes ((array!89461 0))(
  ( (array!89462 (arr!43199 (Array (_ BitVec 32) ValueCell!17249)) (size!43750 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89461)

(declare-fun mapDefault!56094 () ValueCell!17249)

