; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96390 () Bool)

(assert start!96390)

(declare-fun b!1094990 () Bool)

(declare-fun e!625188 () Bool)

(declare-fun tp_is_empty!26997 () Bool)

(assert (=> b!1094990 (= e!625188 tp_is_empty!26997)))

(declare-fun b!1094991 () Bool)

(declare-fun res!730835 () Bool)

(declare-fun e!625189 () Bool)

(assert (=> b!1094991 (=> (not res!730835) (not e!625189))))

(declare-datatypes ((array!70862 0))(
  ( (array!70863 (arr!34100 (Array (_ BitVec 32) (_ BitVec 64))) (size!34637 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70862)

(assert (=> b!1094991 (= res!730835 (bvslt (size!34637 _keys!1070) #b01111111111111111111111111111111))))

(declare-fun b!1094992 () Bool)

(declare-fun res!730838 () Bool)

(declare-fun e!625192 () Bool)

(assert (=> b!1094992 (=> (not res!730838) (not e!625192))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1094992 (= res!730838 (= (select (arr!34100 _keys!1070) i!650) k0!904))))

(declare-fun mapIsEmpty!42253 () Bool)

(declare-fun mapRes!42253 () Bool)

(assert (=> mapIsEmpty!42253 mapRes!42253))

(declare-fun res!730833 () Bool)

(assert (=> start!96390 (=> (not res!730833) (not e!625192))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96390 (= res!730833 (validMask!0 mask!1414))))

(assert (=> start!96390 e!625192))

(assert (=> start!96390 true))

(declare-fun array_inv!26130 (array!70862) Bool)

(assert (=> start!96390 (array_inv!26130 _keys!1070)))

(declare-datatypes ((V!41123 0))(
  ( (V!41124 (val!13555 Int)) )
))
(declare-datatypes ((ValueCell!12789 0))(
  ( (ValueCellFull!12789 (v!16177 V!41123)) (EmptyCell!12789) )
))
(declare-datatypes ((array!70864 0))(
  ( (array!70865 (arr!34101 (Array (_ BitVec 32) ValueCell!12789)) (size!34638 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70864)

(declare-fun e!625191 () Bool)

(declare-fun array_inv!26131 (array!70864) Bool)

(assert (=> start!96390 (and (array_inv!26131 _values!874) e!625191)))

(declare-fun b!1094993 () Bool)

(declare-fun res!730840 () Bool)

(assert (=> b!1094993 (=> (not res!730840) (not e!625192))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1094993 (= res!730840 (validKeyInArray!0 k0!904))))

(declare-fun b!1094994 () Bool)

(declare-fun e!625193 () Bool)

(assert (=> b!1094994 (= e!625191 (and e!625193 mapRes!42253))))

(declare-fun condMapEmpty!42253 () Bool)

(declare-fun mapDefault!42253 () ValueCell!12789)

(assert (=> b!1094994 (= condMapEmpty!42253 (= (arr!34101 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12789)) mapDefault!42253)))))

(declare-fun b!1094995 () Bool)

(declare-fun res!730839 () Bool)

(assert (=> b!1094995 (=> (not res!730839) (not e!625192))))

(assert (=> b!1094995 (= res!730839 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34637 _keys!1070))))))

(declare-fun b!1094996 () Bool)

(declare-fun res!730832 () Bool)

(assert (=> b!1094996 (=> (not res!730832) (not e!625192))))

(declare-datatypes ((List!23951 0))(
  ( (Nil!23948) (Cons!23947 (h!25156 (_ BitVec 64)) (t!33965 List!23951)) )
))
(declare-fun arrayNoDuplicates!0 (array!70862 (_ BitVec 32) List!23951) Bool)

(assert (=> b!1094996 (= res!730832 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23948))))

(declare-fun b!1094997 () Bool)

(declare-fun res!730836 () Bool)

(assert (=> b!1094997 (=> (not res!730836) (not e!625192))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1094997 (= res!730836 (and (= (size!34638 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34637 _keys!1070) (size!34638 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1094998 () Bool)

(declare-fun res!730834 () Bool)

(assert (=> b!1094998 (=> (not res!730834) (not e!625189))))

(declare-fun lt!489713 () array!70862)

(assert (=> b!1094998 (= res!730834 (arrayNoDuplicates!0 lt!489713 #b00000000000000000000000000000000 Nil!23948))))

(declare-fun b!1094999 () Bool)

(assert (=> b!1094999 (= e!625193 tp_is_empty!26997)))

(declare-fun b!1095000 () Bool)

(declare-fun arrayContainsKey!0 (array!70862 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1095000 (= e!625189 (not (arrayContainsKey!0 _keys!1070 k0!904 i!650)))))

(declare-fun mapNonEmpty!42253 () Bool)

(declare-fun tp!80769 () Bool)

(assert (=> mapNonEmpty!42253 (= mapRes!42253 (and tp!80769 e!625188))))

(declare-fun mapRest!42253 () (Array (_ BitVec 32) ValueCell!12789))

(declare-fun mapKey!42253 () (_ BitVec 32))

(declare-fun mapValue!42253 () ValueCell!12789)

(assert (=> mapNonEmpty!42253 (= (arr!34101 _values!874) (store mapRest!42253 mapKey!42253 mapValue!42253))))

(declare-fun b!1095001 () Bool)

(assert (=> b!1095001 (= e!625192 e!625189)))

(declare-fun res!730837 () Bool)

(assert (=> b!1095001 (=> (not res!730837) (not e!625189))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70862 (_ BitVec 32)) Bool)

(assert (=> b!1095001 (= res!730837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489713 mask!1414))))

(assert (=> b!1095001 (= lt!489713 (array!70863 (store (arr!34100 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34637 _keys!1070)))))

(declare-fun b!1095002 () Bool)

(declare-fun res!730831 () Bool)

(assert (=> b!1095002 (=> (not res!730831) (not e!625192))))

(assert (=> b!1095002 (= res!730831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(assert (= (and start!96390 res!730833) b!1094997))

(assert (= (and b!1094997 res!730836) b!1095002))

(assert (= (and b!1095002 res!730831) b!1094996))

(assert (= (and b!1094996 res!730832) b!1094995))

(assert (= (and b!1094995 res!730839) b!1094993))

(assert (= (and b!1094993 res!730840) b!1094992))

(assert (= (and b!1094992 res!730838) b!1095001))

(assert (= (and b!1095001 res!730837) b!1094998))

(assert (= (and b!1094998 res!730834) b!1094991))

(assert (= (and b!1094991 res!730835) b!1095000))

(assert (= (and b!1094994 condMapEmpty!42253) mapIsEmpty!42253))

(assert (= (and b!1094994 (not condMapEmpty!42253)) mapNonEmpty!42253))

(get-info :version)

(assert (= (and mapNonEmpty!42253 ((_ is ValueCellFull!12789) mapValue!42253)) b!1094990))

(assert (= (and b!1094994 ((_ is ValueCellFull!12789) mapDefault!42253)) b!1094999))

(assert (= start!96390 b!1094994))

(declare-fun m!1014859 () Bool)

(assert (=> b!1094993 m!1014859))

(declare-fun m!1014861 () Bool)

(assert (=> mapNonEmpty!42253 m!1014861))

(declare-fun m!1014863 () Bool)

(assert (=> b!1095001 m!1014863))

(declare-fun m!1014865 () Bool)

(assert (=> b!1095001 m!1014865))

(declare-fun m!1014867 () Bool)

(assert (=> b!1095002 m!1014867))

(declare-fun m!1014869 () Bool)

(assert (=> b!1094992 m!1014869))

(declare-fun m!1014871 () Bool)

(assert (=> b!1094996 m!1014871))

(declare-fun m!1014873 () Bool)

(assert (=> b!1095000 m!1014873))

(declare-fun m!1014875 () Bool)

(assert (=> b!1094998 m!1014875))

(declare-fun m!1014877 () Bool)

(assert (=> start!96390 m!1014877))

(declare-fun m!1014879 () Bool)

(assert (=> start!96390 m!1014879))

(declare-fun m!1014881 () Bool)

(assert (=> start!96390 m!1014881))

(check-sat (not mapNonEmpty!42253) tp_is_empty!26997 (not b!1094996) (not b!1095000) (not start!96390) (not b!1095001) (not b!1094998) (not b!1095002) (not b!1094993))
(check-sat)
(get-model)

(declare-fun d!130187 () Bool)

(declare-fun res!730875 () Bool)

(declare-fun e!625216 () Bool)

(assert (=> d!130187 (=> res!730875 e!625216)))

(assert (=> d!130187 (= res!730875 (= (select (arr!34100 _keys!1070) i!650) k0!904))))

(assert (=> d!130187 (= (arrayContainsKey!0 _keys!1070 k0!904 i!650) e!625216)))

(declare-fun b!1095046 () Bool)

(declare-fun e!625217 () Bool)

(assert (=> b!1095046 (= e!625216 e!625217)))

(declare-fun res!730876 () Bool)

(assert (=> b!1095046 (=> (not res!730876) (not e!625217))))

(assert (=> b!1095046 (= res!730876 (bvslt (bvadd i!650 #b00000000000000000000000000000001) (size!34637 _keys!1070)))))

(declare-fun b!1095047 () Bool)

(assert (=> b!1095047 (= e!625217 (arrayContainsKey!0 _keys!1070 k0!904 (bvadd i!650 #b00000000000000000000000000000001)))))

(assert (= (and d!130187 (not res!730875)) b!1095046))

(assert (= (and b!1095046 res!730876) b!1095047))

(assert (=> d!130187 m!1014869))

(declare-fun m!1014907 () Bool)

(assert (=> b!1095047 m!1014907))

(assert (=> b!1095000 d!130187))

(declare-fun d!130189 () Bool)

(assert (=> d!130189 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!96390 d!130189))

(declare-fun d!130191 () Bool)

(assert (=> d!130191 (= (array_inv!26130 _keys!1070) (bvsge (size!34637 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!96390 d!130191))

(declare-fun d!130193 () Bool)

(assert (=> d!130193 (= (array_inv!26131 _values!874) (bvsge (size!34638 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!96390 d!130193))

(declare-fun b!1095058 () Bool)

(declare-fun e!625229 () Bool)

(declare-fun e!625226 () Bool)

(assert (=> b!1095058 (= e!625229 e!625226)))

(declare-fun res!730883 () Bool)

(assert (=> b!1095058 (=> (not res!730883) (not e!625226))))

(declare-fun e!625228 () Bool)

(assert (=> b!1095058 (= res!730883 (not e!625228))))

(declare-fun res!730885 () Bool)

(assert (=> b!1095058 (=> (not res!730885) (not e!625228))))

(assert (=> b!1095058 (= res!730885 (validKeyInArray!0 (select (arr!34100 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1095059 () Bool)

(declare-fun e!625227 () Bool)

(assert (=> b!1095059 (= e!625226 e!625227)))

(declare-fun c!108301 () Bool)

(assert (=> b!1095059 (= c!108301 (validKeyInArray!0 (select (arr!34100 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun d!130195 () Bool)

(declare-fun res!730884 () Bool)

(assert (=> d!130195 (=> res!730884 e!625229)))

(assert (=> d!130195 (= res!730884 (bvsge #b00000000000000000000000000000000 (size!34637 _keys!1070)))))

(assert (=> d!130195 (= (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23948) e!625229)))

(declare-fun b!1095060 () Bool)

(declare-fun contains!6389 (List!23951 (_ BitVec 64)) Bool)

(assert (=> b!1095060 (= e!625228 (contains!6389 Nil!23948 (select (arr!34100 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1095061 () Bool)

(declare-fun call!45760 () Bool)

(assert (=> b!1095061 (= e!625227 call!45760)))

(declare-fun bm!45757 () Bool)

(assert (=> bm!45757 (= call!45760 (arrayNoDuplicates!0 _keys!1070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108301 (Cons!23947 (select (arr!34100 _keys!1070) #b00000000000000000000000000000000) Nil!23948) Nil!23948)))))

(declare-fun b!1095062 () Bool)

(assert (=> b!1095062 (= e!625227 call!45760)))

(assert (= (and d!130195 (not res!730884)) b!1095058))

(assert (= (and b!1095058 res!730885) b!1095060))

(assert (= (and b!1095058 res!730883) b!1095059))

(assert (= (and b!1095059 c!108301) b!1095061))

(assert (= (and b!1095059 (not c!108301)) b!1095062))

(assert (= (or b!1095061 b!1095062) bm!45757))

(declare-fun m!1014909 () Bool)

(assert (=> b!1095058 m!1014909))

(assert (=> b!1095058 m!1014909))

(declare-fun m!1014911 () Bool)

(assert (=> b!1095058 m!1014911))

(assert (=> b!1095059 m!1014909))

(assert (=> b!1095059 m!1014909))

(assert (=> b!1095059 m!1014911))

(assert (=> b!1095060 m!1014909))

(assert (=> b!1095060 m!1014909))

(declare-fun m!1014913 () Bool)

(assert (=> b!1095060 m!1014913))

(assert (=> bm!45757 m!1014909))

(declare-fun m!1014915 () Bool)

(assert (=> bm!45757 m!1014915))

(assert (=> b!1094996 d!130195))

(declare-fun b!1095071 () Bool)

(declare-fun e!625238 () Bool)

(declare-fun call!45763 () Bool)

(assert (=> b!1095071 (= e!625238 call!45763)))

(declare-fun b!1095072 () Bool)

(declare-fun e!625237 () Bool)

(assert (=> b!1095072 (= e!625237 e!625238)))

(declare-fun c!108304 () Bool)

(assert (=> b!1095072 (= c!108304 (validKeyInArray!0 (select (arr!34100 lt!489713) #b00000000000000000000000000000000)))))

(declare-fun b!1095073 () Bool)

(declare-fun e!625236 () Bool)

(assert (=> b!1095073 (= e!625236 call!45763)))

(declare-fun d!130197 () Bool)

(declare-fun res!730891 () Bool)

(assert (=> d!130197 (=> res!730891 e!625237)))

(assert (=> d!130197 (= res!730891 (bvsge #b00000000000000000000000000000000 (size!34637 lt!489713)))))

(assert (=> d!130197 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489713 mask!1414) e!625237)))

(declare-fun bm!45760 () Bool)

(assert (=> bm!45760 (= call!45763 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!489713 mask!1414))))

(declare-fun b!1095074 () Bool)

(assert (=> b!1095074 (= e!625238 e!625236)))

(declare-fun lt!489723 () (_ BitVec 64))

(assert (=> b!1095074 (= lt!489723 (select (arr!34100 lt!489713) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!35965 0))(
  ( (Unit!35966) )
))
(declare-fun lt!489724 () Unit!35965)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70862 (_ BitVec 64) (_ BitVec 32)) Unit!35965)

(assert (=> b!1095074 (= lt!489724 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!489713 lt!489723 #b00000000000000000000000000000000))))

(assert (=> b!1095074 (arrayContainsKey!0 lt!489713 lt!489723 #b00000000000000000000000000000000)))

(declare-fun lt!489725 () Unit!35965)

(assert (=> b!1095074 (= lt!489725 lt!489724)))

(declare-fun res!730890 () Bool)

(declare-datatypes ((SeekEntryResult!9902 0))(
  ( (MissingZero!9902 (index!41978 (_ BitVec 32))) (Found!9902 (index!41979 (_ BitVec 32))) (Intermediate!9902 (undefined!10714 Bool) (index!41980 (_ BitVec 32)) (x!98422 (_ BitVec 32))) (Undefined!9902) (MissingVacant!9902 (index!41981 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!70862 (_ BitVec 32)) SeekEntryResult!9902)

(assert (=> b!1095074 (= res!730890 (= (seekEntryOrOpen!0 (select (arr!34100 lt!489713) #b00000000000000000000000000000000) lt!489713 mask!1414) (Found!9902 #b00000000000000000000000000000000)))))

(assert (=> b!1095074 (=> (not res!730890) (not e!625236))))

(assert (= (and d!130197 (not res!730891)) b!1095072))

(assert (= (and b!1095072 c!108304) b!1095074))

(assert (= (and b!1095072 (not c!108304)) b!1095071))

(assert (= (and b!1095074 res!730890) b!1095073))

(assert (= (or b!1095073 b!1095071) bm!45760))

(declare-fun m!1014917 () Bool)

(assert (=> b!1095072 m!1014917))

(assert (=> b!1095072 m!1014917))

(declare-fun m!1014919 () Bool)

(assert (=> b!1095072 m!1014919))

(declare-fun m!1014921 () Bool)

(assert (=> bm!45760 m!1014921))

(assert (=> b!1095074 m!1014917))

(declare-fun m!1014923 () Bool)

(assert (=> b!1095074 m!1014923))

(declare-fun m!1014925 () Bool)

(assert (=> b!1095074 m!1014925))

(assert (=> b!1095074 m!1014917))

(declare-fun m!1014927 () Bool)

(assert (=> b!1095074 m!1014927))

(assert (=> b!1095001 d!130197))

(declare-fun b!1095075 () Bool)

(declare-fun e!625241 () Bool)

(declare-fun call!45764 () Bool)

(assert (=> b!1095075 (= e!625241 call!45764)))

(declare-fun b!1095076 () Bool)

(declare-fun e!625240 () Bool)

(assert (=> b!1095076 (= e!625240 e!625241)))

(declare-fun c!108305 () Bool)

(assert (=> b!1095076 (= c!108305 (validKeyInArray!0 (select (arr!34100 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1095077 () Bool)

(declare-fun e!625239 () Bool)

(assert (=> b!1095077 (= e!625239 call!45764)))

(declare-fun d!130199 () Bool)

(declare-fun res!730893 () Bool)

(assert (=> d!130199 (=> res!730893 e!625240)))

(assert (=> d!130199 (= res!730893 (bvsge #b00000000000000000000000000000000 (size!34637 _keys!1070)))))

(assert (=> d!130199 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!625240)))

(declare-fun bm!45761 () Bool)

(assert (=> bm!45761 (= call!45764 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(declare-fun b!1095078 () Bool)

(assert (=> b!1095078 (= e!625241 e!625239)))

(declare-fun lt!489726 () (_ BitVec 64))

(assert (=> b!1095078 (= lt!489726 (select (arr!34100 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!489727 () Unit!35965)

(assert (=> b!1095078 (= lt!489727 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!489726 #b00000000000000000000000000000000))))

(assert (=> b!1095078 (arrayContainsKey!0 _keys!1070 lt!489726 #b00000000000000000000000000000000)))

(declare-fun lt!489728 () Unit!35965)

(assert (=> b!1095078 (= lt!489728 lt!489727)))

(declare-fun res!730892 () Bool)

(assert (=> b!1095078 (= res!730892 (= (seekEntryOrOpen!0 (select (arr!34100 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9902 #b00000000000000000000000000000000)))))

(assert (=> b!1095078 (=> (not res!730892) (not e!625239))))

(assert (= (and d!130199 (not res!730893)) b!1095076))

(assert (= (and b!1095076 c!108305) b!1095078))

(assert (= (and b!1095076 (not c!108305)) b!1095075))

(assert (= (and b!1095078 res!730892) b!1095077))

(assert (= (or b!1095077 b!1095075) bm!45761))

(assert (=> b!1095076 m!1014909))

(assert (=> b!1095076 m!1014909))

(assert (=> b!1095076 m!1014911))

(declare-fun m!1014929 () Bool)

(assert (=> bm!45761 m!1014929))

(assert (=> b!1095078 m!1014909))

(declare-fun m!1014931 () Bool)

(assert (=> b!1095078 m!1014931))

(declare-fun m!1014933 () Bool)

(assert (=> b!1095078 m!1014933))

(assert (=> b!1095078 m!1014909))

(declare-fun m!1014935 () Bool)

(assert (=> b!1095078 m!1014935))

(assert (=> b!1095002 d!130199))

(declare-fun b!1095079 () Bool)

(declare-fun e!625245 () Bool)

(declare-fun e!625242 () Bool)

(assert (=> b!1095079 (= e!625245 e!625242)))

(declare-fun res!730894 () Bool)

(assert (=> b!1095079 (=> (not res!730894) (not e!625242))))

(declare-fun e!625244 () Bool)

(assert (=> b!1095079 (= res!730894 (not e!625244))))

(declare-fun res!730896 () Bool)

(assert (=> b!1095079 (=> (not res!730896) (not e!625244))))

(assert (=> b!1095079 (= res!730896 (validKeyInArray!0 (select (arr!34100 lt!489713) #b00000000000000000000000000000000)))))

(declare-fun b!1095080 () Bool)

(declare-fun e!625243 () Bool)

(assert (=> b!1095080 (= e!625242 e!625243)))

(declare-fun c!108306 () Bool)

(assert (=> b!1095080 (= c!108306 (validKeyInArray!0 (select (arr!34100 lt!489713) #b00000000000000000000000000000000)))))

(declare-fun d!130201 () Bool)

(declare-fun res!730895 () Bool)

(assert (=> d!130201 (=> res!730895 e!625245)))

(assert (=> d!130201 (= res!730895 (bvsge #b00000000000000000000000000000000 (size!34637 lt!489713)))))

(assert (=> d!130201 (= (arrayNoDuplicates!0 lt!489713 #b00000000000000000000000000000000 Nil!23948) e!625245)))

(declare-fun b!1095081 () Bool)

(assert (=> b!1095081 (= e!625244 (contains!6389 Nil!23948 (select (arr!34100 lt!489713) #b00000000000000000000000000000000)))))

(declare-fun b!1095082 () Bool)

(declare-fun call!45765 () Bool)

(assert (=> b!1095082 (= e!625243 call!45765)))

(declare-fun bm!45762 () Bool)

(assert (=> bm!45762 (= call!45765 (arrayNoDuplicates!0 lt!489713 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108306 (Cons!23947 (select (arr!34100 lt!489713) #b00000000000000000000000000000000) Nil!23948) Nil!23948)))))

(declare-fun b!1095083 () Bool)

(assert (=> b!1095083 (= e!625243 call!45765)))

(assert (= (and d!130201 (not res!730895)) b!1095079))

(assert (= (and b!1095079 res!730896) b!1095081))

(assert (= (and b!1095079 res!730894) b!1095080))

(assert (= (and b!1095080 c!108306) b!1095082))

(assert (= (and b!1095080 (not c!108306)) b!1095083))

(assert (= (or b!1095082 b!1095083) bm!45762))

(assert (=> b!1095079 m!1014917))

(assert (=> b!1095079 m!1014917))

(assert (=> b!1095079 m!1014919))

(assert (=> b!1095080 m!1014917))

(assert (=> b!1095080 m!1014917))

(assert (=> b!1095080 m!1014919))

(assert (=> b!1095081 m!1014917))

(assert (=> b!1095081 m!1014917))

(declare-fun m!1014937 () Bool)

(assert (=> b!1095081 m!1014937))

(assert (=> bm!45762 m!1014917))

(declare-fun m!1014939 () Bool)

(assert (=> bm!45762 m!1014939))

(assert (=> b!1094998 d!130201))

(declare-fun d!130203 () Bool)

(assert (=> d!130203 (= (validKeyInArray!0 k0!904) (and (not (= k0!904 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!904 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1094993 d!130203))

(declare-fun condMapEmpty!42259 () Bool)

(declare-fun mapDefault!42259 () ValueCell!12789)

(assert (=> mapNonEmpty!42253 (= condMapEmpty!42259 (= mapRest!42253 ((as const (Array (_ BitVec 32) ValueCell!12789)) mapDefault!42259)))))

(declare-fun e!625250 () Bool)

(declare-fun mapRes!42259 () Bool)

(assert (=> mapNonEmpty!42253 (= tp!80769 (and e!625250 mapRes!42259))))

(declare-fun b!1095090 () Bool)

(declare-fun e!625251 () Bool)

(assert (=> b!1095090 (= e!625251 tp_is_empty!26997)))

(declare-fun b!1095091 () Bool)

(assert (=> b!1095091 (= e!625250 tp_is_empty!26997)))

(declare-fun mapIsEmpty!42259 () Bool)

(assert (=> mapIsEmpty!42259 mapRes!42259))

(declare-fun mapNonEmpty!42259 () Bool)

(declare-fun tp!80775 () Bool)

(assert (=> mapNonEmpty!42259 (= mapRes!42259 (and tp!80775 e!625251))))

(declare-fun mapKey!42259 () (_ BitVec 32))

(declare-fun mapValue!42259 () ValueCell!12789)

(declare-fun mapRest!42259 () (Array (_ BitVec 32) ValueCell!12789))

(assert (=> mapNonEmpty!42259 (= mapRest!42253 (store mapRest!42259 mapKey!42259 mapValue!42259))))

(assert (= (and mapNonEmpty!42253 condMapEmpty!42259) mapIsEmpty!42259))

(assert (= (and mapNonEmpty!42253 (not condMapEmpty!42259)) mapNonEmpty!42259))

(assert (= (and mapNonEmpty!42259 ((_ is ValueCellFull!12789) mapValue!42259)) b!1095090))

(assert (= (and mapNonEmpty!42253 ((_ is ValueCellFull!12789) mapDefault!42259)) b!1095091))

(declare-fun m!1014941 () Bool)

(assert (=> mapNonEmpty!42259 m!1014941))

(check-sat tp_is_empty!26997 (not b!1095060) (not b!1095080) (not b!1095074) (not b!1095058) (not mapNonEmpty!42259) (not bm!45757) (not b!1095078) (not b!1095072) (not b!1095081) (not b!1095076) (not bm!45762) (not bm!45760) (not b!1095059) (not b!1095047) (not b!1095079) (not bm!45761))
(check-sat)
