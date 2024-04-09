; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78262 () Bool)

(assert start!78262)

(declare-fun b_free!16725 () Bool)

(declare-fun b_next!16725 () Bool)

(assert (=> start!78262 (= b_free!16725 (not b_next!16725))))

(declare-fun tp!58453 () Bool)

(declare-fun b_and!27319 () Bool)

(assert (=> start!78262 (= tp!58453 b_and!27319)))

(declare-fun b!912983 () Bool)

(declare-fun res!615998 () Bool)

(declare-fun e!512123 () Bool)

(assert (=> b!912983 (=> (not res!615998) (not e!512123))))

(declare-datatypes ((array!54288 0))(
  ( (array!54289 (arr!26094 (Array (_ BitVec 32) (_ BitVec 64))) (size!26554 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!54288)

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54288 (_ BitVec 32)) Bool)

(assert (=> b!912983 (= res!615998 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!912984 () Bool)

(declare-fun res!615999 () Bool)

(assert (=> b!912984 (=> (not res!615999) (not e!512123))))

(declare-fun i!717 () (_ BitVec 32))

(declare-fun k0!1033 () (_ BitVec 64))

(assert (=> b!912984 (= res!615999 (and (= (select (arr!26094 _keys!1386) i!717) k0!1033) (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!912985 () Bool)

(declare-fun res!616002 () Bool)

(assert (=> b!912985 (=> (not res!616002) (not e!512123))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!912985 (= res!616002 (inRange!0 i!717 mask!1756))))

(declare-fun b!912986 () Bool)

(declare-fun e!512125 () Bool)

(declare-fun tp_is_empty!19143 () Bool)

(assert (=> b!912986 (= e!512125 tp_is_empty!19143)))

(declare-fun b!912987 () Bool)

(declare-fun e!512124 () Bool)

(declare-fun e!512122 () Bool)

(declare-fun mapRes!30442 () Bool)

(assert (=> b!912987 (= e!512124 (and e!512122 mapRes!30442))))

(declare-fun condMapEmpty!30442 () Bool)

(declare-datatypes ((V!30489 0))(
  ( (V!30490 (val!9622 Int)) )
))
(declare-datatypes ((ValueCell!9090 0))(
  ( (ValueCellFull!9090 (v!12133 V!30489)) (EmptyCell!9090) )
))
(declare-datatypes ((array!54290 0))(
  ( (array!54291 (arr!26095 (Array (_ BitVec 32) ValueCell!9090)) (size!26555 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!54290)

(declare-fun mapDefault!30442 () ValueCell!9090)

(assert (=> b!912987 (= condMapEmpty!30442 (= (arr!26095 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!9090)) mapDefault!30442)))))

(declare-fun b!912988 () Bool)

(assert (=> b!912988 (= e!512122 tp_is_empty!19143)))

(declare-fun b!912989 () Bool)

(declare-fun res!616001 () Bool)

(assert (=> b!912989 (=> (not res!616001) (not e!512123))))

(declare-fun defaultEntry!1160 () Int)

(declare-fun zeroValue!1094 () V!30489)

(declare-fun extraKeys!1073 () (_ BitVec 32))

(declare-fun minValue!1094 () V!30489)

(declare-datatypes ((tuple2!12598 0))(
  ( (tuple2!12599 (_1!6309 (_ BitVec 64)) (_2!6309 V!30489)) )
))
(declare-datatypes ((List!18437 0))(
  ( (Nil!18434) (Cons!18433 (h!19579 tuple2!12598) (t!26034 List!18437)) )
))
(declare-datatypes ((ListLongMap!11309 0))(
  ( (ListLongMap!11310 (toList!5670 List!18437)) )
))
(declare-fun contains!4681 (ListLongMap!11309 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2900 (array!54288 array!54290 (_ BitVec 32) (_ BitVec 32) V!30489 V!30489 (_ BitVec 32) Int) ListLongMap!11309)

(assert (=> b!912989 (= res!616001 (contains!4681 (getCurrentListMap!2900 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033))))

(declare-fun res!615997 () Bool)

(assert (=> start!78262 (=> (not res!615997) (not e!512123))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78262 (= res!615997 (validMask!0 mask!1756))))

(assert (=> start!78262 e!512123))

(declare-fun array_inv!20370 (array!54290) Bool)

(assert (=> start!78262 (and (array_inv!20370 _values!1152) e!512124)))

(assert (=> start!78262 tp!58453))

(assert (=> start!78262 true))

(assert (=> start!78262 tp_is_empty!19143))

(declare-fun array_inv!20371 (array!54288) Bool)

(assert (=> start!78262 (array_inv!20371 _keys!1386)))

(declare-fun b!912990 () Bool)

(declare-fun res!616003 () Bool)

(assert (=> b!912990 (=> (not res!616003) (not e!512123))))

(declare-datatypes ((List!18438 0))(
  ( (Nil!18435) (Cons!18434 (h!19580 (_ BitVec 64)) (t!26035 List!18438)) )
))
(declare-fun arrayNoDuplicates!0 (array!54288 (_ BitVec 32) List!18438) Bool)

(assert (=> b!912990 (= res!616003 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18435))))

(declare-fun b!912991 () Bool)

(assert (=> b!912991 (= e!512123 (not (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (size!26554 _keys!1386)))))))

(declare-fun arrayContainsKey!0 (array!54288 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!912991 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!30881 0))(
  ( (Unit!30882) )
))
(declare-fun lt!410683 () Unit!30881)

(declare-fun lemmaKeyInListMapIsInArray!286 (array!54288 array!54290 (_ BitVec 32) (_ BitVec 32) V!30489 V!30489 (_ BitVec 64) Int) Unit!30881)

(assert (=> b!912991 (= lt!410683 (lemmaKeyInListMapIsInArray!286 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(declare-fun mapIsEmpty!30442 () Bool)

(assert (=> mapIsEmpty!30442 mapRes!30442))

(declare-fun b!912992 () Bool)

(declare-fun res!616000 () Bool)

(assert (=> b!912992 (=> (not res!616000) (not e!512123))))

(assert (=> b!912992 (= res!616000 (and (= (size!26555 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!26554 _keys!1386) (size!26555 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!30442 () Bool)

(declare-fun tp!58452 () Bool)

(assert (=> mapNonEmpty!30442 (= mapRes!30442 (and tp!58452 e!512125))))

(declare-fun mapKey!30442 () (_ BitVec 32))

(declare-fun mapValue!30442 () ValueCell!9090)

(declare-fun mapRest!30442 () (Array (_ BitVec 32) ValueCell!9090))

(assert (=> mapNonEmpty!30442 (= (arr!26095 _values!1152) (store mapRest!30442 mapKey!30442 mapValue!30442))))

(assert (= (and start!78262 res!615997) b!912992))

(assert (= (and b!912992 res!616000) b!912983))

(assert (= (and b!912983 res!615998) b!912990))

(assert (= (and b!912990 res!616003) b!912989))

(assert (= (and b!912989 res!616001) b!912985))

(assert (= (and b!912985 res!616002) b!912984))

(assert (= (and b!912984 res!615999) b!912991))

(assert (= (and b!912987 condMapEmpty!30442) mapIsEmpty!30442))

(assert (= (and b!912987 (not condMapEmpty!30442)) mapNonEmpty!30442))

(get-info :version)

(assert (= (and mapNonEmpty!30442 ((_ is ValueCellFull!9090) mapValue!30442)) b!912986))

(assert (= (and b!912987 ((_ is ValueCellFull!9090) mapDefault!30442)) b!912988))

(assert (= start!78262 b!912987))

(declare-fun m!847455 () Bool)

(assert (=> start!78262 m!847455))

(declare-fun m!847457 () Bool)

(assert (=> start!78262 m!847457))

(declare-fun m!847459 () Bool)

(assert (=> start!78262 m!847459))

(declare-fun m!847461 () Bool)

(assert (=> mapNonEmpty!30442 m!847461))

(declare-fun m!847463 () Bool)

(assert (=> b!912990 m!847463))

(declare-fun m!847465 () Bool)

(assert (=> b!912991 m!847465))

(declare-fun m!847467 () Bool)

(assert (=> b!912991 m!847467))

(declare-fun m!847469 () Bool)

(assert (=> b!912985 m!847469))

(declare-fun m!847471 () Bool)

(assert (=> b!912989 m!847471))

(assert (=> b!912989 m!847471))

(declare-fun m!847473 () Bool)

(assert (=> b!912989 m!847473))

(declare-fun m!847475 () Bool)

(assert (=> b!912983 m!847475))

(declare-fun m!847477 () Bool)

(assert (=> b!912984 m!847477))

(check-sat (not b_next!16725) tp_is_empty!19143 (not b!912983) (not mapNonEmpty!30442) (not b!912990) (not b!912989) b_and!27319 (not b!912991) (not start!78262) (not b!912985))
(check-sat b_and!27319 (not b_next!16725))
(get-model)

(declare-fun b!913031 () Bool)

(declare-fun e!512148 () Bool)

(declare-fun call!40397 () Bool)

(assert (=> b!913031 (= e!512148 call!40397)))

(declare-fun b!913032 () Bool)

(declare-fun e!512149 () Bool)

(assert (=> b!913032 (= e!512149 e!512148)))

(declare-fun lt!410695 () (_ BitVec 64))

(assert (=> b!913032 (= lt!410695 (select (arr!26094 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410693 () Unit!30881)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!54288 (_ BitVec 64) (_ BitVec 32)) Unit!30881)

(assert (=> b!913032 (= lt!410693 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1386 lt!410695 #b00000000000000000000000000000000))))

(assert (=> b!913032 (arrayContainsKey!0 _keys!1386 lt!410695 #b00000000000000000000000000000000)))

(declare-fun lt!410694 () Unit!30881)

(assert (=> b!913032 (= lt!410694 lt!410693)))

(declare-fun res!616030 () Bool)

(declare-datatypes ((SeekEntryResult!8955 0))(
  ( (MissingZero!8955 (index!38190 (_ BitVec 32))) (Found!8955 (index!38191 (_ BitVec 32))) (Intermediate!8955 (undefined!9767 Bool) (index!38192 (_ BitVec 32)) (x!78099 (_ BitVec 32))) (Undefined!8955) (MissingVacant!8955 (index!38193 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!54288 (_ BitVec 32)) SeekEntryResult!8955)

(assert (=> b!913032 (= res!616030 (= (seekEntryOrOpen!0 (select (arr!26094 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756) (Found!8955 #b00000000000000000000000000000000)))))

(assert (=> b!913032 (=> (not res!616030) (not e!512148))))

(declare-fun b!913033 () Bool)

(assert (=> b!913033 (= e!512149 call!40397)))

(declare-fun d!112237 () Bool)

(declare-fun res!616029 () Bool)

(declare-fun e!512150 () Bool)

(assert (=> d!112237 (=> res!616029 e!512150)))

(assert (=> d!112237 (= res!616029 (bvsge #b00000000000000000000000000000000 (size!26554 _keys!1386)))))

(assert (=> d!112237 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756) e!512150)))

(declare-fun b!913034 () Bool)

(assert (=> b!913034 (= e!512150 e!512149)))

(declare-fun c!95720 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!913034 (= c!95720 (validKeyInArray!0 (select (arr!26094 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun bm!40394 () Bool)

(assert (=> bm!40394 (= call!40397 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1386 mask!1756))))

(assert (= (and d!112237 (not res!616029)) b!913034))

(assert (= (and b!913034 c!95720) b!913032))

(assert (= (and b!913034 (not c!95720)) b!913033))

(assert (= (and b!913032 res!616030) b!913031))

(assert (= (or b!913031 b!913033) bm!40394))

(declare-fun m!847503 () Bool)

(assert (=> b!913032 m!847503))

(declare-fun m!847505 () Bool)

(assert (=> b!913032 m!847505))

(declare-fun m!847507 () Bool)

(assert (=> b!913032 m!847507))

(assert (=> b!913032 m!847503))

(declare-fun m!847509 () Bool)

(assert (=> b!913032 m!847509))

(assert (=> b!913034 m!847503))

(assert (=> b!913034 m!847503))

(declare-fun m!847511 () Bool)

(assert (=> b!913034 m!847511))

(declare-fun m!847513 () Bool)

(assert (=> bm!40394 m!847513))

(assert (=> b!912983 d!112237))

(declare-fun d!112239 () Bool)

(declare-fun res!616035 () Bool)

(declare-fun e!512155 () Bool)

(assert (=> d!112239 (=> res!616035 e!512155)))

(assert (=> d!112239 (= res!616035 (= (select (arr!26094 _keys!1386) #b00000000000000000000000000000000) k0!1033))))

(assert (=> d!112239 (= (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000) e!512155)))

(declare-fun b!913039 () Bool)

(declare-fun e!512156 () Bool)

(assert (=> b!913039 (= e!512155 e!512156)))

(declare-fun res!616036 () Bool)

(assert (=> b!913039 (=> (not res!616036) (not e!512156))))

(assert (=> b!913039 (= res!616036 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!26554 _keys!1386)))))

(declare-fun b!913040 () Bool)

(assert (=> b!913040 (= e!512156 (arrayContainsKey!0 _keys!1386 k0!1033 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!112239 (not res!616035)) b!913039))

(assert (= (and b!913039 res!616036) b!913040))

(assert (=> d!112239 m!847503))

(declare-fun m!847515 () Bool)

(assert (=> b!913040 m!847515))

(assert (=> b!912991 d!112239))

(declare-fun d!112241 () Bool)

(declare-fun e!512159 () Bool)

(assert (=> d!112241 e!512159))

(declare-fun c!95723 () Bool)

(assert (=> d!112241 (= c!95723 (and (not (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1033 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!410698 () Unit!30881)

(declare-fun choose!1538 (array!54288 array!54290 (_ BitVec 32) (_ BitVec 32) V!30489 V!30489 (_ BitVec 64) Int) Unit!30881)

(assert (=> d!112241 (= lt!410698 (choose!1538 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160))))

(assert (=> d!112241 (validMask!0 mask!1756)))

(assert (=> d!112241 (= (lemmaKeyInListMapIsInArray!286 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 k0!1033 defaultEntry!1160) lt!410698)))

(declare-fun b!913045 () Bool)

(assert (=> b!913045 (= e!512159 (arrayContainsKey!0 _keys!1386 k0!1033 #b00000000000000000000000000000000))))

(declare-fun b!913046 () Bool)

(assert (=> b!913046 (= e!512159 (ite (= k0!1033 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!112241 c!95723) b!913045))

(assert (= (and d!112241 (not c!95723)) b!913046))

(declare-fun m!847517 () Bool)

(assert (=> d!112241 m!847517))

(assert (=> d!112241 m!847455))

(assert (=> b!913045 m!847465))

(assert (=> b!912991 d!112241))

(declare-fun d!112243 () Bool)

(assert (=> d!112243 (= (inRange!0 i!717 mask!1756) (and (bvsge i!717 #b00000000000000000000000000000000) (bvslt i!717 (bvadd mask!1756 #b00000000000000000000000000000001))))))

(assert (=> b!912985 d!112243))

(declare-fun b!913057 () Bool)

(declare-fun e!512171 () Bool)

(declare-fun contains!4683 (List!18438 (_ BitVec 64)) Bool)

(assert (=> b!913057 (= e!512171 (contains!4683 Nil!18435 (select (arr!26094 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun d!112245 () Bool)

(declare-fun res!616044 () Bool)

(declare-fun e!512168 () Bool)

(assert (=> d!112245 (=> res!616044 e!512168)))

(assert (=> d!112245 (= res!616044 (bvsge #b00000000000000000000000000000000 (size!26554 _keys!1386)))))

(assert (=> d!112245 (= (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!18435) e!512168)))

(declare-fun b!913058 () Bool)

(declare-fun e!512169 () Bool)

(declare-fun call!40400 () Bool)

(assert (=> b!913058 (= e!512169 call!40400)))

(declare-fun b!913059 () Bool)

(declare-fun e!512170 () Bool)

(assert (=> b!913059 (= e!512168 e!512170)))

(declare-fun res!616043 () Bool)

(assert (=> b!913059 (=> (not res!616043) (not e!512170))))

(assert (=> b!913059 (= res!616043 (not e!512171))))

(declare-fun res!616045 () Bool)

(assert (=> b!913059 (=> (not res!616045) (not e!512171))))

(assert (=> b!913059 (= res!616045 (validKeyInArray!0 (select (arr!26094 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!913060 () Bool)

(assert (=> b!913060 (= e!512170 e!512169)))

(declare-fun c!95726 () Bool)

(assert (=> b!913060 (= c!95726 (validKeyInArray!0 (select (arr!26094 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!913061 () Bool)

(assert (=> b!913061 (= e!512169 call!40400)))

(declare-fun bm!40397 () Bool)

(assert (=> bm!40397 (= call!40400 (arrayNoDuplicates!0 _keys!1386 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!95726 (Cons!18434 (select (arr!26094 _keys!1386) #b00000000000000000000000000000000) Nil!18435) Nil!18435)))))

(assert (= (and d!112245 (not res!616044)) b!913059))

(assert (= (and b!913059 res!616045) b!913057))

(assert (= (and b!913059 res!616043) b!913060))

(assert (= (and b!913060 c!95726) b!913058))

(assert (= (and b!913060 (not c!95726)) b!913061))

(assert (= (or b!913058 b!913061) bm!40397))

(assert (=> b!913057 m!847503))

(assert (=> b!913057 m!847503))

(declare-fun m!847519 () Bool)

(assert (=> b!913057 m!847519))

(assert (=> b!913059 m!847503))

(assert (=> b!913059 m!847503))

(assert (=> b!913059 m!847511))

(assert (=> b!913060 m!847503))

(assert (=> b!913060 m!847503))

(assert (=> b!913060 m!847511))

(assert (=> bm!40397 m!847503))

(declare-fun m!847521 () Bool)

(assert (=> bm!40397 m!847521))

(assert (=> b!912990 d!112245))

(declare-fun d!112247 () Bool)

(declare-fun e!512176 () Bool)

(assert (=> d!112247 e!512176))

(declare-fun res!616048 () Bool)

(assert (=> d!112247 (=> res!616048 e!512176)))

(declare-fun lt!410708 () Bool)

(assert (=> d!112247 (= res!616048 (not lt!410708))))

(declare-fun lt!410707 () Bool)

(assert (=> d!112247 (= lt!410708 lt!410707)))

(declare-fun lt!410709 () Unit!30881)

(declare-fun e!512177 () Unit!30881)

(assert (=> d!112247 (= lt!410709 e!512177)))

(declare-fun c!95729 () Bool)

(assert (=> d!112247 (= c!95729 lt!410707)))

(declare-fun containsKey!442 (List!18437 (_ BitVec 64)) Bool)

(assert (=> d!112247 (= lt!410707 (containsKey!442 (toList!5670 (getCurrentListMap!2900 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(assert (=> d!112247 (= (contains!4681 (getCurrentListMap!2900 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) k0!1033) lt!410708)))

(declare-fun b!913068 () Bool)

(declare-fun lt!410710 () Unit!30881)

(assert (=> b!913068 (= e!512177 lt!410710)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!337 (List!18437 (_ BitVec 64)) Unit!30881)

(assert (=> b!913068 (= lt!410710 (lemmaContainsKeyImpliesGetValueByKeyDefined!337 (toList!5670 (getCurrentListMap!2900 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(declare-datatypes ((Option!483 0))(
  ( (Some!482 (v!12135 V!30489)) (None!481) )
))
(declare-fun isDefined!347 (Option!483) Bool)

(declare-fun getValueByKey!477 (List!18437 (_ BitVec 64)) Option!483)

(assert (=> b!913068 (isDefined!347 (getValueByKey!477 (toList!5670 (getCurrentListMap!2900 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033))))

(declare-fun b!913069 () Bool)

(declare-fun Unit!30885 () Unit!30881)

(assert (=> b!913069 (= e!512177 Unit!30885)))

(declare-fun b!913070 () Bool)

(assert (=> b!913070 (= e!512176 (isDefined!347 (getValueByKey!477 (toList!5670 (getCurrentListMap!2900 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160)) k0!1033)))))

(assert (= (and d!112247 c!95729) b!913068))

(assert (= (and d!112247 (not c!95729)) b!913069))

(assert (= (and d!112247 (not res!616048)) b!913070))

(declare-fun m!847523 () Bool)

(assert (=> d!112247 m!847523))

(declare-fun m!847525 () Bool)

(assert (=> b!913068 m!847525))

(declare-fun m!847527 () Bool)

(assert (=> b!913068 m!847527))

(assert (=> b!913068 m!847527))

(declare-fun m!847529 () Bool)

(assert (=> b!913068 m!847529))

(assert (=> b!913070 m!847527))

(assert (=> b!913070 m!847527))

(assert (=> b!913070 m!847529))

(assert (=> b!912989 d!112247))

(declare-fun bm!40412 () Bool)

(declare-fun call!40419 () ListLongMap!11309)

(declare-fun call!40417 () ListLongMap!11309)

(assert (=> bm!40412 (= call!40419 call!40417)))

(declare-fun b!913113 () Bool)

(declare-fun e!512212 () Bool)

(assert (=> b!913113 (= e!512212 (validKeyInArray!0 (select (arr!26094 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!913114 () Bool)

(declare-fun e!512207 () Bool)

(declare-fun call!40420 () Bool)

(assert (=> b!913114 (= e!512207 (not call!40420))))

(declare-fun b!913115 () Bool)

(declare-fun e!512210 () ListLongMap!11309)

(declare-fun e!512213 () ListLongMap!11309)

(assert (=> b!913115 (= e!512210 e!512213)))

(declare-fun c!95747 () Bool)

(assert (=> b!913115 (= c!95747 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!913116 () Bool)

(declare-fun e!512216 () Bool)

(declare-fun e!512204 () Bool)

(assert (=> b!913116 (= e!512216 e!512204)))

(declare-fun res!616074 () Bool)

(assert (=> b!913116 (=> (not res!616074) (not e!512204))))

(declare-fun lt!410761 () ListLongMap!11309)

(assert (=> b!913116 (= res!616074 (contains!4681 lt!410761 (select (arr!26094 _keys!1386) #b00000000000000000000000000000000)))))

(assert (=> b!913116 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26554 _keys!1386)))))

(declare-fun b!913117 () Bool)

(declare-fun apply!529 (ListLongMap!11309 (_ BitVec 64)) V!30489)

(declare-fun get!13707 (ValueCell!9090 V!30489) V!30489)

(declare-fun dynLambda!1396 (Int (_ BitVec 64)) V!30489)

(assert (=> b!913117 (= e!512204 (= (apply!529 lt!410761 (select (arr!26094 _keys!1386) #b00000000000000000000000000000000)) (get!13707 (select (arr!26095 _values!1152) #b00000000000000000000000000000000) (dynLambda!1396 defaultEntry!1160 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!913117 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26555 _values!1152)))))

(assert (=> b!913117 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26554 _keys!1386)))))

(declare-fun b!913118 () Bool)

(declare-fun res!616071 () Bool)

(declare-fun e!512211 () Bool)

(assert (=> b!913118 (=> (not res!616071) (not e!512211))))

(declare-fun e!512209 () Bool)

(assert (=> b!913118 (= res!616071 e!512209)))

(declare-fun c!95745 () Bool)

(assert (=> b!913118 (= c!95745 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!913119 () Bool)

(declare-fun e!512206 () Bool)

(assert (=> b!913119 (= e!512209 e!512206)))

(declare-fun res!616067 () Bool)

(declare-fun call!40415 () Bool)

(assert (=> b!913119 (= res!616067 call!40415)))

(assert (=> b!913119 (=> (not res!616067) (not e!512206))))

(declare-fun bm!40413 () Bool)

(declare-fun call!40416 () ListLongMap!11309)

(assert (=> bm!40413 (= call!40417 call!40416)))

(declare-fun b!913120 () Bool)

(assert (=> b!913120 (= e!512209 (not call!40415))))

(declare-fun d!112249 () Bool)

(assert (=> d!112249 e!512211))

(declare-fun res!616072 () Bool)

(assert (=> d!112249 (=> (not res!616072) (not e!512211))))

(assert (=> d!112249 (= res!616072 (or (bvsge #b00000000000000000000000000000000 (size!26554 _keys!1386)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!26554 _keys!1386)))))))

(declare-fun lt!410769 () ListLongMap!11309)

(assert (=> d!112249 (= lt!410761 lt!410769)))

(declare-fun lt!410758 () Unit!30881)

(declare-fun e!512205 () Unit!30881)

(assert (=> d!112249 (= lt!410758 e!512205)))

(declare-fun c!95743 () Bool)

(assert (=> d!112249 (= c!95743 e!512212)))

(declare-fun res!616070 () Bool)

(assert (=> d!112249 (=> (not res!616070) (not e!512212))))

(assert (=> d!112249 (= res!616070 (bvslt #b00000000000000000000000000000000 (size!26554 _keys!1386)))))

(assert (=> d!112249 (= lt!410769 e!512210)))

(declare-fun c!95746 () Bool)

(assert (=> d!112249 (= c!95746 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!112249 (validMask!0 mask!1756)))

(assert (=> d!112249 (= (getCurrentListMap!2900 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160) lt!410761)))

(declare-fun b!913121 () Bool)

(declare-fun e!512214 () Bool)

(assert (=> b!913121 (= e!512214 (validKeyInArray!0 (select (arr!26094 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!913122 () Bool)

(declare-fun lt!410760 () Unit!30881)

(assert (=> b!913122 (= e!512205 lt!410760)))

(declare-fun lt!410762 () ListLongMap!11309)

(declare-fun getCurrentListMapNoExtraKeys!3310 (array!54288 array!54290 (_ BitVec 32) (_ BitVec 32) V!30489 V!30489 (_ BitVec 32) Int) ListLongMap!11309)

(assert (=> b!913122 (= lt!410762 (getCurrentListMapNoExtraKeys!3310 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410759 () (_ BitVec 64))

(assert (=> b!913122 (= lt!410759 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410774 () (_ BitVec 64))

(assert (=> b!913122 (= lt!410774 (select (arr!26094 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410773 () Unit!30881)

(declare-fun addStillContains!348 (ListLongMap!11309 (_ BitVec 64) V!30489 (_ BitVec 64)) Unit!30881)

(assert (=> b!913122 (= lt!410773 (addStillContains!348 lt!410762 lt!410759 zeroValue!1094 lt!410774))))

(declare-fun +!2562 (ListLongMap!11309 tuple2!12598) ListLongMap!11309)

(assert (=> b!913122 (contains!4681 (+!2562 lt!410762 (tuple2!12599 lt!410759 zeroValue!1094)) lt!410774)))

(declare-fun lt!410771 () Unit!30881)

(assert (=> b!913122 (= lt!410771 lt!410773)))

(declare-fun lt!410772 () ListLongMap!11309)

(assert (=> b!913122 (= lt!410772 (getCurrentListMapNoExtraKeys!3310 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410765 () (_ BitVec 64))

(assert (=> b!913122 (= lt!410765 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410763 () (_ BitVec 64))

(assert (=> b!913122 (= lt!410763 (select (arr!26094 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410770 () Unit!30881)

(declare-fun addApplyDifferent!348 (ListLongMap!11309 (_ BitVec 64) V!30489 (_ BitVec 64)) Unit!30881)

(assert (=> b!913122 (= lt!410770 (addApplyDifferent!348 lt!410772 lt!410765 minValue!1094 lt!410763))))

(assert (=> b!913122 (= (apply!529 (+!2562 lt!410772 (tuple2!12599 lt!410765 minValue!1094)) lt!410763) (apply!529 lt!410772 lt!410763))))

(declare-fun lt!410764 () Unit!30881)

(assert (=> b!913122 (= lt!410764 lt!410770)))

(declare-fun lt!410756 () ListLongMap!11309)

(assert (=> b!913122 (= lt!410756 (getCurrentListMapNoExtraKeys!3310 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410775 () (_ BitVec 64))

(assert (=> b!913122 (= lt!410775 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410768 () (_ BitVec 64))

(assert (=> b!913122 (= lt!410768 (select (arr!26094 _keys!1386) #b00000000000000000000000000000000))))

(declare-fun lt!410767 () Unit!30881)

(assert (=> b!913122 (= lt!410767 (addApplyDifferent!348 lt!410756 lt!410775 zeroValue!1094 lt!410768))))

(assert (=> b!913122 (= (apply!529 (+!2562 lt!410756 (tuple2!12599 lt!410775 zeroValue!1094)) lt!410768) (apply!529 lt!410756 lt!410768))))

(declare-fun lt!410776 () Unit!30881)

(assert (=> b!913122 (= lt!410776 lt!410767)))

(declare-fun lt!410766 () ListLongMap!11309)

(assert (=> b!913122 (= lt!410766 (getCurrentListMapNoExtraKeys!3310 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun lt!410757 () (_ BitVec 64))

(assert (=> b!913122 (= lt!410757 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!410755 () (_ BitVec 64))

(assert (=> b!913122 (= lt!410755 (select (arr!26094 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> b!913122 (= lt!410760 (addApplyDifferent!348 lt!410766 lt!410757 minValue!1094 lt!410755))))

(assert (=> b!913122 (= (apply!529 (+!2562 lt!410766 (tuple2!12599 lt!410757 minValue!1094)) lt!410755) (apply!529 lt!410766 lt!410755))))

(declare-fun b!913123 () Bool)

(declare-fun e!512215 () ListLongMap!11309)

(assert (=> b!913123 (= e!512215 call!40419)))

(declare-fun bm!40414 () Bool)

(declare-fun call!40418 () ListLongMap!11309)

(assert (=> bm!40414 (= call!40418 (+!2562 (ite c!95746 call!40416 (ite c!95747 call!40417 call!40419)) (ite (or c!95746 c!95747) (tuple2!12599 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1094) (tuple2!12599 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094))))))

(declare-fun b!913124 () Bool)

(declare-fun e!512208 () Bool)

(assert (=> b!913124 (= e!512208 (= (apply!529 lt!410761 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1094))))

(declare-fun bm!40415 () Bool)

(assert (=> bm!40415 (= call!40415 (contains!4681 lt!410761 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!913125 () Bool)

(assert (=> b!913125 (= e!512206 (= (apply!529 lt!410761 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1094))))

(declare-fun bm!40416 () Bool)

(assert (=> bm!40416 (= call!40416 (getCurrentListMapNoExtraKeys!3310 _keys!1386 _values!1152 mask!1756 extraKeys!1073 zeroValue!1094 minValue!1094 #b00000000000000000000000000000000 defaultEntry!1160))))

(declare-fun bm!40417 () Bool)

(declare-fun call!40421 () ListLongMap!11309)

(assert (=> bm!40417 (= call!40421 call!40418)))

(declare-fun b!913126 () Bool)

(declare-fun c!95744 () Bool)

(assert (=> b!913126 (= c!95744 (and (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1073 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!913126 (= e!512213 e!512215)))

(declare-fun b!913127 () Bool)

(declare-fun Unit!30886 () Unit!30881)

(assert (=> b!913127 (= e!512205 Unit!30886)))

(declare-fun b!913128 () Bool)

(assert (=> b!913128 (= e!512211 e!512207)))

(declare-fun c!95742 () Bool)

(assert (=> b!913128 (= c!95742 (not (= (bvand extraKeys!1073 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!913129 () Bool)

(assert (=> b!913129 (= e!512210 (+!2562 call!40418 (tuple2!12599 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1094)))))

(declare-fun b!913130 () Bool)

(assert (=> b!913130 (= e!512207 e!512208)))

(declare-fun res!616073 () Bool)

(assert (=> b!913130 (= res!616073 call!40420)))

(assert (=> b!913130 (=> (not res!616073) (not e!512208))))

(declare-fun b!913131 () Bool)

(assert (=> b!913131 (= e!512213 call!40421)))

(declare-fun bm!40418 () Bool)

(assert (=> bm!40418 (= call!40420 (contains!4681 lt!410761 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!913132 () Bool)

(declare-fun res!616069 () Bool)

(assert (=> b!913132 (=> (not res!616069) (not e!512211))))

(assert (=> b!913132 (= res!616069 e!512216)))

(declare-fun res!616068 () Bool)

(assert (=> b!913132 (=> res!616068 e!512216)))

(assert (=> b!913132 (= res!616068 (not e!512214))))

(declare-fun res!616075 () Bool)

(assert (=> b!913132 (=> (not res!616075) (not e!512214))))

(assert (=> b!913132 (= res!616075 (bvslt #b00000000000000000000000000000000 (size!26554 _keys!1386)))))

(declare-fun b!913133 () Bool)

(assert (=> b!913133 (= e!512215 call!40421)))

(assert (= (and d!112249 c!95746) b!913129))

(assert (= (and d!112249 (not c!95746)) b!913115))

(assert (= (and b!913115 c!95747) b!913131))

(assert (= (and b!913115 (not c!95747)) b!913126))

(assert (= (and b!913126 c!95744) b!913133))

(assert (= (and b!913126 (not c!95744)) b!913123))

(assert (= (or b!913133 b!913123) bm!40412))

(assert (= (or b!913131 bm!40412) bm!40413))

(assert (= (or b!913131 b!913133) bm!40417))

(assert (= (or b!913129 bm!40413) bm!40416))

(assert (= (or b!913129 bm!40417) bm!40414))

(assert (= (and d!112249 res!616070) b!913113))

(assert (= (and d!112249 c!95743) b!913122))

(assert (= (and d!112249 (not c!95743)) b!913127))

(assert (= (and d!112249 res!616072) b!913132))

(assert (= (and b!913132 res!616075) b!913121))

(assert (= (and b!913132 (not res!616068)) b!913116))

(assert (= (and b!913116 res!616074) b!913117))

(assert (= (and b!913132 res!616069) b!913118))

(assert (= (and b!913118 c!95745) b!913119))

(assert (= (and b!913118 (not c!95745)) b!913120))

(assert (= (and b!913119 res!616067) b!913125))

(assert (= (or b!913119 b!913120) bm!40415))

(assert (= (and b!913118 res!616071) b!913128))

(assert (= (and b!913128 c!95742) b!913130))

(assert (= (and b!913128 (not c!95742)) b!913114))

(assert (= (and b!913130 res!616073) b!913124))

(assert (= (or b!913130 b!913114) bm!40418))

(declare-fun b_lambda!13341 () Bool)

(assert (=> (not b_lambda!13341) (not b!913117)))

(declare-fun t!26039 () Bool)

(declare-fun tb!5449 () Bool)

(assert (=> (and start!78262 (= defaultEntry!1160 defaultEntry!1160) t!26039) tb!5449))

(declare-fun result!10695 () Bool)

(assert (=> tb!5449 (= result!10695 tp_is_empty!19143)))

(assert (=> b!913117 t!26039))

(declare-fun b_and!27323 () Bool)

(assert (= b_and!27319 (and (=> t!26039 result!10695) b_and!27323)))

(assert (=> b!913113 m!847503))

(assert (=> b!913113 m!847503))

(assert (=> b!913113 m!847511))

(assert (=> b!913121 m!847503))

(assert (=> b!913121 m!847503))

(assert (=> b!913121 m!847511))

(declare-fun m!847531 () Bool)

(assert (=> bm!40415 m!847531))

(declare-fun m!847533 () Bool)

(assert (=> b!913125 m!847533))

(assert (=> b!913116 m!847503))

(assert (=> b!913116 m!847503))

(declare-fun m!847535 () Bool)

(assert (=> b!913116 m!847535))

(declare-fun m!847537 () Bool)

(assert (=> b!913129 m!847537))

(declare-fun m!847539 () Bool)

(assert (=> bm!40416 m!847539))

(declare-fun m!847541 () Bool)

(assert (=> bm!40418 m!847541))

(assert (=> d!112249 m!847455))

(declare-fun m!847543 () Bool)

(assert (=> b!913124 m!847543))

(declare-fun m!847545 () Bool)

(assert (=> b!913122 m!847545))

(declare-fun m!847547 () Bool)

(assert (=> b!913122 m!847547))

(assert (=> b!913122 m!847545))

(declare-fun m!847549 () Bool)

(assert (=> b!913122 m!847549))

(declare-fun m!847551 () Bool)

(assert (=> b!913122 m!847551))

(declare-fun m!847553 () Bool)

(assert (=> b!913122 m!847553))

(declare-fun m!847555 () Bool)

(assert (=> b!913122 m!847555))

(declare-fun m!847557 () Bool)

(assert (=> b!913122 m!847557))

(assert (=> b!913122 m!847555))

(assert (=> b!913122 m!847539))

(declare-fun m!847559 () Bool)

(assert (=> b!913122 m!847559))

(declare-fun m!847561 () Bool)

(assert (=> b!913122 m!847561))

(declare-fun m!847563 () Bool)

(assert (=> b!913122 m!847563))

(declare-fun m!847565 () Bool)

(assert (=> b!913122 m!847565))

(assert (=> b!913122 m!847551))

(assert (=> b!913122 m!847503))

(declare-fun m!847567 () Bool)

(assert (=> b!913122 m!847567))

(declare-fun m!847569 () Bool)

(assert (=> b!913122 m!847569))

(assert (=> b!913122 m!847563))

(declare-fun m!847571 () Bool)

(assert (=> b!913122 m!847571))

(declare-fun m!847573 () Bool)

(assert (=> b!913122 m!847573))

(assert (=> b!913117 m!847503))

(declare-fun m!847575 () Bool)

(assert (=> b!913117 m!847575))

(declare-fun m!847577 () Bool)

(assert (=> b!913117 m!847577))

(declare-fun m!847579 () Bool)

(assert (=> b!913117 m!847579))

(assert (=> b!913117 m!847503))

(assert (=> b!913117 m!847577))

(assert (=> b!913117 m!847579))

(declare-fun m!847581 () Bool)

(assert (=> b!913117 m!847581))

(declare-fun m!847583 () Bool)

(assert (=> bm!40414 m!847583))

(assert (=> b!912989 d!112249))

(declare-fun d!112251 () Bool)

(assert (=> d!112251 (= (validMask!0 mask!1756) (and (or (= mask!1756 #b00000000000000000000000000000111) (= mask!1756 #b00000000000000000000000000001111) (= mask!1756 #b00000000000000000000000000011111) (= mask!1756 #b00000000000000000000000000111111) (= mask!1756 #b00000000000000000000000001111111) (= mask!1756 #b00000000000000000000000011111111) (= mask!1756 #b00000000000000000000000111111111) (= mask!1756 #b00000000000000000000001111111111) (= mask!1756 #b00000000000000000000011111111111) (= mask!1756 #b00000000000000000000111111111111) (= mask!1756 #b00000000000000000001111111111111) (= mask!1756 #b00000000000000000011111111111111) (= mask!1756 #b00000000000000000111111111111111) (= mask!1756 #b00000000000000001111111111111111) (= mask!1756 #b00000000000000011111111111111111) (= mask!1756 #b00000000000000111111111111111111) (= mask!1756 #b00000000000001111111111111111111) (= mask!1756 #b00000000000011111111111111111111) (= mask!1756 #b00000000000111111111111111111111) (= mask!1756 #b00000000001111111111111111111111) (= mask!1756 #b00000000011111111111111111111111) (= mask!1756 #b00000000111111111111111111111111) (= mask!1756 #b00000001111111111111111111111111) (= mask!1756 #b00000011111111111111111111111111) (= mask!1756 #b00000111111111111111111111111111) (= mask!1756 #b00001111111111111111111111111111) (= mask!1756 #b00011111111111111111111111111111) (= mask!1756 #b00111111111111111111111111111111)) (bvsle mask!1756 #b00111111111111111111111111111111)))))

(assert (=> start!78262 d!112251))

(declare-fun d!112253 () Bool)

(assert (=> d!112253 (= (array_inv!20370 _values!1152) (bvsge (size!26555 _values!1152) #b00000000000000000000000000000000))))

(assert (=> start!78262 d!112253))

(declare-fun d!112255 () Bool)

(assert (=> d!112255 (= (array_inv!20371 _keys!1386) (bvsge (size!26554 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> start!78262 d!112255))

(declare-fun b!913142 () Bool)

(declare-fun e!512221 () Bool)

(assert (=> b!913142 (= e!512221 tp_is_empty!19143)))

(declare-fun condMapEmpty!30448 () Bool)

(declare-fun mapDefault!30448 () ValueCell!9090)

(assert (=> mapNonEmpty!30442 (= condMapEmpty!30448 (= mapRest!30442 ((as const (Array (_ BitVec 32) ValueCell!9090)) mapDefault!30448)))))

(declare-fun e!512222 () Bool)

(declare-fun mapRes!30448 () Bool)

(assert (=> mapNonEmpty!30442 (= tp!58452 (and e!512222 mapRes!30448))))

(declare-fun b!913143 () Bool)

(assert (=> b!913143 (= e!512222 tp_is_empty!19143)))

(declare-fun mapIsEmpty!30448 () Bool)

(assert (=> mapIsEmpty!30448 mapRes!30448))

(declare-fun mapNonEmpty!30448 () Bool)

(declare-fun tp!58462 () Bool)

(assert (=> mapNonEmpty!30448 (= mapRes!30448 (and tp!58462 e!512221))))

(declare-fun mapKey!30448 () (_ BitVec 32))

(declare-fun mapValue!30448 () ValueCell!9090)

(declare-fun mapRest!30448 () (Array (_ BitVec 32) ValueCell!9090))

(assert (=> mapNonEmpty!30448 (= mapRest!30442 (store mapRest!30448 mapKey!30448 mapValue!30448))))

(assert (= (and mapNonEmpty!30442 condMapEmpty!30448) mapIsEmpty!30448))

(assert (= (and mapNonEmpty!30442 (not condMapEmpty!30448)) mapNonEmpty!30448))

(assert (= (and mapNonEmpty!30448 ((_ is ValueCellFull!9090) mapValue!30448)) b!913142))

(assert (= (and mapNonEmpty!30442 ((_ is ValueCellFull!9090) mapDefault!30448)) b!913143))

(declare-fun m!847585 () Bool)

(assert (=> mapNonEmpty!30448 m!847585))

(declare-fun b_lambda!13343 () Bool)

(assert (= b_lambda!13341 (or (and start!78262 b_free!16725) b_lambda!13343)))

(check-sat (not b!913070) (not b!913045) (not b!913121) (not d!112247) (not bm!40415) (not bm!40394) (not d!112241) (not b!913034) (not b!913125) (not bm!40418) (not b!913032) (not b!913116) (not d!112249) (not b!913059) (not b!913057) (not b_next!16725) (not b!913129) (not b!913124) tp_is_empty!19143 (not b!913068) (not bm!40416) (not b_lambda!13343) (not mapNonEmpty!30448) (not b!913117) (not b!913122) (not bm!40397) (not b!913060) b_and!27323 (not b!913040) (not b!913113) (not bm!40414))
(check-sat b_and!27323 (not b_next!16725))
