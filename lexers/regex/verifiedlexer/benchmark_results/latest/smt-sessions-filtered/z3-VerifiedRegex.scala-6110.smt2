; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296998 () Bool)

(assert start!296998)

(declare-fun b!3170921 () Bool)

(declare-fun b_free!83249 () Bool)

(declare-fun b_next!83953 () Bool)

(assert (=> b!3170921 (= b_free!83249 (not b_next!83953))))

(declare-fun tp!1000898 () Bool)

(declare-fun b_and!209527 () Bool)

(assert (=> b!3170921 (= tp!1000898 b_and!209527)))

(declare-fun b!3170931 () Bool)

(declare-fun b_free!83251 () Bool)

(declare-fun b_next!83955 () Bool)

(assert (=> b!3170931 (= b_free!83251 (not b_next!83955))))

(declare-fun tp!1000895 () Bool)

(declare-fun b_and!209529 () Bool)

(assert (=> b!3170931 (= tp!1000895 b_and!209529)))

(declare-fun b!3170918 () Bool)

(declare-fun e!1974874 () Bool)

(declare-fun e!1974876 () Bool)

(assert (=> b!3170918 (= e!1974874 e!1974876)))

(declare-fun res!1288964 () Bool)

(declare-fun e!1974869 () Bool)

(assert (=> start!296998 (=> (not res!1288964) (not e!1974869))))

(declare-datatypes ((C!19728 0))(
  ( (C!19729 (val!11900 Int)) )
))
(declare-datatypes ((Regex!9771 0))(
  ( (ElementMatch!9771 (c!533193 C!19728)) (Concat!15092 (regOne!20054 Regex!9771) (regTwo!20054 Regex!9771)) (EmptyExpr!9771) (Star!9771 (reg!10100 Regex!9771)) (EmptyLang!9771) (Union!9771 (regOne!20055 Regex!9771) (regTwo!20055 Regex!9771)) )
))
(declare-datatypes ((tuple2!34728 0))(
  ( (tuple2!34729 (_1!20496 Regex!9771) (_2!20496 C!19728)) )
))
(declare-datatypes ((tuple2!34730 0))(
  ( (tuple2!34731 (_1!20497 tuple2!34728) (_2!20497 Regex!9771)) )
))
(declare-datatypes ((List!35613 0))(
  ( (Nil!35489) (Cons!35489 (h!40909 tuple2!34730) (t!234696 List!35613)) )
))
(declare-datatypes ((array!14998 0))(
  ( (array!14999 (arr!6674 (Array (_ BitVec 32) List!35613)) (size!26760 (_ BitVec 32))) )
))
(declare-datatypes ((array!15000 0))(
  ( (array!15001 (arr!6675 (Array (_ BitVec 32) (_ BitVec 64))) (size!26761 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8384 0))(
  ( (LongMapFixedSize!8385 (defaultEntry!4577 Int) (mask!10871 (_ BitVec 32)) (extraKeys!4441 (_ BitVec 32)) (zeroValue!4451 List!35613) (minValue!4451 List!35613) (_size!8427 (_ BitVec 32)) (_keys!4492 array!15000) (_values!4473 array!14998) (_vacant!4253 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16577 0))(
  ( (Cell!16578 (v!35221 LongMapFixedSize!8384)) )
))
(declare-datatypes ((MutLongMap!4192 0))(
  ( (LongMap!4192 (underlying!8613 Cell!16577)) (MutLongMapExt!4191 (__x!22682 Int)) )
))
(declare-datatypes ((Cell!16579 0))(
  ( (Cell!16580 (v!35222 MutLongMap!4192)) )
))
(declare-datatypes ((Hashable!4108 0))(
  ( (HashableExt!4107 (__x!22683 Int)) )
))
(declare-datatypes ((MutableMap!4098 0))(
  ( (MutableMapExt!4097 (__x!22684 Int)) (HashMap!4098 (underlying!8614 Cell!16579) (hashF!6140 Hashable!4108) (_size!8428 (_ BitVec 32)) (defaultValue!4269 Int)) )
))
(declare-datatypes ((Cache!466 0))(
  ( (Cache!467 (cache!4244 MutableMap!4098)) )
))
(declare-fun thiss!28524 () Cache!466)

(declare-fun validCacheMap!79 (MutableMap!4098) Bool)

(assert (=> start!296998 (= res!1288964 (validCacheMap!79 (cache!4244 thiss!28524)))))

(assert (=> start!296998 e!1974869))

(declare-fun inv!48190 (Cache!466) Bool)

(assert (=> start!296998 (and (inv!48190 thiss!28524) e!1974874)))

(declare-fun e!1974879 () Bool)

(assert (=> start!296998 e!1974879))

(declare-fun e!1974873 () Bool)

(assert (=> start!296998 e!1974873))

(declare-fun tp_is_empty!17105 () Bool)

(assert (=> start!296998 tp_is_empty!17105))

(declare-fun b!3170919 () Bool)

(declare-fun res!1288963 () Bool)

(assert (=> b!3170919 (=> (not res!1288963) (not e!1974869))))

(get-info :version)

(assert (=> b!3170919 (= res!1288963 ((_ is HashMap!4098) (cache!4244 thiss!28524)))))

(declare-fun b!3170920 () Bool)

(declare-fun e!1974875 () Bool)

(declare-fun tp!1000891 () Bool)

(declare-fun mapRes!19004 () Bool)

(assert (=> b!3170920 (= e!1974875 (and tp!1000891 mapRes!19004))))

(declare-fun condMapEmpty!19004 () Bool)

(declare-fun mapDefault!19004 () List!35613)

(assert (=> b!3170920 (= condMapEmpty!19004 (= (arr!6674 (_values!4473 (v!35221 (underlying!8613 (v!35222 (underlying!8614 (cache!4244 thiss!28524))))))) ((as const (Array (_ BitVec 32) List!35613)) mapDefault!19004)))))

(declare-fun mapIsEmpty!19004 () Bool)

(assert (=> mapIsEmpty!19004 mapRes!19004))

(declare-fun e!1974870 () Bool)

(declare-fun tp!1000907 () Bool)

(declare-fun tp!1000896 () Bool)

(declare-fun array_inv!4786 (array!15000) Bool)

(declare-fun array_inv!4787 (array!14998) Bool)

(assert (=> b!3170921 (= e!1974870 (and tp!1000898 tp!1000896 tp!1000907 (array_inv!4786 (_keys!4492 (v!35221 (underlying!8613 (v!35222 (underlying!8614 (cache!4244 thiss!28524))))))) (array_inv!4787 (_values!4473 (v!35221 (underlying!8613 (v!35222 (underlying!8614 (cache!4244 thiss!28524))))))) e!1974875))))

(declare-fun mapNonEmpty!19004 () Bool)

(declare-fun tp!1000902 () Bool)

(declare-fun tp!1000905 () Bool)

(assert (=> mapNonEmpty!19004 (= mapRes!19004 (and tp!1000902 tp!1000905))))

(declare-fun mapValue!19004 () List!35613)

(declare-fun mapKey!19004 () (_ BitVec 32))

(declare-fun mapRest!19004 () (Array (_ BitVec 32) List!35613))

(assert (=> mapNonEmpty!19004 (= (arr!6674 (_values!4473 (v!35221 (underlying!8613 (v!35222 (underlying!8614 (cache!4244 thiss!28524))))))) (store mapRest!19004 mapKey!19004 mapValue!19004))))

(declare-fun b!3170922 () Bool)

(declare-fun tp!1000899 () Bool)

(declare-fun tp!1000904 () Bool)

(assert (=> b!3170922 (= e!1974879 (and tp!1000899 tp!1000904))))

(declare-fun b!3170923 () Bool)

(declare-fun res!1288961 () Bool)

(assert (=> b!3170923 (=> (not res!1288961) (not e!1974869))))

(declare-fun r!4733 () Regex!9771)

(declare-fun validRegex!4484 (Regex!9771) Bool)

(assert (=> b!3170923 (= res!1288961 (validRegex!4484 r!4733))))

(declare-fun b!3170924 () Bool)

(declare-fun e!1974877 () Bool)

(declare-fun e!1974871 () Bool)

(assert (=> b!3170924 (= e!1974877 e!1974871)))

(declare-fun b!3170925 () Bool)

(declare-fun e!1974868 () Bool)

(declare-fun lt!1066097 () MutLongMap!4192)

(assert (=> b!3170925 (= e!1974868 (and e!1974877 ((_ is LongMap!4192) lt!1066097)))))

(assert (=> b!3170925 (= lt!1066097 (v!35222 (underlying!8614 (cache!4244 thiss!28524))))))

(declare-fun b!3170926 () Bool)

(assert (=> b!3170926 (= e!1974873 tp_is_empty!17105)))

(declare-fun b!3170927 () Bool)

(assert (=> b!3170927 (= e!1974871 e!1974870)))

(declare-fun b!3170928 () Bool)

(declare-fun res!1288966 () Bool)

(assert (=> b!3170928 (=> (not res!1288966) (not e!1974869))))

(declare-fun valid!3272 (MutableMap!4098) Bool)

(assert (=> b!3170928 (= res!1288966 (valid!3272 (cache!4244 thiss!28524)))))

(declare-fun b!3170929 () Bool)

(declare-fun res!1288965 () Bool)

(assert (=> b!3170929 (=> (not res!1288965) (not e!1974869))))

(declare-fun res!14113 () Regex!9771)

(declare-fun c!6996 () C!19728)

(declare-fun derivativeStep!2911 (Regex!9771 C!19728) Regex!9771)

(assert (=> b!3170929 (= res!1288965 (= res!14113 (derivativeStep!2911 r!4733 c!6996)))))

(declare-fun e!1974878 () Bool)

(declare-fun b!3170930 () Bool)

(assert (=> b!3170930 (= e!1974878 (not (= res!14113 (derivativeStep!2911 r!4733 c!6996))))))

(assert (=> b!3170931 (= e!1974876 (and e!1974868 tp!1000895))))

(declare-fun b!3170932 () Bool)

(declare-fun tp!1000903 () Bool)

(assert (=> b!3170932 (= e!1974873 tp!1000903)))

(declare-fun b!3170933 () Bool)

(assert (=> b!3170933 (= e!1974879 tp_is_empty!17105)))

(declare-fun b!3170934 () Bool)

(declare-fun tp!1000897 () Bool)

(assert (=> b!3170934 (= e!1974879 tp!1000897)))

(declare-fun b!3170935 () Bool)

(declare-fun tp!1000901 () Bool)

(declare-fun tp!1000894 () Bool)

(assert (=> b!3170935 (= e!1974873 (and tp!1000901 tp!1000894))))

(declare-fun b!3170936 () Bool)

(assert (=> b!3170936 (= e!1974869 e!1974878)))

(declare-fun res!1288960 () Bool)

(assert (=> b!3170936 (=> res!1288960 e!1974878)))

(assert (=> b!3170936 (= res!1288960 (not (validRegex!4484 r!4733)))))

(declare-fun b!3170937 () Bool)

(declare-fun tp!1000893 () Bool)

(declare-fun tp!1000900 () Bool)

(assert (=> b!3170937 (= e!1974873 (and tp!1000893 tp!1000900))))

(declare-fun b!3170938 () Bool)

(declare-fun tp!1000906 () Bool)

(declare-fun tp!1000892 () Bool)

(assert (=> b!3170938 (= e!1974879 (and tp!1000906 tp!1000892))))

(declare-fun b!3170939 () Bool)

(declare-fun res!1288962 () Bool)

(assert (=> b!3170939 (=> (not res!1288962) (not e!1974869))))

(declare-fun lambda!116012 () Int)

(declare-fun forall!7168 (List!35613 Int) Bool)

(declare-datatypes ((ListMap!1335 0))(
  ( (ListMap!1336 (toList!2081 List!35613)) )
))
(declare-fun map!7942 (MutableMap!4098) ListMap!1335)

(assert (=> b!3170939 (= res!1288962 (forall!7168 (toList!2081 (map!7942 (cache!4244 thiss!28524))) lambda!116012))))

(assert (= (and start!296998 res!1288964) b!3170923))

(assert (= (and b!3170923 res!1288961) b!3170929))

(assert (= (and b!3170929 res!1288965) b!3170919))

(assert (= (and b!3170919 res!1288963) b!3170928))

(assert (= (and b!3170928 res!1288966) b!3170939))

(assert (= (and b!3170939 res!1288962) b!3170936))

(assert (= (and b!3170936 (not res!1288960)) b!3170930))

(assert (= (and b!3170920 condMapEmpty!19004) mapIsEmpty!19004))

(assert (= (and b!3170920 (not condMapEmpty!19004)) mapNonEmpty!19004))

(assert (= b!3170921 b!3170920))

(assert (= b!3170927 b!3170921))

(assert (= b!3170924 b!3170927))

(assert (= (and b!3170925 ((_ is LongMap!4192) (v!35222 (underlying!8614 (cache!4244 thiss!28524))))) b!3170924))

(assert (= b!3170931 b!3170925))

(assert (= (and b!3170918 ((_ is HashMap!4098) (cache!4244 thiss!28524))) b!3170931))

(assert (= start!296998 b!3170918))

(assert (= (and start!296998 ((_ is ElementMatch!9771) r!4733)) b!3170933))

(assert (= (and start!296998 ((_ is Concat!15092) r!4733)) b!3170922))

(assert (= (and start!296998 ((_ is Star!9771) r!4733)) b!3170934))

(assert (= (and start!296998 ((_ is Union!9771) r!4733)) b!3170938))

(assert (= (and start!296998 ((_ is ElementMatch!9771) res!14113)) b!3170926))

(assert (= (and start!296998 ((_ is Concat!15092) res!14113)) b!3170937))

(assert (= (and start!296998 ((_ is Star!9771) res!14113)) b!3170932))

(assert (= (and start!296998 ((_ is Union!9771) res!14113)) b!3170935))

(declare-fun m!3429991 () Bool)

(assert (=> b!3170923 m!3429991))

(declare-fun m!3429993 () Bool)

(assert (=> b!3170928 m!3429993))

(assert (=> b!3170936 m!3429991))

(declare-fun m!3429995 () Bool)

(assert (=> b!3170921 m!3429995))

(declare-fun m!3429997 () Bool)

(assert (=> b!3170921 m!3429997))

(declare-fun m!3429999 () Bool)

(assert (=> start!296998 m!3429999))

(declare-fun m!3430001 () Bool)

(assert (=> start!296998 m!3430001))

(declare-fun m!3430003 () Bool)

(assert (=> b!3170939 m!3430003))

(declare-fun m!3430005 () Bool)

(assert (=> b!3170939 m!3430005))

(declare-fun m!3430007 () Bool)

(assert (=> b!3170929 m!3430007))

(declare-fun m!3430009 () Bool)

(assert (=> mapNonEmpty!19004 m!3430009))

(assert (=> b!3170930 m!3430007))

(check-sat (not b!3170929) (not b!3170922) b_and!209527 (not b!3170939) (not b_next!83953) tp_is_empty!17105 (not b!3170935) (not b!3170920) (not b!3170934) (not b!3170928) (not b_next!83955) (not b!3170936) (not start!296998) (not b!3170921) (not b!3170937) (not b!3170932) b_and!209529 (not b!3170923) (not mapNonEmpty!19004) (not b!3170938) (not b!3170930))
(check-sat b_and!209529 b_and!209527 (not b_next!83953) (not b_next!83955))
