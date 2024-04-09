; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95740 () Bool)

(assert start!95740)

(declare-fun b_free!22357 () Bool)

(declare-fun b_next!22357 () Bool)

(assert (=> start!95740 (= b_free!22357 (not b_next!22357))))

(declare-fun tp!78921 () Bool)

(declare-fun b_and!35407 () Bool)

(assert (=> start!95740 (= tp!78921 b_and!35407)))

(declare-fun b!1081945 () Bool)

(declare-fun res!721277 () Bool)

(declare-fun e!618405 () Bool)

(assert (=> b!1081945 (=> (not res!721277) (not e!618405))))

(declare-datatypes ((array!69622 0))(
  ( (array!69623 (arr!33481 (Array (_ BitVec 32) (_ BitVec 64))) (size!34018 (_ BitVec 32))) )
))
(declare-fun lt!479453 () array!69622)

(declare-datatypes ((List!23469 0))(
  ( (Nil!23466) (Cons!23465 (h!24674 (_ BitVec 64)) (t!32891 List!23469)) )
))
(declare-fun arrayNoDuplicates!0 (array!69622 (_ BitVec 32) List!23469) Bool)

(assert (=> b!1081945 (= res!721277 (arrayNoDuplicates!0 lt!479453 #b00000000000000000000000000000000 Nil!23466))))

(declare-fun b!1081946 () Bool)

(declare-fun e!618406 () Bool)

(declare-fun tp_is_empty!26359 () Bool)

(assert (=> b!1081946 (= e!618406 tp_is_empty!26359)))

(declare-fun res!721275 () Bool)

(declare-fun e!618404 () Bool)

(assert (=> start!95740 (=> (not res!721275) (not e!618404))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95740 (= res!721275 (validMask!0 mask!1414))))

(assert (=> start!95740 e!618404))

(assert (=> start!95740 tp!78921))

(assert (=> start!95740 true))

(assert (=> start!95740 tp_is_empty!26359))

(declare-fun _keys!1070 () array!69622)

(declare-fun array_inv!25706 (array!69622) Bool)

(assert (=> start!95740 (array_inv!25706 _keys!1070)))

(declare-datatypes ((V!40273 0))(
  ( (V!40274 (val!13236 Int)) )
))
(declare-datatypes ((ValueCell!12470 0))(
  ( (ValueCellFull!12470 (v!15858 V!40273)) (EmptyCell!12470) )
))
(declare-datatypes ((array!69624 0))(
  ( (array!69625 (arr!33482 (Array (_ BitVec 32) ValueCell!12470)) (size!34019 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69624)

(declare-fun e!618407 () Bool)

(declare-fun array_inv!25707 (array!69624) Bool)

(assert (=> start!95740 (and (array_inv!25707 _values!874) e!618407)))

(declare-fun b!1081947 () Bool)

(declare-fun res!721280 () Bool)

(assert (=> b!1081947 (=> (not res!721280) (not e!618404))))

(assert (=> b!1081947 (= res!721280 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23466))))

(declare-fun b!1081948 () Bool)

(declare-fun res!721281 () Bool)

(assert (=> b!1081948 (=> (not res!721281) (not e!618404))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69622 (_ BitVec 32)) Bool)

(assert (=> b!1081948 (= res!721281 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1081949 () Bool)

(declare-fun res!721282 () Bool)

(assert (=> b!1081949 (=> (not res!721282) (not e!618404))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1081949 (= res!721282 (validKeyInArray!0 k!904))))

(declare-fun mapNonEmpty!41293 () Bool)

(declare-fun mapRes!41293 () Bool)

(declare-fun tp!78920 () Bool)

(declare-fun e!618408 () Bool)

(assert (=> mapNonEmpty!41293 (= mapRes!41293 (and tp!78920 e!618408))))

(declare-fun mapValue!41293 () ValueCell!12470)

(declare-fun mapKey!41293 () (_ BitVec 32))

(declare-fun mapRest!41293 () (Array (_ BitVec 32) ValueCell!12470))

(assert (=> mapNonEmpty!41293 (= (arr!33482 _values!874) (store mapRest!41293 mapKey!41293 mapValue!41293))))

(declare-fun b!1081950 () Bool)

(assert (=> b!1081950 (= e!618404 e!618405)))

(declare-fun res!721279 () Bool)

(assert (=> b!1081950 (=> (not res!721279) (not e!618405))))

(assert (=> b!1081950 (= res!721279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!479453 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1081950 (= lt!479453 (array!69623 (store (arr!33481 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34018 _keys!1070)))))

(declare-fun mapIsEmpty!41293 () Bool)

(assert (=> mapIsEmpty!41293 mapRes!41293))

(declare-fun b!1081951 () Bool)

(declare-fun res!721278 () Bool)

(assert (=> b!1081951 (=> (not res!721278) (not e!618404))))

(assert (=> b!1081951 (= res!721278 (= (select (arr!33481 _keys!1070) i!650) k!904))))

(declare-fun b!1081952 () Bool)

(assert (=> b!1081952 (= e!618408 tp_is_empty!26359)))

(declare-fun b!1081953 () Bool)

(assert (=> b!1081953 (= e!618407 (and e!618406 mapRes!41293))))

(declare-fun condMapEmpty!41293 () Bool)

(declare-fun mapDefault!41293 () ValueCell!12470)

