; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!21006 () Bool)

(assert start!21006)

(declare-fun b_free!5565 () Bool)

(declare-fun b_next!5565 () Bool)

(assert (=> start!21006 (= b_free!5565 (not b_next!5565))))

(declare-fun tp!19748 () Bool)

(declare-fun b_and!12377 () Bool)

(assert (=> start!21006 (= tp!19748 b_and!12377)))

(declare-fun b!210983 () Bool)

(declare-fun res!103039 () Bool)

(declare-fun e!137366 () Bool)

(assert (=> b!210983 (=> (not res!103039) (not e!137366))))

(declare-datatypes ((array!10052 0))(
  ( (array!10053 (arr!4772 (Array (_ BitVec 32) (_ BitVec 64))) (size!5097 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10052)

(declare-datatypes ((List!3081 0))(
  ( (Nil!3078) (Cons!3077 (h!3719 (_ BitVec 64)) (t!8028 List!3081)) )
))
(declare-fun arrayNoDuplicates!0 (array!10052 (_ BitVec 32) List!3081) Bool)

(assert (=> b!210983 (= res!103039 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3078))))

(declare-datatypes ((V!6883 0))(
  ( (V!6884 (val!2758 Int)) )
))
(declare-datatypes ((tuple2!4164 0))(
  ( (tuple2!4165 (_1!2092 (_ BitVec 64)) (_2!2092 V!6883)) )
))
(declare-datatypes ((List!3082 0))(
  ( (Nil!3079) (Cons!3078 (h!3720 tuple2!4164) (t!8029 List!3082)) )
))
(declare-datatypes ((ListLongMap!3091 0))(
  ( (ListLongMap!3092 (toList!1561 List!3082)) )
))
(declare-fun lt!108435 () ListLongMap!3091)

(declare-fun lt!108437 () ListLongMap!3091)

(declare-fun b!210984 () Bool)

(declare-fun e!137367 () Bool)

(declare-fun zeroValue!615 () V!6883)

(declare-fun +!554 (ListLongMap!3091 tuple2!4164) ListLongMap!3091)

(assert (=> b!210984 (= e!137367 (= lt!108435 (+!554 lt!108437 (tuple2!4165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))))

(declare-fun b!210985 () Bool)

(declare-fun res!103041 () Bool)

(assert (=> b!210985 (=> (not res!103041) (not e!137366))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!210985 (= res!103041 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5097 _keys!825))))))

(declare-fun mapNonEmpty!9221 () Bool)

(declare-fun mapRes!9221 () Bool)

(declare-fun tp!19747 () Bool)

(declare-fun e!137365 () Bool)

(assert (=> mapNonEmpty!9221 (= mapRes!9221 (and tp!19747 e!137365))))

(declare-datatypes ((ValueCell!2370 0))(
  ( (ValueCellFull!2370 (v!4740 V!6883)) (EmptyCell!2370) )
))
(declare-datatypes ((array!10054 0))(
  ( (array!10055 (arr!4773 (Array (_ BitVec 32) ValueCell!2370)) (size!5098 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10054)

(declare-fun mapRest!9221 () (Array (_ BitVec 32) ValueCell!2370))

(declare-fun mapKey!9221 () (_ BitVec 32))

(declare-fun mapValue!9221 () ValueCell!2370)

(assert (=> mapNonEmpty!9221 (= (arr!4773 _values!649) (store mapRest!9221 mapKey!9221 mapValue!9221))))

(declare-fun res!103040 () Bool)

(assert (=> start!21006 (=> (not res!103040) (not e!137366))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!21006 (= res!103040 (validMask!0 mask!1149))))

(assert (=> start!21006 e!137366))

(declare-fun e!137368 () Bool)

(declare-fun array_inv!3151 (array!10054) Bool)

(assert (=> start!21006 (and (array_inv!3151 _values!649) e!137368)))

(assert (=> start!21006 true))

(declare-fun tp_is_empty!5427 () Bool)

(assert (=> start!21006 tp_is_empty!5427))

(declare-fun array_inv!3152 (array!10052) Bool)

(assert (=> start!21006 (array_inv!3152 _keys!825)))

(assert (=> start!21006 tp!19748))

(declare-fun b!210986 () Bool)

(assert (=> b!210986 (= e!137366 (not e!137367))))

(declare-fun res!103038 () Bool)

(assert (=> b!210986 (=> res!103038 e!137367)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!210986 (= res!103038 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6883)

(declare-fun lt!108436 () ListLongMap!3091)

(declare-fun getCurrentListMap!1090 (array!10052 array!10054 (_ BitVec 32) (_ BitVec 32) V!6883 V!6883 (_ BitVec 32) Int) ListLongMap!3091)

(assert (=> b!210986 (= lt!108436 (getCurrentListMap!1090 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108438 () array!10054)

(assert (=> b!210986 (= lt!108435 (getCurrentListMap!1090 _keys!825 lt!108438 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108439 () ListLongMap!3091)

(assert (=> b!210986 (and (= lt!108437 lt!108439) (= lt!108439 lt!108437))))

(declare-fun v!520 () V!6883)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun lt!108434 () ListLongMap!3091)

(assert (=> b!210986 (= lt!108439 (+!554 lt!108434 (tuple2!4165 k0!843 v!520)))))

(declare-datatypes ((Unit!6405 0))(
  ( (Unit!6406) )
))
(declare-fun lt!108433 () Unit!6405)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!207 (array!10052 array!10054 (_ BitVec 32) (_ BitVec 32) V!6883 V!6883 (_ BitVec 32) (_ BitVec 64) V!6883 (_ BitVec 32) Int) Unit!6405)

(assert (=> b!210986 (= lt!108433 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!207 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!489 (array!10052 array!10054 (_ BitVec 32) (_ BitVec 32) V!6883 V!6883 (_ BitVec 32) Int) ListLongMap!3091)

(assert (=> b!210986 (= lt!108437 (getCurrentListMapNoExtraKeys!489 _keys!825 lt!108438 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!210986 (= lt!108438 (array!10055 (store (arr!4773 _values!649) i!601 (ValueCellFull!2370 v!520)) (size!5098 _values!649)))))

(assert (=> b!210986 (= lt!108434 (getCurrentListMapNoExtraKeys!489 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!210987 () Bool)

(declare-fun res!103035 () Bool)

(assert (=> b!210987 (=> (not res!103035) (not e!137366))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10052 (_ BitVec 32)) Bool)

(assert (=> b!210987 (= res!103035 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!210988 () Bool)

(declare-fun e!137364 () Bool)

(assert (=> b!210988 (= e!137368 (and e!137364 mapRes!9221))))

(declare-fun condMapEmpty!9221 () Bool)

(declare-fun mapDefault!9221 () ValueCell!2370)

(assert (=> b!210988 (= condMapEmpty!9221 (= (arr!4773 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2370)) mapDefault!9221)))))

(declare-fun b!210989 () Bool)

(declare-fun res!103036 () Bool)

(assert (=> b!210989 (=> (not res!103036) (not e!137366))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!210989 (= res!103036 (validKeyInArray!0 k0!843))))

(declare-fun mapIsEmpty!9221 () Bool)

(assert (=> mapIsEmpty!9221 mapRes!9221))

(declare-fun b!210990 () Bool)

(assert (=> b!210990 (= e!137364 tp_is_empty!5427)))

(declare-fun b!210991 () Bool)

(assert (=> b!210991 (= e!137365 tp_is_empty!5427)))

(declare-fun b!210992 () Bool)

(declare-fun res!103037 () Bool)

(assert (=> b!210992 (=> (not res!103037) (not e!137366))))

(assert (=> b!210992 (= res!103037 (= (select (arr!4772 _keys!825) i!601) k0!843))))

(declare-fun b!210993 () Bool)

(declare-fun res!103042 () Bool)

(assert (=> b!210993 (=> (not res!103042) (not e!137366))))

(assert (=> b!210993 (= res!103042 (and (= (size!5098 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5097 _keys!825) (size!5098 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(assert (= (and start!21006 res!103040) b!210993))

(assert (= (and b!210993 res!103042) b!210987))

(assert (= (and b!210987 res!103035) b!210983))

(assert (= (and b!210983 res!103039) b!210985))

(assert (= (and b!210985 res!103041) b!210989))

(assert (= (and b!210989 res!103036) b!210992))

(assert (= (and b!210992 res!103037) b!210986))

(assert (= (and b!210986 (not res!103038)) b!210984))

(assert (= (and b!210988 condMapEmpty!9221) mapIsEmpty!9221))

(assert (= (and b!210988 (not condMapEmpty!9221)) mapNonEmpty!9221))

(get-info :version)

(assert (= (and mapNonEmpty!9221 ((_ is ValueCellFull!2370) mapValue!9221)) b!210991))

(assert (= (and b!210988 ((_ is ValueCellFull!2370) mapDefault!9221)) b!210990))

(assert (= start!21006 b!210988))

(declare-fun m!238741 () Bool)

(assert (=> start!21006 m!238741))

(declare-fun m!238743 () Bool)

(assert (=> start!21006 m!238743))

(declare-fun m!238745 () Bool)

(assert (=> start!21006 m!238745))

(declare-fun m!238747 () Bool)

(assert (=> b!210992 m!238747))

(declare-fun m!238749 () Bool)

(assert (=> b!210984 m!238749))

(declare-fun m!238751 () Bool)

(assert (=> b!210983 m!238751))

(declare-fun m!238753 () Bool)

(assert (=> b!210986 m!238753))

(declare-fun m!238755 () Bool)

(assert (=> b!210986 m!238755))

(declare-fun m!238757 () Bool)

(assert (=> b!210986 m!238757))

(declare-fun m!238759 () Bool)

(assert (=> b!210986 m!238759))

(declare-fun m!238761 () Bool)

(assert (=> b!210986 m!238761))

(declare-fun m!238763 () Bool)

(assert (=> b!210986 m!238763))

(declare-fun m!238765 () Bool)

(assert (=> b!210986 m!238765))

(declare-fun m!238767 () Bool)

(assert (=> mapNonEmpty!9221 m!238767))

(declare-fun m!238769 () Bool)

(assert (=> b!210987 m!238769))

(declare-fun m!238771 () Bool)

(assert (=> b!210989 m!238771))

(check-sat b_and!12377 (not b!210986) (not mapNonEmpty!9221) (not start!21006) (not b_next!5565) (not b!210983) (not b!210984) (not b!210987) tp_is_empty!5427 (not b!210989))
(check-sat b_and!12377 (not b_next!5565))
(get-model)

(declare-fun d!57927 () Bool)

(assert (=> d!57927 (= (validKeyInArray!0 k0!843) (and (not (= k0!843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!210989 d!57927))

(declare-fun d!57929 () Bool)

(assert (=> d!57929 (= (validMask!0 mask!1149) (and (or (= mask!1149 #b00000000000000000000000000000111) (= mask!1149 #b00000000000000000000000000001111) (= mask!1149 #b00000000000000000000000000011111) (= mask!1149 #b00000000000000000000000000111111) (= mask!1149 #b00000000000000000000000001111111) (= mask!1149 #b00000000000000000000000011111111) (= mask!1149 #b00000000000000000000000111111111) (= mask!1149 #b00000000000000000000001111111111) (= mask!1149 #b00000000000000000000011111111111) (= mask!1149 #b00000000000000000000111111111111) (= mask!1149 #b00000000000000000001111111111111) (= mask!1149 #b00000000000000000011111111111111) (= mask!1149 #b00000000000000000111111111111111) (= mask!1149 #b00000000000000001111111111111111) (= mask!1149 #b00000000000000011111111111111111) (= mask!1149 #b00000000000000111111111111111111) (= mask!1149 #b00000000000001111111111111111111) (= mask!1149 #b00000000000011111111111111111111) (= mask!1149 #b00000000000111111111111111111111) (= mask!1149 #b00000000001111111111111111111111) (= mask!1149 #b00000000011111111111111111111111) (= mask!1149 #b00000000111111111111111111111111) (= mask!1149 #b00000001111111111111111111111111) (= mask!1149 #b00000011111111111111111111111111) (= mask!1149 #b00000111111111111111111111111111) (= mask!1149 #b00001111111111111111111111111111) (= mask!1149 #b00011111111111111111111111111111) (= mask!1149 #b00111111111111111111111111111111)) (bvsle mask!1149 #b00111111111111111111111111111111)))))

(assert (=> start!21006 d!57929))

(declare-fun d!57931 () Bool)

(assert (=> d!57931 (= (array_inv!3151 _values!649) (bvsge (size!5098 _values!649) #b00000000000000000000000000000000))))

(assert (=> start!21006 d!57931))

(declare-fun d!57933 () Bool)

(assert (=> d!57933 (= (array_inv!3152 _keys!825) (bvsge (size!5097 _keys!825) #b00000000000000000000000000000000))))

(assert (=> start!21006 d!57933))

(declare-fun b!211037 () Bool)

(declare-fun e!137396 () Bool)

(declare-fun e!137398 () Bool)

(assert (=> b!211037 (= e!137396 e!137398)))

(declare-fun res!103074 () Bool)

(assert (=> b!211037 (=> (not res!103074) (not e!137398))))

(declare-fun e!137397 () Bool)

(assert (=> b!211037 (= res!103074 (not e!137397))))

(declare-fun res!103073 () Bool)

(assert (=> b!211037 (=> (not res!103073) (not e!137397))))

(assert (=> b!211037 (= res!103073 (validKeyInArray!0 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun d!57935 () Bool)

(declare-fun res!103075 () Bool)

(assert (=> d!57935 (=> res!103075 e!137396)))

(assert (=> d!57935 (= res!103075 (bvsge #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(assert (=> d!57935 (= (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3078) e!137396)))

(declare-fun b!211038 () Bool)

(declare-fun e!137395 () Bool)

(assert (=> b!211038 (= e!137398 e!137395)))

(declare-fun c!35615 () Bool)

(assert (=> b!211038 (= c!35615 (validKeyInArray!0 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211039 () Bool)

(declare-fun call!19953 () Bool)

(assert (=> b!211039 (= e!137395 call!19953)))

(declare-fun bm!19950 () Bool)

(assert (=> bm!19950 (= call!19953 (arrayNoDuplicates!0 _keys!825 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!35615 (Cons!3077 (select (arr!4772 _keys!825) #b00000000000000000000000000000000) Nil!3078) Nil!3078)))))

(declare-fun b!211040 () Bool)

(declare-fun contains!1400 (List!3081 (_ BitVec 64)) Bool)

(assert (=> b!211040 (= e!137397 (contains!1400 Nil!3078 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211041 () Bool)

(assert (=> b!211041 (= e!137395 call!19953)))

(assert (= (and d!57935 (not res!103075)) b!211037))

(assert (= (and b!211037 res!103073) b!211040))

(assert (= (and b!211037 res!103074) b!211038))

(assert (= (and b!211038 c!35615) b!211039))

(assert (= (and b!211038 (not c!35615)) b!211041))

(assert (= (or b!211039 b!211041) bm!19950))

(declare-fun m!238805 () Bool)

(assert (=> b!211037 m!238805))

(assert (=> b!211037 m!238805))

(declare-fun m!238807 () Bool)

(assert (=> b!211037 m!238807))

(assert (=> b!211038 m!238805))

(assert (=> b!211038 m!238805))

(assert (=> b!211038 m!238807))

(assert (=> bm!19950 m!238805))

(declare-fun m!238809 () Bool)

(assert (=> bm!19950 m!238809))

(assert (=> b!211040 m!238805))

(assert (=> b!211040 m!238805))

(declare-fun m!238811 () Bool)

(assert (=> b!211040 m!238811))

(assert (=> b!210983 d!57935))

(declare-fun d!57937 () Bool)

(declare-fun e!137401 () Bool)

(assert (=> d!57937 e!137401))

(declare-fun res!103081 () Bool)

(assert (=> d!57937 (=> (not res!103081) (not e!137401))))

(declare-fun lt!108469 () ListLongMap!3091)

(declare-fun contains!1401 (ListLongMap!3091 (_ BitVec 64)) Bool)

(assert (=> d!57937 (= res!103081 (contains!1401 lt!108469 (_1!2092 (tuple2!4165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))))

(declare-fun lt!108471 () List!3082)

(assert (=> d!57937 (= lt!108469 (ListLongMap!3092 lt!108471))))

(declare-fun lt!108472 () Unit!6405)

(declare-fun lt!108470 () Unit!6405)

(assert (=> d!57937 (= lt!108472 lt!108470)))

(declare-datatypes ((Option!256 0))(
  ( (Some!255 (v!4745 V!6883)) (None!254) )
))
(declare-fun getValueByKey!250 (List!3082 (_ BitVec 64)) Option!256)

(assert (=> d!57937 (= (getValueByKey!250 lt!108471 (_1!2092 (tuple2!4165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))) (Some!255 (_2!2092 (tuple2!4165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))))

(declare-fun lemmaContainsTupThenGetReturnValue!139 (List!3082 (_ BitVec 64) V!6883) Unit!6405)

(assert (=> d!57937 (= lt!108470 (lemmaContainsTupThenGetReturnValue!139 lt!108471 (_1!2092 (tuple2!4165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615)) (_2!2092 (tuple2!4165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))))

(declare-fun insertStrictlySorted!141 (List!3082 (_ BitVec 64) V!6883) List!3082)

(assert (=> d!57937 (= lt!108471 (insertStrictlySorted!141 (toList!1561 lt!108437) (_1!2092 (tuple2!4165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615)) (_2!2092 (tuple2!4165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))))

(assert (=> d!57937 (= (+!554 lt!108437 (tuple2!4165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615)) lt!108469)))

(declare-fun b!211046 () Bool)

(declare-fun res!103080 () Bool)

(assert (=> b!211046 (=> (not res!103080) (not e!137401))))

(assert (=> b!211046 (= res!103080 (= (getValueByKey!250 (toList!1561 lt!108469) (_1!2092 (tuple2!4165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))) (Some!255 (_2!2092 (tuple2!4165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615)))))))

(declare-fun b!211047 () Bool)

(declare-fun contains!1402 (List!3082 tuple2!4164) Bool)

(assert (=> b!211047 (= e!137401 (contains!1402 (toList!1561 lt!108469) (tuple2!4165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615)))))

(assert (= (and d!57937 res!103081) b!211046))

(assert (= (and b!211046 res!103080) b!211047))

(declare-fun m!238813 () Bool)

(assert (=> d!57937 m!238813))

(declare-fun m!238815 () Bool)

(assert (=> d!57937 m!238815))

(declare-fun m!238817 () Bool)

(assert (=> d!57937 m!238817))

(declare-fun m!238819 () Bool)

(assert (=> d!57937 m!238819))

(declare-fun m!238821 () Bool)

(assert (=> b!211046 m!238821))

(declare-fun m!238823 () Bool)

(assert (=> b!211047 m!238823))

(assert (=> b!210984 d!57937))

(declare-fun b!211072 () Bool)

(declare-fun e!137421 () ListLongMap!3091)

(assert (=> b!211072 (= e!137421 (ListLongMap!3092 Nil!3079))))

(declare-fun b!211073 () Bool)

(declare-fun e!137417 () ListLongMap!3091)

(assert (=> b!211073 (= e!137421 e!137417)))

(declare-fun c!35627 () Bool)

(assert (=> b!211073 (= c!35627 (validKeyInArray!0 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211074 () Bool)

(assert (=> b!211074 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(assert (=> b!211074 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5098 _values!649)))))

(declare-fun e!137418 () Bool)

(declare-fun lt!108493 () ListLongMap!3091)

(declare-fun apply!193 (ListLongMap!3091 (_ BitVec 64)) V!6883)

(declare-fun get!2558 (ValueCell!2370 V!6883) V!6883)

(declare-fun dynLambda!531 (Int (_ BitVec 64)) V!6883)

(assert (=> b!211074 (= e!137418 (= (apply!193 lt!108493 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)) (get!2558 (select (arr!4773 _values!649) #b00000000000000000000000000000000) (dynLambda!531 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!211075 () Bool)

(declare-fun e!137422 () Bool)

(assert (=> b!211075 (= e!137422 (validKeyInArray!0 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!211075 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun call!19956 () ListLongMap!3091)

(declare-fun bm!19953 () Bool)

(assert (=> bm!19953 (= call!19956 (getCurrentListMapNoExtraKeys!489 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun d!57939 () Bool)

(declare-fun e!137416 () Bool)

(assert (=> d!57939 e!137416))

(declare-fun res!103093 () Bool)

(assert (=> d!57939 (=> (not res!103093) (not e!137416))))

(assert (=> d!57939 (= res!103093 (not (contains!1401 lt!108493 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57939 (= lt!108493 e!137421)))

(declare-fun c!35625 () Bool)

(assert (=> d!57939 (= c!35625 (bvsge #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(assert (=> d!57939 (validMask!0 mask!1149)))

(assert (=> d!57939 (= (getCurrentListMapNoExtraKeys!489 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!108493)))

(declare-fun b!211076 () Bool)

(declare-fun e!137420 () Bool)

(assert (=> b!211076 (= e!137420 e!137418)))

(assert (=> b!211076 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(declare-fun res!103090 () Bool)

(assert (=> b!211076 (= res!103090 (contains!1401 lt!108493 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!211076 (=> (not res!103090) (not e!137418))))

(declare-fun b!211077 () Bool)

(declare-fun lt!108491 () Unit!6405)

(declare-fun lt!108489 () Unit!6405)

(assert (=> b!211077 (= lt!108491 lt!108489)))

(declare-fun lt!108490 () ListLongMap!3091)

(declare-fun lt!108488 () (_ BitVec 64))

(declare-fun lt!108492 () V!6883)

(declare-fun lt!108487 () (_ BitVec 64))

(assert (=> b!211077 (not (contains!1401 (+!554 lt!108490 (tuple2!4165 lt!108487 lt!108492)) lt!108488))))

(declare-fun addStillNotContains!104 (ListLongMap!3091 (_ BitVec 64) V!6883 (_ BitVec 64)) Unit!6405)

(assert (=> b!211077 (= lt!108489 (addStillNotContains!104 lt!108490 lt!108487 lt!108492 lt!108488))))

(assert (=> b!211077 (= lt!108488 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!211077 (= lt!108492 (get!2558 (select (arr!4773 _values!649) #b00000000000000000000000000000000) (dynLambda!531 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!211077 (= lt!108487 (select (arr!4772 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!211077 (= lt!108490 call!19956)))

(assert (=> b!211077 (= e!137417 (+!554 call!19956 (tuple2!4165 (select (arr!4772 _keys!825) #b00000000000000000000000000000000) (get!2558 (select (arr!4773 _values!649) #b00000000000000000000000000000000) (dynLambda!531 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!211078 () Bool)

(assert (=> b!211078 (= e!137416 e!137420)))

(declare-fun c!35626 () Bool)

(assert (=> b!211078 (= c!35626 e!137422)))

(declare-fun res!103091 () Bool)

(assert (=> b!211078 (=> (not res!103091) (not e!137422))))

(assert (=> b!211078 (= res!103091 (bvslt #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(declare-fun b!211079 () Bool)

(declare-fun e!137419 () Bool)

(assert (=> b!211079 (= e!137420 e!137419)))

(declare-fun c!35624 () Bool)

(assert (=> b!211079 (= c!35624 (bvslt #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(declare-fun b!211080 () Bool)

(declare-fun isEmpty!499 (ListLongMap!3091) Bool)

(assert (=> b!211080 (= e!137419 (isEmpty!499 lt!108493))))

(declare-fun b!211081 () Bool)

(assert (=> b!211081 (= e!137419 (= lt!108493 (getCurrentListMapNoExtraKeys!489 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun b!211082 () Bool)

(declare-fun res!103092 () Bool)

(assert (=> b!211082 (=> (not res!103092) (not e!137416))))

(assert (=> b!211082 (= res!103092 (not (contains!1401 lt!108493 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!211083 () Bool)

(assert (=> b!211083 (= e!137417 call!19956)))

(assert (= (and d!57939 c!35625) b!211072))

(assert (= (and d!57939 (not c!35625)) b!211073))

(assert (= (and b!211073 c!35627) b!211077))

(assert (= (and b!211073 (not c!35627)) b!211083))

(assert (= (or b!211077 b!211083) bm!19953))

(assert (= (and d!57939 res!103093) b!211082))

(assert (= (and b!211082 res!103092) b!211078))

(assert (= (and b!211078 res!103091) b!211075))

(assert (= (and b!211078 c!35626) b!211076))

(assert (= (and b!211078 (not c!35626)) b!211079))

(assert (= (and b!211076 res!103090) b!211074))

(assert (= (and b!211079 c!35624) b!211081))

(assert (= (and b!211079 (not c!35624)) b!211080))

(declare-fun b_lambda!7665 () Bool)

(assert (=> (not b_lambda!7665) (not b!211074)))

(declare-fun t!8033 () Bool)

(declare-fun tb!2907 () Bool)

(assert (=> (and start!21006 (= defaultEntry!657 defaultEntry!657) t!8033) tb!2907))

(declare-fun result!4993 () Bool)

(assert (=> tb!2907 (= result!4993 tp_is_empty!5427)))

(assert (=> b!211074 t!8033))

(declare-fun b_and!12381 () Bool)

(assert (= b_and!12377 (and (=> t!8033 result!4993) b_and!12381)))

(declare-fun b_lambda!7667 () Bool)

(assert (=> (not b_lambda!7667) (not b!211077)))

(assert (=> b!211077 t!8033))

(declare-fun b_and!12383 () Bool)

(assert (= b_and!12381 (and (=> t!8033 result!4993) b_and!12383)))

(assert (=> b!211076 m!238805))

(assert (=> b!211076 m!238805))

(declare-fun m!238825 () Bool)

(assert (=> b!211076 m!238825))

(assert (=> b!211073 m!238805))

(assert (=> b!211073 m!238805))

(assert (=> b!211073 m!238807))

(declare-fun m!238827 () Bool)

(assert (=> b!211082 m!238827))

(declare-fun m!238829 () Bool)

(assert (=> b!211074 m!238829))

(assert (=> b!211074 m!238805))

(declare-fun m!238831 () Bool)

(assert (=> b!211074 m!238831))

(assert (=> b!211074 m!238831))

(assert (=> b!211074 m!238829))

(declare-fun m!238833 () Bool)

(assert (=> b!211074 m!238833))

(assert (=> b!211074 m!238805))

(declare-fun m!238835 () Bool)

(assert (=> b!211074 m!238835))

(declare-fun m!238837 () Bool)

(assert (=> b!211077 m!238837))

(declare-fun m!238839 () Bool)

(assert (=> b!211077 m!238839))

(assert (=> b!211077 m!238829))

(assert (=> b!211077 m!238805))

(declare-fun m!238841 () Bool)

(assert (=> b!211077 m!238841))

(assert (=> b!211077 m!238831))

(assert (=> b!211077 m!238831))

(assert (=> b!211077 m!238829))

(assert (=> b!211077 m!238833))

(assert (=> b!211077 m!238839))

(declare-fun m!238843 () Bool)

(assert (=> b!211077 m!238843))

(assert (=> b!211075 m!238805))

(assert (=> b!211075 m!238805))

(assert (=> b!211075 m!238807))

(declare-fun m!238845 () Bool)

(assert (=> b!211081 m!238845))

(declare-fun m!238847 () Bool)

(assert (=> d!57939 m!238847))

(assert (=> d!57939 m!238741))

(declare-fun m!238849 () Bool)

(assert (=> b!211080 m!238849))

(assert (=> bm!19953 m!238845))

(assert (=> b!210986 d!57939))

(declare-fun b!211128 () Bool)

(declare-fun e!137455 () Bool)

(assert (=> b!211128 (= e!137455 (validKeyInArray!0 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211129 () Bool)

(declare-fun e!137451 () ListLongMap!3091)

(declare-fun call!19973 () ListLongMap!3091)

(assert (=> b!211129 (= e!137451 call!19973)))

(declare-fun bm!19968 () Bool)

(declare-fun call!19971 () ListLongMap!3091)

(assert (=> bm!19968 (= call!19971 (getCurrentListMapNoExtraKeys!489 _keys!825 lt!108438 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun d!57941 () Bool)

(declare-fun e!137460 () Bool)

(assert (=> d!57941 e!137460))

(declare-fun res!103118 () Bool)

(assert (=> d!57941 (=> (not res!103118) (not e!137460))))

(assert (=> d!57941 (= res!103118 (or (bvsge #b00000000000000000000000000000000 (size!5097 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5097 _keys!825)))))))

(declare-fun lt!108556 () ListLongMap!3091)

(declare-fun lt!108539 () ListLongMap!3091)

(assert (=> d!57941 (= lt!108556 lt!108539)))

(declare-fun lt!108551 () Unit!6405)

(declare-fun e!137452 () Unit!6405)

(assert (=> d!57941 (= lt!108551 e!137452)))

(declare-fun c!35644 () Bool)

(declare-fun e!137459 () Bool)

(assert (=> d!57941 (= c!35644 e!137459)))

(declare-fun res!103117 () Bool)

(assert (=> d!57941 (=> (not res!103117) (not e!137459))))

(assert (=> d!57941 (= res!103117 (bvslt #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(declare-fun e!137450 () ListLongMap!3091)

(assert (=> d!57941 (= lt!108539 e!137450)))

(declare-fun c!35640 () Bool)

(assert (=> d!57941 (= c!35640 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!57941 (validMask!0 mask!1149)))

(assert (=> d!57941 (= (getCurrentListMap!1090 _keys!825 lt!108438 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!108556)))

(declare-fun bm!19969 () Bool)

(declare-fun call!19975 () Bool)

(assert (=> bm!19969 (= call!19975 (contains!1401 lt!108556 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!211130 () Bool)

(declare-fun res!103114 () Bool)

(assert (=> b!211130 (=> (not res!103114) (not e!137460))))

(declare-fun e!137449 () Bool)

(assert (=> b!211130 (= res!103114 e!137449)))

(declare-fun c!35645 () Bool)

(assert (=> b!211130 (= c!35645 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!211131 () Bool)

(declare-fun Unit!6409 () Unit!6405)

(assert (=> b!211131 (= e!137452 Unit!6409)))

(declare-fun bm!19970 () Bool)

(declare-fun call!19972 () Bool)

(assert (=> bm!19970 (= call!19972 (contains!1401 lt!108556 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!19971 () Bool)

(declare-fun call!19974 () ListLongMap!3091)

(declare-fun call!19976 () ListLongMap!3091)

(assert (=> bm!19971 (= call!19974 call!19976)))

(declare-fun b!211132 () Bool)

(declare-fun e!137461 () Bool)

(declare-fun e!137453 () Bool)

(assert (=> b!211132 (= e!137461 e!137453)))

(declare-fun res!103119 () Bool)

(assert (=> b!211132 (=> (not res!103119) (not e!137453))))

(assert (=> b!211132 (= res!103119 (contains!1401 lt!108556 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!211132 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(declare-fun b!211133 () Bool)

(declare-fun e!137458 () Bool)

(assert (=> b!211133 (= e!137449 e!137458)))

(declare-fun res!103113 () Bool)

(assert (=> b!211133 (= res!103113 call!19972)))

(assert (=> b!211133 (=> (not res!103113) (not e!137458))))

(declare-fun c!35642 () Bool)

(declare-fun call!19977 () ListLongMap!3091)

(declare-fun bm!19972 () Bool)

(assert (=> bm!19972 (= call!19977 (+!554 (ite c!35640 call!19971 (ite c!35642 call!19976 call!19974)) (ite (or c!35640 c!35642) (tuple2!4165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun b!211134 () Bool)

(assert (=> b!211134 (= e!137450 e!137451)))

(assert (=> b!211134 (= c!35642 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!211135 () Bool)

(assert (=> b!211135 (= e!137459 (validKeyInArray!0 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211136 () Bool)

(declare-fun e!137454 () ListLongMap!3091)

(assert (=> b!211136 (= e!137454 call!19974)))

(declare-fun b!211137 () Bool)

(assert (=> b!211137 (= e!137454 call!19973)))

(declare-fun b!211138 () Bool)

(declare-fun e!137456 () Bool)

(declare-fun e!137457 () Bool)

(assert (=> b!211138 (= e!137456 e!137457)))

(declare-fun res!103116 () Bool)

(assert (=> b!211138 (= res!103116 call!19975)))

(assert (=> b!211138 (=> (not res!103116) (not e!137457))))

(declare-fun bm!19973 () Bool)

(assert (=> bm!19973 (= call!19976 call!19971)))

(declare-fun b!211139 () Bool)

(assert (=> b!211139 (= e!137453 (= (apply!193 lt!108556 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)) (get!2558 (select (arr!4773 lt!108438) #b00000000000000000000000000000000) (dynLambda!531 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!211139 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5098 lt!108438)))))

(assert (=> b!211139 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(declare-fun b!211140 () Bool)

(assert (=> b!211140 (= e!137458 (= (apply!193 lt!108556 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!211141 () Bool)

(assert (=> b!211141 (= e!137456 (not call!19975))))

(declare-fun bm!19974 () Bool)

(assert (=> bm!19974 (= call!19973 call!19977)))

(declare-fun b!211142 () Bool)

(assert (=> b!211142 (= e!137449 (not call!19972))))

(declare-fun b!211143 () Bool)

(declare-fun c!35641 () Bool)

(assert (=> b!211143 (= c!35641 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!211143 (= e!137451 e!137454)))

(declare-fun b!211144 () Bool)

(assert (=> b!211144 (= e!137457 (= (apply!193 lt!108556 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun b!211145 () Bool)

(assert (=> b!211145 (= e!137460 e!137456)))

(declare-fun c!35643 () Bool)

(assert (=> b!211145 (= c!35643 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!211146 () Bool)

(declare-fun res!103120 () Bool)

(assert (=> b!211146 (=> (not res!103120) (not e!137460))))

(assert (=> b!211146 (= res!103120 e!137461)))

(declare-fun res!103112 () Bool)

(assert (=> b!211146 (=> res!103112 e!137461)))

(assert (=> b!211146 (= res!103112 (not e!137455))))

(declare-fun res!103115 () Bool)

(assert (=> b!211146 (=> (not res!103115) (not e!137455))))

(assert (=> b!211146 (= res!103115 (bvslt #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(declare-fun b!211147 () Bool)

(declare-fun lt!108558 () Unit!6405)

(assert (=> b!211147 (= e!137452 lt!108558)))

(declare-fun lt!108545 () ListLongMap!3091)

(assert (=> b!211147 (= lt!108545 (getCurrentListMapNoExtraKeys!489 _keys!825 lt!108438 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108554 () (_ BitVec 64))

(assert (=> b!211147 (= lt!108554 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108557 () (_ BitVec 64))

(assert (=> b!211147 (= lt!108557 (select (arr!4772 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108548 () Unit!6405)

(declare-fun addStillContains!169 (ListLongMap!3091 (_ BitVec 64) V!6883 (_ BitVec 64)) Unit!6405)

(assert (=> b!211147 (= lt!108548 (addStillContains!169 lt!108545 lt!108554 zeroValue!615 lt!108557))))

(assert (=> b!211147 (contains!1401 (+!554 lt!108545 (tuple2!4165 lt!108554 zeroValue!615)) lt!108557)))

(declare-fun lt!108550 () Unit!6405)

(assert (=> b!211147 (= lt!108550 lt!108548)))

(declare-fun lt!108559 () ListLongMap!3091)

(assert (=> b!211147 (= lt!108559 (getCurrentListMapNoExtraKeys!489 _keys!825 lt!108438 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108542 () (_ BitVec 64))

(assert (=> b!211147 (= lt!108542 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108541 () (_ BitVec 64))

(assert (=> b!211147 (= lt!108541 (select (arr!4772 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108552 () Unit!6405)

(declare-fun addApplyDifferent!169 (ListLongMap!3091 (_ BitVec 64) V!6883 (_ BitVec 64)) Unit!6405)

(assert (=> b!211147 (= lt!108552 (addApplyDifferent!169 lt!108559 lt!108542 minValue!615 lt!108541))))

(assert (=> b!211147 (= (apply!193 (+!554 lt!108559 (tuple2!4165 lt!108542 minValue!615)) lt!108541) (apply!193 lt!108559 lt!108541))))

(declare-fun lt!108547 () Unit!6405)

(assert (=> b!211147 (= lt!108547 lt!108552)))

(declare-fun lt!108544 () ListLongMap!3091)

(assert (=> b!211147 (= lt!108544 (getCurrentListMapNoExtraKeys!489 _keys!825 lt!108438 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108540 () (_ BitVec 64))

(assert (=> b!211147 (= lt!108540 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108538 () (_ BitVec 64))

(assert (=> b!211147 (= lt!108538 (select (arr!4772 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108555 () Unit!6405)

(assert (=> b!211147 (= lt!108555 (addApplyDifferent!169 lt!108544 lt!108540 zeroValue!615 lt!108538))))

(assert (=> b!211147 (= (apply!193 (+!554 lt!108544 (tuple2!4165 lt!108540 zeroValue!615)) lt!108538) (apply!193 lt!108544 lt!108538))))

(declare-fun lt!108553 () Unit!6405)

(assert (=> b!211147 (= lt!108553 lt!108555)))

(declare-fun lt!108549 () ListLongMap!3091)

(assert (=> b!211147 (= lt!108549 (getCurrentListMapNoExtraKeys!489 _keys!825 lt!108438 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108543 () (_ BitVec 64))

(assert (=> b!211147 (= lt!108543 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108546 () (_ BitVec 64))

(assert (=> b!211147 (= lt!108546 (select (arr!4772 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!211147 (= lt!108558 (addApplyDifferent!169 lt!108549 lt!108543 minValue!615 lt!108546))))

(assert (=> b!211147 (= (apply!193 (+!554 lt!108549 (tuple2!4165 lt!108543 minValue!615)) lt!108546) (apply!193 lt!108549 lt!108546))))

(declare-fun b!211148 () Bool)

(assert (=> b!211148 (= e!137450 (+!554 call!19977 (tuple2!4165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(assert (= (and d!57941 c!35640) b!211148))

(assert (= (and d!57941 (not c!35640)) b!211134))

(assert (= (and b!211134 c!35642) b!211129))

(assert (= (and b!211134 (not c!35642)) b!211143))

(assert (= (and b!211143 c!35641) b!211137))

(assert (= (and b!211143 (not c!35641)) b!211136))

(assert (= (or b!211137 b!211136) bm!19971))

(assert (= (or b!211129 bm!19971) bm!19973))

(assert (= (or b!211129 b!211137) bm!19974))

(assert (= (or b!211148 bm!19973) bm!19968))

(assert (= (or b!211148 bm!19974) bm!19972))

(assert (= (and d!57941 res!103117) b!211135))

(assert (= (and d!57941 c!35644) b!211147))

(assert (= (and d!57941 (not c!35644)) b!211131))

(assert (= (and d!57941 res!103118) b!211146))

(assert (= (and b!211146 res!103115) b!211128))

(assert (= (and b!211146 (not res!103112)) b!211132))

(assert (= (and b!211132 res!103119) b!211139))

(assert (= (and b!211146 res!103120) b!211130))

(assert (= (and b!211130 c!35645) b!211133))

(assert (= (and b!211130 (not c!35645)) b!211142))

(assert (= (and b!211133 res!103113) b!211140))

(assert (= (or b!211133 b!211142) bm!19970))

(assert (= (and b!211130 res!103114) b!211145))

(assert (= (and b!211145 c!35643) b!211138))

(assert (= (and b!211145 (not c!35643)) b!211141))

(assert (= (and b!211138 res!103116) b!211144))

(assert (= (or b!211138 b!211141) bm!19969))

(declare-fun b_lambda!7669 () Bool)

(assert (=> (not b_lambda!7669) (not b!211139)))

(assert (=> b!211139 t!8033))

(declare-fun b_and!12385 () Bool)

(assert (= b_and!12383 (and (=> t!8033 result!4993) b_and!12385)))

(assert (=> bm!19968 m!238753))

(assert (=> b!211128 m!238805))

(assert (=> b!211128 m!238805))

(assert (=> b!211128 m!238807))

(declare-fun m!238851 () Bool)

(assert (=> b!211140 m!238851))

(declare-fun m!238853 () Bool)

(assert (=> b!211147 m!238853))

(declare-fun m!238855 () Bool)

(assert (=> b!211147 m!238855))

(assert (=> b!211147 m!238805))

(assert (=> b!211147 m!238753))

(declare-fun m!238857 () Bool)

(assert (=> b!211147 m!238857))

(declare-fun m!238859 () Bool)

(assert (=> b!211147 m!238859))

(declare-fun m!238861 () Bool)

(assert (=> b!211147 m!238861))

(declare-fun m!238863 () Bool)

(assert (=> b!211147 m!238863))

(declare-fun m!238865 () Bool)

(assert (=> b!211147 m!238865))

(declare-fun m!238867 () Bool)

(assert (=> b!211147 m!238867))

(declare-fun m!238869 () Bool)

(assert (=> b!211147 m!238869))

(declare-fun m!238871 () Bool)

(assert (=> b!211147 m!238871))

(assert (=> b!211147 m!238861))

(assert (=> b!211147 m!238867))

(declare-fun m!238873 () Bool)

(assert (=> b!211147 m!238873))

(declare-fun m!238875 () Bool)

(assert (=> b!211147 m!238875))

(assert (=> b!211147 m!238865))

(declare-fun m!238877 () Bool)

(assert (=> b!211147 m!238877))

(declare-fun m!238879 () Bool)

(assert (=> b!211147 m!238879))

(assert (=> b!211147 m!238859))

(declare-fun m!238881 () Bool)

(assert (=> b!211147 m!238881))

(declare-fun m!238883 () Bool)

(assert (=> bm!19969 m!238883))

(assert (=> b!211132 m!238805))

(assert (=> b!211132 m!238805))

(declare-fun m!238885 () Bool)

(assert (=> b!211132 m!238885))

(assert (=> d!57941 m!238741))

(declare-fun m!238887 () Bool)

(assert (=> bm!19972 m!238887))

(declare-fun m!238889 () Bool)

(assert (=> bm!19970 m!238889))

(assert (=> b!211139 m!238805))

(declare-fun m!238891 () Bool)

(assert (=> b!211139 m!238891))

(assert (=> b!211139 m!238805))

(declare-fun m!238893 () Bool)

(assert (=> b!211139 m!238893))

(assert (=> b!211139 m!238891))

(assert (=> b!211139 m!238829))

(declare-fun m!238895 () Bool)

(assert (=> b!211139 m!238895))

(assert (=> b!211139 m!238829))

(declare-fun m!238897 () Bool)

(assert (=> b!211144 m!238897))

(assert (=> b!211135 m!238805))

(assert (=> b!211135 m!238805))

(assert (=> b!211135 m!238807))

(declare-fun m!238899 () Bool)

(assert (=> b!211148 m!238899))

(assert (=> b!210986 d!57941))

(declare-fun b!211155 () Bool)

(declare-fun e!137467 () Bool)

(declare-fun call!19983 () ListLongMap!3091)

(declare-fun call!19982 () ListLongMap!3091)

(assert (=> b!211155 (= e!137467 (= call!19983 call!19982))))

(declare-fun bm!19979 () Bool)

(assert (=> bm!19979 (= call!19982 (getCurrentListMapNoExtraKeys!489 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!211156 () Bool)

(assert (=> b!211156 (= e!137467 (= call!19983 (+!554 call!19982 (tuple2!4165 k0!843 v!520))))))

(declare-fun d!57943 () Bool)

(declare-fun e!137466 () Bool)

(assert (=> d!57943 e!137466))

(declare-fun res!103123 () Bool)

(assert (=> d!57943 (=> (not res!103123) (not e!137466))))

(assert (=> d!57943 (= res!103123 (and (or (not (bvsle #b00000000000000000000000000000000 i!601)) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5098 _values!649)))) (or (bvsle #b00000000000000000000000000000000 i!601) (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5098 _values!649))))))))

(declare-fun lt!108562 () Unit!6405)

(declare-fun choose!1085 (array!10052 array!10054 (_ BitVec 32) (_ BitVec 32) V!6883 V!6883 (_ BitVec 32) (_ BitVec 64) V!6883 (_ BitVec 32) Int) Unit!6405)

(assert (=> d!57943 (= lt!108562 (choose!1085 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> d!57943 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(assert (=> d!57943 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!207 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657) lt!108562)))

(declare-fun bm!19980 () Bool)

(assert (=> bm!19980 (= call!19983 (getCurrentListMapNoExtraKeys!489 _keys!825 (array!10055 (store (arr!4773 _values!649) i!601 (ValueCellFull!2370 v!520)) (size!5098 _values!649)) mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!211157 () Bool)

(assert (=> b!211157 (= e!137466 e!137467)))

(declare-fun c!35648 () Bool)

(assert (=> b!211157 (= c!35648 (bvsle #b00000000000000000000000000000000 i!601))))

(assert (= (and d!57943 res!103123) b!211157))

(assert (= (and b!211157 c!35648) b!211156))

(assert (= (and b!211157 (not c!35648)) b!211155))

(assert (= (or b!211156 b!211155) bm!19980))

(assert (= (or b!211156 b!211155) bm!19979))

(assert (=> bm!19979 m!238765))

(declare-fun m!238901 () Bool)

(assert (=> b!211156 m!238901))

(declare-fun m!238903 () Bool)

(assert (=> d!57943 m!238903))

(assert (=> bm!19980 m!238757))

(declare-fun m!238905 () Bool)

(assert (=> bm!19980 m!238905))

(assert (=> b!210986 d!57943))

(declare-fun b!211158 () Bool)

(declare-fun e!137473 () ListLongMap!3091)

(assert (=> b!211158 (= e!137473 (ListLongMap!3092 Nil!3079))))

(declare-fun b!211159 () Bool)

(declare-fun e!137469 () ListLongMap!3091)

(assert (=> b!211159 (= e!137473 e!137469)))

(declare-fun c!35652 () Bool)

(assert (=> b!211159 (= c!35652 (validKeyInArray!0 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211160 () Bool)

(assert (=> b!211160 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(assert (=> b!211160 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5098 lt!108438)))))

(declare-fun e!137470 () Bool)

(declare-fun lt!108569 () ListLongMap!3091)

(assert (=> b!211160 (= e!137470 (= (apply!193 lt!108569 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)) (get!2558 (select (arr!4773 lt!108438) #b00000000000000000000000000000000) (dynLambda!531 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!211161 () Bool)

(declare-fun e!137474 () Bool)

(assert (=> b!211161 (= e!137474 (validKeyInArray!0 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!211161 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun bm!19981 () Bool)

(declare-fun call!19984 () ListLongMap!3091)

(assert (=> bm!19981 (= call!19984 (getCurrentListMapNoExtraKeys!489 _keys!825 lt!108438 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657))))

(declare-fun d!57945 () Bool)

(declare-fun e!137468 () Bool)

(assert (=> d!57945 e!137468))

(declare-fun res!103127 () Bool)

(assert (=> d!57945 (=> (not res!103127) (not e!137468))))

(assert (=> d!57945 (= res!103127 (not (contains!1401 lt!108569 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!57945 (= lt!108569 e!137473)))

(declare-fun c!35650 () Bool)

(assert (=> d!57945 (= c!35650 (bvsge #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(assert (=> d!57945 (validMask!0 mask!1149)))

(assert (=> d!57945 (= (getCurrentListMapNoExtraKeys!489 _keys!825 lt!108438 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!108569)))

(declare-fun b!211162 () Bool)

(declare-fun e!137472 () Bool)

(assert (=> b!211162 (= e!137472 e!137470)))

(assert (=> b!211162 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(declare-fun res!103124 () Bool)

(assert (=> b!211162 (= res!103124 (contains!1401 lt!108569 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!211162 (=> (not res!103124) (not e!137470))))

(declare-fun b!211163 () Bool)

(declare-fun lt!108567 () Unit!6405)

(declare-fun lt!108565 () Unit!6405)

(assert (=> b!211163 (= lt!108567 lt!108565)))

(declare-fun lt!108564 () (_ BitVec 64))

(declare-fun lt!108566 () ListLongMap!3091)

(declare-fun lt!108563 () (_ BitVec 64))

(declare-fun lt!108568 () V!6883)

(assert (=> b!211163 (not (contains!1401 (+!554 lt!108566 (tuple2!4165 lt!108563 lt!108568)) lt!108564))))

(assert (=> b!211163 (= lt!108565 (addStillNotContains!104 lt!108566 lt!108563 lt!108568 lt!108564))))

(assert (=> b!211163 (= lt!108564 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!211163 (= lt!108568 (get!2558 (select (arr!4773 lt!108438) #b00000000000000000000000000000000) (dynLambda!531 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!211163 (= lt!108563 (select (arr!4772 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!211163 (= lt!108566 call!19984)))

(assert (=> b!211163 (= e!137469 (+!554 call!19984 (tuple2!4165 (select (arr!4772 _keys!825) #b00000000000000000000000000000000) (get!2558 (select (arr!4773 lt!108438) #b00000000000000000000000000000000) (dynLambda!531 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!211164 () Bool)

(assert (=> b!211164 (= e!137468 e!137472)))

(declare-fun c!35651 () Bool)

(assert (=> b!211164 (= c!35651 e!137474)))

(declare-fun res!103125 () Bool)

(assert (=> b!211164 (=> (not res!103125) (not e!137474))))

(assert (=> b!211164 (= res!103125 (bvslt #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(declare-fun b!211165 () Bool)

(declare-fun e!137471 () Bool)

(assert (=> b!211165 (= e!137472 e!137471)))

(declare-fun c!35649 () Bool)

(assert (=> b!211165 (= c!35649 (bvslt #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(declare-fun b!211166 () Bool)

(assert (=> b!211166 (= e!137471 (isEmpty!499 lt!108569))))

(declare-fun b!211167 () Bool)

(assert (=> b!211167 (= e!137471 (= lt!108569 (getCurrentListMapNoExtraKeys!489 _keys!825 lt!108438 mask!1149 extraKeys!596 zeroValue!615 minValue!615 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!657)))))

(declare-fun b!211168 () Bool)

(declare-fun res!103126 () Bool)

(assert (=> b!211168 (=> (not res!103126) (not e!137468))))

(assert (=> b!211168 (= res!103126 (not (contains!1401 lt!108569 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!211169 () Bool)

(assert (=> b!211169 (= e!137469 call!19984)))

(assert (= (and d!57945 c!35650) b!211158))

(assert (= (and d!57945 (not c!35650)) b!211159))

(assert (= (and b!211159 c!35652) b!211163))

(assert (= (and b!211159 (not c!35652)) b!211169))

(assert (= (or b!211163 b!211169) bm!19981))

(assert (= (and d!57945 res!103127) b!211168))

(assert (= (and b!211168 res!103126) b!211164))

(assert (= (and b!211164 res!103125) b!211161))

(assert (= (and b!211164 c!35651) b!211162))

(assert (= (and b!211164 (not c!35651)) b!211165))

(assert (= (and b!211162 res!103124) b!211160))

(assert (= (and b!211165 c!35649) b!211167))

(assert (= (and b!211165 (not c!35649)) b!211166))

(declare-fun b_lambda!7671 () Bool)

(assert (=> (not b_lambda!7671) (not b!211160)))

(assert (=> b!211160 t!8033))

(declare-fun b_and!12387 () Bool)

(assert (= b_and!12385 (and (=> t!8033 result!4993) b_and!12387)))

(declare-fun b_lambda!7673 () Bool)

(assert (=> (not b_lambda!7673) (not b!211163)))

(assert (=> b!211163 t!8033))

(declare-fun b_and!12389 () Bool)

(assert (= b_and!12387 (and (=> t!8033 result!4993) b_and!12389)))

(assert (=> b!211162 m!238805))

(assert (=> b!211162 m!238805))

(declare-fun m!238907 () Bool)

(assert (=> b!211162 m!238907))

(assert (=> b!211159 m!238805))

(assert (=> b!211159 m!238805))

(assert (=> b!211159 m!238807))

(declare-fun m!238909 () Bool)

(assert (=> b!211168 m!238909))

(assert (=> b!211160 m!238829))

(assert (=> b!211160 m!238805))

(assert (=> b!211160 m!238891))

(assert (=> b!211160 m!238891))

(assert (=> b!211160 m!238829))

(assert (=> b!211160 m!238895))

(assert (=> b!211160 m!238805))

(declare-fun m!238911 () Bool)

(assert (=> b!211160 m!238911))

(declare-fun m!238913 () Bool)

(assert (=> b!211163 m!238913))

(declare-fun m!238915 () Bool)

(assert (=> b!211163 m!238915))

(assert (=> b!211163 m!238829))

(assert (=> b!211163 m!238805))

(declare-fun m!238917 () Bool)

(assert (=> b!211163 m!238917))

(assert (=> b!211163 m!238891))

(assert (=> b!211163 m!238891))

(assert (=> b!211163 m!238829))

(assert (=> b!211163 m!238895))

(assert (=> b!211163 m!238915))

(declare-fun m!238919 () Bool)

(assert (=> b!211163 m!238919))

(assert (=> b!211161 m!238805))

(assert (=> b!211161 m!238805))

(assert (=> b!211161 m!238807))

(declare-fun m!238921 () Bool)

(assert (=> b!211167 m!238921))

(declare-fun m!238923 () Bool)

(assert (=> d!57945 m!238923))

(assert (=> d!57945 m!238741))

(declare-fun m!238925 () Bool)

(assert (=> b!211166 m!238925))

(assert (=> bm!19981 m!238921))

(assert (=> b!210986 d!57945))

(declare-fun b!211170 () Bool)

(declare-fun e!137481 () Bool)

(assert (=> b!211170 (= e!137481 (validKeyInArray!0 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211171 () Bool)

(declare-fun e!137477 () ListLongMap!3091)

(declare-fun call!19987 () ListLongMap!3091)

(assert (=> b!211171 (= e!137477 call!19987)))

(declare-fun bm!19982 () Bool)

(declare-fun call!19985 () ListLongMap!3091)

(assert (=> bm!19982 (= call!19985 (getCurrentListMapNoExtraKeys!489 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun d!57947 () Bool)

(declare-fun e!137486 () Bool)

(assert (=> d!57947 e!137486))

(declare-fun res!103134 () Bool)

(assert (=> d!57947 (=> (not res!103134) (not e!137486))))

(assert (=> d!57947 (= res!103134 (or (bvsge #b00000000000000000000000000000000 (size!5097 _keys!825)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5097 _keys!825)))))))

(declare-fun lt!108588 () ListLongMap!3091)

(declare-fun lt!108571 () ListLongMap!3091)

(assert (=> d!57947 (= lt!108588 lt!108571)))

(declare-fun lt!108583 () Unit!6405)

(declare-fun e!137478 () Unit!6405)

(assert (=> d!57947 (= lt!108583 e!137478)))

(declare-fun c!35657 () Bool)

(declare-fun e!137485 () Bool)

(assert (=> d!57947 (= c!35657 e!137485)))

(declare-fun res!103133 () Bool)

(assert (=> d!57947 (=> (not res!103133) (not e!137485))))

(assert (=> d!57947 (= res!103133 (bvslt #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(declare-fun e!137476 () ListLongMap!3091)

(assert (=> d!57947 (= lt!108571 e!137476)))

(declare-fun c!35653 () Bool)

(assert (=> d!57947 (= c!35653 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!57947 (validMask!0 mask!1149)))

(assert (=> d!57947 (= (getCurrentListMap!1090 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657) lt!108588)))

(declare-fun bm!19983 () Bool)

(declare-fun call!19989 () Bool)

(assert (=> bm!19983 (= call!19989 (contains!1401 lt!108588 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!211172 () Bool)

(declare-fun res!103130 () Bool)

(assert (=> b!211172 (=> (not res!103130) (not e!137486))))

(declare-fun e!137475 () Bool)

(assert (=> b!211172 (= res!103130 e!137475)))

(declare-fun c!35658 () Bool)

(assert (=> b!211172 (= c!35658 (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!211173 () Bool)

(declare-fun Unit!6410 () Unit!6405)

(assert (=> b!211173 (= e!137478 Unit!6410)))

(declare-fun bm!19984 () Bool)

(declare-fun call!19986 () Bool)

(assert (=> bm!19984 (= call!19986 (contains!1401 lt!108588 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!19985 () Bool)

(declare-fun call!19988 () ListLongMap!3091)

(declare-fun call!19990 () ListLongMap!3091)

(assert (=> bm!19985 (= call!19988 call!19990)))

(declare-fun b!211174 () Bool)

(declare-fun e!137487 () Bool)

(declare-fun e!137479 () Bool)

(assert (=> b!211174 (= e!137487 e!137479)))

(declare-fun res!103135 () Bool)

(assert (=> b!211174 (=> (not res!103135) (not e!137479))))

(assert (=> b!211174 (= res!103135 (contains!1401 lt!108588 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)))))

(assert (=> b!211174 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(declare-fun b!211175 () Bool)

(declare-fun e!137484 () Bool)

(assert (=> b!211175 (= e!137475 e!137484)))

(declare-fun res!103129 () Bool)

(assert (=> b!211175 (= res!103129 call!19986)))

(assert (=> b!211175 (=> (not res!103129) (not e!137484))))

(declare-fun c!35655 () Bool)

(declare-fun call!19991 () ListLongMap!3091)

(declare-fun bm!19986 () Bool)

(assert (=> bm!19986 (= call!19991 (+!554 (ite c!35653 call!19985 (ite c!35655 call!19990 call!19988)) (ite (or c!35653 c!35655) (tuple2!4165 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615) (tuple2!4165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))))

(declare-fun b!211176 () Bool)

(assert (=> b!211176 (= e!137476 e!137477)))

(assert (=> b!211176 (= c!35655 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!211177 () Bool)

(assert (=> b!211177 (= e!137485 (validKeyInArray!0 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211178 () Bool)

(declare-fun e!137480 () ListLongMap!3091)

(assert (=> b!211178 (= e!137480 call!19988)))

(declare-fun b!211179 () Bool)

(assert (=> b!211179 (= e!137480 call!19987)))

(declare-fun b!211180 () Bool)

(declare-fun e!137482 () Bool)

(declare-fun e!137483 () Bool)

(assert (=> b!211180 (= e!137482 e!137483)))

(declare-fun res!103132 () Bool)

(assert (=> b!211180 (= res!103132 call!19989)))

(assert (=> b!211180 (=> (not res!103132) (not e!137483))))

(declare-fun bm!19987 () Bool)

(assert (=> bm!19987 (= call!19990 call!19985)))

(declare-fun b!211181 () Bool)

(assert (=> b!211181 (= e!137479 (= (apply!193 lt!108588 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)) (get!2558 (select (arr!4773 _values!649) #b00000000000000000000000000000000) (dynLambda!531 defaultEntry!657 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!211181 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5098 _values!649)))))

(assert (=> b!211181 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(declare-fun b!211182 () Bool)

(assert (=> b!211182 (= e!137484 (= (apply!193 lt!108588 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!615))))

(declare-fun b!211183 () Bool)

(assert (=> b!211183 (= e!137482 (not call!19989))))

(declare-fun bm!19988 () Bool)

(assert (=> bm!19988 (= call!19987 call!19991)))

(declare-fun b!211184 () Bool)

(assert (=> b!211184 (= e!137475 (not call!19986))))

(declare-fun b!211185 () Bool)

(declare-fun c!35654 () Bool)

(assert (=> b!211185 (= c!35654 (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!211185 (= e!137477 e!137480)))

(declare-fun b!211186 () Bool)

(assert (=> b!211186 (= e!137483 (= (apply!193 lt!108588 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!615))))

(declare-fun b!211187 () Bool)

(assert (=> b!211187 (= e!137486 e!137482)))

(declare-fun c!35656 () Bool)

(assert (=> b!211187 (= c!35656 (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!211188 () Bool)

(declare-fun res!103136 () Bool)

(assert (=> b!211188 (=> (not res!103136) (not e!137486))))

(assert (=> b!211188 (= res!103136 e!137487)))

(declare-fun res!103128 () Bool)

(assert (=> b!211188 (=> res!103128 e!137487)))

(assert (=> b!211188 (= res!103128 (not e!137481))))

(declare-fun res!103131 () Bool)

(assert (=> b!211188 (=> (not res!103131) (not e!137481))))

(assert (=> b!211188 (= res!103131 (bvslt #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(declare-fun b!211189 () Bool)

(declare-fun lt!108590 () Unit!6405)

(assert (=> b!211189 (= e!137478 lt!108590)))

(declare-fun lt!108577 () ListLongMap!3091)

(assert (=> b!211189 (= lt!108577 (getCurrentListMapNoExtraKeys!489 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108586 () (_ BitVec 64))

(assert (=> b!211189 (= lt!108586 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108589 () (_ BitVec 64))

(assert (=> b!211189 (= lt!108589 (select (arr!4772 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108580 () Unit!6405)

(assert (=> b!211189 (= lt!108580 (addStillContains!169 lt!108577 lt!108586 zeroValue!615 lt!108589))))

(assert (=> b!211189 (contains!1401 (+!554 lt!108577 (tuple2!4165 lt!108586 zeroValue!615)) lt!108589)))

(declare-fun lt!108582 () Unit!6405)

(assert (=> b!211189 (= lt!108582 lt!108580)))

(declare-fun lt!108591 () ListLongMap!3091)

(assert (=> b!211189 (= lt!108591 (getCurrentListMapNoExtraKeys!489 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108574 () (_ BitVec 64))

(assert (=> b!211189 (= lt!108574 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108573 () (_ BitVec 64))

(assert (=> b!211189 (= lt!108573 (select (arr!4772 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108584 () Unit!6405)

(assert (=> b!211189 (= lt!108584 (addApplyDifferent!169 lt!108591 lt!108574 minValue!615 lt!108573))))

(assert (=> b!211189 (= (apply!193 (+!554 lt!108591 (tuple2!4165 lt!108574 minValue!615)) lt!108573) (apply!193 lt!108591 lt!108573))))

(declare-fun lt!108579 () Unit!6405)

(assert (=> b!211189 (= lt!108579 lt!108584)))

(declare-fun lt!108576 () ListLongMap!3091)

(assert (=> b!211189 (= lt!108576 (getCurrentListMapNoExtraKeys!489 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108572 () (_ BitVec 64))

(assert (=> b!211189 (= lt!108572 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108570 () (_ BitVec 64))

(assert (=> b!211189 (= lt!108570 (select (arr!4772 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108587 () Unit!6405)

(assert (=> b!211189 (= lt!108587 (addApplyDifferent!169 lt!108576 lt!108572 zeroValue!615 lt!108570))))

(assert (=> b!211189 (= (apply!193 (+!554 lt!108576 (tuple2!4165 lt!108572 zeroValue!615)) lt!108570) (apply!193 lt!108576 lt!108570))))

(declare-fun lt!108585 () Unit!6405)

(assert (=> b!211189 (= lt!108585 lt!108587)))

(declare-fun lt!108581 () ListLongMap!3091)

(assert (=> b!211189 (= lt!108581 (getCurrentListMapNoExtraKeys!489 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108575 () (_ BitVec 64))

(assert (=> b!211189 (= lt!108575 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!108578 () (_ BitVec 64))

(assert (=> b!211189 (= lt!108578 (select (arr!4772 _keys!825) #b00000000000000000000000000000000))))

(assert (=> b!211189 (= lt!108590 (addApplyDifferent!169 lt!108581 lt!108575 minValue!615 lt!108578))))

(assert (=> b!211189 (= (apply!193 (+!554 lt!108581 (tuple2!4165 lt!108575 minValue!615)) lt!108578) (apply!193 lt!108581 lt!108578))))

(declare-fun b!211190 () Bool)

(assert (=> b!211190 (= e!137476 (+!554 call!19991 (tuple2!4165 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615)))))

(assert (= (and d!57947 c!35653) b!211190))

(assert (= (and d!57947 (not c!35653)) b!211176))

(assert (= (and b!211176 c!35655) b!211171))

(assert (= (and b!211176 (not c!35655)) b!211185))

(assert (= (and b!211185 c!35654) b!211179))

(assert (= (and b!211185 (not c!35654)) b!211178))

(assert (= (or b!211179 b!211178) bm!19985))

(assert (= (or b!211171 bm!19985) bm!19987))

(assert (= (or b!211171 b!211179) bm!19988))

(assert (= (or b!211190 bm!19987) bm!19982))

(assert (= (or b!211190 bm!19988) bm!19986))

(assert (= (and d!57947 res!103133) b!211177))

(assert (= (and d!57947 c!35657) b!211189))

(assert (= (and d!57947 (not c!35657)) b!211173))

(assert (= (and d!57947 res!103134) b!211188))

(assert (= (and b!211188 res!103131) b!211170))

(assert (= (and b!211188 (not res!103128)) b!211174))

(assert (= (and b!211174 res!103135) b!211181))

(assert (= (and b!211188 res!103136) b!211172))

(assert (= (and b!211172 c!35658) b!211175))

(assert (= (and b!211172 (not c!35658)) b!211184))

(assert (= (and b!211175 res!103129) b!211182))

(assert (= (or b!211175 b!211184) bm!19984))

(assert (= (and b!211172 res!103130) b!211187))

(assert (= (and b!211187 c!35656) b!211180))

(assert (= (and b!211187 (not c!35656)) b!211183))

(assert (= (and b!211180 res!103132) b!211186))

(assert (= (or b!211180 b!211183) bm!19983))

(declare-fun b_lambda!7675 () Bool)

(assert (=> (not b_lambda!7675) (not b!211181)))

(assert (=> b!211181 t!8033))

(declare-fun b_and!12391 () Bool)

(assert (= b_and!12389 (and (=> t!8033 result!4993) b_and!12391)))

(assert (=> bm!19982 m!238765))

(assert (=> b!211170 m!238805))

(assert (=> b!211170 m!238805))

(assert (=> b!211170 m!238807))

(declare-fun m!238927 () Bool)

(assert (=> b!211182 m!238927))

(declare-fun m!238929 () Bool)

(assert (=> b!211189 m!238929))

(declare-fun m!238931 () Bool)

(assert (=> b!211189 m!238931))

(assert (=> b!211189 m!238805))

(assert (=> b!211189 m!238765))

(declare-fun m!238933 () Bool)

(assert (=> b!211189 m!238933))

(declare-fun m!238935 () Bool)

(assert (=> b!211189 m!238935))

(declare-fun m!238937 () Bool)

(assert (=> b!211189 m!238937))

(declare-fun m!238939 () Bool)

(assert (=> b!211189 m!238939))

(declare-fun m!238941 () Bool)

(assert (=> b!211189 m!238941))

(declare-fun m!238943 () Bool)

(assert (=> b!211189 m!238943))

(declare-fun m!238945 () Bool)

(assert (=> b!211189 m!238945))

(declare-fun m!238947 () Bool)

(assert (=> b!211189 m!238947))

(assert (=> b!211189 m!238937))

(assert (=> b!211189 m!238943))

(declare-fun m!238949 () Bool)

(assert (=> b!211189 m!238949))

(declare-fun m!238951 () Bool)

(assert (=> b!211189 m!238951))

(assert (=> b!211189 m!238941))

(declare-fun m!238953 () Bool)

(assert (=> b!211189 m!238953))

(declare-fun m!238955 () Bool)

(assert (=> b!211189 m!238955))

(assert (=> b!211189 m!238935))

(declare-fun m!238957 () Bool)

(assert (=> b!211189 m!238957))

(declare-fun m!238959 () Bool)

(assert (=> bm!19983 m!238959))

(assert (=> b!211174 m!238805))

(assert (=> b!211174 m!238805))

(declare-fun m!238961 () Bool)

(assert (=> b!211174 m!238961))

(assert (=> d!57947 m!238741))

(declare-fun m!238963 () Bool)

(assert (=> bm!19986 m!238963))

(declare-fun m!238965 () Bool)

(assert (=> bm!19984 m!238965))

(assert (=> b!211181 m!238805))

(assert (=> b!211181 m!238831))

(assert (=> b!211181 m!238805))

(declare-fun m!238967 () Bool)

(assert (=> b!211181 m!238967))

(assert (=> b!211181 m!238831))

(assert (=> b!211181 m!238829))

(assert (=> b!211181 m!238833))

(assert (=> b!211181 m!238829))

(declare-fun m!238969 () Bool)

(assert (=> b!211186 m!238969))

(assert (=> b!211177 m!238805))

(assert (=> b!211177 m!238805))

(assert (=> b!211177 m!238807))

(declare-fun m!238971 () Bool)

(assert (=> b!211190 m!238971))

(assert (=> b!210986 d!57947))

(declare-fun d!57949 () Bool)

(declare-fun e!137488 () Bool)

(assert (=> d!57949 e!137488))

(declare-fun res!103138 () Bool)

(assert (=> d!57949 (=> (not res!103138) (not e!137488))))

(declare-fun lt!108592 () ListLongMap!3091)

(assert (=> d!57949 (= res!103138 (contains!1401 lt!108592 (_1!2092 (tuple2!4165 k0!843 v!520))))))

(declare-fun lt!108594 () List!3082)

(assert (=> d!57949 (= lt!108592 (ListLongMap!3092 lt!108594))))

(declare-fun lt!108595 () Unit!6405)

(declare-fun lt!108593 () Unit!6405)

(assert (=> d!57949 (= lt!108595 lt!108593)))

(assert (=> d!57949 (= (getValueByKey!250 lt!108594 (_1!2092 (tuple2!4165 k0!843 v!520))) (Some!255 (_2!2092 (tuple2!4165 k0!843 v!520))))))

(assert (=> d!57949 (= lt!108593 (lemmaContainsTupThenGetReturnValue!139 lt!108594 (_1!2092 (tuple2!4165 k0!843 v!520)) (_2!2092 (tuple2!4165 k0!843 v!520))))))

(assert (=> d!57949 (= lt!108594 (insertStrictlySorted!141 (toList!1561 lt!108434) (_1!2092 (tuple2!4165 k0!843 v!520)) (_2!2092 (tuple2!4165 k0!843 v!520))))))

(assert (=> d!57949 (= (+!554 lt!108434 (tuple2!4165 k0!843 v!520)) lt!108592)))

(declare-fun b!211191 () Bool)

(declare-fun res!103137 () Bool)

(assert (=> b!211191 (=> (not res!103137) (not e!137488))))

(assert (=> b!211191 (= res!103137 (= (getValueByKey!250 (toList!1561 lt!108592) (_1!2092 (tuple2!4165 k0!843 v!520))) (Some!255 (_2!2092 (tuple2!4165 k0!843 v!520)))))))

(declare-fun b!211192 () Bool)

(assert (=> b!211192 (= e!137488 (contains!1402 (toList!1561 lt!108592) (tuple2!4165 k0!843 v!520)))))

(assert (= (and d!57949 res!103138) b!211191))

(assert (= (and b!211191 res!103137) b!211192))

(declare-fun m!238973 () Bool)

(assert (=> d!57949 m!238973))

(declare-fun m!238975 () Bool)

(assert (=> d!57949 m!238975))

(declare-fun m!238977 () Bool)

(assert (=> d!57949 m!238977))

(declare-fun m!238979 () Bool)

(assert (=> d!57949 m!238979))

(declare-fun m!238981 () Bool)

(assert (=> b!211191 m!238981))

(declare-fun m!238983 () Bool)

(assert (=> b!211192 m!238983))

(assert (=> b!210986 d!57949))

(declare-fun b!211201 () Bool)

(declare-fun e!137496 () Bool)

(declare-fun e!137497 () Bool)

(assert (=> b!211201 (= e!137496 e!137497)))

(declare-fun c!35661 () Bool)

(assert (=> b!211201 (= c!35661 (validKeyInArray!0 (select (arr!4772 _keys!825) #b00000000000000000000000000000000)))))

(declare-fun b!211202 () Bool)

(declare-fun e!137495 () Bool)

(declare-fun call!19994 () Bool)

(assert (=> b!211202 (= e!137495 call!19994)))

(declare-fun b!211203 () Bool)

(assert (=> b!211203 (= e!137497 call!19994)))

(declare-fun b!211204 () Bool)

(assert (=> b!211204 (= e!137497 e!137495)))

(declare-fun lt!108603 () (_ BitVec 64))

(assert (=> b!211204 (= lt!108603 (select (arr!4772 _keys!825) #b00000000000000000000000000000000))))

(declare-fun lt!108602 () Unit!6405)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!10052 (_ BitVec 64) (_ BitVec 32)) Unit!6405)

(assert (=> b!211204 (= lt!108602 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!825 lt!108603 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!10052 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!211204 (arrayContainsKey!0 _keys!825 lt!108603 #b00000000000000000000000000000000)))

(declare-fun lt!108604 () Unit!6405)

(assert (=> b!211204 (= lt!108604 lt!108602)))

(declare-fun res!103144 () Bool)

(declare-datatypes ((SeekEntryResult!718 0))(
  ( (MissingZero!718 (index!5042 (_ BitVec 32))) (Found!718 (index!5043 (_ BitVec 32))) (Intermediate!718 (undefined!1530 Bool) (index!5044 (_ BitVec 32)) (x!22088 (_ BitVec 32))) (Undefined!718) (MissingVacant!718 (index!5045 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10052 (_ BitVec 32)) SeekEntryResult!718)

(assert (=> b!211204 (= res!103144 (= (seekEntryOrOpen!0 (select (arr!4772 _keys!825) #b00000000000000000000000000000000) _keys!825 mask!1149) (Found!718 #b00000000000000000000000000000000)))))

(assert (=> b!211204 (=> (not res!103144) (not e!137495))))

(declare-fun d!57951 () Bool)

(declare-fun res!103143 () Bool)

(assert (=> d!57951 (=> res!103143 e!137496)))

(assert (=> d!57951 (= res!103143 (bvsge #b00000000000000000000000000000000 (size!5097 _keys!825)))))

(assert (=> d!57951 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149) e!137496)))

(declare-fun bm!19991 () Bool)

(assert (=> bm!19991 (= call!19994 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!825 mask!1149))))

(assert (= (and d!57951 (not res!103143)) b!211201))

(assert (= (and b!211201 c!35661) b!211204))

(assert (= (and b!211201 (not c!35661)) b!211203))

(assert (= (and b!211204 res!103144) b!211202))

(assert (= (or b!211202 b!211203) bm!19991))

(assert (=> b!211201 m!238805))

(assert (=> b!211201 m!238805))

(assert (=> b!211201 m!238807))

(assert (=> b!211204 m!238805))

(declare-fun m!238985 () Bool)

(assert (=> b!211204 m!238985))

(declare-fun m!238987 () Bool)

(assert (=> b!211204 m!238987))

(assert (=> b!211204 m!238805))

(declare-fun m!238989 () Bool)

(assert (=> b!211204 m!238989))

(declare-fun m!238991 () Bool)

(assert (=> bm!19991 m!238991))

(assert (=> b!210987 d!57951))

(declare-fun b!211211 () Bool)

(declare-fun e!137502 () Bool)

(assert (=> b!211211 (= e!137502 tp_is_empty!5427)))

(declare-fun b!211212 () Bool)

(declare-fun e!137503 () Bool)

(assert (=> b!211212 (= e!137503 tp_is_empty!5427)))

(declare-fun mapNonEmpty!9227 () Bool)

(declare-fun mapRes!9227 () Bool)

(declare-fun tp!19757 () Bool)

(assert (=> mapNonEmpty!9227 (= mapRes!9227 (and tp!19757 e!137502))))

(declare-fun mapRest!9227 () (Array (_ BitVec 32) ValueCell!2370))

(declare-fun mapKey!9227 () (_ BitVec 32))

(declare-fun mapValue!9227 () ValueCell!2370)

(assert (=> mapNonEmpty!9227 (= mapRest!9221 (store mapRest!9227 mapKey!9227 mapValue!9227))))

(declare-fun condMapEmpty!9227 () Bool)

(declare-fun mapDefault!9227 () ValueCell!2370)

(assert (=> mapNonEmpty!9221 (= condMapEmpty!9227 (= mapRest!9221 ((as const (Array (_ BitVec 32) ValueCell!2370)) mapDefault!9227)))))

(assert (=> mapNonEmpty!9221 (= tp!19747 (and e!137503 mapRes!9227))))

(declare-fun mapIsEmpty!9227 () Bool)

(assert (=> mapIsEmpty!9227 mapRes!9227))

(assert (= (and mapNonEmpty!9221 condMapEmpty!9227) mapIsEmpty!9227))

(assert (= (and mapNonEmpty!9221 (not condMapEmpty!9227)) mapNonEmpty!9227))

(assert (= (and mapNonEmpty!9227 ((_ is ValueCellFull!2370) mapValue!9227)) b!211211))

(assert (= (and mapNonEmpty!9221 ((_ is ValueCellFull!2370) mapDefault!9227)) b!211212))

(declare-fun m!238993 () Bool)

(assert (=> mapNonEmpty!9227 m!238993))

(declare-fun b_lambda!7677 () Bool)

(assert (= b_lambda!7673 (or (and start!21006 b_free!5565) b_lambda!7677)))

(declare-fun b_lambda!7679 () Bool)

(assert (= b_lambda!7669 (or (and start!21006 b_free!5565) b_lambda!7679)))

(declare-fun b_lambda!7681 () Bool)

(assert (= b_lambda!7665 (or (and start!21006 b_free!5565) b_lambda!7681)))

(declare-fun b_lambda!7683 () Bool)

(assert (= b_lambda!7675 (or (and start!21006 b_free!5565) b_lambda!7683)))

(declare-fun b_lambda!7685 () Bool)

(assert (= b_lambda!7667 (or (and start!21006 b_free!5565) b_lambda!7685)))

(declare-fun b_lambda!7687 () Bool)

(assert (= b_lambda!7671 (or (and start!21006 b_free!5565) b_lambda!7687)))

(check-sat (not bm!19986) (not d!57941) (not bm!19972) (not b!211201) (not b!211040) (not bm!19953) (not b!211077) (not b_next!5565) (not bm!19981) (not b!211074) (not b!211181) (not b!211204) (not b!211190) (not b_lambda!7685) (not bm!19984) tp_is_empty!5427 (not b!211037) (not b!211080) (not b_lambda!7687) (not b!211186) (not d!57945) (not bm!19969) (not b!211162) (not b!211168) (not b!211177) (not mapNonEmpty!9227) (not b_lambda!7681) (not b!211128) (not bm!19991) (not b!211167) (not d!57939) b_and!12391 (not b!211135) (not b_lambda!7679) (not b!211191) (not bm!19980) (not b!211161) (not b_lambda!7677) (not d!57949) (not bm!19982) (not b!211144) (not b!211182) (not bm!19950) (not b!211081) (not b!211148) (not b!211047) (not d!57947) (not b!211038) (not b!211073) (not b!211163) (not b!211076) (not b!211159) (not b!211166) (not bm!19979) (not bm!19968) (not b!211140) (not b!211147) (not b!211156) (not b!211170) (not b!211160) (not b!211192) (not d!57943) (not b!211075) (not b!211082) (not d!57937) (not b!211139) (not b!211132) (not b_lambda!7683) (not bm!19983) (not b!211174) (not bm!19970) (not b!211189) (not b!211046))
(check-sat b_and!12391 (not b_next!5565))
