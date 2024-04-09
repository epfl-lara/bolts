; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!38012 () Bool)

(assert start!38012)

(declare-fun b_free!8973 () Bool)

(declare-fun b_next!8973 () Bool)

(assert (=> start!38012 (= b_free!8973 (not b_next!8973))))

(declare-fun tp!31689 () Bool)

(declare-fun b_and!16305 () Bool)

(assert (=> start!38012 (= tp!31689 b_and!16305)))

(declare-fun b!390898 () Bool)

(declare-fun res!223804 () Bool)

(declare-fun e!236779 () Bool)

(assert (=> b!390898 (=> (not res!223804) (not e!236779))))

(declare-datatypes ((array!23167 0))(
  ( (array!23168 (arr!11043 (Array (_ BitVec 32) (_ BitVec 64))) (size!11395 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!23167)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!23167 (_ BitVec 32)) Bool)

(assert (=> b!390898 (= res!223804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!390899 () Bool)

(declare-fun res!223797 () Bool)

(assert (=> b!390899 (=> (not res!223797) (not e!236779))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!390899 (= res!223797 (or (= (select (arr!11043 _keys!658) i!548) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11043 _keys!658) i!548) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!390900 () Bool)

(declare-fun e!236776 () Bool)

(declare-fun k0!778 () (_ BitVec 64))

(assert (=> b!390900 (= e!236776 (not (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!236777 () Bool)

(assert (=> b!390900 e!236777))

(declare-fun res!223799 () Bool)

(assert (=> b!390900 (=> (not res!223799) (not e!236777))))

(declare-datatypes ((V!13965 0))(
  ( (V!13966 (val!4867 Int)) )
))
(declare-datatypes ((tuple2!6494 0))(
  ( (tuple2!6495 (_1!3257 (_ BitVec 64)) (_2!3257 V!13965)) )
))
(declare-fun lt!184420 () tuple2!6494)

(declare-datatypes ((List!6376 0))(
  ( (Nil!6373) (Cons!6372 (h!7228 tuple2!6494) (t!11546 List!6376)) )
))
(declare-datatypes ((ListLongMap!5421 0))(
  ( (ListLongMap!5422 (toList!2726 List!6376)) )
))
(declare-fun lt!184415 () ListLongMap!5421)

(declare-fun lt!184418 () ListLongMap!5421)

(declare-fun +!1024 (ListLongMap!5421 tuple2!6494) ListLongMap!5421)

(assert (=> b!390900 (= res!223799 (= lt!184415 (+!1024 lt!184418 lt!184420)))))

(declare-fun zeroValue!472 () V!13965)

(assert (=> b!390900 (= lt!184420 (tuple2!6495 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun b!390901 () Bool)

(declare-fun e!236782 () Bool)

(declare-fun tp_is_empty!9645 () Bool)

(assert (=> b!390901 (= e!236782 tp_is_empty!9645)))

(declare-fun mapIsEmpty!16050 () Bool)

(declare-fun mapRes!16050 () Bool)

(assert (=> mapIsEmpty!16050 mapRes!16050))

(declare-fun b!390902 () Bool)

(declare-fun e!236780 () Bool)

(assert (=> b!390902 (= e!236780 tp_is_empty!9645)))

(declare-fun b!390903 () Bool)

(declare-fun res!223803 () Bool)

(assert (=> b!390903 (=> (not res!223803) (not e!236779))))

(declare-datatypes ((List!6377 0))(
  ( (Nil!6374) (Cons!6373 (h!7229 (_ BitVec 64)) (t!11547 List!6377)) )
))
(declare-fun arrayNoDuplicates!0 (array!23167 (_ BitVec 32) List!6377) Bool)

(assert (=> b!390903 (= res!223803 (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6374))))

(declare-fun b!390904 () Bool)

(declare-fun e!236775 () Bool)

(assert (=> b!390904 (= e!236775 (not e!236776))))

(declare-fun res!223801 () Bool)

(assert (=> b!390904 (=> res!223801 e!236776)))

(declare-fun extraKeys!453 () (_ BitVec 32))

(assert (=> b!390904 (= res!223801 (or (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((ValueCell!4479 0))(
  ( (ValueCellFull!4479 (v!7084 V!13965)) (EmptyCell!4479) )
))
(declare-datatypes ((array!23169 0))(
  ( (array!23170 (arr!11044 (Array (_ BitVec 32) ValueCell!4479)) (size!11396 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!23169)

(declare-fun lt!184421 () ListLongMap!5421)

(declare-fun defaultEntry!514 () Int)

(declare-fun minValue!472 () V!13965)

(declare-fun getCurrentListMap!2092 (array!23167 array!23169 (_ BitVec 32) (_ BitVec 32) V!13965 V!13965 (_ BitVec 32) Int) ListLongMap!5421)

(assert (=> b!390904 (= lt!184421 (getCurrentListMap!2092 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184419 () array!23169)

(declare-fun lt!184413 () array!23167)

(assert (=> b!390904 (= lt!184415 (getCurrentListMap!2092 lt!184413 lt!184419 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184417 () ListLongMap!5421)

(assert (=> b!390904 (and (= lt!184418 lt!184417) (= lt!184417 lt!184418))))

(declare-fun v!373 () V!13965)

(declare-fun lt!184416 () ListLongMap!5421)

(assert (=> b!390904 (= lt!184417 (+!1024 lt!184416 (tuple2!6495 k0!778 v!373)))))

(declare-datatypes ((Unit!11939 0))(
  ( (Unit!11940) )
))
(declare-fun lt!184414 () Unit!11939)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!249 (array!23167 array!23169 (_ BitVec 32) (_ BitVec 32) V!13965 V!13965 (_ BitVec 32) (_ BitVec 64) V!13965 (_ BitVec 32) Int) Unit!11939)

(assert (=> b!390904 (= lt!184414 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!249 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun getCurrentListMapNoExtraKeys!954 (array!23167 array!23169 (_ BitVec 32) (_ BitVec 32) V!13965 V!13965 (_ BitVec 32) Int) ListLongMap!5421)

(assert (=> b!390904 (= lt!184418 (getCurrentListMapNoExtraKeys!954 lt!184413 lt!184419 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> b!390904 (= lt!184419 (array!23170 (store (arr!11044 _values!506) i!548 (ValueCellFull!4479 v!373)) (size!11396 _values!506)))))

(assert (=> b!390904 (= lt!184416 (getCurrentListMapNoExtraKeys!954 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!390906 () Bool)

(declare-fun res!223805 () Bool)

(assert (=> b!390906 (=> (not res!223805) (not e!236779))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!390906 (= res!223805 (validKeyInArray!0 k0!778))))

(declare-fun b!390907 () Bool)

(declare-fun res!223795 () Bool)

(assert (=> b!390907 (=> (not res!223795) (not e!236779))))

(assert (=> b!390907 (= res!223795 (and (= (size!11396 _values!506) (bvadd #b00000000000000000000000000000001 mask!970)) (= (size!11395 _keys!658) (size!11396 _values!506)) (bvsge mask!970 #b00000000000000000000000000000000) (bvsge extraKeys!453 #b00000000000000000000000000000000) (bvsle extraKeys!453 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!16050 () Bool)

(declare-fun tp!31688 () Bool)

(assert (=> mapNonEmpty!16050 (= mapRes!16050 (and tp!31688 e!236780))))

(declare-fun mapRest!16050 () (Array (_ BitVec 32) ValueCell!4479))

(declare-fun mapValue!16050 () ValueCell!4479)

(declare-fun mapKey!16050 () (_ BitVec 32))

(assert (=> mapNonEmpty!16050 (= (arr!11044 _values!506) (store mapRest!16050 mapKey!16050 mapValue!16050))))

(declare-fun b!390908 () Bool)

(assert (=> b!390908 (= e!236779 e!236775)))

(declare-fun res!223798 () Bool)

(assert (=> b!390908 (=> (not res!223798) (not e!236775))))

(assert (=> b!390908 (= res!223798 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!184413 mask!970))))

(assert (=> b!390908 (= lt!184413 (array!23168 (store (arr!11043 _keys!658) i!548 k0!778) (size!11395 _keys!658)))))

(declare-fun b!390909 () Bool)

(declare-fun res!223806 () Bool)

(assert (=> b!390909 (=> (not res!223806) (not e!236779))))

(declare-fun arrayContainsKey!0 (array!23167 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!390909 (= res!223806 (not (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000)))))

(declare-fun b!390910 () Bool)

(assert (=> b!390910 (= e!236777 (= lt!184415 (+!1024 lt!184417 lt!184420)))))

(declare-fun b!390911 () Bool)

(declare-fun res!223796 () Bool)

(assert (=> b!390911 (=> (not res!223796) (not e!236777))))

(assert (=> b!390911 (= res!223796 (= lt!184421 (+!1024 lt!184416 lt!184420)))))

(declare-fun b!390912 () Bool)

(declare-fun e!236778 () Bool)

(assert (=> b!390912 (= e!236778 (and e!236782 mapRes!16050))))

(declare-fun condMapEmpty!16050 () Bool)

(declare-fun mapDefault!16050 () ValueCell!4479)

(assert (=> b!390912 (= condMapEmpty!16050 (= (arr!11044 _values!506) ((as const (Array (_ BitVec 32) ValueCell!4479)) mapDefault!16050)))))

(declare-fun b!390913 () Bool)

(declare-fun res!223802 () Bool)

(assert (=> b!390913 (=> (not res!223802) (not e!236779))))

(assert (=> b!390913 (= res!223802 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11395 _keys!658))))))

(declare-fun b!390905 () Bool)

(declare-fun res!223807 () Bool)

(assert (=> b!390905 (=> (not res!223807) (not e!236775))))

(assert (=> b!390905 (= res!223807 (arrayNoDuplicates!0 lt!184413 #b00000000000000000000000000000000 Nil!6374))))

(declare-fun res!223800 () Bool)

(assert (=> start!38012 (=> (not res!223800) (not e!236779))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!38012 (= res!223800 (validMask!0 mask!970))))

(assert (=> start!38012 e!236779))

(declare-fun array_inv!8098 (array!23169) Bool)

(assert (=> start!38012 (and (array_inv!8098 _values!506) e!236778)))

(assert (=> start!38012 tp!31689))

(assert (=> start!38012 true))

(assert (=> start!38012 tp_is_empty!9645))

(declare-fun array_inv!8099 (array!23167) Bool)

(assert (=> start!38012 (array_inv!8099 _keys!658)))

(assert (= (and start!38012 res!223800) b!390907))

(assert (= (and b!390907 res!223795) b!390898))

(assert (= (and b!390898 res!223804) b!390903))

(assert (= (and b!390903 res!223803) b!390913))

(assert (= (and b!390913 res!223802) b!390906))

(assert (= (and b!390906 res!223805) b!390899))

(assert (= (and b!390899 res!223797) b!390909))

(assert (= (and b!390909 res!223806) b!390908))

(assert (= (and b!390908 res!223798) b!390905))

(assert (= (and b!390905 res!223807) b!390904))

(assert (= (and b!390904 (not res!223801)) b!390900))

(assert (= (and b!390900 res!223799) b!390911))

(assert (= (and b!390911 res!223796) b!390910))

(assert (= (and b!390912 condMapEmpty!16050) mapIsEmpty!16050))

(assert (= (and b!390912 (not condMapEmpty!16050)) mapNonEmpty!16050))

(get-info :version)

(assert (= (and mapNonEmpty!16050 ((_ is ValueCellFull!4479) mapValue!16050)) b!390902))

(assert (= (and b!390912 ((_ is ValueCellFull!4479) mapDefault!16050)) b!390901))

(assert (= start!38012 b!390912))

(declare-fun m!387281 () Bool)

(assert (=> b!390909 m!387281))

(declare-fun m!387283 () Bool)

(assert (=> start!38012 m!387283))

(declare-fun m!387285 () Bool)

(assert (=> start!38012 m!387285))

(declare-fun m!387287 () Bool)

(assert (=> start!38012 m!387287))

(declare-fun m!387289 () Bool)

(assert (=> b!390899 m!387289))

(declare-fun m!387291 () Bool)

(assert (=> b!390906 m!387291))

(declare-fun m!387293 () Bool)

(assert (=> b!390904 m!387293))

(declare-fun m!387295 () Bool)

(assert (=> b!390904 m!387295))

(declare-fun m!387297 () Bool)

(assert (=> b!390904 m!387297))

(declare-fun m!387299 () Bool)

(assert (=> b!390904 m!387299))

(declare-fun m!387301 () Bool)

(assert (=> b!390904 m!387301))

(declare-fun m!387303 () Bool)

(assert (=> b!390904 m!387303))

(declare-fun m!387305 () Bool)

(assert (=> b!390904 m!387305))

(declare-fun m!387307 () Bool)

(assert (=> mapNonEmpty!16050 m!387307))

(declare-fun m!387309 () Bool)

(assert (=> b!390910 m!387309))

(declare-fun m!387311 () Bool)

(assert (=> b!390898 m!387311))

(declare-fun m!387313 () Bool)

(assert (=> b!390900 m!387313))

(declare-fun m!387315 () Bool)

(assert (=> b!390908 m!387315))

(declare-fun m!387317 () Bool)

(assert (=> b!390908 m!387317))

(declare-fun m!387319 () Bool)

(assert (=> b!390911 m!387319))

(declare-fun m!387321 () Bool)

(assert (=> b!390903 m!387321))

(declare-fun m!387323 () Bool)

(assert (=> b!390905 m!387323))

(check-sat (not b!390906) (not b!390909) (not mapNonEmpty!16050) (not b!390910) b_and!16305 (not b!390911) tp_is_empty!9645 (not b!390904) (not b!390898) (not b!390903) (not b_next!8973) (not b!390900) (not b!390905) (not start!38012) (not b!390908))
(check-sat b_and!16305 (not b_next!8973))
(get-model)

(declare-fun b!390970 () Bool)

(declare-fun e!236813 () Bool)

(declare-fun call!27584 () Bool)

(assert (=> b!390970 (= e!236813 call!27584)))

(declare-fun b!390971 () Bool)

(declare-fun e!236814 () Bool)

(declare-fun e!236815 () Bool)

(assert (=> b!390971 (= e!236814 e!236815)))

(declare-fun c!54158 () Bool)

(assert (=> b!390971 (= c!54158 (validKeyInArray!0 (select (arr!11043 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!390972 () Bool)

(assert (=> b!390972 (= e!236815 e!236813)))

(declare-fun lt!184456 () (_ BitVec 64))

(assert (=> b!390972 (= lt!184456 (select (arr!11043 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!184455 () Unit!11939)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!23167 (_ BitVec 64) (_ BitVec 32)) Unit!11939)

(assert (=> b!390972 (= lt!184455 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!658 lt!184456 #b00000000000000000000000000000000))))

(assert (=> b!390972 (arrayContainsKey!0 _keys!658 lt!184456 #b00000000000000000000000000000000)))

(declare-fun lt!184457 () Unit!11939)

(assert (=> b!390972 (= lt!184457 lt!184455)))

(declare-fun res!223852 () Bool)

(declare-datatypes ((SeekEntryResult!3502 0))(
  ( (MissingZero!3502 (index!16187 (_ BitVec 32))) (Found!3502 (index!16188 (_ BitVec 32))) (Intermediate!3502 (undefined!4314 Bool) (index!16189 (_ BitVec 32)) (x!38324 (_ BitVec 32))) (Undefined!3502) (MissingVacant!3502 (index!16190 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!23167 (_ BitVec 32)) SeekEntryResult!3502)

(assert (=> b!390972 (= res!223852 (= (seekEntryOrOpen!0 (select (arr!11043 _keys!658) #b00000000000000000000000000000000) _keys!658 mask!970) (Found!3502 #b00000000000000000000000000000000)))))

(assert (=> b!390972 (=> (not res!223852) (not e!236813))))

(declare-fun b!390973 () Bool)

(assert (=> b!390973 (= e!236815 call!27584)))

(declare-fun d!72919 () Bool)

(declare-fun res!223851 () Bool)

(assert (=> d!72919 (=> res!223851 e!236814)))

(assert (=> d!72919 (= res!223851 (bvsge #b00000000000000000000000000000000 (size!11395 _keys!658)))))

(assert (=> d!72919 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970) e!236814)))

(declare-fun bm!27581 () Bool)

(assert (=> bm!27581 (= call!27584 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!658 mask!970))))

(assert (= (and d!72919 (not res!223851)) b!390971))

(assert (= (and b!390971 c!54158) b!390972))

(assert (= (and b!390971 (not c!54158)) b!390973))

(assert (= (and b!390972 res!223852) b!390970))

(assert (= (or b!390970 b!390973) bm!27581))

(declare-fun m!387369 () Bool)

(assert (=> b!390971 m!387369))

(assert (=> b!390971 m!387369))

(declare-fun m!387371 () Bool)

(assert (=> b!390971 m!387371))

(assert (=> b!390972 m!387369))

(declare-fun m!387373 () Bool)

(assert (=> b!390972 m!387373))

(declare-fun m!387375 () Bool)

(assert (=> b!390972 m!387375))

(assert (=> b!390972 m!387369))

(declare-fun m!387377 () Bool)

(assert (=> b!390972 m!387377))

(declare-fun m!387379 () Bool)

(assert (=> bm!27581 m!387379))

(assert (=> b!390898 d!72919))

(declare-fun b!390984 () Bool)

(declare-fun e!236826 () Bool)

(declare-fun e!236824 () Bool)

(assert (=> b!390984 (= e!236826 e!236824)))

(declare-fun res!223860 () Bool)

(assert (=> b!390984 (=> (not res!223860) (not e!236824))))

(declare-fun e!236825 () Bool)

(assert (=> b!390984 (= res!223860 (not e!236825))))

(declare-fun res!223859 () Bool)

(assert (=> b!390984 (=> (not res!223859) (not e!236825))))

(assert (=> b!390984 (= res!223859 (validKeyInArray!0 (select (arr!11043 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun d!72921 () Bool)

(declare-fun res!223861 () Bool)

(assert (=> d!72921 (=> res!223861 e!236826)))

(assert (=> d!72921 (= res!223861 (bvsge #b00000000000000000000000000000000 (size!11395 _keys!658)))))

(assert (=> d!72921 (= (arrayNoDuplicates!0 _keys!658 #b00000000000000000000000000000000 Nil!6374) e!236826)))

(declare-fun b!390985 () Bool)

(declare-fun contains!2459 (List!6377 (_ BitVec 64)) Bool)

(assert (=> b!390985 (= e!236825 (contains!2459 Nil!6374 (select (arr!11043 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!390986 () Bool)

(declare-fun e!236827 () Bool)

(assert (=> b!390986 (= e!236824 e!236827)))

(declare-fun c!54161 () Bool)

(assert (=> b!390986 (= c!54161 (validKeyInArray!0 (select (arr!11043 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!390987 () Bool)

(declare-fun call!27587 () Bool)

(assert (=> b!390987 (= e!236827 call!27587)))

(declare-fun bm!27584 () Bool)

(assert (=> bm!27584 (= call!27587 (arrayNoDuplicates!0 _keys!658 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54161 (Cons!6373 (select (arr!11043 _keys!658) #b00000000000000000000000000000000) Nil!6374) Nil!6374)))))

(declare-fun b!390988 () Bool)

(assert (=> b!390988 (= e!236827 call!27587)))

(assert (= (and d!72921 (not res!223861)) b!390984))

(assert (= (and b!390984 res!223859) b!390985))

(assert (= (and b!390984 res!223860) b!390986))

(assert (= (and b!390986 c!54161) b!390988))

(assert (= (and b!390986 (not c!54161)) b!390987))

(assert (= (or b!390988 b!390987) bm!27584))

(assert (=> b!390984 m!387369))

(assert (=> b!390984 m!387369))

(assert (=> b!390984 m!387371))

(assert (=> b!390985 m!387369))

(assert (=> b!390985 m!387369))

(declare-fun m!387381 () Bool)

(assert (=> b!390985 m!387381))

(assert (=> b!390986 m!387369))

(assert (=> b!390986 m!387369))

(assert (=> b!390986 m!387371))

(assert (=> bm!27584 m!387369))

(declare-fun m!387383 () Bool)

(assert (=> bm!27584 m!387383))

(assert (=> b!390903 d!72921))

(declare-fun b!390989 () Bool)

(declare-fun e!236828 () Bool)

(declare-fun call!27588 () Bool)

(assert (=> b!390989 (= e!236828 call!27588)))

(declare-fun b!390990 () Bool)

(declare-fun e!236829 () Bool)

(declare-fun e!236830 () Bool)

(assert (=> b!390990 (= e!236829 e!236830)))

(declare-fun c!54162 () Bool)

(assert (=> b!390990 (= c!54162 (validKeyInArray!0 (select (arr!11043 lt!184413) #b00000000000000000000000000000000)))))

(declare-fun b!390991 () Bool)

(assert (=> b!390991 (= e!236830 e!236828)))

(declare-fun lt!184459 () (_ BitVec 64))

(assert (=> b!390991 (= lt!184459 (select (arr!11043 lt!184413) #b00000000000000000000000000000000))))

(declare-fun lt!184458 () Unit!11939)

(assert (=> b!390991 (= lt!184458 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!184413 lt!184459 #b00000000000000000000000000000000))))

(assert (=> b!390991 (arrayContainsKey!0 lt!184413 lt!184459 #b00000000000000000000000000000000)))

(declare-fun lt!184460 () Unit!11939)

(assert (=> b!390991 (= lt!184460 lt!184458)))

(declare-fun res!223863 () Bool)

(assert (=> b!390991 (= res!223863 (= (seekEntryOrOpen!0 (select (arr!11043 lt!184413) #b00000000000000000000000000000000) lt!184413 mask!970) (Found!3502 #b00000000000000000000000000000000)))))

(assert (=> b!390991 (=> (not res!223863) (not e!236828))))

(declare-fun b!390992 () Bool)

(assert (=> b!390992 (= e!236830 call!27588)))

(declare-fun d!72923 () Bool)

(declare-fun res!223862 () Bool)

(assert (=> d!72923 (=> res!223862 e!236829)))

(assert (=> d!72923 (= res!223862 (bvsge #b00000000000000000000000000000000 (size!11395 lt!184413)))))

(assert (=> d!72923 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!184413 mask!970) e!236829)))

(declare-fun bm!27585 () Bool)

(assert (=> bm!27585 (= call!27588 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!184413 mask!970))))

(assert (= (and d!72923 (not res!223862)) b!390990))

(assert (= (and b!390990 c!54162) b!390991))

(assert (= (and b!390990 (not c!54162)) b!390992))

(assert (= (and b!390991 res!223863) b!390989))

(assert (= (or b!390989 b!390992) bm!27585))

(declare-fun m!387385 () Bool)

(assert (=> b!390990 m!387385))

(assert (=> b!390990 m!387385))

(declare-fun m!387387 () Bool)

(assert (=> b!390990 m!387387))

(assert (=> b!390991 m!387385))

(declare-fun m!387389 () Bool)

(assert (=> b!390991 m!387389))

(declare-fun m!387391 () Bool)

(assert (=> b!390991 m!387391))

(assert (=> b!390991 m!387385))

(declare-fun m!387393 () Bool)

(assert (=> b!390991 m!387393))

(declare-fun m!387395 () Bool)

(assert (=> bm!27585 m!387395))

(assert (=> b!390908 d!72923))

(declare-fun b!391018 () Bool)

(declare-fun e!236846 () Bool)

(assert (=> b!391018 (= e!236846 (validKeyInArray!0 (select (arr!11043 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!391018 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!391019 () Bool)

(declare-fun e!236845 () ListLongMap!5421)

(assert (=> b!391019 (= e!236845 (ListLongMap!5422 Nil!6373))))

(declare-fun e!236848 () Bool)

(declare-fun lt!184480 () ListLongMap!5421)

(declare-fun b!391020 () Bool)

(assert (=> b!391020 (= e!236848 (= lt!184480 (getCurrentListMapNoExtraKeys!954 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!391021 () Bool)

(declare-fun e!236849 () Bool)

(declare-fun e!236850 () Bool)

(assert (=> b!391021 (= e!236849 e!236850)))

(declare-fun c!54171 () Bool)

(assert (=> b!391021 (= c!54171 e!236846)))

(declare-fun res!223872 () Bool)

(assert (=> b!391021 (=> (not res!223872) (not e!236846))))

(assert (=> b!391021 (= res!223872 (bvslt #b00000000000000000000000000000000 (size!11395 _keys!658)))))

(declare-fun b!391022 () Bool)

(declare-fun e!236847 () Bool)

(assert (=> b!391022 (= e!236850 e!236847)))

(assert (=> b!391022 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11395 _keys!658)))))

(declare-fun res!223874 () Bool)

(declare-fun contains!2460 (ListLongMap!5421 (_ BitVec 64)) Bool)

(assert (=> b!391022 (= res!223874 (contains!2460 lt!184480 (select (arr!11043 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!391022 (=> (not res!223874) (not e!236847))))

(declare-fun b!391023 () Bool)

(declare-fun res!223873 () Bool)

(assert (=> b!391023 (=> (not res!223873) (not e!236849))))

(assert (=> b!391023 (= res!223873 (not (contains!2460 lt!184480 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!391017 () Bool)

(declare-fun lt!184479 () Unit!11939)

(declare-fun lt!184478 () Unit!11939)

(assert (=> b!391017 (= lt!184479 lt!184478)))

(declare-fun lt!184476 () (_ BitVec 64))

(declare-fun lt!184481 () V!13965)

(declare-fun lt!184477 () (_ BitVec 64))

(declare-fun lt!184475 () ListLongMap!5421)

(assert (=> b!391017 (not (contains!2460 (+!1024 lt!184475 (tuple2!6495 lt!184476 lt!184481)) lt!184477))))

(declare-fun addStillNotContains!138 (ListLongMap!5421 (_ BitVec 64) V!13965 (_ BitVec 64)) Unit!11939)

(assert (=> b!391017 (= lt!184478 (addStillNotContains!138 lt!184475 lt!184476 lt!184481 lt!184477))))

(assert (=> b!391017 (= lt!184477 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun get!5592 (ValueCell!4479 V!13965) V!13965)

(declare-fun dynLambda!641 (Int (_ BitVec 64)) V!13965)

(assert (=> b!391017 (= lt!184481 (get!5592 (select (arr!11044 _values!506) #b00000000000000000000000000000000) (dynLambda!641 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!391017 (= lt!184476 (select (arr!11043 _keys!658) #b00000000000000000000000000000000))))

(declare-fun call!27591 () ListLongMap!5421)

(assert (=> b!391017 (= lt!184475 call!27591)))

(declare-fun e!236851 () ListLongMap!5421)

(assert (=> b!391017 (= e!236851 (+!1024 call!27591 (tuple2!6495 (select (arr!11043 _keys!658) #b00000000000000000000000000000000) (get!5592 (select (arr!11044 _values!506) #b00000000000000000000000000000000) (dynLambda!641 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!72925 () Bool)

(assert (=> d!72925 e!236849))

(declare-fun res!223875 () Bool)

(assert (=> d!72925 (=> (not res!223875) (not e!236849))))

(assert (=> d!72925 (= res!223875 (not (contains!2460 lt!184480 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!72925 (= lt!184480 e!236845)))

(declare-fun c!54173 () Bool)

(assert (=> d!72925 (= c!54173 (bvsge #b00000000000000000000000000000000 (size!11395 _keys!658)))))

(assert (=> d!72925 (validMask!0 mask!970)))

(assert (=> d!72925 (= (getCurrentListMapNoExtraKeys!954 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!184480)))

(declare-fun b!391024 () Bool)

(assert (=> b!391024 (= e!236845 e!236851)))

(declare-fun c!54172 () Bool)

(assert (=> b!391024 (= c!54172 (validKeyInArray!0 (select (arr!11043 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun bm!27588 () Bool)

(assert (=> bm!27588 (= call!27591 (getCurrentListMapNoExtraKeys!954 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!391025 () Bool)

(assert (=> b!391025 (= e!236850 e!236848)))

(declare-fun c!54174 () Bool)

(assert (=> b!391025 (= c!54174 (bvslt #b00000000000000000000000000000000 (size!11395 _keys!658)))))

(declare-fun b!391026 () Bool)

(declare-fun isEmpty!554 (ListLongMap!5421) Bool)

(assert (=> b!391026 (= e!236848 (isEmpty!554 lt!184480))))

(declare-fun b!391027 () Bool)

(assert (=> b!391027 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11395 _keys!658)))))

(assert (=> b!391027 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11396 _values!506)))))

(declare-fun apply!303 (ListLongMap!5421 (_ BitVec 64)) V!13965)

(assert (=> b!391027 (= e!236847 (= (apply!303 lt!184480 (select (arr!11043 _keys!658) #b00000000000000000000000000000000)) (get!5592 (select (arr!11044 _values!506) #b00000000000000000000000000000000) (dynLambda!641 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!391028 () Bool)

(assert (=> b!391028 (= e!236851 call!27591)))

(assert (= (and d!72925 c!54173) b!391019))

(assert (= (and d!72925 (not c!54173)) b!391024))

(assert (= (and b!391024 c!54172) b!391017))

(assert (= (and b!391024 (not c!54172)) b!391028))

(assert (= (or b!391017 b!391028) bm!27588))

(assert (= (and d!72925 res!223875) b!391023))

(assert (= (and b!391023 res!223873) b!391021))

(assert (= (and b!391021 res!223872) b!391018))

(assert (= (and b!391021 c!54171) b!391022))

(assert (= (and b!391021 (not c!54171)) b!391025))

(assert (= (and b!391022 res!223874) b!391027))

(assert (= (and b!391025 c!54174) b!391020))

(assert (= (and b!391025 (not c!54174)) b!391026))

(declare-fun b_lambda!8701 () Bool)

(assert (=> (not b_lambda!8701) (not b!391017)))

(declare-fun t!11551 () Bool)

(declare-fun tb!3129 () Bool)

(assert (=> (and start!38012 (= defaultEntry!514 defaultEntry!514) t!11551) tb!3129))

(declare-fun result!5751 () Bool)

(assert (=> tb!3129 (= result!5751 tp_is_empty!9645)))

(assert (=> b!391017 t!11551))

(declare-fun b_and!16309 () Bool)

(assert (= b_and!16305 (and (=> t!11551 result!5751) b_and!16309)))

(declare-fun b_lambda!8703 () Bool)

(assert (=> (not b_lambda!8703) (not b!391027)))

(assert (=> b!391027 t!11551))

(declare-fun b_and!16311 () Bool)

(assert (= b_and!16309 (and (=> t!11551 result!5751) b_and!16311)))

(declare-fun m!387397 () Bool)

(assert (=> d!72925 m!387397))

(assert (=> d!72925 m!387283))

(assert (=> b!391018 m!387369))

(assert (=> b!391018 m!387369))

(assert (=> b!391018 m!387371))

(assert (=> b!391024 m!387369))

(assert (=> b!391024 m!387369))

(assert (=> b!391024 m!387371))

(declare-fun m!387399 () Bool)

(assert (=> b!391026 m!387399))

(assert (=> b!391022 m!387369))

(assert (=> b!391022 m!387369))

(declare-fun m!387401 () Bool)

(assert (=> b!391022 m!387401))

(declare-fun m!387403 () Bool)

(assert (=> bm!27588 m!387403))

(assert (=> b!391020 m!387403))

(declare-fun m!387405 () Bool)

(assert (=> b!391017 m!387405))

(declare-fun m!387407 () Bool)

(assert (=> b!391017 m!387407))

(declare-fun m!387409 () Bool)

(assert (=> b!391017 m!387409))

(declare-fun m!387411 () Bool)

(assert (=> b!391017 m!387411))

(assert (=> b!391017 m!387407))

(declare-fun m!387413 () Bool)

(assert (=> b!391017 m!387413))

(declare-fun m!387415 () Bool)

(assert (=> b!391017 m!387415))

(assert (=> b!391017 m!387369))

(assert (=> b!391017 m!387411))

(assert (=> b!391017 m!387409))

(declare-fun m!387417 () Bool)

(assert (=> b!391017 m!387417))

(declare-fun m!387419 () Bool)

(assert (=> b!391023 m!387419))

(assert (=> b!391027 m!387369))

(declare-fun m!387421 () Bool)

(assert (=> b!391027 m!387421))

(assert (=> b!391027 m!387409))

(assert (=> b!391027 m!387411))

(assert (=> b!391027 m!387369))

(assert (=> b!391027 m!387411))

(assert (=> b!391027 m!387409))

(assert (=> b!391027 m!387417))

(assert (=> b!390904 d!72925))

(declare-fun b!391073 () Bool)

(declare-fun e!236882 () ListLongMap!5421)

(declare-fun call!27608 () ListLongMap!5421)

(assert (=> b!391073 (= e!236882 call!27608)))

(declare-fun b!391075 () Bool)

(declare-fun e!236885 () Bool)

(assert (=> b!391075 (= e!236885 (validKeyInArray!0 (select (arr!11043 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!391076 () Bool)

(declare-fun e!236880 () Bool)

(declare-fun lt!184535 () ListLongMap!5421)

(assert (=> b!391076 (= e!236880 (= (apply!303 lt!184535 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!391077 () Bool)

(declare-fun e!236887 () Unit!11939)

(declare-fun Unit!11943 () Unit!11939)

(assert (=> b!391077 (= e!236887 Unit!11943)))

(declare-fun bm!27603 () Bool)

(declare-fun call!27612 () ListLongMap!5421)

(assert (=> bm!27603 (= call!27608 call!27612)))

(declare-fun c!54190 () Bool)

(declare-fun c!54192 () Bool)

(declare-fun bm!27604 () Bool)

(declare-fun call!27606 () ListLongMap!5421)

(declare-fun call!27611 () ListLongMap!5421)

(declare-fun call!27610 () ListLongMap!5421)

(assert (=> bm!27604 (= call!27612 (+!1024 (ite c!54190 call!27610 (ite c!54192 call!27611 call!27606)) (ite (or c!54190 c!54192) (tuple2!6495 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6495 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!391078 () Bool)

(declare-fun e!236890 () ListLongMap!5421)

(assert (=> b!391078 (= e!236890 call!27608)))

(declare-fun bm!27605 () Bool)

(assert (=> bm!27605 (= call!27610 (getCurrentListMapNoExtraKeys!954 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun bm!27606 () Bool)

(assert (=> bm!27606 (= call!27606 call!27611)))

(declare-fun bm!27607 () Bool)

(assert (=> bm!27607 (= call!27611 call!27610)))

(declare-fun b!391079 () Bool)

(declare-fun lt!184541 () Unit!11939)

(assert (=> b!391079 (= e!236887 lt!184541)))

(declare-fun lt!184543 () ListLongMap!5421)

(assert (=> b!391079 (= lt!184543 (getCurrentListMapNoExtraKeys!954 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184542 () (_ BitVec 64))

(assert (=> b!391079 (= lt!184542 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184527 () (_ BitVec 64))

(assert (=> b!391079 (= lt!184527 (select (arr!11043 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!184534 () Unit!11939)

(declare-fun addStillContains!279 (ListLongMap!5421 (_ BitVec 64) V!13965 (_ BitVec 64)) Unit!11939)

(assert (=> b!391079 (= lt!184534 (addStillContains!279 lt!184543 lt!184542 zeroValue!472 lt!184527))))

(assert (=> b!391079 (contains!2460 (+!1024 lt!184543 (tuple2!6495 lt!184542 zeroValue!472)) lt!184527)))

(declare-fun lt!184528 () Unit!11939)

(assert (=> b!391079 (= lt!184528 lt!184534)))

(declare-fun lt!184537 () ListLongMap!5421)

(assert (=> b!391079 (= lt!184537 (getCurrentListMapNoExtraKeys!954 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184533 () (_ BitVec 64))

(assert (=> b!391079 (= lt!184533 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184538 () (_ BitVec 64))

(assert (=> b!391079 (= lt!184538 (select (arr!11043 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!184539 () Unit!11939)

(declare-fun addApplyDifferent!279 (ListLongMap!5421 (_ BitVec 64) V!13965 (_ BitVec 64)) Unit!11939)

(assert (=> b!391079 (= lt!184539 (addApplyDifferent!279 lt!184537 lt!184533 minValue!472 lt!184538))))

(assert (=> b!391079 (= (apply!303 (+!1024 lt!184537 (tuple2!6495 lt!184533 minValue!472)) lt!184538) (apply!303 lt!184537 lt!184538))))

(declare-fun lt!184526 () Unit!11939)

(assert (=> b!391079 (= lt!184526 lt!184539)))

(declare-fun lt!184547 () ListLongMap!5421)

(assert (=> b!391079 (= lt!184547 (getCurrentListMapNoExtraKeys!954 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184530 () (_ BitVec 64))

(assert (=> b!391079 (= lt!184530 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184545 () (_ BitVec 64))

(assert (=> b!391079 (= lt!184545 (select (arr!11043 _keys!658) #b00000000000000000000000000000000))))

(declare-fun lt!184531 () Unit!11939)

(assert (=> b!391079 (= lt!184531 (addApplyDifferent!279 lt!184547 lt!184530 zeroValue!472 lt!184545))))

(assert (=> b!391079 (= (apply!303 (+!1024 lt!184547 (tuple2!6495 lt!184530 zeroValue!472)) lt!184545) (apply!303 lt!184547 lt!184545))))

(declare-fun lt!184532 () Unit!11939)

(assert (=> b!391079 (= lt!184532 lt!184531)))

(declare-fun lt!184546 () ListLongMap!5421)

(assert (=> b!391079 (= lt!184546 (getCurrentListMapNoExtraKeys!954 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184529 () (_ BitVec 64))

(assert (=> b!391079 (= lt!184529 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184540 () (_ BitVec 64))

(assert (=> b!391079 (= lt!184540 (select (arr!11043 _keys!658) #b00000000000000000000000000000000))))

(assert (=> b!391079 (= lt!184541 (addApplyDifferent!279 lt!184546 lt!184529 minValue!472 lt!184540))))

(assert (=> b!391079 (= (apply!303 (+!1024 lt!184546 (tuple2!6495 lt!184529 minValue!472)) lt!184540) (apply!303 lt!184546 lt!184540))))

(declare-fun b!391074 () Bool)

(declare-fun e!236889 () Bool)

(declare-fun e!236888 () Bool)

(assert (=> b!391074 (= e!236889 e!236888)))

(declare-fun res!223901 () Bool)

(assert (=> b!391074 (=> (not res!223901) (not e!236888))))

(assert (=> b!391074 (= res!223901 (contains!2460 lt!184535 (select (arr!11043 _keys!658) #b00000000000000000000000000000000)))))

(assert (=> b!391074 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11395 _keys!658)))))

(declare-fun d!72927 () Bool)

(declare-fun e!236883 () Bool)

(assert (=> d!72927 e!236883))

(declare-fun res!223902 () Bool)

(assert (=> d!72927 (=> (not res!223902) (not e!236883))))

(assert (=> d!72927 (= res!223902 (or (bvsge #b00000000000000000000000000000000 (size!11395 _keys!658)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11395 _keys!658)))))))

(declare-fun lt!184544 () ListLongMap!5421)

(assert (=> d!72927 (= lt!184535 lt!184544)))

(declare-fun lt!184536 () Unit!11939)

(assert (=> d!72927 (= lt!184536 e!236887)))

(declare-fun c!54188 () Bool)

(assert (=> d!72927 (= c!54188 e!236885)))

(declare-fun res!223895 () Bool)

(assert (=> d!72927 (=> (not res!223895) (not e!236885))))

(assert (=> d!72927 (= res!223895 (bvslt #b00000000000000000000000000000000 (size!11395 _keys!658)))))

(declare-fun e!236884 () ListLongMap!5421)

(assert (=> d!72927 (= lt!184544 e!236884)))

(assert (=> d!72927 (= c!54190 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!72927 (validMask!0 mask!970)))

(assert (=> d!72927 (= (getCurrentListMap!2092 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!184535)))

(declare-fun b!391080 () Bool)

(assert (=> b!391080 (= e!236884 (+!1024 call!27612 (tuple2!6495 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun b!391081 () Bool)

(declare-fun e!236886 () Bool)

(assert (=> b!391081 (= e!236883 e!236886)))

(declare-fun c!54187 () Bool)

(assert (=> b!391081 (= c!54187 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!391082 () Bool)

(declare-fun res!223898 () Bool)

(assert (=> b!391082 (=> (not res!223898) (not e!236883))))

(assert (=> b!391082 (= res!223898 e!236889)))

(declare-fun res!223896 () Bool)

(assert (=> b!391082 (=> res!223896 e!236889)))

(declare-fun e!236879 () Bool)

(assert (=> b!391082 (= res!223896 (not e!236879))))

(declare-fun res!223897 () Bool)

(assert (=> b!391082 (=> (not res!223897) (not e!236879))))

(assert (=> b!391082 (= res!223897 (bvslt #b00000000000000000000000000000000 (size!11395 _keys!658)))))

(declare-fun b!391083 () Bool)

(assert (=> b!391083 (= e!236879 (validKeyInArray!0 (select (arr!11043 _keys!658) #b00000000000000000000000000000000)))))

(declare-fun b!391084 () Bool)

(declare-fun e!236878 () Bool)

(assert (=> b!391084 (= e!236886 e!236878)))

(declare-fun res!223899 () Bool)

(declare-fun call!27609 () Bool)

(assert (=> b!391084 (= res!223899 call!27609)))

(assert (=> b!391084 (=> (not res!223899) (not e!236878))))

(declare-fun b!391085 () Bool)

(declare-fun e!236881 () Bool)

(assert (=> b!391085 (= e!236881 e!236880)))

(declare-fun res!223900 () Bool)

(declare-fun call!27607 () Bool)

(assert (=> b!391085 (= res!223900 call!27607)))

(assert (=> b!391085 (=> (not res!223900) (not e!236880))))

(declare-fun b!391086 () Bool)

(assert (=> b!391086 (= e!236878 (= (apply!303 lt!184535 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun b!391087 () Bool)

(assert (=> b!391087 (= e!236882 call!27606)))

(declare-fun bm!27608 () Bool)

(assert (=> bm!27608 (= call!27609 (contains!2460 lt!184535 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!391088 () Bool)

(declare-fun c!54189 () Bool)

(assert (=> b!391088 (= c!54189 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!391088 (= e!236890 e!236882)))

(declare-fun b!391089 () Bool)

(assert (=> b!391089 (= e!236886 (not call!27609))))

(declare-fun bm!27609 () Bool)

(assert (=> bm!27609 (= call!27607 (contains!2460 lt!184535 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!391090 () Bool)

(assert (=> b!391090 (= e!236888 (= (apply!303 lt!184535 (select (arr!11043 _keys!658) #b00000000000000000000000000000000)) (get!5592 (select (arr!11044 _values!506) #b00000000000000000000000000000000) (dynLambda!641 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!391090 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11396 _values!506)))))

(assert (=> b!391090 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11395 _keys!658)))))

(declare-fun b!391091 () Bool)

(declare-fun res!223894 () Bool)

(assert (=> b!391091 (=> (not res!223894) (not e!236883))))

(assert (=> b!391091 (= res!223894 e!236881)))

(declare-fun c!54191 () Bool)

(assert (=> b!391091 (= c!54191 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!391092 () Bool)

(assert (=> b!391092 (= e!236884 e!236890)))

(assert (=> b!391092 (= c!54192 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!391093 () Bool)

(assert (=> b!391093 (= e!236881 (not call!27607))))

(assert (= (and d!72927 c!54190) b!391080))

(assert (= (and d!72927 (not c!54190)) b!391092))

(assert (= (and b!391092 c!54192) b!391078))

(assert (= (and b!391092 (not c!54192)) b!391088))

(assert (= (and b!391088 c!54189) b!391073))

(assert (= (and b!391088 (not c!54189)) b!391087))

(assert (= (or b!391073 b!391087) bm!27606))

(assert (= (or b!391078 bm!27606) bm!27607))

(assert (= (or b!391078 b!391073) bm!27603))

(assert (= (or b!391080 bm!27607) bm!27605))

(assert (= (or b!391080 bm!27603) bm!27604))

(assert (= (and d!72927 res!223895) b!391075))

(assert (= (and d!72927 c!54188) b!391079))

(assert (= (and d!72927 (not c!54188)) b!391077))

(assert (= (and d!72927 res!223902) b!391082))

(assert (= (and b!391082 res!223897) b!391083))

(assert (= (and b!391082 (not res!223896)) b!391074))

(assert (= (and b!391074 res!223901) b!391090))

(assert (= (and b!391082 res!223898) b!391091))

(assert (= (and b!391091 c!54191) b!391085))

(assert (= (and b!391091 (not c!54191)) b!391093))

(assert (= (and b!391085 res!223900) b!391076))

(assert (= (or b!391085 b!391093) bm!27609))

(assert (= (and b!391091 res!223894) b!391081))

(assert (= (and b!391081 c!54187) b!391084))

(assert (= (and b!391081 (not c!54187)) b!391089))

(assert (= (and b!391084 res!223899) b!391086))

(assert (= (or b!391084 b!391089) bm!27608))

(declare-fun b_lambda!8705 () Bool)

(assert (=> (not b_lambda!8705) (not b!391090)))

(assert (=> b!391090 t!11551))

(declare-fun b_and!16313 () Bool)

(assert (= b_and!16311 (and (=> t!11551 result!5751) b_and!16313)))

(assert (=> b!391075 m!387369))

(assert (=> b!391075 m!387369))

(assert (=> b!391075 m!387371))

(assert (=> bm!27605 m!387293))

(declare-fun m!387423 () Bool)

(assert (=> b!391076 m!387423))

(declare-fun m!387425 () Bool)

(assert (=> bm!27608 m!387425))

(assert (=> d!72927 m!387283))

(assert (=> b!391090 m!387409))

(assert (=> b!391090 m!387411))

(assert (=> b!391090 m!387409))

(assert (=> b!391090 m!387417))

(assert (=> b!391090 m!387369))

(declare-fun m!387427 () Bool)

(assert (=> b!391090 m!387427))

(assert (=> b!391090 m!387369))

(assert (=> b!391090 m!387411))

(assert (=> b!391083 m!387369))

(assert (=> b!391083 m!387369))

(assert (=> b!391083 m!387371))

(declare-fun m!387429 () Bool)

(assert (=> b!391080 m!387429))

(declare-fun m!387431 () Bool)

(assert (=> b!391086 m!387431))

(declare-fun m!387433 () Bool)

(assert (=> bm!27604 m!387433))

(declare-fun m!387435 () Bool)

(assert (=> bm!27609 m!387435))

(declare-fun m!387437 () Bool)

(assert (=> b!391079 m!387437))

(declare-fun m!387439 () Bool)

(assert (=> b!391079 m!387439))

(assert (=> b!391079 m!387437))

(declare-fun m!387441 () Bool)

(assert (=> b!391079 m!387441))

(declare-fun m!387443 () Bool)

(assert (=> b!391079 m!387443))

(declare-fun m!387445 () Bool)

(assert (=> b!391079 m!387445))

(declare-fun m!387447 () Bool)

(assert (=> b!391079 m!387447))

(declare-fun m!387449 () Bool)

(assert (=> b!391079 m!387449))

(declare-fun m!387451 () Bool)

(assert (=> b!391079 m!387451))

(assert (=> b!391079 m!387443))

(declare-fun m!387453 () Bool)

(assert (=> b!391079 m!387453))

(assert (=> b!391079 m!387293))

(assert (=> b!391079 m!387369))

(declare-fun m!387455 () Bool)

(assert (=> b!391079 m!387455))

(assert (=> b!391079 m!387451))

(declare-fun m!387457 () Bool)

(assert (=> b!391079 m!387457))

(declare-fun m!387459 () Bool)

(assert (=> b!391079 m!387459))

(declare-fun m!387461 () Bool)

(assert (=> b!391079 m!387461))

(assert (=> b!391079 m!387449))

(declare-fun m!387463 () Bool)

(assert (=> b!391079 m!387463))

(declare-fun m!387465 () Bool)

(assert (=> b!391079 m!387465))

(assert (=> b!391074 m!387369))

(assert (=> b!391074 m!387369))

(declare-fun m!387467 () Bool)

(assert (=> b!391074 m!387467))

(assert (=> b!390904 d!72927))

(declare-fun d!72929 () Bool)

(declare-fun e!236893 () Bool)

(assert (=> d!72929 e!236893))

(declare-fun res!223908 () Bool)

(assert (=> d!72929 (=> (not res!223908) (not e!236893))))

(declare-fun lt!184557 () ListLongMap!5421)

(assert (=> d!72929 (= res!223908 (contains!2460 lt!184557 (_1!3257 (tuple2!6495 k0!778 v!373))))))

(declare-fun lt!184559 () List!6376)

(assert (=> d!72929 (= lt!184557 (ListLongMap!5422 lt!184559))))

(declare-fun lt!184558 () Unit!11939)

(declare-fun lt!184556 () Unit!11939)

(assert (=> d!72929 (= lt!184558 lt!184556)))

(declare-datatypes ((Option!366 0))(
  ( (Some!365 (v!7089 V!13965)) (None!364) )
))
(declare-fun getValueByKey!360 (List!6376 (_ BitVec 64)) Option!366)

(assert (=> d!72929 (= (getValueByKey!360 lt!184559 (_1!3257 (tuple2!6495 k0!778 v!373))) (Some!365 (_2!3257 (tuple2!6495 k0!778 v!373))))))

(declare-fun lemmaContainsTupThenGetReturnValue!184 (List!6376 (_ BitVec 64) V!13965) Unit!11939)

(assert (=> d!72929 (= lt!184556 (lemmaContainsTupThenGetReturnValue!184 lt!184559 (_1!3257 (tuple2!6495 k0!778 v!373)) (_2!3257 (tuple2!6495 k0!778 v!373))))))

(declare-fun insertStrictlySorted!186 (List!6376 (_ BitVec 64) V!13965) List!6376)

(assert (=> d!72929 (= lt!184559 (insertStrictlySorted!186 (toList!2726 lt!184416) (_1!3257 (tuple2!6495 k0!778 v!373)) (_2!3257 (tuple2!6495 k0!778 v!373))))))

(assert (=> d!72929 (= (+!1024 lt!184416 (tuple2!6495 k0!778 v!373)) lt!184557)))

(declare-fun b!391098 () Bool)

(declare-fun res!223907 () Bool)

(assert (=> b!391098 (=> (not res!223907) (not e!236893))))

(assert (=> b!391098 (= res!223907 (= (getValueByKey!360 (toList!2726 lt!184557) (_1!3257 (tuple2!6495 k0!778 v!373))) (Some!365 (_2!3257 (tuple2!6495 k0!778 v!373)))))))

(declare-fun b!391099 () Bool)

(declare-fun contains!2461 (List!6376 tuple2!6494) Bool)

(assert (=> b!391099 (= e!236893 (contains!2461 (toList!2726 lt!184557) (tuple2!6495 k0!778 v!373)))))

(assert (= (and d!72929 res!223908) b!391098))

(assert (= (and b!391098 res!223907) b!391099))

(declare-fun m!387469 () Bool)

(assert (=> d!72929 m!387469))

(declare-fun m!387471 () Bool)

(assert (=> d!72929 m!387471))

(declare-fun m!387473 () Bool)

(assert (=> d!72929 m!387473))

(declare-fun m!387475 () Bool)

(assert (=> d!72929 m!387475))

(declare-fun m!387477 () Bool)

(assert (=> b!391098 m!387477))

(declare-fun m!387479 () Bool)

(assert (=> b!391099 m!387479))

(assert (=> b!390904 d!72929))

(declare-fun b!391101 () Bool)

(declare-fun e!236895 () Bool)

(assert (=> b!391101 (= e!236895 (validKeyInArray!0 (select (arr!11043 lt!184413) #b00000000000000000000000000000000)))))

(assert (=> b!391101 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!391102 () Bool)

(declare-fun e!236894 () ListLongMap!5421)

(assert (=> b!391102 (= e!236894 (ListLongMap!5422 Nil!6373))))

(declare-fun b!391103 () Bool)

(declare-fun lt!184565 () ListLongMap!5421)

(declare-fun e!236897 () Bool)

(assert (=> b!391103 (= e!236897 (= lt!184565 (getCurrentListMapNoExtraKeys!954 lt!184413 lt!184419 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514)))))

(declare-fun b!391104 () Bool)

(declare-fun e!236898 () Bool)

(declare-fun e!236899 () Bool)

(assert (=> b!391104 (= e!236898 e!236899)))

(declare-fun c!54193 () Bool)

(assert (=> b!391104 (= c!54193 e!236895)))

(declare-fun res!223909 () Bool)

(assert (=> b!391104 (=> (not res!223909) (not e!236895))))

(assert (=> b!391104 (= res!223909 (bvslt #b00000000000000000000000000000000 (size!11395 lt!184413)))))

(declare-fun b!391105 () Bool)

(declare-fun e!236896 () Bool)

(assert (=> b!391105 (= e!236899 e!236896)))

(assert (=> b!391105 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11395 lt!184413)))))

(declare-fun res!223911 () Bool)

(assert (=> b!391105 (= res!223911 (contains!2460 lt!184565 (select (arr!11043 lt!184413) #b00000000000000000000000000000000)))))

(assert (=> b!391105 (=> (not res!223911) (not e!236896))))

(declare-fun b!391106 () Bool)

(declare-fun res!223910 () Bool)

(assert (=> b!391106 (=> (not res!223910) (not e!236898))))

(assert (=> b!391106 (= res!223910 (not (contains!2460 lt!184565 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!391100 () Bool)

(declare-fun lt!184564 () Unit!11939)

(declare-fun lt!184563 () Unit!11939)

(assert (=> b!391100 (= lt!184564 lt!184563)))

(declare-fun lt!184562 () (_ BitVec 64))

(declare-fun lt!184566 () V!13965)

(declare-fun lt!184560 () ListLongMap!5421)

(declare-fun lt!184561 () (_ BitVec 64))

(assert (=> b!391100 (not (contains!2460 (+!1024 lt!184560 (tuple2!6495 lt!184561 lt!184566)) lt!184562))))

(assert (=> b!391100 (= lt!184563 (addStillNotContains!138 lt!184560 lt!184561 lt!184566 lt!184562))))

(assert (=> b!391100 (= lt!184562 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!391100 (= lt!184566 (get!5592 (select (arr!11044 lt!184419) #b00000000000000000000000000000000) (dynLambda!641 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!391100 (= lt!184561 (select (arr!11043 lt!184413) #b00000000000000000000000000000000))))

(declare-fun call!27613 () ListLongMap!5421)

(assert (=> b!391100 (= lt!184560 call!27613)))

(declare-fun e!236900 () ListLongMap!5421)

(assert (=> b!391100 (= e!236900 (+!1024 call!27613 (tuple2!6495 (select (arr!11043 lt!184413) #b00000000000000000000000000000000) (get!5592 (select (arr!11044 lt!184419) #b00000000000000000000000000000000) (dynLambda!641 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun d!72931 () Bool)

(assert (=> d!72931 e!236898))

(declare-fun res!223912 () Bool)

(assert (=> d!72931 (=> (not res!223912) (not e!236898))))

(assert (=> d!72931 (= res!223912 (not (contains!2460 lt!184565 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!72931 (= lt!184565 e!236894)))

(declare-fun c!54195 () Bool)

(assert (=> d!72931 (= c!54195 (bvsge #b00000000000000000000000000000000 (size!11395 lt!184413)))))

(assert (=> d!72931 (validMask!0 mask!970)))

(assert (=> d!72931 (= (getCurrentListMapNoExtraKeys!954 lt!184413 lt!184419 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!184565)))

(declare-fun b!391107 () Bool)

(assert (=> b!391107 (= e!236894 e!236900)))

(declare-fun c!54194 () Bool)

(assert (=> b!391107 (= c!54194 (validKeyInArray!0 (select (arr!11043 lt!184413) #b00000000000000000000000000000000)))))

(declare-fun bm!27610 () Bool)

(assert (=> bm!27610 (= call!27613 (getCurrentListMapNoExtraKeys!954 lt!184413 lt!184419 mask!970 extraKeys!453 zeroValue!472 minValue!472 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!514))))

(declare-fun b!391108 () Bool)

(assert (=> b!391108 (= e!236899 e!236897)))

(declare-fun c!54196 () Bool)

(assert (=> b!391108 (= c!54196 (bvslt #b00000000000000000000000000000000 (size!11395 lt!184413)))))

(declare-fun b!391109 () Bool)

(assert (=> b!391109 (= e!236897 (isEmpty!554 lt!184565))))

(declare-fun b!391110 () Bool)

(assert (=> b!391110 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11395 lt!184413)))))

(assert (=> b!391110 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11396 lt!184419)))))

(assert (=> b!391110 (= e!236896 (= (apply!303 lt!184565 (select (arr!11043 lt!184413) #b00000000000000000000000000000000)) (get!5592 (select (arr!11044 lt!184419) #b00000000000000000000000000000000) (dynLambda!641 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!391111 () Bool)

(assert (=> b!391111 (= e!236900 call!27613)))

(assert (= (and d!72931 c!54195) b!391102))

(assert (= (and d!72931 (not c!54195)) b!391107))

(assert (= (and b!391107 c!54194) b!391100))

(assert (= (and b!391107 (not c!54194)) b!391111))

(assert (= (or b!391100 b!391111) bm!27610))

(assert (= (and d!72931 res!223912) b!391106))

(assert (= (and b!391106 res!223910) b!391104))

(assert (= (and b!391104 res!223909) b!391101))

(assert (= (and b!391104 c!54193) b!391105))

(assert (= (and b!391104 (not c!54193)) b!391108))

(assert (= (and b!391105 res!223911) b!391110))

(assert (= (and b!391108 c!54196) b!391103))

(assert (= (and b!391108 (not c!54196)) b!391109))

(declare-fun b_lambda!8707 () Bool)

(assert (=> (not b_lambda!8707) (not b!391100)))

(assert (=> b!391100 t!11551))

(declare-fun b_and!16315 () Bool)

(assert (= b_and!16313 (and (=> t!11551 result!5751) b_and!16315)))

(declare-fun b_lambda!8709 () Bool)

(assert (=> (not b_lambda!8709) (not b!391110)))

(assert (=> b!391110 t!11551))

(declare-fun b_and!16317 () Bool)

(assert (= b_and!16315 (and (=> t!11551 result!5751) b_and!16317)))

(declare-fun m!387481 () Bool)

(assert (=> d!72931 m!387481))

(assert (=> d!72931 m!387283))

(assert (=> b!391101 m!387385))

(assert (=> b!391101 m!387385))

(assert (=> b!391101 m!387387))

(assert (=> b!391107 m!387385))

(assert (=> b!391107 m!387385))

(assert (=> b!391107 m!387387))

(declare-fun m!387483 () Bool)

(assert (=> b!391109 m!387483))

(assert (=> b!391105 m!387385))

(assert (=> b!391105 m!387385))

(declare-fun m!387485 () Bool)

(assert (=> b!391105 m!387485))

(declare-fun m!387487 () Bool)

(assert (=> bm!27610 m!387487))

(assert (=> b!391103 m!387487))

(declare-fun m!387489 () Bool)

(assert (=> b!391100 m!387489))

(declare-fun m!387491 () Bool)

(assert (=> b!391100 m!387491))

(assert (=> b!391100 m!387409))

(declare-fun m!387493 () Bool)

(assert (=> b!391100 m!387493))

(assert (=> b!391100 m!387491))

(declare-fun m!387495 () Bool)

(assert (=> b!391100 m!387495))

(declare-fun m!387497 () Bool)

(assert (=> b!391100 m!387497))

(assert (=> b!391100 m!387385))

(assert (=> b!391100 m!387493))

(assert (=> b!391100 m!387409))

(declare-fun m!387499 () Bool)

(assert (=> b!391100 m!387499))

(declare-fun m!387501 () Bool)

(assert (=> b!391106 m!387501))

(assert (=> b!391110 m!387385))

(declare-fun m!387503 () Bool)

(assert (=> b!391110 m!387503))

(assert (=> b!391110 m!387409))

(assert (=> b!391110 m!387493))

(assert (=> b!391110 m!387385))

(assert (=> b!391110 m!387493))

(assert (=> b!391110 m!387409))

(assert (=> b!391110 m!387499))

(assert (=> b!390904 d!72931))

(declare-fun b!391118 () Bool)

(declare-fun e!236906 () Bool)

(declare-fun call!27619 () ListLongMap!5421)

(declare-fun call!27618 () ListLongMap!5421)

(assert (=> b!391118 (= e!236906 (= call!27619 call!27618))))

(declare-fun bm!27616 () Bool)

(assert (=> bm!27616 (= call!27618 (getCurrentListMapNoExtraKeys!954 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun b!391119 () Bool)

(declare-fun e!236905 () Bool)

(assert (=> b!391119 (= e!236905 e!236906)))

(declare-fun c!54199 () Bool)

(assert (=> b!391119 (= c!54199 (bvsle #b00000000000000000000000000000000 i!548))))

(declare-fun b!391120 () Bool)

(assert (=> b!391120 (= e!236906 (= call!27619 (+!1024 call!27618 (tuple2!6495 k0!778 v!373))))))

(declare-fun bm!27615 () Bool)

(assert (=> bm!27615 (= call!27619 (getCurrentListMapNoExtraKeys!954 (array!23168 (store (arr!11043 _keys!658) i!548 k0!778) (size!11395 _keys!658)) (array!23170 (store (arr!11044 _values!506) i!548 (ValueCellFull!4479 v!373)) (size!11396 _values!506)) mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun d!72933 () Bool)

(assert (=> d!72933 e!236905))

(declare-fun res!223915 () Bool)

(assert (=> d!72933 (=> (not res!223915) (not e!236905))))

(assert (=> d!72933 (= res!223915 (and (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11395 _keys!658)))) (or (not (bvsle #b00000000000000000000000000000000 i!548)) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11396 _values!506)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11395 _keys!658)))) (or (bvsle #b00000000000000000000000000000000 i!548) (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11396 _values!506))))))))

(declare-fun lt!184569 () Unit!11939)

(declare-fun choose!1326 (array!23167 array!23169 (_ BitVec 32) (_ BitVec 32) V!13965 V!13965 (_ BitVec 32) (_ BitVec 64) V!13965 (_ BitVec 32) Int) Unit!11939)

(assert (=> d!72933 (= lt!184569 (choose!1326 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514))))

(assert (=> d!72933 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!11395 _keys!658)))))

(assert (=> d!72933 (= (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!249 _keys!658 _values!506 mask!970 extraKeys!453 zeroValue!472 minValue!472 i!548 k0!778 v!373 #b00000000000000000000000000000000 defaultEntry!514) lt!184569)))

(assert (= (and d!72933 res!223915) b!391119))

(assert (= (and b!391119 c!54199) b!391120))

(assert (= (and b!391119 (not c!54199)) b!391118))

(assert (= (or b!391120 b!391118) bm!27616))

(assert (= (or b!391120 b!391118) bm!27615))

(assert (=> bm!27616 m!387293))

(declare-fun m!387505 () Bool)

(assert (=> b!391120 m!387505))

(assert (=> bm!27615 m!387317))

(assert (=> bm!27615 m!387299))

(declare-fun m!387507 () Bool)

(assert (=> bm!27615 m!387507))

(declare-fun m!387509 () Bool)

(assert (=> d!72933 m!387509))

(assert (=> b!390904 d!72933))

(declare-fun b!391121 () Bool)

(declare-fun e!236911 () ListLongMap!5421)

(declare-fun call!27622 () ListLongMap!5421)

(assert (=> b!391121 (= e!236911 call!27622)))

(declare-fun b!391123 () Bool)

(declare-fun e!236914 () Bool)

(assert (=> b!391123 (= e!236914 (validKeyInArray!0 (select (arr!11043 lt!184413) #b00000000000000000000000000000000)))))

(declare-fun b!391124 () Bool)

(declare-fun e!236909 () Bool)

(declare-fun lt!184579 () ListLongMap!5421)

(assert (=> b!391124 (= e!236909 (= (apply!303 lt!184579 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!472))))

(declare-fun b!391125 () Bool)

(declare-fun e!236916 () Unit!11939)

(declare-fun Unit!11944 () Unit!11939)

(assert (=> b!391125 (= e!236916 Unit!11944)))

(declare-fun bm!27617 () Bool)

(declare-fun call!27626 () ListLongMap!5421)

(assert (=> bm!27617 (= call!27622 call!27626)))

(declare-fun c!54203 () Bool)

(declare-fun bm!27618 () Bool)

(declare-fun call!27620 () ListLongMap!5421)

(declare-fun call!27625 () ListLongMap!5421)

(declare-fun call!27624 () ListLongMap!5421)

(declare-fun c!54205 () Bool)

(assert (=> bm!27618 (= call!27626 (+!1024 (ite c!54203 call!27624 (ite c!54205 call!27625 call!27620)) (ite (or c!54203 c!54205) (tuple2!6495 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472) (tuple2!6495 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472))))))

(declare-fun b!391126 () Bool)

(declare-fun e!236919 () ListLongMap!5421)

(assert (=> b!391126 (= e!236919 call!27622)))

(declare-fun bm!27619 () Bool)

(assert (=> bm!27619 (= call!27624 (getCurrentListMapNoExtraKeys!954 lt!184413 lt!184419 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun bm!27620 () Bool)

(assert (=> bm!27620 (= call!27620 call!27625)))

(declare-fun bm!27621 () Bool)

(assert (=> bm!27621 (= call!27625 call!27624)))

(declare-fun b!391127 () Bool)

(declare-fun lt!184585 () Unit!11939)

(assert (=> b!391127 (= e!236916 lt!184585)))

(declare-fun lt!184587 () ListLongMap!5421)

(assert (=> b!391127 (= lt!184587 (getCurrentListMapNoExtraKeys!954 lt!184413 lt!184419 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184586 () (_ BitVec 64))

(assert (=> b!391127 (= lt!184586 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184571 () (_ BitVec 64))

(assert (=> b!391127 (= lt!184571 (select (arr!11043 lt!184413) #b00000000000000000000000000000000))))

(declare-fun lt!184578 () Unit!11939)

(assert (=> b!391127 (= lt!184578 (addStillContains!279 lt!184587 lt!184586 zeroValue!472 lt!184571))))

(assert (=> b!391127 (contains!2460 (+!1024 lt!184587 (tuple2!6495 lt!184586 zeroValue!472)) lt!184571)))

(declare-fun lt!184572 () Unit!11939)

(assert (=> b!391127 (= lt!184572 lt!184578)))

(declare-fun lt!184581 () ListLongMap!5421)

(assert (=> b!391127 (= lt!184581 (getCurrentListMapNoExtraKeys!954 lt!184413 lt!184419 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184577 () (_ BitVec 64))

(assert (=> b!391127 (= lt!184577 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184582 () (_ BitVec 64))

(assert (=> b!391127 (= lt!184582 (select (arr!11043 lt!184413) #b00000000000000000000000000000000))))

(declare-fun lt!184583 () Unit!11939)

(assert (=> b!391127 (= lt!184583 (addApplyDifferent!279 lt!184581 lt!184577 minValue!472 lt!184582))))

(assert (=> b!391127 (= (apply!303 (+!1024 lt!184581 (tuple2!6495 lt!184577 minValue!472)) lt!184582) (apply!303 lt!184581 lt!184582))))

(declare-fun lt!184570 () Unit!11939)

(assert (=> b!391127 (= lt!184570 lt!184583)))

(declare-fun lt!184591 () ListLongMap!5421)

(assert (=> b!391127 (= lt!184591 (getCurrentListMapNoExtraKeys!954 lt!184413 lt!184419 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184574 () (_ BitVec 64))

(assert (=> b!391127 (= lt!184574 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184589 () (_ BitVec 64))

(assert (=> b!391127 (= lt!184589 (select (arr!11043 lt!184413) #b00000000000000000000000000000000))))

(declare-fun lt!184575 () Unit!11939)

(assert (=> b!391127 (= lt!184575 (addApplyDifferent!279 lt!184591 lt!184574 zeroValue!472 lt!184589))))

(assert (=> b!391127 (= (apply!303 (+!1024 lt!184591 (tuple2!6495 lt!184574 zeroValue!472)) lt!184589) (apply!303 lt!184591 lt!184589))))

(declare-fun lt!184576 () Unit!11939)

(assert (=> b!391127 (= lt!184576 lt!184575)))

(declare-fun lt!184590 () ListLongMap!5421)

(assert (=> b!391127 (= lt!184590 (getCurrentListMapNoExtraKeys!954 lt!184413 lt!184419 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514))))

(declare-fun lt!184573 () (_ BitVec 64))

(assert (=> b!391127 (= lt!184573 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!184584 () (_ BitVec 64))

(assert (=> b!391127 (= lt!184584 (select (arr!11043 lt!184413) #b00000000000000000000000000000000))))

(assert (=> b!391127 (= lt!184585 (addApplyDifferent!279 lt!184590 lt!184573 minValue!472 lt!184584))))

(assert (=> b!391127 (= (apply!303 (+!1024 lt!184590 (tuple2!6495 lt!184573 minValue!472)) lt!184584) (apply!303 lt!184590 lt!184584))))

(declare-fun b!391122 () Bool)

(declare-fun e!236918 () Bool)

(declare-fun e!236917 () Bool)

(assert (=> b!391122 (= e!236918 e!236917)))

(declare-fun res!223923 () Bool)

(assert (=> b!391122 (=> (not res!223923) (not e!236917))))

(assert (=> b!391122 (= res!223923 (contains!2460 lt!184579 (select (arr!11043 lt!184413) #b00000000000000000000000000000000)))))

(assert (=> b!391122 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11395 lt!184413)))))

(declare-fun d!72935 () Bool)

(declare-fun e!236912 () Bool)

(assert (=> d!72935 e!236912))

(declare-fun res!223924 () Bool)

(assert (=> d!72935 (=> (not res!223924) (not e!236912))))

(assert (=> d!72935 (= res!223924 (or (bvsge #b00000000000000000000000000000000 (size!11395 lt!184413)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11395 lt!184413)))))))

(declare-fun lt!184588 () ListLongMap!5421)

(assert (=> d!72935 (= lt!184579 lt!184588)))

(declare-fun lt!184580 () Unit!11939)

(assert (=> d!72935 (= lt!184580 e!236916)))

(declare-fun c!54201 () Bool)

(assert (=> d!72935 (= c!54201 e!236914)))

(declare-fun res!223917 () Bool)

(assert (=> d!72935 (=> (not res!223917) (not e!236914))))

(assert (=> d!72935 (= res!223917 (bvslt #b00000000000000000000000000000000 (size!11395 lt!184413)))))

(declare-fun e!236913 () ListLongMap!5421)

(assert (=> d!72935 (= lt!184588 e!236913)))

(assert (=> d!72935 (= c!54203 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!72935 (validMask!0 mask!970)))

(assert (=> d!72935 (= (getCurrentListMap!2092 lt!184413 lt!184419 mask!970 extraKeys!453 zeroValue!472 minValue!472 #b00000000000000000000000000000000 defaultEntry!514) lt!184579)))

(declare-fun b!391128 () Bool)

(assert (=> b!391128 (= e!236913 (+!1024 call!27626 (tuple2!6495 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!472)))))

(declare-fun b!391129 () Bool)

(declare-fun e!236915 () Bool)

(assert (=> b!391129 (= e!236912 e!236915)))

(declare-fun c!54200 () Bool)

(assert (=> b!391129 (= c!54200 (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!391130 () Bool)

(declare-fun res!223920 () Bool)

(assert (=> b!391130 (=> (not res!223920) (not e!236912))))

(assert (=> b!391130 (= res!223920 e!236918)))

(declare-fun res!223918 () Bool)

(assert (=> b!391130 (=> res!223918 e!236918)))

(declare-fun e!236908 () Bool)

(assert (=> b!391130 (= res!223918 (not e!236908))))

(declare-fun res!223919 () Bool)

(assert (=> b!391130 (=> (not res!223919) (not e!236908))))

(assert (=> b!391130 (= res!223919 (bvslt #b00000000000000000000000000000000 (size!11395 lt!184413)))))

(declare-fun b!391131 () Bool)

(assert (=> b!391131 (= e!236908 (validKeyInArray!0 (select (arr!11043 lt!184413) #b00000000000000000000000000000000)))))

(declare-fun b!391132 () Bool)

(declare-fun e!236907 () Bool)

(assert (=> b!391132 (= e!236915 e!236907)))

(declare-fun res!223921 () Bool)

(declare-fun call!27623 () Bool)

(assert (=> b!391132 (= res!223921 call!27623)))

(assert (=> b!391132 (=> (not res!223921) (not e!236907))))

(declare-fun b!391133 () Bool)

(declare-fun e!236910 () Bool)

(assert (=> b!391133 (= e!236910 e!236909)))

(declare-fun res!223922 () Bool)

(declare-fun call!27621 () Bool)

(assert (=> b!391133 (= res!223922 call!27621)))

(assert (=> b!391133 (=> (not res!223922) (not e!236909))))

(declare-fun b!391134 () Bool)

(assert (=> b!391134 (= e!236907 (= (apply!303 lt!184579 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!472))))

(declare-fun b!391135 () Bool)

(assert (=> b!391135 (= e!236911 call!27620)))

(declare-fun bm!27622 () Bool)

(assert (=> bm!27622 (= call!27623 (contains!2460 lt!184579 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!391136 () Bool)

(declare-fun c!54202 () Bool)

(assert (=> b!391136 (= c!54202 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!391136 (= e!236919 e!236911)))

(declare-fun b!391137 () Bool)

(assert (=> b!391137 (= e!236915 (not call!27623))))

(declare-fun bm!27623 () Bool)

(assert (=> bm!27623 (= call!27621 (contains!2460 lt!184579 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!391138 () Bool)

(assert (=> b!391138 (= e!236917 (= (apply!303 lt!184579 (select (arr!11043 lt!184413) #b00000000000000000000000000000000)) (get!5592 (select (arr!11044 lt!184419) #b00000000000000000000000000000000) (dynLambda!641 defaultEntry!514 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!391138 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11396 lt!184419)))))

(assert (=> b!391138 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!11395 lt!184413)))))

(declare-fun b!391139 () Bool)

(declare-fun res!223916 () Bool)

(assert (=> b!391139 (=> (not res!223916) (not e!236912))))

(assert (=> b!391139 (= res!223916 e!236910)))

(declare-fun c!54204 () Bool)

(assert (=> b!391139 (= c!54204 (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!391140 () Bool)

(assert (=> b!391140 (= e!236913 e!236919)))

(assert (=> b!391140 (= c!54205 (and (not (= (bvand extraKeys!453 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!453 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!391141 () Bool)

(assert (=> b!391141 (= e!236910 (not call!27621))))

(assert (= (and d!72935 c!54203) b!391128))

(assert (= (and d!72935 (not c!54203)) b!391140))

(assert (= (and b!391140 c!54205) b!391126))

(assert (= (and b!391140 (not c!54205)) b!391136))

(assert (= (and b!391136 c!54202) b!391121))

(assert (= (and b!391136 (not c!54202)) b!391135))

(assert (= (or b!391121 b!391135) bm!27620))

(assert (= (or b!391126 bm!27620) bm!27621))

(assert (= (or b!391126 b!391121) bm!27617))

(assert (= (or b!391128 bm!27621) bm!27619))

(assert (= (or b!391128 bm!27617) bm!27618))

(assert (= (and d!72935 res!223917) b!391123))

(assert (= (and d!72935 c!54201) b!391127))

(assert (= (and d!72935 (not c!54201)) b!391125))

(assert (= (and d!72935 res!223924) b!391130))

(assert (= (and b!391130 res!223919) b!391131))

(assert (= (and b!391130 (not res!223918)) b!391122))

(assert (= (and b!391122 res!223923) b!391138))

(assert (= (and b!391130 res!223920) b!391139))

(assert (= (and b!391139 c!54204) b!391133))

(assert (= (and b!391139 (not c!54204)) b!391141))

(assert (= (and b!391133 res!223922) b!391124))

(assert (= (or b!391133 b!391141) bm!27623))

(assert (= (and b!391139 res!223916) b!391129))

(assert (= (and b!391129 c!54200) b!391132))

(assert (= (and b!391129 (not c!54200)) b!391137))

(assert (= (and b!391132 res!223921) b!391134))

(assert (= (or b!391132 b!391137) bm!27622))

(declare-fun b_lambda!8711 () Bool)

(assert (=> (not b_lambda!8711) (not b!391138)))

(assert (=> b!391138 t!11551))

(declare-fun b_and!16319 () Bool)

(assert (= b_and!16317 (and (=> t!11551 result!5751) b_and!16319)))

(assert (=> b!391123 m!387385))

(assert (=> b!391123 m!387385))

(assert (=> b!391123 m!387387))

(assert (=> bm!27619 m!387305))

(declare-fun m!387511 () Bool)

(assert (=> b!391124 m!387511))

(declare-fun m!387513 () Bool)

(assert (=> bm!27622 m!387513))

(assert (=> d!72935 m!387283))

(assert (=> b!391138 m!387409))

(assert (=> b!391138 m!387493))

(assert (=> b!391138 m!387409))

(assert (=> b!391138 m!387499))

(assert (=> b!391138 m!387385))

(declare-fun m!387515 () Bool)

(assert (=> b!391138 m!387515))

(assert (=> b!391138 m!387385))

(assert (=> b!391138 m!387493))

(assert (=> b!391131 m!387385))

(assert (=> b!391131 m!387385))

(assert (=> b!391131 m!387387))

(declare-fun m!387517 () Bool)

(assert (=> b!391128 m!387517))

(declare-fun m!387519 () Bool)

(assert (=> b!391134 m!387519))

(declare-fun m!387521 () Bool)

(assert (=> bm!27618 m!387521))

(declare-fun m!387523 () Bool)

(assert (=> bm!27623 m!387523))

(declare-fun m!387525 () Bool)

(assert (=> b!391127 m!387525))

(declare-fun m!387527 () Bool)

(assert (=> b!391127 m!387527))

(assert (=> b!391127 m!387525))

(declare-fun m!387529 () Bool)

(assert (=> b!391127 m!387529))

(declare-fun m!387531 () Bool)

(assert (=> b!391127 m!387531))

(declare-fun m!387533 () Bool)

(assert (=> b!391127 m!387533))

(declare-fun m!387535 () Bool)

(assert (=> b!391127 m!387535))

(declare-fun m!387537 () Bool)

(assert (=> b!391127 m!387537))

(declare-fun m!387539 () Bool)

(assert (=> b!391127 m!387539))

(assert (=> b!391127 m!387531))

(declare-fun m!387541 () Bool)

(assert (=> b!391127 m!387541))

(assert (=> b!391127 m!387305))

(assert (=> b!391127 m!387385))

(declare-fun m!387543 () Bool)

(assert (=> b!391127 m!387543))

(assert (=> b!391127 m!387539))

(declare-fun m!387545 () Bool)

(assert (=> b!391127 m!387545))

(declare-fun m!387547 () Bool)

(assert (=> b!391127 m!387547))

(declare-fun m!387549 () Bool)

(assert (=> b!391127 m!387549))

(assert (=> b!391127 m!387537))

(declare-fun m!387551 () Bool)

(assert (=> b!391127 m!387551))

(declare-fun m!387553 () Bool)

(assert (=> b!391127 m!387553))

(assert (=> b!391122 m!387385))

(assert (=> b!391122 m!387385))

(declare-fun m!387555 () Bool)

(assert (=> b!391122 m!387555))

(assert (=> b!390904 d!72935))

(declare-fun d!72937 () Bool)

(assert (=> d!72937 (= (validMask!0 mask!970) (and (or (= mask!970 #b00000000000000000000000000000111) (= mask!970 #b00000000000000000000000000001111) (= mask!970 #b00000000000000000000000000011111) (= mask!970 #b00000000000000000000000000111111) (= mask!970 #b00000000000000000000000001111111) (= mask!970 #b00000000000000000000000011111111) (= mask!970 #b00000000000000000000000111111111) (= mask!970 #b00000000000000000000001111111111) (= mask!970 #b00000000000000000000011111111111) (= mask!970 #b00000000000000000000111111111111) (= mask!970 #b00000000000000000001111111111111) (= mask!970 #b00000000000000000011111111111111) (= mask!970 #b00000000000000000111111111111111) (= mask!970 #b00000000000000001111111111111111) (= mask!970 #b00000000000000011111111111111111) (= mask!970 #b00000000000000111111111111111111) (= mask!970 #b00000000000001111111111111111111) (= mask!970 #b00000000000011111111111111111111) (= mask!970 #b00000000000111111111111111111111) (= mask!970 #b00000000001111111111111111111111) (= mask!970 #b00000000011111111111111111111111) (= mask!970 #b00000000111111111111111111111111) (= mask!970 #b00000001111111111111111111111111) (= mask!970 #b00000011111111111111111111111111) (= mask!970 #b00000111111111111111111111111111) (= mask!970 #b00001111111111111111111111111111) (= mask!970 #b00011111111111111111111111111111) (= mask!970 #b00111111111111111111111111111111)) (bvsle mask!970 #b00111111111111111111111111111111)))))

(assert (=> start!38012 d!72937))

(declare-fun d!72939 () Bool)

(assert (=> d!72939 (= (array_inv!8098 _values!506) (bvsge (size!11396 _values!506) #b00000000000000000000000000000000))))

(assert (=> start!38012 d!72939))

(declare-fun d!72941 () Bool)

(assert (=> d!72941 (= (array_inv!8099 _keys!658) (bvsge (size!11395 _keys!658) #b00000000000000000000000000000000))))

(assert (=> start!38012 d!72941))

(declare-fun d!72943 () Bool)

(declare-fun e!236920 () Bool)

(assert (=> d!72943 e!236920))

(declare-fun res!223926 () Bool)

(assert (=> d!72943 (=> (not res!223926) (not e!236920))))

(declare-fun lt!184593 () ListLongMap!5421)

(assert (=> d!72943 (= res!223926 (contains!2460 lt!184593 (_1!3257 lt!184420)))))

(declare-fun lt!184595 () List!6376)

(assert (=> d!72943 (= lt!184593 (ListLongMap!5422 lt!184595))))

(declare-fun lt!184594 () Unit!11939)

(declare-fun lt!184592 () Unit!11939)

(assert (=> d!72943 (= lt!184594 lt!184592)))

(assert (=> d!72943 (= (getValueByKey!360 lt!184595 (_1!3257 lt!184420)) (Some!365 (_2!3257 lt!184420)))))

(assert (=> d!72943 (= lt!184592 (lemmaContainsTupThenGetReturnValue!184 lt!184595 (_1!3257 lt!184420) (_2!3257 lt!184420)))))

(assert (=> d!72943 (= lt!184595 (insertStrictlySorted!186 (toList!2726 lt!184418) (_1!3257 lt!184420) (_2!3257 lt!184420)))))

(assert (=> d!72943 (= (+!1024 lt!184418 lt!184420) lt!184593)))

(declare-fun b!391142 () Bool)

(declare-fun res!223925 () Bool)

(assert (=> b!391142 (=> (not res!223925) (not e!236920))))

(assert (=> b!391142 (= res!223925 (= (getValueByKey!360 (toList!2726 lt!184593) (_1!3257 lt!184420)) (Some!365 (_2!3257 lt!184420))))))

(declare-fun b!391143 () Bool)

(assert (=> b!391143 (= e!236920 (contains!2461 (toList!2726 lt!184593) lt!184420))))

(assert (= (and d!72943 res!223926) b!391142))

(assert (= (and b!391142 res!223925) b!391143))

(declare-fun m!387557 () Bool)

(assert (=> d!72943 m!387557))

(declare-fun m!387559 () Bool)

(assert (=> d!72943 m!387559))

(declare-fun m!387561 () Bool)

(assert (=> d!72943 m!387561))

(declare-fun m!387563 () Bool)

(assert (=> d!72943 m!387563))

(declare-fun m!387565 () Bool)

(assert (=> b!391142 m!387565))

(declare-fun m!387567 () Bool)

(assert (=> b!391143 m!387567))

(assert (=> b!390900 d!72943))

(declare-fun d!72945 () Bool)

(declare-fun res!223931 () Bool)

(declare-fun e!236925 () Bool)

(assert (=> d!72945 (=> res!223931 e!236925)))

(assert (=> d!72945 (= res!223931 (= (select (arr!11043 _keys!658) #b00000000000000000000000000000000) k0!778))))

(assert (=> d!72945 (= (arrayContainsKey!0 _keys!658 k0!778 #b00000000000000000000000000000000) e!236925)))

(declare-fun b!391148 () Bool)

(declare-fun e!236926 () Bool)

(assert (=> b!391148 (= e!236925 e!236926)))

(declare-fun res!223932 () Bool)

(assert (=> b!391148 (=> (not res!223932) (not e!236926))))

(assert (=> b!391148 (= res!223932 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!11395 _keys!658)))))

(declare-fun b!391149 () Bool)

(assert (=> b!391149 (= e!236926 (arrayContainsKey!0 _keys!658 k0!778 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!72945 (not res!223931)) b!391148))

(assert (= (and b!391148 res!223932) b!391149))

(assert (=> d!72945 m!387369))

(declare-fun m!387569 () Bool)

(assert (=> b!391149 m!387569))

(assert (=> b!390909 d!72945))

(declare-fun b!391150 () Bool)

(declare-fun e!236929 () Bool)

(declare-fun e!236927 () Bool)

(assert (=> b!391150 (= e!236929 e!236927)))

(declare-fun res!223934 () Bool)

(assert (=> b!391150 (=> (not res!223934) (not e!236927))))

(declare-fun e!236928 () Bool)

(assert (=> b!391150 (= res!223934 (not e!236928))))

(declare-fun res!223933 () Bool)

(assert (=> b!391150 (=> (not res!223933) (not e!236928))))

(assert (=> b!391150 (= res!223933 (validKeyInArray!0 (select (arr!11043 lt!184413) #b00000000000000000000000000000000)))))

(declare-fun d!72947 () Bool)

(declare-fun res!223935 () Bool)

(assert (=> d!72947 (=> res!223935 e!236929)))

(assert (=> d!72947 (= res!223935 (bvsge #b00000000000000000000000000000000 (size!11395 lt!184413)))))

(assert (=> d!72947 (= (arrayNoDuplicates!0 lt!184413 #b00000000000000000000000000000000 Nil!6374) e!236929)))

(declare-fun b!391151 () Bool)

(assert (=> b!391151 (= e!236928 (contains!2459 Nil!6374 (select (arr!11043 lt!184413) #b00000000000000000000000000000000)))))

(declare-fun b!391152 () Bool)

(declare-fun e!236930 () Bool)

(assert (=> b!391152 (= e!236927 e!236930)))

(declare-fun c!54206 () Bool)

(assert (=> b!391152 (= c!54206 (validKeyInArray!0 (select (arr!11043 lt!184413) #b00000000000000000000000000000000)))))

(declare-fun b!391153 () Bool)

(declare-fun call!27627 () Bool)

(assert (=> b!391153 (= e!236930 call!27627)))

(declare-fun bm!27624 () Bool)

(assert (=> bm!27624 (= call!27627 (arrayNoDuplicates!0 lt!184413 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!54206 (Cons!6373 (select (arr!11043 lt!184413) #b00000000000000000000000000000000) Nil!6374) Nil!6374)))))

(declare-fun b!391154 () Bool)

(assert (=> b!391154 (= e!236930 call!27627)))

(assert (= (and d!72947 (not res!223935)) b!391150))

(assert (= (and b!391150 res!223933) b!391151))

(assert (= (and b!391150 res!223934) b!391152))

(assert (= (and b!391152 c!54206) b!391154))

(assert (= (and b!391152 (not c!54206)) b!391153))

(assert (= (or b!391154 b!391153) bm!27624))

(assert (=> b!391150 m!387385))

(assert (=> b!391150 m!387385))

(assert (=> b!391150 m!387387))

(assert (=> b!391151 m!387385))

(assert (=> b!391151 m!387385))

(declare-fun m!387571 () Bool)

(assert (=> b!391151 m!387571))

(assert (=> b!391152 m!387385))

(assert (=> b!391152 m!387385))

(assert (=> b!391152 m!387387))

(assert (=> bm!27624 m!387385))

(declare-fun m!387573 () Bool)

(assert (=> bm!27624 m!387573))

(assert (=> b!390905 d!72947))

(declare-fun d!72949 () Bool)

(declare-fun e!236931 () Bool)

(assert (=> d!72949 e!236931))

(declare-fun res!223937 () Bool)

(assert (=> d!72949 (=> (not res!223937) (not e!236931))))

(declare-fun lt!184597 () ListLongMap!5421)

(assert (=> d!72949 (= res!223937 (contains!2460 lt!184597 (_1!3257 lt!184420)))))

(declare-fun lt!184599 () List!6376)

(assert (=> d!72949 (= lt!184597 (ListLongMap!5422 lt!184599))))

(declare-fun lt!184598 () Unit!11939)

(declare-fun lt!184596 () Unit!11939)

(assert (=> d!72949 (= lt!184598 lt!184596)))

(assert (=> d!72949 (= (getValueByKey!360 lt!184599 (_1!3257 lt!184420)) (Some!365 (_2!3257 lt!184420)))))

(assert (=> d!72949 (= lt!184596 (lemmaContainsTupThenGetReturnValue!184 lt!184599 (_1!3257 lt!184420) (_2!3257 lt!184420)))))

(assert (=> d!72949 (= lt!184599 (insertStrictlySorted!186 (toList!2726 lt!184417) (_1!3257 lt!184420) (_2!3257 lt!184420)))))

(assert (=> d!72949 (= (+!1024 lt!184417 lt!184420) lt!184597)))

(declare-fun b!391155 () Bool)

(declare-fun res!223936 () Bool)

(assert (=> b!391155 (=> (not res!223936) (not e!236931))))

(assert (=> b!391155 (= res!223936 (= (getValueByKey!360 (toList!2726 lt!184597) (_1!3257 lt!184420)) (Some!365 (_2!3257 lt!184420))))))

(declare-fun b!391156 () Bool)

(assert (=> b!391156 (= e!236931 (contains!2461 (toList!2726 lt!184597) lt!184420))))

(assert (= (and d!72949 res!223937) b!391155))

(assert (= (and b!391155 res!223936) b!391156))

(declare-fun m!387575 () Bool)

(assert (=> d!72949 m!387575))

(declare-fun m!387577 () Bool)

(assert (=> d!72949 m!387577))

(declare-fun m!387579 () Bool)

(assert (=> d!72949 m!387579))

(declare-fun m!387581 () Bool)

(assert (=> d!72949 m!387581))

(declare-fun m!387583 () Bool)

(assert (=> b!391155 m!387583))

(declare-fun m!387585 () Bool)

(assert (=> b!391156 m!387585))

(assert (=> b!390910 d!72949))

(declare-fun d!72951 () Bool)

(assert (=> d!72951 (= (validKeyInArray!0 k0!778) (and (not (= k0!778 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!778 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!390906 d!72951))

(declare-fun d!72953 () Bool)

(declare-fun e!236932 () Bool)

(assert (=> d!72953 e!236932))

(declare-fun res!223939 () Bool)

(assert (=> d!72953 (=> (not res!223939) (not e!236932))))

(declare-fun lt!184601 () ListLongMap!5421)

(assert (=> d!72953 (= res!223939 (contains!2460 lt!184601 (_1!3257 lt!184420)))))

(declare-fun lt!184603 () List!6376)

(assert (=> d!72953 (= lt!184601 (ListLongMap!5422 lt!184603))))

(declare-fun lt!184602 () Unit!11939)

(declare-fun lt!184600 () Unit!11939)

(assert (=> d!72953 (= lt!184602 lt!184600)))

(assert (=> d!72953 (= (getValueByKey!360 lt!184603 (_1!3257 lt!184420)) (Some!365 (_2!3257 lt!184420)))))

(assert (=> d!72953 (= lt!184600 (lemmaContainsTupThenGetReturnValue!184 lt!184603 (_1!3257 lt!184420) (_2!3257 lt!184420)))))

(assert (=> d!72953 (= lt!184603 (insertStrictlySorted!186 (toList!2726 lt!184416) (_1!3257 lt!184420) (_2!3257 lt!184420)))))

(assert (=> d!72953 (= (+!1024 lt!184416 lt!184420) lt!184601)))

(declare-fun b!391157 () Bool)

(declare-fun res!223938 () Bool)

(assert (=> b!391157 (=> (not res!223938) (not e!236932))))

(assert (=> b!391157 (= res!223938 (= (getValueByKey!360 (toList!2726 lt!184601) (_1!3257 lt!184420)) (Some!365 (_2!3257 lt!184420))))))

(declare-fun b!391158 () Bool)

(assert (=> b!391158 (= e!236932 (contains!2461 (toList!2726 lt!184601) lt!184420))))

(assert (= (and d!72953 res!223939) b!391157))

(assert (= (and b!391157 res!223938) b!391158))

(declare-fun m!387587 () Bool)

(assert (=> d!72953 m!387587))

(declare-fun m!387589 () Bool)

(assert (=> d!72953 m!387589))

(declare-fun m!387591 () Bool)

(assert (=> d!72953 m!387591))

(declare-fun m!387593 () Bool)

(assert (=> d!72953 m!387593))

(declare-fun m!387595 () Bool)

(assert (=> b!391157 m!387595))

(declare-fun m!387597 () Bool)

(assert (=> b!391158 m!387597))

(assert (=> b!390911 d!72953))

(declare-fun condMapEmpty!16056 () Bool)

(declare-fun mapDefault!16056 () ValueCell!4479)

(assert (=> mapNonEmpty!16050 (= condMapEmpty!16056 (= mapRest!16050 ((as const (Array (_ BitVec 32) ValueCell!4479)) mapDefault!16056)))))

(declare-fun e!236937 () Bool)

(declare-fun mapRes!16056 () Bool)

(assert (=> mapNonEmpty!16050 (= tp!31688 (and e!236937 mapRes!16056))))

(declare-fun mapNonEmpty!16056 () Bool)

(declare-fun tp!31698 () Bool)

(declare-fun e!236938 () Bool)

(assert (=> mapNonEmpty!16056 (= mapRes!16056 (and tp!31698 e!236938))))

(declare-fun mapKey!16056 () (_ BitVec 32))

(declare-fun mapRest!16056 () (Array (_ BitVec 32) ValueCell!4479))

(declare-fun mapValue!16056 () ValueCell!4479)

(assert (=> mapNonEmpty!16056 (= mapRest!16050 (store mapRest!16056 mapKey!16056 mapValue!16056))))

(declare-fun b!391166 () Bool)

(assert (=> b!391166 (= e!236937 tp_is_empty!9645)))

(declare-fun mapIsEmpty!16056 () Bool)

(assert (=> mapIsEmpty!16056 mapRes!16056))

(declare-fun b!391165 () Bool)

(assert (=> b!391165 (= e!236938 tp_is_empty!9645)))

(assert (= (and mapNonEmpty!16050 condMapEmpty!16056) mapIsEmpty!16056))

(assert (= (and mapNonEmpty!16050 (not condMapEmpty!16056)) mapNonEmpty!16056))

(assert (= (and mapNonEmpty!16056 ((_ is ValueCellFull!4479) mapValue!16056)) b!391165))

(assert (= (and mapNonEmpty!16050 ((_ is ValueCellFull!4479) mapDefault!16056)) b!391166))

(declare-fun m!387599 () Bool)

(assert (=> mapNonEmpty!16056 m!387599))

(declare-fun b_lambda!8713 () Bool)

(assert (= b_lambda!8707 (or (and start!38012 b_free!8973) b_lambda!8713)))

(declare-fun b_lambda!8715 () Bool)

(assert (= b_lambda!8709 (or (and start!38012 b_free!8973) b_lambda!8715)))

(declare-fun b_lambda!8717 () Bool)

(assert (= b_lambda!8703 (or (and start!38012 b_free!8973) b_lambda!8717)))

(declare-fun b_lambda!8719 () Bool)

(assert (= b_lambda!8701 (or (and start!38012 b_free!8973) b_lambda!8719)))

(declare-fun b_lambda!8721 () Bool)

(assert (= b_lambda!8711 (or (and start!38012 b_free!8973) b_lambda!8721)))

(declare-fun b_lambda!8723 () Bool)

(assert (= b_lambda!8705 (or (and start!38012 b_free!8973) b_lambda!8723)))

(check-sat (not bm!27619) (not b!391080) (not b!391110) (not b!391020) (not b_lambda!8721) (not b!390985) (not b_lambda!8715) (not bm!27622) (not b!391138) (not b!391142) (not b!391100) (not bm!27609) (not b!390991) (not b!390986) (not b_lambda!8723) (not b!391109) (not bm!27623) (not d!72949) (not b!391018) (not bm!27608) (not d!72931) (not b!391152) (not b!391127) (not b!391076) (not b!390972) (not bm!27616) (not b!391158) (not bm!27605) (not b_lambda!8719) (not b!391023) (not bm!27581) (not b!391123) (not b!391128) (not d!72943) (not bm!27615) (not b_lambda!8717) (not bm!27604) tp_is_empty!9645 (not b!391027) (not b!391079) (not b!391107) (not b!391106) (not b!391099) (not b!391131) (not b!391105) (not b!391156) (not b!391143) (not b!391149) (not b!391124) (not b!391155) (not bm!27585) (not b!391098) (not b_lambda!8713) (not d!72933) (not b!391134) (not b!391086) (not bm!27610) (not d!72929) (not b_next!8973) (not b!391101) (not bm!27588) (not b!391083) (not b!391103) (not b!391022) (not d!72953) (not d!72925) (not b!391024) (not b!391157) (not b!391151) (not b!391074) (not d!72935) (not bm!27584) b_and!16319 (not d!72927) (not mapNonEmpty!16056) (not bm!27624) (not b!390990) (not b!391122) (not bm!27618) (not b!390971) (not b!390984) (not b!391017) (not b!391150) (not b!391090) (not b!391075) (not b!391026) (not b!391120))
(check-sat b_and!16319 (not b_next!8973))
