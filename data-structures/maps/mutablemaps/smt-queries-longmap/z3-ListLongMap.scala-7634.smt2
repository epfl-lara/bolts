; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96162 () Bool)

(assert start!96162)

(declare-fun b_free!22779 () Bool)

(declare-fun b_next!22779 () Bool)

(assert (=> start!96162 (= b_free!22779 (not b_next!22779))))

(declare-fun tp!80187 () Bool)

(declare-fun b_and!36251 () Bool)

(assert (=> start!96162 (= tp!80187 b_and!36251)))

(declare-fun b!1090837 () Bool)

(declare-fun res!727849 () Bool)

(declare-fun e!623049 () Bool)

(assert (=> b!1090837 (=> (not res!727849) (not e!623049))))

(declare-datatypes ((array!70450 0))(
  ( (array!70451 (arr!33895 (Array (_ BitVec 32) (_ BitVec 64))) (size!34432 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70450)

(declare-datatypes ((List!23809 0))(
  ( (Nil!23806) (Cons!23805 (h!25014 (_ BitVec 64)) (t!33653 List!23809)) )
))
(declare-fun arrayNoDuplicates!0 (array!70450 (_ BitVec 32) List!23809) Bool)

(assert (=> b!1090837 (= res!727849 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23806))))

(declare-fun b!1090838 () Bool)

(declare-fun e!623055 () Bool)

(assert (=> b!1090838 (= e!623055 true)))

(declare-datatypes ((V!40835 0))(
  ( (V!40836 (val!13447 Int)) )
))
(declare-datatypes ((tuple2!17170 0))(
  ( (tuple2!17171 (_1!8595 (_ BitVec 64)) (_2!8595 V!40835)) )
))
(declare-datatypes ((List!23810 0))(
  ( (Nil!23807) (Cons!23806 (h!25015 tuple2!17170) (t!33654 List!23810)) )
))
(declare-datatypes ((ListLongMap!15151 0))(
  ( (ListLongMap!15152 (toList!7591 List!23810)) )
))
(declare-fun lt!486914 () ListLongMap!15151)

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun lt!486919 () ListLongMap!15151)

(declare-fun -!869 (ListLongMap!15151 (_ BitVec 64)) ListLongMap!15151)

(assert (=> b!1090838 (= (-!869 lt!486914 k0!904) lt!486919)))

(declare-fun minValue!831 () V!40835)

(declare-fun lt!486912 () ListLongMap!15151)

(declare-datatypes ((Unit!35853 0))(
  ( (Unit!35854) )
))
(declare-fun lt!486916 () Unit!35853)

(declare-fun addRemoveCommutativeForDiffKeys!97 (ListLongMap!15151 (_ BitVec 64) V!40835 (_ BitVec 64)) Unit!35853)

(assert (=> b!1090838 (= lt!486916 (addRemoveCommutativeForDiffKeys!97 lt!486912 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831 k0!904))))

(declare-fun b!1090839 () Bool)

(declare-fun res!727850 () Bool)

(assert (=> b!1090839 (=> (not res!727850) (not e!623049))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12681 0))(
  ( (ValueCellFull!12681 (v!16069 V!40835)) (EmptyCell!12681) )
))
(declare-datatypes ((array!70452 0))(
  ( (array!70453 (arr!33896 (Array (_ BitVec 32) ValueCell!12681)) (size!34433 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70452)

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1090839 (= res!727850 (and (= (size!34433 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34432 _keys!1070) (size!34433 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1090840 () Bool)

(declare-fun res!727852 () Bool)

(assert (=> b!1090840 (=> (not res!727852) (not e!623049))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1090840 (= res!727852 (validKeyInArray!0 k0!904))))

(declare-fun b!1090841 () Bool)

(declare-fun e!623052 () Bool)

(assert (=> b!1090841 (= e!623049 e!623052)))

(declare-fun res!727848 () Bool)

(assert (=> b!1090841 (=> (not res!727848) (not e!623052))))

(declare-fun lt!486918 () array!70450)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70450 (_ BitVec 32)) Bool)

(assert (=> b!1090841 (= res!727848 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!486918 mask!1414))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1090841 (= lt!486918 (array!70451 (store (arr!33895 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34432 _keys!1070)))))

(declare-fun mapNonEmpty!41926 () Bool)

(declare-fun mapRes!41926 () Bool)

(declare-fun tp!80186 () Bool)

(declare-fun e!623054 () Bool)

(assert (=> mapNonEmpty!41926 (= mapRes!41926 (and tp!80186 e!623054))))

(declare-fun mapKey!41926 () (_ BitVec 32))

(declare-fun mapRest!41926 () (Array (_ BitVec 32) ValueCell!12681))

(declare-fun mapValue!41926 () ValueCell!12681)

(assert (=> mapNonEmpty!41926 (= (arr!33896 _values!874) (store mapRest!41926 mapKey!41926 mapValue!41926))))

(declare-fun res!727854 () Bool)

(assert (=> start!96162 (=> (not res!727854) (not e!623049))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96162 (= res!727854 (validMask!0 mask!1414))))

(assert (=> start!96162 e!623049))

(assert (=> start!96162 tp!80187))

(assert (=> start!96162 true))

(declare-fun tp_is_empty!26781 () Bool)

(assert (=> start!96162 tp_is_empty!26781))

(declare-fun array_inv!25992 (array!70450) Bool)

(assert (=> start!96162 (array_inv!25992 _keys!1070)))

(declare-fun e!623051 () Bool)

(declare-fun array_inv!25993 (array!70452) Bool)

(assert (=> start!96162 (and (array_inv!25993 _values!874) e!623051)))

(declare-fun b!1090842 () Bool)

(declare-fun res!727851 () Bool)

(assert (=> b!1090842 (=> (not res!727851) (not e!623052))))

(assert (=> b!1090842 (= res!727851 (arrayNoDuplicates!0 lt!486918 #b00000000000000000000000000000000 Nil!23806))))

(declare-fun b!1090843 () Bool)

(declare-fun e!623050 () Bool)

(assert (=> b!1090843 (= e!623050 e!623055)))

(declare-fun res!727855 () Bool)

(assert (=> b!1090843 (=> res!727855 e!623055)))

(assert (=> b!1090843 (= res!727855 (= #b1000000000000000000000000000000000000000000000000000000000000000 k0!904))))

(declare-fun lt!486917 () ListLongMap!15151)

(assert (=> b!1090843 (= lt!486917 lt!486914)))

(declare-fun lt!486915 () tuple2!17170)

(declare-fun +!3299 (ListLongMap!15151 tuple2!17170) ListLongMap!15151)

(assert (=> b!1090843 (= lt!486914 (+!3299 lt!486912 lt!486915))))

(declare-fun lt!486913 () ListLongMap!15151)

(assert (=> b!1090843 (= lt!486913 lt!486919)))

(declare-fun lt!486908 () ListLongMap!15151)

(assert (=> b!1090843 (= lt!486919 (+!3299 lt!486908 lt!486915))))

(declare-fun lt!486910 () ListLongMap!15151)

(assert (=> b!1090843 (= lt!486913 (+!3299 lt!486910 lt!486915))))

(assert (=> b!1090843 (= lt!486915 (tuple2!17171 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!831))))

(declare-fun b!1090844 () Bool)

(assert (=> b!1090844 (= e!623052 (not e!623050))))

(declare-fun res!727847 () Bool)

(assert (=> b!1090844 (=> res!727847 e!623050)))

(assert (=> b!1090844 (= res!727847 (or (not (= (bvand extraKeys!811 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!811 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!882 () Int)

(declare-fun zeroValue!831 () V!40835)

(declare-fun getCurrentListMap!4330 (array!70450 array!70452 (_ BitVec 32) (_ BitVec 32) V!40835 V!40835 (_ BitVec 32) Int) ListLongMap!15151)

(assert (=> b!1090844 (= lt!486917 (getCurrentListMap!4330 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun lt!486911 () array!70452)

(assert (=> b!1090844 (= lt!486913 (getCurrentListMap!4330 lt!486918 lt!486911 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(assert (=> b!1090844 (and (= lt!486910 lt!486908) (= lt!486908 lt!486910))))

(assert (=> b!1090844 (= lt!486908 (-!869 lt!486912 k0!904))))

(declare-fun lt!486909 () Unit!35853)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!136 (array!70450 array!70452 (_ BitVec 32) (_ BitVec 32) V!40835 V!40835 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!35853)

(assert (=> b!1090844 (= lt!486909 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!136 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 i!650 k0!904 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun getCurrentListMapNoExtraKeys!4082 (array!70450 array!70452 (_ BitVec 32) (_ BitVec 32) V!40835 V!40835 (_ BitVec 32) Int) ListLongMap!15151)

(assert (=> b!1090844 (= lt!486910 (getCurrentListMapNoExtraKeys!4082 lt!486918 lt!486911 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun dynLambda!2218 (Int (_ BitVec 64)) V!40835)

(assert (=> b!1090844 (= lt!486911 (array!70453 (store (arr!33896 _values!874) i!650 (ValueCellFull!12681 (dynLambda!2218 defaultEntry!882 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!34433 _values!874)))))

(assert (=> b!1090844 (= lt!486912 (getCurrentListMapNoExtraKeys!4082 _keys!1070 _values!874 mask!1414 extraKeys!811 zeroValue!831 minValue!831 #b00000000000000000000000000000000 defaultEntry!882))))

(declare-fun arrayContainsKey!0 (array!70450 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1090844 (arrayContainsKey!0 _keys!1070 k0!904 #b00000000000000000000000000000000)))

(declare-fun lt!486920 () Unit!35853)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70450 (_ BitVec 64) (_ BitVec 32)) Unit!35853)

(assert (=> b!1090844 (= lt!486920 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 k0!904 i!650))))

(declare-fun b!1090845 () Bool)

(declare-fun res!727846 () Bool)

(assert (=> b!1090845 (=> (not res!727846) (not e!623049))))

(assert (=> b!1090845 (= res!727846 (= (select (arr!33895 _keys!1070) i!650) k0!904))))

(declare-fun b!1090846 () Bool)

(declare-fun e!623053 () Bool)

(assert (=> b!1090846 (= e!623053 tp_is_empty!26781)))

(declare-fun mapIsEmpty!41926 () Bool)

(assert (=> mapIsEmpty!41926 mapRes!41926))

(declare-fun b!1090847 () Bool)

(assert (=> b!1090847 (= e!623051 (and e!623053 mapRes!41926))))

(declare-fun condMapEmpty!41926 () Bool)

(declare-fun mapDefault!41926 () ValueCell!12681)

(assert (=> b!1090847 (= condMapEmpty!41926 (= (arr!33896 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12681)) mapDefault!41926)))))

(declare-fun b!1090848 () Bool)

(declare-fun res!727856 () Bool)

(assert (=> b!1090848 (=> (not res!727856) (not e!623049))))

(assert (=> b!1090848 (= res!727856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1090849 () Bool)

(assert (=> b!1090849 (= e!623054 tp_is_empty!26781)))

(declare-fun b!1090850 () Bool)

(declare-fun res!727853 () Bool)

(assert (=> b!1090850 (=> (not res!727853) (not e!623049))))

(assert (=> b!1090850 (= res!727853 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34432 _keys!1070))))))

(assert (= (and start!96162 res!727854) b!1090839))

(assert (= (and b!1090839 res!727850) b!1090848))

(assert (= (and b!1090848 res!727856) b!1090837))

(assert (= (and b!1090837 res!727849) b!1090850))

(assert (= (and b!1090850 res!727853) b!1090840))

(assert (= (and b!1090840 res!727852) b!1090845))

(assert (= (and b!1090845 res!727846) b!1090841))

(assert (= (and b!1090841 res!727848) b!1090842))

(assert (= (and b!1090842 res!727851) b!1090844))

(assert (= (and b!1090844 (not res!727847)) b!1090843))

(assert (= (and b!1090843 (not res!727855)) b!1090838))

(assert (= (and b!1090847 condMapEmpty!41926) mapIsEmpty!41926))

(assert (= (and b!1090847 (not condMapEmpty!41926)) mapNonEmpty!41926))

(get-info :version)

(assert (= (and mapNonEmpty!41926 ((_ is ValueCellFull!12681) mapValue!41926)) b!1090849))

(assert (= (and b!1090847 ((_ is ValueCellFull!12681) mapDefault!41926)) b!1090846))

(assert (= start!96162 b!1090847))

(declare-fun b_lambda!17479 () Bool)

(assert (=> (not b_lambda!17479) (not b!1090844)))

(declare-fun t!33652 () Bool)

(declare-fun tb!7665 () Bool)

(assert (=> (and start!96162 (= defaultEntry!882 defaultEntry!882) t!33652) tb!7665))

(declare-fun result!15841 () Bool)

(assert (=> tb!7665 (= result!15841 tp_is_empty!26781)))

(assert (=> b!1090844 t!33652))

(declare-fun b_and!36253 () Bool)

(assert (= b_and!36251 (and (=> t!33652 result!15841) b_and!36253)))

(declare-fun m!1010461 () Bool)

(assert (=> b!1090848 m!1010461))

(declare-fun m!1010463 () Bool)

(assert (=> b!1090837 m!1010463))

(declare-fun m!1010465 () Bool)

(assert (=> start!96162 m!1010465))

(declare-fun m!1010467 () Bool)

(assert (=> start!96162 m!1010467))

(declare-fun m!1010469 () Bool)

(assert (=> start!96162 m!1010469))

(declare-fun m!1010471 () Bool)

(assert (=> b!1090840 m!1010471))

(declare-fun m!1010473 () Bool)

(assert (=> b!1090843 m!1010473))

(declare-fun m!1010475 () Bool)

(assert (=> b!1090843 m!1010475))

(declare-fun m!1010477 () Bool)

(assert (=> b!1090843 m!1010477))

(declare-fun m!1010479 () Bool)

(assert (=> b!1090842 m!1010479))

(declare-fun m!1010481 () Bool)

(assert (=> mapNonEmpty!41926 m!1010481))

(declare-fun m!1010483 () Bool)

(assert (=> b!1090844 m!1010483))

(declare-fun m!1010485 () Bool)

(assert (=> b!1090844 m!1010485))

(declare-fun m!1010487 () Bool)

(assert (=> b!1090844 m!1010487))

(declare-fun m!1010489 () Bool)

(assert (=> b!1090844 m!1010489))

(declare-fun m!1010491 () Bool)

(assert (=> b!1090844 m!1010491))

(declare-fun m!1010493 () Bool)

(assert (=> b!1090844 m!1010493))

(declare-fun m!1010495 () Bool)

(assert (=> b!1090844 m!1010495))

(declare-fun m!1010497 () Bool)

(assert (=> b!1090844 m!1010497))

(declare-fun m!1010499 () Bool)

(assert (=> b!1090844 m!1010499))

(declare-fun m!1010501 () Bool)

(assert (=> b!1090844 m!1010501))

(declare-fun m!1010503 () Bool)

(assert (=> b!1090838 m!1010503))

(declare-fun m!1010505 () Bool)

(assert (=> b!1090838 m!1010505))

(declare-fun m!1010507 () Bool)

(assert (=> b!1090841 m!1010507))

(declare-fun m!1010509 () Bool)

(assert (=> b!1090841 m!1010509))

(declare-fun m!1010511 () Bool)

(assert (=> b!1090845 m!1010511))

(check-sat (not b!1090837) (not b!1090842) (not b!1090843) (not b!1090838) b_and!36253 (not start!96162) (not b!1090844) (not b!1090848) (not b!1090840) (not b_next!22779) (not b_lambda!17479) (not mapNonEmpty!41926) (not b!1090841) tp_is_empty!26781)
(check-sat b_and!36253 (not b_next!22779))
