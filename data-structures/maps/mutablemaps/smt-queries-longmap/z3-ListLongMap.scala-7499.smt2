; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95056 () Bool)

(assert start!95056)

(declare-fun b_free!22173 () Bool)

(declare-fun b_next!22173 () Bool)

(assert (=> start!95056 (= b_free!22173 (not b_next!22173))))

(declare-fun tp!77994 () Bool)

(declare-fun b_and!35075 () Bool)

(assert (=> start!95056 (= tp!77994 b_and!35075)))

(declare-fun res!716379 () Bool)

(declare-fun e!613806 () Bool)

(assert (=> start!95056 (=> (not res!716379) (not e!613806))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!95056 (= res!716379 (validMask!0 mask!1515))))

(assert (=> start!95056 e!613806))

(assert (=> start!95056 true))

(declare-fun tp_is_empty!25983 () Bool)

(assert (=> start!95056 tp_is_empty!25983))

(declare-datatypes ((V!39779 0))(
  ( (V!39780 (val!13042 Int)) )
))
(declare-datatypes ((ValueCell!12288 0))(
  ( (ValueCellFull!12288 (v!15663 V!39779)) (EmptyCell!12288) )
))
(declare-datatypes ((array!68894 0))(
  ( (array!68895 (arr!33134 (Array (_ BitVec 32) ValueCell!12288)) (size!33671 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68894)

(declare-fun e!613807 () Bool)

(declare-fun array_inv!25462 (array!68894) Bool)

(assert (=> start!95056 (and (array_inv!25462 _values!955) e!613807)))

(assert (=> start!95056 tp!77994))

(declare-datatypes ((array!68896 0))(
  ( (array!68897 (arr!33135 (Array (_ BitVec 32) (_ BitVec 64))) (size!33672 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68896)

(declare-fun array_inv!25463 (array!68896) Bool)

(assert (=> start!95056 (array_inv!25463 _keys!1163)))

(declare-fun b!1074164 () Bool)

(declare-fun res!716381 () Bool)

(assert (=> b!1074164 (=> (not res!716381) (not e!613806))))

(declare-datatypes ((List!23253 0))(
  ( (Nil!23250) (Cons!23249 (h!24458 (_ BitVec 64)) (t!32603 List!23253)) )
))
(declare-fun arrayNoDuplicates!0 (array!68896 (_ BitVec 32) List!23253) Bool)

(assert (=> b!1074164 (= res!716381 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23250))))

(declare-fun b!1074165 () Bool)

(declare-fun e!613808 () Bool)

(declare-fun mapRes!40696 () Bool)

(assert (=> b!1074165 (= e!613807 (and e!613808 mapRes!40696))))

(declare-fun condMapEmpty!40696 () Bool)

(declare-fun mapDefault!40696 () ValueCell!12288)

(assert (=> b!1074165 (= condMapEmpty!40696 (= (arr!33134 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12288)) mapDefault!40696)))))

(declare-fun b!1074166 () Bool)

(declare-fun res!716380 () Bool)

(assert (=> b!1074166 (=> (not res!716380) (not e!613806))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1074166 (= res!716380 (and (= (size!33671 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33672 _keys!1163) (size!33671 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1074167 () Bool)

(assert (=> b!1074167 (= e!613808 tp_is_empty!25983)))

(declare-fun b!1074168 () Bool)

(declare-fun res!716382 () Bool)

(assert (=> b!1074168 (=> (not res!716382) (not e!613806))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68896 (_ BitVec 32)) Bool)

(assert (=> b!1074168 (= res!716382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun zeroValueBefore!47 () V!39779)

(declare-datatypes ((tuple2!16678 0))(
  ( (tuple2!16679 (_1!8349 (_ BitVec 64)) (_2!8349 V!39779)) )
))
(declare-datatypes ((List!23254 0))(
  ( (Nil!23251) (Cons!23250 (h!24459 tuple2!16678) (t!32604 List!23254)) )
))
(declare-datatypes ((ListLongMap!14659 0))(
  ( (ListLongMap!14660 (toList!7345 List!23254)) )
))
(declare-fun lt!476475 () ListLongMap!14659)

(declare-fun e!613805 () Bool)

(declare-fun b!1074169 () Bool)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39779)

(declare-fun getCurrentListMap!4183 (array!68896 array!68894 (_ BitVec 32) (_ BitVec 32) V!39779 V!39779 (_ BitVec 32) Int) ListLongMap!14659)

(declare-fun +!3174 (ListLongMap!14659 tuple2!16678) ListLongMap!14659)

(assert (=> b!1074169 (= e!613805 (= (getCurrentListMap!4183 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (+!3174 lt!476475 (tuple2!16679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun lt!476474 () ListLongMap!14659)

(declare-fun zeroValueAfter!47 () V!39779)

(assert (=> b!1074169 (= lt!476474 (getCurrentListMap!4183 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1074170 () Bool)

(assert (=> b!1074170 (= e!613806 (not e!613805))))

(declare-fun res!716378 () Bool)

(assert (=> b!1074170 (=> res!716378 e!613805)))

(assert (=> b!1074170 (= res!716378 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!476473 () ListLongMap!14659)

(assert (=> b!1074170 (= lt!476475 lt!476473)))

(declare-datatypes ((Unit!35316 0))(
  ( (Unit!35317) )
))
(declare-fun lt!476472 () Unit!35316)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!892 (array!68896 array!68894 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39779 V!39779 V!39779 V!39779 (_ BitVec 32) Int) Unit!35316)

(assert (=> b!1074170 (= lt!476472 (lemmaNoChangeToArrayThenSameMapNoExtras!892 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3873 (array!68896 array!68894 (_ BitVec 32) (_ BitVec 32) V!39779 V!39779 (_ BitVec 32) Int) ListLongMap!14659)

(assert (=> b!1074170 (= lt!476473 (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1074170 (= lt!476475 (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapIsEmpty!40696 () Bool)

(assert (=> mapIsEmpty!40696 mapRes!40696))

(declare-fun b!1074171 () Bool)

(declare-fun e!613803 () Bool)

(assert (=> b!1074171 (= e!613803 tp_is_empty!25983)))

(declare-fun mapNonEmpty!40696 () Bool)

(declare-fun tp!77993 () Bool)

(assert (=> mapNonEmpty!40696 (= mapRes!40696 (and tp!77993 e!613803))))

(declare-fun mapValue!40696 () ValueCell!12288)

(declare-fun mapKey!40696 () (_ BitVec 32))

(declare-fun mapRest!40696 () (Array (_ BitVec 32) ValueCell!12288))

(assert (=> mapNonEmpty!40696 (= (arr!33134 _values!955) (store mapRest!40696 mapKey!40696 mapValue!40696))))

(assert (= (and start!95056 res!716379) b!1074166))

(assert (= (and b!1074166 res!716380) b!1074168))

(assert (= (and b!1074168 res!716382) b!1074164))

(assert (= (and b!1074164 res!716381) b!1074170))

(assert (= (and b!1074170 (not res!716378)) b!1074169))

(assert (= (and b!1074165 condMapEmpty!40696) mapIsEmpty!40696))

(assert (= (and b!1074165 (not condMapEmpty!40696)) mapNonEmpty!40696))

(get-info :version)

(assert (= (and mapNonEmpty!40696 ((_ is ValueCellFull!12288) mapValue!40696)) b!1074171))

(assert (= (and b!1074165 ((_ is ValueCellFull!12288) mapDefault!40696)) b!1074167))

(assert (= start!95056 b!1074165))

(declare-fun m!993175 () Bool)

(assert (=> b!1074168 m!993175))

(declare-fun m!993177 () Bool)

(assert (=> b!1074169 m!993177))

(declare-fun m!993179 () Bool)

(assert (=> b!1074169 m!993179))

(declare-fun m!993181 () Bool)

(assert (=> b!1074169 m!993181))

(declare-fun m!993183 () Bool)

(assert (=> mapNonEmpty!40696 m!993183))

(declare-fun m!993185 () Bool)

(assert (=> b!1074164 m!993185))

(declare-fun m!993187 () Bool)

(assert (=> start!95056 m!993187))

(declare-fun m!993189 () Bool)

(assert (=> start!95056 m!993189))

(declare-fun m!993191 () Bool)

(assert (=> start!95056 m!993191))

(declare-fun m!993193 () Bool)

(assert (=> b!1074170 m!993193))

(declare-fun m!993195 () Bool)

(assert (=> b!1074170 m!993195))

(declare-fun m!993197 () Bool)

(assert (=> b!1074170 m!993197))

(check-sat (not b!1074169) (not b!1074164) (not b_next!22173) (not b!1074168) (not b!1074170) tp_is_empty!25983 (not mapNonEmpty!40696) (not start!95056) b_and!35075)
(check-sat b_and!35075 (not b_next!22173))
(get-model)

(declare-fun d!129441 () Bool)

(assert (=> d!129441 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!95056 d!129441))

(declare-fun d!129443 () Bool)

(assert (=> d!129443 (= (array_inv!25462 _values!955) (bvsge (size!33671 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!95056 d!129443))

(declare-fun d!129445 () Bool)

(assert (=> d!129445 (= (array_inv!25463 _keys!1163) (bvsge (size!33672 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!95056 d!129445))

(declare-fun b!1074204 () Bool)

(declare-fun e!613833 () Bool)

(declare-fun call!45360 () Bool)

(assert (=> b!1074204 (= e!613833 call!45360)))

(declare-fun bm!45357 () Bool)

(assert (=> bm!45357 (= call!45360 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1074205 () Bool)

(declare-fun e!613835 () Bool)

(assert (=> b!1074205 (= e!613833 e!613835)))

(declare-fun lt!476496 () (_ BitVec 64))

(assert (=> b!1074205 (= lt!476496 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476495 () Unit!35316)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!68896 (_ BitVec 64) (_ BitVec 32)) Unit!35316)

(assert (=> b!1074205 (= lt!476495 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!476496 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!68896 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1074205 (arrayContainsKey!0 _keys!1163 lt!476496 #b00000000000000000000000000000000)))

(declare-fun lt!476494 () Unit!35316)

(assert (=> b!1074205 (= lt!476494 lt!476495)))

(declare-fun res!716402 () Bool)

(declare-datatypes ((SeekEntryResult!9885 0))(
  ( (MissingZero!9885 (index!41910 (_ BitVec 32))) (Found!9885 (index!41911 (_ BitVec 32))) (Intermediate!9885 (undefined!10697 Bool) (index!41912 (_ BitVec 32)) (x!96278 (_ BitVec 32))) (Undefined!9885) (MissingVacant!9885 (index!41913 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!68896 (_ BitVec 32)) SeekEntryResult!9885)

(assert (=> b!1074205 (= res!716402 (= (seekEntryOrOpen!0 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9885 #b00000000000000000000000000000000)))))

(assert (=> b!1074205 (=> (not res!716402) (not e!613835))))

(declare-fun d!129447 () Bool)

(declare-fun res!716403 () Bool)

(declare-fun e!613834 () Bool)

(assert (=> d!129447 (=> res!716403 e!613834)))

(assert (=> d!129447 (= res!716403 (bvsge #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(assert (=> d!129447 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!613834)))

(declare-fun b!1074206 () Bool)

(assert (=> b!1074206 (= e!613834 e!613833)))

(declare-fun c!107806 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1074206 (= c!107806 (validKeyInArray!0 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074207 () Bool)

(assert (=> b!1074207 (= e!613835 call!45360)))

(assert (= (and d!129447 (not res!716403)) b!1074206))

(assert (= (and b!1074206 c!107806) b!1074205))

(assert (= (and b!1074206 (not c!107806)) b!1074204))

(assert (= (and b!1074205 res!716402) b!1074207))

(assert (= (or b!1074207 b!1074204) bm!45357))

(declare-fun m!993223 () Bool)

(assert (=> bm!45357 m!993223))

(declare-fun m!993225 () Bool)

(assert (=> b!1074205 m!993225))

(declare-fun m!993227 () Bool)

(assert (=> b!1074205 m!993227))

(declare-fun m!993229 () Bool)

(assert (=> b!1074205 m!993229))

(assert (=> b!1074205 m!993225))

(declare-fun m!993231 () Bool)

(assert (=> b!1074205 m!993231))

(assert (=> b!1074206 m!993225))

(assert (=> b!1074206 m!993225))

(declare-fun m!993233 () Bool)

(assert (=> b!1074206 m!993233))

(assert (=> b!1074168 d!129447))

(declare-fun b!1074218 () Bool)

(declare-fun e!613847 () Bool)

(declare-fun contains!6349 (List!23253 (_ BitVec 64)) Bool)

(assert (=> b!1074218 (= e!613847 (contains!6349 Nil!23250 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074219 () Bool)

(declare-fun e!613845 () Bool)

(declare-fun e!613846 () Bool)

(assert (=> b!1074219 (= e!613845 e!613846)))

(declare-fun res!716412 () Bool)

(assert (=> b!1074219 (=> (not res!716412) (not e!613846))))

(assert (=> b!1074219 (= res!716412 (not e!613847))))

(declare-fun res!716410 () Bool)

(assert (=> b!1074219 (=> (not res!716410) (not e!613847))))

(assert (=> b!1074219 (= res!716410 (validKeyInArray!0 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45360 () Bool)

(declare-fun call!45363 () Bool)

(declare-fun c!107809 () Bool)

(assert (=> bm!45360 (= call!45363 (arrayNoDuplicates!0 _keys!1163 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107809 (Cons!23249 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000) Nil!23250) Nil!23250)))))

(declare-fun d!129449 () Bool)

(declare-fun res!716411 () Bool)

(assert (=> d!129449 (=> res!716411 e!613845)))

(assert (=> d!129449 (= res!716411 (bvsge #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(assert (=> d!129449 (= (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23250) e!613845)))

(declare-fun b!1074220 () Bool)

(declare-fun e!613844 () Bool)

(assert (=> b!1074220 (= e!613844 call!45363)))

(declare-fun b!1074221 () Bool)

(assert (=> b!1074221 (= e!613846 e!613844)))

(assert (=> b!1074221 (= c!107809 (validKeyInArray!0 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074222 () Bool)

(assert (=> b!1074222 (= e!613844 call!45363)))

(assert (= (and d!129449 (not res!716411)) b!1074219))

(assert (= (and b!1074219 res!716410) b!1074218))

(assert (= (and b!1074219 res!716412) b!1074221))

(assert (= (and b!1074221 c!107809) b!1074222))

(assert (= (and b!1074221 (not c!107809)) b!1074220))

(assert (= (or b!1074222 b!1074220) bm!45360))

(assert (=> b!1074218 m!993225))

(assert (=> b!1074218 m!993225))

(declare-fun m!993235 () Bool)

(assert (=> b!1074218 m!993235))

(assert (=> b!1074219 m!993225))

(assert (=> b!1074219 m!993225))

(assert (=> b!1074219 m!993233))

(assert (=> bm!45360 m!993225))

(declare-fun m!993237 () Bool)

(assert (=> bm!45360 m!993237))

(assert (=> b!1074221 m!993225))

(assert (=> b!1074221 m!993225))

(assert (=> b!1074221 m!993233))

(assert (=> b!1074164 d!129449))

(declare-fun b!1074265 () Bool)

(declare-fun e!613883 () ListLongMap!14659)

(declare-fun call!45384 () ListLongMap!14659)

(assert (=> b!1074265 (= e!613883 call!45384)))

(declare-fun b!1074266 () Bool)

(declare-fun e!613880 () Bool)

(declare-fun call!45380 () Bool)

(assert (=> b!1074266 (= e!613880 (not call!45380))))

(declare-fun b!1074267 () Bool)

(declare-fun e!613881 () Bool)

(declare-fun lt!476547 () ListLongMap!14659)

(declare-fun apply!970 (ListLongMap!14659 (_ BitVec 64)) V!39779)

(assert (=> b!1074267 (= e!613881 (= (apply!970 lt!476547 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1074268 () Bool)

(declare-fun e!613876 () Bool)

(declare-fun e!613879 () Bool)

(assert (=> b!1074268 (= e!613876 e!613879)))

(declare-fun res!716433 () Bool)

(assert (=> b!1074268 (=> (not res!716433) (not e!613879))))

(declare-fun contains!6350 (ListLongMap!14659 (_ BitVec 64)) Bool)

(assert (=> b!1074268 (= res!716433 (contains!6350 lt!476547 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074268 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(declare-fun bm!45375 () Bool)

(declare-fun call!45379 () ListLongMap!14659)

(assert (=> bm!45375 (= call!45379 (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1074269 () Bool)

(declare-fun e!613886 () ListLongMap!14659)

(assert (=> b!1074269 (= e!613886 call!45384)))

(declare-fun b!1074270 () Bool)

(declare-fun c!107826 () Bool)

(assert (=> b!1074270 (= c!107826 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1074270 (= e!613886 e!613883)))

(declare-fun bm!45376 () Bool)

(declare-fun call!45381 () ListLongMap!14659)

(declare-fun call!45382 () ListLongMap!14659)

(assert (=> bm!45376 (= call!45381 call!45382)))

(declare-fun b!1074271 () Bool)

(assert (=> b!1074271 (= e!613883 call!45381)))

(declare-fun b!1074272 () Bool)

(declare-fun e!613885 () Bool)

(declare-fun e!613875 () Bool)

(assert (=> b!1074272 (= e!613885 e!613875)))

(declare-fun res!716431 () Bool)

(declare-fun call!45383 () Bool)

(assert (=> b!1074272 (= res!716431 call!45383)))

(assert (=> b!1074272 (=> (not res!716431) (not e!613875))))

(declare-fun b!1074273 () Bool)

(declare-fun e!613884 () Unit!35316)

(declare-fun lt!476545 () Unit!35316)

(assert (=> b!1074273 (= e!613884 lt!476545)))

(declare-fun lt!476546 () ListLongMap!14659)

(assert (=> b!1074273 (= lt!476546 (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476556 () (_ BitVec 64))

(assert (=> b!1074273 (= lt!476556 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476541 () (_ BitVec 64))

(assert (=> b!1074273 (= lt!476541 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476543 () Unit!35316)

(declare-fun addStillContains!652 (ListLongMap!14659 (_ BitVec 64) V!39779 (_ BitVec 64)) Unit!35316)

(assert (=> b!1074273 (= lt!476543 (addStillContains!652 lt!476546 lt!476556 zeroValueBefore!47 lt!476541))))

(assert (=> b!1074273 (contains!6350 (+!3174 lt!476546 (tuple2!16679 lt!476556 zeroValueBefore!47)) lt!476541)))

(declare-fun lt!476561 () Unit!35316)

(assert (=> b!1074273 (= lt!476561 lt!476543)))

(declare-fun lt!476544 () ListLongMap!14659)

(assert (=> b!1074273 (= lt!476544 (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476558 () (_ BitVec 64))

(assert (=> b!1074273 (= lt!476558 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476559 () (_ BitVec 64))

(assert (=> b!1074273 (= lt!476559 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476542 () Unit!35316)

(declare-fun addApplyDifferent!504 (ListLongMap!14659 (_ BitVec 64) V!39779 (_ BitVec 64)) Unit!35316)

(assert (=> b!1074273 (= lt!476542 (addApplyDifferent!504 lt!476544 lt!476558 minValue!907 lt!476559))))

(assert (=> b!1074273 (= (apply!970 (+!3174 lt!476544 (tuple2!16679 lt!476558 minValue!907)) lt!476559) (apply!970 lt!476544 lt!476559))))

(declare-fun lt!476552 () Unit!35316)

(assert (=> b!1074273 (= lt!476552 lt!476542)))

(declare-fun lt!476549 () ListLongMap!14659)

(assert (=> b!1074273 (= lt!476549 (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476562 () (_ BitVec 64))

(assert (=> b!1074273 (= lt!476562 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476551 () (_ BitVec 64))

(assert (=> b!1074273 (= lt!476551 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476560 () Unit!35316)

(assert (=> b!1074273 (= lt!476560 (addApplyDifferent!504 lt!476549 lt!476562 zeroValueBefore!47 lt!476551))))

(assert (=> b!1074273 (= (apply!970 (+!3174 lt!476549 (tuple2!16679 lt!476562 zeroValueBefore!47)) lt!476551) (apply!970 lt!476549 lt!476551))))

(declare-fun lt!476555 () Unit!35316)

(assert (=> b!1074273 (= lt!476555 lt!476560)))

(declare-fun lt!476550 () ListLongMap!14659)

(assert (=> b!1074273 (= lt!476550 (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476548 () (_ BitVec 64))

(assert (=> b!1074273 (= lt!476548 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476554 () (_ BitVec 64))

(assert (=> b!1074273 (= lt!476554 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1074273 (= lt!476545 (addApplyDifferent!504 lt!476550 lt!476548 minValue!907 lt!476554))))

(assert (=> b!1074273 (= (apply!970 (+!3174 lt!476550 (tuple2!16679 lt!476548 minValue!907)) lt!476554) (apply!970 lt!476550 lt!476554))))

(declare-fun b!1074274 () Bool)

(declare-fun e!613882 () Bool)

(assert (=> b!1074274 (= e!613882 (validKeyInArray!0 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45377 () Bool)

(declare-fun call!45378 () ListLongMap!14659)

(assert (=> bm!45377 (= call!45384 call!45378)))

(declare-fun b!1074275 () Bool)

(declare-fun Unit!35318 () Unit!35316)

(assert (=> b!1074275 (= e!613884 Unit!35318)))

(declare-fun d!129451 () Bool)

(declare-fun e!613877 () Bool)

(assert (=> d!129451 e!613877))

(declare-fun res!716432 () Bool)

(assert (=> d!129451 (=> (not res!716432) (not e!613877))))

(assert (=> d!129451 (= res!716432 (or (bvsge #b00000000000000000000000000000000 (size!33672 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33672 _keys!1163)))))))

(declare-fun lt!476553 () ListLongMap!14659)

(assert (=> d!129451 (= lt!476547 lt!476553)))

(declare-fun lt!476557 () Unit!35316)

(assert (=> d!129451 (= lt!476557 e!613884)))

(declare-fun c!107825 () Bool)

(declare-fun e!613878 () Bool)

(assert (=> d!129451 (= c!107825 e!613878)))

(declare-fun res!716439 () Bool)

(assert (=> d!129451 (=> (not res!716439) (not e!613878))))

(assert (=> d!129451 (= res!716439 (bvslt #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(declare-fun e!613874 () ListLongMap!14659)

(assert (=> d!129451 (= lt!476553 e!613874)))

(declare-fun c!107823 () Bool)

(assert (=> d!129451 (= c!107823 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129451 (validMask!0 mask!1515)))

(assert (=> d!129451 (= (getCurrentListMap!4183 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476547)))

(declare-fun bm!45378 () Bool)

(assert (=> bm!45378 (= call!45382 call!45379)))

(declare-fun b!1074276 () Bool)

(assert (=> b!1074276 (= e!613885 (not call!45383))))

(declare-fun b!1074277 () Bool)

(assert (=> b!1074277 (= e!613875 (= (apply!970 lt!476547 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueBefore!47))))

(declare-fun bm!45379 () Bool)

(assert (=> bm!45379 (= call!45383 (contains!6350 lt!476547 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1074278 () Bool)

(declare-fun get!17232 (ValueCell!12288 V!39779) V!39779)

(declare-fun dynLambda!2046 (Int (_ BitVec 64)) V!39779)

(assert (=> b!1074278 (= e!613879 (= (apply!970 lt!476547 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)) (get!17232 (select (arr!33134 _values!955) #b00000000000000000000000000000000) (dynLambda!2046 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1074278 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33671 _values!955)))))

(assert (=> b!1074278 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(declare-fun b!1074279 () Bool)

(assert (=> b!1074279 (= e!613878 (validKeyInArray!0 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45380 () Bool)

(assert (=> bm!45380 (= call!45380 (contains!6350 lt!476547 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1074280 () Bool)

(assert (=> b!1074280 (= e!613874 e!613886)))

(declare-fun c!107824 () Bool)

(assert (=> b!1074280 (= c!107824 (and (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1074281 () Bool)

(assert (=> b!1074281 (= e!613874 (+!3174 call!45378 (tuple2!16679 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun b!1074282 () Bool)

(declare-fun res!716437 () Bool)

(assert (=> b!1074282 (=> (not res!716437) (not e!613877))))

(assert (=> b!1074282 (= res!716437 e!613885)))

(declare-fun c!107827 () Bool)

(assert (=> b!1074282 (= c!107827 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1074283 () Bool)

(declare-fun res!716434 () Bool)

(assert (=> b!1074283 (=> (not res!716434) (not e!613877))))

(assert (=> b!1074283 (= res!716434 e!613876)))

(declare-fun res!716436 () Bool)

(assert (=> b!1074283 (=> res!716436 e!613876)))

(assert (=> b!1074283 (= res!716436 (not e!613882))))

(declare-fun res!716438 () Bool)

(assert (=> b!1074283 (=> (not res!716438) (not e!613882))))

(assert (=> b!1074283 (= res!716438 (bvslt #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(declare-fun b!1074284 () Bool)

(assert (=> b!1074284 (= e!613877 e!613880)))

(declare-fun c!107822 () Bool)

(assert (=> b!1074284 (= c!107822 (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1074285 () Bool)

(assert (=> b!1074285 (= e!613880 e!613881)))

(declare-fun res!716435 () Bool)

(assert (=> b!1074285 (= res!716435 call!45380)))

(assert (=> b!1074285 (=> (not res!716435) (not e!613881))))

(declare-fun bm!45381 () Bool)

(assert (=> bm!45381 (= call!45378 (+!3174 (ite c!107823 call!45379 (ite c!107824 call!45382 call!45381)) (ite (or c!107823 c!107824) (tuple2!16679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47) (tuple2!16679 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(assert (= (and d!129451 c!107823) b!1074281))

(assert (= (and d!129451 (not c!107823)) b!1074280))

(assert (= (and b!1074280 c!107824) b!1074269))

(assert (= (and b!1074280 (not c!107824)) b!1074270))

(assert (= (and b!1074270 c!107826) b!1074265))

(assert (= (and b!1074270 (not c!107826)) b!1074271))

(assert (= (or b!1074265 b!1074271) bm!45376))

(assert (= (or b!1074269 bm!45376) bm!45378))

(assert (= (or b!1074269 b!1074265) bm!45377))

(assert (= (or b!1074281 bm!45378) bm!45375))

(assert (= (or b!1074281 bm!45377) bm!45381))

(assert (= (and d!129451 res!716439) b!1074279))

(assert (= (and d!129451 c!107825) b!1074273))

(assert (= (and d!129451 (not c!107825)) b!1074275))

(assert (= (and d!129451 res!716432) b!1074283))

(assert (= (and b!1074283 res!716438) b!1074274))

(assert (= (and b!1074283 (not res!716436)) b!1074268))

(assert (= (and b!1074268 res!716433) b!1074278))

(assert (= (and b!1074283 res!716434) b!1074282))

(assert (= (and b!1074282 c!107827) b!1074272))

(assert (= (and b!1074282 (not c!107827)) b!1074276))

(assert (= (and b!1074272 res!716431) b!1074277))

(assert (= (or b!1074272 b!1074276) bm!45379))

(assert (= (and b!1074282 res!716437) b!1074284))

(assert (= (and b!1074284 c!107822) b!1074285))

(assert (= (and b!1074284 (not c!107822)) b!1074266))

(assert (= (and b!1074285 res!716435) b!1074267))

(assert (= (or b!1074285 b!1074266) bm!45380))

(declare-fun b_lambda!16815 () Bool)

(assert (=> (not b_lambda!16815) (not b!1074278)))

(declare-fun t!32608 () Bool)

(declare-fun tb!7173 () Bool)

(assert (=> (and start!95056 (= defaultEntry!963 defaultEntry!963) t!32608) tb!7173))

(declare-fun result!14811 () Bool)

(assert (=> tb!7173 (= result!14811 tp_is_empty!25983)))

(assert (=> b!1074278 t!32608))

(declare-fun b_and!35079 () Bool)

(assert (= b_and!35075 (and (=> t!32608 result!14811) b_and!35079)))

(declare-fun m!993239 () Bool)

(assert (=> b!1074267 m!993239))

(assert (=> d!129451 m!993187))

(assert (=> b!1074274 m!993225))

(assert (=> b!1074274 m!993225))

(assert (=> b!1074274 m!993233))

(declare-fun m!993241 () Bool)

(assert (=> bm!45381 m!993241))

(assert (=> bm!45375 m!993197))

(declare-fun m!993243 () Bool)

(assert (=> b!1074278 m!993243))

(declare-fun m!993245 () Bool)

(assert (=> b!1074278 m!993245))

(declare-fun m!993247 () Bool)

(assert (=> b!1074278 m!993247))

(assert (=> b!1074278 m!993225))

(declare-fun m!993249 () Bool)

(assert (=> b!1074278 m!993249))

(assert (=> b!1074278 m!993245))

(assert (=> b!1074278 m!993243))

(assert (=> b!1074278 m!993225))

(declare-fun m!993251 () Bool)

(assert (=> b!1074281 m!993251))

(assert (=> b!1074279 m!993225))

(assert (=> b!1074279 m!993225))

(assert (=> b!1074279 m!993233))

(declare-fun m!993253 () Bool)

(assert (=> bm!45380 m!993253))

(assert (=> b!1074268 m!993225))

(assert (=> b!1074268 m!993225))

(declare-fun m!993255 () Bool)

(assert (=> b!1074268 m!993255))

(declare-fun m!993257 () Bool)

(assert (=> bm!45379 m!993257))

(declare-fun m!993259 () Bool)

(assert (=> b!1074277 m!993259))

(declare-fun m!993261 () Bool)

(assert (=> b!1074273 m!993261))

(declare-fun m!993263 () Bool)

(assert (=> b!1074273 m!993263))

(assert (=> b!1074273 m!993263))

(declare-fun m!993265 () Bool)

(assert (=> b!1074273 m!993265))

(declare-fun m!993267 () Bool)

(assert (=> b!1074273 m!993267))

(declare-fun m!993269 () Bool)

(assert (=> b!1074273 m!993269))

(assert (=> b!1074273 m!993261))

(declare-fun m!993271 () Bool)

(assert (=> b!1074273 m!993271))

(declare-fun m!993273 () Bool)

(assert (=> b!1074273 m!993273))

(declare-fun m!993275 () Bool)

(assert (=> b!1074273 m!993275))

(declare-fun m!993277 () Bool)

(assert (=> b!1074273 m!993277))

(declare-fun m!993279 () Bool)

(assert (=> b!1074273 m!993279))

(declare-fun m!993281 () Bool)

(assert (=> b!1074273 m!993281))

(assert (=> b!1074273 m!993197))

(declare-fun m!993283 () Bool)

(assert (=> b!1074273 m!993283))

(declare-fun m!993285 () Bool)

(assert (=> b!1074273 m!993285))

(assert (=> b!1074273 m!993273))

(declare-fun m!993287 () Bool)

(assert (=> b!1074273 m!993287))

(assert (=> b!1074273 m!993283))

(assert (=> b!1074273 m!993225))

(declare-fun m!993289 () Bool)

(assert (=> b!1074273 m!993289))

(assert (=> b!1074169 d!129451))

(declare-fun d!129453 () Bool)

(declare-fun e!613889 () Bool)

(assert (=> d!129453 e!613889))

(declare-fun res!716444 () Bool)

(assert (=> d!129453 (=> (not res!716444) (not e!613889))))

(declare-fun lt!476573 () ListLongMap!14659)

(assert (=> d!129453 (= res!716444 (contains!6350 lt!476573 (_1!8349 (tuple2!16679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun lt!476574 () List!23254)

(assert (=> d!129453 (= lt!476573 (ListLongMap!14660 lt!476574))))

(declare-fun lt!476572 () Unit!35316)

(declare-fun lt!476571 () Unit!35316)

(assert (=> d!129453 (= lt!476572 lt!476571)))

(declare-datatypes ((Option!661 0))(
  ( (Some!660 (v!15665 V!39779)) (None!659) )
))
(declare-fun getValueByKey!610 (List!23254 (_ BitVec 64)) Option!661)

(assert (=> d!129453 (= (getValueByKey!610 lt!476574 (_1!8349 (tuple2!16679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))) (Some!660 (_2!8349 (tuple2!16679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun lemmaContainsTupThenGetReturnValue!287 (List!23254 (_ BitVec 64) V!39779) Unit!35316)

(assert (=> d!129453 (= lt!476571 (lemmaContainsTupThenGetReturnValue!287 lt!476574 (_1!8349 (tuple2!16679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (_2!8349 (tuple2!16679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(declare-fun insertStrictlySorted!379 (List!23254 (_ BitVec 64) V!39779) List!23254)

(assert (=> d!129453 (= lt!476574 (insertStrictlySorted!379 (toList!7345 lt!476475) (_1!8349 (tuple2!16679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) (_2!8349 (tuple2!16679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))))

(assert (=> d!129453 (= (+!3174 lt!476475 (tuple2!16679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)) lt!476573)))

(declare-fun b!1074292 () Bool)

(declare-fun res!716445 () Bool)

(assert (=> b!1074292 (=> (not res!716445) (not e!613889))))

(assert (=> b!1074292 (= res!716445 (= (getValueByKey!610 (toList!7345 lt!476573) (_1!8349 (tuple2!16679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))) (Some!660 (_2!8349 (tuple2!16679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))))

(declare-fun b!1074293 () Bool)

(declare-fun contains!6351 (List!23254 tuple2!16678) Bool)

(assert (=> b!1074293 (= e!613889 (contains!6351 (toList!7345 lt!476573) (tuple2!16679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47)))))

(assert (= (and d!129453 res!716444) b!1074292))

(assert (= (and b!1074292 res!716445) b!1074293))

(declare-fun m!993291 () Bool)

(assert (=> d!129453 m!993291))

(declare-fun m!993293 () Bool)

(assert (=> d!129453 m!993293))

(declare-fun m!993295 () Bool)

(assert (=> d!129453 m!993295))

(declare-fun m!993297 () Bool)

(assert (=> d!129453 m!993297))

(declare-fun m!993299 () Bool)

(assert (=> b!1074292 m!993299))

(declare-fun m!993301 () Bool)

(assert (=> b!1074293 m!993301))

(assert (=> b!1074169 d!129453))

(declare-fun b!1074294 () Bool)

(declare-fun e!613899 () ListLongMap!14659)

(declare-fun call!45391 () ListLongMap!14659)

(assert (=> b!1074294 (= e!613899 call!45391)))

(declare-fun b!1074295 () Bool)

(declare-fun e!613896 () Bool)

(declare-fun call!45387 () Bool)

(assert (=> b!1074295 (= e!613896 (not call!45387))))

(declare-fun b!1074296 () Bool)

(declare-fun e!613897 () Bool)

(declare-fun lt!476581 () ListLongMap!14659)

(assert (=> b!1074296 (= e!613897 (= (apply!970 lt!476581 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!907))))

(declare-fun b!1074297 () Bool)

(declare-fun e!613892 () Bool)

(declare-fun e!613895 () Bool)

(assert (=> b!1074297 (= e!613892 e!613895)))

(declare-fun res!716448 () Bool)

(assert (=> b!1074297 (=> (not res!716448) (not e!613895))))

(assert (=> b!1074297 (= res!716448 (contains!6350 lt!476581 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074297 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(declare-fun bm!45382 () Bool)

(declare-fun call!45386 () ListLongMap!14659)

(assert (=> bm!45382 (= call!45386 (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1074298 () Bool)

(declare-fun e!613902 () ListLongMap!14659)

(assert (=> b!1074298 (= e!613902 call!45391)))

(declare-fun b!1074299 () Bool)

(declare-fun c!107832 () Bool)

(assert (=> b!1074299 (= c!107832 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!1074299 (= e!613902 e!613899)))

(declare-fun bm!45383 () Bool)

(declare-fun call!45388 () ListLongMap!14659)

(declare-fun call!45389 () ListLongMap!14659)

(assert (=> bm!45383 (= call!45388 call!45389)))

(declare-fun b!1074300 () Bool)

(assert (=> b!1074300 (= e!613899 call!45388)))

(declare-fun b!1074301 () Bool)

(declare-fun e!613901 () Bool)

(declare-fun e!613891 () Bool)

(assert (=> b!1074301 (= e!613901 e!613891)))

(declare-fun res!716446 () Bool)

(declare-fun call!45390 () Bool)

(assert (=> b!1074301 (= res!716446 call!45390)))

(assert (=> b!1074301 (=> (not res!716446) (not e!613891))))

(declare-fun b!1074302 () Bool)

(declare-fun e!613900 () Unit!35316)

(declare-fun lt!476579 () Unit!35316)

(assert (=> b!1074302 (= e!613900 lt!476579)))

(declare-fun lt!476580 () ListLongMap!14659)

(assert (=> b!1074302 (= lt!476580 (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476590 () (_ BitVec 64))

(assert (=> b!1074302 (= lt!476590 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476575 () (_ BitVec 64))

(assert (=> b!1074302 (= lt!476575 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476577 () Unit!35316)

(assert (=> b!1074302 (= lt!476577 (addStillContains!652 lt!476580 lt!476590 zeroValueAfter!47 lt!476575))))

(assert (=> b!1074302 (contains!6350 (+!3174 lt!476580 (tuple2!16679 lt!476590 zeroValueAfter!47)) lt!476575)))

(declare-fun lt!476595 () Unit!35316)

(assert (=> b!1074302 (= lt!476595 lt!476577)))

(declare-fun lt!476578 () ListLongMap!14659)

(assert (=> b!1074302 (= lt!476578 (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476592 () (_ BitVec 64))

(assert (=> b!1074302 (= lt!476592 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476593 () (_ BitVec 64))

(assert (=> b!1074302 (= lt!476593 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476576 () Unit!35316)

(assert (=> b!1074302 (= lt!476576 (addApplyDifferent!504 lt!476578 lt!476592 minValue!907 lt!476593))))

(assert (=> b!1074302 (= (apply!970 (+!3174 lt!476578 (tuple2!16679 lt!476592 minValue!907)) lt!476593) (apply!970 lt!476578 lt!476593))))

(declare-fun lt!476586 () Unit!35316)

(assert (=> b!1074302 (= lt!476586 lt!476576)))

(declare-fun lt!476583 () ListLongMap!14659)

(assert (=> b!1074302 (= lt!476583 (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476596 () (_ BitVec 64))

(assert (=> b!1074302 (= lt!476596 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476585 () (_ BitVec 64))

(assert (=> b!1074302 (= lt!476585 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun lt!476594 () Unit!35316)

(assert (=> b!1074302 (= lt!476594 (addApplyDifferent!504 lt!476583 lt!476596 zeroValueAfter!47 lt!476585))))

(assert (=> b!1074302 (= (apply!970 (+!3174 lt!476583 (tuple2!16679 lt!476596 zeroValueAfter!47)) lt!476585) (apply!970 lt!476583 lt!476585))))

(declare-fun lt!476589 () Unit!35316)

(assert (=> b!1074302 (= lt!476589 lt!476594)))

(declare-fun lt!476584 () ListLongMap!14659)

(assert (=> b!1074302 (= lt!476584 (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476582 () (_ BitVec 64))

(assert (=> b!1074302 (= lt!476582 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!476588 () (_ BitVec 64))

(assert (=> b!1074302 (= lt!476588 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> b!1074302 (= lt!476579 (addApplyDifferent!504 lt!476584 lt!476582 minValue!907 lt!476588))))

(assert (=> b!1074302 (= (apply!970 (+!3174 lt!476584 (tuple2!16679 lt!476582 minValue!907)) lt!476588) (apply!970 lt!476584 lt!476588))))

(declare-fun b!1074303 () Bool)

(declare-fun e!613898 () Bool)

(assert (=> b!1074303 (= e!613898 (validKeyInArray!0 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45384 () Bool)

(declare-fun call!45385 () ListLongMap!14659)

(assert (=> bm!45384 (= call!45391 call!45385)))

(declare-fun b!1074304 () Bool)

(declare-fun Unit!35319 () Unit!35316)

(assert (=> b!1074304 (= e!613900 Unit!35319)))

(declare-fun d!129455 () Bool)

(declare-fun e!613893 () Bool)

(assert (=> d!129455 e!613893))

(declare-fun res!716447 () Bool)

(assert (=> d!129455 (=> (not res!716447) (not e!613893))))

(assert (=> d!129455 (= res!716447 (or (bvsge #b00000000000000000000000000000000 (size!33672 _keys!1163)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33672 _keys!1163)))))))

(declare-fun lt!476587 () ListLongMap!14659)

(assert (=> d!129455 (= lt!476581 lt!476587)))

(declare-fun lt!476591 () Unit!35316)

(assert (=> d!129455 (= lt!476591 e!613900)))

(declare-fun c!107831 () Bool)

(declare-fun e!613894 () Bool)

(assert (=> d!129455 (= c!107831 e!613894)))

(declare-fun res!716454 () Bool)

(assert (=> d!129455 (=> (not res!716454) (not e!613894))))

(assert (=> d!129455 (= res!716454 (bvslt #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(declare-fun e!613890 () ListLongMap!14659)

(assert (=> d!129455 (= lt!476587 e!613890)))

(declare-fun c!107829 () Bool)

(assert (=> d!129455 (= c!107829 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!129455 (validMask!0 mask!1515)))

(assert (=> d!129455 (= (getCurrentListMap!4183 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476581)))

(declare-fun bm!45385 () Bool)

(assert (=> bm!45385 (= call!45389 call!45386)))

(declare-fun b!1074305 () Bool)

(assert (=> b!1074305 (= e!613901 (not call!45390))))

(declare-fun b!1074306 () Bool)

(assert (=> b!1074306 (= e!613891 (= (apply!970 lt!476581 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValueAfter!47))))

(declare-fun bm!45386 () Bool)

(assert (=> bm!45386 (= call!45390 (contains!6350 lt!476581 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1074307 () Bool)

(assert (=> b!1074307 (= e!613895 (= (apply!970 lt!476581 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)) (get!17232 (select (arr!33134 _values!955) #b00000000000000000000000000000000) (dynLambda!2046 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1074307 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33671 _values!955)))))

(assert (=> b!1074307 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(declare-fun b!1074308 () Bool)

(assert (=> b!1074308 (= e!613894 (validKeyInArray!0 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun bm!45387 () Bool)

(assert (=> bm!45387 (= call!45387 (contains!6350 lt!476581 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1074309 () Bool)

(assert (=> b!1074309 (= e!613890 e!613902)))

(declare-fun c!107830 () Bool)

(assert (=> b!1074309 (= c!107830 (and (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1074310 () Bool)

(assert (=> b!1074310 (= e!613890 (+!3174 call!45385 (tuple2!16679 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907)))))

(declare-fun b!1074311 () Bool)

(declare-fun res!716452 () Bool)

(assert (=> b!1074311 (=> (not res!716452) (not e!613893))))

(assert (=> b!1074311 (= res!716452 e!613901)))

(declare-fun c!107833 () Bool)

(assert (=> b!1074311 (= c!107833 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1074312 () Bool)

(declare-fun res!716449 () Bool)

(assert (=> b!1074312 (=> (not res!716449) (not e!613893))))

(assert (=> b!1074312 (= res!716449 e!613892)))

(declare-fun res!716451 () Bool)

(assert (=> b!1074312 (=> res!716451 e!613892)))

(assert (=> b!1074312 (= res!716451 (not e!613898))))

(declare-fun res!716453 () Bool)

(assert (=> b!1074312 (=> (not res!716453) (not e!613898))))

(assert (=> b!1074312 (= res!716453 (bvslt #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(declare-fun b!1074313 () Bool)

(assert (=> b!1074313 (= e!613893 e!613896)))

(declare-fun c!107828 () Bool)

(assert (=> b!1074313 (= c!107828 (not (= (bvand extraKeysAfter!68 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1074314 () Bool)

(assert (=> b!1074314 (= e!613896 e!613897)))

(declare-fun res!716450 () Bool)

(assert (=> b!1074314 (= res!716450 call!45387)))

(assert (=> b!1074314 (=> (not res!716450) (not e!613897))))

(declare-fun bm!45388 () Bool)

(assert (=> bm!45388 (= call!45385 (+!3174 (ite c!107829 call!45386 (ite c!107830 call!45389 call!45388)) (ite (or c!107829 c!107830) (tuple2!16679 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!47) (tuple2!16679 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))))

(assert (= (and d!129455 c!107829) b!1074310))

(assert (= (and d!129455 (not c!107829)) b!1074309))

(assert (= (and b!1074309 c!107830) b!1074298))

(assert (= (and b!1074309 (not c!107830)) b!1074299))

(assert (= (and b!1074299 c!107832) b!1074294))

(assert (= (and b!1074299 (not c!107832)) b!1074300))

(assert (= (or b!1074294 b!1074300) bm!45383))

(assert (= (or b!1074298 bm!45383) bm!45385))

(assert (= (or b!1074298 b!1074294) bm!45384))

(assert (= (or b!1074310 bm!45385) bm!45382))

(assert (= (or b!1074310 bm!45384) bm!45388))

(assert (= (and d!129455 res!716454) b!1074308))

(assert (= (and d!129455 c!107831) b!1074302))

(assert (= (and d!129455 (not c!107831)) b!1074304))

(assert (= (and d!129455 res!716447) b!1074312))

(assert (= (and b!1074312 res!716453) b!1074303))

(assert (= (and b!1074312 (not res!716451)) b!1074297))

(assert (= (and b!1074297 res!716448) b!1074307))

(assert (= (and b!1074312 res!716449) b!1074311))

(assert (= (and b!1074311 c!107833) b!1074301))

(assert (= (and b!1074311 (not c!107833)) b!1074305))

(assert (= (and b!1074301 res!716446) b!1074306))

(assert (= (or b!1074301 b!1074305) bm!45386))

(assert (= (and b!1074311 res!716452) b!1074313))

(assert (= (and b!1074313 c!107828) b!1074314))

(assert (= (and b!1074313 (not c!107828)) b!1074295))

(assert (= (and b!1074314 res!716450) b!1074296))

(assert (= (or b!1074314 b!1074295) bm!45387))

(declare-fun b_lambda!16817 () Bool)

(assert (=> (not b_lambda!16817) (not b!1074307)))

(assert (=> b!1074307 t!32608))

(declare-fun b_and!35081 () Bool)

(assert (= b_and!35079 (and (=> t!32608 result!14811) b_and!35081)))

(declare-fun m!993303 () Bool)

(assert (=> b!1074296 m!993303))

(assert (=> d!129455 m!993187))

(assert (=> b!1074303 m!993225))

(assert (=> b!1074303 m!993225))

(assert (=> b!1074303 m!993233))

(declare-fun m!993305 () Bool)

(assert (=> bm!45388 m!993305))

(assert (=> bm!45382 m!993195))

(assert (=> b!1074307 m!993243))

(assert (=> b!1074307 m!993245))

(assert (=> b!1074307 m!993247))

(assert (=> b!1074307 m!993225))

(declare-fun m!993307 () Bool)

(assert (=> b!1074307 m!993307))

(assert (=> b!1074307 m!993245))

(assert (=> b!1074307 m!993243))

(assert (=> b!1074307 m!993225))

(declare-fun m!993309 () Bool)

(assert (=> b!1074310 m!993309))

(assert (=> b!1074308 m!993225))

(assert (=> b!1074308 m!993225))

(assert (=> b!1074308 m!993233))

(declare-fun m!993311 () Bool)

(assert (=> bm!45387 m!993311))

(assert (=> b!1074297 m!993225))

(assert (=> b!1074297 m!993225))

(declare-fun m!993313 () Bool)

(assert (=> b!1074297 m!993313))

(declare-fun m!993315 () Bool)

(assert (=> bm!45386 m!993315))

(declare-fun m!993317 () Bool)

(assert (=> b!1074306 m!993317))

(declare-fun m!993319 () Bool)

(assert (=> b!1074302 m!993319))

(declare-fun m!993321 () Bool)

(assert (=> b!1074302 m!993321))

(assert (=> b!1074302 m!993321))

(declare-fun m!993323 () Bool)

(assert (=> b!1074302 m!993323))

(declare-fun m!993325 () Bool)

(assert (=> b!1074302 m!993325))

(declare-fun m!993327 () Bool)

(assert (=> b!1074302 m!993327))

(assert (=> b!1074302 m!993319))

(declare-fun m!993329 () Bool)

(assert (=> b!1074302 m!993329))

(declare-fun m!993331 () Bool)

(assert (=> b!1074302 m!993331))

(declare-fun m!993333 () Bool)

(assert (=> b!1074302 m!993333))

(declare-fun m!993335 () Bool)

(assert (=> b!1074302 m!993335))

(declare-fun m!993337 () Bool)

(assert (=> b!1074302 m!993337))

(declare-fun m!993339 () Bool)

(assert (=> b!1074302 m!993339))

(assert (=> b!1074302 m!993195))

(declare-fun m!993341 () Bool)

(assert (=> b!1074302 m!993341))

(declare-fun m!993343 () Bool)

(assert (=> b!1074302 m!993343))

(assert (=> b!1074302 m!993331))

(declare-fun m!993345 () Bool)

(assert (=> b!1074302 m!993345))

(assert (=> b!1074302 m!993341))

(assert (=> b!1074302 m!993225))

(declare-fun m!993347 () Bool)

(assert (=> b!1074302 m!993347))

(assert (=> b!1074169 d!129455))

(declare-fun d!129457 () Bool)

(assert (=> d!129457 (= (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun lt!476599 () Unit!35316)

(declare-fun choose!1756 (array!68896 array!68894 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39779 V!39779 V!39779 V!39779 (_ BitVec 32) Int) Unit!35316)

(assert (=> d!129457 (= lt!476599 (choose!1756 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> d!129457 (validMask!0 mask!1515)))

(assert (=> d!129457 (= (lemmaNoChangeToArrayThenSameMapNoExtras!892 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476599)))

(declare-fun bs!31657 () Bool)

(assert (= bs!31657 d!129457))

(assert (=> bs!31657 m!993197))

(assert (=> bs!31657 m!993195))

(declare-fun m!993349 () Bool)

(assert (=> bs!31657 m!993349))

(assert (=> bs!31657 m!993187))

(assert (=> b!1074170 d!129457))

(declare-fun lt!476617 () ListLongMap!14659)

(declare-fun e!613920 () Bool)

(declare-fun b!1074339 () Bool)

(assert (=> b!1074339 (= e!613920 (= lt!476617 (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun d!129459 () Bool)

(declare-fun e!613918 () Bool)

(assert (=> d!129459 e!613918))

(declare-fun res!716463 () Bool)

(assert (=> d!129459 (=> (not res!716463) (not e!613918))))

(assert (=> d!129459 (= res!716463 (not (contains!6350 lt!476617 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!613922 () ListLongMap!14659)

(assert (=> d!129459 (= lt!476617 e!613922)))

(declare-fun c!107844 () Bool)

(assert (=> d!129459 (= c!107844 (bvsge #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(assert (=> d!129459 (validMask!0 mask!1515)))

(assert (=> d!129459 (= (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476617)))

(declare-fun b!1074340 () Bool)

(declare-fun lt!476616 () Unit!35316)

(declare-fun lt!476614 () Unit!35316)

(assert (=> b!1074340 (= lt!476616 lt!476614)))

(declare-fun lt!476618 () V!39779)

(declare-fun lt!476620 () (_ BitVec 64))

(declare-fun lt!476615 () (_ BitVec 64))

(declare-fun lt!476619 () ListLongMap!14659)

(assert (=> b!1074340 (not (contains!6350 (+!3174 lt!476619 (tuple2!16679 lt!476620 lt!476618)) lt!476615))))

(declare-fun addStillNotContains!265 (ListLongMap!14659 (_ BitVec 64) V!39779 (_ BitVec 64)) Unit!35316)

(assert (=> b!1074340 (= lt!476614 (addStillNotContains!265 lt!476619 lt!476620 lt!476618 lt!476615))))

(assert (=> b!1074340 (= lt!476615 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1074340 (= lt!476618 (get!17232 (select (arr!33134 _values!955) #b00000000000000000000000000000000) (dynLambda!2046 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1074340 (= lt!476620 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun call!45394 () ListLongMap!14659)

(assert (=> b!1074340 (= lt!476619 call!45394)))

(declare-fun e!613919 () ListLongMap!14659)

(assert (=> b!1074340 (= e!613919 (+!3174 call!45394 (tuple2!16679 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000) (get!17232 (select (arr!33134 _values!955) #b00000000000000000000000000000000) (dynLambda!2046 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1074341 () Bool)

(declare-fun e!613921 () Bool)

(assert (=> b!1074341 (= e!613921 e!613920)))

(declare-fun c!107845 () Bool)

(assert (=> b!1074341 (= c!107845 (bvslt #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(declare-fun b!1074342 () Bool)

(assert (=> b!1074342 (= e!613918 e!613921)))

(declare-fun c!107843 () Bool)

(declare-fun e!613917 () Bool)

(assert (=> b!1074342 (= c!107843 e!613917)))

(declare-fun res!716465 () Bool)

(assert (=> b!1074342 (=> (not res!716465) (not e!613917))))

(assert (=> b!1074342 (= res!716465 (bvslt #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(declare-fun b!1074343 () Bool)

(declare-fun isEmpty!956 (ListLongMap!14659) Bool)

(assert (=> b!1074343 (= e!613920 (isEmpty!956 lt!476617))))

(declare-fun b!1074344 () Bool)

(declare-fun e!613923 () Bool)

(assert (=> b!1074344 (= e!613921 e!613923)))

(assert (=> b!1074344 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(declare-fun res!716466 () Bool)

(assert (=> b!1074344 (= res!716466 (contains!6350 lt!476617 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074344 (=> (not res!716466) (not e!613923))))

(declare-fun b!1074345 () Bool)

(assert (=> b!1074345 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(assert (=> b!1074345 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33671 _values!955)))))

(assert (=> b!1074345 (= e!613923 (= (apply!970 lt!476617 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)) (get!17232 (select (arr!33134 _values!955) #b00000000000000000000000000000000) (dynLambda!2046 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1074346 () Bool)

(declare-fun res!716464 () Bool)

(assert (=> b!1074346 (=> (not res!716464) (not e!613918))))

(assert (=> b!1074346 (= res!716464 (not (contains!6350 lt!476617 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1074347 () Bool)

(assert (=> b!1074347 (= e!613917 (validKeyInArray!0 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074347 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1074348 () Bool)

(assert (=> b!1074348 (= e!613919 call!45394)))

(declare-fun b!1074349 () Bool)

(assert (=> b!1074349 (= e!613922 e!613919)))

(declare-fun c!107842 () Bool)

(assert (=> b!1074349 (= c!107842 (validKeyInArray!0 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074350 () Bool)

(assert (=> b!1074350 (= e!613922 (ListLongMap!14660 Nil!23251))))

(declare-fun bm!45391 () Bool)

(assert (=> bm!45391 (= call!45394 (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(assert (= (and d!129459 c!107844) b!1074350))

(assert (= (and d!129459 (not c!107844)) b!1074349))

(assert (= (and b!1074349 c!107842) b!1074340))

(assert (= (and b!1074349 (not c!107842)) b!1074348))

(assert (= (or b!1074340 b!1074348) bm!45391))

(assert (= (and d!129459 res!716463) b!1074346))

(assert (= (and b!1074346 res!716464) b!1074342))

(assert (= (and b!1074342 res!716465) b!1074347))

(assert (= (and b!1074342 c!107843) b!1074344))

(assert (= (and b!1074342 (not c!107843)) b!1074341))

(assert (= (and b!1074344 res!716466) b!1074345))

(assert (= (and b!1074341 c!107845) b!1074339))

(assert (= (and b!1074341 (not c!107845)) b!1074343))

(declare-fun b_lambda!16819 () Bool)

(assert (=> (not b_lambda!16819) (not b!1074340)))

(assert (=> b!1074340 t!32608))

(declare-fun b_and!35083 () Bool)

(assert (= b_and!35081 (and (=> t!32608 result!14811) b_and!35083)))

(declare-fun b_lambda!16821 () Bool)

(assert (=> (not b_lambda!16821) (not b!1074345)))

(assert (=> b!1074345 t!32608))

(declare-fun b_and!35085 () Bool)

(assert (= b_and!35083 (and (=> t!32608 result!14811) b_and!35085)))

(declare-fun m!993351 () Bool)

(assert (=> bm!45391 m!993351))

(assert (=> b!1074345 m!993225))

(declare-fun m!993353 () Bool)

(assert (=> b!1074345 m!993353))

(assert (=> b!1074345 m!993225))

(assert (=> b!1074345 m!993245))

(assert (=> b!1074345 m!993243))

(assert (=> b!1074345 m!993243))

(assert (=> b!1074345 m!993245))

(assert (=> b!1074345 m!993247))

(assert (=> b!1074340 m!993225))

(assert (=> b!1074340 m!993245))

(declare-fun m!993355 () Bool)

(assert (=> b!1074340 m!993355))

(declare-fun m!993357 () Bool)

(assert (=> b!1074340 m!993357))

(declare-fun m!993359 () Bool)

(assert (=> b!1074340 m!993359))

(assert (=> b!1074340 m!993357))

(declare-fun m!993361 () Bool)

(assert (=> b!1074340 m!993361))

(assert (=> b!1074340 m!993243))

(assert (=> b!1074340 m!993243))

(assert (=> b!1074340 m!993245))

(assert (=> b!1074340 m!993247))

(assert (=> b!1074344 m!993225))

(assert (=> b!1074344 m!993225))

(declare-fun m!993363 () Bool)

(assert (=> b!1074344 m!993363))

(assert (=> b!1074339 m!993351))

(assert (=> b!1074349 m!993225))

(assert (=> b!1074349 m!993225))

(assert (=> b!1074349 m!993233))

(declare-fun m!993365 () Bool)

(assert (=> d!129459 m!993365))

(assert (=> d!129459 m!993187))

(declare-fun m!993367 () Bool)

(assert (=> b!1074346 m!993367))

(declare-fun m!993369 () Bool)

(assert (=> b!1074343 m!993369))

(assert (=> b!1074347 m!993225))

(assert (=> b!1074347 m!993225))

(assert (=> b!1074347 m!993233))

(assert (=> b!1074170 d!129459))

(declare-fun e!613927 () Bool)

(declare-fun b!1074351 () Bool)

(declare-fun lt!476624 () ListLongMap!14659)

(assert (=> b!1074351 (= e!613927 (= lt!476624 (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963)))))

(declare-fun d!129461 () Bool)

(declare-fun e!613925 () Bool)

(assert (=> d!129461 e!613925))

(declare-fun res!716467 () Bool)

(assert (=> d!129461 (=> (not res!716467) (not e!613925))))

(assert (=> d!129461 (= res!716467 (not (contains!6350 lt!476624 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!613929 () ListLongMap!14659)

(assert (=> d!129461 (= lt!476624 e!613929)))

(declare-fun c!107848 () Bool)

(assert (=> d!129461 (= c!107848 (bvsge #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(assert (=> d!129461 (validMask!0 mask!1515)))

(assert (=> d!129461 (= (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963) lt!476624)))

(declare-fun b!1074352 () Bool)

(declare-fun lt!476623 () Unit!35316)

(declare-fun lt!476621 () Unit!35316)

(assert (=> b!1074352 (= lt!476623 lt!476621)))

(declare-fun lt!476625 () V!39779)

(declare-fun lt!476627 () (_ BitVec 64))

(declare-fun lt!476622 () (_ BitVec 64))

(declare-fun lt!476626 () ListLongMap!14659)

(assert (=> b!1074352 (not (contains!6350 (+!3174 lt!476626 (tuple2!16679 lt!476627 lt!476625)) lt!476622))))

(assert (=> b!1074352 (= lt!476621 (addStillNotContains!265 lt!476626 lt!476627 lt!476625 lt!476622))))

(assert (=> b!1074352 (= lt!476622 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1074352 (= lt!476625 (get!17232 (select (arr!33134 _values!955) #b00000000000000000000000000000000) (dynLambda!2046 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1074352 (= lt!476627 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000))))

(declare-fun call!45395 () ListLongMap!14659)

(assert (=> b!1074352 (= lt!476626 call!45395)))

(declare-fun e!613926 () ListLongMap!14659)

(assert (=> b!1074352 (= e!613926 (+!3174 call!45395 (tuple2!16679 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000) (get!17232 (select (arr!33134 _values!955) #b00000000000000000000000000000000) (dynLambda!2046 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1074353 () Bool)

(declare-fun e!613928 () Bool)

(assert (=> b!1074353 (= e!613928 e!613927)))

(declare-fun c!107849 () Bool)

(assert (=> b!1074353 (= c!107849 (bvslt #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(declare-fun b!1074354 () Bool)

(assert (=> b!1074354 (= e!613925 e!613928)))

(declare-fun c!107847 () Bool)

(declare-fun e!613924 () Bool)

(assert (=> b!1074354 (= c!107847 e!613924)))

(declare-fun res!716469 () Bool)

(assert (=> b!1074354 (=> (not res!716469) (not e!613924))))

(assert (=> b!1074354 (= res!716469 (bvslt #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(declare-fun b!1074355 () Bool)

(assert (=> b!1074355 (= e!613927 (isEmpty!956 lt!476624))))

(declare-fun b!1074356 () Bool)

(declare-fun e!613930 () Bool)

(assert (=> b!1074356 (= e!613928 e!613930)))

(assert (=> b!1074356 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(declare-fun res!716470 () Bool)

(assert (=> b!1074356 (= res!716470 (contains!6350 lt!476624 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074356 (=> (not res!716470) (not e!613930))))

(declare-fun b!1074357 () Bool)

(assert (=> b!1074357 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33672 _keys!1163)))))

(assert (=> b!1074357 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!33671 _values!955)))))

(assert (=> b!1074357 (= e!613930 (= (apply!970 lt!476624 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)) (get!17232 (select (arr!33134 _values!955) #b00000000000000000000000000000000) (dynLambda!2046 defaultEntry!963 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1074358 () Bool)

(declare-fun res!716468 () Bool)

(assert (=> b!1074358 (=> (not res!716468) (not e!613925))))

(assert (=> b!1074358 (= res!716468 (not (contains!6350 lt!476624 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1074359 () Bool)

(assert (=> b!1074359 (= e!613924 (validKeyInArray!0 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)))))

(assert (=> b!1074359 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!1074360 () Bool)

(assert (=> b!1074360 (= e!613926 call!45395)))

(declare-fun b!1074361 () Bool)

(assert (=> b!1074361 (= e!613929 e!613926)))

(declare-fun c!107846 () Bool)

(assert (=> b!1074361 (= c!107846 (validKeyInArray!0 (select (arr!33135 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1074362 () Bool)

(assert (=> b!1074362 (= e!613929 (ListLongMap!14660 Nil!23251))))

(declare-fun bm!45392 () Bool)

(assert (=> bm!45392 (= call!45395 (getCurrentListMapNoExtraKeys!3873 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!963))))

(assert (= (and d!129461 c!107848) b!1074362))

(assert (= (and d!129461 (not c!107848)) b!1074361))

(assert (= (and b!1074361 c!107846) b!1074352))

(assert (= (and b!1074361 (not c!107846)) b!1074360))

(assert (= (or b!1074352 b!1074360) bm!45392))

(assert (= (and d!129461 res!716467) b!1074358))

(assert (= (and b!1074358 res!716468) b!1074354))

(assert (= (and b!1074354 res!716469) b!1074359))

(assert (= (and b!1074354 c!107847) b!1074356))

(assert (= (and b!1074354 (not c!107847)) b!1074353))

(assert (= (and b!1074356 res!716470) b!1074357))

(assert (= (and b!1074353 c!107849) b!1074351))

(assert (= (and b!1074353 (not c!107849)) b!1074355))

(declare-fun b_lambda!16823 () Bool)

(assert (=> (not b_lambda!16823) (not b!1074352)))

(assert (=> b!1074352 t!32608))

(declare-fun b_and!35087 () Bool)

(assert (= b_and!35085 (and (=> t!32608 result!14811) b_and!35087)))

(declare-fun b_lambda!16825 () Bool)

(assert (=> (not b_lambda!16825) (not b!1074357)))

(assert (=> b!1074357 t!32608))

(declare-fun b_and!35089 () Bool)

(assert (= b_and!35087 (and (=> t!32608 result!14811) b_and!35089)))

(declare-fun m!993371 () Bool)

(assert (=> bm!45392 m!993371))

(assert (=> b!1074357 m!993225))

(declare-fun m!993373 () Bool)

(assert (=> b!1074357 m!993373))

(assert (=> b!1074357 m!993225))

(assert (=> b!1074357 m!993245))

(assert (=> b!1074357 m!993243))

(assert (=> b!1074357 m!993243))

(assert (=> b!1074357 m!993245))

(assert (=> b!1074357 m!993247))

(assert (=> b!1074352 m!993225))

(assert (=> b!1074352 m!993245))

(declare-fun m!993375 () Bool)

(assert (=> b!1074352 m!993375))

(declare-fun m!993377 () Bool)

(assert (=> b!1074352 m!993377))

(declare-fun m!993379 () Bool)

(assert (=> b!1074352 m!993379))

(assert (=> b!1074352 m!993377))

(declare-fun m!993381 () Bool)

(assert (=> b!1074352 m!993381))

(assert (=> b!1074352 m!993243))

(assert (=> b!1074352 m!993243))

(assert (=> b!1074352 m!993245))

(assert (=> b!1074352 m!993247))

(assert (=> b!1074356 m!993225))

(assert (=> b!1074356 m!993225))

(declare-fun m!993383 () Bool)

(assert (=> b!1074356 m!993383))

(assert (=> b!1074351 m!993371))

(assert (=> b!1074361 m!993225))

(assert (=> b!1074361 m!993225))

(assert (=> b!1074361 m!993233))

(declare-fun m!993385 () Bool)

(assert (=> d!129461 m!993385))

(assert (=> d!129461 m!993187))

(declare-fun m!993387 () Bool)

(assert (=> b!1074358 m!993387))

(declare-fun m!993389 () Bool)

(assert (=> b!1074355 m!993389))

(assert (=> b!1074359 m!993225))

(assert (=> b!1074359 m!993225))

(assert (=> b!1074359 m!993233))

(assert (=> b!1074170 d!129461))

(declare-fun mapNonEmpty!40702 () Bool)

(declare-fun mapRes!40702 () Bool)

(declare-fun tp!78003 () Bool)

(declare-fun e!613935 () Bool)

(assert (=> mapNonEmpty!40702 (= mapRes!40702 (and tp!78003 e!613935))))

(declare-fun mapRest!40702 () (Array (_ BitVec 32) ValueCell!12288))

(declare-fun mapKey!40702 () (_ BitVec 32))

(declare-fun mapValue!40702 () ValueCell!12288)

(assert (=> mapNonEmpty!40702 (= mapRest!40696 (store mapRest!40702 mapKey!40702 mapValue!40702))))

(declare-fun b!1074370 () Bool)

(declare-fun e!613936 () Bool)

(assert (=> b!1074370 (= e!613936 tp_is_empty!25983)))

(declare-fun mapIsEmpty!40702 () Bool)

(assert (=> mapIsEmpty!40702 mapRes!40702))

(declare-fun condMapEmpty!40702 () Bool)

(declare-fun mapDefault!40702 () ValueCell!12288)

(assert (=> mapNonEmpty!40696 (= condMapEmpty!40702 (= mapRest!40696 ((as const (Array (_ BitVec 32) ValueCell!12288)) mapDefault!40702)))))

(assert (=> mapNonEmpty!40696 (= tp!77993 (and e!613936 mapRes!40702))))

(declare-fun b!1074369 () Bool)

(assert (=> b!1074369 (= e!613935 tp_is_empty!25983)))

(assert (= (and mapNonEmpty!40696 condMapEmpty!40702) mapIsEmpty!40702))

(assert (= (and mapNonEmpty!40696 (not condMapEmpty!40702)) mapNonEmpty!40702))

(assert (= (and mapNonEmpty!40702 ((_ is ValueCellFull!12288) mapValue!40702)) b!1074369))

(assert (= (and mapNonEmpty!40696 ((_ is ValueCellFull!12288) mapDefault!40702)) b!1074370))

(declare-fun m!993391 () Bool)

(assert (=> mapNonEmpty!40702 m!993391))

(declare-fun b_lambda!16827 () Bool)

(assert (= b_lambda!16821 (or (and start!95056 b_free!22173) b_lambda!16827)))

(declare-fun b_lambda!16829 () Bool)

(assert (= b_lambda!16823 (or (and start!95056 b_free!22173) b_lambda!16829)))

(declare-fun b_lambda!16831 () Bool)

(assert (= b_lambda!16819 (or (and start!95056 b_free!22173) b_lambda!16831)))

(declare-fun b_lambda!16833 () Bool)

(assert (= b_lambda!16825 (or (and start!95056 b_free!22173) b_lambda!16833)))

(declare-fun b_lambda!16835 () Bool)

(assert (= b_lambda!16815 (or (and start!95056 b_free!22173) b_lambda!16835)))

(declare-fun b_lambda!16837 () Bool)

(assert (= b_lambda!16817 (or (and start!95056 b_free!22173) b_lambda!16837)))

(check-sat (not b_lambda!16837) (not b!1074308) (not b!1074343) (not d!129457) (not b!1074292) (not b_lambda!16829) (not b!1074351) (not b!1074278) (not b_lambda!16831) (not b!1074347) (not d!129459) (not b!1074221) (not bm!45380) (not b!1074302) (not b!1074361) (not b!1074274) (not b!1074277) (not bm!45382) (not bm!45379) (not b!1074205) (not b_next!22173) (not b_lambda!16835) (not b!1074344) (not d!129451) (not b!1074356) (not b!1074345) (not mapNonEmpty!40702) (not b!1074219) (not bm!45391) (not b!1074279) (not b!1074218) (not b_lambda!16833) (not bm!45375) (not bm!45387) (not b!1074340) (not b!1074349) b_and!35089 (not b!1074310) (not bm!45357) (not b_lambda!16827) (not bm!45388) (not b!1074359) (not bm!45386) (not b!1074303) (not b!1074346) (not b!1074358) (not b!1074273) (not b!1074268) (not b!1074339) (not b!1074307) (not b!1074297) (not b!1074352) (not b!1074206) (not b!1074281) (not b!1074306) (not b!1074357) (not bm!45360) tp_is_empty!25983 (not b!1074355) (not b!1074293) (not d!129461) (not b!1074267) (not d!129453) (not b!1074296) (not bm!45392) (not d!129455) (not bm!45381))
(check-sat b_and!35089 (not b_next!22173))
