; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!69872 () Bool)

(assert start!69872)

(declare-fun mapNonEmpty!22591 () Bool)

(declare-fun mapRes!22591 () Bool)

(declare-fun tp!43699 () Bool)

(declare-fun e!449790 () Bool)

(assert (=> mapNonEmpty!22591 (= mapRes!22591 (and tp!43699 e!449790))))

(declare-datatypes ((V!23685 0))(
  ( (V!23686 (val!7054 Int)) )
))
(declare-datatypes ((ValueCell!6591 0))(
  ( (ValueCellFull!6591 (v!9476 V!23685)) (EmptyCell!6591) )
))
(declare-datatypes ((array!44226 0))(
  ( (array!44227 (arr!21172 (Array (_ BitVec 32) ValueCell!6591)) (size!21593 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44226)

(declare-fun mapRest!22591 () (Array (_ BitVec 32) ValueCell!6591))

(declare-fun mapValue!22591 () ValueCell!6591)

(declare-fun mapKey!22591 () (_ BitVec 32))

(assert (=> mapNonEmpty!22591 (= (arr!21172 _values!788) (store mapRest!22591 mapKey!22591 mapValue!22591))))

(declare-fun b!812100 () Bool)

(declare-fun res!555091 () Bool)

(declare-fun e!449793 () Bool)

(assert (=> b!812100 (=> (not res!555091) (not e!449793))))

(declare-datatypes ((array!44228 0))(
  ( (array!44229 (arr!21173 (Array (_ BitVec 32) (_ BitVec 64))) (size!21594 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44228)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!812100 (= res!555091 (and (= (size!21593 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21594 _keys!976) (size!21593 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!812101 () Bool)

(declare-fun res!555093 () Bool)

(assert (=> b!812101 (=> (not res!555093) (not e!449793))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44228 (_ BitVec 32)) Bool)

(assert (=> b!812101 (= res!555093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!812102 () Bool)

(declare-fun e!449788 () Bool)

(declare-fun e!449791 () Bool)

(assert (=> b!812102 (= e!449788 (and e!449791 mapRes!22591))))

(declare-fun condMapEmpty!22591 () Bool)

(declare-fun mapDefault!22591 () ValueCell!6591)

(assert (=> b!812102 (= condMapEmpty!22591 (= (arr!21172 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6591)) mapDefault!22591)))))

(declare-fun b!812103 () Bool)

(declare-fun e!449789 () Bool)

(assert (=> b!812103 (= e!449793 e!449789)))

(declare-fun res!555088 () Bool)

(assert (=> b!812103 (=> res!555088 e!449789)))

(declare-datatypes ((List!15127 0))(
  ( (Nil!15124) (Cons!15123 (h!16252 (_ BitVec 64)) (t!21450 List!15127)) )
))
(declare-fun contains!4140 (List!15127 (_ BitVec 64)) Bool)

(assert (=> b!812103 (= res!555088 (contains!4140 Nil!15124 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!812104 () Bool)

(declare-fun res!555089 () Bool)

(assert (=> b!812104 (=> (not res!555089) (not e!449793))))

(declare-fun noDuplicate!1294 (List!15127) Bool)

(assert (=> b!812104 (= res!555089 (noDuplicate!1294 Nil!15124))))

(declare-fun b!812105 () Bool)

(assert (=> b!812105 (= e!449789 (contains!4140 Nil!15124 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!812106 () Bool)

(declare-fun tp_is_empty!14013 () Bool)

(assert (=> b!812106 (= e!449790 tp_is_empty!14013)))

(declare-fun b!812107 () Bool)

(declare-fun res!555092 () Bool)

(assert (=> b!812107 (=> (not res!555092) (not e!449793))))

(assert (=> b!812107 (= res!555092 (and (bvsle #b00000000000000000000000000000000 (size!21594 _keys!976)) (bvslt (size!21594 _keys!976) #b01111111111111111111111111111111)))))

(declare-fun mapIsEmpty!22591 () Bool)

(assert (=> mapIsEmpty!22591 mapRes!22591))

(declare-fun res!555090 () Bool)

(assert (=> start!69872 (=> (not res!555090) (not e!449793))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!69872 (= res!555090 (validMask!0 mask!1312))))

(assert (=> start!69872 e!449793))

(declare-fun array_inv!16939 (array!44228) Bool)

(assert (=> start!69872 (array_inv!16939 _keys!976)))

(assert (=> start!69872 true))

(declare-fun array_inv!16940 (array!44226) Bool)

(assert (=> start!69872 (and (array_inv!16940 _values!788) e!449788)))

(declare-fun b!812099 () Bool)

(assert (=> b!812099 (= e!449791 tp_is_empty!14013)))

(assert (= (and start!69872 res!555090) b!812100))

(assert (= (and b!812100 res!555091) b!812101))

(assert (= (and b!812101 res!555093) b!812107))

(assert (= (and b!812107 res!555092) b!812104))

(assert (= (and b!812104 res!555089) b!812103))

(assert (= (and b!812103 (not res!555088)) b!812105))

(assert (= (and b!812102 condMapEmpty!22591) mapIsEmpty!22591))

(assert (= (and b!812102 (not condMapEmpty!22591)) mapNonEmpty!22591))

(get-info :version)

(assert (= (and mapNonEmpty!22591 ((_ is ValueCellFull!6591) mapValue!22591)) b!812106))

(assert (= (and b!812102 ((_ is ValueCellFull!6591) mapDefault!22591)) b!812099))

(assert (= start!69872 b!812102))

(declare-fun m!754635 () Bool)

(assert (=> start!69872 m!754635))

(declare-fun m!754637 () Bool)

(assert (=> start!69872 m!754637))

(declare-fun m!754639 () Bool)

(assert (=> start!69872 m!754639))

(declare-fun m!754641 () Bool)

(assert (=> b!812104 m!754641))

(declare-fun m!754643 () Bool)

(assert (=> b!812103 m!754643))

(declare-fun m!754645 () Bool)

(assert (=> b!812105 m!754645))

(declare-fun m!754647 () Bool)

(assert (=> mapNonEmpty!22591 m!754647))

(declare-fun m!754649 () Bool)

(assert (=> b!812101 m!754649))

(check-sat (not b!812103) (not b!812105) (not b!812104) tp_is_empty!14013 (not mapNonEmpty!22591) (not b!812101) (not start!69872))
(check-sat)
(get-model)

(declare-fun d!104245 () Bool)

(declare-fun lt!364054 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!387 (List!15127) (InoxSet (_ BitVec 64)))

(assert (=> d!104245 (= lt!364054 (select (content!387 Nil!15124) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!449816 () Bool)

(assert (=> d!104245 (= lt!364054 e!449816)))

(declare-fun res!555116 () Bool)

(assert (=> d!104245 (=> (not res!555116) (not e!449816))))

(assert (=> d!104245 (= res!555116 ((_ is Cons!15123) Nil!15124))))

(assert (=> d!104245 (= (contains!4140 Nil!15124 #b0000000000000000000000000000000000000000000000000000000000000000) lt!364054)))

(declare-fun b!812139 () Bool)

(declare-fun e!449817 () Bool)

(assert (=> b!812139 (= e!449816 e!449817)))

(declare-fun res!555117 () Bool)

(assert (=> b!812139 (=> res!555117 e!449817)))

(assert (=> b!812139 (= res!555117 (= (h!16252 Nil!15124) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!812140 () Bool)

(assert (=> b!812140 (= e!449817 (contains!4140 (t!21450 Nil!15124) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!104245 res!555116) b!812139))

(assert (= (and b!812139 (not res!555117)) b!812140))

(declare-fun m!754667 () Bool)

(assert (=> d!104245 m!754667))

(declare-fun m!754669 () Bool)

(assert (=> d!104245 m!754669))

(declare-fun m!754671 () Bool)

(assert (=> b!812140 m!754671))

(assert (=> b!812103 d!104245))

(declare-fun d!104247 () Bool)

(declare-fun res!555122 () Bool)

(declare-fun e!449822 () Bool)

(assert (=> d!104247 (=> res!555122 e!449822)))

(assert (=> d!104247 (= res!555122 ((_ is Nil!15124) Nil!15124))))

(assert (=> d!104247 (= (noDuplicate!1294 Nil!15124) e!449822)))

(declare-fun b!812145 () Bool)

(declare-fun e!449823 () Bool)

(assert (=> b!812145 (= e!449822 e!449823)))

(declare-fun res!555123 () Bool)

(assert (=> b!812145 (=> (not res!555123) (not e!449823))))

(assert (=> b!812145 (= res!555123 (not (contains!4140 (t!21450 Nil!15124) (h!16252 Nil!15124))))))

(declare-fun b!812146 () Bool)

(assert (=> b!812146 (= e!449823 (noDuplicate!1294 (t!21450 Nil!15124)))))

(assert (= (and d!104247 (not res!555122)) b!812145))

(assert (= (and b!812145 res!555123) b!812146))

(declare-fun m!754673 () Bool)

(assert (=> b!812145 m!754673))

(declare-fun m!754675 () Bool)

(assert (=> b!812146 m!754675))

(assert (=> b!812104 d!104247))

(declare-fun d!104249 () Bool)

(declare-fun lt!364055 () Bool)

(assert (=> d!104249 (= lt!364055 (select (content!387 Nil!15124) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!449824 () Bool)

(assert (=> d!104249 (= lt!364055 e!449824)))

(declare-fun res!555124 () Bool)

(assert (=> d!104249 (=> (not res!555124) (not e!449824))))

(assert (=> d!104249 (= res!555124 ((_ is Cons!15123) Nil!15124))))

(assert (=> d!104249 (= (contains!4140 Nil!15124 #b1000000000000000000000000000000000000000000000000000000000000000) lt!364055)))

(declare-fun b!812147 () Bool)

(declare-fun e!449825 () Bool)

(assert (=> b!812147 (= e!449824 e!449825)))

(declare-fun res!555125 () Bool)

(assert (=> b!812147 (=> res!555125 e!449825)))

(assert (=> b!812147 (= res!555125 (= (h!16252 Nil!15124) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!812148 () Bool)

(assert (=> b!812148 (= e!449825 (contains!4140 (t!21450 Nil!15124) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!104249 res!555124) b!812147))

(assert (= (and b!812147 (not res!555125)) b!812148))

(assert (=> d!104249 m!754667))

(declare-fun m!754677 () Bool)

(assert (=> d!104249 m!754677))

(declare-fun m!754679 () Bool)

(assert (=> b!812148 m!754679))

(assert (=> b!812105 d!104249))

(declare-fun b!812157 () Bool)

(declare-fun e!449833 () Bool)

(declare-fun e!449832 () Bool)

(assert (=> b!812157 (= e!449833 e!449832)))

(declare-fun lt!364062 () (_ BitVec 64))

(assert (=> b!812157 (= lt!364062 (select (arr!21173 _keys!976) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!27686 0))(
  ( (Unit!27687) )
))
(declare-fun lt!364064 () Unit!27686)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!44228 (_ BitVec 64) (_ BitVec 32)) Unit!27686)

(assert (=> b!812157 (= lt!364064 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!976 lt!364062 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!44228 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!812157 (arrayContainsKey!0 _keys!976 lt!364062 #b00000000000000000000000000000000)))

(declare-fun lt!364063 () Unit!27686)

(assert (=> b!812157 (= lt!364063 lt!364064)))

(declare-fun res!555131 () Bool)

(declare-datatypes ((SeekEntryResult!8706 0))(
  ( (MissingZero!8706 (index!37194 (_ BitVec 32))) (Found!8706 (index!37195 (_ BitVec 32))) (Intermediate!8706 (undefined!9518 Bool) (index!37196 (_ BitVec 32)) (x!68184 (_ BitVec 32))) (Undefined!8706) (MissingVacant!8706 (index!37197 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!44228 (_ BitVec 32)) SeekEntryResult!8706)

(assert (=> b!812157 (= res!555131 (= (seekEntryOrOpen!0 (select (arr!21173 _keys!976) #b00000000000000000000000000000000) _keys!976 mask!1312) (Found!8706 #b00000000000000000000000000000000)))))

(assert (=> b!812157 (=> (not res!555131) (not e!449832))))

(declare-fun bm!35481 () Bool)

(declare-fun call!35484 () Bool)

(assert (=> bm!35481 (= call!35484 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!976 mask!1312))))

(declare-fun b!812158 () Bool)

(declare-fun e!449834 () Bool)

(assert (=> b!812158 (= e!449834 e!449833)))

(declare-fun c!88815 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!812158 (= c!88815 (validKeyInArray!0 (select (arr!21173 _keys!976) #b00000000000000000000000000000000)))))

(declare-fun b!812159 () Bool)

(assert (=> b!812159 (= e!449832 call!35484)))

(declare-fun b!812160 () Bool)

(assert (=> b!812160 (= e!449833 call!35484)))

(declare-fun d!104251 () Bool)

(declare-fun res!555130 () Bool)

(assert (=> d!104251 (=> res!555130 e!449834)))

(assert (=> d!104251 (= res!555130 (bvsge #b00000000000000000000000000000000 (size!21594 _keys!976)))))

(assert (=> d!104251 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312) e!449834)))

(assert (= (and d!104251 (not res!555130)) b!812158))

(assert (= (and b!812158 c!88815) b!812157))

(assert (= (and b!812158 (not c!88815)) b!812160))

(assert (= (and b!812157 res!555131) b!812159))

(assert (= (or b!812159 b!812160) bm!35481))

(declare-fun m!754681 () Bool)

(assert (=> b!812157 m!754681))

(declare-fun m!754683 () Bool)

(assert (=> b!812157 m!754683))

(declare-fun m!754685 () Bool)

(assert (=> b!812157 m!754685))

(assert (=> b!812157 m!754681))

(declare-fun m!754687 () Bool)

(assert (=> b!812157 m!754687))

(declare-fun m!754689 () Bool)

(assert (=> bm!35481 m!754689))

(assert (=> b!812158 m!754681))

(assert (=> b!812158 m!754681))

(declare-fun m!754691 () Bool)

(assert (=> b!812158 m!754691))

(assert (=> b!812101 d!104251))

(declare-fun d!104253 () Bool)

(assert (=> d!104253 (= (validMask!0 mask!1312) (and (or (= mask!1312 #b00000000000000000000000000000111) (= mask!1312 #b00000000000000000000000000001111) (= mask!1312 #b00000000000000000000000000011111) (= mask!1312 #b00000000000000000000000000111111) (= mask!1312 #b00000000000000000000000001111111) (= mask!1312 #b00000000000000000000000011111111) (= mask!1312 #b00000000000000000000000111111111) (= mask!1312 #b00000000000000000000001111111111) (= mask!1312 #b00000000000000000000011111111111) (= mask!1312 #b00000000000000000000111111111111) (= mask!1312 #b00000000000000000001111111111111) (= mask!1312 #b00000000000000000011111111111111) (= mask!1312 #b00000000000000000111111111111111) (= mask!1312 #b00000000000000001111111111111111) (= mask!1312 #b00000000000000011111111111111111) (= mask!1312 #b00000000000000111111111111111111) (= mask!1312 #b00000000000001111111111111111111) (= mask!1312 #b00000000000011111111111111111111) (= mask!1312 #b00000000000111111111111111111111) (= mask!1312 #b00000000001111111111111111111111) (= mask!1312 #b00000000011111111111111111111111) (= mask!1312 #b00000000111111111111111111111111) (= mask!1312 #b00000001111111111111111111111111) (= mask!1312 #b00000011111111111111111111111111) (= mask!1312 #b00000111111111111111111111111111) (= mask!1312 #b00001111111111111111111111111111) (= mask!1312 #b00011111111111111111111111111111) (= mask!1312 #b00111111111111111111111111111111)) (bvsle mask!1312 #b00111111111111111111111111111111)))))

(assert (=> start!69872 d!104253))

(declare-fun d!104255 () Bool)

(assert (=> d!104255 (= (array_inv!16939 _keys!976) (bvsge (size!21594 _keys!976) #b00000000000000000000000000000000))))

(assert (=> start!69872 d!104255))

(declare-fun d!104257 () Bool)

(assert (=> d!104257 (= (array_inv!16940 _values!788) (bvsge (size!21593 _values!788) #b00000000000000000000000000000000))))

(assert (=> start!69872 d!104257))

(declare-fun b!812167 () Bool)

(declare-fun e!449839 () Bool)

(assert (=> b!812167 (= e!449839 tp_is_empty!14013)))

(declare-fun condMapEmpty!22597 () Bool)

(declare-fun mapDefault!22597 () ValueCell!6591)

(assert (=> mapNonEmpty!22591 (= condMapEmpty!22597 (= mapRest!22591 ((as const (Array (_ BitVec 32) ValueCell!6591)) mapDefault!22597)))))

(declare-fun e!449840 () Bool)

(declare-fun mapRes!22597 () Bool)

(assert (=> mapNonEmpty!22591 (= tp!43699 (and e!449840 mapRes!22597))))

(declare-fun mapIsEmpty!22597 () Bool)

(assert (=> mapIsEmpty!22597 mapRes!22597))

(declare-fun mapNonEmpty!22597 () Bool)

(declare-fun tp!43705 () Bool)

(assert (=> mapNonEmpty!22597 (= mapRes!22597 (and tp!43705 e!449839))))

(declare-fun mapKey!22597 () (_ BitVec 32))

(declare-fun mapValue!22597 () ValueCell!6591)

(declare-fun mapRest!22597 () (Array (_ BitVec 32) ValueCell!6591))

(assert (=> mapNonEmpty!22597 (= mapRest!22591 (store mapRest!22597 mapKey!22597 mapValue!22597))))

(declare-fun b!812168 () Bool)

(assert (=> b!812168 (= e!449840 tp_is_empty!14013)))

(assert (= (and mapNonEmpty!22591 condMapEmpty!22597) mapIsEmpty!22597))

(assert (= (and mapNonEmpty!22591 (not condMapEmpty!22597)) mapNonEmpty!22597))

(assert (= (and mapNonEmpty!22597 ((_ is ValueCellFull!6591) mapValue!22597)) b!812167))

(assert (= (and mapNonEmpty!22591 ((_ is ValueCellFull!6591) mapDefault!22597)) b!812168))

(declare-fun m!754693 () Bool)

(assert (=> mapNonEmpty!22597 m!754693))

(check-sat (not d!104245) (not b!812145) (not b!812157) (not mapNonEmpty!22597) (not bm!35481) tp_is_empty!14013 (not b!812140) (not b!812148) (not b!812146) (not d!104249) (not b!812158))
(check-sat)
