; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!97058 () Bool)

(assert start!97058)

(declare-fun b!1103487 () Bool)

(declare-fun e!629971 () Bool)

(declare-fun tp_is_empty!27311 () Bool)

(assert (=> b!1103487 (= e!629971 tp_is_empty!27311)))

(declare-fun b!1103488 () Bool)

(declare-fun res!736271 () Bool)

(declare-fun e!629972 () Bool)

(assert (=> b!1103488 (=> (not res!736271) (not e!629972))))

(declare-datatypes ((array!71500 0))(
  ( (array!71501 (arr!34403 (Array (_ BitVec 32) (_ BitVec 64))) (size!34940 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!71500)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!41541 0))(
  ( (V!41542 (val!13712 Int)) )
))
(declare-datatypes ((ValueCell!12946 0))(
  ( (ValueCellFull!12946 (v!16345 V!41541)) (EmptyCell!12946) )
))
(declare-datatypes ((array!71502 0))(
  ( (array!71503 (arr!34404 (Array (_ BitVec 32) ValueCell!12946)) (size!34941 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!71502)

(assert (=> b!1103488 (= res!736271 (and (= (size!34941 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!34940 _keys!1208) (size!34941 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!42772 () Bool)

(declare-fun mapRes!42772 () Bool)

(assert (=> mapIsEmpty!42772 mapRes!42772))

(declare-fun b!1103489 () Bool)

(declare-fun res!736273 () Bool)

(assert (=> b!1103489 (=> (not res!736273) (not e!629972))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71500 (_ BitVec 32)) Bool)

(assert (=> b!1103489 (= res!736273 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1103490 () Bool)

(assert (=> b!1103490 (= e!629972 false)))

(declare-fun lt!495059 () Bool)

(declare-datatypes ((List!24163 0))(
  ( (Nil!24160) (Cons!24159 (h!25368 (_ BitVec 64)) (t!34435 List!24163)) )
))
(declare-fun arrayNoDuplicates!0 (array!71500 (_ BitVec 32) List!24163) Bool)

(assert (=> b!1103490 (= lt!495059 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24160))))

(declare-fun b!1103491 () Bool)

(declare-fun e!629975 () Bool)

(declare-fun e!629973 () Bool)

(assert (=> b!1103491 (= e!629975 (and e!629973 mapRes!42772))))

(declare-fun condMapEmpty!42772 () Bool)

(declare-fun mapDefault!42772 () ValueCell!12946)

