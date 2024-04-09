; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41300 () Bool)

(assert start!41300)

(declare-fun b!461710 () Bool)

(declare-fun e!269320 () Bool)

(declare-fun tp_is_empty!12447 () Bool)

(assert (=> b!461710 (= e!269320 tp_is_empty!12447)))

(declare-fun b!461712 () Bool)

(declare-fun e!269321 () Bool)

(declare-datatypes ((array!28657 0))(
  ( (array!28658 (arr!13763 (Array (_ BitVec 32) (_ BitVec 64))) (size!14115 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28657)

(assert (=> b!461712 (= e!269321 (bvsgt #b00000000000000000000000000000000 (size!14115 _keys!1025)))))

(declare-fun b!461713 () Bool)

(declare-fun res!276242 () Bool)

(assert (=> b!461713 (=> (not res!276242) (not e!269321))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!17701 0))(
  ( (V!17702 (val!6268 Int)) )
))
(declare-datatypes ((ValueCell!5880 0))(
  ( (ValueCellFull!5880 (v!8550 V!17701)) (EmptyCell!5880) )
))
(declare-datatypes ((array!28659 0))(
  ( (array!28660 (arr!13764 (Array (_ BitVec 32) ValueCell!5880)) (size!14116 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28659)

(assert (=> b!461713 (= res!276242 (and (= (size!14116 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14115 _keys!1025) (size!14116 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!20329 () Bool)

(declare-fun mapRes!20329 () Bool)

(assert (=> mapIsEmpty!20329 mapRes!20329))

(declare-fun mapNonEmpty!20329 () Bool)

(declare-fun tp!39148 () Bool)

(declare-fun e!269319 () Bool)

(assert (=> mapNonEmpty!20329 (= mapRes!20329 (and tp!39148 e!269319))))

(declare-fun mapValue!20329 () ValueCell!5880)

(declare-fun mapKey!20329 () (_ BitVec 32))

(declare-fun mapRest!20329 () (Array (_ BitVec 32) ValueCell!5880))

(assert (=> mapNonEmpty!20329 (= (arr!13764 _values!833) (store mapRest!20329 mapKey!20329 mapValue!20329))))

(declare-fun b!461714 () Bool)

(assert (=> b!461714 (= e!269319 tp_is_empty!12447)))

(declare-fun b!461715 () Bool)

(declare-fun e!269317 () Bool)

(assert (=> b!461715 (= e!269317 (and e!269320 mapRes!20329))))

(declare-fun condMapEmpty!20329 () Bool)

(declare-fun mapDefault!20329 () ValueCell!5880)

(assert (=> b!461715 (= condMapEmpty!20329 (= (arr!13764 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5880)) mapDefault!20329)))))

(declare-fun b!461711 () Bool)

(declare-fun res!276243 () Bool)

(assert (=> b!461711 (=> (not res!276243) (not e!269321))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28657 (_ BitVec 32)) Bool)

(assert (=> b!461711 (= res!276243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!276241 () Bool)

(assert (=> start!41300 (=> (not res!276241) (not e!269321))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41300 (= res!276241 (validMask!0 mask!1365))))

(assert (=> start!41300 e!269321))

(assert (=> start!41300 true))

(declare-fun array_inv!9936 (array!28657) Bool)

(assert (=> start!41300 (array_inv!9936 _keys!1025)))

(declare-fun array_inv!9937 (array!28659) Bool)

(assert (=> start!41300 (and (array_inv!9937 _values!833) e!269317)))

(assert (= (and start!41300 res!276241) b!461713))

(assert (= (and b!461713 res!276242) b!461711))

(assert (= (and b!461711 res!276243) b!461712))

(assert (= (and b!461715 condMapEmpty!20329) mapIsEmpty!20329))

(assert (= (and b!461715 (not condMapEmpty!20329)) mapNonEmpty!20329))

(get-info :version)

(assert (= (and mapNonEmpty!20329 ((_ is ValueCellFull!5880) mapValue!20329)) b!461714))

(assert (= (and b!461715 ((_ is ValueCellFull!5880) mapDefault!20329)) b!461710))

(assert (= start!41300 b!461715))

(declare-fun m!444877 () Bool)

(assert (=> mapNonEmpty!20329 m!444877))

(declare-fun m!444879 () Bool)

(assert (=> b!461711 m!444879))

(declare-fun m!444881 () Bool)

(assert (=> start!41300 m!444881))

(declare-fun m!444883 () Bool)

(assert (=> start!41300 m!444883))

(declare-fun m!444885 () Bool)

(assert (=> start!41300 m!444885))

(check-sat (not start!41300) (not b!461711) (not mapNonEmpty!20329) tp_is_empty!12447)
(check-sat)
(get-model)

(declare-fun d!74783 () Bool)

(assert (=> d!74783 (= (validMask!0 mask!1365) (and (or (= mask!1365 #b00000000000000000000000000000111) (= mask!1365 #b00000000000000000000000000001111) (= mask!1365 #b00000000000000000000000000011111) (= mask!1365 #b00000000000000000000000000111111) (= mask!1365 #b00000000000000000000000001111111) (= mask!1365 #b00000000000000000000000011111111) (= mask!1365 #b00000000000000000000000111111111) (= mask!1365 #b00000000000000000000001111111111) (= mask!1365 #b00000000000000000000011111111111) (= mask!1365 #b00000000000000000000111111111111) (= mask!1365 #b00000000000000000001111111111111) (= mask!1365 #b00000000000000000011111111111111) (= mask!1365 #b00000000000000000111111111111111) (= mask!1365 #b00000000000000001111111111111111) (= mask!1365 #b00000000000000011111111111111111) (= mask!1365 #b00000000000000111111111111111111) (= mask!1365 #b00000000000001111111111111111111) (= mask!1365 #b00000000000011111111111111111111) (= mask!1365 #b00000000000111111111111111111111) (= mask!1365 #b00000000001111111111111111111111) (= mask!1365 #b00000000011111111111111111111111) (= mask!1365 #b00000000111111111111111111111111) (= mask!1365 #b00000001111111111111111111111111) (= mask!1365 #b00000011111111111111111111111111) (= mask!1365 #b00000111111111111111111111111111) (= mask!1365 #b00001111111111111111111111111111) (= mask!1365 #b00011111111111111111111111111111) (= mask!1365 #b00111111111111111111111111111111)) (bvsle mask!1365 #b00111111111111111111111111111111)))))

(assert (=> start!41300 d!74783))

(declare-fun d!74785 () Bool)

(assert (=> d!74785 (= (array_inv!9936 _keys!1025) (bvsge (size!14115 _keys!1025) #b00000000000000000000000000000000))))

(assert (=> start!41300 d!74785))

(declare-fun d!74787 () Bool)

(assert (=> d!74787 (= (array_inv!9937 _values!833) (bvsge (size!14116 _values!833) #b00000000000000000000000000000000))))

(assert (=> start!41300 d!74787))

(declare-fun b!461742 () Bool)

(declare-fun e!269344 () Bool)

(declare-fun e!269345 () Bool)

(assert (=> b!461742 (= e!269344 e!269345)))

(declare-fun lt!209105 () (_ BitVec 64))

(assert (=> b!461742 (= lt!209105 (select (arr!13763 _keys!1025) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!13385 0))(
  ( (Unit!13386) )
))
(declare-fun lt!209104 () Unit!13385)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!28657 (_ BitVec 64) (_ BitVec 32)) Unit!13385)

(assert (=> b!461742 (= lt!209104 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1025 lt!209105 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!28657 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!461742 (arrayContainsKey!0 _keys!1025 lt!209105 #b00000000000000000000000000000000)))

(declare-fun lt!209103 () Unit!13385)

(assert (=> b!461742 (= lt!209103 lt!209104)))

(declare-fun res!276258 () Bool)

(declare-datatypes ((SeekEntryResult!3526 0))(
  ( (MissingZero!3526 (index!16283 (_ BitVec 32))) (Found!3526 (index!16284 (_ BitVec 32))) (Intermediate!3526 (undefined!4338 Bool) (index!16285 (_ BitVec 32)) (x!43035 (_ BitVec 32))) (Undefined!3526) (MissingVacant!3526 (index!16286 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!28657 (_ BitVec 32)) SeekEntryResult!3526)

(assert (=> b!461742 (= res!276258 (= (seekEntryOrOpen!0 (select (arr!13763 _keys!1025) #b00000000000000000000000000000000) _keys!1025 mask!1365) (Found!3526 #b00000000000000000000000000000000)))))

(assert (=> b!461742 (=> (not res!276258) (not e!269345))))

(declare-fun d!74789 () Bool)

(declare-fun res!276257 () Bool)

(declare-fun e!269343 () Bool)

(assert (=> d!74789 (=> res!276257 e!269343)))

(assert (=> d!74789 (= res!276257 (bvsge #b00000000000000000000000000000000 (size!14115 _keys!1025)))))

(assert (=> d!74789 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365) e!269343)))

(declare-fun bm!30188 () Bool)

(declare-fun call!30191 () Bool)

(assert (=> bm!30188 (= call!30191 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1025 mask!1365))))

(declare-fun b!461743 () Bool)

(assert (=> b!461743 (= e!269343 e!269344)))

(declare-fun c!56544 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!461743 (= c!56544 (validKeyInArray!0 (select (arr!13763 _keys!1025) #b00000000000000000000000000000000)))))

(declare-fun b!461744 () Bool)

(assert (=> b!461744 (= e!269344 call!30191)))

(declare-fun b!461745 () Bool)

(assert (=> b!461745 (= e!269345 call!30191)))

(assert (= (and d!74789 (not res!276257)) b!461743))

(assert (= (and b!461743 c!56544) b!461742))

(assert (= (and b!461743 (not c!56544)) b!461744))

(assert (= (and b!461742 res!276258) b!461745))

(assert (= (or b!461745 b!461744) bm!30188))

(declare-fun m!444897 () Bool)

(assert (=> b!461742 m!444897))

(declare-fun m!444899 () Bool)

(assert (=> b!461742 m!444899))

(declare-fun m!444901 () Bool)

(assert (=> b!461742 m!444901))

(assert (=> b!461742 m!444897))

(declare-fun m!444903 () Bool)

(assert (=> b!461742 m!444903))

(declare-fun m!444905 () Bool)

(assert (=> bm!30188 m!444905))

(assert (=> b!461743 m!444897))

(assert (=> b!461743 m!444897))

(declare-fun m!444907 () Bool)

(assert (=> b!461743 m!444907))

(assert (=> b!461711 d!74789))

(declare-fun mapIsEmpty!20335 () Bool)

(declare-fun mapRes!20335 () Bool)

(assert (=> mapIsEmpty!20335 mapRes!20335))

(declare-fun condMapEmpty!20335 () Bool)

(declare-fun mapDefault!20335 () ValueCell!5880)

(assert (=> mapNonEmpty!20329 (= condMapEmpty!20335 (= mapRest!20329 ((as const (Array (_ BitVec 32) ValueCell!5880)) mapDefault!20335)))))

(declare-fun e!269350 () Bool)

(assert (=> mapNonEmpty!20329 (= tp!39148 (and e!269350 mapRes!20335))))

(declare-fun mapNonEmpty!20335 () Bool)

(declare-fun tp!39154 () Bool)

(declare-fun e!269351 () Bool)

(assert (=> mapNonEmpty!20335 (= mapRes!20335 (and tp!39154 e!269351))))

(declare-fun mapValue!20335 () ValueCell!5880)

(declare-fun mapRest!20335 () (Array (_ BitVec 32) ValueCell!5880))

(declare-fun mapKey!20335 () (_ BitVec 32))

(assert (=> mapNonEmpty!20335 (= mapRest!20329 (store mapRest!20335 mapKey!20335 mapValue!20335))))

(declare-fun b!461752 () Bool)

(assert (=> b!461752 (= e!269351 tp_is_empty!12447)))

(declare-fun b!461753 () Bool)

(assert (=> b!461753 (= e!269350 tp_is_empty!12447)))

(assert (= (and mapNonEmpty!20329 condMapEmpty!20335) mapIsEmpty!20335))

(assert (= (and mapNonEmpty!20329 (not condMapEmpty!20335)) mapNonEmpty!20335))

(assert (= (and mapNonEmpty!20335 ((_ is ValueCellFull!5880) mapValue!20335)) b!461752))

(assert (= (and mapNonEmpty!20329 ((_ is ValueCellFull!5880) mapDefault!20335)) b!461753))

(declare-fun m!444909 () Bool)

(assert (=> mapNonEmpty!20335 m!444909))

(check-sat (not b!461743) tp_is_empty!12447 (not b!461742) (not mapNonEmpty!20335) (not bm!30188))
(check-sat)
