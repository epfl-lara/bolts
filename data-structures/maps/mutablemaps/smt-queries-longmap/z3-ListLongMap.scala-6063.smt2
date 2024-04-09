; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78494 () Bool)

(assert start!78494)

(declare-fun b!914843 () Bool)

(declare-fun e!513370 () Bool)

(declare-fun tp_is_empty!19209 () Bool)

(assert (=> b!914843 (= e!513370 tp_is_empty!19209)))

(declare-fun b!914844 () Bool)

(declare-fun e!513368 () Bool)

(assert (=> b!914844 (= e!513368 tp_is_empty!19209)))

(declare-fun res!616981 () Bool)

(declare-fun e!513366 () Bool)

(assert (=> start!78494 (=> (not res!616981) (not e!513366))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78494 (= res!616981 (validMask!0 mask!1881))))

(assert (=> start!78494 e!513366))

(assert (=> start!78494 true))

(declare-datatypes ((V!30577 0))(
  ( (V!30578 (val!9655 Int)) )
))
(declare-datatypes ((ValueCell!9123 0))(
  ( (ValueCellFull!9123 (v!12172 V!30577)) (EmptyCell!9123) )
))
(declare-datatypes ((array!54428 0))(
  ( (array!54429 (arr!26157 (Array (_ BitVec 32) ValueCell!9123)) (size!26617 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54428)

(declare-fun e!513367 () Bool)

(declare-fun array_inv!20412 (array!54428) Bool)

(assert (=> start!78494 (and (array_inv!20412 _values!1231) e!513367)))

(declare-datatypes ((array!54430 0))(
  ( (array!54431 (arr!26158 (Array (_ BitVec 32) (_ BitVec 64))) (size!26618 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54430)

(declare-fun array_inv!20413 (array!54430) Bool)

(assert (=> start!78494 (array_inv!20413 _keys!1487)))

(declare-fun b!914845 () Bool)

(declare-datatypes ((List!18470 0))(
  ( (Nil!18467) (Cons!18466 (h!19612 (_ BitVec 64)) (t!26091 List!18470)) )
))
(declare-fun noDuplicate!1330 (List!18470) Bool)

(assert (=> b!914845 (= e!513366 (not (noDuplicate!1330 Nil!18467)))))

(declare-fun mapIsEmpty!30564 () Bool)

(declare-fun mapRes!30564 () Bool)

(assert (=> mapIsEmpty!30564 mapRes!30564))

(declare-fun mapNonEmpty!30564 () Bool)

(declare-fun tp!58632 () Bool)

(assert (=> mapNonEmpty!30564 (= mapRes!30564 (and tp!58632 e!513370))))

(declare-fun mapValue!30564 () ValueCell!9123)

(declare-fun mapKey!30564 () (_ BitVec 32))

(declare-fun mapRest!30564 () (Array (_ BitVec 32) ValueCell!9123))

(assert (=> mapNonEmpty!30564 (= (arr!26157 _values!1231) (store mapRest!30564 mapKey!30564 mapValue!30564))))

(declare-fun b!914846 () Bool)

(declare-fun res!616982 () Bool)

(assert (=> b!914846 (=> (not res!616982) (not e!513366))))

(assert (=> b!914846 (= res!616982 (and (bvsle #b00000000000000000000000000000000 (size!26618 _keys!1487)) (bvslt (size!26618 _keys!1487) #b01111111111111111111111111111111)))))

(declare-fun b!914847 () Bool)

(assert (=> b!914847 (= e!513367 (and e!513368 mapRes!30564))))

(declare-fun condMapEmpty!30564 () Bool)

(declare-fun mapDefault!30564 () ValueCell!9123)

(assert (=> b!914847 (= condMapEmpty!30564 (= (arr!26157 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9123)) mapDefault!30564)))))

(declare-fun b!914848 () Bool)

(declare-fun res!616980 () Bool)

(assert (=> b!914848 (=> (not res!616980) (not e!513366))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!914848 (= res!616980 (and (= (size!26617 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26618 _keys!1487) (size!26617 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!914849 () Bool)

(declare-fun res!616983 () Bool)

(assert (=> b!914849 (=> (not res!616983) (not e!513366))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54430 (_ BitVec 32)) Bool)

(assert (=> b!914849 (= res!616983 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(assert (= (and start!78494 res!616981) b!914848))

(assert (= (and b!914848 res!616980) b!914849))

(assert (= (and b!914849 res!616983) b!914846))

(assert (= (and b!914846 res!616982) b!914845))

(assert (= (and b!914847 condMapEmpty!30564) mapIsEmpty!30564))

(assert (= (and b!914847 (not condMapEmpty!30564)) mapNonEmpty!30564))

(get-info :version)

(assert (= (and mapNonEmpty!30564 ((_ is ValueCellFull!9123) mapValue!30564)) b!914843))

(assert (= (and b!914847 ((_ is ValueCellFull!9123) mapDefault!30564)) b!914844))

(assert (= start!78494 b!914847))

(declare-fun m!849477 () Bool)

(assert (=> start!78494 m!849477))

(declare-fun m!849479 () Bool)

(assert (=> start!78494 m!849479))

(declare-fun m!849481 () Bool)

(assert (=> start!78494 m!849481))

(declare-fun m!849483 () Bool)

(assert (=> b!914845 m!849483))

(declare-fun m!849485 () Bool)

(assert (=> mapNonEmpty!30564 m!849485))

(declare-fun m!849487 () Bool)

(assert (=> b!914849 m!849487))

(check-sat tp_is_empty!19209 (not b!914849) (not start!78494) (not mapNonEmpty!30564) (not b!914845))
(check-sat)
(get-model)

(declare-fun bm!40543 () Bool)

(declare-fun call!40546 () Bool)

(assert (=> bm!40543 (= call!40546 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1487 mask!1881))))

(declare-fun b!914879 () Bool)

(declare-fun e!513394 () Bool)

(assert (=> b!914879 (= e!513394 call!40546)))

(declare-fun b!914880 () Bool)

(declare-fun e!513393 () Bool)

(declare-fun e!513392 () Bool)

(assert (=> b!914880 (= e!513393 e!513392)))

(declare-fun c!95966 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!914880 (= c!95966 (validKeyInArray!0 (select (arr!26158 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!914882 () Bool)

(assert (=> b!914882 (= e!513392 call!40546)))

(declare-fun d!112647 () Bool)

(declare-fun res!617001 () Bool)

(assert (=> d!112647 (=> res!617001 e!513393)))

(assert (=> d!112647 (= res!617001 (bvsge #b00000000000000000000000000000000 (size!26618 _keys!1487)))))

(assert (=> d!112647 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881) e!513393)))

(declare-fun b!914881 () Bool)

(assert (=> b!914881 (= e!513392 e!513394)))

(declare-fun lt!411557 () (_ BitVec 64))

(assert (=> b!914881 (= lt!411557 (select (arr!26158 _keys!1487) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30935 0))(
  ( (Unit!30936) )
))
(declare-fun lt!411556 () Unit!30935)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!54430 (_ BitVec 64) (_ BitVec 32)) Unit!30935)

(assert (=> b!914881 (= lt!411556 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1487 lt!411557 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!54430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!914881 (arrayContainsKey!0 _keys!1487 lt!411557 #b00000000000000000000000000000000)))

(declare-fun lt!411555 () Unit!30935)

(assert (=> b!914881 (= lt!411555 lt!411556)))

(declare-fun res!617000 () Bool)

(declare-datatypes ((SeekEntryResult!8961 0))(
  ( (MissingZero!8961 (index!38214 (_ BitVec 32))) (Found!8961 (index!38215 (_ BitVec 32))) (Intermediate!8961 (undefined!9773 Bool) (index!38216 (_ BitVec 32)) (x!78259 (_ BitVec 32))) (Undefined!8961) (MissingVacant!8961 (index!38217 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!54430 (_ BitVec 32)) SeekEntryResult!8961)

(assert (=> b!914881 (= res!617000 (= (seekEntryOrOpen!0 (select (arr!26158 _keys!1487) #b00000000000000000000000000000000) _keys!1487 mask!1881) (Found!8961 #b00000000000000000000000000000000)))))

(assert (=> b!914881 (=> (not res!617000) (not e!513394))))

(assert (= (and d!112647 (not res!617001)) b!914880))

(assert (= (and b!914880 c!95966) b!914881))

(assert (= (and b!914880 (not c!95966)) b!914882))

(assert (= (and b!914881 res!617000) b!914879))

(assert (= (or b!914879 b!914882) bm!40543))

(declare-fun m!849501 () Bool)

(assert (=> bm!40543 m!849501))

(declare-fun m!849503 () Bool)

(assert (=> b!914880 m!849503))

(assert (=> b!914880 m!849503))

(declare-fun m!849505 () Bool)

(assert (=> b!914880 m!849505))

(assert (=> b!914881 m!849503))

(declare-fun m!849507 () Bool)

(assert (=> b!914881 m!849507))

(declare-fun m!849509 () Bool)

(assert (=> b!914881 m!849509))

(assert (=> b!914881 m!849503))

(declare-fun m!849511 () Bool)

(assert (=> b!914881 m!849511))

(assert (=> b!914849 d!112647))

(declare-fun d!112649 () Bool)

(declare-fun res!617006 () Bool)

(declare-fun e!513399 () Bool)

(assert (=> d!112649 (=> res!617006 e!513399)))

(assert (=> d!112649 (= res!617006 ((_ is Nil!18467) Nil!18467))))

(assert (=> d!112649 (= (noDuplicate!1330 Nil!18467) e!513399)))

(declare-fun b!914887 () Bool)

(declare-fun e!513400 () Bool)

(assert (=> b!914887 (= e!513399 e!513400)))

(declare-fun res!617007 () Bool)

(assert (=> b!914887 (=> (not res!617007) (not e!513400))))

(declare-fun contains!4703 (List!18470 (_ BitVec 64)) Bool)

(assert (=> b!914887 (= res!617007 (not (contains!4703 (t!26091 Nil!18467) (h!19612 Nil!18467))))))

(declare-fun b!914888 () Bool)

(assert (=> b!914888 (= e!513400 (noDuplicate!1330 (t!26091 Nil!18467)))))

(assert (= (and d!112649 (not res!617006)) b!914887))

(assert (= (and b!914887 res!617007) b!914888))

(declare-fun m!849513 () Bool)

(assert (=> b!914887 m!849513))

(declare-fun m!849515 () Bool)

(assert (=> b!914888 m!849515))

(assert (=> b!914845 d!112649))

(declare-fun d!112651 () Bool)

(assert (=> d!112651 (= (validMask!0 mask!1881) (and (or (= mask!1881 #b00000000000000000000000000000111) (= mask!1881 #b00000000000000000000000000001111) (= mask!1881 #b00000000000000000000000000011111) (= mask!1881 #b00000000000000000000000000111111) (= mask!1881 #b00000000000000000000000001111111) (= mask!1881 #b00000000000000000000000011111111) (= mask!1881 #b00000000000000000000000111111111) (= mask!1881 #b00000000000000000000001111111111) (= mask!1881 #b00000000000000000000011111111111) (= mask!1881 #b00000000000000000000111111111111) (= mask!1881 #b00000000000000000001111111111111) (= mask!1881 #b00000000000000000011111111111111) (= mask!1881 #b00000000000000000111111111111111) (= mask!1881 #b00000000000000001111111111111111) (= mask!1881 #b00000000000000011111111111111111) (= mask!1881 #b00000000000000111111111111111111) (= mask!1881 #b00000000000001111111111111111111) (= mask!1881 #b00000000000011111111111111111111) (= mask!1881 #b00000000000111111111111111111111) (= mask!1881 #b00000000001111111111111111111111) (= mask!1881 #b00000000011111111111111111111111) (= mask!1881 #b00000000111111111111111111111111) (= mask!1881 #b00000001111111111111111111111111) (= mask!1881 #b00000011111111111111111111111111) (= mask!1881 #b00000111111111111111111111111111) (= mask!1881 #b00001111111111111111111111111111) (= mask!1881 #b00011111111111111111111111111111) (= mask!1881 #b00111111111111111111111111111111)) (bvsle mask!1881 #b00111111111111111111111111111111)))))

(assert (=> start!78494 d!112651))

(declare-fun d!112653 () Bool)

(assert (=> d!112653 (= (array_inv!20412 _values!1231) (bvsge (size!26617 _values!1231) #b00000000000000000000000000000000))))

(assert (=> start!78494 d!112653))

(declare-fun d!112655 () Bool)

(assert (=> d!112655 (= (array_inv!20413 _keys!1487) (bvsge (size!26618 _keys!1487) #b00000000000000000000000000000000))))

(assert (=> start!78494 d!112655))

(declare-fun b!914895 () Bool)

(declare-fun e!513406 () Bool)

(assert (=> b!914895 (= e!513406 tp_is_empty!19209)))

(declare-fun mapIsEmpty!30570 () Bool)

(declare-fun mapRes!30570 () Bool)

(assert (=> mapIsEmpty!30570 mapRes!30570))

(declare-fun mapNonEmpty!30570 () Bool)

(declare-fun tp!58638 () Bool)

(assert (=> mapNonEmpty!30570 (= mapRes!30570 (and tp!58638 e!513406))))

(declare-fun mapValue!30570 () ValueCell!9123)

(declare-fun mapRest!30570 () (Array (_ BitVec 32) ValueCell!9123))

(declare-fun mapKey!30570 () (_ BitVec 32))

(assert (=> mapNonEmpty!30570 (= mapRest!30564 (store mapRest!30570 mapKey!30570 mapValue!30570))))

(declare-fun condMapEmpty!30570 () Bool)

(declare-fun mapDefault!30570 () ValueCell!9123)

(assert (=> mapNonEmpty!30564 (= condMapEmpty!30570 (= mapRest!30564 ((as const (Array (_ BitVec 32) ValueCell!9123)) mapDefault!30570)))))

(declare-fun e!513405 () Bool)

(assert (=> mapNonEmpty!30564 (= tp!58632 (and e!513405 mapRes!30570))))

(declare-fun b!914896 () Bool)

(assert (=> b!914896 (= e!513405 tp_is_empty!19209)))

(assert (= (and mapNonEmpty!30564 condMapEmpty!30570) mapIsEmpty!30570))

(assert (= (and mapNonEmpty!30564 (not condMapEmpty!30570)) mapNonEmpty!30570))

(assert (= (and mapNonEmpty!30570 ((_ is ValueCellFull!9123) mapValue!30570)) b!914895))

(assert (= (and mapNonEmpty!30564 ((_ is ValueCellFull!9123) mapDefault!30570)) b!914896))

(declare-fun m!849517 () Bool)

(assert (=> mapNonEmpty!30570 m!849517))

(check-sat (not mapNonEmpty!30570) (not b!914888) (not b!914887) (not b!914881) (not b!914880) (not bm!40543) tp_is_empty!19209)
(check-sat)
