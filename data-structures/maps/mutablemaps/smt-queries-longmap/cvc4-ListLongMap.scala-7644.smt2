; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96224 () Bool)

(assert start!96224)

(declare-fun b_free!22841 () Bool)

(declare-fun b_next!22841 () Bool)

(assert (=> start!96224 (= b_free!22841 (not b_next!22841))))

(declare-fun tp!80373 () Bool)

(declare-fun b_and!36375 () Bool)

(assert (=> start!96224 (= tp!80373 b_and!36375)))

(declare-fun b!1092201 () Bool)

(declare-fun e!623794 () Bool)

(declare-fun tp_is_empty!26843 () Bool)

(assert (=> b!1092201 (= e!623794 tp_is_empty!26843)))

(declare-fun b!1092202 () Bool)

(declare-fun e!623799 () Bool)

(assert (=> b!1092202 (= e!623799 tp_is_empty!26843)))

(declare-fun mapNonEmpty!42019 () Bool)

(declare-fun mapRes!42019 () Bool)

(declare-fun tp!80372 () Bool)

(assert (=> mapNonEmpty!42019 (= mapRes!42019 (and tp!80372 e!623799))))

(declare-datatypes ((V!40917 0))(
  ( (V!40918 (val!13478 Int)) )
))
(declare-datatypes ((ValueCell!12712 0))(
  ( (ValueCellFull!12712 (v!16100 V!40917)) (EmptyCell!12712) )
))
(declare-datatypes ((array!70568 0))(
  ( (array!70569 (arr!33954 (Array (_ BitVec 32) ValueCell!12712)) (size!34491 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70568)

(declare-fun mapRest!42019 () (Array (_ BitVec 32) ValueCell!12712))

(declare-fun mapKey!42019 () (_ BitVec 32))

(declare-fun mapValue!42019 () ValueCell!12712)

(assert (=> mapNonEmpty!42019 (= (arr!33954 _values!874) (store mapRest!42019 mapKey!42019 mapValue!42019))))

(declare-fun b!1092203 () Bool)

(declare-fun e!623800 () Bool)

(assert (=> b!1092203 (= e!623800 (and e!623794 mapRes!42019))))

(declare-fun condMapEmpty!42019 () Bool)

(declare-fun mapDefault!42019 () ValueCell!12712)

