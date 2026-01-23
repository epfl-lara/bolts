; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11556 () Bool)

(assert start!11556)

(declare-fun b!112247 () Bool)

(declare-fun b_free!3513 () Bool)

(declare-fun b_next!3513 () Bool)

(assert (=> b!112247 (= b_free!3513 (not b_next!3513))))

(declare-fun tp!60924 () Bool)

(declare-fun b_and!5643 () Bool)

(assert (=> b!112247 (= tp!60924 b_and!5643)))

(declare-fun b!112252 () Bool)

(declare-fun b_free!3515 () Bool)

(declare-fun b_next!3515 () Bool)

(assert (=> b!112252 (= b_free!3515 (not b_next!3515))))

(declare-fun tp!60920 () Bool)

(declare-fun b_and!5645 () Bool)

(assert (=> b!112252 (= tp!60920 b_and!5645)))

(declare-fun res!53846 () Bool)

(declare-fun e!63046 () Bool)

(assert (=> start!11556 (=> (not res!53846) (not e!63046))))

(declare-datatypes ((C!1832 0))(
  ( (C!1833 (val!642 Int)) )
))
(declare-datatypes ((Regex!455 0))(
  ( (ElementMatch!455 (c!26376 C!1832)) (Concat!839 (regOne!1422 Regex!455) (regTwo!1422 Regex!455)) (EmptyExpr!455) (Star!455 (reg!784 Regex!455)) (EmptyLang!455) (Union!455 (regOne!1423 Regex!455) (regTwo!1423 Regex!455)) )
))
(declare-fun r!15516 () Regex!455)

(declare-fun validRegex!71 (Regex!455) Bool)

(assert (=> start!11556 (= res!53846 (validRegex!71 r!15516))))

(assert (=> start!11556 e!63046))

(declare-fun e!63041 () Bool)

(assert (=> start!11556 e!63041))

(declare-datatypes ((tuple2!1936 0))(
  ( (tuple2!1937 (_1!1178 Regex!455) (_2!1178 C!1832)) )
))
(declare-datatypes ((tuple2!1938 0))(
  ( (tuple2!1939 (_1!1179 tuple2!1936) (_2!1179 Regex!455)) )
))
(declare-datatypes ((List!1826 0))(
  ( (Nil!1820) (Cons!1820 (h!7217 tuple2!1938) (t!22303 List!1826)) )
))
(declare-datatypes ((array!1125 0))(
  ( (array!1126 (arr!526 (Array (_ BitVec 32) (_ BitVec 64))) (size!1592 (_ BitVec 32))) )
))
(declare-datatypes ((array!1127 0))(
  ( (array!1128 (arr!527 (Array (_ BitVec 32) List!1826)) (size!1593 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!642 0))(
  ( (LongMapFixedSize!643 (defaultEntry!660 Int) (mask!1216 (_ BitVec 32)) (extraKeys!567 (_ BitVec 32)) (zeroValue!577 List!1826) (minValue!577 List!1826) (_size!775 (_ BitVec 32)) (_keys!612 array!1125) (_values!599 array!1127) (_vacant!382 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1273 0))(
  ( (Cell!1274 (v!13173 LongMapFixedSize!642)) )
))
(declare-datatypes ((MutLongMap!321 0))(
  ( (LongMap!321 (underlying!841 Cell!1273)) (MutLongMapExt!320 (__x!1888 Int)) )
))
(declare-datatypes ((Cell!1275 0))(
  ( (Cell!1276 (v!13174 MutLongMap!321)) )
))
(declare-datatypes ((Hashable!317 0))(
  ( (HashableExt!316 (__x!1889 Int)) )
))
(declare-datatypes ((MutableMap!317 0))(
  ( (MutableMapExt!316 (__x!1890 Int)) (HashMap!317 (underlying!842 Cell!1275) (hashF!2193 Hashable!317) (_size!776 (_ BitVec 32)) (defaultValue!466 Int)) )
))
(declare-datatypes ((Cache!70 0))(
  ( (Cache!71 (cache!768 MutableMap!317)) )
))
(declare-fun cache!464 () Cache!70)

(declare-fun e!63044 () Bool)

(declare-fun inv!2318 (Cache!70) Bool)

(assert (=> start!11556 (and (inv!2318 cache!464) e!63044)))

(declare-fun e!63038 () Bool)

(assert (=> start!11556 e!63038))

(declare-fun b!112243 () Bool)

(declare-fun e!63040 () Bool)

(assert (=> b!112243 (= e!63044 e!63040)))

(declare-fun b!112244 () Bool)

(declare-fun e!63045 () Bool)

(declare-fun e!63043 () Bool)

(declare-fun lt!32718 () MutLongMap!321)

(get-info :version)

(assert (=> b!112244 (= e!63045 (and e!63043 ((_ is LongMap!321) lt!32718)))))

(assert (=> b!112244 (= lt!32718 (v!13174 (underlying!842 (cache!768 cache!464))))))

(declare-fun b!112245 () Bool)

(declare-fun tp!60918 () Bool)

(assert (=> b!112245 (= e!63041 tp!60918)))

(declare-fun b!112246 () Bool)

(declare-fun tp_is_empty!965 () Bool)

(assert (=> b!112246 (= e!63041 tp_is_empty!965)))

(assert (=> b!112247 (= e!63040 (and e!63045 tp!60924))))

(declare-fun b!112248 () Bool)

(declare-fun e!63048 () Bool)

(declare-fun e!63037 () Bool)

(assert (=> b!112248 (= e!63048 e!63037)))

(declare-fun b!112249 () Bool)

(declare-fun e!63042 () Bool)

(declare-fun tp!60923 () Bool)

(declare-fun mapRes!1267 () Bool)

(assert (=> b!112249 (= e!63042 (and tp!60923 mapRes!1267))))

(declare-fun condMapEmpty!1267 () Bool)

(declare-fun mapDefault!1267 () List!1826)

(assert (=> b!112249 (= condMapEmpty!1267 (= (arr!527 (_values!599 (v!13173 (underlying!841 (v!13174 (underlying!842 (cache!768 cache!464))))))) ((as const (Array (_ BitVec 32) List!1826)) mapDefault!1267)))))

(declare-fun b!112250 () Bool)

(declare-fun tp!60916 () Bool)

(declare-fun tp!60922 () Bool)

(assert (=> b!112250 (= e!63041 (and tp!60916 tp!60922))))

(declare-fun b!112251 () Bool)

(declare-fun res!53845 () Bool)

(assert (=> b!112251 (=> (not res!53845) (not e!63046))))

(declare-fun valid!299 (Cache!70) Bool)

(assert (=> b!112251 (= res!53845 (valid!299 cache!464))))

(declare-fun tp!60927 () Bool)

(declare-fun tp!60925 () Bool)

(declare-fun array_inv!365 (array!1125) Bool)

(declare-fun array_inv!366 (array!1127) Bool)

(assert (=> b!112252 (= e!63037 (and tp!60920 tp!60925 tp!60927 (array_inv!365 (_keys!612 (v!13173 (underlying!841 (v!13174 (underlying!842 (cache!768 cache!464))))))) (array_inv!366 (_values!599 (v!13173 (underlying!841 (v!13174 (underlying!842 (cache!768 cache!464))))))) e!63042))))

(declare-fun mapIsEmpty!1267 () Bool)

(assert (=> mapIsEmpty!1267 mapRes!1267))

(declare-fun mapNonEmpty!1267 () Bool)

(declare-fun tp!60921 () Bool)

(declare-fun tp!60919 () Bool)

(assert (=> mapNonEmpty!1267 (= mapRes!1267 (and tp!60921 tp!60919))))

(declare-fun mapRest!1267 () (Array (_ BitVec 32) List!1826))

(declare-fun mapValue!1267 () List!1826)

(declare-fun mapKey!1267 () (_ BitVec 32))

(assert (=> mapNonEmpty!1267 (= (arr!527 (_values!599 (v!13173 (underlying!841 (v!13174 (underlying!842 (cache!768 cache!464))))))) (store mapRest!1267 mapKey!1267 mapValue!1267))))

(declare-fun b!112253 () Bool)

(declare-fun tp!60926 () Bool)

(assert (=> b!112253 (= e!63038 (and tp_is_empty!965 tp!60926))))

(declare-fun b!112254 () Bool)

(assert (=> b!112254 (= e!63043 e!63048)))

(declare-fun b!112255 () Bool)

(declare-fun tp!60915 () Bool)

(declare-fun tp!60917 () Bool)

(assert (=> b!112255 (= e!63041 (and tp!60915 tp!60917))))

(declare-fun b!112256 () Bool)

(declare-fun res!53847 () Bool)

(declare-fun e!63039 () Bool)

(assert (=> b!112256 (=> res!53847 e!63039)))

(declare-fun lt!32719 () Int)

(assert (=> b!112256 (= res!53847 (not (= 0 lt!32719)))))

(declare-fun b!112257 () Bool)

(declare-datatypes ((List!1827 0))(
  ( (Nil!1821) (Cons!1821 (h!7218 C!1832) (t!22304 List!1827)) )
))
(declare-fun input!6708 () List!1827)

(declare-fun lt!32721 () Int)

(declare-fun sizeTr!10 (List!1827 Int) Int)

(assert (=> b!112257 (= e!63039 (= (sizeTr!10 input!6708 0) lt!32721))))

(declare-fun b!112258 () Bool)

(assert (=> b!112258 (= e!63046 (not e!63039))))

(declare-fun res!53848 () Bool)

(assert (=> b!112258 (=> res!53848 e!63039)))

(declare-fun ++!304 (List!1827 List!1827) List!1827)

(assert (=> b!112258 (= res!53848 (not (= (++!304 Nil!1821 input!6708) input!6708)))))

(assert (=> b!112258 (= 0 lt!32719)))

(declare-fun size!1594 (List!1827) Int)

(assert (=> b!112258 (= lt!32719 (size!1594 Nil!1821))))

(declare-datatypes ((Unit!1298 0))(
  ( (Unit!1299) )
))
(declare-fun lt!32720 () Unit!1298)

(declare-fun lemmaSizeTrEqualsSize!10 (List!1827 Int) Unit!1298)

(assert (=> b!112258 (= lt!32720 (lemmaSizeTrEqualsSize!10 Nil!1821 0))))

(assert (=> b!112258 (= (sizeTr!10 input!6708 0) lt!32721)))

(assert (=> b!112258 (= lt!32721 (size!1594 input!6708))))

(declare-fun lt!32722 () Unit!1298)

(assert (=> b!112258 (= lt!32722 (lemmaSizeTrEqualsSize!10 input!6708 0))))

(assert (= (and start!11556 res!53846) b!112251))

(assert (= (and b!112251 res!53845) b!112258))

(assert (= (and b!112258 (not res!53848)) b!112256))

(assert (= (and b!112256 (not res!53847)) b!112257))

(assert (= (and start!11556 ((_ is ElementMatch!455) r!15516)) b!112246))

(assert (= (and start!11556 ((_ is Concat!839) r!15516)) b!112250))

(assert (= (and start!11556 ((_ is Star!455) r!15516)) b!112245))

(assert (= (and start!11556 ((_ is Union!455) r!15516)) b!112255))

(assert (= (and b!112249 condMapEmpty!1267) mapIsEmpty!1267))

(assert (= (and b!112249 (not condMapEmpty!1267)) mapNonEmpty!1267))

(assert (= b!112252 b!112249))

(assert (= b!112248 b!112252))

(assert (= b!112254 b!112248))

(assert (= (and b!112244 ((_ is LongMap!321) (v!13174 (underlying!842 (cache!768 cache!464))))) b!112254))

(assert (= b!112247 b!112244))

(assert (= (and b!112243 ((_ is HashMap!317) (cache!768 cache!464))) b!112247))

(assert (= start!11556 b!112243))

(assert (= (and start!11556 ((_ is Cons!1821) input!6708)) b!112253))

(declare-fun m!102186 () Bool)

(assert (=> b!112257 m!102186))

(declare-fun m!102188 () Bool)

(assert (=> mapNonEmpty!1267 m!102188))

(assert (=> b!112258 m!102186))

(declare-fun m!102190 () Bool)

(assert (=> b!112258 m!102190))

(declare-fun m!102192 () Bool)

(assert (=> b!112258 m!102192))

(declare-fun m!102194 () Bool)

(assert (=> b!112258 m!102194))

(declare-fun m!102196 () Bool)

(assert (=> b!112258 m!102196))

(declare-fun m!102198 () Bool)

(assert (=> b!112258 m!102198))

(declare-fun m!102200 () Bool)

(assert (=> start!11556 m!102200))

(declare-fun m!102202 () Bool)

(assert (=> start!11556 m!102202))

(declare-fun m!102204 () Bool)

(assert (=> b!112252 m!102204))

(declare-fun m!102206 () Bool)

(assert (=> b!112252 m!102206))

(declare-fun m!102208 () Bool)

(assert (=> b!112251 m!102208))

(check-sat (not b!112245) (not b_next!3513) b_and!5645 (not b!112257) (not b!112252) (not start!11556) (not b!112253) tp_is_empty!965 (not b_next!3515) (not b!112251) (not mapNonEmpty!1267) (not b!112249) b_and!5643 (not b!112250) (not b!112255) (not b!112258))
(check-sat b_and!5643 b_and!5645 (not b_next!3515) (not b_next!3513))
