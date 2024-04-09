; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96058 () Bool)

(assert start!96058)

(declare-fun b_free!22675 () Bool)

(declare-fun b_next!22675 () Bool)

(assert (=> start!96058 (= b_free!22675 (not b_next!22675))))

(declare-fun tp!79874 () Bool)

(declare-fun b_and!36043 () Bool)

(assert (=> start!96058 (= tp!79874 b_and!36043)))

(declare-fun b!1088540 () Bool)

(declare-fun res!726122 () Bool)

(declare-fun e!621806 () Bool)

(assert (=> b!1088540 (=> (not res!726122) (not e!621806))))

(declare-datatypes ((array!70246 0))(
  ( (array!70247 (arr!33793 (Array (_ BitVec 32) (_ BitVec 64))) (size!34330 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70246)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1088540 (= res!726122 (= (select (arr!33793 _keys!1070) i!650) k!904))))

(declare-fun b!1088541 () Bool)

(declare-fun e!621804 () Bool)

(assert (=> b!1088541 (= e!621804 true)))

(declare-datatypes ((V!40697 0))(
  ( (V!40698 (val!13395 Int)) )
))
(declare-datatypes ((tuple2!17080 0))(
  ( (tuple2!17081 (_1!8550 (_ BitVec 64)) (_2!8550 V!40697)) )
))
(declare-datatypes ((List!23719 0))(
  ( (Nil!23716) (Cons!23715 (h!24924 tuple2!17080) (t!33459 List!23719)) )
))
(declare-datatypes ((ListLongMap!15061 0))(
  ( (ListLongMap!15062 (toList!7546 List!23719)) )
))
(declare-fun lt!484908 () ListLongMap!15061)

(declare-fun lt!484916 () ListLongMap!15061)

(declare-fun -!826 (ListLongMap!15061 (_ BitVec 64)) ListLongMap!15061)

(assert (=> b!1088541 (= (-!826 lt!484908 k!904) lt!484916)))

(declare-datatypes ((Unit!35767 0))(
  ( (Unit!35768) )
))
(declare-fun lt!484912 () Unit!35767)

(declare-fun lt!484917 () ListLongMap!15061)

(declare-fun zeroValue!831 () V!40697)

(declare-fun addRemoveCommutativeForDiffKeys!62 (ListLongMap!15061 (_ BitVec 64) V!40697 (_ BitVec 64)) Unit!35767)

(assert (=> b!1088541 (= lt!484912 (addRemoveCommutativeForDiffKeys!62 lt!484917 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k!904))))

(declare-fun res!726131 () Bool)

(assert (=> start!96058 (=> (not res!726131) (not e!621806))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96058 (= res!726131 (validMask!0 mask!1414))))

(assert (=> start!96058 e!621806))

(assert (=> start!96058 tp!79874))

(assert (=> start!96058 true))

(declare-fun tp_is_empty!26677 () Bool)

(assert (=> start!96058 tp_is_empty!26677))

(declare-fun array_inv!25928 (array!70246) Bool)

(assert (=> start!96058 (array_inv!25928 _keys!1070)))

(declare-datatypes ((ValueCell!12629 0))(
  ( (ValueCellFull!12629 (v!16017 V!40697)) (EmptyCell!12629) )
))
(declare-datatypes ((array!70248 0))(
  ( (array!70249 (arr!33794 (Array (_ BitVec 32) ValueCell!12629)) (size!34331 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70248)

(declare-fun e!621801 () Bool)

(declare-fun array_inv!25929 (array!70248) Bool)

(assert (=> start!96058 (and (array_inv!25929 _values!874) e!621801)))

(declare-fun b!1088542 () Bool)

(declare-fun e!621808 () Bool)

(assert (=> b!1088542 (= e!621808 tp_is_empty!26677)))

(declare-fun mapNonEmpty!41770 () Bool)

(declare-fun mapRes!41770 () Bool)

(declare-fun tp!79875 () Bool)

(declare-fun e!621807 () Bool)

(assert (=> mapNonEmpty!41770 (= mapRes!41770 (and tp!79875 e!621807))))

(declare-fun mapValue!41770 () ValueCell!12629)

(declare-fun mapKey!41770 () (_ BitVec 32))

(declare-fun mapRest!41770 () (Array (_ BitVec 32) ValueCell!12629))

(assert (=> mapNonEmpty!41770 (= (arr!33794 _values!874) (store mapRest!41770 mapKey!41770 mapValue!41770))))

(declare-fun b!1088543 () Bool)

(declare-fun res!726123 () Bool)

(declare-fun e!621805 () Bool)

(assert (=> b!1088543 (=> (not res!726123) (not e!621805))))

(declare-fun lt!484918 () array!70246)

(declare-datatypes ((List!23720 0))(
  ( (Nil!23717) (Cons!23716 (h!24925 (_ BitVec 64)) (t!33460 List!23720)) )
))
(declare-fun arrayNoDuplicates!0 (array!70246 (_ BitVec 32) List!23720) Bool)

(assert (=> b!1088543 (= res!726123 (arrayNoDuplicates!0 lt!484918 #b00000000000000000000000000000000 Nil!23717))))

(declare-fun b!1088544 () Bool)

(declare-fun e!621802 () Bool)

(assert (=> b!1088544 (= e!621802 e!621804)))

(declare-fun res!726124 () Bool)

(assert (=> b!1088544 (=> res!726124 e!621804)))

(assert (=> b!1088544 (= res!726124 (= #b0000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-fun lt!484909 () ListLongMap!15061)

(assert (=> b!1088544 (= lt!484909 lt!484916)))

(declare-fun lt!484914 () ListLongMap!15061)

(declare-fun lt!484907 () tuple2!17080)

(declare-fun +!3265 (ListLongMap!15061 tuple2!17080) ListLongMap!15061)

(assert (=> b!1088544 (= lt!484916 (+!3265 lt!484914 lt!484907))))

(declare-fun lt!484915 () ListLongMap!15061)

(assert (=> b!1088544 (= lt!484915 lt!484908)))

(assert (=> b!1088544 (= lt!484908 (+!3265 lt!484917 lt!484907))))

(declare-fun lt!484911 () ListLongMap!15061)

(assert (=> b!1088544 (= lt!484909 (+!3265 lt!484911 lt!484907))))

(assert (=> b!1088544 (= lt!484907 (tuple2!17081 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1088545 () Bool)

(assert (=> b!1088545 (= e!621807 tp_is_empty!26677)))

(declare-fun b!1088546 () Bool)

(assert (=> b!1088546 (= e!621801 (and e!621808 mapRes!41770))))

(declare-fun condMapEmpty!41770 () Bool)

(declare-fun mapDefault!41770 () ValueCell!12629)

