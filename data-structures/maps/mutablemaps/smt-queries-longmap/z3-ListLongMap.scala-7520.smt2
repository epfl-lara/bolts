; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95398 () Bool)

(assert start!95398)

(declare-fun b!1077173 () Bool)

(declare-fun e!615915 () Bool)

(declare-datatypes ((List!23328 0))(
  ( (Nil!23325) (Cons!23324 (h!24533 (_ BitVec 64)) (t!32694 List!23328)) )
))
(declare-fun noDuplicate!1593 (List!23328) Bool)

(assert (=> b!1077173 (= e!615915 (not (noDuplicate!1593 Nil!23325)))))

(declare-fun mapIsEmpty!40882 () Bool)

(declare-fun mapRes!40882 () Bool)

(assert (=> mapIsEmpty!40882 mapRes!40882))

(declare-fun b!1077174 () Bool)

(declare-fun e!615914 () Bool)

(declare-fun tp_is_empty!26097 () Bool)

(assert (=> b!1077174 (= e!615914 tp_is_empty!26097)))

(declare-fun b!1077175 () Bool)

(declare-fun e!615916 () Bool)

(assert (=> b!1077175 (= e!615916 (and e!615914 mapRes!40882))))

(declare-fun condMapEmpty!40882 () Bool)

(declare-datatypes ((V!39923 0))(
  ( (V!39924 (val!13105 Int)) )
))
(declare-datatypes ((ValueCell!12339 0))(
  ( (ValueCellFull!12339 (v!15725 V!39923)) (EmptyCell!12339) )
))
(declare-datatypes ((array!69106 0))(
  ( (array!69107 (arr!33229 (Array (_ BitVec 32) ValueCell!12339)) (size!33766 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69106)

(declare-fun mapDefault!40882 () ValueCell!12339)

(assert (=> b!1077175 (= condMapEmpty!40882 (= (arr!33229 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12339)) mapDefault!40882)))))

(declare-fun b!1077176 () Bool)

(declare-fun res!717854 () Bool)

(assert (=> b!1077176 (=> (not res!717854) (not e!615915))))

(declare-datatypes ((array!69108 0))(
  ( (array!69109 (arr!33230 (Array (_ BitVec 32) (_ BitVec 64))) (size!33767 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69108)

(assert (=> b!1077176 (= res!717854 (and (bvsle #b00000000000000000000000000000000 (size!33767 _keys!1070)) (bvslt (size!33767 _keys!1070) #b01111111111111111111111111111111)))))

(declare-fun b!1077177 () Bool)

(declare-fun e!615917 () Bool)

(assert (=> b!1077177 (= e!615917 tp_is_empty!26097)))

(declare-fun res!717855 () Bool)

(assert (=> start!95398 (=> (not res!717855) (not e!615915))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95398 (= res!717855 (validMask!0 mask!1414))))

(assert (=> start!95398 e!615915))

(assert (=> start!95398 true))

(declare-fun array_inv!25534 (array!69106) Bool)

(assert (=> start!95398 (and (array_inv!25534 _values!874) e!615916)))

(declare-fun array_inv!25535 (array!69108) Bool)

(assert (=> start!95398 (array_inv!25535 _keys!1070)))

(declare-fun mapNonEmpty!40882 () Bool)

(declare-fun tp!78345 () Bool)

(assert (=> mapNonEmpty!40882 (= mapRes!40882 (and tp!78345 e!615917))))

(declare-fun mapValue!40882 () ValueCell!12339)

(declare-fun mapKey!40882 () (_ BitVec 32))

(declare-fun mapRest!40882 () (Array (_ BitVec 32) ValueCell!12339))

(assert (=> mapNonEmpty!40882 (= (arr!33229 _values!874) (store mapRest!40882 mapKey!40882 mapValue!40882))))

(declare-fun b!1077178 () Bool)

(declare-fun res!717856 () Bool)

(assert (=> b!1077178 (=> (not res!717856) (not e!615915))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69108 (_ BitVec 32)) Bool)

(assert (=> b!1077178 (= res!717856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun b!1077179 () Bool)

(declare-fun res!717857 () Bool)

(assert (=> b!1077179 (=> (not res!717857) (not e!615915))))

(declare-fun extraKeys!811 () (_ BitVec 32))

(assert (=> b!1077179 (= res!717857 (and (= (size!33766 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33767 _keys!1070) (size!33766 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(assert (= (and start!95398 res!717855) b!1077179))

(assert (= (and b!1077179 res!717857) b!1077178))

(assert (= (and b!1077178 res!717856) b!1077176))

(assert (= (and b!1077176 res!717854) b!1077173))

(assert (= (and b!1077175 condMapEmpty!40882) mapIsEmpty!40882))

(assert (= (and b!1077175 (not condMapEmpty!40882)) mapNonEmpty!40882))

(get-info :version)

(assert (= (and mapNonEmpty!40882 ((_ is ValueCellFull!12339) mapValue!40882)) b!1077177))

(assert (= (and b!1077175 ((_ is ValueCellFull!12339) mapDefault!40882)) b!1077174))

(assert (= start!95398 b!1077175))

(declare-fun m!996243 () Bool)

(assert (=> b!1077173 m!996243))

(declare-fun m!996245 () Bool)

(assert (=> start!95398 m!996245))

(declare-fun m!996247 () Bool)

(assert (=> start!95398 m!996247))

(declare-fun m!996249 () Bool)

(assert (=> start!95398 m!996249))

(declare-fun m!996251 () Bool)

(assert (=> mapNonEmpty!40882 m!996251))

(declare-fun m!996253 () Bool)

(assert (=> b!1077178 m!996253))

(check-sat tp_is_empty!26097 (not start!95398) (not mapNonEmpty!40882) (not b!1077178) (not b!1077173))
(check-sat)
(get-model)

(declare-fun b!1077209 () Bool)

(declare-fun e!615940 () Bool)

(declare-fun call!45717 () Bool)

(assert (=> b!1077209 (= e!615940 call!45717)))

(declare-fun b!1077210 () Bool)

(declare-fun e!615939 () Bool)

(assert (=> b!1077210 (= e!615939 e!615940)))

(declare-fun c!108258 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1077210 (= c!108258 (validKeyInArray!0 (select (arr!33230 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun d!129777 () Bool)

(declare-fun res!717874 () Bool)

(assert (=> d!129777 (=> res!717874 e!615939)))

(assert (=> d!129777 (= res!717874 (bvsge #b00000000000000000000000000000000 (size!33767 _keys!1070)))))

(assert (=> d!129777 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!615939)))

(declare-fun b!1077211 () Bool)

(declare-fun e!615941 () Bool)

(assert (=> b!1077211 (= e!615941 call!45717)))

(declare-fun b!1077212 () Bool)

(assert (=> b!1077212 (= e!615940 e!615941)))

(declare-fun lt!478503 () (_ BitVec 64))

(assert (=> b!1077212 (= lt!478503 (select (arr!33230 _keys!1070) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!35403 0))(
  ( (Unit!35404) )
))
(declare-fun lt!478502 () Unit!35403)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69108 (_ BitVec 64) (_ BitVec 32)) Unit!35403)

(assert (=> b!1077212 (= lt!478502 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!478503 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!69108 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1077212 (arrayContainsKey!0 _keys!1070 lt!478503 #b00000000000000000000000000000000)))

(declare-fun lt!478501 () Unit!35403)

(assert (=> b!1077212 (= lt!478501 lt!478502)))

(declare-fun res!717875 () Bool)

(declare-datatypes ((SeekEntryResult!9895 0))(
  ( (MissingZero!9895 (index!41950 (_ BitVec 32))) (Found!9895 (index!41951 (_ BitVec 32))) (Intermediate!9895 (undefined!10707 Bool) (index!41952 (_ BitVec 32)) (x!96553 (_ BitVec 32))) (Undefined!9895) (MissingVacant!9895 (index!41953 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!69108 (_ BitVec 32)) SeekEntryResult!9895)

(assert (=> b!1077212 (= res!717875 (= (seekEntryOrOpen!0 (select (arr!33230 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9895 #b00000000000000000000000000000000)))))

(assert (=> b!1077212 (=> (not res!717875) (not e!615941))))

(declare-fun bm!45714 () Bool)

(assert (=> bm!45714 (= call!45717 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(assert (= (and d!129777 (not res!717874)) b!1077210))

(assert (= (and b!1077210 c!108258) b!1077212))

(assert (= (and b!1077210 (not c!108258)) b!1077209))

(assert (= (and b!1077212 res!717875) b!1077211))

(assert (= (or b!1077211 b!1077209) bm!45714))

(declare-fun m!996267 () Bool)

(assert (=> b!1077210 m!996267))

(assert (=> b!1077210 m!996267))

(declare-fun m!996269 () Bool)

(assert (=> b!1077210 m!996269))

(assert (=> b!1077212 m!996267))

(declare-fun m!996271 () Bool)

(assert (=> b!1077212 m!996271))

(declare-fun m!996273 () Bool)

(assert (=> b!1077212 m!996273))

(assert (=> b!1077212 m!996267))

(declare-fun m!996275 () Bool)

(assert (=> b!1077212 m!996275))

(declare-fun m!996277 () Bool)

(assert (=> bm!45714 m!996277))

(assert (=> b!1077178 d!129777))

(declare-fun d!129779 () Bool)

(assert (=> d!129779 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!95398 d!129779))

(declare-fun d!129781 () Bool)

(assert (=> d!129781 (= (array_inv!25534 _values!874) (bvsge (size!33766 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!95398 d!129781))

(declare-fun d!129783 () Bool)

(assert (=> d!129783 (= (array_inv!25535 _keys!1070) (bvsge (size!33767 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!95398 d!129783))

(declare-fun d!129785 () Bool)

(declare-fun res!717880 () Bool)

(declare-fun e!615946 () Bool)

(assert (=> d!129785 (=> res!717880 e!615946)))

(assert (=> d!129785 (= res!717880 ((_ is Nil!23325) Nil!23325))))

(assert (=> d!129785 (= (noDuplicate!1593 Nil!23325) e!615946)))

(declare-fun b!1077217 () Bool)

(declare-fun e!615947 () Bool)

(assert (=> b!1077217 (= e!615946 e!615947)))

(declare-fun res!717881 () Bool)

(assert (=> b!1077217 (=> (not res!717881) (not e!615947))))

(declare-fun contains!6381 (List!23328 (_ BitVec 64)) Bool)

(assert (=> b!1077217 (= res!717881 (not (contains!6381 (t!32694 Nil!23325) (h!24533 Nil!23325))))))

(declare-fun b!1077218 () Bool)

(assert (=> b!1077218 (= e!615947 (noDuplicate!1593 (t!32694 Nil!23325)))))

(assert (= (and d!129785 (not res!717880)) b!1077217))

(assert (= (and b!1077217 res!717881) b!1077218))

(declare-fun m!996279 () Bool)

(assert (=> b!1077217 m!996279))

(declare-fun m!996281 () Bool)

(assert (=> b!1077218 m!996281))

(assert (=> b!1077173 d!129785))

(declare-fun b!1077225 () Bool)

(declare-fun e!615952 () Bool)

(assert (=> b!1077225 (= e!615952 tp_is_empty!26097)))

(declare-fun mapIsEmpty!40888 () Bool)

(declare-fun mapRes!40888 () Bool)

(assert (=> mapIsEmpty!40888 mapRes!40888))

(declare-fun mapNonEmpty!40888 () Bool)

(declare-fun tp!78351 () Bool)

(assert (=> mapNonEmpty!40888 (= mapRes!40888 (and tp!78351 e!615952))))

(declare-fun mapValue!40888 () ValueCell!12339)

(declare-fun mapRest!40888 () (Array (_ BitVec 32) ValueCell!12339))

(declare-fun mapKey!40888 () (_ BitVec 32))

(assert (=> mapNonEmpty!40888 (= mapRest!40882 (store mapRest!40888 mapKey!40888 mapValue!40888))))

(declare-fun condMapEmpty!40888 () Bool)

(declare-fun mapDefault!40888 () ValueCell!12339)

(assert (=> mapNonEmpty!40882 (= condMapEmpty!40888 (= mapRest!40882 ((as const (Array (_ BitVec 32) ValueCell!12339)) mapDefault!40888)))))

(declare-fun e!615953 () Bool)

(assert (=> mapNonEmpty!40882 (= tp!78345 (and e!615953 mapRes!40888))))

(declare-fun b!1077226 () Bool)

(assert (=> b!1077226 (= e!615953 tp_is_empty!26097)))

(assert (= (and mapNonEmpty!40882 condMapEmpty!40888) mapIsEmpty!40888))

(assert (= (and mapNonEmpty!40882 (not condMapEmpty!40888)) mapNonEmpty!40888))

(assert (= (and mapNonEmpty!40888 ((_ is ValueCellFull!12339) mapValue!40888)) b!1077225))

(assert (= (and mapNonEmpty!40882 ((_ is ValueCellFull!12339) mapDefault!40888)) b!1077226))

(declare-fun m!996283 () Bool)

(assert (=> mapNonEmpty!40888 m!996283))

(check-sat tp_is_empty!26097 (not b!1077218) (not bm!45714) (not b!1077210) (not mapNonEmpty!40888) (not b!1077212) (not b!1077217))
(check-sat)
