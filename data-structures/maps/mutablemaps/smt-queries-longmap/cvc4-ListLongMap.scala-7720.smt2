; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97024 () Bool)

(assert start!97024)

(declare-fun mapNonEmpty!42748 () Bool)

(declare-fun mapRes!42748 () Bool)

(declare-fun tp!81669 () Bool)

(declare-fun e!629826 () Bool)

(assert (=> mapNonEmpty!42748 (= mapRes!42748 (and tp!81669 e!629826))))

(declare-fun mapKey!42748 () (_ BitVec 32))

(declare-datatypes ((V!41525 0))(
  ( (V!41526 (val!13706 Int)) )
))
(declare-datatypes ((ValueCell!12940 0))(
  ( (ValueCellFull!12940 (v!16338 V!41525)) (EmptyCell!12940) )
))
(declare-fun mapRest!42748 () (Array (_ BitVec 32) ValueCell!12940))

(declare-fun mapValue!42748 () ValueCell!12940)

(declare-datatypes ((array!71472 0))(
  ( (array!71473 (arr!34391 (Array (_ BitVec 32) ValueCell!12940)) (size!34928 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71472)

(assert (=> mapNonEmpty!42748 (= (arr!34391 _values!996) (store mapRest!42748 mapKey!42748 mapValue!42748))))

(declare-fun b!1103274 () Bool)

(declare-fun res!736139 () Bool)

(declare-fun e!629825 () Bool)

(assert (=> b!1103274 (=> (not res!736139) (not e!629825))))

(declare-datatypes ((array!71474 0))(
  ( (array!71475 (arr!34392 (Array (_ BitVec 32) (_ BitVec 64))) (size!34929 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71474)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1103274 (= res!736139 (and (= (size!34928 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34929 _keys!1208) (size!34928 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1103275 () Bool)

(declare-fun res!736141 () Bool)

(assert (=> b!1103275 (=> (not res!736141) (not e!629825))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1103275 (= res!736141 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!42748 () Bool)

(assert (=> mapIsEmpty!42748 mapRes!42748))

(declare-fun b!1103276 () Bool)

(declare-fun res!736143 () Bool)

(assert (=> b!1103276 (=> (not res!736143) (not e!629825))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71474 (_ BitVec 32)) Bool)

(assert (=> b!1103276 (= res!736143 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun res!736140 () Bool)

(assert (=> start!97024 (=> (not res!736140) (not e!629825))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!97024 (= res!736140 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!34929 _keys!1208))))))

(assert (=> start!97024 e!629825))

(declare-fun array_inv!26342 (array!71474) Bool)

(assert (=> start!97024 (array_inv!26342 _keys!1208)))

(assert (=> start!97024 true))

(declare-fun e!629823 () Bool)

(declare-fun array_inv!26343 (array!71472) Bool)

(assert (=> start!97024 (and (array_inv!26343 _values!996) e!629823)))

(declare-fun b!1103273 () Bool)

(declare-fun res!736142 () Bool)

(assert (=> b!1103273 (=> (not res!736142) (not e!629825))))

(assert (=> b!1103273 (= res!736142 (and (bvsle #b00000000000000000000000000000000 (size!34929 _keys!1208)) (bvslt (size!34929 _keys!1208) #b01111111111111111111111111111111)))))

(declare-fun b!1103277 () Bool)

(declare-fun e!629824 () Bool)

(declare-fun tp_is_empty!27299 () Bool)

(assert (=> b!1103277 (= e!629824 tp_is_empty!27299)))

(declare-fun b!1103278 () Bool)

(assert (=> b!1103278 (= e!629823 (and e!629824 mapRes!42748))))

(declare-fun condMapEmpty!42748 () Bool)

(declare-fun mapDefault!42748 () ValueCell!12940)

