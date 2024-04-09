; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108626 () Bool)

(assert start!108626)

(declare-fun b_free!28117 () Bool)

(declare-fun b_next!28117 () Bool)

(assert (=> start!108626 (= b_free!28117 (not b_next!28117))))

(declare-fun tp!99464 () Bool)

(declare-fun b_and!46191 () Bool)

(assert (=> start!108626 (= tp!99464 b_and!46191)))

(declare-fun b!1281725 () Bool)

(declare-fun res!851492 () Bool)

(declare-fun e!732343 () Bool)

(assert (=> b!1281725 (=> (not res!851492) (not e!732343))))

(declare-datatypes ((array!84539 0))(
  ( (array!84540 (arr!40768 (Array (_ BitVec 32) (_ BitVec 64))) (size!41319 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84539)

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!84539 (_ BitVec 32)) Bool)

(assert (=> b!1281725 (= res!851492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1741 mask!2175))))

(declare-fun b!1281726 () Bool)

(declare-fun res!851490 () Bool)

(assert (=> b!1281726 (=> (not res!851490) (not e!732343))))

(declare-datatypes ((V!50113 0))(
  ( (V!50114 (val!16953 Int)) )
))
(declare-datatypes ((ValueCell!15980 0))(
  ( (ValueCellFull!15980 (v!19552 V!50113)) (EmptyCell!15980) )
))
(declare-datatypes ((array!84541 0))(
  ( (array!84542 (arr!40769 (Array (_ BitVec 32) ValueCell!15980)) (size!41320 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84541)

(declare-fun extraKeys!1366 () (_ BitVec 32))

(assert (=> b!1281726 (= res!851490 (and (= (size!41320 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41319 _keys!1741) (size!41320 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun b!1281727 () Bool)

(declare-fun res!851491 () Bool)

(assert (=> b!1281727 (=> (not res!851491) (not e!732343))))

(declare-datatypes ((List!29063 0))(
  ( (Nil!29060) (Cons!29059 (h!30268 (_ BitVec 64)) (t!42612 List!29063)) )
))
(declare-fun arrayNoDuplicates!0 (array!84539 (_ BitVec 32) List!29063) Bool)

(assert (=> b!1281727 (= res!851491 (arrayNoDuplicates!0 _keys!1741 #b00000000000000000000000000000000 Nil!29060))))

(declare-fun mapNonEmpty!52190 () Bool)

(declare-fun mapRes!52190 () Bool)

(declare-fun tp!99465 () Bool)

(declare-fun e!732342 () Bool)

(assert (=> mapNonEmpty!52190 (= mapRes!52190 (and tp!99465 e!732342))))

(declare-fun mapRest!52190 () (Array (_ BitVec 32) ValueCell!15980))

(declare-fun mapValue!52190 () ValueCell!15980)

(declare-fun mapKey!52190 () (_ BitVec 32))

(assert (=> mapNonEmpty!52190 (= (arr!40769 _values!1445) (store mapRest!52190 mapKey!52190 mapValue!52190))))

(declare-fun b!1281729 () Bool)

(declare-fun e!732339 () Bool)

(declare-fun e!732340 () Bool)

(assert (=> b!1281729 (= e!732339 (and e!732340 mapRes!52190))))

(declare-fun condMapEmpty!52190 () Bool)

(declare-fun mapDefault!52190 () ValueCell!15980)

