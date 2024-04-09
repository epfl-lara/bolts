; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111148 () Bool)

(assert start!111148)

(declare-fun b_free!29947 () Bool)

(declare-fun b_next!29947 () Bool)

(assert (=> start!111148 (= b_free!29947 (not b_next!29947))))

(declare-fun tp!105163 () Bool)

(declare-fun b_and!48165 () Bool)

(assert (=> start!111148 (= tp!105163 b_and!48165)))

(declare-fun b!1315473 () Bool)

(declare-fun res!873377 () Bool)

(declare-fun e!750438 () Bool)

(assert (=> b!1315473 (=> (not res!873377) (not e!750438))))

(declare-datatypes ((array!88277 0))(
  ( (array!88278 (arr!42614 (Array (_ BitVec 32) (_ BitVec 64))) (size!43165 (_ BitVec 32))) )
))
(declare-fun _keys!1628 () array!88277)

(declare-fun k!1175 () (_ BitVec 64))

(declare-fun from!2020 () (_ BitVec 32))

(assert (=> b!1315473 (= res!873377 (and (bvsge from!2020 #b00000000000000000000000000000000) (bvslt from!2020 (size!43165 _keys!1628)) (not (= k!1175 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1175 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1315474 () Bool)

(declare-fun res!873376 () Bool)

(assert (=> b!1315474 (=> (not res!873376) (not e!750438))))

(declare-datatypes ((List!30427 0))(
  ( (Nil!30424) (Cons!30423 (h!31632 (_ BitVec 64)) (t!44040 List!30427)) )
))
(declare-fun arrayNoDuplicates!0 (array!88277 (_ BitVec 32) List!30427) Bool)

(assert (=> b!1315474 (= res!873376 (arrayNoDuplicates!0 _keys!1628 #b00000000000000000000000000000000 Nil!30424))))

(declare-fun b!1315475 () Bool)

(declare-fun e!750440 () Bool)

(declare-fun e!750439 () Bool)

(declare-fun mapRes!55144 () Bool)

(assert (=> b!1315475 (= e!750440 (and e!750439 mapRes!55144))))

(declare-fun condMapEmpty!55144 () Bool)

(declare-datatypes ((V!52673 0))(
  ( (V!52674 (val!17913 Int)) )
))
(declare-datatypes ((ValueCell!16940 0))(
  ( (ValueCellFull!16940 (v!20538 V!52673)) (EmptyCell!16940) )
))
(declare-datatypes ((array!88279 0))(
  ( (array!88280 (arr!42615 (Array (_ BitVec 32) ValueCell!16940)) (size!43166 (_ BitVec 32))) )
))
(declare-fun _values!1354 () array!88279)

(declare-fun mapDefault!55144 () ValueCell!16940)

