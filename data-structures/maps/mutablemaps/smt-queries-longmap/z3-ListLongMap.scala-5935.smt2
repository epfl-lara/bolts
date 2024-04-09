; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77426 () Bool)

(assert start!77426)

(declare-fun b!902168 () Bool)

(declare-fun e!505272 () Bool)

(declare-datatypes ((array!52932 0))(
  ( (array!52933 (arr!25425 (Array (_ BitVec 32) (_ BitVec 64))) (size!25885 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!52932)

(assert (=> b!902168 (= e!505272 (and (bvsle #b00000000000000000000000000000000 (size!25885 _keys!1386)) (bvsge (size!25885 _keys!1386) #b01111111111111111111111111111111)))))

(declare-fun b!902169 () Bool)

(declare-fun e!505269 () Bool)

(declare-fun tp_is_empty!18441 () Bool)

(assert (=> b!902169 (= e!505269 tp_is_empty!18441)))

(declare-fun b!902170 () Bool)

(declare-fun res!608953 () Bool)

(assert (=> b!902170 (=> (not res!608953) (not e!505272))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52932 (_ BitVec 32)) Bool)

(assert (=> b!902170 (= res!608953 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun mapIsEmpty!29362 () Bool)

(declare-fun mapRes!29362 () Bool)

(assert (=> mapIsEmpty!29362 mapRes!29362))

(declare-fun b!902171 () Bool)

(declare-fun res!608951 () Bool)

(assert (=> b!902171 (=> (not res!608951) (not e!505272))))

(declare-datatypes ((V!29553 0))(
  ( (V!29554 (val!9271 Int)) )
))
(declare-datatypes ((ValueCell!8739 0))(
  ( (ValueCellFull!8739 (v!11775 V!29553)) (EmptyCell!8739) )
))
(declare-datatypes ((array!52934 0))(
  ( (array!52935 (arr!25426 (Array (_ BitVec 32) ValueCell!8739)) (size!25886 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!52934)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!902171 (= res!608951 (and (= (size!25886 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25885 _keys!1386) (size!25886 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!902172 () Bool)

(declare-fun e!505270 () Bool)

(declare-fun e!505271 () Bool)

(assert (=> b!902172 (= e!505270 (and e!505271 mapRes!29362))))

(declare-fun condMapEmpty!29362 () Bool)

(declare-fun mapDefault!29362 () ValueCell!8739)

(assert (=> b!902172 (= condMapEmpty!29362 (= (arr!25426 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8739)) mapDefault!29362)))))

(declare-fun res!608952 () Bool)

(assert (=> start!77426 (=> (not res!608952) (not e!505272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77426 (= res!608952 (validMask!0 mask!1756))))

(assert (=> start!77426 e!505272))

(assert (=> start!77426 true))

(declare-fun array_inv!19912 (array!52934) Bool)

(assert (=> start!77426 (and (array_inv!19912 _values!1152) e!505270)))

(declare-fun array_inv!19913 (array!52932) Bool)

(assert (=> start!77426 (array_inv!19913 _keys!1386)))

(declare-fun b!902173 () Bool)

(assert (=> b!902173 (= e!505271 tp_is_empty!18441)))

(declare-fun mapNonEmpty!29362 () Bool)

(declare-fun tp!56422 () Bool)

(assert (=> mapNonEmpty!29362 (= mapRes!29362 (and tp!56422 e!505269))))

(declare-fun mapRest!29362 () (Array (_ BitVec 32) ValueCell!8739))

(declare-fun mapValue!29362 () ValueCell!8739)

(declare-fun mapKey!29362 () (_ BitVec 32))

(assert (=> mapNonEmpty!29362 (= (arr!25426 _values!1152) (store mapRest!29362 mapKey!29362 mapValue!29362))))

(assert (= (and start!77426 res!608952) b!902171))

(assert (= (and b!902171 res!608951) b!902170))

(assert (= (and b!902170 res!608953) b!902168))

(assert (= (and b!902172 condMapEmpty!29362) mapIsEmpty!29362))

(assert (= (and b!902172 (not condMapEmpty!29362)) mapNonEmpty!29362))

(get-info :version)

(assert (= (and mapNonEmpty!29362 ((_ is ValueCellFull!8739) mapValue!29362)) b!902169))

(assert (= (and b!902172 ((_ is ValueCellFull!8739) mapDefault!29362)) b!902173))

(assert (= start!77426 b!902172))

(declare-fun m!838323 () Bool)

(assert (=> b!902170 m!838323))

(declare-fun m!838325 () Bool)

(assert (=> start!77426 m!838325))

(declare-fun m!838327 () Bool)

(assert (=> start!77426 m!838327))

(declare-fun m!838329 () Bool)

(assert (=> start!77426 m!838329))

(declare-fun m!838331 () Bool)

(assert (=> mapNonEmpty!29362 m!838331))

(check-sat (not start!77426) (not b!902170) (not mapNonEmpty!29362) tp_is_empty!18441)
(check-sat)
(get-model)

(declare-fun d!111861 () Bool)

(assert (=> d!111861 (= (validMask!0 mask!1756) (and (or (= mask!1756 #b00000000000000000000000000000111) (= mask!1756 #b00000000000000000000000000001111) (= mask!1756 #b00000000000000000000000000011111) (= mask!1756 #b00000000000000000000000000111111) (= mask!1756 #b00000000000000000000000001111111) (= mask!1756 #b00000000000000000000000011111111) (= mask!1756 #b00000000000000000000000111111111) (= mask!1756 #b00000000000000000000001111111111) (= mask!1756 #b00000000000000000000011111111111) (= mask!1756 #b00000000000000000000111111111111) (= mask!1756 #b00000000000000000001111111111111) (= mask!1756 #b00000000000000000011111111111111) (= mask!1756 #b00000000000000000111111111111111) (= mask!1756 #b00000000000000001111111111111111) (= mask!1756 #b00000000000000011111111111111111) (= mask!1756 #b00000000000000111111111111111111) (= mask!1756 #b00000000000001111111111111111111) (= mask!1756 #b00000000000011111111111111111111) (= mask!1756 #b00000000000111111111111111111111) (= mask!1756 #b00000000001111111111111111111111) (= mask!1756 #b00000000011111111111111111111111) (= mask!1756 #b00000000111111111111111111111111) (= mask!1756 #b00000001111111111111111111111111) (= mask!1756 #b00000011111111111111111111111111) (= mask!1756 #b00000111111111111111111111111111) (= mask!1756 #b00001111111111111111111111111111) (= mask!1756 #b00011111111111111111111111111111) (= mask!1756 #b00111111111111111111111111111111)) (bvsle mask!1756 #b00111111111111111111111111111111)))))

(assert (=> start!77426 d!111861))

(declare-fun d!111863 () Bool)

(assert (=> d!111863 (= (array_inv!19912 _values!1152) (bvsge (size!25886 _values!1152) #b00000000000000000000000000000000))))

(assert (=> start!77426 d!111863))

(declare-fun d!111865 () Bool)

(assert (=> d!111865 (= (array_inv!19913 _keys!1386) (bvsge (size!25885 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> start!77426 d!111865))

(declare-fun b!902200 () Bool)

(declare-fun e!505296 () Bool)

(declare-fun e!505294 () Bool)

(assert (=> b!902200 (= e!505296 e!505294)))

(declare-fun lt!407800 () (_ BitVec 64))

(assert (=> b!902200 (= lt!407800 (select (arr!25425 _keys!1386) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30605 0))(
  ( (Unit!30606) )
))
(declare-fun lt!407798 () Unit!30605)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52932 (_ BitVec 64) (_ BitVec 32)) Unit!30605)

(assert (=> b!902200 (= lt!407798 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1386 lt!407800 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!52932 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!902200 (arrayContainsKey!0 _keys!1386 lt!407800 #b00000000000000000000000000000000)))

(declare-fun lt!407799 () Unit!30605)

(assert (=> b!902200 (= lt!407799 lt!407798)))

(declare-fun res!608968 () Bool)

(declare-datatypes ((SeekEntryResult!8946 0))(
  ( (MissingZero!8946 (index!38154 (_ BitVec 32))) (Found!8946 (index!38155 (_ BitVec 32))) (Intermediate!8946 (undefined!9758 Bool) (index!38156 (_ BitVec 32)) (x!76890 (_ BitVec 32))) (Undefined!8946) (MissingVacant!8946 (index!38157 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!52932 (_ BitVec 32)) SeekEntryResult!8946)

(assert (=> b!902200 (= res!608968 (= (seekEntryOrOpen!0 (select (arr!25425 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756) (Found!8946 #b00000000000000000000000000000000)))))

(assert (=> b!902200 (=> (not res!608968) (not e!505294))))

(declare-fun bm!40237 () Bool)

(declare-fun call!40240 () Bool)

(assert (=> bm!40237 (= call!40240 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1386 mask!1756))))

(declare-fun b!902201 () Bool)

(assert (=> b!902201 (= e!505296 call!40240)))

(declare-fun d!111867 () Bool)

(declare-fun res!608967 () Bool)

(declare-fun e!505295 () Bool)

(assert (=> d!111867 (=> res!608967 e!505295)))

(assert (=> d!111867 (= res!608967 (bvsge #b00000000000000000000000000000000 (size!25885 _keys!1386)))))

(assert (=> d!111867 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756) e!505295)))

(declare-fun b!902202 () Bool)

(assert (=> b!902202 (= e!505294 call!40240)))

(declare-fun b!902203 () Bool)

(assert (=> b!902203 (= e!505295 e!505296)))

(declare-fun c!95554 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!902203 (= c!95554 (validKeyInArray!0 (select (arr!25425 _keys!1386) #b00000000000000000000000000000000)))))

(assert (= (and d!111867 (not res!608967)) b!902203))

(assert (= (and b!902203 c!95554) b!902200))

(assert (= (and b!902203 (not c!95554)) b!902201))

(assert (= (and b!902200 res!608968) b!902202))

(assert (= (or b!902202 b!902201) bm!40237))

(declare-fun m!838343 () Bool)

(assert (=> b!902200 m!838343))

(declare-fun m!838345 () Bool)

(assert (=> b!902200 m!838345))

(declare-fun m!838347 () Bool)

(assert (=> b!902200 m!838347))

(assert (=> b!902200 m!838343))

(declare-fun m!838349 () Bool)

(assert (=> b!902200 m!838349))

(declare-fun m!838351 () Bool)

(assert (=> bm!40237 m!838351))

(assert (=> b!902203 m!838343))

(assert (=> b!902203 m!838343))

(declare-fun m!838353 () Bool)

(assert (=> b!902203 m!838353))

(assert (=> b!902170 d!111867))

(declare-fun b!902211 () Bool)

(declare-fun e!505302 () Bool)

(assert (=> b!902211 (= e!505302 tp_is_empty!18441)))

(declare-fun mapIsEmpty!29368 () Bool)

(declare-fun mapRes!29368 () Bool)

(assert (=> mapIsEmpty!29368 mapRes!29368))

(declare-fun condMapEmpty!29368 () Bool)

(declare-fun mapDefault!29368 () ValueCell!8739)

(assert (=> mapNonEmpty!29362 (= condMapEmpty!29368 (= mapRest!29362 ((as const (Array (_ BitVec 32) ValueCell!8739)) mapDefault!29368)))))

(assert (=> mapNonEmpty!29362 (= tp!56422 (and e!505302 mapRes!29368))))

(declare-fun mapNonEmpty!29368 () Bool)

(declare-fun tp!56428 () Bool)

(declare-fun e!505301 () Bool)

(assert (=> mapNonEmpty!29368 (= mapRes!29368 (and tp!56428 e!505301))))

(declare-fun mapRest!29368 () (Array (_ BitVec 32) ValueCell!8739))

(declare-fun mapValue!29368 () ValueCell!8739)

(declare-fun mapKey!29368 () (_ BitVec 32))

(assert (=> mapNonEmpty!29368 (= mapRest!29362 (store mapRest!29368 mapKey!29368 mapValue!29368))))

(declare-fun b!902210 () Bool)

(assert (=> b!902210 (= e!505301 tp_is_empty!18441)))

(assert (= (and mapNonEmpty!29362 condMapEmpty!29368) mapIsEmpty!29368))

(assert (= (and mapNonEmpty!29362 (not condMapEmpty!29368)) mapNonEmpty!29368))

(assert (= (and mapNonEmpty!29368 ((_ is ValueCellFull!8739) mapValue!29368)) b!902210))

(assert (= (and mapNonEmpty!29362 ((_ is ValueCellFull!8739) mapDefault!29368)) b!902211))

(declare-fun m!838355 () Bool)

(assert (=> mapNonEmpty!29368 m!838355))

(check-sat (not b!902200) tp_is_empty!18441 (not mapNonEmpty!29368) (not bm!40237) (not b!902203))
(check-sat)
