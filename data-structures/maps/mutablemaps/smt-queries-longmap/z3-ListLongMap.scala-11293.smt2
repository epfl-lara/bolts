; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131684 () Bool)

(assert start!131684)

(declare-fun b!1541758 () Bool)

(declare-fun e!857627 () Bool)

(declare-fun e!857625 () Bool)

(assert (=> b!1541758 (= e!857627 e!857625)))

(declare-fun res!1058221 () Bool)

(assert (=> b!1541758 (=> res!1058221 e!857625)))

(declare-datatypes ((List!36012 0))(
  ( (Nil!36009) (Cons!36008 (h!37454 (_ BitVec 64)) (t!50713 List!36012)) )
))
(declare-fun contains!10035 (List!36012 (_ BitVec 64)) Bool)

(assert (=> b!1541758 (= res!1058221 (contains!10035 Nil!36009 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1541759 () Bool)

(declare-fun e!857629 () Bool)

(declare-fun tp_is_empty!37653 () Bool)

(assert (=> b!1541759 (= e!857629 tp_is_empty!37653)))

(declare-fun b!1541760 () Bool)

(declare-fun res!1058223 () Bool)

(assert (=> b!1541760 (=> (not res!1058223) (not e!857627))))

(declare-datatypes ((array!102505 0))(
  ( (array!102506 (arr!49451 (Array (_ BitVec 32) (_ BitVec 64))) (size!50002 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102505)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-datatypes ((V!58647 0))(
  ( (V!58648 (val!18904 Int)) )
))
(declare-datatypes ((ValueCell!17916 0))(
  ( (ValueCellFull!17916 (v!21701 V!58647)) (EmptyCell!17916) )
))
(declare-datatypes ((array!102507 0))(
  ( (array!102508 (arr!49452 (Array (_ BitVec 32) ValueCell!17916)) (size!50003 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102507)

(declare-fun mask!926 () (_ BitVec 32))

(assert (=> b!1541760 (= res!1058223 (and (= (size!50003 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50002 _keys!618) (size!50003 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1541761 () Bool)

(declare-fun res!1058218 () Bool)

(assert (=> b!1541761 (=> (not res!1058218) (not e!857627))))

(assert (=> b!1541761 (= res!1058218 (and (bvsle #b00000000000000000000000000000000 (size!50002 _keys!618)) (bvslt (size!50002 _keys!618) #b01111111111111111111111111111111)))))

(declare-fun b!1541762 () Bool)

(declare-fun res!1058220 () Bool)

(assert (=> b!1541762 (=> (not res!1058220) (not e!857627))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102505 (_ BitVec 32)) Bool)

(assert (=> b!1541762 (= res!1058220 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1541763 () Bool)

(declare-fun e!857626 () Bool)

(assert (=> b!1541763 (= e!857626 tp_is_empty!37653)))

(declare-fun b!1541764 () Bool)

(declare-fun e!857628 () Bool)

(declare-fun mapRes!58180 () Bool)

(assert (=> b!1541764 (= e!857628 (and e!857626 mapRes!58180))))

(declare-fun condMapEmpty!58180 () Bool)

(declare-fun mapDefault!58180 () ValueCell!17916)

(assert (=> b!1541764 (= condMapEmpty!58180 (= (arr!49452 _values!470) ((as const (Array (_ BitVec 32) ValueCell!17916)) mapDefault!58180)))))

(declare-fun b!1541765 () Bool)

(declare-fun res!1058222 () Bool)

(assert (=> b!1541765 (=> (not res!1058222) (not e!857627))))

(declare-fun noDuplicate!2673 (List!36012) Bool)

(assert (=> b!1541765 (= res!1058222 (noDuplicate!2673 Nil!36009))))

(declare-fun mapNonEmpty!58180 () Bool)

(declare-fun tp!110708 () Bool)

(assert (=> mapNonEmpty!58180 (= mapRes!58180 (and tp!110708 e!857629))))

(declare-fun mapValue!58180 () ValueCell!17916)

(declare-fun mapRest!58180 () (Array (_ BitVec 32) ValueCell!17916))

(declare-fun mapKey!58180 () (_ BitVec 32))

(assert (=> mapNonEmpty!58180 (= (arr!49452 _values!470) (store mapRest!58180 mapKey!58180 mapValue!58180))))

(declare-fun res!1058219 () Bool)

(assert (=> start!131684 (=> (not res!1058219) (not e!857627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131684 (= res!1058219 (validMask!0 mask!926))))

(assert (=> start!131684 e!857627))

(assert (=> start!131684 true))

(declare-fun array_inv!38393 (array!102507) Bool)

(assert (=> start!131684 (and (array_inv!38393 _values!470) e!857628)))

(declare-fun array_inv!38394 (array!102505) Bool)

(assert (=> start!131684 (array_inv!38394 _keys!618)))

(declare-fun b!1541766 () Bool)

(assert (=> b!1541766 (= e!857625 (contains!10035 Nil!36009 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!58180 () Bool)

(assert (=> mapIsEmpty!58180 mapRes!58180))

(assert (= (and start!131684 res!1058219) b!1541760))

(assert (= (and b!1541760 res!1058223) b!1541762))

(assert (= (and b!1541762 res!1058220) b!1541761))

(assert (= (and b!1541761 res!1058218) b!1541765))

(assert (= (and b!1541765 res!1058222) b!1541758))

(assert (= (and b!1541758 (not res!1058221)) b!1541766))

(assert (= (and b!1541764 condMapEmpty!58180) mapIsEmpty!58180))

(assert (= (and b!1541764 (not condMapEmpty!58180)) mapNonEmpty!58180))

(get-info :version)

(assert (= (and mapNonEmpty!58180 ((_ is ValueCellFull!17916) mapValue!58180)) b!1541759))

(assert (= (and b!1541764 ((_ is ValueCellFull!17916) mapDefault!58180)) b!1541763))

(assert (= start!131684 b!1541764))

(declare-fun m!1423627 () Bool)

(assert (=> mapNonEmpty!58180 m!1423627))

(declare-fun m!1423629 () Bool)

(assert (=> b!1541765 m!1423629))

(declare-fun m!1423631 () Bool)

(assert (=> b!1541758 m!1423631))

(declare-fun m!1423633 () Bool)

(assert (=> b!1541766 m!1423633))

(declare-fun m!1423635 () Bool)

(assert (=> start!131684 m!1423635))

(declare-fun m!1423637 () Bool)

(assert (=> start!131684 m!1423637))

(declare-fun m!1423639 () Bool)

(assert (=> start!131684 m!1423639))

(declare-fun m!1423641 () Bool)

(assert (=> b!1541762 m!1423641))

(check-sat (not b!1541762) (not b!1541766) (not b!1541765) (not b!1541758) (not start!131684) (not mapNonEmpty!58180) tp_is_empty!37653)
(check-sat)
(get-model)

(declare-fun d!160645 () Bool)

(declare-fun res!1058246 () Bool)

(declare-fun e!857653 () Bool)

(assert (=> d!160645 (=> res!1058246 e!857653)))

(assert (=> d!160645 (= res!1058246 ((_ is Nil!36009) Nil!36009))))

(assert (=> d!160645 (= (noDuplicate!2673 Nil!36009) e!857653)))

(declare-fun b!1541798 () Bool)

(declare-fun e!857654 () Bool)

(assert (=> b!1541798 (= e!857653 e!857654)))

(declare-fun res!1058247 () Bool)

(assert (=> b!1541798 (=> (not res!1058247) (not e!857654))))

(assert (=> b!1541798 (= res!1058247 (not (contains!10035 (t!50713 Nil!36009) (h!37454 Nil!36009))))))

(declare-fun b!1541799 () Bool)

(assert (=> b!1541799 (= e!857654 (noDuplicate!2673 (t!50713 Nil!36009)))))

(assert (= (and d!160645 (not res!1058246)) b!1541798))

(assert (= (and b!1541798 res!1058247) b!1541799))

(declare-fun m!1423659 () Bool)

(assert (=> b!1541798 m!1423659))

(declare-fun m!1423661 () Bool)

(assert (=> b!1541799 m!1423661))

(assert (=> b!1541765 d!160645))

(declare-fun d!160647 () Bool)

(assert (=> d!160647 (= (validMask!0 mask!926) (and (or (= mask!926 #b00000000000000000000000000000111) (= mask!926 #b00000000000000000000000000001111) (= mask!926 #b00000000000000000000000000011111) (= mask!926 #b00000000000000000000000000111111) (= mask!926 #b00000000000000000000000001111111) (= mask!926 #b00000000000000000000000011111111) (= mask!926 #b00000000000000000000000111111111) (= mask!926 #b00000000000000000000001111111111) (= mask!926 #b00000000000000000000011111111111) (= mask!926 #b00000000000000000000111111111111) (= mask!926 #b00000000000000000001111111111111) (= mask!926 #b00000000000000000011111111111111) (= mask!926 #b00000000000000000111111111111111) (= mask!926 #b00000000000000001111111111111111) (= mask!926 #b00000000000000011111111111111111) (= mask!926 #b00000000000000111111111111111111) (= mask!926 #b00000000000001111111111111111111) (= mask!926 #b00000000000011111111111111111111) (= mask!926 #b00000000000111111111111111111111) (= mask!926 #b00000000001111111111111111111111) (= mask!926 #b00000000011111111111111111111111) (= mask!926 #b00000000111111111111111111111111) (= mask!926 #b00000001111111111111111111111111) (= mask!926 #b00000011111111111111111111111111) (= mask!926 #b00000111111111111111111111111111) (= mask!926 #b00001111111111111111111111111111) (= mask!926 #b00011111111111111111111111111111) (= mask!926 #b00111111111111111111111111111111)) (bvsle mask!926 #b00111111111111111111111111111111)))))

(assert (=> start!131684 d!160647))

(declare-fun d!160649 () Bool)

(assert (=> d!160649 (= (array_inv!38393 _values!470) (bvsge (size!50003 _values!470) #b00000000000000000000000000000000))))

(assert (=> start!131684 d!160649))

(declare-fun d!160651 () Bool)

(assert (=> d!160651 (= (array_inv!38394 _keys!618) (bvsge (size!50002 _keys!618) #b00000000000000000000000000000000))))

(assert (=> start!131684 d!160651))

(declare-fun b!1541808 () Bool)

(declare-fun e!857661 () Bool)

(declare-fun e!857662 () Bool)

(assert (=> b!1541808 (= e!857661 e!857662)))

(declare-fun c!141242 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1541808 (= c!141242 (validKeyInArray!0 (select (arr!49451 _keys!618) #b00000000000000000000000000000000)))))

(declare-fun d!160653 () Bool)

(declare-fun res!1058252 () Bool)

(assert (=> d!160653 (=> res!1058252 e!857661)))

(assert (=> d!160653 (= res!1058252 (bvsge #b00000000000000000000000000000000 (size!50002 _keys!618)))))

(assert (=> d!160653 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926) e!857661)))

(declare-fun b!1541809 () Bool)

(declare-fun e!857663 () Bool)

(declare-fun call!68691 () Bool)

(assert (=> b!1541809 (= e!857663 call!68691)))

(declare-fun bm!68688 () Bool)

(assert (=> bm!68688 (= call!68691 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!618 mask!926))))

(declare-fun b!1541810 () Bool)

(assert (=> b!1541810 (= e!857662 e!857663)))

(declare-fun lt!665651 () (_ BitVec 64))

(assert (=> b!1541810 (= lt!665651 (select (arr!49451 _keys!618) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!51440 0))(
  ( (Unit!51441) )
))
(declare-fun lt!665652 () Unit!51440)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!102505 (_ BitVec 64) (_ BitVec 32)) Unit!51440)

(assert (=> b!1541810 (= lt!665652 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!618 lt!665651 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!102505 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1541810 (arrayContainsKey!0 _keys!618 lt!665651 #b00000000000000000000000000000000)))

(declare-fun lt!665653 () Unit!51440)

(assert (=> b!1541810 (= lt!665653 lt!665652)))

(declare-fun res!1058253 () Bool)

(declare-datatypes ((SeekEntryResult!13509 0))(
  ( (MissingZero!13509 (index!56433 (_ BitVec 32))) (Found!13509 (index!56434 (_ BitVec 32))) (Intermediate!13509 (undefined!14321 Bool) (index!56435 (_ BitVec 32)) (x!138386 (_ BitVec 32))) (Undefined!13509) (MissingVacant!13509 (index!56436 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!102505 (_ BitVec 32)) SeekEntryResult!13509)

(assert (=> b!1541810 (= res!1058253 (= (seekEntryOrOpen!0 (select (arr!49451 _keys!618) #b00000000000000000000000000000000) _keys!618 mask!926) (Found!13509 #b00000000000000000000000000000000)))))

(assert (=> b!1541810 (=> (not res!1058253) (not e!857663))))

(declare-fun b!1541811 () Bool)

(assert (=> b!1541811 (= e!857662 call!68691)))

(assert (= (and d!160653 (not res!1058252)) b!1541808))

(assert (= (and b!1541808 c!141242) b!1541810))

(assert (= (and b!1541808 (not c!141242)) b!1541811))

(assert (= (and b!1541810 res!1058253) b!1541809))

(assert (= (or b!1541809 b!1541811) bm!68688))

(declare-fun m!1423663 () Bool)

(assert (=> b!1541808 m!1423663))

(assert (=> b!1541808 m!1423663))

(declare-fun m!1423665 () Bool)

(assert (=> b!1541808 m!1423665))

(declare-fun m!1423667 () Bool)

(assert (=> bm!68688 m!1423667))

(assert (=> b!1541810 m!1423663))

(declare-fun m!1423669 () Bool)

(assert (=> b!1541810 m!1423669))

(declare-fun m!1423671 () Bool)

(assert (=> b!1541810 m!1423671))

(assert (=> b!1541810 m!1423663))

(declare-fun m!1423673 () Bool)

(assert (=> b!1541810 m!1423673))

(assert (=> b!1541762 d!160653))

(declare-fun d!160655 () Bool)

(declare-fun lt!665656 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!796 (List!36012) (InoxSet (_ BitVec 64)))

(assert (=> d!160655 (= lt!665656 (select (content!796 Nil!36009) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!857669 () Bool)

(assert (=> d!160655 (= lt!665656 e!857669)))

(declare-fun res!1058259 () Bool)

(assert (=> d!160655 (=> (not res!1058259) (not e!857669))))

(assert (=> d!160655 (= res!1058259 ((_ is Cons!36008) Nil!36009))))

(assert (=> d!160655 (= (contains!10035 Nil!36009 #b1000000000000000000000000000000000000000000000000000000000000000) lt!665656)))

(declare-fun b!1541816 () Bool)

(declare-fun e!857668 () Bool)

(assert (=> b!1541816 (= e!857669 e!857668)))

(declare-fun res!1058258 () Bool)

(assert (=> b!1541816 (=> res!1058258 e!857668)))

(assert (=> b!1541816 (= res!1058258 (= (h!37454 Nil!36009) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1541817 () Bool)

(assert (=> b!1541817 (= e!857668 (contains!10035 (t!50713 Nil!36009) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!160655 res!1058259) b!1541816))

(assert (= (and b!1541816 (not res!1058258)) b!1541817))

(declare-fun m!1423675 () Bool)

(assert (=> d!160655 m!1423675))

(declare-fun m!1423677 () Bool)

(assert (=> d!160655 m!1423677))

(declare-fun m!1423679 () Bool)

(assert (=> b!1541817 m!1423679))

(assert (=> b!1541766 d!160655))

(declare-fun d!160657 () Bool)

(declare-fun lt!665657 () Bool)

(assert (=> d!160657 (= lt!665657 (select (content!796 Nil!36009) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!857671 () Bool)

(assert (=> d!160657 (= lt!665657 e!857671)))

(declare-fun res!1058261 () Bool)

(assert (=> d!160657 (=> (not res!1058261) (not e!857671))))

(assert (=> d!160657 (= res!1058261 ((_ is Cons!36008) Nil!36009))))

(assert (=> d!160657 (= (contains!10035 Nil!36009 #b0000000000000000000000000000000000000000000000000000000000000000) lt!665657)))

(declare-fun b!1541818 () Bool)

(declare-fun e!857670 () Bool)

(assert (=> b!1541818 (= e!857671 e!857670)))

(declare-fun res!1058260 () Bool)

(assert (=> b!1541818 (=> res!1058260 e!857670)))

(assert (=> b!1541818 (= res!1058260 (= (h!37454 Nil!36009) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1541819 () Bool)

(assert (=> b!1541819 (= e!857670 (contains!10035 (t!50713 Nil!36009) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!160657 res!1058261) b!1541818))

(assert (= (and b!1541818 (not res!1058260)) b!1541819))

(assert (=> d!160657 m!1423675))

(declare-fun m!1423681 () Bool)

(assert (=> d!160657 m!1423681))

(declare-fun m!1423683 () Bool)

(assert (=> b!1541819 m!1423683))

(assert (=> b!1541758 d!160657))

(declare-fun b!1541827 () Bool)

(declare-fun e!857677 () Bool)

(assert (=> b!1541827 (= e!857677 tp_is_empty!37653)))

(declare-fun mapNonEmpty!58186 () Bool)

(declare-fun mapRes!58186 () Bool)

(declare-fun tp!110714 () Bool)

(declare-fun e!857676 () Bool)

(assert (=> mapNonEmpty!58186 (= mapRes!58186 (and tp!110714 e!857676))))

(declare-fun mapKey!58186 () (_ BitVec 32))

(declare-fun mapValue!58186 () ValueCell!17916)

(declare-fun mapRest!58186 () (Array (_ BitVec 32) ValueCell!17916))

(assert (=> mapNonEmpty!58186 (= mapRest!58180 (store mapRest!58186 mapKey!58186 mapValue!58186))))

(declare-fun mapIsEmpty!58186 () Bool)

(assert (=> mapIsEmpty!58186 mapRes!58186))

(declare-fun b!1541826 () Bool)

(assert (=> b!1541826 (= e!857676 tp_is_empty!37653)))

(declare-fun condMapEmpty!58186 () Bool)

(declare-fun mapDefault!58186 () ValueCell!17916)

(assert (=> mapNonEmpty!58180 (= condMapEmpty!58186 (= mapRest!58180 ((as const (Array (_ BitVec 32) ValueCell!17916)) mapDefault!58186)))))

(assert (=> mapNonEmpty!58180 (= tp!110708 (and e!857677 mapRes!58186))))

(assert (= (and mapNonEmpty!58180 condMapEmpty!58186) mapIsEmpty!58186))

(assert (= (and mapNonEmpty!58180 (not condMapEmpty!58186)) mapNonEmpty!58186))

(assert (= (and mapNonEmpty!58186 ((_ is ValueCellFull!17916) mapValue!58186)) b!1541826))

(assert (= (and mapNonEmpty!58180 ((_ is ValueCellFull!17916) mapDefault!58186)) b!1541827))

(declare-fun m!1423685 () Bool)

(assert (=> mapNonEmpty!58186 m!1423685))

(check-sat (not bm!68688) (not b!1541799) (not b!1541817) (not d!160657) (not b!1541798) tp_is_empty!37653 (not b!1541808) (not b!1541810) (not b!1541819) (not d!160655) (not mapNonEmpty!58186))
(check-sat)
