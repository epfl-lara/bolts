; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112528 () Bool)

(assert start!112528)

(declare-fun b_free!30887 () Bool)

(declare-fun b_next!30887 () Bool)

(assert (=> start!112528 (= b_free!30887 (not b_next!30887))))

(declare-fun tp!108298 () Bool)

(declare-fun b_and!49785 () Bool)

(assert (=> start!112528 (= tp!108298 b_and!49785)))

(declare-fun mapNonEmpty!56869 () Bool)

(declare-fun mapRes!56869 () Bool)

(declare-fun tp!108299 () Bool)

(declare-fun e!759881 () Bool)

(assert (=> mapNonEmpty!56869 (= mapRes!56869 (and tp!108299 e!759881))))

(declare-datatypes ((V!54165 0))(
  ( (V!54166 (val!18473 Int)) )
))
(declare-datatypes ((ValueCell!17500 0))(
  ( (ValueCellFull!17500 (v!21108 V!54165)) (EmptyCell!17500) )
))
(declare-datatypes ((array!90441 0))(
  ( (array!90442 (arr!43682 (Array (_ BitVec 32) ValueCell!17500)) (size!44233 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90441)

(declare-fun mapKey!56869 () (_ BitVec 32))

(declare-fun mapValue!56869 () ValueCell!17500)

(declare-fun mapRest!56869 () (Array (_ BitVec 32) ValueCell!17500))

(assert (=> mapNonEmpty!56869 (= (arr!43682 _values!1320) (store mapRest!56869 mapKey!56869 mapValue!56869))))

(declare-fun b!1334069 () Bool)

(declare-fun e!759880 () Bool)

(declare-fun e!759879 () Bool)

(assert (=> b!1334069 (= e!759880 (and e!759879 mapRes!56869))))

(declare-fun condMapEmpty!56869 () Bool)

(declare-fun mapDefault!56869 () ValueCell!17500)

