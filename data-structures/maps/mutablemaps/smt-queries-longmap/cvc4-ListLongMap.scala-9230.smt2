; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110768 () Bool)

(assert start!110768)

(declare-fun b_free!29567 () Bool)

(declare-fun b_next!29567 () Bool)

(assert (=> start!110768 (= b_free!29567 (not b_next!29567))))

(declare-fun tp!104024 () Bool)

(declare-fun b_and!47785 () Bool)

(assert (=> start!110768 (= tp!104024 b_and!47785)))

(declare-fun mapNonEmpty!54574 () Bool)

(declare-fun mapRes!54574 () Bool)

(declare-fun tp!104023 () Bool)

(declare-fun e!747586 () Bool)

(assert (=> mapNonEmpty!54574 (= mapRes!54574 (and tp!104023 e!747586))))

(declare-fun mapKey!54574 () (_ BitVec 32))

(declare-datatypes ((V!52165 0))(
  ( (V!52166 (val!17723 Int)) )
))
(declare-datatypes ((ValueCell!16750 0))(
  ( (ValueCellFull!16750 (v!20348 V!52165)) (EmptyCell!16750) )
))
(declare-fun mapValue!54574 () ValueCell!16750)

(declare-fun mapRest!54574 () (Array (_ BitVec 32) ValueCell!16750))

(declare-datatypes ((array!87549 0))(
  ( (array!87550 (arr!42250 (Array (_ BitVec 32) ValueCell!16750)) (size!42801 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!87549)

(assert (=> mapNonEmpty!54574 (= (arr!42250 _values!1354) (store mapRest!54574 mapKey!54574 mapValue!54574))))

(declare-fun b!1310450 () Bool)

(declare-fun res!870071 () Bool)

(declare-fun e!747590 () Bool)

(assert (=> b!1310450 (=> (not res!870071) (not e!747590))))

(declare-datatypes ((array!87551 0))(
  ( (array!87552 (arr!42251 (Array (_ BitVec 32) (_ BitVec 64))) (size!42802 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!87551)

(declare-fun from!2020 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1310450 (= res!870071 (validKeyInArray!0 (select (arr!42251 _keys!1628) from!2020)))))

(declare-fun b!1310451 () Bool)

(declare-fun res!870064 () Bool)

(assert (=> b!1310451 (=> (not res!870064) (not e!747590))))

(declare-fun mask!2040 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!87551 (_ BitVec 32)) Bool)

(assert (=> b!1310451 (= res!870064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1628 mask!2040))))

(declare-fun b!1310452 () Bool)

(declare-fun res!870065 () Bool)

(assert (=> b!1310452 (=> (not res!870065) (not e!747590))))

(declare-fun k!1175 () (_ BitVec 64))

(assert (=> b!1310452 (= res!870065 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!42802 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!870070 () Bool)

(assert (=> start!110768 (=> (not res!870070) (not e!747590))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110768 (= res!870070 (validMask!0 mask!2040))))

(assert (=> start!110768 e!747590))

(assert (=> start!110768 tp!104024))

(declare-fun array_inv!31919 (array!87551) Bool)

(assert (=> start!110768 (array_inv!31919 _keys!1628)))

(assert (=> start!110768 true))

(declare-fun tp_is_empty!35297 () Bool)

(assert (=> start!110768 tp_is_empty!35297))

(declare-fun e!747589 () Bool)

(declare-fun array_inv!31920 (array!87549) Bool)

(assert (=> start!110768 (and (array_inv!31920 _values!1354) e!747589)))

(declare-fun b!1310453 () Bool)

(declare-fun e!747588 () Bool)

(assert (=> b!1310453 (= e!747589 (and e!747588 mapRes!54574))))

(declare-fun condMapEmpty!54574 () Bool)

(declare-fun mapDefault!54574 () ValueCell!16750)

