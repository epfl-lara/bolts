; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112986 () Bool)

(assert start!112986)

(declare-fun mapNonEmpty!57223 () Bool)

(declare-fun mapRes!57223 () Bool)

(declare-fun tp!108923 () Bool)

(declare-fun e!762522 () Bool)

(assert (=> mapNonEmpty!57223 (= mapRes!57223 (and tp!108923 e!762522))))

(declare-datatypes ((V!54453 0))(
  ( (V!54454 (val!18581 Int)) )
))
(declare-datatypes ((ValueCell!17608 0))(
  ( (ValueCellFull!17608 (v!21226 V!54453)) (EmptyCell!17608) )
))
(declare-fun mapRest!57223 () (Array (_ BitVec 32) ValueCell!17608))

(declare-fun mapKey!57223 () (_ BitVec 32))

(declare-fun mapValue!57223 () ValueCell!17608)

(declare-datatypes ((array!90857 0))(
  ( (array!90858 (arr!43881 (Array (_ BitVec 32) ValueCell!17608)) (size!44432 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!90857)

(assert (=> mapNonEmpty!57223 (= (arr!43881 _values!1303) (store mapRest!57223 mapKey!57223 mapValue!57223))))

(declare-fun b!1338893 () Bool)

(declare-fun e!762517 () Bool)

(declare-fun e!762518 () Bool)

(assert (=> b!1338893 (= e!762517 (and e!762518 mapRes!57223))))

(declare-fun condMapEmpty!57223 () Bool)

(declare-fun mapDefault!57223 () ValueCell!17608)

