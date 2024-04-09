; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96038 () Bool)

(assert start!96038)

(declare-fun b_free!22655 () Bool)

(declare-fun b_next!22655 () Bool)

(assert (=> start!96038 (= b_free!22655 (not b_next!22655))))

(declare-fun tp!79814 () Bool)

(declare-fun b_and!36003 () Bool)

(assert (=> start!96038 (= tp!79814 b_and!36003)))

(declare-fun b!1088100 () Bool)

(declare-fun res!725796 () Bool)

(declare-fun e!621562 () Bool)

(assert (=> b!1088100 (=> (not res!725796) (not e!621562))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1088100 (= res!725796 (validKeyInArray!0 k!904))))

(declare-fun b!1088101 () Bool)

(declare-fun res!725791 () Bool)

(assert (=> b!1088101 (=> (not res!725791) (not e!621562))))

(declare-datatypes ((array!70206 0))(
  ( (array!70207 (arr!33773 (Array (_ BitVec 32) (_ BitVec 64))) (size!34310 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70206)

(declare-datatypes ((List!23702 0))(
  ( (Nil!23699) (Cons!23698 (h!24907 (_ BitVec 64)) (t!33422 List!23702)) )
))
(declare-fun arrayNoDuplicates!0 (array!70206 (_ BitVec 32) List!23702) Bool)

(assert (=> b!1088101 (= res!725791 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23699))))

(declare-fun mapIsEmpty!41740 () Bool)

(declare-fun mapRes!41740 () Bool)

(assert (=> mapIsEmpty!41740 mapRes!41740))

(declare-fun res!725801 () Bool)

(assert (=> start!96038 (=> (not res!725801) (not e!621562))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96038 (= res!725801 (validMask!0 mask!1414))))

(assert (=> start!96038 e!621562))

(assert (=> start!96038 tp!79814))

(assert (=> start!96038 true))

(declare-fun tp_is_empty!26657 () Bool)

(assert (=> start!96038 tp_is_empty!26657))

(declare-fun array_inv!25910 (array!70206) Bool)

(assert (=> start!96038 (array_inv!25910 _keys!1070)))

(declare-datatypes ((V!40669 0))(
  ( (V!40670 (val!13385 Int)) )
))
(declare-datatypes ((ValueCell!12619 0))(
  ( (ValueCellFull!12619 (v!16007 V!40669)) (EmptyCell!12619) )
))
(declare-datatypes ((array!70208 0))(
  ( (array!70209 (arr!33774 (Array (_ BitVec 32) ValueCell!12619)) (size!34311 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70208)

(declare-fun e!621563 () Bool)

(declare-fun array_inv!25911 (array!70208) Bool)

(assert (=> start!96038 (and (array_inv!25911 _values!874) e!621563)))

(declare-fun b!1088102 () Bool)

(declare-fun e!621561 () Bool)

(assert (=> b!1088102 (= e!621562 e!621561)))

(declare-fun res!725795 () Bool)

(assert (=> b!1088102 (=> (not res!725795) (not e!621561))))

(declare-fun lt!484520 () array!70206)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70206 (_ BitVec 32)) Bool)

(assert (=> b!1088102 (= res!725795 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!484520 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1088102 (= lt!484520 (array!70207 (store (arr!33773 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34310 _keys!1070)))))

(declare-fun mapNonEmpty!41740 () Bool)

(declare-fun tp!79815 () Bool)

(declare-fun e!621564 () Bool)

(assert (=> mapNonEmpty!41740 (= mapRes!41740 (and tp!79815 e!621564))))

(declare-fun mapValue!41740 () ValueCell!12619)

(declare-fun mapRest!41740 () (Array (_ BitVec 32) ValueCell!12619))

(declare-fun mapKey!41740 () (_ BitVec 32))

(assert (=> mapNonEmpty!41740 (= (arr!33774 _values!874) (store mapRest!41740 mapKey!41740 mapValue!41740))))

(declare-fun b!1088103 () Bool)

(declare-fun e!621567 () Bool)

(assert (=> b!1088103 (= e!621563 (and e!621567 mapRes!41740))))

(declare-fun condMapEmpty!41740 () Bool)

(declare-fun mapDefault!41740 () ValueCell!12619)

