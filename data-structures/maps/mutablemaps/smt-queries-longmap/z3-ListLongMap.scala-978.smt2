; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21160 () Bool)

(assert start!21160)

(declare-fun b_free!5619 () Bool)

(declare-fun b_next!5619 () Bool)

(assert (=> start!21160 (= b_free!5619 (not b_next!5619))))

(declare-fun tp!19925 () Bool)

(declare-fun b_and!12491 () Bool)

(assert (=> start!21160 (= tp!19925 b_and!12491)))

(declare-fun b!212878 () Bool)

(declare-fun res!104152 () Bool)

(declare-fun e!138491 () Bool)

(assert (=> b!212878 (=> (not res!104152) (not e!138491))))

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!212878 (= res!104152 (validKeyInArray!0 k0!843))))

(declare-fun mapNonEmpty!9317 () Bool)

(declare-fun mapRes!9317 () Bool)

(declare-fun tp!19924 () Bool)

(declare-fun e!138490 () Bool)

(assert (=> mapNonEmpty!9317 (= mapRes!9317 (and tp!19924 e!138490))))

(declare-datatypes ((V!6955 0))(
  ( (V!6956 (val!2785 Int)) )
))
(declare-datatypes ((ValueCell!2397 0))(
  ( (ValueCellFull!2397 (v!4787 V!6955)) (EmptyCell!2397) )
))
(declare-fun mapRest!9317 () (Array (_ BitVec 32) ValueCell!2397))

(declare-fun mapValue!9317 () ValueCell!2397)

(declare-datatypes ((array!10164 0))(
  ( (array!10165 (arr!4823 (Array (_ BitVec 32) ValueCell!2397)) (size!5148 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10164)

(declare-fun mapKey!9317 () (_ BitVec 32))

(assert (=> mapNonEmpty!9317 (= (arr!4823 _values!649) (store mapRest!9317 mapKey!9317 mapValue!9317))))

(declare-fun b!212879 () Bool)

(declare-fun e!138495 () Bool)

(declare-fun tp_is_empty!5481 () Bool)

(assert (=> b!212879 (= e!138495 tp_is_empty!5481)))

(declare-fun b!212880 () Bool)

(assert (=> b!212880 (= e!138490 tp_is_empty!5481)))

(declare-datatypes ((tuple2!4212 0))(
  ( (tuple2!4213 (_1!2116 (_ BitVec 64)) (_2!2116 V!6955)) )
))
(declare-fun lt!109885 () tuple2!4212)

(declare-fun b!212881 () Bool)

(declare-fun e!138492 () Bool)

(declare-datatypes ((List!3123 0))(
  ( (Nil!3120) (Cons!3119 (h!3761 tuple2!4212) (t!8080 List!3123)) )
))
(declare-datatypes ((ListLongMap!3139 0))(
  ( (ListLongMap!3140 (toList!1585 List!3123)) )
))
(declare-fun lt!109887 () ListLongMap!3139)

(declare-fun lt!109886 () ListLongMap!3139)

(declare-fun +!578 (ListLongMap!3139 tuple2!4212) ListLongMap!3139)

(assert (=> b!212881 (= e!138492 (= lt!109887 (+!578 lt!109886 lt!109885)))))

(declare-fun b!212882 () Bool)

(declare-fun res!104148 () Bool)

(assert (=> b!212882 (=> (not res!104148) (not e!138491))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!10166 0))(
  ( (array!10167 (arr!4824 (Array (_ BitVec 32) (_ BitVec 64))) (size!5149 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10166)

(assert (=> b!212882 (= res!104148 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5149 _keys!825))))))

(declare-fun res!104151 () Bool)

(assert (=> start!21160 (=> (not res!104151) (not e!138491))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21160 (= res!104151 (validMask!0 mask!1149))))

(assert (=> start!21160 e!138491))

(declare-fun e!138493 () Bool)

(declare-fun array_inv!3181 (array!10164) Bool)

(assert (=> start!21160 (and (array_inv!3181 _values!649) e!138493)))

(assert (=> start!21160 true))

(assert (=> start!21160 tp_is_empty!5481))

(declare-fun array_inv!3182 (array!10166) Bool)

(assert (=> start!21160 (array_inv!3182 _keys!825)))

(assert (=> start!21160 tp!19925))

(declare-fun b!212883 () Bool)

(declare-fun res!104153 () Bool)

(assert (=> b!212883 (=> (not res!104153) (not e!138491))))

(declare-datatypes ((List!3124 0))(
  ( (Nil!3121) (Cons!3120 (h!3762 (_ BitVec 64)) (t!8081 List!3124)) )
))
(declare-fun arrayNoDuplicates!0 (array!10166 (_ BitVec 32) List!3124) Bool)

(assert (=> b!212883 (= res!104153 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3121))))

(declare-fun b!212884 () Bool)

(declare-fun res!104150 () Bool)

(assert (=> b!212884 (=> (not res!104150) (not e!138491))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!212884 (= res!104150 (and (= (size!5148 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5149 _keys!825) (size!5148 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!9317 () Bool)

(assert (=> mapIsEmpty!9317 mapRes!9317))

(declare-fun b!212885 () Bool)

(declare-fun res!104155 () Bool)

(assert (=> b!212885 (=> (not res!104155) (not e!138491))))

(assert (=> b!212885 (= res!104155 (= (select (arr!4824 _keys!825) i!601) k0!843))))

(declare-fun b!212886 () Bool)

(declare-fun res!104149 () Bool)

(assert (=> b!212886 (=> (not res!104149) (not e!138491))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10166 (_ BitVec 32)) Bool)

(assert (=> b!212886 (= res!104149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!212887 () Bool)

(declare-fun e!138494 () Bool)

(assert (=> b!212887 (= e!138494 (not (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!212887 e!138492))

(declare-fun res!104147 () Bool)

(assert (=> b!212887 (=> (not res!104147) (not e!138492))))

(declare-fun lt!109882 () ListLongMap!3139)

(declare-fun lt!109883 () ListLongMap!3139)

(assert (=> b!212887 (= res!104147 (= lt!109882 (+!578 lt!109883 lt!109885)))))

(declare-fun minValue!615 () V!6955)

(assert (=> b!212887 (= lt!109885 (tuple2!4213 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!212888 () Bool)

(assert (=> b!212888 (= e!138491 (not e!138494))))

(declare-fun res!104154 () Bool)

(assert (=> b!212888 (=> res!104154 e!138494)))

(assert (=> b!212888 (= res!104154 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!615 () V!6955)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!1111 (array!10166 array!10164 (_ BitVec 32) (_ BitVec 32) V!6955 V!6955 (_ BitVec 32) Int) ListLongMap!3139)

(assert (=> b!212888 (= lt!109887 (getCurrentListMap!1111 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109881 () array!10164)

(assert (=> b!212888 (= lt!109882 (getCurrentListMap!1111 _keys!825 lt!109881 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109884 () ListLongMap!3139)

(assert (=> b!212888 (and (= lt!109883 lt!109884) (= lt!109884 lt!109883))))

(declare-fun v!520 () V!6955)

(assert (=> b!212888 (= lt!109884 (+!578 lt!109886 (tuple2!4213 k0!843 v!520)))))

(declare-datatypes ((Unit!6457 0))(
  ( (Unit!6458) )
))
(declare-fun lt!109880 () Unit!6457)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!228 (array!10166 array!10164 (_ BitVec 32) (_ BitVec 32) V!6955 V!6955 (_ BitVec 32) (_ BitVec 64) V!6955 (_ BitVec 32) Int) Unit!6457)

(assert (=> b!212888 (= lt!109880 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!228 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!510 (array!10166 array!10164 (_ BitVec 32) (_ BitVec 32) V!6955 V!6955 (_ BitVec 32) Int) ListLongMap!3139)

(assert (=> b!212888 (= lt!109883 (getCurrentListMapNoExtraKeys!510 _keys!825 lt!109881 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!212888 (= lt!109881 (array!10165 (store (arr!4823 _values!649) i!601 (ValueCellFull!2397 v!520)) (size!5148 _values!649)))))

(assert (=> b!212888 (= lt!109886 (getCurrentListMapNoExtraKeys!510 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!212889 () Bool)

(declare-fun res!104156 () Bool)

(assert (=> b!212889 (=> (not res!104156) (not e!138492))))

(assert (=> b!212889 (= res!104156 (= lt!109882 (+!578 lt!109884 lt!109885)))))

(declare-fun b!212890 () Bool)

(assert (=> b!212890 (= e!138493 (and e!138495 mapRes!9317))))

(declare-fun condMapEmpty!9317 () Bool)

(declare-fun mapDefault!9317 () ValueCell!2397)

(assert (=> b!212890 (= condMapEmpty!9317 (= (arr!4823 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2397)) mapDefault!9317)))))

(assert (= (and start!21160 res!104151) b!212884))

(assert (= (and b!212884 res!104150) b!212886))

(assert (= (and b!212886 res!104149) b!212883))

(assert (= (and b!212883 res!104153) b!212882))

(assert (= (and b!212882 res!104148) b!212878))

(assert (= (and b!212878 res!104152) b!212885))

(assert (= (and b!212885 res!104155) b!212888))

(assert (= (and b!212888 (not res!104154)) b!212887))

(assert (= (and b!212887 res!104147) b!212889))

(assert (= (and b!212889 res!104156) b!212881))

(assert (= (and b!212890 condMapEmpty!9317) mapIsEmpty!9317))

(assert (= (and b!212890 (not condMapEmpty!9317)) mapNonEmpty!9317))

(get-info :version)

(assert (= (and mapNonEmpty!9317 ((_ is ValueCellFull!2397) mapValue!9317)) b!212880))

(assert (= (and b!212890 ((_ is ValueCellFull!2397) mapDefault!9317)) b!212879))

(assert (= start!21160 b!212890))

(declare-fun m!240721 () Bool)

(assert (=> b!212881 m!240721))

(declare-fun m!240723 () Bool)

(assert (=> b!212885 m!240723))

(declare-fun m!240725 () Bool)

(assert (=> b!212888 m!240725))

(declare-fun m!240727 () Bool)

(assert (=> b!212888 m!240727))

(declare-fun m!240729 () Bool)

(assert (=> b!212888 m!240729))

(declare-fun m!240731 () Bool)

(assert (=> b!212888 m!240731))

(declare-fun m!240733 () Bool)

(assert (=> b!212888 m!240733))

(declare-fun m!240735 () Bool)

(assert (=> b!212888 m!240735))

(declare-fun m!240737 () Bool)

(assert (=> b!212888 m!240737))

(declare-fun m!240739 () Bool)

(assert (=> start!21160 m!240739))

(declare-fun m!240741 () Bool)

(assert (=> start!21160 m!240741))

(declare-fun m!240743 () Bool)

(assert (=> start!21160 m!240743))

(declare-fun m!240745 () Bool)

(assert (=> b!212878 m!240745))

(declare-fun m!240747 () Bool)

(assert (=> mapNonEmpty!9317 m!240747))

(declare-fun m!240749 () Bool)

(assert (=> b!212889 m!240749))

(declare-fun m!240751 () Bool)

(assert (=> b!212887 m!240751))

(declare-fun m!240753 () Bool)

(assert (=> b!212883 m!240753))

(declare-fun m!240755 () Bool)

(assert (=> b!212886 m!240755))

(check-sat (not b!212878) (not start!21160) (not b!212883) (not b!212881) (not b!212887) (not mapNonEmpty!9317) (not b!212888) (not b_next!5619) (not b!212889) (not b!212886) tp_is_empty!5481 b_and!12491)
(check-sat b_and!12491 (not b_next!5619))
(get-model)

(declare-fun d!58085 () Bool)

(declare-fun e!138519 () Bool)

(assert (=> d!58085 e!138519))

(declare-fun res!104191 () Bool)

(assert (=> d!58085 (=> (not res!104191) (not e!138519))))

(declare-fun lt!109921 () ListLongMap!3139)

(declare-fun contains!1415 (ListLongMap!3139 (_ BitVec 64)) Bool)

(assert (=> d!58085 (= res!104191 (contains!1415 lt!109921 (_1!2116 lt!109885)))))

(declare-fun lt!109920 () List!3123)

(assert (=> d!58085 (= lt!109921 (ListLongMap!3140 lt!109920))))

(declare-fun lt!109923 () Unit!6457)

(declare-fun lt!109922 () Unit!6457)

(assert (=> d!58085 (= lt!109923 lt!109922)))

(declare-datatypes ((Option!261 0))(
  ( (Some!260 (v!4792 V!6955)) (None!259) )
))
(declare-fun getValueByKey!255 (List!3123 (_ BitVec 64)) Option!261)

(assert (=> d!58085 (= (getValueByKey!255 lt!109920 (_1!2116 lt!109885)) (Some!260 (_2!2116 lt!109885)))))

(declare-fun lemmaContainsTupThenGetReturnValue!144 (List!3123 (_ BitVec 64) V!6955) Unit!6457)

(assert (=> d!58085 (= lt!109922 (lemmaContainsTupThenGetReturnValue!144 lt!109920 (_1!2116 lt!109885) (_2!2116 lt!109885)))))

(declare-fun insertStrictlySorted!146 (List!3123 (_ BitVec 64) V!6955) List!3123)

(assert (=> d!58085 (= lt!109920 (insertStrictlySorted!146 (toList!1585 lt!109884) (_1!2116 lt!109885) (_2!2116 lt!109885)))))

(assert (=> d!58085 (= (+!578 lt!109884 lt!109885) lt!109921)))

(declare-fun b!212934 () Bool)

(declare-fun res!104192 () Bool)

(assert (=> b!212934 (=> (not res!104192) (not e!138519))))

(assert (=> b!212934 (= res!104192 (= (getValueByKey!255 (toList!1585 lt!109921) (_1!2116 lt!109885)) (Some!260 (_2!2116 lt!109885))))))

(declare-fun b!212935 () Bool)

(declare-fun contains!1416 (List!3123 tuple2!4212) Bool)

(assert (=> b!212935 (= e!138519 (contains!1416 (toList!1585 lt!109921) lt!109885))))

(assert (= (and d!58085 res!104191) b!212934))

(assert (= (and b!212934 res!104192) b!212935))

(declare-fun m!240793 () Bool)

(assert (=> d!58085 m!240793))

(declare-fun m!240795 () Bool)

(assert (=> d!58085 m!240795))

(declare-fun m!240797 () Bool)

(assert (=> d!58085 m!240797))

(declare-fun m!240799 () Bool)

(assert (=> d!58085 m!240799))

(declare-fun m!240801 () Bool)

(assert (=> b!212934 m!240801))

(declare-fun m!240803 () Bool)

(assert (=> b!212935 m!240803))

(assert (=> b!212889 d!58085))

(declare-fun d!58087 () Bool)

(declare-fun e!138520 () Bool)

(assert (=> d!58087 e!138520))

(declare-fun res!104193 () Bool)

(assert (=> d!58087 (=> (not res!104193) (not e!138520))))

(declare-fun lt!109925 () ListLongMap!3139)

(assert (=> d!58087 (= res!104193 (contains!1415 lt!109925 (_1!2116 lt!109885)))))

(declare-fun lt!109924 () List!3123)

(assert (=> d!58087 (= lt!109925 (ListLongMap!3140 lt!109924))))

(declare-fun lt!109927 () Unit!6457)

(declare-fun lt!109926 () Unit!6457)

(assert (=> d!58087 (= lt!109927 lt!109926)))

(assert (=> d!58087 (= (getValueByKey!255 lt!109924 (_1!2116 lt!109885)) (Some!260 (_2!2116 lt!109885)))))

(assert (=> d!58087 (= lt!109926 (lemmaContainsTupThenGetReturnValue!144 lt!109924 (_1!2116 lt!109885) (_2!2116 lt!109885)))))

(assert (=> d!58087 (= lt!109924 (insertStrictlySorted!146 (toList!1585 lt!109886) (_1!2116 lt!109885) (_2!2116 lt!109885)))))

(assert (=> d!58087 (= (+!578 lt!109886 lt!109885) lt!109925)))

(declare-fun b!212936 () Bool)

(declare-fun res!104194 () Bool)

(assert (=> b!212936 (=> (not res!104194) (not e!138520))))

(assert (=> b!212936 (= res!104194 (= (getValueByKey!255 (toList!1585 lt!109925) (_1!2116 lt!109885)) (Some!260 (_2!2116 lt!109885))))))

(declare-fun b!212937 () Bool)

(assert (=> b!212937 (= e!138520 (contains!1416 (toList!1585 lt!109925) lt!109885))))

(assert (= (and d!58087 res!104193) b!212936))

(assert (= (and b!212936 res!104194) b!212937))

(declare-fun m!240805 () Bool)

(assert (=> d!58087 m!240805))

(declare-fun m!240807 () Bool)

(assert (=> d!58087 m!240807))

(declare-fun m!240809 () Bool)

(assert (=> d!58087 m!240809))

(declare-fun m!240811 () Bool)

(assert (=> d!58087 m!240811))

(declare-fun m!240813 () Bool)

(assert (=> b!212936 m!240813))

(declare-fun m!240815 () Bool)

(assert (=> b!212937 m!240815))

(assert (=> b!212881 d!58087))

(declare-fun b!212946 () Bool)

(declare-fun e!138527 () Bool)

(declare-fun call!20173 () Bool)

(assert (=> b!212946 (= e!138527 call!20173)))

(declare-fun b!212947 () Bool)

(declare-fun e!138528 () Bool)

(assert (=> b!212947 (= e!138528 e!138527)))

(declare-fun lt!109936 () (_ BitVec 64))

(assert (=> b!212947 (= lt!109936 (select (arr!4824 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!109935 () Unit!6457)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10166 (_ BitVec 64) (_ BitVec 32)) Unit!6457)

(assert (=> b!212947 (= lt!109935 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!825 lt!109936 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10166 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!212947 (arrayContainsKey!0 _keys!825 lt!109936 #b00000000000000000000000000000000)))

(declare-fun lt!109934 () Unit!6457)

(assert (=> b!212947 (= lt!109934 lt!109935)))

(declare-fun res!104199 () Bool)

(declare-datatypes ((SeekEntryResult!723 0))(
  ( (MissingZero!723 (index!5062 (_ BitVec 32))) (Found!723 (index!5063 (_ BitVec 32))) (Intermediate!723 (undefined!1535 Bool) (index!5064 (_ BitVec 32)) (x!22220 (_ BitVec 32))) (Undefined!723) (MissingVacant!723 (index!5065 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10166 (_ BitVec 32)) SeekEntryResult!723)

(assert (=> b!212947 (= res!104199 (= (seekEntryOrOpen!0 (select (arr!4824 _keys!825) #b00000000000000000000000000000000) _keys!825 mask!1149) (Found!723 #b00000000000000000000000000000000)))))

(assert (=> b!212947 (=> (not res!104199) (not e!138527))))

(declare-fun b!212949 () Bool)

(declare-fun e!138529 () Bool)

(assert (=> b!212949 (= e!138529 e!138528)))

(declare-fun c!35860 () Bool)

(assert (=> b!212949 (= c!35860 (validKeyInArray!0 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun bm!20170 () Bool)

(assert (=> bm!20170 (= call!20173 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!825 mask!1149))))

(declare-fun d!58089 () Bool)

(declare-fun res!104200 () Bool)

(assert (=> d!58089 (=> res!104200 e!138529)))

(assert (=> d!58089 (= res!104200 (bvsge #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(assert (=> d!58089 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149) e!138529)))

(declare-fun b!212948 () Bool)

(assert (=> b!212948 (= e!138528 call!20173)))

(assert (= (and d!58089 (not res!104200)) b!212949))

(assert (= (and b!212949 c!35860) b!212947))

(assert (= (and b!212949 (not c!35860)) b!212948))

(assert (= (and b!212947 res!104199) b!212946))

(assert (= (or b!212946 b!212948) bm!20170))

(declare-fun m!240817 () Bool)

(assert (=> b!212947 m!240817))

(declare-fun m!240819 () Bool)

(assert (=> b!212947 m!240819))

(declare-fun m!240821 () Bool)

(assert (=> b!212947 m!240821))

(assert (=> b!212947 m!240817))

(declare-fun m!240823 () Bool)

(assert (=> b!212947 m!240823))

(assert (=> b!212949 m!240817))

(assert (=> b!212949 m!240817))

(declare-fun m!240825 () Bool)

(assert (=> b!212949 m!240825))

(declare-fun m!240827 () Bool)

(assert (=> bm!20170 m!240827))

(assert (=> b!212886 d!58089))

(declare-fun d!58091 () Bool)

(declare-fun e!138530 () Bool)

(assert (=> d!58091 e!138530))

(declare-fun res!104201 () Bool)

(assert (=> d!58091 (=> (not res!104201) (not e!138530))))

(declare-fun lt!109938 () ListLongMap!3139)

(assert (=> d!58091 (= res!104201 (contains!1415 lt!109938 (_1!2116 lt!109885)))))

(declare-fun lt!109937 () List!3123)

(assert (=> d!58091 (= lt!109938 (ListLongMap!3140 lt!109937))))

(declare-fun lt!109940 () Unit!6457)

(declare-fun lt!109939 () Unit!6457)

(assert (=> d!58091 (= lt!109940 lt!109939)))

(assert (=> d!58091 (= (getValueByKey!255 lt!109937 (_1!2116 lt!109885)) (Some!260 (_2!2116 lt!109885)))))

(assert (=> d!58091 (= lt!109939 (lemmaContainsTupThenGetReturnValue!144 lt!109937 (_1!2116 lt!109885) (_2!2116 lt!109885)))))

(assert (=> d!58091 (= lt!109937 (insertStrictlySorted!146 (toList!1585 lt!109883) (_1!2116 lt!109885) (_2!2116 lt!109885)))))

(assert (=> d!58091 (= (+!578 lt!109883 lt!109885) lt!109938)))

(declare-fun b!212950 () Bool)

(declare-fun res!104202 () Bool)

(assert (=> b!212950 (=> (not res!104202) (not e!138530))))

(assert (=> b!212950 (= res!104202 (= (getValueByKey!255 (toList!1585 lt!109938) (_1!2116 lt!109885)) (Some!260 (_2!2116 lt!109885))))))

(declare-fun b!212951 () Bool)

(assert (=> b!212951 (= e!138530 (contains!1416 (toList!1585 lt!109938) lt!109885))))

(assert (= (and d!58091 res!104201) b!212950))

(assert (= (and b!212950 res!104202) b!212951))

(declare-fun m!240829 () Bool)

(assert (=> d!58091 m!240829))

(declare-fun m!240831 () Bool)

(assert (=> d!58091 m!240831))

(declare-fun m!240833 () Bool)

(assert (=> d!58091 m!240833))

(declare-fun m!240835 () Bool)

(assert (=> d!58091 m!240835))

(declare-fun m!240837 () Bool)

(assert (=> b!212950 m!240837))

(declare-fun m!240839 () Bool)

(assert (=> b!212951 m!240839))

(assert (=> b!212887 d!58091))

(declare-fun d!58093 () Bool)

(assert (=> d!58093 (= (validKeyInArray!0 k0!843) (and (not (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!212878 d!58093))

(declare-fun b!212962 () Bool)

(declare-fun e!138539 () Bool)

(declare-fun e!138541 () Bool)

(assert (=> b!212962 (= e!138539 e!138541)))

(declare-fun c!35863 () Bool)

(assert (=> b!212962 (= c!35863 (validKeyInArray!0 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!212963 () Bool)

(declare-fun call!20176 () Bool)

(assert (=> b!212963 (= e!138541 call!20176)))

(declare-fun d!58095 () Bool)

(declare-fun res!104209 () Bool)

(declare-fun e!138540 () Bool)

(assert (=> d!58095 (=> res!104209 e!138540)))

(assert (=> d!58095 (= res!104209 (bvsge #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(assert (=> d!58095 (= (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3121) e!138540)))

(declare-fun b!212964 () Bool)

(assert (=> b!212964 (= e!138541 call!20176)))

(declare-fun b!212965 () Bool)

(assert (=> b!212965 (= e!138540 e!138539)))

(declare-fun res!104210 () Bool)

(assert (=> b!212965 (=> (not res!104210) (not e!138539))))

(declare-fun e!138542 () Bool)

(assert (=> b!212965 (= res!104210 (not e!138542))))

(declare-fun res!104211 () Bool)

(assert (=> b!212965 (=> (not res!104211) (not e!138542))))

(assert (=> b!212965 (= res!104211 (validKeyInArray!0 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!212966 () Bool)

(declare-fun contains!1417 (List!3124 (_ BitVec 64)) Bool)

(assert (=> b!212966 (= e!138542 (contains!1417 Nil!3121 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun bm!20173 () Bool)

(assert (=> bm!20173 (= call!20176 (arrayNoDuplicates!0 _keys!825 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!35863 (Cons!3120 (select (arr!4824 _keys!825) #b00000000000000000000000000000000) Nil!3121) Nil!3121)))))

(assert (= (and d!58095 (not res!104209)) b!212965))

(assert (= (and b!212965 res!104211) b!212966))

(assert (= (and b!212965 res!104210) b!212962))

(assert (= (and b!212962 c!35863) b!212963))

(assert (= (and b!212962 (not c!35863)) b!212964))

(assert (= (or b!212963 b!212964) bm!20173))

(assert (=> b!212962 m!240817))

(assert (=> b!212962 m!240817))

(assert (=> b!212962 m!240825))

(assert (=> b!212965 m!240817))

(assert (=> b!212965 m!240817))

(assert (=> b!212965 m!240825))

(assert (=> b!212966 m!240817))

(assert (=> b!212966 m!240817))

(declare-fun m!240841 () Bool)

(assert (=> b!212966 m!240841))

(assert (=> bm!20173 m!240817))

(declare-fun m!240843 () Bool)

(assert (=> bm!20173 m!240843))

(assert (=> b!212883 d!58095))

(declare-fun b!212991 () Bool)

(declare-fun res!104220 () Bool)

(declare-fun e!138562 () Bool)

(assert (=> b!212991 (=> (not res!104220) (not e!138562))))

(declare-fun lt!109955 () ListLongMap!3139)

(assert (=> b!212991 (= res!104220 (not (contains!1415 lt!109955 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!212992 () Bool)

(declare-fun e!138560 () Bool)

(assert (=> b!212992 (= e!138560 (= lt!109955 (getCurrentListMapNoExtraKeys!510 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun b!212993 () Bool)

(declare-fun isEmpty!504 (ListLongMap!3139) Bool)

(assert (=> b!212993 (= e!138560 (isEmpty!504 lt!109955))))

(declare-fun b!212994 () Bool)

(declare-fun e!138559 () Bool)

(declare-fun e!138557 () Bool)

(assert (=> b!212994 (= e!138559 e!138557)))

(assert (=> b!212994 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(declare-fun res!104223 () Bool)

(assert (=> b!212994 (= res!104223 (contains!1415 lt!109955 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!212994 (=> (not res!104223) (not e!138557))))

(declare-fun call!20179 () ListLongMap!3139)

(declare-fun bm!20176 () Bool)

(assert (=> bm!20176 (= call!20179 (getCurrentListMapNoExtraKeys!510 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun b!212995 () Bool)

(assert (=> b!212995 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(assert (=> b!212995 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5148 _values!649)))))

(declare-fun apply!198 (ListLongMap!3139 (_ BitVec 64)) V!6955)

(declare-fun get!2581 (ValueCell!2397 V!6955) V!6955)

(declare-fun dynLambda!536 (Int (_ BitVec 64)) V!6955)

(assert (=> b!212995 (= e!138557 (= (apply!198 lt!109955 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)) (get!2581 (select (arr!4823 _values!649) #b00000000000000000000000000000000) (dynLambda!536 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!212996 () Bool)

(assert (=> b!212996 (= e!138559 e!138560)))

(declare-fun c!35872 () Bool)

(assert (=> b!212996 (= c!35872 (bvslt #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(declare-fun b!212997 () Bool)

(declare-fun e!138558 () ListLongMap!3139)

(declare-fun e!138561 () ListLongMap!3139)

(assert (=> b!212997 (= e!138558 e!138561)))

(declare-fun c!35874 () Bool)

(assert (=> b!212997 (= c!35874 (validKeyInArray!0 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun d!58097 () Bool)

(assert (=> d!58097 e!138562))

(declare-fun res!104221 () Bool)

(assert (=> d!58097 (=> (not res!104221) (not e!138562))))

(assert (=> d!58097 (= res!104221 (not (contains!1415 lt!109955 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!58097 (= lt!109955 e!138558)))

(declare-fun c!35873 () Bool)

(assert (=> d!58097 (= c!35873 (bvsge #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(assert (=> d!58097 (validMask!0 mask!1149)))

(assert (=> d!58097 (= (getCurrentListMapNoExtraKeys!510 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!109955)))

(declare-fun b!212998 () Bool)

(assert (=> b!212998 (= e!138561 call!20179)))

(declare-fun b!212999 () Bool)

(declare-fun lt!109957 () Unit!6457)

(declare-fun lt!109959 () Unit!6457)

(assert (=> b!212999 (= lt!109957 lt!109959)))

(declare-fun lt!109956 () (_ BitVec 64))

(declare-fun lt!109961 () (_ BitVec 64))

(declare-fun lt!109958 () ListLongMap!3139)

(declare-fun lt!109960 () V!6955)

(assert (=> b!212999 (not (contains!1415 (+!578 lt!109958 (tuple2!4213 lt!109961 lt!109960)) lt!109956))))

(declare-fun addStillNotContains!109 (ListLongMap!3139 (_ BitVec 64) V!6955 (_ BitVec 64)) Unit!6457)

(assert (=> b!212999 (= lt!109959 (addStillNotContains!109 lt!109958 lt!109961 lt!109960 lt!109956))))

(assert (=> b!212999 (= lt!109956 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!212999 (= lt!109960 (get!2581 (select (arr!4823 _values!649) #b00000000000000000000000000000000) (dynLambda!536 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!212999 (= lt!109961 (select (arr!4824 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!212999 (= lt!109958 call!20179)))

(assert (=> b!212999 (= e!138561 (+!578 call!20179 (tuple2!4213 (select (arr!4824 _keys!825) #b00000000000000000000000000000000) (get!2581 (select (arr!4823 _values!649) #b00000000000000000000000000000000) (dynLambda!536 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!213000 () Bool)

(assert (=> b!213000 (= e!138558 (ListLongMap!3140 Nil!3120))))

(declare-fun b!213001 () Bool)

(declare-fun e!138563 () Bool)

(assert (=> b!213001 (= e!138563 (validKeyInArray!0 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!213001 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!213002 () Bool)

(assert (=> b!213002 (= e!138562 e!138559)))

(declare-fun c!35875 () Bool)

(assert (=> b!213002 (= c!35875 e!138563)))

(declare-fun res!104222 () Bool)

(assert (=> b!213002 (=> (not res!104222) (not e!138563))))

(assert (=> b!213002 (= res!104222 (bvslt #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(assert (= (and d!58097 c!35873) b!213000))

(assert (= (and d!58097 (not c!35873)) b!212997))

(assert (= (and b!212997 c!35874) b!212999))

(assert (= (and b!212997 (not c!35874)) b!212998))

(assert (= (or b!212999 b!212998) bm!20176))

(assert (= (and d!58097 res!104221) b!212991))

(assert (= (and b!212991 res!104220) b!213002))

(assert (= (and b!213002 res!104222) b!213001))

(assert (= (and b!213002 c!35875) b!212994))

(assert (= (and b!213002 (not c!35875)) b!212996))

(assert (= (and b!212994 res!104223) b!212995))

(assert (= (and b!212996 c!35872) b!212992))

(assert (= (and b!212996 (not c!35872)) b!212993))

(declare-fun b_lambda!7785 () Bool)

(assert (=> (not b_lambda!7785) (not b!212995)))

(declare-fun t!8085 () Bool)

(declare-fun tb!2917 () Bool)

(assert (=> (and start!21160 (= defaultEntry!657 defaultEntry!657) t!8085) tb!2917))

(declare-fun result!5023 () Bool)

(assert (=> tb!2917 (= result!5023 tp_is_empty!5481)))

(assert (=> b!212995 t!8085))

(declare-fun b_and!12495 () Bool)

(assert (= b_and!12491 (and (=> t!8085 result!5023) b_and!12495)))

(declare-fun b_lambda!7787 () Bool)

(assert (=> (not b_lambda!7787) (not b!212999)))

(assert (=> b!212999 t!8085))

(declare-fun b_and!12497 () Bool)

(assert (= b_and!12495 (and (=> t!8085 result!5023) b_and!12497)))

(assert (=> b!213001 m!240817))

(assert (=> b!213001 m!240817))

(assert (=> b!213001 m!240825))

(declare-fun m!240845 () Bool)

(assert (=> b!212991 m!240845))

(assert (=> b!212995 m!240817))

(declare-fun m!240847 () Bool)

(assert (=> b!212995 m!240847))

(assert (=> b!212995 m!240817))

(declare-fun m!240849 () Bool)

(assert (=> b!212995 m!240849))

(assert (=> b!212995 m!240847))

(declare-fun m!240851 () Bool)

(assert (=> b!212995 m!240851))

(declare-fun m!240853 () Bool)

(assert (=> b!212995 m!240853))

(assert (=> b!212995 m!240851))

(declare-fun m!240855 () Bool)

(assert (=> b!212992 m!240855))

(declare-fun m!240857 () Bool)

(assert (=> b!212999 m!240857))

(assert (=> b!212999 m!240857))

(declare-fun m!240859 () Bool)

(assert (=> b!212999 m!240859))

(declare-fun m!240861 () Bool)

(assert (=> b!212999 m!240861))

(assert (=> b!212999 m!240847))

(declare-fun m!240863 () Bool)

(assert (=> b!212999 m!240863))

(assert (=> b!212999 m!240817))

(assert (=> b!212999 m!240847))

(assert (=> b!212999 m!240851))

(assert (=> b!212999 m!240853))

(assert (=> b!212999 m!240851))

(declare-fun m!240865 () Bool)

(assert (=> d!58097 m!240865))

(assert (=> d!58097 m!240739))

(assert (=> b!212997 m!240817))

(assert (=> b!212997 m!240817))

(assert (=> b!212997 m!240825))

(assert (=> bm!20176 m!240855))

(assert (=> b!212994 m!240817))

(assert (=> b!212994 m!240817))

(declare-fun m!240867 () Bool)

(assert (=> b!212994 m!240867))

(declare-fun m!240869 () Bool)

(assert (=> b!212993 m!240869))

(assert (=> b!212888 d!58097))

(declare-fun b!213047 () Bool)

(declare-fun e!138599 () Bool)

(declare-fun lt!110008 () ListLongMap!3139)

(assert (=> b!213047 (= e!138599 (= (apply!198 lt!110008 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun b!213048 () Bool)

(declare-fun e!138592 () Bool)

(declare-fun e!138594 () Bool)

(assert (=> b!213048 (= e!138592 e!138594)))

(declare-fun c!35888 () Bool)

(assert (=> b!213048 (= c!35888 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!20191 () Bool)

(declare-fun call!20200 () ListLongMap!3139)

(declare-fun call!20199 () ListLongMap!3139)

(assert (=> bm!20191 (= call!20200 call!20199)))

(declare-fun b!213049 () Bool)

(declare-fun e!138591 () Bool)

(assert (=> b!213049 (= e!138591 (validKeyInArray!0 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!213050 () Bool)

(declare-fun e!138597 () ListLongMap!3139)

(declare-fun call!20197 () ListLongMap!3139)

(assert (=> b!213050 (= e!138597 (+!578 call!20197 (tuple2!4213 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun b!213051 () Bool)

(declare-fun e!138602 () Unit!6457)

(declare-fun Unit!6459 () Unit!6457)

(assert (=> b!213051 (= e!138602 Unit!6459)))

(declare-fun b!213052 () Bool)

(declare-fun call!20196 () Bool)

(assert (=> b!213052 (= e!138594 (not call!20196))))

(declare-fun b!213053 () Bool)

(assert (=> b!213053 (= e!138594 e!138599)))

(declare-fun res!104246 () Bool)

(assert (=> b!213053 (= res!104246 call!20196)))

(assert (=> b!213053 (=> (not res!104246) (not e!138599))))

(declare-fun b!213054 () Bool)

(declare-fun e!138600 () ListLongMap!3139)

(declare-fun call!20198 () ListLongMap!3139)

(assert (=> b!213054 (= e!138600 call!20198)))

(declare-fun b!213055 () Bool)

(declare-fun res!104243 () Bool)

(assert (=> b!213055 (=> (not res!104243) (not e!138592))))

(declare-fun e!138590 () Bool)

(assert (=> b!213055 (= res!104243 e!138590)))

(declare-fun c!35892 () Bool)

(assert (=> b!213055 (= c!35892 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!20193 () Bool)

(declare-fun call!20195 () Bool)

(assert (=> bm!20193 (= call!20195 (contains!1415 lt!110008 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!213056 () Bool)

(declare-fun res!104248 () Bool)

(assert (=> b!213056 (=> (not res!104248) (not e!138592))))

(declare-fun e!138596 () Bool)

(assert (=> b!213056 (= res!104248 e!138596)))

(declare-fun res!104242 () Bool)

(assert (=> b!213056 (=> res!104242 e!138596)))

(declare-fun e!138595 () Bool)

(assert (=> b!213056 (= res!104242 (not e!138595))))

(declare-fun res!104245 () Bool)

(assert (=> b!213056 (=> (not res!104245) (not e!138595))))

(assert (=> b!213056 (= res!104245 (bvslt #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(declare-fun b!213057 () Bool)

(declare-fun e!138598 () ListLongMap!3139)

(assert (=> b!213057 (= e!138598 call!20198)))

(declare-fun call!20194 () ListLongMap!3139)

(declare-fun bm!20194 () Bool)

(assert (=> bm!20194 (= call!20194 (getCurrentListMapNoExtraKeys!510 _keys!825 lt!109881 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!213058 () Bool)

(declare-fun e!138593 () Bool)

(assert (=> b!213058 (= e!138593 (= (apply!198 lt!110008 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!213059 () Bool)

(assert (=> b!213059 (= e!138590 (not call!20195))))

(declare-fun b!213060 () Bool)

(assert (=> b!213060 (= e!138595 (validKeyInArray!0 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!213061 () Bool)

(assert (=> b!213061 (= e!138590 e!138593)))

(declare-fun res!104249 () Bool)

(assert (=> b!213061 (= res!104249 call!20195)))

(assert (=> b!213061 (=> (not res!104249) (not e!138593))))

(declare-fun e!138601 () Bool)

(declare-fun b!213062 () Bool)

(assert (=> b!213062 (= e!138601 (= (apply!198 lt!110008 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)) (get!2581 (select (arr!4823 lt!109881) #b00000000000000000000000000000000) (dynLambda!536 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!213062 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5148 lt!109881)))))

(assert (=> b!213062 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(declare-fun bm!20195 () Bool)

(assert (=> bm!20195 (= call!20198 call!20197)))

(declare-fun bm!20196 () Bool)

(declare-fun c!35891 () Bool)

(declare-fun c!35889 () Bool)

(assert (=> bm!20196 (= call!20197 (+!578 (ite c!35891 call!20194 (ite c!35889 call!20199 call!20200)) (ite (or c!35891 c!35889) (tuple2!4213 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4213 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun b!213063 () Bool)

(declare-fun c!35893 () Bool)

(assert (=> b!213063 (= c!35893 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!213063 (= e!138600 e!138598)))

(declare-fun b!213064 () Bool)

(assert (=> b!213064 (= e!138598 call!20200)))

(declare-fun b!213065 () Bool)

(declare-fun lt!110020 () Unit!6457)

(assert (=> b!213065 (= e!138602 lt!110020)))

(declare-fun lt!110019 () ListLongMap!3139)

(assert (=> b!213065 (= lt!110019 (getCurrentListMapNoExtraKeys!510 _keys!825 lt!109881 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110026 () (_ BitVec 64))

(assert (=> b!213065 (= lt!110026 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110014 () (_ BitVec 64))

(assert (=> b!213065 (= lt!110014 (select (arr!4824 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110006 () Unit!6457)

(declare-fun addStillContains!174 (ListLongMap!3139 (_ BitVec 64) V!6955 (_ BitVec 64)) Unit!6457)

(assert (=> b!213065 (= lt!110006 (addStillContains!174 lt!110019 lt!110026 zeroValue!615 lt!110014))))

(assert (=> b!213065 (contains!1415 (+!578 lt!110019 (tuple2!4213 lt!110026 zeroValue!615)) lt!110014)))

(declare-fun lt!110007 () Unit!6457)

(assert (=> b!213065 (= lt!110007 lt!110006)))

(declare-fun lt!110011 () ListLongMap!3139)

(assert (=> b!213065 (= lt!110011 (getCurrentListMapNoExtraKeys!510 _keys!825 lt!109881 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110012 () (_ BitVec 64))

(assert (=> b!213065 (= lt!110012 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110024 () (_ BitVec 64))

(assert (=> b!213065 (= lt!110024 (select (arr!4824 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110013 () Unit!6457)

(declare-fun addApplyDifferent!174 (ListLongMap!3139 (_ BitVec 64) V!6955 (_ BitVec 64)) Unit!6457)

(assert (=> b!213065 (= lt!110013 (addApplyDifferent!174 lt!110011 lt!110012 minValue!615 lt!110024))))

(assert (=> b!213065 (= (apply!198 (+!578 lt!110011 (tuple2!4213 lt!110012 minValue!615)) lt!110024) (apply!198 lt!110011 lt!110024))))

(declare-fun lt!110015 () Unit!6457)

(assert (=> b!213065 (= lt!110015 lt!110013)))

(declare-fun lt!110016 () ListLongMap!3139)

(assert (=> b!213065 (= lt!110016 (getCurrentListMapNoExtraKeys!510 _keys!825 lt!109881 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110018 () (_ BitVec 64))

(assert (=> b!213065 (= lt!110018 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110022 () (_ BitVec 64))

(assert (=> b!213065 (= lt!110022 (select (arr!4824 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110023 () Unit!6457)

(assert (=> b!213065 (= lt!110023 (addApplyDifferent!174 lt!110016 lt!110018 zeroValue!615 lt!110022))))

(assert (=> b!213065 (= (apply!198 (+!578 lt!110016 (tuple2!4213 lt!110018 zeroValue!615)) lt!110022) (apply!198 lt!110016 lt!110022))))

(declare-fun lt!110027 () Unit!6457)

(assert (=> b!213065 (= lt!110027 lt!110023)))

(declare-fun lt!110010 () ListLongMap!3139)

(assert (=> b!213065 (= lt!110010 (getCurrentListMapNoExtraKeys!510 _keys!825 lt!109881 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110021 () (_ BitVec 64))

(assert (=> b!213065 (= lt!110021 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110017 () (_ BitVec 64))

(assert (=> b!213065 (= lt!110017 (select (arr!4824 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!213065 (= lt!110020 (addApplyDifferent!174 lt!110010 lt!110021 minValue!615 lt!110017))))

(assert (=> b!213065 (= (apply!198 (+!578 lt!110010 (tuple2!4213 lt!110021 minValue!615)) lt!110017) (apply!198 lt!110010 lt!110017))))

(declare-fun bm!20192 () Bool)

(assert (=> bm!20192 (= call!20196 (contains!1415 lt!110008 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!58099 () Bool)

(assert (=> d!58099 e!138592))

(declare-fun res!104250 () Bool)

(assert (=> d!58099 (=> (not res!104250) (not e!138592))))

(assert (=> d!58099 (= res!104250 (or (bvsge #b00000000000000000000000000000000 (size!5149 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5149 _keys!825)))))))

(declare-fun lt!110025 () ListLongMap!3139)

(assert (=> d!58099 (= lt!110008 lt!110025)))

(declare-fun lt!110009 () Unit!6457)

(assert (=> d!58099 (= lt!110009 e!138602)))

(declare-fun c!35890 () Bool)

(assert (=> d!58099 (= c!35890 e!138591)))

(declare-fun res!104247 () Bool)

(assert (=> d!58099 (=> (not res!104247) (not e!138591))))

(assert (=> d!58099 (= res!104247 (bvslt #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(assert (=> d!58099 (= lt!110025 e!138597)))

(assert (=> d!58099 (= c!35891 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!58099 (validMask!0 mask!1149)))

(assert (=> d!58099 (= (getCurrentListMap!1111 _keys!825 lt!109881 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!110008)))

(declare-fun b!213066 () Bool)

(assert (=> b!213066 (= e!138597 e!138600)))

(assert (=> b!213066 (= c!35889 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!213067 () Bool)

(assert (=> b!213067 (= e!138596 e!138601)))

(declare-fun res!104244 () Bool)

(assert (=> b!213067 (=> (not res!104244) (not e!138601))))

(assert (=> b!213067 (= res!104244 (contains!1415 lt!110008 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!213067 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(declare-fun bm!20197 () Bool)

(assert (=> bm!20197 (= call!20199 call!20194)))

(assert (= (and d!58099 c!35891) b!213050))

(assert (= (and d!58099 (not c!35891)) b!213066))

(assert (= (and b!213066 c!35889) b!213054))

(assert (= (and b!213066 (not c!35889)) b!213063))

(assert (= (and b!213063 c!35893) b!213057))

(assert (= (and b!213063 (not c!35893)) b!213064))

(assert (= (or b!213057 b!213064) bm!20191))

(assert (= (or b!213054 bm!20191) bm!20197))

(assert (= (or b!213054 b!213057) bm!20195))

(assert (= (or b!213050 bm!20197) bm!20194))

(assert (= (or b!213050 bm!20195) bm!20196))

(assert (= (and d!58099 res!104247) b!213049))

(assert (= (and d!58099 c!35890) b!213065))

(assert (= (and d!58099 (not c!35890)) b!213051))

(assert (= (and d!58099 res!104250) b!213056))

(assert (= (and b!213056 res!104245) b!213060))

(assert (= (and b!213056 (not res!104242)) b!213067))

(assert (= (and b!213067 res!104244) b!213062))

(assert (= (and b!213056 res!104248) b!213055))

(assert (= (and b!213055 c!35892) b!213061))

(assert (= (and b!213055 (not c!35892)) b!213059))

(assert (= (and b!213061 res!104249) b!213058))

(assert (= (or b!213061 b!213059) bm!20193))

(assert (= (and b!213055 res!104243) b!213048))

(assert (= (and b!213048 c!35888) b!213053))

(assert (= (and b!213048 (not c!35888)) b!213052))

(assert (= (and b!213053 res!104246) b!213047))

(assert (= (or b!213053 b!213052) bm!20192))

(declare-fun b_lambda!7789 () Bool)

(assert (=> (not b_lambda!7789) (not b!213062)))

(assert (=> b!213062 t!8085))

(declare-fun b_and!12499 () Bool)

(assert (= b_and!12497 (and (=> t!8085 result!5023) b_and!12499)))

(declare-fun m!240871 () Bool)

(assert (=> b!213047 m!240871))

(declare-fun m!240873 () Bool)

(assert (=> b!213050 m!240873))

(declare-fun m!240875 () Bool)

(assert (=> bm!20193 m!240875))

(assert (=> d!58099 m!240739))

(assert (=> bm!20194 m!240729))

(assert (=> b!213049 m!240817))

(assert (=> b!213049 m!240817))

(assert (=> b!213049 m!240825))

(declare-fun m!240877 () Bool)

(assert (=> bm!20192 m!240877))

(assert (=> b!213062 m!240817))

(assert (=> b!213062 m!240817))

(declare-fun m!240879 () Bool)

(assert (=> b!213062 m!240879))

(assert (=> b!213062 m!240851))

(declare-fun m!240881 () Bool)

(assert (=> b!213062 m!240881))

(assert (=> b!213062 m!240851))

(declare-fun m!240883 () Bool)

(assert (=> b!213062 m!240883))

(assert (=> b!213062 m!240881))

(declare-fun m!240885 () Bool)

(assert (=> b!213065 m!240885))

(declare-fun m!240887 () Bool)

(assert (=> b!213065 m!240887))

(assert (=> b!213065 m!240885))

(assert (=> b!213065 m!240817))

(declare-fun m!240889 () Bool)

(assert (=> b!213065 m!240889))

(declare-fun m!240891 () Bool)

(assert (=> b!213065 m!240891))

(declare-fun m!240893 () Bool)

(assert (=> b!213065 m!240893))

(declare-fun m!240895 () Bool)

(assert (=> b!213065 m!240895))

(declare-fun m!240897 () Bool)

(assert (=> b!213065 m!240897))

(declare-fun m!240899 () Bool)

(assert (=> b!213065 m!240899))

(declare-fun m!240901 () Bool)

(assert (=> b!213065 m!240901))

(declare-fun m!240903 () Bool)

(assert (=> b!213065 m!240903))

(declare-fun m!240905 () Bool)

(assert (=> b!213065 m!240905))

(declare-fun m!240907 () Bool)

(assert (=> b!213065 m!240907))

(assert (=> b!213065 m!240895))

(assert (=> b!213065 m!240891))

(declare-fun m!240909 () Bool)

(assert (=> b!213065 m!240909))

(declare-fun m!240911 () Bool)

(assert (=> b!213065 m!240911))

(assert (=> b!213065 m!240729))

(declare-fun m!240913 () Bool)

(assert (=> b!213065 m!240913))

(assert (=> b!213065 m!240901))

(declare-fun m!240915 () Bool)

(assert (=> b!213058 m!240915))

(assert (=> b!213067 m!240817))

(assert (=> b!213067 m!240817))

(declare-fun m!240917 () Bool)

(assert (=> b!213067 m!240917))

(declare-fun m!240919 () Bool)

(assert (=> bm!20196 m!240919))

(assert (=> b!213060 m!240817))

(assert (=> b!213060 m!240817))

(assert (=> b!213060 m!240825))

(assert (=> b!212888 d!58099))

(declare-fun d!58101 () Bool)

(declare-fun e!138608 () Bool)

(assert (=> d!58101 e!138608))

(declare-fun res!104253 () Bool)

(assert (=> d!58101 (=> (not res!104253) (not e!138608))))

(assert (=> d!58101 (= res!104253 (and (or (not (bvsle #b00000000000000000000000000000000 i!601)) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5148 _values!649)))) (or (bvsle #b00000000000000000000000000000000 i!601) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5148 _values!649))))))))

(declare-fun lt!110030 () Unit!6457)

(declare-fun choose!1090 (array!10166 array!10164 (_ BitVec 32) (_ BitVec 32) V!6955 V!6955 (_ BitVec 32) (_ BitVec 64) V!6955 (_ BitVec 32) Int) Unit!6457)

(assert (=> d!58101 (= lt!110030 (choose!1090 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> d!58101 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(assert (=> d!58101 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!228 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657) lt!110030)))

(declare-fun e!138607 () Bool)

(declare-fun call!20206 () ListLongMap!3139)

(declare-fun call!20205 () ListLongMap!3139)

(declare-fun b!213074 () Bool)

(assert (=> b!213074 (= e!138607 (= call!20205 (+!578 call!20206 (tuple2!4213 k0!843 v!520))))))

(declare-fun b!213075 () Bool)

(assert (=> b!213075 (= e!138607 (= call!20205 call!20206))))

(declare-fun b!213076 () Bool)

(assert (=> b!213076 (= e!138608 e!138607)))

(declare-fun c!35896 () Bool)

(assert (=> b!213076 (= c!35896 (bvsle #b00000000000000000000000000000000 i!601))))

(declare-fun bm!20202 () Bool)

(assert (=> bm!20202 (= call!20206 (getCurrentListMapNoExtraKeys!510 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun bm!20203 () Bool)

(assert (=> bm!20203 (= call!20205 (getCurrentListMapNoExtraKeys!510 _keys!825 (array!10165 (store (arr!4823 _values!649) i!601 (ValueCellFull!2397 v!520)) (size!5148 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (= (and d!58101 res!104253) b!213076))

(assert (= (and b!213076 c!35896) b!213074))

(assert (= (and b!213076 (not c!35896)) b!213075))

(assert (= (or b!213074 b!213075) bm!20203))

(assert (= (or b!213074 b!213075) bm!20202))

(declare-fun m!240921 () Bool)

(assert (=> d!58101 m!240921))

(declare-fun m!240923 () Bool)

(assert (=> b!213074 m!240923))

(assert (=> bm!20202 m!240733))

(assert (=> bm!20203 m!240725))

(declare-fun m!240925 () Bool)

(assert (=> bm!20203 m!240925))

(assert (=> b!212888 d!58101))

(declare-fun b!213077 () Bool)

(declare-fun res!104254 () Bool)

(declare-fun e!138614 () Bool)

(assert (=> b!213077 (=> (not res!104254) (not e!138614))))

(declare-fun lt!110031 () ListLongMap!3139)

(assert (=> b!213077 (= res!104254 (not (contains!1415 lt!110031 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!138612 () Bool)

(declare-fun b!213078 () Bool)

(assert (=> b!213078 (= e!138612 (= lt!110031 (getCurrentListMapNoExtraKeys!510 _keys!825 lt!109881 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun b!213079 () Bool)

(assert (=> b!213079 (= e!138612 (isEmpty!504 lt!110031))))

(declare-fun b!213080 () Bool)

(declare-fun e!138611 () Bool)

(declare-fun e!138609 () Bool)

(assert (=> b!213080 (= e!138611 e!138609)))

(assert (=> b!213080 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(declare-fun res!104257 () Bool)

(assert (=> b!213080 (= res!104257 (contains!1415 lt!110031 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!213080 (=> (not res!104257) (not e!138609))))

(declare-fun bm!20204 () Bool)

(declare-fun call!20207 () ListLongMap!3139)

(assert (=> bm!20204 (= call!20207 (getCurrentListMapNoExtraKeys!510 _keys!825 lt!109881 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun b!213081 () Bool)

(assert (=> b!213081 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(assert (=> b!213081 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5148 lt!109881)))))

(assert (=> b!213081 (= e!138609 (= (apply!198 lt!110031 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)) (get!2581 (select (arr!4823 lt!109881) #b00000000000000000000000000000000) (dynLambda!536 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!213082 () Bool)

(assert (=> b!213082 (= e!138611 e!138612)))

(declare-fun c!35897 () Bool)

(assert (=> b!213082 (= c!35897 (bvslt #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(declare-fun b!213083 () Bool)

(declare-fun e!138610 () ListLongMap!3139)

(declare-fun e!138613 () ListLongMap!3139)

(assert (=> b!213083 (= e!138610 e!138613)))

(declare-fun c!35899 () Bool)

(assert (=> b!213083 (= c!35899 (validKeyInArray!0 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun d!58103 () Bool)

(assert (=> d!58103 e!138614))

(declare-fun res!104255 () Bool)

(assert (=> d!58103 (=> (not res!104255) (not e!138614))))

(assert (=> d!58103 (= res!104255 (not (contains!1415 lt!110031 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!58103 (= lt!110031 e!138610)))

(declare-fun c!35898 () Bool)

(assert (=> d!58103 (= c!35898 (bvsge #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(assert (=> d!58103 (validMask!0 mask!1149)))

(assert (=> d!58103 (= (getCurrentListMapNoExtraKeys!510 _keys!825 lt!109881 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!110031)))

(declare-fun b!213084 () Bool)

(assert (=> b!213084 (= e!138613 call!20207)))

(declare-fun b!213085 () Bool)

(declare-fun lt!110033 () Unit!6457)

(declare-fun lt!110035 () Unit!6457)

(assert (=> b!213085 (= lt!110033 lt!110035)))

(declare-fun lt!110037 () (_ BitVec 64))

(declare-fun lt!110034 () ListLongMap!3139)

(declare-fun lt!110036 () V!6955)

(declare-fun lt!110032 () (_ BitVec 64))

(assert (=> b!213085 (not (contains!1415 (+!578 lt!110034 (tuple2!4213 lt!110037 lt!110036)) lt!110032))))

(assert (=> b!213085 (= lt!110035 (addStillNotContains!109 lt!110034 lt!110037 lt!110036 lt!110032))))

(assert (=> b!213085 (= lt!110032 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!213085 (= lt!110036 (get!2581 (select (arr!4823 lt!109881) #b00000000000000000000000000000000) (dynLambda!536 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!213085 (= lt!110037 (select (arr!4824 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!213085 (= lt!110034 call!20207)))

(assert (=> b!213085 (= e!138613 (+!578 call!20207 (tuple2!4213 (select (arr!4824 _keys!825) #b00000000000000000000000000000000) (get!2581 (select (arr!4823 lt!109881) #b00000000000000000000000000000000) (dynLambda!536 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!213086 () Bool)

(assert (=> b!213086 (= e!138610 (ListLongMap!3140 Nil!3120))))

(declare-fun b!213087 () Bool)

(declare-fun e!138615 () Bool)

(assert (=> b!213087 (= e!138615 (validKeyInArray!0 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!213087 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!213088 () Bool)

(assert (=> b!213088 (= e!138614 e!138611)))

(declare-fun c!35900 () Bool)

(assert (=> b!213088 (= c!35900 e!138615)))

(declare-fun res!104256 () Bool)

(assert (=> b!213088 (=> (not res!104256) (not e!138615))))

(assert (=> b!213088 (= res!104256 (bvslt #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(assert (= (and d!58103 c!35898) b!213086))

(assert (= (and d!58103 (not c!35898)) b!213083))

(assert (= (and b!213083 c!35899) b!213085))

(assert (= (and b!213083 (not c!35899)) b!213084))

(assert (= (or b!213085 b!213084) bm!20204))

(assert (= (and d!58103 res!104255) b!213077))

(assert (= (and b!213077 res!104254) b!213088))

(assert (= (and b!213088 res!104256) b!213087))

(assert (= (and b!213088 c!35900) b!213080))

(assert (= (and b!213088 (not c!35900)) b!213082))

(assert (= (and b!213080 res!104257) b!213081))

(assert (= (and b!213082 c!35897) b!213078))

(assert (= (and b!213082 (not c!35897)) b!213079))

(declare-fun b_lambda!7791 () Bool)

(assert (=> (not b_lambda!7791) (not b!213081)))

(assert (=> b!213081 t!8085))

(declare-fun b_and!12501 () Bool)

(assert (= b_and!12499 (and (=> t!8085 result!5023) b_and!12501)))

(declare-fun b_lambda!7793 () Bool)

(assert (=> (not b_lambda!7793) (not b!213085)))

(assert (=> b!213085 t!8085))

(declare-fun b_and!12503 () Bool)

(assert (= b_and!12501 (and (=> t!8085 result!5023) b_and!12503)))

(assert (=> b!213087 m!240817))

(assert (=> b!213087 m!240817))

(assert (=> b!213087 m!240825))

(declare-fun m!240927 () Bool)

(assert (=> b!213077 m!240927))

(assert (=> b!213081 m!240817))

(assert (=> b!213081 m!240881))

(assert (=> b!213081 m!240817))

(declare-fun m!240929 () Bool)

(assert (=> b!213081 m!240929))

(assert (=> b!213081 m!240881))

(assert (=> b!213081 m!240851))

(assert (=> b!213081 m!240883))

(assert (=> b!213081 m!240851))

(declare-fun m!240931 () Bool)

(assert (=> b!213078 m!240931))

(declare-fun m!240933 () Bool)

(assert (=> b!213085 m!240933))

(assert (=> b!213085 m!240933))

(declare-fun m!240935 () Bool)

(assert (=> b!213085 m!240935))

(declare-fun m!240937 () Bool)

(assert (=> b!213085 m!240937))

(assert (=> b!213085 m!240881))

(declare-fun m!240939 () Bool)

(assert (=> b!213085 m!240939))

(assert (=> b!213085 m!240817))

(assert (=> b!213085 m!240881))

(assert (=> b!213085 m!240851))

(assert (=> b!213085 m!240883))

(assert (=> b!213085 m!240851))

(declare-fun m!240941 () Bool)

(assert (=> d!58103 m!240941))

(assert (=> d!58103 m!240739))

(assert (=> b!213083 m!240817))

(assert (=> b!213083 m!240817))

(assert (=> b!213083 m!240825))

(assert (=> bm!20204 m!240931))

(assert (=> b!213080 m!240817))

(assert (=> b!213080 m!240817))

(declare-fun m!240943 () Bool)

(assert (=> b!213080 m!240943))

(declare-fun m!240945 () Bool)

(assert (=> b!213079 m!240945))

(assert (=> b!212888 d!58103))

(declare-fun d!58105 () Bool)

(declare-fun e!138616 () Bool)

(assert (=> d!58105 e!138616))

(declare-fun res!104258 () Bool)

(assert (=> d!58105 (=> (not res!104258) (not e!138616))))

(declare-fun lt!110039 () ListLongMap!3139)

(assert (=> d!58105 (= res!104258 (contains!1415 lt!110039 (_1!2116 (tuple2!4213 k0!843 v!520))))))

(declare-fun lt!110038 () List!3123)

(assert (=> d!58105 (= lt!110039 (ListLongMap!3140 lt!110038))))

(declare-fun lt!110041 () Unit!6457)

(declare-fun lt!110040 () Unit!6457)

(assert (=> d!58105 (= lt!110041 lt!110040)))

(assert (=> d!58105 (= (getValueByKey!255 lt!110038 (_1!2116 (tuple2!4213 k0!843 v!520))) (Some!260 (_2!2116 (tuple2!4213 k0!843 v!520))))))

(assert (=> d!58105 (= lt!110040 (lemmaContainsTupThenGetReturnValue!144 lt!110038 (_1!2116 (tuple2!4213 k0!843 v!520)) (_2!2116 (tuple2!4213 k0!843 v!520))))))

(assert (=> d!58105 (= lt!110038 (insertStrictlySorted!146 (toList!1585 lt!109886) (_1!2116 (tuple2!4213 k0!843 v!520)) (_2!2116 (tuple2!4213 k0!843 v!520))))))

(assert (=> d!58105 (= (+!578 lt!109886 (tuple2!4213 k0!843 v!520)) lt!110039)))

(declare-fun b!213089 () Bool)

(declare-fun res!104259 () Bool)

(assert (=> b!213089 (=> (not res!104259) (not e!138616))))

(assert (=> b!213089 (= res!104259 (= (getValueByKey!255 (toList!1585 lt!110039) (_1!2116 (tuple2!4213 k0!843 v!520))) (Some!260 (_2!2116 (tuple2!4213 k0!843 v!520)))))))

(declare-fun b!213090 () Bool)

(assert (=> b!213090 (= e!138616 (contains!1416 (toList!1585 lt!110039) (tuple2!4213 k0!843 v!520)))))

(assert (= (and d!58105 res!104258) b!213089))

(assert (= (and b!213089 res!104259) b!213090))

(declare-fun m!240947 () Bool)

(assert (=> d!58105 m!240947))

(declare-fun m!240949 () Bool)

(assert (=> d!58105 m!240949))

(declare-fun m!240951 () Bool)

(assert (=> d!58105 m!240951))

(declare-fun m!240953 () Bool)

(assert (=> d!58105 m!240953))

(declare-fun m!240955 () Bool)

(assert (=> b!213089 m!240955))

(declare-fun m!240957 () Bool)

(assert (=> b!213090 m!240957))

(assert (=> b!212888 d!58105))

(declare-fun b!213091 () Bool)

(declare-fun e!138626 () Bool)

(declare-fun lt!110044 () ListLongMap!3139)

(assert (=> b!213091 (= e!138626 (= (apply!198 lt!110044 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun b!213092 () Bool)

(declare-fun e!138619 () Bool)

(declare-fun e!138621 () Bool)

(assert (=> b!213092 (= e!138619 e!138621)))

(declare-fun c!35901 () Bool)

(assert (=> b!213092 (= c!35901 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!20205 () Bool)

(declare-fun call!20214 () ListLongMap!3139)

(declare-fun call!20213 () ListLongMap!3139)

(assert (=> bm!20205 (= call!20214 call!20213)))

(declare-fun b!213093 () Bool)

(declare-fun e!138618 () Bool)

(assert (=> b!213093 (= e!138618 (validKeyInArray!0 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!213094 () Bool)

(declare-fun e!138624 () ListLongMap!3139)

(declare-fun call!20211 () ListLongMap!3139)

(assert (=> b!213094 (= e!138624 (+!578 call!20211 (tuple2!4213 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(declare-fun b!213095 () Bool)

(declare-fun e!138629 () Unit!6457)

(declare-fun Unit!6460 () Unit!6457)

(assert (=> b!213095 (= e!138629 Unit!6460)))

(declare-fun b!213096 () Bool)

(declare-fun call!20210 () Bool)

(assert (=> b!213096 (= e!138621 (not call!20210))))

(declare-fun b!213097 () Bool)

(assert (=> b!213097 (= e!138621 e!138626)))

(declare-fun res!104264 () Bool)

(assert (=> b!213097 (= res!104264 call!20210)))

(assert (=> b!213097 (=> (not res!104264) (not e!138626))))

(declare-fun b!213098 () Bool)

(declare-fun e!138627 () ListLongMap!3139)

(declare-fun call!20212 () ListLongMap!3139)

(assert (=> b!213098 (= e!138627 call!20212)))

(declare-fun b!213099 () Bool)

(declare-fun res!104261 () Bool)

(assert (=> b!213099 (=> (not res!104261) (not e!138619))))

(declare-fun e!138617 () Bool)

(assert (=> b!213099 (= res!104261 e!138617)))

(declare-fun c!35905 () Bool)

(assert (=> b!213099 (= c!35905 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!20207 () Bool)

(declare-fun call!20209 () Bool)

(assert (=> bm!20207 (= call!20209 (contains!1415 lt!110044 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!213100 () Bool)

(declare-fun res!104266 () Bool)

(assert (=> b!213100 (=> (not res!104266) (not e!138619))))

(declare-fun e!138623 () Bool)

(assert (=> b!213100 (= res!104266 e!138623)))

(declare-fun res!104260 () Bool)

(assert (=> b!213100 (=> res!104260 e!138623)))

(declare-fun e!138622 () Bool)

(assert (=> b!213100 (= res!104260 (not e!138622))))

(declare-fun res!104263 () Bool)

(assert (=> b!213100 (=> (not res!104263) (not e!138622))))

(assert (=> b!213100 (= res!104263 (bvslt #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(declare-fun b!213101 () Bool)

(declare-fun e!138625 () ListLongMap!3139)

(assert (=> b!213101 (= e!138625 call!20212)))

(declare-fun call!20208 () ListLongMap!3139)

(declare-fun bm!20208 () Bool)

(assert (=> bm!20208 (= call!20208 (getCurrentListMapNoExtraKeys!510 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!213102 () Bool)

(declare-fun e!138620 () Bool)

(assert (=> b!213102 (= e!138620 (= (apply!198 lt!110044 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!213103 () Bool)

(assert (=> b!213103 (= e!138617 (not call!20209))))

(declare-fun b!213104 () Bool)

(assert (=> b!213104 (= e!138622 (validKeyInArray!0 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!213105 () Bool)

(assert (=> b!213105 (= e!138617 e!138620)))

(declare-fun res!104267 () Bool)

(assert (=> b!213105 (= res!104267 call!20209)))

(assert (=> b!213105 (=> (not res!104267) (not e!138620))))

(declare-fun e!138628 () Bool)

(declare-fun b!213106 () Bool)

(assert (=> b!213106 (= e!138628 (= (apply!198 lt!110044 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)) (get!2581 (select (arr!4823 _values!649) #b00000000000000000000000000000000) (dynLambda!536 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!213106 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5148 _values!649)))))

(assert (=> b!213106 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(declare-fun bm!20209 () Bool)

(assert (=> bm!20209 (= call!20212 call!20211)))

(declare-fun bm!20210 () Bool)

(declare-fun c!35902 () Bool)

(declare-fun c!35904 () Bool)

(assert (=> bm!20210 (= call!20211 (+!578 (ite c!35904 call!20208 (ite c!35902 call!20213 call!20214)) (ite (or c!35904 c!35902) (tuple2!4213 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4213 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun b!213107 () Bool)

(declare-fun c!35906 () Bool)

(assert (=> b!213107 (= c!35906 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!213107 (= e!138627 e!138625)))

(declare-fun b!213108 () Bool)

(assert (=> b!213108 (= e!138625 call!20214)))

(declare-fun b!213109 () Bool)

(declare-fun lt!110056 () Unit!6457)

(assert (=> b!213109 (= e!138629 lt!110056)))

(declare-fun lt!110055 () ListLongMap!3139)

(assert (=> b!213109 (= lt!110055 (getCurrentListMapNoExtraKeys!510 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110062 () (_ BitVec 64))

(assert (=> b!213109 (= lt!110062 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110050 () (_ BitVec 64))

(assert (=> b!213109 (= lt!110050 (select (arr!4824 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110042 () Unit!6457)

(assert (=> b!213109 (= lt!110042 (addStillContains!174 lt!110055 lt!110062 zeroValue!615 lt!110050))))

(assert (=> b!213109 (contains!1415 (+!578 lt!110055 (tuple2!4213 lt!110062 zeroValue!615)) lt!110050)))

(declare-fun lt!110043 () Unit!6457)

(assert (=> b!213109 (= lt!110043 lt!110042)))

(declare-fun lt!110047 () ListLongMap!3139)

(assert (=> b!213109 (= lt!110047 (getCurrentListMapNoExtraKeys!510 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110048 () (_ BitVec 64))

(assert (=> b!213109 (= lt!110048 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110060 () (_ BitVec 64))

(assert (=> b!213109 (= lt!110060 (select (arr!4824 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110049 () Unit!6457)

(assert (=> b!213109 (= lt!110049 (addApplyDifferent!174 lt!110047 lt!110048 minValue!615 lt!110060))))

(assert (=> b!213109 (= (apply!198 (+!578 lt!110047 (tuple2!4213 lt!110048 minValue!615)) lt!110060) (apply!198 lt!110047 lt!110060))))

(declare-fun lt!110051 () Unit!6457)

(assert (=> b!213109 (= lt!110051 lt!110049)))

(declare-fun lt!110052 () ListLongMap!3139)

(assert (=> b!213109 (= lt!110052 (getCurrentListMapNoExtraKeys!510 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110054 () (_ BitVec 64))

(assert (=> b!213109 (= lt!110054 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110058 () (_ BitVec 64))

(assert (=> b!213109 (= lt!110058 (select (arr!4824 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!110059 () Unit!6457)

(assert (=> b!213109 (= lt!110059 (addApplyDifferent!174 lt!110052 lt!110054 zeroValue!615 lt!110058))))

(assert (=> b!213109 (= (apply!198 (+!578 lt!110052 (tuple2!4213 lt!110054 zeroValue!615)) lt!110058) (apply!198 lt!110052 lt!110058))))

(declare-fun lt!110063 () Unit!6457)

(assert (=> b!213109 (= lt!110063 lt!110059)))

(declare-fun lt!110046 () ListLongMap!3139)

(assert (=> b!213109 (= lt!110046 (getCurrentListMapNoExtraKeys!510 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110057 () (_ BitVec 64))

(assert (=> b!213109 (= lt!110057 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!110053 () (_ BitVec 64))

(assert (=> b!213109 (= lt!110053 (select (arr!4824 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!213109 (= lt!110056 (addApplyDifferent!174 lt!110046 lt!110057 minValue!615 lt!110053))))

(assert (=> b!213109 (= (apply!198 (+!578 lt!110046 (tuple2!4213 lt!110057 minValue!615)) lt!110053) (apply!198 lt!110046 lt!110053))))

(declare-fun bm!20206 () Bool)

(assert (=> bm!20206 (= call!20210 (contains!1415 lt!110044 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!58107 () Bool)

(assert (=> d!58107 e!138619))

(declare-fun res!104268 () Bool)

(assert (=> d!58107 (=> (not res!104268) (not e!138619))))

(assert (=> d!58107 (= res!104268 (or (bvsge #b00000000000000000000000000000000 (size!5149 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5149 _keys!825)))))))

(declare-fun lt!110061 () ListLongMap!3139)

(assert (=> d!58107 (= lt!110044 lt!110061)))

(declare-fun lt!110045 () Unit!6457)

(assert (=> d!58107 (= lt!110045 e!138629)))

(declare-fun c!35903 () Bool)

(assert (=> d!58107 (= c!35903 e!138618)))

(declare-fun res!104265 () Bool)

(assert (=> d!58107 (=> (not res!104265) (not e!138618))))

(assert (=> d!58107 (= res!104265 (bvslt #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(assert (=> d!58107 (= lt!110061 e!138624)))

(assert (=> d!58107 (= c!35904 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!58107 (validMask!0 mask!1149)))

(assert (=> d!58107 (= (getCurrentListMap!1111 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!110044)))

(declare-fun b!213110 () Bool)

(assert (=> b!213110 (= e!138624 e!138627)))

(assert (=> b!213110 (= c!35902 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!213111 () Bool)

(assert (=> b!213111 (= e!138623 e!138628)))

(declare-fun res!104262 () Bool)

(assert (=> b!213111 (=> (not res!104262) (not e!138628))))

(assert (=> b!213111 (= res!104262 (contains!1415 lt!110044 (select (arr!4824 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!213111 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5149 _keys!825)))))

(declare-fun bm!20211 () Bool)

(assert (=> bm!20211 (= call!20213 call!20208)))

(assert (= (and d!58107 c!35904) b!213094))

(assert (= (and d!58107 (not c!35904)) b!213110))

(assert (= (and b!213110 c!35902) b!213098))

(assert (= (and b!213110 (not c!35902)) b!213107))

(assert (= (and b!213107 c!35906) b!213101))

(assert (= (and b!213107 (not c!35906)) b!213108))

(assert (= (or b!213101 b!213108) bm!20205))

(assert (= (or b!213098 bm!20205) bm!20211))

(assert (= (or b!213098 b!213101) bm!20209))

(assert (= (or b!213094 bm!20211) bm!20208))

(assert (= (or b!213094 bm!20209) bm!20210))

(assert (= (and d!58107 res!104265) b!213093))

(assert (= (and d!58107 c!35903) b!213109))

(assert (= (and d!58107 (not c!35903)) b!213095))

(assert (= (and d!58107 res!104268) b!213100))

(assert (= (and b!213100 res!104263) b!213104))

(assert (= (and b!213100 (not res!104260)) b!213111))

(assert (= (and b!213111 res!104262) b!213106))

(assert (= (and b!213100 res!104266) b!213099))

(assert (= (and b!213099 c!35905) b!213105))

(assert (= (and b!213099 (not c!35905)) b!213103))

(assert (= (and b!213105 res!104267) b!213102))

(assert (= (or b!213105 b!213103) bm!20207))

(assert (= (and b!213099 res!104261) b!213092))

(assert (= (and b!213092 c!35901) b!213097))

(assert (= (and b!213092 (not c!35901)) b!213096))

(assert (= (and b!213097 res!104264) b!213091))

(assert (= (or b!213097 b!213096) bm!20206))

(declare-fun b_lambda!7795 () Bool)

(assert (=> (not b_lambda!7795) (not b!213106)))

(assert (=> b!213106 t!8085))

(declare-fun b_and!12505 () Bool)

(assert (= b_and!12503 (and (=> t!8085 result!5023) b_and!12505)))

(declare-fun m!240959 () Bool)

(assert (=> b!213091 m!240959))

(declare-fun m!240961 () Bool)

(assert (=> b!213094 m!240961))

(declare-fun m!240963 () Bool)

(assert (=> bm!20207 m!240963))

(assert (=> d!58107 m!240739))

(assert (=> bm!20208 m!240733))

(assert (=> b!213093 m!240817))

(assert (=> b!213093 m!240817))

(assert (=> b!213093 m!240825))

(declare-fun m!240965 () Bool)

(assert (=> bm!20206 m!240965))

(assert (=> b!213106 m!240817))

(assert (=> b!213106 m!240817))

(declare-fun m!240967 () Bool)

(assert (=> b!213106 m!240967))

(assert (=> b!213106 m!240851))

(assert (=> b!213106 m!240847))

(assert (=> b!213106 m!240851))

(assert (=> b!213106 m!240853))

(assert (=> b!213106 m!240847))

(declare-fun m!240969 () Bool)

(assert (=> b!213109 m!240969))

(declare-fun m!240971 () Bool)

(assert (=> b!213109 m!240971))

(assert (=> b!213109 m!240969))

(assert (=> b!213109 m!240817))

(declare-fun m!240973 () Bool)

(assert (=> b!213109 m!240973))

(declare-fun m!240975 () Bool)

(assert (=> b!213109 m!240975))

(declare-fun m!240977 () Bool)

(assert (=> b!213109 m!240977))

(declare-fun m!240979 () Bool)

(assert (=> b!213109 m!240979))

(declare-fun m!240981 () Bool)

(assert (=> b!213109 m!240981))

(declare-fun m!240983 () Bool)

(assert (=> b!213109 m!240983))

(declare-fun m!240985 () Bool)

(assert (=> b!213109 m!240985))

(declare-fun m!240987 () Bool)

(assert (=> b!213109 m!240987))

(declare-fun m!240989 () Bool)

(assert (=> b!213109 m!240989))

(declare-fun m!240991 () Bool)

(assert (=> b!213109 m!240991))

(assert (=> b!213109 m!240979))

(assert (=> b!213109 m!240975))

(declare-fun m!240993 () Bool)

(assert (=> b!213109 m!240993))

(declare-fun m!240995 () Bool)

(assert (=> b!213109 m!240995))

(assert (=> b!213109 m!240733))

(declare-fun m!240997 () Bool)

(assert (=> b!213109 m!240997))

(assert (=> b!213109 m!240985))

(declare-fun m!240999 () Bool)

(assert (=> b!213102 m!240999))

(assert (=> b!213111 m!240817))

(assert (=> b!213111 m!240817))

(declare-fun m!241001 () Bool)

(assert (=> b!213111 m!241001))

(declare-fun m!241003 () Bool)

(assert (=> bm!20210 m!241003))

(assert (=> b!213104 m!240817))

(assert (=> b!213104 m!240817))

(assert (=> b!213104 m!240825))

(assert (=> b!212888 d!58107))

(declare-fun d!58109 () Bool)

(assert (=> d!58109 (= (validMask!0 mask!1149) (and (or (= mask!1149 #b00000000000000000000000000000111) (= mask!1149 #b00000000000000000000000000001111) (= mask!1149 #b00000000000000000000000000011111) (= mask!1149 #b00000000000000000000000000111111) (= mask!1149 #b00000000000000000000000001111111) (= mask!1149 #b00000000000000000000000011111111) (= mask!1149 #b00000000000000000000000111111111) (= mask!1149 #b00000000000000000000001111111111) (= mask!1149 #b00000000000000000000011111111111) (= mask!1149 #b00000000000000000000111111111111) (= mask!1149 #b00000000000000000001111111111111) (= mask!1149 #b00000000000000000011111111111111) (= mask!1149 #b00000000000000000111111111111111) (= mask!1149 #b00000000000000001111111111111111) (= mask!1149 #b00000000000000011111111111111111) (= mask!1149 #b00000000000000111111111111111111) (= mask!1149 #b00000000000001111111111111111111) (= mask!1149 #b00000000000011111111111111111111) (= mask!1149 #b00000000000111111111111111111111) (= mask!1149 #b00000000001111111111111111111111) (= mask!1149 #b00000000011111111111111111111111) (= mask!1149 #b00000000111111111111111111111111) (= mask!1149 #b00000001111111111111111111111111) (= mask!1149 #b00000011111111111111111111111111) (= mask!1149 #b00000111111111111111111111111111) (= mask!1149 #b00001111111111111111111111111111) (= mask!1149 #b00011111111111111111111111111111) (= mask!1149 #b00111111111111111111111111111111)) (bvsle mask!1149 #b00111111111111111111111111111111)))))

(assert (=> start!21160 d!58109))

(declare-fun d!58111 () Bool)

(assert (=> d!58111 (= (array_inv!3181 _values!649) (bvsge (size!5148 _values!649) #b00000000000000000000000000000000))))

(assert (=> start!21160 d!58111))

(declare-fun d!58113 () Bool)

(assert (=> d!58113 (= (array_inv!3182 _keys!825) (bvsge (size!5149 _keys!825) #b00000000000000000000000000000000))))

(assert (=> start!21160 d!58113))

(declare-fun condMapEmpty!9323 () Bool)

(declare-fun mapDefault!9323 () ValueCell!2397)

(assert (=> mapNonEmpty!9317 (= condMapEmpty!9323 (= mapRest!9317 ((as const (Array (_ BitVec 32) ValueCell!2397)) mapDefault!9323)))))

(declare-fun e!138635 () Bool)

(declare-fun mapRes!9323 () Bool)

(assert (=> mapNonEmpty!9317 (= tp!19924 (and e!138635 mapRes!9323))))

(declare-fun b!213118 () Bool)

(declare-fun e!138634 () Bool)

(assert (=> b!213118 (= e!138634 tp_is_empty!5481)))

(declare-fun b!213119 () Bool)

(assert (=> b!213119 (= e!138635 tp_is_empty!5481)))

(declare-fun mapIsEmpty!9323 () Bool)

(assert (=> mapIsEmpty!9323 mapRes!9323))

(declare-fun mapNonEmpty!9323 () Bool)

(declare-fun tp!19934 () Bool)

(assert (=> mapNonEmpty!9323 (= mapRes!9323 (and tp!19934 e!138634))))

(declare-fun mapKey!9323 () (_ BitVec 32))

(declare-fun mapValue!9323 () ValueCell!2397)

(declare-fun mapRest!9323 () (Array (_ BitVec 32) ValueCell!2397))

(assert (=> mapNonEmpty!9323 (= mapRest!9317 (store mapRest!9323 mapKey!9323 mapValue!9323))))

(assert (= (and mapNonEmpty!9317 condMapEmpty!9323) mapIsEmpty!9323))

(assert (= (and mapNonEmpty!9317 (not condMapEmpty!9323)) mapNonEmpty!9323))

(assert (= (and mapNonEmpty!9323 ((_ is ValueCellFull!2397) mapValue!9323)) b!213118))

(assert (= (and mapNonEmpty!9317 ((_ is ValueCellFull!2397) mapDefault!9323)) b!213119))

(declare-fun m!241005 () Bool)

(assert (=> mapNonEmpty!9323 m!241005))

(declare-fun b_lambda!7797 () Bool)

(assert (= b_lambda!7793 (or (and start!21160 b_free!5619) b_lambda!7797)))

(declare-fun b_lambda!7799 () Bool)

(assert (= b_lambda!7785 (or (and start!21160 b_free!5619) b_lambda!7799)))

(declare-fun b_lambda!7801 () Bool)

(assert (= b_lambda!7789 (or (and start!21160 b_free!5619) b_lambda!7801)))

(declare-fun b_lambda!7803 () Bool)

(assert (= b_lambda!7787 (or (and start!21160 b_free!5619) b_lambda!7803)))

(declare-fun b_lambda!7805 () Bool)

(assert (= b_lambda!7795 (or (and start!21160 b_free!5619) b_lambda!7805)))

(declare-fun b_lambda!7807 () Bool)

(assert (= b_lambda!7791 (or (and start!21160 b_free!5619) b_lambda!7807)))

(check-sat (not b_lambda!7799) (not b!213049) (not b!213111) (not b!213087) (not b_lambda!7801) (not b!213089) (not b!212934) (not b!212991) (not b!212937) (not b!212999) (not d!58097) (not mapNonEmpty!9323) (not b!213090) (not bm!20173) (not b_lambda!7803) (not b!213067) (not b!212947) (not b!212966) (not bm!20208) (not b!212962) (not bm!20176) (not b!213077) (not b_lambda!7807) (not bm!20170) (not d!58087) (not bm!20203) (not b_lambda!7797) (not d!58099) (not b!213085) (not bm!20192) b_and!12505 (not b!213078) (not b!212935) (not b!212993) (not b!213093) (not b!213091) (not b!213047) (not b!213080) (not d!58085) (not b!213083) (not b!212965) (not b!213104) (not b!212936) (not b!213081) (not d!58101) (not b!213065) (not b!213079) (not b_lambda!7805) (not b!213094) (not b!213074) (not bm!20204) (not b!213060) (not b!212949) (not bm!20206) (not b_next!5619) (not bm!20194) (not b!213106) (not bm!20196) tp_is_empty!5481 (not d!58107) (not bm!20202) (not d!58103) (not b!213001) (not b!213058) (not d!58105) (not bm!20207) (not b!213109) (not b!212950) (not b!213050) (not bm!20210) (not b!212994) (not b!213102) (not bm!20193) (not b!213062) (not d!58091) (not b!212992) (not b!212951) (not b!212995) (not b!212997))
(check-sat b_and!12505 (not b_next!5619))
