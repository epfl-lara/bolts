; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95370 () Bool)

(assert start!95370)

(declare-fun b!1077020 () Bool)

(declare-fun res!717784 () Bool)

(declare-fun e!615794 () Bool)

(assert (=> b!1077020 (=> (not res!717784) (not e!615794))))

(declare-datatypes ((array!69082 0))(
  ( (array!69083 (arr!33219 (Array (_ BitVec 32) (_ BitVec 64))) (size!33756 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69082)

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69082 (_ BitVec 32)) Bool)

(assert (=> b!1077020 (= res!717784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1077021 () Bool)

(assert (=> b!1077021 (= e!615794 (bvsgt #b00000000000000000000000000000000 (size!33756 _keys!1070)))))

(declare-fun b!1077022 () Bool)

(declare-fun e!615795 () Bool)

(declare-fun tp_is_empty!26085 () Bool)

(assert (=> b!1077022 (= e!615795 tp_is_empty!26085)))

(declare-fun res!717783 () Bool)

(assert (=> start!95370 (=> (not res!717783) (not e!615794))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95370 (= res!717783 (validMask!0 mask!1414))))

(assert (=> start!95370 e!615794))

(assert (=> start!95370 true))

(declare-datatypes ((V!39907 0))(
  ( (V!39908 (val!13099 Int)) )
))
(declare-datatypes ((ValueCell!12333 0))(
  ( (ValueCellFull!12333 (v!15719 V!39907)) (EmptyCell!12333) )
))
(declare-datatypes ((array!69084 0))(
  ( (array!69085 (arr!33220 (Array (_ BitVec 32) ValueCell!12333)) (size!33757 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69084)

(declare-fun e!615793 () Bool)

(declare-fun array_inv!25526 (array!69084) Bool)

(assert (=> start!95370 (and (array_inv!25526 _values!874) e!615793)))

(declare-fun array_inv!25527 (array!69082) Bool)

(assert (=> start!95370 (array_inv!25527 _keys!1070)))

(declare-fun mapNonEmpty!40858 () Bool)

(declare-fun mapRes!40858 () Bool)

(declare-fun tp!78321 () Bool)

(assert (=> mapNonEmpty!40858 (= mapRes!40858 (and tp!78321 e!615795))))

(declare-fun mapKey!40858 () (_ BitVec 32))

(declare-fun mapRest!40858 () (Array (_ BitVec 32) ValueCell!12333))

(declare-fun mapValue!40858 () ValueCell!12333)

(assert (=> mapNonEmpty!40858 (= (arr!33220 _values!874) (store mapRest!40858 mapKey!40858 mapValue!40858))))

(declare-fun b!1077023 () Bool)

(declare-fun res!717785 () Bool)

(assert (=> b!1077023 (=> (not res!717785) (not e!615794))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1077023 (= res!717785 (and (= (size!33757 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33756 _keys!1070) (size!33757 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1077024 () Bool)

(declare-fun e!615796 () Bool)

(assert (=> b!1077024 (= e!615793 (and e!615796 mapRes!40858))))

(declare-fun condMapEmpty!40858 () Bool)

(declare-fun mapDefault!40858 () ValueCell!12333)

(assert (=> b!1077024 (= condMapEmpty!40858 (= (arr!33220 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12333)) mapDefault!40858)))))

(declare-fun b!1077025 () Bool)

(assert (=> b!1077025 (= e!615796 tp_is_empty!26085)))

(declare-fun mapIsEmpty!40858 () Bool)

(assert (=> mapIsEmpty!40858 mapRes!40858))

(assert (= (and start!95370 res!717783) b!1077023))

(assert (= (and b!1077023 res!717785) b!1077020))

(assert (= (and b!1077020 res!717784) b!1077021))

(assert (= (and b!1077024 condMapEmpty!40858) mapIsEmpty!40858))

(assert (= (and b!1077024 (not condMapEmpty!40858)) mapNonEmpty!40858))

(get-info :version)

(assert (= (and mapNonEmpty!40858 ((_ is ValueCellFull!12333) mapValue!40858)) b!1077022))

(assert (= (and b!1077024 ((_ is ValueCellFull!12333) mapDefault!40858)) b!1077025))

(assert (= start!95370 b!1077024))

(declare-fun m!996153 () Bool)

(assert (=> b!1077020 m!996153))

(declare-fun m!996155 () Bool)

(assert (=> start!95370 m!996155))

(declare-fun m!996157 () Bool)

(assert (=> start!95370 m!996157))

(declare-fun m!996159 () Bool)

(assert (=> start!95370 m!996159))

(declare-fun m!996161 () Bool)

(assert (=> mapNonEmpty!40858 m!996161))

(check-sat (not start!95370) (not b!1077020) (not mapNonEmpty!40858) tp_is_empty!26085)
(check-sat)
(get-model)

(declare-fun d!129757 () Bool)

(assert (=> d!129757 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!95370 d!129757))

(declare-fun d!129759 () Bool)

(assert (=> d!129759 (= (array_inv!25526 _values!874) (bvsge (size!33757 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!95370 d!129759))

(declare-fun d!129761 () Bool)

(assert (=> d!129761 (= (array_inv!25527 _keys!1070) (bvsge (size!33756 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!95370 d!129761))

(declare-fun b!1077052 () Bool)

(declare-fun e!615821 () Bool)

(declare-fun call!45711 () Bool)

(assert (=> b!1077052 (= e!615821 call!45711)))

(declare-fun b!1077053 () Bool)

(declare-fun e!615820 () Bool)

(assert (=> b!1077053 (= e!615820 call!45711)))

(declare-fun b!1077054 () Bool)

(assert (=> b!1077054 (= e!615820 e!615821)))

(declare-fun lt!478484 () (_ BitVec 64))

(assert (=> b!1077054 (= lt!478484 (select (arr!33219 _keys!1070) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!35399 0))(
  ( (Unit!35400) )
))
(declare-fun lt!478485 () Unit!35399)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69082 (_ BitVec 64) (_ BitVec 32)) Unit!35399)

(assert (=> b!1077054 (= lt!478485 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!478484 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!69082 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1077054 (arrayContainsKey!0 _keys!1070 lt!478484 #b00000000000000000000000000000000)))

(declare-fun lt!478483 () Unit!35399)

(assert (=> b!1077054 (= lt!478483 lt!478485)))

(declare-fun res!717800 () Bool)

(declare-datatypes ((SeekEntryResult!9893 0))(
  ( (MissingZero!9893 (index!41942 (_ BitVec 32))) (Found!9893 (index!41943 (_ BitVec 32))) (Intermediate!9893 (undefined!10705 Bool) (index!41944 (_ BitVec 32)) (x!96531 (_ BitVec 32))) (Undefined!9893) (MissingVacant!9893 (index!41945 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!69082 (_ BitVec 32)) SeekEntryResult!9893)

(assert (=> b!1077054 (= res!717800 (= (seekEntryOrOpen!0 (select (arr!33219 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9893 #b00000000000000000000000000000000)))))

(assert (=> b!1077054 (=> (not res!717800) (not e!615821))))

(declare-fun b!1077055 () Bool)

(declare-fun e!615819 () Bool)

(assert (=> b!1077055 (= e!615819 e!615820)))

(declare-fun c!108252 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1077055 (= c!108252 (validKeyInArray!0 (select (arr!33219 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun d!129763 () Bool)

(declare-fun res!717799 () Bool)

(assert (=> d!129763 (=> res!717799 e!615819)))

(assert (=> d!129763 (= res!717799 (bvsge #b00000000000000000000000000000000 (size!33756 _keys!1070)))))

(assert (=> d!129763 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!615819)))

(declare-fun bm!45708 () Bool)

(assert (=> bm!45708 (= call!45711 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(assert (= (and d!129763 (not res!717799)) b!1077055))

(assert (= (and b!1077055 c!108252) b!1077054))

(assert (= (and b!1077055 (not c!108252)) b!1077053))

(assert (= (and b!1077054 res!717800) b!1077052))

(assert (= (or b!1077052 b!1077053) bm!45708))

(declare-fun m!996173 () Bool)

(assert (=> b!1077054 m!996173))

(declare-fun m!996175 () Bool)

(assert (=> b!1077054 m!996175))

(declare-fun m!996177 () Bool)

(assert (=> b!1077054 m!996177))

(assert (=> b!1077054 m!996173))

(declare-fun m!996179 () Bool)

(assert (=> b!1077054 m!996179))

(assert (=> b!1077055 m!996173))

(assert (=> b!1077055 m!996173))

(declare-fun m!996181 () Bool)

(assert (=> b!1077055 m!996181))

(declare-fun m!996183 () Bool)

(assert (=> bm!45708 m!996183))

(assert (=> b!1077020 d!129763))

(declare-fun mapIsEmpty!40864 () Bool)

(declare-fun mapRes!40864 () Bool)

(assert (=> mapIsEmpty!40864 mapRes!40864))

(declare-fun b!1077063 () Bool)

(declare-fun e!615827 () Bool)

(assert (=> b!1077063 (= e!615827 tp_is_empty!26085)))

(declare-fun b!1077062 () Bool)

(declare-fun e!615826 () Bool)

(assert (=> b!1077062 (= e!615826 tp_is_empty!26085)))

(declare-fun mapNonEmpty!40864 () Bool)

(declare-fun tp!78327 () Bool)

(assert (=> mapNonEmpty!40864 (= mapRes!40864 (and tp!78327 e!615826))))

(declare-fun mapKey!40864 () (_ BitVec 32))

(declare-fun mapRest!40864 () (Array (_ BitVec 32) ValueCell!12333))

(declare-fun mapValue!40864 () ValueCell!12333)

(assert (=> mapNonEmpty!40864 (= mapRest!40858 (store mapRest!40864 mapKey!40864 mapValue!40864))))

(declare-fun condMapEmpty!40864 () Bool)

(declare-fun mapDefault!40864 () ValueCell!12333)

(assert (=> mapNonEmpty!40858 (= condMapEmpty!40864 (= mapRest!40858 ((as const (Array (_ BitVec 32) ValueCell!12333)) mapDefault!40864)))))

(assert (=> mapNonEmpty!40858 (= tp!78321 (and e!615827 mapRes!40864))))

(assert (= (and mapNonEmpty!40858 condMapEmpty!40864) mapIsEmpty!40864))

(assert (= (and mapNonEmpty!40858 (not condMapEmpty!40864)) mapNonEmpty!40864))

(assert (= (and mapNonEmpty!40864 ((_ is ValueCellFull!12333) mapValue!40864)) b!1077062))

(assert (= (and mapNonEmpty!40858 ((_ is ValueCellFull!12333) mapDefault!40864)) b!1077063))

(declare-fun m!996185 () Bool)

(assert (=> mapNonEmpty!40864 m!996185))

(check-sat (not bm!45708) tp_is_empty!26085 (not b!1077055) (not mapNonEmpty!40864) (not b!1077054))
(check-sat)
