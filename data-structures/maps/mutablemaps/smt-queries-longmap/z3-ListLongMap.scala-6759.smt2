; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!84842 () Bool)

(assert start!84842)

(declare-fun b!991361 () Bool)

(declare-fun e!559137 () Bool)

(declare-fun e!559136 () Bool)

(declare-fun mapRes!37056 () Bool)

(assert (=> b!991361 (= e!559137 (and e!559136 mapRes!37056))))

(declare-fun condMapEmpty!37056 () Bool)

(declare-datatypes ((V!36091 0))(
  ( (V!36092 (val!11716 Int)) )
))
(declare-datatypes ((ValueCell!11184 0))(
  ( (ValueCellFull!11184 (v!14292 V!36091)) (EmptyCell!11184) )
))
(declare-datatypes ((array!62611 0))(
  ( (array!62612 (arr!30150 (Array (_ BitVec 32) ValueCell!11184)) (size!30630 (_ BitVec 32))) )
))
(declare-fun _values!1551 () array!62611)

(declare-fun mapDefault!37056 () ValueCell!11184)

(assert (=> b!991361 (= condMapEmpty!37056 (= (arr!30150 _values!1551) ((as const (Array (_ BitVec 32) ValueCell!11184)) mapDefault!37056)))))

(declare-fun b!991362 () Bool)

(declare-fun tp_is_empty!23331 () Bool)

(assert (=> b!991362 (= e!559136 tp_is_empty!23331)))

(declare-fun b!991363 () Bool)

(declare-fun res!662792 () Bool)

(declare-fun e!559135 () Bool)

(assert (=> b!991363 (=> (not res!662792) (not e!559135))))

(declare-datatypes ((array!62613 0))(
  ( (array!62614 (arr!30151 (Array (_ BitVec 32) (_ BitVec 64))) (size!30631 (_ BitVec 32))) )
))
(declare-fun _keys!1945 () array!62613)

(declare-fun mask!2471 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!62613 (_ BitVec 32)) Bool)

(assert (=> b!991363 (= res!662792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471))))

(declare-fun b!991364 () Bool)

(declare-fun res!662791 () Bool)

(assert (=> b!991364 (=> (not res!662791) (not e!559135))))

(declare-fun extraKeys!1472 () (_ BitVec 32))

(assert (=> b!991364 (= res!662791 (and (= (size!30630 _values!1551) (bvadd #b00000000000000000000000000000001 mask!2471)) (= (size!30631 _keys!1945) (size!30630 _values!1551)) (bvsge mask!2471 #b00000000000000000000000000000000) (bvsge extraKeys!1472 #b00000000000000000000000000000000) (bvsle extraKeys!1472 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!37056 () Bool)

(assert (=> mapIsEmpty!37056 mapRes!37056))

(declare-fun res!662790 () Bool)

(assert (=> start!84842 (=> (not res!662790) (not e!559135))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!84842 (= res!662790 (validMask!0 mask!2471))))

(assert (=> start!84842 e!559135))

(assert (=> start!84842 true))

(declare-fun array_inv!23145 (array!62611) Bool)

(assert (=> start!84842 (and (array_inv!23145 _values!1551) e!559137)))

(declare-fun array_inv!23146 (array!62613) Bool)

(assert (=> start!84842 (array_inv!23146 _keys!1945)))

(declare-fun mapNonEmpty!37056 () Bool)

(declare-fun tp!70128 () Bool)

(declare-fun e!559133 () Bool)

(assert (=> mapNonEmpty!37056 (= mapRes!37056 (and tp!70128 e!559133))))

(declare-fun mapValue!37056 () ValueCell!11184)

(declare-fun mapRest!37056 () (Array (_ BitVec 32) ValueCell!11184))

(declare-fun mapKey!37056 () (_ BitVec 32))

(assert (=> mapNonEmpty!37056 (= (arr!30150 _values!1551) (store mapRest!37056 mapKey!37056 mapValue!37056))))

(declare-fun b!991365 () Bool)

(assert (=> b!991365 (= e!559133 tp_is_empty!23331)))

(declare-fun b!991366 () Bool)

(assert (=> b!991366 (= e!559135 (bvsgt #b00000000000000000000000000000000 (size!30631 _keys!1945)))))

(assert (= (and start!84842 res!662790) b!991364))

(assert (= (and b!991364 res!662791) b!991363))

(assert (= (and b!991363 res!662792) b!991366))

(assert (= (and b!991361 condMapEmpty!37056) mapIsEmpty!37056))

(assert (= (and b!991361 (not condMapEmpty!37056)) mapNonEmpty!37056))

(get-info :version)

(assert (= (and mapNonEmpty!37056 ((_ is ValueCellFull!11184) mapValue!37056)) b!991365))

(assert (= (and b!991361 ((_ is ValueCellFull!11184) mapDefault!37056)) b!991362))

(assert (= start!84842 b!991361))

(declare-fun m!919389 () Bool)

(assert (=> b!991363 m!919389))

(declare-fun m!919391 () Bool)

(assert (=> start!84842 m!919391))

(declare-fun m!919393 () Bool)

(assert (=> start!84842 m!919393))

(declare-fun m!919395 () Bool)

(assert (=> start!84842 m!919395))

(declare-fun m!919397 () Bool)

(assert (=> mapNonEmpty!37056 m!919397))

(check-sat (not b!991363) (not start!84842) (not mapNonEmpty!37056) tp_is_empty!23331)
(check-sat)
(get-model)

(declare-fun bm!42073 () Bool)

(declare-fun call!42076 () Bool)

(assert (=> bm!42073 (= call!42076 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1945 mask!2471))))

(declare-fun b!991393 () Bool)

(declare-fun e!559159 () Bool)

(declare-fun e!559160 () Bool)

(assert (=> b!991393 (= e!559159 e!559160)))

(declare-fun lt!439936 () (_ BitVec 64))

(assert (=> b!991393 (= lt!439936 (select (arr!30151 _keys!1945) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32850 0))(
  ( (Unit!32851) )
))
(declare-fun lt!439935 () Unit!32850)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!62613 (_ BitVec 64) (_ BitVec 32)) Unit!32850)

(assert (=> b!991393 (= lt!439935 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1945 lt!439936 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!62613 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!991393 (arrayContainsKey!0 _keys!1945 lt!439936 #b00000000000000000000000000000000)))

(declare-fun lt!439937 () Unit!32850)

(assert (=> b!991393 (= lt!439937 lt!439935)))

(declare-fun res!662807 () Bool)

(declare-datatypes ((SeekEntryResult!9202 0))(
  ( (MissingZero!9202 (index!39178 (_ BitVec 32))) (Found!9202 (index!39179 (_ BitVec 32))) (Intermediate!9202 (undefined!10014 Bool) (index!39180 (_ BitVec 32)) (x!86246 (_ BitVec 32))) (Undefined!9202) (MissingVacant!9202 (index!39181 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!62613 (_ BitVec 32)) SeekEntryResult!9202)

(assert (=> b!991393 (= res!662807 (= (seekEntryOrOpen!0 (select (arr!30151 _keys!1945) #b00000000000000000000000000000000) _keys!1945 mask!2471) (Found!9202 #b00000000000000000000000000000000)))))

(assert (=> b!991393 (=> (not res!662807) (not e!559160))))

(declare-fun b!991394 () Bool)

(declare-fun e!559161 () Bool)

(assert (=> b!991394 (= e!559161 e!559159)))

(declare-fun c!100545 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!991394 (= c!100545 (validKeyInArray!0 (select (arr!30151 _keys!1945) #b00000000000000000000000000000000)))))

(declare-fun b!991395 () Bool)

(assert (=> b!991395 (= e!559159 call!42076)))

(declare-fun b!991396 () Bool)

(assert (=> b!991396 (= e!559160 call!42076)))

(declare-fun d!117869 () Bool)

(declare-fun res!662806 () Bool)

(assert (=> d!117869 (=> res!662806 e!559161)))

(assert (=> d!117869 (= res!662806 (bvsge #b00000000000000000000000000000000 (size!30631 _keys!1945)))))

(assert (=> d!117869 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1945 mask!2471) e!559161)))

(assert (= (and d!117869 (not res!662806)) b!991394))

(assert (= (and b!991394 c!100545) b!991393))

(assert (= (and b!991394 (not c!100545)) b!991395))

(assert (= (and b!991393 res!662807) b!991396))

(assert (= (or b!991396 b!991395) bm!42073))

(declare-fun m!919409 () Bool)

(assert (=> bm!42073 m!919409))

(declare-fun m!919411 () Bool)

(assert (=> b!991393 m!919411))

(declare-fun m!919413 () Bool)

(assert (=> b!991393 m!919413))

(declare-fun m!919415 () Bool)

(assert (=> b!991393 m!919415))

(assert (=> b!991393 m!919411))

(declare-fun m!919417 () Bool)

(assert (=> b!991393 m!919417))

(assert (=> b!991394 m!919411))

(assert (=> b!991394 m!919411))

(declare-fun m!919419 () Bool)

(assert (=> b!991394 m!919419))

(assert (=> b!991363 d!117869))

(declare-fun d!117871 () Bool)

(assert (=> d!117871 (= (validMask!0 mask!2471) (and (or (= mask!2471 #b00000000000000000000000000000111) (= mask!2471 #b00000000000000000000000000001111) (= mask!2471 #b00000000000000000000000000011111) (= mask!2471 #b00000000000000000000000000111111) (= mask!2471 #b00000000000000000000000001111111) (= mask!2471 #b00000000000000000000000011111111) (= mask!2471 #b00000000000000000000000111111111) (= mask!2471 #b00000000000000000000001111111111) (= mask!2471 #b00000000000000000000011111111111) (= mask!2471 #b00000000000000000000111111111111) (= mask!2471 #b00000000000000000001111111111111) (= mask!2471 #b00000000000000000011111111111111) (= mask!2471 #b00000000000000000111111111111111) (= mask!2471 #b00000000000000001111111111111111) (= mask!2471 #b00000000000000011111111111111111) (= mask!2471 #b00000000000000111111111111111111) (= mask!2471 #b00000000000001111111111111111111) (= mask!2471 #b00000000000011111111111111111111) (= mask!2471 #b00000000000111111111111111111111) (= mask!2471 #b00000000001111111111111111111111) (= mask!2471 #b00000000011111111111111111111111) (= mask!2471 #b00000000111111111111111111111111) (= mask!2471 #b00000001111111111111111111111111) (= mask!2471 #b00000011111111111111111111111111) (= mask!2471 #b00000111111111111111111111111111) (= mask!2471 #b00001111111111111111111111111111) (= mask!2471 #b00011111111111111111111111111111) (= mask!2471 #b00111111111111111111111111111111)) (bvsle mask!2471 #b00111111111111111111111111111111)))))

(assert (=> start!84842 d!117871))

(declare-fun d!117873 () Bool)

(assert (=> d!117873 (= (array_inv!23145 _values!1551) (bvsge (size!30630 _values!1551) #b00000000000000000000000000000000))))

(assert (=> start!84842 d!117873))

(declare-fun d!117875 () Bool)

(assert (=> d!117875 (= (array_inv!23146 _keys!1945) (bvsge (size!30631 _keys!1945) #b00000000000000000000000000000000))))

(assert (=> start!84842 d!117875))

(declare-fun mapIsEmpty!37062 () Bool)

(declare-fun mapRes!37062 () Bool)

(assert (=> mapIsEmpty!37062 mapRes!37062))

(declare-fun b!991404 () Bool)

(declare-fun e!559166 () Bool)

(assert (=> b!991404 (= e!559166 tp_is_empty!23331)))

(declare-fun b!991403 () Bool)

(declare-fun e!559167 () Bool)

(assert (=> b!991403 (= e!559167 tp_is_empty!23331)))

(declare-fun mapNonEmpty!37062 () Bool)

(declare-fun tp!70134 () Bool)

(assert (=> mapNonEmpty!37062 (= mapRes!37062 (and tp!70134 e!559167))))

(declare-fun mapRest!37062 () (Array (_ BitVec 32) ValueCell!11184))

(declare-fun mapValue!37062 () ValueCell!11184)

(declare-fun mapKey!37062 () (_ BitVec 32))

(assert (=> mapNonEmpty!37062 (= mapRest!37056 (store mapRest!37062 mapKey!37062 mapValue!37062))))

(declare-fun condMapEmpty!37062 () Bool)

(declare-fun mapDefault!37062 () ValueCell!11184)

(assert (=> mapNonEmpty!37056 (= condMapEmpty!37062 (= mapRest!37056 ((as const (Array (_ BitVec 32) ValueCell!11184)) mapDefault!37062)))))

(assert (=> mapNonEmpty!37056 (= tp!70128 (and e!559166 mapRes!37062))))

(assert (= (and mapNonEmpty!37056 condMapEmpty!37062) mapIsEmpty!37062))

(assert (= (and mapNonEmpty!37056 (not condMapEmpty!37062)) mapNonEmpty!37062))

(assert (= (and mapNonEmpty!37062 ((_ is ValueCellFull!11184) mapValue!37062)) b!991403))

(assert (= (and mapNonEmpty!37056 ((_ is ValueCellFull!11184) mapDefault!37062)) b!991404))

(declare-fun m!919421 () Bool)

(assert (=> mapNonEmpty!37062 m!919421))

(check-sat tp_is_empty!23331 (not b!991393) (not b!991394) (not mapNonEmpty!37062) (not bm!42073))
(check-sat)
