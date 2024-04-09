; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106974 () Bool)

(assert start!106974)

(declare-fun b!1268150 () Bool)

(declare-fun e!722619 () Bool)

(declare-fun e!722616 () Bool)

(declare-fun mapRes!50548 () Bool)

(assert (=> b!1268150 (= e!722619 (and e!722616 mapRes!50548))))

(declare-fun condMapEmpty!50548 () Bool)

(declare-datatypes ((V!48725 0))(
  ( (V!48726 (val!16399 Int)) )
))
(declare-datatypes ((ValueCell!15471 0))(
  ( (ValueCellFull!15471 (v!19033 V!48725)) (EmptyCell!15471) )
))
(declare-datatypes ((array!82549 0))(
  ( (array!82550 (arr!39809 (Array (_ BitVec 32) ValueCell!15471)) (size!40346 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82549)

(declare-fun mapDefault!50548 () ValueCell!15471)

(assert (=> b!1268150 (= condMapEmpty!50548 (= (arr!39809 _values!1134) ((as const (Array (_ BitVec 32) ValueCell!15471)) mapDefault!50548)))))

(declare-fun b!1268151 () Bool)

(declare-fun res!844158 () Bool)

(declare-fun e!722615 () Bool)

(assert (=> b!1268151 (=> (not res!844158) (not e!722615))))

(declare-fun extraKeysBefore!81 () (_ BitVec 32))

(declare-datatypes ((array!82551 0))(
  ( (array!82552 (arr!39810 (Array (_ BitVec 32) (_ BitVec 64))) (size!40347 (_ BitVec 32))) )
))
(declare-fun _keys!1364 () array!82551)

(declare-fun extraKeysAfter!73 () (_ BitVec 32))

(declare-fun mask!1730 () (_ BitVec 32))

(assert (=> b!1268151 (= res!844158 (and (= (size!40346 _values!1134) (bvadd #b00000000000000000000000000000001 mask!1730)) (= (size!40347 _keys!1364) (size!40346 _values!1134)) (bvsge mask!1730 #b00000000000000000000000000000000) (bvsge extraKeysBefore!81 #b00000000000000000000000000000000) (bvsle extraKeysBefore!81 #b00000000000000000000000000000011) (bvsge extraKeysAfter!73 #b00000000000000000000000000000000) (bvsle extraKeysAfter!73 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!50548 () Bool)

(assert (=> mapIsEmpty!50548 mapRes!50548))

(declare-fun b!1268153 () Bool)

(declare-fun tp_is_empty!32649 () Bool)

(assert (=> b!1268153 (= e!722616 tp_is_empty!32649)))

(declare-fun mapNonEmpty!50548 () Bool)

(declare-fun tp!96728 () Bool)

(declare-fun e!722617 () Bool)

(assert (=> mapNonEmpty!50548 (= mapRes!50548 (and tp!96728 e!722617))))

(declare-fun mapValue!50548 () ValueCell!15471)

(declare-fun mapRest!50548 () (Array (_ BitVec 32) ValueCell!15471))

(declare-fun mapKey!50548 () (_ BitVec 32))

(assert (=> mapNonEmpty!50548 (= (arr!39809 _values!1134) (store mapRest!50548 mapKey!50548 mapValue!50548))))

(declare-fun b!1268154 () Bool)

(declare-fun res!844161 () Bool)

(assert (=> b!1268154 (=> (not res!844161) (not e!722615))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82551 (_ BitVec 32)) Bool)

(assert (=> b!1268154 (= res!844161 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730))))

(declare-fun b!1268155 () Bool)

(declare-fun res!844160 () Bool)

(assert (=> b!1268155 (=> (not res!844160) (not e!722615))))

(assert (=> b!1268155 (= res!844160 (and (bvsle #b00000000000000000000000000000000 (size!40347 _keys!1364)) (bvslt (size!40347 _keys!1364) #b01111111111111111111111111111111)))))

(declare-fun b!1268156 () Bool)

(assert (=> b!1268156 (= e!722617 tp_is_empty!32649)))

(declare-fun b!1268152 () Bool)

(declare-datatypes ((List!28553 0))(
  ( (Nil!28550) (Cons!28549 (h!29758 (_ BitVec 64)) (t!42089 List!28553)) )
))
(declare-fun noDuplicate!2069 (List!28553) Bool)

(assert (=> b!1268152 (= e!722615 (not (noDuplicate!2069 Nil!28550)))))

(declare-fun res!844159 () Bool)

(assert (=> start!106974 (=> (not res!844159) (not e!722615))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106974 (= res!844159 (validMask!0 mask!1730))))

(assert (=> start!106974 e!722615))

(declare-fun array_inv!30251 (array!82549) Bool)

(assert (=> start!106974 (and (array_inv!30251 _values!1134) e!722619)))

(assert (=> start!106974 true))

(declare-fun array_inv!30252 (array!82551) Bool)

(assert (=> start!106974 (array_inv!30252 _keys!1364)))

(assert (= (and start!106974 res!844159) b!1268151))

(assert (= (and b!1268151 res!844158) b!1268154))

(assert (= (and b!1268154 res!844161) b!1268155))

(assert (= (and b!1268155 res!844160) b!1268152))

(assert (= (and b!1268150 condMapEmpty!50548) mapIsEmpty!50548))

(assert (= (and b!1268150 (not condMapEmpty!50548)) mapNonEmpty!50548))

(get-info :version)

(assert (= (and mapNonEmpty!50548 ((_ is ValueCellFull!15471) mapValue!50548)) b!1268156))

(assert (= (and b!1268150 ((_ is ValueCellFull!15471) mapDefault!50548)) b!1268153))

(assert (= start!106974 b!1268150))

(declare-fun m!1167103 () Bool)

(assert (=> mapNonEmpty!50548 m!1167103))

(declare-fun m!1167105 () Bool)

(assert (=> b!1268154 m!1167105))

(declare-fun m!1167107 () Bool)

(assert (=> b!1268152 m!1167107))

(declare-fun m!1167109 () Bool)

(assert (=> start!106974 m!1167109))

(declare-fun m!1167111 () Bool)

(assert (=> start!106974 m!1167111))

(declare-fun m!1167113 () Bool)

(assert (=> start!106974 m!1167113))

(check-sat (not b!1268152) (not mapNonEmpty!50548) (not b!1268154) tp_is_empty!32649 (not start!106974))
(check-sat)
(get-model)

(declare-fun bm!62505 () Bool)

(declare-fun call!62508 () Bool)

(assert (=> bm!62505 (= call!62508 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1364 mask!1730))))

(declare-fun d!139577 () Bool)

(declare-fun res!844178 () Bool)

(declare-fun e!722641 () Bool)

(assert (=> d!139577 (=> res!844178 e!722641)))

(assert (=> d!139577 (= res!844178 (bvsge #b00000000000000000000000000000000 (size!40347 _keys!1364)))))

(assert (=> d!139577 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1364 mask!1730) e!722641)))

(declare-fun b!1268186 () Bool)

(declare-fun e!722643 () Bool)

(assert (=> b!1268186 (= e!722643 call!62508)))

(declare-fun b!1268187 () Bool)

(declare-fun e!722642 () Bool)

(assert (=> b!1268187 (= e!722642 e!722643)))

(declare-fun lt!574344 () (_ BitVec 64))

(assert (=> b!1268187 (= lt!574344 (select (arr!39810 _keys!1364) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42180 0))(
  ( (Unit!42181) )
))
(declare-fun lt!574343 () Unit!42180)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!82551 (_ BitVec 64) (_ BitVec 32)) Unit!42180)

(assert (=> b!1268187 (= lt!574343 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1364 lt!574344 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!82551 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1268187 (arrayContainsKey!0 _keys!1364 lt!574344 #b00000000000000000000000000000000)))

(declare-fun lt!574345 () Unit!42180)

(assert (=> b!1268187 (= lt!574345 lt!574343)))

(declare-fun res!844179 () Bool)

(declare-datatypes ((SeekEntryResult!9982 0))(
  ( (MissingZero!9982 (index!42298 (_ BitVec 32))) (Found!9982 (index!42299 (_ BitVec 32))) (Intermediate!9982 (undefined!10794 Bool) (index!42300 (_ BitVec 32)) (x!111848 (_ BitVec 32))) (Undefined!9982) (MissingVacant!9982 (index!42301 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!82551 (_ BitVec 32)) SeekEntryResult!9982)

(assert (=> b!1268187 (= res!844179 (= (seekEntryOrOpen!0 (select (arr!39810 _keys!1364) #b00000000000000000000000000000000) _keys!1364 mask!1730) (Found!9982 #b00000000000000000000000000000000)))))

(assert (=> b!1268187 (=> (not res!844179) (not e!722643))))

(declare-fun b!1268188 () Bool)

(assert (=> b!1268188 (= e!722642 call!62508)))

(declare-fun b!1268189 () Bool)

(assert (=> b!1268189 (= e!722641 e!722642)))

(declare-fun c!123572 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1268189 (= c!123572 (validKeyInArray!0 (select (arr!39810 _keys!1364) #b00000000000000000000000000000000)))))

(assert (= (and d!139577 (not res!844178)) b!1268189))

(assert (= (and b!1268189 c!123572) b!1268187))

(assert (= (and b!1268189 (not c!123572)) b!1268188))

(assert (= (and b!1268187 res!844179) b!1268186))

(assert (= (or b!1268186 b!1268188) bm!62505))

(declare-fun m!1167127 () Bool)

(assert (=> bm!62505 m!1167127))

(declare-fun m!1167129 () Bool)

(assert (=> b!1268187 m!1167129))

(declare-fun m!1167131 () Bool)

(assert (=> b!1268187 m!1167131))

(declare-fun m!1167133 () Bool)

(assert (=> b!1268187 m!1167133))

(assert (=> b!1268187 m!1167129))

(declare-fun m!1167135 () Bool)

(assert (=> b!1268187 m!1167135))

(assert (=> b!1268189 m!1167129))

(assert (=> b!1268189 m!1167129))

(declare-fun m!1167137 () Bool)

(assert (=> b!1268189 m!1167137))

(assert (=> b!1268154 d!139577))

(declare-fun d!139579 () Bool)

(assert (=> d!139579 (= (validMask!0 mask!1730) (and (or (= mask!1730 #b00000000000000000000000000000111) (= mask!1730 #b00000000000000000000000000001111) (= mask!1730 #b00000000000000000000000000011111) (= mask!1730 #b00000000000000000000000000111111) (= mask!1730 #b00000000000000000000000001111111) (= mask!1730 #b00000000000000000000000011111111) (= mask!1730 #b00000000000000000000000111111111) (= mask!1730 #b00000000000000000000001111111111) (= mask!1730 #b00000000000000000000011111111111) (= mask!1730 #b00000000000000000000111111111111) (= mask!1730 #b00000000000000000001111111111111) (= mask!1730 #b00000000000000000011111111111111) (= mask!1730 #b00000000000000000111111111111111) (= mask!1730 #b00000000000000001111111111111111) (= mask!1730 #b00000000000000011111111111111111) (= mask!1730 #b00000000000000111111111111111111) (= mask!1730 #b00000000000001111111111111111111) (= mask!1730 #b00000000000011111111111111111111) (= mask!1730 #b00000000000111111111111111111111) (= mask!1730 #b00000000001111111111111111111111) (= mask!1730 #b00000000011111111111111111111111) (= mask!1730 #b00000000111111111111111111111111) (= mask!1730 #b00000001111111111111111111111111) (= mask!1730 #b00000011111111111111111111111111) (= mask!1730 #b00000111111111111111111111111111) (= mask!1730 #b00001111111111111111111111111111) (= mask!1730 #b00011111111111111111111111111111) (= mask!1730 #b00111111111111111111111111111111)) (bvsle mask!1730 #b00111111111111111111111111111111)))))

(assert (=> start!106974 d!139579))

(declare-fun d!139581 () Bool)

(assert (=> d!139581 (= (array_inv!30251 _values!1134) (bvsge (size!40346 _values!1134) #b00000000000000000000000000000000))))

(assert (=> start!106974 d!139581))

(declare-fun d!139583 () Bool)

(assert (=> d!139583 (= (array_inv!30252 _keys!1364) (bvsge (size!40347 _keys!1364) #b00000000000000000000000000000000))))

(assert (=> start!106974 d!139583))

(declare-fun d!139585 () Bool)

(declare-fun res!844184 () Bool)

(declare-fun e!722648 () Bool)

(assert (=> d!139585 (=> res!844184 e!722648)))

(assert (=> d!139585 (= res!844184 ((_ is Nil!28550) Nil!28550))))

(assert (=> d!139585 (= (noDuplicate!2069 Nil!28550) e!722648)))

(declare-fun b!1268194 () Bool)

(declare-fun e!722649 () Bool)

(assert (=> b!1268194 (= e!722648 e!722649)))

(declare-fun res!844185 () Bool)

(assert (=> b!1268194 (=> (not res!844185) (not e!722649))))

(declare-fun contains!7678 (List!28553 (_ BitVec 64)) Bool)

(assert (=> b!1268194 (= res!844185 (not (contains!7678 (t!42089 Nil!28550) (h!29758 Nil!28550))))))

(declare-fun b!1268195 () Bool)

(assert (=> b!1268195 (= e!722649 (noDuplicate!2069 (t!42089 Nil!28550)))))

(assert (= (and d!139585 (not res!844184)) b!1268194))

(assert (= (and b!1268194 res!844185) b!1268195))

(declare-fun m!1167139 () Bool)

(assert (=> b!1268194 m!1167139))

(declare-fun m!1167141 () Bool)

(assert (=> b!1268195 m!1167141))

(assert (=> b!1268152 d!139585))

(declare-fun b!1268202 () Bool)

(declare-fun e!722654 () Bool)

(assert (=> b!1268202 (= e!722654 tp_is_empty!32649)))

(declare-fun b!1268203 () Bool)

(declare-fun e!722655 () Bool)

(assert (=> b!1268203 (= e!722655 tp_is_empty!32649)))

(declare-fun mapNonEmpty!50554 () Bool)

(declare-fun mapRes!50554 () Bool)

(declare-fun tp!96734 () Bool)

(assert (=> mapNonEmpty!50554 (= mapRes!50554 (and tp!96734 e!722654))))

(declare-fun mapRest!50554 () (Array (_ BitVec 32) ValueCell!15471))

(declare-fun mapKey!50554 () (_ BitVec 32))

(declare-fun mapValue!50554 () ValueCell!15471)

(assert (=> mapNonEmpty!50554 (= mapRest!50548 (store mapRest!50554 mapKey!50554 mapValue!50554))))

(declare-fun mapIsEmpty!50554 () Bool)

(assert (=> mapIsEmpty!50554 mapRes!50554))

(declare-fun condMapEmpty!50554 () Bool)

(declare-fun mapDefault!50554 () ValueCell!15471)

(assert (=> mapNonEmpty!50548 (= condMapEmpty!50554 (= mapRest!50548 ((as const (Array (_ BitVec 32) ValueCell!15471)) mapDefault!50554)))))

(assert (=> mapNonEmpty!50548 (= tp!96728 (and e!722655 mapRes!50554))))

(assert (= (and mapNonEmpty!50548 condMapEmpty!50554) mapIsEmpty!50554))

(assert (= (and mapNonEmpty!50548 (not condMapEmpty!50554)) mapNonEmpty!50554))

(assert (= (and mapNonEmpty!50554 ((_ is ValueCellFull!15471) mapValue!50554)) b!1268202))

(assert (= (and mapNonEmpty!50548 ((_ is ValueCellFull!15471) mapDefault!50554)) b!1268203))

(declare-fun m!1167143 () Bool)

(assert (=> mapNonEmpty!50554 m!1167143))

(check-sat (not bm!62505) (not mapNonEmpty!50554) (not b!1268194) tp_is_empty!32649 (not b!1268195) (not b!1268187) (not b!1268189))
(check-sat)
