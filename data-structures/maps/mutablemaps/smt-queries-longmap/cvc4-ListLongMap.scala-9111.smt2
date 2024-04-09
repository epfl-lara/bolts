; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!109490 () Bool)

(assert start!109490)

(declare-fun b_free!28943 () Bool)

(declare-fun b_next!28943 () Bool)

(assert (=> start!109490 (= b_free!28943 (not b_next!28943))))

(declare-fun tp!101948 () Bool)

(declare-fun b_and!47043 () Bool)

(assert (=> start!109490 (= tp!101948 b_and!47043)))

(declare-fun res!861490 () Bool)

(declare-fun e!739436 () Bool)

(assert (=> start!109490 (=> (not res!861490) (not e!739436))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!109490 (= res!861490 (validMask!0 mask!2175))))

(assert (=> start!109490 e!739436))

(declare-fun tp_is_empty!34583 () Bool)

(assert (=> start!109490 tp_is_empty!34583))

(assert (=> start!109490 true))

(declare-datatypes ((V!51213 0))(
  ( (V!51214 (val!17366 Int)) )
))
(declare-datatypes ((ValueCell!16393 0))(
  ( (ValueCellFull!16393 (v!19967 V!51213)) (EmptyCell!16393) )
))
(declare-datatypes ((array!86145 0))(
  ( (array!86146 (arr!41569 (Array (_ BitVec 32) ValueCell!16393)) (size!42120 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86145)

(declare-fun e!739438 () Bool)

(declare-fun array_inv!31461 (array!86145) Bool)

(assert (=> start!109490 (and (array_inv!31461 _values!1445) e!739438)))

(declare-datatypes ((array!86147 0))(
  ( (array!86148 (arr!41570 (Array (_ BitVec 32) (_ BitVec 64))) (size!42121 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86147)

(declare-fun array_inv!31462 (array!86147) Bool)

(assert (=> start!109490 (array_inv!31462 _keys!1741)))

(assert (=> start!109490 tp!101948))

(declare-fun mapIsEmpty!53435 () Bool)

(declare-fun mapRes!53435 () Bool)

(assert (=> mapIsEmpty!53435 mapRes!53435))

(declare-fun mapNonEmpty!53435 () Bool)

(declare-fun tp!101949 () Bool)

(declare-fun e!739441 () Bool)

(assert (=> mapNonEmpty!53435 (= mapRes!53435 (and tp!101949 e!739441))))

(declare-fun mapRest!53435 () (Array (_ BitVec 32) ValueCell!16393))

(declare-fun mapKey!53435 () (_ BitVec 32))

(declare-fun mapValue!53435 () ValueCell!16393)

(assert (=> mapNonEmpty!53435 (= (arr!41569 _values!1445) (store mapRest!53435 mapKey!53435 mapValue!53435))))

(declare-fun b!1295997 () Bool)

(declare-fun e!739437 () Bool)

(assert (=> b!1295997 (= e!739438 (and e!739437 mapRes!53435))))

(declare-fun condMapEmpty!53435 () Bool)

(declare-fun mapDefault!53435 () ValueCell!16393)

