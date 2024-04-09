; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93718 () Bool)

(assert start!93718)

(declare-fun b!1059762 () Bool)

(declare-fun res!707971 () Bool)

(declare-fun e!603300 () Bool)

(assert (=> b!1059762 (=> (not res!707971) (not e!603300))))

(declare-datatypes ((array!66980 0))(
  ( (array!66981 (arr!32196 (Array (_ BitVec 32) (_ BitVec 64))) (size!32733 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66980)

(declare-datatypes ((List!22562 0))(
  ( (Nil!22559) (Cons!22558 (h!23767 (_ BitVec 64)) (t!31876 List!22562)) )
))
(declare-fun arrayNoDuplicates!0 (array!66980 (_ BitVec 32) List!22562) Bool)

(assert (=> b!1059762 (= res!707971 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22559))))

(declare-fun b!1059763 () Bool)

(declare-fun e!603301 () Bool)

(declare-fun e!603302 () Bool)

(declare-fun mapRes!39145 () Bool)

(assert (=> b!1059763 (= e!603301 (and e!603302 mapRes!39145))))

(declare-fun condMapEmpty!39145 () Bool)

(declare-datatypes ((V!38451 0))(
  ( (V!38452 (val!12544 Int)) )
))
(declare-datatypes ((ValueCell!11790 0))(
  ( (ValueCellFull!11790 (v!15155 V!38451)) (EmptyCell!11790) )
))
(declare-datatypes ((array!66982 0))(
  ( (array!66983 (arr!32197 (Array (_ BitVec 32) ValueCell!11790)) (size!32734 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66982)

(declare-fun mapDefault!39145 () ValueCell!11790)

(assert (=> b!1059763 (= condMapEmpty!39145 (= (arr!32197 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11790)) mapDefault!39145)))))

(declare-fun mapIsEmpty!39145 () Bool)

(assert (=> mapIsEmpty!39145 mapRes!39145))

(declare-fun b!1059764 () Bool)

(declare-fun e!603299 () Bool)

(declare-fun tp_is_empty!24987 () Bool)

(assert (=> b!1059764 (= e!603299 tp_is_empty!24987)))

(declare-fun b!1059765 () Bool)

(declare-fun res!707972 () Bool)

(assert (=> b!1059765 (=> (not res!707972) (not e!603300))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66980 (_ BitVec 32)) Bool)

(assert (=> b!1059765 (= res!707972 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!39145 () Bool)

(declare-fun tp!74952 () Bool)

(assert (=> mapNonEmpty!39145 (= mapRes!39145 (and tp!74952 e!603299))))

(declare-fun mapValue!39145 () ValueCell!11790)

(declare-fun mapKey!39145 () (_ BitVec 32))

(declare-fun mapRest!39145 () (Array (_ BitVec 32) ValueCell!11790))

(assert (=> mapNonEmpty!39145 (= (arr!32197 _values!955) (store mapRest!39145 mapKey!39145 mapValue!39145))))

(declare-fun b!1059767 () Bool)

(assert (=> b!1059767 (= e!603302 tp_is_empty!24987)))

(declare-fun b!1059768 () Bool)

(declare-fun res!707973 () Bool)

(assert (=> b!1059768 (=> (not res!707973) (not e!603300))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1059768 (= res!707973 (and (= (size!32734 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32733 _keys!1163) (size!32734 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!707970 () Bool)

(assert (=> start!93718 (=> (not res!707970) (not e!603300))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93718 (= res!707970 (validMask!0 mask!1515))))

(assert (=> start!93718 e!603300))

(assert (=> start!93718 true))

(declare-fun array_inv!24806 (array!66982) Bool)

(assert (=> start!93718 (and (array_inv!24806 _values!955) e!603301)))

(declare-fun array_inv!24807 (array!66980) Bool)

(assert (=> start!93718 (array_inv!24807 _keys!1163)))

(declare-fun b!1059766 () Bool)

(assert (=> b!1059766 (= e!603300 (bvsgt #b00000000000000000000000000000000 (size!32733 _keys!1163)))))

(assert (= (and start!93718 res!707970) b!1059768))

(assert (= (and b!1059768 res!707973) b!1059765))

(assert (= (and b!1059765 res!707972) b!1059762))

(assert (= (and b!1059762 res!707971) b!1059766))

(assert (= (and b!1059763 condMapEmpty!39145) mapIsEmpty!39145))

(assert (= (and b!1059763 (not condMapEmpty!39145)) mapNonEmpty!39145))

(get-info :version)

(assert (= (and mapNonEmpty!39145 ((_ is ValueCellFull!11790) mapValue!39145)) b!1059764))

(assert (= (and b!1059763 ((_ is ValueCellFull!11790) mapDefault!39145)) b!1059767))

(assert (= start!93718 b!1059763))

(declare-fun m!979197 () Bool)

(assert (=> b!1059762 m!979197))

(declare-fun m!979199 () Bool)

(assert (=> b!1059765 m!979199))

(declare-fun m!979201 () Bool)

(assert (=> mapNonEmpty!39145 m!979201))

(declare-fun m!979203 () Bool)

(assert (=> start!93718 m!979203))

(declare-fun m!979205 () Bool)

(assert (=> start!93718 m!979205))

(declare-fun m!979207 () Bool)

(assert (=> start!93718 m!979207))

(check-sat (not b!1059765) (not mapNonEmpty!39145) (not start!93718) tp_is_empty!24987 (not b!1059762))
(check-sat)
(get-model)

(declare-fun d!128699 () Bool)

(assert (=> d!128699 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!93718 d!128699))

(declare-fun d!128701 () Bool)

(assert (=> d!128701 (= (array_inv!24806 _values!955) (bvsge (size!32734 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!93718 d!128701))

(declare-fun d!128703 () Bool)

(assert (=> d!128703 (= (array_inv!24807 _keys!1163) (bvsge (size!32733 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!93718 d!128703))

(declare-fun b!1059800 () Bool)

(declare-fun e!603327 () Bool)

(declare-fun call!44888 () Bool)

(assert (=> b!1059800 (= e!603327 call!44888)))

(declare-fun b!1059801 () Bool)

(declare-fun e!603329 () Bool)

(declare-fun e!603326 () Bool)

(assert (=> b!1059801 (= e!603329 e!603326)))

(declare-fun res!707993 () Bool)

(assert (=> b!1059801 (=> (not res!707993) (not e!603326))))

(declare-fun e!603328 () Bool)

(assert (=> b!1059801 (= res!707993 (not e!603328))))

(declare-fun res!707992 () Bool)

(assert (=> b!1059801 (=> (not res!707992) (not e!603328))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1059801 (= res!707992 (validKeyInArray!0 (select (arr!32196 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1059802 () Bool)

(assert (=> b!1059802 (= e!603327 call!44888)))

(declare-fun b!1059803 () Bool)

(declare-fun contains!6229 (List!22562 (_ BitVec 64)) Bool)

(assert (=> b!1059803 (= e!603328 (contains!6229 Nil!22559 (select (arr!32196 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1059804 () Bool)

(assert (=> b!1059804 (= e!603326 e!603327)))

(declare-fun c!107144 () Bool)

(assert (=> b!1059804 (= c!107144 (validKeyInArray!0 (select (arr!32196 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun d!128705 () Bool)

(declare-fun res!707994 () Bool)

(assert (=> d!128705 (=> res!707994 e!603329)))

(assert (=> d!128705 (= res!707994 (bvsge #b00000000000000000000000000000000 (size!32733 _keys!1163)))))

(assert (=> d!128705 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22559) e!603329)))

(declare-fun bm!44885 () Bool)

(assert (=> bm!44885 (= call!44888 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107144 (Cons!22558 (select (arr!32196 _keys!1163) #b00000000000000000000000000000000) Nil!22559) Nil!22559)))))

(assert (= (and d!128705 (not res!707994)) b!1059801))

(assert (= (and b!1059801 res!707992) b!1059803))

(assert (= (and b!1059801 res!707993) b!1059804))

(assert (= (and b!1059804 c!107144) b!1059800))

(assert (= (and b!1059804 (not c!107144)) b!1059802))

(assert (= (or b!1059800 b!1059802) bm!44885))

(declare-fun m!979221 () Bool)

(assert (=> b!1059801 m!979221))

(assert (=> b!1059801 m!979221))

(declare-fun m!979223 () Bool)

(assert (=> b!1059801 m!979223))

(assert (=> b!1059803 m!979221))

(assert (=> b!1059803 m!979221))

(declare-fun m!979225 () Bool)

(assert (=> b!1059803 m!979225))

(assert (=> b!1059804 m!979221))

(assert (=> b!1059804 m!979221))

(assert (=> b!1059804 m!979223))

(assert (=> bm!44885 m!979221))

(declare-fun m!979227 () Bool)

(assert (=> bm!44885 m!979227))

(assert (=> b!1059762 d!128705))

(declare-fun b!1059813 () Bool)

(declare-fun e!603337 () Bool)

(declare-fun call!44891 () Bool)

(assert (=> b!1059813 (= e!603337 call!44891)))

(declare-fun b!1059814 () Bool)

(declare-fun e!603338 () Bool)

(assert (=> b!1059814 (= e!603338 e!603337)))

(declare-fun lt!467163 () (_ BitVec 64))

(assert (=> b!1059814 (= lt!467163 (select (arr!32196 _keys!1163) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!34711 0))(
  ( (Unit!34712) )
))
(declare-fun lt!467165 () Unit!34711)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!66980 (_ BitVec 64) (_ BitVec 32)) Unit!34711)

(assert (=> b!1059814 (= lt!467165 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!467163 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!66980 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1059814 (arrayContainsKey!0 _keys!1163 lt!467163 #b00000000000000000000000000000000)))

(declare-fun lt!467164 () Unit!34711)

(assert (=> b!1059814 (= lt!467164 lt!467165)))

(declare-fun res!708000 () Bool)

(declare-datatypes ((SeekEntryResult!9866 0))(
  ( (MissingZero!9866 (index!41834 (_ BitVec 32))) (Found!9866 (index!41835 (_ BitVec 32))) (Intermediate!9866 (undefined!10678 Bool) (index!41836 (_ BitVec 32)) (x!94722 (_ BitVec 32))) (Undefined!9866) (MissingVacant!9866 (index!41837 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!66980 (_ BitVec 32)) SeekEntryResult!9866)

(assert (=> b!1059814 (= res!708000 (= (seekEntryOrOpen!0 (select (arr!32196 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9866 #b00000000000000000000000000000000)))))

(assert (=> b!1059814 (=> (not res!708000) (not e!603337))))

(declare-fun bm!44888 () Bool)

(assert (=> bm!44888 (= call!44891 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun d!128707 () Bool)

(declare-fun res!707999 () Bool)

(declare-fun e!603336 () Bool)

(assert (=> d!128707 (=> res!707999 e!603336)))

(assert (=> d!128707 (= res!707999 (bvsge #b00000000000000000000000000000000 (size!32733 _keys!1163)))))

(assert (=> d!128707 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!603336)))

(declare-fun b!1059815 () Bool)

(assert (=> b!1059815 (= e!603338 call!44891)))

(declare-fun b!1059816 () Bool)

(assert (=> b!1059816 (= e!603336 e!603338)))

(declare-fun c!107147 () Bool)

(assert (=> b!1059816 (= c!107147 (validKeyInArray!0 (select (arr!32196 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!128707 (not res!707999)) b!1059816))

(assert (= (and b!1059816 c!107147) b!1059814))

(assert (= (and b!1059816 (not c!107147)) b!1059815))

(assert (= (and b!1059814 res!708000) b!1059813))

(assert (= (or b!1059813 b!1059815) bm!44888))

(assert (=> b!1059814 m!979221))

(declare-fun m!979229 () Bool)

(assert (=> b!1059814 m!979229))

(declare-fun m!979231 () Bool)

(assert (=> b!1059814 m!979231))

(assert (=> b!1059814 m!979221))

(declare-fun m!979233 () Bool)

(assert (=> b!1059814 m!979233))

(declare-fun m!979235 () Bool)

(assert (=> bm!44888 m!979235))

(assert (=> b!1059816 m!979221))

(assert (=> b!1059816 m!979221))

(assert (=> b!1059816 m!979223))

(assert (=> b!1059765 d!128707))

(declare-fun condMapEmpty!39151 () Bool)

(declare-fun mapDefault!39151 () ValueCell!11790)

(assert (=> mapNonEmpty!39145 (= condMapEmpty!39151 (= mapRest!39145 ((as const (Array (_ BitVec 32) ValueCell!11790)) mapDefault!39151)))))

(declare-fun e!603344 () Bool)

(declare-fun mapRes!39151 () Bool)

(assert (=> mapNonEmpty!39145 (= tp!74952 (and e!603344 mapRes!39151))))

(declare-fun b!1059823 () Bool)

(declare-fun e!603343 () Bool)

(assert (=> b!1059823 (= e!603343 tp_is_empty!24987)))

(declare-fun b!1059824 () Bool)

(assert (=> b!1059824 (= e!603344 tp_is_empty!24987)))

(declare-fun mapNonEmpty!39151 () Bool)

(declare-fun tp!74958 () Bool)

(assert (=> mapNonEmpty!39151 (= mapRes!39151 (and tp!74958 e!603343))))

(declare-fun mapValue!39151 () ValueCell!11790)

(declare-fun mapKey!39151 () (_ BitVec 32))

(declare-fun mapRest!39151 () (Array (_ BitVec 32) ValueCell!11790))

(assert (=> mapNonEmpty!39151 (= mapRest!39145 (store mapRest!39151 mapKey!39151 mapValue!39151))))

(declare-fun mapIsEmpty!39151 () Bool)

(assert (=> mapIsEmpty!39151 mapRes!39151))

(assert (= (and mapNonEmpty!39145 condMapEmpty!39151) mapIsEmpty!39151))

(assert (= (and mapNonEmpty!39145 (not condMapEmpty!39151)) mapNonEmpty!39151))

(assert (= (and mapNonEmpty!39151 ((_ is ValueCellFull!11790) mapValue!39151)) b!1059823))

(assert (= (and mapNonEmpty!39145 ((_ is ValueCellFull!11790) mapDefault!39151)) b!1059824))

(declare-fun m!979237 () Bool)

(assert (=> mapNonEmpty!39151 m!979237))

(check-sat (not b!1059816) (not bm!44885) (not bm!44888) tp_is_empty!24987 (not b!1059801) (not mapNonEmpty!39151) (not b!1059804) (not b!1059803) (not b!1059814))
(check-sat)
