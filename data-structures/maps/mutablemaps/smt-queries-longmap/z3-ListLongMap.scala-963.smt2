; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20908 () Bool)

(assert start!20908)

(declare-fun b_free!5529 () Bool)

(declare-fun b_next!5529 () Bool)

(assert (=> start!20908 (= b_free!5529 (not b_next!5529))))

(declare-fun tp!19631 () Bool)

(declare-fun b_and!12305 () Bool)

(assert (=> start!20908 (= tp!19631 b_and!12305)))

(declare-fun b!209758 () Bool)

(declare-fun res!102303 () Bool)

(declare-fun e!136639 () Bool)

(assert (=> b!209758 (=> (not res!102303) (not e!136639))))

(declare-datatypes ((array!9978 0))(
  ( (array!9979 (arr!4738 (Array (_ BitVec 32) (_ BitVec 64))) (size!5063 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9978)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9978 (_ BitVec 32)) Bool)

(assert (=> b!209758 (= res!102303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun mapIsEmpty!9158 () Bool)

(declare-fun mapRes!9158 () Bool)

(assert (=> mapIsEmpty!9158 mapRes!9158))

(declare-fun b!209759 () Bool)

(declare-fun e!136641 () Bool)

(declare-fun e!136638 () Bool)

(assert (=> b!209759 (= e!136641 (and e!136638 mapRes!9158))))

(declare-fun condMapEmpty!9158 () Bool)

(declare-datatypes ((V!6835 0))(
  ( (V!6836 (val!2740 Int)) )
))
(declare-datatypes ((ValueCell!2352 0))(
  ( (ValueCellFull!2352 (v!4710 V!6835)) (EmptyCell!2352) )
))
(declare-datatypes ((array!9980 0))(
  ( (array!9981 (arr!4739 (Array (_ BitVec 32) ValueCell!2352)) (size!5064 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9980)

(declare-fun mapDefault!9158 () ValueCell!2352)

(assert (=> b!209759 (= condMapEmpty!9158 (= (arr!4739 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2352)) mapDefault!9158)))))

(declare-fun b!209760 () Bool)

(declare-fun res!102302 () Bool)

(assert (=> b!209760 (=> (not res!102302) (not e!136639))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!209760 (= res!102302 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5063 _keys!825))))))

(declare-fun res!102301 () Bool)

(assert (=> start!20908 (=> (not res!102301) (not e!136639))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20908 (= res!102301 (validMask!0 mask!1149))))

(assert (=> start!20908 e!136639))

(declare-fun array_inv!3129 (array!9980) Bool)

(assert (=> start!20908 (and (array_inv!3129 _values!649) e!136641)))

(assert (=> start!20908 true))

(declare-fun tp_is_empty!5391 () Bool)

(assert (=> start!20908 tp_is_empty!5391))

(declare-fun array_inv!3130 (array!9978) Bool)

(assert (=> start!20908 (array_inv!3130 _keys!825)))

(assert (=> start!20908 tp!19631))

(declare-fun b!209761 () Bool)

(declare-fun e!136642 () Bool)

(assert (=> b!209761 (= e!136639 (not e!136642))))

(declare-fun res!102298 () Bool)

(assert (=> b!209761 (=> res!102298 e!136642)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!209761 (= res!102298 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!4136 0))(
  ( (tuple2!4137 (_1!2078 (_ BitVec 64)) (_2!2078 V!6835)) )
))
(declare-datatypes ((List!3056 0))(
  ( (Nil!3053) (Cons!3052 (h!3694 tuple2!4136) (t!7997 List!3056)) )
))
(declare-datatypes ((ListLongMap!3063 0))(
  ( (ListLongMap!3064 (toList!1547 List!3056)) )
))
(declare-fun lt!107311 () ListLongMap!3063)

(declare-fun zeroValue!615 () V!6835)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6835)

(declare-fun getCurrentListMap!1080 (array!9978 array!9980 (_ BitVec 32) (_ BitVec 32) V!6835 V!6835 (_ BitVec 32) Int) ListLongMap!3063)

(assert (=> b!209761 (= lt!107311 (getCurrentListMap!1080 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107309 () array!9980)

(declare-fun lt!107305 () ListLongMap!3063)

(assert (=> b!209761 (= lt!107305 (getCurrentListMap!1080 _keys!825 lt!107309 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107308 () ListLongMap!3063)

(declare-fun lt!107304 () ListLongMap!3063)

(assert (=> b!209761 (and (= lt!107308 lt!107304) (= lt!107304 lt!107308))))

(declare-fun v!520 () V!6835)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun lt!107310 () ListLongMap!3063)

(declare-fun +!540 (ListLongMap!3063 tuple2!4136) ListLongMap!3063)

(assert (=> b!209761 (= lt!107304 (+!540 lt!107310 (tuple2!4137 k0!843 v!520)))))

(declare-datatypes ((Unit!6375 0))(
  ( (Unit!6376) )
))
(declare-fun lt!107307 () Unit!6375)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!197 (array!9978 array!9980 (_ BitVec 32) (_ BitVec 32) V!6835 V!6835 (_ BitVec 32) (_ BitVec 64) V!6835 (_ BitVec 32) Int) Unit!6375)

(assert (=> b!209761 (= lt!107307 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!197 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!479 (array!9978 array!9980 (_ BitVec 32) (_ BitVec 32) V!6835 V!6835 (_ BitVec 32) Int) ListLongMap!3063)

(assert (=> b!209761 (= lt!107308 (getCurrentListMapNoExtraKeys!479 _keys!825 lt!107309 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!209761 (= lt!107309 (array!9981 (store (arr!4739 _values!649) i!601 (ValueCellFull!2352 v!520)) (size!5064 _values!649)))))

(assert (=> b!209761 (= lt!107310 (getCurrentListMapNoExtraKeys!479 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!209762 () Bool)

(declare-fun res!102299 () Bool)

(assert (=> b!209762 (=> (not res!102299) (not e!136639))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!209762 (= res!102299 (validKeyInArray!0 k0!843))))

(declare-fun b!209763 () Bool)

(declare-fun e!136643 () Bool)

(assert (=> b!209763 (= e!136643 tp_is_empty!5391)))

(declare-fun b!209764 () Bool)

(declare-fun res!102300 () Bool)

(assert (=> b!209764 (=> (not res!102300) (not e!136639))))

(declare-datatypes ((List!3057 0))(
  ( (Nil!3054) (Cons!3053 (h!3695 (_ BitVec 64)) (t!7998 List!3057)) )
))
(declare-fun arrayNoDuplicates!0 (array!9978 (_ BitVec 32) List!3057) Bool)

(assert (=> b!209764 (= res!102300 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3054))))

(declare-fun b!209765 () Bool)

(assert (=> b!209765 (= e!136638 tp_is_empty!5391)))

(declare-fun b!209766 () Bool)

(declare-fun res!102297 () Bool)

(assert (=> b!209766 (=> (not res!102297) (not e!136639))))

(assert (=> b!209766 (= res!102297 (= (select (arr!4738 _keys!825) i!601) k0!843))))

(declare-fun lt!107306 () tuple2!4136)

(declare-fun lt!107312 () tuple2!4136)

(declare-fun b!209767 () Bool)

(assert (=> b!209767 (= e!136642 (= lt!107311 (+!540 (+!540 lt!107310 lt!107312) lt!107306)))))

(assert (=> b!209767 (= lt!107305 (+!540 (+!540 lt!107308 lt!107312) lt!107306))))

(assert (=> b!209767 (= lt!107306 (tuple2!4137 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!209767 (= lt!107312 (tuple2!4137 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!209768 () Bool)

(declare-fun res!102296 () Bool)

(assert (=> b!209768 (=> (not res!102296) (not e!136639))))

(assert (=> b!209768 (= res!102296 (and (= (size!5064 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5063 _keys!825) (size!5064 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!9158 () Bool)

(declare-fun tp!19630 () Bool)

(assert (=> mapNonEmpty!9158 (= mapRes!9158 (and tp!19630 e!136643))))

(declare-fun mapValue!9158 () ValueCell!2352)

(declare-fun mapRest!9158 () (Array (_ BitVec 32) ValueCell!2352))

(declare-fun mapKey!9158 () (_ BitVec 32))

(assert (=> mapNonEmpty!9158 (= (arr!4739 _values!649) (store mapRest!9158 mapKey!9158 mapValue!9158))))

(assert (= (and start!20908 res!102301) b!209768))

(assert (= (and b!209768 res!102296) b!209758))

(assert (= (and b!209758 res!102303) b!209764))

(assert (= (and b!209764 res!102300) b!209760))

(assert (= (and b!209760 res!102302) b!209762))

(assert (= (and b!209762 res!102299) b!209766))

(assert (= (and b!209766 res!102297) b!209761))

(assert (= (and b!209761 (not res!102298)) b!209767))

(assert (= (and b!209759 condMapEmpty!9158) mapIsEmpty!9158))

(assert (= (and b!209759 (not condMapEmpty!9158)) mapNonEmpty!9158))

(get-info :version)

(assert (= (and mapNonEmpty!9158 ((_ is ValueCellFull!2352) mapValue!9158)) b!209763))

(assert (= (and b!209759 ((_ is ValueCellFull!2352) mapDefault!9158)) b!209765))

(assert (= start!20908 b!209759))

(declare-fun m!237177 () Bool)

(assert (=> b!209762 m!237177))

(declare-fun m!237179 () Bool)

(assert (=> b!209761 m!237179))

(declare-fun m!237181 () Bool)

(assert (=> b!209761 m!237181))

(declare-fun m!237183 () Bool)

(assert (=> b!209761 m!237183))

(declare-fun m!237185 () Bool)

(assert (=> b!209761 m!237185))

(declare-fun m!237187 () Bool)

(assert (=> b!209761 m!237187))

(declare-fun m!237189 () Bool)

(assert (=> b!209761 m!237189))

(declare-fun m!237191 () Bool)

(assert (=> b!209761 m!237191))

(declare-fun m!237193 () Bool)

(assert (=> b!209758 m!237193))

(declare-fun m!237195 () Bool)

(assert (=> mapNonEmpty!9158 m!237195))

(declare-fun m!237197 () Bool)

(assert (=> b!209767 m!237197))

(assert (=> b!209767 m!237197))

(declare-fun m!237199 () Bool)

(assert (=> b!209767 m!237199))

(declare-fun m!237201 () Bool)

(assert (=> b!209767 m!237201))

(assert (=> b!209767 m!237201))

(declare-fun m!237203 () Bool)

(assert (=> b!209767 m!237203))

(declare-fun m!237205 () Bool)

(assert (=> start!20908 m!237205))

(declare-fun m!237207 () Bool)

(assert (=> start!20908 m!237207))

(declare-fun m!237209 () Bool)

(assert (=> start!20908 m!237209))

(declare-fun m!237211 () Bool)

(assert (=> b!209764 m!237211))

(declare-fun m!237213 () Bool)

(assert (=> b!209766 m!237213))

(check-sat (not b_next!5529) b_and!12305 (not start!20908) (not mapNonEmpty!9158) (not b!209758) (not b!209762) (not b!209761) (not b!209767) tp_is_empty!5391 (not b!209764))
(check-sat b_and!12305 (not b_next!5529))
(get-model)

(declare-fun b!209812 () Bool)

(declare-fun e!136672 () Bool)

(declare-fun call!19821 () Bool)

(assert (=> b!209812 (= e!136672 call!19821)))

(declare-fun b!209813 () Bool)

(declare-fun e!136671 () Bool)

(declare-fun contains!1391 (List!3057 (_ BitVec 64)) Bool)

(assert (=> b!209813 (= e!136671 (contains!1391 Nil!3054 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun bm!19818 () Bool)

(declare-fun c!35468 () Bool)

(assert (=> bm!19818 (= call!19821 (arrayNoDuplicates!0 _keys!825 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!35468 (Cons!3053 (select (arr!4738 _keys!825) #b00000000000000000000000000000000) Nil!3054) Nil!3054)))))

(declare-fun b!209814 () Bool)

(assert (=> b!209814 (= e!136672 call!19821)))

(declare-fun d!57807 () Bool)

(declare-fun res!102335 () Bool)

(declare-fun e!136673 () Bool)

(assert (=> d!57807 (=> res!102335 e!136673)))

(assert (=> d!57807 (= res!102335 (bvsge #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(assert (=> d!57807 (= (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3054) e!136673)))

(declare-fun b!209815 () Bool)

(declare-fun e!136670 () Bool)

(assert (=> b!209815 (= e!136670 e!136672)))

(assert (=> b!209815 (= c!35468 (validKeyInArray!0 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!209816 () Bool)

(assert (=> b!209816 (= e!136673 e!136670)))

(declare-fun res!102336 () Bool)

(assert (=> b!209816 (=> (not res!102336) (not e!136670))))

(assert (=> b!209816 (= res!102336 (not e!136671))))

(declare-fun res!102334 () Bool)

(assert (=> b!209816 (=> (not res!102334) (not e!136671))))

(assert (=> b!209816 (= res!102334 (validKeyInArray!0 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)))))

(assert (= (and d!57807 (not res!102335)) b!209816))

(assert (= (and b!209816 res!102334) b!209813))

(assert (= (and b!209816 res!102336) b!209815))

(assert (= (and b!209815 c!35468) b!209814))

(assert (= (and b!209815 (not c!35468)) b!209812))

(assert (= (or b!209814 b!209812) bm!19818))

(declare-fun m!237253 () Bool)

(assert (=> b!209813 m!237253))

(assert (=> b!209813 m!237253))

(declare-fun m!237255 () Bool)

(assert (=> b!209813 m!237255))

(assert (=> bm!19818 m!237253))

(declare-fun m!237257 () Bool)

(assert (=> bm!19818 m!237257))

(assert (=> b!209815 m!237253))

(assert (=> b!209815 m!237253))

(declare-fun m!237259 () Bool)

(assert (=> b!209815 m!237259))

(assert (=> b!209816 m!237253))

(assert (=> b!209816 m!237253))

(assert (=> b!209816 m!237259))

(assert (=> b!209764 d!57807))

(declare-fun b!209825 () Bool)

(declare-fun e!136680 () Bool)

(declare-fun call!19824 () Bool)

(assert (=> b!209825 (= e!136680 call!19824)))

(declare-fun d!57809 () Bool)

(declare-fun res!102342 () Bool)

(declare-fun e!136682 () Bool)

(assert (=> d!57809 (=> res!102342 e!136682)))

(assert (=> d!57809 (= res!102342 (bvsge #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(assert (=> d!57809 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149) e!136682)))

(declare-fun b!209826 () Bool)

(declare-fun e!136681 () Bool)

(assert (=> b!209826 (= e!136681 e!136680)))

(declare-fun lt!107346 () (_ BitVec 64))

(assert (=> b!209826 (= lt!107346 (select (arr!4738 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107348 () Unit!6375)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!9978 (_ BitVec 64) (_ BitVec 32)) Unit!6375)

(assert (=> b!209826 (= lt!107348 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!825 lt!107346 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!9978 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!209826 (arrayContainsKey!0 _keys!825 lt!107346 #b00000000000000000000000000000000)))

(declare-fun lt!107347 () Unit!6375)

(assert (=> b!209826 (= lt!107347 lt!107348)))

(declare-fun res!102341 () Bool)

(declare-datatypes ((SeekEntryResult!715 0))(
  ( (MissingZero!715 (index!5030 (_ BitVec 32))) (Found!715 (index!5031 (_ BitVec 32))) (Intermediate!715 (undefined!1527 Bool) (index!5032 (_ BitVec 32)) (x!22004 (_ BitVec 32))) (Undefined!715) (MissingVacant!715 (index!5033 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!9978 (_ BitVec 32)) SeekEntryResult!715)

(assert (=> b!209826 (= res!102341 (= (seekEntryOrOpen!0 (select (arr!4738 _keys!825) #b00000000000000000000000000000000) _keys!825 mask!1149) (Found!715 #b00000000000000000000000000000000)))))

(assert (=> b!209826 (=> (not res!102341) (not e!136680))))

(declare-fun b!209827 () Bool)

(assert (=> b!209827 (= e!136681 call!19824)))

(declare-fun bm!19821 () Bool)

(assert (=> bm!19821 (= call!19824 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!825 mask!1149))))

(declare-fun b!209828 () Bool)

(assert (=> b!209828 (= e!136682 e!136681)))

(declare-fun c!35471 () Bool)

(assert (=> b!209828 (= c!35471 (validKeyInArray!0 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)))))

(assert (= (and d!57809 (not res!102342)) b!209828))

(assert (= (and b!209828 c!35471) b!209826))

(assert (= (and b!209828 (not c!35471)) b!209827))

(assert (= (and b!209826 res!102341) b!209825))

(assert (= (or b!209825 b!209827) bm!19821))

(assert (=> b!209826 m!237253))

(declare-fun m!237261 () Bool)

(assert (=> b!209826 m!237261))

(declare-fun m!237263 () Bool)

(assert (=> b!209826 m!237263))

(assert (=> b!209826 m!237253))

(declare-fun m!237265 () Bool)

(assert (=> b!209826 m!237265))

(declare-fun m!237267 () Bool)

(assert (=> bm!19821 m!237267))

(assert (=> b!209828 m!237253))

(assert (=> b!209828 m!237253))

(assert (=> b!209828 m!237259))

(assert (=> b!209758 d!57809))

(declare-fun d!57811 () Bool)

(assert (=> d!57811 (= (validKeyInArray!0 k0!843) (and (not (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!209762 d!57811))

(declare-fun d!57813 () Bool)

(assert (=> d!57813 (= (validMask!0 mask!1149) (and (or (= mask!1149 #b00000000000000000000000000000111) (= mask!1149 #b00000000000000000000000000001111) (= mask!1149 #b00000000000000000000000000011111) (= mask!1149 #b00000000000000000000000000111111) (= mask!1149 #b00000000000000000000000001111111) (= mask!1149 #b00000000000000000000000011111111) (= mask!1149 #b00000000000000000000000111111111) (= mask!1149 #b00000000000000000000001111111111) (= mask!1149 #b00000000000000000000011111111111) (= mask!1149 #b00000000000000000000111111111111) (= mask!1149 #b00000000000000000001111111111111) (= mask!1149 #b00000000000000000011111111111111) (= mask!1149 #b00000000000000000111111111111111) (= mask!1149 #b00000000000000001111111111111111) (= mask!1149 #b00000000000000011111111111111111) (= mask!1149 #b00000000000000111111111111111111) (= mask!1149 #b00000000000001111111111111111111) (= mask!1149 #b00000000000011111111111111111111) (= mask!1149 #b00000000000111111111111111111111) (= mask!1149 #b00000000001111111111111111111111) (= mask!1149 #b00000000011111111111111111111111) (= mask!1149 #b00000000111111111111111111111111) (= mask!1149 #b00000001111111111111111111111111) (= mask!1149 #b00000011111111111111111111111111) (= mask!1149 #b00000111111111111111111111111111) (= mask!1149 #b00001111111111111111111111111111) (= mask!1149 #b00011111111111111111111111111111) (= mask!1149 #b00111111111111111111111111111111)) (bvsle mask!1149 #b00111111111111111111111111111111)))))

(assert (=> start!20908 d!57813))

(declare-fun d!57815 () Bool)

(assert (=> d!57815 (= (array_inv!3129 _values!649) (bvsge (size!5064 _values!649) #b00000000000000000000000000000000))))

(assert (=> start!20908 d!57815))

(declare-fun d!57817 () Bool)

(assert (=> d!57817 (= (array_inv!3130 _keys!825) (bvsge (size!5063 _keys!825) #b00000000000000000000000000000000))))

(assert (=> start!20908 d!57817))

(declare-fun b!209853 () Bool)

(assert (=> b!209853 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(assert (=> b!209853 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5064 _values!649)))))

(declare-fun e!136697 () Bool)

(declare-fun lt!107363 () ListLongMap!3063)

(declare-fun apply!190 (ListLongMap!3063 (_ BitVec 64)) V!6835)

(declare-fun get!2543 (ValueCell!2352 V!6835) V!6835)

(declare-fun dynLambda!528 (Int (_ BitVec 64)) V!6835)

(assert (=> b!209853 (= e!136697 (= (apply!190 lt!107363 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)) (get!2543 (select (arr!4739 _values!649) #b00000000000000000000000000000000) (dynLambda!528 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!209854 () Bool)

(declare-fun e!136699 () ListLongMap!3063)

(declare-fun e!136703 () ListLongMap!3063)

(assert (=> b!209854 (= e!136699 e!136703)))

(declare-fun c!35480 () Bool)

(assert (=> b!209854 (= c!35480 (validKeyInArray!0 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!209855 () Bool)

(declare-fun res!102352 () Bool)

(declare-fun e!136698 () Bool)

(assert (=> b!209855 (=> (not res!102352) (not e!136698))))

(declare-fun contains!1392 (ListLongMap!3063 (_ BitVec 64)) Bool)

(assert (=> b!209855 (= res!102352 (not (contains!1392 lt!107363 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun call!19827 () ListLongMap!3063)

(declare-fun bm!19824 () Bool)

(assert (=> bm!19824 (= call!19827 (getCurrentListMapNoExtraKeys!479 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun b!209856 () Bool)

(declare-fun lt!107367 () Unit!6375)

(declare-fun lt!107369 () Unit!6375)

(assert (=> b!209856 (= lt!107367 lt!107369)))

(declare-fun lt!107366 () (_ BitVec 64))

(declare-fun lt!107364 () ListLongMap!3063)

(declare-fun lt!107365 () (_ BitVec 64))

(declare-fun lt!107368 () V!6835)

(assert (=> b!209856 (not (contains!1392 (+!540 lt!107364 (tuple2!4137 lt!107366 lt!107368)) lt!107365))))

(declare-fun addStillNotContains!101 (ListLongMap!3063 (_ BitVec 64) V!6835 (_ BitVec 64)) Unit!6375)

(assert (=> b!209856 (= lt!107369 (addStillNotContains!101 lt!107364 lt!107366 lt!107368 lt!107365))))

(assert (=> b!209856 (= lt!107365 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!209856 (= lt!107368 (get!2543 (select (arr!4739 _values!649) #b00000000000000000000000000000000) (dynLambda!528 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!209856 (= lt!107366 (select (arr!4738 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!209856 (= lt!107364 call!19827)))

(assert (=> b!209856 (= e!136703 (+!540 call!19827 (tuple2!4137 (select (arr!4738 _keys!825) #b00000000000000000000000000000000) (get!2543 (select (arr!4739 _values!649) #b00000000000000000000000000000000) (dynLambda!528 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!209857 () Bool)

(declare-fun e!136701 () Bool)

(declare-fun e!136702 () Bool)

(assert (=> b!209857 (= e!136701 e!136702)))

(declare-fun c!35481 () Bool)

(assert (=> b!209857 (= c!35481 (bvslt #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(declare-fun b!209858 () Bool)

(assert (=> b!209858 (= e!136699 (ListLongMap!3064 Nil!3053))))

(declare-fun b!209859 () Bool)

(assert (=> b!209859 (= e!136703 call!19827)))

(declare-fun b!209860 () Bool)

(declare-fun e!136700 () Bool)

(assert (=> b!209860 (= e!136700 (validKeyInArray!0 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!209860 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!57819 () Bool)

(assert (=> d!57819 e!136698))

(declare-fun res!102353 () Bool)

(assert (=> d!57819 (=> (not res!102353) (not e!136698))))

(assert (=> d!57819 (= res!102353 (not (contains!1392 lt!107363 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57819 (= lt!107363 e!136699)))

(declare-fun c!35483 () Bool)

(assert (=> d!57819 (= c!35483 (bvsge #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(assert (=> d!57819 (validMask!0 mask!1149)))

(assert (=> d!57819 (= (getCurrentListMapNoExtraKeys!479 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!107363)))

(declare-fun b!209861 () Bool)

(assert (=> b!209861 (= e!136698 e!136701)))

(declare-fun c!35482 () Bool)

(assert (=> b!209861 (= c!35482 e!136700)))

(declare-fun res!102351 () Bool)

(assert (=> b!209861 (=> (not res!102351) (not e!136700))))

(assert (=> b!209861 (= res!102351 (bvslt #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(declare-fun b!209862 () Bool)

(declare-fun isEmpty!496 (ListLongMap!3063) Bool)

(assert (=> b!209862 (= e!136702 (isEmpty!496 lt!107363))))

(declare-fun b!209863 () Bool)

(assert (=> b!209863 (= e!136701 e!136697)))

(assert (=> b!209863 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(declare-fun res!102354 () Bool)

(assert (=> b!209863 (= res!102354 (contains!1392 lt!107363 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!209863 (=> (not res!102354) (not e!136697))))

(declare-fun b!209864 () Bool)

(assert (=> b!209864 (= e!136702 (= lt!107363 (getCurrentListMapNoExtraKeys!479 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(assert (= (and d!57819 c!35483) b!209858))

(assert (= (and d!57819 (not c!35483)) b!209854))

(assert (= (and b!209854 c!35480) b!209856))

(assert (= (and b!209854 (not c!35480)) b!209859))

(assert (= (or b!209856 b!209859) bm!19824))

(assert (= (and d!57819 res!102353) b!209855))

(assert (= (and b!209855 res!102352) b!209861))

(assert (= (and b!209861 res!102351) b!209860))

(assert (= (and b!209861 c!35482) b!209863))

(assert (= (and b!209861 (not c!35482)) b!209857))

(assert (= (and b!209863 res!102354) b!209853))

(assert (= (and b!209857 c!35481) b!209864))

(assert (= (and b!209857 (not c!35481)) b!209862))

(declare-fun b_lambda!7593 () Bool)

(assert (=> (not b_lambda!7593) (not b!209853)))

(declare-fun t!8001 () Bool)

(declare-fun tb!2901 () Bool)

(assert (=> (and start!20908 (= defaultEntry!657 defaultEntry!657) t!8001) tb!2901))

(declare-fun result!4975 () Bool)

(assert (=> tb!2901 (= result!4975 tp_is_empty!5391)))

(assert (=> b!209853 t!8001))

(declare-fun b_and!12309 () Bool)

(assert (= b_and!12305 (and (=> t!8001 result!4975) b_and!12309)))

(declare-fun b_lambda!7595 () Bool)

(assert (=> (not b_lambda!7595) (not b!209856)))

(assert (=> b!209856 t!8001))

(declare-fun b_and!12311 () Bool)

(assert (= b_and!12309 (and (=> t!8001 result!4975) b_and!12311)))

(declare-fun m!237269 () Bool)

(assert (=> b!209862 m!237269))

(declare-fun m!237271 () Bool)

(assert (=> b!209864 m!237271))

(assert (=> b!209860 m!237253))

(assert (=> b!209860 m!237253))

(assert (=> b!209860 m!237259))

(assert (=> b!209863 m!237253))

(assert (=> b!209863 m!237253))

(declare-fun m!237273 () Bool)

(assert (=> b!209863 m!237273))

(declare-fun m!237275 () Bool)

(assert (=> b!209853 m!237275))

(declare-fun m!237277 () Bool)

(assert (=> b!209853 m!237277))

(declare-fun m!237279 () Bool)

(assert (=> b!209853 m!237279))

(assert (=> b!209853 m!237277))

(assert (=> b!209853 m!237253))

(assert (=> b!209853 m!237253))

(declare-fun m!237281 () Bool)

(assert (=> b!209853 m!237281))

(assert (=> b!209853 m!237275))

(declare-fun m!237283 () Bool)

(assert (=> b!209855 m!237283))

(declare-fun m!237285 () Bool)

(assert (=> b!209856 m!237285))

(declare-fun m!237287 () Bool)

(assert (=> b!209856 m!237287))

(declare-fun m!237289 () Bool)

(assert (=> b!209856 m!237289))

(assert (=> b!209856 m!237277))

(assert (=> b!209856 m!237253))

(assert (=> b!209856 m!237275))

(assert (=> b!209856 m!237275))

(assert (=> b!209856 m!237277))

(assert (=> b!209856 m!237279))

(assert (=> b!209856 m!237287))

(declare-fun m!237291 () Bool)

(assert (=> b!209856 m!237291))

(declare-fun m!237293 () Bool)

(assert (=> d!57819 m!237293))

(assert (=> d!57819 m!237205))

(assert (=> bm!19824 m!237271))

(assert (=> b!209854 m!237253))

(assert (=> b!209854 m!237253))

(assert (=> b!209854 m!237259))

(assert (=> b!209761 d!57819))

(declare-fun b!209867 () Bool)

(assert (=> b!209867 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(assert (=> b!209867 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5064 lt!107309)))))

(declare-fun e!136704 () Bool)

(declare-fun lt!107370 () ListLongMap!3063)

(assert (=> b!209867 (= e!136704 (= (apply!190 lt!107370 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)) (get!2543 (select (arr!4739 lt!107309) #b00000000000000000000000000000000) (dynLambda!528 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!209868 () Bool)

(declare-fun e!136706 () ListLongMap!3063)

(declare-fun e!136710 () ListLongMap!3063)

(assert (=> b!209868 (= e!136706 e!136710)))

(declare-fun c!35484 () Bool)

(assert (=> b!209868 (= c!35484 (validKeyInArray!0 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!209869 () Bool)

(declare-fun res!102356 () Bool)

(declare-fun e!136705 () Bool)

(assert (=> b!209869 (=> (not res!102356) (not e!136705))))

(assert (=> b!209869 (= res!102356 (not (contains!1392 lt!107370 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!19825 () Bool)

(declare-fun call!19828 () ListLongMap!3063)

(assert (=> bm!19825 (= call!19828 (getCurrentListMapNoExtraKeys!479 _keys!825 lt!107309 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun b!209870 () Bool)

(declare-fun lt!107374 () Unit!6375)

(declare-fun lt!107376 () Unit!6375)

(assert (=> b!209870 (= lt!107374 lt!107376)))

(declare-fun lt!107373 () (_ BitVec 64))

(declare-fun lt!107372 () (_ BitVec 64))

(declare-fun lt!107375 () V!6835)

(declare-fun lt!107371 () ListLongMap!3063)

(assert (=> b!209870 (not (contains!1392 (+!540 lt!107371 (tuple2!4137 lt!107373 lt!107375)) lt!107372))))

(assert (=> b!209870 (= lt!107376 (addStillNotContains!101 lt!107371 lt!107373 lt!107375 lt!107372))))

(assert (=> b!209870 (= lt!107372 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!209870 (= lt!107375 (get!2543 (select (arr!4739 lt!107309) #b00000000000000000000000000000000) (dynLambda!528 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!209870 (= lt!107373 (select (arr!4738 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!209870 (= lt!107371 call!19828)))

(assert (=> b!209870 (= e!136710 (+!540 call!19828 (tuple2!4137 (select (arr!4738 _keys!825) #b00000000000000000000000000000000) (get!2543 (select (arr!4739 lt!107309) #b00000000000000000000000000000000) (dynLambda!528 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!209871 () Bool)

(declare-fun e!136708 () Bool)

(declare-fun e!136709 () Bool)

(assert (=> b!209871 (= e!136708 e!136709)))

(declare-fun c!35485 () Bool)

(assert (=> b!209871 (= c!35485 (bvslt #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(declare-fun b!209872 () Bool)

(assert (=> b!209872 (= e!136706 (ListLongMap!3064 Nil!3053))))

(declare-fun b!209873 () Bool)

(assert (=> b!209873 (= e!136710 call!19828)))

(declare-fun b!209874 () Bool)

(declare-fun e!136707 () Bool)

(assert (=> b!209874 (= e!136707 (validKeyInArray!0 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!209874 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!57821 () Bool)

(assert (=> d!57821 e!136705))

(declare-fun res!102357 () Bool)

(assert (=> d!57821 (=> (not res!102357) (not e!136705))))

(assert (=> d!57821 (= res!102357 (not (contains!1392 lt!107370 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57821 (= lt!107370 e!136706)))

(declare-fun c!35487 () Bool)

(assert (=> d!57821 (= c!35487 (bvsge #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(assert (=> d!57821 (validMask!0 mask!1149)))

(assert (=> d!57821 (= (getCurrentListMapNoExtraKeys!479 _keys!825 lt!107309 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!107370)))

(declare-fun b!209875 () Bool)

(assert (=> b!209875 (= e!136705 e!136708)))

(declare-fun c!35486 () Bool)

(assert (=> b!209875 (= c!35486 e!136707)))

(declare-fun res!102355 () Bool)

(assert (=> b!209875 (=> (not res!102355) (not e!136707))))

(assert (=> b!209875 (= res!102355 (bvslt #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(declare-fun b!209876 () Bool)

(assert (=> b!209876 (= e!136709 (isEmpty!496 lt!107370))))

(declare-fun b!209877 () Bool)

(assert (=> b!209877 (= e!136708 e!136704)))

(assert (=> b!209877 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(declare-fun res!102358 () Bool)

(assert (=> b!209877 (= res!102358 (contains!1392 lt!107370 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!209877 (=> (not res!102358) (not e!136704))))

(declare-fun b!209878 () Bool)

(assert (=> b!209878 (= e!136709 (= lt!107370 (getCurrentListMapNoExtraKeys!479 _keys!825 lt!107309 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(assert (= (and d!57821 c!35487) b!209872))

(assert (= (and d!57821 (not c!35487)) b!209868))

(assert (= (and b!209868 c!35484) b!209870))

(assert (= (and b!209868 (not c!35484)) b!209873))

(assert (= (or b!209870 b!209873) bm!19825))

(assert (= (and d!57821 res!102357) b!209869))

(assert (= (and b!209869 res!102356) b!209875))

(assert (= (and b!209875 res!102355) b!209874))

(assert (= (and b!209875 c!35486) b!209877))

(assert (= (and b!209875 (not c!35486)) b!209871))

(assert (= (and b!209877 res!102358) b!209867))

(assert (= (and b!209871 c!35485) b!209878))

(assert (= (and b!209871 (not c!35485)) b!209876))

(declare-fun b_lambda!7597 () Bool)

(assert (=> (not b_lambda!7597) (not b!209867)))

(assert (=> b!209867 t!8001))

(declare-fun b_and!12313 () Bool)

(assert (= b_and!12311 (and (=> t!8001 result!4975) b_and!12313)))

(declare-fun b_lambda!7599 () Bool)

(assert (=> (not b_lambda!7599) (not b!209870)))

(assert (=> b!209870 t!8001))

(declare-fun b_and!12315 () Bool)

(assert (= b_and!12313 (and (=> t!8001 result!4975) b_and!12315)))

(declare-fun m!237295 () Bool)

(assert (=> b!209876 m!237295))

(declare-fun m!237297 () Bool)

(assert (=> b!209878 m!237297))

(assert (=> b!209874 m!237253))

(assert (=> b!209874 m!237253))

(assert (=> b!209874 m!237259))

(assert (=> b!209877 m!237253))

(assert (=> b!209877 m!237253))

(declare-fun m!237299 () Bool)

(assert (=> b!209877 m!237299))

(declare-fun m!237301 () Bool)

(assert (=> b!209867 m!237301))

(assert (=> b!209867 m!237277))

(declare-fun m!237303 () Bool)

(assert (=> b!209867 m!237303))

(assert (=> b!209867 m!237277))

(assert (=> b!209867 m!237253))

(assert (=> b!209867 m!237253))

(declare-fun m!237305 () Bool)

(assert (=> b!209867 m!237305))

(assert (=> b!209867 m!237301))

(declare-fun m!237307 () Bool)

(assert (=> b!209869 m!237307))

(declare-fun m!237309 () Bool)

(assert (=> b!209870 m!237309))

(declare-fun m!237311 () Bool)

(assert (=> b!209870 m!237311))

(declare-fun m!237313 () Bool)

(assert (=> b!209870 m!237313))

(assert (=> b!209870 m!237277))

(assert (=> b!209870 m!237253))

(assert (=> b!209870 m!237301))

(assert (=> b!209870 m!237301))

(assert (=> b!209870 m!237277))

(assert (=> b!209870 m!237303))

(assert (=> b!209870 m!237311))

(declare-fun m!237315 () Bool)

(assert (=> b!209870 m!237315))

(declare-fun m!237317 () Bool)

(assert (=> d!57821 m!237317))

(assert (=> d!57821 m!237205))

(assert (=> bm!19825 m!237297))

(assert (=> b!209868 m!237253))

(assert (=> b!209868 m!237253))

(assert (=> b!209868 m!237259))

(assert (=> b!209761 d!57821))

(declare-fun bm!19840 () Bool)

(declare-fun call!19844 () ListLongMap!3063)

(declare-fun call!19845 () ListLongMap!3063)

(assert (=> bm!19840 (= call!19844 call!19845)))

(declare-fun b!209921 () Bool)

(declare-fun e!136745 () Bool)

(assert (=> b!209921 (= e!136745 (validKeyInArray!0 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!209922 () Bool)

(declare-fun res!102382 () Bool)

(declare-fun e!136742 () Bool)

(assert (=> b!209922 (=> (not res!102382) (not e!136742))))

(declare-fun e!136743 () Bool)

(assert (=> b!209922 (= res!102382 e!136743)))

(declare-fun c!35500 () Bool)

(assert (=> b!209922 (= c!35500 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!209923 () Bool)

(declare-fun e!136737 () Bool)

(assert (=> b!209923 (= e!136737 (validKeyInArray!0 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!209924 () Bool)

(declare-fun e!136738 () ListLongMap!3063)

(declare-fun call!19848 () ListLongMap!3063)

(assert (=> b!209924 (= e!136738 (+!540 call!19848 (tuple2!4137 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun bm!19841 () Bool)

(declare-fun call!19849 () ListLongMap!3063)

(assert (=> bm!19841 (= call!19849 call!19848)))

(declare-fun bm!19842 () Bool)

(declare-fun call!19847 () ListLongMap!3063)

(assert (=> bm!19842 (= call!19845 call!19847)))

(declare-fun bm!19843 () Bool)

(declare-fun call!19846 () Bool)

(declare-fun lt!107435 () ListLongMap!3063)

(assert (=> bm!19843 (= call!19846 (contains!1392 lt!107435 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!209925 () Bool)

(declare-fun e!136746 () Unit!6375)

(declare-fun lt!107432 () Unit!6375)

(assert (=> b!209925 (= e!136746 lt!107432)))

(declare-fun lt!107433 () ListLongMap!3063)

(assert (=> b!209925 (= lt!107433 (getCurrentListMapNoExtraKeys!479 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107441 () (_ BitVec 64))

(assert (=> b!209925 (= lt!107441 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107442 () (_ BitVec 64))

(assert (=> b!209925 (= lt!107442 (select (arr!4738 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107440 () Unit!6375)

(declare-fun addStillContains!166 (ListLongMap!3063 (_ BitVec 64) V!6835 (_ BitVec 64)) Unit!6375)

(assert (=> b!209925 (= lt!107440 (addStillContains!166 lt!107433 lt!107441 zeroValue!615 lt!107442))))

(assert (=> b!209925 (contains!1392 (+!540 lt!107433 (tuple2!4137 lt!107441 zeroValue!615)) lt!107442)))

(declare-fun lt!107428 () Unit!6375)

(assert (=> b!209925 (= lt!107428 lt!107440)))

(declare-fun lt!107426 () ListLongMap!3063)

(assert (=> b!209925 (= lt!107426 (getCurrentListMapNoExtraKeys!479 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107427 () (_ BitVec 64))

(assert (=> b!209925 (= lt!107427 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107421 () (_ BitVec 64))

(assert (=> b!209925 (= lt!107421 (select (arr!4738 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107424 () Unit!6375)

(declare-fun addApplyDifferent!166 (ListLongMap!3063 (_ BitVec 64) V!6835 (_ BitVec 64)) Unit!6375)

(assert (=> b!209925 (= lt!107424 (addApplyDifferent!166 lt!107426 lt!107427 minValue!615 lt!107421))))

(assert (=> b!209925 (= (apply!190 (+!540 lt!107426 (tuple2!4137 lt!107427 minValue!615)) lt!107421) (apply!190 lt!107426 lt!107421))))

(declare-fun lt!107438 () Unit!6375)

(assert (=> b!209925 (= lt!107438 lt!107424)))

(declare-fun lt!107437 () ListLongMap!3063)

(assert (=> b!209925 (= lt!107437 (getCurrentListMapNoExtraKeys!479 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107434 () (_ BitVec 64))

(assert (=> b!209925 (= lt!107434 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107430 () (_ BitVec 64))

(assert (=> b!209925 (= lt!107430 (select (arr!4738 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107429 () Unit!6375)

(assert (=> b!209925 (= lt!107429 (addApplyDifferent!166 lt!107437 lt!107434 zeroValue!615 lt!107430))))

(assert (=> b!209925 (= (apply!190 (+!540 lt!107437 (tuple2!4137 lt!107434 zeroValue!615)) lt!107430) (apply!190 lt!107437 lt!107430))))

(declare-fun lt!107422 () Unit!6375)

(assert (=> b!209925 (= lt!107422 lt!107429)))

(declare-fun lt!107431 () ListLongMap!3063)

(assert (=> b!209925 (= lt!107431 (getCurrentListMapNoExtraKeys!479 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107425 () (_ BitVec 64))

(assert (=> b!209925 (= lt!107425 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107439 () (_ BitVec 64))

(assert (=> b!209925 (= lt!107439 (select (arr!4738 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!209925 (= lt!107432 (addApplyDifferent!166 lt!107431 lt!107425 minValue!615 lt!107439))))

(assert (=> b!209925 (= (apply!190 (+!540 lt!107431 (tuple2!4137 lt!107425 minValue!615)) lt!107439) (apply!190 lt!107431 lt!107439))))

(declare-fun c!35504 () Bool)

(declare-fun c!35505 () Bool)

(declare-fun bm!19844 () Bool)

(assert (=> bm!19844 (= call!19848 (+!540 (ite c!35504 call!19847 (ite c!35505 call!19845 call!19844)) (ite (or c!35504 c!35505) (tuple2!4137 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4137 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun bm!19845 () Bool)

(declare-fun call!19843 () Bool)

(assert (=> bm!19845 (= call!19843 (contains!1392 lt!107435 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!209926 () Bool)

(declare-fun e!136744 () Bool)

(assert (=> b!209926 (= e!136744 (= (apply!190 lt!107435 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun bm!19846 () Bool)

(assert (=> bm!19846 (= call!19847 (getCurrentListMapNoExtraKeys!479 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!209927 () Bool)

(declare-fun e!136741 () ListLongMap!3063)

(assert (=> b!209927 (= e!136741 call!19844)))

(declare-fun b!209928 () Bool)

(declare-fun Unit!6379 () Unit!6375)

(assert (=> b!209928 (= e!136746 Unit!6379)))

(declare-fun b!209929 () Bool)

(declare-fun c!35502 () Bool)

(assert (=> b!209929 (= c!35502 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!136739 () ListLongMap!3063)

(assert (=> b!209929 (= e!136739 e!136741)))

(declare-fun b!209930 () Bool)

(assert (=> b!209930 (= e!136743 (not call!19843))))

(declare-fun b!209931 () Bool)

(declare-fun res!102377 () Bool)

(assert (=> b!209931 (=> (not res!102377) (not e!136742))))

(declare-fun e!136747 () Bool)

(assert (=> b!209931 (= res!102377 e!136747)))

(declare-fun res!102381 () Bool)

(assert (=> b!209931 (=> res!102381 e!136747)))

(assert (=> b!209931 (= res!102381 (not e!136745))))

(declare-fun res!102378 () Bool)

(assert (=> b!209931 (=> (not res!102378) (not e!136745))))

(assert (=> b!209931 (= res!102378 (bvslt #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(declare-fun b!209932 () Bool)

(declare-fun e!136749 () Bool)

(assert (=> b!209932 (= e!136747 e!136749)))

(declare-fun res!102379 () Bool)

(assert (=> b!209932 (=> (not res!102379) (not e!136749))))

(assert (=> b!209932 (= res!102379 (contains!1392 lt!107435 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!209932 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(declare-fun b!209933 () Bool)

(declare-fun e!136748 () Bool)

(assert (=> b!209933 (= e!136748 (not call!19846))))

(declare-fun b!209934 () Bool)

(assert (=> b!209934 (= e!136743 e!136744)))

(declare-fun res!102383 () Bool)

(assert (=> b!209934 (= res!102383 call!19843)))

(assert (=> b!209934 (=> (not res!102383) (not e!136744))))

(declare-fun b!209935 () Bool)

(declare-fun e!136740 () Bool)

(assert (=> b!209935 (= e!136740 (= (apply!190 lt!107435 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun b!209936 () Bool)

(assert (=> b!209936 (= e!136749 (= (apply!190 lt!107435 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)) (get!2543 (select (arr!4739 _values!649) #b00000000000000000000000000000000) (dynLambda!528 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!209936 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5064 _values!649)))))

(assert (=> b!209936 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(declare-fun b!209937 () Bool)

(assert (=> b!209937 (= e!136739 call!19849)))

(declare-fun b!209938 () Bool)

(assert (=> b!209938 (= e!136738 e!136739)))

(assert (=> b!209938 (= c!35505 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!209939 () Bool)

(assert (=> b!209939 (= e!136741 call!19849)))

(declare-fun d!57823 () Bool)

(assert (=> d!57823 e!136742))

(declare-fun res!102385 () Bool)

(assert (=> d!57823 (=> (not res!102385) (not e!136742))))

(assert (=> d!57823 (= res!102385 (or (bvsge #b00000000000000000000000000000000 (size!5063 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5063 _keys!825)))))))

(declare-fun lt!107436 () ListLongMap!3063)

(assert (=> d!57823 (= lt!107435 lt!107436)))

(declare-fun lt!107423 () Unit!6375)

(assert (=> d!57823 (= lt!107423 e!136746)))

(declare-fun c!35503 () Bool)

(assert (=> d!57823 (= c!35503 e!136737)))

(declare-fun res!102384 () Bool)

(assert (=> d!57823 (=> (not res!102384) (not e!136737))))

(assert (=> d!57823 (= res!102384 (bvslt #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(assert (=> d!57823 (= lt!107436 e!136738)))

(assert (=> d!57823 (= c!35504 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!57823 (validMask!0 mask!1149)))

(assert (=> d!57823 (= (getCurrentListMap!1080 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!107435)))

(declare-fun b!209940 () Bool)

(assert (=> b!209940 (= e!136748 e!136740)))

(declare-fun res!102380 () Bool)

(assert (=> b!209940 (= res!102380 call!19846)))

(assert (=> b!209940 (=> (not res!102380) (not e!136740))))

(declare-fun b!209941 () Bool)

(assert (=> b!209941 (= e!136742 e!136748)))

(declare-fun c!35501 () Bool)

(assert (=> b!209941 (= c!35501 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!57823 c!35504) b!209924))

(assert (= (and d!57823 (not c!35504)) b!209938))

(assert (= (and b!209938 c!35505) b!209937))

(assert (= (and b!209938 (not c!35505)) b!209929))

(assert (= (and b!209929 c!35502) b!209939))

(assert (= (and b!209929 (not c!35502)) b!209927))

(assert (= (or b!209939 b!209927) bm!19840))

(assert (= (or b!209937 bm!19840) bm!19842))

(assert (= (or b!209937 b!209939) bm!19841))

(assert (= (or b!209924 bm!19842) bm!19846))

(assert (= (or b!209924 bm!19841) bm!19844))

(assert (= (and d!57823 res!102384) b!209923))

(assert (= (and d!57823 c!35503) b!209925))

(assert (= (and d!57823 (not c!35503)) b!209928))

(assert (= (and d!57823 res!102385) b!209931))

(assert (= (and b!209931 res!102378) b!209921))

(assert (= (and b!209931 (not res!102381)) b!209932))

(assert (= (and b!209932 res!102379) b!209936))

(assert (= (and b!209931 res!102377) b!209922))

(assert (= (and b!209922 c!35500) b!209934))

(assert (= (and b!209922 (not c!35500)) b!209930))

(assert (= (and b!209934 res!102383) b!209926))

(assert (= (or b!209934 b!209930) bm!19845))

(assert (= (and b!209922 res!102382) b!209941))

(assert (= (and b!209941 c!35501) b!209940))

(assert (= (and b!209941 (not c!35501)) b!209933))

(assert (= (and b!209940 res!102380) b!209935))

(assert (= (or b!209940 b!209933) bm!19843))

(declare-fun b_lambda!7601 () Bool)

(assert (=> (not b_lambda!7601) (not b!209936)))

(assert (=> b!209936 t!8001))

(declare-fun b_and!12317 () Bool)

(assert (= b_and!12315 (and (=> t!8001 result!4975) b_and!12317)))

(assert (=> b!209936 m!237275))

(assert (=> b!209936 m!237277))

(assert (=> b!209936 m!237279))

(assert (=> b!209936 m!237253))

(assert (=> b!209936 m!237275))

(assert (=> b!209936 m!237277))

(assert (=> b!209936 m!237253))

(declare-fun m!237319 () Bool)

(assert (=> b!209936 m!237319))

(assert (=> d!57823 m!237205))

(assert (=> b!209921 m!237253))

(assert (=> b!209921 m!237253))

(assert (=> b!209921 m!237259))

(declare-fun m!237321 () Bool)

(assert (=> b!209926 m!237321))

(assert (=> b!209932 m!237253))

(assert (=> b!209932 m!237253))

(declare-fun m!237323 () Bool)

(assert (=> b!209932 m!237323))

(declare-fun m!237325 () Bool)

(assert (=> b!209924 m!237325))

(declare-fun m!237327 () Bool)

(assert (=> b!209925 m!237327))

(assert (=> b!209925 m!237253))

(declare-fun m!237329 () Bool)

(assert (=> b!209925 m!237329))

(declare-fun m!237331 () Bool)

(assert (=> b!209925 m!237331))

(declare-fun m!237333 () Bool)

(assert (=> b!209925 m!237333))

(declare-fun m!237335 () Bool)

(assert (=> b!209925 m!237335))

(assert (=> b!209925 m!237327))

(declare-fun m!237337 () Bool)

(assert (=> b!209925 m!237337))

(declare-fun m!237339 () Bool)

(assert (=> b!209925 m!237339))

(declare-fun m!237341 () Bool)

(assert (=> b!209925 m!237341))

(declare-fun m!237343 () Bool)

(assert (=> b!209925 m!237343))

(assert (=> b!209925 m!237339))

(declare-fun m!237345 () Bool)

(assert (=> b!209925 m!237345))

(declare-fun m!237347 () Bool)

(assert (=> b!209925 m!237347))

(declare-fun m!237349 () Bool)

(assert (=> b!209925 m!237349))

(assert (=> b!209925 m!237187))

(declare-fun m!237351 () Bool)

(assert (=> b!209925 m!237351))

(assert (=> b!209925 m!237345))

(declare-fun m!237353 () Bool)

(assert (=> b!209925 m!237353))

(assert (=> b!209925 m!237331))

(declare-fun m!237355 () Bool)

(assert (=> b!209925 m!237355))

(declare-fun m!237357 () Bool)

(assert (=> bm!19845 m!237357))

(assert (=> b!209923 m!237253))

(assert (=> b!209923 m!237253))

(assert (=> b!209923 m!237259))

(assert (=> bm!19846 m!237187))

(declare-fun m!237359 () Bool)

(assert (=> b!209935 m!237359))

(declare-fun m!237361 () Bool)

(assert (=> bm!19843 m!237361))

(declare-fun m!237363 () Bool)

(assert (=> bm!19844 m!237363))

(assert (=> b!209761 d!57823))

(declare-fun bm!19847 () Bool)

(declare-fun call!19851 () ListLongMap!3063)

(declare-fun call!19852 () ListLongMap!3063)

(assert (=> bm!19847 (= call!19851 call!19852)))

(declare-fun b!209942 () Bool)

(declare-fun e!136758 () Bool)

(assert (=> b!209942 (= e!136758 (validKeyInArray!0 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!209943 () Bool)

(declare-fun res!102391 () Bool)

(declare-fun e!136755 () Bool)

(assert (=> b!209943 (=> (not res!102391) (not e!136755))))

(declare-fun e!136756 () Bool)

(assert (=> b!209943 (= res!102391 e!136756)))

(declare-fun c!35506 () Bool)

(assert (=> b!209943 (= c!35506 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!209944 () Bool)

(declare-fun e!136750 () Bool)

(assert (=> b!209944 (= e!136750 (validKeyInArray!0 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!209945 () Bool)

(declare-fun e!136751 () ListLongMap!3063)

(declare-fun call!19855 () ListLongMap!3063)

(assert (=> b!209945 (= e!136751 (+!540 call!19855 (tuple2!4137 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun bm!19848 () Bool)

(declare-fun call!19856 () ListLongMap!3063)

(assert (=> bm!19848 (= call!19856 call!19855)))

(declare-fun bm!19849 () Bool)

(declare-fun call!19854 () ListLongMap!3063)

(assert (=> bm!19849 (= call!19852 call!19854)))

(declare-fun bm!19850 () Bool)

(declare-fun call!19853 () Bool)

(declare-fun lt!107457 () ListLongMap!3063)

(assert (=> bm!19850 (= call!19853 (contains!1392 lt!107457 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!209946 () Bool)

(declare-fun e!136759 () Unit!6375)

(declare-fun lt!107454 () Unit!6375)

(assert (=> b!209946 (= e!136759 lt!107454)))

(declare-fun lt!107455 () ListLongMap!3063)

(assert (=> b!209946 (= lt!107455 (getCurrentListMapNoExtraKeys!479 _keys!825 lt!107309 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107463 () (_ BitVec 64))

(assert (=> b!209946 (= lt!107463 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107464 () (_ BitVec 64))

(assert (=> b!209946 (= lt!107464 (select (arr!4738 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107462 () Unit!6375)

(assert (=> b!209946 (= lt!107462 (addStillContains!166 lt!107455 lt!107463 zeroValue!615 lt!107464))))

(assert (=> b!209946 (contains!1392 (+!540 lt!107455 (tuple2!4137 lt!107463 zeroValue!615)) lt!107464)))

(declare-fun lt!107450 () Unit!6375)

(assert (=> b!209946 (= lt!107450 lt!107462)))

(declare-fun lt!107448 () ListLongMap!3063)

(assert (=> b!209946 (= lt!107448 (getCurrentListMapNoExtraKeys!479 _keys!825 lt!107309 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107449 () (_ BitVec 64))

(assert (=> b!209946 (= lt!107449 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107443 () (_ BitVec 64))

(assert (=> b!209946 (= lt!107443 (select (arr!4738 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107446 () Unit!6375)

(assert (=> b!209946 (= lt!107446 (addApplyDifferent!166 lt!107448 lt!107449 minValue!615 lt!107443))))

(assert (=> b!209946 (= (apply!190 (+!540 lt!107448 (tuple2!4137 lt!107449 minValue!615)) lt!107443) (apply!190 lt!107448 lt!107443))))

(declare-fun lt!107460 () Unit!6375)

(assert (=> b!209946 (= lt!107460 lt!107446)))

(declare-fun lt!107459 () ListLongMap!3063)

(assert (=> b!209946 (= lt!107459 (getCurrentListMapNoExtraKeys!479 _keys!825 lt!107309 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107456 () (_ BitVec 64))

(assert (=> b!209946 (= lt!107456 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107452 () (_ BitVec 64))

(assert (=> b!209946 (= lt!107452 (select (arr!4738 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!107451 () Unit!6375)

(assert (=> b!209946 (= lt!107451 (addApplyDifferent!166 lt!107459 lt!107456 zeroValue!615 lt!107452))))

(assert (=> b!209946 (= (apply!190 (+!540 lt!107459 (tuple2!4137 lt!107456 zeroValue!615)) lt!107452) (apply!190 lt!107459 lt!107452))))

(declare-fun lt!107444 () Unit!6375)

(assert (=> b!209946 (= lt!107444 lt!107451)))

(declare-fun lt!107453 () ListLongMap!3063)

(assert (=> b!209946 (= lt!107453 (getCurrentListMapNoExtraKeys!479 _keys!825 lt!107309 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107447 () (_ BitVec 64))

(assert (=> b!209946 (= lt!107447 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!107461 () (_ BitVec 64))

(assert (=> b!209946 (= lt!107461 (select (arr!4738 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!209946 (= lt!107454 (addApplyDifferent!166 lt!107453 lt!107447 minValue!615 lt!107461))))

(assert (=> b!209946 (= (apply!190 (+!540 lt!107453 (tuple2!4137 lt!107447 minValue!615)) lt!107461) (apply!190 lt!107453 lt!107461))))

(declare-fun c!35511 () Bool)

(declare-fun c!35510 () Bool)

(declare-fun bm!19851 () Bool)

(assert (=> bm!19851 (= call!19855 (+!540 (ite c!35510 call!19854 (ite c!35511 call!19852 call!19851)) (ite (or c!35510 c!35511) (tuple2!4137 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4137 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun bm!19852 () Bool)

(declare-fun call!19850 () Bool)

(assert (=> bm!19852 (= call!19850 (contains!1392 lt!107457 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!209947 () Bool)

(declare-fun e!136757 () Bool)

(assert (=> b!209947 (= e!136757 (= (apply!190 lt!107457 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun bm!19853 () Bool)

(assert (=> bm!19853 (= call!19854 (getCurrentListMapNoExtraKeys!479 _keys!825 lt!107309 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!209948 () Bool)

(declare-fun e!136754 () ListLongMap!3063)

(assert (=> b!209948 (= e!136754 call!19851)))

(declare-fun b!209949 () Bool)

(declare-fun Unit!6380 () Unit!6375)

(assert (=> b!209949 (= e!136759 Unit!6380)))

(declare-fun b!209950 () Bool)

(declare-fun c!35508 () Bool)

(assert (=> b!209950 (= c!35508 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!136752 () ListLongMap!3063)

(assert (=> b!209950 (= e!136752 e!136754)))

(declare-fun b!209951 () Bool)

(assert (=> b!209951 (= e!136756 (not call!19850))))

(declare-fun b!209952 () Bool)

(declare-fun res!102386 () Bool)

(assert (=> b!209952 (=> (not res!102386) (not e!136755))))

(declare-fun e!136760 () Bool)

(assert (=> b!209952 (= res!102386 e!136760)))

(declare-fun res!102390 () Bool)

(assert (=> b!209952 (=> res!102390 e!136760)))

(assert (=> b!209952 (= res!102390 (not e!136758))))

(declare-fun res!102387 () Bool)

(assert (=> b!209952 (=> (not res!102387) (not e!136758))))

(assert (=> b!209952 (= res!102387 (bvslt #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(declare-fun b!209953 () Bool)

(declare-fun e!136762 () Bool)

(assert (=> b!209953 (= e!136760 e!136762)))

(declare-fun res!102388 () Bool)

(assert (=> b!209953 (=> (not res!102388) (not e!136762))))

(assert (=> b!209953 (= res!102388 (contains!1392 lt!107457 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!209953 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(declare-fun b!209954 () Bool)

(declare-fun e!136761 () Bool)

(assert (=> b!209954 (= e!136761 (not call!19853))))

(declare-fun b!209955 () Bool)

(assert (=> b!209955 (= e!136756 e!136757)))

(declare-fun res!102392 () Bool)

(assert (=> b!209955 (= res!102392 call!19850)))

(assert (=> b!209955 (=> (not res!102392) (not e!136757))))

(declare-fun b!209956 () Bool)

(declare-fun e!136753 () Bool)

(assert (=> b!209956 (= e!136753 (= (apply!190 lt!107457 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun b!209957 () Bool)

(assert (=> b!209957 (= e!136762 (= (apply!190 lt!107457 (select (arr!4738 _keys!825) #b00000000000000000000000000000000)) (get!2543 (select (arr!4739 lt!107309) #b00000000000000000000000000000000) (dynLambda!528 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!209957 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5064 lt!107309)))))

(assert (=> b!209957 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(declare-fun b!209958 () Bool)

(assert (=> b!209958 (= e!136752 call!19856)))

(declare-fun b!209959 () Bool)

(assert (=> b!209959 (= e!136751 e!136752)))

(assert (=> b!209959 (= c!35511 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!209960 () Bool)

(assert (=> b!209960 (= e!136754 call!19856)))

(declare-fun d!57825 () Bool)

(assert (=> d!57825 e!136755))

(declare-fun res!102394 () Bool)

(assert (=> d!57825 (=> (not res!102394) (not e!136755))))

(assert (=> d!57825 (= res!102394 (or (bvsge #b00000000000000000000000000000000 (size!5063 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5063 _keys!825)))))))

(declare-fun lt!107458 () ListLongMap!3063)

(assert (=> d!57825 (= lt!107457 lt!107458)))

(declare-fun lt!107445 () Unit!6375)

(assert (=> d!57825 (= lt!107445 e!136759)))

(declare-fun c!35509 () Bool)

(assert (=> d!57825 (= c!35509 e!136750)))

(declare-fun res!102393 () Bool)

(assert (=> d!57825 (=> (not res!102393) (not e!136750))))

(assert (=> d!57825 (= res!102393 (bvslt #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(assert (=> d!57825 (= lt!107458 e!136751)))

(assert (=> d!57825 (= c!35510 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!57825 (validMask!0 mask!1149)))

(assert (=> d!57825 (= (getCurrentListMap!1080 _keys!825 lt!107309 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!107457)))

(declare-fun b!209961 () Bool)

(assert (=> b!209961 (= e!136761 e!136753)))

(declare-fun res!102389 () Bool)

(assert (=> b!209961 (= res!102389 call!19853)))

(assert (=> b!209961 (=> (not res!102389) (not e!136753))))

(declare-fun b!209962 () Bool)

(assert (=> b!209962 (= e!136755 e!136761)))

(declare-fun c!35507 () Bool)

(assert (=> b!209962 (= c!35507 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!57825 c!35510) b!209945))

(assert (= (and d!57825 (not c!35510)) b!209959))

(assert (= (and b!209959 c!35511) b!209958))

(assert (= (and b!209959 (not c!35511)) b!209950))

(assert (= (and b!209950 c!35508) b!209960))

(assert (= (and b!209950 (not c!35508)) b!209948))

(assert (= (or b!209960 b!209948) bm!19847))

(assert (= (or b!209958 bm!19847) bm!19849))

(assert (= (or b!209958 b!209960) bm!19848))

(assert (= (or b!209945 bm!19849) bm!19853))

(assert (= (or b!209945 bm!19848) bm!19851))

(assert (= (and d!57825 res!102393) b!209944))

(assert (= (and d!57825 c!35509) b!209946))

(assert (= (and d!57825 (not c!35509)) b!209949))

(assert (= (and d!57825 res!102394) b!209952))

(assert (= (and b!209952 res!102387) b!209942))

(assert (= (and b!209952 (not res!102390)) b!209953))

(assert (= (and b!209953 res!102388) b!209957))

(assert (= (and b!209952 res!102386) b!209943))

(assert (= (and b!209943 c!35506) b!209955))

(assert (= (and b!209943 (not c!35506)) b!209951))

(assert (= (and b!209955 res!102392) b!209947))

(assert (= (or b!209955 b!209951) bm!19852))

(assert (= (and b!209943 res!102391) b!209962))

(assert (= (and b!209962 c!35507) b!209961))

(assert (= (and b!209962 (not c!35507)) b!209954))

(assert (= (and b!209961 res!102389) b!209956))

(assert (= (or b!209961 b!209954) bm!19850))

(declare-fun b_lambda!7603 () Bool)

(assert (=> (not b_lambda!7603) (not b!209957)))

(assert (=> b!209957 t!8001))

(declare-fun b_and!12319 () Bool)

(assert (= b_and!12317 (and (=> t!8001 result!4975) b_and!12319)))

(assert (=> b!209957 m!237301))

(assert (=> b!209957 m!237277))

(assert (=> b!209957 m!237303))

(assert (=> b!209957 m!237253))

(assert (=> b!209957 m!237301))

(assert (=> b!209957 m!237277))

(assert (=> b!209957 m!237253))

(declare-fun m!237365 () Bool)

(assert (=> b!209957 m!237365))

(assert (=> d!57825 m!237205))

(assert (=> b!209942 m!237253))

(assert (=> b!209942 m!237253))

(assert (=> b!209942 m!237259))

(declare-fun m!237367 () Bool)

(assert (=> b!209947 m!237367))

(assert (=> b!209953 m!237253))

(assert (=> b!209953 m!237253))

(declare-fun m!237369 () Bool)

(assert (=> b!209953 m!237369))

(declare-fun m!237371 () Bool)

(assert (=> b!209945 m!237371))

(declare-fun m!237373 () Bool)

(assert (=> b!209946 m!237373))

(assert (=> b!209946 m!237253))

(declare-fun m!237375 () Bool)

(assert (=> b!209946 m!237375))

(declare-fun m!237377 () Bool)

(assert (=> b!209946 m!237377))

(declare-fun m!237379 () Bool)

(assert (=> b!209946 m!237379))

(declare-fun m!237381 () Bool)

(assert (=> b!209946 m!237381))

(assert (=> b!209946 m!237373))

(declare-fun m!237383 () Bool)

(assert (=> b!209946 m!237383))

(declare-fun m!237385 () Bool)

(assert (=> b!209946 m!237385))

(declare-fun m!237387 () Bool)

(assert (=> b!209946 m!237387))

(declare-fun m!237389 () Bool)

(assert (=> b!209946 m!237389))

(assert (=> b!209946 m!237385))

(declare-fun m!237391 () Bool)

(assert (=> b!209946 m!237391))

(declare-fun m!237393 () Bool)

(assert (=> b!209946 m!237393))

(declare-fun m!237395 () Bool)

(assert (=> b!209946 m!237395))

(assert (=> b!209946 m!237189))

(declare-fun m!237397 () Bool)

(assert (=> b!209946 m!237397))

(assert (=> b!209946 m!237391))

(declare-fun m!237399 () Bool)

(assert (=> b!209946 m!237399))

(assert (=> b!209946 m!237377))

(declare-fun m!237401 () Bool)

(assert (=> b!209946 m!237401))

(declare-fun m!237403 () Bool)

(assert (=> bm!19852 m!237403))

(assert (=> b!209944 m!237253))

(assert (=> b!209944 m!237253))

(assert (=> b!209944 m!237259))

(assert (=> bm!19853 m!237189))

(declare-fun m!237405 () Bool)

(assert (=> b!209956 m!237405))

(declare-fun m!237407 () Bool)

(assert (=> bm!19850 m!237407))

(declare-fun m!237409 () Bool)

(assert (=> bm!19851 m!237409))

(assert (=> b!209761 d!57825))

(declare-fun d!57827 () Bool)

(declare-fun e!136765 () Bool)

(assert (=> d!57827 e!136765))

(declare-fun res!102400 () Bool)

(assert (=> d!57827 (=> (not res!102400) (not e!136765))))

(declare-fun lt!107475 () ListLongMap!3063)

(assert (=> d!57827 (= res!102400 (contains!1392 lt!107475 (_1!2078 (tuple2!4137 k0!843 v!520))))))

(declare-fun lt!107476 () List!3056)

(assert (=> d!57827 (= lt!107475 (ListLongMap!3064 lt!107476))))

(declare-fun lt!107474 () Unit!6375)

(declare-fun lt!107473 () Unit!6375)

(assert (=> d!57827 (= lt!107474 lt!107473)))

(declare-datatypes ((Option!253 0))(
  ( (Some!252 (v!4715 V!6835)) (None!251) )
))
(declare-fun getValueByKey!247 (List!3056 (_ BitVec 64)) Option!253)

(assert (=> d!57827 (= (getValueByKey!247 lt!107476 (_1!2078 (tuple2!4137 k0!843 v!520))) (Some!252 (_2!2078 (tuple2!4137 k0!843 v!520))))))

(declare-fun lemmaContainsTupThenGetReturnValue!136 (List!3056 (_ BitVec 64) V!6835) Unit!6375)

(assert (=> d!57827 (= lt!107473 (lemmaContainsTupThenGetReturnValue!136 lt!107476 (_1!2078 (tuple2!4137 k0!843 v!520)) (_2!2078 (tuple2!4137 k0!843 v!520))))))

(declare-fun insertStrictlySorted!138 (List!3056 (_ BitVec 64) V!6835) List!3056)

(assert (=> d!57827 (= lt!107476 (insertStrictlySorted!138 (toList!1547 lt!107310) (_1!2078 (tuple2!4137 k0!843 v!520)) (_2!2078 (tuple2!4137 k0!843 v!520))))))

(assert (=> d!57827 (= (+!540 lt!107310 (tuple2!4137 k0!843 v!520)) lt!107475)))

(declare-fun b!209967 () Bool)

(declare-fun res!102399 () Bool)

(assert (=> b!209967 (=> (not res!102399) (not e!136765))))

(assert (=> b!209967 (= res!102399 (= (getValueByKey!247 (toList!1547 lt!107475) (_1!2078 (tuple2!4137 k0!843 v!520))) (Some!252 (_2!2078 (tuple2!4137 k0!843 v!520)))))))

(declare-fun b!209968 () Bool)

(declare-fun contains!1393 (List!3056 tuple2!4136) Bool)

(assert (=> b!209968 (= e!136765 (contains!1393 (toList!1547 lt!107475) (tuple2!4137 k0!843 v!520)))))

(assert (= (and d!57827 res!102400) b!209967))

(assert (= (and b!209967 res!102399) b!209968))

(declare-fun m!237411 () Bool)

(assert (=> d!57827 m!237411))

(declare-fun m!237413 () Bool)

(assert (=> d!57827 m!237413))

(declare-fun m!237415 () Bool)

(assert (=> d!57827 m!237415))

(declare-fun m!237417 () Bool)

(assert (=> d!57827 m!237417))

(declare-fun m!237419 () Bool)

(assert (=> b!209967 m!237419))

(declare-fun m!237421 () Bool)

(assert (=> b!209968 m!237421))

(assert (=> b!209761 d!57827))

(declare-fun bm!19858 () Bool)

(declare-fun call!19862 () ListLongMap!3063)

(assert (=> bm!19858 (= call!19862 (getCurrentListMapNoExtraKeys!479 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun call!19861 () ListLongMap!3063)

(declare-fun e!136770 () Bool)

(declare-fun b!209976 () Bool)

(assert (=> b!209976 (= e!136770 (= call!19861 (+!540 call!19862 (tuple2!4137 k0!843 v!520))))))

(declare-fun b!209977 () Bool)

(assert (=> b!209977 (= e!136770 (= call!19861 call!19862))))

(declare-fun bm!19859 () Bool)

(assert (=> bm!19859 (= call!19861 (getCurrentListMapNoExtraKeys!479 _keys!825 (array!9981 (store (arr!4739 _values!649) i!601 (ValueCellFull!2352 v!520)) (size!5064 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!209975 () Bool)

(declare-fun e!136771 () Bool)

(assert (=> b!209975 (= e!136771 e!136770)))

(declare-fun c!35514 () Bool)

(assert (=> b!209975 (= c!35514 (bvsle #b00000000000000000000000000000000 i!601))))

(declare-fun d!57829 () Bool)

(assert (=> d!57829 e!136771))

(declare-fun res!102403 () Bool)

(assert (=> d!57829 (=> (not res!102403) (not e!136771))))

(assert (=> d!57829 (= res!102403 (and (or (not (bvsle #b00000000000000000000000000000000 i!601)) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5064 _values!649)))) (or (bvsle #b00000000000000000000000000000000 i!601) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5064 _values!649))))))))

(declare-fun lt!107479 () Unit!6375)

(declare-fun choose!1081 (array!9978 array!9980 (_ BitVec 32) (_ BitVec 32) V!6835 V!6835 (_ BitVec 32) (_ BitVec 64) V!6835 (_ BitVec 32) Int) Unit!6375)

(assert (=> d!57829 (= lt!107479 (choose!1081 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> d!57829 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!5063 _keys!825)))))

(assert (=> d!57829 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!197 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657) lt!107479)))

(assert (= (and d!57829 res!102403) b!209975))

(assert (= (and b!209975 c!35514) b!209976))

(assert (= (and b!209975 (not c!35514)) b!209977))

(assert (= (or b!209976 b!209977) bm!19859))

(assert (= (or b!209976 b!209977) bm!19858))

(assert (=> bm!19858 m!237187))

(declare-fun m!237423 () Bool)

(assert (=> b!209976 m!237423))

(assert (=> bm!19859 m!237181))

(declare-fun m!237425 () Bool)

(assert (=> bm!19859 m!237425))

(declare-fun m!237427 () Bool)

(assert (=> d!57829 m!237427))

(assert (=> b!209761 d!57829))

(declare-fun d!57831 () Bool)

(declare-fun e!136772 () Bool)

(assert (=> d!57831 e!136772))

(declare-fun res!102405 () Bool)

(assert (=> d!57831 (=> (not res!102405) (not e!136772))))

(declare-fun lt!107482 () ListLongMap!3063)

(assert (=> d!57831 (= res!102405 (contains!1392 lt!107482 (_1!2078 lt!107306)))))

(declare-fun lt!107483 () List!3056)

(assert (=> d!57831 (= lt!107482 (ListLongMap!3064 lt!107483))))

(declare-fun lt!107481 () Unit!6375)

(declare-fun lt!107480 () Unit!6375)

(assert (=> d!57831 (= lt!107481 lt!107480)))

(assert (=> d!57831 (= (getValueByKey!247 lt!107483 (_1!2078 lt!107306)) (Some!252 (_2!2078 lt!107306)))))

(assert (=> d!57831 (= lt!107480 (lemmaContainsTupThenGetReturnValue!136 lt!107483 (_1!2078 lt!107306) (_2!2078 lt!107306)))))

(assert (=> d!57831 (= lt!107483 (insertStrictlySorted!138 (toList!1547 (+!540 lt!107310 lt!107312)) (_1!2078 lt!107306) (_2!2078 lt!107306)))))

(assert (=> d!57831 (= (+!540 (+!540 lt!107310 lt!107312) lt!107306) lt!107482)))

(declare-fun b!209978 () Bool)

(declare-fun res!102404 () Bool)

(assert (=> b!209978 (=> (not res!102404) (not e!136772))))

(assert (=> b!209978 (= res!102404 (= (getValueByKey!247 (toList!1547 lt!107482) (_1!2078 lt!107306)) (Some!252 (_2!2078 lt!107306))))))

(declare-fun b!209979 () Bool)

(assert (=> b!209979 (= e!136772 (contains!1393 (toList!1547 lt!107482) lt!107306))))

(assert (= (and d!57831 res!102405) b!209978))

(assert (= (and b!209978 res!102404) b!209979))

(declare-fun m!237429 () Bool)

(assert (=> d!57831 m!237429))

(declare-fun m!237431 () Bool)

(assert (=> d!57831 m!237431))

(declare-fun m!237433 () Bool)

(assert (=> d!57831 m!237433))

(declare-fun m!237435 () Bool)

(assert (=> d!57831 m!237435))

(declare-fun m!237437 () Bool)

(assert (=> b!209978 m!237437))

(declare-fun m!237439 () Bool)

(assert (=> b!209979 m!237439))

(assert (=> b!209767 d!57831))

(declare-fun d!57833 () Bool)

(declare-fun e!136773 () Bool)

(assert (=> d!57833 e!136773))

(declare-fun res!102407 () Bool)

(assert (=> d!57833 (=> (not res!102407) (not e!136773))))

(declare-fun lt!107486 () ListLongMap!3063)

(assert (=> d!57833 (= res!102407 (contains!1392 lt!107486 (_1!2078 lt!107312)))))

(declare-fun lt!107487 () List!3056)

(assert (=> d!57833 (= lt!107486 (ListLongMap!3064 lt!107487))))

(declare-fun lt!107485 () Unit!6375)

(declare-fun lt!107484 () Unit!6375)

(assert (=> d!57833 (= lt!107485 lt!107484)))

(assert (=> d!57833 (= (getValueByKey!247 lt!107487 (_1!2078 lt!107312)) (Some!252 (_2!2078 lt!107312)))))

(assert (=> d!57833 (= lt!107484 (lemmaContainsTupThenGetReturnValue!136 lt!107487 (_1!2078 lt!107312) (_2!2078 lt!107312)))))

(assert (=> d!57833 (= lt!107487 (insertStrictlySorted!138 (toList!1547 lt!107310) (_1!2078 lt!107312) (_2!2078 lt!107312)))))

(assert (=> d!57833 (= (+!540 lt!107310 lt!107312) lt!107486)))

(declare-fun b!209980 () Bool)

(declare-fun res!102406 () Bool)

(assert (=> b!209980 (=> (not res!102406) (not e!136773))))

(assert (=> b!209980 (= res!102406 (= (getValueByKey!247 (toList!1547 lt!107486) (_1!2078 lt!107312)) (Some!252 (_2!2078 lt!107312))))))

(declare-fun b!209981 () Bool)

(assert (=> b!209981 (= e!136773 (contains!1393 (toList!1547 lt!107486) lt!107312))))

(assert (= (and d!57833 res!102407) b!209980))

(assert (= (and b!209980 res!102406) b!209981))

(declare-fun m!237441 () Bool)

(assert (=> d!57833 m!237441))

(declare-fun m!237443 () Bool)

(assert (=> d!57833 m!237443))

(declare-fun m!237445 () Bool)

(assert (=> d!57833 m!237445))

(declare-fun m!237447 () Bool)

(assert (=> d!57833 m!237447))

(declare-fun m!237449 () Bool)

(assert (=> b!209980 m!237449))

(declare-fun m!237451 () Bool)

(assert (=> b!209981 m!237451))

(assert (=> b!209767 d!57833))

(declare-fun d!57835 () Bool)

(declare-fun e!136774 () Bool)

(assert (=> d!57835 e!136774))

(declare-fun res!102409 () Bool)

(assert (=> d!57835 (=> (not res!102409) (not e!136774))))

(declare-fun lt!107490 () ListLongMap!3063)

(assert (=> d!57835 (= res!102409 (contains!1392 lt!107490 (_1!2078 lt!107306)))))

(declare-fun lt!107491 () List!3056)

(assert (=> d!57835 (= lt!107490 (ListLongMap!3064 lt!107491))))

(declare-fun lt!107489 () Unit!6375)

(declare-fun lt!107488 () Unit!6375)

(assert (=> d!57835 (= lt!107489 lt!107488)))

(assert (=> d!57835 (= (getValueByKey!247 lt!107491 (_1!2078 lt!107306)) (Some!252 (_2!2078 lt!107306)))))

(assert (=> d!57835 (= lt!107488 (lemmaContainsTupThenGetReturnValue!136 lt!107491 (_1!2078 lt!107306) (_2!2078 lt!107306)))))

(assert (=> d!57835 (= lt!107491 (insertStrictlySorted!138 (toList!1547 (+!540 lt!107308 lt!107312)) (_1!2078 lt!107306) (_2!2078 lt!107306)))))

(assert (=> d!57835 (= (+!540 (+!540 lt!107308 lt!107312) lt!107306) lt!107490)))

(declare-fun b!209982 () Bool)

(declare-fun res!102408 () Bool)

(assert (=> b!209982 (=> (not res!102408) (not e!136774))))

(assert (=> b!209982 (= res!102408 (= (getValueByKey!247 (toList!1547 lt!107490) (_1!2078 lt!107306)) (Some!252 (_2!2078 lt!107306))))))

(declare-fun b!209983 () Bool)

(assert (=> b!209983 (= e!136774 (contains!1393 (toList!1547 lt!107490) lt!107306))))

(assert (= (and d!57835 res!102409) b!209982))

(assert (= (and b!209982 res!102408) b!209983))

(declare-fun m!237453 () Bool)

(assert (=> d!57835 m!237453))

(declare-fun m!237455 () Bool)

(assert (=> d!57835 m!237455))

(declare-fun m!237457 () Bool)

(assert (=> d!57835 m!237457))

(declare-fun m!237459 () Bool)

(assert (=> d!57835 m!237459))

(declare-fun m!237461 () Bool)

(assert (=> b!209982 m!237461))

(declare-fun m!237463 () Bool)

(assert (=> b!209983 m!237463))

(assert (=> b!209767 d!57835))

(declare-fun d!57837 () Bool)

(declare-fun e!136775 () Bool)

(assert (=> d!57837 e!136775))

(declare-fun res!102411 () Bool)

(assert (=> d!57837 (=> (not res!102411) (not e!136775))))

(declare-fun lt!107494 () ListLongMap!3063)

(assert (=> d!57837 (= res!102411 (contains!1392 lt!107494 (_1!2078 lt!107312)))))

(declare-fun lt!107495 () List!3056)

(assert (=> d!57837 (= lt!107494 (ListLongMap!3064 lt!107495))))

(declare-fun lt!107493 () Unit!6375)

(declare-fun lt!107492 () Unit!6375)

(assert (=> d!57837 (= lt!107493 lt!107492)))

(assert (=> d!57837 (= (getValueByKey!247 lt!107495 (_1!2078 lt!107312)) (Some!252 (_2!2078 lt!107312)))))

(assert (=> d!57837 (= lt!107492 (lemmaContainsTupThenGetReturnValue!136 lt!107495 (_1!2078 lt!107312) (_2!2078 lt!107312)))))

(assert (=> d!57837 (= lt!107495 (insertStrictlySorted!138 (toList!1547 lt!107308) (_1!2078 lt!107312) (_2!2078 lt!107312)))))

(assert (=> d!57837 (= (+!540 lt!107308 lt!107312) lt!107494)))

(declare-fun b!209984 () Bool)

(declare-fun res!102410 () Bool)

(assert (=> b!209984 (=> (not res!102410) (not e!136775))))

(assert (=> b!209984 (= res!102410 (= (getValueByKey!247 (toList!1547 lt!107494) (_1!2078 lt!107312)) (Some!252 (_2!2078 lt!107312))))))

(declare-fun b!209985 () Bool)

(assert (=> b!209985 (= e!136775 (contains!1393 (toList!1547 lt!107494) lt!107312))))

(assert (= (and d!57837 res!102411) b!209984))

(assert (= (and b!209984 res!102410) b!209985))

(declare-fun m!237465 () Bool)

(assert (=> d!57837 m!237465))

(declare-fun m!237467 () Bool)

(assert (=> d!57837 m!237467))

(declare-fun m!237469 () Bool)

(assert (=> d!57837 m!237469))

(declare-fun m!237471 () Bool)

(assert (=> d!57837 m!237471))

(declare-fun m!237473 () Bool)

(assert (=> b!209984 m!237473))

(declare-fun m!237475 () Bool)

(assert (=> b!209985 m!237475))

(assert (=> b!209767 d!57837))

(declare-fun b!209993 () Bool)

(declare-fun e!136780 () Bool)

(assert (=> b!209993 (= e!136780 tp_is_empty!5391)))

(declare-fun b!209992 () Bool)

(declare-fun e!136781 () Bool)

(assert (=> b!209992 (= e!136781 tp_is_empty!5391)))

(declare-fun mapIsEmpty!9164 () Bool)

(declare-fun mapRes!9164 () Bool)

(assert (=> mapIsEmpty!9164 mapRes!9164))

(declare-fun condMapEmpty!9164 () Bool)

(declare-fun mapDefault!9164 () ValueCell!2352)

(assert (=> mapNonEmpty!9158 (= condMapEmpty!9164 (= mapRest!9158 ((as const (Array (_ BitVec 32) ValueCell!2352)) mapDefault!9164)))))

(assert (=> mapNonEmpty!9158 (= tp!19630 (and e!136780 mapRes!9164))))

(declare-fun mapNonEmpty!9164 () Bool)

(declare-fun tp!19640 () Bool)

(assert (=> mapNonEmpty!9164 (= mapRes!9164 (and tp!19640 e!136781))))

(declare-fun mapRest!9164 () (Array (_ BitVec 32) ValueCell!2352))

(declare-fun mapValue!9164 () ValueCell!2352)

(declare-fun mapKey!9164 () (_ BitVec 32))

(assert (=> mapNonEmpty!9164 (= mapRest!9158 (store mapRest!9164 mapKey!9164 mapValue!9164))))

(assert (= (and mapNonEmpty!9158 condMapEmpty!9164) mapIsEmpty!9164))

(assert (= (and mapNonEmpty!9158 (not condMapEmpty!9164)) mapNonEmpty!9164))

(assert (= (and mapNonEmpty!9164 ((_ is ValueCellFull!2352) mapValue!9164)) b!209992))

(assert (= (and mapNonEmpty!9158 ((_ is ValueCellFull!2352) mapDefault!9164)) b!209993))

(declare-fun m!237477 () Bool)

(assert (=> mapNonEmpty!9164 m!237477))

(declare-fun b_lambda!7605 () Bool)

(assert (= b_lambda!7597 (or (and start!20908 b_free!5529) b_lambda!7605)))

(declare-fun b_lambda!7607 () Bool)

(assert (= b_lambda!7593 (or (and start!20908 b_free!5529) b_lambda!7607)))

(declare-fun b_lambda!7609 () Bool)

(assert (= b_lambda!7603 (or (and start!20908 b_free!5529) b_lambda!7609)))

(declare-fun b_lambda!7611 () Bool)

(assert (= b_lambda!7599 (or (and start!20908 b_free!5529) b_lambda!7611)))

(declare-fun b_lambda!7613 () Bool)

(assert (= b_lambda!7595 (or (and start!20908 b_free!5529) b_lambda!7613)))

(declare-fun b_lambda!7615 () Bool)

(assert (= b_lambda!7601 (or (and start!20908 b_free!5529) b_lambda!7615)))

(check-sat (not b!209953) (not b!209874) (not b!209984) (not b_lambda!7615) (not b!209946) (not bm!19846) (not b!209983) (not d!57825) (not d!57823) (not b!209980) (not b!209985) (not d!57819) (not d!57827) (not bm!19859) (not b_next!5529) (not b!209925) (not d!57829) (not b!209868) (not bm!19850) (not bm!19818) (not bm!19845) (not b!209968) (not b!209935) (not bm!19851) (not b!209856) (not b!209878) (not b_lambda!7611) (not d!57837) (not b!209816) (not b!209957) (not b!209815) (not b!209947) (not b!209853) (not b!209976) (not b_lambda!7607) (not bm!19843) (not b!209870) (not bm!19825) (not bm!19853) (not b!209869) (not b!209979) (not mapNonEmpty!9164) (not b!209813) (not b!209867) (not bm!19821) (not b!209967) (not b!209932) (not b!209862) (not b!209945) (not b!209981) (not b!209877) (not b!209854) (not b!209978) (not b!209936) (not d!57835) (not bm!19844) (not b!209982) (not d!57831) (not b!209876) (not b!209924) (not bm!19858) (not b!209944) (not b!209855) (not b!209864) (not b_lambda!7609) (not b!209863) (not b_lambda!7605) (not b!209828) (not b!209860) (not d!57833) (not b!209956) (not b!209921) (not bm!19852) (not bm!19824) b_and!12319 (not d!57821) (not b!209942) (not b!209826) tp_is_empty!5391 (not b!209926) (not b!209923) (not b_lambda!7613))
(check-sat b_and!12319 (not b_next!5529))
