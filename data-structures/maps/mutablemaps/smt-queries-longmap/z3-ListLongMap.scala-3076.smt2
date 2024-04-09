; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43338 () Bool)

(assert start!43338)

(declare-fun b_free!12177 () Bool)

(declare-fun b_next!12177 () Bool)

(assert (=> start!43338 (= b_free!12177 (not b_next!12177))))

(declare-fun tp!42804 () Bool)

(declare-fun b_and!20949 () Bool)

(assert (=> start!43338 (= tp!42804 b_and!20949)))

(declare-fun b!479812 () Bool)

(declare-fun res!286248 () Bool)

(declare-fun e!282338 () Bool)

(assert (=> b!479812 (=> (not res!286248) (not e!282338))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-datatypes ((array!31015 0))(
  ( (array!31016 (arr!14910 (Array (_ BitVec 32) (_ BitVec 64))) (size!15268 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31015)

(declare-datatypes ((V!19323 0))(
  ( (V!19324 (val!6892 Int)) )
))
(declare-datatypes ((ValueCell!6483 0))(
  ( (ValueCellFull!6483 (v!9178 V!19323)) (EmptyCell!6483) )
))
(declare-datatypes ((array!31017 0))(
  ( (array!31018 (arr!14911 (Array (_ BitVec 32) ValueCell!6483)) (size!15269 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31017)

(declare-fun extraKeys!1437 () (_ BitVec 32))

(assert (=> b!479812 (= res!286248 (and (= (size!15269 _values!1516) (bvadd #b00000000000000000000000000000001 mask!2352)) (= (size!15268 _keys!1874) (size!15269 _values!1516)) (bvsge mask!2352 #b00000000000000000000000000000000) (bvsge extraKeys!1437 #b00000000000000000000000000000000) (bvsle extraKeys!1437 #b00000000000000000000000000000011)))))

(declare-fun b!479813 () Bool)

(declare-fun e!282336 () Bool)

(declare-fun tp_is_empty!13689 () Bool)

(assert (=> b!479813 (= e!282336 tp_is_empty!13689)))

(declare-fun b!479814 () Bool)

(declare-fun e!282334 () Bool)

(declare-fun k0!1332 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!31015 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!479814 (= e!282334 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!479815 () Bool)

(assert (=> b!479815 (= e!282334 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!479816 () Bool)

(declare-fun e!282335 () Bool)

(declare-fun e!282337 () Bool)

(declare-fun mapRes!22234 () Bool)

(assert (=> b!479816 (= e!282335 (and e!282337 mapRes!22234))))

(declare-fun condMapEmpty!22234 () Bool)

(declare-fun mapDefault!22234 () ValueCell!6483)

(assert (=> b!479816 (= condMapEmpty!22234 (= (arr!14911 _values!1516) ((as const (Array (_ BitVec 32) ValueCell!6483)) mapDefault!22234)))))

(declare-fun b!479817 () Bool)

(assert (=> b!479817 (= e!282337 tp_is_empty!13689)))

(declare-fun b!479818 () Bool)

(declare-fun res!286253 () Bool)

(assert (=> b!479818 (=> (not res!286253) (not e!282338))))

(declare-fun minValue!1458 () V!19323)

(declare-fun zeroValue!1458 () V!19323)

(declare-fun defaultEntry!1519 () Int)

(declare-datatypes ((tuple2!9042 0))(
  ( (tuple2!9043 (_1!4531 (_ BitVec 64)) (_2!4531 V!19323)) )
))
(declare-datatypes ((List!9155 0))(
  ( (Nil!9152) (Cons!9151 (h!10007 tuple2!9042) (t!15371 List!9155)) )
))
(declare-datatypes ((ListLongMap!7969 0))(
  ( (ListLongMap!7970 (toList!4000 List!9155)) )
))
(declare-fun contains!2608 (ListLongMap!7969 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!2292 (array!31015 array!31017 (_ BitVec 32) (_ BitVec 32) V!19323 V!19323 (_ BitVec 32) Int) ListLongMap!7969)

(assert (=> b!479818 (= res!286253 (contains!2608 (getCurrentListMap!2292 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332))))

(declare-fun mapNonEmpty!22234 () Bool)

(declare-fun tp!42805 () Bool)

(assert (=> mapNonEmpty!22234 (= mapRes!22234 (and tp!42805 e!282336))))

(declare-fun mapValue!22234 () ValueCell!6483)

(declare-fun mapKey!22234 () (_ BitVec 32))

(declare-fun mapRest!22234 () (Array (_ BitVec 32) ValueCell!6483))

(assert (=> mapNonEmpty!22234 (= (arr!14911 _values!1516) (store mapRest!22234 mapKey!22234 mapValue!22234))))

(declare-fun b!479819 () Bool)

(declare-fun e!282339 () Bool)

(assert (=> b!479819 (= e!282339 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun res!286254 () Bool)

(assert (=> start!43338 (=> (not res!286254) (not e!282338))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43338 (= res!286254 (validMask!0 mask!2352))))

(assert (=> start!43338 e!282338))

(assert (=> start!43338 true))

(assert (=> start!43338 tp_is_empty!13689))

(declare-fun array_inv!10742 (array!31017) Bool)

(assert (=> start!43338 (and (array_inv!10742 _values!1516) e!282335)))

(assert (=> start!43338 tp!42804))

(declare-fun array_inv!10743 (array!31015) Bool)

(assert (=> start!43338 (array_inv!10743 _keys!1874)))

(declare-fun b!479820 () Bool)

(declare-fun res!286249 () Bool)

(assert (=> b!479820 (=> (not res!286249) (not e!282338))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31015 (_ BitVec 32)) Bool)

(assert (=> b!479820 (= res!286249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352))))

(declare-fun b!479821 () Bool)

(declare-fun res!286250 () Bool)

(assert (=> b!479821 (=> (not res!286250) (not e!282338))))

(declare-datatypes ((List!9156 0))(
  ( (Nil!9153) (Cons!9152 (h!10008 (_ BitVec 64)) (t!15372 List!9156)) )
))
(declare-fun arrayNoDuplicates!0 (array!31015 (_ BitVec 32) List!9156) Bool)

(assert (=> b!479821 (= res!286250 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9153))))

(declare-fun b!479822 () Bool)

(declare-fun res!286252 () Bool)

(assert (=> b!479822 (=> (not res!286252) (not e!282338))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!479822 (= res!286252 (validKeyInArray!0 k0!1332))))

(declare-fun mapIsEmpty!22234 () Bool)

(assert (=> mapIsEmpty!22234 mapRes!22234))

(declare-fun b!479823 () Bool)

(assert (=> b!479823 (= e!282338 (not e!282339))))

(declare-fun res!286251 () Bool)

(assert (=> b!479823 (=> res!286251 e!282339)))

(assert (=> b!479823 (= res!286251 (or (bvsge #b00000000000000000000000000000000 (size!15268 _keys!1874)) (bvsge (size!15268 _keys!1874) #b01111111111111111111111111111111)))))

(assert (=> b!479823 e!282334))

(declare-fun c!57646 () Bool)

(assert (=> b!479823 (= c!57646 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!14044 0))(
  ( (Unit!14045) )
))
(declare-fun lt!217970 () Unit!14044)

(declare-fun lemmaKeyInListMapIsInArray!114 (array!31015 array!31017 (_ BitVec 32) (_ BitVec 32) V!19323 V!19323 (_ BitVec 64) Int) Unit!14044)

(assert (=> b!479823 (= lt!217970 (lemmaKeyInListMapIsInArray!114 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(assert (= (and start!43338 res!286254) b!479812))

(assert (= (and b!479812 res!286248) b!479820))

(assert (= (and b!479820 res!286249) b!479821))

(assert (= (and b!479821 res!286250) b!479818))

(assert (= (and b!479818 res!286253) b!479822))

(assert (= (and b!479822 res!286252) b!479823))

(assert (= (and b!479823 c!57646) b!479814))

(assert (= (and b!479823 (not c!57646)) b!479815))

(assert (= (and b!479823 (not res!286251)) b!479819))

(assert (= (and b!479816 condMapEmpty!22234) mapIsEmpty!22234))

(assert (= (and b!479816 (not condMapEmpty!22234)) mapNonEmpty!22234))

(get-info :version)

(assert (= (and mapNonEmpty!22234 ((_ is ValueCellFull!6483) mapValue!22234)) b!479813))

(assert (= (and b!479816 ((_ is ValueCellFull!6483) mapDefault!22234)) b!479817))

(assert (= start!43338 b!479816))

(declare-fun m!461627 () Bool)

(assert (=> mapNonEmpty!22234 m!461627))

(declare-fun m!461629 () Bool)

(assert (=> b!479820 m!461629))

(declare-fun m!461631 () Bool)

(assert (=> b!479818 m!461631))

(assert (=> b!479818 m!461631))

(declare-fun m!461633 () Bool)

(assert (=> b!479818 m!461633))

(declare-fun m!461635 () Bool)

(assert (=> b!479823 m!461635))

(declare-fun m!461637 () Bool)

(assert (=> b!479814 m!461637))

(declare-fun m!461639 () Bool)

(assert (=> b!479821 m!461639))

(declare-fun m!461641 () Bool)

(assert (=> start!43338 m!461641))

(declare-fun m!461643 () Bool)

(assert (=> start!43338 m!461643))

(declare-fun m!461645 () Bool)

(assert (=> start!43338 m!461645))

(assert (=> b!479819 m!461637))

(declare-fun m!461647 () Bool)

(assert (=> b!479822 m!461647))

(check-sat b_and!20949 (not b!479823) (not mapNonEmpty!22234) (not b_next!12177) (not b!479821) (not b!479819) tp_is_empty!13689 (not b!479818) (not start!43338) (not b!479820) (not b!479822) (not b!479814))
(check-sat b_and!20949 (not b_next!12177))
(get-model)

(declare-fun d!76577 () Bool)

(assert (=> d!76577 (= (validKeyInArray!0 k0!1332) (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!479822 d!76577))

(declare-fun d!76579 () Bool)

(declare-fun e!282366 () Bool)

(assert (=> d!76579 e!282366))

(declare-fun res!286278 () Bool)

(assert (=> d!76579 (=> res!286278 e!282366)))

(declare-fun lt!217985 () Bool)

(assert (=> d!76579 (= res!286278 (not lt!217985))))

(declare-fun lt!217982 () Bool)

(assert (=> d!76579 (= lt!217985 lt!217982)))

(declare-fun lt!217983 () Unit!14044)

(declare-fun e!282367 () Unit!14044)

(assert (=> d!76579 (= lt!217983 e!282367)))

(declare-fun c!57652 () Bool)

(assert (=> d!76579 (= c!57652 lt!217982)))

(declare-fun containsKey!354 (List!9155 (_ BitVec 64)) Bool)

(assert (=> d!76579 (= lt!217982 (containsKey!354 (toList!4000 (getCurrentListMap!2292 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(assert (=> d!76579 (= (contains!2608 (getCurrentListMap!2292 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) k0!1332) lt!217985)))

(declare-fun b!479866 () Bool)

(declare-fun lt!217984 () Unit!14044)

(assert (=> b!479866 (= e!282367 lt!217984)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!303 (List!9155 (_ BitVec 64)) Unit!14044)

(assert (=> b!479866 (= lt!217984 (lemmaContainsKeyImpliesGetValueByKeyDefined!303 (toList!4000 (getCurrentListMap!2292 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(declare-datatypes ((Option!398 0))(
  ( (Some!397 (v!9180 V!19323)) (None!396) )
))
(declare-fun isDefined!304 (Option!398) Bool)

(declare-fun getValueByKey!392 (List!9155 (_ BitVec 64)) Option!398)

(assert (=> b!479866 (isDefined!304 (getValueByKey!392 (toList!4000 (getCurrentListMap!2292 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332))))

(declare-fun b!479867 () Bool)

(declare-fun Unit!14048 () Unit!14044)

(assert (=> b!479867 (= e!282367 Unit!14048)))

(declare-fun b!479868 () Bool)

(assert (=> b!479868 (= e!282366 (isDefined!304 (getValueByKey!392 (toList!4000 (getCurrentListMap!2292 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519)) k0!1332)))))

(assert (= (and d!76579 c!57652) b!479866))

(assert (= (and d!76579 (not c!57652)) b!479867))

(assert (= (and d!76579 (not res!286278)) b!479868))

(declare-fun m!461671 () Bool)

(assert (=> d!76579 m!461671))

(declare-fun m!461673 () Bool)

(assert (=> b!479866 m!461673))

(declare-fun m!461675 () Bool)

(assert (=> b!479866 m!461675))

(assert (=> b!479866 m!461675))

(declare-fun m!461677 () Bool)

(assert (=> b!479866 m!461677))

(assert (=> b!479868 m!461675))

(assert (=> b!479868 m!461675))

(assert (=> b!479868 m!461677))

(assert (=> b!479818 d!76579))

(declare-fun e!282399 () Bool)

(declare-fun lt!218043 () ListLongMap!7969)

(declare-fun b!479911 () Bool)

(declare-fun apply!340 (ListLongMap!7969 (_ BitVec 64)) V!19323)

(declare-fun get!7246 (ValueCell!6483 V!19323) V!19323)

(declare-fun dynLambda!950 (Int (_ BitVec 64)) V!19323)

(assert (=> b!479911 (= e!282399 (= (apply!340 lt!218043 (select (arr!14910 _keys!1874) #b00000000000000000000000000000000)) (get!7246 (select (arr!14911 _values!1516) #b00000000000000000000000000000000) (dynLambda!950 defaultEntry!1519 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!479911 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15269 _values!1516)))))

(assert (=> b!479911 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15268 _keys!1874)))))

(declare-fun b!479912 () Bool)

(declare-fun res!286301 () Bool)

(declare-fun e!282398 () Bool)

(assert (=> b!479912 (=> (not res!286301) (not e!282398))))

(declare-fun e!282397 () Bool)

(assert (=> b!479912 (= res!286301 e!282397)))

(declare-fun c!57665 () Bool)

(assert (=> b!479912 (= c!57665 (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!30883 () Bool)

(declare-fun call!30892 () ListLongMap!7969)

(declare-fun getCurrentListMapNoExtraKeys!2113 (array!31015 array!31017 (_ BitVec 32) (_ BitVec 32) V!19323 V!19323 (_ BitVec 32) Int) ListLongMap!7969)

(assert (=> bm!30883 (= call!30892 (getCurrentListMapNoExtraKeys!2113 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun b!479913 () Bool)

(declare-fun c!57669 () Bool)

(assert (=> b!479913 (= c!57669 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!282396 () ListLongMap!7969)

(declare-fun e!282402 () ListLongMap!7969)

(assert (=> b!479913 (= e!282396 e!282402)))

(declare-fun b!479914 () Bool)

(declare-fun res!286300 () Bool)

(assert (=> b!479914 (=> (not res!286300) (not e!282398))))

(declare-fun e!282394 () Bool)

(assert (=> b!479914 (= res!286300 e!282394)))

(declare-fun res!286305 () Bool)

(assert (=> b!479914 (=> res!286305 e!282394)))

(declare-fun e!282403 () Bool)

(assert (=> b!479914 (= res!286305 (not e!282403))))

(declare-fun res!286303 () Bool)

(assert (=> b!479914 (=> (not res!286303) (not e!282403))))

(assert (=> b!479914 (= res!286303 (bvslt #b00000000000000000000000000000000 (size!15268 _keys!1874)))))

(declare-fun b!479915 () Bool)

(declare-fun e!282406 () ListLongMap!7969)

(declare-fun call!30888 () ListLongMap!7969)

(declare-fun +!1743 (ListLongMap!7969 tuple2!9042) ListLongMap!7969)

(assert (=> b!479915 (= e!282406 (+!1743 call!30888 (tuple2!9043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1458)))))

(declare-fun b!479916 () Bool)

(declare-fun call!30889 () ListLongMap!7969)

(assert (=> b!479916 (= e!282402 call!30889)))

(declare-fun b!479917 () Bool)

(declare-fun e!282395 () Unit!14044)

(declare-fun lt!218048 () Unit!14044)

(assert (=> b!479917 (= e!282395 lt!218048)))

(declare-fun lt!218045 () ListLongMap!7969)

(assert (=> b!479917 (= lt!218045 (getCurrentListMapNoExtraKeys!2113 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218037 () (_ BitVec 64))

(assert (=> b!479917 (= lt!218037 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218035 () (_ BitVec 64))

(assert (=> b!479917 (= lt!218035 (select (arr!14910 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218033 () Unit!14044)

(declare-fun addStillContains!298 (ListLongMap!7969 (_ BitVec 64) V!19323 (_ BitVec 64)) Unit!14044)

(assert (=> b!479917 (= lt!218033 (addStillContains!298 lt!218045 lt!218037 zeroValue!1458 lt!218035))))

(assert (=> b!479917 (contains!2608 (+!1743 lt!218045 (tuple2!9043 lt!218037 zeroValue!1458)) lt!218035)))

(declare-fun lt!218042 () Unit!14044)

(assert (=> b!479917 (= lt!218042 lt!218033)))

(declare-fun lt!218032 () ListLongMap!7969)

(assert (=> b!479917 (= lt!218032 (getCurrentListMapNoExtraKeys!2113 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218031 () (_ BitVec 64))

(assert (=> b!479917 (= lt!218031 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218040 () (_ BitVec 64))

(assert (=> b!479917 (= lt!218040 (select (arr!14910 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218038 () Unit!14044)

(declare-fun addApplyDifferent!298 (ListLongMap!7969 (_ BitVec 64) V!19323 (_ BitVec 64)) Unit!14044)

(assert (=> b!479917 (= lt!218038 (addApplyDifferent!298 lt!218032 lt!218031 minValue!1458 lt!218040))))

(assert (=> b!479917 (= (apply!340 (+!1743 lt!218032 (tuple2!9043 lt!218031 minValue!1458)) lt!218040) (apply!340 lt!218032 lt!218040))))

(declare-fun lt!218047 () Unit!14044)

(assert (=> b!479917 (= lt!218047 lt!218038)))

(declare-fun lt!218039 () ListLongMap!7969)

(assert (=> b!479917 (= lt!218039 (getCurrentListMapNoExtraKeys!2113 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218050 () (_ BitVec 64))

(assert (=> b!479917 (= lt!218050 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218036 () (_ BitVec 64))

(assert (=> b!479917 (= lt!218036 (select (arr!14910 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218041 () Unit!14044)

(assert (=> b!479917 (= lt!218041 (addApplyDifferent!298 lt!218039 lt!218050 zeroValue!1458 lt!218036))))

(assert (=> b!479917 (= (apply!340 (+!1743 lt!218039 (tuple2!9043 lt!218050 zeroValue!1458)) lt!218036) (apply!340 lt!218039 lt!218036))))

(declare-fun lt!218046 () Unit!14044)

(assert (=> b!479917 (= lt!218046 lt!218041)))

(declare-fun lt!218044 () ListLongMap!7969)

(assert (=> b!479917 (= lt!218044 (getCurrentListMapNoExtraKeys!2113 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519))))

(declare-fun lt!218034 () (_ BitVec 64))

(assert (=> b!479917 (= lt!218034 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!218049 () (_ BitVec 64))

(assert (=> b!479917 (= lt!218049 (select (arr!14910 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> b!479917 (= lt!218048 (addApplyDifferent!298 lt!218044 lt!218034 minValue!1458 lt!218049))))

(assert (=> b!479917 (= (apply!340 (+!1743 lt!218044 (tuple2!9043 lt!218034 minValue!1458)) lt!218049) (apply!340 lt!218044 lt!218049))))

(declare-fun bm!30884 () Bool)

(declare-fun call!30886 () ListLongMap!7969)

(assert (=> bm!30884 (= call!30886 call!30892)))

(declare-fun b!479918 () Bool)

(declare-fun Unit!14049 () Unit!14044)

(assert (=> b!479918 (= e!282395 Unit!14049)))

(declare-fun d!76581 () Bool)

(assert (=> d!76581 e!282398))

(declare-fun res!286304 () Bool)

(assert (=> d!76581 (=> (not res!286304) (not e!282398))))

(assert (=> d!76581 (= res!286304 (or (bvsge #b00000000000000000000000000000000 (size!15268 _keys!1874)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15268 _keys!1874)))))))

(declare-fun lt!218030 () ListLongMap!7969)

(assert (=> d!76581 (= lt!218043 lt!218030)))

(declare-fun lt!218051 () Unit!14044)

(assert (=> d!76581 (= lt!218051 e!282395)))

(declare-fun c!57666 () Bool)

(declare-fun e!282404 () Bool)

(assert (=> d!76581 (= c!57666 e!282404)))

(declare-fun res!286302 () Bool)

(assert (=> d!76581 (=> (not res!286302) (not e!282404))))

(assert (=> d!76581 (= res!286302 (bvslt #b00000000000000000000000000000000 (size!15268 _keys!1874)))))

(assert (=> d!76581 (= lt!218030 e!282406)))

(declare-fun c!57670 () Bool)

(assert (=> d!76581 (= c!57670 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!76581 (validMask!0 mask!2352)))

(assert (=> d!76581 (= (getCurrentListMap!2292 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 #b00000000000000000000000000000000 defaultEntry!1519) lt!218043)))

(declare-fun b!479919 () Bool)

(declare-fun e!282400 () Bool)

(assert (=> b!479919 (= e!282397 e!282400)))

(declare-fun res!286299 () Bool)

(declare-fun call!30891 () Bool)

(assert (=> b!479919 (= res!286299 call!30891)))

(assert (=> b!479919 (=> (not res!286299) (not e!282400))))

(declare-fun b!479920 () Bool)

(assert (=> b!479920 (= e!282396 call!30889)))

(declare-fun b!479921 () Bool)

(declare-fun e!282401 () Bool)

(assert (=> b!479921 (= e!282401 (= (apply!340 lt!218043 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1458))))

(declare-fun b!479922 () Bool)

(assert (=> b!479922 (= e!282400 (= (apply!340 lt!218043 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1458))))

(declare-fun b!479923 () Bool)

(assert (=> b!479923 (= e!282394 e!282399)))

(declare-fun res!286297 () Bool)

(assert (=> b!479923 (=> (not res!286297) (not e!282399))))

(assert (=> b!479923 (= res!286297 (contains!2608 lt!218043 (select (arr!14910 _keys!1874) #b00000000000000000000000000000000)))))

(assert (=> b!479923 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!15268 _keys!1874)))))

(declare-fun b!479924 () Bool)

(assert (=> b!479924 (= e!282397 (not call!30891))))

(declare-fun b!479925 () Bool)

(declare-fun call!30890 () ListLongMap!7969)

(assert (=> b!479925 (= e!282402 call!30890)))

(declare-fun b!479926 () Bool)

(assert (=> b!479926 (= e!282404 (validKeyInArray!0 (select (arr!14910 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!479927 () Bool)

(declare-fun e!282405 () Bool)

(assert (=> b!479927 (= e!282405 e!282401)))

(declare-fun res!286298 () Bool)

(declare-fun call!30887 () Bool)

(assert (=> b!479927 (= res!286298 call!30887)))

(assert (=> b!479927 (=> (not res!286298) (not e!282401))))

(declare-fun c!57667 () Bool)

(declare-fun bm!30885 () Bool)

(assert (=> bm!30885 (= call!30888 (+!1743 (ite c!57670 call!30892 (ite c!57667 call!30886 call!30890)) (ite (or c!57670 c!57667) (tuple2!9043 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1458) (tuple2!9043 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1458))))))

(declare-fun b!479928 () Bool)

(assert (=> b!479928 (= e!282403 (validKeyInArray!0 (select (arr!14910 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun bm!30886 () Bool)

(assert (=> bm!30886 (= call!30891 (contains!2608 lt!218043 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!479929 () Bool)

(assert (=> b!479929 (= e!282398 e!282405)))

(declare-fun c!57668 () Bool)

(assert (=> b!479929 (= c!57668 (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!30887 () Bool)

(assert (=> bm!30887 (= call!30889 call!30888)))

(declare-fun b!479930 () Bool)

(assert (=> b!479930 (= e!282405 (not call!30887))))

(declare-fun b!479931 () Bool)

(assert (=> b!479931 (= e!282406 e!282396)))

(assert (=> b!479931 (= c!57667 (and (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!30888 () Bool)

(assert (=> bm!30888 (= call!30887 (contains!2608 lt!218043 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!30889 () Bool)

(assert (=> bm!30889 (= call!30890 call!30886)))

(assert (= (and d!76581 c!57670) b!479915))

(assert (= (and d!76581 (not c!57670)) b!479931))

(assert (= (and b!479931 c!57667) b!479920))

(assert (= (and b!479931 (not c!57667)) b!479913))

(assert (= (and b!479913 c!57669) b!479916))

(assert (= (and b!479913 (not c!57669)) b!479925))

(assert (= (or b!479916 b!479925) bm!30889))

(assert (= (or b!479920 bm!30889) bm!30884))

(assert (= (or b!479920 b!479916) bm!30887))

(assert (= (or b!479915 bm!30884) bm!30883))

(assert (= (or b!479915 bm!30887) bm!30885))

(assert (= (and d!76581 res!286302) b!479926))

(assert (= (and d!76581 c!57666) b!479917))

(assert (= (and d!76581 (not c!57666)) b!479918))

(assert (= (and d!76581 res!286304) b!479914))

(assert (= (and b!479914 res!286303) b!479928))

(assert (= (and b!479914 (not res!286305)) b!479923))

(assert (= (and b!479923 res!286297) b!479911))

(assert (= (and b!479914 res!286300) b!479912))

(assert (= (and b!479912 c!57665) b!479919))

(assert (= (and b!479912 (not c!57665)) b!479924))

(assert (= (and b!479919 res!286299) b!479922))

(assert (= (or b!479919 b!479924) bm!30886))

(assert (= (and b!479912 res!286301) b!479929))

(assert (= (and b!479929 c!57668) b!479927))

(assert (= (and b!479929 (not c!57668)) b!479930))

(assert (= (and b!479927 res!286298) b!479921))

(assert (= (or b!479927 b!479930) bm!30888))

(declare-fun b_lambda!10825 () Bool)

(assert (=> (not b_lambda!10825) (not b!479911)))

(declare-fun t!15375 () Bool)

(declare-fun tb!4169 () Bool)

(assert (=> (and start!43338 (= defaultEntry!1519 defaultEntry!1519) t!15375) tb!4169))

(declare-fun result!7759 () Bool)

(assert (=> tb!4169 (= result!7759 tp_is_empty!13689)))

(assert (=> b!479911 t!15375))

(declare-fun b_and!20953 () Bool)

(assert (= b_and!20949 (and (=> t!15375 result!7759) b_and!20953)))

(declare-fun m!461679 () Bool)

(assert (=> bm!30886 m!461679))

(declare-fun m!461681 () Bool)

(assert (=> bm!30885 m!461681))

(declare-fun m!461683 () Bool)

(assert (=> b!479926 m!461683))

(assert (=> b!479926 m!461683))

(declare-fun m!461685 () Bool)

(assert (=> b!479926 m!461685))

(assert (=> d!76581 m!461641))

(declare-fun m!461687 () Bool)

(assert (=> b!479922 m!461687))

(assert (=> b!479923 m!461683))

(assert (=> b!479923 m!461683))

(declare-fun m!461689 () Bool)

(assert (=> b!479923 m!461689))

(declare-fun m!461691 () Bool)

(assert (=> b!479917 m!461691))

(declare-fun m!461693 () Bool)

(assert (=> b!479917 m!461693))

(declare-fun m!461695 () Bool)

(assert (=> b!479917 m!461695))

(assert (=> b!479917 m!461695))

(declare-fun m!461697 () Bool)

(assert (=> b!479917 m!461697))

(assert (=> b!479917 m!461683))

(declare-fun m!461699 () Bool)

(assert (=> b!479917 m!461699))

(declare-fun m!461701 () Bool)

(assert (=> b!479917 m!461701))

(assert (=> b!479917 m!461699))

(declare-fun m!461703 () Bool)

(assert (=> b!479917 m!461703))

(declare-fun m!461705 () Bool)

(assert (=> b!479917 m!461705))

(declare-fun m!461707 () Bool)

(assert (=> b!479917 m!461707))

(declare-fun m!461709 () Bool)

(assert (=> b!479917 m!461709))

(declare-fun m!461711 () Bool)

(assert (=> b!479917 m!461711))

(declare-fun m!461713 () Bool)

(assert (=> b!479917 m!461713))

(declare-fun m!461715 () Bool)

(assert (=> b!479917 m!461715))

(declare-fun m!461717 () Bool)

(assert (=> b!479917 m!461717))

(assert (=> b!479917 m!461709))

(declare-fun m!461719 () Bool)

(assert (=> b!479917 m!461719))

(assert (=> b!479917 m!461691))

(declare-fun m!461721 () Bool)

(assert (=> b!479917 m!461721))

(declare-fun m!461723 () Bool)

(assert (=> bm!30888 m!461723))

(assert (=> bm!30883 m!461703))

(declare-fun m!461725 () Bool)

(assert (=> b!479911 m!461725))

(assert (=> b!479911 m!461683))

(declare-fun m!461727 () Bool)

(assert (=> b!479911 m!461727))

(assert (=> b!479911 m!461727))

(assert (=> b!479911 m!461725))

(declare-fun m!461729 () Bool)

(assert (=> b!479911 m!461729))

(assert (=> b!479911 m!461683))

(declare-fun m!461731 () Bool)

(assert (=> b!479911 m!461731))

(assert (=> b!479928 m!461683))

(assert (=> b!479928 m!461683))

(assert (=> b!479928 m!461685))

(declare-fun m!461733 () Bool)

(assert (=> b!479915 m!461733))

(declare-fun m!461735 () Bool)

(assert (=> b!479921 m!461735))

(assert (=> b!479818 d!76581))

(declare-fun d!76583 () Bool)

(declare-fun res!286310 () Bool)

(declare-fun e!282411 () Bool)

(assert (=> d!76583 (=> res!286310 e!282411)))

(assert (=> d!76583 (= res!286310 (= (select (arr!14910 _keys!1874) #b00000000000000000000000000000000) k0!1332))))

(assert (=> d!76583 (= (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000) e!282411)))

(declare-fun b!479938 () Bool)

(declare-fun e!282412 () Bool)

(assert (=> b!479938 (= e!282411 e!282412)))

(declare-fun res!286311 () Bool)

(assert (=> b!479938 (=> (not res!286311) (not e!282412))))

(assert (=> b!479938 (= res!286311 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15268 _keys!1874)))))

(declare-fun b!479939 () Bool)

(assert (=> b!479939 (= e!282412 (arrayContainsKey!0 _keys!1874 k0!1332 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!76583 (not res!286310)) b!479938))

(assert (= (and b!479938 res!286311) b!479939))

(assert (=> d!76583 m!461683))

(declare-fun m!461737 () Bool)

(assert (=> b!479939 m!461737))

(assert (=> b!479814 d!76583))

(declare-fun d!76585 () Bool)

(declare-fun e!282415 () Bool)

(assert (=> d!76585 e!282415))

(declare-fun c!57673 () Bool)

(assert (=> d!76585 (= c!57673 (and (not (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1332 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!218054 () Unit!14044)

(declare-fun choose!1383 (array!31015 array!31017 (_ BitVec 32) (_ BitVec 32) V!19323 V!19323 (_ BitVec 64) Int) Unit!14044)

(assert (=> d!76585 (= lt!218054 (choose!1383 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519))))

(assert (=> d!76585 (validMask!0 mask!2352)))

(assert (=> d!76585 (= (lemmaKeyInListMapIsInArray!114 _keys!1874 _values!1516 mask!2352 extraKeys!1437 zeroValue!1458 minValue!1458 k0!1332 defaultEntry!1519) lt!218054)))

(declare-fun b!479944 () Bool)

(assert (=> b!479944 (= e!282415 (arrayContainsKey!0 _keys!1874 k0!1332 #b00000000000000000000000000000000))))

(declare-fun b!479945 () Bool)

(assert (=> b!479945 (= e!282415 (ite (= k0!1332 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1437 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!76585 c!57673) b!479944))

(assert (= (and d!76585 (not c!57673)) b!479945))

(declare-fun m!461739 () Bool)

(assert (=> d!76585 m!461739))

(assert (=> d!76585 m!461641))

(assert (=> b!479944 m!461637))

(assert (=> b!479823 d!76585))

(assert (=> b!479819 d!76583))

(declare-fun d!76587 () Bool)

(declare-fun res!286316 () Bool)

(declare-fun e!282424 () Bool)

(assert (=> d!76587 (=> res!286316 e!282424)))

(assert (=> d!76587 (= res!286316 (bvsge #b00000000000000000000000000000000 (size!15268 _keys!1874)))))

(assert (=> d!76587 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1874 mask!2352) e!282424)))

(declare-fun b!479954 () Bool)

(declare-fun e!282422 () Bool)

(declare-fun call!30895 () Bool)

(assert (=> b!479954 (= e!282422 call!30895)))

(declare-fun bm!30892 () Bool)

(assert (=> bm!30892 (= call!30895 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1874 mask!2352))))

(declare-fun b!479955 () Bool)

(declare-fun e!282423 () Bool)

(assert (=> b!479955 (= e!282424 e!282423)))

(declare-fun c!57676 () Bool)

(assert (=> b!479955 (= c!57676 (validKeyInArray!0 (select (arr!14910 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!479956 () Bool)

(assert (=> b!479956 (= e!282423 e!282422)))

(declare-fun lt!218063 () (_ BitVec 64))

(assert (=> b!479956 (= lt!218063 (select (arr!14910 _keys!1874) #b00000000000000000000000000000000))))

(declare-fun lt!218061 () Unit!14044)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31015 (_ BitVec 64) (_ BitVec 32)) Unit!14044)

(assert (=> b!479956 (= lt!218061 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1874 lt!218063 #b00000000000000000000000000000000))))

(assert (=> b!479956 (arrayContainsKey!0 _keys!1874 lt!218063 #b00000000000000000000000000000000)))

(declare-fun lt!218062 () Unit!14044)

(assert (=> b!479956 (= lt!218062 lt!218061)))

(declare-fun res!286317 () Bool)

(declare-datatypes ((SeekEntryResult!3557 0))(
  ( (MissingZero!3557 (index!16407 (_ BitVec 32))) (Found!3557 (index!16408 (_ BitVec 32))) (Intermediate!3557 (undefined!4369 Bool) (index!16409 (_ BitVec 32)) (x!45084 (_ BitVec 32))) (Undefined!3557) (MissingVacant!3557 (index!16410 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31015 (_ BitVec 32)) SeekEntryResult!3557)

(assert (=> b!479956 (= res!286317 (= (seekEntryOrOpen!0 (select (arr!14910 _keys!1874) #b00000000000000000000000000000000) _keys!1874 mask!2352) (Found!3557 #b00000000000000000000000000000000)))))

(assert (=> b!479956 (=> (not res!286317) (not e!282422))))

(declare-fun b!479957 () Bool)

(assert (=> b!479957 (= e!282423 call!30895)))

(assert (= (and d!76587 (not res!286316)) b!479955))

(assert (= (and b!479955 c!57676) b!479956))

(assert (= (and b!479955 (not c!57676)) b!479957))

(assert (= (and b!479956 res!286317) b!479954))

(assert (= (or b!479954 b!479957) bm!30892))

(declare-fun m!461741 () Bool)

(assert (=> bm!30892 m!461741))

(assert (=> b!479955 m!461683))

(assert (=> b!479955 m!461683))

(assert (=> b!479955 m!461685))

(assert (=> b!479956 m!461683))

(declare-fun m!461743 () Bool)

(assert (=> b!479956 m!461743))

(declare-fun m!461745 () Bool)

(assert (=> b!479956 m!461745))

(assert (=> b!479956 m!461683))

(declare-fun m!461747 () Bool)

(assert (=> b!479956 m!461747))

(assert (=> b!479820 d!76587))

(declare-fun d!76589 () Bool)

(assert (=> d!76589 (= (validMask!0 mask!2352) (and (or (= mask!2352 #b00000000000000000000000000000111) (= mask!2352 #b00000000000000000000000000001111) (= mask!2352 #b00000000000000000000000000011111) (= mask!2352 #b00000000000000000000000000111111) (= mask!2352 #b00000000000000000000000001111111) (= mask!2352 #b00000000000000000000000011111111) (= mask!2352 #b00000000000000000000000111111111) (= mask!2352 #b00000000000000000000001111111111) (= mask!2352 #b00000000000000000000011111111111) (= mask!2352 #b00000000000000000000111111111111) (= mask!2352 #b00000000000000000001111111111111) (= mask!2352 #b00000000000000000011111111111111) (= mask!2352 #b00000000000000000111111111111111) (= mask!2352 #b00000000000000001111111111111111) (= mask!2352 #b00000000000000011111111111111111) (= mask!2352 #b00000000000000111111111111111111) (= mask!2352 #b00000000000001111111111111111111) (= mask!2352 #b00000000000011111111111111111111) (= mask!2352 #b00000000000111111111111111111111) (= mask!2352 #b00000000001111111111111111111111) (= mask!2352 #b00000000011111111111111111111111) (= mask!2352 #b00000000111111111111111111111111) (= mask!2352 #b00000001111111111111111111111111) (= mask!2352 #b00000011111111111111111111111111) (= mask!2352 #b00000111111111111111111111111111) (= mask!2352 #b00001111111111111111111111111111) (= mask!2352 #b00011111111111111111111111111111) (= mask!2352 #b00111111111111111111111111111111)) (bvsle mask!2352 #b00111111111111111111111111111111)))))

(assert (=> start!43338 d!76589))

(declare-fun d!76591 () Bool)

(assert (=> d!76591 (= (array_inv!10742 _values!1516) (bvsge (size!15269 _values!1516) #b00000000000000000000000000000000))))

(assert (=> start!43338 d!76591))

(declare-fun d!76593 () Bool)

(assert (=> d!76593 (= (array_inv!10743 _keys!1874) (bvsge (size!15268 _keys!1874) #b00000000000000000000000000000000))))

(assert (=> start!43338 d!76593))

(declare-fun bm!30895 () Bool)

(declare-fun call!30898 () Bool)

(declare-fun c!57679 () Bool)

(assert (=> bm!30895 (= call!30898 (arrayNoDuplicates!0 _keys!1874 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!57679 (Cons!9152 (select (arr!14910 _keys!1874) #b00000000000000000000000000000000) Nil!9153) Nil!9153)))))

(declare-fun b!479968 () Bool)

(declare-fun e!282434 () Bool)

(assert (=> b!479968 (= e!282434 call!30898)))

(declare-fun b!479969 () Bool)

(declare-fun e!282433 () Bool)

(assert (=> b!479969 (= e!282433 e!282434)))

(assert (=> b!479969 (= c!57679 (validKeyInArray!0 (select (arr!14910 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun d!76595 () Bool)

(declare-fun res!286325 () Bool)

(declare-fun e!282435 () Bool)

(assert (=> d!76595 (=> res!286325 e!282435)))

(assert (=> d!76595 (= res!286325 (bvsge #b00000000000000000000000000000000 (size!15268 _keys!1874)))))

(assert (=> d!76595 (= (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9153) e!282435)))

(declare-fun b!479970 () Bool)

(assert (=> b!479970 (= e!282434 call!30898)))

(declare-fun b!479971 () Bool)

(assert (=> b!479971 (= e!282435 e!282433)))

(declare-fun res!286326 () Bool)

(assert (=> b!479971 (=> (not res!286326) (not e!282433))))

(declare-fun e!282436 () Bool)

(assert (=> b!479971 (= res!286326 (not e!282436))))

(declare-fun res!286324 () Bool)

(assert (=> b!479971 (=> (not res!286324) (not e!282436))))

(assert (=> b!479971 (= res!286324 (validKeyInArray!0 (select (arr!14910 _keys!1874) #b00000000000000000000000000000000)))))

(declare-fun b!479972 () Bool)

(declare-fun contains!2609 (List!9156 (_ BitVec 64)) Bool)

(assert (=> b!479972 (= e!282436 (contains!2609 Nil!9153 (select (arr!14910 _keys!1874) #b00000000000000000000000000000000)))))

(assert (= (and d!76595 (not res!286325)) b!479971))

(assert (= (and b!479971 res!286324) b!479972))

(assert (= (and b!479971 res!286326) b!479969))

(assert (= (and b!479969 c!57679) b!479970))

(assert (= (and b!479969 (not c!57679)) b!479968))

(assert (= (or b!479970 b!479968) bm!30895))

(assert (=> bm!30895 m!461683))

(declare-fun m!461749 () Bool)

(assert (=> bm!30895 m!461749))

(assert (=> b!479969 m!461683))

(assert (=> b!479969 m!461683))

(assert (=> b!479969 m!461685))

(assert (=> b!479971 m!461683))

(assert (=> b!479971 m!461683))

(assert (=> b!479971 m!461685))

(assert (=> b!479972 m!461683))

(assert (=> b!479972 m!461683))

(declare-fun m!461751 () Bool)

(assert (=> b!479972 m!461751))

(assert (=> b!479821 d!76595))

(declare-fun b!479980 () Bool)

(declare-fun e!282441 () Bool)

(assert (=> b!479980 (= e!282441 tp_is_empty!13689)))

(declare-fun mapIsEmpty!22240 () Bool)

(declare-fun mapRes!22240 () Bool)

(assert (=> mapIsEmpty!22240 mapRes!22240))

(declare-fun mapNonEmpty!22240 () Bool)

(declare-fun tp!42814 () Bool)

(declare-fun e!282442 () Bool)

(assert (=> mapNonEmpty!22240 (= mapRes!22240 (and tp!42814 e!282442))))

(declare-fun mapKey!22240 () (_ BitVec 32))

(declare-fun mapValue!22240 () ValueCell!6483)

(declare-fun mapRest!22240 () (Array (_ BitVec 32) ValueCell!6483))

(assert (=> mapNonEmpty!22240 (= mapRest!22234 (store mapRest!22240 mapKey!22240 mapValue!22240))))

(declare-fun b!479979 () Bool)

(assert (=> b!479979 (= e!282442 tp_is_empty!13689)))

(declare-fun condMapEmpty!22240 () Bool)

(declare-fun mapDefault!22240 () ValueCell!6483)

(assert (=> mapNonEmpty!22234 (= condMapEmpty!22240 (= mapRest!22234 ((as const (Array (_ BitVec 32) ValueCell!6483)) mapDefault!22240)))))

(assert (=> mapNonEmpty!22234 (= tp!42805 (and e!282441 mapRes!22240))))

(assert (= (and mapNonEmpty!22234 condMapEmpty!22240) mapIsEmpty!22240))

(assert (= (and mapNonEmpty!22234 (not condMapEmpty!22240)) mapNonEmpty!22240))

(assert (= (and mapNonEmpty!22240 ((_ is ValueCellFull!6483) mapValue!22240)) b!479979))

(assert (= (and mapNonEmpty!22234 ((_ is ValueCellFull!6483) mapDefault!22240)) b!479980))

(declare-fun m!461753 () Bool)

(assert (=> mapNonEmpty!22240 m!461753))

(declare-fun b_lambda!10827 () Bool)

(assert (= b_lambda!10825 (or (and start!43338 b_free!12177) b_lambda!10827)))

(check-sat b_and!20953 (not b!479923) (not d!76581) (not b!479922) (not bm!30885) (not b_lambda!10827) (not b!479969) (not b_next!12177) (not b!479926) (not bm!30883) (not b!479911) (not b!479915) (not b!479971) (not b!479972) (not b!479928) (not b!479917) (not b!479921) (not mapNonEmpty!22240) (not bm!30888) (not b!479939) (not bm!30892) (not bm!30886) (not d!76579) (not b!479868) (not b!479956) (not bm!30895) (not b!479866) (not b!479944) (not b!479955) (not d!76585) tp_is_empty!13689)
(check-sat b_and!20953 (not b_next!12177))
