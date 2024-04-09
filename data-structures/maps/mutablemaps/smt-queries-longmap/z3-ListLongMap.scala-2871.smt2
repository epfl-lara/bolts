; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41344 () Bool)

(assert start!41344)

(declare-fun mapNonEmpty!20365 () Bool)

(declare-fun mapRes!20365 () Bool)

(declare-fun tp!39184 () Bool)

(declare-fun e!269512 () Bool)

(assert (=> mapNonEmpty!20365 (= mapRes!20365 (and tp!39184 e!269512))))

(declare-datatypes ((V!17725 0))(
  ( (V!17726 (val!6277 Int)) )
))
(declare-datatypes ((ValueCell!5889 0))(
  ( (ValueCellFull!5889 (v!8559 V!17725)) (EmptyCell!5889) )
))
(declare-fun mapRest!20365 () (Array (_ BitVec 32) ValueCell!5889))

(declare-fun mapKey!20365 () (_ BitVec 32))

(declare-datatypes ((array!28697 0))(
  ( (array!28698 (arr!13780 (Array (_ BitVec 32) ValueCell!5889)) (size!14132 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28697)

(declare-fun mapValue!20365 () ValueCell!5889)

(assert (=> mapNonEmpty!20365 (= (arr!13780 _values!833) (store mapRest!20365 mapKey!20365 mapValue!20365))))

(declare-fun b!461962 () Bool)

(declare-fun res!276375 () Bool)

(declare-fun e!269509 () Bool)

(assert (=> b!461962 (=> (not res!276375) (not e!269509))))

(declare-datatypes ((array!28699 0))(
  ( (array!28700 (arr!13781 (Array (_ BitVec 32) (_ BitVec 64))) (size!14133 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28699)

(assert (=> b!461962 (= res!276375 (and (bvsle #b00000000000000000000000000000000 (size!14133 _keys!1025)) (bvslt (size!14133 _keys!1025) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!20365 () Bool)

(assert (=> mapIsEmpty!20365 mapRes!20365))

(declare-fun res!276374 () Bool)

(assert (=> start!41344 (=> (not res!276374) (not e!269509))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41344 (= res!276374 (validMask!0 mask!1365))))

(assert (=> start!41344 e!269509))

(assert (=> start!41344 true))

(declare-fun array_inv!9948 (array!28699) Bool)

(assert (=> start!41344 (array_inv!9948 _keys!1025)))

(declare-fun e!269511 () Bool)

(declare-fun array_inv!9949 (array!28697) Bool)

(assert (=> start!41344 (and (array_inv!9949 _values!833) e!269511)))

(declare-fun b!461963 () Bool)

(declare-fun e!269513 () Bool)

(declare-fun tp_is_empty!12465 () Bool)

(assert (=> b!461963 (= e!269513 tp_is_empty!12465)))

(declare-fun b!461964 () Bool)

(assert (=> b!461964 (= e!269512 tp_is_empty!12465)))

(declare-fun b!461965 () Bool)

(declare-fun res!276371 () Bool)

(assert (=> b!461965 (=> (not res!276371) (not e!269509))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!461965 (= res!276371 (and (= (size!14132 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14133 _keys!1025) (size!14132 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!461966 () Bool)

(declare-fun res!276373 () Bool)

(assert (=> b!461966 (=> (not res!276373) (not e!269509))))

(declare-datatypes ((List!8338 0))(
  ( (Nil!8335) (Cons!8334 (h!9190 (_ BitVec 64)) (t!14290 List!8338)) )
))
(declare-fun noDuplicate!203 (List!8338) Bool)

(assert (=> b!461966 (= res!276373 (noDuplicate!203 Nil!8335))))

(declare-fun b!461967 () Bool)

(assert (=> b!461967 (= e!269511 (and e!269513 mapRes!20365))))

(declare-fun condMapEmpty!20365 () Bool)

(declare-fun mapDefault!20365 () ValueCell!5889)

(assert (=> b!461967 (= condMapEmpty!20365 (= (arr!13780 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5889)) mapDefault!20365)))))

(declare-fun b!461968 () Bool)

(declare-fun e!269508 () Bool)

(declare-fun contains!2519 (List!8338 (_ BitVec 64)) Bool)

(assert (=> b!461968 (= e!269508 (contains!2519 Nil!8335 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!461969 () Bool)

(assert (=> b!461969 (= e!269509 e!269508)))

(declare-fun res!276370 () Bool)

(assert (=> b!461969 (=> res!276370 e!269508)))

(assert (=> b!461969 (= res!276370 (contains!2519 Nil!8335 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!461970 () Bool)

(declare-fun res!276372 () Bool)

(assert (=> b!461970 (=> (not res!276372) (not e!269509))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28699 (_ BitVec 32)) Bool)

(assert (=> b!461970 (= res!276372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!41344 res!276374) b!461965))

(assert (= (and b!461965 res!276371) b!461970))

(assert (= (and b!461970 res!276372) b!461962))

(assert (= (and b!461962 res!276375) b!461966))

(assert (= (and b!461966 res!276373) b!461969))

(assert (= (and b!461969 (not res!276370)) b!461968))

(assert (= (and b!461967 condMapEmpty!20365) mapIsEmpty!20365))

(assert (= (and b!461967 (not condMapEmpty!20365)) mapNonEmpty!20365))

(get-info :version)

(assert (= (and mapNonEmpty!20365 ((_ is ValueCellFull!5889) mapValue!20365)) b!461964))

(assert (= (and b!461967 ((_ is ValueCellFull!5889) mapDefault!20365)) b!461963))

(assert (= start!41344 b!461967))

(declare-fun m!445025 () Bool)

(assert (=> b!461969 m!445025))

(declare-fun m!445027 () Bool)

(assert (=> mapNonEmpty!20365 m!445027))

(declare-fun m!445029 () Bool)

(assert (=> b!461966 m!445029))

(declare-fun m!445031 () Bool)

(assert (=> b!461970 m!445031))

(declare-fun m!445033 () Bool)

(assert (=> b!461968 m!445033))

(declare-fun m!445035 () Bool)

(assert (=> start!41344 m!445035))

(declare-fun m!445037 () Bool)

(assert (=> start!41344 m!445037))

(declare-fun m!445039 () Bool)

(assert (=> start!41344 m!445039))

(check-sat (not start!41344) (not b!461968) tp_is_empty!12465 (not b!461966) (not b!461969) (not b!461970) (not mapNonEmpty!20365))
(check-sat)
(get-model)

(declare-fun d!74815 () Bool)

(declare-fun lt!209126 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!205 (List!8338) (InoxSet (_ BitVec 64)))

(assert (=> d!74815 (= lt!209126 (select (content!205 Nil!8335) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!269537 () Bool)

(assert (=> d!74815 (= lt!209126 e!269537)))

(declare-fun res!276399 () Bool)

(assert (=> d!74815 (=> (not res!276399) (not e!269537))))

(assert (=> d!74815 (= res!276399 ((_ is Cons!8334) Nil!8335))))

(assert (=> d!74815 (= (contains!2519 Nil!8335 #b0000000000000000000000000000000000000000000000000000000000000000) lt!209126)))

(declare-fun b!462002 () Bool)

(declare-fun e!269536 () Bool)

(assert (=> b!462002 (= e!269537 e!269536)))

(declare-fun res!276398 () Bool)

(assert (=> b!462002 (=> res!276398 e!269536)))

(assert (=> b!462002 (= res!276398 (= (h!9190 Nil!8335) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!462003 () Bool)

(assert (=> b!462003 (= e!269536 (contains!2519 (t!14290 Nil!8335) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!74815 res!276399) b!462002))

(assert (= (and b!462002 (not res!276398)) b!462003))

(declare-fun m!445057 () Bool)

(assert (=> d!74815 m!445057))

(declare-fun m!445059 () Bool)

(assert (=> d!74815 m!445059))

(declare-fun m!445061 () Bool)

(assert (=> b!462003 m!445061))

(assert (=> b!461969 d!74815))

(declare-fun bm!30197 () Bool)

(declare-fun call!30200 () Bool)

(assert (=> bm!30197 (= call!30200 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun b!462012 () Bool)

(declare-fun e!269545 () Bool)

(assert (=> b!462012 (= e!269545 call!30200)))

(declare-fun b!462013 () Bool)

(declare-fun e!269546 () Bool)

(assert (=> b!462013 (= e!269546 call!30200)))

(declare-fun b!462014 () Bool)

(declare-fun e!269544 () Bool)

(assert (=> b!462014 (= e!269544 e!269545)))

(declare-fun c!56553 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!462014 (= c!56553 (validKeyInArray!0 (select (arr!13781 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun d!74817 () Bool)

(declare-fun res!276405 () Bool)

(assert (=> d!74817 (=> res!276405 e!269544)))

(assert (=> d!74817 (= res!276405 (bvsge #b00000000000000000000000000000000 (size!14133 _keys!1025)))))

(assert (=> d!74817 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!269544)))

(declare-fun b!462015 () Bool)

(assert (=> b!462015 (= e!269545 e!269546)))

(declare-fun lt!209135 () (_ BitVec 64))

(assert (=> b!462015 (= lt!209135 (select (arr!13781 _keys!1025) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!13391 0))(
  ( (Unit!13392) )
))
(declare-fun lt!209134 () Unit!13391)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!28699 (_ BitVec 64) (_ BitVec 32)) Unit!13391)

(assert (=> b!462015 (= lt!209134 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!209135 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!28699 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!462015 (arrayContainsKey!0 _keys!1025 lt!209135 #b00000000000000000000000000000000)))

(declare-fun lt!209133 () Unit!13391)

(assert (=> b!462015 (= lt!209133 lt!209134)))

(declare-fun res!276404 () Bool)

(declare-datatypes ((SeekEntryResult!3529 0))(
  ( (MissingZero!3529 (index!16295 (_ BitVec 32))) (Found!3529 (index!16296 (_ BitVec 32))) (Intermediate!3529 (undefined!4341 Bool) (index!16297 (_ BitVec 32)) (x!43068 (_ BitVec 32))) (Undefined!3529) (MissingVacant!3529 (index!16298 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!28699 (_ BitVec 32)) SeekEntryResult!3529)

(assert (=> b!462015 (= res!276404 (= (seekEntryOrOpen!0 (select (arr!13781 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3529 #b00000000000000000000000000000000)))))

(assert (=> b!462015 (=> (not res!276404) (not e!269546))))

(assert (= (and d!74817 (not res!276405)) b!462014))

(assert (= (and b!462014 c!56553) b!462015))

(assert (= (and b!462014 (not c!56553)) b!462012))

(assert (= (and b!462015 res!276404) b!462013))

(assert (= (or b!462013 b!462012) bm!30197))

(declare-fun m!445063 () Bool)

(assert (=> bm!30197 m!445063))

(declare-fun m!445065 () Bool)

(assert (=> b!462014 m!445065))

(assert (=> b!462014 m!445065))

(declare-fun m!445067 () Bool)

(assert (=> b!462014 m!445067))

(assert (=> b!462015 m!445065))

(declare-fun m!445069 () Bool)

(assert (=> b!462015 m!445069))

(declare-fun m!445071 () Bool)

(assert (=> b!462015 m!445071))

(assert (=> b!462015 m!445065))

(declare-fun m!445073 () Bool)

(assert (=> b!462015 m!445073))

(assert (=> b!461970 d!74817))

(declare-fun d!74819 () Bool)

(declare-fun res!276410 () Bool)

(declare-fun e!269551 () Bool)

(assert (=> d!74819 (=> res!276410 e!269551)))

(assert (=> d!74819 (= res!276410 ((_ is Nil!8335) Nil!8335))))

(assert (=> d!74819 (= (noDuplicate!203 Nil!8335) e!269551)))

(declare-fun b!462020 () Bool)

(declare-fun e!269552 () Bool)

(assert (=> b!462020 (= e!269551 e!269552)))

(declare-fun res!276411 () Bool)

(assert (=> b!462020 (=> (not res!276411) (not e!269552))))

(assert (=> b!462020 (= res!276411 (not (contains!2519 (t!14290 Nil!8335) (h!9190 Nil!8335))))))

(declare-fun b!462021 () Bool)

(assert (=> b!462021 (= e!269552 (noDuplicate!203 (t!14290 Nil!8335)))))

(assert (= (and d!74819 (not res!276410)) b!462020))

(assert (= (and b!462020 res!276411) b!462021))

(declare-fun m!445075 () Bool)

(assert (=> b!462020 m!445075))

(declare-fun m!445077 () Bool)

(assert (=> b!462021 m!445077))

(assert (=> b!461966 d!74819))

(declare-fun d!74821 () Bool)

(declare-fun lt!209136 () Bool)

(assert (=> d!74821 (= lt!209136 (select (content!205 Nil!8335) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!269554 () Bool)

(assert (=> d!74821 (= lt!209136 e!269554)))

(declare-fun res!276413 () Bool)

(assert (=> d!74821 (=> (not res!276413) (not e!269554))))

(assert (=> d!74821 (= res!276413 ((_ is Cons!8334) Nil!8335))))

(assert (=> d!74821 (= (contains!2519 Nil!8335 #b1000000000000000000000000000000000000000000000000000000000000000) lt!209136)))

(declare-fun b!462022 () Bool)

(declare-fun e!269553 () Bool)

(assert (=> b!462022 (= e!269554 e!269553)))

(declare-fun res!276412 () Bool)

(assert (=> b!462022 (=> res!276412 e!269553)))

(assert (=> b!462022 (= res!276412 (= (h!9190 Nil!8335) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!462023 () Bool)

(assert (=> b!462023 (= e!269553 (contains!2519 (t!14290 Nil!8335) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!74821 res!276413) b!462022))

(assert (= (and b!462022 (not res!276412)) b!462023))

(assert (=> d!74821 m!445057))

(declare-fun m!445079 () Bool)

(assert (=> d!74821 m!445079))

(declare-fun m!445081 () Bool)

(assert (=> b!462023 m!445081))

(assert (=> b!461968 d!74821))

(declare-fun d!74823 () Bool)

(assert (=> d!74823 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!41344 d!74823))

(declare-fun d!74825 () Bool)

(assert (=> d!74825 (= (array_inv!9948 _keys!1025) (bvsge (size!14133 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!41344 d!74825))

(declare-fun d!74827 () Bool)

(assert (=> d!74827 (= (array_inv!9949 _values!833) (bvsge (size!14132 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!41344 d!74827))

(declare-fun mapIsEmpty!20371 () Bool)

(declare-fun mapRes!20371 () Bool)

(assert (=> mapIsEmpty!20371 mapRes!20371))

(declare-fun b!462030 () Bool)

(declare-fun e!269560 () Bool)

(assert (=> b!462030 (= e!269560 tp_is_empty!12465)))

(declare-fun mapNonEmpty!20371 () Bool)

(declare-fun tp!39190 () Bool)

(assert (=> mapNonEmpty!20371 (= mapRes!20371 (and tp!39190 e!269560))))

(declare-fun mapKey!20371 () (_ BitVec 32))

(declare-fun mapValue!20371 () ValueCell!5889)

(declare-fun mapRest!20371 () (Array (_ BitVec 32) ValueCell!5889))

(assert (=> mapNonEmpty!20371 (= mapRest!20365 (store mapRest!20371 mapKey!20371 mapValue!20371))))

(declare-fun condMapEmpty!20371 () Bool)

(declare-fun mapDefault!20371 () ValueCell!5889)

(assert (=> mapNonEmpty!20365 (= condMapEmpty!20371 (= mapRest!20365 ((as const (Array (_ BitVec 32) ValueCell!5889)) mapDefault!20371)))))

(declare-fun e!269559 () Bool)

(assert (=> mapNonEmpty!20365 (= tp!39184 (and e!269559 mapRes!20371))))

(declare-fun b!462031 () Bool)

(assert (=> b!462031 (= e!269559 tp_is_empty!12465)))

(assert (= (and mapNonEmpty!20365 condMapEmpty!20371) mapIsEmpty!20371))

(assert (= (and mapNonEmpty!20365 (not condMapEmpty!20371)) mapNonEmpty!20371))

(assert (= (and mapNonEmpty!20371 ((_ is ValueCellFull!5889) mapValue!20371)) b!462030))

(assert (= (and mapNonEmpty!20365 ((_ is ValueCellFull!5889) mapDefault!20371)) b!462031))

(declare-fun m!445083 () Bool)

(assert (=> mapNonEmpty!20371 m!445083))

(check-sat (not mapNonEmpty!20371) (not b!462014) (not b!462023) (not bm!30197) (not d!74815) (not b!462021) (not b!462015) (not d!74821) (not b!462003) (not b!462020) tp_is_empty!12465)
(check-sat)
