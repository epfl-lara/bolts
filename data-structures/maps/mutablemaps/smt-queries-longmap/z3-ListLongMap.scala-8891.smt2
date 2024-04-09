; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!108002 () Bool)

(assert start!108002)

(declare-fun res!847798 () Bool)

(declare-fun e!728129 () Bool)

(assert (=> start!108002 (=> (not res!847798) (not e!728129))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108002 (= res!847798 (validMask!0 mask!1805))))

(assert (=> start!108002 e!728129))

(assert (=> start!108002 true))

(declare-datatypes ((V!49451 0))(
  ( (V!49452 (val!16705 Int)) )
))
(declare-datatypes ((ValueCell!15732 0))(
  ( (ValueCellFull!15732 (v!19299 V!49451)) (EmptyCell!15732) )
))
(declare-datatypes ((array!83575 0))(
  ( (array!83576 (arr!40297 (Array (_ BitVec 32) ValueCell!15732)) (size!40848 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83575)

(declare-fun e!728127 () Bool)

(declare-fun array_inv!30581 (array!83575) Bool)

(assert (=> start!108002 (and (array_inv!30581 _values!1187) e!728127)))

(declare-datatypes ((array!83577 0))(
  ( (array!83578 (arr!40298 (Array (_ BitVec 32) (_ BitVec 64))) (size!40849 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83577)

(declare-fun array_inv!30582 (array!83577) Bool)

(assert (=> start!108002 (array_inv!30582 _keys!1427)))

(declare-fun mapNonEmpty!51413 () Bool)

(declare-fun mapRes!51413 () Bool)

(declare-fun tp!98172 () Bool)

(declare-fun e!728126 () Bool)

(assert (=> mapNonEmpty!51413 (= mapRes!51413 (and tp!98172 e!728126))))

(declare-fun mapKey!51413 () (_ BitVec 32))

(declare-fun mapRest!51413 () (Array (_ BitVec 32) ValueCell!15732))

(declare-fun mapValue!51413 () ValueCell!15732)

(assert (=> mapNonEmpty!51413 (= (arr!40297 _values!1187) (store mapRest!51413 mapKey!51413 mapValue!51413))))

(declare-fun b!1275397 () Bool)

(declare-fun res!847795 () Bool)

(assert (=> b!1275397 (=> (not res!847795) (not e!728129))))

(assert (=> b!1275397 (= res!847795 (and (bvsle #b00000000000000000000000000000000 (size!40849 _keys!1427)) (bvslt (size!40849 _keys!1427) #b01111111111111111111111111111111)))))

(declare-fun b!1275398 () Bool)

(declare-fun res!847797 () Bool)

(assert (=> b!1275398 (=> (not res!847797) (not e!728129))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1275398 (= res!847797 (and (= (size!40848 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40849 _keys!1427) (size!40848 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!51413 () Bool)

(assert (=> mapIsEmpty!51413 mapRes!51413))

(declare-fun b!1275399 () Bool)

(declare-fun e!728130 () Bool)

(assert (=> b!1275399 (= e!728127 (and e!728130 mapRes!51413))))

(declare-fun condMapEmpty!51413 () Bool)

(declare-fun mapDefault!51413 () ValueCell!15732)

(assert (=> b!1275399 (= condMapEmpty!51413 (= (arr!40297 _values!1187) ((as const (Array (_ BitVec 32) ValueCell!15732)) mapDefault!51413)))))

(declare-fun b!1275400 () Bool)

(declare-datatypes ((List!28777 0))(
  ( (Nil!28774) (Cons!28773 (h!29982 (_ BitVec 64)) (t!42320 List!28777)) )
))
(declare-fun noDuplicate!2079 (List!28777) Bool)

(assert (=> b!1275400 (= e!728129 (not (noDuplicate!2079 Nil!28774)))))

(declare-fun b!1275401 () Bool)

(declare-fun tp_is_empty!33261 () Bool)

(assert (=> b!1275401 (= e!728130 tp_is_empty!33261)))

(declare-fun b!1275402 () Bool)

(declare-fun res!847796 () Bool)

(assert (=> b!1275402 (=> (not res!847796) (not e!728129))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83577 (_ BitVec 32)) Bool)

(assert (=> b!1275402 (= res!847796 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1275403 () Bool)

(assert (=> b!1275403 (= e!728126 tp_is_empty!33261)))

(assert (= (and start!108002 res!847798) b!1275398))

(assert (= (and b!1275398 res!847797) b!1275402))

(assert (= (and b!1275402 res!847796) b!1275397))

(assert (= (and b!1275397 res!847795) b!1275400))

(assert (= (and b!1275399 condMapEmpty!51413) mapIsEmpty!51413))

(assert (= (and b!1275399 (not condMapEmpty!51413)) mapNonEmpty!51413))

(get-info :version)

(assert (= (and mapNonEmpty!51413 ((_ is ValueCellFull!15732) mapValue!51413)) b!1275403))

(assert (= (and b!1275399 ((_ is ValueCellFull!15732) mapDefault!51413)) b!1275401))

(assert (= start!108002 b!1275399))

(declare-fun m!1171663 () Bool)

(assert (=> start!108002 m!1171663))

(declare-fun m!1171665 () Bool)

(assert (=> start!108002 m!1171665))

(declare-fun m!1171667 () Bool)

(assert (=> start!108002 m!1171667))

(declare-fun m!1171669 () Bool)

(assert (=> mapNonEmpty!51413 m!1171669))

(declare-fun m!1171671 () Bool)

(assert (=> b!1275400 m!1171671))

(declare-fun m!1171673 () Bool)

(assert (=> b!1275402 m!1171673))

(check-sat (not mapNonEmpty!51413) (not b!1275402) (not b!1275400) (not start!108002) tp_is_empty!33261)
(check-sat)
(get-model)

(declare-fun d!140285 () Bool)

(assert (=> d!140285 (= (validMask!0 mask!1805) (and (or (= mask!1805 #b00000000000000000000000000000111) (= mask!1805 #b00000000000000000000000000001111) (= mask!1805 #b00000000000000000000000000011111) (= mask!1805 #b00000000000000000000000000111111) (= mask!1805 #b00000000000000000000000001111111) (= mask!1805 #b00000000000000000000000011111111) (= mask!1805 #b00000000000000000000000111111111) (= mask!1805 #b00000000000000000000001111111111) (= mask!1805 #b00000000000000000000011111111111) (= mask!1805 #b00000000000000000000111111111111) (= mask!1805 #b00000000000000000001111111111111) (= mask!1805 #b00000000000000000011111111111111) (= mask!1805 #b00000000000000000111111111111111) (= mask!1805 #b00000000000000001111111111111111) (= mask!1805 #b00000000000000011111111111111111) (= mask!1805 #b00000000000000111111111111111111) (= mask!1805 #b00000000000001111111111111111111) (= mask!1805 #b00000000000011111111111111111111) (= mask!1805 #b00000000000111111111111111111111) (= mask!1805 #b00000000001111111111111111111111) (= mask!1805 #b00000000011111111111111111111111) (= mask!1805 #b00000000111111111111111111111111) (= mask!1805 #b00000001111111111111111111111111) (= mask!1805 #b00000011111111111111111111111111) (= mask!1805 #b00000111111111111111111111111111) (= mask!1805 #b00001111111111111111111111111111) (= mask!1805 #b00011111111111111111111111111111) (= mask!1805 #b00111111111111111111111111111111)) (bvsle mask!1805 #b00111111111111111111111111111111)))))

(assert (=> start!108002 d!140285))

(declare-fun d!140287 () Bool)

(assert (=> d!140287 (= (array_inv!30581 _values!1187) (bvsge (size!40848 _values!1187) #b00000000000000000000000000000000))))

(assert (=> start!108002 d!140287))

(declare-fun d!140289 () Bool)

(assert (=> d!140289 (= (array_inv!30582 _keys!1427) (bvsge (size!40849 _keys!1427) #b00000000000000000000000000000000))))

(assert (=> start!108002 d!140289))

(declare-fun d!140291 () Bool)

(declare-fun res!847815 () Bool)

(declare-fun e!728150 () Bool)

(assert (=> d!140291 (=> res!847815 e!728150)))

(assert (=> d!140291 (= res!847815 ((_ is Nil!28774) Nil!28774))))

(assert (=> d!140291 (= (noDuplicate!2079 Nil!28774) e!728150)))

(declare-fun b!1275429 () Bool)

(declare-fun e!728151 () Bool)

(assert (=> b!1275429 (= e!728150 e!728151)))

(declare-fun res!847816 () Bool)

(assert (=> b!1275429 (=> (not res!847816) (not e!728151))))

(declare-fun contains!7699 (List!28777 (_ BitVec 64)) Bool)

(assert (=> b!1275429 (= res!847816 (not (contains!7699 (t!42320 Nil!28774) (h!29982 Nil!28774))))))

(declare-fun b!1275430 () Bool)

(assert (=> b!1275430 (= e!728151 (noDuplicate!2079 (t!42320 Nil!28774)))))

(assert (= (and d!140291 (not res!847815)) b!1275429))

(assert (= (and b!1275429 res!847816) b!1275430))

(declare-fun m!1171687 () Bool)

(assert (=> b!1275429 m!1171687))

(declare-fun m!1171689 () Bool)

(assert (=> b!1275430 m!1171689))

(assert (=> b!1275400 d!140291))

(declare-fun b!1275439 () Bool)

(declare-fun e!728160 () Bool)

(declare-fun call!62637 () Bool)

(assert (=> b!1275439 (= e!728160 call!62637)))

(declare-fun d!140293 () Bool)

(declare-fun res!847821 () Bool)

(declare-fun e!728159 () Bool)

(assert (=> d!140293 (=> res!847821 e!728159)))

(assert (=> d!140293 (= res!847821 (bvsge #b00000000000000000000000000000000 (size!40849 _keys!1427)))))

(assert (=> d!140293 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805) e!728159)))

(declare-fun bm!62634 () Bool)

(assert (=> bm!62634 (= call!62637 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1427 mask!1805))))

(declare-fun b!1275440 () Bool)

(declare-fun e!728158 () Bool)

(assert (=> b!1275440 (= e!728158 call!62637)))

(declare-fun b!1275441 () Bool)

(assert (=> b!1275441 (= e!728160 e!728158)))

(declare-fun lt!575294 () (_ BitVec 64))

(assert (=> b!1275441 (= lt!575294 (select (arr!40298 _keys!1427) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42299 0))(
  ( (Unit!42300) )
))
(declare-fun lt!575292 () Unit!42299)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83577 (_ BitVec 64) (_ BitVec 32)) Unit!42299)

(assert (=> b!1275441 (= lt!575292 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1427 lt!575294 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83577 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1275441 (arrayContainsKey!0 _keys!1427 lt!575294 #b00000000000000000000000000000000)))

(declare-fun lt!575293 () Unit!42299)

(assert (=> b!1275441 (= lt!575293 lt!575292)))

(declare-fun res!847822 () Bool)

(declare-datatypes ((SeekEntryResult!10000 0))(
  ( (MissingZero!10000 (index!42370 (_ BitVec 32))) (Found!10000 (index!42371 (_ BitVec 32))) (Intermediate!10000 (undefined!10812 Bool) (index!42372 (_ BitVec 32)) (x!112960 (_ BitVec 32))) (Undefined!10000) (MissingVacant!10000 (index!42373 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83577 (_ BitVec 32)) SeekEntryResult!10000)

(assert (=> b!1275441 (= res!847822 (= (seekEntryOrOpen!0 (select (arr!40298 _keys!1427) #b00000000000000000000000000000000) _keys!1427 mask!1805) (Found!10000 #b00000000000000000000000000000000)))))

(assert (=> b!1275441 (=> (not res!847822) (not e!728158))))

(declare-fun b!1275442 () Bool)

(assert (=> b!1275442 (= e!728159 e!728160)))

(declare-fun c!123867 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1275442 (= c!123867 (validKeyInArray!0 (select (arr!40298 _keys!1427) #b00000000000000000000000000000000)))))

(assert (= (and d!140293 (not res!847821)) b!1275442))

(assert (= (and b!1275442 c!123867) b!1275441))

(assert (= (and b!1275442 (not c!123867)) b!1275439))

(assert (= (and b!1275441 res!847822) b!1275440))

(assert (= (or b!1275440 b!1275439) bm!62634))

(declare-fun m!1171691 () Bool)

(assert (=> bm!62634 m!1171691))

(declare-fun m!1171693 () Bool)

(assert (=> b!1275441 m!1171693))

(declare-fun m!1171695 () Bool)

(assert (=> b!1275441 m!1171695))

(declare-fun m!1171697 () Bool)

(assert (=> b!1275441 m!1171697))

(assert (=> b!1275441 m!1171693))

(declare-fun m!1171699 () Bool)

(assert (=> b!1275441 m!1171699))

(assert (=> b!1275442 m!1171693))

(assert (=> b!1275442 m!1171693))

(declare-fun m!1171701 () Bool)

(assert (=> b!1275442 m!1171701))

(assert (=> b!1275402 d!140293))

(declare-fun mapNonEmpty!51419 () Bool)

(declare-fun mapRes!51419 () Bool)

(declare-fun tp!98178 () Bool)

(declare-fun e!728166 () Bool)

(assert (=> mapNonEmpty!51419 (= mapRes!51419 (and tp!98178 e!728166))))

(declare-fun mapKey!51419 () (_ BitVec 32))

(declare-fun mapValue!51419 () ValueCell!15732)

(declare-fun mapRest!51419 () (Array (_ BitVec 32) ValueCell!15732))

(assert (=> mapNonEmpty!51419 (= mapRest!51413 (store mapRest!51419 mapKey!51419 mapValue!51419))))

(declare-fun mapIsEmpty!51419 () Bool)

(assert (=> mapIsEmpty!51419 mapRes!51419))

(declare-fun condMapEmpty!51419 () Bool)

(declare-fun mapDefault!51419 () ValueCell!15732)

(assert (=> mapNonEmpty!51413 (= condMapEmpty!51419 (= mapRest!51413 ((as const (Array (_ BitVec 32) ValueCell!15732)) mapDefault!51419)))))

(declare-fun e!728165 () Bool)

(assert (=> mapNonEmpty!51413 (= tp!98172 (and e!728165 mapRes!51419))))

(declare-fun b!1275449 () Bool)

(assert (=> b!1275449 (= e!728166 tp_is_empty!33261)))

(declare-fun b!1275450 () Bool)

(assert (=> b!1275450 (= e!728165 tp_is_empty!33261)))

(assert (= (and mapNonEmpty!51413 condMapEmpty!51419) mapIsEmpty!51419))

(assert (= (and mapNonEmpty!51413 (not condMapEmpty!51419)) mapNonEmpty!51419))

(assert (= (and mapNonEmpty!51419 ((_ is ValueCellFull!15732) mapValue!51419)) b!1275449))

(assert (= (and mapNonEmpty!51413 ((_ is ValueCellFull!15732) mapDefault!51419)) b!1275450))

(declare-fun m!1171703 () Bool)

(assert (=> mapNonEmpty!51419 m!1171703))

(check-sat (not bm!62634) (not b!1275442) tp_is_empty!33261 (not b!1275441) (not mapNonEmpty!51419) (not b!1275430) (not b!1275429))
(check-sat)
