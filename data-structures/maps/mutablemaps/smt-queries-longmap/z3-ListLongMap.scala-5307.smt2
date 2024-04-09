; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71088 () Bool)

(assert start!71088)

(declare-fun b_free!13251 () Bool)

(declare-fun b_next!13251 () Bool)

(assert (=> start!71088 (= b_free!13251 (not b_next!13251))))

(declare-fun tp!46509 () Bool)

(declare-fun b_and!22183 () Bool)

(assert (=> start!71088 (= tp!46509 b_and!22183)))

(declare-datatypes ((V!24949 0))(
  ( (V!24950 (val!7528 Int)) )
))
(declare-datatypes ((tuple2!9964 0))(
  ( (tuple2!9965 (_1!4992 (_ BitVec 64)) (_2!4992 V!24949)) )
))
(declare-fun lt!372328 () tuple2!9964)

(declare-datatypes ((List!15810 0))(
  ( (Nil!15807) (Cons!15806 (h!16935 tuple2!9964) (t!22163 List!15810)) )
))
(declare-datatypes ((ListLongMap!8801 0))(
  ( (ListLongMap!8802 (toList!4416 List!15810)) )
))
(declare-fun lt!372332 () ListLongMap!8801)

(declare-fun b!825069 () Bool)

(declare-fun zeroValueAfter!34 () V!24949)

(declare-fun e!459212 () Bool)

(declare-fun lt!372327 () ListLongMap!8801)

(declare-fun +!1878 (ListLongMap!8801 tuple2!9964) ListLongMap!8801)

(assert (=> b!825069 (= e!459212 (= lt!372327 (+!1878 (+!1878 lt!372332 (tuple2!9965 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!372328)))))

(declare-fun b!825070 () Bool)

(declare-fun e!459211 () Bool)

(declare-fun e!459210 () Bool)

(declare-fun mapRes!24064 () Bool)

(assert (=> b!825070 (= e!459211 (and e!459210 mapRes!24064))))

(declare-fun condMapEmpty!24064 () Bool)

(declare-datatypes ((ValueCell!7065 0))(
  ( (ValueCellFull!7065 (v!9957 V!24949)) (EmptyCell!7065) )
))
(declare-datatypes ((array!46070 0))(
  ( (array!46071 (arr!22077 (Array (_ BitVec 32) ValueCell!7065)) (size!22498 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46070)

(declare-fun mapDefault!24064 () ValueCell!7065)

(assert (=> b!825070 (= condMapEmpty!24064 (= (arr!22077 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7065)) mapDefault!24064)))))

(declare-fun b!825071 () Bool)

(declare-fun e!459208 () Bool)

(declare-fun e!459209 () Bool)

(assert (=> b!825071 (= e!459208 (not e!459209))))

(declare-fun res!562565 () Bool)

(assert (=> b!825071 (=> res!562565 e!459209)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!825071 (= res!562565 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun lt!372325 () ListLongMap!8801)

(assert (=> b!825071 (= lt!372325 lt!372332)))

(declare-fun zeroValueBefore!34 () V!24949)

(declare-datatypes ((array!46072 0))(
  ( (array!46073 (arr!22078 (Array (_ BitVec 32) (_ BitVec 64))) (size!22499 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46072)

(declare-fun minValue!754 () V!24949)

(declare-datatypes ((Unit!28273 0))(
  ( (Unit!28274) )
))
(declare-fun lt!372333 () Unit!28273)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!549 (array!46072 array!46070 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24949 V!24949 V!24949 V!24949 (_ BitVec 32) Int) Unit!28273)

(assert (=> b!825071 (= lt!372333 (lemmaNoChangeToArrayThenSameMapNoExtras!549 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2433 (array!46072 array!46070 (_ BitVec 32) (_ BitVec 32) V!24949 V!24949 (_ BitVec 32) Int) ListLongMap!8801)

(assert (=> b!825071 (= lt!372332 (getCurrentListMapNoExtraKeys!2433 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825071 (= lt!372325 (getCurrentListMapNoExtraKeys!2433 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!562566 () Bool)

(assert (=> start!71088 (=> (not res!562566) (not e!459208))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71088 (= res!562566 (validMask!0 mask!1312))))

(assert (=> start!71088 e!459208))

(declare-fun tp_is_empty!14961 () Bool)

(assert (=> start!71088 tp_is_empty!14961))

(declare-fun array_inv!17589 (array!46072) Bool)

(assert (=> start!71088 (array_inv!17589 _keys!976)))

(assert (=> start!71088 true))

(declare-fun array_inv!17590 (array!46070) Bool)

(assert (=> start!71088 (and (array_inv!17590 _values!788) e!459211)))

(assert (=> start!71088 tp!46509))

(declare-fun lt!372322 () tuple2!9964)

(declare-fun b!825072 () Bool)

(declare-fun e!459213 () Bool)

(assert (=> b!825072 (= e!459213 (= lt!372327 (+!1878 (+!1878 lt!372332 lt!372328) lt!372322)))))

(declare-fun b!825073 () Bool)

(declare-fun e!459215 () Bool)

(assert (=> b!825073 (= e!459215 tp_is_empty!14961)))

(declare-fun b!825074 () Bool)

(declare-fun res!562564 () Bool)

(assert (=> b!825074 (=> (not res!562564) (not e!459208))))

(assert (=> b!825074 (= res!562564 (and (= (size!22498 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22499 _keys!976) (size!22498 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!825075 () Bool)

(assert (=> b!825075 (= e!459209 true)))

(declare-fun lt!372335 () ListLongMap!8801)

(assert (=> b!825075 (= lt!372335 (+!1878 (+!1878 lt!372325 lt!372322) lt!372328))))

(declare-fun lt!372326 () ListLongMap!8801)

(declare-fun lt!372323 () ListLongMap!8801)

(assert (=> b!825075 (and (= lt!372326 lt!372323) (= lt!372327 lt!372323) (= lt!372327 lt!372326))))

(declare-fun lt!372329 () ListLongMap!8801)

(assert (=> b!825075 (= lt!372323 (+!1878 lt!372329 lt!372322))))

(declare-fun lt!372324 () ListLongMap!8801)

(assert (=> b!825075 (= lt!372326 (+!1878 lt!372324 lt!372322))))

(declare-fun lt!372334 () Unit!28273)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!206 (ListLongMap!8801 (_ BitVec 64) V!24949 V!24949) Unit!28273)

(assert (=> b!825075 (= lt!372334 (addSameAsAddTwiceSameKeyDiffValues!206 lt!372324 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!825075 e!459213))

(declare-fun res!562562 () Bool)

(assert (=> b!825075 (=> (not res!562562) (not e!459213))))

(declare-fun lt!372331 () ListLongMap!8801)

(assert (=> b!825075 (= res!562562 (= lt!372331 lt!372329))))

(declare-fun lt!372330 () tuple2!9964)

(assert (=> b!825075 (= lt!372329 (+!1878 lt!372324 lt!372330))))

(assert (=> b!825075 (= lt!372324 (+!1878 lt!372325 lt!372328))))

(assert (=> b!825075 (= lt!372322 (tuple2!9965 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!825075 e!459212))

(declare-fun res!562563 () Bool)

(assert (=> b!825075 (=> (not res!562563) (not e!459212))))

(assert (=> b!825075 (= res!562563 (= lt!372331 (+!1878 (+!1878 lt!372325 lt!372330) lt!372328)))))

(assert (=> b!825075 (= lt!372328 (tuple2!9965 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!825075 (= lt!372330 (tuple2!9965 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2528 (array!46072 array!46070 (_ BitVec 32) (_ BitVec 32) V!24949 V!24949 (_ BitVec 32) Int) ListLongMap!8801)

(assert (=> b!825075 (= lt!372327 (getCurrentListMap!2528 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!825075 (= lt!372331 (getCurrentListMap!2528 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!24064 () Bool)

(declare-fun tp!46510 () Bool)

(assert (=> mapNonEmpty!24064 (= mapRes!24064 (and tp!46510 e!459215))))

(declare-fun mapKey!24064 () (_ BitVec 32))

(declare-fun mapValue!24064 () ValueCell!7065)

(declare-fun mapRest!24064 () (Array (_ BitVec 32) ValueCell!7065))

(assert (=> mapNonEmpty!24064 (= (arr!22077 _values!788) (store mapRest!24064 mapKey!24064 mapValue!24064))))

(declare-fun b!825076 () Bool)

(declare-fun res!562561 () Bool)

(assert (=> b!825076 (=> (not res!562561) (not e!459208))))

(declare-datatypes ((List!15811 0))(
  ( (Nil!15808) (Cons!15807 (h!16936 (_ BitVec 64)) (t!22164 List!15811)) )
))
(declare-fun arrayNoDuplicates!0 (array!46072 (_ BitVec 32) List!15811) Bool)

(assert (=> b!825076 (= res!562561 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15808))))

(declare-fun mapIsEmpty!24064 () Bool)

(assert (=> mapIsEmpty!24064 mapRes!24064))

(declare-fun b!825077 () Bool)

(assert (=> b!825077 (= e!459210 tp_is_empty!14961)))

(declare-fun b!825078 () Bool)

(declare-fun res!562560 () Bool)

(assert (=> b!825078 (=> (not res!562560) (not e!459208))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46072 (_ BitVec 32)) Bool)

(assert (=> b!825078 (= res!562560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!71088 res!562566) b!825074))

(assert (= (and b!825074 res!562564) b!825078))

(assert (= (and b!825078 res!562560) b!825076))

(assert (= (and b!825076 res!562561) b!825071))

(assert (= (and b!825071 (not res!562565)) b!825075))

(assert (= (and b!825075 res!562563) b!825069))

(assert (= (and b!825075 res!562562) b!825072))

(assert (= (and b!825070 condMapEmpty!24064) mapIsEmpty!24064))

(assert (= (and b!825070 (not condMapEmpty!24064)) mapNonEmpty!24064))

(get-info :version)

(assert (= (and mapNonEmpty!24064 ((_ is ValueCellFull!7065) mapValue!24064)) b!825073))

(assert (= (and b!825070 ((_ is ValueCellFull!7065) mapDefault!24064)) b!825077))

(assert (= start!71088 b!825070))

(declare-fun m!767195 () Bool)

(assert (=> b!825069 m!767195))

(assert (=> b!825069 m!767195))

(declare-fun m!767197 () Bool)

(assert (=> b!825069 m!767197))

(declare-fun m!767199 () Bool)

(assert (=> b!825075 m!767199))

(declare-fun m!767201 () Bool)

(assert (=> b!825075 m!767201))

(declare-fun m!767203 () Bool)

(assert (=> b!825075 m!767203))

(declare-fun m!767205 () Bool)

(assert (=> b!825075 m!767205))

(declare-fun m!767207 () Bool)

(assert (=> b!825075 m!767207))

(declare-fun m!767209 () Bool)

(assert (=> b!825075 m!767209))

(declare-fun m!767211 () Bool)

(assert (=> b!825075 m!767211))

(declare-fun m!767213 () Bool)

(assert (=> b!825075 m!767213))

(assert (=> b!825075 m!767199))

(declare-fun m!767215 () Bool)

(assert (=> b!825075 m!767215))

(assert (=> b!825075 m!767203))

(declare-fun m!767217 () Bool)

(assert (=> b!825075 m!767217))

(declare-fun m!767219 () Bool)

(assert (=> b!825075 m!767219))

(declare-fun m!767221 () Bool)

(assert (=> start!71088 m!767221))

(declare-fun m!767223 () Bool)

(assert (=> start!71088 m!767223))

(declare-fun m!767225 () Bool)

(assert (=> start!71088 m!767225))

(declare-fun m!767227 () Bool)

(assert (=> mapNonEmpty!24064 m!767227))

(declare-fun m!767229 () Bool)

(assert (=> b!825076 m!767229))

(declare-fun m!767231 () Bool)

(assert (=> b!825071 m!767231))

(declare-fun m!767233 () Bool)

(assert (=> b!825071 m!767233))

(declare-fun m!767235 () Bool)

(assert (=> b!825071 m!767235))

(declare-fun m!767237 () Bool)

(assert (=> b!825078 m!767237))

(declare-fun m!767239 () Bool)

(assert (=> b!825072 m!767239))

(assert (=> b!825072 m!767239))

(declare-fun m!767241 () Bool)

(assert (=> b!825072 m!767241))

(check-sat (not b!825078) tp_is_empty!14961 (not b!825071) (not b!825076) (not start!71088) (not b!825075) (not b!825072) (not b!825069) (not b_next!13251) (not mapNonEmpty!24064) b_and!22183)
(check-sat b_and!22183 (not b_next!13251))
