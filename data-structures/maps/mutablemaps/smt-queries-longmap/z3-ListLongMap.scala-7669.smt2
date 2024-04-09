; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!96372 () Bool)

(assert start!96372)

(declare-fun b!1094833 () Bool)

(declare-fun res!730733 () Bool)

(declare-fun e!625100 () Bool)

(assert (=> b!1094833 (=> (not res!730733) (not e!625100))))

(declare-fun k0!904 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1094833 (= res!730733 (validKeyInArray!0 k0!904))))

(declare-fun res!730731 () Bool)

(assert (=> start!96372 (=> (not res!730731) (not e!625100))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!96372 (= res!730731 (validMask!0 mask!1414))))

(assert (=> start!96372 e!625100))

(assert (=> start!96372 true))

(declare-datatypes ((array!70848 0))(
  ( (array!70849 (arr!34094 (Array (_ BitVec 32) (_ BitVec 64))) (size!34631 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!70848)

(declare-fun array_inv!26124 (array!70848) Bool)

(assert (=> start!96372 (array_inv!26124 _keys!1070)))

(declare-datatypes ((V!41115 0))(
  ( (V!41116 (val!13552 Int)) )
))
(declare-datatypes ((ValueCell!12786 0))(
  ( (ValueCellFull!12786 (v!16174 V!41115)) (EmptyCell!12786) )
))
(declare-datatypes ((array!70850 0))(
  ( (array!70851 (arr!34095 (Array (_ BitVec 32) ValueCell!12786)) (size!34632 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!70850)

(declare-fun e!625105 () Bool)

(declare-fun array_inv!26125 (array!70850) Bool)

(assert (=> start!96372 (and (array_inv!26125 _values!874) e!625105)))

(declare-fun b!1094834 () Bool)

(declare-fun res!730726 () Bool)

(declare-fun e!625101 () Bool)

(assert (=> b!1094834 (=> (not res!730726) (not e!625101))))

(declare-fun lt!489692 () array!70848)

(declare-datatypes ((List!23948 0))(
  ( (Nil!23945) (Cons!23944 (h!25153 (_ BitVec 64)) (t!33962 List!23948)) )
))
(declare-fun arrayNoDuplicates!0 (array!70848 (_ BitVec 32) List!23948) Bool)

(assert (=> b!1094834 (= res!730726 (arrayNoDuplicates!0 lt!489692 #b00000000000000000000000000000000 Nil!23945))))

(declare-fun mapNonEmpty!42241 () Bool)

(declare-fun mapRes!42241 () Bool)

(declare-fun tp!80757 () Bool)

(declare-fun e!625102 () Bool)

(assert (=> mapNonEmpty!42241 (= mapRes!42241 (and tp!80757 e!625102))))

(declare-fun mapValue!42241 () ValueCell!12786)

(declare-fun mapRest!42241 () (Array (_ BitVec 32) ValueCell!12786))

(declare-fun mapKey!42241 () (_ BitVec 32))

(assert (=> mapNonEmpty!42241 (= (arr!34095 _values!874) (store mapRest!42241 mapKey!42241 mapValue!42241))))

(declare-fun b!1094835 () Bool)

(declare-fun res!730730 () Bool)

(assert (=> b!1094835 (=> (not res!730730) (not e!625100))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1094835 (= res!730730 (and (= (size!34632 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!34631 _keys!1070) (size!34632 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1094836 () Bool)

(declare-fun res!730725 () Bool)

(assert (=> b!1094836 (=> (not res!730725) (not e!625100))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!70848 (_ BitVec 32)) Bool)

(assert (=> b!1094836 (= res!730725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!42241 () Bool)

(assert (=> mapIsEmpty!42241 mapRes!42241))

(declare-fun b!1094837 () Bool)

(declare-fun res!730732 () Bool)

(assert (=> b!1094837 (=> (not res!730732) (not e!625100))))

(declare-fun i!650 () (_ BitVec 32))

(assert (=> b!1094837 (= res!730732 (= (select (arr!34094 _keys!1070) i!650) k0!904))))

(declare-fun b!1094838 () Bool)

(declare-fun res!730729 () Bool)

(assert (=> b!1094838 (=> (not res!730729) (not e!625100))))

(assert (=> b!1094838 (= res!730729 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23945))))

(declare-fun b!1094839 () Bool)

(assert (=> b!1094839 (= e!625101 (bvsge (size!34631 _keys!1070) #b01111111111111111111111111111111))))

(declare-fun b!1094840 () Bool)

(declare-fun res!730727 () Bool)

(assert (=> b!1094840 (=> (not res!730727) (not e!625100))))

(assert (=> b!1094840 (= res!730727 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!34631 _keys!1070))))))

(declare-fun b!1094841 () Bool)

(assert (=> b!1094841 (= e!625100 e!625101)))

(declare-fun res!730728 () Bool)

(assert (=> b!1094841 (=> (not res!730728) (not e!625101))))

(assert (=> b!1094841 (= res!730728 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489692 mask!1414))))

(assert (=> b!1094841 (= lt!489692 (array!70849 (store (arr!34094 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!34631 _keys!1070)))))

(declare-fun b!1094842 () Bool)

(declare-fun tp_is_empty!26991 () Bool)

(assert (=> b!1094842 (= e!625102 tp_is_empty!26991)))

(declare-fun b!1094843 () Bool)

(declare-fun e!625103 () Bool)

(assert (=> b!1094843 (= e!625103 tp_is_empty!26991)))

(declare-fun b!1094844 () Bool)

(assert (=> b!1094844 (= e!625105 (and e!625103 mapRes!42241))))

(declare-fun condMapEmpty!42241 () Bool)

(declare-fun mapDefault!42241 () ValueCell!12786)

(assert (=> b!1094844 (= condMapEmpty!42241 (= (arr!34095 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12786)) mapDefault!42241)))))

(assert (= (and start!96372 res!730731) b!1094835))

(assert (= (and b!1094835 res!730730) b!1094836))

(assert (= (and b!1094836 res!730725) b!1094838))

(assert (= (and b!1094838 res!730729) b!1094840))

(assert (= (and b!1094840 res!730727) b!1094833))

(assert (= (and b!1094833 res!730733) b!1094837))

(assert (= (and b!1094837 res!730732) b!1094841))

(assert (= (and b!1094841 res!730728) b!1094834))

(assert (= (and b!1094834 res!730726) b!1094839))

(assert (= (and b!1094844 condMapEmpty!42241) mapIsEmpty!42241))

(assert (= (and b!1094844 (not condMapEmpty!42241)) mapNonEmpty!42241))

(get-info :version)

(assert (= (and mapNonEmpty!42241 ((_ is ValueCellFull!12786) mapValue!42241)) b!1094842))

(assert (= (and b!1094844 ((_ is ValueCellFull!12786) mapDefault!42241)) b!1094843))

(assert (= start!96372 b!1094844))

(declare-fun m!1014757 () Bool)

(assert (=> mapNonEmpty!42241 m!1014757))

(declare-fun m!1014759 () Bool)

(assert (=> b!1094836 m!1014759))

(declare-fun m!1014761 () Bool)

(assert (=> b!1094841 m!1014761))

(declare-fun m!1014763 () Bool)

(assert (=> b!1094841 m!1014763))

(declare-fun m!1014765 () Bool)

(assert (=> b!1094834 m!1014765))

(declare-fun m!1014767 () Bool)

(assert (=> b!1094837 m!1014767))

(declare-fun m!1014769 () Bool)

(assert (=> b!1094838 m!1014769))

(declare-fun m!1014771 () Bool)

(assert (=> b!1094833 m!1014771))

(declare-fun m!1014773 () Bool)

(assert (=> start!96372 m!1014773))

(declare-fun m!1014775 () Bool)

(assert (=> start!96372 m!1014775))

(declare-fun m!1014777 () Bool)

(assert (=> start!96372 m!1014777))

(check-sat (not b!1094841) (not start!96372) (not b!1094834) (not b!1094836) (not b!1094833) (not b!1094838) tp_is_empty!26991 (not mapNonEmpty!42241))
(check-sat)
(get-model)

(declare-fun d!130169 () Bool)

(declare-fun res!730769 () Bool)

(declare-fun e!625133 () Bool)

(assert (=> d!130169 (=> res!730769 e!625133)))

(assert (=> d!130169 (= res!730769 (bvsge #b00000000000000000000000000000000 (size!34631 lt!489692)))))

(assert (=> d!130169 (= (arrayNoDuplicates!0 lt!489692 #b00000000000000000000000000000000 Nil!23945) e!625133)))

(declare-fun b!1094891 () Bool)

(declare-fun e!625134 () Bool)

(declare-fun contains!6388 (List!23948 (_ BitVec 64)) Bool)

(assert (=> b!1094891 (= e!625134 (contains!6388 Nil!23945 (select (arr!34094 lt!489692) #b00000000000000000000000000000000)))))

(declare-fun b!1094892 () Bool)

(declare-fun e!625132 () Bool)

(declare-fun call!45752 () Bool)

(assert (=> b!1094892 (= e!625132 call!45752)))

(declare-fun b!1094893 () Bool)

(declare-fun e!625135 () Bool)

(assert (=> b!1094893 (= e!625133 e!625135)))

(declare-fun res!730768 () Bool)

(assert (=> b!1094893 (=> (not res!730768) (not e!625135))))

(assert (=> b!1094893 (= res!730768 (not e!625134))))

(declare-fun res!730767 () Bool)

(assert (=> b!1094893 (=> (not res!730767) (not e!625134))))

(assert (=> b!1094893 (= res!730767 (validKeyInArray!0 (select (arr!34094 lt!489692) #b00000000000000000000000000000000)))))

(declare-fun b!1094894 () Bool)

(assert (=> b!1094894 (= e!625135 e!625132)))

(declare-fun c!108293 () Bool)

(assert (=> b!1094894 (= c!108293 (validKeyInArray!0 (select (arr!34094 lt!489692) #b00000000000000000000000000000000)))))

(declare-fun bm!45749 () Bool)

(assert (=> bm!45749 (= call!45752 (arrayNoDuplicates!0 lt!489692 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108293 (Cons!23944 (select (arr!34094 lt!489692) #b00000000000000000000000000000000) Nil!23945) Nil!23945)))))

(declare-fun b!1094895 () Bool)

(assert (=> b!1094895 (= e!625132 call!45752)))

(assert (= (and d!130169 (not res!730769)) b!1094893))

(assert (= (and b!1094893 res!730767) b!1094891))

(assert (= (and b!1094893 res!730768) b!1094894))

(assert (= (and b!1094894 c!108293) b!1094895))

(assert (= (and b!1094894 (not c!108293)) b!1094892))

(assert (= (or b!1094895 b!1094892) bm!45749))

(declare-fun m!1014801 () Bool)

(assert (=> b!1094891 m!1014801))

(assert (=> b!1094891 m!1014801))

(declare-fun m!1014803 () Bool)

(assert (=> b!1094891 m!1014803))

(assert (=> b!1094893 m!1014801))

(assert (=> b!1094893 m!1014801))

(declare-fun m!1014805 () Bool)

(assert (=> b!1094893 m!1014805))

(assert (=> b!1094894 m!1014801))

(assert (=> b!1094894 m!1014801))

(assert (=> b!1094894 m!1014805))

(assert (=> bm!45749 m!1014801))

(declare-fun m!1014807 () Bool)

(assert (=> bm!45749 m!1014807))

(assert (=> b!1094834 d!130169))

(declare-fun d!130171 () Bool)

(declare-fun res!730772 () Bool)

(declare-fun e!625137 () Bool)

(assert (=> d!130171 (=> res!730772 e!625137)))

(assert (=> d!130171 (= res!730772 (bvsge #b00000000000000000000000000000000 (size!34631 _keys!1070)))))

(assert (=> d!130171 (= (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23945) e!625137)))

(declare-fun b!1094896 () Bool)

(declare-fun e!625138 () Bool)

(assert (=> b!1094896 (= e!625138 (contains!6388 Nil!23945 (select (arr!34094 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1094897 () Bool)

(declare-fun e!625136 () Bool)

(declare-fun call!45753 () Bool)

(assert (=> b!1094897 (= e!625136 call!45753)))

(declare-fun b!1094898 () Bool)

(declare-fun e!625139 () Bool)

(assert (=> b!1094898 (= e!625137 e!625139)))

(declare-fun res!730771 () Bool)

(assert (=> b!1094898 (=> (not res!730771) (not e!625139))))

(assert (=> b!1094898 (= res!730771 (not e!625138))))

(declare-fun res!730770 () Bool)

(assert (=> b!1094898 (=> (not res!730770) (not e!625138))))

(assert (=> b!1094898 (= res!730770 (validKeyInArray!0 (select (arr!34094 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1094899 () Bool)

(assert (=> b!1094899 (= e!625139 e!625136)))

(declare-fun c!108294 () Bool)

(assert (=> b!1094899 (= c!108294 (validKeyInArray!0 (select (arr!34094 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun bm!45750 () Bool)

(assert (=> bm!45750 (= call!45753 (arrayNoDuplicates!0 _keys!1070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108294 (Cons!23944 (select (arr!34094 _keys!1070) #b00000000000000000000000000000000) Nil!23945) Nil!23945)))))

(declare-fun b!1094900 () Bool)

(assert (=> b!1094900 (= e!625136 call!45753)))

(assert (= (and d!130171 (not res!730772)) b!1094898))

(assert (= (and b!1094898 res!730770) b!1094896))

(assert (= (and b!1094898 res!730771) b!1094899))

(assert (= (and b!1094899 c!108294) b!1094900))

(assert (= (and b!1094899 (not c!108294)) b!1094897))

(assert (= (or b!1094900 b!1094897) bm!45750))

(declare-fun m!1014809 () Bool)

(assert (=> b!1094896 m!1014809))

(assert (=> b!1094896 m!1014809))

(declare-fun m!1014811 () Bool)

(assert (=> b!1094896 m!1014811))

(assert (=> b!1094898 m!1014809))

(assert (=> b!1094898 m!1014809))

(declare-fun m!1014813 () Bool)

(assert (=> b!1094898 m!1014813))

(assert (=> b!1094899 m!1014809))

(assert (=> b!1094899 m!1014809))

(assert (=> b!1094899 m!1014813))

(assert (=> bm!45750 m!1014809))

(declare-fun m!1014815 () Bool)

(assert (=> bm!45750 m!1014815))

(assert (=> b!1094838 d!130171))

(declare-fun d!130173 () Bool)

(assert (=> d!130173 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!96372 d!130173))

(declare-fun d!130175 () Bool)

(assert (=> d!130175 (= (array_inv!26124 _keys!1070) (bvsge (size!34631 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!96372 d!130175))

(declare-fun d!130177 () Bool)

(assert (=> d!130177 (= (array_inv!26125 _values!874) (bvsge (size!34632 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!96372 d!130177))

(declare-fun b!1094909 () Bool)

(declare-fun e!625146 () Bool)

(declare-fun e!625147 () Bool)

(assert (=> b!1094909 (= e!625146 e!625147)))

(declare-fun c!108297 () Bool)

(assert (=> b!1094909 (= c!108297 (validKeyInArray!0 (select (arr!34094 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun bm!45753 () Bool)

(declare-fun call!45756 () Bool)

(assert (=> bm!45753 (= call!45756 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(declare-fun d!130179 () Bool)

(declare-fun res!730777 () Bool)

(assert (=> d!130179 (=> res!730777 e!625146)))

(assert (=> d!130179 (= res!730777 (bvsge #b00000000000000000000000000000000 (size!34631 _keys!1070)))))

(assert (=> d!130179 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!625146)))

(declare-fun b!1094910 () Bool)

(declare-fun e!625148 () Bool)

(assert (=> b!1094910 (= e!625148 call!45756)))

(declare-fun b!1094911 () Bool)

(assert (=> b!1094911 (= e!625147 e!625148)))

(declare-fun lt!489702 () (_ BitVec 64))

(assert (=> b!1094911 (= lt!489702 (select (arr!34094 _keys!1070) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!35963 0))(
  ( (Unit!35964) )
))
(declare-fun lt!489704 () Unit!35963)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!70848 (_ BitVec 64) (_ BitVec 32)) Unit!35963)

(assert (=> b!1094911 (= lt!489704 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!489702 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!70848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1094911 (arrayContainsKey!0 _keys!1070 lt!489702 #b00000000000000000000000000000000)))

(declare-fun lt!489703 () Unit!35963)

(assert (=> b!1094911 (= lt!489703 lt!489704)))

(declare-fun res!730778 () Bool)

(declare-datatypes ((SeekEntryResult!9901 0))(
  ( (MissingZero!9901 (index!41974 (_ BitVec 32))) (Found!9901 (index!41975 (_ BitVec 32))) (Intermediate!9901 (undefined!10713 Bool) (index!41976 (_ BitVec 32)) (x!98411 (_ BitVec 32))) (Undefined!9901) (MissingVacant!9901 (index!41977 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!70848 (_ BitVec 32)) SeekEntryResult!9901)

(assert (=> b!1094911 (= res!730778 (= (seekEntryOrOpen!0 (select (arr!34094 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9901 #b00000000000000000000000000000000)))))

(assert (=> b!1094911 (=> (not res!730778) (not e!625148))))

(declare-fun b!1094912 () Bool)

(assert (=> b!1094912 (= e!625147 call!45756)))

(assert (= (and d!130179 (not res!730777)) b!1094909))

(assert (= (and b!1094909 c!108297) b!1094911))

(assert (= (and b!1094909 (not c!108297)) b!1094912))

(assert (= (and b!1094911 res!730778) b!1094910))

(assert (= (or b!1094910 b!1094912) bm!45753))

(assert (=> b!1094909 m!1014809))

(assert (=> b!1094909 m!1014809))

(assert (=> b!1094909 m!1014813))

(declare-fun m!1014817 () Bool)

(assert (=> bm!45753 m!1014817))

(assert (=> b!1094911 m!1014809))

(declare-fun m!1014819 () Bool)

(assert (=> b!1094911 m!1014819))

(declare-fun m!1014821 () Bool)

(assert (=> b!1094911 m!1014821))

(assert (=> b!1094911 m!1014809))

(declare-fun m!1014823 () Bool)

(assert (=> b!1094911 m!1014823))

(assert (=> b!1094836 d!130179))

(declare-fun b!1094913 () Bool)

(declare-fun e!625149 () Bool)

(declare-fun e!625150 () Bool)

(assert (=> b!1094913 (= e!625149 e!625150)))

(declare-fun c!108298 () Bool)

(assert (=> b!1094913 (= c!108298 (validKeyInArray!0 (select (arr!34094 lt!489692) #b00000000000000000000000000000000)))))

(declare-fun bm!45754 () Bool)

(declare-fun call!45757 () Bool)

(assert (=> bm!45754 (= call!45757 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!489692 mask!1414))))

(declare-fun d!130181 () Bool)

(declare-fun res!730779 () Bool)

(assert (=> d!130181 (=> res!730779 e!625149)))

(assert (=> d!130181 (= res!730779 (bvsge #b00000000000000000000000000000000 (size!34631 lt!489692)))))

(assert (=> d!130181 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!489692 mask!1414) e!625149)))

(declare-fun b!1094914 () Bool)

(declare-fun e!625151 () Bool)

(assert (=> b!1094914 (= e!625151 call!45757)))

(declare-fun b!1094915 () Bool)

(assert (=> b!1094915 (= e!625150 e!625151)))

(declare-fun lt!489705 () (_ BitVec 64))

(assert (=> b!1094915 (= lt!489705 (select (arr!34094 lt!489692) #b00000000000000000000000000000000))))

(declare-fun lt!489707 () Unit!35963)

(assert (=> b!1094915 (= lt!489707 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!489692 lt!489705 #b00000000000000000000000000000000))))

(assert (=> b!1094915 (arrayContainsKey!0 lt!489692 lt!489705 #b00000000000000000000000000000000)))

(declare-fun lt!489706 () Unit!35963)

(assert (=> b!1094915 (= lt!489706 lt!489707)))

(declare-fun res!730780 () Bool)

(assert (=> b!1094915 (= res!730780 (= (seekEntryOrOpen!0 (select (arr!34094 lt!489692) #b00000000000000000000000000000000) lt!489692 mask!1414) (Found!9901 #b00000000000000000000000000000000)))))

(assert (=> b!1094915 (=> (not res!730780) (not e!625151))))

(declare-fun b!1094916 () Bool)

(assert (=> b!1094916 (= e!625150 call!45757)))

(assert (= (and d!130181 (not res!730779)) b!1094913))

(assert (= (and b!1094913 c!108298) b!1094915))

(assert (= (and b!1094913 (not c!108298)) b!1094916))

(assert (= (and b!1094915 res!730780) b!1094914))

(assert (= (or b!1094914 b!1094916) bm!45754))

(assert (=> b!1094913 m!1014801))

(assert (=> b!1094913 m!1014801))

(assert (=> b!1094913 m!1014805))

(declare-fun m!1014825 () Bool)

(assert (=> bm!45754 m!1014825))

(assert (=> b!1094915 m!1014801))

(declare-fun m!1014827 () Bool)

(assert (=> b!1094915 m!1014827))

(declare-fun m!1014829 () Bool)

(assert (=> b!1094915 m!1014829))

(assert (=> b!1094915 m!1014801))

(declare-fun m!1014831 () Bool)

(assert (=> b!1094915 m!1014831))

(assert (=> b!1094841 d!130181))

(declare-fun d!130183 () Bool)

(assert (=> d!130183 (= (validKeyInArray!0 k0!904) (and (not (= k0!904 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!904 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1094833 d!130183))

(declare-fun mapNonEmpty!42247 () Bool)

(declare-fun mapRes!42247 () Bool)

(declare-fun tp!80763 () Bool)

(declare-fun e!625157 () Bool)

(assert (=> mapNonEmpty!42247 (= mapRes!42247 (and tp!80763 e!625157))))

(declare-fun mapValue!42247 () ValueCell!12786)

(declare-fun mapKey!42247 () (_ BitVec 32))

(declare-fun mapRest!42247 () (Array (_ BitVec 32) ValueCell!12786))

(assert (=> mapNonEmpty!42247 (= mapRest!42241 (store mapRest!42247 mapKey!42247 mapValue!42247))))

(declare-fun b!1094924 () Bool)

(declare-fun e!625156 () Bool)

(assert (=> b!1094924 (= e!625156 tp_is_empty!26991)))

(declare-fun b!1094923 () Bool)

(assert (=> b!1094923 (= e!625157 tp_is_empty!26991)))

(declare-fun mapIsEmpty!42247 () Bool)

(assert (=> mapIsEmpty!42247 mapRes!42247))

(declare-fun condMapEmpty!42247 () Bool)

(declare-fun mapDefault!42247 () ValueCell!12786)

(assert (=> mapNonEmpty!42241 (= condMapEmpty!42247 (= mapRest!42241 ((as const (Array (_ BitVec 32) ValueCell!12786)) mapDefault!42247)))))

(assert (=> mapNonEmpty!42241 (= tp!80757 (and e!625156 mapRes!42247))))

(assert (= (and mapNonEmpty!42241 condMapEmpty!42247) mapIsEmpty!42247))

(assert (= (and mapNonEmpty!42241 (not condMapEmpty!42247)) mapNonEmpty!42247))

(assert (= (and mapNonEmpty!42247 ((_ is ValueCellFull!12786) mapValue!42247)) b!1094923))

(assert (= (and mapNonEmpty!42241 ((_ is ValueCellFull!12786) mapDefault!42247)) b!1094924))

(declare-fun m!1014833 () Bool)

(assert (=> mapNonEmpty!42247 m!1014833))

(check-sat (not b!1094894) (not b!1094915) (not bm!45749) (not bm!45750) (not b!1094899) (not b!1094913) (not b!1094893) tp_is_empty!26991 (not b!1094891) (not bm!45754) (not b!1094898) (not mapNonEmpty!42247) (not b!1094911) (not bm!45753) (not b!1094909) (not b!1094896))
(check-sat)
