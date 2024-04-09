; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96176 () Bool)

(assert start!96176)

(declare-fun b_free!22793 () Bool)

(declare-fun b_next!22793 () Bool)

(assert (=> start!96176 (= b_free!22793 (not b_next!22793))))

(declare-fun tp!80229 () Bool)

(declare-fun b_and!36279 () Bool)

(assert (=> start!96176 (= tp!80229 b_and!36279)))

(declare-fun mapIsEmpty!41947 () Bool)

(declare-fun mapRes!41947 () Bool)

(assert (=> mapIsEmpty!41947 mapRes!41947))

(declare-fun b!1091145 () Bool)

(declare-fun res!728086 () Bool)

(declare-fun e!623220 () Bool)

(assert (=> b!1091145 (=> (not res!728086) (not e!623220))))

(declare-datatypes ((array!70476 0))(
  ( (array!70477 (arr!33908 (Array (_ BitVec 32) (_ BitVec 64))) (size!34445 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70476)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70476 (_ BitVec 32)) Bool)

(assert (=> b!1091145 (= res!728086 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1091146 () Bool)

(declare-fun res!728081 () Bool)

(assert (=> b!1091146 (=> (not res!728081) (not e!623220))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1091146 (= res!728081 (= (select (arr!33908 _keys!1070) i!650) k!904))))

(declare-fun res!728078 () Bool)

(assert (=> start!96176 (=> (not res!728078) (not e!623220))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96176 (= res!728078 (validMask!0 mask!1414))))

(assert (=> start!96176 e!623220))

(assert (=> start!96176 tp!80229))

(assert (=> start!96176 true))

(declare-fun tp_is_empty!26795 () Bool)

(assert (=> start!96176 tp_is_empty!26795))

(declare-fun array_inv!26004 (array!70476) Bool)

(assert (=> start!96176 (array_inv!26004 _keys!1070)))

(declare-datatypes ((V!40853 0))(
  ( (V!40854 (val!13454 Int)) )
))
(declare-datatypes ((ValueCell!12688 0))(
  ( (ValueCellFull!12688 (v!16076 V!40853)) (EmptyCell!12688) )
))
(declare-datatypes ((array!70478 0))(
  ( (array!70479 (arr!33909 (Array (_ BitVec 32) ValueCell!12688)) (size!34446 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70478)

(declare-fun e!623217 () Bool)

(declare-fun array_inv!26005 (array!70478) Bool)

(assert (=> start!96176 (and (array_inv!26005 _values!874) e!623217)))

(declare-fun b!1091147 () Bool)

(declare-fun res!728082 () Bool)

(assert (=> b!1091147 (=> (not res!728082) (not e!623220))))

(declare-datatypes ((List!23821 0))(
  ( (Nil!23818) (Cons!23817 (h!25026 (_ BitVec 64)) (t!33679 List!23821)) )
))
(declare-fun arrayNoDuplicates!0 (array!70476 (_ BitVec 32) List!23821) Bool)

(assert (=> b!1091147 (= res!728082 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23818))))

(declare-fun b!1091148 () Bool)

(declare-fun res!728079 () Bool)

(assert (=> b!1091148 (=> (not res!728079) (not e!623220))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1091148 (= res!728079 (and (= (size!34446 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34445 _keys!1070) (size!34446 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1091149 () Bool)

(declare-fun e!623223 () Bool)

(assert (=> b!1091149 (= e!623223 tp_is_empty!26795)))

(declare-fun b!1091150 () Bool)

(declare-fun res!728084 () Bool)

(assert (=> b!1091150 (=> (not res!728084) (not e!623220))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1091150 (= res!728084 (validKeyInArray!0 k!904))))

(declare-fun mapNonEmpty!41947 () Bool)

(declare-fun tp!80228 () Bool)

(declare-fun e!623222 () Bool)

(assert (=> mapNonEmpty!41947 (= mapRes!41947 (and tp!80228 e!623222))))

(declare-fun mapRest!41947 () (Array (_ BitVec 32) ValueCell!12688))

(declare-fun mapKey!41947 () (_ BitVec 32))

(declare-fun mapValue!41947 () ValueCell!12688)

(assert (=> mapNonEmpty!41947 (= (arr!33909 _values!874) (store mapRest!41947 mapKey!41947 mapValue!41947))))

(declare-fun b!1091151 () Bool)

(assert (=> b!1091151 (= e!623222 tp_is_empty!26795)))

(declare-fun b!1091152 () Bool)

(declare-fun e!623219 () Bool)

(assert (=> b!1091152 (= e!623219 true)))

(declare-datatypes ((tuple2!17182 0))(
  ( (tuple2!17183 (_1!8601 (_ BitVec 64)) (_2!8601 V!40853)) )
))
(declare-datatypes ((List!23822 0))(
  ( (Nil!23819) (Cons!23818 (h!25027 tuple2!17182) (t!33680 List!23822)) )
))
(declare-datatypes ((ListLongMap!15163 0))(
  ( (ListLongMap!15164 (toList!7597 List!23822)) )
))
(declare-fun lt!487189 () ListLongMap!15163)

(declare-fun lt!487193 () ListLongMap!15163)

(declare-fun -!875 (ListLongMap!15163 (_ BitVec 64)) ListLongMap!15163)

(assert (=> b!1091152 (= (-!875 lt!487189 k!904) lt!487193)))

(declare-datatypes ((Unit!35865 0))(
  ( (Unit!35866) )
))
(declare-fun lt!487184 () Unit!35865)

(declare-fun lt!487192 () ListLongMap!15163)

(declare-fun minValue!831 () V!40853)

(declare-fun addRemoveCommutativeForDiffKeys!103 (ListLongMap!15163 (_ BitVec 64) V!40853 (_ BitVec 64)) Unit!35865)

(assert (=> b!1091152 (= lt!487184 (addRemoveCommutativeForDiffKeys!103 lt!487192 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun b!1091153 () Bool)

(declare-fun res!728080 () Bool)

(declare-fun e!623224 () Bool)

(assert (=> b!1091153 (=> (not res!728080) (not e!623224))))

(declare-fun lt!487182 () array!70476)

(assert (=> b!1091153 (= res!728080 (arrayNoDuplicates!0 lt!487182 #b00000000000000000000000000000000 Nil!23818))))

(declare-fun b!1091154 () Bool)

(assert (=> b!1091154 (= e!623217 (and e!623223 mapRes!41947))))

(declare-fun condMapEmpty!41947 () Bool)

(declare-fun mapDefault!41947 () ValueCell!12688)

