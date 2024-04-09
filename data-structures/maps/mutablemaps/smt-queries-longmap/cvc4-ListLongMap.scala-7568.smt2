; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95768 () Bool)

(assert start!95768)

(declare-fun b_free!22385 () Bool)

(declare-fun b_next!22385 () Bool)

(assert (=> start!95768 (= b_free!22385 (not b_next!22385))))

(declare-fun tp!79004 () Bool)

(declare-fun b_and!35463 () Bool)

(assert (=> start!95768 (= tp!79004 b_and!35463)))

(declare-fun b!1082477 () Bool)

(declare-fun res!721654 () Bool)

(declare-fun e!618658 () Bool)

(assert (=> b!1082477 (=> (not res!721654) (not e!618658))))

(declare-datatypes ((array!69678 0))(
  ( (array!69679 (arr!33509 (Array (_ BitVec 32) (_ BitVec 64))) (size!34046 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69678)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1082477 (= res!721654 (= (select (arr!33509 _keys!1070) i!650) k!904))))

(declare-fun b!1082478 () Bool)

(declare-fun e!618661 () Bool)

(assert (=> b!1082478 (= e!618661 (not true))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40309 0))(
  ( (V!40310 (val!13250 Int)) )
))
(declare-datatypes ((ValueCell!12484 0))(
  ( (ValueCellFull!12484 (v!15872 V!40309)) (EmptyCell!12484) )
))
(declare-datatypes ((array!69680 0))(
  ( (array!69681 (arr!33510 (Array (_ BitVec 32) ValueCell!12484)) (size!34047 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69680)

(declare-fun minValue!831 () V!40309)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-fun lt!479624 () array!69678)

(declare-fun zeroValue!831 () V!40309)

(declare-datatypes ((tuple2!16858 0))(
  ( (tuple2!16859 (_1!8439 (_ BitVec 64)) (_2!8439 V!40309)) )
))
(declare-datatypes ((List!23491 0))(
  ( (Nil!23488) (Cons!23487 (h!24696 tuple2!16858) (t!32941 List!23491)) )
))
(declare-datatypes ((ListLongMap!14839 0))(
  ( (ListLongMap!14840 (toList!7435 List!23491)) )
))
(declare-fun lt!479621 () ListLongMap!14839)

(declare-fun getCurrentListMapNoExtraKeys!3946 (array!69678 array!69680 (_ BitVec 32) (_ BitVec 32) V!40309 V!40309 (_ BitVec 32) Int) ListLongMap!14839)

(declare-fun dynLambda!2082 (Int (_ BitVec 64)) V!40309)

(assert (=> b!1082478 (= lt!479621 (getCurrentListMapNoExtraKeys!3946 lt!479624 (array!69681 (store (arr!33510 _values!874) i!650 (ValueCellFull!12484 (dynLambda!2082 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34047 _values!874)) mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!479623 () ListLongMap!14839)

(assert (=> b!1082478 (= lt!479623 (getCurrentListMapNoExtraKeys!3946 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!69678 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1082478 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!35549 0))(
  ( (Unit!35550) )
))
(declare-fun lt!479622 () Unit!35549)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69678 (_ BitVec 64) (_ BitVec 32)) Unit!35549)

(assert (=> b!1082478 (= lt!479622 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1082479 () Bool)

(declare-fun res!721656 () Bool)

(assert (=> b!1082479 (=> (not res!721656) (not e!618658))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1082479 (= res!721656 (validKeyInArray!0 k!904))))

(declare-fun res!721657 () Bool)

(assert (=> start!95768 (=> (not res!721657) (not e!618658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95768 (= res!721657 (validMask!0 mask!1414))))

(assert (=> start!95768 e!618658))

(assert (=> start!95768 tp!79004))

(assert (=> start!95768 true))

(declare-fun tp_is_empty!26387 () Bool)

(assert (=> start!95768 tp_is_empty!26387))

(declare-fun array_inv!25726 (array!69678) Bool)

(assert (=> start!95768 (array_inv!25726 _keys!1070)))

(declare-fun e!618656 () Bool)

(declare-fun array_inv!25727 (array!69680) Bool)

(assert (=> start!95768 (and (array_inv!25727 _values!874) e!618656)))

(declare-fun b!1082480 () Bool)

(declare-fun e!618657 () Bool)

(assert (=> b!1082480 (= e!618657 tp_is_empty!26387)))

(declare-fun b!1082481 () Bool)

(declare-fun res!721658 () Bool)

(assert (=> b!1082481 (=> (not res!721658) (not e!618658))))

(assert (=> b!1082481 (= res!721658 (and (= (size!34047 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34046 _keys!1070) (size!34047 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!41335 () Bool)

(declare-fun mapRes!41335 () Bool)

(assert (=> mapIsEmpty!41335 mapRes!41335))

(declare-fun b!1082482 () Bool)

(declare-fun res!721659 () Bool)

(assert (=> b!1082482 (=> (not res!721659) (not e!618661))))

(declare-datatypes ((List!23492 0))(
  ( (Nil!23489) (Cons!23488 (h!24697 (_ BitVec 64)) (t!32942 List!23492)) )
))
(declare-fun arrayNoDuplicates!0 (array!69678 (_ BitVec 32) List!23492) Bool)

(assert (=> b!1082482 (= res!721659 (arrayNoDuplicates!0 lt!479624 #b00000000000000000000000000000000 Nil!23489))))

(declare-fun b!1082483 () Bool)

(declare-fun res!721653 () Bool)

(assert (=> b!1082483 (=> (not res!721653) (not e!618658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69678 (_ BitVec 32)) Bool)

(assert (=> b!1082483 (= res!721653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1082484 () Bool)

(declare-fun res!721655 () Bool)

(assert (=> b!1082484 (=> (not res!721655) (not e!618658))))

(assert (=> b!1082484 (= res!721655 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34046 _keys!1070))))))

(declare-fun b!1082485 () Bool)

(declare-fun e!618660 () Bool)

(assert (=> b!1082485 (= e!618656 (and e!618660 mapRes!41335))))

(declare-fun condMapEmpty!41335 () Bool)

(declare-fun mapDefault!41335 () ValueCell!12484)

