; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35050 () Bool)

(assert start!35050)

(declare-fun b_free!7731 () Bool)

(declare-fun b_next!7731 () Bool)

(assert (=> start!35050 (= b_free!7731 (not b_next!7731))))

(declare-fun tp!26772 () Bool)

(declare-fun b_and!14979 () Bool)

(assert (=> start!35050 (= tp!26772 b_and!14979)))

(declare-fun b!351102 () Bool)

(declare-fun res!194781 () Bool)

(declare-fun e!215024 () Bool)

(assert (=> b!351102 (=> (not res!194781) (not e!215024))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11221 0))(
  ( (V!11222 (val!3886 Int)) )
))
(declare-datatypes ((ValueCell!3498 0))(
  ( (ValueCellFull!3498 (v!6069 V!11221)) (EmptyCell!3498) )
))
(declare-datatypes ((array!18907 0))(
  ( (array!18908 (arr!8956 (Array (_ BitVec 32) ValueCell!3498)) (size!9308 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18907)

(declare-datatypes ((array!18909 0))(
  ( (array!18910 (arr!8957 (Array (_ BitVec 32) (_ BitVec 64))) (size!9309 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18909)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!351102 (= res!194781 (and (= (size!9308 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9309 _keys!1895) (size!9308 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!351103 () Bool)

(declare-fun res!194787 () Bool)

(assert (=> b!351103 (=> (not res!194787) (not e!215024))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18909 (_ BitVec 32)) Bool)

(assert (=> b!351103 (= res!194787 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!351104 () Bool)

(declare-fun e!215025 () Bool)

(assert (=> b!351104 (= e!215024 e!215025)))

(declare-fun res!194786 () Bool)

(assert (=> b!351104 (=> (not res!194786) (not e!215025))))

(declare-datatypes ((SeekEntryResult!3445 0))(
  ( (MissingZero!3445 (index!15959 (_ BitVec 32))) (Found!3445 (index!15960 (_ BitVec 32))) (Intermediate!3445 (undefined!4257 Bool) (index!15961 (_ BitVec 32)) (x!34952 (_ BitVec 32))) (Undefined!3445) (MissingVacant!3445 (index!15962 (_ BitVec 32))) )
))
(declare-fun lt!164700 () SeekEntryResult!3445)

(get-info :version)

(assert (=> b!351104 (= res!194786 (and (not ((_ is Found!3445) lt!164700)) (not ((_ is MissingZero!3445) lt!164700)) ((_ is MissingVacant!3445) lt!164700)))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18909 (_ BitVec 32)) SeekEntryResult!3445)

(assert (=> b!351104 (= lt!164700 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun res!194780 () Bool)

(assert (=> start!35050 (=> (not res!194780) (not e!215024))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35050 (= res!194780 (validMask!0 mask!2385))))

(assert (=> start!35050 e!215024))

(assert (=> start!35050 true))

(declare-fun tp_is_empty!7683 () Bool)

(assert (=> start!35050 tp_is_empty!7683))

(assert (=> start!35050 tp!26772))

(declare-fun e!215021 () Bool)

(declare-fun array_inv!6600 (array!18907) Bool)

(assert (=> start!35050 (and (array_inv!6600 _values!1525) e!215021)))

(declare-fun array_inv!6601 (array!18909) Bool)

(assert (=> start!35050 (array_inv!6601 _keys!1895)))

(declare-fun mapNonEmpty!12996 () Bool)

(declare-fun mapRes!12996 () Bool)

(declare-fun tp!26771 () Bool)

(declare-fun e!215022 () Bool)

(assert (=> mapNonEmpty!12996 (= mapRes!12996 (and tp!26771 e!215022))))

(declare-fun mapValue!12996 () ValueCell!3498)

(declare-fun mapKey!12996 () (_ BitVec 32))

(declare-fun mapRest!12996 () (Array (_ BitVec 32) ValueCell!3498))

(assert (=> mapNonEmpty!12996 (= (arr!8956 _values!1525) (store mapRest!12996 mapKey!12996 mapValue!12996))))

(declare-fun b!351105 () Bool)

(declare-fun e!215023 () Bool)

(assert (=> b!351105 (= e!215021 (and e!215023 mapRes!12996))))

(declare-fun condMapEmpty!12996 () Bool)

(declare-fun mapDefault!12996 () ValueCell!3498)

(assert (=> b!351105 (= condMapEmpty!12996 (= (arr!8956 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3498)) mapDefault!12996)))))

(declare-fun mapIsEmpty!12996 () Bool)

(assert (=> mapIsEmpty!12996 mapRes!12996))

(declare-fun b!351106 () Bool)

(assert (=> b!351106 (= e!215022 tp_is_empty!7683)))

(declare-fun b!351107 () Bool)

(assert (=> b!351107 (= e!215023 tp_is_empty!7683)))

(declare-fun b!351108 () Bool)

(declare-fun res!194785 () Bool)

(assert (=> b!351108 (=> (not res!194785) (not e!215025))))

(declare-fun arrayContainsKey!0 (array!18909 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!351108 (= res!194785 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!351109 () Bool)

(declare-fun res!194783 () Bool)

(assert (=> b!351109 (=> (not res!194783) (not e!215024))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!351109 (= res!194783 (validKeyInArray!0 k0!1348))))

(declare-fun b!351110 () Bool)

(declare-fun lt!164699 () (_ BitVec 32))

(assert (=> b!351110 (= e!215025 (or (bvslt lt!164699 #b00000000000000000000000000000000) (bvsge lt!164699 (size!9309 _keys!1895))))))

(declare-fun arrayScanForKey!0 (array!18909 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!351110 (= lt!164699 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!351111 () Bool)

(declare-fun res!194784 () Bool)

(assert (=> b!351111 (=> (not res!194784) (not e!215024))))

(declare-fun zeroValue!1467 () V!11221)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11221)

(declare-datatypes ((tuple2!5598 0))(
  ( (tuple2!5599 (_1!2809 (_ BitVec 64)) (_2!2809 V!11221)) )
))
(declare-datatypes ((List!5235 0))(
  ( (Nil!5232) (Cons!5231 (h!6087 tuple2!5598) (t!10381 List!5235)) )
))
(declare-datatypes ((ListLongMap!4525 0))(
  ( (ListLongMap!4526 (toList!2278 List!5235)) )
))
(declare-fun contains!2343 (ListLongMap!4525 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1795 (array!18909 array!18907 (_ BitVec 32) (_ BitVec 32) V!11221 V!11221 (_ BitVec 32) Int) ListLongMap!4525)

(assert (=> b!351111 (= res!194784 (not (contains!2343 (getCurrentListMap!1795 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!351112 () Bool)

(declare-fun res!194782 () Bool)

(assert (=> b!351112 (=> (not res!194782) (not e!215024))))

(declare-datatypes ((List!5236 0))(
  ( (Nil!5233) (Cons!5232 (h!6088 (_ BitVec 64)) (t!10382 List!5236)) )
))
(declare-fun arrayNoDuplicates!0 (array!18909 (_ BitVec 32) List!5236) Bool)

(assert (=> b!351112 (= res!194782 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5233))))

(assert (= (and start!35050 res!194780) b!351102))

(assert (= (and b!351102 res!194781) b!351103))

(assert (= (and b!351103 res!194787) b!351112))

(assert (= (and b!351112 res!194782) b!351109))

(assert (= (and b!351109 res!194783) b!351111))

(assert (= (and b!351111 res!194784) b!351104))

(assert (= (and b!351104 res!194786) b!351108))

(assert (= (and b!351108 res!194785) b!351110))

(assert (= (and b!351105 condMapEmpty!12996) mapIsEmpty!12996))

(assert (= (and b!351105 (not condMapEmpty!12996)) mapNonEmpty!12996))

(assert (= (and mapNonEmpty!12996 ((_ is ValueCellFull!3498) mapValue!12996)) b!351106))

(assert (= (and b!351105 ((_ is ValueCellFull!3498) mapDefault!12996)) b!351107))

(assert (= start!35050 b!351105))

(declare-fun m!351105 () Bool)

(assert (=> b!351108 m!351105))

(declare-fun m!351107 () Bool)

(assert (=> mapNonEmpty!12996 m!351107))

(declare-fun m!351109 () Bool)

(assert (=> b!351103 m!351109))

(declare-fun m!351111 () Bool)

(assert (=> b!351111 m!351111))

(assert (=> b!351111 m!351111))

(declare-fun m!351113 () Bool)

(assert (=> b!351111 m!351113))

(declare-fun m!351115 () Bool)

(assert (=> b!351112 m!351115))

(declare-fun m!351117 () Bool)

(assert (=> b!351110 m!351117))

(declare-fun m!351119 () Bool)

(assert (=> b!351104 m!351119))

(declare-fun m!351121 () Bool)

(assert (=> b!351109 m!351121))

(declare-fun m!351123 () Bool)

(assert (=> start!35050 m!351123))

(declare-fun m!351125 () Bool)

(assert (=> start!35050 m!351125))

(declare-fun m!351127 () Bool)

(assert (=> start!35050 m!351127))

(check-sat (not b_next!7731) (not b!351112) (not b!351110) (not b!351109) (not mapNonEmpty!12996) (not b!351103) (not b!351108) tp_is_empty!7683 b_and!14979 (not start!35050) (not b!351111) (not b!351104))
(check-sat b_and!14979 (not b_next!7731))
(get-model)

(declare-fun bm!26975 () Bool)

(declare-fun call!26978 () Bool)

(assert (=> bm!26975 (= call!26978 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(declare-fun b!351154 () Bool)

(declare-fun e!215051 () Bool)

(assert (=> b!351154 (= e!215051 call!26978)))

(declare-fun b!351155 () Bool)

(declare-fun e!215053 () Bool)

(assert (=> b!351155 (= e!215053 call!26978)))

(declare-fun d!71317 () Bool)

(declare-fun res!194817 () Bool)

(declare-fun e!215052 () Bool)

(assert (=> d!71317 (=> res!194817 e!215052)))

(assert (=> d!71317 (= res!194817 (bvsge #b00000000000000000000000000000000 (size!9309 _keys!1895)))))

(assert (=> d!71317 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!215052)))

(declare-fun b!351156 () Bool)

(assert (=> b!351156 (= e!215051 e!215053)))

(declare-fun lt!164714 () (_ BitVec 64))

(assert (=> b!351156 (= lt!164714 (select (arr!8957 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10851 0))(
  ( (Unit!10852) )
))
(declare-fun lt!164713 () Unit!10851)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18909 (_ BitVec 64) (_ BitVec 32)) Unit!10851)

(assert (=> b!351156 (= lt!164713 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!164714 #b00000000000000000000000000000000))))

(assert (=> b!351156 (arrayContainsKey!0 _keys!1895 lt!164714 #b00000000000000000000000000000000)))

(declare-fun lt!164715 () Unit!10851)

(assert (=> b!351156 (= lt!164715 lt!164713)))

(declare-fun res!194816 () Bool)

(assert (=> b!351156 (= res!194816 (= (seekEntryOrOpen!0 (select (arr!8957 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3445 #b00000000000000000000000000000000)))))

(assert (=> b!351156 (=> (not res!194816) (not e!215053))))

(declare-fun b!351157 () Bool)

(assert (=> b!351157 (= e!215052 e!215051)))

(declare-fun c!53342 () Bool)

(assert (=> b!351157 (= c!53342 (validKeyInArray!0 (select (arr!8957 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!71317 (not res!194817)) b!351157))

(assert (= (and b!351157 c!53342) b!351156))

(assert (= (and b!351157 (not c!53342)) b!351154))

(assert (= (and b!351156 res!194816) b!351155))

(assert (= (or b!351155 b!351154) bm!26975))

(declare-fun m!351153 () Bool)

(assert (=> bm!26975 m!351153))

(declare-fun m!351155 () Bool)

(assert (=> b!351156 m!351155))

(declare-fun m!351157 () Bool)

(assert (=> b!351156 m!351157))

(declare-fun m!351159 () Bool)

(assert (=> b!351156 m!351159))

(assert (=> b!351156 m!351155))

(declare-fun m!351161 () Bool)

(assert (=> b!351156 m!351161))

(assert (=> b!351157 m!351155))

(assert (=> b!351157 m!351155))

(declare-fun m!351163 () Bool)

(assert (=> b!351157 m!351163))

(assert (=> b!351103 d!71317))

(declare-fun b!351168 () Bool)

(declare-fun e!215065 () Bool)

(declare-fun e!215062 () Bool)

(assert (=> b!351168 (= e!215065 e!215062)))

(declare-fun res!194824 () Bool)

(assert (=> b!351168 (=> (not res!194824) (not e!215062))))

(declare-fun e!215063 () Bool)

(assert (=> b!351168 (= res!194824 (not e!215063))))

(declare-fun res!194826 () Bool)

(assert (=> b!351168 (=> (not res!194826) (not e!215063))))

(assert (=> b!351168 (= res!194826 (validKeyInArray!0 (select (arr!8957 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!71319 () Bool)

(declare-fun res!194825 () Bool)

(assert (=> d!71319 (=> res!194825 e!215065)))

(assert (=> d!71319 (= res!194825 (bvsge #b00000000000000000000000000000000 (size!9309 _keys!1895)))))

(assert (=> d!71319 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5233) e!215065)))

(declare-fun b!351169 () Bool)

(declare-fun e!215064 () Bool)

(assert (=> b!351169 (= e!215062 e!215064)))

(declare-fun c!53345 () Bool)

(assert (=> b!351169 (= c!53345 (validKeyInArray!0 (select (arr!8957 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!351170 () Bool)

(declare-fun call!26981 () Bool)

(assert (=> b!351170 (= e!215064 call!26981)))

(declare-fun b!351171 () Bool)

(assert (=> b!351171 (= e!215064 call!26981)))

(declare-fun bm!26978 () Bool)

(assert (=> bm!26978 (= call!26981 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!53345 (Cons!5232 (select (arr!8957 _keys!1895) #b00000000000000000000000000000000) Nil!5233) Nil!5233)))))

(declare-fun b!351172 () Bool)

(declare-fun contains!2344 (List!5236 (_ BitVec 64)) Bool)

(assert (=> b!351172 (= e!215063 (contains!2344 Nil!5233 (select (arr!8957 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!71319 (not res!194825)) b!351168))

(assert (= (and b!351168 res!194826) b!351172))

(assert (= (and b!351168 res!194824) b!351169))

(assert (= (and b!351169 c!53345) b!351171))

(assert (= (and b!351169 (not c!53345)) b!351170))

(assert (= (or b!351171 b!351170) bm!26978))

(assert (=> b!351168 m!351155))

(assert (=> b!351168 m!351155))

(assert (=> b!351168 m!351163))

(assert (=> b!351169 m!351155))

(assert (=> b!351169 m!351155))

(assert (=> b!351169 m!351163))

(assert (=> bm!26978 m!351155))

(declare-fun m!351165 () Bool)

(assert (=> bm!26978 m!351165))

(assert (=> b!351172 m!351155))

(assert (=> b!351172 m!351155))

(declare-fun m!351167 () Bool)

(assert (=> b!351172 m!351167))

(assert (=> b!351112 d!71319))

(declare-fun d!71321 () Bool)

(declare-fun e!215070 () Bool)

(assert (=> d!71321 e!215070))

(declare-fun res!194829 () Bool)

(assert (=> d!71321 (=> res!194829 e!215070)))

(declare-fun lt!164725 () Bool)

(assert (=> d!71321 (= res!194829 (not lt!164725))))

(declare-fun lt!164727 () Bool)

(assert (=> d!71321 (= lt!164725 lt!164727)))

(declare-fun lt!164726 () Unit!10851)

(declare-fun e!215071 () Unit!10851)

(assert (=> d!71321 (= lt!164726 e!215071)))

(declare-fun c!53348 () Bool)

(assert (=> d!71321 (= c!53348 lt!164727)))

(declare-fun containsKey!340 (List!5235 (_ BitVec 64)) Bool)

(assert (=> d!71321 (= lt!164727 (containsKey!340 (toList!2278 (getCurrentListMap!1795 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(assert (=> d!71321 (= (contains!2343 (getCurrentListMap!1795 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348) lt!164725)))

(declare-fun b!351179 () Bool)

(declare-fun lt!164724 () Unit!10851)

(assert (=> b!351179 (= e!215071 lt!164724)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!289 (List!5235 (_ BitVec 64)) Unit!10851)

(assert (=> b!351179 (= lt!164724 (lemmaContainsKeyImpliesGetValueByKeyDefined!289 (toList!2278 (getCurrentListMap!1795 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-datatypes ((Option!354 0))(
  ( (Some!353 (v!6071 V!11221)) (None!352) )
))
(declare-fun isDefined!290 (Option!354) Bool)

(declare-fun getValueByKey!348 (List!5235 (_ BitVec 64)) Option!354)

(assert (=> b!351179 (isDefined!290 (getValueByKey!348 (toList!2278 (getCurrentListMap!1795 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348))))

(declare-fun b!351180 () Bool)

(declare-fun Unit!10853 () Unit!10851)

(assert (=> b!351180 (= e!215071 Unit!10853)))

(declare-fun b!351181 () Bool)

(assert (=> b!351181 (= e!215070 (isDefined!290 (getValueByKey!348 (toList!2278 (getCurrentListMap!1795 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528)) k0!1348)))))

(assert (= (and d!71321 c!53348) b!351179))

(assert (= (and d!71321 (not c!53348)) b!351180))

(assert (= (and d!71321 (not res!194829)) b!351181))

(declare-fun m!351169 () Bool)

(assert (=> d!71321 m!351169))

(declare-fun m!351171 () Bool)

(assert (=> b!351179 m!351171))

(declare-fun m!351173 () Bool)

(assert (=> b!351179 m!351173))

(assert (=> b!351179 m!351173))

(declare-fun m!351175 () Bool)

(assert (=> b!351179 m!351175))

(assert (=> b!351181 m!351173))

(assert (=> b!351181 m!351173))

(assert (=> b!351181 m!351175))

(assert (=> b!351111 d!71321))

(declare-fun b!351224 () Bool)

(declare-fun e!215100 () ListLongMap!4525)

(declare-fun e!215106 () ListLongMap!4525)

(assert (=> b!351224 (= e!215100 e!215106)))

(declare-fun c!53365 () Bool)

(assert (=> b!351224 (= c!53365 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!351225 () Bool)

(declare-fun e!215108 () Bool)

(declare-fun call!27001 () Bool)

(assert (=> b!351225 (= e!215108 (not call!27001))))

(declare-fun b!351226 () Bool)

(declare-fun e!215104 () ListLongMap!4525)

(declare-fun call!26997 () ListLongMap!4525)

(assert (=> b!351226 (= e!215104 call!26997)))

(declare-fun c!53361 () Bool)

(declare-fun call!27002 () ListLongMap!4525)

(declare-fun call!26998 () ListLongMap!4525)

(declare-fun bm!26993 () Bool)

(declare-fun call!26996 () ListLongMap!4525)

(declare-fun +!735 (ListLongMap!4525 tuple2!5598) ListLongMap!4525)

(assert (=> bm!26993 (= call!26996 (+!735 (ite c!53361 call!27002 (ite c!53365 call!26998 call!26997)) (ite (or c!53361 c!53365) (tuple2!5599 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1467) (tuple2!5599 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467))))))

(declare-fun b!351227 () Bool)

(declare-fun e!215102 () Bool)

(assert (=> b!351227 (= e!215102 (validKeyInArray!0 (select (arr!8957 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!71323 () Bool)

(declare-fun e!215103 () Bool)

(assert (=> d!71323 e!215103))

(declare-fun res!194856 () Bool)

(assert (=> d!71323 (=> (not res!194856) (not e!215103))))

(assert (=> d!71323 (= res!194856 (or (bvsge #b00000000000000000000000000000000 (size!9309 _keys!1895)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9309 _keys!1895)))))))

(declare-fun lt!164788 () ListLongMap!4525)

(declare-fun lt!164773 () ListLongMap!4525)

(assert (=> d!71323 (= lt!164788 lt!164773)))

(declare-fun lt!164791 () Unit!10851)

(declare-fun e!215098 () Unit!10851)

(assert (=> d!71323 (= lt!164791 e!215098)))

(declare-fun c!53362 () Bool)

(declare-fun e!215101 () Bool)

(assert (=> d!71323 (= c!53362 e!215101)))

(declare-fun res!194850 () Bool)

(assert (=> d!71323 (=> (not res!194850) (not e!215101))))

(assert (=> d!71323 (= res!194850 (bvslt #b00000000000000000000000000000000 (size!9309 _keys!1895)))))

(assert (=> d!71323 (= lt!164773 e!215100)))

(assert (=> d!71323 (= c!53361 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!71323 (validMask!0 mask!2385)))

(assert (=> d!71323 (= (getCurrentListMap!1795 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) lt!164788)))

(declare-fun b!351228 () Bool)

(declare-fun c!53364 () Bool)

(assert (=> b!351228 (= c!53364 (and (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!351228 (= e!215106 e!215104)))

(declare-fun b!351229 () Bool)

(assert (=> b!351229 (= e!215103 e!215108)))

(declare-fun c!53363 () Bool)

(assert (=> b!351229 (= c!53363 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!351230 () Bool)

(declare-fun e!215099 () Bool)

(declare-fun e!215109 () Bool)

(assert (=> b!351230 (= e!215099 e!215109)))

(declare-fun res!194849 () Bool)

(declare-fun call!27000 () Bool)

(assert (=> b!351230 (= res!194849 call!27000)))

(assert (=> b!351230 (=> (not res!194849) (not e!215109))))

(declare-fun b!351231 () Bool)

(declare-fun e!215110 () Bool)

(declare-fun apply!291 (ListLongMap!4525 (_ BitVec 64)) V!11221)

(assert (=> b!351231 (= e!215110 (= (apply!291 lt!164788 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1467))))

(declare-fun b!351232 () Bool)

(assert (=> b!351232 (= e!215101 (validKeyInArray!0 (select (arr!8957 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun bm!26994 () Bool)

(declare-fun call!26999 () ListLongMap!4525)

(assert (=> bm!26994 (= call!26999 call!26996)))

(declare-fun b!351233 () Bool)

(assert (=> b!351233 (= e!215104 call!26999)))

(declare-fun e!215107 () Bool)

(declare-fun b!351234 () Bool)

(declare-fun get!4798 (ValueCell!3498 V!11221) V!11221)

(declare-fun dynLambda!629 (Int (_ BitVec 64)) V!11221)

(assert (=> b!351234 (= e!215107 (= (apply!291 lt!164788 (select (arr!8957 _keys!1895) #b00000000000000000000000000000000)) (get!4798 (select (arr!8956 _values!1525) #b00000000000000000000000000000000) (dynLambda!629 defaultEntry!1528 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!351234 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9308 _values!1525)))))

(assert (=> b!351234 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9309 _keys!1895)))))

(declare-fun bm!26995 () Bool)

(assert (=> bm!26995 (= call!26997 call!26998)))

(declare-fun b!351235 () Bool)

(assert (=> b!351235 (= e!215100 (+!735 call!26996 (tuple2!5599 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1467)))))

(declare-fun b!351236 () Bool)

(declare-fun Unit!10854 () Unit!10851)

(assert (=> b!351236 (= e!215098 Unit!10854)))

(declare-fun b!351237 () Bool)

(declare-fun e!215105 () Bool)

(assert (=> b!351237 (= e!215105 e!215107)))

(declare-fun res!194855 () Bool)

(assert (=> b!351237 (=> (not res!194855) (not e!215107))))

(assert (=> b!351237 (= res!194855 (contains!2343 lt!164788 (select (arr!8957 _keys!1895) #b00000000000000000000000000000000)))))

(assert (=> b!351237 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9309 _keys!1895)))))

(declare-fun bm!26996 () Bool)

(assert (=> bm!26996 (= call!27000 (contains!2343 lt!164788 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!351238 () Bool)

(assert (=> b!351238 (= e!215106 call!26999)))

(declare-fun bm!26997 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!610 (array!18909 array!18907 (_ BitVec 32) (_ BitVec 32) V!11221 V!11221 (_ BitVec 32) Int) ListLongMap!4525)

(assert (=> bm!26997 (= call!27002 (getCurrentListMapNoExtraKeys!610 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun b!351239 () Bool)

(declare-fun res!194848 () Bool)

(assert (=> b!351239 (=> (not res!194848) (not e!215103))))

(assert (=> b!351239 (= res!194848 e!215099)))

(declare-fun c!53366 () Bool)

(assert (=> b!351239 (= c!53366 (not (= (bvand extraKeys!1446 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!351240 () Bool)

(declare-fun res!194854 () Bool)

(assert (=> b!351240 (=> (not res!194854) (not e!215103))))

(assert (=> b!351240 (= res!194854 e!215105)))

(declare-fun res!194853 () Bool)

(assert (=> b!351240 (=> res!194853 e!215105)))

(assert (=> b!351240 (= res!194853 (not e!215102))))

(declare-fun res!194852 () Bool)

(assert (=> b!351240 (=> (not res!194852) (not e!215102))))

(assert (=> b!351240 (= res!194852 (bvslt #b00000000000000000000000000000000 (size!9309 _keys!1895)))))

(declare-fun b!351241 () Bool)

(assert (=> b!351241 (= e!215108 e!215110)))

(declare-fun res!194851 () Bool)

(assert (=> b!351241 (= res!194851 call!27001)))

(assert (=> b!351241 (=> (not res!194851) (not e!215110))))

(declare-fun b!351242 () Bool)

(declare-fun lt!164777 () Unit!10851)

(assert (=> b!351242 (= e!215098 lt!164777)))

(declare-fun lt!164781 () ListLongMap!4525)

(assert (=> b!351242 (= lt!164781 (getCurrentListMapNoExtraKeys!610 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164776 () (_ BitVec 64))

(assert (=> b!351242 (= lt!164776 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164793 () (_ BitVec 64))

(assert (=> b!351242 (= lt!164793 (select (arr!8957 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164782 () Unit!10851)

(declare-fun addStillContains!267 (ListLongMap!4525 (_ BitVec 64) V!11221 (_ BitVec 64)) Unit!10851)

(assert (=> b!351242 (= lt!164782 (addStillContains!267 lt!164781 lt!164776 zeroValue!1467 lt!164793))))

(assert (=> b!351242 (contains!2343 (+!735 lt!164781 (tuple2!5599 lt!164776 zeroValue!1467)) lt!164793)))

(declare-fun lt!164774 () Unit!10851)

(assert (=> b!351242 (= lt!164774 lt!164782)))

(declare-fun lt!164775 () ListLongMap!4525)

(assert (=> b!351242 (= lt!164775 (getCurrentListMapNoExtraKeys!610 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164787 () (_ BitVec 64))

(assert (=> b!351242 (= lt!164787 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164790 () (_ BitVec 64))

(assert (=> b!351242 (= lt!164790 (select (arr!8957 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164784 () Unit!10851)

(declare-fun addApplyDifferent!267 (ListLongMap!4525 (_ BitVec 64) V!11221 (_ BitVec 64)) Unit!10851)

(assert (=> b!351242 (= lt!164784 (addApplyDifferent!267 lt!164775 lt!164787 minValue!1467 lt!164790))))

(assert (=> b!351242 (= (apply!291 (+!735 lt!164775 (tuple2!5599 lt!164787 minValue!1467)) lt!164790) (apply!291 lt!164775 lt!164790))))

(declare-fun lt!164778 () Unit!10851)

(assert (=> b!351242 (= lt!164778 lt!164784)))

(declare-fun lt!164789 () ListLongMap!4525)

(assert (=> b!351242 (= lt!164789 (getCurrentListMapNoExtraKeys!610 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164785 () (_ BitVec 64))

(assert (=> b!351242 (= lt!164785 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164772 () (_ BitVec 64))

(assert (=> b!351242 (= lt!164772 (select (arr!8957 _keys!1895) #b00000000000000000000000000000000))))

(declare-fun lt!164786 () Unit!10851)

(assert (=> b!351242 (= lt!164786 (addApplyDifferent!267 lt!164789 lt!164785 zeroValue!1467 lt!164772))))

(assert (=> b!351242 (= (apply!291 (+!735 lt!164789 (tuple2!5599 lt!164785 zeroValue!1467)) lt!164772) (apply!291 lt!164789 lt!164772))))

(declare-fun lt!164780 () Unit!10851)

(assert (=> b!351242 (= lt!164780 lt!164786)))

(declare-fun lt!164783 () ListLongMap!4525)

(assert (=> b!351242 (= lt!164783 (getCurrentListMapNoExtraKeys!610 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528))))

(declare-fun lt!164779 () (_ BitVec 64))

(assert (=> b!351242 (= lt!164779 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!164792 () (_ BitVec 64))

(assert (=> b!351242 (= lt!164792 (select (arr!8957 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> b!351242 (= lt!164777 (addApplyDifferent!267 lt!164783 lt!164779 minValue!1467 lt!164792))))

(assert (=> b!351242 (= (apply!291 (+!735 lt!164783 (tuple2!5599 lt!164779 minValue!1467)) lt!164792) (apply!291 lt!164783 lt!164792))))

(declare-fun bm!26998 () Bool)

(assert (=> bm!26998 (= call!27001 (contains!2343 lt!164788 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!351243 () Bool)

(assert (=> b!351243 (= e!215109 (= (apply!291 lt!164788 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1467))))

(declare-fun bm!26999 () Bool)

(assert (=> bm!26999 (= call!26998 call!27002)))

(declare-fun b!351244 () Bool)

(assert (=> b!351244 (= e!215099 (not call!27000))))

(assert (= (and d!71323 c!53361) b!351235))

(assert (= (and d!71323 (not c!53361)) b!351224))

(assert (= (and b!351224 c!53365) b!351238))

(assert (= (and b!351224 (not c!53365)) b!351228))

(assert (= (and b!351228 c!53364) b!351233))

(assert (= (and b!351228 (not c!53364)) b!351226))

(assert (= (or b!351233 b!351226) bm!26995))

(assert (= (or b!351238 bm!26995) bm!26999))

(assert (= (or b!351238 b!351233) bm!26994))

(assert (= (or b!351235 bm!26999) bm!26997))

(assert (= (or b!351235 bm!26994) bm!26993))

(assert (= (and d!71323 res!194850) b!351232))

(assert (= (and d!71323 c!53362) b!351242))

(assert (= (and d!71323 (not c!53362)) b!351236))

(assert (= (and d!71323 res!194856) b!351240))

(assert (= (and b!351240 res!194852) b!351227))

(assert (= (and b!351240 (not res!194853)) b!351237))

(assert (= (and b!351237 res!194855) b!351234))

(assert (= (and b!351240 res!194854) b!351239))

(assert (= (and b!351239 c!53366) b!351230))

(assert (= (and b!351239 (not c!53366)) b!351244))

(assert (= (and b!351230 res!194849) b!351243))

(assert (= (or b!351230 b!351244) bm!26996))

(assert (= (and b!351239 res!194848) b!351229))

(assert (= (and b!351229 c!53363) b!351241))

(assert (= (and b!351229 (not c!53363)) b!351225))

(assert (= (and b!351241 res!194851) b!351231))

(assert (= (or b!351241 b!351225) bm!26998))

(declare-fun b_lambda!8533 () Bool)

(assert (=> (not b_lambda!8533) (not b!351234)))

(declare-fun t!10385 () Bool)

(declare-fun tb!3105 () Bool)

(assert (=> (and start!35050 (= defaultEntry!1528 defaultEntry!1528) t!10385) tb!3105))

(declare-fun result!5629 () Bool)

(assert (=> tb!3105 (= result!5629 tp_is_empty!7683)))

(assert (=> b!351234 t!10385))

(declare-fun b_and!14983 () Bool)

(assert (= b_and!14979 (and (=> t!10385 result!5629) b_and!14983)))

(declare-fun m!351177 () Bool)

(assert (=> b!351242 m!351177))

(declare-fun m!351179 () Bool)

(assert (=> b!351242 m!351179))

(declare-fun m!351181 () Bool)

(assert (=> b!351242 m!351181))

(declare-fun m!351183 () Bool)

(assert (=> b!351242 m!351183))

(assert (=> b!351242 m!351177))

(declare-fun m!351185 () Bool)

(assert (=> b!351242 m!351185))

(declare-fun m!351187 () Bool)

(assert (=> b!351242 m!351187))

(declare-fun m!351189 () Bool)

(assert (=> b!351242 m!351189))

(assert (=> b!351242 m!351181))

(declare-fun m!351191 () Bool)

(assert (=> b!351242 m!351191))

(declare-fun m!351193 () Bool)

(assert (=> b!351242 m!351193))

(assert (=> b!351242 m!351185))

(declare-fun m!351195 () Bool)

(assert (=> b!351242 m!351195))

(declare-fun m!351197 () Bool)

(assert (=> b!351242 m!351197))

(declare-fun m!351199 () Bool)

(assert (=> b!351242 m!351199))

(assert (=> b!351242 m!351197))

(declare-fun m!351201 () Bool)

(assert (=> b!351242 m!351201))

(declare-fun m!351203 () Bool)

(assert (=> b!351242 m!351203))

(assert (=> b!351242 m!351155))

(declare-fun m!351205 () Bool)

(assert (=> b!351242 m!351205))

(declare-fun m!351207 () Bool)

(assert (=> b!351242 m!351207))

(assert (=> b!351227 m!351155))

(assert (=> b!351227 m!351155))

(assert (=> b!351227 m!351163))

(declare-fun m!351209 () Bool)

(assert (=> b!351243 m!351209))

(assert (=> b!351237 m!351155))

(assert (=> b!351237 m!351155))

(declare-fun m!351211 () Bool)

(assert (=> b!351237 m!351211))

(declare-fun m!351213 () Bool)

(assert (=> bm!26993 m!351213))

(declare-fun m!351215 () Bool)

(assert (=> b!351234 m!351215))

(assert (=> b!351234 m!351215))

(declare-fun m!351217 () Bool)

(assert (=> b!351234 m!351217))

(declare-fun m!351219 () Bool)

(assert (=> b!351234 m!351219))

(assert (=> b!351234 m!351155))

(declare-fun m!351221 () Bool)

(assert (=> b!351234 m!351221))

(assert (=> b!351234 m!351217))

(assert (=> b!351234 m!351155))

(assert (=> bm!26997 m!351199))

(declare-fun m!351223 () Bool)

(assert (=> bm!26996 m!351223))

(declare-fun m!351225 () Bool)

(assert (=> bm!26998 m!351225))

(declare-fun m!351227 () Bool)

(assert (=> b!351231 m!351227))

(assert (=> d!71323 m!351123))

(assert (=> b!351232 m!351155))

(assert (=> b!351232 m!351155))

(assert (=> b!351232 m!351163))

(declare-fun m!351229 () Bool)

(assert (=> b!351235 m!351229))

(assert (=> b!351111 d!71323))

(declare-fun d!71325 () Bool)

(assert (=> d!71325 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!35050 d!71325))

(declare-fun d!71327 () Bool)

(assert (=> d!71327 (= (array_inv!6600 _values!1525) (bvsge (size!9308 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!35050 d!71327))

(declare-fun d!71329 () Bool)

(assert (=> d!71329 (= (array_inv!6601 _keys!1895) (bvsge (size!9309 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!35050 d!71329))

(declare-fun d!71331 () Bool)

(declare-fun lt!164796 () (_ BitVec 32))

(assert (=> d!71331 (and (or (bvslt lt!164796 #b00000000000000000000000000000000) (bvsge lt!164796 (size!9309 _keys!1895)) (and (bvsge lt!164796 #b00000000000000000000000000000000) (bvslt lt!164796 (size!9309 _keys!1895)))) (bvsge lt!164796 #b00000000000000000000000000000000) (bvslt lt!164796 (size!9309 _keys!1895)) (= (select (arr!8957 _keys!1895) lt!164796) k0!1348))))

(declare-fun e!215113 () (_ BitVec 32))

(assert (=> d!71331 (= lt!164796 e!215113)))

(declare-fun c!53369 () Bool)

(assert (=> d!71331 (= c!53369 (= (select (arr!8957 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!71331 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!9309 _keys!1895)) (bvslt (size!9309 _keys!1895) #b01111111111111111111111111111111))))

(assert (=> d!71331 (= (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) lt!164796)))

(declare-fun b!351251 () Bool)

(assert (=> b!351251 (= e!215113 #b00000000000000000000000000000000)))

(declare-fun b!351252 () Bool)

(assert (=> b!351252 (= e!215113 (arrayScanForKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!71331 c!53369) b!351251))

(assert (= (and d!71331 (not c!53369)) b!351252))

(declare-fun m!351231 () Bool)

(assert (=> d!71331 m!351231))

(assert (=> d!71331 m!351155))

(declare-fun m!351233 () Bool)

(assert (=> b!351252 m!351233))

(assert (=> b!351110 d!71331))

(declare-fun d!71333 () Bool)

(assert (=> d!71333 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!351109 d!71333))

(declare-fun d!71335 () Bool)

(declare-fun res!194861 () Bool)

(declare-fun e!215118 () Bool)

(assert (=> d!71335 (=> res!194861 e!215118)))

(assert (=> d!71335 (= res!194861 (= (select (arr!8957 _keys!1895) #b00000000000000000000000000000000) k0!1348))))

(assert (=> d!71335 (= (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) e!215118)))

(declare-fun b!351257 () Bool)

(declare-fun e!215119 () Bool)

(assert (=> b!351257 (= e!215118 e!215119)))

(declare-fun res!194862 () Bool)

(assert (=> b!351257 (=> (not res!194862) (not e!215119))))

(assert (=> b!351257 (= res!194862 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!9309 _keys!1895)))))

(declare-fun b!351258 () Bool)

(assert (=> b!351258 (= e!215119 (arrayContainsKey!0 _keys!1895 k0!1348 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!71335 (not res!194861)) b!351257))

(assert (= (and b!351257 res!194862) b!351258))

(assert (=> d!71335 m!351155))

(declare-fun m!351235 () Bool)

(assert (=> b!351258 m!351235))

(assert (=> b!351108 d!71335))

(declare-fun b!351271 () Bool)

(declare-fun c!53377 () Bool)

(declare-fun lt!164805 () (_ BitVec 64))

(assert (=> b!351271 (= c!53377 (= lt!164805 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!215126 () SeekEntryResult!3445)

(declare-fun e!215127 () SeekEntryResult!3445)

(assert (=> b!351271 (= e!215126 e!215127)))

(declare-fun b!351272 () Bool)

(declare-fun lt!164804 () SeekEntryResult!3445)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18909 (_ BitVec 32)) SeekEntryResult!3445)

(assert (=> b!351272 (= e!215127 (seekKeyOrZeroReturnVacant!0 (x!34952 lt!164804) (index!15961 lt!164804) (index!15961 lt!164804) k0!1348 _keys!1895 mask!2385))))

(declare-fun b!351273 () Bool)

(assert (=> b!351273 (= e!215126 (Found!3445 (index!15961 lt!164804)))))

(declare-fun b!351274 () Bool)

(declare-fun e!215128 () SeekEntryResult!3445)

(assert (=> b!351274 (= e!215128 Undefined!3445)))

(declare-fun d!71337 () Bool)

(declare-fun lt!164803 () SeekEntryResult!3445)

(assert (=> d!71337 (and (or ((_ is Undefined!3445) lt!164803) (not ((_ is Found!3445) lt!164803)) (and (bvsge (index!15960 lt!164803) #b00000000000000000000000000000000) (bvslt (index!15960 lt!164803) (size!9309 _keys!1895)))) (or ((_ is Undefined!3445) lt!164803) ((_ is Found!3445) lt!164803) (not ((_ is MissingZero!3445) lt!164803)) (and (bvsge (index!15959 lt!164803) #b00000000000000000000000000000000) (bvslt (index!15959 lt!164803) (size!9309 _keys!1895)))) (or ((_ is Undefined!3445) lt!164803) ((_ is Found!3445) lt!164803) ((_ is MissingZero!3445) lt!164803) (not ((_ is MissingVacant!3445) lt!164803)) (and (bvsge (index!15962 lt!164803) #b00000000000000000000000000000000) (bvslt (index!15962 lt!164803) (size!9309 _keys!1895)))) (or ((_ is Undefined!3445) lt!164803) (ite ((_ is Found!3445) lt!164803) (= (select (arr!8957 _keys!1895) (index!15960 lt!164803)) k0!1348) (ite ((_ is MissingZero!3445) lt!164803) (= (select (arr!8957 _keys!1895) (index!15959 lt!164803)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!3445) lt!164803) (= (select (arr!8957 _keys!1895) (index!15962 lt!164803)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!71337 (= lt!164803 e!215128)))

(declare-fun c!53378 () Bool)

(assert (=> d!71337 (= c!53378 (and ((_ is Intermediate!3445) lt!164804) (undefined!4257 lt!164804)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!18909 (_ BitVec 32)) SeekEntryResult!3445)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!71337 (= lt!164804 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1348 mask!2385) k0!1348 _keys!1895 mask!2385))))

(assert (=> d!71337 (validMask!0 mask!2385)))

(assert (=> d!71337 (= (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385) lt!164803)))

(declare-fun b!351275 () Bool)

(assert (=> b!351275 (= e!215128 e!215126)))

(assert (=> b!351275 (= lt!164805 (select (arr!8957 _keys!1895) (index!15961 lt!164804)))))

(declare-fun c!53376 () Bool)

(assert (=> b!351275 (= c!53376 (= lt!164805 k0!1348))))

(declare-fun b!351276 () Bool)

(assert (=> b!351276 (= e!215127 (MissingZero!3445 (index!15961 lt!164804)))))

(assert (= (and d!71337 c!53378) b!351274))

(assert (= (and d!71337 (not c!53378)) b!351275))

(assert (= (and b!351275 c!53376) b!351273))

(assert (= (and b!351275 (not c!53376)) b!351271))

(assert (= (and b!351271 c!53377) b!351276))

(assert (= (and b!351271 (not c!53377)) b!351272))

(declare-fun m!351237 () Bool)

(assert (=> b!351272 m!351237))

(declare-fun m!351239 () Bool)

(assert (=> d!71337 m!351239))

(declare-fun m!351241 () Bool)

(assert (=> d!71337 m!351241))

(assert (=> d!71337 m!351123))

(declare-fun m!351243 () Bool)

(assert (=> d!71337 m!351243))

(declare-fun m!351245 () Bool)

(assert (=> d!71337 m!351245))

(assert (=> d!71337 m!351243))

(declare-fun m!351247 () Bool)

(assert (=> d!71337 m!351247))

(declare-fun m!351249 () Bool)

(assert (=> b!351275 m!351249))

(assert (=> b!351104 d!71337))

(declare-fun condMapEmpty!13002 () Bool)

(declare-fun mapDefault!13002 () ValueCell!3498)

(assert (=> mapNonEmpty!12996 (= condMapEmpty!13002 (= mapRest!12996 ((as const (Array (_ BitVec 32) ValueCell!3498)) mapDefault!13002)))))

(declare-fun e!215133 () Bool)

(declare-fun mapRes!13002 () Bool)

(assert (=> mapNonEmpty!12996 (= tp!26771 (and e!215133 mapRes!13002))))

(declare-fun mapNonEmpty!13002 () Bool)

(declare-fun tp!26781 () Bool)

(declare-fun e!215134 () Bool)

(assert (=> mapNonEmpty!13002 (= mapRes!13002 (and tp!26781 e!215134))))

(declare-fun mapKey!13002 () (_ BitVec 32))

(declare-fun mapRest!13002 () (Array (_ BitVec 32) ValueCell!3498))

(declare-fun mapValue!13002 () ValueCell!3498)

(assert (=> mapNonEmpty!13002 (= mapRest!12996 (store mapRest!13002 mapKey!13002 mapValue!13002))))

(declare-fun mapIsEmpty!13002 () Bool)

(assert (=> mapIsEmpty!13002 mapRes!13002))

(declare-fun b!351284 () Bool)

(assert (=> b!351284 (= e!215133 tp_is_empty!7683)))

(declare-fun b!351283 () Bool)

(assert (=> b!351283 (= e!215134 tp_is_empty!7683)))

(assert (= (and mapNonEmpty!12996 condMapEmpty!13002) mapIsEmpty!13002))

(assert (= (and mapNonEmpty!12996 (not condMapEmpty!13002)) mapNonEmpty!13002))

(assert (= (and mapNonEmpty!13002 ((_ is ValueCellFull!3498) mapValue!13002)) b!351283))

(assert (= (and mapNonEmpty!12996 ((_ is ValueCellFull!3498) mapDefault!13002)) b!351284))

(declare-fun m!351251 () Bool)

(assert (=> mapNonEmpty!13002 m!351251))

(declare-fun b_lambda!8535 () Bool)

(assert (= b_lambda!8533 (or (and start!35050 b_free!7731) b_lambda!8535)))

(check-sat (not b!351227) (not d!71337) (not b!351243) (not b!351258) (not b!351234) (not b!351232) (not b!351169) (not b!351156) tp_is_empty!7683 (not bm!26996) (not d!71321) (not b!351157) (not b!351231) (not mapNonEmpty!13002) (not b!351272) b_and!14983 (not b_next!7731) (not bm!26978) (not bm!26998) (not b!351181) (not d!71323) (not b!351172) (not b!351235) (not b!351252) (not b!351179) (not bm!26997) (not b!351242) (not b!351237) (not b!351168) (not b_lambda!8535) (not bm!26993) (not bm!26975))
(check-sat b_and!14983 (not b_next!7731))
