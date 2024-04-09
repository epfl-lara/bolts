; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95414 () Bool)

(assert start!95414)

(declare-fun b!1077272 () Bool)

(declare-fun e!615986 () Bool)

(declare-datatypes ((List!23331 0))(
  ( (Nil!23328) (Cons!23327 (h!24536 (_ BitVec 64)) (t!32697 List!23331)) )
))
(declare-fun contains!6383 (List!23331 (_ BitVec 64)) Bool)

(assert (=> b!1077272 (= e!615986 (contains!6383 Nil!23328 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1077273 () Bool)

(declare-fun e!615985 () Bool)

(declare-fun tp_is_empty!26103 () Bool)

(assert (=> b!1077273 (= e!615985 tp_is_empty!26103)))

(declare-fun b!1077274 () Bool)

(declare-fun res!717912 () Bool)

(declare-fun e!615987 () Bool)

(assert (=> b!1077274 (=> (not res!717912) (not e!615987))))

(declare-fun mask!1414 () (_ BitVec 32))

(declare-fun extraKeys!811 () (_ BitVec 32))

(declare-datatypes ((array!69118 0))(
  ( (array!69119 (arr!33234 (Array (_ BitVec 32) (_ BitVec 64))) (size!33771 (_ BitVec 32))) )
))
(declare-fun _keys!1070 () array!69118)

(declare-datatypes ((V!39931 0))(
  ( (V!39932 (val!13108 Int)) )
))
(declare-datatypes ((ValueCell!12342 0))(
  ( (ValueCellFull!12342 (v!15728 V!39931)) (EmptyCell!12342) )
))
(declare-datatypes ((array!69120 0))(
  ( (array!69121 (arr!33235 (Array (_ BitVec 32) ValueCell!12342)) (size!33772 (_ BitVec 32))) )
))
(declare-fun _values!874 () array!69120)

(assert (=> b!1077274 (= res!717912 (and (= (size!33772 _values!874) (bvadd #b00000000000000000000000000000001 mask!1414)) (= (size!33771 _keys!1070) (size!33772 _values!874)) (bvsge mask!1414 #b00000000000000000000000000000000) (bvsge extraKeys!811 #b00000000000000000000000000000000) (bvsle extraKeys!811 #b00000000000000000000000000000011)))))

(declare-fun b!1077275 () Bool)

(declare-fun res!717916 () Bool)

(assert (=> b!1077275 (=> (not res!717916) (not e!615987))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!69118 (_ BitVec 32)) Bool)

(assert (=> b!1077275 (= res!717916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414))))

(declare-fun mapIsEmpty!40894 () Bool)

(declare-fun mapRes!40894 () Bool)

(assert (=> mapIsEmpty!40894 mapRes!40894))

(declare-fun res!717914 () Bool)

(assert (=> start!95414 (=> (not res!717914) (not e!615987))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95414 (= res!717914 (validMask!0 mask!1414))))

(assert (=> start!95414 e!615987))

(assert (=> start!95414 true))

(declare-fun e!615989 () Bool)

(declare-fun array_inv!25538 (array!69120) Bool)

(assert (=> start!95414 (and (array_inv!25538 _values!874) e!615989)))

(declare-fun array_inv!25539 (array!69118) Bool)

(assert (=> start!95414 (array_inv!25539 _keys!1070)))

(declare-fun b!1077276 () Bool)

(declare-fun res!717913 () Bool)

(assert (=> b!1077276 (=> (not res!717913) (not e!615987))))

(declare-fun noDuplicate!1596 (List!23331) Bool)

(assert (=> b!1077276 (= res!717913 (noDuplicate!1596 Nil!23328))))

(declare-fun b!1077277 () Bool)

(declare-fun res!717917 () Bool)

(assert (=> b!1077277 (=> (not res!717917) (not e!615987))))

(assert (=> b!1077277 (= res!717917 (and (bvsle #b00000000000000000000000000000000 (size!33771 _keys!1070)) (bvslt (size!33771 _keys!1070) #b01111111111111111111111111111111)))))

(declare-fun b!1077278 () Bool)

(declare-fun e!615984 () Bool)

(assert (=> b!1077278 (= e!615984 tp_is_empty!26103)))

(declare-fun b!1077279 () Bool)

(assert (=> b!1077279 (= e!615987 e!615986)))

(declare-fun res!717915 () Bool)

(assert (=> b!1077279 (=> res!717915 e!615986)))

(assert (=> b!1077279 (= res!717915 (contains!6383 Nil!23328 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!40894 () Bool)

(declare-fun tp!78357 () Bool)

(assert (=> mapNonEmpty!40894 (= mapRes!40894 (and tp!78357 e!615985))))

(declare-fun mapValue!40894 () ValueCell!12342)

(declare-fun mapKey!40894 () (_ BitVec 32))

(declare-fun mapRest!40894 () (Array (_ BitVec 32) ValueCell!12342))

(assert (=> mapNonEmpty!40894 (= (arr!33235 _values!874) (store mapRest!40894 mapKey!40894 mapValue!40894))))

(declare-fun b!1077280 () Bool)

(assert (=> b!1077280 (= e!615989 (and e!615984 mapRes!40894))))

(declare-fun condMapEmpty!40894 () Bool)

(declare-fun mapDefault!40894 () ValueCell!12342)

(assert (=> b!1077280 (= condMapEmpty!40894 (= (arr!33235 _values!874) ((as const (Array (_ BitVec 32) ValueCell!12342)) mapDefault!40894)))))

(assert (= (and start!95414 res!717914) b!1077274))

(assert (= (and b!1077274 res!717912) b!1077275))

(assert (= (and b!1077275 res!717916) b!1077277))

(assert (= (and b!1077277 res!717917) b!1077276))

(assert (= (and b!1077276 res!717913) b!1077279))

(assert (= (and b!1077279 (not res!717915)) b!1077272))

(assert (= (and b!1077280 condMapEmpty!40894) mapIsEmpty!40894))

(assert (= (and b!1077280 (not condMapEmpty!40894)) mapNonEmpty!40894))

(get-info :version)

(assert (= (and mapNonEmpty!40894 ((_ is ValueCellFull!12342) mapValue!40894)) b!1077273))

(assert (= (and b!1077280 ((_ is ValueCellFull!12342) mapDefault!40894)) b!1077278))

(assert (= start!95414 b!1077280))

(declare-fun m!996301 () Bool)

(assert (=> b!1077272 m!996301))

(declare-fun m!996303 () Bool)

(assert (=> mapNonEmpty!40894 m!996303))

(declare-fun m!996305 () Bool)

(assert (=> start!95414 m!996305))

(declare-fun m!996307 () Bool)

(assert (=> start!95414 m!996307))

(declare-fun m!996309 () Bool)

(assert (=> start!95414 m!996309))

(declare-fun m!996311 () Bool)

(assert (=> b!1077276 m!996311))

(declare-fun m!996313 () Bool)

(assert (=> b!1077275 m!996313))

(declare-fun m!996315 () Bool)

(assert (=> b!1077279 m!996315))

(check-sat (not b!1077275) (not mapNonEmpty!40894) (not start!95414) (not b!1077276) (not b!1077272) tp_is_empty!26103 (not b!1077279))
(check-sat)
(get-model)

(declare-fun d!129789 () Bool)

(declare-fun lt!478506 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!540 (List!23331) (InoxSet (_ BitVec 64)))

(assert (=> d!129789 (= lt!478506 (select (content!540 Nil!23328) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!616012 () Bool)

(assert (=> d!129789 (= lt!478506 e!616012)))

(declare-fun res!717940 () Bool)

(assert (=> d!129789 (=> (not res!717940) (not e!616012))))

(assert (=> d!129789 (= res!717940 ((_ is Cons!23327) Nil!23328))))

(assert (=> d!129789 (= (contains!6383 Nil!23328 #b1000000000000000000000000000000000000000000000000000000000000000) lt!478506)))

(declare-fun b!1077312 () Bool)

(declare-fun e!616013 () Bool)

(assert (=> b!1077312 (= e!616012 e!616013)))

(declare-fun res!717941 () Bool)

(assert (=> b!1077312 (=> res!717941 e!616013)))

(assert (=> b!1077312 (= res!717941 (= (h!24536 Nil!23328) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1077313 () Bool)

(assert (=> b!1077313 (= e!616013 (contains!6383 (t!32697 Nil!23328) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!129789 res!717940) b!1077312))

(assert (= (and b!1077312 (not res!717941)) b!1077313))

(declare-fun m!996333 () Bool)

(assert (=> d!129789 m!996333))

(declare-fun m!996335 () Bool)

(assert (=> d!129789 m!996335))

(declare-fun m!996337 () Bool)

(assert (=> b!1077313 m!996337))

(assert (=> b!1077272 d!129789))

(declare-fun d!129791 () Bool)

(declare-fun res!717946 () Bool)

(declare-fun e!616018 () Bool)

(assert (=> d!129791 (=> res!717946 e!616018)))

(assert (=> d!129791 (= res!717946 ((_ is Nil!23328) Nil!23328))))

(assert (=> d!129791 (= (noDuplicate!1596 Nil!23328) e!616018)))

(declare-fun b!1077318 () Bool)

(declare-fun e!616019 () Bool)

(assert (=> b!1077318 (= e!616018 e!616019)))

(declare-fun res!717947 () Bool)

(assert (=> b!1077318 (=> (not res!717947) (not e!616019))))

(assert (=> b!1077318 (= res!717947 (not (contains!6383 (t!32697 Nil!23328) (h!24536 Nil!23328))))))

(declare-fun b!1077319 () Bool)

(assert (=> b!1077319 (= e!616019 (noDuplicate!1596 (t!32697 Nil!23328)))))

(assert (= (and d!129791 (not res!717946)) b!1077318))

(assert (= (and b!1077318 res!717947) b!1077319))

(declare-fun m!996339 () Bool)

(assert (=> b!1077318 m!996339))

(declare-fun m!996341 () Bool)

(assert (=> b!1077319 m!996341))

(assert (=> b!1077276 d!129791))

(declare-fun d!129793 () Bool)

(assert (=> d!129793 (= (validMask!0 mask!1414) (and (or (= mask!1414 #b00000000000000000000000000000111) (= mask!1414 #b00000000000000000000000000001111) (= mask!1414 #b00000000000000000000000000011111) (= mask!1414 #b00000000000000000000000000111111) (= mask!1414 #b00000000000000000000000001111111) (= mask!1414 #b00000000000000000000000011111111) (= mask!1414 #b00000000000000000000000111111111) (= mask!1414 #b00000000000000000000001111111111) (= mask!1414 #b00000000000000000000011111111111) (= mask!1414 #b00000000000000000000111111111111) (= mask!1414 #b00000000000000000001111111111111) (= mask!1414 #b00000000000000000011111111111111) (= mask!1414 #b00000000000000000111111111111111) (= mask!1414 #b00000000000000001111111111111111) (= mask!1414 #b00000000000000011111111111111111) (= mask!1414 #b00000000000000111111111111111111) (= mask!1414 #b00000000000001111111111111111111) (= mask!1414 #b00000000000011111111111111111111) (= mask!1414 #b00000000000111111111111111111111) (= mask!1414 #b00000000001111111111111111111111) (= mask!1414 #b00000000011111111111111111111111) (= mask!1414 #b00000000111111111111111111111111) (= mask!1414 #b00000001111111111111111111111111) (= mask!1414 #b00000011111111111111111111111111) (= mask!1414 #b00000111111111111111111111111111) (= mask!1414 #b00001111111111111111111111111111) (= mask!1414 #b00011111111111111111111111111111) (= mask!1414 #b00111111111111111111111111111111)) (bvsle mask!1414 #b00111111111111111111111111111111)))))

(assert (=> start!95414 d!129793))

(declare-fun d!129795 () Bool)

(assert (=> d!129795 (= (array_inv!25538 _values!874) (bvsge (size!33772 _values!874) #b00000000000000000000000000000000))))

(assert (=> start!95414 d!129795))

(declare-fun d!129797 () Bool)

(assert (=> d!129797 (= (array_inv!25539 _keys!1070) (bvsge (size!33771 _keys!1070) #b00000000000000000000000000000000))))

(assert (=> start!95414 d!129797))

(declare-fun b!1077328 () Bool)

(declare-fun e!616028 () Bool)

(declare-fun e!616027 () Bool)

(assert (=> b!1077328 (= e!616028 e!616027)))

(declare-fun lt!478515 () (_ BitVec 64))

(assert (=> b!1077328 (= lt!478515 (select (arr!33234 _keys!1070) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!35405 0))(
  ( (Unit!35406) )
))
(declare-fun lt!478514 () Unit!35405)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!69118 (_ BitVec 64) (_ BitVec 32)) Unit!35405)

(assert (=> b!1077328 (= lt!478514 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1070 lt!478515 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!69118 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1077328 (arrayContainsKey!0 _keys!1070 lt!478515 #b00000000000000000000000000000000)))

(declare-fun lt!478513 () Unit!35405)

(assert (=> b!1077328 (= lt!478513 lt!478514)))

(declare-fun res!717952 () Bool)

(declare-datatypes ((SeekEntryResult!9896 0))(
  ( (MissingZero!9896 (index!41954 (_ BitVec 32))) (Found!9896 (index!41955 (_ BitVec 32))) (Intermediate!9896 (undefined!10708 Bool) (index!41956 (_ BitVec 32)) (x!96564 (_ BitVec 32))) (Undefined!9896) (MissingVacant!9896 (index!41957 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!69118 (_ BitVec 32)) SeekEntryResult!9896)

(assert (=> b!1077328 (= res!717952 (= (seekEntryOrOpen!0 (select (arr!33234 _keys!1070) #b00000000000000000000000000000000) _keys!1070 mask!1414) (Found!9896 #b00000000000000000000000000000000)))))

(assert (=> b!1077328 (=> (not res!717952) (not e!616027))))

(declare-fun b!1077329 () Bool)

(declare-fun call!45720 () Bool)

(assert (=> b!1077329 (= e!616027 call!45720)))

(declare-fun b!1077330 () Bool)

(declare-fun e!616026 () Bool)

(assert (=> b!1077330 (= e!616026 e!616028)))

(declare-fun c!108261 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1077330 (= c!108261 (validKeyInArray!0 (select (arr!33234 _keys!1070) #b00000000000000000000000000000000)))))

(declare-fun bm!45717 () Bool)

(assert (=> bm!45717 (= call!45720 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1070 mask!1414))))

(declare-fun d!129799 () Bool)

(declare-fun res!717953 () Bool)

(assert (=> d!129799 (=> res!717953 e!616026)))

(assert (=> d!129799 (= res!717953 (bvsge #b00000000000000000000000000000000 (size!33771 _keys!1070)))))

(assert (=> d!129799 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1070 mask!1414) e!616026)))

(declare-fun b!1077331 () Bool)

(assert (=> b!1077331 (= e!616028 call!45720)))

(assert (= (and d!129799 (not res!717953)) b!1077330))

(assert (= (and b!1077330 c!108261) b!1077328))

(assert (= (and b!1077330 (not c!108261)) b!1077331))

(assert (= (and b!1077328 res!717952) b!1077329))

(assert (= (or b!1077329 b!1077331) bm!45717))

(declare-fun m!996343 () Bool)

(assert (=> b!1077328 m!996343))

(declare-fun m!996345 () Bool)

(assert (=> b!1077328 m!996345))

(declare-fun m!996347 () Bool)

(assert (=> b!1077328 m!996347))

(assert (=> b!1077328 m!996343))

(declare-fun m!996349 () Bool)

(assert (=> b!1077328 m!996349))

(assert (=> b!1077330 m!996343))

(assert (=> b!1077330 m!996343))

(declare-fun m!996351 () Bool)

(assert (=> b!1077330 m!996351))

(declare-fun m!996353 () Bool)

(assert (=> bm!45717 m!996353))

(assert (=> b!1077275 d!129799))

(declare-fun d!129801 () Bool)

(declare-fun lt!478516 () Bool)

(assert (=> d!129801 (= lt!478516 (select (content!540 Nil!23328) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!616029 () Bool)

(assert (=> d!129801 (= lt!478516 e!616029)))

(declare-fun res!717954 () Bool)

(assert (=> d!129801 (=> (not res!717954) (not e!616029))))

(assert (=> d!129801 (= res!717954 ((_ is Cons!23327) Nil!23328))))

(assert (=> d!129801 (= (contains!6383 Nil!23328 #b0000000000000000000000000000000000000000000000000000000000000000) lt!478516)))

(declare-fun b!1077332 () Bool)

(declare-fun e!616030 () Bool)

(assert (=> b!1077332 (= e!616029 e!616030)))

(declare-fun res!717955 () Bool)

(assert (=> b!1077332 (=> res!717955 e!616030)))

(assert (=> b!1077332 (= res!717955 (= (h!24536 Nil!23328) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1077333 () Bool)

(assert (=> b!1077333 (= e!616030 (contains!6383 (t!32697 Nil!23328) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!129801 res!717954) b!1077332))

(assert (= (and b!1077332 (not res!717955)) b!1077333))

(assert (=> d!129801 m!996333))

(declare-fun m!996355 () Bool)

(assert (=> d!129801 m!996355))

(declare-fun m!996357 () Bool)

(assert (=> b!1077333 m!996357))

(assert (=> b!1077279 d!129801))

(declare-fun mapIsEmpty!40900 () Bool)

(declare-fun mapRes!40900 () Bool)

(assert (=> mapIsEmpty!40900 mapRes!40900))

(declare-fun condMapEmpty!40900 () Bool)

(declare-fun mapDefault!40900 () ValueCell!12342)

(assert (=> mapNonEmpty!40894 (= condMapEmpty!40900 (= mapRest!40894 ((as const (Array (_ BitVec 32) ValueCell!12342)) mapDefault!40900)))))

(declare-fun e!616035 () Bool)

(assert (=> mapNonEmpty!40894 (= tp!78357 (and e!616035 mapRes!40900))))

(declare-fun mapNonEmpty!40900 () Bool)

(declare-fun tp!78363 () Bool)

(declare-fun e!616036 () Bool)

(assert (=> mapNonEmpty!40900 (= mapRes!40900 (and tp!78363 e!616036))))

(declare-fun mapRest!40900 () (Array (_ BitVec 32) ValueCell!12342))

(declare-fun mapKey!40900 () (_ BitVec 32))

(declare-fun mapValue!40900 () ValueCell!12342)

(assert (=> mapNonEmpty!40900 (= mapRest!40894 (store mapRest!40900 mapKey!40900 mapValue!40900))))

(declare-fun b!1077340 () Bool)

(assert (=> b!1077340 (= e!616036 tp_is_empty!26103)))

(declare-fun b!1077341 () Bool)

(assert (=> b!1077341 (= e!616035 tp_is_empty!26103)))

(assert (= (and mapNonEmpty!40894 condMapEmpty!40900) mapIsEmpty!40900))

(assert (= (and mapNonEmpty!40894 (not condMapEmpty!40900)) mapNonEmpty!40900))

(assert (= (and mapNonEmpty!40900 ((_ is ValueCellFull!12342) mapValue!40900)) b!1077340))

(assert (= (and mapNonEmpty!40894 ((_ is ValueCellFull!12342) mapDefault!40900)) b!1077341))

(declare-fun m!996359 () Bool)

(assert (=> mapNonEmpty!40900 m!996359))

(check-sat (not b!1077318) (not b!1077313) (not mapNonEmpty!40900) (not b!1077328) (not b!1077319) tp_is_empty!26103 (not b!1077333) (not d!129801) (not bm!45717) (not b!1077330) (not d!129789))
(check-sat)
