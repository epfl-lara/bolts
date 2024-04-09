; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!484 () Bool)

(assert start!484)

(declare-fun mapIsEmpty!59 () Bool)

(declare-fun mapRes!59 () Bool)

(assert (=> mapIsEmpty!59 mapRes!59))

(declare-fun res!4868 () Bool)

(declare-fun e!1179 () Bool)

(assert (=> start!484 (=> (not res!4868) (not e!1179))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!484 (= res!4868 (validMask!0 mask!2250))))

(assert (=> start!484 e!1179))

(assert (=> start!484 true))

(declare-datatypes ((V!277 0))(
  ( (V!278 (val!43 Int)) )
))
(declare-datatypes ((ValueCell!21 0))(
  ( (ValueCellFull!21 (v!1129 V!277)) (EmptyCell!21) )
))
(declare-datatypes ((array!81 0))(
  ( (array!82 (arr!37 (Array (_ BitVec 32) ValueCell!21)) (size!99 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!81)

(declare-fun e!1177 () Bool)

(declare-fun array_inv!21 (array!81) Bool)

(assert (=> start!484 (and (array_inv!21 _values!1492) e!1177)))

(declare-datatypes ((array!83 0))(
  ( (array!84 (arr!38 (Array (_ BitVec 32) (_ BitVec 64))) (size!100 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!83)

(declare-fun array_inv!22 (array!83) Bool)

(assert (=> start!484 (array_inv!22 _keys!1806)))

(declare-fun b!2845 () Bool)

(declare-fun res!4867 () Bool)

(assert (=> b!2845 (=> (not res!4867) (not e!1179))))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!2845 (= res!4867 (and (= (size!99 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!100 _keys!1806) (size!99 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!2846 () Bool)

(declare-fun e!1178 () Bool)

(assert (=> b!2846 (= e!1177 (and e!1178 mapRes!59))))

(declare-fun condMapEmpty!59 () Bool)

(declare-fun mapDefault!59 () ValueCell!21)

(assert (=> b!2846 (= condMapEmpty!59 (= (arr!37 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!21)) mapDefault!59)))))

(declare-fun b!2847 () Bool)

(declare-fun e!1176 () Bool)

(declare-fun tp_is_empty!75 () Bool)

(assert (=> b!2847 (= e!1176 tp_is_empty!75)))

(declare-fun mapNonEmpty!59 () Bool)

(declare-fun tp!299 () Bool)

(assert (=> mapNonEmpty!59 (= mapRes!59 (and tp!299 e!1176))))

(declare-fun mapValue!59 () ValueCell!21)

(declare-fun mapKey!59 () (_ BitVec 32))

(declare-fun mapRest!59 () (Array (_ BitVec 32) ValueCell!21))

(assert (=> mapNonEmpty!59 (= (arr!37 _values!1492) (store mapRest!59 mapKey!59 mapValue!59))))

(declare-fun b!2848 () Bool)

(assert (=> b!2848 (= e!1179 (and (bvsle #b00000000000000000000000000000000 (size!100 _keys!1806)) (bvsge (size!100 _keys!1806) #b01111111111111111111111111111111)))))

(declare-fun b!2849 () Bool)

(assert (=> b!2849 (= e!1178 tp_is_empty!75)))

(declare-fun b!2850 () Bool)

(declare-fun res!4866 () Bool)

(assert (=> b!2850 (=> (not res!4866) (not e!1179))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83 (_ BitVec 32)) Bool)

(assert (=> b!2850 (= res!4866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(assert (= (and start!484 res!4868) b!2845))

(assert (= (and b!2845 res!4867) b!2850))

(assert (= (and b!2850 res!4866) b!2848))

(assert (= (and b!2846 condMapEmpty!59) mapIsEmpty!59))

(assert (= (and b!2846 (not condMapEmpty!59)) mapNonEmpty!59))

(get-info :version)

(assert (= (and mapNonEmpty!59 ((_ is ValueCellFull!21) mapValue!59)) b!2847))

(assert (= (and b!2846 ((_ is ValueCellFull!21) mapDefault!59)) b!2849))

(assert (= start!484 b!2846))

(declare-fun m!1269 () Bool)

(assert (=> start!484 m!1269))

(declare-fun m!1271 () Bool)

(assert (=> start!484 m!1271))

(declare-fun m!1273 () Bool)

(assert (=> start!484 m!1273))

(declare-fun m!1275 () Bool)

(assert (=> mapNonEmpty!59 m!1275))

(declare-fun m!1277 () Bool)

(assert (=> b!2850 m!1277))

(check-sat (not b!2850) (not start!484) (not mapNonEmpty!59) tp_is_empty!75)
(check-sat)
(get-model)

(declare-fun b!2877 () Bool)

(declare-fun e!1203 () Bool)

(declare-fun call!35 () Bool)

(assert (=> b!2877 (= e!1203 call!35)))

(declare-fun b!2878 () Bool)

(declare-fun e!1201 () Bool)

(assert (=> b!2878 (= e!1201 e!1203)))

(declare-fun c!179 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!2878 (= c!179 (validKeyInArray!0 (select (arr!38 _keys!1806) #b00000000000000000000000000000000)))))

(declare-fun b!2879 () Bool)

(declare-fun e!1202 () Bool)

(assert (=> b!2879 (= e!1203 e!1202)))

(declare-fun lt!394 () (_ BitVec 64))

(assert (=> b!2879 (= lt!394 (select (arr!38 _keys!1806) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!21 0))(
  ( (Unit!22) )
))
(declare-fun lt!393 () Unit!21)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83 (_ BitVec 64) (_ BitVec 32)) Unit!21)

(assert (=> b!2879 (= lt!393 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1806 lt!394 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!2879 (arrayContainsKey!0 _keys!1806 lt!394 #b00000000000000000000000000000000)))

(declare-fun lt!395 () Unit!21)

(assert (=> b!2879 (= lt!395 lt!393)))

(declare-fun res!4883 () Bool)

(declare-datatypes ((SeekEntryResult!6 0))(
  ( (MissingZero!6 (index!2143 (_ BitVec 32))) (Found!6 (index!2144 (_ BitVec 32))) (Intermediate!6 (undefined!818 Bool) (index!2145 (_ BitVec 32)) (x!2170 (_ BitVec 32))) (Undefined!6) (MissingVacant!6 (index!2146 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83 (_ BitVec 32)) SeekEntryResult!6)

(assert (=> b!2879 (= res!4883 (= (seekEntryOrOpen!0 (select (arr!38 _keys!1806) #b00000000000000000000000000000000) _keys!1806 mask!2250) (Found!6 #b00000000000000000000000000000000)))))

(assert (=> b!2879 (=> (not res!4883) (not e!1202))))

(declare-fun d!583 () Bool)

(declare-fun res!4882 () Bool)

(assert (=> d!583 (=> res!4882 e!1201)))

(assert (=> d!583 (= res!4882 (bvsge #b00000000000000000000000000000000 (size!100 _keys!1806)))))

(assert (=> d!583 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250) e!1201)))

(declare-fun bm!32 () Bool)

(assert (=> bm!32 (= call!35 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1806 mask!2250))))

(declare-fun b!2880 () Bool)

(assert (=> b!2880 (= e!1202 call!35)))

(assert (= (and d!583 (not res!4882)) b!2878))

(assert (= (and b!2878 c!179) b!2879))

(assert (= (and b!2878 (not c!179)) b!2877))

(assert (= (and b!2879 res!4883) b!2880))

(assert (= (or b!2880 b!2877) bm!32))

(declare-fun m!1289 () Bool)

(assert (=> b!2878 m!1289))

(assert (=> b!2878 m!1289))

(declare-fun m!1291 () Bool)

(assert (=> b!2878 m!1291))

(assert (=> b!2879 m!1289))

(declare-fun m!1293 () Bool)

(assert (=> b!2879 m!1293))

(declare-fun m!1295 () Bool)

(assert (=> b!2879 m!1295))

(assert (=> b!2879 m!1289))

(declare-fun m!1297 () Bool)

(assert (=> b!2879 m!1297))

(declare-fun m!1299 () Bool)

(assert (=> bm!32 m!1299))

(assert (=> b!2850 d!583))

(declare-fun d!585 () Bool)

(assert (=> d!585 (= (validMask!0 mask!2250) (and (or (= mask!2250 #b00000000000000000000000000000111) (= mask!2250 #b00000000000000000000000000001111) (= mask!2250 #b00000000000000000000000000011111) (= mask!2250 #b00000000000000000000000000111111) (= mask!2250 #b00000000000000000000000001111111) (= mask!2250 #b00000000000000000000000011111111) (= mask!2250 #b00000000000000000000000111111111) (= mask!2250 #b00000000000000000000001111111111) (= mask!2250 #b00000000000000000000011111111111) (= mask!2250 #b00000000000000000000111111111111) (= mask!2250 #b00000000000000000001111111111111) (= mask!2250 #b00000000000000000011111111111111) (= mask!2250 #b00000000000000000111111111111111) (= mask!2250 #b00000000000000001111111111111111) (= mask!2250 #b00000000000000011111111111111111) (= mask!2250 #b00000000000000111111111111111111) (= mask!2250 #b00000000000001111111111111111111) (= mask!2250 #b00000000000011111111111111111111) (= mask!2250 #b00000000000111111111111111111111) (= mask!2250 #b00000000001111111111111111111111) (= mask!2250 #b00000000011111111111111111111111) (= mask!2250 #b00000000111111111111111111111111) (= mask!2250 #b00000001111111111111111111111111) (= mask!2250 #b00000011111111111111111111111111) (= mask!2250 #b00000111111111111111111111111111) (= mask!2250 #b00001111111111111111111111111111) (= mask!2250 #b00011111111111111111111111111111) (= mask!2250 #b00111111111111111111111111111111)) (bvsle mask!2250 #b00111111111111111111111111111111)))))

(assert (=> start!484 d!585))

(declare-fun d!587 () Bool)

(assert (=> d!587 (= (array_inv!21 _values!1492) (bvsge (size!99 _values!1492) #b00000000000000000000000000000000))))

(assert (=> start!484 d!587))

(declare-fun d!589 () Bool)

(assert (=> d!589 (= (array_inv!22 _keys!1806) (bvsge (size!100 _keys!1806) #b00000000000000000000000000000000))))

(assert (=> start!484 d!589))

(declare-fun b!2888 () Bool)

(declare-fun e!1209 () Bool)

(assert (=> b!2888 (= e!1209 tp_is_empty!75)))

(declare-fun condMapEmpty!65 () Bool)

(declare-fun mapDefault!65 () ValueCell!21)

(assert (=> mapNonEmpty!59 (= condMapEmpty!65 (= mapRest!59 ((as const (Array (_ BitVec 32) ValueCell!21)) mapDefault!65)))))

(declare-fun mapRes!65 () Bool)

(assert (=> mapNonEmpty!59 (= tp!299 (and e!1209 mapRes!65))))

(declare-fun mapNonEmpty!65 () Bool)

(declare-fun tp!305 () Bool)

(declare-fun e!1208 () Bool)

(assert (=> mapNonEmpty!65 (= mapRes!65 (and tp!305 e!1208))))

(declare-fun mapRest!65 () (Array (_ BitVec 32) ValueCell!21))

(declare-fun mapValue!65 () ValueCell!21)

(declare-fun mapKey!65 () (_ BitVec 32))

(assert (=> mapNonEmpty!65 (= mapRest!59 (store mapRest!65 mapKey!65 mapValue!65))))

(declare-fun b!2887 () Bool)

(assert (=> b!2887 (= e!1208 tp_is_empty!75)))

(declare-fun mapIsEmpty!65 () Bool)

(assert (=> mapIsEmpty!65 mapRes!65))

(assert (= (and mapNonEmpty!59 condMapEmpty!65) mapIsEmpty!65))

(assert (= (and mapNonEmpty!59 (not condMapEmpty!65)) mapNonEmpty!65))

(assert (= (and mapNonEmpty!65 ((_ is ValueCellFull!21) mapValue!65)) b!2887))

(assert (= (and mapNonEmpty!59 ((_ is ValueCellFull!21) mapDefault!65)) b!2888))

(declare-fun m!1301 () Bool)

(assert (=> mapNonEmpty!65 m!1301))

(check-sat (not b!2878) (not bm!32) (not mapNonEmpty!65) tp_is_empty!75 (not b!2879))
(check-sat)
