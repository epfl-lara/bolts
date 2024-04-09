; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112312 () Bool)

(assert start!112312)

(declare-fun b_free!30671 () Bool)

(declare-fun b_next!30671 () Bool)

(assert (=> start!112312 (= b_free!30671 (not b_next!30671))))

(declare-fun tp!107650 () Bool)

(declare-fun b_and!49407 () Bool)

(assert (=> start!112312 (= tp!107650 b_and!49407)))

(declare-fun b!1330210 () Bool)

(declare-fun res!882739 () Bool)

(declare-fun e!758208 () Bool)

(assert (=> b!1330210 (=> (not res!882739) (not e!758208))))

(declare-fun from!1980 () (_ BitVec 32))

(declare-datatypes ((array!90017 0))(
  ( (array!90018 (arr!43470 (Array (_ BitVec 32) (_ BitVec 64))) (size!44021 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90017)

(declare-fun k!1153 () (_ BitVec 64))

(assert (=> b!1330210 (= res!882739 (not (= (select (arr!43470 _keys!1590) from!1980) k!1153)))))

(declare-fun mapNonEmpty!56545 () Bool)

(declare-fun mapRes!56545 () Bool)

(declare-fun tp!107651 () Bool)

(declare-fun e!758209 () Bool)

(assert (=> mapNonEmpty!56545 (= mapRes!56545 (and tp!107651 e!758209))))

(declare-datatypes ((V!53877 0))(
  ( (V!53878 (val!18365 Int)) )
))
(declare-datatypes ((ValueCell!17392 0))(
  ( (ValueCellFull!17392 (v!21000 V!53877)) (EmptyCell!17392) )
))
(declare-datatypes ((array!90019 0))(
  ( (array!90020 (arr!43471 (Array (_ BitVec 32) ValueCell!17392)) (size!44022 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90019)

(declare-fun mapKey!56545 () (_ BitVec 32))

(declare-fun mapRest!56545 () (Array (_ BitVec 32) ValueCell!17392))

(declare-fun mapValue!56545 () ValueCell!17392)

(assert (=> mapNonEmpty!56545 (= (arr!43471 _values!1320) (store mapRest!56545 mapKey!56545 mapValue!56545))))

(declare-fun b!1330211 () Bool)

(declare-fun e!758207 () Bool)

(declare-fun e!758205 () Bool)

(assert (=> b!1330211 (= e!758207 (and e!758205 mapRes!56545))))

(declare-fun condMapEmpty!56545 () Bool)

(declare-fun mapDefault!56545 () ValueCell!17392)

