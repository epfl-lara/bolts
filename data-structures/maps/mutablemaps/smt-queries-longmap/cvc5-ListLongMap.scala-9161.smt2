; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!110028 () Bool)

(assert start!110028)

(declare-fun b_free!29239 () Bool)

(declare-fun b_next!29239 () Bool)

(assert (=> start!110028 (= b_free!29239 (not b_next!29239))))

(declare-fun tp!102862 () Bool)

(declare-fun b_and!47401 () Bool)

(assert (=> start!110028 (= tp!102862 b_and!47401)))

(declare-fun b!1302599 () Bool)

(declare-fun res!865295 () Bool)

(declare-fun e!743025 () Bool)

(assert (=> b!1302599 (=> (not res!865295) (not e!743025))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-datatypes ((V!51609 0))(
  ( (V!51610 (val!17514 Int)) )
))
(declare-datatypes ((ValueCell!16541 0))(
  ( (ValueCellFull!16541 (v!20126 V!51609)) (EmptyCell!16541) )
))
(declare-datatypes ((array!86731 0))(
  ( (array!86732 (arr!41854 (Array (_ BitVec 32) ValueCell!16541)) (size!42405 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!86731)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!86733 0))(
  ( (array!86734 (arr!41855 (Array (_ BitVec 32) (_ BitVec 64))) (size!42406 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!86733)

(assert (=> b!1302599 (= res!865295 (and (= (size!42405 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!42406 _keys!1741) (size!42405 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1302600 () Bool)

(declare-fun e!743022 () Bool)

(declare-fun k!1205 () (_ BitVec 64))

(assert (=> b!1302600 (= e!743022 (not (= #b1000000000000000000000000000000000000000000000000000000000000000 k!1205)))))

(declare-fun res!865297 () Bool)

(assert (=> start!110028 (=> (not res!865297) (not e!743025))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!110028 (= res!865297 (validMask!0 mask!2175))))

(assert (=> start!110028 e!743025))

(declare-fun tp_is_empty!34879 () Bool)

(assert (=> start!110028 tp_is_empty!34879))

(assert (=> start!110028 true))

(declare-fun e!743028 () Bool)

(declare-fun array_inv!31657 (array!86731) Bool)

(assert (=> start!110028 (and (array_inv!31657 _values!1445) e!743028)))

(declare-fun array_inv!31658 (array!86733) Bool)

(assert (=> start!110028 (array_inv!31658 _keys!1741)))

(assert (=> start!110028 tp!102862))

(declare-fun b!1302601 () Bool)

(declare-fun res!865299 () Bool)

(assert (=> b!1302601 (=> (not res!865299) (not e!743025))))

(declare-fun from!2144 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1302601 (= res!865299 (not (validKeyInArray!0 (select (arr!41855 _keys!1741) from!2144))))))

(declare-fun b!1302602 () Bool)

(declare-fun res!865293 () Bool)

(assert (=> b!1302602 (=> (not res!865293) (not e!743025))))

(declare-datatypes ((List!29902 0))(
  ( (Nil!29899) (Cons!29898 (h!31107 (_ BitVec 64)) (t!43499 List!29902)) )
))
(declare-fun arrayNoDuplicates!0 (array!86733 (_ BitVec 32) List!29902) Bool)

(assert (=> b!1302602 (= res!865293 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29899))))

(declare-fun b!1302603 () Bool)

(declare-fun e!743023 () Bool)

(declare-fun mapRes!53905 () Bool)

(assert (=> b!1302603 (= e!743028 (and e!743023 mapRes!53905))))

(declare-fun condMapEmpty!53905 () Bool)

(declare-fun mapDefault!53905 () ValueCell!16541)

