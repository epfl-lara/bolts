; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95964 () Bool)

(assert start!95964)

(declare-fun b_free!22581 () Bool)

(declare-fun b_next!22581 () Bool)

(assert (=> start!95964 (= b_free!22581 (not b_next!22581))))

(declare-fun tp!79593 () Bool)

(declare-fun b_and!35855 () Bool)

(assert (=> start!95964 (= tp!79593 b_and!35855)))

(declare-fun b!1086463 () Bool)

(declare-fun res!724564 () Bool)

(declare-fun e!620673 () Bool)

(assert (=> b!1086463 (=> (not res!724564) (not e!620673))))

(declare-datatypes ((array!70062 0))(
  ( (array!70063 (arr!33701 (Array (_ BitVec 32) (_ BitVec 64))) (size!34238 (_ BitVec 32))) )
))
(declare-fun lt!482916 () array!70062)

(declare-datatypes ((List!23638 0))(
  ( (Nil!23635) (Cons!23634 (h!24843 (_ BitVec 64)) (t!33284 List!23638)) )
))
(declare-fun arrayNoDuplicates!0 (array!70062 (_ BitVec 32) List!23638) Bool)

(assert (=> b!1086463 (= res!724564 (arrayNoDuplicates!0 lt!482916 #b00000000000000000000000000000000 Nil!23635))))

(declare-fun b!1086464 () Bool)

(declare-fun e!620676 () Bool)

(assert (=> b!1086464 (= e!620676 true)))

(declare-fun k0!904 () (_ BitVec 64))

(declare-datatypes ((V!40571 0))(
  ( (V!40572 (val!13348 Int)) )
))
(declare-datatypes ((tuple2!16998 0))(
  ( (tuple2!16999 (_1!8509 (_ BitVec 64)) (_2!8509 V!40571)) )
))
(declare-datatypes ((List!23639 0))(
  ( (Nil!23636) (Cons!23635 (h!24844 tuple2!16998) (t!33285 List!23639)) )
))
(declare-datatypes ((ListLongMap!14979 0))(
  ( (ListLongMap!14980 (toList!7505 List!23639)) )
))
(declare-fun lt!482909 () ListLongMap!14979)

(declare-fun lt!482908 () tuple2!16998)

(declare-fun lt!482914 () ListLongMap!14979)

(declare-fun -!786 (ListLongMap!14979 (_ BitVec 64)) ListLongMap!14979)

(declare-fun +!3233 (ListLongMap!14979 tuple2!16998) ListLongMap!14979)

(assert (=> b!1086464 (= (-!786 lt!482914 k0!904) (+!3233 lt!482909 lt!482908))))

(declare-fun lt!482911 () ListLongMap!14979)

(declare-fun minValue!831 () V!40571)

(declare-datatypes ((Unit!35687 0))(
  ( (Unit!35688) )
))
(declare-fun lt!482913 () Unit!35687)

(declare-fun addRemoveCommutativeForDiffKeys!29 (ListLongMap!14979 (_ BitVec 64) V!40571 (_ BitVec 64)) Unit!35687)

(assert (=> b!1086464 (= lt!482913 (addRemoveCommutativeForDiffKeys!29 lt!482911 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1086465 () Bool)

(declare-fun e!620677 () Bool)

(declare-fun tp_is_empty!26583 () Bool)

(assert (=> b!1086465 (= e!620677 tp_is_empty!26583)))

(declare-fun b!1086466 () Bool)

(declare-fun e!620678 () Bool)

(assert (=> b!1086466 (= e!620678 e!620673)))

(declare-fun res!724563 () Bool)

(assert (=> b!1086466 (=> (not res!724563) (not e!620673))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70062 (_ BitVec 32)) Bool)

(assert (=> b!1086466 (= res!724563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!482916 mask!1414))))

(declare-fun _keys!1070 () array!70062)

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1086466 (= lt!482916 (array!70063 (store (arr!33701 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34238 _keys!1070)))))

(declare-fun b!1086467 () Bool)

(declare-fun e!620675 () Bool)

(declare-fun e!620674 () Bool)

(declare-fun mapRes!41629 () Bool)

(assert (=> b!1086467 (= e!620675 (and e!620674 mapRes!41629))))

(declare-fun condMapEmpty!41629 () Bool)

(declare-datatypes ((ValueCell!12582 0))(
  ( (ValueCellFull!12582 (v!15970 V!40571)) (EmptyCell!12582) )
))
(declare-datatypes ((array!70064 0))(
  ( (array!70065 (arr!33702 (Array (_ BitVec 32) ValueCell!12582)) (size!34239 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70064)

(declare-fun mapDefault!41629 () ValueCell!12582)

(assert (=> b!1086467 (= condMapEmpty!41629 (= (arr!33702 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12582)) mapDefault!41629)))))

(declare-fun b!1086468 () Bool)

(assert (=> b!1086468 (= e!620674 tp_is_empty!26583)))

(declare-fun b!1086469 () Bool)

(declare-fun res!724570 () Bool)

(assert (=> b!1086469 (=> (not res!724570) (not e!620678))))

(assert (=> b!1086469 (= res!724570 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34238 _keys!1070))))))

(declare-fun b!1086471 () Bool)

(declare-fun e!620680 () Bool)

(assert (=> b!1086471 (= e!620673 (not e!620680))))

(declare-fun res!724561 () Bool)

(assert (=> b!1086471 (=> res!724561 e!620680)))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1086471 (= res!724561 (or (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun lt!482905 () ListLongMap!14979)

(declare-fun zeroValue!831 () V!40571)

(declare-fun getCurrentListMap!4260 (array!70062 array!70064 (_ BitVec 32) (_ BitVec 32) V!40571 V!40571 (_ BitVec 32) Int) ListLongMap!14979)

(assert (=> b!1086471 (= lt!482905 (getCurrentListMap!4260 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!482907 () ListLongMap!14979)

(declare-fun lt!482906 () array!70064)

(assert (=> b!1086471 (= lt!482907 (getCurrentListMap!4260 lt!482916 lt!482906 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!482920 () ListLongMap!14979)

(declare-fun lt!482919 () ListLongMap!14979)

(assert (=> b!1086471 (and (= lt!482920 lt!482919) (= lt!482919 lt!482920))))

(declare-fun lt!482910 () ListLongMap!14979)

(assert (=> b!1086471 (= lt!482919 (-!786 lt!482910 k0!904))))

(declare-fun lt!482915 () Unit!35687)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!66 (array!70062 array!70064 (_ BitVec 32) (_ BitVec 32) V!40571 V!40571 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35687)

(assert (=> b!1086471 (= lt!482915 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!66 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4012 (array!70062 array!70064 (_ BitVec 32) (_ BitVec 32) V!40571 V!40571 (_ BitVec 32) Int) ListLongMap!14979)

(assert (=> b!1086471 (= lt!482920 (getCurrentListMapNoExtraKeys!4012 lt!482916 lt!482906 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2148 (Int (_ BitVec 64)) V!40571)

(assert (=> b!1086471 (= lt!482906 (array!70065 (store (arr!33702 _values!874) i!650 (ValueCellFull!12582 (dynLambda!2148 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34239 _values!874)))))

(assert (=> b!1086471 (= lt!482910 (getCurrentListMapNoExtraKeys!4012 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70062 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1086471 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!482921 () Unit!35687)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70062 (_ BitVec 64) (_ BitVec 32)) Unit!35687)

(assert (=> b!1086471 (= lt!482921 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1086472 () Bool)

(assert (=> b!1086472 (= e!620680 e!620676)))

(declare-fun res!724562 () Bool)

(assert (=> b!1086472 (=> res!724562 e!620676)))

(assert (=> b!1086472 (= res!724562 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!482917 () ListLongMap!14979)

(assert (=> b!1086472 (= lt!482909 lt!482917)))

(assert (=> b!1086472 (= lt!482909 (-!786 lt!482911 k0!904))))

(declare-fun lt!482918 () Unit!35687)

(assert (=> b!1086472 (= lt!482918 (addRemoveCommutativeForDiffKeys!29 lt!482910 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831 k0!904))))

(assert (=> b!1086472 (= lt!482907 (+!3233 lt!482917 lt!482908))))

(declare-fun lt!482912 () tuple2!16998)

(assert (=> b!1086472 (= lt!482917 (+!3233 lt!482919 lt!482912))))

(assert (=> b!1086472 (= lt!482905 lt!482914)))

(assert (=> b!1086472 (= lt!482914 (+!3233 lt!482911 lt!482908))))

(assert (=> b!1086472 (= lt!482911 (+!3233 lt!482910 lt!482912))))

(assert (=> b!1086472 (= lt!482907 (+!3233 (+!3233 lt!482920 lt!482912) lt!482908))))

(assert (=> b!1086472 (= lt!482908 (tuple2!16999 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(assert (=> b!1086472 (= lt!482912 (tuple2!16999 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!831))))

(declare-fun b!1086473 () Bool)

(declare-fun res!724569 () Bool)

(assert (=> b!1086473 (=> (not res!724569) (not e!620678))))

(assert (=> b!1086473 (= res!724569 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23635))))

(declare-fun b!1086470 () Bool)

(declare-fun res!724568 () Bool)

(assert (=> b!1086470 (=> (not res!724568) (not e!620678))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1086470 (= res!724568 (validKeyInArray!0 k0!904))))

(declare-fun res!724567 () Bool)

(assert (=> start!95964 (=> (not res!724567) (not e!620678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95964 (= res!724567 (validMask!0 mask!1414))))

(assert (=> start!95964 e!620678))

(assert (=> start!95964 tp!79593))

(assert (=> start!95964 true))

(assert (=> start!95964 tp_is_empty!26583))

(declare-fun array_inv!25856 (array!70062) Bool)

(assert (=> start!95964 (array_inv!25856 _keys!1070)))

(declare-fun array_inv!25857 (array!70064) Bool)

(assert (=> start!95964 (and (array_inv!25857 _values!874) e!620675)))

(declare-fun b!1086474 () Bool)

(declare-fun res!724566 () Bool)

(assert (=> b!1086474 (=> (not res!724566) (not e!620678))))

(assert (=> b!1086474 (= res!724566 (and (= (size!34239 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34238 _keys!1070) (size!34239 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1086475 () Bool)

(declare-fun res!724571 () Bool)

(assert (=> b!1086475 (=> (not res!724571) (not e!620678))))

(assert (=> b!1086475 (= res!724571 (= (select (arr!33701 _keys!1070) i!650) k0!904))))

(declare-fun b!1086476 () Bool)

(declare-fun res!724565 () Bool)

(assert (=> b!1086476 (=> (not res!724565) (not e!620678))))

(assert (=> b!1086476 (= res!724565 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!41629 () Bool)

(assert (=> mapIsEmpty!41629 mapRes!41629))

(declare-fun mapNonEmpty!41629 () Bool)

(declare-fun tp!79592 () Bool)

(assert (=> mapNonEmpty!41629 (= mapRes!41629 (and tp!79592 e!620677))))

(declare-fun mapRest!41629 () (Array (_ BitVec 32) ValueCell!12582))

(declare-fun mapValue!41629 () ValueCell!12582)

(declare-fun mapKey!41629 () (_ BitVec 32))

(assert (=> mapNonEmpty!41629 (= (arr!33702 _values!874) (store mapRest!41629 mapKey!41629 mapValue!41629))))

(assert (= (and start!95964 res!724567) b!1086474))

(assert (= (and b!1086474 res!724566) b!1086476))

(assert (= (and b!1086476 res!724565) b!1086473))

(assert (= (and b!1086473 res!724569) b!1086469))

(assert (= (and b!1086469 res!724570) b!1086470))

(assert (= (and b!1086470 res!724568) b!1086475))

(assert (= (and b!1086475 res!724571) b!1086466))

(assert (= (and b!1086466 res!724563) b!1086463))

(assert (= (and b!1086463 res!724564) b!1086471))

(assert (= (and b!1086471 (not res!724561)) b!1086472))

(assert (= (and b!1086472 (not res!724562)) b!1086464))

(assert (= (and b!1086467 condMapEmpty!41629) mapIsEmpty!41629))

(assert (= (and b!1086467 (not condMapEmpty!41629)) mapNonEmpty!41629))

(get-info :version)

(assert (= (and mapNonEmpty!41629 ((_ is ValueCellFull!12582) mapValue!41629)) b!1086465))

(assert (= (and b!1086467 ((_ is ValueCellFull!12582) mapDefault!41629)) b!1086468))

(assert (= start!95964 b!1086467))

(declare-fun b_lambda!17281 () Bool)

(assert (=> (not b_lambda!17281) (not b!1086471)))

(declare-fun t!33283 () Bool)

(declare-fun tb!7467 () Bool)

(assert (=> (and start!95964 (= defaultEntry!882 defaultEntry!882) t!33283) tb!7467))

(declare-fun result!15445 () Bool)

(assert (=> tb!7467 (= result!15445 tp_is_empty!26583)))

(assert (=> b!1086471 t!33283))

(declare-fun b_and!35857 () Bool)

(assert (= b_and!35855 (and (=> t!33283 result!15445) b_and!35857)))

(declare-fun m!1005133 () Bool)

(assert (=> b!1086476 m!1005133))

(declare-fun m!1005135 () Bool)

(assert (=> b!1086471 m!1005135))

(declare-fun m!1005137 () Bool)

(assert (=> b!1086471 m!1005137))

(declare-fun m!1005139 () Bool)

(assert (=> b!1086471 m!1005139))

(declare-fun m!1005141 () Bool)

(assert (=> b!1086471 m!1005141))

(declare-fun m!1005143 () Bool)

(assert (=> b!1086471 m!1005143))

(declare-fun m!1005145 () Bool)

(assert (=> b!1086471 m!1005145))

(declare-fun m!1005147 () Bool)

(assert (=> b!1086471 m!1005147))

(declare-fun m!1005149 () Bool)

(assert (=> b!1086471 m!1005149))

(declare-fun m!1005151 () Bool)

(assert (=> b!1086471 m!1005151))

(declare-fun m!1005153 () Bool)

(assert (=> b!1086471 m!1005153))

(declare-fun m!1005155 () Bool)

(assert (=> b!1086470 m!1005155))

(declare-fun m!1005157 () Bool)

(assert (=> start!95964 m!1005157))

(declare-fun m!1005159 () Bool)

(assert (=> start!95964 m!1005159))

(declare-fun m!1005161 () Bool)

(assert (=> start!95964 m!1005161))

(declare-fun m!1005163 () Bool)

(assert (=> b!1086475 m!1005163))

(declare-fun m!1005165 () Bool)

(assert (=> b!1086466 m!1005165))

(declare-fun m!1005167 () Bool)

(assert (=> b!1086466 m!1005167))

(declare-fun m!1005169 () Bool)

(assert (=> mapNonEmpty!41629 m!1005169))

(declare-fun m!1005171 () Bool)

(assert (=> b!1086464 m!1005171))

(declare-fun m!1005173 () Bool)

(assert (=> b!1086464 m!1005173))

(declare-fun m!1005175 () Bool)

(assert (=> b!1086464 m!1005175))

(declare-fun m!1005177 () Bool)

(assert (=> b!1086473 m!1005177))

(declare-fun m!1005179 () Bool)

(assert (=> b!1086463 m!1005179))

(declare-fun m!1005181 () Bool)

(assert (=> b!1086472 m!1005181))

(declare-fun m!1005183 () Bool)

(assert (=> b!1086472 m!1005183))

(declare-fun m!1005185 () Bool)

(assert (=> b!1086472 m!1005185))

(assert (=> b!1086472 m!1005181))

(declare-fun m!1005187 () Bool)

(assert (=> b!1086472 m!1005187))

(declare-fun m!1005189 () Bool)

(assert (=> b!1086472 m!1005189))

(declare-fun m!1005191 () Bool)

(assert (=> b!1086472 m!1005191))

(declare-fun m!1005193 () Bool)

(assert (=> b!1086472 m!1005193))

(declare-fun m!1005195 () Bool)

(assert (=> b!1086472 m!1005195))

(check-sat (not mapNonEmpty!41629) (not b!1086471) (not b_lambda!17281) (not b!1086464) (not b_next!22581) (not b!1086470) (not b!1086472) tp_is_empty!26583 b_and!35857 (not b!1086473) (not start!95964) (not b!1086476) (not b!1086463) (not b!1086466))
(check-sat b_and!35857 (not b_next!22581))
