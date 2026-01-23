; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242030 () Bool)

(assert start!242030)

(declare-fun b!2479997 () Bool)

(declare-fun b_free!72169 () Bool)

(declare-fun b_next!72873 () Bool)

(assert (=> b!2479997 (= b_free!72169 (not b_next!72873))))

(declare-fun tp!793685 () Bool)

(declare-fun b_and!188415 () Bool)

(assert (=> b!2479997 (= tp!793685 b_and!188415)))

(declare-fun b!2479999 () Bool)

(declare-fun b_free!72171 () Bool)

(declare-fun b_next!72875 () Bool)

(assert (=> b!2479999 (= b_free!72171 (not b_next!72875))))

(declare-fun tp!793686 () Bool)

(declare-fun b_and!188417 () Bool)

(assert (=> b!2479999 (= tp!793686 b_and!188417)))

(declare-fun b!2479985 () Bool)

(declare-fun e!1573978 () Bool)

(declare-fun e!1573972 () Bool)

(assert (=> b!2479985 (= e!1573978 e!1573972)))

(declare-fun b!2479986 () Bool)

(declare-fun res!1049747 () Bool)

(declare-fun e!1573977 () Bool)

(assert (=> b!2479986 (=> res!1049747 e!1573977)))

(declare-datatypes ((V!5607 0))(
  ( (V!5608 (val!8799 Int)) )
))
(declare-datatypes ((K!5405 0))(
  ( (K!5406 (val!8800 Int)) )
))
(declare-datatypes ((tuple2!28630 0))(
  ( (tuple2!28631 (_1!16856 K!5405) (_2!16856 V!5607)) )
))
(declare-datatypes ((List!29143 0))(
  ( (Nil!29043) (Cons!29043 (h!34449 tuple2!28630) (t!210800 List!29143)) )
))
(declare-datatypes ((tuple2!28632 0))(
  ( (tuple2!28633 (_1!16857 (_ BitVec 64)) (_2!16857 List!29143)) )
))
(declare-datatypes ((List!29144 0))(
  ( (Nil!29044) (Cons!29044 (h!34450 tuple2!28632) (t!210801 List!29144)) )
))
(declare-datatypes ((ListLongMap!473 0))(
  ( (ListLongMap!474 (toList!1528 List!29144)) )
))
(declare-fun lt!887017 () ListLongMap!473)

(declare-fun key!2246 () K!5405)

(declare-datatypes ((ListMap!1013 0))(
  ( (ListMap!1014 (toList!1529 List!29143)) )
))
(declare-fun contains!5044 (ListMap!1013 K!5405) Bool)

(declare-fun extractMap!156 (List!29144) ListMap!1013)

(assert (=> b!2479986 (= res!1049747 (not (contains!5044 (extractMap!156 (toList!1528 lt!887017)) key!2246)))))

(declare-fun b!2479987 () Bool)

(declare-fun e!1573976 () Bool)

(declare-datatypes ((array!11769 0))(
  ( (array!11770 (arr!5246 (Array (_ BitVec 32) List!29143)) (size!22665 (_ BitVec 32))) )
))
(declare-datatypes ((array!11771 0))(
  ( (array!11772 (arr!5247 (Array (_ BitVec 32) (_ BitVec 64))) (size!22666 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6656 0))(
  ( (LongMapFixedSize!6657 (defaultEntry!3702 Int) (mask!8481 (_ BitVec 32)) (extraKeys!3576 (_ BitVec 32)) (zeroValue!3586 List!29143) (minValue!3586 List!29143) (_size!6703 (_ BitVec 32)) (_keys!3625 array!11771) (_values!3608 array!11769) (_vacant!3389 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13129 0))(
  ( (Cell!13130 (v!31368 LongMapFixedSize!6656)) )
))
(declare-datatypes ((MutLongMap!3328 0))(
  ( (LongMap!3328 (underlying!6863 Cell!13129)) (MutLongMapExt!3327 (__x!18890 Int)) )
))
(declare-fun lt!887005 () MutLongMap!3328)

(get-info :version)

(assert (=> b!2479987 (= e!1573976 (and e!1573978 ((_ is LongMap!3328) lt!887005)))))

(declare-datatypes ((Hashable!3238 0))(
  ( (HashableExt!3237 (__x!18891 Int)) )
))
(declare-datatypes ((Cell!13131 0))(
  ( (Cell!13132 (v!31369 MutLongMap!3328)) )
))
(declare-datatypes ((MutableMap!3238 0))(
  ( (MutableMapExt!3237 (__x!18892 Int)) (HashMap!3238 (underlying!6864 Cell!13131) (hashF!5196 Hashable!3238) (_size!6704 (_ BitVec 32)) (defaultValue!3400 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3238)

(assert (=> b!2479987 (= lt!887005 (v!31369 (underlying!6864 thiss!42540)))))

(declare-fun b!2479988 () Bool)

(declare-fun e!1573980 () Bool)

(declare-fun e!1573983 () Bool)

(assert (=> b!2479988 (= e!1573980 (not e!1573983))))

(declare-fun res!1049754 () Bool)

(assert (=> b!2479988 (=> res!1049754 e!1573983)))

(declare-datatypes ((tuple2!28634 0))(
  ( (tuple2!28635 (_1!16858 Bool) (_2!16858 MutLongMap!3328)) )
))
(declare-fun lt!887022 () tuple2!28634)

(assert (=> b!2479988 (= res!1049754 (not (_1!16858 lt!887022)))))

(declare-fun lt!887014 () List!29143)

(declare-fun noDuplicateKeys!65 (List!29143) Bool)

(assert (=> b!2479988 (noDuplicateKeys!65 lt!887014)))

(declare-datatypes ((Unit!42491 0))(
  ( (Unit!42492) )
))
(declare-fun lt!887019 () Unit!42491)

(declare-fun lt!887009 () List!29143)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!51 (List!29143 K!5405) Unit!42491)

(assert (=> b!2479988 (= lt!887019 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!51 lt!887009 key!2246))))

(declare-datatypes ((tuple2!28636 0))(
  ( (tuple2!28637 (_1!16859 Unit!42491) (_2!16859 MutableMap!3238)) )
))
(declare-fun lt!887011 () tuple2!28636)

(declare-fun lt!887020 () Cell!13131)

(declare-fun Unit!42493 () Unit!42491)

(declare-fun Unit!42494 () Unit!42491)

(assert (=> b!2479988 (= lt!887011 (ite (_1!16858 lt!887022) (tuple2!28637 Unit!42493 (HashMap!3238 lt!887020 (hashF!5196 thiss!42540) (bvsub (_size!6704 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3400 thiss!42540))) (tuple2!28637 Unit!42494 (HashMap!3238 lt!887020 (hashF!5196 thiss!42540) (_size!6704 thiss!42540) (defaultValue!3400 thiss!42540)))))))

(assert (=> b!2479988 (= lt!887020 (Cell!13132 (_2!16858 lt!887022)))))

(declare-fun lt!887016 () (_ BitVec 64))

(declare-fun update!172 (MutLongMap!3328 (_ BitVec 64) List!29143) tuple2!28634)

(assert (=> b!2479988 (= lt!887022 (update!172 (v!31369 (underlying!6864 thiss!42540)) lt!887016 lt!887014))))

(declare-fun removePairForKey!55 (List!29143 K!5405) List!29143)

(assert (=> b!2479988 (= lt!887014 (removePairForKey!55 lt!887009 key!2246))))

(declare-fun lt!887021 () ListMap!1013)

(declare-fun map!6131 (MutableMap!3238) ListMap!1013)

(assert (=> b!2479988 (= lt!887021 (map!6131 thiss!42540))))

(declare-fun lt!887013 () Unit!42491)

(declare-fun lambda!93786 () Int)

(declare-fun forallContained!836 (List!29144 Int tuple2!28632) Unit!42491)

(assert (=> b!2479988 (= lt!887013 (forallContained!836 (toList!1528 lt!887017) lambda!93786 (tuple2!28633 lt!887016 lt!887009)))))

(declare-fun map!6132 (MutLongMap!3328) ListLongMap!473)

(assert (=> b!2479988 (= lt!887017 (map!6132 (v!31369 (underlying!6864 thiss!42540))))))

(declare-fun apply!6889 (MutLongMap!3328 (_ BitVec 64)) List!29143)

(assert (=> b!2479988 (= lt!887009 (apply!6889 (v!31369 (underlying!6864 thiss!42540)) lt!887016))))

(declare-fun hash!668 (Hashable!3238 K!5405) (_ BitVec 64))

(assert (=> b!2479988 (= lt!887016 (hash!668 (hashF!5196 thiss!42540) key!2246))))

(declare-fun mapIsEmpty!15442 () Bool)

(declare-fun mapRes!15442 () Bool)

(assert (=> mapIsEmpty!15442 mapRes!15442))

(declare-fun res!1049746 () Bool)

(assert (=> start!242030 (=> (not res!1049746) (not e!1573980))))

(assert (=> start!242030 (= res!1049746 ((_ is HashMap!3238) thiss!42540))))

(assert (=> start!242030 e!1573980))

(declare-fun e!1573971 () Bool)

(assert (=> start!242030 e!1573971))

(declare-fun tp_is_empty!12179 () Bool)

(assert (=> start!242030 tp_is_empty!12179))

(declare-fun b!2479989 () Bool)

(assert (=> b!2479989 (= e!1573983 e!1573977)))

(declare-fun res!1049744 () Bool)

(assert (=> b!2479989 (=> res!1049744 e!1573977)))

(declare-fun forall!5954 (List!29144 Int) Bool)

(assert (=> b!2479989 (= res!1049744 (not (forall!5954 (toList!1528 lt!887017) lambda!93786)))))

(declare-fun e!1573981 () Bool)

(assert (=> b!2479989 e!1573981))

(declare-fun res!1049748 () Bool)

(assert (=> b!2479989 (=> (not res!1049748) (not e!1573981))))

(declare-fun lt!887010 () ListLongMap!473)

(assert (=> b!2479989 (= res!1049748 (forall!5954 (toList!1528 lt!887010) lambda!93786))))

(assert (=> b!2479989 (= lt!887010 (map!6132 (v!31369 (underlying!6864 (_2!16859 lt!887011)))))))

(declare-fun e!1573979 () Bool)

(assert (=> b!2479989 e!1573979))

(declare-fun res!1049755 () Bool)

(assert (=> b!2479989 (=> (not res!1049755) (not e!1573979))))

(declare-fun lt!887006 () ListLongMap!473)

(assert (=> b!2479989 (= res!1049755 (forall!5954 (toList!1528 lt!887006) lambda!93786))))

(declare-fun +!71 (ListLongMap!473 tuple2!28632) ListLongMap!473)

(assert (=> b!2479989 (= lt!887006 (+!71 lt!887017 (tuple2!28633 lt!887016 lt!887014)))))

(declare-fun lt!887008 () Unit!42491)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!42 (ListLongMap!473 (_ BitVec 64) List!29143 Hashable!3238) Unit!42491)

(assert (=> b!2479989 (= lt!887008 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!42 lt!887017 lt!887016 lt!887014 (hashF!5196 (_2!16859 lt!887011))))))

(declare-fun allKeysSameHash!52 (List!29143 (_ BitVec 64) Hashable!3238) Bool)

(assert (=> b!2479989 (allKeysSameHash!52 lt!887014 lt!887016 (hashF!5196 (_2!16859 lt!887011)))))

(declare-fun lt!887001 () Unit!42491)

(declare-fun lemmaRemovePairForKeyPreservesHash!46 (List!29143 K!5405 (_ BitVec 64) Hashable!3238) Unit!42491)

(assert (=> b!2479989 (= lt!887001 (lemmaRemovePairForKeyPreservesHash!46 lt!887009 key!2246 lt!887016 (hashF!5196 (_2!16859 lt!887011))))))

(assert (=> b!2479989 (allKeysSameHash!52 lt!887009 lt!887016 (hashF!5196 (_2!16859 lt!887011)))))

(declare-fun lt!887002 () Unit!42491)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!48 (List!29144 (_ BitVec 64) List!29143 Hashable!3238) Unit!42491)

(assert (=> b!2479989 (= lt!887002 (lemmaInLongMapAllKeySameHashThenForTuple!48 (toList!1528 lt!887017) lt!887016 lt!887009 (hashF!5196 (_2!16859 lt!887011))))))

(declare-fun b!2479990 () Bool)

(declare-fun e!1573970 () Bool)

(assert (=> b!2479990 (= e!1573977 e!1573970)))

(declare-fun res!1049745 () Bool)

(assert (=> b!2479990 (=> res!1049745 e!1573970)))

(declare-fun lt!887012 () (_ BitVec 64))

(assert (=> b!2479990 (= res!1049745 (not (= lt!887012 lt!887016)))))

(assert (=> b!2479990 (= lt!887012 (hash!668 (hashF!5196 (_2!16859 lt!887011)) key!2246))))

(declare-fun b!2479991 () Bool)

(declare-fun res!1049749 () Bool)

(assert (=> b!2479991 (=> (not res!1049749) (not e!1573981))))

(declare-fun valid!2540 (MutableMap!3238) Bool)

(assert (=> b!2479991 (= res!1049749 (valid!2540 (_2!16859 lt!887011)))))

(declare-fun b!2479992 () Bool)

(assert (=> b!2479992 (= e!1573981 (contains!5044 lt!887021 key!2246))))

(declare-fun b!2479993 () Bool)

(declare-fun res!1049752 () Bool)

(assert (=> b!2479993 (=> (not res!1049752) (not e!1573980))))

(assert (=> b!2479993 (= res!1049752 (valid!2540 thiss!42540))))

(declare-fun b!2479994 () Bool)

(declare-fun allKeysSameHashInMap!147 (ListLongMap!473 Hashable!3238) Bool)

(assert (=> b!2479994 (= e!1573979 (allKeysSameHashInMap!147 lt!887006 (hashF!5196 (_2!16859 lt!887011))))))

(declare-fun b!2479995 () Bool)

(declare-fun e!1573973 () Bool)

(assert (=> b!2479995 (= e!1573973 (forall!5954 (toList!1528 lt!887017) lambda!93786))))

(declare-fun b!2479996 () Bool)

(declare-fun res!1049756 () Bool)

(assert (=> b!2479996 (=> (not res!1049756) (not e!1573980))))

(declare-fun contains!5045 (MutableMap!3238 K!5405) Bool)

(assert (=> b!2479996 (= res!1049756 (contains!5045 thiss!42540 key!2246))))

(declare-fun e!1573974 () Bool)

(declare-fun e!1573975 () Bool)

(declare-fun tp!793682 () Bool)

(declare-fun tp!793687 () Bool)

(declare-fun array_inv!3761 (array!11771) Bool)

(declare-fun array_inv!3762 (array!11769) Bool)

(assert (=> b!2479997 (= e!1573974 (and tp!793685 tp!793682 tp!793687 (array_inv!3761 (_keys!3625 (v!31368 (underlying!6863 (v!31369 (underlying!6864 thiss!42540)))))) (array_inv!3762 (_values!3608 (v!31368 (underlying!6863 (v!31369 (underlying!6864 thiss!42540)))))) e!1573975))))

(declare-fun b!2479998 () Bool)

(assert (=> b!2479998 (= e!1573970 e!1573973)))

(declare-fun res!1049751 () Bool)

(assert (=> b!2479998 (=> res!1049751 e!1573973)))

(declare-fun lt!887007 () List!29143)

(assert (=> b!2479998 (= res!1049751 (not (= lt!887014 (removePairForKey!55 lt!887007 key!2246))))))

(declare-fun lt!887003 () Unit!42491)

(declare-fun lt!887015 () tuple2!28632)

(assert (=> b!2479998 (= lt!887003 (forallContained!836 (toList!1528 lt!887017) lambda!93786 lt!887015))))

(declare-fun contains!5046 (List!29144 tuple2!28632) Bool)

(assert (=> b!2479998 (contains!5046 (toList!1528 lt!887017) lt!887015)))

(assert (=> b!2479998 (= lt!887015 (tuple2!28633 lt!887016 lt!887007))))

(declare-fun lt!887004 () Unit!42491)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!68 (List!29144 (_ BitVec 64) List!29143) Unit!42491)

(assert (=> b!2479998 (= lt!887004 (lemmaGetValueByKeyImpliesContainsTuple!68 (toList!1528 lt!887017) lt!887016 lt!887007))))

(declare-fun apply!6890 (ListLongMap!473 (_ BitVec 64)) List!29143)

(assert (=> b!2479998 (= lt!887007 (apply!6890 lt!887017 lt!887016))))

(declare-fun contains!5047 (ListLongMap!473 (_ BitVec 64)) Bool)

(assert (=> b!2479998 (contains!5047 lt!887017 lt!887012)))

(declare-fun lt!887018 () Unit!42491)

(declare-fun lemmaInGenMapThenLongMapContainsHash!28 (ListLongMap!473 K!5405 Hashable!3238) Unit!42491)

(assert (=> b!2479998 (= lt!887018 (lemmaInGenMapThenLongMapContainsHash!28 lt!887017 key!2246 (hashF!5196 (_2!16859 lt!887011))))))

(assert (=> b!2479999 (= e!1573971 (and e!1573976 tp!793686))))

(declare-fun b!2480000 () Bool)

(declare-fun res!1049753 () Bool)

(assert (=> b!2480000 (=> res!1049753 e!1573977)))

(assert (=> b!2480000 (= res!1049753 (not (allKeysSameHashInMap!147 lt!887017 (hashF!5196 (_2!16859 lt!887011)))))))

(declare-fun b!2480001 () Bool)

(declare-fun tp!793683 () Bool)

(assert (=> b!2480001 (= e!1573975 (and tp!793683 mapRes!15442))))

(declare-fun condMapEmpty!15442 () Bool)

(declare-fun mapDefault!15442 () List!29143)

(assert (=> b!2480001 (= condMapEmpty!15442 (= (arr!5246 (_values!3608 (v!31368 (underlying!6863 (v!31369 (underlying!6864 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29143)) mapDefault!15442)))))

(declare-fun mapNonEmpty!15442 () Bool)

(declare-fun tp!793688 () Bool)

(declare-fun tp!793684 () Bool)

(assert (=> mapNonEmpty!15442 (= mapRes!15442 (and tp!793688 tp!793684))))

(declare-fun mapKey!15442 () (_ BitVec 32))

(declare-fun mapValue!15442 () List!29143)

(declare-fun mapRest!15442 () (Array (_ BitVec 32) List!29143))

(assert (=> mapNonEmpty!15442 (= (arr!5246 (_values!3608 (v!31368 (underlying!6863 (v!31369 (underlying!6864 thiss!42540)))))) (store mapRest!15442 mapKey!15442 mapValue!15442))))

(declare-fun b!2480002 () Bool)

(declare-fun res!1049750 () Bool)

(assert (=> b!2480002 (=> (not res!1049750) (not e!1573981))))

(assert (=> b!2480002 (= res!1049750 (allKeysSameHashInMap!147 lt!887010 (hashF!5196 (_2!16859 lt!887011))))))

(declare-fun b!2480003 () Bool)

(assert (=> b!2480003 (= e!1573972 e!1573974)))

(assert (= (and start!242030 res!1049746) b!2479993))

(assert (= (and b!2479993 res!1049752) b!2479996))

(assert (= (and b!2479996 res!1049756) b!2479988))

(assert (= (and b!2479988 (not res!1049754)) b!2479989))

(assert (= (and b!2479989 res!1049755) b!2479994))

(assert (= (and b!2479989 res!1049748) b!2480002))

(assert (= (and b!2480002 res!1049750) b!2479991))

(assert (= (and b!2479991 res!1049749) b!2479992))

(assert (= (and b!2479989 (not res!1049744)) b!2480000))

(assert (= (and b!2480000 (not res!1049753)) b!2479986))

(assert (= (and b!2479986 (not res!1049747)) b!2479990))

(assert (= (and b!2479990 (not res!1049745)) b!2479998))

(assert (= (and b!2479998 (not res!1049751)) b!2479995))

(assert (= (and b!2480001 condMapEmpty!15442) mapIsEmpty!15442))

(assert (= (and b!2480001 (not condMapEmpty!15442)) mapNonEmpty!15442))

(assert (= b!2479997 b!2480001))

(assert (= b!2480003 b!2479997))

(assert (= b!2479985 b!2480003))

(assert (= (and b!2479987 ((_ is LongMap!3328) (v!31369 (underlying!6864 thiss!42540)))) b!2479985))

(assert (= b!2479999 b!2479987))

(assert (= (and start!242030 ((_ is HashMap!3238) thiss!42540)) b!2479999))

(declare-fun m!2847831 () Bool)

(assert (=> mapNonEmpty!15442 m!2847831))

(declare-fun m!2847833 () Bool)

(assert (=> b!2479989 m!2847833))

(declare-fun m!2847835 () Bool)

(assert (=> b!2479989 m!2847835))

(declare-fun m!2847837 () Bool)

(assert (=> b!2479989 m!2847837))

(declare-fun m!2847839 () Bool)

(assert (=> b!2479989 m!2847839))

(declare-fun m!2847841 () Bool)

(assert (=> b!2479989 m!2847841))

(declare-fun m!2847843 () Bool)

(assert (=> b!2479989 m!2847843))

(declare-fun m!2847845 () Bool)

(assert (=> b!2479989 m!2847845))

(declare-fun m!2847847 () Bool)

(assert (=> b!2479989 m!2847847))

(declare-fun m!2847849 () Bool)

(assert (=> b!2479989 m!2847849))

(declare-fun m!2847851 () Bool)

(assert (=> b!2479989 m!2847851))

(declare-fun m!2847853 () Bool)

(assert (=> b!2479996 m!2847853))

(declare-fun m!2847855 () Bool)

(assert (=> b!2479992 m!2847855))

(declare-fun m!2847857 () Bool)

(assert (=> b!2479993 m!2847857))

(declare-fun m!2847859 () Bool)

(assert (=> b!2479994 m!2847859))

(assert (=> b!2479995 m!2847843))

(declare-fun m!2847861 () Bool)

(assert (=> b!2479997 m!2847861))

(declare-fun m!2847863 () Bool)

(assert (=> b!2479997 m!2847863))

(declare-fun m!2847865 () Bool)

(assert (=> b!2479986 m!2847865))

(assert (=> b!2479986 m!2847865))

(declare-fun m!2847867 () Bool)

(assert (=> b!2479986 m!2847867))

(declare-fun m!2847869 () Bool)

(assert (=> b!2479998 m!2847869))

(declare-fun m!2847871 () Bool)

(assert (=> b!2479998 m!2847871))

(declare-fun m!2847873 () Bool)

(assert (=> b!2479998 m!2847873))

(declare-fun m!2847875 () Bool)

(assert (=> b!2479998 m!2847875))

(declare-fun m!2847877 () Bool)

(assert (=> b!2479998 m!2847877))

(declare-fun m!2847879 () Bool)

(assert (=> b!2479998 m!2847879))

(declare-fun m!2847881 () Bool)

(assert (=> b!2479998 m!2847881))

(declare-fun m!2847883 () Bool)

(assert (=> b!2480002 m!2847883))

(declare-fun m!2847885 () Bool)

(assert (=> b!2479991 m!2847885))

(declare-fun m!2847887 () Bool)

(assert (=> b!2479990 m!2847887))

(declare-fun m!2847889 () Bool)

(assert (=> b!2479988 m!2847889))

(declare-fun m!2847891 () Bool)

(assert (=> b!2479988 m!2847891))

(declare-fun m!2847893 () Bool)

(assert (=> b!2479988 m!2847893))

(declare-fun m!2847895 () Bool)

(assert (=> b!2479988 m!2847895))

(declare-fun m!2847897 () Bool)

(assert (=> b!2479988 m!2847897))

(declare-fun m!2847899 () Bool)

(assert (=> b!2479988 m!2847899))

(declare-fun m!2847901 () Bool)

(assert (=> b!2479988 m!2847901))

(declare-fun m!2847903 () Bool)

(assert (=> b!2479988 m!2847903))

(declare-fun m!2847905 () Bool)

(assert (=> b!2479988 m!2847905))

(declare-fun m!2847907 () Bool)

(assert (=> b!2480000 m!2847907))

(check-sat b_and!188417 (not b!2479992) (not b!2480002) (not b_next!72873) (not b!2479998) (not b!2479995) (not b!2479986) (not b!2479996) (not b!2479988) (not b!2479989) (not b!2479994) (not b!2480000) (not b!2479993) (not b!2479997) tp_is_empty!12179 (not b!2480001) (not mapNonEmpty!15442) b_and!188415 (not b_next!72875) (not b!2479991) (not b!2479990))
(check-sat b_and!188417 b_and!188415 (not b_next!72873) (not b_next!72875))
