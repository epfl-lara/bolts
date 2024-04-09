; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!4580 () Bool)

(assert start!4580)

(declare-fun b_free!1281 () Bool)

(declare-fun b_next!1281 () Bool)

(assert (=> start!4580 (= b_free!1281 (not b_next!1281))))

(declare-fun tp!5289 () Bool)

(declare-fun b_and!2111 () Bool)

(assert (=> start!4580 (= tp!5289 b_and!2111)))

(declare-fun mapNonEmpty!2008 () Bool)

(declare-fun mapRes!2008 () Bool)

(declare-fun tp!5290 () Bool)

(declare-fun e!22672 () Bool)

(assert (=> mapNonEmpty!2008 (= mapRes!2008 (and tp!5290 e!22672))))

(declare-datatypes ((V!2005 0))(
  ( (V!2006 (val!844 Int)) )
))
(declare-datatypes ((ValueCell!618 0))(
  ( (ValueCellFull!618 (v!1942 V!2005)) (EmptyCell!618) )
))
(declare-fun mapValue!2008 () ValueCell!618)

(declare-datatypes ((array!2481 0))(
  ( (array!2482 (arr!1185 (Array (_ BitVec 32) ValueCell!618)) (size!1286 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!2481)

(declare-fun mapRest!2008 () (Array (_ BitVec 32) ValueCell!618))

(declare-fun mapKey!2008 () (_ BitVec 32))

(assert (=> mapNonEmpty!2008 (= (arr!1185 _values!1501) (store mapRest!2008 mapKey!2008 mapValue!2008))))

(declare-fun res!21770 () Bool)

(declare-fun e!22673 () Bool)

(assert (=> start!4580 (=> (not res!21770) (not e!22673))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!4580 (= res!21770 (validMask!0 mask!2294))))

(assert (=> start!4580 e!22673))

(assert (=> start!4580 true))

(assert (=> start!4580 tp!5289))

(declare-fun e!22670 () Bool)

(declare-fun array_inv!783 (array!2481) Bool)

(assert (=> start!4580 (and (array_inv!783 _values!1501) e!22670)))

(declare-datatypes ((array!2483 0))(
  ( (array!2484 (arr!1186 (Array (_ BitVec 32) (_ BitVec 64))) (size!1287 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!2483)

(declare-fun array_inv!784 (array!2483) Bool)

(assert (=> start!4580 (array_inv!784 _keys!1833)))

(declare-fun tp_is_empty!1635 () Bool)

(assert (=> start!4580 tp_is_empty!1635))

(declare-fun b!35892 () Bool)

(declare-fun res!21771 () Bool)

(assert (=> b!35892 (=> (not res!21771) (not e!22673))))

(declare-fun k0!1304 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!2483 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!35892 (= res!21771 (not (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000)))))

(declare-fun b!35893 () Bool)

(declare-datatypes ((SeekEntryResult!175 0))(
  ( (MissingZero!175 (index!2822 (_ BitVec 32))) (Found!175 (index!2823 (_ BitVec 32))) (Intermediate!175 (undefined!987 Bool) (index!2824 (_ BitVec 32)) (x!7063 (_ BitVec 32))) (Undefined!175) (MissingVacant!175 (index!2825 (_ BitVec 32))) )
))
(declare-fun lt!13229 () SeekEntryResult!175)

(get-info :version)

(assert (=> b!35893 (= e!22673 (and (not ((_ is Found!175) lt!13229)) (not ((_ is MissingZero!175) lt!13229)) (not ((_ is Undefined!175) lt!13229))))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!2483 (_ BitVec 32)) SeekEntryResult!175)

(assert (=> b!35893 (= lt!13229 (seekEntry!0 k0!1304 _keys!1833 mask!2294))))

(declare-fun b!35894 () Bool)

(declare-fun res!21768 () Bool)

(assert (=> b!35894 (=> (not res!21768) (not e!22673))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!2483 (_ BitVec 32)) Bool)

(assert (=> b!35894 (= res!21768 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!35895 () Bool)

(declare-fun res!21772 () Bool)

(assert (=> b!35895 (=> (not res!21772) (not e!22673))))

(declare-datatypes ((List!961 0))(
  ( (Nil!958) (Cons!957 (h!1524 (_ BitVec 64)) (t!3674 List!961)) )
))
(declare-fun arrayNoDuplicates!0 (array!2483 (_ BitVec 32) List!961) Bool)

(assert (=> b!35895 (= res!21772 (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!958))))

(declare-fun b!35896 () Bool)

(declare-fun e!22671 () Bool)

(assert (=> b!35896 (= e!22670 (and e!22671 mapRes!2008))))

(declare-fun condMapEmpty!2008 () Bool)

(declare-fun mapDefault!2008 () ValueCell!618)

(assert (=> b!35896 (= condMapEmpty!2008 (= (arr!1185 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!618)) mapDefault!2008)))))

(declare-fun b!35897 () Bool)

(declare-fun res!21767 () Bool)

(assert (=> b!35897 (=> (not res!21767) (not e!22673))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!35897 (= res!21767 (validKeyInArray!0 k0!1304))))

(declare-fun b!35898 () Bool)

(declare-fun res!21769 () Bool)

(assert (=> b!35898 (=> (not res!21769) (not e!22673))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!35898 (= res!21769 (and (= (size!1286 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!1287 _keys!1833) (size!1286 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!35899 () Bool)

(declare-fun res!21773 () Bool)

(assert (=> b!35899 (=> (not res!21773) (not e!22673))))

(declare-fun defaultEntry!1504 () Int)

(declare-fun zeroValue!1443 () V!2005)

(declare-fun minValue!1443 () V!2005)

(declare-datatypes ((tuple2!1354 0))(
  ( (tuple2!1355 (_1!687 (_ BitVec 64)) (_2!687 V!2005)) )
))
(declare-datatypes ((List!962 0))(
  ( (Nil!959) (Cons!958 (h!1525 tuple2!1354) (t!3675 List!962)) )
))
(declare-datatypes ((ListLongMap!935 0))(
  ( (ListLongMap!936 (toList!483 List!962)) )
))
(declare-fun contains!429 (ListLongMap!935 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!304 (array!2483 array!2481 (_ BitVec 32) (_ BitVec 32) V!2005 V!2005 (_ BitVec 32) Int) ListLongMap!935)

(assert (=> b!35899 (= res!21773 (not (contains!429 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304)))))

(declare-fun b!35900 () Bool)

(assert (=> b!35900 (= e!22671 tp_is_empty!1635)))

(declare-fun b!35901 () Bool)

(assert (=> b!35901 (= e!22672 tp_is_empty!1635)))

(declare-fun mapIsEmpty!2008 () Bool)

(assert (=> mapIsEmpty!2008 mapRes!2008))

(assert (= (and start!4580 res!21770) b!35898))

(assert (= (and b!35898 res!21769) b!35894))

(assert (= (and b!35894 res!21768) b!35895))

(assert (= (and b!35895 res!21772) b!35897))

(assert (= (and b!35897 res!21767) b!35899))

(assert (= (and b!35899 res!21773) b!35892))

(assert (= (and b!35892 res!21771) b!35893))

(assert (= (and b!35896 condMapEmpty!2008) mapIsEmpty!2008))

(assert (= (and b!35896 (not condMapEmpty!2008)) mapNonEmpty!2008))

(assert (= (and mapNonEmpty!2008 ((_ is ValueCellFull!618) mapValue!2008)) b!35901))

(assert (= (and b!35896 ((_ is ValueCellFull!618) mapDefault!2008)) b!35900))

(assert (= start!4580 b!35896))

(declare-fun m!28863 () Bool)

(assert (=> b!35899 m!28863))

(assert (=> b!35899 m!28863))

(declare-fun m!28865 () Bool)

(assert (=> b!35899 m!28865))

(declare-fun m!28867 () Bool)

(assert (=> b!35893 m!28867))

(declare-fun m!28869 () Bool)

(assert (=> mapNonEmpty!2008 m!28869))

(declare-fun m!28871 () Bool)

(assert (=> b!35892 m!28871))

(declare-fun m!28873 () Bool)

(assert (=> b!35895 m!28873))

(declare-fun m!28875 () Bool)

(assert (=> b!35894 m!28875))

(declare-fun m!28877 () Bool)

(assert (=> start!4580 m!28877))

(declare-fun m!28879 () Bool)

(assert (=> start!4580 m!28879))

(declare-fun m!28881 () Bool)

(assert (=> start!4580 m!28881))

(declare-fun m!28883 () Bool)

(assert (=> b!35897 m!28883))

(check-sat (not b_next!1281) (not b!35894) (not mapNonEmpty!2008) (not start!4580) (not b!35895) (not b!35893) (not b!35899) tp_is_empty!1635 b_and!2111 (not b!35897) (not b!35892))
(check-sat b_and!2111 (not b_next!1281))
(get-model)

(declare-fun b!35944 () Bool)

(declare-fun e!22695 () SeekEntryResult!175)

(declare-fun e!22696 () SeekEntryResult!175)

(assert (=> b!35944 (= e!22695 e!22696)))

(declare-fun lt!13241 () (_ BitVec 64))

(declare-fun lt!13242 () SeekEntryResult!175)

(assert (=> b!35944 (= lt!13241 (select (arr!1186 _keys!1833) (index!2824 lt!13242)))))

(declare-fun c!4088 () Bool)

(assert (=> b!35944 (= c!4088 (= lt!13241 k0!1304))))

(declare-fun b!35945 () Bool)

(assert (=> b!35945 (= e!22696 (Found!175 (index!2824 lt!13242)))))

(declare-fun b!35946 () Bool)

(declare-fun e!22697 () SeekEntryResult!175)

(declare-fun lt!13244 () SeekEntryResult!175)

(assert (=> b!35946 (= e!22697 (ite ((_ is MissingVacant!175) lt!13244) (MissingZero!175 (index!2825 lt!13244)) lt!13244))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2483 (_ BitVec 32)) SeekEntryResult!175)

(assert (=> b!35946 (= lt!13244 (seekKeyOrZeroReturnVacant!0 (x!7063 lt!13242) (index!2824 lt!13242) (index!2824 lt!13242) k0!1304 _keys!1833 mask!2294))))

(declare-fun d!5355 () Bool)

(declare-fun lt!13243 () SeekEntryResult!175)

(assert (=> d!5355 (and (or ((_ is MissingVacant!175) lt!13243) (not ((_ is Found!175) lt!13243)) (and (bvsge (index!2823 lt!13243) #b00000000000000000000000000000000) (bvslt (index!2823 lt!13243) (size!1287 _keys!1833)))) (not ((_ is MissingVacant!175) lt!13243)) (or (not ((_ is Found!175) lt!13243)) (= (select (arr!1186 _keys!1833) (index!2823 lt!13243)) k0!1304)))))

(assert (=> d!5355 (= lt!13243 e!22695)))

(declare-fun c!4090 () Bool)

(assert (=> d!5355 (= c!4090 (and ((_ is Intermediate!175) lt!13242) (undefined!987 lt!13242)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!2483 (_ BitVec 32)) SeekEntryResult!175)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!5355 (= lt!13242 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1304 mask!2294) k0!1304 _keys!1833 mask!2294))))

(assert (=> d!5355 (validMask!0 mask!2294)))

(assert (=> d!5355 (= (seekEntry!0 k0!1304 _keys!1833 mask!2294) lt!13243)))

(declare-fun b!35947 () Bool)

(assert (=> b!35947 (= e!22695 Undefined!175)))

(declare-fun b!35948 () Bool)

(declare-fun c!4089 () Bool)

(assert (=> b!35948 (= c!4089 (= lt!13241 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!35948 (= e!22696 e!22697)))

(declare-fun b!35949 () Bool)

(assert (=> b!35949 (= e!22697 (MissingZero!175 (index!2824 lt!13242)))))

(assert (= (and d!5355 c!4090) b!35947))

(assert (= (and d!5355 (not c!4090)) b!35944))

(assert (= (and b!35944 c!4088) b!35945))

(assert (= (and b!35944 (not c!4088)) b!35948))

(assert (= (and b!35948 c!4089) b!35949))

(assert (= (and b!35948 (not c!4089)) b!35946))

(declare-fun m!28907 () Bool)

(assert (=> b!35944 m!28907))

(declare-fun m!28909 () Bool)

(assert (=> b!35946 m!28909))

(declare-fun m!28911 () Bool)

(assert (=> d!5355 m!28911))

(declare-fun m!28913 () Bool)

(assert (=> d!5355 m!28913))

(assert (=> d!5355 m!28913))

(declare-fun m!28915 () Bool)

(assert (=> d!5355 m!28915))

(assert (=> d!5355 m!28877))

(assert (=> b!35893 d!5355))

(declare-fun d!5357 () Bool)

(declare-fun res!21799 () Bool)

(declare-fun e!22702 () Bool)

(assert (=> d!5357 (=> res!21799 e!22702)))

(assert (=> d!5357 (= res!21799 (= (select (arr!1186 _keys!1833) #b00000000000000000000000000000000) k0!1304))))

(assert (=> d!5357 (= (arrayContainsKey!0 _keys!1833 k0!1304 #b00000000000000000000000000000000) e!22702)))

(declare-fun b!35954 () Bool)

(declare-fun e!22703 () Bool)

(assert (=> b!35954 (= e!22702 e!22703)))

(declare-fun res!21800 () Bool)

(assert (=> b!35954 (=> (not res!21800) (not e!22703))))

(assert (=> b!35954 (= res!21800 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1287 _keys!1833)))))

(declare-fun b!35955 () Bool)

(assert (=> b!35955 (= e!22703 (arrayContainsKey!0 _keys!1833 k0!1304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!5357 (not res!21799)) b!35954))

(assert (= (and b!35954 res!21800) b!35955))

(declare-fun m!28917 () Bool)

(assert (=> d!5357 m!28917))

(declare-fun m!28919 () Bool)

(assert (=> b!35955 m!28919))

(assert (=> b!35892 d!5357))

(declare-fun d!5359 () Bool)

(assert (=> d!5359 (= (validMask!0 mask!2294) (and (or (= mask!2294 #b00000000000000000000000000000111) (= mask!2294 #b00000000000000000000000000001111) (= mask!2294 #b00000000000000000000000000011111) (= mask!2294 #b00000000000000000000000000111111) (= mask!2294 #b00000000000000000000000001111111) (= mask!2294 #b00000000000000000000000011111111) (= mask!2294 #b00000000000000000000000111111111) (= mask!2294 #b00000000000000000000001111111111) (= mask!2294 #b00000000000000000000011111111111) (= mask!2294 #b00000000000000000000111111111111) (= mask!2294 #b00000000000000000001111111111111) (= mask!2294 #b00000000000000000011111111111111) (= mask!2294 #b00000000000000000111111111111111) (= mask!2294 #b00000000000000001111111111111111) (= mask!2294 #b00000000000000011111111111111111) (= mask!2294 #b00000000000000111111111111111111) (= mask!2294 #b00000000000001111111111111111111) (= mask!2294 #b00000000000011111111111111111111) (= mask!2294 #b00000000000111111111111111111111) (= mask!2294 #b00000000001111111111111111111111) (= mask!2294 #b00000000011111111111111111111111) (= mask!2294 #b00000000111111111111111111111111) (= mask!2294 #b00000001111111111111111111111111) (= mask!2294 #b00000011111111111111111111111111) (= mask!2294 #b00000111111111111111111111111111) (= mask!2294 #b00001111111111111111111111111111) (= mask!2294 #b00011111111111111111111111111111) (= mask!2294 #b00111111111111111111111111111111)) (bvsle mask!2294 #b00111111111111111111111111111111)))))

(assert (=> start!4580 d!5359))

(declare-fun d!5361 () Bool)

(assert (=> d!5361 (= (array_inv!783 _values!1501) (bvsge (size!1286 _values!1501) #b00000000000000000000000000000000))))

(assert (=> start!4580 d!5361))

(declare-fun d!5363 () Bool)

(assert (=> d!5363 (= (array_inv!784 _keys!1833) (bvsge (size!1287 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> start!4580 d!5363))

(declare-fun d!5365 () Bool)

(assert (=> d!5365 (= (validKeyInArray!0 k0!1304) (and (not (= k0!1304 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1304 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!35897 d!5365))

(declare-fun d!5367 () Bool)

(declare-fun res!21808 () Bool)

(declare-fun e!22713 () Bool)

(assert (=> d!5367 (=> res!21808 e!22713)))

(assert (=> d!5367 (= res!21808 (bvsge #b00000000000000000000000000000000 (size!1287 _keys!1833)))))

(assert (=> d!5367 (= (arrayNoDuplicates!0 _keys!1833 #b00000000000000000000000000000000 Nil!958) e!22713)))

(declare-fun b!35966 () Bool)

(declare-fun e!22712 () Bool)

(declare-fun call!2835 () Bool)

(assert (=> b!35966 (= e!22712 call!2835)))

(declare-fun bm!2832 () Bool)

(declare-fun c!4093 () Bool)

(assert (=> bm!2832 (= call!2835 (arrayNoDuplicates!0 _keys!1833 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4093 (Cons!957 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000) Nil!958) Nil!958)))))

(declare-fun b!35967 () Bool)

(declare-fun e!22714 () Bool)

(assert (=> b!35967 (= e!22713 e!22714)))

(declare-fun res!21807 () Bool)

(assert (=> b!35967 (=> (not res!21807) (not e!22714))))

(declare-fun e!22715 () Bool)

(assert (=> b!35967 (= res!21807 (not e!22715))))

(declare-fun res!21809 () Bool)

(assert (=> b!35967 (=> (not res!21809) (not e!22715))))

(assert (=> b!35967 (= res!21809 (validKeyInArray!0 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!35968 () Bool)

(assert (=> b!35968 (= e!22712 call!2835)))

(declare-fun b!35969 () Bool)

(assert (=> b!35969 (= e!22714 e!22712)))

(assert (=> b!35969 (= c!4093 (validKeyInArray!0 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!35970 () Bool)

(declare-fun contains!431 (List!961 (_ BitVec 64)) Bool)

(assert (=> b!35970 (= e!22715 (contains!431 Nil!958 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)))))

(assert (= (and d!5367 (not res!21808)) b!35967))

(assert (= (and b!35967 res!21809) b!35970))

(assert (= (and b!35967 res!21807) b!35969))

(assert (= (and b!35969 c!4093) b!35968))

(assert (= (and b!35969 (not c!4093)) b!35966))

(assert (= (or b!35968 b!35966) bm!2832))

(assert (=> bm!2832 m!28917))

(declare-fun m!28921 () Bool)

(assert (=> bm!2832 m!28921))

(assert (=> b!35967 m!28917))

(assert (=> b!35967 m!28917))

(declare-fun m!28923 () Bool)

(assert (=> b!35967 m!28923))

(assert (=> b!35969 m!28917))

(assert (=> b!35969 m!28917))

(assert (=> b!35969 m!28923))

(assert (=> b!35970 m!28917))

(assert (=> b!35970 m!28917))

(declare-fun m!28925 () Bool)

(assert (=> b!35970 m!28925))

(assert (=> b!35895 d!5367))

(declare-fun b!35979 () Bool)

(declare-fun e!22724 () Bool)

(declare-fun e!22723 () Bool)

(assert (=> b!35979 (= e!22724 e!22723)))

(declare-fun c!4096 () Bool)

(assert (=> b!35979 (= c!4096 (validKeyInArray!0 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!35980 () Bool)

(declare-fun call!2838 () Bool)

(assert (=> b!35980 (= e!22723 call!2838)))

(declare-fun b!35981 () Bool)

(declare-fun e!22722 () Bool)

(assert (=> b!35981 (= e!22723 e!22722)))

(declare-fun lt!13252 () (_ BitVec 64))

(assert (=> b!35981 (= lt!13252 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!790 0))(
  ( (Unit!791) )
))
(declare-fun lt!13251 () Unit!790)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!2483 (_ BitVec 64) (_ BitVec 32)) Unit!790)

(assert (=> b!35981 (= lt!13251 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!13252 #b00000000000000000000000000000000))))

(assert (=> b!35981 (arrayContainsKey!0 _keys!1833 lt!13252 #b00000000000000000000000000000000)))

(declare-fun lt!13253 () Unit!790)

(assert (=> b!35981 (= lt!13253 lt!13251)))

(declare-fun res!21814 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!2483 (_ BitVec 32)) SeekEntryResult!175)

(assert (=> b!35981 (= res!21814 (= (seekEntryOrOpen!0 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294) (Found!175 #b00000000000000000000000000000000)))))

(assert (=> b!35981 (=> (not res!21814) (not e!22722))))

(declare-fun d!5369 () Bool)

(declare-fun res!21815 () Bool)

(assert (=> d!5369 (=> res!21815 e!22724)))

(assert (=> d!5369 (= res!21815 (bvsge #b00000000000000000000000000000000 (size!1287 _keys!1833)))))

(assert (=> d!5369 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294) e!22724)))

(declare-fun bm!2835 () Bool)

(assert (=> bm!2835 (= call!2838 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(declare-fun b!35982 () Bool)

(assert (=> b!35982 (= e!22722 call!2838)))

(assert (= (and d!5369 (not res!21815)) b!35979))

(assert (= (and b!35979 c!4096) b!35981))

(assert (= (and b!35979 (not c!4096)) b!35980))

(assert (= (and b!35981 res!21814) b!35982))

(assert (= (or b!35982 b!35980) bm!2835))

(assert (=> b!35979 m!28917))

(assert (=> b!35979 m!28917))

(assert (=> b!35979 m!28923))

(assert (=> b!35981 m!28917))

(declare-fun m!28927 () Bool)

(assert (=> b!35981 m!28927))

(declare-fun m!28929 () Bool)

(assert (=> b!35981 m!28929))

(assert (=> b!35981 m!28917))

(declare-fun m!28931 () Bool)

(assert (=> b!35981 m!28931))

(declare-fun m!28933 () Bool)

(assert (=> bm!2835 m!28933))

(assert (=> b!35894 d!5369))

(declare-fun d!5371 () Bool)

(declare-fun e!22730 () Bool)

(assert (=> d!5371 e!22730))

(declare-fun res!21818 () Bool)

(assert (=> d!5371 (=> res!21818 e!22730)))

(declare-fun lt!13264 () Bool)

(assert (=> d!5371 (= res!21818 (not lt!13264))))

(declare-fun lt!13263 () Bool)

(assert (=> d!5371 (= lt!13264 lt!13263)))

(declare-fun lt!13265 () Unit!790)

(declare-fun e!22729 () Unit!790)

(assert (=> d!5371 (= lt!13265 e!22729)))

(declare-fun c!4099 () Bool)

(assert (=> d!5371 (= c!4099 lt!13263)))

(declare-fun containsKey!38 (List!962 (_ BitVec 64)) Bool)

(assert (=> d!5371 (= lt!13263 (containsKey!38 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(assert (=> d!5371 (= (contains!429 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) k0!1304) lt!13264)))

(declare-fun b!35989 () Bool)

(declare-fun lt!13262 () Unit!790)

(assert (=> b!35989 (= e!22729 lt!13262)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!35 (List!962 (_ BitVec 64)) Unit!790)

(assert (=> b!35989 (= lt!13262 (lemmaContainsKeyImpliesGetValueByKeyDefined!35 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(declare-datatypes ((Option!80 0))(
  ( (Some!79 (v!1944 V!2005)) (None!78) )
))
(declare-fun isDefined!36 (Option!80) Bool)

(declare-fun getValueByKey!74 (List!962 (_ BitVec 64)) Option!80)

(assert (=> b!35989 (isDefined!36 (getValueByKey!74 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(declare-fun b!35990 () Bool)

(declare-fun Unit!792 () Unit!790)

(assert (=> b!35990 (= e!22729 Unit!792)))

(declare-fun b!35991 () Bool)

(assert (=> b!35991 (= e!22730 (isDefined!36 (getValueByKey!74 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304)))))

(assert (= (and d!5371 c!4099) b!35989))

(assert (= (and d!5371 (not c!4099)) b!35990))

(assert (= (and d!5371 (not res!21818)) b!35991))

(declare-fun m!28935 () Bool)

(assert (=> d!5371 m!28935))

(declare-fun m!28937 () Bool)

(assert (=> b!35989 m!28937))

(declare-fun m!28939 () Bool)

(assert (=> b!35989 m!28939))

(assert (=> b!35989 m!28939))

(declare-fun m!28941 () Bool)

(assert (=> b!35989 m!28941))

(assert (=> b!35991 m!28939))

(assert (=> b!35991 m!28939))

(assert (=> b!35991 m!28941))

(assert (=> b!35899 d!5371))

(declare-fun b!36034 () Bool)

(declare-fun e!22769 () Bool)

(assert (=> b!36034 (= e!22769 (validKeyInArray!0 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!36035 () Bool)

(declare-fun e!22758 () Bool)

(declare-fun e!22762 () Bool)

(assert (=> b!36035 (= e!22758 e!22762)))

(declare-fun c!4115 () Bool)

(assert (=> b!36035 (= c!4115 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!36036 () Bool)

(declare-fun res!21844 () Bool)

(assert (=> b!36036 (=> (not res!21844) (not e!22758))))

(declare-fun e!22757 () Bool)

(assert (=> b!36036 (= res!21844 e!22757)))

(declare-fun c!4112 () Bool)

(assert (=> b!36036 (= c!4112 (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun call!2854 () ListLongMap!935)

(declare-fun bm!2850 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!29 (array!2483 array!2481 (_ BitVec 32) (_ BitVec 32) V!2005 V!2005 (_ BitVec 32) Int) ListLongMap!935)

(assert (=> bm!2850 (= call!2854 (getCurrentListMapNoExtraKeys!29 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun bm!2851 () Bool)

(declare-fun call!2855 () ListLongMap!935)

(declare-fun call!2853 () ListLongMap!935)

(assert (=> bm!2851 (= call!2855 call!2853)))

(declare-fun b!36037 () Bool)

(declare-fun c!4116 () Bool)

(assert (=> b!36037 (= c!4116 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!22763 () ListLongMap!935)

(declare-fun e!22760 () ListLongMap!935)

(assert (=> b!36037 (= e!22763 e!22760)))

(declare-fun b!36038 () Bool)

(declare-fun e!22761 () Unit!790)

(declare-fun lt!13314 () Unit!790)

(assert (=> b!36038 (= e!22761 lt!13314)))

(declare-fun lt!13316 () ListLongMap!935)

(assert (=> b!36038 (= lt!13316 (getCurrentListMapNoExtraKeys!29 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!13319 () (_ BitVec 64))

(assert (=> b!36038 (= lt!13319 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!13313 () (_ BitVec 64))

(assert (=> b!36038 (= lt!13313 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!13320 () Unit!790)

(declare-fun addStillContains!27 (ListLongMap!935 (_ BitVec 64) V!2005 (_ BitVec 64)) Unit!790)

(assert (=> b!36038 (= lt!13320 (addStillContains!27 lt!13316 lt!13319 zeroValue!1443 lt!13313))))

(declare-fun +!60 (ListLongMap!935 tuple2!1354) ListLongMap!935)

(assert (=> b!36038 (contains!429 (+!60 lt!13316 (tuple2!1355 lt!13319 zeroValue!1443)) lt!13313)))

(declare-fun lt!13323 () Unit!790)

(assert (=> b!36038 (= lt!13323 lt!13320)))

(declare-fun lt!13311 () ListLongMap!935)

(assert (=> b!36038 (= lt!13311 (getCurrentListMapNoExtraKeys!29 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!13324 () (_ BitVec 64))

(assert (=> b!36038 (= lt!13324 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!13325 () (_ BitVec 64))

(assert (=> b!36038 (= lt!13325 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!13326 () Unit!790)

(declare-fun addApplyDifferent!27 (ListLongMap!935 (_ BitVec 64) V!2005 (_ BitVec 64)) Unit!790)

(assert (=> b!36038 (= lt!13326 (addApplyDifferent!27 lt!13311 lt!13324 minValue!1443 lt!13325))))

(declare-fun apply!42 (ListLongMap!935 (_ BitVec 64)) V!2005)

(assert (=> b!36038 (= (apply!42 (+!60 lt!13311 (tuple2!1355 lt!13324 minValue!1443)) lt!13325) (apply!42 lt!13311 lt!13325))))

(declare-fun lt!13315 () Unit!790)

(assert (=> b!36038 (= lt!13315 lt!13326)))

(declare-fun lt!13321 () ListLongMap!935)

(assert (=> b!36038 (= lt!13321 (getCurrentListMapNoExtraKeys!29 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!13310 () (_ BitVec 64))

(assert (=> b!36038 (= lt!13310 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!13312 () (_ BitVec 64))

(assert (=> b!36038 (= lt!13312 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun lt!13331 () Unit!790)

(assert (=> b!36038 (= lt!13331 (addApplyDifferent!27 lt!13321 lt!13310 zeroValue!1443 lt!13312))))

(assert (=> b!36038 (= (apply!42 (+!60 lt!13321 (tuple2!1355 lt!13310 zeroValue!1443)) lt!13312) (apply!42 lt!13321 lt!13312))))

(declare-fun lt!13317 () Unit!790)

(assert (=> b!36038 (= lt!13317 lt!13331)))

(declare-fun lt!13318 () ListLongMap!935)

(assert (=> b!36038 (= lt!13318 (getCurrentListMapNoExtraKeys!29 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))

(declare-fun lt!13330 () (_ BitVec 64))

(assert (=> b!36038 (= lt!13330 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!13328 () (_ BitVec 64))

(assert (=> b!36038 (= lt!13328 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> b!36038 (= lt!13314 (addApplyDifferent!27 lt!13318 lt!13330 minValue!1443 lt!13328))))

(assert (=> b!36038 (= (apply!42 (+!60 lt!13318 (tuple2!1355 lt!13330 minValue!1443)) lt!13328) (apply!42 lt!13318 lt!13328))))

(declare-fun lt!13322 () ListLongMap!935)

(declare-fun e!22765 () Bool)

(declare-fun b!36039 () Bool)

(declare-fun get!611 (ValueCell!618 V!2005) V!2005)

(declare-fun dynLambda!159 (Int (_ BitVec 64)) V!2005)

(assert (=> b!36039 (= e!22765 (= (apply!42 lt!13322 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)) (get!611 (select (arr!1185 _values!1501) #b00000000000000000000000000000000) (dynLambda!159 defaultEntry!1504 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!36039 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1286 _values!1501)))))

(assert (=> b!36039 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1287 _keys!1833)))))

(declare-fun b!36040 () Bool)

(declare-fun e!22766 () Bool)

(assert (=> b!36040 (= e!22766 e!22765)))

(declare-fun res!21840 () Bool)

(assert (=> b!36040 (=> (not res!21840) (not e!22765))))

(assert (=> b!36040 (= res!21840 (contains!429 lt!13322 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)))))

(assert (=> b!36040 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1287 _keys!1833)))))

(declare-fun b!36041 () Bool)

(declare-fun res!21838 () Bool)

(assert (=> b!36041 (=> (not res!21838) (not e!22758))))

(assert (=> b!36041 (= res!21838 e!22766)))

(declare-fun res!21842 () Bool)

(assert (=> b!36041 (=> res!21842 e!22766)))

(assert (=> b!36041 (= res!21842 (not e!22769))))

(declare-fun res!21839 () Bool)

(assert (=> b!36041 (=> (not res!21839) (not e!22769))))

(assert (=> b!36041 (= res!21839 (bvslt #b00000000000000000000000000000000 (size!1287 _keys!1833)))))

(declare-fun b!36042 () Bool)

(declare-fun call!2857 () Bool)

(assert (=> b!36042 (= e!22762 (not call!2857))))

(declare-fun bm!2852 () Bool)

(declare-fun call!2858 () Bool)

(assert (=> bm!2852 (= call!2858 (contains!429 lt!13322 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!2859 () ListLongMap!935)

(declare-fun c!4113 () Bool)

(declare-fun c!4114 () Bool)

(declare-fun call!2856 () ListLongMap!935)

(declare-fun bm!2853 () Bool)

(assert (=> bm!2853 (= call!2853 (+!60 (ite c!4114 call!2854 (ite c!4113 call!2859 call!2856)) (ite (or c!4114 c!4113) (tuple2!1355 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))))))

(declare-fun b!36043 () Bool)

(declare-fun e!22767 () Bool)

(assert (=> b!36043 (= e!22757 e!22767)))

(declare-fun res!21837 () Bool)

(assert (=> b!36043 (= res!21837 call!2858)))

(assert (=> b!36043 (=> (not res!21837) (not e!22767))))

(declare-fun b!36044 () Bool)

(declare-fun e!22764 () ListLongMap!935)

(assert (=> b!36044 (= e!22764 (+!60 call!2853 (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))))

(declare-fun b!36045 () Bool)

(declare-fun e!22759 () Bool)

(assert (=> b!36045 (= e!22759 (validKeyInArray!0 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!36046 () Bool)

(assert (=> b!36046 (= e!22764 e!22763)))

(assert (=> b!36046 (= c!4113 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!2854 () Bool)

(assert (=> bm!2854 (= call!2856 call!2859)))

(declare-fun b!36047 () Bool)

(assert (=> b!36047 (= e!22767 (= (apply!42 lt!13322 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1443))))

(declare-fun b!36048 () Bool)

(assert (=> b!36048 (= e!22760 call!2856)))

(declare-fun bm!2855 () Bool)

(assert (=> bm!2855 (= call!2859 call!2854)))

(declare-fun b!36049 () Bool)

(declare-fun Unit!793 () Unit!790)

(assert (=> b!36049 (= e!22761 Unit!793)))

(declare-fun b!36050 () Bool)

(assert (=> b!36050 (= e!22763 call!2855)))

(declare-fun bm!2856 () Bool)

(assert (=> bm!2856 (= call!2857 (contains!429 lt!13322 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!36051 () Bool)

(declare-fun e!22768 () Bool)

(assert (=> b!36051 (= e!22768 (= (apply!42 lt!13322 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1443))))

(declare-fun b!36052 () Bool)

(assert (=> b!36052 (= e!22760 call!2855)))

(declare-fun d!5373 () Bool)

(assert (=> d!5373 e!22758))

(declare-fun res!21843 () Bool)

(assert (=> d!5373 (=> (not res!21843) (not e!22758))))

(assert (=> d!5373 (= res!21843 (or (bvsge #b00000000000000000000000000000000 (size!1287 _keys!1833)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1287 _keys!1833)))))))

(declare-fun lt!13327 () ListLongMap!935)

(assert (=> d!5373 (= lt!13322 lt!13327)))

(declare-fun lt!13329 () Unit!790)

(assert (=> d!5373 (= lt!13329 e!22761)))

(declare-fun c!4117 () Bool)

(assert (=> d!5373 (= c!4117 e!22759)))

(declare-fun res!21845 () Bool)

(assert (=> d!5373 (=> (not res!21845) (not e!22759))))

(assert (=> d!5373 (= res!21845 (bvslt #b00000000000000000000000000000000 (size!1287 _keys!1833)))))

(assert (=> d!5373 (= lt!13327 e!22764)))

(assert (=> d!5373 (= c!4114 (and (not (= (bvand extraKeys!1422 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1422 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!5373 (validMask!0 mask!2294)))

(assert (=> d!5373 (= (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) lt!13322)))

(declare-fun b!36053 () Bool)

(assert (=> b!36053 (= e!22762 e!22768)))

(declare-fun res!21841 () Bool)

(assert (=> b!36053 (= res!21841 call!2857)))

(assert (=> b!36053 (=> (not res!21841) (not e!22768))))

(declare-fun b!36054 () Bool)

(assert (=> b!36054 (= e!22757 (not call!2858))))

(assert (= (and d!5373 c!4114) b!36044))

(assert (= (and d!5373 (not c!4114)) b!36046))

(assert (= (and b!36046 c!4113) b!36050))

(assert (= (and b!36046 (not c!4113)) b!36037))

(assert (= (and b!36037 c!4116) b!36052))

(assert (= (and b!36037 (not c!4116)) b!36048))

(assert (= (or b!36052 b!36048) bm!2854))

(assert (= (or b!36050 bm!2854) bm!2855))

(assert (= (or b!36050 b!36052) bm!2851))

(assert (= (or b!36044 bm!2855) bm!2850))

(assert (= (or b!36044 bm!2851) bm!2853))

(assert (= (and d!5373 res!21845) b!36045))

(assert (= (and d!5373 c!4117) b!36038))

(assert (= (and d!5373 (not c!4117)) b!36049))

(assert (= (and d!5373 res!21843) b!36041))

(assert (= (and b!36041 res!21839) b!36034))

(assert (= (and b!36041 (not res!21842)) b!36040))

(assert (= (and b!36040 res!21840) b!36039))

(assert (= (and b!36041 res!21838) b!36036))

(assert (= (and b!36036 c!4112) b!36043))

(assert (= (and b!36036 (not c!4112)) b!36054))

(assert (= (and b!36043 res!21837) b!36047))

(assert (= (or b!36043 b!36054) bm!2852))

(assert (= (and b!36036 res!21844) b!36035))

(assert (= (and b!36035 c!4115) b!36053))

(assert (= (and b!36035 (not c!4115)) b!36042))

(assert (= (and b!36053 res!21841) b!36051))

(assert (= (or b!36053 b!36042) bm!2856))

(declare-fun b_lambda!1735 () Bool)

(assert (=> (not b_lambda!1735) (not b!36039)))

(declare-fun t!3679 () Bool)

(declare-fun tb!701 () Bool)

(assert (=> (and start!4580 (= defaultEntry!1504 defaultEntry!1504) t!3679) tb!701))

(declare-fun result!1209 () Bool)

(assert (=> tb!701 (= result!1209 tp_is_empty!1635)))

(assert (=> b!36039 t!3679))

(declare-fun b_and!2115 () Bool)

(assert (= b_and!2111 (and (=> t!3679 result!1209) b_and!2115)))

(declare-fun m!28943 () Bool)

(assert (=> b!36051 m!28943))

(declare-fun m!28945 () Bool)

(assert (=> b!36038 m!28945))

(declare-fun m!28947 () Bool)

(assert (=> b!36038 m!28947))

(declare-fun m!28949 () Bool)

(assert (=> b!36038 m!28949))

(declare-fun m!28951 () Bool)

(assert (=> b!36038 m!28951))

(assert (=> b!36038 m!28949))

(declare-fun m!28953 () Bool)

(assert (=> b!36038 m!28953))

(declare-fun m!28955 () Bool)

(assert (=> b!36038 m!28955))

(declare-fun m!28957 () Bool)

(assert (=> b!36038 m!28957))

(declare-fun m!28959 () Bool)

(assert (=> b!36038 m!28959))

(declare-fun m!28961 () Bool)

(assert (=> b!36038 m!28961))

(declare-fun m!28963 () Bool)

(assert (=> b!36038 m!28963))

(declare-fun m!28965 () Bool)

(assert (=> b!36038 m!28965))

(declare-fun m!28967 () Bool)

(assert (=> b!36038 m!28967))

(declare-fun m!28969 () Bool)

(assert (=> b!36038 m!28969))

(assert (=> b!36038 m!28967))

(assert (=> b!36038 m!28955))

(assert (=> b!36038 m!28917))

(assert (=> b!36038 m!28951))

(declare-fun m!28971 () Bool)

(assert (=> b!36038 m!28971))

(declare-fun m!28973 () Bool)

(assert (=> b!36038 m!28973))

(declare-fun m!28975 () Bool)

(assert (=> b!36038 m!28975))

(declare-fun m!28977 () Bool)

(assert (=> bm!2852 m!28977))

(assert (=> b!36039 m!28917))

(declare-fun m!28979 () Bool)

(assert (=> b!36039 m!28979))

(assert (=> b!36039 m!28917))

(declare-fun m!28981 () Bool)

(assert (=> b!36039 m!28981))

(declare-fun m!28983 () Bool)

(assert (=> b!36039 m!28983))

(assert (=> b!36039 m!28981))

(declare-fun m!28985 () Bool)

(assert (=> b!36039 m!28985))

(assert (=> b!36039 m!28983))

(assert (=> bm!2850 m!28947))

(declare-fun m!28987 () Bool)

(assert (=> bm!2853 m!28987))

(assert (=> b!36034 m!28917))

(assert (=> b!36034 m!28917))

(assert (=> b!36034 m!28923))

(declare-fun m!28989 () Bool)

(assert (=> b!36047 m!28989))

(declare-fun m!28991 () Bool)

(assert (=> bm!2856 m!28991))

(assert (=> b!36040 m!28917))

(assert (=> b!36040 m!28917))

(declare-fun m!28993 () Bool)

(assert (=> b!36040 m!28993))

(assert (=> d!5373 m!28877))

(declare-fun m!28995 () Bool)

(assert (=> b!36044 m!28995))

(assert (=> b!36045 m!28917))

(assert (=> b!36045 m!28917))

(assert (=> b!36045 m!28923))

(assert (=> b!35899 d!5373))

(declare-fun b!36063 () Bool)

(declare-fun e!22775 () Bool)

(assert (=> b!36063 (= e!22775 tp_is_empty!1635)))

(declare-fun condMapEmpty!2014 () Bool)

(declare-fun mapDefault!2014 () ValueCell!618)

(assert (=> mapNonEmpty!2008 (= condMapEmpty!2014 (= mapRest!2008 ((as const (Array (_ BitVec 32) ValueCell!618)) mapDefault!2014)))))

(declare-fun e!22774 () Bool)

(declare-fun mapRes!2014 () Bool)

(assert (=> mapNonEmpty!2008 (= tp!5290 (and e!22774 mapRes!2014))))

(declare-fun b!36064 () Bool)

(assert (=> b!36064 (= e!22774 tp_is_empty!1635)))

(declare-fun mapNonEmpty!2014 () Bool)

(declare-fun tp!5299 () Bool)

(assert (=> mapNonEmpty!2014 (= mapRes!2014 (and tp!5299 e!22775))))

(declare-fun mapValue!2014 () ValueCell!618)

(declare-fun mapRest!2014 () (Array (_ BitVec 32) ValueCell!618))

(declare-fun mapKey!2014 () (_ BitVec 32))

(assert (=> mapNonEmpty!2014 (= mapRest!2008 (store mapRest!2014 mapKey!2014 mapValue!2014))))

(declare-fun mapIsEmpty!2014 () Bool)

(assert (=> mapIsEmpty!2014 mapRes!2014))

(assert (= (and mapNonEmpty!2008 condMapEmpty!2014) mapIsEmpty!2014))

(assert (= (and mapNonEmpty!2008 (not condMapEmpty!2014)) mapNonEmpty!2014))

(assert (= (and mapNonEmpty!2014 ((_ is ValueCellFull!618) mapValue!2014)) b!36063))

(assert (= (and mapNonEmpty!2008 ((_ is ValueCellFull!618) mapDefault!2014)) b!36064))

(declare-fun m!28997 () Bool)

(assert (=> mapNonEmpty!2014 m!28997))

(declare-fun b_lambda!1737 () Bool)

(assert (= b_lambda!1735 (or (and start!4580 b_free!1281) b_lambda!1737)))

(check-sat (not b_next!1281) (not b!35946) (not b!36051) (not b!35979) (not b!35970) (not bm!2852) (not bm!2832) (not bm!2853) (not b!35989) (not bm!2850) (not mapNonEmpty!2014) (not b!35981) (not b!36044) (not b!36047) (not bm!2856) (not b!36034) (not d!5373) (not b!35969) (not b!35991) (not b!35967) tp_is_empty!1635 (not d!5371) b_and!2115 (not bm!2835) (not b_lambda!1737) (not b!36045) (not b!36039) (not d!5355) (not b!36040) (not b!36038) (not b!35955))
(check-sat b_and!2115 (not b_next!1281))
(get-model)

(declare-fun d!5375 () Bool)

(declare-fun e!22778 () Bool)

(assert (=> d!5375 e!22778))

(declare-fun res!21851 () Bool)

(assert (=> d!5375 (=> (not res!21851) (not e!22778))))

(declare-fun lt!13343 () ListLongMap!935)

(assert (=> d!5375 (= res!21851 (contains!429 lt!13343 (_1!687 (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))))))

(declare-fun lt!13341 () List!962)

(assert (=> d!5375 (= lt!13343 (ListLongMap!936 lt!13341))))

(declare-fun lt!13340 () Unit!790)

(declare-fun lt!13342 () Unit!790)

(assert (=> d!5375 (= lt!13340 lt!13342)))

(assert (=> d!5375 (= (getValueByKey!74 lt!13341 (_1!687 (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))) (Some!79 (_2!687 (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))))))

(declare-fun lemmaContainsTupThenGetReturnValue!19 (List!962 (_ BitVec 64) V!2005) Unit!790)

(assert (=> d!5375 (= lt!13342 (lemmaContainsTupThenGetReturnValue!19 lt!13341 (_1!687 (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)) (_2!687 (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))))))

(declare-fun insertStrictlySorted!19 (List!962 (_ BitVec 64) V!2005) List!962)

(assert (=> d!5375 (= lt!13341 (insertStrictlySorted!19 (toList!483 call!2853) (_1!687 (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)) (_2!687 (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))))))

(assert (=> d!5375 (= (+!60 call!2853 (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)) lt!13343)))

(declare-fun b!36069 () Bool)

(declare-fun res!21850 () Bool)

(assert (=> b!36069 (=> (not res!21850) (not e!22778))))

(assert (=> b!36069 (= res!21850 (= (getValueByKey!74 (toList!483 lt!13343) (_1!687 (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))) (Some!79 (_2!687 (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))))))

(declare-fun b!36070 () Bool)

(declare-fun contains!432 (List!962 tuple2!1354) Bool)

(assert (=> b!36070 (= e!22778 (contains!432 (toList!483 lt!13343) (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))))

(assert (= (and d!5375 res!21851) b!36069))

(assert (= (and b!36069 res!21850) b!36070))

(declare-fun m!28999 () Bool)

(assert (=> d!5375 m!28999))

(declare-fun m!29001 () Bool)

(assert (=> d!5375 m!29001))

(declare-fun m!29003 () Bool)

(assert (=> d!5375 m!29003))

(declare-fun m!29005 () Bool)

(assert (=> d!5375 m!29005))

(declare-fun m!29007 () Bool)

(assert (=> b!36069 m!29007))

(declare-fun m!29009 () Bool)

(assert (=> b!36070 m!29009))

(assert (=> b!36044 d!5375))

(declare-fun d!5377 () Bool)

(declare-fun res!21856 () Bool)

(declare-fun e!22783 () Bool)

(assert (=> d!5377 (=> res!21856 e!22783)))

(assert (=> d!5377 (= res!21856 (and ((_ is Cons!958) (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))) (= (_1!687 (h!1525 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)))) k0!1304)))))

(assert (=> d!5377 (= (containsKey!38 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304) e!22783)))

(declare-fun b!36075 () Bool)

(declare-fun e!22784 () Bool)

(assert (=> b!36075 (= e!22783 e!22784)))

(declare-fun res!21857 () Bool)

(assert (=> b!36075 (=> (not res!21857) (not e!22784))))

(assert (=> b!36075 (= res!21857 (and (or (not ((_ is Cons!958) (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)))) (bvsle (_1!687 (h!1525 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)))) k0!1304)) ((_ is Cons!958) (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))) (bvslt (_1!687 (h!1525 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)))) k0!1304)))))

(declare-fun b!36076 () Bool)

(assert (=> b!36076 (= e!22784 (containsKey!38 (t!3675 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))) k0!1304))))

(assert (= (and d!5377 (not res!21856)) b!36075))

(assert (= (and b!36075 res!21857) b!36076))

(declare-fun m!29011 () Bool)

(assert (=> b!36076 m!29011))

(assert (=> d!5371 d!5377))

(declare-fun d!5379 () Bool)

(declare-fun e!22785 () Bool)

(assert (=> d!5379 e!22785))

(declare-fun res!21859 () Bool)

(assert (=> d!5379 (=> (not res!21859) (not e!22785))))

(declare-fun lt!13347 () ListLongMap!935)

(assert (=> d!5379 (= res!21859 (contains!429 lt!13347 (_1!687 (ite (or c!4114 c!4113) (tuple2!1355 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))))))

(declare-fun lt!13345 () List!962)

(assert (=> d!5379 (= lt!13347 (ListLongMap!936 lt!13345))))

(declare-fun lt!13344 () Unit!790)

(declare-fun lt!13346 () Unit!790)

(assert (=> d!5379 (= lt!13344 lt!13346)))

(assert (=> d!5379 (= (getValueByKey!74 lt!13345 (_1!687 (ite (or c!4114 c!4113) (tuple2!1355 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))) (Some!79 (_2!687 (ite (or c!4114 c!4113) (tuple2!1355 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))))))

(assert (=> d!5379 (= lt!13346 (lemmaContainsTupThenGetReturnValue!19 lt!13345 (_1!687 (ite (or c!4114 c!4113) (tuple2!1355 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))) (_2!687 (ite (or c!4114 c!4113) (tuple2!1355 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))))))

(assert (=> d!5379 (= lt!13345 (insertStrictlySorted!19 (toList!483 (ite c!4114 call!2854 (ite c!4113 call!2859 call!2856))) (_1!687 (ite (or c!4114 c!4113) (tuple2!1355 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))) (_2!687 (ite (or c!4114 c!4113) (tuple2!1355 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))))))

(assert (=> d!5379 (= (+!60 (ite c!4114 call!2854 (ite c!4113 call!2859 call!2856)) (ite (or c!4114 c!4113) (tuple2!1355 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))) lt!13347)))

(declare-fun b!36077 () Bool)

(declare-fun res!21858 () Bool)

(assert (=> b!36077 (=> (not res!21858) (not e!22785))))

(assert (=> b!36077 (= res!21858 (= (getValueByKey!74 (toList!483 lt!13347) (_1!687 (ite (or c!4114 c!4113) (tuple2!1355 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443)))) (Some!79 (_2!687 (ite (or c!4114 c!4113) (tuple2!1355 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))))))))

(declare-fun b!36078 () Bool)

(assert (=> b!36078 (= e!22785 (contains!432 (toList!483 lt!13347) (ite (or c!4114 c!4113) (tuple2!1355 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1443) (tuple2!1355 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1443))))))

(assert (= (and d!5379 res!21859) b!36077))

(assert (= (and b!36077 res!21858) b!36078))

(declare-fun m!29013 () Bool)

(assert (=> d!5379 m!29013))

(declare-fun m!29015 () Bool)

(assert (=> d!5379 m!29015))

(declare-fun m!29017 () Bool)

(assert (=> d!5379 m!29017))

(declare-fun m!29019 () Bool)

(assert (=> d!5379 m!29019))

(declare-fun m!29021 () Bool)

(assert (=> b!36077 m!29021))

(declare-fun m!29023 () Bool)

(assert (=> b!36078 m!29023))

(assert (=> bm!2853 d!5379))

(declare-fun d!5381 () Bool)

(declare-fun e!22800 () Bool)

(assert (=> d!5381 e!22800))

(declare-fun c!4126 () Bool)

(declare-fun lt!13352 () SeekEntryResult!175)

(assert (=> d!5381 (= c!4126 (and ((_ is Intermediate!175) lt!13352) (undefined!987 lt!13352)))))

(declare-fun e!22798 () SeekEntryResult!175)

(assert (=> d!5381 (= lt!13352 e!22798)))

(declare-fun c!4125 () Bool)

(assert (=> d!5381 (= c!4125 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!13353 () (_ BitVec 64))

(assert (=> d!5381 (= lt!13353 (select (arr!1186 _keys!1833) (toIndex!0 k0!1304 mask!2294)))))

(assert (=> d!5381 (validMask!0 mask!2294)))

(assert (=> d!5381 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!1304 mask!2294) k0!1304 _keys!1833 mask!2294) lt!13352)))

(declare-fun b!36097 () Bool)

(assert (=> b!36097 (= e!22798 (Intermediate!175 true (toIndex!0 k0!1304 mask!2294) #b00000000000000000000000000000000))))

(declare-fun b!36098 () Bool)

(declare-fun e!22799 () SeekEntryResult!175)

(assert (=> b!36098 (= e!22799 (Intermediate!175 false (toIndex!0 k0!1304 mask!2294) #b00000000000000000000000000000000))))

(declare-fun b!36099 () Bool)

(declare-fun e!22796 () Bool)

(assert (=> b!36099 (= e!22800 e!22796)))

(declare-fun res!21866 () Bool)

(assert (=> b!36099 (= res!21866 (and ((_ is Intermediate!175) lt!13352) (not (undefined!987 lt!13352)) (bvslt (x!7063 lt!13352) #b01111111111111111111111111111110) (bvsge (x!7063 lt!13352) #b00000000000000000000000000000000) (bvsge (x!7063 lt!13352) #b00000000000000000000000000000000)))))

(assert (=> b!36099 (=> (not res!21866) (not e!22796))))

(declare-fun b!36100 () Bool)

(assert (=> b!36100 (= e!22798 e!22799)))

(declare-fun c!4124 () Bool)

(assert (=> b!36100 (= c!4124 (or (= lt!13353 k0!1304) (= (bvadd lt!13353 lt!13353) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!36101 () Bool)

(assert (=> b!36101 (and (bvsge (index!2824 lt!13352) #b00000000000000000000000000000000) (bvslt (index!2824 lt!13352) (size!1287 _keys!1833)))))

(declare-fun res!21868 () Bool)

(assert (=> b!36101 (= res!21868 (= (select (arr!1186 _keys!1833) (index!2824 lt!13352)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!22797 () Bool)

(assert (=> b!36101 (=> res!21868 e!22797)))

(declare-fun b!36102 () Bool)

(assert (=> b!36102 (= e!22800 (bvsge (x!7063 lt!13352) #b01111111111111111111111111111110))))

(declare-fun b!36103 () Bool)

(assert (=> b!36103 (and (bvsge (index!2824 lt!13352) #b00000000000000000000000000000000) (bvslt (index!2824 lt!13352) (size!1287 _keys!1833)))))

(declare-fun res!21867 () Bool)

(assert (=> b!36103 (= res!21867 (= (select (arr!1186 _keys!1833) (index!2824 lt!13352)) k0!1304))))

(assert (=> b!36103 (=> res!21867 e!22797)))

(assert (=> b!36103 (= e!22796 e!22797)))

(declare-fun b!36104 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!36104 (= e!22799 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 k0!1304 mask!2294) #b00000000000000000000000000000000 mask!2294) k0!1304 _keys!1833 mask!2294))))

(declare-fun b!36105 () Bool)

(assert (=> b!36105 (and (bvsge (index!2824 lt!13352) #b00000000000000000000000000000000) (bvslt (index!2824 lt!13352) (size!1287 _keys!1833)))))

(assert (=> b!36105 (= e!22797 (= (select (arr!1186 _keys!1833) (index!2824 lt!13352)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!5381 c!4125) b!36097))

(assert (= (and d!5381 (not c!4125)) b!36100))

(assert (= (and b!36100 c!4124) b!36098))

(assert (= (and b!36100 (not c!4124)) b!36104))

(assert (= (and d!5381 c!4126) b!36102))

(assert (= (and d!5381 (not c!4126)) b!36099))

(assert (= (and b!36099 res!21866) b!36103))

(assert (= (and b!36103 (not res!21867)) b!36101))

(assert (= (and b!36101 (not res!21868)) b!36105))

(declare-fun m!29025 () Bool)

(assert (=> b!36105 m!29025))

(assert (=> b!36101 m!29025))

(assert (=> d!5381 m!28913))

(declare-fun m!29027 () Bool)

(assert (=> d!5381 m!29027))

(assert (=> d!5381 m!28877))

(assert (=> b!36104 m!28913))

(declare-fun m!29029 () Bool)

(assert (=> b!36104 m!29029))

(assert (=> b!36104 m!29029))

(declare-fun m!29031 () Bool)

(assert (=> b!36104 m!29031))

(assert (=> b!36103 m!29025))

(assert (=> d!5355 d!5381))

(declare-fun d!5383 () Bool)

(declare-fun lt!13359 () (_ BitVec 32))

(declare-fun lt!13358 () (_ BitVec 32))

(assert (=> d!5383 (= lt!13359 (bvmul (bvxor lt!13358 (bvlshr lt!13358 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!5383 (= lt!13358 ((_ extract 31 0) (bvand (bvxor k0!1304 (bvlshr k0!1304 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!5383 (and (bvsge mask!2294 #b00000000000000000000000000000000) (let ((res!21869 (let ((h!1528 ((_ extract 31 0) (bvand (bvxor k0!1304 (bvlshr k0!1304 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!7080 (bvmul (bvxor h!1528 (bvlshr h!1528 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!7080 (bvlshr x!7080 #b00000000000000000000000000001101)) mask!2294))))) (and (bvslt res!21869 (bvadd mask!2294 #b00000000000000000000000000000001)) (bvsge res!21869 #b00000000000000000000000000000000))))))

(assert (=> d!5383 (= (toIndex!0 k0!1304 mask!2294) (bvand (bvxor lt!13359 (bvlshr lt!13359 #b00000000000000000000000000001101)) mask!2294))))

(assert (=> d!5355 d!5383))

(assert (=> d!5355 d!5359))

(declare-fun d!5385 () Bool)

(assert (=> d!5385 (= (validKeyInArray!0 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)) (and (not (= (select (arr!1186 _keys!1833) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1186 _keys!1833) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!36045 d!5385))

(assert (=> b!35969 d!5385))

(declare-fun d!5387 () Bool)

(declare-fun e!22802 () Bool)

(assert (=> d!5387 e!22802))

(declare-fun res!21870 () Bool)

(assert (=> d!5387 (=> res!21870 e!22802)))

(declare-fun lt!13362 () Bool)

(assert (=> d!5387 (= res!21870 (not lt!13362))))

(declare-fun lt!13361 () Bool)

(assert (=> d!5387 (= lt!13362 lt!13361)))

(declare-fun lt!13363 () Unit!790)

(declare-fun e!22801 () Unit!790)

(assert (=> d!5387 (= lt!13363 e!22801)))

(declare-fun c!4127 () Bool)

(assert (=> d!5387 (= c!4127 lt!13361)))

(assert (=> d!5387 (= lt!13361 (containsKey!38 (toList!483 lt!13322) (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)))))

(assert (=> d!5387 (= (contains!429 lt!13322 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)) lt!13362)))

(declare-fun b!36106 () Bool)

(declare-fun lt!13360 () Unit!790)

(assert (=> b!36106 (= e!22801 lt!13360)))

(assert (=> b!36106 (= lt!13360 (lemmaContainsKeyImpliesGetValueByKeyDefined!35 (toList!483 lt!13322) (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)))))

(assert (=> b!36106 (isDefined!36 (getValueByKey!74 (toList!483 lt!13322) (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!36107 () Bool)

(declare-fun Unit!794 () Unit!790)

(assert (=> b!36107 (= e!22801 Unit!794)))

(declare-fun b!36108 () Bool)

(assert (=> b!36108 (= e!22802 (isDefined!36 (getValueByKey!74 (toList!483 lt!13322) (select (arr!1186 _keys!1833) #b00000000000000000000000000000000))))))

(assert (= (and d!5387 c!4127) b!36106))

(assert (= (and d!5387 (not c!4127)) b!36107))

(assert (= (and d!5387 (not res!21870)) b!36108))

(assert (=> d!5387 m!28917))

(declare-fun m!29033 () Bool)

(assert (=> d!5387 m!29033))

(assert (=> b!36106 m!28917))

(declare-fun m!29035 () Bool)

(assert (=> b!36106 m!29035))

(assert (=> b!36106 m!28917))

(declare-fun m!29037 () Bool)

(assert (=> b!36106 m!29037))

(assert (=> b!36106 m!29037))

(declare-fun m!29039 () Bool)

(assert (=> b!36106 m!29039))

(assert (=> b!36108 m!28917))

(assert (=> b!36108 m!29037))

(assert (=> b!36108 m!29037))

(assert (=> b!36108 m!29039))

(assert (=> b!36040 d!5387))

(declare-fun d!5389 () Bool)

(declare-fun isEmpty!175 (Option!80) Bool)

(assert (=> d!5389 (= (isDefined!36 (getValueByKey!74 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304)) (not (isEmpty!175 (getValueByKey!74 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))))

(declare-fun bs!1360 () Bool)

(assert (= bs!1360 d!5389))

(assert (=> bs!1360 m!28939))

(declare-fun m!29041 () Bool)

(assert (=> bs!1360 m!29041))

(assert (=> b!35991 d!5389))

(declare-fun b!36118 () Bool)

(declare-fun e!22807 () Option!80)

(declare-fun e!22808 () Option!80)

(assert (=> b!36118 (= e!22807 e!22808)))

(declare-fun c!4133 () Bool)

(assert (=> b!36118 (= c!4133 (and ((_ is Cons!958) (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))) (not (= (_1!687 (h!1525 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)))) k0!1304))))))

(declare-fun d!5391 () Bool)

(declare-fun c!4132 () Bool)

(assert (=> d!5391 (= c!4132 (and ((_ is Cons!958) (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))) (= (_1!687 (h!1525 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)))) k0!1304)))))

(assert (=> d!5391 (= (getValueByKey!74 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304) e!22807)))

(declare-fun b!36120 () Bool)

(assert (=> b!36120 (= e!22808 None!78)))

(declare-fun b!36117 () Bool)

(assert (=> b!36117 (= e!22807 (Some!79 (_2!687 (h!1525 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))))))

(declare-fun b!36119 () Bool)

(assert (=> b!36119 (= e!22808 (getValueByKey!74 (t!3675 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))) k0!1304))))

(assert (= (and d!5391 c!4132) b!36117))

(assert (= (and d!5391 (not c!4132)) b!36118))

(assert (= (and b!36118 c!4133) b!36119))

(assert (= (and b!36118 (not c!4133)) b!36120))

(declare-fun m!29043 () Bool)

(assert (=> b!36119 m!29043))

(assert (=> b!35991 d!5391))

(declare-fun d!5393 () Bool)

(declare-fun get!612 (Option!80) V!2005)

(assert (=> d!5393 (= (apply!42 lt!13322 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)) (get!612 (getValueByKey!74 (toList!483 lt!13322) (select (arr!1186 _keys!1833) #b00000000000000000000000000000000))))))

(declare-fun bs!1361 () Bool)

(assert (= bs!1361 d!5393))

(assert (=> bs!1361 m!28917))

(assert (=> bs!1361 m!29037))

(assert (=> bs!1361 m!29037))

(declare-fun m!29045 () Bool)

(assert (=> bs!1361 m!29045))

(assert (=> b!36039 d!5393))

(declare-fun d!5395 () Bool)

(declare-fun c!4136 () Bool)

(assert (=> d!5395 (= c!4136 ((_ is ValueCellFull!618) (select (arr!1185 _values!1501) #b00000000000000000000000000000000)))))

(declare-fun e!22811 () V!2005)

(assert (=> d!5395 (= (get!611 (select (arr!1185 _values!1501) #b00000000000000000000000000000000) (dynLambda!159 defaultEntry!1504 #b0000000000000000000000000000000000000000000000000000000000000000)) e!22811)))

(declare-fun b!36125 () Bool)

(declare-fun get!613 (ValueCell!618 V!2005) V!2005)

(assert (=> b!36125 (= e!22811 (get!613 (select (arr!1185 _values!1501) #b00000000000000000000000000000000) (dynLambda!159 defaultEntry!1504 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!36126 () Bool)

(declare-fun get!614 (ValueCell!618 V!2005) V!2005)

(assert (=> b!36126 (= e!22811 (get!614 (select (arr!1185 _values!1501) #b00000000000000000000000000000000) (dynLambda!159 defaultEntry!1504 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!5395 c!4136) b!36125))

(assert (= (and d!5395 (not c!4136)) b!36126))

(assert (=> b!36125 m!28983))

(assert (=> b!36125 m!28981))

(declare-fun m!29047 () Bool)

(assert (=> b!36125 m!29047))

(assert (=> b!36126 m!28983))

(assert (=> b!36126 m!28981))

(declare-fun m!29049 () Bool)

(assert (=> b!36126 m!29049))

(assert (=> b!36039 d!5395))

(assert (=> b!35967 d!5385))

(declare-fun d!5397 () Bool)

(declare-fun e!22813 () Bool)

(assert (=> d!5397 e!22813))

(declare-fun res!21871 () Bool)

(assert (=> d!5397 (=> res!21871 e!22813)))

(declare-fun lt!13366 () Bool)

(assert (=> d!5397 (= res!21871 (not lt!13366))))

(declare-fun lt!13365 () Bool)

(assert (=> d!5397 (= lt!13366 lt!13365)))

(declare-fun lt!13367 () Unit!790)

(declare-fun e!22812 () Unit!790)

(assert (=> d!5397 (= lt!13367 e!22812)))

(declare-fun c!4137 () Bool)

(assert (=> d!5397 (= c!4137 lt!13365)))

(assert (=> d!5397 (= lt!13365 (containsKey!38 (toList!483 lt!13322) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!5397 (= (contains!429 lt!13322 #b0000000000000000000000000000000000000000000000000000000000000000) lt!13366)))

(declare-fun b!36127 () Bool)

(declare-fun lt!13364 () Unit!790)

(assert (=> b!36127 (= e!22812 lt!13364)))

(assert (=> b!36127 (= lt!13364 (lemmaContainsKeyImpliesGetValueByKeyDefined!35 (toList!483 lt!13322) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!36127 (isDefined!36 (getValueByKey!74 (toList!483 lt!13322) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!36128 () Bool)

(declare-fun Unit!795 () Unit!790)

(assert (=> b!36128 (= e!22812 Unit!795)))

(declare-fun b!36129 () Bool)

(assert (=> b!36129 (= e!22813 (isDefined!36 (getValueByKey!74 (toList!483 lt!13322) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!5397 c!4137) b!36127))

(assert (= (and d!5397 (not c!4137)) b!36128))

(assert (= (and d!5397 (not res!21871)) b!36129))

(declare-fun m!29051 () Bool)

(assert (=> d!5397 m!29051))

(declare-fun m!29053 () Bool)

(assert (=> b!36127 m!29053))

(declare-fun m!29055 () Bool)

(assert (=> b!36127 m!29055))

(assert (=> b!36127 m!29055))

(declare-fun m!29057 () Bool)

(assert (=> b!36127 m!29057))

(assert (=> b!36129 m!29055))

(assert (=> b!36129 m!29055))

(assert (=> b!36129 m!29057))

(assert (=> bm!2852 d!5397))

(declare-fun d!5399 () Bool)

(declare-fun lt!13370 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!18 (List!961) (InoxSet (_ BitVec 64)))

(assert (=> d!5399 (= lt!13370 (select (content!18 Nil!958) (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun e!22819 () Bool)

(assert (=> d!5399 (= lt!13370 e!22819)))

(declare-fun res!21876 () Bool)

(assert (=> d!5399 (=> (not res!21876) (not e!22819))))

(assert (=> d!5399 (= res!21876 ((_ is Cons!957) Nil!958))))

(assert (=> d!5399 (= (contains!431 Nil!958 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)) lt!13370)))

(declare-fun b!36134 () Bool)

(declare-fun e!22818 () Bool)

(assert (=> b!36134 (= e!22819 e!22818)))

(declare-fun res!21877 () Bool)

(assert (=> b!36134 (=> res!21877 e!22818)))

(assert (=> b!36134 (= res!21877 (= (h!1524 Nil!958) (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!36135 () Bool)

(assert (=> b!36135 (= e!22818 (contains!431 (t!3674 Nil!958) (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)))))

(assert (= (and d!5399 res!21876) b!36134))

(assert (= (and b!36134 (not res!21877)) b!36135))

(declare-fun m!29059 () Bool)

(assert (=> d!5399 m!29059))

(assert (=> d!5399 m!28917))

(declare-fun m!29061 () Bool)

(assert (=> d!5399 m!29061))

(assert (=> b!36135 m!28917))

(declare-fun m!29063 () Bool)

(assert (=> b!36135 m!29063))

(assert (=> b!35970 d!5399))

(declare-fun b!36160 () Bool)

(declare-fun e!22837 () ListLongMap!935)

(declare-fun e!22835 () ListLongMap!935)

(assert (=> b!36160 (= e!22837 e!22835)))

(declare-fun c!4149 () Bool)

(assert (=> b!36160 (= c!4149 (validKeyInArray!0 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun b!36161 () Bool)

(declare-fun res!21887 () Bool)

(declare-fun e!22840 () Bool)

(assert (=> b!36161 (=> (not res!21887) (not e!22840))))

(declare-fun lt!13388 () ListLongMap!935)

(assert (=> b!36161 (= res!21887 (not (contains!429 lt!13388 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!36162 () Bool)

(declare-fun e!22836 () Bool)

(assert (=> b!36162 (= e!22836 (= lt!13388 (getCurrentListMapNoExtraKeys!29 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!1504)))))

(declare-fun b!36163 () Bool)

(declare-fun e!22839 () Bool)

(assert (=> b!36163 (= e!22840 e!22839)))

(declare-fun c!4147 () Bool)

(declare-fun e!22834 () Bool)

(assert (=> b!36163 (= c!4147 e!22834)))

(declare-fun res!21889 () Bool)

(assert (=> b!36163 (=> (not res!21889) (not e!22834))))

(assert (=> b!36163 (= res!21889 (bvslt #b00000000000000000000000000000000 (size!1287 _keys!1833)))))

(declare-fun b!36164 () Bool)

(assert (=> b!36164 (= e!22837 (ListLongMap!936 Nil!959))))

(declare-fun b!36165 () Bool)

(declare-fun e!22838 () Bool)

(assert (=> b!36165 (= e!22839 e!22838)))

(assert (=> b!36165 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1287 _keys!1833)))))

(declare-fun res!21886 () Bool)

(assert (=> b!36165 (= res!21886 (contains!429 lt!13388 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)))))

(assert (=> b!36165 (=> (not res!21886) (not e!22838))))

(declare-fun b!36166 () Bool)

(assert (=> b!36166 (= e!22839 e!22836)))

(declare-fun c!4146 () Bool)

(assert (=> b!36166 (= c!4146 (bvslt #b00000000000000000000000000000000 (size!1287 _keys!1833)))))

(declare-fun b!36168 () Bool)

(assert (=> b!36168 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1287 _keys!1833)))))

(assert (=> b!36168 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!1286 _values!1501)))))

(assert (=> b!36168 (= e!22838 (= (apply!42 lt!13388 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)) (get!611 (select (arr!1185 _values!1501) #b00000000000000000000000000000000) (dynLambda!159 defaultEntry!1504 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!36169 () Bool)

(declare-fun lt!13390 () Unit!790)

(declare-fun lt!13391 () Unit!790)

(assert (=> b!36169 (= lt!13390 lt!13391)))

(declare-fun lt!13385 () (_ BitVec 64))

(declare-fun lt!13386 () (_ BitVec 64))

(declare-fun lt!13387 () ListLongMap!935)

(declare-fun lt!13389 () V!2005)

(assert (=> b!36169 (not (contains!429 (+!60 lt!13387 (tuple2!1355 lt!13386 lt!13389)) lt!13385))))

(declare-fun addStillNotContains!3 (ListLongMap!935 (_ BitVec 64) V!2005 (_ BitVec 64)) Unit!790)

(assert (=> b!36169 (= lt!13391 (addStillNotContains!3 lt!13387 lt!13386 lt!13389 lt!13385))))

(assert (=> b!36169 (= lt!13385 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!36169 (= lt!13389 (get!611 (select (arr!1185 _values!1501) #b00000000000000000000000000000000) (dynLambda!159 defaultEntry!1504 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!36169 (= lt!13386 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000))))

(declare-fun call!2862 () ListLongMap!935)

(assert (=> b!36169 (= lt!13387 call!2862)))

(assert (=> b!36169 (= e!22835 (+!60 call!2862 (tuple2!1355 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000) (get!611 (select (arr!1185 _values!1501) #b00000000000000000000000000000000) (dynLambda!159 defaultEntry!1504 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun bm!2859 () Bool)

(assert (=> bm!2859 (= call!2862 (getCurrentListMapNoExtraKeys!29 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) defaultEntry!1504))))

(declare-fun d!5401 () Bool)

(assert (=> d!5401 e!22840))

(declare-fun res!21888 () Bool)

(assert (=> d!5401 (=> (not res!21888) (not e!22840))))

(assert (=> d!5401 (= res!21888 (not (contains!429 lt!13388 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!5401 (= lt!13388 e!22837)))

(declare-fun c!4148 () Bool)

(assert (=> d!5401 (= c!4148 (bvsge #b00000000000000000000000000000000 (size!1287 _keys!1833)))))

(assert (=> d!5401 (validMask!0 mask!2294)))

(assert (=> d!5401 (= (getCurrentListMapNoExtraKeys!29 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504) lt!13388)))

(declare-fun b!36167 () Bool)

(assert (=> b!36167 (= e!22834 (validKeyInArray!0 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)))))

(assert (=> b!36167 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!36170 () Bool)

(assert (=> b!36170 (= e!22835 call!2862)))

(declare-fun b!36171 () Bool)

(declare-fun isEmpty!176 (ListLongMap!935) Bool)

(assert (=> b!36171 (= e!22836 (isEmpty!176 lt!13388))))

(assert (= (and d!5401 c!4148) b!36164))

(assert (= (and d!5401 (not c!4148)) b!36160))

(assert (= (and b!36160 c!4149) b!36169))

(assert (= (and b!36160 (not c!4149)) b!36170))

(assert (= (or b!36169 b!36170) bm!2859))

(assert (= (and d!5401 res!21888) b!36161))

(assert (= (and b!36161 res!21887) b!36163))

(assert (= (and b!36163 res!21889) b!36167))

(assert (= (and b!36163 c!4147) b!36165))

(assert (= (and b!36163 (not c!4147)) b!36166))

(assert (= (and b!36165 res!21886) b!36168))

(assert (= (and b!36166 c!4146) b!36162))

(assert (= (and b!36166 (not c!4146)) b!36171))

(declare-fun b_lambda!1739 () Bool)

(assert (=> (not b_lambda!1739) (not b!36168)))

(assert (=> b!36168 t!3679))

(declare-fun b_and!2117 () Bool)

(assert (= b_and!2115 (and (=> t!3679 result!1209) b_and!2117)))

(declare-fun b_lambda!1741 () Bool)

(assert (=> (not b_lambda!1741) (not b!36169)))

(assert (=> b!36169 t!3679))

(declare-fun b_and!2119 () Bool)

(assert (= b_and!2117 (and (=> t!3679 result!1209) b_and!2119)))

(assert (=> b!36165 m!28917))

(assert (=> b!36165 m!28917))

(declare-fun m!29065 () Bool)

(assert (=> b!36165 m!29065))

(assert (=> b!36167 m!28917))

(assert (=> b!36167 m!28917))

(assert (=> b!36167 m!28923))

(declare-fun m!29067 () Bool)

(assert (=> d!5401 m!29067))

(assert (=> d!5401 m!28877))

(declare-fun m!29069 () Bool)

(assert (=> b!36171 m!29069))

(assert (=> b!36169 m!28917))

(declare-fun m!29071 () Bool)

(assert (=> b!36169 m!29071))

(declare-fun m!29073 () Bool)

(assert (=> b!36169 m!29073))

(declare-fun m!29075 () Bool)

(assert (=> b!36169 m!29075))

(assert (=> b!36169 m!28983))

(declare-fun m!29077 () Bool)

(assert (=> b!36169 m!29077))

(assert (=> b!36169 m!29071))

(assert (=> b!36169 m!28981))

(assert (=> b!36169 m!28983))

(assert (=> b!36169 m!28981))

(assert (=> b!36169 m!28985))

(assert (=> b!36168 m!28917))

(assert (=> b!36168 m!28983))

(assert (=> b!36168 m!28917))

(declare-fun m!29079 () Bool)

(assert (=> b!36168 m!29079))

(assert (=> b!36168 m!28981))

(assert (=> b!36168 m!28983))

(assert (=> b!36168 m!28981))

(assert (=> b!36168 m!28985))

(declare-fun m!29081 () Bool)

(assert (=> bm!2859 m!29081))

(assert (=> b!36162 m!29081))

(assert (=> b!36160 m!28917))

(assert (=> b!36160 m!28917))

(assert (=> b!36160 m!28923))

(declare-fun m!29083 () Bool)

(assert (=> b!36161 m!29083))

(assert (=> bm!2850 d!5401))

(declare-fun d!5403 () Bool)

(assert (=> d!5403 (= (apply!42 lt!13322 #b1000000000000000000000000000000000000000000000000000000000000000) (get!612 (getValueByKey!74 (toList!483 lt!13322) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!1362 () Bool)

(assert (= bs!1362 d!5403))

(declare-fun m!29085 () Bool)

(assert (=> bs!1362 m!29085))

(assert (=> bs!1362 m!29085))

(declare-fun m!29087 () Bool)

(assert (=> bs!1362 m!29087))

(assert (=> b!36051 d!5403))

(declare-fun b!36172 () Bool)

(declare-fun e!22843 () Bool)

(declare-fun e!22842 () Bool)

(assert (=> b!36172 (= e!22843 e!22842)))

(declare-fun c!4150 () Bool)

(assert (=> b!36172 (= c!4150 (validKeyInArray!0 (select (arr!1186 _keys!1833) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!36173 () Bool)

(declare-fun call!2863 () Bool)

(assert (=> b!36173 (= e!22842 call!2863)))

(declare-fun b!36174 () Bool)

(declare-fun e!22841 () Bool)

(assert (=> b!36174 (= e!22842 e!22841)))

(declare-fun lt!13393 () (_ BitVec 64))

(assert (=> b!36174 (= lt!13393 (select (arr!1186 _keys!1833) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!13392 () Unit!790)

(assert (=> b!36174 (= lt!13392 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!13393 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!36174 (arrayContainsKey!0 _keys!1833 lt!13393 #b00000000000000000000000000000000)))

(declare-fun lt!13394 () Unit!790)

(assert (=> b!36174 (= lt!13394 lt!13392)))

(declare-fun res!21890 () Bool)

(assert (=> b!36174 (= res!21890 (= (seekEntryOrOpen!0 (select (arr!1186 _keys!1833) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1833 mask!2294) (Found!175 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!36174 (=> (not res!21890) (not e!22841))))

(declare-fun d!5405 () Bool)

(declare-fun res!21891 () Bool)

(assert (=> d!5405 (=> res!21891 e!22843)))

(assert (=> d!5405 (= res!21891 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1287 _keys!1833)))))

(assert (=> d!5405 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1833 mask!2294) e!22843)))

(declare-fun bm!2860 () Bool)

(assert (=> bm!2860 (= call!2863 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(declare-fun b!36175 () Bool)

(assert (=> b!36175 (= e!22841 call!2863)))

(assert (= (and d!5405 (not res!21891)) b!36172))

(assert (= (and b!36172 c!4150) b!36174))

(assert (= (and b!36172 (not c!4150)) b!36173))

(assert (= (and b!36174 res!21890) b!36175))

(assert (= (or b!36175 b!36173) bm!2860))

(declare-fun m!29089 () Bool)

(assert (=> b!36172 m!29089))

(assert (=> b!36172 m!29089))

(declare-fun m!29091 () Bool)

(assert (=> b!36172 m!29091))

(assert (=> b!36174 m!29089))

(declare-fun m!29093 () Bool)

(assert (=> b!36174 m!29093))

(declare-fun m!29095 () Bool)

(assert (=> b!36174 m!29095))

(assert (=> b!36174 m!29089))

(declare-fun m!29097 () Bool)

(assert (=> b!36174 m!29097))

(declare-fun m!29099 () Bool)

(assert (=> bm!2860 m!29099))

(assert (=> bm!2835 d!5405))

(declare-fun b!36188 () Bool)

(declare-fun c!4158 () Bool)

(declare-fun lt!13400 () (_ BitVec 64))

(assert (=> b!36188 (= c!4158 (= lt!13400 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!22851 () SeekEntryResult!175)

(declare-fun e!22852 () SeekEntryResult!175)

(assert (=> b!36188 (= e!22851 e!22852)))

(declare-fun b!36189 () Bool)

(declare-fun e!22850 () SeekEntryResult!175)

(assert (=> b!36189 (= e!22850 e!22851)))

(declare-fun c!4157 () Bool)

(assert (=> b!36189 (= c!4157 (= lt!13400 k0!1304))))

(declare-fun lt!13399 () SeekEntryResult!175)

(declare-fun d!5407 () Bool)

(assert (=> d!5407 (and (or ((_ is Undefined!175) lt!13399) (not ((_ is Found!175) lt!13399)) (and (bvsge (index!2823 lt!13399) #b00000000000000000000000000000000) (bvslt (index!2823 lt!13399) (size!1287 _keys!1833)))) (or ((_ is Undefined!175) lt!13399) ((_ is Found!175) lt!13399) (not ((_ is MissingVacant!175) lt!13399)) (not (= (index!2825 lt!13399) (index!2824 lt!13242))) (and (bvsge (index!2825 lt!13399) #b00000000000000000000000000000000) (bvslt (index!2825 lt!13399) (size!1287 _keys!1833)))) (or ((_ is Undefined!175) lt!13399) (ite ((_ is Found!175) lt!13399) (= (select (arr!1186 _keys!1833) (index!2823 lt!13399)) k0!1304) (and ((_ is MissingVacant!175) lt!13399) (= (index!2825 lt!13399) (index!2824 lt!13242)) (= (select (arr!1186 _keys!1833) (index!2825 lt!13399)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!5407 (= lt!13399 e!22850)))

(declare-fun c!4159 () Bool)

(assert (=> d!5407 (= c!4159 (bvsge (x!7063 lt!13242) #b01111111111111111111111111111110))))

(assert (=> d!5407 (= lt!13400 (select (arr!1186 _keys!1833) (index!2824 lt!13242)))))

(assert (=> d!5407 (validMask!0 mask!2294)))

(assert (=> d!5407 (= (seekKeyOrZeroReturnVacant!0 (x!7063 lt!13242) (index!2824 lt!13242) (index!2824 lt!13242) k0!1304 _keys!1833 mask!2294) lt!13399)))

(declare-fun b!36190 () Bool)

(assert (=> b!36190 (= e!22852 (MissingVacant!175 (index!2824 lt!13242)))))

(declare-fun b!36191 () Bool)

(assert (=> b!36191 (= e!22851 (Found!175 (index!2824 lt!13242)))))

(declare-fun b!36192 () Bool)

(assert (=> b!36192 (= e!22850 Undefined!175)))

(declare-fun b!36193 () Bool)

(assert (=> b!36193 (= e!22852 (seekKeyOrZeroReturnVacant!0 (bvadd (x!7063 lt!13242) #b00000000000000000000000000000001) (nextIndex!0 (index!2824 lt!13242) (x!7063 lt!13242) mask!2294) (index!2824 lt!13242) k0!1304 _keys!1833 mask!2294))))

(assert (= (and d!5407 c!4159) b!36192))

(assert (= (and d!5407 (not c!4159)) b!36189))

(assert (= (and b!36189 c!4157) b!36191))

(assert (= (and b!36189 (not c!4157)) b!36188))

(assert (= (and b!36188 c!4158) b!36190))

(assert (= (and b!36188 (not c!4158)) b!36193))

(declare-fun m!29101 () Bool)

(assert (=> d!5407 m!29101))

(declare-fun m!29103 () Bool)

(assert (=> d!5407 m!29103))

(assert (=> d!5407 m!28907))

(assert (=> d!5407 m!28877))

(declare-fun m!29105 () Bool)

(assert (=> b!36193 m!29105))

(assert (=> b!36193 m!29105))

(declare-fun m!29107 () Bool)

(assert (=> b!36193 m!29107))

(assert (=> b!35946 d!5407))

(declare-fun d!5409 () Bool)

(declare-fun e!22854 () Bool)

(assert (=> d!5409 e!22854))

(declare-fun res!21892 () Bool)

(assert (=> d!5409 (=> res!21892 e!22854)))

(declare-fun lt!13403 () Bool)

(assert (=> d!5409 (= res!21892 (not lt!13403))))

(declare-fun lt!13402 () Bool)

(assert (=> d!5409 (= lt!13403 lt!13402)))

(declare-fun lt!13404 () Unit!790)

(declare-fun e!22853 () Unit!790)

(assert (=> d!5409 (= lt!13404 e!22853)))

(declare-fun c!4160 () Bool)

(assert (=> d!5409 (= c!4160 lt!13402)))

(assert (=> d!5409 (= lt!13402 (containsKey!38 (toList!483 lt!13322) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!5409 (= (contains!429 lt!13322 #b1000000000000000000000000000000000000000000000000000000000000000) lt!13403)))

(declare-fun b!36194 () Bool)

(declare-fun lt!13401 () Unit!790)

(assert (=> b!36194 (= e!22853 lt!13401)))

(assert (=> b!36194 (= lt!13401 (lemmaContainsKeyImpliesGetValueByKeyDefined!35 (toList!483 lt!13322) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!36194 (isDefined!36 (getValueByKey!74 (toList!483 lt!13322) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!36195 () Bool)

(declare-fun Unit!796 () Unit!790)

(assert (=> b!36195 (= e!22853 Unit!796)))

(declare-fun b!36196 () Bool)

(assert (=> b!36196 (= e!22854 (isDefined!36 (getValueByKey!74 (toList!483 lt!13322) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!5409 c!4160) b!36194))

(assert (= (and d!5409 (not c!4160)) b!36195))

(assert (= (and d!5409 (not res!21892)) b!36196))

(declare-fun m!29109 () Bool)

(assert (=> d!5409 m!29109))

(declare-fun m!29111 () Bool)

(assert (=> b!36194 m!29111))

(assert (=> b!36194 m!29085))

(assert (=> b!36194 m!29085))

(declare-fun m!29113 () Bool)

(assert (=> b!36194 m!29113))

(assert (=> b!36196 m!29085))

(assert (=> b!36196 m!29085))

(assert (=> b!36196 m!29113))

(assert (=> bm!2856 d!5409))

(declare-fun d!5411 () Bool)

(assert (=> d!5411 (arrayContainsKey!0 _keys!1833 lt!13252 #b00000000000000000000000000000000)))

(declare-fun lt!13407 () Unit!790)

(declare-fun choose!13 (array!2483 (_ BitVec 64) (_ BitVec 32)) Unit!790)

(assert (=> d!5411 (= lt!13407 (choose!13 _keys!1833 lt!13252 #b00000000000000000000000000000000))))

(assert (=> d!5411 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!5411 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!13252 #b00000000000000000000000000000000) lt!13407)))

(declare-fun bs!1363 () Bool)

(assert (= bs!1363 d!5411))

(assert (=> bs!1363 m!28929))

(declare-fun m!29115 () Bool)

(assert (=> bs!1363 m!29115))

(assert (=> b!35981 d!5411))

(declare-fun d!5413 () Bool)

(declare-fun res!21893 () Bool)

(declare-fun e!22855 () Bool)

(assert (=> d!5413 (=> res!21893 e!22855)))

(assert (=> d!5413 (= res!21893 (= (select (arr!1186 _keys!1833) #b00000000000000000000000000000000) lt!13252))))

(assert (=> d!5413 (= (arrayContainsKey!0 _keys!1833 lt!13252 #b00000000000000000000000000000000) e!22855)))

(declare-fun b!36197 () Bool)

(declare-fun e!22856 () Bool)

(assert (=> b!36197 (= e!22855 e!22856)))

(declare-fun res!21894 () Bool)

(assert (=> b!36197 (=> (not res!21894) (not e!22856))))

(assert (=> b!36197 (= res!21894 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1287 _keys!1833)))))

(declare-fun b!36198 () Bool)

(assert (=> b!36198 (= e!22856 (arrayContainsKey!0 _keys!1833 lt!13252 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!5413 (not res!21893)) b!36197))

(assert (= (and b!36197 res!21894) b!36198))

(assert (=> d!5413 m!28917))

(declare-fun m!29117 () Bool)

(assert (=> b!36198 m!29117))

(assert (=> b!35981 d!5413))

(declare-fun b!36211 () Bool)

(declare-fun c!4169 () Bool)

(declare-fun lt!13416 () (_ BitVec 64))

(assert (=> b!36211 (= c!4169 (= lt!13416 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!22865 () SeekEntryResult!175)

(declare-fun e!22864 () SeekEntryResult!175)

(assert (=> b!36211 (= e!22865 e!22864)))

(declare-fun b!36212 () Bool)

(declare-fun lt!13414 () SeekEntryResult!175)

(assert (=> b!36212 (= e!22864 (MissingZero!175 (index!2824 lt!13414)))))

(declare-fun b!36213 () Bool)

(declare-fun e!22863 () SeekEntryResult!175)

(assert (=> b!36213 (= e!22863 Undefined!175)))

(declare-fun b!36214 () Bool)

(assert (=> b!36214 (= e!22865 (Found!175 (index!2824 lt!13414)))))

(declare-fun d!5415 () Bool)

(declare-fun lt!13415 () SeekEntryResult!175)

(assert (=> d!5415 (and (or ((_ is Undefined!175) lt!13415) (not ((_ is Found!175) lt!13415)) (and (bvsge (index!2823 lt!13415) #b00000000000000000000000000000000) (bvslt (index!2823 lt!13415) (size!1287 _keys!1833)))) (or ((_ is Undefined!175) lt!13415) ((_ is Found!175) lt!13415) (not ((_ is MissingZero!175) lt!13415)) (and (bvsge (index!2822 lt!13415) #b00000000000000000000000000000000) (bvslt (index!2822 lt!13415) (size!1287 _keys!1833)))) (or ((_ is Undefined!175) lt!13415) ((_ is Found!175) lt!13415) ((_ is MissingZero!175) lt!13415) (not ((_ is MissingVacant!175) lt!13415)) (and (bvsge (index!2825 lt!13415) #b00000000000000000000000000000000) (bvslt (index!2825 lt!13415) (size!1287 _keys!1833)))) (or ((_ is Undefined!175) lt!13415) (ite ((_ is Found!175) lt!13415) (= (select (arr!1186 _keys!1833) (index!2823 lt!13415)) (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!175) lt!13415) (= (select (arr!1186 _keys!1833) (index!2822 lt!13415)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!175) lt!13415) (= (select (arr!1186 _keys!1833) (index!2825 lt!13415)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!5415 (= lt!13415 e!22863)))

(declare-fun c!4167 () Bool)

(assert (=> d!5415 (= c!4167 (and ((_ is Intermediate!175) lt!13414) (undefined!987 lt!13414)))))

(assert (=> d!5415 (= lt!13414 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000) mask!2294) (select (arr!1186 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294))))

(assert (=> d!5415 (validMask!0 mask!2294)))

(assert (=> d!5415 (= (seekEntryOrOpen!0 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294) lt!13415)))

(declare-fun b!36215 () Bool)

(assert (=> b!36215 (= e!22864 (seekKeyOrZeroReturnVacant!0 (x!7063 lt!13414) (index!2824 lt!13414) (index!2824 lt!13414) (select (arr!1186 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294))))

(declare-fun b!36216 () Bool)

(assert (=> b!36216 (= e!22863 e!22865)))

(assert (=> b!36216 (= lt!13416 (select (arr!1186 _keys!1833) (index!2824 lt!13414)))))

(declare-fun c!4168 () Bool)

(assert (=> b!36216 (= c!4168 (= lt!13416 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000)))))

(assert (= (and d!5415 c!4167) b!36213))

(assert (= (and d!5415 (not c!4167)) b!36216))

(assert (= (and b!36216 c!4168) b!36214))

(assert (= (and b!36216 (not c!4168)) b!36211))

(assert (= (and b!36211 c!4169) b!36212))

(assert (= (and b!36211 (not c!4169)) b!36215))

(declare-fun m!29119 () Bool)

(assert (=> d!5415 m!29119))

(declare-fun m!29121 () Bool)

(assert (=> d!5415 m!29121))

(assert (=> d!5415 m!28917))

(declare-fun m!29123 () Bool)

(assert (=> d!5415 m!29123))

(assert (=> d!5415 m!29123))

(assert (=> d!5415 m!28917))

(declare-fun m!29125 () Bool)

(assert (=> d!5415 m!29125))

(assert (=> d!5415 m!28877))

(declare-fun m!29127 () Bool)

(assert (=> d!5415 m!29127))

(assert (=> b!36215 m!28917))

(declare-fun m!29129 () Bool)

(assert (=> b!36215 m!29129))

(declare-fun m!29131 () Bool)

(assert (=> b!36216 m!29131))

(assert (=> b!35981 d!5415))

(declare-fun d!5417 () Bool)

(assert (=> d!5417 (= (apply!42 (+!60 lt!13318 (tuple2!1355 lt!13330 minValue!1443)) lt!13328) (get!612 (getValueByKey!74 (toList!483 (+!60 lt!13318 (tuple2!1355 lt!13330 minValue!1443))) lt!13328)))))

(declare-fun bs!1364 () Bool)

(assert (= bs!1364 d!5417))

(declare-fun m!29133 () Bool)

(assert (=> bs!1364 m!29133))

(assert (=> bs!1364 m!29133))

(declare-fun m!29135 () Bool)

(assert (=> bs!1364 m!29135))

(assert (=> b!36038 d!5417))

(declare-fun d!5419 () Bool)

(assert (=> d!5419 (= (apply!42 (+!60 lt!13321 (tuple2!1355 lt!13310 zeroValue!1443)) lt!13312) (get!612 (getValueByKey!74 (toList!483 (+!60 lt!13321 (tuple2!1355 lt!13310 zeroValue!1443))) lt!13312)))))

(declare-fun bs!1365 () Bool)

(assert (= bs!1365 d!5419))

(declare-fun m!29137 () Bool)

(assert (=> bs!1365 m!29137))

(assert (=> bs!1365 m!29137))

(declare-fun m!29139 () Bool)

(assert (=> bs!1365 m!29139))

(assert (=> b!36038 d!5419))

(declare-fun d!5421 () Bool)

(declare-fun e!22866 () Bool)

(assert (=> d!5421 e!22866))

(declare-fun res!21896 () Bool)

(assert (=> d!5421 (=> (not res!21896) (not e!22866))))

(declare-fun lt!13420 () ListLongMap!935)

(assert (=> d!5421 (= res!21896 (contains!429 lt!13420 (_1!687 (tuple2!1355 lt!13319 zeroValue!1443))))))

(declare-fun lt!13418 () List!962)

(assert (=> d!5421 (= lt!13420 (ListLongMap!936 lt!13418))))

(declare-fun lt!13417 () Unit!790)

(declare-fun lt!13419 () Unit!790)

(assert (=> d!5421 (= lt!13417 lt!13419)))

(assert (=> d!5421 (= (getValueByKey!74 lt!13418 (_1!687 (tuple2!1355 lt!13319 zeroValue!1443))) (Some!79 (_2!687 (tuple2!1355 lt!13319 zeroValue!1443))))))

(assert (=> d!5421 (= lt!13419 (lemmaContainsTupThenGetReturnValue!19 lt!13418 (_1!687 (tuple2!1355 lt!13319 zeroValue!1443)) (_2!687 (tuple2!1355 lt!13319 zeroValue!1443))))))

(assert (=> d!5421 (= lt!13418 (insertStrictlySorted!19 (toList!483 lt!13316) (_1!687 (tuple2!1355 lt!13319 zeroValue!1443)) (_2!687 (tuple2!1355 lt!13319 zeroValue!1443))))))

(assert (=> d!5421 (= (+!60 lt!13316 (tuple2!1355 lt!13319 zeroValue!1443)) lt!13420)))

(declare-fun b!36217 () Bool)

(declare-fun res!21895 () Bool)

(assert (=> b!36217 (=> (not res!21895) (not e!22866))))

(assert (=> b!36217 (= res!21895 (= (getValueByKey!74 (toList!483 lt!13420) (_1!687 (tuple2!1355 lt!13319 zeroValue!1443))) (Some!79 (_2!687 (tuple2!1355 lt!13319 zeroValue!1443)))))))

(declare-fun b!36218 () Bool)

(assert (=> b!36218 (= e!22866 (contains!432 (toList!483 lt!13420) (tuple2!1355 lt!13319 zeroValue!1443)))))

(assert (= (and d!5421 res!21896) b!36217))

(assert (= (and b!36217 res!21895) b!36218))

(declare-fun m!29141 () Bool)

(assert (=> d!5421 m!29141))

(declare-fun m!29143 () Bool)

(assert (=> d!5421 m!29143))

(declare-fun m!29145 () Bool)

(assert (=> d!5421 m!29145))

(declare-fun m!29147 () Bool)

(assert (=> d!5421 m!29147))

(declare-fun m!29149 () Bool)

(assert (=> b!36217 m!29149))

(declare-fun m!29151 () Bool)

(assert (=> b!36218 m!29151))

(assert (=> b!36038 d!5421))

(declare-fun d!5423 () Bool)

(assert (=> d!5423 (= (apply!42 lt!13311 lt!13325) (get!612 (getValueByKey!74 (toList!483 lt!13311) lt!13325)))))

(declare-fun bs!1366 () Bool)

(assert (= bs!1366 d!5423))

(declare-fun m!29153 () Bool)

(assert (=> bs!1366 m!29153))

(assert (=> bs!1366 m!29153))

(declare-fun m!29155 () Bool)

(assert (=> bs!1366 m!29155))

(assert (=> b!36038 d!5423))

(declare-fun d!5425 () Bool)

(assert (=> d!5425 (contains!429 (+!60 lt!13316 (tuple2!1355 lt!13319 zeroValue!1443)) lt!13313)))

(declare-fun lt!13423 () Unit!790)

(declare-fun choose!224 (ListLongMap!935 (_ BitVec 64) V!2005 (_ BitVec 64)) Unit!790)

(assert (=> d!5425 (= lt!13423 (choose!224 lt!13316 lt!13319 zeroValue!1443 lt!13313))))

(assert (=> d!5425 (contains!429 lt!13316 lt!13313)))

(assert (=> d!5425 (= (addStillContains!27 lt!13316 lt!13319 zeroValue!1443 lt!13313) lt!13423)))

(declare-fun bs!1367 () Bool)

(assert (= bs!1367 d!5425))

(assert (=> bs!1367 m!28949))

(assert (=> bs!1367 m!28949))

(assert (=> bs!1367 m!28953))

(declare-fun m!29157 () Bool)

(assert (=> bs!1367 m!29157))

(declare-fun m!29159 () Bool)

(assert (=> bs!1367 m!29159))

(assert (=> b!36038 d!5425))

(declare-fun d!5427 () Bool)

(declare-fun e!22867 () Bool)

(assert (=> d!5427 e!22867))

(declare-fun res!21898 () Bool)

(assert (=> d!5427 (=> (not res!21898) (not e!22867))))

(declare-fun lt!13427 () ListLongMap!935)

(assert (=> d!5427 (= res!21898 (contains!429 lt!13427 (_1!687 (tuple2!1355 lt!13324 minValue!1443))))))

(declare-fun lt!13425 () List!962)

(assert (=> d!5427 (= lt!13427 (ListLongMap!936 lt!13425))))

(declare-fun lt!13424 () Unit!790)

(declare-fun lt!13426 () Unit!790)

(assert (=> d!5427 (= lt!13424 lt!13426)))

(assert (=> d!5427 (= (getValueByKey!74 lt!13425 (_1!687 (tuple2!1355 lt!13324 minValue!1443))) (Some!79 (_2!687 (tuple2!1355 lt!13324 minValue!1443))))))

(assert (=> d!5427 (= lt!13426 (lemmaContainsTupThenGetReturnValue!19 lt!13425 (_1!687 (tuple2!1355 lt!13324 minValue!1443)) (_2!687 (tuple2!1355 lt!13324 minValue!1443))))))

(assert (=> d!5427 (= lt!13425 (insertStrictlySorted!19 (toList!483 lt!13311) (_1!687 (tuple2!1355 lt!13324 minValue!1443)) (_2!687 (tuple2!1355 lt!13324 minValue!1443))))))

(assert (=> d!5427 (= (+!60 lt!13311 (tuple2!1355 lt!13324 minValue!1443)) lt!13427)))

(declare-fun b!36220 () Bool)

(declare-fun res!21897 () Bool)

(assert (=> b!36220 (=> (not res!21897) (not e!22867))))

(assert (=> b!36220 (= res!21897 (= (getValueByKey!74 (toList!483 lt!13427) (_1!687 (tuple2!1355 lt!13324 minValue!1443))) (Some!79 (_2!687 (tuple2!1355 lt!13324 minValue!1443)))))))

(declare-fun b!36221 () Bool)

(assert (=> b!36221 (= e!22867 (contains!432 (toList!483 lt!13427) (tuple2!1355 lt!13324 minValue!1443)))))

(assert (= (and d!5427 res!21898) b!36220))

(assert (= (and b!36220 res!21897) b!36221))

(declare-fun m!29161 () Bool)

(assert (=> d!5427 m!29161))

(declare-fun m!29163 () Bool)

(assert (=> d!5427 m!29163))

(declare-fun m!29165 () Bool)

(assert (=> d!5427 m!29165))

(declare-fun m!29167 () Bool)

(assert (=> d!5427 m!29167))

(declare-fun m!29169 () Bool)

(assert (=> b!36220 m!29169))

(declare-fun m!29171 () Bool)

(assert (=> b!36221 m!29171))

(assert (=> b!36038 d!5427))

(declare-fun d!5429 () Bool)

(assert (=> d!5429 (= (apply!42 (+!60 lt!13311 (tuple2!1355 lt!13324 minValue!1443)) lt!13325) (get!612 (getValueByKey!74 (toList!483 (+!60 lt!13311 (tuple2!1355 lt!13324 minValue!1443))) lt!13325)))))

(declare-fun bs!1368 () Bool)

(assert (= bs!1368 d!5429))

(declare-fun m!29173 () Bool)

(assert (=> bs!1368 m!29173))

(assert (=> bs!1368 m!29173))

(declare-fun m!29175 () Bool)

(assert (=> bs!1368 m!29175))

(assert (=> b!36038 d!5429))

(declare-fun d!5431 () Bool)

(assert (=> d!5431 (= (apply!42 (+!60 lt!13318 (tuple2!1355 lt!13330 minValue!1443)) lt!13328) (apply!42 lt!13318 lt!13328))))

(declare-fun lt!13430 () Unit!790)

(declare-fun choose!225 (ListLongMap!935 (_ BitVec 64) V!2005 (_ BitVec 64)) Unit!790)

(assert (=> d!5431 (= lt!13430 (choose!225 lt!13318 lt!13330 minValue!1443 lt!13328))))

(declare-fun e!22870 () Bool)

(assert (=> d!5431 e!22870))

(declare-fun res!21901 () Bool)

(assert (=> d!5431 (=> (not res!21901) (not e!22870))))

(assert (=> d!5431 (= res!21901 (contains!429 lt!13318 lt!13328))))

(assert (=> d!5431 (= (addApplyDifferent!27 lt!13318 lt!13330 minValue!1443 lt!13328) lt!13430)))

(declare-fun b!36225 () Bool)

(assert (=> b!36225 (= e!22870 (not (= lt!13328 lt!13330)))))

(assert (= (and d!5431 res!21901) b!36225))

(assert (=> d!5431 m!28955))

(assert (=> d!5431 m!28957))

(assert (=> d!5431 m!28963))

(declare-fun m!29177 () Bool)

(assert (=> d!5431 m!29177))

(assert (=> d!5431 m!28955))

(declare-fun m!29179 () Bool)

(assert (=> d!5431 m!29179))

(assert (=> b!36038 d!5431))

(declare-fun d!5433 () Bool)

(declare-fun e!22871 () Bool)

(assert (=> d!5433 e!22871))

(declare-fun res!21903 () Bool)

(assert (=> d!5433 (=> (not res!21903) (not e!22871))))

(declare-fun lt!13434 () ListLongMap!935)

(assert (=> d!5433 (= res!21903 (contains!429 lt!13434 (_1!687 (tuple2!1355 lt!13330 minValue!1443))))))

(declare-fun lt!13432 () List!962)

(assert (=> d!5433 (= lt!13434 (ListLongMap!936 lt!13432))))

(declare-fun lt!13431 () Unit!790)

(declare-fun lt!13433 () Unit!790)

(assert (=> d!5433 (= lt!13431 lt!13433)))

(assert (=> d!5433 (= (getValueByKey!74 lt!13432 (_1!687 (tuple2!1355 lt!13330 minValue!1443))) (Some!79 (_2!687 (tuple2!1355 lt!13330 minValue!1443))))))

(assert (=> d!5433 (= lt!13433 (lemmaContainsTupThenGetReturnValue!19 lt!13432 (_1!687 (tuple2!1355 lt!13330 minValue!1443)) (_2!687 (tuple2!1355 lt!13330 minValue!1443))))))

(assert (=> d!5433 (= lt!13432 (insertStrictlySorted!19 (toList!483 lt!13318) (_1!687 (tuple2!1355 lt!13330 minValue!1443)) (_2!687 (tuple2!1355 lt!13330 minValue!1443))))))

(assert (=> d!5433 (= (+!60 lt!13318 (tuple2!1355 lt!13330 minValue!1443)) lt!13434)))

(declare-fun b!36226 () Bool)

(declare-fun res!21902 () Bool)

(assert (=> b!36226 (=> (not res!21902) (not e!22871))))

(assert (=> b!36226 (= res!21902 (= (getValueByKey!74 (toList!483 lt!13434) (_1!687 (tuple2!1355 lt!13330 minValue!1443))) (Some!79 (_2!687 (tuple2!1355 lt!13330 minValue!1443)))))))

(declare-fun b!36227 () Bool)

(assert (=> b!36227 (= e!22871 (contains!432 (toList!483 lt!13434) (tuple2!1355 lt!13330 minValue!1443)))))

(assert (= (and d!5433 res!21903) b!36226))

(assert (= (and b!36226 res!21902) b!36227))

(declare-fun m!29181 () Bool)

(assert (=> d!5433 m!29181))

(declare-fun m!29183 () Bool)

(assert (=> d!5433 m!29183))

(declare-fun m!29185 () Bool)

(assert (=> d!5433 m!29185))

(declare-fun m!29187 () Bool)

(assert (=> d!5433 m!29187))

(declare-fun m!29189 () Bool)

(assert (=> b!36226 m!29189))

(declare-fun m!29191 () Bool)

(assert (=> b!36227 m!29191))

(assert (=> b!36038 d!5433))

(declare-fun d!5435 () Bool)

(assert (=> d!5435 (= (apply!42 (+!60 lt!13321 (tuple2!1355 lt!13310 zeroValue!1443)) lt!13312) (apply!42 lt!13321 lt!13312))))

(declare-fun lt!13435 () Unit!790)

(assert (=> d!5435 (= lt!13435 (choose!225 lt!13321 lt!13310 zeroValue!1443 lt!13312))))

(declare-fun e!22872 () Bool)

(assert (=> d!5435 e!22872))

(declare-fun res!21904 () Bool)

(assert (=> d!5435 (=> (not res!21904) (not e!22872))))

(assert (=> d!5435 (= res!21904 (contains!429 lt!13321 lt!13312))))

(assert (=> d!5435 (= (addApplyDifferent!27 lt!13321 lt!13310 zeroValue!1443 lt!13312) lt!13435)))

(declare-fun b!36228 () Bool)

(assert (=> b!36228 (= e!22872 (not (= lt!13312 lt!13310)))))

(assert (= (and d!5435 res!21904) b!36228))

(assert (=> d!5435 m!28951))

(assert (=> d!5435 m!28971))

(assert (=> d!5435 m!28975))

(declare-fun m!29193 () Bool)

(assert (=> d!5435 m!29193))

(assert (=> d!5435 m!28951))

(declare-fun m!29195 () Bool)

(assert (=> d!5435 m!29195))

(assert (=> b!36038 d!5435))

(declare-fun d!5437 () Bool)

(assert (=> d!5437 (= (apply!42 lt!13318 lt!13328) (get!612 (getValueByKey!74 (toList!483 lt!13318) lt!13328)))))

(declare-fun bs!1369 () Bool)

(assert (= bs!1369 d!5437))

(declare-fun m!29197 () Bool)

(assert (=> bs!1369 m!29197))

(assert (=> bs!1369 m!29197))

(declare-fun m!29199 () Bool)

(assert (=> bs!1369 m!29199))

(assert (=> b!36038 d!5437))

(declare-fun d!5439 () Bool)

(assert (=> d!5439 (= (apply!42 lt!13321 lt!13312) (get!612 (getValueByKey!74 (toList!483 lt!13321) lt!13312)))))

(declare-fun bs!1370 () Bool)

(assert (= bs!1370 d!5439))

(declare-fun m!29201 () Bool)

(assert (=> bs!1370 m!29201))

(assert (=> bs!1370 m!29201))

(declare-fun m!29203 () Bool)

(assert (=> bs!1370 m!29203))

(assert (=> b!36038 d!5439))

(declare-fun d!5441 () Bool)

(declare-fun e!22873 () Bool)

(assert (=> d!5441 e!22873))

(declare-fun res!21906 () Bool)

(assert (=> d!5441 (=> (not res!21906) (not e!22873))))

(declare-fun lt!13439 () ListLongMap!935)

(assert (=> d!5441 (= res!21906 (contains!429 lt!13439 (_1!687 (tuple2!1355 lt!13310 zeroValue!1443))))))

(declare-fun lt!13437 () List!962)

(assert (=> d!5441 (= lt!13439 (ListLongMap!936 lt!13437))))

(declare-fun lt!13436 () Unit!790)

(declare-fun lt!13438 () Unit!790)

(assert (=> d!5441 (= lt!13436 lt!13438)))

(assert (=> d!5441 (= (getValueByKey!74 lt!13437 (_1!687 (tuple2!1355 lt!13310 zeroValue!1443))) (Some!79 (_2!687 (tuple2!1355 lt!13310 zeroValue!1443))))))

(assert (=> d!5441 (= lt!13438 (lemmaContainsTupThenGetReturnValue!19 lt!13437 (_1!687 (tuple2!1355 lt!13310 zeroValue!1443)) (_2!687 (tuple2!1355 lt!13310 zeroValue!1443))))))

(assert (=> d!5441 (= lt!13437 (insertStrictlySorted!19 (toList!483 lt!13321) (_1!687 (tuple2!1355 lt!13310 zeroValue!1443)) (_2!687 (tuple2!1355 lt!13310 zeroValue!1443))))))

(assert (=> d!5441 (= (+!60 lt!13321 (tuple2!1355 lt!13310 zeroValue!1443)) lt!13439)))

(declare-fun b!36229 () Bool)

(declare-fun res!21905 () Bool)

(assert (=> b!36229 (=> (not res!21905) (not e!22873))))

(assert (=> b!36229 (= res!21905 (= (getValueByKey!74 (toList!483 lt!13439) (_1!687 (tuple2!1355 lt!13310 zeroValue!1443))) (Some!79 (_2!687 (tuple2!1355 lt!13310 zeroValue!1443)))))))

(declare-fun b!36230 () Bool)

(assert (=> b!36230 (= e!22873 (contains!432 (toList!483 lt!13439) (tuple2!1355 lt!13310 zeroValue!1443)))))

(assert (= (and d!5441 res!21906) b!36229))

(assert (= (and b!36229 res!21905) b!36230))

(declare-fun m!29205 () Bool)

(assert (=> d!5441 m!29205))

(declare-fun m!29207 () Bool)

(assert (=> d!5441 m!29207))

(declare-fun m!29209 () Bool)

(assert (=> d!5441 m!29209))

(declare-fun m!29211 () Bool)

(assert (=> d!5441 m!29211))

(declare-fun m!29213 () Bool)

(assert (=> b!36229 m!29213))

(declare-fun m!29215 () Bool)

(assert (=> b!36230 m!29215))

(assert (=> b!36038 d!5441))

(assert (=> b!36038 d!5401))

(declare-fun d!5443 () Bool)

(assert (=> d!5443 (= (apply!42 (+!60 lt!13311 (tuple2!1355 lt!13324 minValue!1443)) lt!13325) (apply!42 lt!13311 lt!13325))))

(declare-fun lt!13440 () Unit!790)

(assert (=> d!5443 (= lt!13440 (choose!225 lt!13311 lt!13324 minValue!1443 lt!13325))))

(declare-fun e!22874 () Bool)

(assert (=> d!5443 e!22874))

(declare-fun res!21907 () Bool)

(assert (=> d!5443 (=> (not res!21907) (not e!22874))))

(assert (=> d!5443 (= res!21907 (contains!429 lt!13311 lt!13325))))

(assert (=> d!5443 (= (addApplyDifferent!27 lt!13311 lt!13324 minValue!1443 lt!13325) lt!13440)))

(declare-fun b!36231 () Bool)

(assert (=> b!36231 (= e!22874 (not (= lt!13325 lt!13324)))))

(assert (= (and d!5443 res!21907) b!36231))

(assert (=> d!5443 m!28967))

(assert (=> d!5443 m!28969))

(assert (=> d!5443 m!28945))

(declare-fun m!29217 () Bool)

(assert (=> d!5443 m!29217))

(assert (=> d!5443 m!28967))

(declare-fun m!29219 () Bool)

(assert (=> d!5443 m!29219))

(assert (=> b!36038 d!5443))

(declare-fun d!5445 () Bool)

(declare-fun e!22876 () Bool)

(assert (=> d!5445 e!22876))

(declare-fun res!21908 () Bool)

(assert (=> d!5445 (=> res!21908 e!22876)))

(declare-fun lt!13443 () Bool)

(assert (=> d!5445 (= res!21908 (not lt!13443))))

(declare-fun lt!13442 () Bool)

(assert (=> d!5445 (= lt!13443 lt!13442)))

(declare-fun lt!13444 () Unit!790)

(declare-fun e!22875 () Unit!790)

(assert (=> d!5445 (= lt!13444 e!22875)))

(declare-fun c!4170 () Bool)

(assert (=> d!5445 (= c!4170 lt!13442)))

(assert (=> d!5445 (= lt!13442 (containsKey!38 (toList!483 (+!60 lt!13316 (tuple2!1355 lt!13319 zeroValue!1443))) lt!13313))))

(assert (=> d!5445 (= (contains!429 (+!60 lt!13316 (tuple2!1355 lt!13319 zeroValue!1443)) lt!13313) lt!13443)))

(declare-fun b!36232 () Bool)

(declare-fun lt!13441 () Unit!790)

(assert (=> b!36232 (= e!22875 lt!13441)))

(assert (=> b!36232 (= lt!13441 (lemmaContainsKeyImpliesGetValueByKeyDefined!35 (toList!483 (+!60 lt!13316 (tuple2!1355 lt!13319 zeroValue!1443))) lt!13313))))

(assert (=> b!36232 (isDefined!36 (getValueByKey!74 (toList!483 (+!60 lt!13316 (tuple2!1355 lt!13319 zeroValue!1443))) lt!13313))))

(declare-fun b!36233 () Bool)

(declare-fun Unit!797 () Unit!790)

(assert (=> b!36233 (= e!22875 Unit!797)))

(declare-fun b!36234 () Bool)

(assert (=> b!36234 (= e!22876 (isDefined!36 (getValueByKey!74 (toList!483 (+!60 lt!13316 (tuple2!1355 lt!13319 zeroValue!1443))) lt!13313)))))

(assert (= (and d!5445 c!4170) b!36232))

(assert (= (and d!5445 (not c!4170)) b!36233))

(assert (= (and d!5445 (not res!21908)) b!36234))

(declare-fun m!29221 () Bool)

(assert (=> d!5445 m!29221))

(declare-fun m!29223 () Bool)

(assert (=> b!36232 m!29223))

(declare-fun m!29225 () Bool)

(assert (=> b!36232 m!29225))

(assert (=> b!36232 m!29225))

(declare-fun m!29227 () Bool)

(assert (=> b!36232 m!29227))

(assert (=> b!36234 m!29225))

(assert (=> b!36234 m!29225))

(assert (=> b!36234 m!29227))

(assert (=> b!36038 d!5445))

(declare-fun d!5447 () Bool)

(assert (=> d!5447 (isDefined!36 (getValueByKey!74 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(declare-fun lt!13447 () Unit!790)

(declare-fun choose!226 (List!962 (_ BitVec 64)) Unit!790)

(assert (=> d!5447 (= lt!13447 (choose!226 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(declare-fun e!22879 () Bool)

(assert (=> d!5447 e!22879))

(declare-fun res!21911 () Bool)

(assert (=> d!5447 (=> (not res!21911) (not e!22879))))

(declare-fun isStrictlySorted!169 (List!962) Bool)

(assert (=> d!5447 (= res!21911 (isStrictlySorted!169 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504))))))

(assert (=> d!5447 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!35 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304) lt!13447)))

(declare-fun b!36237 () Bool)

(assert (=> b!36237 (= e!22879 (containsKey!38 (toList!483 (getCurrentListMap!304 _keys!1833 _values!1501 mask!2294 extraKeys!1422 zeroValue!1443 minValue!1443 #b00000000000000000000000000000000 defaultEntry!1504)) k0!1304))))

(assert (= (and d!5447 res!21911) b!36237))

(assert (=> d!5447 m!28939))

(assert (=> d!5447 m!28939))

(assert (=> d!5447 m!28941))

(declare-fun m!29229 () Bool)

(assert (=> d!5447 m!29229))

(declare-fun m!29231 () Bool)

(assert (=> d!5447 m!29231))

(assert (=> b!36237 m!28935))

(assert (=> b!35989 d!5447))

(assert (=> b!35989 d!5389))

(assert (=> b!35989 d!5391))

(declare-fun d!5449 () Bool)

(declare-fun res!21913 () Bool)

(declare-fun e!22881 () Bool)

(assert (=> d!5449 (=> res!21913 e!22881)))

(assert (=> d!5449 (= res!21913 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!1287 _keys!1833)))))

(assert (=> d!5449 (= (arrayNoDuplicates!0 _keys!1833 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!4093 (Cons!957 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000) Nil!958) Nil!958)) e!22881)))

(declare-fun b!36238 () Bool)

(declare-fun e!22880 () Bool)

(declare-fun call!2864 () Bool)

(assert (=> b!36238 (= e!22880 call!2864)))

(declare-fun bm!2861 () Bool)

(declare-fun c!4171 () Bool)

(assert (=> bm!2861 (= call!2864 (arrayNoDuplicates!0 _keys!1833 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!4171 (Cons!957 (select (arr!1186 _keys!1833) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!4093 (Cons!957 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000) Nil!958) Nil!958)) (ite c!4093 (Cons!957 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000) Nil!958) Nil!958))))))

(declare-fun b!36239 () Bool)

(declare-fun e!22882 () Bool)

(assert (=> b!36239 (= e!22881 e!22882)))

(declare-fun res!21912 () Bool)

(assert (=> b!36239 (=> (not res!21912) (not e!22882))))

(declare-fun e!22883 () Bool)

(assert (=> b!36239 (= res!21912 (not e!22883))))

(declare-fun res!21914 () Bool)

(assert (=> b!36239 (=> (not res!21914) (not e!22883))))

(assert (=> b!36239 (= res!21914 (validKeyInArray!0 (select (arr!1186 _keys!1833) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!36240 () Bool)

(assert (=> b!36240 (= e!22880 call!2864)))

(declare-fun b!36241 () Bool)

(assert (=> b!36241 (= e!22882 e!22880)))

(assert (=> b!36241 (= c!4171 (validKeyInArray!0 (select (arr!1186 _keys!1833) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!36242 () Bool)

(assert (=> b!36242 (= e!22883 (contains!431 (ite c!4093 (Cons!957 (select (arr!1186 _keys!1833) #b00000000000000000000000000000000) Nil!958) Nil!958) (select (arr!1186 _keys!1833) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!5449 (not res!21913)) b!36239))

(assert (= (and b!36239 res!21914) b!36242))

(assert (= (and b!36239 res!21912) b!36241))

(assert (= (and b!36241 c!4171) b!36240))

(assert (= (and b!36241 (not c!4171)) b!36238))

(assert (= (or b!36240 b!36238) bm!2861))

(assert (=> bm!2861 m!29089))

(declare-fun m!29233 () Bool)

(assert (=> bm!2861 m!29233))

(assert (=> b!36239 m!29089))

(assert (=> b!36239 m!29089))

(assert (=> b!36239 m!29091))

(assert (=> b!36241 m!29089))

(assert (=> b!36241 m!29089))

(assert (=> b!36241 m!29091))

(assert (=> b!36242 m!29089))

(assert (=> b!36242 m!29089))

(declare-fun m!29235 () Bool)

(assert (=> b!36242 m!29235))

(assert (=> bm!2832 d!5449))

(declare-fun d!5451 () Bool)

(declare-fun res!21915 () Bool)

(declare-fun e!22884 () Bool)

(assert (=> d!5451 (=> res!21915 e!22884)))

(assert (=> d!5451 (= res!21915 (= (select (arr!1186 _keys!1833) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) k0!1304))))

(assert (=> d!5451 (= (arrayContainsKey!0 _keys!1833 k0!1304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!22884)))

(declare-fun b!36243 () Bool)

(declare-fun e!22885 () Bool)

(assert (=> b!36243 (= e!22884 e!22885)))

(declare-fun res!21916 () Bool)

(assert (=> b!36243 (=> (not res!21916) (not e!22885))))

(assert (=> b!36243 (= res!21916 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!1287 _keys!1833)))))

(declare-fun b!36244 () Bool)

(assert (=> b!36244 (= e!22885 (arrayContainsKey!0 _keys!1833 k0!1304 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!5451 (not res!21915)) b!36243))

(assert (= (and b!36243 res!21916) b!36244))

(assert (=> d!5451 m!29089))

(declare-fun m!29237 () Bool)

(assert (=> b!36244 m!29237))

(assert (=> b!35955 d!5451))

(declare-fun d!5453 () Bool)

(assert (=> d!5453 (= (apply!42 lt!13322 #b0000000000000000000000000000000000000000000000000000000000000000) (get!612 (getValueByKey!74 (toList!483 lt!13322) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!1371 () Bool)

(assert (= bs!1371 d!5453))

(assert (=> bs!1371 m!29055))

(assert (=> bs!1371 m!29055))

(declare-fun m!29239 () Bool)

(assert (=> bs!1371 m!29239))

(assert (=> b!36047 d!5453))

(assert (=> d!5373 d!5359))

(assert (=> b!36034 d!5385))

(assert (=> b!35979 d!5385))

(declare-fun b!36245 () Bool)

(declare-fun e!22887 () Bool)

(assert (=> b!36245 (= e!22887 tp_is_empty!1635)))

(declare-fun condMapEmpty!2015 () Bool)

(declare-fun mapDefault!2015 () ValueCell!618)

(assert (=> mapNonEmpty!2014 (= condMapEmpty!2015 (= mapRest!2014 ((as const (Array (_ BitVec 32) ValueCell!618)) mapDefault!2015)))))

(declare-fun e!22886 () Bool)

(declare-fun mapRes!2015 () Bool)

(assert (=> mapNonEmpty!2014 (= tp!5299 (and e!22886 mapRes!2015))))

(declare-fun b!36246 () Bool)

(assert (=> b!36246 (= e!22886 tp_is_empty!1635)))

(declare-fun mapNonEmpty!2015 () Bool)

(declare-fun tp!5300 () Bool)

(assert (=> mapNonEmpty!2015 (= mapRes!2015 (and tp!5300 e!22887))))

(declare-fun mapKey!2015 () (_ BitVec 32))

(declare-fun mapValue!2015 () ValueCell!618)

(declare-fun mapRest!2015 () (Array (_ BitVec 32) ValueCell!618))

(assert (=> mapNonEmpty!2015 (= mapRest!2014 (store mapRest!2015 mapKey!2015 mapValue!2015))))

(declare-fun mapIsEmpty!2015 () Bool)

(assert (=> mapIsEmpty!2015 mapRes!2015))

(assert (= (and mapNonEmpty!2014 condMapEmpty!2015) mapIsEmpty!2015))

(assert (= (and mapNonEmpty!2014 (not condMapEmpty!2015)) mapNonEmpty!2015))

(assert (= (and mapNonEmpty!2015 ((_ is ValueCellFull!618) mapValue!2015)) b!36245))

(assert (= (and mapNonEmpty!2014 ((_ is ValueCellFull!618) mapDefault!2015)) b!36246))

(declare-fun m!29241 () Bool)

(assert (=> mapNonEmpty!2015 m!29241))

(declare-fun b_lambda!1743 () Bool)

(assert (= b_lambda!1741 (or (and start!4580 b_free!1281) b_lambda!1743)))

(declare-fun b_lambda!1745 () Bool)

(assert (= b_lambda!1739 (or (and start!4580 b_free!1281) b_lambda!1745)))

(check-sat (not b!36217) (not b!36172) (not b!36077) (not d!5409) (not b!36193) (not b!36167) (not d!5429) (not d!5445) (not b!36125) (not d!5427) (not b!36244) (not b!36169) (not b_lambda!1743) (not bm!2859) (not d!5407) b_and!2119 (not b!36218) (not b!36174) (not b!36162) (not b!36241) (not b!36230) (not b!36194) (not d!5393) (not d!5375) (not b_next!1281) (not b!36161) tp_is_empty!1635 (not d!5387) (not d!5437) (not d!5397) (not d!5425) (not b!36135) (not b!36221) (not d!5421) (not b_lambda!1737) (not b!36171) (not d!5389) (not b!36227) (not bm!2860) (not d!5399) (not b!36104) (not b!36070) (not b!36234) (not b!36069) (not b!36129) (not b!36215) (not d!5411) (not b!36127) (not b!36232) (not d!5435) (not b!36196) (not b!36106) (not d!5443) (not bm!2861) (not d!5379) (not d!5441) (not d!5453) (not d!5401) (not b_lambda!1745) (not d!5433) (not b!36229) (not b!36108) (not b!36119) (not d!5423) (not b!36239) (not d!5419) (not d!5415) (not b!36126) (not b!36165) (not b!36198) (not d!5447) (not b!36078) (not mapNonEmpty!2015) (not b!36168) (not d!5403) (not b!36237) (not d!5439) (not b!36076) (not d!5431) (not b!36220) (not b!36226) (not d!5381) (not b!36242) (not b!36160) (not d!5417))
(check-sat b_and!2119 (not b_next!1281))
