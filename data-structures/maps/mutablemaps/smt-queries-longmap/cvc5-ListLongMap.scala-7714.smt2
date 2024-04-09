; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96952 () Bool)

(assert start!96952)

(declare-fun b_free!23209 () Bool)

(declare-fun b_next!23209 () Bool)

(assert (=> start!96952 (= b_free!23209 (not b_next!23209))))

(declare-fun tp!81588 () Bool)

(declare-fun b_and!37253 () Bool)

(assert (=> start!96952 (= tp!81588 b_and!37253)))

(declare-fun b!1102569 () Bool)

(declare-fun res!735751 () Bool)

(declare-fun e!629358 () Bool)

(assert (=> b!1102569 (=> (not res!735751) (not e!629358))))

(declare-datatypes ((array!71394 0))(
  ( (array!71395 (arr!34354 (Array (_ BitVec 32) (_ BitVec 64))) (size!34891 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!71394)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!71394 (_ BitVec 32)) Bool)

(assert (=> b!1102569 (= res!735751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1102570 () Bool)

(declare-fun res!735753 () Bool)

(assert (=> b!1102570 (=> (not res!735753) (not e!629358))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1102570 (= res!735753 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34891 _keys!1070))))))

(declare-fun b!1102571 () Bool)

(declare-fun e!629361 () Bool)

(declare-fun tp_is_empty!27259 () Bool)

(assert (=> b!1102571 (= e!629361 tp_is_empty!27259)))

(declare-fun b!1102572 () Bool)

(declare-fun res!735756 () Bool)

(assert (=> b!1102572 (=> (not res!735756) (not e!629358))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1102572 (= res!735756 (validKeyInArray!0 k!904))))

(declare-fun res!735757 () Bool)

(assert (=> start!96952 (=> (not res!735757) (not e!629358))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96952 (= res!735757 (validMask!0 mask!1414))))

(assert (=> start!96952 e!629358))

(assert (=> start!96952 tp!81588))

(assert (=> start!96952 true))

(assert (=> start!96952 tp_is_empty!27259))

(declare-fun array_inv!26316 (array!71394) Bool)

(assert (=> start!96952 (array_inv!26316 _keys!1070)))

(declare-datatypes ((V!41473 0))(
  ( (V!41474 (val!13686 Int)) )
))
(declare-datatypes ((ValueCell!12920 0))(
  ( (ValueCellFull!12920 (v!16318 V!41473)) (EmptyCell!12920) )
))
(declare-datatypes ((array!71396 0))(
  ( (array!71397 (arr!34355 (Array (_ BitVec 32) ValueCell!12920)) (size!34892 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!71396)

(declare-fun e!629357 () Bool)

(declare-fun array_inv!26317 (array!71396) Bool)

(assert (=> start!96952 (and (array_inv!26317 _values!874) e!629357)))

(declare-fun b!1102573 () Bool)

(declare-fun res!735759 () Bool)

(declare-fun e!629359 () Bool)

(assert (=> b!1102573 (=> (not res!735759) (not e!629359))))

(declare-fun lt!494729 () array!71394)

(declare-datatypes ((List!24151 0))(
  ( (Nil!24148) (Cons!24147 (h!25356 (_ BitVec 64)) (t!34413 List!24151)) )
))
(declare-fun arrayNoDuplicates!0 (array!71394 (_ BitVec 32) List!24151) Bool)

(assert (=> b!1102573 (= res!735759 (arrayNoDuplicates!0 lt!494729 #b00000000000000000000000000000000 Nil!24148))))

(declare-fun b!1102574 () Bool)

(assert (=> b!1102574 (= e!629358 e!629359)))

(declare-fun res!735758 () Bool)

(assert (=> b!1102574 (=> (not res!735758) (not e!629359))))

(assert (=> b!1102574 (= res!735758 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!494729 mask!1414))))

(assert (=> b!1102574 (= lt!494729 (array!71395 (store (arr!34354 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34891 _keys!1070)))))

(declare-fun b!1102575 () Bool)

(declare-fun mapRes!42682 () Bool)

(assert (=> b!1102575 (= e!629357 (and e!629361 mapRes!42682))))

(declare-fun condMapEmpty!42682 () Bool)

(declare-fun mapDefault!42682 () ValueCell!12920)

