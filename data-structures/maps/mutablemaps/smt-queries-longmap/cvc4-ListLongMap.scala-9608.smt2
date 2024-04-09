; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113634 () Bool)

(assert start!113634)

(declare-fun b_free!31565 () Bool)

(declare-fun b_next!31565 () Bool)

(assert (=> start!113634 (= b_free!31565 (not b_next!31565))))

(declare-fun tp!110507 () Bool)

(declare-fun b_and!50933 () Bool)

(assert (=> start!113634 (= tp!110507 b_and!50933)))

(declare-fun mapNonEmpty!58061 () Bool)

(declare-fun mapRes!58061 () Bool)

(declare-fun tp!110508 () Bool)

(declare-fun e!767133 () Bool)

(assert (=> mapNonEmpty!58061 (= mapRes!58061 (and tp!110508 e!767133))))

(declare-datatypes ((V!55189 0))(
  ( (V!55190 (val!18857 Int)) )
))
(declare-datatypes ((ValueCell!17884 0))(
  ( (ValueCellFull!17884 (v!21507 V!55189)) (EmptyCell!17884) )
))
(declare-fun mapValue!58061 () ValueCell!17884)

(declare-datatypes ((array!91919 0))(
  ( (array!91920 (arr!44409 (Array (_ BitVec 32) ValueCell!17884)) (size!44960 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91919)

(declare-fun mapRest!58061 () (Array (_ BitVec 32) ValueCell!17884))

(declare-fun mapKey!58061 () (_ BitVec 32))

(assert (=> mapNonEmpty!58061 (= (arr!44409 _values!1303) (store mapRest!58061 mapKey!58061 mapValue!58061))))

(declare-fun b!1348431 () Bool)

(declare-fun res!894750 () Bool)

(declare-fun e!767136 () Bool)

(assert (=> b!1348431 (=> (not res!894750) (not e!767136))))

(declare-fun k!1142 () (_ BitVec 64))

(declare-datatypes ((array!91921 0))(
  ( (array!91922 (arr!44410 (Array (_ BitVec 32) (_ BitVec 64))) (size!44961 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91921)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1348431 (= res!894750 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44961 _keys!1571)) (not (= k!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mapIsEmpty!58061 () Bool)

(assert (=> mapIsEmpty!58061 mapRes!58061))

(declare-fun b!1348432 () Bool)

(declare-fun e!767132 () Bool)

(declare-fun e!767135 () Bool)

(assert (=> b!1348432 (= e!767132 (and e!767135 mapRes!58061))))

(declare-fun condMapEmpty!58061 () Bool)

(declare-fun mapDefault!58061 () ValueCell!17884)

