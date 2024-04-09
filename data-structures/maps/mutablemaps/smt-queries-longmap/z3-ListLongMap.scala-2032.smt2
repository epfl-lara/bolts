; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35358 () Bool)

(assert start!35358)

(declare-fun mapNonEmpty!13227 () Bool)

(declare-fun mapRes!13227 () Bool)

(declare-fun tp!27123 () Bool)

(declare-fun e!216770 () Bool)

(assert (=> mapNonEmpty!13227 (= mapRes!13227 (and tp!27123 e!216770))))

(declare-datatypes ((V!11397 0))(
  ( (V!11398 (val!3952 Int)) )
))
(declare-datatypes ((ValueCell!3564 0))(
  ( (ValueCellFull!3564 (v!6142 V!11397)) (EmptyCell!3564) )
))
(declare-fun mapRest!13227 () (Array (_ BitVec 32) ValueCell!3564))

(declare-fun mapKey!13227 () (_ BitVec 32))

(declare-fun mapValue!13227 () ValueCell!3564)

(declare-datatypes ((array!19187 0))(
  ( (array!19188 (arr!9085 (Array (_ BitVec 32) ValueCell!3564)) (size!9437 (_ BitVec 32))) )
))
(declare-fun _values!1208 () array!19187)

(assert (=> mapNonEmpty!13227 (= (arr!9085 _values!1208) (store mapRest!13227 mapKey!13227 mapValue!13227))))

(declare-fun b!353798 () Bool)

(declare-fun e!216769 () Bool)

(declare-fun e!216772 () Bool)

(assert (=> b!353798 (= e!216769 (and e!216772 mapRes!13227))))

(declare-fun condMapEmpty!13227 () Bool)

(declare-fun mapDefault!13227 () ValueCell!3564)

(assert (=> b!353798 (= condMapEmpty!13227 (= (arr!9085 _values!1208) ((as const (Array (_ BitVec 32) ValueCell!3564)) mapDefault!13227)))))

(declare-fun b!353799 () Bool)

(declare-fun e!216773 () Bool)

(declare-fun from!1805 () (_ BitVec 32))

(declare-datatypes ((array!19189 0))(
  ( (array!19190 (arr!9086 (Array (_ BitVec 32) (_ BitVec 64))) (size!9438 (_ BitVec 32))) )
))
(declare-fun _keys!1456 () array!19189)

(assert (=> b!353799 (= e!216773 (and (bvsge from!1805 #b00000000000000000000000000000000) (bvslt from!1805 (size!9438 _keys!1456)) (bvsge (size!9438 _keys!1456) #b01111111111111111111111111111111)))))

(declare-fun b!353800 () Bool)

(declare-fun res!196213 () Bool)

(assert (=> b!353800 (=> (not res!196213) (not e!216773))))

(declare-fun mask!1842 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19189 (_ BitVec 32)) Bool)

(assert (=> b!353800 (= res!196213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842))))

(declare-fun b!353801 () Bool)

(declare-fun res!196215 () Bool)

(assert (=> b!353801 (=> (not res!196215) (not e!216773))))

(declare-fun k0!1077 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!353801 (= res!196215 (validKeyInArray!0 k0!1077))))

(declare-fun b!353802 () Bool)

(declare-fun tp_is_empty!7815 () Bool)

(assert (=> b!353802 (= e!216772 tp_is_empty!7815)))

(declare-fun mapIsEmpty!13227 () Bool)

(assert (=> mapIsEmpty!13227 mapRes!13227))

(declare-fun b!353803 () Bool)

(declare-fun res!196212 () Bool)

(assert (=> b!353803 (=> (not res!196212) (not e!216773))))

(declare-fun extraKeys!1129 () (_ BitVec 32))

(assert (=> b!353803 (= res!196212 (and (= (size!9437 _values!1208) (bvadd #b00000000000000000000000000000001 mask!1842)) (= (size!9438 _keys!1456) (size!9437 _values!1208)) (bvsge mask!1842 #b00000000000000000000000000000000) (bvsge extraKeys!1129 #b00000000000000000000000000000000) (bvsle extraKeys!1129 #b00000000000000000000000000000011)))))

(declare-fun res!196216 () Bool)

(assert (=> start!35358 (=> (not res!196216) (not e!216773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35358 (= res!196216 (validMask!0 mask!1842))))

(assert (=> start!35358 e!216773))

(assert (=> start!35358 true))

(declare-fun array_inv!6686 (array!19189) Bool)

(assert (=> start!35358 (array_inv!6686 _keys!1456)))

(declare-fun array_inv!6687 (array!19187) Bool)

(assert (=> start!35358 (and (array_inv!6687 _values!1208) e!216769)))

(declare-fun b!353804 () Bool)

(assert (=> b!353804 (= e!216770 tp_is_empty!7815)))

(declare-fun b!353805 () Bool)

(declare-fun res!196214 () Bool)

(assert (=> b!353805 (=> (not res!196214) (not e!216773))))

(declare-datatypes ((List!5304 0))(
  ( (Nil!5301) (Cons!5300 (h!6156 (_ BitVec 64)) (t!10462 List!5304)) )
))
(declare-fun arrayNoDuplicates!0 (array!19189 (_ BitVec 32) List!5304) Bool)

(assert (=> b!353805 (= res!196214 (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5301))))

(assert (= (and start!35358 res!196216) b!353803))

(assert (= (and b!353803 res!196212) b!353800))

(assert (= (and b!353800 res!196213) b!353805))

(assert (= (and b!353805 res!196214) b!353801))

(assert (= (and b!353801 res!196215) b!353799))

(assert (= (and b!353798 condMapEmpty!13227) mapIsEmpty!13227))

(assert (= (and b!353798 (not condMapEmpty!13227)) mapNonEmpty!13227))

(get-info :version)

(assert (= (and mapNonEmpty!13227 ((_ is ValueCellFull!3564) mapValue!13227)) b!353804))

(assert (= (and b!353798 ((_ is ValueCellFull!3564) mapDefault!13227)) b!353802))

(assert (= start!35358 b!353798))

(declare-fun m!353009 () Bool)

(assert (=> b!353800 m!353009))

(declare-fun m!353011 () Bool)

(assert (=> mapNonEmpty!13227 m!353011))

(declare-fun m!353013 () Bool)

(assert (=> start!35358 m!353013))

(declare-fun m!353015 () Bool)

(assert (=> start!35358 m!353015))

(declare-fun m!353017 () Bool)

(assert (=> start!35358 m!353017))

(declare-fun m!353019 () Bool)

(assert (=> b!353801 m!353019))

(declare-fun m!353021 () Bool)

(assert (=> b!353805 m!353021))

(check-sat (not mapNonEmpty!13227) (not start!35358) (not b!353800) (not b!353801) tp_is_empty!7815 (not b!353805))
(check-sat)
(get-model)

(declare-fun d!71541 () Bool)

(assert (=> d!71541 (= (validMask!0 mask!1842) (and (or (= mask!1842 #b00000000000000000000000000000111) (= mask!1842 #b00000000000000000000000000001111) (= mask!1842 #b00000000000000000000000000011111) (= mask!1842 #b00000000000000000000000000111111) (= mask!1842 #b00000000000000000000000001111111) (= mask!1842 #b00000000000000000000000011111111) (= mask!1842 #b00000000000000000000000111111111) (= mask!1842 #b00000000000000000000001111111111) (= mask!1842 #b00000000000000000000011111111111) (= mask!1842 #b00000000000000000000111111111111) (= mask!1842 #b00000000000000000001111111111111) (= mask!1842 #b00000000000000000011111111111111) (= mask!1842 #b00000000000000000111111111111111) (= mask!1842 #b00000000000000001111111111111111) (= mask!1842 #b00000000000000011111111111111111) (= mask!1842 #b00000000000000111111111111111111) (= mask!1842 #b00000000000001111111111111111111) (= mask!1842 #b00000000000011111111111111111111) (= mask!1842 #b00000000000111111111111111111111) (= mask!1842 #b00000000001111111111111111111111) (= mask!1842 #b00000000011111111111111111111111) (= mask!1842 #b00000000111111111111111111111111) (= mask!1842 #b00000001111111111111111111111111) (= mask!1842 #b00000011111111111111111111111111) (= mask!1842 #b00000111111111111111111111111111) (= mask!1842 #b00001111111111111111111111111111) (= mask!1842 #b00011111111111111111111111111111) (= mask!1842 #b00111111111111111111111111111111)) (bvsle mask!1842 #b00111111111111111111111111111111)))))

(assert (=> start!35358 d!71541))

(declare-fun d!71543 () Bool)

(assert (=> d!71543 (= (array_inv!6686 _keys!1456) (bvsge (size!9438 _keys!1456) #b00000000000000000000000000000000))))

(assert (=> start!35358 d!71543))

(declare-fun d!71545 () Bool)

(assert (=> d!71545 (= (array_inv!6687 _values!1208) (bvsge (size!9437 _values!1208) #b00000000000000000000000000000000))))

(assert (=> start!35358 d!71545))

(declare-fun d!71547 () Bool)

(declare-fun res!196238 () Bool)

(declare-fun e!216798 () Bool)

(assert (=> d!71547 (=> res!196238 e!216798)))

(assert (=> d!71547 (= res!196238 (bvsge #b00000000000000000000000000000000 (size!9438 _keys!1456)))))

(assert (=> d!71547 (= (arrayNoDuplicates!0 _keys!1456 #b00000000000000000000000000000000 Nil!5301) e!216798)))

(declare-fun b!353840 () Bool)

(declare-fun e!216800 () Bool)

(declare-fun e!216799 () Bool)

(assert (=> b!353840 (= e!216800 e!216799)))

(declare-fun c!53627 () Bool)

(assert (=> b!353840 (= c!53627 (validKeyInArray!0 (select (arr!9086 _keys!1456) #b00000000000000000000000000000000)))))

(declare-fun b!353841 () Bool)

(declare-fun e!216797 () Bool)

(declare-fun contains!2383 (List!5304 (_ BitVec 64)) Bool)

(assert (=> b!353841 (= e!216797 (contains!2383 Nil!5301 (select (arr!9086 _keys!1456) #b00000000000000000000000000000000)))))

(declare-fun b!353842 () Bool)

(declare-fun call!27152 () Bool)

(assert (=> b!353842 (= e!216799 call!27152)))

(declare-fun bm!27149 () Bool)

(assert (=> bm!27149 (= call!27152 (arrayNoDuplicates!0 _keys!1456 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53627 (Cons!5300 (select (arr!9086 _keys!1456) #b00000000000000000000000000000000) Nil!5301) Nil!5301)))))

(declare-fun b!353843 () Bool)

(assert (=> b!353843 (= e!216799 call!27152)))

(declare-fun b!353844 () Bool)

(assert (=> b!353844 (= e!216798 e!216800)))

(declare-fun res!196239 () Bool)

(assert (=> b!353844 (=> (not res!196239) (not e!216800))))

(assert (=> b!353844 (= res!196239 (not e!216797))))

(declare-fun res!196240 () Bool)

(assert (=> b!353844 (=> (not res!196240) (not e!216797))))

(assert (=> b!353844 (= res!196240 (validKeyInArray!0 (select (arr!9086 _keys!1456) #b00000000000000000000000000000000)))))

(assert (= (and d!71547 (not res!196238)) b!353844))

(assert (= (and b!353844 res!196240) b!353841))

(assert (= (and b!353844 res!196239) b!353840))

(assert (= (and b!353840 c!53627) b!353842))

(assert (= (and b!353840 (not c!53627)) b!353843))

(assert (= (or b!353842 b!353843) bm!27149))

(declare-fun m!353037 () Bool)

(assert (=> b!353840 m!353037))

(assert (=> b!353840 m!353037))

(declare-fun m!353039 () Bool)

(assert (=> b!353840 m!353039))

(assert (=> b!353841 m!353037))

(assert (=> b!353841 m!353037))

(declare-fun m!353041 () Bool)

(assert (=> b!353841 m!353041))

(assert (=> bm!27149 m!353037))

(declare-fun m!353043 () Bool)

(assert (=> bm!27149 m!353043))

(assert (=> b!353844 m!353037))

(assert (=> b!353844 m!353037))

(assert (=> b!353844 m!353039))

(assert (=> b!353805 d!71547))

(declare-fun d!71549 () Bool)

(assert (=> d!71549 (= (validKeyInArray!0 k0!1077) (and (not (= k0!1077 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1077 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!353801 d!71549))

(declare-fun b!353853 () Bool)

(declare-fun e!216807 () Bool)

(declare-fun call!27155 () Bool)

(assert (=> b!353853 (= e!216807 call!27155)))

(declare-fun b!353854 () Bool)

(declare-fun e!216809 () Bool)

(assert (=> b!353854 (= e!216809 call!27155)))

(declare-fun b!353855 () Bool)

(assert (=> b!353855 (= e!216807 e!216809)))

(declare-fun lt!165601 () (_ BitVec 64))

(assert (=> b!353855 (= lt!165601 (select (arr!9086 _keys!1456) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10923 0))(
  ( (Unit!10924) )
))
(declare-fun lt!165600 () Unit!10923)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!19189 (_ BitVec 64) (_ BitVec 32)) Unit!10923)

(assert (=> b!353855 (= lt!165600 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1456 lt!165601 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!19189 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!353855 (arrayContainsKey!0 _keys!1456 lt!165601 #b00000000000000000000000000000000)))

(declare-fun lt!165599 () Unit!10923)

(assert (=> b!353855 (= lt!165599 lt!165600)))

(declare-fun res!196245 () Bool)

(declare-datatypes ((SeekEntryResult!3478 0))(
  ( (MissingZero!3478 (index!16091 (_ BitVec 32))) (Found!3478 (index!16092 (_ BitVec 32))) (Intermediate!3478 (undefined!4290 Bool) (index!16093 (_ BitVec 32)) (x!35233 (_ BitVec 32))) (Undefined!3478) (MissingVacant!3478 (index!16094 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!19189 (_ BitVec 32)) SeekEntryResult!3478)

(assert (=> b!353855 (= res!196245 (= (seekEntryOrOpen!0 (select (arr!9086 _keys!1456) #b00000000000000000000000000000000) _keys!1456 mask!1842) (Found!3478 #b00000000000000000000000000000000)))))

(assert (=> b!353855 (=> (not res!196245) (not e!216809))))

(declare-fun b!353856 () Bool)

(declare-fun e!216808 () Bool)

(assert (=> b!353856 (= e!216808 e!216807)))

(declare-fun c!53630 () Bool)

(assert (=> b!353856 (= c!53630 (validKeyInArray!0 (select (arr!9086 _keys!1456) #b00000000000000000000000000000000)))))

(declare-fun d!71551 () Bool)

(declare-fun res!196246 () Bool)

(assert (=> d!71551 (=> res!196246 e!216808)))

(assert (=> d!71551 (= res!196246 (bvsge #b00000000000000000000000000000000 (size!9438 _keys!1456)))))

(assert (=> d!71551 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1456 mask!1842) e!216808)))

(declare-fun bm!27152 () Bool)

(assert (=> bm!27152 (= call!27155 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1456 mask!1842))))

(assert (= (and d!71551 (not res!196246)) b!353856))

(assert (= (and b!353856 c!53630) b!353855))

(assert (= (and b!353856 (not c!53630)) b!353853))

(assert (= (and b!353855 res!196245) b!353854))

(assert (= (or b!353854 b!353853) bm!27152))

(assert (=> b!353855 m!353037))

(declare-fun m!353045 () Bool)

(assert (=> b!353855 m!353045))

(declare-fun m!353047 () Bool)

(assert (=> b!353855 m!353047))

(assert (=> b!353855 m!353037))

(declare-fun m!353049 () Bool)

(assert (=> b!353855 m!353049))

(assert (=> b!353856 m!353037))

(assert (=> b!353856 m!353037))

(assert (=> b!353856 m!353039))

(declare-fun m!353051 () Bool)

(assert (=> bm!27152 m!353051))

(assert (=> b!353800 d!71551))

(declare-fun mapIsEmpty!13233 () Bool)

(declare-fun mapRes!13233 () Bool)

(assert (=> mapIsEmpty!13233 mapRes!13233))

(declare-fun b!353864 () Bool)

(declare-fun e!216814 () Bool)

(assert (=> b!353864 (= e!216814 tp_is_empty!7815)))

(declare-fun condMapEmpty!13233 () Bool)

(declare-fun mapDefault!13233 () ValueCell!3564)

(assert (=> mapNonEmpty!13227 (= condMapEmpty!13233 (= mapRest!13227 ((as const (Array (_ BitVec 32) ValueCell!3564)) mapDefault!13233)))))

(assert (=> mapNonEmpty!13227 (= tp!27123 (and e!216814 mapRes!13233))))

(declare-fun mapNonEmpty!13233 () Bool)

(declare-fun tp!27129 () Bool)

(declare-fun e!216815 () Bool)

(assert (=> mapNonEmpty!13233 (= mapRes!13233 (and tp!27129 e!216815))))

(declare-fun mapValue!13233 () ValueCell!3564)

(declare-fun mapKey!13233 () (_ BitVec 32))

(declare-fun mapRest!13233 () (Array (_ BitVec 32) ValueCell!3564))

(assert (=> mapNonEmpty!13233 (= mapRest!13227 (store mapRest!13233 mapKey!13233 mapValue!13233))))

(declare-fun b!353863 () Bool)

(assert (=> b!353863 (= e!216815 tp_is_empty!7815)))

(assert (= (and mapNonEmpty!13227 condMapEmpty!13233) mapIsEmpty!13233))

(assert (= (and mapNonEmpty!13227 (not condMapEmpty!13233)) mapNonEmpty!13233))

(assert (= (and mapNonEmpty!13233 ((_ is ValueCellFull!3564) mapValue!13233)) b!353863))

(assert (= (and mapNonEmpty!13227 ((_ is ValueCellFull!3564) mapDefault!13233)) b!353864))

(declare-fun m!353053 () Bool)

(assert (=> mapNonEmpty!13233 m!353053))

(check-sat (not b!353856) (not b!353840) (not b!353855) (not bm!27152) tp_is_empty!7815 (not b!353841) (not b!353844) (not bm!27149) (not mapNonEmpty!13233))
(check-sat)
