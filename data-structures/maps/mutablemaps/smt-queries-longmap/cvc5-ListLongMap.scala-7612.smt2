; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96028 () Bool)

(assert start!96028)

(declare-fun b_free!22645 () Bool)

(declare-fun b_next!22645 () Bool)

(assert (=> start!96028 (= b_free!22645 (not b_next!22645))))

(declare-fun tp!79784 () Bool)

(declare-fun b_and!35983 () Bool)

(assert (=> start!96028 (= tp!79784 b_and!35983)))

(declare-fun mapNonEmpty!41725 () Bool)

(declare-fun mapRes!41725 () Bool)

(declare-fun tp!79785 () Bool)

(declare-fun e!621444 () Bool)

(assert (=> mapNonEmpty!41725 (= mapRes!41725 (and tp!79785 e!621444))))

(declare-datatypes ((V!40657 0))(
  ( (V!40658 (val!13380 Int)) )
))
(declare-datatypes ((ValueCell!12614 0))(
  ( (ValueCellFull!12614 (v!16002 V!40657)) (EmptyCell!12614) )
))
(declare-datatypes ((array!70186 0))(
  ( (array!70187 (arr!33763 (Array (_ BitVec 32) ValueCell!12614)) (size!34300 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70186)

(declare-fun mapRest!41725 () (Array (_ BitVec 32) ValueCell!12614))

(declare-fun mapKey!41725 () (_ BitVec 32))

(declare-fun mapValue!41725 () ValueCell!12614)

(assert (=> mapNonEmpty!41725 (= (arr!33763 _values!874) (store mapRest!41725 mapKey!41725 mapValue!41725))))

(declare-fun b!1087880 () Bool)

(declare-fun res!725631 () Bool)

(declare-fun e!621446 () Bool)

(assert (=> b!1087880 (=> (not res!725631) (not e!621446))))

(declare-fun k!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1087880 (= res!725631 (validKeyInArray!0 k!904))))

(declare-fun b!1087881 () Bool)

(declare-fun e!621447 () Bool)

(assert (=> b!1087881 (= e!621447 true)))

(declare-datatypes ((tuple2!17052 0))(
  ( (tuple2!17053 (_1!8536 (_ BitVec 64)) (_2!8536 V!40657)) )
))
(declare-datatypes ((List!23693 0))(
  ( (Nil!23690) (Cons!23689 (h!24898 tuple2!17052) (t!33403 List!23693)) )
))
(declare-datatypes ((ListLongMap!15033 0))(
  ( (ListLongMap!15034 (toList!7532 List!23693)) )
))
(declare-fun lt!484332 () ListLongMap!15033)

(declare-fun lt!484324 () ListLongMap!15033)

(declare-fun -!812 (ListLongMap!15033 (_ BitVec 64)) ListLongMap!15033)

(assert (=> b!1087881 (= (-!812 lt!484332 k!904) lt!484324)))

(declare-fun lt!484325 () ListLongMap!15033)

(declare-datatypes ((Unit!35739 0))(
  ( (Unit!35740) )
))
(declare-fun lt!484333 () Unit!35739)

(declare-fun zeroValue!831 () V!40657)

(declare-fun addRemoveCommutativeForDiffKeys!51 (ListLongMap!15033 (_ BitVec 64) V!40657 (_ BitVec 64)) Unit!35739)

(assert (=> b!1087881 (= lt!484333 (addRemoveCommutativeForDiffKeys!51 lt!484325 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun b!1087882 () Bool)

(declare-fun tp_is_empty!26647 () Bool)

(assert (=> b!1087882 (= e!621444 tp_is_empty!26647)))

(declare-fun mapIsEmpty!41725 () Bool)

(assert (=> mapIsEmpty!41725 mapRes!41725))

(declare-fun b!1087883 () Bool)

(declare-fun e!621448 () Bool)

(assert (=> b!1087883 (= e!621448 e!621447)))

(declare-fun res!725634 () Bool)

(assert (=> b!1087883 (=> res!725634 e!621447)))

(assert (=> b!1087883 (= res!725634 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-fun lt!484331 () ListLongMap!15033)

(assert (=> b!1087883 (= lt!484331 lt!484324)))

(declare-fun lt!484334 () ListLongMap!15033)

(declare-fun lt!484326 () tuple2!17052)

(declare-fun +!3254 (ListLongMap!15033 tuple2!17052) ListLongMap!15033)

(assert (=> b!1087883 (= lt!484324 (+!3254 lt!484334 lt!484326))))

(declare-fun lt!484330 () ListLongMap!15033)

(assert (=> b!1087883 (= lt!484330 lt!484332)))

(assert (=> b!1087883 (= lt!484332 (+!3254 lt!484325 lt!484326))))

(declare-fun lt!484328 () ListLongMap!15033)

(assert (=> b!1087883 (= lt!484331 (+!3254 lt!484328 lt!484326))))

(assert (=> b!1087883 (= lt!484326 (tuple2!17053 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1087885 () Bool)

(declare-fun res!725629 () Bool)

(assert (=> b!1087885 (=> (not res!725629) (not e!621446))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((array!70188 0))(
  ( (array!70189 (arr!33764 (Array (_ BitVec 32) (_ BitVec 64))) (size!34301 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70188)

(assert (=> b!1087885 (= res!725629 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34301 _keys!1070))))))

(declare-fun b!1087886 () Bool)

(declare-fun res!725626 () Bool)

(assert (=> b!1087886 (=> (not res!725626) (not e!621446))))

(declare-datatypes ((List!23694 0))(
  ( (Nil!23691) (Cons!23690 (h!24899 (_ BitVec 64)) (t!33404 List!23694)) )
))
(declare-fun arrayNoDuplicates!0 (array!70188 (_ BitVec 32) List!23694) Bool)

(assert (=> b!1087886 (= res!725626 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23691))))

(declare-fun b!1087887 () Bool)

(declare-fun e!621442 () Bool)

(assert (=> b!1087887 (= e!621442 tp_is_empty!26647)))

(declare-fun b!1087888 () Bool)

(declare-fun res!725627 () Bool)

(assert (=> b!1087888 (=> (not res!725627) (not e!621446))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1087888 (= res!725627 (and (= (size!34300 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34301 _keys!1070) (size!34300 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1087889 () Bool)

(declare-fun res!725635 () Bool)

(assert (=> b!1087889 (=> (not res!725635) (not e!621446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70188 (_ BitVec 32)) Bool)

(assert (=> b!1087889 (= res!725635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1087884 () Bool)

(declare-fun e!621445 () Bool)

(assert (=> b!1087884 (= e!621445 (not e!621448))))

(declare-fun res!725628 () Bool)

(assert (=> b!1087884 (=> res!725628 e!621448)))

(assert (=> b!1087884 (= res!725628 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun minValue!831 () V!40657)

(declare-fun getCurrentListMap!4283 (array!70188 array!70186 (_ BitVec 32) (_ BitVec 32) V!40657 V!40657 (_ BitVec 32) Int) ListLongMap!15033)

(assert (=> b!1087884 (= lt!484330 (getCurrentListMap!4283 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!484322 () array!70186)

(declare-fun lt!484327 () array!70188)

(assert (=> b!1087884 (= lt!484331 (getCurrentListMap!4283 lt!484327 lt!484322 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1087884 (and (= lt!484328 lt!484334) (= lt!484334 lt!484328))))

(assert (=> b!1087884 (= lt!484334 (-!812 lt!484325 k!904))))

(declare-fun lt!484329 () Unit!35739)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!89 (array!70188 array!70186 (_ BitVec 32) (_ BitVec 32) V!40657 V!40657 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35739)

(assert (=> b!1087884 (= lt!484329 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!89 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4035 (array!70188 array!70186 (_ BitVec 32) (_ BitVec 32) V!40657 V!40657 (_ BitVec 32) Int) ListLongMap!15033)

(assert (=> b!1087884 (= lt!484328 (getCurrentListMapNoExtraKeys!4035 lt!484327 lt!484322 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2171 (Int (_ BitVec 64)) V!40657)

(assert (=> b!1087884 (= lt!484322 (array!70187 (store (arr!33763 _values!874) i!650 (ValueCellFull!12614 (dynLambda!2171 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34300 _values!874)))))

(assert (=> b!1087884 (= lt!484325 (getCurrentListMapNoExtraKeys!4035 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70188 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1087884 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!484323 () Unit!35739)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70188 (_ BitVec 64) (_ BitVec 32)) Unit!35739)

(assert (=> b!1087884 (= lt!484323 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun res!725632 () Bool)

(assert (=> start!96028 (=> (not res!725632) (not e!621446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96028 (= res!725632 (validMask!0 mask!1414))))

(assert (=> start!96028 e!621446))

(assert (=> start!96028 tp!79784))

(assert (=> start!96028 true))

(assert (=> start!96028 tp_is_empty!26647))

(declare-fun array_inv!25904 (array!70188) Bool)

(assert (=> start!96028 (array_inv!25904 _keys!1070)))

(declare-fun e!621441 () Bool)

(declare-fun array_inv!25905 (array!70186) Bool)

(assert (=> start!96028 (and (array_inv!25905 _values!874) e!621441)))

(declare-fun b!1087890 () Bool)

(declare-fun res!725630 () Bool)

(assert (=> b!1087890 (=> (not res!725630) (not e!621446))))

(assert (=> b!1087890 (= res!725630 (= (select (arr!33764 _keys!1070) i!650) k!904))))

(declare-fun b!1087891 () Bool)

(declare-fun res!725636 () Bool)

(assert (=> b!1087891 (=> (not res!725636) (not e!621445))))

(assert (=> b!1087891 (= res!725636 (arrayNoDuplicates!0 lt!484327 #b00000000000000000000000000000000 Nil!23691))))

(declare-fun b!1087892 () Bool)

(assert (=> b!1087892 (= e!621441 (and e!621442 mapRes!41725))))

(declare-fun condMapEmpty!41725 () Bool)

(declare-fun mapDefault!41725 () ValueCell!12614)

