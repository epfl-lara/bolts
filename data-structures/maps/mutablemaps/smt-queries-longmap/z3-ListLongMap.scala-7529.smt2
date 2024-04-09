; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95500 () Bool)

(assert start!95500)

(declare-fun b!1078072 () Bool)

(declare-fun res!718443 () Bool)

(declare-fun e!616448 () Bool)

(assert (=> b!1078072 (=> (not res!718443) (not e!616448))))

(declare-datatypes ((array!69216 0))(
  ( (array!69217 (arr!33280 (Array (_ BitVec 32) (_ BitVec 64))) (size!33817 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69216)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun i!650 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69216 (_ BitVec 32)) Bool)

(assert (=> b!1078072 (= res!718443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!69217 (store (arr!33280 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33817 _keys!1070)) mask!1414))))

(declare-fun res!718442 () Bool)

(assert (=> start!95500 (=> (not res!718442) (not e!616448))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95500 (= res!718442 (validMask!0 mask!1414))))

(assert (=> start!95500 e!616448))

(assert (=> start!95500 true))

(declare-fun array_inv!25576 (array!69216) Bool)

(assert (=> start!95500 (array_inv!25576 _keys!1070)))

(declare-datatypes ((V!39995 0))(
  ( (V!39996 (val!13132 Int)) )
))
(declare-datatypes ((ValueCell!12366 0))(
  ( (ValueCellFull!12366 (v!15753 V!39995)) (EmptyCell!12366) )
))
(declare-datatypes ((array!69218 0))(
  ( (array!69219 (arr!33281 (Array (_ BitVec 32) ValueCell!12366)) (size!33818 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69218)

(declare-fun e!616450 () Bool)

(declare-fun array_inv!25577 (array!69218) Bool)

(assert (=> start!95500 (and (array_inv!25577 _values!874) e!616450)))

(declare-fun b!1078073 () Bool)

(declare-fun res!718444 () Bool)

(assert (=> b!1078073 (=> (not res!718444) (not e!616448))))

(declare-datatypes ((List!23347 0))(
  ( (Nil!23344) (Cons!23343 (h!24552 (_ BitVec 64)) (t!32713 List!23347)) )
))
(declare-fun arrayNoDuplicates!0 (array!69216 (_ BitVec 32) List!23347) Bool)

(assert (=> b!1078073 (= res!718444 (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23344))))

(declare-fun b!1078074 () Bool)

(declare-fun res!718445 () Bool)

(assert (=> b!1078074 (=> (not res!718445) (not e!616448))))

(declare-fun k0!904 () (_ BitVec 64))

(assert (=> b!1078074 (= res!718445 (= (select (arr!33280 _keys!1070) i!650) k0!904))))

(declare-fun b!1078075 () Bool)

(declare-fun e!616449 () Bool)

(declare-fun tp_is_empty!26151 () Bool)

(assert (=> b!1078075 (= e!616449 tp_is_empty!26151)))

(declare-fun mapNonEmpty!40975 () Bool)

(declare-fun mapRes!40975 () Bool)

(declare-fun tp!78438 () Bool)

(assert (=> mapNonEmpty!40975 (= mapRes!40975 (and tp!78438 e!616449))))

(declare-fun mapRest!40975 () (Array (_ BitVec 32) ValueCell!12366))

(declare-fun mapValue!40975 () ValueCell!12366)

(declare-fun mapKey!40975 () (_ BitVec 32))

(assert (=> mapNonEmpty!40975 (= (arr!33281 _values!874) (store mapRest!40975 mapKey!40975 mapValue!40975))))

(declare-fun b!1078076 () Bool)

(declare-fun res!718439 () Bool)

(assert (=> b!1078076 (=> (not res!718439) (not e!616448))))

(declare-fun noDuplicate!1598 (List!23347) Bool)

(assert (=> b!1078076 (= res!718439 (noDuplicate!1598 Nil!23344))))

(declare-fun b!1078077 () Bool)

(declare-fun res!718447 () Bool)

(assert (=> b!1078077 (=> (not res!718447) (not e!616448))))

(assert (=> b!1078077 (= res!718447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1078078 () Bool)

(declare-fun res!718440 () Bool)

(assert (=> b!1078078 (=> (not res!718440) (not e!616448))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1078078 (= res!718440 (and (= (size!33818 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33817 _keys!1070) (size!33818 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1078079 () Bool)

(declare-fun e!616453 () Bool)

(declare-fun contains!6386 (List!23347 (_ BitVec 64)) Bool)

(assert (=> b!1078079 (= e!616453 (contains!6386 Nil!23344 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1078080 () Bool)

(declare-fun e!616451 () Bool)

(assert (=> b!1078080 (= e!616450 (and e!616451 mapRes!40975))))

(declare-fun condMapEmpty!40975 () Bool)

(declare-fun mapDefault!40975 () ValueCell!12366)

(assert (=> b!1078080 (= condMapEmpty!40975 (= (arr!33281 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12366)) mapDefault!40975)))))

(declare-fun b!1078081 () Bool)

(assert (=> b!1078081 (= e!616451 tp_is_empty!26151)))

(declare-fun b!1078082 () Bool)

(declare-fun res!718438 () Bool)

(assert (=> b!1078082 (=> (not res!718438) (not e!616448))))

(assert (=> b!1078082 (= res!718438 (and (bvsle #b00000000000000000000000000000000 (size!33817 _keys!1070)) (bvslt (size!33817 _keys!1070) #b01111111111111111111111111111111)))))

(declare-fun b!1078083 () Bool)

(assert (=> b!1078083 (= e!616448 e!616453)))

(declare-fun res!718448 () Bool)

(assert (=> b!1078083 (=> res!718448 e!616453)))

(assert (=> b!1078083 (= res!718448 (contains!6386 Nil!23344 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!40975 () Bool)

(assert (=> mapIsEmpty!40975 mapRes!40975))

(declare-fun b!1078084 () Bool)

(declare-fun res!718446 () Bool)

(assert (=> b!1078084 (=> (not res!718446) (not e!616448))))

(assert (=> b!1078084 (= res!718446 (and (bvsge i!650 #b00000000000000000000000000000000) (bvslt i!650 (size!33817 _keys!1070))))))

(declare-fun b!1078085 () Bool)

(declare-fun res!718441 () Bool)

(assert (=> b!1078085 (=> (not res!718441) (not e!616448))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1078085 (= res!718441 (validKeyInArray!0 k0!904))))

(assert (= (and start!95500 res!718442) b!1078078))

(assert (= (and b!1078078 res!718440) b!1078077))

(assert (= (and b!1078077 res!718447) b!1078073))

(assert (= (and b!1078073 res!718444) b!1078084))

(assert (= (and b!1078084 res!718446) b!1078085))

(assert (= (and b!1078085 res!718441) b!1078074))

(assert (= (and b!1078074 res!718445) b!1078072))

(assert (= (and b!1078072 res!718443) b!1078082))

(assert (= (and b!1078082 res!718438) b!1078076))

(assert (= (and b!1078076 res!718439) b!1078083))

(assert (= (and b!1078083 (not res!718448)) b!1078079))

(assert (= (and b!1078080 condMapEmpty!40975) mapIsEmpty!40975))

(assert (= (and b!1078080 (not condMapEmpty!40975)) mapNonEmpty!40975))

(get-info :version)

(assert (= (and mapNonEmpty!40975 ((_ is ValueCellFull!12366) mapValue!40975)) b!1078075))

(assert (= (and b!1078080 ((_ is ValueCellFull!12366) mapDefault!40975)) b!1078081))

(assert (= start!95500 b!1078080))

(declare-fun m!996805 () Bool)

(assert (=> b!1078085 m!996805))

(declare-fun m!996807 () Bool)

(assert (=> b!1078079 m!996807))

(declare-fun m!996809 () Bool)

(assert (=> b!1078077 m!996809))

(declare-fun m!996811 () Bool)

(assert (=> b!1078083 m!996811))

(declare-fun m!996813 () Bool)

(assert (=> start!95500 m!996813))

(declare-fun m!996815 () Bool)

(assert (=> start!95500 m!996815))

(declare-fun m!996817 () Bool)

(assert (=> start!95500 m!996817))

(declare-fun m!996819 () Bool)

(assert (=> b!1078074 m!996819))

(declare-fun m!996821 () Bool)

(assert (=> b!1078076 m!996821))

(declare-fun m!996823 () Bool)

(assert (=> b!1078072 m!996823))

(declare-fun m!996825 () Bool)

(assert (=> b!1078072 m!996825))

(declare-fun m!996827 () Bool)

(assert (=> mapNonEmpty!40975 m!996827))

(declare-fun m!996829 () Bool)

(assert (=> b!1078073 m!996829))

(check-sat tp_is_empty!26151 (not b!1078072) (not start!95500) (not b!1078085) (not mapNonEmpty!40975) (not b!1078077) (not b!1078073) (not b!1078076) (not b!1078083) (not b!1078079))
(check-sat)
(get-model)

(declare-fun d!129849 () Bool)

(declare-fun lt!478561 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!541 (List!23347) (InoxSet (_ BitVec 64)))

(assert (=> d!129849 (= lt!478561 (select (content!541 Nil!23344) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!616476 () Bool)

(assert (=> d!129849 (= lt!478561 e!616476)))

(declare-fun res!718486 () Bool)

(assert (=> d!129849 (=> (not res!718486) (not e!616476))))

(assert (=> d!129849 (= res!718486 ((_ is Cons!23343) Nil!23344))))

(assert (=> d!129849 (= (contains!6386 Nil!23344 #b1000000000000000000000000000000000000000000000000000000000000000) lt!478561)))

(declare-fun b!1078132 () Bool)

(declare-fun e!616477 () Bool)

(assert (=> b!1078132 (= e!616476 e!616477)))

(declare-fun res!718487 () Bool)

(assert (=> b!1078132 (=> res!718487 e!616477)))

(assert (=> b!1078132 (= res!718487 (= (h!24552 Nil!23344) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1078133 () Bool)

(assert (=> b!1078133 (= e!616477 (contains!6386 (t!32713 Nil!23344) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!129849 res!718486) b!1078132))

(assert (= (and b!1078132 (not res!718487)) b!1078133))

(declare-fun m!996857 () Bool)

(assert (=> d!129849 m!996857))

(declare-fun m!996859 () Bool)

(assert (=> d!129849 m!996859))

(declare-fun m!996861 () Bool)

(assert (=> b!1078133 m!996861))

(assert (=> b!1078079 d!129849))

(declare-fun d!129851 () Bool)

(assert (=> d!129851 (= (validKeyInArray!0 k0!904) (and (not (= k0!904 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!904 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1078085 d!129851))

(declare-fun b!1078142 () Bool)

(declare-fun e!616484 () Bool)

(declare-fun call!45737 () Bool)

(assert (=> b!1078142 (= e!616484 call!45737)))

(declare-fun bm!45734 () Bool)

(assert (=> bm!45734 (= call!45737 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!69217 (store (arr!33280 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33817 _keys!1070)) mask!1414))))

(declare-fun b!1078143 () Bool)

(declare-fun e!616485 () Bool)

(assert (=> b!1078143 (= e!616484 e!616485)))

(declare-fun lt!478569 () (_ BitVec 64))

(assert (=> b!1078143 (= lt!478569 (select (arr!33280 (array!69217 (store (arr!33280 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33817 _keys!1070))) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!35411 0))(
  ( (Unit!35412) )
))
(declare-fun lt!478568 () Unit!35411)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69216 (_ BitVec 64) (_ BitVec 32)) Unit!35411)

(assert (=> b!1078143 (= lt!478568 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69217 (store (arr!33280 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33817 _keys!1070)) lt!478569 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!69216 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1078143 (arrayContainsKey!0 (array!69217 (store (arr!33280 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33817 _keys!1070)) lt!478569 #b00000000000000000000000000000000)))

(declare-fun lt!478570 () Unit!35411)

(assert (=> b!1078143 (= lt!478570 lt!478568)))

(declare-fun res!718493 () Bool)

(declare-datatypes ((SeekEntryResult!9899 0))(
  ( (MissingZero!9899 (index!41966 (_ BitVec 32))) (Found!9899 (index!41967 (_ BitVec 32))) (Intermediate!9899 (undefined!10711 Bool) (index!41968 (_ BitVec 32)) (x!96637 (_ BitVec 32))) (Undefined!9899) (MissingVacant!9899 (index!41969 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!69216 (_ BitVec 32)) SeekEntryResult!9899)

(assert (=> b!1078143 (= res!718493 (= (seekEntryOrOpen!0 (select (arr!33280 (array!69217 (store (arr!33280 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33817 _keys!1070))) #b00000000000000000000000000000000) (array!69217 (store (arr!33280 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33817 _keys!1070)) mask!1414) (Found!9899 #b00000000000000000000000000000000)))))

(assert (=> b!1078143 (=> (not res!718493) (not e!616485))))

(declare-fun d!129853 () Bool)

(declare-fun res!718492 () Bool)

(declare-fun e!616486 () Bool)

(assert (=> d!129853 (=> res!718492 e!616486)))

(assert (=> d!129853 (= res!718492 (bvsge #b00000000000000000000000000000000 (size!33817 (array!69217 (store (arr!33280 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33817 _keys!1070)))))))

(assert (=> d!129853 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!69217 (store (arr!33280 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33817 _keys!1070)) mask!1414) e!616486)))

(declare-fun b!1078144 () Bool)

(assert (=> b!1078144 (= e!616486 e!616484)))

(declare-fun c!108278 () Bool)

(assert (=> b!1078144 (= c!108278 (validKeyInArray!0 (select (arr!33280 (array!69217 (store (arr!33280 _keys!1070) i!650 #b1000000000000000000000000000000000000000000000000000000000000000) (size!33817 _keys!1070))) #b00000000000000000000000000000000)))))

(declare-fun b!1078145 () Bool)

(assert (=> b!1078145 (= e!616485 call!45737)))

(assert (= (and d!129853 (not res!718492)) b!1078144))

(assert (= (and b!1078144 c!108278) b!1078143))

(assert (= (and b!1078144 (not c!108278)) b!1078142))

(assert (= (and b!1078143 res!718493) b!1078145))

(assert (= (or b!1078145 b!1078142) bm!45734))

(declare-fun m!996863 () Bool)

(assert (=> bm!45734 m!996863))

(declare-fun m!996865 () Bool)

(assert (=> b!1078143 m!996865))

(declare-fun m!996867 () Bool)

(assert (=> b!1078143 m!996867))

(declare-fun m!996869 () Bool)

(assert (=> b!1078143 m!996869))

(assert (=> b!1078143 m!996865))

(declare-fun m!996871 () Bool)

(assert (=> b!1078143 m!996871))

(assert (=> b!1078144 m!996865))

(assert (=> b!1078144 m!996865))

(declare-fun m!996873 () Bool)

(assert (=> b!1078144 m!996873))

(assert (=> b!1078072 d!129853))

(declare-fun d!129855 () Bool)

(assert (=> d!129855 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!95500 d!129855))

(declare-fun d!129857 () Bool)

(assert (=> d!129857 (= (array_inv!25576 _keys!1070) (bvsge (size!33817 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!95500 d!129857))

(declare-fun d!129859 () Bool)

(assert (=> d!129859 (= (array_inv!25577 _values!874) (bvsge (size!33818 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!95500 d!129859))

(declare-fun d!129861 () Bool)

(declare-fun res!718498 () Bool)

(declare-fun e!616491 () Bool)

(assert (=> d!129861 (=> res!718498 e!616491)))

(assert (=> d!129861 (= res!718498 ((_ is Nil!23344) Nil!23344))))

(assert (=> d!129861 (= (noDuplicate!1598 Nil!23344) e!616491)))

(declare-fun b!1078150 () Bool)

(declare-fun e!616492 () Bool)

(assert (=> b!1078150 (= e!616491 e!616492)))

(declare-fun res!718499 () Bool)

(assert (=> b!1078150 (=> (not res!718499) (not e!616492))))

(assert (=> b!1078150 (= res!718499 (not (contains!6386 (t!32713 Nil!23344) (h!24552 Nil!23344))))))

(declare-fun b!1078151 () Bool)

(assert (=> b!1078151 (= e!616492 (noDuplicate!1598 (t!32713 Nil!23344)))))

(assert (= (and d!129861 (not res!718498)) b!1078150))

(assert (= (and b!1078150 res!718499) b!1078151))

(declare-fun m!996875 () Bool)

(assert (=> b!1078150 m!996875))

(declare-fun m!996877 () Bool)

(assert (=> b!1078151 m!996877))

(assert (=> b!1078076 d!129861))

(declare-fun d!129863 () Bool)

(declare-fun lt!478571 () Bool)

(assert (=> d!129863 (= lt!478571 (select (content!541 Nil!23344) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!616493 () Bool)

(assert (=> d!129863 (= lt!478571 e!616493)))

(declare-fun res!718500 () Bool)

(assert (=> d!129863 (=> (not res!718500) (not e!616493))))

(assert (=> d!129863 (= res!718500 ((_ is Cons!23343) Nil!23344))))

(assert (=> d!129863 (= (contains!6386 Nil!23344 #b0000000000000000000000000000000000000000000000000000000000000000) lt!478571)))

(declare-fun b!1078152 () Bool)

(declare-fun e!616494 () Bool)

(assert (=> b!1078152 (= e!616493 e!616494)))

(declare-fun res!718501 () Bool)

(assert (=> b!1078152 (=> res!718501 e!616494)))

(assert (=> b!1078152 (= res!718501 (= (h!24552 Nil!23344) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1078153 () Bool)

(assert (=> b!1078153 (= e!616494 (contains!6386 (t!32713 Nil!23344) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!129863 res!718500) b!1078152))

(assert (= (and b!1078152 (not res!718501)) b!1078153))

(assert (=> d!129863 m!996857))

(declare-fun m!996879 () Bool)

(assert (=> d!129863 m!996879))

(declare-fun m!996881 () Bool)

(assert (=> b!1078153 m!996881))

(assert (=> b!1078083 d!129863))

(declare-fun b!1078154 () Bool)

(declare-fun e!616495 () Bool)

(declare-fun call!45738 () Bool)

(assert (=> b!1078154 (= e!616495 call!45738)))

(declare-fun bm!45735 () Bool)

(assert (=> bm!45735 (= call!45738 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(declare-fun b!1078155 () Bool)

(declare-fun e!616496 () Bool)

(assert (=> b!1078155 (= e!616495 e!616496)))

(declare-fun lt!478573 () (_ BitVec 64))

(assert (=> b!1078155 (= lt!478573 (select (arr!33280 _keys!1070) #b00000000000000000000000000000000))))

(declare-fun lt!478572 () Unit!35411)

(assert (=> b!1078155 (= lt!478572 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!478573 #b00000000000000000000000000000000))))

(assert (=> b!1078155 (arrayContainsKey!0 _keys!1070 lt!478573 #b00000000000000000000000000000000)))

(declare-fun lt!478574 () Unit!35411)

(assert (=> b!1078155 (= lt!478574 lt!478572)))

(declare-fun res!718503 () Bool)

(assert (=> b!1078155 (= res!718503 (= (seekEntryOrOpen!0 (select (arr!33280 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9899 #b00000000000000000000000000000000)))))

(assert (=> b!1078155 (=> (not res!718503) (not e!616496))))

(declare-fun d!129865 () Bool)

(declare-fun res!718502 () Bool)

(declare-fun e!616497 () Bool)

(assert (=> d!129865 (=> res!718502 e!616497)))

(assert (=> d!129865 (= res!718502 (bvsge #b00000000000000000000000000000000 (size!33817 _keys!1070)))))

(assert (=> d!129865 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!616497)))

(declare-fun b!1078156 () Bool)

(assert (=> b!1078156 (= e!616497 e!616495)))

(declare-fun c!108279 () Bool)

(assert (=> b!1078156 (= c!108279 (validKeyInArray!0 (select (arr!33280 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1078157 () Bool)

(assert (=> b!1078157 (= e!616496 call!45738)))

(assert (= (and d!129865 (not res!718502)) b!1078156))

(assert (= (and b!1078156 c!108279) b!1078155))

(assert (= (and b!1078156 (not c!108279)) b!1078154))

(assert (= (and b!1078155 res!718503) b!1078157))

(assert (= (or b!1078157 b!1078154) bm!45735))

(declare-fun m!996883 () Bool)

(assert (=> bm!45735 m!996883))

(declare-fun m!996885 () Bool)

(assert (=> b!1078155 m!996885))

(declare-fun m!996887 () Bool)

(assert (=> b!1078155 m!996887))

(declare-fun m!996889 () Bool)

(assert (=> b!1078155 m!996889))

(assert (=> b!1078155 m!996885))

(declare-fun m!996891 () Bool)

(assert (=> b!1078155 m!996891))

(assert (=> b!1078156 m!996885))

(assert (=> b!1078156 m!996885))

(declare-fun m!996893 () Bool)

(assert (=> b!1078156 m!996893))

(assert (=> b!1078077 d!129865))

(declare-fun b!1078168 () Bool)

(declare-fun e!616506 () Bool)

(declare-fun e!616508 () Bool)

(assert (=> b!1078168 (= e!616506 e!616508)))

(declare-fun res!718510 () Bool)

(assert (=> b!1078168 (=> (not res!718510) (not e!616508))))

(declare-fun e!616507 () Bool)

(assert (=> b!1078168 (= res!718510 (not e!616507))))

(declare-fun res!718511 () Bool)

(assert (=> b!1078168 (=> (not res!718511) (not e!616507))))

(assert (=> b!1078168 (= res!718511 (validKeyInArray!0 (select (arr!33280 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun d!129867 () Bool)

(declare-fun res!718512 () Bool)

(assert (=> d!129867 (=> res!718512 e!616506)))

(assert (=> d!129867 (= res!718512 (bvsge #b00000000000000000000000000000000 (size!33817 _keys!1070)))))

(assert (=> d!129867 (= (arrayNoDuplicates!0 _keys!1070 #b00000000000000000000000000000000 Nil!23344) e!616506)))

(declare-fun bm!45738 () Bool)

(declare-fun call!45741 () Bool)

(declare-fun c!108282 () Bool)

(assert (=> bm!45738 (= call!45741 (arrayNoDuplicates!0 _keys!1070 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!108282 (Cons!23343 (select (arr!33280 _keys!1070) #b00000000000000000000000000000000) Nil!23344) Nil!23344)))))

(declare-fun b!1078169 () Bool)

(declare-fun e!616509 () Bool)

(assert (=> b!1078169 (= e!616509 call!45741)))

(declare-fun b!1078170 () Bool)

(assert (=> b!1078170 (= e!616509 call!45741)))

(declare-fun b!1078171 () Bool)

(assert (=> b!1078171 (= e!616508 e!616509)))

(assert (=> b!1078171 (= c!108282 (validKeyInArray!0 (select (arr!33280 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun b!1078172 () Bool)

(assert (=> b!1078172 (= e!616507 (contains!6386 Nil!23344 (select (arr!33280 _keys!1070) #b00000000000000000000000000000000)))))

(assert (= (and d!129867 (not res!718512)) b!1078168))

(assert (= (and b!1078168 res!718511) b!1078172))

(assert (= (and b!1078168 res!718510) b!1078171))

(assert (= (and b!1078171 c!108282) b!1078170))

(assert (= (and b!1078171 (not c!108282)) b!1078169))

(assert (= (or b!1078170 b!1078169) bm!45738))

(assert (=> b!1078168 m!996885))

(assert (=> b!1078168 m!996885))

(assert (=> b!1078168 m!996893))

(assert (=> bm!45738 m!996885))

(declare-fun m!996895 () Bool)

(assert (=> bm!45738 m!996895))

(assert (=> b!1078171 m!996885))

(assert (=> b!1078171 m!996885))

(assert (=> b!1078171 m!996893))

(assert (=> b!1078172 m!996885))

(assert (=> b!1078172 m!996885))

(declare-fun m!996897 () Bool)

(assert (=> b!1078172 m!996897))

(assert (=> b!1078073 d!129867))

(declare-fun mapNonEmpty!40981 () Bool)

(declare-fun mapRes!40981 () Bool)

(declare-fun tp!78444 () Bool)

(declare-fun e!616514 () Bool)

(assert (=> mapNonEmpty!40981 (= mapRes!40981 (and tp!78444 e!616514))))

(declare-fun mapRest!40981 () (Array (_ BitVec 32) ValueCell!12366))

(declare-fun mapKey!40981 () (_ BitVec 32))

(declare-fun mapValue!40981 () ValueCell!12366)

(assert (=> mapNonEmpty!40981 (= mapRest!40975 (store mapRest!40981 mapKey!40981 mapValue!40981))))

(declare-fun b!1078179 () Bool)

(assert (=> b!1078179 (= e!616514 tp_is_empty!26151)))

(declare-fun mapIsEmpty!40981 () Bool)

(assert (=> mapIsEmpty!40981 mapRes!40981))

(declare-fun b!1078180 () Bool)

(declare-fun e!616515 () Bool)

(assert (=> b!1078180 (= e!616515 tp_is_empty!26151)))

(declare-fun condMapEmpty!40981 () Bool)

(declare-fun mapDefault!40981 () ValueCell!12366)

(assert (=> mapNonEmpty!40975 (= condMapEmpty!40981 (= mapRest!40975 ((as const (Array (_ BitVec 32) ValueCell!12366)) mapDefault!40981)))))

(assert (=> mapNonEmpty!40975 (= tp!78438 (and e!616515 mapRes!40981))))

(assert (= (and mapNonEmpty!40975 condMapEmpty!40981) mapIsEmpty!40981))

(assert (= (and mapNonEmpty!40975 (not condMapEmpty!40981)) mapNonEmpty!40981))

(assert (= (and mapNonEmpty!40981 ((_ is ValueCellFull!12366) mapValue!40981)) b!1078179))

(assert (= (and mapNonEmpty!40975 ((_ is ValueCellFull!12366) mapDefault!40981)) b!1078180))

(declare-fun m!996899 () Bool)

(assert (=> mapNonEmpty!40981 m!996899))

(check-sat (not b!1078150) tp_is_empty!26151 (not b!1078155) (not b!1078143) (not b!1078133) (not b!1078156) (not b!1078171) (not b!1078172) (not mapNonEmpty!40981) (not b!1078153) (not bm!45738) (not bm!45734) (not bm!45735) (not b!1078144) (not d!129849) (not b!1078168) (not d!129863) (not b!1078151))
(check-sat)
