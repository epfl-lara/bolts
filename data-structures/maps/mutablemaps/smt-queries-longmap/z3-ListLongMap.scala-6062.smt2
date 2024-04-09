; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78480 () Bool)

(assert start!78480)

(declare-fun mapIsEmpty!30552 () Bool)

(declare-fun mapRes!30552 () Bool)

(assert (=> mapIsEmpty!30552 mapRes!30552))

(declare-fun b!914764 () Bool)

(declare-fun e!513309 () Bool)

(declare-fun tp_is_empty!19203 () Bool)

(assert (=> b!914764 (= e!513309 tp_is_empty!19203)))

(declare-fun mapNonEmpty!30552 () Bool)

(declare-fun tp!58620 () Bool)

(declare-fun e!513307 () Bool)

(assert (=> mapNonEmpty!30552 (= mapRes!30552 (and tp!58620 e!513307))))

(declare-datatypes ((V!30569 0))(
  ( (V!30570 (val!9652 Int)) )
))
(declare-datatypes ((ValueCell!9120 0))(
  ( (ValueCellFull!9120 (v!12169 V!30569)) (EmptyCell!9120) )
))
(declare-datatypes ((array!54414 0))(
  ( (array!54415 (arr!26151 (Array (_ BitVec 32) ValueCell!9120)) (size!26611 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!54414)

(declare-fun mapKey!30552 () (_ BitVec 32))

(declare-fun mapValue!30552 () ValueCell!9120)

(declare-fun mapRest!30552 () (Array (_ BitVec 32) ValueCell!9120))

(assert (=> mapNonEmpty!30552 (= (arr!26151 _values!1231) (store mapRest!30552 mapKey!30552 mapValue!30552))))

(declare-fun b!914765 () Bool)

(declare-fun e!513308 () Bool)

(declare-datatypes ((array!54416 0))(
  ( (array!54417 (arr!26152 (Array (_ BitVec 32) (_ BitVec 64))) (size!26612 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!54416)

(assert (=> b!914765 (= e!513308 (and (bvsle #b00000000000000000000000000000000 (size!26612 _keys!1487)) (bvsge (size!26612 _keys!1487) #b01111111111111111111111111111111)))))

(declare-fun b!914766 () Bool)

(declare-fun e!513310 () Bool)

(assert (=> b!914766 (= e!513310 (and e!513309 mapRes!30552))))

(declare-fun condMapEmpty!30552 () Bool)

(declare-fun mapDefault!30552 () ValueCell!9120)

(assert (=> b!914766 (= condMapEmpty!30552 (= (arr!26151 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9120)) mapDefault!30552)))))

(declare-fun b!914767 () Bool)

(assert (=> b!914767 (= e!513307 tp_is_empty!19203)))

(declare-fun b!914768 () Bool)

(declare-fun res!616943 () Bool)

(assert (=> b!914768 (=> (not res!616943) (not e!513308))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!914768 (= res!616943 (and (= (size!26611 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!26612 _keys!1487) (size!26611 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!914769 () Bool)

(declare-fun res!616944 () Bool)

(assert (=> b!914769 (=> (not res!616944) (not e!513308))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!54416 (_ BitVec 32)) Bool)

(assert (=> b!914769 (= res!616944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun res!616942 () Bool)

(assert (=> start!78480 (=> (not res!616942) (not e!513308))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78480 (= res!616942 (validMask!0 mask!1881))))

(assert (=> start!78480 e!513308))

(assert (=> start!78480 true))

(declare-fun array_inv!20406 (array!54414) Bool)

(assert (=> start!78480 (and (array_inv!20406 _values!1231) e!513310)))

(declare-fun array_inv!20407 (array!54416) Bool)

(assert (=> start!78480 (array_inv!20407 _keys!1487)))

(assert (= (and start!78480 res!616942) b!914768))

(assert (= (and b!914768 res!616943) b!914769))

(assert (= (and b!914769 res!616944) b!914765))

(assert (= (and b!914766 condMapEmpty!30552) mapIsEmpty!30552))

(assert (= (and b!914766 (not condMapEmpty!30552)) mapNonEmpty!30552))

(get-info :version)

(assert (= (and mapNonEmpty!30552 ((_ is ValueCellFull!9120) mapValue!30552)) b!914767))

(assert (= (and b!914766 ((_ is ValueCellFull!9120) mapDefault!30552)) b!914764))

(assert (= start!78480 b!914766))

(declare-fun m!849431 () Bool)

(assert (=> mapNonEmpty!30552 m!849431))

(declare-fun m!849433 () Bool)

(assert (=> b!914769 m!849433))

(declare-fun m!849435 () Bool)

(assert (=> start!78480 m!849435))

(declare-fun m!849437 () Bool)

(assert (=> start!78480 m!849437))

(declare-fun m!849439 () Bool)

(assert (=> start!78480 m!849439))

(check-sat (not b!914769) (not start!78480) (not mapNonEmpty!30552) tp_is_empty!19203)
(check-sat)
(get-model)

(declare-fun b!914796 () Bool)

(declare-fun e!513334 () Bool)

(declare-fun e!513333 () Bool)

(assert (=> b!914796 (= e!513334 e!513333)))

(declare-fun c!95963 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!914796 (= c!95963 (validKeyInArray!0 (select (arr!26152 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!914797 () Bool)

(declare-fun call!40543 () Bool)

(assert (=> b!914797 (= e!513333 call!40543)))

(declare-fun d!112637 () Bool)

(declare-fun res!616959 () Bool)

(assert (=> d!112637 (=> res!616959 e!513334)))

(assert (=> d!112637 (= res!616959 (bvsge #b00000000000000000000000000000000 (size!26612 _keys!1487)))))

(assert (=> d!112637 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881) e!513334)))

(declare-fun b!914798 () Bool)

(declare-fun e!513332 () Bool)

(assert (=> b!914798 (= e!513333 e!513332)))

(declare-fun lt!411546 () (_ BitVec 64))

(assert (=> b!914798 (= lt!411546 (select (arr!26152 _keys!1487) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30933 0))(
  ( (Unit!30934) )
))
(declare-fun lt!411548 () Unit!30933)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!54416 (_ BitVec 64) (_ BitVec 32)) Unit!30933)

(assert (=> b!914798 (= lt!411548 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1487 lt!411546 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!54416 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!914798 (arrayContainsKey!0 _keys!1487 lt!411546 #b00000000000000000000000000000000)))

(declare-fun lt!411547 () Unit!30933)

(assert (=> b!914798 (= lt!411547 lt!411548)))

(declare-fun res!616958 () Bool)

(declare-datatypes ((SeekEntryResult!8960 0))(
  ( (MissingZero!8960 (index!38210 (_ BitVec 32))) (Found!8960 (index!38211 (_ BitVec 32))) (Intermediate!8960 (undefined!9772 Bool) (index!38212 (_ BitVec 32)) (x!78248 (_ BitVec 32))) (Undefined!8960) (MissingVacant!8960 (index!38213 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!54416 (_ BitVec 32)) SeekEntryResult!8960)

(assert (=> b!914798 (= res!616958 (= (seekEntryOrOpen!0 (select (arr!26152 _keys!1487) #b00000000000000000000000000000000) _keys!1487 mask!1881) (Found!8960 #b00000000000000000000000000000000)))))

(assert (=> b!914798 (=> (not res!616958) (not e!513332))))

(declare-fun bm!40540 () Bool)

(assert (=> bm!40540 (= call!40543 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1487 mask!1881))))

(declare-fun b!914799 () Bool)

(assert (=> b!914799 (= e!513332 call!40543)))

(assert (= (and d!112637 (not res!616959)) b!914796))

(assert (= (and b!914796 c!95963) b!914798))

(assert (= (and b!914796 (not c!95963)) b!914797))

(assert (= (and b!914798 res!616958) b!914799))

(assert (= (or b!914799 b!914797) bm!40540))

(declare-fun m!849451 () Bool)

(assert (=> b!914796 m!849451))

(assert (=> b!914796 m!849451))

(declare-fun m!849453 () Bool)

(assert (=> b!914796 m!849453))

(assert (=> b!914798 m!849451))

(declare-fun m!849455 () Bool)

(assert (=> b!914798 m!849455))

(declare-fun m!849457 () Bool)

(assert (=> b!914798 m!849457))

(assert (=> b!914798 m!849451))

(declare-fun m!849459 () Bool)

(assert (=> b!914798 m!849459))

(declare-fun m!849461 () Bool)

(assert (=> bm!40540 m!849461))

(assert (=> b!914769 d!112637))

(declare-fun d!112639 () Bool)

(assert (=> d!112639 (= (validMask!0 mask!1881) (and (or (= mask!1881 #b00000000000000000000000000000111) (= mask!1881 #b00000000000000000000000000001111) (= mask!1881 #b00000000000000000000000000011111) (= mask!1881 #b00000000000000000000000000111111) (= mask!1881 #b00000000000000000000000001111111) (= mask!1881 #b00000000000000000000000011111111) (= mask!1881 #b00000000000000000000000111111111) (= mask!1881 #b00000000000000000000001111111111) (= mask!1881 #b00000000000000000000011111111111) (= mask!1881 #b00000000000000000000111111111111) (= mask!1881 #b00000000000000000001111111111111) (= mask!1881 #b00000000000000000011111111111111) (= mask!1881 #b00000000000000000111111111111111) (= mask!1881 #b00000000000000001111111111111111) (= mask!1881 #b00000000000000011111111111111111) (= mask!1881 #b00000000000000111111111111111111) (= mask!1881 #b00000000000001111111111111111111) (= mask!1881 #b00000000000011111111111111111111) (= mask!1881 #b00000000000111111111111111111111) (= mask!1881 #b00000000001111111111111111111111) (= mask!1881 #b00000000011111111111111111111111) (= mask!1881 #b00000000111111111111111111111111) (= mask!1881 #b00000001111111111111111111111111) (= mask!1881 #b00000011111111111111111111111111) (= mask!1881 #b00000111111111111111111111111111) (= mask!1881 #b00001111111111111111111111111111) (= mask!1881 #b00011111111111111111111111111111) (= mask!1881 #b00111111111111111111111111111111)) (bvsle mask!1881 #b00111111111111111111111111111111)))))

(assert (=> start!78480 d!112639))

(declare-fun d!112641 () Bool)

(assert (=> d!112641 (= (array_inv!20406 _values!1231) (bvsge (size!26611 _values!1231) #b00000000000000000000000000000000))))

(assert (=> start!78480 d!112641))

(declare-fun d!112643 () Bool)

(assert (=> d!112643 (= (array_inv!20407 _keys!1487) (bvsge (size!26612 _keys!1487) #b00000000000000000000000000000000))))

(assert (=> start!78480 d!112643))

(declare-fun condMapEmpty!30558 () Bool)

(declare-fun mapDefault!30558 () ValueCell!9120)

(assert (=> mapNonEmpty!30552 (= condMapEmpty!30558 (= mapRest!30552 ((as const (Array (_ BitVec 32) ValueCell!9120)) mapDefault!30558)))))

(declare-fun e!513339 () Bool)

(declare-fun mapRes!30558 () Bool)

(assert (=> mapNonEmpty!30552 (= tp!58620 (and e!513339 mapRes!30558))))

(declare-fun mapNonEmpty!30558 () Bool)

(declare-fun tp!58626 () Bool)

(declare-fun e!513340 () Bool)

(assert (=> mapNonEmpty!30558 (= mapRes!30558 (and tp!58626 e!513340))))

(declare-fun mapKey!30558 () (_ BitVec 32))

(declare-fun mapRest!30558 () (Array (_ BitVec 32) ValueCell!9120))

(declare-fun mapValue!30558 () ValueCell!9120)

(assert (=> mapNonEmpty!30558 (= mapRest!30552 (store mapRest!30558 mapKey!30558 mapValue!30558))))

(declare-fun b!914807 () Bool)

(assert (=> b!914807 (= e!513339 tp_is_empty!19203)))

(declare-fun mapIsEmpty!30558 () Bool)

(assert (=> mapIsEmpty!30558 mapRes!30558))

(declare-fun b!914806 () Bool)

(assert (=> b!914806 (= e!513340 tp_is_empty!19203)))

(assert (= (and mapNonEmpty!30552 condMapEmpty!30558) mapIsEmpty!30558))

(assert (= (and mapNonEmpty!30552 (not condMapEmpty!30558)) mapNonEmpty!30558))

(assert (= (and mapNonEmpty!30558 ((_ is ValueCellFull!9120) mapValue!30558)) b!914806))

(assert (= (and mapNonEmpty!30552 ((_ is ValueCellFull!9120) mapDefault!30558)) b!914807))

(declare-fun m!849463 () Bool)

(assert (=> mapNonEmpty!30558 m!849463))

(check-sat (not b!914796) (not bm!40540) (not b!914798) tp_is_empty!19203 (not mapNonEmpty!30558))
(check-sat)
