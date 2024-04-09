; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108898 () Bool)

(assert start!108898)

(declare-fun b_free!28375 () Bool)

(declare-fun b_next!28375 () Bool)

(assert (=> start!108898 (= b_free!28375 (not b_next!28375))))

(declare-fun tp!100242 () Bool)

(declare-fun b_and!46451 () Bool)

(assert (=> start!108898 (= tp!100242 b_and!46451)))

(declare-fun res!854073 () Bool)

(declare-fun e!734347 () Bool)

(assert (=> start!108898 (=> (not res!854073) (not e!734347))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108898 (= res!854073 (validMask!0 mask!2175))))

(assert (=> start!108898 e!734347))

(declare-fun tp_is_empty!34015 () Bool)

(assert (=> start!108898 tp_is_empty!34015))

(assert (=> start!108898 true))

(declare-datatypes ((V!50457 0))(
  ( (V!50458 (val!17082 Int)) )
))
(declare-datatypes ((ValueCell!16109 0))(
  ( (ValueCellFull!16109 (v!19682 V!50457)) (EmptyCell!16109) )
))
(declare-datatypes ((array!85039 0))(
  ( (array!85040 (arr!41017 (Array (_ BitVec 32) ValueCell!16109)) (size!41568 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!85039)

(declare-fun e!734346 () Bool)

(declare-fun array_inv!31079 (array!85039) Bool)

(assert (=> start!108898 (and (array_inv!31079 _values!1445) e!734346)))

(declare-datatypes ((array!85041 0))(
  ( (array!85042 (arr!41018 (Array (_ BitVec 32) (_ BitVec 64))) (size!41569 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!85041)

(declare-fun array_inv!31080 (array!85041) Bool)

(assert (=> start!108898 (array_inv!31080 _keys!1741)))

(assert (=> start!108898 tp!100242))

(declare-fun b!1285533 () Bool)

(declare-fun res!854074 () Bool)

(assert (=> b!1285533 (=> (not res!854074) (not e!734347))))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1285533 (= res!854074 (and (= (size!41568 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41569 _keys!1741) (size!41568 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!52580 () Bool)

(declare-fun mapRes!52580 () Bool)

(declare-fun tp!100241 () Bool)

(declare-fun e!734350 () Bool)

(assert (=> mapNonEmpty!52580 (= mapRes!52580 (and tp!100241 e!734350))))

(declare-fun mapValue!52580 () ValueCell!16109)

(declare-fun mapRest!52580 () (Array (_ BitVec 32) ValueCell!16109))

(declare-fun mapKey!52580 () (_ BitVec 32))

(assert (=> mapNonEmpty!52580 (= (arr!41017 _values!1445) (store mapRest!52580 mapKey!52580 mapValue!52580))))

(declare-fun mapIsEmpty!52580 () Bool)

(assert (=> mapIsEmpty!52580 mapRes!52580))

(declare-fun b!1285534 () Bool)

(declare-fun res!854076 () Bool)

(assert (=> b!1285534 (=> (not res!854076) (not e!734347))))

(declare-fun from!2144 () (_ BitVec 32))

(assert (=> b!1285534 (= res!854076 (and (bvsge from!2144 #b00000000000000000000000000000000) (bvslt from!2144 (size!41569 _keys!1741))))))

(declare-fun b!1285535 () Bool)

(declare-fun e!734348 () Bool)

(assert (=> b!1285535 (= e!734346 (and e!734348 mapRes!52580))))

(declare-fun condMapEmpty!52580 () Bool)

(declare-fun mapDefault!52580 () ValueCell!16109)

