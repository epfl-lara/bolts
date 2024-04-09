; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72270 () Bool)

(assert start!72270)

(declare-fun mapIsEmpty!24566 () Bool)

(declare-fun mapRes!24566 () Bool)

(assert (=> mapIsEmpty!24566 mapRes!24566))

(declare-fun b!837052 () Bool)

(declare-fun res!569413 () Bool)

(declare-fun e!467165 () Bool)

(assert (=> b!837052 (=> (not res!569413) (not e!467165))))

(declare-datatypes ((array!46896 0))(
  ( (array!46897 (arr!22477 (Array (_ BitVec 32) (_ BitVec 64))) (size!22918 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!46896)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46896 (_ BitVec 32)) Bool)

(assert (=> b!837052 (= res!569413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!569415 () Bool)

(assert (=> start!72270 (=> (not res!569415) (not e!467165))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72270 (= res!569415 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22918 _keys!868))))))

(assert (=> start!72270 e!467165))

(assert (=> start!72270 true))

(declare-fun array_inv!17896 (array!46896) Bool)

(assert (=> start!72270 (array_inv!17896 _keys!868)))

(declare-datatypes ((V!25467 0))(
  ( (V!25468 (val!7705 Int)) )
))
(declare-datatypes ((ValueCell!7218 0))(
  ( (ValueCellFull!7218 (v!10125 V!25467)) (EmptyCell!7218) )
))
(declare-datatypes ((array!46898 0))(
  ( (array!46899 (arr!22478 (Array (_ BitVec 32) ValueCell!7218)) (size!22919 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46898)

(declare-fun e!467164 () Bool)

(declare-fun array_inv!17897 (array!46898) Bool)

(assert (=> start!72270 (and (array_inv!17897 _values!688) e!467164)))

(declare-fun mapNonEmpty!24566 () Bool)

(declare-fun tp!47561 () Bool)

(declare-fun e!467163 () Bool)

(assert (=> mapNonEmpty!24566 (= mapRes!24566 (and tp!47561 e!467163))))

(declare-fun mapRest!24566 () (Array (_ BitVec 32) ValueCell!7218))

(declare-fun mapValue!24566 () ValueCell!7218)

(declare-fun mapKey!24566 () (_ BitVec 32))

(assert (=> mapNonEmpty!24566 (= (arr!22478 _values!688) (store mapRest!24566 mapKey!24566 mapValue!24566))))

(declare-fun b!837053 () Bool)

(declare-datatypes ((List!16076 0))(
  ( (Nil!16073) (Cons!16072 (h!17203 (_ BitVec 64)) (t!22455 List!16076)) )
))
(declare-fun noDuplicate!1297 (List!16076) Bool)

(assert (=> b!837053 (= e!467165 (not (noDuplicate!1297 Nil!16073)))))

(declare-fun b!837054 () Bool)

(declare-fun tp_is_empty!15315 () Bool)

(assert (=> b!837054 (= e!467163 tp_is_empty!15315)))

(declare-fun b!837055 () Bool)

(declare-fun res!569416 () Bool)

(assert (=> b!837055 (=> (not res!569416) (not e!467165))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837055 (= res!569416 (validMask!0 mask!1196))))

(declare-fun b!837056 () Bool)

(declare-fun res!569412 () Bool)

(assert (=> b!837056 (=> (not res!569412) (not e!467165))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!837056 (= res!569412 (and (= (size!22919 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22918 _keys!868) (size!22919 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!837057 () Bool)

(declare-fun res!569414 () Bool)

(assert (=> b!837057 (=> (not res!569414) (not e!467165))))

(assert (=> b!837057 (= res!569414 (and (bvsle #b00000000000000000000000000000000 (size!22918 _keys!868)) (bvslt (size!22918 _keys!868) #b01111111111111111111111111111111)))))

(declare-fun b!837058 () Bool)

(declare-fun e!467166 () Bool)

(assert (=> b!837058 (= e!467166 tp_is_empty!15315)))

(declare-fun b!837059 () Bool)

(assert (=> b!837059 (= e!467164 (and e!467166 mapRes!24566))))

(declare-fun condMapEmpty!24566 () Bool)

(declare-fun mapDefault!24566 () ValueCell!7218)

(assert (=> b!837059 (= condMapEmpty!24566 (= (arr!22478 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7218)) mapDefault!24566)))))

(assert (= (and start!72270 res!569415) b!837055))

(assert (= (and b!837055 res!569416) b!837056))

(assert (= (and b!837056 res!569412) b!837052))

(assert (= (and b!837052 res!569413) b!837057))

(assert (= (and b!837057 res!569414) b!837053))

(assert (= (and b!837059 condMapEmpty!24566) mapIsEmpty!24566))

(assert (= (and b!837059 (not condMapEmpty!24566)) mapNonEmpty!24566))

(get-info :version)

(assert (= (and mapNonEmpty!24566 ((_ is ValueCellFull!7218) mapValue!24566)) b!837054))

(assert (= (and b!837059 ((_ is ValueCellFull!7218) mapDefault!24566)) b!837058))

(assert (= start!72270 b!837059))

(declare-fun m!782107 () Bool)

(assert (=> mapNonEmpty!24566 m!782107))

(declare-fun m!782109 () Bool)

(assert (=> b!837052 m!782109))

(declare-fun m!782111 () Bool)

(assert (=> start!72270 m!782111))

(declare-fun m!782113 () Bool)

(assert (=> start!72270 m!782113))

(declare-fun m!782115 () Bool)

(assert (=> b!837053 m!782115))

(declare-fun m!782117 () Bool)

(assert (=> b!837055 m!782117))

(check-sat (not b!837053) tp_is_empty!15315 (not b!837052) (not b!837055) (not mapNonEmpty!24566) (not start!72270))
(check-sat)
(get-model)

(declare-fun d!107733 () Bool)

(declare-fun res!569437 () Bool)

(declare-fun e!467191 () Bool)

(assert (=> d!107733 (=> res!569437 e!467191)))

(assert (=> d!107733 (= res!569437 (bvsge #b00000000000000000000000000000000 (size!22918 _keys!868)))))

(assert (=> d!107733 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196) e!467191)))

(declare-fun b!837092 () Bool)

(declare-fun e!467190 () Bool)

(assert (=> b!837092 (= e!467191 e!467190)))

(declare-fun c!91068 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!837092 (= c!91068 (validKeyInArray!0 (select (arr!22477 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun bm!36815 () Bool)

(declare-fun call!36818 () Bool)

(assert (=> bm!36815 (= call!36818 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!868 mask!1196))))

(declare-fun b!837093 () Bool)

(assert (=> b!837093 (= e!467190 call!36818)))

(declare-fun b!837094 () Bool)

(declare-fun e!467189 () Bool)

(assert (=> b!837094 (= e!467189 call!36818)))

(declare-fun b!837095 () Bool)

(assert (=> b!837095 (= e!467190 e!467189)))

(declare-fun lt!380483 () (_ BitVec 64))

(assert (=> b!837095 (= lt!380483 (select (arr!22477 _keys!868) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!28774 0))(
  ( (Unit!28775) )
))
(declare-fun lt!380482 () Unit!28774)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!46896 (_ BitVec 64) (_ BitVec 32)) Unit!28774)

(assert (=> b!837095 (= lt!380482 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!868 lt!380483 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!46896 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!837095 (arrayContainsKey!0 _keys!868 lt!380483 #b00000000000000000000000000000000)))

(declare-fun lt!380481 () Unit!28774)

(assert (=> b!837095 (= lt!380481 lt!380482)))

(declare-fun res!569436 () Bool)

(declare-datatypes ((SeekEntryResult!8736 0))(
  ( (MissingZero!8736 (index!37314 (_ BitVec 32))) (Found!8736 (index!37315 (_ BitVec 32))) (Intermediate!8736 (undefined!9548 Bool) (index!37316 (_ BitVec 32)) (x!70704 (_ BitVec 32))) (Undefined!8736) (MissingVacant!8736 (index!37317 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!46896 (_ BitVec 32)) SeekEntryResult!8736)

(assert (=> b!837095 (= res!569436 (= (seekEntryOrOpen!0 (select (arr!22477 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196) (Found!8736 #b00000000000000000000000000000000)))))

(assert (=> b!837095 (=> (not res!569436) (not e!467189))))

(assert (= (and d!107733 (not res!569437)) b!837092))

(assert (= (and b!837092 c!91068) b!837095))

(assert (= (and b!837092 (not c!91068)) b!837093))

(assert (= (and b!837095 res!569436) b!837094))

(assert (= (or b!837094 b!837093) bm!36815))

(declare-fun m!782131 () Bool)

(assert (=> b!837092 m!782131))

(assert (=> b!837092 m!782131))

(declare-fun m!782133 () Bool)

(assert (=> b!837092 m!782133))

(declare-fun m!782135 () Bool)

(assert (=> bm!36815 m!782135))

(assert (=> b!837095 m!782131))

(declare-fun m!782137 () Bool)

(assert (=> b!837095 m!782137))

(declare-fun m!782139 () Bool)

(assert (=> b!837095 m!782139))

(assert (=> b!837095 m!782131))

(declare-fun m!782141 () Bool)

(assert (=> b!837095 m!782141))

(assert (=> b!837052 d!107733))

(declare-fun d!107735 () Bool)

(assert (=> d!107735 (= (array_inv!17896 _keys!868) (bvsge (size!22918 _keys!868) #b00000000000000000000000000000000))))

(assert (=> start!72270 d!107735))

(declare-fun d!107737 () Bool)

(assert (=> d!107737 (= (array_inv!17897 _values!688) (bvsge (size!22919 _values!688) #b00000000000000000000000000000000))))

(assert (=> start!72270 d!107737))

(declare-fun d!107739 () Bool)

(assert (=> d!107739 (= (validMask!0 mask!1196) (and (or (= mask!1196 #b00000000000000000000000000000111) (= mask!1196 #b00000000000000000000000000001111) (= mask!1196 #b00000000000000000000000000011111) (= mask!1196 #b00000000000000000000000000111111) (= mask!1196 #b00000000000000000000000001111111) (= mask!1196 #b00000000000000000000000011111111) (= mask!1196 #b00000000000000000000000111111111) (= mask!1196 #b00000000000000000000001111111111) (= mask!1196 #b00000000000000000000011111111111) (= mask!1196 #b00000000000000000000111111111111) (= mask!1196 #b00000000000000000001111111111111) (= mask!1196 #b00000000000000000011111111111111) (= mask!1196 #b00000000000000000111111111111111) (= mask!1196 #b00000000000000001111111111111111) (= mask!1196 #b00000000000000011111111111111111) (= mask!1196 #b00000000000000111111111111111111) (= mask!1196 #b00000000000001111111111111111111) (= mask!1196 #b00000000000011111111111111111111) (= mask!1196 #b00000000000111111111111111111111) (= mask!1196 #b00000000001111111111111111111111) (= mask!1196 #b00000000011111111111111111111111) (= mask!1196 #b00000000111111111111111111111111) (= mask!1196 #b00000001111111111111111111111111) (= mask!1196 #b00000011111111111111111111111111) (= mask!1196 #b00000111111111111111111111111111) (= mask!1196 #b00001111111111111111111111111111) (= mask!1196 #b00011111111111111111111111111111) (= mask!1196 #b00111111111111111111111111111111)) (bvsle mask!1196 #b00111111111111111111111111111111)))))

(assert (=> b!837055 d!107739))

(declare-fun d!107741 () Bool)

(declare-fun res!569442 () Bool)

(declare-fun e!467196 () Bool)

(assert (=> d!107741 (=> res!569442 e!467196)))

(assert (=> d!107741 (= res!569442 ((_ is Nil!16073) Nil!16073))))

(assert (=> d!107741 (= (noDuplicate!1297 Nil!16073) e!467196)))

(declare-fun b!837100 () Bool)

(declare-fun e!467197 () Bool)

(assert (=> b!837100 (= e!467196 e!467197)))

(declare-fun res!569443 () Bool)

(assert (=> b!837100 (=> (not res!569443) (not e!467197))))

(declare-fun contains!4214 (List!16076 (_ BitVec 64)) Bool)

(assert (=> b!837100 (= res!569443 (not (contains!4214 (t!22455 Nil!16073) (h!17203 Nil!16073))))))

(declare-fun b!837101 () Bool)

(assert (=> b!837101 (= e!467197 (noDuplicate!1297 (t!22455 Nil!16073)))))

(assert (= (and d!107741 (not res!569442)) b!837100))

(assert (= (and b!837100 res!569443) b!837101))

(declare-fun m!782143 () Bool)

(assert (=> b!837100 m!782143))

(declare-fun m!782145 () Bool)

(assert (=> b!837101 m!782145))

(assert (=> b!837053 d!107741))

(declare-fun b!837109 () Bool)

(declare-fun e!467202 () Bool)

(assert (=> b!837109 (= e!467202 tp_is_empty!15315)))

(declare-fun mapIsEmpty!24572 () Bool)

(declare-fun mapRes!24572 () Bool)

(assert (=> mapIsEmpty!24572 mapRes!24572))

(declare-fun b!837108 () Bool)

(declare-fun e!467203 () Bool)

(assert (=> b!837108 (= e!467203 tp_is_empty!15315)))

(declare-fun mapNonEmpty!24572 () Bool)

(declare-fun tp!47567 () Bool)

(assert (=> mapNonEmpty!24572 (= mapRes!24572 (and tp!47567 e!467203))))

(declare-fun mapValue!24572 () ValueCell!7218)

(declare-fun mapRest!24572 () (Array (_ BitVec 32) ValueCell!7218))

(declare-fun mapKey!24572 () (_ BitVec 32))

(assert (=> mapNonEmpty!24572 (= mapRest!24566 (store mapRest!24572 mapKey!24572 mapValue!24572))))

(declare-fun condMapEmpty!24572 () Bool)

(declare-fun mapDefault!24572 () ValueCell!7218)

(assert (=> mapNonEmpty!24566 (= condMapEmpty!24572 (= mapRest!24566 ((as const (Array (_ BitVec 32) ValueCell!7218)) mapDefault!24572)))))

(assert (=> mapNonEmpty!24566 (= tp!47561 (and e!467202 mapRes!24572))))

(assert (= (and mapNonEmpty!24566 condMapEmpty!24572) mapIsEmpty!24572))

(assert (= (and mapNonEmpty!24566 (not condMapEmpty!24572)) mapNonEmpty!24572))

(assert (= (and mapNonEmpty!24572 ((_ is ValueCellFull!7218) mapValue!24572)) b!837108))

(assert (= (and mapNonEmpty!24566 ((_ is ValueCellFull!7218) mapDefault!24572)) b!837109))

(declare-fun m!782147 () Bool)

(assert (=> mapNonEmpty!24572 m!782147))

(check-sat (not b!837100) (not b!837095) (not b!837101) (not b!837092) (not mapNonEmpty!24572) (not bm!36815) tp_is_empty!15315)
(check-sat)
