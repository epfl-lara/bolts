; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!96208 () Bool)

(assert start!96208)

(declare-fun b_free!22825 () Bool)

(declare-fun b_next!22825 () Bool)

(assert (=> start!96208 (= b_free!22825 (not b_next!22825))))

(declare-fun tp!80325 () Bool)

(declare-fun b_and!36343 () Bool)

(assert (=> start!96208 (= tp!80325 b_and!36343)))

(declare-fun b!1091849 () Bool)

(declare-fun e!623608 () Bool)

(declare-fun e!623606 () Bool)

(assert (=> b!1091849 (= e!623608 (not e!623606))))

(declare-fun res!728611 () Bool)

(assert (=> b!1091849 (=> res!728611 e!623606)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1091849 (= res!728611 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-datatypes ((V!40897 0))(
  ( (V!40898 (val!13470 Int)) )
))
(declare-fun minValue!831 () V!40897)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun zeroValue!831 () V!40897)

(declare-datatypes ((array!70538 0))(
  ( (array!70539 (arr!33939 (Array (_ BitVec 32) (_ BitVec 64))) (size!34476 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70538)

(declare-datatypes ((ValueCell!12704 0))(
  ( (ValueCellFull!12704 (v!16092 V!40897)) (EmptyCell!12704) )
))
(declare-datatypes ((array!70540 0))(
  ( (array!70541 (arr!33940 (Array (_ BitVec 32) ValueCell!12704)) (size!34477 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70540)

(declare-datatypes ((tuple2!17208 0))(
  ( (tuple2!17209 (_1!8614 (_ BitVec 64)) (_2!8614 V!40897)) )
))
(declare-datatypes ((List!23847 0))(
  ( (Nil!23844) (Cons!23843 (h!25052 tuple2!17208) (t!33737 List!23847)) )
))
(declare-datatypes ((ListLongMap!15189 0))(
  ( (ListLongMap!15190 (toList!7610 List!23847)) )
))
(declare-fun lt!487808 () ListLongMap!15189)

(declare-fun getCurrentListMap!4346 (array!70538 array!70540 (_ BitVec 32) (_ BitVec 32) V!40897 V!40897 (_ BitVec 32) Int) ListLongMap!15189)

(assert (=> b!1091849 (= lt!487808 (getCurrentListMap!4346 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487806 () array!70538)

(declare-fun lt!487807 () ListLongMap!15189)

(declare-fun lt!487812 () array!70540)

(assert (=> b!1091849 (= lt!487807 (getCurrentListMap!4346 lt!487806 lt!487812 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!487816 () ListLongMap!15189)

(declare-fun lt!487805 () ListLongMap!15189)

(assert (=> b!1091849 (and (= lt!487816 lt!487805) (= lt!487805 lt!487816))))

(declare-fun lt!487814 () ListLongMap!15189)

(declare-fun k!904 () (_ BitVec 64))

(declare-fun -!887 (ListLongMap!15189 (_ BitVec 64)) ListLongMap!15189)

(assert (=> b!1091849 (= lt!487805 (-!887 lt!487814 k!904))))

(declare-fun i!650 () (_ BitVec 32))

(declare-datatypes ((Unit!35889 0))(
  ( (Unit!35890) )
))
(declare-fun lt!487809 () Unit!35889)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!152 (array!70538 array!70540 (_ BitVec 32) (_ BitVec 32) V!40897 V!40897 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35889)

(assert (=> b!1091849 (= lt!487809 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!152 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4098 (array!70538 array!70540 (_ BitVec 32) (_ BitVec 32) V!40897 V!40897 (_ BitVec 32) Int) ListLongMap!15189)

(assert (=> b!1091849 (= lt!487816 (getCurrentListMapNoExtraKeys!4098 lt!487806 lt!487812 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2234 (Int (_ BitVec 64)) V!40897)

(assert (=> b!1091849 (= lt!487812 (array!70541 (store (arr!33940 _values!874) i!650 (ValueCellFull!12704 (dynLambda!2234 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34477 _values!874)))))

(assert (=> b!1091849 (= lt!487814 (getCurrentListMapNoExtraKeys!4098 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70538 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1091849 (arrayContainsKey!0 _keys!1070 k!904 #b00000000000000000000000000000000)))

(declare-fun lt!487811 () Unit!35889)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70538 (_ BitVec 64) (_ BitVec 32)) Unit!35889)

(assert (=> b!1091849 (= lt!487811 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k!904 i!650))))

(declare-fun b!1091850 () Bool)

(declare-fun res!728609 () Bool)

(declare-fun e!623605 () Bool)

(assert (=> b!1091850 (=> (not res!728609) (not e!623605))))

(assert (=> b!1091850 (= res!728609 (= (select (arr!33939 _keys!1070) i!650) k!904))))

(declare-fun b!1091851 () Bool)

(declare-fun res!728605 () Bool)

(assert (=> b!1091851 (=> (not res!728605) (not e!623608))))

(declare-datatypes ((List!23848 0))(
  ( (Nil!23845) (Cons!23844 (h!25053 (_ BitVec 64)) (t!33738 List!23848)) )
))
(declare-fun arrayNoDuplicates!0 (array!70538 (_ BitVec 32) List!23848) Bool)

(assert (=> b!1091851 (= res!728605 (arrayNoDuplicates!0 lt!487806 #b00000000000000000000000000000000 Nil!23845))))

(declare-fun b!1091852 () Bool)

(assert (=> b!1091852 (= e!623605 e!623608)))

(declare-fun res!728614 () Bool)

(assert (=> b!1091852 (=> (not res!728614) (not e!623608))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70538 (_ BitVec 32)) Bool)

(assert (=> b!1091852 (= res!728614 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!487806 mask!1414))))

(assert (=> b!1091852 (= lt!487806 (array!70539 (store (arr!33939 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34476 _keys!1070)))))

(declare-fun res!728610 () Bool)

(assert (=> start!96208 (=> (not res!728610) (not e!623605))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96208 (= res!728610 (validMask!0 mask!1414))))

(assert (=> start!96208 e!623605))

(assert (=> start!96208 tp!80325))

(assert (=> start!96208 true))

(declare-fun tp_is_empty!26827 () Bool)

(assert (=> start!96208 tp_is_empty!26827))

(declare-fun array_inv!26024 (array!70538) Bool)

(assert (=> start!96208 (array_inv!26024 _keys!1070)))

(declare-fun e!623607 () Bool)

(declare-fun array_inv!26025 (array!70540) Bool)

(assert (=> start!96208 (and (array_inv!26025 _values!874) e!623607)))

(declare-fun b!1091853 () Bool)

(declare-fun res!728612 () Bool)

(assert (=> b!1091853 (=> (not res!728612) (not e!623605))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1091853 (= res!728612 (validKeyInArray!0 k!904))))

(declare-fun b!1091854 () Bool)

(declare-fun res!728613 () Bool)

(assert (=> b!1091854 (=> (not res!728613) (not e!623605))))

(assert (=> b!1091854 (= res!728613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1091855 () Bool)

(declare-fun res!728608 () Bool)

(assert (=> b!1091855 (=> (not res!728608) (not e!623605))))

(assert (=> b!1091855 (= res!728608 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23845))))

(declare-fun b!1091856 () Bool)

(declare-fun e!623602 () Bool)

(assert (=> b!1091856 (= e!623606 e!623602)))

(declare-fun res!728607 () Bool)

(assert (=> b!1091856 (=> res!728607 e!623602)))

(assert (=> b!1091856 (= res!728607 (= #b1000000000000000000000000000000000000000000000000000000000000000 k!904))))

(declare-fun lt!487817 () ListLongMap!15189)

(assert (=> b!1091856 (= lt!487808 lt!487817)))

(declare-fun lt!487810 () tuple2!17208)

(declare-fun +!3312 (ListLongMap!15189 tuple2!17208) ListLongMap!15189)

(assert (=> b!1091856 (= lt!487817 (+!3312 lt!487814 lt!487810))))

(declare-fun lt!487813 () ListLongMap!15189)

(assert (=> b!1091856 (= lt!487807 lt!487813)))

(assert (=> b!1091856 (= lt!487813 (+!3312 lt!487805 lt!487810))))

(assert (=> b!1091856 (= lt!487807 (+!3312 lt!487816 lt!487810))))

(assert (=> b!1091856 (= lt!487810 (tuple2!17209 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1091857 () Bool)

(assert (=> b!1091857 (= e!623602 true)))

(assert (=> b!1091857 (= (-!887 lt!487817 k!904) lt!487813)))

(declare-fun lt!487815 () Unit!35889)

(declare-fun addRemoveCommutativeForDiffKeys!115 (ListLongMap!15189 (_ BitVec 64) V!40897 (_ BitVec 64)) Unit!35889)

(assert (=> b!1091857 (= lt!487815 (addRemoveCommutativeForDiffKeys!115 lt!487814 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k!904))))

(declare-fun mapNonEmpty!41995 () Bool)

(declare-fun mapRes!41995 () Bool)

(declare-fun tp!80324 () Bool)

(declare-fun e!623601 () Bool)

(assert (=> mapNonEmpty!41995 (= mapRes!41995 (and tp!80324 e!623601))))

(declare-fun mapRest!41995 () (Array (_ BitVec 32) ValueCell!12704))

(declare-fun mapKey!41995 () (_ BitVec 32))

(declare-fun mapValue!41995 () ValueCell!12704)

(assert (=> mapNonEmpty!41995 (= (arr!33940 _values!874) (store mapRest!41995 mapKey!41995 mapValue!41995))))

(declare-fun b!1091858 () Bool)

(assert (=> b!1091858 (= e!623601 tp_is_empty!26827)))

(declare-fun b!1091859 () Bool)

(declare-fun res!728615 () Bool)

(assert (=> b!1091859 (=> (not res!728615) (not e!623605))))

(assert (=> b!1091859 (= res!728615 (and (= (size!34477 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34476 _keys!1070) (size!34477 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!41995 () Bool)

(assert (=> mapIsEmpty!41995 mapRes!41995))

(declare-fun b!1091860 () Bool)

(declare-fun e!623604 () Bool)

(assert (=> b!1091860 (= e!623607 (and e!623604 mapRes!41995))))

(declare-fun condMapEmpty!41995 () Bool)

(declare-fun mapDefault!41995 () ValueCell!12704)

