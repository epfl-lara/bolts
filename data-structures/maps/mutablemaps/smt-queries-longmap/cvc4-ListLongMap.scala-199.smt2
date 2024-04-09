; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3828 () Bool)

(assert start!3828)

(declare-fun b_free!785 () Bool)

(declare-fun b_next!785 () Bool)

(assert (=> start!3828 (= b_free!785 (not b_next!785))))

(declare-fun tp!3766 () Bool)

(declare-fun b_and!1591 () Bool)

(assert (=> start!3828 (= tp!3766 b_and!1591)))

(declare-fun b!26880 () Bool)

(declare-fun e!17533 () Bool)

(declare-fun tp_is_empty!1139 () Bool)

(assert (=> b!26880 (= e!17533 tp_is_empty!1139)))

(declare-fun b!26881 () Bool)

(declare-fun e!17530 () Bool)

(declare-fun mapRes!1228 () Bool)

(assert (=> b!26881 (= e!17530 (and e!17533 mapRes!1228))))

(declare-fun condMapEmpty!1228 () Bool)

(declare-datatypes ((V!1343 0))(
  ( (V!1344 (val!596 Int)) )
))
(declare-datatypes ((ValueCell!370 0))(
  ( (ValueCellFull!370 (v!1682 V!1343)) (EmptyCell!370) )
))
(declare-datatypes ((array!1509 0))(
  ( (array!1510 (arr!711 (Array (_ BitVec 32) ValueCell!370)) (size!812 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1509)

(declare-fun mapDefault!1228 () ValueCell!370)

