; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82142 () Bool)

(assert start!82142)

(declare-fun b!957097 () Bool)

(declare-fun e!539478 () Bool)

(declare-datatypes ((List!19643 0))(
  ( (Nil!19640) (Cons!19639 (h!20801 (_ BitVec 64)) (t!28014 List!19643)) )
))
(declare-fun contains!5321 (List!19643 (_ BitVec 64)) Bool)

(assert (=> b!957097 (= e!539478 (contains!5321 Nil!19640 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!33634 () Bool)

(declare-fun mapRes!33634 () Bool)

(declare-fun tp!64240 () Bool)

(declare-fun e!539481 () Bool)

(assert (=> mapNonEmpty!33634 (= mapRes!33634 (and tp!64240 e!539481))))

(declare-fun mapKey!33634 () (_ BitVec 32))

(declare-datatypes ((V!33123 0))(
  ( (V!33124 (val!10603 Int)) )
))
(declare-datatypes ((ValueCell!10071 0))(
  ( (ValueCellFull!10071 (v!13159 V!33123)) (EmptyCell!10071) )
))
(declare-fun mapRest!33634 () (Array (_ BitVec 32) ValueCell!10071))

(declare-datatypes ((array!58333 0))(
  ( (array!58334 (arr!28037 (Array (_ BitVec 32) ValueCell!10071)) (size!28517 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58333)

(declare-fun mapValue!33634 () ValueCell!10071)

(assert (=> mapNonEmpty!33634 (= (arr!28037 _values!1386) (store mapRest!33634 mapKey!33634 mapValue!33634))))

(declare-fun b!957098 () Bool)

(declare-fun res!640840 () Bool)

(declare-fun e!539479 () Bool)

(assert (=> b!957098 (=> (not res!640840) (not e!539479))))

(declare-datatypes ((array!58335 0))(
  ( (array!58336 (arr!28038 (Array (_ BitVec 32) (_ BitVec 64))) (size!28518 (_ BitVec 32))) )
))
(declare-fun _keys!1668 () array!58335)

(assert (=> b!957098 (= res!640840 (and (bvsle #b00000000000000000000000000000000 (size!28518 _keys!1668)) (bvslt (size!28518 _keys!1668) #b01111111111111111111111111111111)))))

(declare-fun b!957099 () Bool)

(declare-fun res!640842 () Bool)

(assert (=> b!957099 (=> (not res!640842) (not e!539479))))

(declare-fun mask!2088 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58335 (_ BitVec 32)) Bool)

(assert (=> b!957099 (= res!640842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088))))

(declare-fun b!957100 () Bool)

(declare-fun res!640839 () Bool)

(assert (=> b!957100 (=> (not res!640839) (not e!539479))))

(declare-fun extraKeys!1307 () (_ BitVec 32))

(assert (=> b!957100 (= res!640839 (and (= (size!28517 _values!1386) (bvadd #b00000000000000000000000000000001 mask!2088)) (= (size!28518 _keys!1668) (size!28517 _values!1386)) (bvsge mask!2088 #b00000000000000000000000000000000) (bvsge extraKeys!1307 #b00000000000000000000000000000000) (bvsle extraKeys!1307 #b00000000000000000000000000000011)))))

(declare-fun b!957101 () Bool)

(assert (=> b!957101 (= e!539479 e!539478)))

(declare-fun res!640838 () Bool)

(assert (=> b!957101 (=> res!640838 e!539478)))

(assert (=> b!957101 (= res!640838 (contains!5321 Nil!19640 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!957102 () Bool)

(declare-fun e!539477 () Bool)

(declare-fun tp_is_empty!21105 () Bool)

(assert (=> b!957102 (= e!539477 tp_is_empty!21105)))

(declare-fun res!640841 () Bool)

(assert (=> start!82142 (=> (not res!640841) (not e!539479))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82142 (= res!640841 (validMask!0 mask!2088))))

(assert (=> start!82142 e!539479))

(assert (=> start!82142 true))

(declare-fun e!539476 () Bool)

(declare-fun array_inv!21697 (array!58333) Bool)

(assert (=> start!82142 (and (array_inv!21697 _values!1386) e!539476)))

(declare-fun array_inv!21698 (array!58335) Bool)

(assert (=> start!82142 (array_inv!21698 _keys!1668)))

(declare-fun b!957103 () Bool)

(assert (=> b!957103 (= e!539481 tp_is_empty!21105)))

(declare-fun mapIsEmpty!33634 () Bool)

(assert (=> mapIsEmpty!33634 mapRes!33634))

(declare-fun b!957104 () Bool)

(declare-fun res!640843 () Bool)

(assert (=> b!957104 (=> (not res!640843) (not e!539479))))

(declare-fun noDuplicate!1369 (List!19643) Bool)

(assert (=> b!957104 (= res!640843 (noDuplicate!1369 Nil!19640))))

(declare-fun b!957105 () Bool)

(assert (=> b!957105 (= e!539476 (and e!539477 mapRes!33634))))

(declare-fun condMapEmpty!33634 () Bool)

(declare-fun mapDefault!33634 () ValueCell!10071)

(assert (=> b!957105 (= condMapEmpty!33634 (= (arr!28037 _values!1386) ((as const (Array (_ BitVec 32) ValueCell!10071)) mapDefault!33634)))))

(assert (= (and start!82142 res!640841) b!957100))

(assert (= (and b!957100 res!640839) b!957099))

(assert (= (and b!957099 res!640842) b!957098))

(assert (= (and b!957098 res!640840) b!957104))

(assert (= (and b!957104 res!640843) b!957101))

(assert (= (and b!957101 (not res!640838)) b!957097))

(assert (= (and b!957105 condMapEmpty!33634) mapIsEmpty!33634))

(assert (= (and b!957105 (not condMapEmpty!33634)) mapNonEmpty!33634))

(get-info :version)

(assert (= (and mapNonEmpty!33634 ((_ is ValueCellFull!10071) mapValue!33634)) b!957103))

(assert (= (and b!957105 ((_ is ValueCellFull!10071) mapDefault!33634)) b!957102))

(assert (= start!82142 b!957105))

(declare-fun m!888237 () Bool)

(assert (=> start!82142 m!888237))

(declare-fun m!888239 () Bool)

(assert (=> start!82142 m!888239))

(declare-fun m!888241 () Bool)

(assert (=> start!82142 m!888241))

(declare-fun m!888243 () Bool)

(assert (=> b!957097 m!888243))

(declare-fun m!888245 () Bool)

(assert (=> b!957099 m!888245))

(declare-fun m!888247 () Bool)

(assert (=> b!957101 m!888247))

(declare-fun m!888249 () Bool)

(assert (=> mapNonEmpty!33634 m!888249))

(declare-fun m!888251 () Bool)

(assert (=> b!957104 m!888251))

(check-sat (not b!957101) (not start!82142) (not mapNonEmpty!33634) (not b!957099) tp_is_empty!21105 (not b!957097) (not b!957104))
(check-sat)
(get-model)

(declare-fun d!115825 () Bool)

(declare-fun lt!430237 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!415 (List!19643) (InoxSet (_ BitVec 64)))

(assert (=> d!115825 (= lt!430237 (select (content!415 Nil!19640) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!539505 () Bool)

(assert (=> d!115825 (= lt!430237 e!539505)))

(declare-fun res!640867 () Bool)

(assert (=> d!115825 (=> (not res!640867) (not e!539505))))

(assert (=> d!115825 (= res!640867 ((_ is Cons!19639) Nil!19640))))

(assert (=> d!115825 (= (contains!5321 Nil!19640 #b1000000000000000000000000000000000000000000000000000000000000000) lt!430237)))

(declare-fun b!957137 () Bool)

(declare-fun e!539504 () Bool)

(assert (=> b!957137 (= e!539505 e!539504)))

(declare-fun res!640866 () Bool)

(assert (=> b!957137 (=> res!640866 e!539504)))

(assert (=> b!957137 (= res!640866 (= (h!20801 Nil!19640) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!957138 () Bool)

(assert (=> b!957138 (= e!539504 (contains!5321 (t!28014 Nil!19640) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!115825 res!640867) b!957137))

(assert (= (and b!957137 (not res!640866)) b!957138))

(declare-fun m!888269 () Bool)

(assert (=> d!115825 m!888269))

(declare-fun m!888271 () Bool)

(assert (=> d!115825 m!888271))

(declare-fun m!888273 () Bool)

(assert (=> b!957138 m!888273))

(assert (=> b!957097 d!115825))

(declare-fun d!115827 () Bool)

(declare-fun lt!430238 () Bool)

(assert (=> d!115827 (= lt!430238 (select (content!415 Nil!19640) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!539507 () Bool)

(assert (=> d!115827 (= lt!430238 e!539507)))

(declare-fun res!640869 () Bool)

(assert (=> d!115827 (=> (not res!640869) (not e!539507))))

(assert (=> d!115827 (= res!640869 ((_ is Cons!19639) Nil!19640))))

(assert (=> d!115827 (= (contains!5321 Nil!19640 #b0000000000000000000000000000000000000000000000000000000000000000) lt!430238)))

(declare-fun b!957139 () Bool)

(declare-fun e!539506 () Bool)

(assert (=> b!957139 (= e!539507 e!539506)))

(declare-fun res!640868 () Bool)

(assert (=> b!957139 (=> res!640868 e!539506)))

(assert (=> b!957139 (= res!640868 (= (h!20801 Nil!19640) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!957140 () Bool)

(assert (=> b!957140 (= e!539506 (contains!5321 (t!28014 Nil!19640) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!115827 res!640869) b!957139))

(assert (= (and b!957139 (not res!640868)) b!957140))

(assert (=> d!115827 m!888269))

(declare-fun m!888275 () Bool)

(assert (=> d!115827 m!888275))

(declare-fun m!888277 () Bool)

(assert (=> b!957140 m!888277))

(assert (=> b!957101 d!115827))

(declare-fun d!115829 () Bool)

(assert (=> d!115829 (= (validMask!0 mask!2088) (and (or (= mask!2088 #b00000000000000000000000000000111) (= mask!2088 #b00000000000000000000000000001111) (= mask!2088 #b00000000000000000000000000011111) (= mask!2088 #b00000000000000000000000000111111) (= mask!2088 #b00000000000000000000000001111111) (= mask!2088 #b00000000000000000000000011111111) (= mask!2088 #b00000000000000000000000111111111) (= mask!2088 #b00000000000000000000001111111111) (= mask!2088 #b00000000000000000000011111111111) (= mask!2088 #b00000000000000000000111111111111) (= mask!2088 #b00000000000000000001111111111111) (= mask!2088 #b00000000000000000011111111111111) (= mask!2088 #b00000000000000000111111111111111) (= mask!2088 #b00000000000000001111111111111111) (= mask!2088 #b00000000000000011111111111111111) (= mask!2088 #b00000000000000111111111111111111) (= mask!2088 #b00000000000001111111111111111111) (= mask!2088 #b00000000000011111111111111111111) (= mask!2088 #b00000000000111111111111111111111) (= mask!2088 #b00000000001111111111111111111111) (= mask!2088 #b00000000011111111111111111111111) (= mask!2088 #b00000000111111111111111111111111) (= mask!2088 #b00000001111111111111111111111111) (= mask!2088 #b00000011111111111111111111111111) (= mask!2088 #b00000111111111111111111111111111) (= mask!2088 #b00001111111111111111111111111111) (= mask!2088 #b00011111111111111111111111111111) (= mask!2088 #b00111111111111111111111111111111)) (bvsle mask!2088 #b00111111111111111111111111111111)))))

(assert (=> start!82142 d!115829))

(declare-fun d!115831 () Bool)

(assert (=> d!115831 (= (array_inv!21697 _values!1386) (bvsge (size!28517 _values!1386) #b00000000000000000000000000000000))))

(assert (=> start!82142 d!115831))

(declare-fun d!115833 () Bool)

(assert (=> d!115833 (= (array_inv!21698 _keys!1668) (bvsge (size!28518 _keys!1668) #b00000000000000000000000000000000))))

(assert (=> start!82142 d!115833))

(declare-fun b!957150 () Bool)

(declare-fun e!539514 () Bool)

(declare-fun call!41717 () Bool)

(assert (=> b!957150 (= e!539514 call!41717)))

(declare-fun b!957151 () Bool)

(declare-fun e!539515 () Bool)

(assert (=> b!957151 (= e!539515 e!539514)))

(declare-fun lt!430246 () (_ BitVec 64))

(assert (=> b!957151 (= lt!430246 (select (arr!28038 _keys!1668) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!32141 0))(
  ( (Unit!32142) )
))
(declare-fun lt!430247 () Unit!32141)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!58335 (_ BitVec 64) (_ BitVec 32)) Unit!32141)

(assert (=> b!957151 (= lt!430247 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1668 lt!430246 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!58335 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!957151 (arrayContainsKey!0 _keys!1668 lt!430246 #b00000000000000000000000000000000)))

(declare-fun lt!430245 () Unit!32141)

(assert (=> b!957151 (= lt!430245 lt!430247)))

(declare-fun res!640874 () Bool)

(declare-datatypes ((SeekEntryResult!9180 0))(
  ( (MissingZero!9180 (index!39090 (_ BitVec 32))) (Found!9180 (index!39091 (_ BitVec 32))) (Intermediate!9180 (undefined!9992 Bool) (index!39092 (_ BitVec 32)) (x!82491 (_ BitVec 32))) (Undefined!9180) (MissingVacant!9180 (index!39093 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!58335 (_ BitVec 32)) SeekEntryResult!9180)

(assert (=> b!957151 (= res!640874 (= (seekEntryOrOpen!0 (select (arr!28038 _keys!1668) #b00000000000000000000000000000000) _keys!1668 mask!2088) (Found!9180 #b00000000000000000000000000000000)))))

(assert (=> b!957151 (=> (not res!640874) (not e!539514))))

(declare-fun b!957152 () Bool)

(assert (=> b!957152 (= e!539515 call!41717)))

(declare-fun bm!41714 () Bool)

(assert (=> bm!41714 (= call!41717 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1668 mask!2088))))

(declare-fun d!115835 () Bool)

(declare-fun res!640875 () Bool)

(declare-fun e!539516 () Bool)

(assert (=> d!115835 (=> res!640875 e!539516)))

(assert (=> d!115835 (= res!640875 (bvsge #b00000000000000000000000000000000 (size!28518 _keys!1668)))))

(assert (=> d!115835 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1668 mask!2088) e!539516)))

(declare-fun b!957149 () Bool)

(assert (=> b!957149 (= e!539516 e!539515)))

(declare-fun c!99823 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!957149 (= c!99823 (validKeyInArray!0 (select (arr!28038 _keys!1668) #b00000000000000000000000000000000)))))

(assert (= (and d!115835 (not res!640875)) b!957149))

(assert (= (and b!957149 c!99823) b!957151))

(assert (= (and b!957149 (not c!99823)) b!957152))

(assert (= (and b!957151 res!640874) b!957150))

(assert (= (or b!957150 b!957152) bm!41714))

(declare-fun m!888279 () Bool)

(assert (=> b!957151 m!888279))

(declare-fun m!888281 () Bool)

(assert (=> b!957151 m!888281))

(declare-fun m!888283 () Bool)

(assert (=> b!957151 m!888283))

(assert (=> b!957151 m!888279))

(declare-fun m!888285 () Bool)

(assert (=> b!957151 m!888285))

(declare-fun m!888287 () Bool)

(assert (=> bm!41714 m!888287))

(assert (=> b!957149 m!888279))

(assert (=> b!957149 m!888279))

(declare-fun m!888289 () Bool)

(assert (=> b!957149 m!888289))

(assert (=> b!957099 d!115835))

(declare-fun d!115837 () Bool)

(declare-fun res!640880 () Bool)

(declare-fun e!539521 () Bool)

(assert (=> d!115837 (=> res!640880 e!539521)))

(assert (=> d!115837 (= res!640880 ((_ is Nil!19640) Nil!19640))))

(assert (=> d!115837 (= (noDuplicate!1369 Nil!19640) e!539521)))

(declare-fun b!957157 () Bool)

(declare-fun e!539522 () Bool)

(assert (=> b!957157 (= e!539521 e!539522)))

(declare-fun res!640881 () Bool)

(assert (=> b!957157 (=> (not res!640881) (not e!539522))))

(assert (=> b!957157 (= res!640881 (not (contains!5321 (t!28014 Nil!19640) (h!20801 Nil!19640))))))

(declare-fun b!957158 () Bool)

(assert (=> b!957158 (= e!539522 (noDuplicate!1369 (t!28014 Nil!19640)))))

(assert (= (and d!115837 (not res!640880)) b!957157))

(assert (= (and b!957157 res!640881) b!957158))

(declare-fun m!888291 () Bool)

(assert (=> b!957157 m!888291))

(declare-fun m!888293 () Bool)

(assert (=> b!957158 m!888293))

(assert (=> b!957104 d!115837))

(declare-fun condMapEmpty!33640 () Bool)

(declare-fun mapDefault!33640 () ValueCell!10071)

(assert (=> mapNonEmpty!33634 (= condMapEmpty!33640 (= mapRest!33634 ((as const (Array (_ BitVec 32) ValueCell!10071)) mapDefault!33640)))))

(declare-fun e!539527 () Bool)

(declare-fun mapRes!33640 () Bool)

(assert (=> mapNonEmpty!33634 (= tp!64240 (and e!539527 mapRes!33640))))

(declare-fun mapIsEmpty!33640 () Bool)

(assert (=> mapIsEmpty!33640 mapRes!33640))

(declare-fun mapNonEmpty!33640 () Bool)

(declare-fun tp!64246 () Bool)

(declare-fun e!539528 () Bool)

(assert (=> mapNonEmpty!33640 (= mapRes!33640 (and tp!64246 e!539528))))

(declare-fun mapKey!33640 () (_ BitVec 32))

(declare-fun mapRest!33640 () (Array (_ BitVec 32) ValueCell!10071))

(declare-fun mapValue!33640 () ValueCell!10071)

(assert (=> mapNonEmpty!33640 (= mapRest!33634 (store mapRest!33640 mapKey!33640 mapValue!33640))))

(declare-fun b!957166 () Bool)

(assert (=> b!957166 (= e!539527 tp_is_empty!21105)))

(declare-fun b!957165 () Bool)

(assert (=> b!957165 (= e!539528 tp_is_empty!21105)))

(assert (= (and mapNonEmpty!33634 condMapEmpty!33640) mapIsEmpty!33640))

(assert (= (and mapNonEmpty!33634 (not condMapEmpty!33640)) mapNonEmpty!33640))

(assert (= (and mapNonEmpty!33640 ((_ is ValueCellFull!10071) mapValue!33640)) b!957165))

(assert (= (and mapNonEmpty!33634 ((_ is ValueCellFull!10071) mapDefault!33640)) b!957166))

(declare-fun m!888295 () Bool)

(assert (=> mapNonEmpty!33640 m!888295))

(check-sat (not b!957138) (not b!957140) (not d!115827) (not b!957151) (not d!115825) (not mapNonEmpty!33640) (not b!957149) (not b!957157) tp_is_empty!21105 (not bm!41714) (not b!957158))
(check-sat)
