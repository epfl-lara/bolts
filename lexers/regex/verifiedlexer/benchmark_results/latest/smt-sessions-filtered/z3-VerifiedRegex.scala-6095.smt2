; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296664 () Bool)

(assert start!296664)

(declare-fun b!3165888 () Bool)

(declare-fun b_free!83129 () Bool)

(declare-fun b_next!83833 () Bool)

(assert (=> b!3165888 (= b_free!83129 (not b_next!83833))))

(declare-fun tp!997619 () Bool)

(declare-fun b_and!209391 () Bool)

(assert (=> b!3165888 (= tp!997619 b_and!209391)))

(declare-fun b!3165881 () Bool)

(declare-fun b_free!83131 () Bool)

(declare-fun b_next!83835 () Bool)

(assert (=> b!3165881 (= b_free!83131 (not b_next!83835))))

(declare-fun tp!997612 () Bool)

(declare-fun b_and!209393 () Bool)

(assert (=> b!3165881 (= tp!997612 b_and!209393)))

(declare-fun b!3165874 () Bool)

(declare-fun e!1972108 () Bool)

(declare-fun e!1972104 () Bool)

(assert (=> b!3165874 (= e!1972108 e!1972104)))

(declare-fun b!3165875 () Bool)

(declare-fun e!1972107 () Bool)

(declare-fun tp!997613 () Bool)

(assert (=> b!3165875 (= e!1972107 tp!997613)))

(declare-fun b!3165876 () Bool)

(declare-fun e!1972111 () Bool)

(declare-fun e!1972112 () Bool)

(assert (=> b!3165876 (= e!1972111 e!1972112)))

(declare-fun b!3165877 () Bool)

(declare-fun res!1287981 () Bool)

(declare-fun e!1972105 () Bool)

(assert (=> b!3165877 (=> (not res!1287981) (not e!1972105))))

(declare-datatypes ((C!19668 0))(
  ( (C!19669 (val!11870 Int)) )
))
(declare-datatypes ((Regex!9741 0))(
  ( (ElementMatch!9741 (c!532401 C!19668)) (Concat!15062 (regOne!19994 Regex!9741) (regTwo!19994 Regex!9741)) (EmptyExpr!9741) (Star!9741 (reg!10070 Regex!9741)) (EmptyLang!9741) (Union!9741 (regOne!19995 Regex!9741) (regTwo!19995 Regex!9741)) )
))
(declare-fun r!13156 () Regex!9741)

(get-info :version)

(assert (=> b!3165877 (= res!1287981 (and (not ((_ is EmptyExpr!9741) r!13156)) (not ((_ is EmptyLang!9741) r!13156)) (not ((_ is ElementMatch!9741) r!13156)) ((_ is Union!9741) r!13156)))))

(declare-fun b!3165878 () Bool)

(declare-fun RegexPrimitiveSize!129 (Regex!9741) Int)

(assert (=> b!3165878 (= e!1972105 (>= (RegexPrimitiveSize!129 (regTwo!19995 r!13156)) (RegexPrimitiveSize!129 r!13156)))))

(declare-datatypes ((tuple2!34544 0))(
  ( (tuple2!34545 (_1!20404 Regex!9741) (_2!20404 C!19668)) )
))
(declare-datatypes ((tuple2!34546 0))(
  ( (tuple2!34547 (_1!20405 tuple2!34544) (_2!20405 Regex!9741)) )
))
(declare-datatypes ((array!14854 0))(
  ( (array!14855 (arr!6614 (Array (_ BitVec 32) (_ BitVec 64))) (size!26700 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4078 0))(
  ( (HashableExt!4077 (__x!22592 Int)) )
))
(declare-datatypes ((List!35574 0))(
  ( (Nil!35450) (Cons!35450 (h!40870 tuple2!34546) (t!234649 List!35574)) )
))
(declare-datatypes ((array!14856 0))(
  ( (array!14857 (arr!6615 (Array (_ BitVec 32) List!35574)) (size!26701 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8324 0))(
  ( (LongMapFixedSize!8325 (defaultEntry!4547 Int) (mask!10826 (_ BitVec 32)) (extraKeys!4411 (_ BitVec 32)) (zeroValue!4421 List!35574) (minValue!4421 List!35574) (_size!8367 (_ BitVec 32)) (_keys!4462 array!14854) (_values!4443 array!14856) (_vacant!4223 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16457 0))(
  ( (Cell!16458 (v!35138 LongMapFixedSize!8324)) )
))
(declare-datatypes ((MutLongMap!4162 0))(
  ( (LongMap!4162 (underlying!8553 Cell!16457)) (MutLongMapExt!4161 (__x!22593 Int)) )
))
(declare-datatypes ((Cell!16459 0))(
  ( (Cell!16460 (v!35139 MutLongMap!4162)) )
))
(declare-datatypes ((MutableMap!4068 0))(
  ( (MutableMapExt!4067 (__x!22594 Int)) (HashMap!4068 (underlying!8554 Cell!16459) (hashF!6110 Hashable!4078) (_size!8368 (_ BitVec 32)) (defaultValue!4239 Int)) )
))
(declare-datatypes ((Cache!406 0))(
  ( (Cache!407 (cache!4211 MutableMap!4068)) )
))
(declare-fun cache!347 () Cache!406)

(declare-datatypes ((tuple2!34548 0))(
  ( (tuple2!34549 (_1!20406 Regex!9741) (_2!20406 Cache!406)) )
))
(declare-fun lt!1064368 () tuple2!34548)

(declare-fun a!2409 () C!19668)

(declare-fun derivativeStepMem!29 (Regex!9741 C!19668 Cache!406) tuple2!34548)

(assert (=> b!3165878 (= lt!1064368 (derivativeStepMem!29 (regOne!19995 r!13156) a!2409 cache!347))))

(declare-fun mapIsEmpty!18874 () Bool)

(declare-fun mapRes!18874 () Bool)

(assert (=> mapIsEmpty!18874 mapRes!18874))

(declare-fun b!3165879 () Bool)

(declare-fun res!1287982 () Bool)

(assert (=> b!3165879 (=> (not res!1287982) (not e!1972105))))

(declare-datatypes ((Option!6903 0))(
  ( (None!6902) (Some!6902 (v!35140 Regex!9741)) )
))
(declare-fun get!11247 (Cache!406 Regex!9741 C!19668) Option!6903)

(assert (=> b!3165879 (= res!1287982 (not ((_ is Some!6902) (get!11247 cache!347 r!13156 a!2409))))))

(declare-fun b!3165880 () Bool)

(declare-fun e!1972109 () Bool)

(assert (=> b!3165880 (= e!1972104 e!1972109)))

(declare-fun mapNonEmpty!18874 () Bool)

(declare-fun tp!997616 () Bool)

(declare-fun tp!997610 () Bool)

(assert (=> mapNonEmpty!18874 (= mapRes!18874 (and tp!997616 tp!997610))))

(declare-fun mapValue!18874 () List!35574)

(declare-fun mapRest!18874 () (Array (_ BitVec 32) List!35574))

(declare-fun mapKey!18874 () (_ BitVec 32))

(assert (=> mapNonEmpty!18874 (= (arr!6615 (_values!4443 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347))))))) (store mapRest!18874 mapKey!18874 mapValue!18874))))

(declare-fun tp!997611 () Bool)

(declare-fun tp!997614 () Bool)

(declare-fun e!1972110 () Bool)

(declare-fun array_inv!4738 (array!14854) Bool)

(declare-fun array_inv!4739 (array!14856) Bool)

(assert (=> b!3165881 (= e!1972109 (and tp!997612 tp!997614 tp!997611 (array_inv!4738 (_keys!4462 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347))))))) (array_inv!4739 (_values!4443 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347))))))) e!1972110))))

(declare-fun b!3165882 () Bool)

(declare-fun tp!997615 () Bool)

(assert (=> b!3165882 (= e!1972110 (and tp!997615 mapRes!18874))))

(declare-fun condMapEmpty!18874 () Bool)

(declare-fun mapDefault!18874 () List!35574)

(assert (=> b!3165882 (= condMapEmpty!18874 (= (arr!6615 (_values!4443 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347))))))) ((as const (Array (_ BitVec 32) List!35574)) mapDefault!18874)))))

(declare-fun res!1287980 () Bool)

(assert (=> start!296664 (=> (not res!1287980) (not e!1972105))))

(declare-fun validRegex!4462 (Regex!9741) Bool)

(assert (=> start!296664 (= res!1287980 (validRegex!4462 r!13156))))

(assert (=> start!296664 e!1972105))

(assert (=> start!296664 e!1972107))

(declare-fun inv!48121 (Cache!406) Bool)

(assert (=> start!296664 (and (inv!48121 cache!347) e!1972111)))

(declare-fun tp_is_empty!17045 () Bool)

(assert (=> start!296664 tp_is_empty!17045))

(declare-fun b!3165883 () Bool)

(declare-fun tp!997609 () Bool)

(declare-fun tp!997617 () Bool)

(assert (=> b!3165883 (= e!1972107 (and tp!997609 tp!997617))))

(declare-fun b!3165884 () Bool)

(declare-fun e!1972106 () Bool)

(declare-fun lt!1064369 () MutLongMap!4162)

(assert (=> b!3165884 (= e!1972106 (and e!1972108 ((_ is LongMap!4162) lt!1064369)))))

(assert (=> b!3165884 (= lt!1064369 (v!35139 (underlying!8554 (cache!4211 cache!347))))))

(declare-fun b!3165885 () Bool)

(declare-fun res!1287979 () Bool)

(assert (=> b!3165885 (=> (not res!1287979) (not e!1972105))))

(declare-fun valid!3247 (Cache!406) Bool)

(assert (=> b!3165885 (= res!1287979 (valid!3247 cache!347))))

(declare-fun b!3165886 () Bool)

(declare-fun tp!997608 () Bool)

(declare-fun tp!997618 () Bool)

(assert (=> b!3165886 (= e!1972107 (and tp!997608 tp!997618))))

(declare-fun b!3165887 () Bool)

(assert (=> b!3165887 (= e!1972107 tp_is_empty!17045)))

(assert (=> b!3165888 (= e!1972112 (and e!1972106 tp!997619))))

(assert (= (and start!296664 res!1287980) b!3165885))

(assert (= (and b!3165885 res!1287979) b!3165879))

(assert (= (and b!3165879 res!1287982) b!3165877))

(assert (= (and b!3165877 res!1287981) b!3165878))

(assert (= (and start!296664 ((_ is ElementMatch!9741) r!13156)) b!3165887))

(assert (= (and start!296664 ((_ is Concat!15062) r!13156)) b!3165883))

(assert (= (and start!296664 ((_ is Star!9741) r!13156)) b!3165875))

(assert (= (and start!296664 ((_ is Union!9741) r!13156)) b!3165886))

(assert (= (and b!3165882 condMapEmpty!18874) mapIsEmpty!18874))

(assert (= (and b!3165882 (not condMapEmpty!18874)) mapNonEmpty!18874))

(assert (= b!3165881 b!3165882))

(assert (= b!3165880 b!3165881))

(assert (= b!3165874 b!3165880))

(assert (= (and b!3165884 ((_ is LongMap!4162) (v!35139 (underlying!8554 (cache!4211 cache!347))))) b!3165874))

(assert (= b!3165888 b!3165884))

(assert (= (and b!3165876 ((_ is HashMap!4068) (cache!4211 cache!347))) b!3165888))

(assert (= start!296664 b!3165876))

(declare-fun m!3427859 () Bool)

(assert (=> b!3165879 m!3427859))

(declare-fun m!3427861 () Bool)

(assert (=> b!3165878 m!3427861))

(declare-fun m!3427863 () Bool)

(assert (=> b!3165878 m!3427863))

(declare-fun m!3427865 () Bool)

(assert (=> b!3165878 m!3427865))

(declare-fun m!3427867 () Bool)

(assert (=> b!3165881 m!3427867))

(declare-fun m!3427869 () Bool)

(assert (=> b!3165881 m!3427869))

(declare-fun m!3427871 () Bool)

(assert (=> mapNonEmpty!18874 m!3427871))

(declare-fun m!3427873 () Bool)

(assert (=> start!296664 m!3427873))

(declare-fun m!3427875 () Bool)

(assert (=> start!296664 m!3427875))

(declare-fun m!3427877 () Bool)

(assert (=> b!3165885 m!3427877))

(check-sat (not b!3165882) b_and!209393 tp_is_empty!17045 (not b!3165878) (not b!3165881) (not b!3165875) b_and!209391 (not start!296664) (not b_next!83835) (not b!3165879) (not b!3165885) (not b!3165883) (not mapNonEmpty!18874) (not b_next!83833) (not b!3165886))
(check-sat b_and!209391 b_and!209393 (not b_next!83835) (not b_next!83833))
(get-model)

(declare-fun b!3165909 () Bool)

(declare-fun c!532412 () Bool)

(assert (=> b!3165909 (= c!532412 ((_ is EmptyExpr!9741) (regTwo!19995 r!13156)))))

(declare-fun e!1972124 () Int)

(declare-fun e!1972125 () Int)

(assert (=> b!3165909 (= e!1972124 e!1972125)))

(declare-fun b!3165910 () Bool)

(declare-fun e!1972128 () Int)

(declare-fun call!229528 () Int)

(declare-fun call!229529 () Int)

(assert (=> b!3165910 (= e!1972128 (+ 1 call!229528 call!229529))))

(declare-fun bm!229523 () Bool)

(declare-fun call!229530 () Int)

(assert (=> bm!229523 (= call!229529 call!229530)))

(declare-fun c!532415 () Bool)

(declare-fun c!532416 () Bool)

(declare-fun bm!229524 () Bool)

(assert (=> bm!229524 (= call!229530 (RegexPrimitiveSize!129 (ite c!532416 (regTwo!19994 (regTwo!19995 r!13156)) (ite c!532415 (reg!10070 (regTwo!19995 r!13156)) (regTwo!19995 (regTwo!19995 r!13156))))))))

(declare-fun b!3165911 () Bool)

(declare-fun c!532414 () Bool)

(assert (=> b!3165911 (= c!532414 ((_ is EmptyLang!9741) (regTwo!19995 r!13156)))))

(declare-fun e!1972126 () Int)

(assert (=> b!3165911 (= e!1972126 e!1972128)))

(declare-fun b!3165912 () Bool)

(assert (=> b!3165912 (= e!1972125 0)))

(declare-fun b!3165913 () Bool)

(assert (=> b!3165913 (= e!1972128 0)))

(declare-fun b!3165914 () Bool)

(assert (=> b!3165914 (= e!1972125 e!1972126)))

(assert (=> b!3165914 (= c!532415 ((_ is Star!9741) (regTwo!19995 r!13156)))))

(declare-fun b!3165915 () Bool)

(declare-fun e!1972127 () Int)

(assert (=> b!3165915 (= e!1972127 1)))

(declare-fun d!868828 () Bool)

(declare-fun lt!1064372 () Int)

(assert (=> d!868828 (>= lt!1064372 0)))

(assert (=> d!868828 (= lt!1064372 e!1972127)))

(declare-fun c!532413 () Bool)

(assert (=> d!868828 (= c!532413 ((_ is ElementMatch!9741) (regTwo!19995 r!13156)))))

(assert (=> d!868828 (= (RegexPrimitiveSize!129 (regTwo!19995 r!13156)) lt!1064372)))

(declare-fun bm!229525 () Bool)

(assert (=> bm!229525 (= call!229528 (RegexPrimitiveSize!129 (ite c!532416 (regOne!19994 (regTwo!19995 r!13156)) (regOne!19995 (regTwo!19995 r!13156)))))))

(declare-fun b!3165916 () Bool)

(assert (=> b!3165916 (= e!1972127 e!1972124)))

(assert (=> b!3165916 (= c!532416 ((_ is Concat!15062) (regTwo!19995 r!13156)))))

(declare-fun b!3165917 () Bool)

(assert (=> b!3165917 (= e!1972126 (+ 1 call!229529))))

(declare-fun b!3165918 () Bool)

(assert (=> b!3165918 (= e!1972124 (+ 1 call!229528 call!229530))))

(assert (= (and d!868828 c!532413) b!3165915))

(assert (= (and d!868828 (not c!532413)) b!3165916))

(assert (= (and b!3165916 c!532416) b!3165918))

(assert (= (and b!3165916 (not c!532416)) b!3165909))

(assert (= (and b!3165909 c!532412) b!3165912))

(assert (= (and b!3165909 (not c!532412)) b!3165914))

(assert (= (and b!3165914 c!532415) b!3165917))

(assert (= (and b!3165914 (not c!532415)) b!3165911))

(assert (= (and b!3165911 c!532414) b!3165913))

(assert (= (and b!3165911 (not c!532414)) b!3165910))

(assert (= (or b!3165917 b!3165910) bm!229523))

(assert (= (or b!3165918 bm!229523) bm!229524))

(assert (= (or b!3165918 b!3165910) bm!229525))

(declare-fun m!3427879 () Bool)

(assert (=> bm!229524 m!3427879))

(declare-fun m!3427881 () Bool)

(assert (=> bm!229525 m!3427881))

(assert (=> b!3165878 d!868828))

(declare-fun b!3165919 () Bool)

(declare-fun c!532417 () Bool)

(assert (=> b!3165919 (= c!532417 ((_ is EmptyExpr!9741) r!13156))))

(declare-fun e!1972129 () Int)

(declare-fun e!1972130 () Int)

(assert (=> b!3165919 (= e!1972129 e!1972130)))

(declare-fun b!3165920 () Bool)

(declare-fun e!1972133 () Int)

(declare-fun call!229531 () Int)

(declare-fun call!229532 () Int)

(assert (=> b!3165920 (= e!1972133 (+ 1 call!229531 call!229532))))

(declare-fun bm!229526 () Bool)

(declare-fun call!229533 () Int)

(assert (=> bm!229526 (= call!229532 call!229533)))

(declare-fun bm!229527 () Bool)

(declare-fun c!532421 () Bool)

(declare-fun c!532420 () Bool)

(assert (=> bm!229527 (= call!229533 (RegexPrimitiveSize!129 (ite c!532421 (regTwo!19994 r!13156) (ite c!532420 (reg!10070 r!13156) (regTwo!19995 r!13156)))))))

(declare-fun b!3165921 () Bool)

(declare-fun c!532419 () Bool)

(assert (=> b!3165921 (= c!532419 ((_ is EmptyLang!9741) r!13156))))

(declare-fun e!1972131 () Int)

(assert (=> b!3165921 (= e!1972131 e!1972133)))

(declare-fun b!3165922 () Bool)

(assert (=> b!3165922 (= e!1972130 0)))

(declare-fun b!3165923 () Bool)

(assert (=> b!3165923 (= e!1972133 0)))

(declare-fun b!3165924 () Bool)

(assert (=> b!3165924 (= e!1972130 e!1972131)))

(assert (=> b!3165924 (= c!532420 ((_ is Star!9741) r!13156))))

(declare-fun b!3165925 () Bool)

(declare-fun e!1972132 () Int)

(assert (=> b!3165925 (= e!1972132 1)))

(declare-fun d!868830 () Bool)

(declare-fun lt!1064373 () Int)

(assert (=> d!868830 (>= lt!1064373 0)))

(assert (=> d!868830 (= lt!1064373 e!1972132)))

(declare-fun c!532418 () Bool)

(assert (=> d!868830 (= c!532418 ((_ is ElementMatch!9741) r!13156))))

(assert (=> d!868830 (= (RegexPrimitiveSize!129 r!13156) lt!1064373)))

(declare-fun bm!229528 () Bool)

(assert (=> bm!229528 (= call!229531 (RegexPrimitiveSize!129 (ite c!532421 (regOne!19994 r!13156) (regOne!19995 r!13156))))))

(declare-fun b!3165926 () Bool)

(assert (=> b!3165926 (= e!1972132 e!1972129)))

(assert (=> b!3165926 (= c!532421 ((_ is Concat!15062) r!13156))))

(declare-fun b!3165927 () Bool)

(assert (=> b!3165927 (= e!1972131 (+ 1 call!229532))))

(declare-fun b!3165928 () Bool)

(assert (=> b!3165928 (= e!1972129 (+ 1 call!229531 call!229533))))

(assert (= (and d!868830 c!532418) b!3165925))

(assert (= (and d!868830 (not c!532418)) b!3165926))

(assert (= (and b!3165926 c!532421) b!3165928))

(assert (= (and b!3165926 (not c!532421)) b!3165919))

(assert (= (and b!3165919 c!532417) b!3165922))

(assert (= (and b!3165919 (not c!532417)) b!3165924))

(assert (= (and b!3165924 c!532420) b!3165927))

(assert (= (and b!3165924 (not c!532420)) b!3165921))

(assert (= (and b!3165921 c!532419) b!3165923))

(assert (= (and b!3165921 (not c!532419)) b!3165920))

(assert (= (or b!3165927 b!3165920) bm!229526))

(assert (= (or b!3165928 bm!229526) bm!229527))

(assert (= (or b!3165928 b!3165920) bm!229528))

(declare-fun m!3427883 () Bool)

(assert (=> bm!229527 m!3427883))

(declare-fun m!3427885 () Bool)

(assert (=> bm!229528 m!3427885))

(assert (=> b!3165878 d!868830))

(declare-fun c!532436 () Bool)

(declare-fun call!229543 () tuple2!34548)

(declare-fun c!532437 () Bool)

(declare-fun bm!229537 () Bool)

(declare-fun lt!1064397 () tuple2!34548)

(declare-fun c!532435 () Bool)

(declare-fun lt!1064393 () tuple2!34548)

(assert (=> bm!229537 (= call!229543 (derivativeStepMem!29 (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))) a!2409 (ite c!532437 (_2!20406 lt!1064393) (ite c!532435 cache!347 (ite c!532436 (_2!20406 lt!1064397) cache!347)))))))

(declare-fun b!3165953 () Bool)

(declare-fun e!1972148 () tuple2!34548)

(assert (=> b!3165953 (= e!1972148 (tuple2!34549 EmptyLang!9741 cache!347))))

(declare-fun b!3165954 () Bool)

(declare-fun lt!1064395 () tuple2!34548)

(declare-fun call!229544 () tuple2!34548)

(assert (=> b!3165954 (= lt!1064395 call!229544)))

(declare-fun e!1972146 () tuple2!34548)

(assert (=> b!3165954 (= e!1972146 (tuple2!34549 (Union!9741 (Concat!15062 (_1!20406 lt!1064395) (regTwo!19994 (regOne!19995 r!13156))) EmptyLang!9741) (_2!20406 lt!1064395)))))

(declare-fun b!3165955 () Bool)

(declare-fun e!1972147 () tuple2!34548)

(declare-fun lt!1064398 () Option!6903)

(assert (=> b!3165955 (= e!1972147 (tuple2!34549 (v!35140 lt!1064398) cache!347))))

(declare-fun lt!1064399 () tuple2!34548)

(declare-fun b!3165956 () Bool)

(declare-datatypes ((Unit!49822 0))(
  ( (Unit!49823) )
))
(declare-datatypes ((tuple2!34550 0))(
  ( (tuple2!34551 (_1!20407 Unit!49822) (_2!20407 Cache!406)) )
))
(declare-fun update!267 (Cache!406 Regex!9741 C!19668 Regex!9741) tuple2!34550)

(assert (=> b!3165956 (= e!1972147 (tuple2!34549 (_1!20406 lt!1064399) (_2!20407 (update!267 (_2!20406 lt!1064399) (regOne!19995 r!13156) a!2409 (_1!20406 lt!1064399)))))))

(declare-fun c!532439 () Bool)

(assert (=> b!3165956 (= c!532439 (or ((_ is EmptyExpr!9741) (regOne!19995 r!13156)) ((_ is EmptyLang!9741) (regOne!19995 r!13156))))))

(assert (=> b!3165956 (= lt!1064399 e!1972148)))

(declare-fun d!868832 () Bool)

(declare-fun lt!1064400 () tuple2!34548)

(declare-fun derivativeStep!2891 (Regex!9741 C!19668) Regex!9741)

(assert (=> d!868832 (= (_1!20406 lt!1064400) (derivativeStep!2891 (regOne!19995 r!13156) a!2409))))

(assert (=> d!868832 (= lt!1064400 e!1972147)))

(declare-fun c!532438 () Bool)

(assert (=> d!868832 (= c!532438 ((_ is Some!6902) lt!1064398))))

(assert (=> d!868832 (= lt!1064398 (get!11247 cache!347 (regOne!19995 r!13156) a!2409))))

(assert (=> d!868832 (validRegex!4462 (regOne!19995 r!13156))))

(assert (=> d!868832 (= (derivativeStepMem!29 (regOne!19995 r!13156) a!2409 cache!347) lt!1064400)))

(declare-fun bm!229538 () Bool)

(declare-fun call!229545 () tuple2!34548)

(assert (=> bm!229538 (= call!229545 call!229543)))

(declare-fun b!3165957 () Bool)

(declare-fun c!532434 () Bool)

(assert (=> b!3165957 (= c!532434 ((_ is ElementMatch!9741) (regOne!19995 r!13156)))))

(declare-fun e!1972151 () tuple2!34548)

(assert (=> b!3165957 (= e!1972148 e!1972151)))

(declare-fun b!3165958 () Bool)

(assert (=> b!3165958 (= c!532435 ((_ is Star!9741) (regOne!19995 r!13156)))))

(declare-fun e!1972149 () tuple2!34548)

(declare-fun e!1972150 () tuple2!34548)

(assert (=> b!3165958 (= e!1972149 e!1972150)))

(declare-fun bm!229539 () Bool)

(assert (=> bm!229539 (= call!229544 call!229545)))

(declare-fun call!229542 () tuple2!34548)

(declare-fun bm!229540 () Bool)

(assert (=> bm!229540 (= call!229542 (derivativeStepMem!29 (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))) a!2409 cache!347))))

(declare-fun b!3165959 () Bool)

(assert (=> b!3165959 (= e!1972151 e!1972149)))

(assert (=> b!3165959 (= c!532437 ((_ is Union!9741) (regOne!19995 r!13156)))))

(declare-fun b!3165960 () Bool)

(declare-fun lt!1064392 () tuple2!34548)

(assert (=> b!3165960 (= e!1972150 (tuple2!34549 (Concat!15062 (_1!20406 lt!1064392) (Star!9741 (reg!10070 (regOne!19995 r!13156)))) (_2!20406 lt!1064392)))))

(assert (=> b!3165960 (= lt!1064392 call!229545)))

(declare-fun b!3165961 () Bool)

(declare-fun lt!1064394 () tuple2!34548)

(assert (=> b!3165961 (= lt!1064394 call!229544)))

(assert (=> b!3165961 (= lt!1064397 call!229542)))

(assert (=> b!3165961 (= e!1972146 (tuple2!34549 (Union!9741 (Concat!15062 (_1!20406 lt!1064397) (regTwo!19994 (regOne!19995 r!13156))) (_1!20406 lt!1064394)) (_2!20406 lt!1064394)))))

(declare-fun b!3165962 () Bool)

(assert (=> b!3165962 (= e!1972151 (tuple2!34549 (ite (= a!2409 (c!532401 (regOne!19995 r!13156))) EmptyExpr!9741 EmptyLang!9741) cache!347))))

(declare-fun b!3165963 () Bool)

(assert (=> b!3165963 (= e!1972150 e!1972146)))

(declare-fun nullable!3344 (Regex!9741) Bool)

(assert (=> b!3165963 (= c!532436 (nullable!3344 (regOne!19994 (regOne!19995 r!13156))))))

(declare-fun b!3165964 () Bool)

(declare-fun lt!1064396 () tuple2!34548)

(assert (=> b!3165964 (= lt!1064396 call!229543)))

(assert (=> b!3165964 (= lt!1064393 call!229542)))

(assert (=> b!3165964 (= e!1972149 (tuple2!34549 (Union!9741 (_1!20406 lt!1064393) (_1!20406 lt!1064396)) (_2!20406 lt!1064396)))))

(assert (= (and d!868832 c!532438) b!3165955))

(assert (= (and d!868832 (not c!532438)) b!3165956))

(assert (= (and b!3165956 c!532439) b!3165953))

(assert (= (and b!3165956 (not c!532439)) b!3165957))

(assert (= (and b!3165957 c!532434) b!3165962))

(assert (= (and b!3165957 (not c!532434)) b!3165959))

(assert (= (and b!3165959 c!532437) b!3165964))

(assert (= (and b!3165959 (not c!532437)) b!3165958))

(assert (= (and b!3165958 c!532435) b!3165960))

(assert (= (and b!3165958 (not c!532435)) b!3165963))

(assert (= (and b!3165963 c!532436) b!3165961))

(assert (= (and b!3165963 (not c!532436)) b!3165954))

(assert (= (or b!3165961 b!3165954) bm!229539))

(assert (= (or b!3165960 bm!229539) bm!229538))

(assert (= (or b!3165964 b!3165961) bm!229540))

(assert (= (or b!3165964 bm!229538) bm!229537))

(declare-fun m!3427887 () Bool)

(assert (=> d!868832 m!3427887))

(declare-fun m!3427889 () Bool)

(assert (=> d!868832 m!3427889))

(declare-fun m!3427891 () Bool)

(assert (=> d!868832 m!3427891))

(declare-fun m!3427893 () Bool)

(assert (=> bm!229540 m!3427893))

(declare-fun m!3427895 () Bool)

(assert (=> b!3165963 m!3427895))

(declare-fun m!3427897 () Bool)

(assert (=> b!3165956 m!3427897))

(declare-fun m!3427899 () Bool)

(assert (=> bm!229537 m!3427899))

(assert (=> b!3165878 d!868832))

(declare-fun d!868834 () Bool)

(assert (=> d!868834 (= (array_inv!4738 (_keys!4462 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347))))))) (bvsge (size!26700 (_keys!4462 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3165881 d!868834))

(declare-fun d!868836 () Bool)

(assert (=> d!868836 (= (array_inv!4739 (_values!4443 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347))))))) (bvsge (size!26701 (_values!4443 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3165881 d!868836))

(declare-fun b!3165983 () Bool)

(declare-fun e!1972168 () Bool)

(declare-fun e!1972166 () Bool)

(assert (=> b!3165983 (= e!1972168 e!1972166)))

(declare-fun res!1287997 () Bool)

(assert (=> b!3165983 (=> (not res!1287997) (not e!1972166))))

(declare-fun call!229554 () Bool)

(assert (=> b!3165983 (= res!1287997 call!229554)))

(declare-fun b!3165984 () Bool)

(declare-fun res!1287994 () Bool)

(declare-fun e!1972170 () Bool)

(assert (=> b!3165984 (=> (not res!1287994) (not e!1972170))))

(assert (=> b!3165984 (= res!1287994 call!229554)))

(declare-fun e!1972167 () Bool)

(assert (=> b!3165984 (= e!1972167 e!1972170)))

(declare-fun bm!229547 () Bool)

(declare-fun call!229552 () Bool)

(declare-fun c!532444 () Bool)

(assert (=> bm!229547 (= call!229552 (validRegex!4462 (ite c!532444 (regTwo!19995 r!13156) (regTwo!19994 r!13156))))))

(declare-fun c!532445 () Bool)

(declare-fun bm!229548 () Bool)

(declare-fun call!229553 () Bool)

(assert (=> bm!229548 (= call!229553 (validRegex!4462 (ite c!532445 (reg!10070 r!13156) (ite c!532444 (regOne!19995 r!13156) (regOne!19994 r!13156)))))))

(declare-fun d!868838 () Bool)

(declare-fun res!1287993 () Bool)

(declare-fun e!1972171 () Bool)

(assert (=> d!868838 (=> res!1287993 e!1972171)))

(assert (=> d!868838 (= res!1287993 ((_ is ElementMatch!9741) r!13156))))

(assert (=> d!868838 (= (validRegex!4462 r!13156) e!1972171)))

(declare-fun b!3165985 () Bool)

(declare-fun res!1287995 () Bool)

(assert (=> b!3165985 (=> res!1287995 e!1972168)))

(assert (=> b!3165985 (= res!1287995 (not ((_ is Concat!15062) r!13156)))))

(assert (=> b!3165985 (= e!1972167 e!1972168)))

(declare-fun bm!229549 () Bool)

(assert (=> bm!229549 (= call!229554 call!229553)))

(declare-fun b!3165986 () Bool)

(assert (=> b!3165986 (= e!1972166 call!229552)))

(declare-fun b!3165987 () Bool)

(declare-fun e!1972169 () Bool)

(assert (=> b!3165987 (= e!1972171 e!1972169)))

(assert (=> b!3165987 (= c!532445 ((_ is Star!9741) r!13156))))

(declare-fun b!3165988 () Bool)

(assert (=> b!3165988 (= e!1972169 e!1972167)))

(assert (=> b!3165988 (= c!532444 ((_ is Union!9741) r!13156))))

(declare-fun b!3165989 () Bool)

(declare-fun e!1972172 () Bool)

(assert (=> b!3165989 (= e!1972169 e!1972172)))

(declare-fun res!1287996 () Bool)

(assert (=> b!3165989 (= res!1287996 (not (nullable!3344 (reg!10070 r!13156))))))

(assert (=> b!3165989 (=> (not res!1287996) (not e!1972172))))

(declare-fun b!3165990 () Bool)

(assert (=> b!3165990 (= e!1972172 call!229553)))

(declare-fun b!3165991 () Bool)

(assert (=> b!3165991 (= e!1972170 call!229552)))

(assert (= (and d!868838 (not res!1287993)) b!3165987))

(assert (= (and b!3165987 c!532445) b!3165989))

(assert (= (and b!3165987 (not c!532445)) b!3165988))

(assert (= (and b!3165989 res!1287996) b!3165990))

(assert (= (and b!3165988 c!532444) b!3165984))

(assert (= (and b!3165988 (not c!532444)) b!3165985))

(assert (= (and b!3165984 res!1287994) b!3165991))

(assert (= (and b!3165985 (not res!1287995)) b!3165983))

(assert (= (and b!3165983 res!1287997) b!3165986))

(assert (= (or b!3165984 b!3165983) bm!229549))

(assert (= (or b!3165991 b!3165986) bm!229547))

(assert (= (or b!3165990 bm!229549) bm!229548))

(declare-fun m!3427901 () Bool)

(assert (=> bm!229547 m!3427901))

(declare-fun m!3427903 () Bool)

(assert (=> bm!229548 m!3427903))

(declare-fun m!3427905 () Bool)

(assert (=> b!3165989 m!3427905))

(assert (=> start!296664 d!868838))

(declare-fun d!868840 () Bool)

(declare-fun res!1288000 () Bool)

(declare-fun e!1972175 () Bool)

(assert (=> d!868840 (=> (not res!1288000) (not e!1972175))))

(assert (=> d!868840 (= res!1288000 ((_ is HashMap!4068) (cache!4211 cache!347)))))

(assert (=> d!868840 (= (inv!48121 cache!347) e!1972175)))

(declare-fun b!3165994 () Bool)

(declare-fun validCacheMap!58 (MutableMap!4068) Bool)

(assert (=> b!3165994 (= e!1972175 (validCacheMap!58 (cache!4211 cache!347)))))

(assert (= (and d!868840 res!1288000) b!3165994))

(declare-fun m!3427907 () Bool)

(assert (=> b!3165994 m!3427907))

(assert (=> start!296664 d!868840))

(declare-fun d!868842 () Bool)

(declare-fun e!1972180 () Bool)

(assert (=> d!868842 e!1972180))

(declare-fun res!1288003 () Bool)

(assert (=> d!868842 (=> res!1288003 e!1972180)))

(declare-fun lt!1064406 () Option!6903)

(declare-fun isEmpty!19757 (Option!6903) Bool)

(assert (=> d!868842 (= res!1288003 (isEmpty!19757 lt!1064406))))

(declare-fun e!1972181 () Option!6903)

(assert (=> d!868842 (= lt!1064406 e!1972181)))

(declare-fun c!532449 () Bool)

(declare-fun contains!6172 (MutableMap!4068 tuple2!34544) Bool)

(assert (=> d!868842 (= c!532449 (contains!6172 (cache!4211 cache!347) (tuple2!34545 r!13156 a!2409)))))

(assert (=> d!868842 (validRegex!4462 r!13156)))

(assert (=> d!868842 (= (get!11247 cache!347 r!13156 a!2409) lt!1064406)))

(declare-fun b!3166001 () Bool)

(declare-fun apply!7949 (MutableMap!4068 tuple2!34544) Regex!9741)

(assert (=> b!3166001 (= e!1972181 (Some!6902 (apply!7949 (cache!4211 cache!347) (tuple2!34545 r!13156 a!2409))))))

(declare-fun lt!1064405 () Unit!49822)

(declare-fun lemmaIfInCacheThenValid!55 (Cache!406 Regex!9741 C!19668) Unit!49822)

(assert (=> b!3166001 (= lt!1064405 (lemmaIfInCacheThenValid!55 cache!347 r!13156 a!2409))))

(declare-fun b!3166002 () Bool)

(assert (=> b!3166002 (= e!1972181 None!6902)))

(declare-fun b!3166003 () Bool)

(declare-fun get!11248 (Option!6903) Regex!9741)

(assert (=> b!3166003 (= e!1972180 (= (get!11248 lt!1064406) (derivativeStep!2891 r!13156 a!2409)))))

(assert (= (and d!868842 c!532449) b!3166001))

(assert (= (and d!868842 (not c!532449)) b!3166002))

(assert (= (and d!868842 (not res!1288003)) b!3166003))

(declare-fun m!3427909 () Bool)

(assert (=> d!868842 m!3427909))

(declare-fun m!3427911 () Bool)

(assert (=> d!868842 m!3427911))

(assert (=> d!868842 m!3427873))

(declare-fun m!3427913 () Bool)

(assert (=> b!3166001 m!3427913))

(declare-fun m!3427915 () Bool)

(assert (=> b!3166001 m!3427915))

(declare-fun m!3427917 () Bool)

(assert (=> b!3166003 m!3427917))

(declare-fun m!3427919 () Bool)

(assert (=> b!3166003 m!3427919))

(assert (=> b!3165879 d!868842))

(declare-fun d!868844 () Bool)

(assert (=> d!868844 (= (valid!3247 cache!347) (validCacheMap!58 (cache!4211 cache!347)))))

(declare-fun bs!539518 () Bool)

(assert (= bs!539518 d!868844))

(assert (=> bs!539518 m!3427907))

(assert (=> b!3165885 d!868844))

(declare-fun tp!997628 () Bool)

(declare-fun tp!997627 () Bool)

(declare-fun e!1972184 () Bool)

(declare-fun tp!997626 () Bool)

(declare-fun b!3166008 () Bool)

(assert (=> b!3166008 (= e!1972184 (and tp!997626 tp_is_empty!17045 tp!997627 tp!997628))))

(assert (=> b!3165881 (= tp!997614 e!1972184)))

(assert (= (and b!3165881 ((_ is Cons!35450) (zeroValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347)))))))) b!3166008))

(declare-fun e!1972185 () Bool)

(declare-fun tp!997629 () Bool)

(declare-fun tp!997631 () Bool)

(declare-fun tp!997630 () Bool)

(declare-fun b!3166009 () Bool)

(assert (=> b!3166009 (= e!1972185 (and tp!997629 tp_is_empty!17045 tp!997630 tp!997631))))

(assert (=> b!3165881 (= tp!997611 e!1972185)))

(assert (= (and b!3165881 ((_ is Cons!35450) (minValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347)))))))) b!3166009))

(declare-fun e!1972188 () Bool)

(assert (=> b!3165886 (= tp!997608 e!1972188)))

(declare-fun b!3166021 () Bool)

(declare-fun tp!997645 () Bool)

(declare-fun tp!997643 () Bool)

(assert (=> b!3166021 (= e!1972188 (and tp!997645 tp!997643))))

(declare-fun b!3166022 () Bool)

(declare-fun tp!997642 () Bool)

(assert (=> b!3166022 (= e!1972188 tp!997642)))

(declare-fun b!3166020 () Bool)

(assert (=> b!3166020 (= e!1972188 tp_is_empty!17045)))

(declare-fun b!3166023 () Bool)

(declare-fun tp!997644 () Bool)

(declare-fun tp!997646 () Bool)

(assert (=> b!3166023 (= e!1972188 (and tp!997644 tp!997646))))

(assert (= (and b!3165886 ((_ is ElementMatch!9741) (regOne!19995 r!13156))) b!3166020))

(assert (= (and b!3165886 ((_ is Concat!15062) (regOne!19995 r!13156))) b!3166021))

(assert (= (and b!3165886 ((_ is Star!9741) (regOne!19995 r!13156))) b!3166022))

(assert (= (and b!3165886 ((_ is Union!9741) (regOne!19995 r!13156))) b!3166023))

(declare-fun e!1972189 () Bool)

(assert (=> b!3165886 (= tp!997618 e!1972189)))

(declare-fun b!3166025 () Bool)

(declare-fun tp!997650 () Bool)

(declare-fun tp!997648 () Bool)

(assert (=> b!3166025 (= e!1972189 (and tp!997650 tp!997648))))

(declare-fun b!3166026 () Bool)

(declare-fun tp!997647 () Bool)

(assert (=> b!3166026 (= e!1972189 tp!997647)))

(declare-fun b!3166024 () Bool)

(assert (=> b!3166024 (= e!1972189 tp_is_empty!17045)))

(declare-fun b!3166027 () Bool)

(declare-fun tp!997649 () Bool)

(declare-fun tp!997651 () Bool)

(assert (=> b!3166027 (= e!1972189 (and tp!997649 tp!997651))))

(assert (= (and b!3165886 ((_ is ElementMatch!9741) (regTwo!19995 r!13156))) b!3166024))

(assert (= (and b!3165886 ((_ is Concat!15062) (regTwo!19995 r!13156))) b!3166025))

(assert (= (and b!3165886 ((_ is Star!9741) (regTwo!19995 r!13156))) b!3166026))

(assert (= (and b!3165886 ((_ is Union!9741) (regTwo!19995 r!13156))) b!3166027))

(declare-fun e!1972190 () Bool)

(assert (=> b!3165883 (= tp!997609 e!1972190)))

(declare-fun b!3166029 () Bool)

(declare-fun tp!997655 () Bool)

(declare-fun tp!997653 () Bool)

(assert (=> b!3166029 (= e!1972190 (and tp!997655 tp!997653))))

(declare-fun b!3166030 () Bool)

(declare-fun tp!997652 () Bool)

(assert (=> b!3166030 (= e!1972190 tp!997652)))

(declare-fun b!3166028 () Bool)

(assert (=> b!3166028 (= e!1972190 tp_is_empty!17045)))

(declare-fun b!3166031 () Bool)

(declare-fun tp!997654 () Bool)

(declare-fun tp!997656 () Bool)

(assert (=> b!3166031 (= e!1972190 (and tp!997654 tp!997656))))

(assert (= (and b!3165883 ((_ is ElementMatch!9741) (regOne!19994 r!13156))) b!3166028))

(assert (= (and b!3165883 ((_ is Concat!15062) (regOne!19994 r!13156))) b!3166029))

(assert (= (and b!3165883 ((_ is Star!9741) (regOne!19994 r!13156))) b!3166030))

(assert (= (and b!3165883 ((_ is Union!9741) (regOne!19994 r!13156))) b!3166031))

(declare-fun e!1972191 () Bool)

(assert (=> b!3165883 (= tp!997617 e!1972191)))

(declare-fun b!3166033 () Bool)

(declare-fun tp!997660 () Bool)

(declare-fun tp!997658 () Bool)

(assert (=> b!3166033 (= e!1972191 (and tp!997660 tp!997658))))

(declare-fun b!3166034 () Bool)

(declare-fun tp!997657 () Bool)

(assert (=> b!3166034 (= e!1972191 tp!997657)))

(declare-fun b!3166032 () Bool)

(assert (=> b!3166032 (= e!1972191 tp_is_empty!17045)))

(declare-fun b!3166035 () Bool)

(declare-fun tp!997659 () Bool)

(declare-fun tp!997661 () Bool)

(assert (=> b!3166035 (= e!1972191 (and tp!997659 tp!997661))))

(assert (= (and b!3165883 ((_ is ElementMatch!9741) (regTwo!19994 r!13156))) b!3166032))

(assert (= (and b!3165883 ((_ is Concat!15062) (regTwo!19994 r!13156))) b!3166033))

(assert (= (and b!3165883 ((_ is Star!9741) (regTwo!19994 r!13156))) b!3166034))

(assert (= (and b!3165883 ((_ is Union!9741) (regTwo!19994 r!13156))) b!3166035))

(declare-fun tp!997664 () Bool)

(declare-fun tp!997663 () Bool)

(declare-fun e!1972192 () Bool)

(declare-fun b!3166036 () Bool)

(declare-fun tp!997662 () Bool)

(assert (=> b!3166036 (= e!1972192 (and tp!997662 tp_is_empty!17045 tp!997663 tp!997664))))

(assert (=> b!3165882 (= tp!997615 e!1972192)))

(assert (= (and b!3165882 ((_ is Cons!35450) mapDefault!18874)) b!3166036))

(declare-fun e!1972193 () Bool)

(assert (=> b!3165875 (= tp!997613 e!1972193)))

(declare-fun b!3166038 () Bool)

(declare-fun tp!997668 () Bool)

(declare-fun tp!997666 () Bool)

(assert (=> b!3166038 (= e!1972193 (and tp!997668 tp!997666))))

(declare-fun b!3166039 () Bool)

(declare-fun tp!997665 () Bool)

(assert (=> b!3166039 (= e!1972193 tp!997665)))

(declare-fun b!3166037 () Bool)

(assert (=> b!3166037 (= e!1972193 tp_is_empty!17045)))

(declare-fun b!3166040 () Bool)

(declare-fun tp!997667 () Bool)

(declare-fun tp!997669 () Bool)

(assert (=> b!3166040 (= e!1972193 (and tp!997667 tp!997669))))

(assert (= (and b!3165875 ((_ is ElementMatch!9741) (reg!10070 r!13156))) b!3166037))

(assert (= (and b!3165875 ((_ is Concat!15062) (reg!10070 r!13156))) b!3166038))

(assert (= (and b!3165875 ((_ is Star!9741) (reg!10070 r!13156))) b!3166039))

(assert (= (and b!3165875 ((_ is Union!9741) (reg!10070 r!13156))) b!3166040))

(declare-fun mapNonEmpty!18877 () Bool)

(declare-fun mapRes!18877 () Bool)

(declare-fun tp!997685 () Bool)

(declare-fun e!1972198 () Bool)

(assert (=> mapNonEmpty!18877 (= mapRes!18877 (and tp!997685 e!1972198))))

(declare-fun mapRest!18877 () (Array (_ BitVec 32) List!35574))

(declare-fun mapValue!18877 () List!35574)

(declare-fun mapKey!18877 () (_ BitVec 32))

(assert (=> mapNonEmpty!18877 (= mapRest!18874 (store mapRest!18877 mapKey!18877 mapValue!18877))))

(declare-fun condMapEmpty!18877 () Bool)

(declare-fun mapDefault!18877 () List!35574)

(assert (=> mapNonEmpty!18874 (= condMapEmpty!18877 (= mapRest!18874 ((as const (Array (_ BitVec 32) List!35574)) mapDefault!18877)))))

(declare-fun e!1972199 () Bool)

(assert (=> mapNonEmpty!18874 (= tp!997616 (and e!1972199 mapRes!18877))))

(declare-fun mapIsEmpty!18877 () Bool)

(assert (=> mapIsEmpty!18877 mapRes!18877))

(declare-fun b!3166047 () Bool)

(declare-fun tp!997689 () Bool)

(declare-fun tp!997686 () Bool)

(declare-fun tp!997690 () Bool)

(assert (=> b!3166047 (= e!1972198 (and tp!997686 tp_is_empty!17045 tp!997690 tp!997689))))

(declare-fun b!3166048 () Bool)

(declare-fun tp!997684 () Bool)

(declare-fun tp!997687 () Bool)

(declare-fun tp!997688 () Bool)

(assert (=> b!3166048 (= e!1972199 (and tp!997687 tp_is_empty!17045 tp!997688 tp!997684))))

(assert (= (and mapNonEmpty!18874 condMapEmpty!18877) mapIsEmpty!18877))

(assert (= (and mapNonEmpty!18874 (not condMapEmpty!18877)) mapNonEmpty!18877))

(assert (= (and mapNonEmpty!18877 ((_ is Cons!35450) mapValue!18877)) b!3166047))

(assert (= (and mapNonEmpty!18874 ((_ is Cons!35450) mapDefault!18877)) b!3166048))

(declare-fun m!3427921 () Bool)

(assert (=> mapNonEmpty!18877 m!3427921))

(declare-fun b!3166049 () Bool)

(declare-fun tp!997693 () Bool)

(declare-fun e!1972200 () Bool)

(declare-fun tp!997691 () Bool)

(declare-fun tp!997692 () Bool)

(assert (=> b!3166049 (= e!1972200 (and tp!997691 tp_is_empty!17045 tp!997692 tp!997693))))

(assert (=> mapNonEmpty!18874 (= tp!997610 e!1972200)))

(assert (= (and mapNonEmpty!18874 ((_ is Cons!35450) mapValue!18874)) b!3166049))

(check-sat tp_is_empty!17045 (not b!3166026) (not b!3166040) (not b!3166003) (not bm!229524) b_and!209391 (not b_next!83835) (not b!3166039) (not b!3166049) (not b!3166021) (not bm!229528) (not b!3166009) (not b_next!83833) (not b!3166027) (not bm!229525) (not b!3165956) (not b!3165989) (not b!3166008) (not b!3165994) (not b!3166025) (not d!868844) b_and!209393 (not b!3166031) (not b!3166029) (not b!3166047) (not b!3166048) (not b!3166035) (not bm!229537) (not mapNonEmpty!18877) (not bm!229540) (not d!868842) (not bm!229547) (not b!3166034) (not bm!229527) (not b!3166001) (not b!3166033) (not b!3166038) (not b!3166030) (not b!3166036) (not bm!229548) (not d!868832) (not b!3165963) (not b!3166023) (not b!3166022))
(check-sat b_and!209391 b_and!209393 (not b_next!83835) (not b_next!83833))
(get-model)

(declare-fun b!3166050 () Bool)

(declare-fun c!532450 () Bool)

(assert (=> b!3166050 (= c!532450 ((_ is EmptyExpr!9741) (ite c!532416 (regOne!19994 (regTwo!19995 r!13156)) (regOne!19995 (regTwo!19995 r!13156)))))))

(declare-fun e!1972201 () Int)

(declare-fun e!1972202 () Int)

(assert (=> b!3166050 (= e!1972201 e!1972202)))

(declare-fun b!3166051 () Bool)

(declare-fun e!1972205 () Int)

(declare-fun call!229555 () Int)

(declare-fun call!229556 () Int)

(assert (=> b!3166051 (= e!1972205 (+ 1 call!229555 call!229556))))

(declare-fun bm!229550 () Bool)

(declare-fun call!229557 () Int)

(assert (=> bm!229550 (= call!229556 call!229557)))

(declare-fun c!532454 () Bool)

(declare-fun bm!229551 () Bool)

(declare-fun c!532453 () Bool)

(assert (=> bm!229551 (= call!229557 (RegexPrimitiveSize!129 (ite c!532454 (regTwo!19994 (ite c!532416 (regOne!19994 (regTwo!19995 r!13156)) (regOne!19995 (regTwo!19995 r!13156)))) (ite c!532453 (reg!10070 (ite c!532416 (regOne!19994 (regTwo!19995 r!13156)) (regOne!19995 (regTwo!19995 r!13156)))) (regTwo!19995 (ite c!532416 (regOne!19994 (regTwo!19995 r!13156)) (regOne!19995 (regTwo!19995 r!13156))))))))))

(declare-fun b!3166052 () Bool)

(declare-fun c!532452 () Bool)

(assert (=> b!3166052 (= c!532452 ((_ is EmptyLang!9741) (ite c!532416 (regOne!19994 (regTwo!19995 r!13156)) (regOne!19995 (regTwo!19995 r!13156)))))))

(declare-fun e!1972203 () Int)

(assert (=> b!3166052 (= e!1972203 e!1972205)))

(declare-fun b!3166053 () Bool)

(assert (=> b!3166053 (= e!1972202 0)))

(declare-fun b!3166054 () Bool)

(assert (=> b!3166054 (= e!1972205 0)))

(declare-fun b!3166055 () Bool)

(assert (=> b!3166055 (= e!1972202 e!1972203)))

(assert (=> b!3166055 (= c!532453 ((_ is Star!9741) (ite c!532416 (regOne!19994 (regTwo!19995 r!13156)) (regOne!19995 (regTwo!19995 r!13156)))))))

(declare-fun b!3166056 () Bool)

(declare-fun e!1972204 () Int)

(assert (=> b!3166056 (= e!1972204 1)))

(declare-fun d!868846 () Bool)

(declare-fun lt!1064407 () Int)

(assert (=> d!868846 (>= lt!1064407 0)))

(assert (=> d!868846 (= lt!1064407 e!1972204)))

(declare-fun c!532451 () Bool)

(assert (=> d!868846 (= c!532451 ((_ is ElementMatch!9741) (ite c!532416 (regOne!19994 (regTwo!19995 r!13156)) (regOne!19995 (regTwo!19995 r!13156)))))))

(assert (=> d!868846 (= (RegexPrimitiveSize!129 (ite c!532416 (regOne!19994 (regTwo!19995 r!13156)) (regOne!19995 (regTwo!19995 r!13156)))) lt!1064407)))

(declare-fun bm!229552 () Bool)

(assert (=> bm!229552 (= call!229555 (RegexPrimitiveSize!129 (ite c!532454 (regOne!19994 (ite c!532416 (regOne!19994 (regTwo!19995 r!13156)) (regOne!19995 (regTwo!19995 r!13156)))) (regOne!19995 (ite c!532416 (regOne!19994 (regTwo!19995 r!13156)) (regOne!19995 (regTwo!19995 r!13156)))))))))

(declare-fun b!3166057 () Bool)

(assert (=> b!3166057 (= e!1972204 e!1972201)))

(assert (=> b!3166057 (= c!532454 ((_ is Concat!15062) (ite c!532416 (regOne!19994 (regTwo!19995 r!13156)) (regOne!19995 (regTwo!19995 r!13156)))))))

(declare-fun b!3166058 () Bool)

(assert (=> b!3166058 (= e!1972203 (+ 1 call!229556))))

(declare-fun b!3166059 () Bool)

(assert (=> b!3166059 (= e!1972201 (+ 1 call!229555 call!229557))))

(assert (= (and d!868846 c!532451) b!3166056))

(assert (= (and d!868846 (not c!532451)) b!3166057))

(assert (= (and b!3166057 c!532454) b!3166059))

(assert (= (and b!3166057 (not c!532454)) b!3166050))

(assert (= (and b!3166050 c!532450) b!3166053))

(assert (= (and b!3166050 (not c!532450)) b!3166055))

(assert (= (and b!3166055 c!532453) b!3166058))

(assert (= (and b!3166055 (not c!532453)) b!3166052))

(assert (= (and b!3166052 c!532452) b!3166054))

(assert (= (and b!3166052 (not c!532452)) b!3166051))

(assert (= (or b!3166058 b!3166051) bm!229550))

(assert (= (or b!3166059 bm!229550) bm!229551))

(assert (= (or b!3166059 b!3166051) bm!229552))

(declare-fun m!3427923 () Bool)

(assert (=> bm!229551 m!3427923))

(declare-fun m!3427925 () Bool)

(assert (=> bm!229552 m!3427925))

(assert (=> bm!229525 d!868846))

(declare-fun d!868848 () Bool)

(declare-fun res!1288010 () Bool)

(declare-fun e!1972210 () Bool)

(assert (=> d!868848 (=> (not res!1288010) (not e!1972210))))

(declare-fun valid!3248 (MutableMap!4068) Bool)

(assert (=> d!868848 (= res!1288010 (valid!3248 (cache!4211 cache!347)))))

(assert (=> d!868848 (= (validCacheMap!58 (cache!4211 cache!347)) e!1972210)))

(declare-fun b!3166066 () Bool)

(declare-fun res!1288011 () Bool)

(assert (=> b!3166066 (=> (not res!1288011) (not e!1972210))))

(declare-fun invariantList!481 (List!35574) Bool)

(declare-datatypes ((ListMap!1303 0))(
  ( (ListMap!1304 (toList!2056 List!35574)) )
))
(declare-fun map!7902 (MutableMap!4068) ListMap!1303)

(assert (=> b!3166066 (= res!1288011 (invariantList!481 (toList!2056 (map!7902 (cache!4211 cache!347)))))))

(declare-fun b!3166067 () Bool)

(declare-fun lambda!115849 () Int)

(declare-fun forall!7147 (List!35574 Int) Bool)

(assert (=> b!3166067 (= e!1972210 (forall!7147 (toList!2056 (map!7902 (cache!4211 cache!347))) lambda!115849))))

(assert (= (and d!868848 res!1288010) b!3166066))

(assert (= (and b!3166066 res!1288011) b!3166067))

(declare-fun m!3427928 () Bool)

(assert (=> d!868848 m!3427928))

(declare-fun m!3427930 () Bool)

(assert (=> b!3166066 m!3427930))

(declare-fun m!3427932 () Bool)

(assert (=> b!3166066 m!3427932))

(assert (=> b!3166067 m!3427930))

(declare-fun m!3427934 () Bool)

(assert (=> b!3166067 m!3427934))

(assert (=> d!868844 d!868848))

(declare-fun c!532456 () Bool)

(declare-fun lt!1064413 () tuple2!34548)

(declare-fun c!532458 () Bool)

(declare-fun call!229559 () tuple2!34548)

(declare-fun bm!229553 () Bool)

(declare-fun lt!1064409 () tuple2!34548)

(declare-fun c!532457 () Bool)

(assert (=> bm!229553 (= call!229559 (derivativeStepMem!29 (ite c!532458 (regTwo!19995 (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156)))) (ite c!532456 (reg!10070 (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156)))) (ite c!532457 (regTwo!19994 (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156)))) (regOne!19994 (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))))) a!2409 (ite c!532458 (_2!20406 lt!1064409) (ite c!532456 cache!347 (ite c!532457 (_2!20406 lt!1064413) cache!347)))))))

(declare-fun b!3166068 () Bool)

(declare-fun e!1972213 () tuple2!34548)

(assert (=> b!3166068 (= e!1972213 (tuple2!34549 EmptyLang!9741 cache!347))))

(declare-fun b!3166069 () Bool)

(declare-fun lt!1064411 () tuple2!34548)

(declare-fun call!229560 () tuple2!34548)

(assert (=> b!3166069 (= lt!1064411 call!229560)))

(declare-fun e!1972211 () tuple2!34548)

(assert (=> b!3166069 (= e!1972211 (tuple2!34549 (Union!9741 (Concat!15062 (_1!20406 lt!1064411) (regTwo!19994 (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))) EmptyLang!9741) (_2!20406 lt!1064411)))))

(declare-fun b!3166070 () Bool)

(declare-fun e!1972212 () tuple2!34548)

(declare-fun lt!1064414 () Option!6903)

(assert (=> b!3166070 (= e!1972212 (tuple2!34549 (v!35140 lt!1064414) cache!347))))

(declare-fun lt!1064415 () tuple2!34548)

(declare-fun b!3166071 () Bool)

(assert (=> b!3166071 (= e!1972212 (tuple2!34549 (_1!20406 lt!1064415) (_2!20407 (update!267 (_2!20406 lt!1064415) (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))) a!2409 (_1!20406 lt!1064415)))))))

(declare-fun c!532460 () Bool)

(assert (=> b!3166071 (= c!532460 (or ((_ is EmptyExpr!9741) (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156)))) ((_ is EmptyLang!9741) (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))))))

(assert (=> b!3166071 (= lt!1064415 e!1972213)))

(declare-fun lt!1064416 () tuple2!34548)

(declare-fun d!868850 () Bool)

(assert (=> d!868850 (= (_1!20406 lt!1064416) (derivativeStep!2891 (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))) a!2409))))

(assert (=> d!868850 (= lt!1064416 e!1972212)))

(declare-fun c!532459 () Bool)

(assert (=> d!868850 (= c!532459 ((_ is Some!6902) lt!1064414))))

(assert (=> d!868850 (= lt!1064414 (get!11247 cache!347 (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))) a!2409))))

(assert (=> d!868850 (validRegex!4462 (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))))

(assert (=> d!868850 (= (derivativeStepMem!29 (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))) a!2409 cache!347) lt!1064416)))

(declare-fun bm!229554 () Bool)

(declare-fun call!229561 () tuple2!34548)

(assert (=> bm!229554 (= call!229561 call!229559)))

(declare-fun b!3166072 () Bool)

(declare-fun c!532455 () Bool)

(assert (=> b!3166072 (= c!532455 ((_ is ElementMatch!9741) (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156)))))))

(declare-fun e!1972216 () tuple2!34548)

(assert (=> b!3166072 (= e!1972213 e!1972216)))

(declare-fun b!3166073 () Bool)

(assert (=> b!3166073 (= c!532456 ((_ is Star!9741) (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156)))))))

(declare-fun e!1972214 () tuple2!34548)

(declare-fun e!1972215 () tuple2!34548)

(assert (=> b!3166073 (= e!1972214 e!1972215)))

(declare-fun bm!229555 () Bool)

(assert (=> bm!229555 (= call!229560 call!229561)))

(declare-fun bm!229556 () Bool)

(declare-fun call!229558 () tuple2!34548)

(assert (=> bm!229556 (= call!229558 (derivativeStepMem!29 (ite c!532458 (regOne!19995 (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156)))) (regOne!19994 (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))) a!2409 cache!347))))

(declare-fun b!3166074 () Bool)

(assert (=> b!3166074 (= e!1972216 e!1972214)))

(assert (=> b!3166074 (= c!532458 ((_ is Union!9741) (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156)))))))

(declare-fun b!3166075 () Bool)

(declare-fun lt!1064408 () tuple2!34548)

(assert (=> b!3166075 (= e!1972215 (tuple2!34549 (Concat!15062 (_1!20406 lt!1064408) (Star!9741 (reg!10070 (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156)))))) (_2!20406 lt!1064408)))))

(assert (=> b!3166075 (= lt!1064408 call!229561)))

(declare-fun b!3166076 () Bool)

(declare-fun lt!1064410 () tuple2!34548)

(assert (=> b!3166076 (= lt!1064410 call!229560)))

(assert (=> b!3166076 (= lt!1064413 call!229558)))

(assert (=> b!3166076 (= e!1972211 (tuple2!34549 (Union!9741 (Concat!15062 (_1!20406 lt!1064413) (regTwo!19994 (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))) (_1!20406 lt!1064410)) (_2!20406 lt!1064410)))))

(declare-fun b!3166077 () Bool)

(assert (=> b!3166077 (= e!1972216 (tuple2!34549 (ite (= a!2409 (c!532401 (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))) EmptyExpr!9741 EmptyLang!9741) cache!347))))

(declare-fun b!3166078 () Bool)

(assert (=> b!3166078 (= e!1972215 e!1972211)))

(assert (=> b!3166078 (= c!532457 (nullable!3344 (regOne!19994 (ite c!532437 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))))))

(declare-fun b!3166079 () Bool)

(declare-fun lt!1064412 () tuple2!34548)

(assert (=> b!3166079 (= lt!1064412 call!229559)))

(assert (=> b!3166079 (= lt!1064409 call!229558)))

(assert (=> b!3166079 (= e!1972214 (tuple2!34549 (Union!9741 (_1!20406 lt!1064409) (_1!20406 lt!1064412)) (_2!20406 lt!1064412)))))

(assert (= (and d!868850 c!532459) b!3166070))

(assert (= (and d!868850 (not c!532459)) b!3166071))

(assert (= (and b!3166071 c!532460) b!3166068))

(assert (= (and b!3166071 (not c!532460)) b!3166072))

(assert (= (and b!3166072 c!532455) b!3166077))

(assert (= (and b!3166072 (not c!532455)) b!3166074))

(assert (= (and b!3166074 c!532458) b!3166079))

(assert (= (and b!3166074 (not c!532458)) b!3166073))

(assert (= (and b!3166073 c!532456) b!3166075))

(assert (= (and b!3166073 (not c!532456)) b!3166078))

(assert (= (and b!3166078 c!532457) b!3166076))

(assert (= (and b!3166078 (not c!532457)) b!3166069))

(assert (= (or b!3166076 b!3166069) bm!229555))

(assert (= (or b!3166075 bm!229555) bm!229554))

(assert (= (or b!3166079 b!3166076) bm!229556))

(assert (= (or b!3166079 bm!229554) bm!229553))

(declare-fun m!3427936 () Bool)

(assert (=> d!868850 m!3427936))

(declare-fun m!3427938 () Bool)

(assert (=> d!868850 m!3427938))

(declare-fun m!3427940 () Bool)

(assert (=> d!868850 m!3427940))

(declare-fun m!3427942 () Bool)

(assert (=> bm!229556 m!3427942))

(declare-fun m!3427944 () Bool)

(assert (=> b!3166078 m!3427944))

(declare-fun m!3427946 () Bool)

(assert (=> b!3166071 m!3427946))

(declare-fun m!3427948 () Bool)

(assert (=> bm!229553 m!3427948))

(assert (=> bm!229540 d!868850))

(declare-fun call!229572 () Regex!9741)

(declare-fun b!3166100 () Bool)

(declare-fun call!229571 () Regex!9741)

(declare-fun e!1972229 () Regex!9741)

(assert (=> b!3166100 (= e!1972229 (Union!9741 (Concat!15062 call!229571 (regTwo!19994 (regOne!19995 r!13156))) call!229572))))

(declare-fun b!3166101 () Bool)

(declare-fun e!1972230 () Regex!9741)

(assert (=> b!3166101 (= e!1972230 (ite (= a!2409 (c!532401 (regOne!19995 r!13156))) EmptyExpr!9741 EmptyLang!9741))))

(declare-fun bm!229565 () Bool)

(declare-fun call!229570 () Regex!9741)

(declare-fun call!229573 () Regex!9741)

(assert (=> bm!229565 (= call!229570 call!229573)))

(declare-fun d!868852 () Bool)

(declare-fun lt!1064419 () Regex!9741)

(assert (=> d!868852 (validRegex!4462 lt!1064419)))

(declare-fun e!1972228 () Regex!9741)

(assert (=> d!868852 (= lt!1064419 e!1972228)))

(declare-fun c!532473 () Bool)

(assert (=> d!868852 (= c!532473 (or ((_ is EmptyExpr!9741) (regOne!19995 r!13156)) ((_ is EmptyLang!9741) (regOne!19995 r!13156))))))

(assert (=> d!868852 (validRegex!4462 (regOne!19995 r!13156))))

(assert (=> d!868852 (= (derivativeStep!2891 (regOne!19995 r!13156) a!2409) lt!1064419)))

(declare-fun b!3166102 () Bool)

(declare-fun e!1972231 () Regex!9741)

(assert (=> b!3166102 (= e!1972231 (Concat!15062 call!229570 (regOne!19995 r!13156)))))

(declare-fun b!3166103 () Bool)

(declare-fun c!532471 () Bool)

(assert (=> b!3166103 (= c!532471 ((_ is Union!9741) (regOne!19995 r!13156)))))

(declare-fun e!1972227 () Regex!9741)

(assert (=> b!3166103 (= e!1972230 e!1972227)))

(declare-fun b!3166104 () Bool)

(assert (=> b!3166104 (= e!1972227 e!1972231)))

(declare-fun c!532475 () Bool)

(assert (=> b!3166104 (= c!532475 ((_ is Star!9741) (regOne!19995 r!13156)))))

(declare-fun bm!229566 () Bool)

(assert (=> bm!229566 (= call!229573 (derivativeStep!2891 (ite c!532471 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532475 (reg!10070 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156)))) a!2409))))

(declare-fun bm!229567 () Bool)

(assert (=> bm!229567 (= call!229572 (derivativeStep!2891 (ite c!532471 (regOne!19995 (regOne!19995 r!13156)) (regTwo!19994 (regOne!19995 r!13156))) a!2409))))

(declare-fun b!3166105 () Bool)

(declare-fun c!532474 () Bool)

(assert (=> b!3166105 (= c!532474 (nullable!3344 (regOne!19994 (regOne!19995 r!13156))))))

(assert (=> b!3166105 (= e!1972231 e!1972229)))

(declare-fun bm!229568 () Bool)

(assert (=> bm!229568 (= call!229571 call!229570)))

(declare-fun b!3166106 () Bool)

(assert (=> b!3166106 (= e!1972229 (Union!9741 (Concat!15062 call!229571 (regTwo!19994 (regOne!19995 r!13156))) EmptyLang!9741))))

(declare-fun b!3166107 () Bool)

(assert (=> b!3166107 (= e!1972227 (Union!9741 call!229572 call!229573))))

(declare-fun b!3166108 () Bool)

(assert (=> b!3166108 (= e!1972228 e!1972230)))

(declare-fun c!532472 () Bool)

(assert (=> b!3166108 (= c!532472 ((_ is ElementMatch!9741) (regOne!19995 r!13156)))))

(declare-fun b!3166109 () Bool)

(assert (=> b!3166109 (= e!1972228 EmptyLang!9741)))

(assert (= (and d!868852 c!532473) b!3166109))

(assert (= (and d!868852 (not c!532473)) b!3166108))

(assert (= (and b!3166108 c!532472) b!3166101))

(assert (= (and b!3166108 (not c!532472)) b!3166103))

(assert (= (and b!3166103 c!532471) b!3166107))

(assert (= (and b!3166103 (not c!532471)) b!3166104))

(assert (= (and b!3166104 c!532475) b!3166102))

(assert (= (and b!3166104 (not c!532475)) b!3166105))

(assert (= (and b!3166105 c!532474) b!3166100))

(assert (= (and b!3166105 (not c!532474)) b!3166106))

(assert (= (or b!3166100 b!3166106) bm!229568))

(assert (= (or b!3166102 bm!229568) bm!229565))

(assert (= (or b!3166107 bm!229565) bm!229566))

(assert (= (or b!3166107 b!3166100) bm!229567))

(declare-fun m!3427950 () Bool)

(assert (=> d!868852 m!3427950))

(assert (=> d!868852 m!3427891))

(declare-fun m!3427952 () Bool)

(assert (=> bm!229566 m!3427952))

(declare-fun m!3427954 () Bool)

(assert (=> bm!229567 m!3427954))

(assert (=> b!3166105 m!3427895))

(assert (=> d!868832 d!868852))

(declare-fun d!868854 () Bool)

(declare-fun e!1972232 () Bool)

(assert (=> d!868854 e!1972232))

(declare-fun res!1288012 () Bool)

(assert (=> d!868854 (=> res!1288012 e!1972232)))

(declare-fun lt!1064421 () Option!6903)

(assert (=> d!868854 (= res!1288012 (isEmpty!19757 lt!1064421))))

(declare-fun e!1972233 () Option!6903)

(assert (=> d!868854 (= lt!1064421 e!1972233)))

(declare-fun c!532476 () Bool)

(assert (=> d!868854 (= c!532476 (contains!6172 (cache!4211 cache!347) (tuple2!34545 (regOne!19995 r!13156) a!2409)))))

(assert (=> d!868854 (validRegex!4462 (regOne!19995 r!13156))))

(assert (=> d!868854 (= (get!11247 cache!347 (regOne!19995 r!13156) a!2409) lt!1064421)))

(declare-fun b!3166110 () Bool)

(assert (=> b!3166110 (= e!1972233 (Some!6902 (apply!7949 (cache!4211 cache!347) (tuple2!34545 (regOne!19995 r!13156) a!2409))))))

(declare-fun lt!1064420 () Unit!49822)

(assert (=> b!3166110 (= lt!1064420 (lemmaIfInCacheThenValid!55 cache!347 (regOne!19995 r!13156) a!2409))))

(declare-fun b!3166111 () Bool)

(assert (=> b!3166111 (= e!1972233 None!6902)))

(declare-fun b!3166112 () Bool)

(assert (=> b!3166112 (= e!1972232 (= (get!11248 lt!1064421) (derivativeStep!2891 (regOne!19995 r!13156) a!2409)))))

(assert (= (and d!868854 c!532476) b!3166110))

(assert (= (and d!868854 (not c!532476)) b!3166111))

(assert (= (and d!868854 (not res!1288012)) b!3166112))

(declare-fun m!3427956 () Bool)

(assert (=> d!868854 m!3427956))

(declare-fun m!3427958 () Bool)

(assert (=> d!868854 m!3427958))

(assert (=> d!868854 m!3427891))

(declare-fun m!3427960 () Bool)

(assert (=> b!3166110 m!3427960))

(declare-fun m!3427962 () Bool)

(assert (=> b!3166110 m!3427962))

(declare-fun m!3427964 () Bool)

(assert (=> b!3166112 m!3427964))

(assert (=> b!3166112 m!3427887))

(assert (=> d!868832 d!868854))

(declare-fun b!3166113 () Bool)

(declare-fun e!1972236 () Bool)

(declare-fun e!1972234 () Bool)

(assert (=> b!3166113 (= e!1972236 e!1972234)))

(declare-fun res!1288017 () Bool)

(assert (=> b!3166113 (=> (not res!1288017) (not e!1972234))))

(declare-fun call!229576 () Bool)

(assert (=> b!3166113 (= res!1288017 call!229576)))

(declare-fun b!3166114 () Bool)

(declare-fun res!1288014 () Bool)

(declare-fun e!1972238 () Bool)

(assert (=> b!3166114 (=> (not res!1288014) (not e!1972238))))

(assert (=> b!3166114 (= res!1288014 call!229576)))

(declare-fun e!1972235 () Bool)

(assert (=> b!3166114 (= e!1972235 e!1972238)))

(declare-fun bm!229569 () Bool)

(declare-fun call!229574 () Bool)

(declare-fun c!532477 () Bool)

(assert (=> bm!229569 (= call!229574 (validRegex!4462 (ite c!532477 (regTwo!19995 (regOne!19995 r!13156)) (regTwo!19994 (regOne!19995 r!13156)))))))

(declare-fun call!229575 () Bool)

(declare-fun bm!229570 () Bool)

(declare-fun c!532478 () Bool)

(assert (=> bm!229570 (= call!229575 (validRegex!4462 (ite c!532478 (reg!10070 (regOne!19995 r!13156)) (ite c!532477 (regOne!19995 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))))))

(declare-fun d!868856 () Bool)

(declare-fun res!1288013 () Bool)

(declare-fun e!1972239 () Bool)

(assert (=> d!868856 (=> res!1288013 e!1972239)))

(assert (=> d!868856 (= res!1288013 ((_ is ElementMatch!9741) (regOne!19995 r!13156)))))

(assert (=> d!868856 (= (validRegex!4462 (regOne!19995 r!13156)) e!1972239)))

(declare-fun b!3166115 () Bool)

(declare-fun res!1288015 () Bool)

(assert (=> b!3166115 (=> res!1288015 e!1972236)))

(assert (=> b!3166115 (= res!1288015 (not ((_ is Concat!15062) (regOne!19995 r!13156))))))

(assert (=> b!3166115 (= e!1972235 e!1972236)))

(declare-fun bm!229571 () Bool)

(assert (=> bm!229571 (= call!229576 call!229575)))

(declare-fun b!3166116 () Bool)

(assert (=> b!3166116 (= e!1972234 call!229574)))

(declare-fun b!3166117 () Bool)

(declare-fun e!1972237 () Bool)

(assert (=> b!3166117 (= e!1972239 e!1972237)))

(assert (=> b!3166117 (= c!532478 ((_ is Star!9741) (regOne!19995 r!13156)))))

(declare-fun b!3166118 () Bool)

(assert (=> b!3166118 (= e!1972237 e!1972235)))

(assert (=> b!3166118 (= c!532477 ((_ is Union!9741) (regOne!19995 r!13156)))))

(declare-fun b!3166119 () Bool)

(declare-fun e!1972240 () Bool)

(assert (=> b!3166119 (= e!1972237 e!1972240)))

(declare-fun res!1288016 () Bool)

(assert (=> b!3166119 (= res!1288016 (not (nullable!3344 (reg!10070 (regOne!19995 r!13156)))))))

(assert (=> b!3166119 (=> (not res!1288016) (not e!1972240))))

(declare-fun b!3166120 () Bool)

(assert (=> b!3166120 (= e!1972240 call!229575)))

(declare-fun b!3166121 () Bool)

(assert (=> b!3166121 (= e!1972238 call!229574)))

(assert (= (and d!868856 (not res!1288013)) b!3166117))

(assert (= (and b!3166117 c!532478) b!3166119))

(assert (= (and b!3166117 (not c!532478)) b!3166118))

(assert (= (and b!3166119 res!1288016) b!3166120))

(assert (= (and b!3166118 c!532477) b!3166114))

(assert (= (and b!3166118 (not c!532477)) b!3166115))

(assert (= (and b!3166114 res!1288014) b!3166121))

(assert (= (and b!3166115 (not res!1288015)) b!3166113))

(assert (= (and b!3166113 res!1288017) b!3166116))

(assert (= (or b!3166114 b!3166113) bm!229571))

(assert (= (or b!3166121 b!3166116) bm!229569))

(assert (= (or b!3166120 bm!229571) bm!229570))

(declare-fun m!3427966 () Bool)

(assert (=> bm!229569 m!3427966))

(declare-fun m!3427968 () Bool)

(assert (=> bm!229570 m!3427968))

(declare-fun m!3427970 () Bool)

(assert (=> b!3166119 m!3427970))

(assert (=> d!868832 d!868856))

(declare-fun lt!1064423 () tuple2!34548)

(declare-fun bm!229572 () Bool)

(declare-fun c!532480 () Bool)

(declare-fun call!229578 () tuple2!34548)

(declare-fun lt!1064427 () tuple2!34548)

(declare-fun c!532481 () Bool)

(declare-fun c!532482 () Bool)

(assert (=> bm!229572 (= call!229578 (derivativeStepMem!29 (ite c!532482 (regTwo!19995 (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156)))))) (ite c!532480 (reg!10070 (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156)))))) (ite c!532481 (regTwo!19994 (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156)))))) (regOne!19994 (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))))))) a!2409 (ite c!532482 (_2!20406 lt!1064423) (ite c!532480 (ite c!532437 (_2!20406 lt!1064393) (ite c!532435 cache!347 (ite c!532436 (_2!20406 lt!1064397) cache!347))) (ite c!532481 (_2!20406 lt!1064427) (ite c!532437 (_2!20406 lt!1064393) (ite c!532435 cache!347 (ite c!532436 (_2!20406 lt!1064397) cache!347))))))))))

(declare-fun b!3166122 () Bool)

(declare-fun e!1972243 () tuple2!34548)

(assert (=> b!3166122 (= e!1972243 (tuple2!34549 EmptyLang!9741 (ite c!532437 (_2!20406 lt!1064393) (ite c!532435 cache!347 (ite c!532436 (_2!20406 lt!1064397) cache!347)))))))

(declare-fun b!3166123 () Bool)

(declare-fun lt!1064425 () tuple2!34548)

(declare-fun call!229579 () tuple2!34548)

(assert (=> b!3166123 (= lt!1064425 call!229579)))

(declare-fun e!1972241 () tuple2!34548)

(assert (=> b!3166123 (= e!1972241 (tuple2!34549 (Union!9741 (Concat!15062 (_1!20406 lt!1064425) (regTwo!19994 (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))))) EmptyLang!9741) (_2!20406 lt!1064425)))))

(declare-fun e!1972242 () tuple2!34548)

(declare-fun b!3166124 () Bool)

(declare-fun lt!1064428 () Option!6903)

(assert (=> b!3166124 (= e!1972242 (tuple2!34549 (v!35140 lt!1064428) (ite c!532437 (_2!20406 lt!1064393) (ite c!532435 cache!347 (ite c!532436 (_2!20406 lt!1064397) cache!347)))))))

(declare-fun lt!1064429 () tuple2!34548)

(declare-fun b!3166125 () Bool)

(assert (=> b!3166125 (= e!1972242 (tuple2!34549 (_1!20406 lt!1064429) (_2!20407 (update!267 (_2!20406 lt!1064429) (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))) a!2409 (_1!20406 lt!1064429)))))))

(declare-fun c!532484 () Bool)

(assert (=> b!3166125 (= c!532484 (or ((_ is EmptyExpr!9741) (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156)))))) ((_ is EmptyLang!9741) (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))))))))

(assert (=> b!3166125 (= lt!1064429 e!1972243)))

(declare-fun d!868858 () Bool)

(declare-fun lt!1064430 () tuple2!34548)

(assert (=> d!868858 (= (_1!20406 lt!1064430) (derivativeStep!2891 (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))) a!2409))))

(assert (=> d!868858 (= lt!1064430 e!1972242)))

(declare-fun c!532483 () Bool)

(assert (=> d!868858 (= c!532483 ((_ is Some!6902) lt!1064428))))

(assert (=> d!868858 (= lt!1064428 (get!11247 (ite c!532437 (_2!20406 lt!1064393) (ite c!532435 cache!347 (ite c!532436 (_2!20406 lt!1064397) cache!347))) (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))) a!2409))))

(assert (=> d!868858 (validRegex!4462 (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))))))

(assert (=> d!868858 (= (derivativeStepMem!29 (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))) a!2409 (ite c!532437 (_2!20406 lt!1064393) (ite c!532435 cache!347 (ite c!532436 (_2!20406 lt!1064397) cache!347)))) lt!1064430)))

(declare-fun bm!229573 () Bool)

(declare-fun call!229580 () tuple2!34548)

(assert (=> bm!229573 (= call!229580 call!229578)))

(declare-fun c!532479 () Bool)

(declare-fun b!3166126 () Bool)

(assert (=> b!3166126 (= c!532479 ((_ is ElementMatch!9741) (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156)))))))))

(declare-fun e!1972246 () tuple2!34548)

(assert (=> b!3166126 (= e!1972243 e!1972246)))

(declare-fun b!3166127 () Bool)

(assert (=> b!3166127 (= c!532480 ((_ is Star!9741) (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156)))))))))

(declare-fun e!1972244 () tuple2!34548)

(declare-fun e!1972245 () tuple2!34548)

(assert (=> b!3166127 (= e!1972244 e!1972245)))

(declare-fun bm!229574 () Bool)

(assert (=> bm!229574 (= call!229579 call!229580)))

(declare-fun call!229577 () tuple2!34548)

(declare-fun bm!229575 () Bool)

(assert (=> bm!229575 (= call!229577 (derivativeStepMem!29 (ite c!532482 (regOne!19995 (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156)))))) (regOne!19994 (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))))) a!2409 (ite c!532437 (_2!20406 lt!1064393) (ite c!532435 cache!347 (ite c!532436 (_2!20406 lt!1064397) cache!347)))))))

(declare-fun b!3166128 () Bool)

(assert (=> b!3166128 (= e!1972246 e!1972244)))

(assert (=> b!3166128 (= c!532482 ((_ is Union!9741) (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156)))))))))

(declare-fun lt!1064422 () tuple2!34548)

(declare-fun b!3166129 () Bool)

(assert (=> b!3166129 (= e!1972245 (tuple2!34549 (Concat!15062 (_1!20406 lt!1064422) (Star!9741 (reg!10070 (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156)))))))) (_2!20406 lt!1064422)))))

(assert (=> b!3166129 (= lt!1064422 call!229580)))

(declare-fun b!3166130 () Bool)

(declare-fun lt!1064424 () tuple2!34548)

(assert (=> b!3166130 (= lt!1064424 call!229579)))

(assert (=> b!3166130 (= lt!1064427 call!229577)))

(assert (=> b!3166130 (= e!1972241 (tuple2!34549 (Union!9741 (Concat!15062 (_1!20406 lt!1064427) (regTwo!19994 (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))))) (_1!20406 lt!1064424)) (_2!20406 lt!1064424)))))

(declare-fun b!3166131 () Bool)

(assert (=> b!3166131 (= e!1972246 (tuple2!34549 (ite (= a!2409 (c!532401 (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))))) EmptyExpr!9741 EmptyLang!9741) (ite c!532437 (_2!20406 lt!1064393) (ite c!532435 cache!347 (ite c!532436 (_2!20406 lt!1064397) cache!347)))))))

(declare-fun b!3166132 () Bool)

(assert (=> b!3166132 (= e!1972245 e!1972241)))

(assert (=> b!3166132 (= c!532481 (nullable!3344 (regOne!19994 (ite c!532437 (regTwo!19995 (regOne!19995 r!13156)) (ite c!532435 (reg!10070 (regOne!19995 r!13156)) (ite c!532436 (regTwo!19994 (regOne!19995 r!13156)) (regOne!19994 (regOne!19995 r!13156))))))))))

(declare-fun b!3166133 () Bool)

(declare-fun lt!1064426 () tuple2!34548)

(assert (=> b!3166133 (= lt!1064426 call!229578)))

(assert (=> b!3166133 (= lt!1064423 call!229577)))

(assert (=> b!3166133 (= e!1972244 (tuple2!34549 (Union!9741 (_1!20406 lt!1064423) (_1!20406 lt!1064426)) (_2!20406 lt!1064426)))))

(assert (= (and d!868858 c!532483) b!3166124))

(assert (= (and d!868858 (not c!532483)) b!3166125))

(assert (= (and b!3166125 c!532484) b!3166122))

(assert (= (and b!3166125 (not c!532484)) b!3166126))

(assert (= (and b!3166126 c!532479) b!3166131))

(assert (= (and b!3166126 (not c!532479)) b!3166128))

(assert (= (and b!3166128 c!532482) b!3166133))

(assert (= (and b!3166128 (not c!532482)) b!3166127))

(assert (= (and b!3166127 c!532480) b!3166129))

(assert (= (and b!3166127 (not c!532480)) b!3166132))

(assert (= (and b!3166132 c!532481) b!3166130))

(assert (= (and b!3166132 (not c!532481)) b!3166123))

(assert (= (or b!3166130 b!3166123) bm!229574))

(assert (= (or b!3166129 bm!229574) bm!229573))

(assert (= (or b!3166133 b!3166130) bm!229575))

(assert (= (or b!3166133 bm!229573) bm!229572))

(declare-fun m!3427972 () Bool)

(assert (=> d!868858 m!3427972))

(declare-fun m!3427974 () Bool)

(assert (=> d!868858 m!3427974))

(declare-fun m!3427976 () Bool)

(assert (=> d!868858 m!3427976))

(declare-fun m!3427978 () Bool)

(assert (=> bm!229575 m!3427978))

(declare-fun m!3427980 () Bool)

(assert (=> b!3166132 m!3427980))

(declare-fun m!3427982 () Bool)

(assert (=> b!3166125 m!3427982))

(declare-fun m!3427984 () Bool)

(assert (=> bm!229572 m!3427984))

(assert (=> bm!229537 d!868858))

(declare-fun b!3166134 () Bool)

(declare-fun c!532485 () Bool)

(assert (=> b!3166134 (= c!532485 ((_ is EmptyExpr!9741) (ite c!532421 (regOne!19994 r!13156) (regOne!19995 r!13156))))))

(declare-fun e!1972247 () Int)

(declare-fun e!1972248 () Int)

(assert (=> b!3166134 (= e!1972247 e!1972248)))

(declare-fun b!3166135 () Bool)

(declare-fun e!1972251 () Int)

(declare-fun call!229581 () Int)

(declare-fun call!229582 () Int)

(assert (=> b!3166135 (= e!1972251 (+ 1 call!229581 call!229582))))

(declare-fun bm!229576 () Bool)

(declare-fun call!229583 () Int)

(assert (=> bm!229576 (= call!229582 call!229583)))

(declare-fun c!532489 () Bool)

(declare-fun c!532488 () Bool)

(declare-fun bm!229577 () Bool)

(assert (=> bm!229577 (= call!229583 (RegexPrimitiveSize!129 (ite c!532489 (regTwo!19994 (ite c!532421 (regOne!19994 r!13156) (regOne!19995 r!13156))) (ite c!532488 (reg!10070 (ite c!532421 (regOne!19994 r!13156) (regOne!19995 r!13156))) (regTwo!19995 (ite c!532421 (regOne!19994 r!13156) (regOne!19995 r!13156)))))))))

(declare-fun b!3166136 () Bool)

(declare-fun c!532487 () Bool)

(assert (=> b!3166136 (= c!532487 ((_ is EmptyLang!9741) (ite c!532421 (regOne!19994 r!13156) (regOne!19995 r!13156))))))

(declare-fun e!1972249 () Int)

(assert (=> b!3166136 (= e!1972249 e!1972251)))

(declare-fun b!3166137 () Bool)

(assert (=> b!3166137 (= e!1972248 0)))

(declare-fun b!3166138 () Bool)

(assert (=> b!3166138 (= e!1972251 0)))

(declare-fun b!3166139 () Bool)

(assert (=> b!3166139 (= e!1972248 e!1972249)))

(assert (=> b!3166139 (= c!532488 ((_ is Star!9741) (ite c!532421 (regOne!19994 r!13156) (regOne!19995 r!13156))))))

(declare-fun b!3166140 () Bool)

(declare-fun e!1972250 () Int)

(assert (=> b!3166140 (= e!1972250 1)))

(declare-fun d!868860 () Bool)

(declare-fun lt!1064431 () Int)

(assert (=> d!868860 (>= lt!1064431 0)))

(assert (=> d!868860 (= lt!1064431 e!1972250)))

(declare-fun c!532486 () Bool)

(assert (=> d!868860 (= c!532486 ((_ is ElementMatch!9741) (ite c!532421 (regOne!19994 r!13156) (regOne!19995 r!13156))))))

(assert (=> d!868860 (= (RegexPrimitiveSize!129 (ite c!532421 (regOne!19994 r!13156) (regOne!19995 r!13156))) lt!1064431)))

(declare-fun bm!229578 () Bool)

(assert (=> bm!229578 (= call!229581 (RegexPrimitiveSize!129 (ite c!532489 (regOne!19994 (ite c!532421 (regOne!19994 r!13156) (regOne!19995 r!13156))) (regOne!19995 (ite c!532421 (regOne!19994 r!13156) (regOne!19995 r!13156))))))))

(declare-fun b!3166141 () Bool)

(assert (=> b!3166141 (= e!1972250 e!1972247)))

(assert (=> b!3166141 (= c!532489 ((_ is Concat!15062) (ite c!532421 (regOne!19994 r!13156) (regOne!19995 r!13156))))))

(declare-fun b!3166142 () Bool)

(assert (=> b!3166142 (= e!1972249 (+ 1 call!229582))))

(declare-fun b!3166143 () Bool)

(assert (=> b!3166143 (= e!1972247 (+ 1 call!229581 call!229583))))

(assert (= (and d!868860 c!532486) b!3166140))

(assert (= (and d!868860 (not c!532486)) b!3166141))

(assert (= (and b!3166141 c!532489) b!3166143))

(assert (= (and b!3166141 (not c!532489)) b!3166134))

(assert (= (and b!3166134 c!532485) b!3166137))

(assert (= (and b!3166134 (not c!532485)) b!3166139))

(assert (= (and b!3166139 c!532488) b!3166142))

(assert (= (and b!3166139 (not c!532488)) b!3166136))

(assert (= (and b!3166136 c!532487) b!3166138))

(assert (= (and b!3166136 (not c!532487)) b!3166135))

(assert (= (or b!3166142 b!3166135) bm!229576))

(assert (= (or b!3166143 bm!229576) bm!229577))

(assert (= (or b!3166143 b!3166135) bm!229578))

(declare-fun m!3427986 () Bool)

(assert (=> bm!229577 m!3427986))

(declare-fun m!3427988 () Bool)

(assert (=> bm!229578 m!3427988))

(assert (=> bm!229528 d!868860))

(assert (=> b!3165994 d!868848))

(declare-fun d!868862 () Bool)

(declare-fun nullableFct!952 (Regex!9741) Bool)

(assert (=> d!868862 (= (nullable!3344 (reg!10070 r!13156)) (nullableFct!952 (reg!10070 r!13156)))))

(declare-fun bs!539519 () Bool)

(assert (= bs!539519 d!868862))

(declare-fun m!3427990 () Bool)

(assert (=> bs!539519 m!3427990))

(assert (=> b!3165989 d!868862))

(declare-fun d!868864 () Bool)

(assert (=> d!868864 (= (nullable!3344 (regOne!19994 (regOne!19995 r!13156))) (nullableFct!952 (regOne!19994 (regOne!19995 r!13156))))))

(declare-fun bs!539520 () Bool)

(assert (= bs!539520 d!868864))

(declare-fun m!3427992 () Bool)

(assert (=> bs!539520 m!3427992))

(assert (=> b!3165963 d!868864))

(declare-fun c!532490 () Bool)

(declare-fun b!3166144 () Bool)

(assert (=> b!3166144 (= c!532490 ((_ is EmptyExpr!9741) (ite c!532421 (regTwo!19994 r!13156) (ite c!532420 (reg!10070 r!13156) (regTwo!19995 r!13156)))))))

(declare-fun e!1972252 () Int)

(declare-fun e!1972253 () Int)

(assert (=> b!3166144 (= e!1972252 e!1972253)))

(declare-fun b!3166145 () Bool)

(declare-fun e!1972256 () Int)

(declare-fun call!229584 () Int)

(declare-fun call!229585 () Int)

(assert (=> b!3166145 (= e!1972256 (+ 1 call!229584 call!229585))))

(declare-fun bm!229579 () Bool)

(declare-fun call!229586 () Int)

(assert (=> bm!229579 (= call!229585 call!229586)))

(declare-fun c!532494 () Bool)

(declare-fun bm!229580 () Bool)

(declare-fun c!532493 () Bool)

(assert (=> bm!229580 (= call!229586 (RegexPrimitiveSize!129 (ite c!532494 (regTwo!19994 (ite c!532421 (regTwo!19994 r!13156) (ite c!532420 (reg!10070 r!13156) (regTwo!19995 r!13156)))) (ite c!532493 (reg!10070 (ite c!532421 (regTwo!19994 r!13156) (ite c!532420 (reg!10070 r!13156) (regTwo!19995 r!13156)))) (regTwo!19995 (ite c!532421 (regTwo!19994 r!13156) (ite c!532420 (reg!10070 r!13156) (regTwo!19995 r!13156))))))))))

(declare-fun b!3166146 () Bool)

(declare-fun c!532492 () Bool)

(assert (=> b!3166146 (= c!532492 ((_ is EmptyLang!9741) (ite c!532421 (regTwo!19994 r!13156) (ite c!532420 (reg!10070 r!13156) (regTwo!19995 r!13156)))))))

(declare-fun e!1972254 () Int)

(assert (=> b!3166146 (= e!1972254 e!1972256)))

(declare-fun b!3166147 () Bool)

(assert (=> b!3166147 (= e!1972253 0)))

(declare-fun b!3166148 () Bool)

(assert (=> b!3166148 (= e!1972256 0)))

(declare-fun b!3166149 () Bool)

(assert (=> b!3166149 (= e!1972253 e!1972254)))

(assert (=> b!3166149 (= c!532493 ((_ is Star!9741) (ite c!532421 (regTwo!19994 r!13156) (ite c!532420 (reg!10070 r!13156) (regTwo!19995 r!13156)))))))

(declare-fun b!3166150 () Bool)

(declare-fun e!1972255 () Int)

(assert (=> b!3166150 (= e!1972255 1)))

(declare-fun d!868866 () Bool)

(declare-fun lt!1064432 () Int)

(assert (=> d!868866 (>= lt!1064432 0)))

(assert (=> d!868866 (= lt!1064432 e!1972255)))

(declare-fun c!532491 () Bool)

(assert (=> d!868866 (= c!532491 ((_ is ElementMatch!9741) (ite c!532421 (regTwo!19994 r!13156) (ite c!532420 (reg!10070 r!13156) (regTwo!19995 r!13156)))))))

(assert (=> d!868866 (= (RegexPrimitiveSize!129 (ite c!532421 (regTwo!19994 r!13156) (ite c!532420 (reg!10070 r!13156) (regTwo!19995 r!13156)))) lt!1064432)))

(declare-fun bm!229581 () Bool)

(assert (=> bm!229581 (= call!229584 (RegexPrimitiveSize!129 (ite c!532494 (regOne!19994 (ite c!532421 (regTwo!19994 r!13156) (ite c!532420 (reg!10070 r!13156) (regTwo!19995 r!13156)))) (regOne!19995 (ite c!532421 (regTwo!19994 r!13156) (ite c!532420 (reg!10070 r!13156) (regTwo!19995 r!13156)))))))))

(declare-fun b!3166151 () Bool)

(assert (=> b!3166151 (= e!1972255 e!1972252)))

(assert (=> b!3166151 (= c!532494 ((_ is Concat!15062) (ite c!532421 (regTwo!19994 r!13156) (ite c!532420 (reg!10070 r!13156) (regTwo!19995 r!13156)))))))

(declare-fun b!3166152 () Bool)

(assert (=> b!3166152 (= e!1972254 (+ 1 call!229585))))

(declare-fun b!3166153 () Bool)

(assert (=> b!3166153 (= e!1972252 (+ 1 call!229584 call!229586))))

(assert (= (and d!868866 c!532491) b!3166150))

(assert (= (and d!868866 (not c!532491)) b!3166151))

(assert (= (and b!3166151 c!532494) b!3166153))

(assert (= (and b!3166151 (not c!532494)) b!3166144))

(assert (= (and b!3166144 c!532490) b!3166147))

(assert (= (and b!3166144 (not c!532490)) b!3166149))

(assert (= (and b!3166149 c!532493) b!3166152))

(assert (= (and b!3166149 (not c!532493)) b!3166146))

(assert (= (and b!3166146 c!532492) b!3166148))

(assert (= (and b!3166146 (not c!532492)) b!3166145))

(assert (= (or b!3166152 b!3166145) bm!229579))

(assert (= (or b!3166153 bm!229579) bm!229580))

(assert (= (or b!3166153 b!3166145) bm!229581))

(declare-fun m!3427994 () Bool)

(assert (=> bm!229580 m!3427994))

(declare-fun m!3427996 () Bool)

(assert (=> bm!229581 m!3427996))

(assert (=> bm!229527 d!868866))

(declare-fun b!3166154 () Bool)

(declare-fun e!1972259 () Bool)

(declare-fun e!1972257 () Bool)

(assert (=> b!3166154 (= e!1972259 e!1972257)))

(declare-fun res!1288022 () Bool)

(assert (=> b!3166154 (=> (not res!1288022) (not e!1972257))))

(declare-fun call!229589 () Bool)

(assert (=> b!3166154 (= res!1288022 call!229589)))

(declare-fun b!3166155 () Bool)

(declare-fun res!1288019 () Bool)

(declare-fun e!1972261 () Bool)

(assert (=> b!3166155 (=> (not res!1288019) (not e!1972261))))

(assert (=> b!3166155 (= res!1288019 call!229589)))

(declare-fun e!1972258 () Bool)

(assert (=> b!3166155 (= e!1972258 e!1972261)))

(declare-fun c!532495 () Bool)

(declare-fun call!229587 () Bool)

(declare-fun bm!229582 () Bool)

(assert (=> bm!229582 (= call!229587 (validRegex!4462 (ite c!532495 (regTwo!19995 (ite c!532444 (regTwo!19995 r!13156) (regTwo!19994 r!13156))) (regTwo!19994 (ite c!532444 (regTwo!19995 r!13156) (regTwo!19994 r!13156))))))))

(declare-fun c!532496 () Bool)

(declare-fun bm!229583 () Bool)

(declare-fun call!229588 () Bool)

(assert (=> bm!229583 (= call!229588 (validRegex!4462 (ite c!532496 (reg!10070 (ite c!532444 (regTwo!19995 r!13156) (regTwo!19994 r!13156))) (ite c!532495 (regOne!19995 (ite c!532444 (regTwo!19995 r!13156) (regTwo!19994 r!13156))) (regOne!19994 (ite c!532444 (regTwo!19995 r!13156) (regTwo!19994 r!13156)))))))))

(declare-fun d!868868 () Bool)

(declare-fun res!1288018 () Bool)

(declare-fun e!1972262 () Bool)

(assert (=> d!868868 (=> res!1288018 e!1972262)))

(assert (=> d!868868 (= res!1288018 ((_ is ElementMatch!9741) (ite c!532444 (regTwo!19995 r!13156) (regTwo!19994 r!13156))))))

(assert (=> d!868868 (= (validRegex!4462 (ite c!532444 (regTwo!19995 r!13156) (regTwo!19994 r!13156))) e!1972262)))

(declare-fun b!3166156 () Bool)

(declare-fun res!1288020 () Bool)

(assert (=> b!3166156 (=> res!1288020 e!1972259)))

(assert (=> b!3166156 (= res!1288020 (not ((_ is Concat!15062) (ite c!532444 (regTwo!19995 r!13156) (regTwo!19994 r!13156)))))))

(assert (=> b!3166156 (= e!1972258 e!1972259)))

(declare-fun bm!229584 () Bool)

(assert (=> bm!229584 (= call!229589 call!229588)))

(declare-fun b!3166157 () Bool)

(assert (=> b!3166157 (= e!1972257 call!229587)))

(declare-fun b!3166158 () Bool)

(declare-fun e!1972260 () Bool)

(assert (=> b!3166158 (= e!1972262 e!1972260)))

(assert (=> b!3166158 (= c!532496 ((_ is Star!9741) (ite c!532444 (regTwo!19995 r!13156) (regTwo!19994 r!13156))))))

(declare-fun b!3166159 () Bool)

(assert (=> b!3166159 (= e!1972260 e!1972258)))

(assert (=> b!3166159 (= c!532495 ((_ is Union!9741) (ite c!532444 (regTwo!19995 r!13156) (regTwo!19994 r!13156))))))

(declare-fun b!3166160 () Bool)

(declare-fun e!1972263 () Bool)

(assert (=> b!3166160 (= e!1972260 e!1972263)))

(declare-fun res!1288021 () Bool)

(assert (=> b!3166160 (= res!1288021 (not (nullable!3344 (reg!10070 (ite c!532444 (regTwo!19995 r!13156) (regTwo!19994 r!13156))))))))

(assert (=> b!3166160 (=> (not res!1288021) (not e!1972263))))

(declare-fun b!3166161 () Bool)

(assert (=> b!3166161 (= e!1972263 call!229588)))

(declare-fun b!3166162 () Bool)

(assert (=> b!3166162 (= e!1972261 call!229587)))

(assert (= (and d!868868 (not res!1288018)) b!3166158))

(assert (= (and b!3166158 c!532496) b!3166160))

(assert (= (and b!3166158 (not c!532496)) b!3166159))

(assert (= (and b!3166160 res!1288021) b!3166161))

(assert (= (and b!3166159 c!532495) b!3166155))

(assert (= (and b!3166159 (not c!532495)) b!3166156))

(assert (= (and b!3166155 res!1288019) b!3166162))

(assert (= (and b!3166156 (not res!1288020)) b!3166154))

(assert (= (and b!3166154 res!1288022) b!3166157))

(assert (= (or b!3166155 b!3166154) bm!229584))

(assert (= (or b!3166162 b!3166157) bm!229582))

(assert (= (or b!3166161 bm!229584) bm!229583))

(declare-fun m!3427998 () Bool)

(assert (=> bm!229582 m!3427998))

(declare-fun m!3428000 () Bool)

(assert (=> bm!229583 m!3428000))

(declare-fun m!3428002 () Bool)

(assert (=> b!3166160 m!3428002))

(assert (=> bm!229547 d!868868))

(declare-fun bs!539521 () Bool)

(declare-fun d!868870 () Bool)

(assert (= bs!539521 (and d!868870 b!3166067)))

(declare-fun lambda!115852 () Int)

(assert (=> bs!539521 (= lambda!115852 lambda!115849)))

(declare-fun lt!1064441 () tuple2!34550)

(assert (=> d!868870 (validCacheMap!58 (cache!4211 (_2!20407 lt!1064441)))))

(declare-fun Unit!49824 () Unit!49822)

(declare-datatypes ((tuple2!34552 0))(
  ( (tuple2!34553 (_1!20408 Bool) (_2!20408 MutableMap!4068)) )
))
(declare-fun update!268 (MutableMap!4068 tuple2!34544 Regex!9741) tuple2!34552)

(assert (=> d!868870 (= lt!1064441 (tuple2!34551 Unit!49824 (Cache!407 (_2!20408 (update!268 (cache!4211 (_2!20406 lt!1064399)) (tuple2!34545 (regOne!19995 r!13156) a!2409) (_1!20406 lt!1064399))))))))

(declare-fun lt!1064442 () Unit!49822)

(declare-fun lt!1064444 () Unit!49822)

(assert (=> d!868870 (= lt!1064442 lt!1064444)))

(declare-fun lt!1064443 () tuple2!34544)

(assert (=> d!868870 (forall!7147 (toList!2056 (map!7902 (_2!20408 (update!268 (cache!4211 (_2!20406 lt!1064399)) lt!1064443 (_1!20406 lt!1064399))))) lambda!115852)))

(declare-fun lemmaUpdatePreservesForallPairs!29 (MutableMap!4068 tuple2!34544 Regex!9741 Int) Unit!49822)

(assert (=> d!868870 (= lt!1064444 (lemmaUpdatePreservesForallPairs!29 (cache!4211 (_2!20406 lt!1064399)) lt!1064443 (_1!20406 lt!1064399) lambda!115852))))

(assert (=> d!868870 (= lt!1064443 (tuple2!34545 (regOne!19995 r!13156) a!2409))))

(assert (=> d!868870 (validCacheMap!58 (cache!4211 (_2!20406 lt!1064399)))))

(assert (=> d!868870 (= (update!267 (_2!20406 lt!1064399) (regOne!19995 r!13156) a!2409 (_1!20406 lt!1064399)) lt!1064441)))

(declare-fun bs!539522 () Bool)

(assert (= bs!539522 d!868870))

(declare-fun m!3428004 () Bool)

(assert (=> bs!539522 m!3428004))

(declare-fun m!3428006 () Bool)

(assert (=> bs!539522 m!3428006))

(declare-fun m!3428008 () Bool)

(assert (=> bs!539522 m!3428008))

(declare-fun m!3428010 () Bool)

(assert (=> bs!539522 m!3428010))

(declare-fun m!3428012 () Bool)

(assert (=> bs!539522 m!3428012))

(declare-fun m!3428014 () Bool)

(assert (=> bs!539522 m!3428014))

(declare-fun m!3428016 () Bool)

(assert (=> bs!539522 m!3428016))

(assert (=> b!3165956 d!868870))

(declare-fun lt!1064530 () (_ BitVec 64))

(declare-fun e!1972274 () Regex!9741)

(declare-fun b!3166177 () Bool)

(declare-datatypes ((Option!6904 0))(
  ( (None!6903) (Some!6903 (v!35141 tuple2!34546)) )
))
(declare-fun get!11249 (Option!6904) tuple2!34546)

(declare-fun getPair!95 (List!35574 tuple2!34544) Option!6904)

(declare-fun apply!7950 (MutLongMap!4162 (_ BitVec 64)) List!35574)

(assert (=> b!3166177 (= e!1972274 (_2!20405 (get!11249 (getPair!95 (apply!7950 (v!35139 (underlying!8554 (cache!4211 cache!347))) lt!1064530) (tuple2!34545 r!13156 a!2409)))))))

(declare-fun hash!804 (Hashable!4078 tuple2!34544) (_ BitVec 64))

(assert (=> b!3166177 (= lt!1064530 (hash!804 (hashF!6110 (cache!4211 cache!347)) (tuple2!34545 r!13156 a!2409)))))

(declare-fun c!532505 () Bool)

(declare-datatypes ((tuple2!34554 0))(
  ( (tuple2!34555 (_1!20409 (_ BitVec 64)) (_2!20409 List!35574)) )
))
(declare-datatypes ((List!35575 0))(
  ( (Nil!35451) (Cons!35451 (h!40871 tuple2!34554) (t!234652 List!35575)) )
))
(declare-fun contains!6173 (List!35575 tuple2!34554) Bool)

(declare-datatypes ((ListLongMap!721 0))(
  ( (ListLongMap!722 (toList!2057 List!35575)) )
))
(declare-fun map!7903 (MutLongMap!4162) ListLongMap!721)

(assert (=> b!3166177 (= c!532505 (not (contains!6173 (toList!2057 (map!7903 (v!35139 (underlying!8554 (cache!4211 cache!347))))) (tuple2!34555 lt!1064530 (apply!7950 (v!35139 (underlying!8554 (cache!4211 cache!347))) lt!1064530)))))))

(declare-fun lt!1064520 () Unit!49822)

(declare-fun e!1972273 () Unit!49822)

(assert (=> b!3166177 (= lt!1064520 e!1972273)))

(declare-fun lt!1064534 () Unit!49822)

(declare-fun lambda!115859 () Int)

(declare-fun forallContained!1073 (List!35575 Int tuple2!34554) Unit!49822)

(assert (=> b!3166177 (= lt!1064534 (forallContained!1073 (toList!2057 (map!7903 (v!35139 (underlying!8554 (cache!4211 cache!347))))) lambda!115859 (tuple2!34555 lt!1064530 (apply!7950 (v!35139 (underlying!8554 (cache!4211 cache!347))) lt!1064530))))))

(declare-fun lt!1064529 () ListLongMap!721)

(assert (=> b!3166177 (= lt!1064529 (map!7903 (v!35139 (underlying!8554 (cache!4211 cache!347)))))))

(declare-fun lt!1064524 () Unit!49822)

(declare-fun lemmaGetPairGetSameValueAsMap!33 (ListLongMap!721 tuple2!34544 Regex!9741 Hashable!4078) Unit!49822)

(assert (=> b!3166177 (= lt!1064524 (lemmaGetPairGetSameValueAsMap!33 lt!1064529 (tuple2!34545 r!13156 a!2409) (_2!20405 (get!11249 (getPair!95 (apply!7950 (v!35139 (underlying!8554 (cache!4211 cache!347))) lt!1064530) (tuple2!34545 r!13156 a!2409)))) (hashF!6110 (cache!4211 cache!347))))))

(declare-fun lt!1064507 () Unit!49822)

(declare-fun lemmaInGenMapThenLongMapContainsHash!39 (ListLongMap!721 tuple2!34544 Hashable!4078) Unit!49822)

(assert (=> b!3166177 (= lt!1064507 (lemmaInGenMapThenLongMapContainsHash!39 lt!1064529 (tuple2!34545 r!13156 a!2409) (hashF!6110 (cache!4211 cache!347))))))

(declare-fun contains!6174 (ListLongMap!721 (_ BitVec 64)) Bool)

(assert (=> b!3166177 (contains!6174 lt!1064529 (hash!804 (hashF!6110 (cache!4211 cache!347)) (tuple2!34545 r!13156 a!2409)))))

(declare-fun lt!1064516 () Unit!49822)

(assert (=> b!3166177 (= lt!1064516 lt!1064507)))

(declare-fun lt!1064519 () (_ BitVec 64))

(assert (=> b!3166177 (= lt!1064519 (hash!804 (hashF!6110 (cache!4211 cache!347)) (tuple2!34545 r!13156 a!2409)))))

(declare-fun lt!1064506 () List!35574)

(declare-fun apply!7951 (ListLongMap!721 (_ BitVec 64)) List!35574)

(assert (=> b!3166177 (= lt!1064506 (apply!7951 lt!1064529 (hash!804 (hashF!6110 (cache!4211 cache!347)) (tuple2!34545 r!13156 a!2409))))))

(declare-fun lt!1064511 () Unit!49822)

(declare-fun lemmaGetValueImpliesTupleContained!34 (ListLongMap!721 (_ BitVec 64) List!35574) Unit!49822)

(assert (=> b!3166177 (= lt!1064511 (lemmaGetValueImpliesTupleContained!34 lt!1064529 lt!1064519 lt!1064506))))

(assert (=> b!3166177 (contains!6173 (toList!2057 lt!1064529) (tuple2!34555 lt!1064519 lt!1064506))))

(declare-fun lt!1064531 () Unit!49822)

(assert (=> b!3166177 (= lt!1064531 lt!1064511)))

(declare-fun lt!1064518 () Unit!49822)

(assert (=> b!3166177 (= lt!1064518 (forallContained!1073 (toList!2057 lt!1064529) lambda!115859 (tuple2!34555 (hash!804 (hashF!6110 (cache!4211 cache!347)) (tuple2!34545 r!13156 a!2409)) (apply!7951 lt!1064529 (hash!804 (hashF!6110 (cache!4211 cache!347)) (tuple2!34545 r!13156 a!2409))))))))

(declare-fun lt!1064515 () Unit!49822)

(declare-fun lemmaInGenMapThenGetPairDefined!33 (ListLongMap!721 tuple2!34544 Hashable!4078) Unit!49822)

(assert (=> b!3166177 (= lt!1064515 (lemmaInGenMapThenGetPairDefined!33 lt!1064529 (tuple2!34545 r!13156 a!2409) (hashF!6110 (cache!4211 cache!347))))))

(declare-fun lt!1064523 () Unit!49822)

(assert (=> b!3166177 (= lt!1064523 (lemmaInGenMapThenLongMapContainsHash!39 lt!1064529 (tuple2!34545 r!13156 a!2409) (hashF!6110 (cache!4211 cache!347))))))

(declare-fun lt!1064525 () Unit!49822)

(assert (=> b!3166177 (= lt!1064525 lt!1064523)))

(declare-fun lt!1064532 () (_ BitVec 64))

(assert (=> b!3166177 (= lt!1064532 (hash!804 (hashF!6110 (cache!4211 cache!347)) (tuple2!34545 r!13156 a!2409)))))

(declare-fun lt!1064509 () List!35574)

(assert (=> b!3166177 (= lt!1064509 (apply!7951 lt!1064529 (hash!804 (hashF!6110 (cache!4211 cache!347)) (tuple2!34545 r!13156 a!2409))))))

(declare-fun lt!1064517 () Unit!49822)

(assert (=> b!3166177 (= lt!1064517 (lemmaGetValueImpliesTupleContained!34 lt!1064529 lt!1064532 lt!1064509))))

(assert (=> b!3166177 (contains!6173 (toList!2057 lt!1064529) (tuple2!34555 lt!1064532 lt!1064509))))

(declare-fun lt!1064514 () Unit!49822)

(assert (=> b!3166177 (= lt!1064514 lt!1064517)))

(declare-fun lt!1064526 () Unit!49822)

(assert (=> b!3166177 (= lt!1064526 (forallContained!1073 (toList!2057 lt!1064529) lambda!115859 (tuple2!34555 (hash!804 (hashF!6110 (cache!4211 cache!347)) (tuple2!34545 r!13156 a!2409)) (apply!7951 lt!1064529 (hash!804 (hashF!6110 (cache!4211 cache!347)) (tuple2!34545 r!13156 a!2409))))))))

(declare-fun isDefined!5424 (Option!6904) Bool)

(assert (=> b!3166177 (isDefined!5424 (getPair!95 (apply!7951 lt!1064529 (hash!804 (hashF!6110 (cache!4211 cache!347)) (tuple2!34545 r!13156 a!2409))) (tuple2!34545 r!13156 a!2409)))))

(declare-fun lt!1064521 () Unit!49822)

(assert (=> b!3166177 (= lt!1064521 lt!1064515)))

(declare-fun getValueByKey!177 (List!35574 tuple2!34544) Option!6903)

(declare-fun extractMap!233 (List!35575) ListMap!1303)

(assert (=> b!3166177 (= (_2!20405 (get!11249 (getPair!95 (apply!7951 lt!1064529 (hash!804 (hashF!6110 (cache!4211 cache!347)) (tuple2!34545 r!13156 a!2409))) (tuple2!34545 r!13156 a!2409)))) (get!11248 (getValueByKey!177 (toList!2056 (extractMap!233 (toList!2057 lt!1064529))) (tuple2!34545 r!13156 a!2409))))))

(declare-fun lt!1064513 () Unit!49822)

(assert (=> b!3166177 (= lt!1064513 lt!1064524)))

(declare-fun b!3166178 () Bool)

(assert (=> b!3166178 false))

(declare-fun lt!1064510 () Unit!49822)

(declare-fun lt!1064508 () Unit!49822)

(assert (=> b!3166178 (= lt!1064510 lt!1064508)))

(declare-fun lt!1064512 () List!35575)

(declare-fun lt!1064528 () List!35574)

(assert (=> b!3166178 (contains!6173 lt!1064512 (tuple2!34555 lt!1064530 lt!1064528))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!101 (List!35575 (_ BitVec 64) List!35574) Unit!49822)

(assert (=> b!3166178 (= lt!1064508 (lemmaGetValueByKeyImpliesContainsTuple!101 lt!1064512 lt!1064530 lt!1064528))))

(assert (=> b!3166178 (= lt!1064528 (apply!7950 (v!35139 (underlying!8554 (cache!4211 cache!347))) lt!1064530))))

(assert (=> b!3166178 (= lt!1064512 (toList!2057 (map!7903 (v!35139 (underlying!8554 (cache!4211 cache!347))))))))

(declare-fun lt!1064527 () Unit!49822)

(declare-fun lt!1064505 () Unit!49822)

(assert (=> b!3166178 (= lt!1064527 lt!1064505)))

(declare-fun lt!1064533 () List!35575)

(declare-datatypes ((Option!6905 0))(
  ( (None!6904) (Some!6904 (v!35142 List!35574)) )
))
(declare-fun isDefined!5425 (Option!6905) Bool)

(declare-fun getValueByKey!178 (List!35575 (_ BitVec 64)) Option!6905)

(assert (=> b!3166178 (isDefined!5425 (getValueByKey!178 lt!1064533 lt!1064530))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!129 (List!35575 (_ BitVec 64)) Unit!49822)

(assert (=> b!3166178 (= lt!1064505 (lemmaContainsKeyImpliesGetValueByKeyDefined!129 lt!1064533 lt!1064530))))

(assert (=> b!3166178 (= lt!1064533 (toList!2057 (map!7903 (v!35139 (underlying!8554 (cache!4211 cache!347))))))))

(declare-fun Unit!49825 () Unit!49822)

(assert (=> b!3166178 (= e!1972273 Unit!49825)))

(declare-fun d!868872 () Bool)

(declare-fun e!1972272 () Bool)

(assert (=> d!868872 e!1972272))

(declare-fun c!532506 () Bool)

(assert (=> d!868872 (= c!532506 (contains!6172 (cache!4211 cache!347) (tuple2!34545 r!13156 a!2409)))))

(declare-fun lt!1064522 () Regex!9741)

(assert (=> d!868872 (= lt!1064522 e!1972274)))

(declare-fun c!532504 () Bool)

(assert (=> d!868872 (= c!532504 (not (contains!6172 (cache!4211 cache!347) (tuple2!34545 r!13156 a!2409))))))

(assert (=> d!868872 (valid!3248 (cache!4211 cache!347))))

(assert (=> d!868872 (= (apply!7949 (cache!4211 cache!347) (tuple2!34545 r!13156 a!2409)) lt!1064522)))

(declare-fun b!3166179 () Bool)

(declare-fun dynLambda!14360 (Int tuple2!34544) Regex!9741)

(assert (=> b!3166179 (= e!1972274 (dynLambda!14360 (defaultValue!4239 (cache!4211 cache!347)) (tuple2!34545 r!13156 a!2409)))))

(declare-fun b!3166180 () Bool)

(assert (=> b!3166180 (= e!1972272 (= lt!1064522 (get!11248 (getValueByKey!177 (toList!2056 (map!7902 (cache!4211 cache!347))) (tuple2!34545 r!13156 a!2409)))))))

(declare-fun b!3166181 () Bool)

(declare-fun Unit!49826 () Unit!49822)

(assert (=> b!3166181 (= e!1972273 Unit!49826)))

(declare-fun b!3166182 () Bool)

(assert (=> b!3166182 (= e!1972272 (= lt!1064522 (dynLambda!14360 (defaultValue!4239 (cache!4211 cache!347)) (tuple2!34545 r!13156 a!2409))))))

(assert (= (and d!868872 c!532504) b!3166179))

(assert (= (and d!868872 (not c!532504)) b!3166177))

(assert (= (and b!3166177 c!532505) b!3166178))

(assert (= (and b!3166177 (not c!532505)) b!3166181))

(assert (= (and d!868872 c!532506) b!3166180))

(assert (= (and d!868872 (not c!532506)) b!3166182))

(declare-fun b_lambda!86419 () Bool)

(assert (=> (not b_lambda!86419) (not b!3166179)))

(declare-fun t!234651 () Bool)

(declare-fun tb!155099 () Bool)

(assert (=> (and b!3165888 (= (defaultValue!4239 (cache!4211 cache!347)) (defaultValue!4239 (cache!4211 cache!347))) t!234651) tb!155099))

(assert (=> b!3166179 t!234651))

(declare-fun result!196860 () Bool)

(declare-fun b_and!209395 () Bool)

(assert (= b_and!209391 (and (=> t!234651 result!196860) b_and!209395)))

(declare-fun b_lambda!86421 () Bool)

(assert (=> (not b_lambda!86421) (not b!3166182)))

(assert (=> b!3166182 t!234651))

(declare-fun b_and!209397 () Bool)

(assert (= b_and!209395 (and (=> t!234651 result!196860) b_and!209397)))

(declare-fun m!3428018 () Bool)

(assert (=> b!3166178 m!3428018))

(declare-fun m!3428020 () Bool)

(assert (=> b!3166178 m!3428020))

(declare-fun m!3428022 () Bool)

(assert (=> b!3166178 m!3428022))

(declare-fun m!3428024 () Bool)

(assert (=> b!3166178 m!3428024))

(declare-fun m!3428026 () Bool)

(assert (=> b!3166178 m!3428026))

(declare-fun m!3428028 () Bool)

(assert (=> b!3166178 m!3428028))

(declare-fun m!3428030 () Bool)

(assert (=> b!3166178 m!3428030))

(assert (=> b!3166178 m!3428026))

(assert (=> d!868872 m!3427911))

(assert (=> d!868872 m!3427928))

(declare-fun m!3428032 () Bool)

(assert (=> b!3166179 m!3428032))

(assert (=> b!3166182 m!3428032))

(assert (=> b!3166180 m!3427930))

(declare-fun m!3428034 () Bool)

(assert (=> b!3166180 m!3428034))

(assert (=> b!3166180 m!3428034))

(declare-fun m!3428036 () Bool)

(assert (=> b!3166180 m!3428036))

(declare-fun m!3428038 () Bool)

(assert (=> b!3166177 m!3428038))

(declare-fun m!3428040 () Bool)

(assert (=> b!3166177 m!3428040))

(declare-fun m!3428042 () Bool)

(assert (=> b!3166177 m!3428042))

(declare-fun m!3428044 () Bool)

(assert (=> b!3166177 m!3428044))

(declare-fun m!3428046 () Bool)

(assert (=> b!3166177 m!3428046))

(declare-fun m!3428048 () Bool)

(assert (=> b!3166177 m!3428048))

(declare-fun m!3428050 () Bool)

(assert (=> b!3166177 m!3428050))

(declare-fun m!3428052 () Bool)

(assert (=> b!3166177 m!3428052))

(declare-fun m!3428054 () Bool)

(assert (=> b!3166177 m!3428054))

(declare-fun m!3428056 () Bool)

(assert (=> b!3166177 m!3428056))

(assert (=> b!3166177 m!3428040))

(declare-fun m!3428058 () Bool)

(assert (=> b!3166177 m!3428058))

(declare-fun m!3428060 () Bool)

(assert (=> b!3166177 m!3428060))

(assert (=> b!3166177 m!3428052))

(declare-fun m!3428062 () Bool)

(assert (=> b!3166177 m!3428062))

(assert (=> b!3166177 m!3428056))

(declare-fun m!3428064 () Bool)

(assert (=> b!3166177 m!3428064))

(declare-fun m!3428066 () Bool)

(assert (=> b!3166177 m!3428066))

(declare-fun m!3428068 () Bool)

(assert (=> b!3166177 m!3428068))

(declare-fun m!3428070 () Bool)

(assert (=> b!3166177 m!3428070))

(assert (=> b!3166177 m!3428018))

(assert (=> b!3166177 m!3428048))

(assert (=> b!3166177 m!3428030))

(assert (=> b!3166177 m!3428052))

(declare-fun m!3428072 () Bool)

(assert (=> b!3166177 m!3428072))

(assert (=> b!3166177 m!3428030))

(assert (=> b!3166177 m!3428066))

(assert (=> b!3166177 m!3428056))

(assert (=> b!3166177 m!3428060))

(declare-fun m!3428074 () Bool)

(assert (=> b!3166177 m!3428074))

(declare-fun m!3428076 () Bool)

(assert (=> b!3166177 m!3428076))

(declare-fun m!3428078 () Bool)

(assert (=> b!3166177 m!3428078))

(assert (=> b!3166001 d!868872))

(declare-fun bs!539523 () Bool)

(declare-fun b!3166193 () Bool)

(assert (= bs!539523 (and b!3166193 b!3166067)))

(declare-fun lambda!115862 () Int)

(assert (=> bs!539523 (= lambda!115862 lambda!115849)))

(declare-fun bs!539524 () Bool)

(assert (= bs!539524 (and b!3166193 d!868870)))

(assert (=> bs!539524 (= lambda!115862 lambda!115852)))

(declare-fun b!3166195 () Bool)

(declare-fun lt!1064556 () tuple2!34544)

(declare-fun lt!1064552 () tuple2!34544)

(assert (=> b!3166195 (= lt!1064556 lt!1064552)))

(declare-fun lt!1064555 () Regex!9741)

(assert (=> b!3166195 (= lt!1064555 (apply!7949 (cache!4211 cache!347) lt!1064552))))

(declare-fun lt!1064554 () Regex!9741)

(assert (=> b!3166195 (= lt!1064554 (apply!7949 (cache!4211 cache!347) lt!1064552))))

(declare-fun e!1972287 () Bool)

(assert (=> b!3166195 (= e!1972287 (= (apply!7949 (cache!4211 cache!347) lt!1064552) (derivativeStep!2891 (_1!20404 lt!1064552) (_2!20404 lt!1064552))))))

(declare-fun b!3166194 () Bool)

(declare-fun e!1972288 () Unit!49822)

(declare-fun Unit!49827 () Unit!49822)

(assert (=> b!3166194 (= e!1972288 Unit!49827)))

(declare-fun e!1972289 () Bool)

(declare-fun b!3166196 () Bool)

(assert (=> b!3166196 (= e!1972289 (= (derivativeStep!2891 r!13156 a!2409) (apply!7949 (cache!4211 cache!347) (tuple2!34545 r!13156 a!2409))))))

(declare-fun d!868874 () Bool)

(assert (=> d!868874 e!1972289))

(declare-fun res!1288032 () Bool)

(assert (=> d!868874 (=> res!1288032 e!1972289)))

(assert (=> d!868874 (= res!1288032 (not (contains!6172 (cache!4211 cache!347) (tuple2!34545 r!13156 a!2409))))))

(declare-fun lt!1064558 () Unit!49822)

(assert (=> d!868874 (= lt!1064558 e!1972288)))

(declare-fun c!532510 () Bool)

(assert (=> d!868874 (= c!532510 (contains!6172 (cache!4211 cache!347) (tuple2!34545 r!13156 a!2409)))))

(assert (=> d!868874 (validCacheMap!58 (cache!4211 cache!347))))

(assert (=> d!868874 (= (lemmaIfInCacheThenValid!55 cache!347 r!13156 a!2409) lt!1064558)))

(declare-fun lt!1064557 () Unit!49822)

(assert (=> b!3166193 (= e!1972288 lt!1064557)))

(assert (=> b!3166193 (= lt!1064552 (tuple2!34545 r!13156 a!2409))))

(declare-fun lemmaForallPairsThenForLookup!47 (MutableMap!4068 tuple2!34544 Int) Unit!49822)

(assert (=> b!3166193 (= lt!1064557 (lemmaForallPairsThenForLookup!47 (cache!4211 cache!347) lt!1064552 lambda!115862))))

(declare-fun lt!1064553 () tuple2!34546)

(assert (=> b!3166193 (= lt!1064553 (tuple2!34547 lt!1064552 (apply!7949 (cache!4211 cache!347) lt!1064552)))))

(declare-fun lt!1064551 () Regex!9741)

(assert (=> b!3166193 (= lt!1064551 (apply!7949 (cache!4211 cache!347) lt!1064552))))

(declare-fun res!1288033 () Bool)

(assert (=> b!3166193 (= res!1288033 (validRegex!4462 (_1!20404 lt!1064552)))))

(assert (=> b!3166193 (=> (not res!1288033) (not e!1972287))))

(assert (=> b!3166193 e!1972287))

(assert (= (and d!868874 c!532510) b!3166193))

(assert (= (and d!868874 (not c!532510)) b!3166194))

(assert (= (and b!3166193 res!1288033) b!3166195))

(assert (= (and d!868874 (not res!1288032)) b!3166196))

(declare-fun m!3428080 () Bool)

(assert (=> b!3166195 m!3428080))

(declare-fun m!3428082 () Bool)

(assert (=> b!3166195 m!3428082))

(assert (=> b!3166196 m!3427919))

(assert (=> b!3166196 m!3427913))

(assert (=> d!868874 m!3427911))

(assert (=> d!868874 m!3427907))

(declare-fun m!3428084 () Bool)

(assert (=> b!3166193 m!3428084))

(assert (=> b!3166193 m!3428080))

(declare-fun m!3428086 () Bool)

(assert (=> b!3166193 m!3428086))

(assert (=> b!3166001 d!868874))

(declare-fun c!532511 () Bool)

(declare-fun b!3166197 () Bool)

(assert (=> b!3166197 (= c!532511 ((_ is EmptyExpr!9741) (ite c!532416 (regTwo!19994 (regTwo!19995 r!13156)) (ite c!532415 (reg!10070 (regTwo!19995 r!13156)) (regTwo!19995 (regTwo!19995 r!13156))))))))

(declare-fun e!1972290 () Int)

(declare-fun e!1972291 () Int)

(assert (=> b!3166197 (= e!1972290 e!1972291)))

(declare-fun b!3166198 () Bool)

(declare-fun e!1972294 () Int)

(declare-fun call!229590 () Int)

(declare-fun call!229591 () Int)

(assert (=> b!3166198 (= e!1972294 (+ 1 call!229590 call!229591))))

(declare-fun bm!229585 () Bool)

(declare-fun call!229592 () Int)

(assert (=> bm!229585 (= call!229591 call!229592)))

(declare-fun c!532515 () Bool)

(declare-fun c!532514 () Bool)

(declare-fun bm!229586 () Bool)

(assert (=> bm!229586 (= call!229592 (RegexPrimitiveSize!129 (ite c!532515 (regTwo!19994 (ite c!532416 (regTwo!19994 (regTwo!19995 r!13156)) (ite c!532415 (reg!10070 (regTwo!19995 r!13156)) (regTwo!19995 (regTwo!19995 r!13156))))) (ite c!532514 (reg!10070 (ite c!532416 (regTwo!19994 (regTwo!19995 r!13156)) (ite c!532415 (reg!10070 (regTwo!19995 r!13156)) (regTwo!19995 (regTwo!19995 r!13156))))) (regTwo!19995 (ite c!532416 (regTwo!19994 (regTwo!19995 r!13156)) (ite c!532415 (reg!10070 (regTwo!19995 r!13156)) (regTwo!19995 (regTwo!19995 r!13156)))))))))))

(declare-fun b!3166199 () Bool)

(declare-fun c!532513 () Bool)

(assert (=> b!3166199 (= c!532513 ((_ is EmptyLang!9741) (ite c!532416 (regTwo!19994 (regTwo!19995 r!13156)) (ite c!532415 (reg!10070 (regTwo!19995 r!13156)) (regTwo!19995 (regTwo!19995 r!13156))))))))

(declare-fun e!1972292 () Int)

(assert (=> b!3166199 (= e!1972292 e!1972294)))

(declare-fun b!3166200 () Bool)

(assert (=> b!3166200 (= e!1972291 0)))

(declare-fun b!3166201 () Bool)

(assert (=> b!3166201 (= e!1972294 0)))

(declare-fun b!3166202 () Bool)

(assert (=> b!3166202 (= e!1972291 e!1972292)))

(assert (=> b!3166202 (= c!532514 ((_ is Star!9741) (ite c!532416 (regTwo!19994 (regTwo!19995 r!13156)) (ite c!532415 (reg!10070 (regTwo!19995 r!13156)) (regTwo!19995 (regTwo!19995 r!13156))))))))

(declare-fun b!3166203 () Bool)

(declare-fun e!1972293 () Int)

(assert (=> b!3166203 (= e!1972293 1)))

(declare-fun d!868876 () Bool)

(declare-fun lt!1064559 () Int)

(assert (=> d!868876 (>= lt!1064559 0)))

(assert (=> d!868876 (= lt!1064559 e!1972293)))

(declare-fun c!532512 () Bool)

(assert (=> d!868876 (= c!532512 ((_ is ElementMatch!9741) (ite c!532416 (regTwo!19994 (regTwo!19995 r!13156)) (ite c!532415 (reg!10070 (regTwo!19995 r!13156)) (regTwo!19995 (regTwo!19995 r!13156))))))))

(assert (=> d!868876 (= (RegexPrimitiveSize!129 (ite c!532416 (regTwo!19994 (regTwo!19995 r!13156)) (ite c!532415 (reg!10070 (regTwo!19995 r!13156)) (regTwo!19995 (regTwo!19995 r!13156))))) lt!1064559)))

(declare-fun bm!229587 () Bool)

(assert (=> bm!229587 (= call!229590 (RegexPrimitiveSize!129 (ite c!532515 (regOne!19994 (ite c!532416 (regTwo!19994 (regTwo!19995 r!13156)) (ite c!532415 (reg!10070 (regTwo!19995 r!13156)) (regTwo!19995 (regTwo!19995 r!13156))))) (regOne!19995 (ite c!532416 (regTwo!19994 (regTwo!19995 r!13156)) (ite c!532415 (reg!10070 (regTwo!19995 r!13156)) (regTwo!19995 (regTwo!19995 r!13156))))))))))

(declare-fun b!3166204 () Bool)

(assert (=> b!3166204 (= e!1972293 e!1972290)))

(assert (=> b!3166204 (= c!532515 ((_ is Concat!15062) (ite c!532416 (regTwo!19994 (regTwo!19995 r!13156)) (ite c!532415 (reg!10070 (regTwo!19995 r!13156)) (regTwo!19995 (regTwo!19995 r!13156))))))))

(declare-fun b!3166205 () Bool)

(assert (=> b!3166205 (= e!1972292 (+ 1 call!229591))))

(declare-fun b!3166206 () Bool)

(assert (=> b!3166206 (= e!1972290 (+ 1 call!229590 call!229592))))

(assert (= (and d!868876 c!532512) b!3166203))

(assert (= (and d!868876 (not c!532512)) b!3166204))

(assert (= (and b!3166204 c!532515) b!3166206))

(assert (= (and b!3166204 (not c!532515)) b!3166197))

(assert (= (and b!3166197 c!532511) b!3166200))

(assert (= (and b!3166197 (not c!532511)) b!3166202))

(assert (= (and b!3166202 c!532514) b!3166205))

(assert (= (and b!3166202 (not c!532514)) b!3166199))

(assert (= (and b!3166199 c!532513) b!3166201))

(assert (= (and b!3166199 (not c!532513)) b!3166198))

(assert (= (or b!3166205 b!3166198) bm!229585))

(assert (= (or b!3166206 bm!229585) bm!229586))

(assert (= (or b!3166206 b!3166198) bm!229587))

(declare-fun m!3428088 () Bool)

(assert (=> bm!229586 m!3428088))

(declare-fun m!3428090 () Bool)

(assert (=> bm!229587 m!3428090))

(assert (=> bm!229524 d!868876))

(declare-fun d!868878 () Bool)

(assert (=> d!868878 (= (get!11248 lt!1064406) (v!35140 lt!1064406))))

(assert (=> b!3166003 d!868878))

(declare-fun call!229594 () Regex!9741)

(declare-fun call!229595 () Regex!9741)

(declare-fun e!1972297 () Regex!9741)

(declare-fun b!3166207 () Bool)

(assert (=> b!3166207 (= e!1972297 (Union!9741 (Concat!15062 call!229594 (regTwo!19994 r!13156)) call!229595))))

(declare-fun b!3166208 () Bool)

(declare-fun e!1972298 () Regex!9741)

(assert (=> b!3166208 (= e!1972298 (ite (= a!2409 (c!532401 r!13156)) EmptyExpr!9741 EmptyLang!9741))))

(declare-fun bm!229588 () Bool)

(declare-fun call!229593 () Regex!9741)

(declare-fun call!229596 () Regex!9741)

(assert (=> bm!229588 (= call!229593 call!229596)))

(declare-fun d!868880 () Bool)

(declare-fun lt!1064560 () Regex!9741)

(assert (=> d!868880 (validRegex!4462 lt!1064560)))

(declare-fun e!1972296 () Regex!9741)

(assert (=> d!868880 (= lt!1064560 e!1972296)))

(declare-fun c!532518 () Bool)

(assert (=> d!868880 (= c!532518 (or ((_ is EmptyExpr!9741) r!13156) ((_ is EmptyLang!9741) r!13156)))))

(assert (=> d!868880 (validRegex!4462 r!13156)))

(assert (=> d!868880 (= (derivativeStep!2891 r!13156 a!2409) lt!1064560)))

(declare-fun b!3166209 () Bool)

(declare-fun e!1972299 () Regex!9741)

(assert (=> b!3166209 (= e!1972299 (Concat!15062 call!229593 r!13156))))

(declare-fun b!3166210 () Bool)

(declare-fun c!532516 () Bool)

(assert (=> b!3166210 (= c!532516 ((_ is Union!9741) r!13156))))

(declare-fun e!1972295 () Regex!9741)

(assert (=> b!3166210 (= e!1972298 e!1972295)))

(declare-fun b!3166211 () Bool)

(assert (=> b!3166211 (= e!1972295 e!1972299)))

(declare-fun c!532520 () Bool)

(assert (=> b!3166211 (= c!532520 ((_ is Star!9741) r!13156))))

(declare-fun bm!229589 () Bool)

(assert (=> bm!229589 (= call!229596 (derivativeStep!2891 (ite c!532516 (regTwo!19995 r!13156) (ite c!532520 (reg!10070 r!13156) (regOne!19994 r!13156))) a!2409))))

(declare-fun bm!229590 () Bool)

(assert (=> bm!229590 (= call!229595 (derivativeStep!2891 (ite c!532516 (regOne!19995 r!13156) (regTwo!19994 r!13156)) a!2409))))

(declare-fun b!3166212 () Bool)

(declare-fun c!532519 () Bool)

(assert (=> b!3166212 (= c!532519 (nullable!3344 (regOne!19994 r!13156)))))

(assert (=> b!3166212 (= e!1972299 e!1972297)))

(declare-fun bm!229591 () Bool)

(assert (=> bm!229591 (= call!229594 call!229593)))

(declare-fun b!3166213 () Bool)

(assert (=> b!3166213 (= e!1972297 (Union!9741 (Concat!15062 call!229594 (regTwo!19994 r!13156)) EmptyLang!9741))))

(declare-fun b!3166214 () Bool)

(assert (=> b!3166214 (= e!1972295 (Union!9741 call!229595 call!229596))))

(declare-fun b!3166215 () Bool)

(assert (=> b!3166215 (= e!1972296 e!1972298)))

(declare-fun c!532517 () Bool)

(assert (=> b!3166215 (= c!532517 ((_ is ElementMatch!9741) r!13156))))

(declare-fun b!3166216 () Bool)

(assert (=> b!3166216 (= e!1972296 EmptyLang!9741)))

(assert (= (and d!868880 c!532518) b!3166216))

(assert (= (and d!868880 (not c!532518)) b!3166215))

(assert (= (and b!3166215 c!532517) b!3166208))

(assert (= (and b!3166215 (not c!532517)) b!3166210))

(assert (= (and b!3166210 c!532516) b!3166214))

(assert (= (and b!3166210 (not c!532516)) b!3166211))

(assert (= (and b!3166211 c!532520) b!3166209))

(assert (= (and b!3166211 (not c!532520)) b!3166212))

(assert (= (and b!3166212 c!532519) b!3166207))

(assert (= (and b!3166212 (not c!532519)) b!3166213))

(assert (= (or b!3166207 b!3166213) bm!229591))

(assert (= (or b!3166209 bm!229591) bm!229588))

(assert (= (or b!3166214 bm!229588) bm!229589))

(assert (= (or b!3166214 b!3166207) bm!229590))

(declare-fun m!3428092 () Bool)

(assert (=> d!868880 m!3428092))

(assert (=> d!868880 m!3427873))

(declare-fun m!3428094 () Bool)

(assert (=> bm!229589 m!3428094))

(declare-fun m!3428096 () Bool)

(assert (=> bm!229590 m!3428096))

(declare-fun m!3428098 () Bool)

(assert (=> b!3166212 m!3428098))

(assert (=> b!3166003 d!868880))

(declare-fun b!3166217 () Bool)

(declare-fun e!1972302 () Bool)

(declare-fun e!1972300 () Bool)

(assert (=> b!3166217 (= e!1972302 e!1972300)))

(declare-fun res!1288038 () Bool)

(assert (=> b!3166217 (=> (not res!1288038) (not e!1972300))))

(declare-fun call!229599 () Bool)

(assert (=> b!3166217 (= res!1288038 call!229599)))

(declare-fun b!3166218 () Bool)

(declare-fun res!1288035 () Bool)

(declare-fun e!1972304 () Bool)

(assert (=> b!3166218 (=> (not res!1288035) (not e!1972304))))

(assert (=> b!3166218 (= res!1288035 call!229599)))

(declare-fun e!1972301 () Bool)

(assert (=> b!3166218 (= e!1972301 e!1972304)))

(declare-fun call!229597 () Bool)

(declare-fun c!532521 () Bool)

(declare-fun bm!229592 () Bool)

(assert (=> bm!229592 (= call!229597 (validRegex!4462 (ite c!532521 (regTwo!19995 (ite c!532445 (reg!10070 r!13156) (ite c!532444 (regOne!19995 r!13156) (regOne!19994 r!13156)))) (regTwo!19994 (ite c!532445 (reg!10070 r!13156) (ite c!532444 (regOne!19995 r!13156) (regOne!19994 r!13156)))))))))

(declare-fun call!229598 () Bool)

(declare-fun c!532522 () Bool)

(declare-fun bm!229593 () Bool)

(assert (=> bm!229593 (= call!229598 (validRegex!4462 (ite c!532522 (reg!10070 (ite c!532445 (reg!10070 r!13156) (ite c!532444 (regOne!19995 r!13156) (regOne!19994 r!13156)))) (ite c!532521 (regOne!19995 (ite c!532445 (reg!10070 r!13156) (ite c!532444 (regOne!19995 r!13156) (regOne!19994 r!13156)))) (regOne!19994 (ite c!532445 (reg!10070 r!13156) (ite c!532444 (regOne!19995 r!13156) (regOne!19994 r!13156))))))))))

(declare-fun d!868882 () Bool)

(declare-fun res!1288034 () Bool)

(declare-fun e!1972305 () Bool)

(assert (=> d!868882 (=> res!1288034 e!1972305)))

(assert (=> d!868882 (= res!1288034 ((_ is ElementMatch!9741) (ite c!532445 (reg!10070 r!13156) (ite c!532444 (regOne!19995 r!13156) (regOne!19994 r!13156)))))))

(assert (=> d!868882 (= (validRegex!4462 (ite c!532445 (reg!10070 r!13156) (ite c!532444 (regOne!19995 r!13156) (regOne!19994 r!13156)))) e!1972305)))

(declare-fun b!3166219 () Bool)

(declare-fun res!1288036 () Bool)

(assert (=> b!3166219 (=> res!1288036 e!1972302)))

(assert (=> b!3166219 (= res!1288036 (not ((_ is Concat!15062) (ite c!532445 (reg!10070 r!13156) (ite c!532444 (regOne!19995 r!13156) (regOne!19994 r!13156))))))))

(assert (=> b!3166219 (= e!1972301 e!1972302)))

(declare-fun bm!229594 () Bool)

(assert (=> bm!229594 (= call!229599 call!229598)))

(declare-fun b!3166220 () Bool)

(assert (=> b!3166220 (= e!1972300 call!229597)))

(declare-fun b!3166221 () Bool)

(declare-fun e!1972303 () Bool)

(assert (=> b!3166221 (= e!1972305 e!1972303)))

(assert (=> b!3166221 (= c!532522 ((_ is Star!9741) (ite c!532445 (reg!10070 r!13156) (ite c!532444 (regOne!19995 r!13156) (regOne!19994 r!13156)))))))

(declare-fun b!3166222 () Bool)

(assert (=> b!3166222 (= e!1972303 e!1972301)))

(assert (=> b!3166222 (= c!532521 ((_ is Union!9741) (ite c!532445 (reg!10070 r!13156) (ite c!532444 (regOne!19995 r!13156) (regOne!19994 r!13156)))))))

(declare-fun b!3166223 () Bool)

(declare-fun e!1972306 () Bool)

(assert (=> b!3166223 (= e!1972303 e!1972306)))

(declare-fun res!1288037 () Bool)

(assert (=> b!3166223 (= res!1288037 (not (nullable!3344 (reg!10070 (ite c!532445 (reg!10070 r!13156) (ite c!532444 (regOne!19995 r!13156) (regOne!19994 r!13156)))))))))

(assert (=> b!3166223 (=> (not res!1288037) (not e!1972306))))

(declare-fun b!3166224 () Bool)

(assert (=> b!3166224 (= e!1972306 call!229598)))

(declare-fun b!3166225 () Bool)

(assert (=> b!3166225 (= e!1972304 call!229597)))

(assert (= (and d!868882 (not res!1288034)) b!3166221))

(assert (= (and b!3166221 c!532522) b!3166223))

(assert (= (and b!3166221 (not c!532522)) b!3166222))

(assert (= (and b!3166223 res!1288037) b!3166224))

(assert (= (and b!3166222 c!532521) b!3166218))

(assert (= (and b!3166222 (not c!532521)) b!3166219))

(assert (= (and b!3166218 res!1288035) b!3166225))

(assert (= (and b!3166219 (not res!1288036)) b!3166217))

(assert (= (and b!3166217 res!1288038) b!3166220))

(assert (= (or b!3166218 b!3166217) bm!229594))

(assert (= (or b!3166225 b!3166220) bm!229592))

(assert (= (or b!3166224 bm!229594) bm!229593))

(declare-fun m!3428100 () Bool)

(assert (=> bm!229592 m!3428100))

(declare-fun m!3428102 () Bool)

(assert (=> bm!229593 m!3428102))

(declare-fun m!3428104 () Bool)

(assert (=> b!3166223 m!3428104))

(assert (=> bm!229548 d!868882))

(declare-fun d!868884 () Bool)

(assert (=> d!868884 (= (isEmpty!19757 lt!1064406) (not ((_ is Some!6902) lt!1064406)))))

(assert (=> d!868842 d!868884))

(declare-fun bs!539525 () Bool)

(declare-fun b!3166257 () Bool)

(assert (= bs!539525 (and b!3166257 b!3166177)))

(declare-fun lambda!115865 () Int)

(assert (=> bs!539525 (= lambda!115865 lambda!115859)))

(declare-fun bm!229607 () Bool)

(declare-fun call!229612 () Bool)

(declare-fun call!229617 () Option!6904)

(assert (=> bm!229607 (= call!229612 (isDefined!5424 call!229617))))

(declare-fun d!868886 () Bool)

(declare-fun lt!1064619 () Bool)

(declare-fun contains!6175 (ListMap!1303 tuple2!34544) Bool)

(assert (=> d!868886 (= lt!1064619 (contains!6175 (map!7902 (cache!4211 cache!347)) (tuple2!34545 r!13156 a!2409)))))

(declare-fun e!1972324 () Bool)

(assert (=> d!868886 (= lt!1064619 e!1972324)))

(declare-fun res!1288045 () Bool)

(assert (=> d!868886 (=> (not res!1288045) (not e!1972324))))

(declare-fun lt!1064620 () (_ BitVec 64))

(declare-fun contains!6176 (MutLongMap!4162 (_ BitVec 64)) Bool)

(assert (=> d!868886 (= res!1288045 (contains!6176 (v!35139 (underlying!8554 (cache!4211 cache!347))) lt!1064620))))

(declare-fun lt!1064607 () Unit!49822)

(declare-fun e!1972321 () Unit!49822)

(assert (=> d!868886 (= lt!1064607 e!1972321)))

(declare-fun c!532532 () Bool)

(assert (=> d!868886 (= c!532532 (contains!6175 (extractMap!233 (toList!2057 (map!7903 (v!35139 (underlying!8554 (cache!4211 cache!347)))))) (tuple2!34545 r!13156 a!2409)))))

(declare-fun lt!1064601 () Unit!49822)

(declare-fun e!1972326 () Unit!49822)

(assert (=> d!868886 (= lt!1064601 e!1972326)))

(declare-fun c!532534 () Bool)

(assert (=> d!868886 (= c!532534 (contains!6176 (v!35139 (underlying!8554 (cache!4211 cache!347))) lt!1064620))))

(assert (=> d!868886 (= lt!1064620 (hash!804 (hashF!6110 (cache!4211 cache!347)) (tuple2!34545 r!13156 a!2409)))))

(assert (=> d!868886 (valid!3248 (cache!4211 cache!347))))

(assert (=> d!868886 (= (contains!6172 (cache!4211 cache!347) (tuple2!34545 r!13156 a!2409)) lt!1064619)))

(declare-fun bm!229608 () Bool)

(declare-fun call!229615 () List!35574)

(assert (=> bm!229608 (= call!229617 (getPair!95 call!229615 (tuple2!34545 r!13156 a!2409)))))

(declare-fun lt!1064608 () ListLongMap!721)

(declare-fun call!229614 () ListLongMap!721)

(declare-fun call!229613 () (_ BitVec 64))

(declare-fun bm!229609 () Bool)

(assert (=> bm!229609 (= call!229615 (apply!7951 (ite c!532532 lt!1064608 call!229614) call!229613))))

(declare-fun b!3166248 () Bool)

(declare-fun e!1972327 () Bool)

(assert (=> b!3166248 (= e!1972327 call!229612)))

(declare-fun call!229616 () Bool)

(declare-fun bm!229610 () Bool)

(assert (=> bm!229610 (= call!229616 (contains!6174 (ite c!532532 lt!1064608 call!229614) call!229613))))

(declare-fun b!3166249 () Bool)

(assert (=> b!3166249 false))

(declare-fun lt!1064617 () Unit!49822)

(declare-fun lt!1064611 () Unit!49822)

(assert (=> b!3166249 (= lt!1064617 lt!1064611)))

(declare-fun lt!1064604 () ListLongMap!721)

(assert (=> b!3166249 (contains!6175 (extractMap!233 (toList!2057 lt!1064604)) (tuple2!34545 r!13156 a!2409))))

(declare-fun lemmaInLongMapThenInGenericMap!95 (ListLongMap!721 tuple2!34544 Hashable!4078) Unit!49822)

(assert (=> b!3166249 (= lt!1064611 (lemmaInLongMapThenInGenericMap!95 lt!1064604 (tuple2!34545 r!13156 a!2409) (hashF!6110 (cache!4211 cache!347))))))

(assert (=> b!3166249 (= lt!1064604 call!229614)))

(declare-fun e!1972325 () Unit!49822)

(declare-fun Unit!49828 () Unit!49822)

(assert (=> b!3166249 (= e!1972325 Unit!49828)))

(declare-fun bm!229611 () Bool)

(assert (=> bm!229611 (= call!229613 (hash!804 (hashF!6110 (cache!4211 cache!347)) (tuple2!34545 r!13156 a!2409)))))

(declare-fun b!3166250 () Bool)

(declare-fun Unit!49829 () Unit!49822)

(assert (=> b!3166250 (= e!1972325 Unit!49829)))

(declare-fun b!3166251 () Bool)

(declare-fun e!1972323 () Unit!49822)

(declare-fun Unit!49830 () Unit!49822)

(assert (=> b!3166251 (= e!1972323 Unit!49830)))

(declare-fun b!3166252 () Bool)

(assert (=> b!3166252 (= e!1972324 (isDefined!5424 (getPair!95 (apply!7950 (v!35139 (underlying!8554 (cache!4211 cache!347))) lt!1064620) (tuple2!34545 r!13156 a!2409))))))

(declare-fun b!3166253 () Bool)

(declare-fun lt!1064605 () Unit!49822)

(assert (=> b!3166253 (= e!1972321 lt!1064605)))

(assert (=> b!3166253 (= lt!1064608 call!229614)))

(declare-fun lemmaInGenericMapThenInLongMap!95 (ListLongMap!721 tuple2!34544 Hashable!4078) Unit!49822)

(assert (=> b!3166253 (= lt!1064605 (lemmaInGenericMapThenInLongMap!95 lt!1064608 (tuple2!34545 r!13156 a!2409) (hashF!6110 (cache!4211 cache!347))))))

(declare-fun res!1288047 () Bool)

(assert (=> b!3166253 (= res!1288047 call!229616)))

(assert (=> b!3166253 (=> (not res!1288047) (not e!1972327))))

(assert (=> b!3166253 e!1972327))

(declare-fun b!3166254 () Bool)

(declare-fun e!1972322 () Bool)

(assert (=> b!3166254 (= e!1972322 call!229612)))

(declare-fun b!3166255 () Bool)

(assert (=> b!3166255 false))

(declare-fun lt!1064602 () Unit!49822)

(declare-fun lt!1064613 () Unit!49822)

(assert (=> b!3166255 (= lt!1064602 lt!1064613)))

(declare-fun lt!1064616 () List!35575)

(declare-fun lt!1064612 () List!35574)

(assert (=> b!3166255 (contains!6173 lt!1064616 (tuple2!34555 lt!1064620 lt!1064612))))

(assert (=> b!3166255 (= lt!1064613 (lemmaGetValueByKeyImpliesContainsTuple!101 lt!1064616 lt!1064620 lt!1064612))))

(assert (=> b!3166255 (= lt!1064612 (apply!7950 (v!35139 (underlying!8554 (cache!4211 cache!347))) lt!1064620))))

(assert (=> b!3166255 (= lt!1064616 (toList!2057 (map!7903 (v!35139 (underlying!8554 (cache!4211 cache!347))))))))

(declare-fun lt!1064609 () Unit!49822)

(declare-fun lt!1064614 () Unit!49822)

(assert (=> b!3166255 (= lt!1064609 lt!1064614)))

(declare-fun lt!1064615 () List!35575)

(assert (=> b!3166255 (isDefined!5425 (getValueByKey!178 lt!1064615 lt!1064620))))

(assert (=> b!3166255 (= lt!1064614 (lemmaContainsKeyImpliesGetValueByKeyDefined!129 lt!1064615 lt!1064620))))

(assert (=> b!3166255 (= lt!1064615 (toList!2057 (map!7903 (v!35139 (underlying!8554 (cache!4211 cache!347))))))))

(declare-fun lt!1064606 () Unit!49822)

(declare-fun lt!1064610 () Unit!49822)

(assert (=> b!3166255 (= lt!1064606 lt!1064610)))

(declare-fun lt!1064603 () List!35575)

(declare-fun containsKey!193 (List!35575 (_ BitVec 64)) Bool)

(assert (=> b!3166255 (containsKey!193 lt!1064603 lt!1064620)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!96 (List!35575 (_ BitVec 64)) Unit!49822)

(assert (=> b!3166255 (= lt!1064610 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!96 lt!1064603 lt!1064620))))

(assert (=> b!3166255 (= lt!1064603 (toList!2057 (map!7903 (v!35139 (underlying!8554 (cache!4211 cache!347))))))))

(declare-fun Unit!49831 () Unit!49822)

(assert (=> b!3166255 (= e!1972323 Unit!49831)))

(declare-fun b!3166256 () Bool)

(declare-fun Unit!49832 () Unit!49822)

(assert (=> b!3166256 (= e!1972326 Unit!49832)))

(declare-fun bm!229612 () Bool)

(assert (=> bm!229612 (= call!229614 (map!7903 (v!35139 (underlying!8554 (cache!4211 cache!347)))))))

(assert (=> b!3166257 (= e!1972326 (forallContained!1073 (toList!2057 (map!7903 (v!35139 (underlying!8554 (cache!4211 cache!347))))) lambda!115865 (tuple2!34555 lt!1064620 (apply!7950 (v!35139 (underlying!8554 (cache!4211 cache!347))) lt!1064620))))))

(declare-fun c!532531 () Bool)

(assert (=> b!3166257 (= c!532531 (not (contains!6173 (toList!2057 (map!7903 (v!35139 (underlying!8554 (cache!4211 cache!347))))) (tuple2!34555 lt!1064620 (apply!7950 (v!35139 (underlying!8554 (cache!4211 cache!347))) lt!1064620)))))))

(declare-fun lt!1064618 () Unit!49822)

(assert (=> b!3166257 (= lt!1064618 e!1972323)))

(declare-fun b!3166258 () Bool)

(assert (=> b!3166258 (= e!1972321 e!1972325)))

(declare-fun res!1288046 () Bool)

(assert (=> b!3166258 (= res!1288046 call!229616)))

(assert (=> b!3166258 (=> (not res!1288046) (not e!1972322))))

(declare-fun c!532533 () Bool)

(assert (=> b!3166258 (= c!532533 e!1972322)))

(assert (= (and d!868886 c!532534) b!3166257))

(assert (= (and d!868886 (not c!532534)) b!3166256))

(assert (= (and b!3166257 c!532531) b!3166255))

(assert (= (and b!3166257 (not c!532531)) b!3166251))

(assert (= (and d!868886 c!532532) b!3166253))

(assert (= (and d!868886 (not c!532532)) b!3166258))

(assert (= (and b!3166253 res!1288047) b!3166248))

(assert (= (and b!3166258 res!1288046) b!3166254))

(assert (= (and b!3166258 c!532533) b!3166249))

(assert (= (and b!3166258 (not c!532533)) b!3166250))

(assert (= (or b!3166253 b!3166248 b!3166258 b!3166254) bm!229611))

(assert (= (or b!3166253 b!3166258 b!3166254 b!3166249) bm!229612))

(assert (= (or b!3166253 b!3166258) bm!229610))

(assert (= (or b!3166248 b!3166254) bm!229609))

(assert (= (or b!3166248 b!3166254) bm!229608))

(assert (= (or b!3166248 b!3166254) bm!229607))

(assert (= (and d!868886 res!1288045) b!3166252))

(declare-fun m!3428106 () Bool)

(assert (=> b!3166249 m!3428106))

(assert (=> b!3166249 m!3428106))

(declare-fun m!3428108 () Bool)

(assert (=> b!3166249 m!3428108))

(declare-fun m!3428110 () Bool)

(assert (=> b!3166249 m!3428110))

(assert (=> d!868886 m!3427930))

(declare-fun m!3428112 () Bool)

(assert (=> d!868886 m!3428112))

(assert (=> d!868886 m!3427928))

(declare-fun m!3428114 () Bool)

(assert (=> d!868886 m!3428114))

(assert (=> d!868886 m!3428018))

(assert (=> d!868886 m!3428056))

(assert (=> d!868886 m!3427930))

(declare-fun m!3428116 () Bool)

(assert (=> d!868886 m!3428116))

(assert (=> d!868886 m!3428116))

(declare-fun m!3428118 () Bool)

(assert (=> d!868886 m!3428118))

(declare-fun m!3428120 () Bool)

(assert (=> bm!229609 m!3428120))

(declare-fun m!3428122 () Bool)

(assert (=> bm!229607 m!3428122))

(assert (=> bm!229611 m!3428056))

(declare-fun m!3428124 () Bool)

(assert (=> b!3166255 m!3428124))

(declare-fun m!3428126 () Bool)

(assert (=> b!3166255 m!3428126))

(declare-fun m!3428128 () Bool)

(assert (=> b!3166255 m!3428128))

(assert (=> b!3166255 m!3428018))

(declare-fun m!3428130 () Bool)

(assert (=> b!3166255 m!3428130))

(declare-fun m!3428132 () Bool)

(assert (=> b!3166255 m!3428132))

(declare-fun m!3428134 () Bool)

(assert (=> b!3166255 m!3428134))

(assert (=> b!3166255 m!3428124))

(declare-fun m!3428136 () Bool)

(assert (=> b!3166255 m!3428136))

(declare-fun m!3428138 () Bool)

(assert (=> b!3166255 m!3428138))

(declare-fun m!3428140 () Bool)

(assert (=> b!3166253 m!3428140))

(assert (=> bm!229612 m!3428018))

(declare-fun m!3428142 () Bool)

(assert (=> bm!229608 m!3428142))

(assert (=> b!3166257 m!3428018))

(assert (=> b!3166257 m!3428134))

(declare-fun m!3428144 () Bool)

(assert (=> b!3166257 m!3428144))

(declare-fun m!3428146 () Bool)

(assert (=> b!3166257 m!3428146))

(assert (=> b!3166252 m!3428134))

(assert (=> b!3166252 m!3428134))

(declare-fun m!3428148 () Bool)

(assert (=> b!3166252 m!3428148))

(assert (=> b!3166252 m!3428148))

(declare-fun m!3428150 () Bool)

(assert (=> b!3166252 m!3428150))

(declare-fun m!3428152 () Bool)

(assert (=> bm!229610 m!3428152))

(assert (=> d!868842 d!868886))

(assert (=> d!868842 d!868838))

(declare-fun e!1972328 () Bool)

(assert (=> b!3166033 (= tp!997660 e!1972328)))

(declare-fun b!3166260 () Bool)

(declare-fun tp!997697 () Bool)

(declare-fun tp!997695 () Bool)

(assert (=> b!3166260 (= e!1972328 (and tp!997697 tp!997695))))

(declare-fun b!3166261 () Bool)

(declare-fun tp!997694 () Bool)

(assert (=> b!3166261 (= e!1972328 tp!997694)))

(declare-fun b!3166259 () Bool)

(assert (=> b!3166259 (= e!1972328 tp_is_empty!17045)))

(declare-fun b!3166262 () Bool)

(declare-fun tp!997696 () Bool)

(declare-fun tp!997698 () Bool)

(assert (=> b!3166262 (= e!1972328 (and tp!997696 tp!997698))))

(assert (= (and b!3166033 ((_ is ElementMatch!9741) (regOne!19994 (regTwo!19994 r!13156)))) b!3166259))

(assert (= (and b!3166033 ((_ is Concat!15062) (regOne!19994 (regTwo!19994 r!13156)))) b!3166260))

(assert (= (and b!3166033 ((_ is Star!9741) (regOne!19994 (regTwo!19994 r!13156)))) b!3166261))

(assert (= (and b!3166033 ((_ is Union!9741) (regOne!19994 (regTwo!19994 r!13156)))) b!3166262))

(declare-fun e!1972329 () Bool)

(assert (=> b!3166033 (= tp!997658 e!1972329)))

(declare-fun b!3166264 () Bool)

(declare-fun tp!997702 () Bool)

(declare-fun tp!997700 () Bool)

(assert (=> b!3166264 (= e!1972329 (and tp!997702 tp!997700))))

(declare-fun b!3166265 () Bool)

(declare-fun tp!997699 () Bool)

(assert (=> b!3166265 (= e!1972329 tp!997699)))

(declare-fun b!3166263 () Bool)

(assert (=> b!3166263 (= e!1972329 tp_is_empty!17045)))

(declare-fun b!3166266 () Bool)

(declare-fun tp!997701 () Bool)

(declare-fun tp!997703 () Bool)

(assert (=> b!3166266 (= e!1972329 (and tp!997701 tp!997703))))

(assert (= (and b!3166033 ((_ is ElementMatch!9741) (regTwo!19994 (regTwo!19994 r!13156)))) b!3166263))

(assert (= (and b!3166033 ((_ is Concat!15062) (regTwo!19994 (regTwo!19994 r!13156)))) b!3166264))

(assert (= (and b!3166033 ((_ is Star!9741) (regTwo!19994 (regTwo!19994 r!13156)))) b!3166265))

(assert (= (and b!3166033 ((_ is Union!9741) (regTwo!19994 (regTwo!19994 r!13156)))) b!3166266))

(declare-fun e!1972330 () Bool)

(assert (=> b!3166009 (= tp!997629 e!1972330)))

(declare-fun b!3166268 () Bool)

(declare-fun tp!997707 () Bool)

(declare-fun tp!997705 () Bool)

(assert (=> b!3166268 (= e!1972330 (and tp!997707 tp!997705))))

(declare-fun b!3166269 () Bool)

(declare-fun tp!997704 () Bool)

(assert (=> b!3166269 (= e!1972330 tp!997704)))

(declare-fun b!3166267 () Bool)

(assert (=> b!3166267 (= e!1972330 tp_is_empty!17045)))

(declare-fun b!3166270 () Bool)

(declare-fun tp!997706 () Bool)

(declare-fun tp!997708 () Bool)

(assert (=> b!3166270 (= e!1972330 (and tp!997706 tp!997708))))

(assert (= (and b!3166009 ((_ is ElementMatch!9741) (_1!20404 (_1!20405 (h!40870 (minValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347))))))))))) b!3166267))

(assert (= (and b!3166009 ((_ is Concat!15062) (_1!20404 (_1!20405 (h!40870 (minValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347))))))))))) b!3166268))

(assert (= (and b!3166009 ((_ is Star!9741) (_1!20404 (_1!20405 (h!40870 (minValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347))))))))))) b!3166269))

(assert (= (and b!3166009 ((_ is Union!9741) (_1!20404 (_1!20405 (h!40870 (minValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347))))))))))) b!3166270))

(declare-fun e!1972331 () Bool)

(assert (=> b!3166009 (= tp!997630 e!1972331)))

(declare-fun b!3166272 () Bool)

(declare-fun tp!997712 () Bool)

(declare-fun tp!997710 () Bool)

(assert (=> b!3166272 (= e!1972331 (and tp!997712 tp!997710))))

(declare-fun b!3166273 () Bool)

(declare-fun tp!997709 () Bool)

(assert (=> b!3166273 (= e!1972331 tp!997709)))

(declare-fun b!3166271 () Bool)

(assert (=> b!3166271 (= e!1972331 tp_is_empty!17045)))

(declare-fun b!3166274 () Bool)

(declare-fun tp!997711 () Bool)

(declare-fun tp!997713 () Bool)

(assert (=> b!3166274 (= e!1972331 (and tp!997711 tp!997713))))

(assert (= (and b!3166009 ((_ is ElementMatch!9741) (_2!20405 (h!40870 (minValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347)))))))))) b!3166271))

(assert (= (and b!3166009 ((_ is Concat!15062) (_2!20405 (h!40870 (minValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347)))))))))) b!3166272))

(assert (= (and b!3166009 ((_ is Star!9741) (_2!20405 (h!40870 (minValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347)))))))))) b!3166273))

(assert (= (and b!3166009 ((_ is Union!9741) (_2!20405 (h!40870 (minValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347)))))))))) b!3166274))

(declare-fun tp!997715 () Bool)

(declare-fun tp!997714 () Bool)

(declare-fun tp!997716 () Bool)

(declare-fun b!3166275 () Bool)

(declare-fun e!1972332 () Bool)

(assert (=> b!3166275 (= e!1972332 (and tp!997714 tp_is_empty!17045 tp!997715 tp!997716))))

(assert (=> b!3166009 (= tp!997631 e!1972332)))

(assert (= (and b!3166009 ((_ is Cons!35450) (t!234649 (minValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347))))))))) b!3166275))

(declare-fun e!1972333 () Bool)

(assert (=> b!3166025 (= tp!997650 e!1972333)))

(declare-fun b!3166277 () Bool)

(declare-fun tp!997720 () Bool)

(declare-fun tp!997718 () Bool)

(assert (=> b!3166277 (= e!1972333 (and tp!997720 tp!997718))))

(declare-fun b!3166278 () Bool)

(declare-fun tp!997717 () Bool)

(assert (=> b!3166278 (= e!1972333 tp!997717)))

(declare-fun b!3166276 () Bool)

(assert (=> b!3166276 (= e!1972333 tp_is_empty!17045)))

(declare-fun b!3166279 () Bool)

(declare-fun tp!997719 () Bool)

(declare-fun tp!997721 () Bool)

(assert (=> b!3166279 (= e!1972333 (and tp!997719 tp!997721))))

(assert (= (and b!3166025 ((_ is ElementMatch!9741) (regOne!19994 (regTwo!19995 r!13156)))) b!3166276))

(assert (= (and b!3166025 ((_ is Concat!15062) (regOne!19994 (regTwo!19995 r!13156)))) b!3166277))

(assert (= (and b!3166025 ((_ is Star!9741) (regOne!19994 (regTwo!19995 r!13156)))) b!3166278))

(assert (= (and b!3166025 ((_ is Union!9741) (regOne!19994 (regTwo!19995 r!13156)))) b!3166279))

(declare-fun e!1972334 () Bool)

(assert (=> b!3166025 (= tp!997648 e!1972334)))

(declare-fun b!3166281 () Bool)

(declare-fun tp!997725 () Bool)

(declare-fun tp!997723 () Bool)

(assert (=> b!3166281 (= e!1972334 (and tp!997725 tp!997723))))

(declare-fun b!3166282 () Bool)

(declare-fun tp!997722 () Bool)

(assert (=> b!3166282 (= e!1972334 tp!997722)))

(declare-fun b!3166280 () Bool)

(assert (=> b!3166280 (= e!1972334 tp_is_empty!17045)))

(declare-fun b!3166283 () Bool)

(declare-fun tp!997724 () Bool)

(declare-fun tp!997726 () Bool)

(assert (=> b!3166283 (= e!1972334 (and tp!997724 tp!997726))))

(assert (= (and b!3166025 ((_ is ElementMatch!9741) (regTwo!19994 (regTwo!19995 r!13156)))) b!3166280))

(assert (= (and b!3166025 ((_ is Concat!15062) (regTwo!19994 (regTwo!19995 r!13156)))) b!3166281))

(assert (= (and b!3166025 ((_ is Star!9741) (regTwo!19994 (regTwo!19995 r!13156)))) b!3166282))

(assert (= (and b!3166025 ((_ is Union!9741) (regTwo!19994 (regTwo!19995 r!13156)))) b!3166283))

(declare-fun e!1972335 () Bool)

(assert (=> b!3166049 (= tp!997691 e!1972335)))

(declare-fun b!3166285 () Bool)

(declare-fun tp!997730 () Bool)

(declare-fun tp!997728 () Bool)

(assert (=> b!3166285 (= e!1972335 (and tp!997730 tp!997728))))

(declare-fun b!3166286 () Bool)

(declare-fun tp!997727 () Bool)

(assert (=> b!3166286 (= e!1972335 tp!997727)))

(declare-fun b!3166284 () Bool)

(assert (=> b!3166284 (= e!1972335 tp_is_empty!17045)))

(declare-fun b!3166287 () Bool)

(declare-fun tp!997729 () Bool)

(declare-fun tp!997731 () Bool)

(assert (=> b!3166287 (= e!1972335 (and tp!997729 tp!997731))))

(assert (= (and b!3166049 ((_ is ElementMatch!9741) (_1!20404 (_1!20405 (h!40870 mapValue!18874))))) b!3166284))

(assert (= (and b!3166049 ((_ is Concat!15062) (_1!20404 (_1!20405 (h!40870 mapValue!18874))))) b!3166285))

(assert (= (and b!3166049 ((_ is Star!9741) (_1!20404 (_1!20405 (h!40870 mapValue!18874))))) b!3166286))

(assert (= (and b!3166049 ((_ is Union!9741) (_1!20404 (_1!20405 (h!40870 mapValue!18874))))) b!3166287))

(declare-fun e!1972336 () Bool)

(assert (=> b!3166049 (= tp!997692 e!1972336)))

(declare-fun b!3166289 () Bool)

(declare-fun tp!997735 () Bool)

(declare-fun tp!997733 () Bool)

(assert (=> b!3166289 (= e!1972336 (and tp!997735 tp!997733))))

(declare-fun b!3166290 () Bool)

(declare-fun tp!997732 () Bool)

(assert (=> b!3166290 (= e!1972336 tp!997732)))

(declare-fun b!3166288 () Bool)

(assert (=> b!3166288 (= e!1972336 tp_is_empty!17045)))

(declare-fun b!3166291 () Bool)

(declare-fun tp!997734 () Bool)

(declare-fun tp!997736 () Bool)

(assert (=> b!3166291 (= e!1972336 (and tp!997734 tp!997736))))

(assert (= (and b!3166049 ((_ is ElementMatch!9741) (_2!20405 (h!40870 mapValue!18874)))) b!3166288))

(assert (= (and b!3166049 ((_ is Concat!15062) (_2!20405 (h!40870 mapValue!18874)))) b!3166289))

(assert (= (and b!3166049 ((_ is Star!9741) (_2!20405 (h!40870 mapValue!18874)))) b!3166290))

(assert (= (and b!3166049 ((_ is Union!9741) (_2!20405 (h!40870 mapValue!18874)))) b!3166291))

(declare-fun e!1972337 () Bool)

(declare-fun b!3166292 () Bool)

(declare-fun tp!997739 () Bool)

(declare-fun tp!997737 () Bool)

(declare-fun tp!997738 () Bool)

(assert (=> b!3166292 (= e!1972337 (and tp!997737 tp_is_empty!17045 tp!997738 tp!997739))))

(assert (=> b!3166049 (= tp!997693 e!1972337)))

(assert (= (and b!3166049 ((_ is Cons!35450) (t!234649 mapValue!18874))) b!3166292))

(declare-fun e!1972338 () Bool)

(assert (=> b!3166034 (= tp!997657 e!1972338)))

(declare-fun b!3166294 () Bool)

(declare-fun tp!997743 () Bool)

(declare-fun tp!997741 () Bool)

(assert (=> b!3166294 (= e!1972338 (and tp!997743 tp!997741))))

(declare-fun b!3166295 () Bool)

(declare-fun tp!997740 () Bool)

(assert (=> b!3166295 (= e!1972338 tp!997740)))

(declare-fun b!3166293 () Bool)

(assert (=> b!3166293 (= e!1972338 tp_is_empty!17045)))

(declare-fun b!3166296 () Bool)

(declare-fun tp!997742 () Bool)

(declare-fun tp!997744 () Bool)

(assert (=> b!3166296 (= e!1972338 (and tp!997742 tp!997744))))

(assert (= (and b!3166034 ((_ is ElementMatch!9741) (reg!10070 (regTwo!19994 r!13156)))) b!3166293))

(assert (= (and b!3166034 ((_ is Concat!15062) (reg!10070 (regTwo!19994 r!13156)))) b!3166294))

(assert (= (and b!3166034 ((_ is Star!9741) (reg!10070 (regTwo!19994 r!13156)))) b!3166295))

(assert (= (and b!3166034 ((_ is Union!9741) (reg!10070 (regTwo!19994 r!13156)))) b!3166296))

(declare-fun e!1972339 () Bool)

(assert (=> b!3166035 (= tp!997659 e!1972339)))

(declare-fun b!3166298 () Bool)

(declare-fun tp!997748 () Bool)

(declare-fun tp!997746 () Bool)

(assert (=> b!3166298 (= e!1972339 (and tp!997748 tp!997746))))

(declare-fun b!3166299 () Bool)

(declare-fun tp!997745 () Bool)

(assert (=> b!3166299 (= e!1972339 tp!997745)))

(declare-fun b!3166297 () Bool)

(assert (=> b!3166297 (= e!1972339 tp_is_empty!17045)))

(declare-fun b!3166300 () Bool)

(declare-fun tp!997747 () Bool)

(declare-fun tp!997749 () Bool)

(assert (=> b!3166300 (= e!1972339 (and tp!997747 tp!997749))))

(assert (= (and b!3166035 ((_ is ElementMatch!9741) (regOne!19995 (regTwo!19994 r!13156)))) b!3166297))

(assert (= (and b!3166035 ((_ is Concat!15062) (regOne!19995 (regTwo!19994 r!13156)))) b!3166298))

(assert (= (and b!3166035 ((_ is Star!9741) (regOne!19995 (regTwo!19994 r!13156)))) b!3166299))

(assert (= (and b!3166035 ((_ is Union!9741) (regOne!19995 (regTwo!19994 r!13156)))) b!3166300))

(declare-fun e!1972340 () Bool)

(assert (=> b!3166035 (= tp!997661 e!1972340)))

(declare-fun b!3166302 () Bool)

(declare-fun tp!997753 () Bool)

(declare-fun tp!997751 () Bool)

(assert (=> b!3166302 (= e!1972340 (and tp!997753 tp!997751))))

(declare-fun b!3166303 () Bool)

(declare-fun tp!997750 () Bool)

(assert (=> b!3166303 (= e!1972340 tp!997750)))

(declare-fun b!3166301 () Bool)

(assert (=> b!3166301 (= e!1972340 tp_is_empty!17045)))

(declare-fun b!3166304 () Bool)

(declare-fun tp!997752 () Bool)

(declare-fun tp!997754 () Bool)

(assert (=> b!3166304 (= e!1972340 (and tp!997752 tp!997754))))

(assert (= (and b!3166035 ((_ is ElementMatch!9741) (regTwo!19995 (regTwo!19994 r!13156)))) b!3166301))

(assert (= (and b!3166035 ((_ is Concat!15062) (regTwo!19995 (regTwo!19994 r!13156)))) b!3166302))

(assert (= (and b!3166035 ((_ is Star!9741) (regTwo!19995 (regTwo!19994 r!13156)))) b!3166303))

(assert (= (and b!3166035 ((_ is Union!9741) (regTwo!19995 (regTwo!19994 r!13156)))) b!3166304))

(declare-fun e!1972341 () Bool)

(assert (=> b!3166026 (= tp!997647 e!1972341)))

(declare-fun b!3166306 () Bool)

(declare-fun tp!997758 () Bool)

(declare-fun tp!997756 () Bool)

(assert (=> b!3166306 (= e!1972341 (and tp!997758 tp!997756))))

(declare-fun b!3166307 () Bool)

(declare-fun tp!997755 () Bool)

(assert (=> b!3166307 (= e!1972341 tp!997755)))

(declare-fun b!3166305 () Bool)

(assert (=> b!3166305 (= e!1972341 tp_is_empty!17045)))

(declare-fun b!3166308 () Bool)

(declare-fun tp!997757 () Bool)

(declare-fun tp!997759 () Bool)

(assert (=> b!3166308 (= e!1972341 (and tp!997757 tp!997759))))

(assert (= (and b!3166026 ((_ is ElementMatch!9741) (reg!10070 (regTwo!19995 r!13156)))) b!3166305))

(assert (= (and b!3166026 ((_ is Concat!15062) (reg!10070 (regTwo!19995 r!13156)))) b!3166306))

(assert (= (and b!3166026 ((_ is Star!9741) (reg!10070 (regTwo!19995 r!13156)))) b!3166307))

(assert (= (and b!3166026 ((_ is Union!9741) (reg!10070 (regTwo!19995 r!13156)))) b!3166308))

(declare-fun e!1972342 () Bool)

(assert (=> b!3166027 (= tp!997649 e!1972342)))

(declare-fun b!3166310 () Bool)

(declare-fun tp!997763 () Bool)

(declare-fun tp!997761 () Bool)

(assert (=> b!3166310 (= e!1972342 (and tp!997763 tp!997761))))

(declare-fun b!3166311 () Bool)

(declare-fun tp!997760 () Bool)

(assert (=> b!3166311 (= e!1972342 tp!997760)))

(declare-fun b!3166309 () Bool)

(assert (=> b!3166309 (= e!1972342 tp_is_empty!17045)))

(declare-fun b!3166312 () Bool)

(declare-fun tp!997762 () Bool)

(declare-fun tp!997764 () Bool)

(assert (=> b!3166312 (= e!1972342 (and tp!997762 tp!997764))))

(assert (= (and b!3166027 ((_ is ElementMatch!9741) (regOne!19995 (regTwo!19995 r!13156)))) b!3166309))

(assert (= (and b!3166027 ((_ is Concat!15062) (regOne!19995 (regTwo!19995 r!13156)))) b!3166310))

(assert (= (and b!3166027 ((_ is Star!9741) (regOne!19995 (regTwo!19995 r!13156)))) b!3166311))

(assert (= (and b!3166027 ((_ is Union!9741) (regOne!19995 (regTwo!19995 r!13156)))) b!3166312))

(declare-fun e!1972343 () Bool)

(assert (=> b!3166027 (= tp!997651 e!1972343)))

(declare-fun b!3166314 () Bool)

(declare-fun tp!997768 () Bool)

(declare-fun tp!997766 () Bool)

(assert (=> b!3166314 (= e!1972343 (and tp!997768 tp!997766))))

(declare-fun b!3166315 () Bool)

(declare-fun tp!997765 () Bool)

(assert (=> b!3166315 (= e!1972343 tp!997765)))

(declare-fun b!3166313 () Bool)

(assert (=> b!3166313 (= e!1972343 tp_is_empty!17045)))

(declare-fun b!3166316 () Bool)

(declare-fun tp!997767 () Bool)

(declare-fun tp!997769 () Bool)

(assert (=> b!3166316 (= e!1972343 (and tp!997767 tp!997769))))

(assert (= (and b!3166027 ((_ is ElementMatch!9741) (regTwo!19995 (regTwo!19995 r!13156)))) b!3166313))

(assert (= (and b!3166027 ((_ is Concat!15062) (regTwo!19995 (regTwo!19995 r!13156)))) b!3166314))

(assert (= (and b!3166027 ((_ is Star!9741) (regTwo!19995 (regTwo!19995 r!13156)))) b!3166315))

(assert (= (and b!3166027 ((_ is Union!9741) (regTwo!19995 (regTwo!19995 r!13156)))) b!3166316))

(declare-fun e!1972344 () Bool)

(assert (=> b!3166036 (= tp!997662 e!1972344)))

(declare-fun b!3166318 () Bool)

(declare-fun tp!997773 () Bool)

(declare-fun tp!997771 () Bool)

(assert (=> b!3166318 (= e!1972344 (and tp!997773 tp!997771))))

(declare-fun b!3166319 () Bool)

(declare-fun tp!997770 () Bool)

(assert (=> b!3166319 (= e!1972344 tp!997770)))

(declare-fun b!3166317 () Bool)

(assert (=> b!3166317 (= e!1972344 tp_is_empty!17045)))

(declare-fun b!3166320 () Bool)

(declare-fun tp!997772 () Bool)

(declare-fun tp!997774 () Bool)

(assert (=> b!3166320 (= e!1972344 (and tp!997772 tp!997774))))

(assert (= (and b!3166036 ((_ is ElementMatch!9741) (_1!20404 (_1!20405 (h!40870 mapDefault!18874))))) b!3166317))

(assert (= (and b!3166036 ((_ is Concat!15062) (_1!20404 (_1!20405 (h!40870 mapDefault!18874))))) b!3166318))

(assert (= (and b!3166036 ((_ is Star!9741) (_1!20404 (_1!20405 (h!40870 mapDefault!18874))))) b!3166319))

(assert (= (and b!3166036 ((_ is Union!9741) (_1!20404 (_1!20405 (h!40870 mapDefault!18874))))) b!3166320))

(declare-fun e!1972345 () Bool)

(assert (=> b!3166036 (= tp!997663 e!1972345)))

(declare-fun b!3166322 () Bool)

(declare-fun tp!997778 () Bool)

(declare-fun tp!997776 () Bool)

(assert (=> b!3166322 (= e!1972345 (and tp!997778 tp!997776))))

(declare-fun b!3166323 () Bool)

(declare-fun tp!997775 () Bool)

(assert (=> b!3166323 (= e!1972345 tp!997775)))

(declare-fun b!3166321 () Bool)

(assert (=> b!3166321 (= e!1972345 tp_is_empty!17045)))

(declare-fun b!3166324 () Bool)

(declare-fun tp!997777 () Bool)

(declare-fun tp!997779 () Bool)

(assert (=> b!3166324 (= e!1972345 (and tp!997777 tp!997779))))

(assert (= (and b!3166036 ((_ is ElementMatch!9741) (_2!20405 (h!40870 mapDefault!18874)))) b!3166321))

(assert (= (and b!3166036 ((_ is Concat!15062) (_2!20405 (h!40870 mapDefault!18874)))) b!3166322))

(assert (= (and b!3166036 ((_ is Star!9741) (_2!20405 (h!40870 mapDefault!18874)))) b!3166323))

(assert (= (and b!3166036 ((_ is Union!9741) (_2!20405 (h!40870 mapDefault!18874)))) b!3166324))

(declare-fun tp!997781 () Bool)

(declare-fun e!1972346 () Bool)

(declare-fun tp!997782 () Bool)

(declare-fun b!3166325 () Bool)

(declare-fun tp!997780 () Bool)

(assert (=> b!3166325 (= e!1972346 (and tp!997780 tp_is_empty!17045 tp!997781 tp!997782))))

(assert (=> b!3166036 (= tp!997664 e!1972346)))

(assert (= (and b!3166036 ((_ is Cons!35450) (t!234649 mapDefault!18874))) b!3166325))

(declare-fun e!1972347 () Bool)

(assert (=> b!3166030 (= tp!997652 e!1972347)))

(declare-fun b!3166327 () Bool)

(declare-fun tp!997786 () Bool)

(declare-fun tp!997784 () Bool)

(assert (=> b!3166327 (= e!1972347 (and tp!997786 tp!997784))))

(declare-fun b!3166328 () Bool)

(declare-fun tp!997783 () Bool)

(assert (=> b!3166328 (= e!1972347 tp!997783)))

(declare-fun b!3166326 () Bool)

(assert (=> b!3166326 (= e!1972347 tp_is_empty!17045)))

(declare-fun b!3166329 () Bool)

(declare-fun tp!997785 () Bool)

(declare-fun tp!997787 () Bool)

(assert (=> b!3166329 (= e!1972347 (and tp!997785 tp!997787))))

(assert (= (and b!3166030 ((_ is ElementMatch!9741) (reg!10070 (regOne!19994 r!13156)))) b!3166326))

(assert (= (and b!3166030 ((_ is Concat!15062) (reg!10070 (regOne!19994 r!13156)))) b!3166327))

(assert (= (and b!3166030 ((_ is Star!9741) (reg!10070 (regOne!19994 r!13156)))) b!3166328))

(assert (= (and b!3166030 ((_ is Union!9741) (reg!10070 (regOne!19994 r!13156)))) b!3166329))

(declare-fun e!1972348 () Bool)

(assert (=> b!3166029 (= tp!997655 e!1972348)))

(declare-fun b!3166331 () Bool)

(declare-fun tp!997791 () Bool)

(declare-fun tp!997789 () Bool)

(assert (=> b!3166331 (= e!1972348 (and tp!997791 tp!997789))))

(declare-fun b!3166332 () Bool)

(declare-fun tp!997788 () Bool)

(assert (=> b!3166332 (= e!1972348 tp!997788)))

(declare-fun b!3166330 () Bool)

(assert (=> b!3166330 (= e!1972348 tp_is_empty!17045)))

(declare-fun b!3166333 () Bool)

(declare-fun tp!997790 () Bool)

(declare-fun tp!997792 () Bool)

(assert (=> b!3166333 (= e!1972348 (and tp!997790 tp!997792))))

(assert (= (and b!3166029 ((_ is ElementMatch!9741) (regOne!19994 (regOne!19994 r!13156)))) b!3166330))

(assert (= (and b!3166029 ((_ is Concat!15062) (regOne!19994 (regOne!19994 r!13156)))) b!3166331))

(assert (= (and b!3166029 ((_ is Star!9741) (regOne!19994 (regOne!19994 r!13156)))) b!3166332))

(assert (= (and b!3166029 ((_ is Union!9741) (regOne!19994 (regOne!19994 r!13156)))) b!3166333))

(declare-fun e!1972349 () Bool)

(assert (=> b!3166029 (= tp!997653 e!1972349)))

(declare-fun b!3166335 () Bool)

(declare-fun tp!997796 () Bool)

(declare-fun tp!997794 () Bool)

(assert (=> b!3166335 (= e!1972349 (and tp!997796 tp!997794))))

(declare-fun b!3166336 () Bool)

(declare-fun tp!997793 () Bool)

(assert (=> b!3166336 (= e!1972349 tp!997793)))

(declare-fun b!3166334 () Bool)

(assert (=> b!3166334 (= e!1972349 tp_is_empty!17045)))

(declare-fun b!3166337 () Bool)

(declare-fun tp!997795 () Bool)

(declare-fun tp!997797 () Bool)

(assert (=> b!3166337 (= e!1972349 (and tp!997795 tp!997797))))

(assert (= (and b!3166029 ((_ is ElementMatch!9741) (regTwo!19994 (regOne!19994 r!13156)))) b!3166334))

(assert (= (and b!3166029 ((_ is Concat!15062) (regTwo!19994 (regOne!19994 r!13156)))) b!3166335))

(assert (= (and b!3166029 ((_ is Star!9741) (regTwo!19994 (regOne!19994 r!13156)))) b!3166336))

(assert (= (and b!3166029 ((_ is Union!9741) (regTwo!19994 (regOne!19994 r!13156)))) b!3166337))

(declare-fun e!1972350 () Bool)

(assert (=> b!3166031 (= tp!997654 e!1972350)))

(declare-fun b!3166339 () Bool)

(declare-fun tp!997801 () Bool)

(declare-fun tp!997799 () Bool)

(assert (=> b!3166339 (= e!1972350 (and tp!997801 tp!997799))))

(declare-fun b!3166340 () Bool)

(declare-fun tp!997798 () Bool)

(assert (=> b!3166340 (= e!1972350 tp!997798)))

(declare-fun b!3166338 () Bool)

(assert (=> b!3166338 (= e!1972350 tp_is_empty!17045)))

(declare-fun b!3166341 () Bool)

(declare-fun tp!997800 () Bool)

(declare-fun tp!997802 () Bool)

(assert (=> b!3166341 (= e!1972350 (and tp!997800 tp!997802))))

(assert (= (and b!3166031 ((_ is ElementMatch!9741) (regOne!19995 (regOne!19994 r!13156)))) b!3166338))

(assert (= (and b!3166031 ((_ is Concat!15062) (regOne!19995 (regOne!19994 r!13156)))) b!3166339))

(assert (= (and b!3166031 ((_ is Star!9741) (regOne!19995 (regOne!19994 r!13156)))) b!3166340))

(assert (= (and b!3166031 ((_ is Union!9741) (regOne!19995 (regOne!19994 r!13156)))) b!3166341))

(declare-fun e!1972351 () Bool)

(assert (=> b!3166031 (= tp!997656 e!1972351)))

(declare-fun b!3166343 () Bool)

(declare-fun tp!997806 () Bool)

(declare-fun tp!997804 () Bool)

(assert (=> b!3166343 (= e!1972351 (and tp!997806 tp!997804))))

(declare-fun b!3166344 () Bool)

(declare-fun tp!997803 () Bool)

(assert (=> b!3166344 (= e!1972351 tp!997803)))

(declare-fun b!3166342 () Bool)

(assert (=> b!3166342 (= e!1972351 tp_is_empty!17045)))

(declare-fun b!3166345 () Bool)

(declare-fun tp!997805 () Bool)

(declare-fun tp!997807 () Bool)

(assert (=> b!3166345 (= e!1972351 (and tp!997805 tp!997807))))

(assert (= (and b!3166031 ((_ is ElementMatch!9741) (regTwo!19995 (regOne!19994 r!13156)))) b!3166342))

(assert (= (and b!3166031 ((_ is Concat!15062) (regTwo!19995 (regOne!19994 r!13156)))) b!3166343))

(assert (= (and b!3166031 ((_ is Star!9741) (regTwo!19995 (regOne!19994 r!13156)))) b!3166344))

(assert (= (and b!3166031 ((_ is Union!9741) (regTwo!19995 (regOne!19994 r!13156)))) b!3166345))

(declare-fun e!1972352 () Bool)

(assert (=> b!3166022 (= tp!997642 e!1972352)))

(declare-fun b!3166347 () Bool)

(declare-fun tp!997811 () Bool)

(declare-fun tp!997809 () Bool)

(assert (=> b!3166347 (= e!1972352 (and tp!997811 tp!997809))))

(declare-fun b!3166348 () Bool)

(declare-fun tp!997808 () Bool)

(assert (=> b!3166348 (= e!1972352 tp!997808)))

(declare-fun b!3166346 () Bool)

(assert (=> b!3166346 (= e!1972352 tp_is_empty!17045)))

(declare-fun b!3166349 () Bool)

(declare-fun tp!997810 () Bool)

(declare-fun tp!997812 () Bool)

(assert (=> b!3166349 (= e!1972352 (and tp!997810 tp!997812))))

(assert (= (and b!3166022 ((_ is ElementMatch!9741) (reg!10070 (regOne!19995 r!13156)))) b!3166346))

(assert (= (and b!3166022 ((_ is Concat!15062) (reg!10070 (regOne!19995 r!13156)))) b!3166347))

(assert (= (and b!3166022 ((_ is Star!9741) (reg!10070 (regOne!19995 r!13156)))) b!3166348))

(assert (= (and b!3166022 ((_ is Union!9741) (reg!10070 (regOne!19995 r!13156)))) b!3166349))

(declare-fun e!1972353 () Bool)

(assert (=> b!3166021 (= tp!997645 e!1972353)))

(declare-fun b!3166351 () Bool)

(declare-fun tp!997816 () Bool)

(declare-fun tp!997814 () Bool)

(assert (=> b!3166351 (= e!1972353 (and tp!997816 tp!997814))))

(declare-fun b!3166352 () Bool)

(declare-fun tp!997813 () Bool)

(assert (=> b!3166352 (= e!1972353 tp!997813)))

(declare-fun b!3166350 () Bool)

(assert (=> b!3166350 (= e!1972353 tp_is_empty!17045)))

(declare-fun b!3166353 () Bool)

(declare-fun tp!997815 () Bool)

(declare-fun tp!997817 () Bool)

(assert (=> b!3166353 (= e!1972353 (and tp!997815 tp!997817))))

(assert (= (and b!3166021 ((_ is ElementMatch!9741) (regOne!19994 (regOne!19995 r!13156)))) b!3166350))

(assert (= (and b!3166021 ((_ is Concat!15062) (regOne!19994 (regOne!19995 r!13156)))) b!3166351))

(assert (= (and b!3166021 ((_ is Star!9741) (regOne!19994 (regOne!19995 r!13156)))) b!3166352))

(assert (= (and b!3166021 ((_ is Union!9741) (regOne!19994 (regOne!19995 r!13156)))) b!3166353))

(declare-fun e!1972354 () Bool)

(assert (=> b!3166021 (= tp!997643 e!1972354)))

(declare-fun b!3166355 () Bool)

(declare-fun tp!997821 () Bool)

(declare-fun tp!997819 () Bool)

(assert (=> b!3166355 (= e!1972354 (and tp!997821 tp!997819))))

(declare-fun b!3166356 () Bool)

(declare-fun tp!997818 () Bool)

(assert (=> b!3166356 (= e!1972354 tp!997818)))

(declare-fun b!3166354 () Bool)

(assert (=> b!3166354 (= e!1972354 tp_is_empty!17045)))

(declare-fun b!3166357 () Bool)

(declare-fun tp!997820 () Bool)

(declare-fun tp!997822 () Bool)

(assert (=> b!3166357 (= e!1972354 (and tp!997820 tp!997822))))

(assert (= (and b!3166021 ((_ is ElementMatch!9741) (regTwo!19994 (regOne!19995 r!13156)))) b!3166354))

(assert (= (and b!3166021 ((_ is Concat!15062) (regTwo!19994 (regOne!19995 r!13156)))) b!3166355))

(assert (= (and b!3166021 ((_ is Star!9741) (regTwo!19994 (regOne!19995 r!13156)))) b!3166356))

(assert (= (and b!3166021 ((_ is Union!9741) (regTwo!19994 (regOne!19995 r!13156)))) b!3166357))

(declare-fun b!3166368 () Bool)

(declare-fun e!1972363 () Bool)

(declare-fun lt!1064623 () MutLongMap!4162)

(assert (=> b!3166368 (= e!1972363 ((_ is LongMap!4162) lt!1064623))))

(assert (=> b!3166368 (= lt!1064623 (v!35139 (underlying!8554 (cache!4211 (_2!20406 (derivativeStepMem!29 (regOne!19995 r!13156) a!2409 cache!347))))))))

(declare-fun b!3166367 () Bool)

(declare-fun e!1972362 () Bool)

(assert (=> b!3166367 (= e!1972362 e!1972363)))

(declare-fun b!3166366 () Bool)

(declare-fun e!1972361 () Bool)

(assert (=> b!3166366 (= e!1972361 e!1972362)))

(assert (=> d!868832 (= true e!1972361)))

(assert (= b!3166367 b!3166368))

(assert (= (and b!3166366 ((_ is HashMap!4068) (cache!4211 (_2!20406 (derivativeStepMem!29 (regOne!19995 r!13156) a!2409 cache!347))))) b!3166367))

(assert (= d!868832 b!3166366))

(declare-fun e!1972364 () Bool)

(assert (=> b!3166023 (= tp!997644 e!1972364)))

(declare-fun b!3166370 () Bool)

(declare-fun tp!997826 () Bool)

(declare-fun tp!997824 () Bool)

(assert (=> b!3166370 (= e!1972364 (and tp!997826 tp!997824))))

(declare-fun b!3166371 () Bool)

(declare-fun tp!997823 () Bool)

(assert (=> b!3166371 (= e!1972364 tp!997823)))

(declare-fun b!3166369 () Bool)

(assert (=> b!3166369 (= e!1972364 tp_is_empty!17045)))

(declare-fun b!3166372 () Bool)

(declare-fun tp!997825 () Bool)

(declare-fun tp!997827 () Bool)

(assert (=> b!3166372 (= e!1972364 (and tp!997825 tp!997827))))

(assert (= (and b!3166023 ((_ is ElementMatch!9741) (regOne!19995 (regOne!19995 r!13156)))) b!3166369))

(assert (= (and b!3166023 ((_ is Concat!15062) (regOne!19995 (regOne!19995 r!13156)))) b!3166370))

(assert (= (and b!3166023 ((_ is Star!9741) (regOne!19995 (regOne!19995 r!13156)))) b!3166371))

(assert (= (and b!3166023 ((_ is Union!9741) (regOne!19995 (regOne!19995 r!13156)))) b!3166372))

(declare-fun e!1972365 () Bool)

(assert (=> b!3166023 (= tp!997646 e!1972365)))

(declare-fun b!3166374 () Bool)

(declare-fun tp!997831 () Bool)

(declare-fun tp!997829 () Bool)

(assert (=> b!3166374 (= e!1972365 (and tp!997831 tp!997829))))

(declare-fun b!3166375 () Bool)

(declare-fun tp!997828 () Bool)

(assert (=> b!3166375 (= e!1972365 tp!997828)))

(declare-fun b!3166373 () Bool)

(assert (=> b!3166373 (= e!1972365 tp_is_empty!17045)))

(declare-fun b!3166376 () Bool)

(declare-fun tp!997830 () Bool)

(declare-fun tp!997832 () Bool)

(assert (=> b!3166376 (= e!1972365 (and tp!997830 tp!997832))))

(assert (= (and b!3166023 ((_ is ElementMatch!9741) (regTwo!19995 (regOne!19995 r!13156)))) b!3166373))

(assert (= (and b!3166023 ((_ is Concat!15062) (regTwo!19995 (regOne!19995 r!13156)))) b!3166374))

(assert (= (and b!3166023 ((_ is Star!9741) (regTwo!19995 (regOne!19995 r!13156)))) b!3166375))

(assert (= (and b!3166023 ((_ is Union!9741) (regTwo!19995 (regOne!19995 r!13156)))) b!3166376))

(declare-fun e!1972366 () Bool)

(assert (=> b!3166047 (= tp!997686 e!1972366)))

(declare-fun b!3166378 () Bool)

(declare-fun tp!997836 () Bool)

(declare-fun tp!997834 () Bool)

(assert (=> b!3166378 (= e!1972366 (and tp!997836 tp!997834))))

(declare-fun b!3166379 () Bool)

(declare-fun tp!997833 () Bool)

(assert (=> b!3166379 (= e!1972366 tp!997833)))

(declare-fun b!3166377 () Bool)

(assert (=> b!3166377 (= e!1972366 tp_is_empty!17045)))

(declare-fun b!3166380 () Bool)

(declare-fun tp!997835 () Bool)

(declare-fun tp!997837 () Bool)

(assert (=> b!3166380 (= e!1972366 (and tp!997835 tp!997837))))

(assert (= (and b!3166047 ((_ is ElementMatch!9741) (_1!20404 (_1!20405 (h!40870 mapValue!18877))))) b!3166377))

(assert (= (and b!3166047 ((_ is Concat!15062) (_1!20404 (_1!20405 (h!40870 mapValue!18877))))) b!3166378))

(assert (= (and b!3166047 ((_ is Star!9741) (_1!20404 (_1!20405 (h!40870 mapValue!18877))))) b!3166379))

(assert (= (and b!3166047 ((_ is Union!9741) (_1!20404 (_1!20405 (h!40870 mapValue!18877))))) b!3166380))

(declare-fun e!1972367 () Bool)

(assert (=> b!3166047 (= tp!997690 e!1972367)))

(declare-fun b!3166382 () Bool)

(declare-fun tp!997841 () Bool)

(declare-fun tp!997839 () Bool)

(assert (=> b!3166382 (= e!1972367 (and tp!997841 tp!997839))))

(declare-fun b!3166383 () Bool)

(declare-fun tp!997838 () Bool)

(assert (=> b!3166383 (= e!1972367 tp!997838)))

(declare-fun b!3166381 () Bool)

(assert (=> b!3166381 (= e!1972367 tp_is_empty!17045)))

(declare-fun b!3166384 () Bool)

(declare-fun tp!997840 () Bool)

(declare-fun tp!997842 () Bool)

(assert (=> b!3166384 (= e!1972367 (and tp!997840 tp!997842))))

(assert (= (and b!3166047 ((_ is ElementMatch!9741) (_2!20405 (h!40870 mapValue!18877)))) b!3166381))

(assert (= (and b!3166047 ((_ is Concat!15062) (_2!20405 (h!40870 mapValue!18877)))) b!3166382))

(assert (= (and b!3166047 ((_ is Star!9741) (_2!20405 (h!40870 mapValue!18877)))) b!3166383))

(assert (= (and b!3166047 ((_ is Union!9741) (_2!20405 (h!40870 mapValue!18877)))) b!3166384))

(declare-fun tp!997845 () Bool)

(declare-fun e!1972368 () Bool)

(declare-fun tp!997844 () Bool)

(declare-fun b!3166385 () Bool)

(declare-fun tp!997843 () Bool)

(assert (=> b!3166385 (= e!1972368 (and tp!997843 tp_is_empty!17045 tp!997844 tp!997845))))

(assert (=> b!3166047 (= tp!997689 e!1972368)))

(assert (= (and b!3166047 ((_ is Cons!35450) (t!234649 mapValue!18877))) b!3166385))

(declare-fun e!1972369 () Bool)

(assert (=> b!3166038 (= tp!997668 e!1972369)))

(declare-fun b!3166387 () Bool)

(declare-fun tp!997849 () Bool)

(declare-fun tp!997847 () Bool)

(assert (=> b!3166387 (= e!1972369 (and tp!997849 tp!997847))))

(declare-fun b!3166388 () Bool)

(declare-fun tp!997846 () Bool)

(assert (=> b!3166388 (= e!1972369 tp!997846)))

(declare-fun b!3166386 () Bool)

(assert (=> b!3166386 (= e!1972369 tp_is_empty!17045)))

(declare-fun b!3166389 () Bool)

(declare-fun tp!997848 () Bool)

(declare-fun tp!997850 () Bool)

(assert (=> b!3166389 (= e!1972369 (and tp!997848 tp!997850))))

(assert (= (and b!3166038 ((_ is ElementMatch!9741) (regOne!19994 (reg!10070 r!13156)))) b!3166386))

(assert (= (and b!3166038 ((_ is Concat!15062) (regOne!19994 (reg!10070 r!13156)))) b!3166387))

(assert (= (and b!3166038 ((_ is Star!9741) (regOne!19994 (reg!10070 r!13156)))) b!3166388))

(assert (= (and b!3166038 ((_ is Union!9741) (regOne!19994 (reg!10070 r!13156)))) b!3166389))

(declare-fun e!1972370 () Bool)

(assert (=> b!3166038 (= tp!997666 e!1972370)))

(declare-fun b!3166391 () Bool)

(declare-fun tp!997854 () Bool)

(declare-fun tp!997852 () Bool)

(assert (=> b!3166391 (= e!1972370 (and tp!997854 tp!997852))))

(declare-fun b!3166392 () Bool)

(declare-fun tp!997851 () Bool)

(assert (=> b!3166392 (= e!1972370 tp!997851)))

(declare-fun b!3166390 () Bool)

(assert (=> b!3166390 (= e!1972370 tp_is_empty!17045)))

(declare-fun b!3166393 () Bool)

(declare-fun tp!997853 () Bool)

(declare-fun tp!997855 () Bool)

(assert (=> b!3166393 (= e!1972370 (and tp!997853 tp!997855))))

(assert (= (and b!3166038 ((_ is ElementMatch!9741) (regTwo!19994 (reg!10070 r!13156)))) b!3166390))

(assert (= (and b!3166038 ((_ is Concat!15062) (regTwo!19994 (reg!10070 r!13156)))) b!3166391))

(assert (= (and b!3166038 ((_ is Star!9741) (regTwo!19994 (reg!10070 r!13156)))) b!3166392))

(assert (= (and b!3166038 ((_ is Union!9741) (regTwo!19994 (reg!10070 r!13156)))) b!3166393))

(declare-fun mapNonEmpty!18878 () Bool)

(declare-fun mapRes!18878 () Bool)

(declare-fun tp!997857 () Bool)

(declare-fun e!1972371 () Bool)

(assert (=> mapNonEmpty!18878 (= mapRes!18878 (and tp!997857 e!1972371))))

(declare-fun mapValue!18878 () List!35574)

(declare-fun mapRest!18878 () (Array (_ BitVec 32) List!35574))

(declare-fun mapKey!18878 () (_ BitVec 32))

(assert (=> mapNonEmpty!18878 (= mapRest!18877 (store mapRest!18878 mapKey!18878 mapValue!18878))))

(declare-fun condMapEmpty!18878 () Bool)

(declare-fun mapDefault!18878 () List!35574)

(assert (=> mapNonEmpty!18877 (= condMapEmpty!18878 (= mapRest!18877 ((as const (Array (_ BitVec 32) List!35574)) mapDefault!18878)))))

(declare-fun e!1972372 () Bool)

(assert (=> mapNonEmpty!18877 (= tp!997685 (and e!1972372 mapRes!18878))))

(declare-fun mapIsEmpty!18878 () Bool)

(assert (=> mapIsEmpty!18878 mapRes!18878))

(declare-fun tp!997858 () Bool)

(declare-fun tp!997862 () Bool)

(declare-fun b!3166394 () Bool)

(declare-fun tp!997861 () Bool)

(assert (=> b!3166394 (= e!1972371 (and tp!997858 tp_is_empty!17045 tp!997862 tp!997861))))

(declare-fun tp!997859 () Bool)

(declare-fun tp!997856 () Bool)

(declare-fun tp!997860 () Bool)

(declare-fun b!3166395 () Bool)

(assert (=> b!3166395 (= e!1972372 (and tp!997859 tp_is_empty!17045 tp!997860 tp!997856))))

(assert (= (and mapNonEmpty!18877 condMapEmpty!18878) mapIsEmpty!18878))

(assert (= (and mapNonEmpty!18877 (not condMapEmpty!18878)) mapNonEmpty!18878))

(assert (= (and mapNonEmpty!18878 ((_ is Cons!35450) mapValue!18878)) b!3166394))

(assert (= (and mapNonEmpty!18877 ((_ is Cons!35450) mapDefault!18878)) b!3166395))

(declare-fun m!3428154 () Bool)

(assert (=> mapNonEmpty!18878 m!3428154))

(declare-fun e!1972373 () Bool)

(assert (=> b!3166048 (= tp!997687 e!1972373)))

(declare-fun b!3166397 () Bool)

(declare-fun tp!997866 () Bool)

(declare-fun tp!997864 () Bool)

(assert (=> b!3166397 (= e!1972373 (and tp!997866 tp!997864))))

(declare-fun b!3166398 () Bool)

(declare-fun tp!997863 () Bool)

(assert (=> b!3166398 (= e!1972373 tp!997863)))

(declare-fun b!3166396 () Bool)

(assert (=> b!3166396 (= e!1972373 tp_is_empty!17045)))

(declare-fun b!3166399 () Bool)

(declare-fun tp!997865 () Bool)

(declare-fun tp!997867 () Bool)

(assert (=> b!3166399 (= e!1972373 (and tp!997865 tp!997867))))

(assert (= (and b!3166048 ((_ is ElementMatch!9741) (_1!20404 (_1!20405 (h!40870 mapDefault!18877))))) b!3166396))

(assert (= (and b!3166048 ((_ is Concat!15062) (_1!20404 (_1!20405 (h!40870 mapDefault!18877))))) b!3166397))

(assert (= (and b!3166048 ((_ is Star!9741) (_1!20404 (_1!20405 (h!40870 mapDefault!18877))))) b!3166398))

(assert (= (and b!3166048 ((_ is Union!9741) (_1!20404 (_1!20405 (h!40870 mapDefault!18877))))) b!3166399))

(declare-fun e!1972374 () Bool)

(assert (=> b!3166048 (= tp!997688 e!1972374)))

(declare-fun b!3166401 () Bool)

(declare-fun tp!997871 () Bool)

(declare-fun tp!997869 () Bool)

(assert (=> b!3166401 (= e!1972374 (and tp!997871 tp!997869))))

(declare-fun b!3166402 () Bool)

(declare-fun tp!997868 () Bool)

(assert (=> b!3166402 (= e!1972374 tp!997868)))

(declare-fun b!3166400 () Bool)

(assert (=> b!3166400 (= e!1972374 tp_is_empty!17045)))

(declare-fun b!3166403 () Bool)

(declare-fun tp!997870 () Bool)

(declare-fun tp!997872 () Bool)

(assert (=> b!3166403 (= e!1972374 (and tp!997870 tp!997872))))

(assert (= (and b!3166048 ((_ is ElementMatch!9741) (_2!20405 (h!40870 mapDefault!18877)))) b!3166400))

(assert (= (and b!3166048 ((_ is Concat!15062) (_2!20405 (h!40870 mapDefault!18877)))) b!3166401))

(assert (= (and b!3166048 ((_ is Star!9741) (_2!20405 (h!40870 mapDefault!18877)))) b!3166402))

(assert (= (and b!3166048 ((_ is Union!9741) (_2!20405 (h!40870 mapDefault!18877)))) b!3166403))

(declare-fun tp!997873 () Bool)

(declare-fun tp!997875 () Bool)

(declare-fun b!3166404 () Bool)

(declare-fun e!1972375 () Bool)

(declare-fun tp!997874 () Bool)

(assert (=> b!3166404 (= e!1972375 (and tp!997873 tp_is_empty!17045 tp!997874 tp!997875))))

(assert (=> b!3166048 (= tp!997684 e!1972375)))

(assert (= (and b!3166048 ((_ is Cons!35450) (t!234649 mapDefault!18877))) b!3166404))

(declare-fun e!1972376 () Bool)

(assert (=> b!3166039 (= tp!997665 e!1972376)))

(declare-fun b!3166406 () Bool)

(declare-fun tp!997879 () Bool)

(declare-fun tp!997877 () Bool)

(assert (=> b!3166406 (= e!1972376 (and tp!997879 tp!997877))))

(declare-fun b!3166407 () Bool)

(declare-fun tp!997876 () Bool)

(assert (=> b!3166407 (= e!1972376 tp!997876)))

(declare-fun b!3166405 () Bool)

(assert (=> b!3166405 (= e!1972376 tp_is_empty!17045)))

(declare-fun b!3166408 () Bool)

(declare-fun tp!997878 () Bool)

(declare-fun tp!997880 () Bool)

(assert (=> b!3166408 (= e!1972376 (and tp!997878 tp!997880))))

(assert (= (and b!3166039 ((_ is ElementMatch!9741) (reg!10070 (reg!10070 r!13156)))) b!3166405))

(assert (= (and b!3166039 ((_ is Concat!15062) (reg!10070 (reg!10070 r!13156)))) b!3166406))

(assert (= (and b!3166039 ((_ is Star!9741) (reg!10070 (reg!10070 r!13156)))) b!3166407))

(assert (= (and b!3166039 ((_ is Union!9741) (reg!10070 (reg!10070 r!13156)))) b!3166408))

(declare-fun e!1972377 () Bool)

(assert (=> b!3166008 (= tp!997626 e!1972377)))

(declare-fun b!3166410 () Bool)

(declare-fun tp!997884 () Bool)

(declare-fun tp!997882 () Bool)

(assert (=> b!3166410 (= e!1972377 (and tp!997884 tp!997882))))

(declare-fun b!3166411 () Bool)

(declare-fun tp!997881 () Bool)

(assert (=> b!3166411 (= e!1972377 tp!997881)))

(declare-fun b!3166409 () Bool)

(assert (=> b!3166409 (= e!1972377 tp_is_empty!17045)))

(declare-fun b!3166412 () Bool)

(declare-fun tp!997883 () Bool)

(declare-fun tp!997885 () Bool)

(assert (=> b!3166412 (= e!1972377 (and tp!997883 tp!997885))))

(assert (= (and b!3166008 ((_ is ElementMatch!9741) (_1!20404 (_1!20405 (h!40870 (zeroValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347))))))))))) b!3166409))

(assert (= (and b!3166008 ((_ is Concat!15062) (_1!20404 (_1!20405 (h!40870 (zeroValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347))))))))))) b!3166410))

(assert (= (and b!3166008 ((_ is Star!9741) (_1!20404 (_1!20405 (h!40870 (zeroValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347))))))))))) b!3166411))

(assert (= (and b!3166008 ((_ is Union!9741) (_1!20404 (_1!20405 (h!40870 (zeroValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347))))))))))) b!3166412))

(declare-fun e!1972378 () Bool)

(assert (=> b!3166008 (= tp!997627 e!1972378)))

(declare-fun b!3166414 () Bool)

(declare-fun tp!997889 () Bool)

(declare-fun tp!997887 () Bool)

(assert (=> b!3166414 (= e!1972378 (and tp!997889 tp!997887))))

(declare-fun b!3166415 () Bool)

(declare-fun tp!997886 () Bool)

(assert (=> b!3166415 (= e!1972378 tp!997886)))

(declare-fun b!3166413 () Bool)

(assert (=> b!3166413 (= e!1972378 tp_is_empty!17045)))

(declare-fun b!3166416 () Bool)

(declare-fun tp!997888 () Bool)

(declare-fun tp!997890 () Bool)

(assert (=> b!3166416 (= e!1972378 (and tp!997888 tp!997890))))

(assert (= (and b!3166008 ((_ is ElementMatch!9741) (_2!20405 (h!40870 (zeroValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347)))))))))) b!3166413))

(assert (= (and b!3166008 ((_ is Concat!15062) (_2!20405 (h!40870 (zeroValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347)))))))))) b!3166414))

(assert (= (and b!3166008 ((_ is Star!9741) (_2!20405 (h!40870 (zeroValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347)))))))))) b!3166415))

(assert (= (and b!3166008 ((_ is Union!9741) (_2!20405 (h!40870 (zeroValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347)))))))))) b!3166416))

(declare-fun e!1972379 () Bool)

(declare-fun tp!997892 () Bool)

(declare-fun tp!997893 () Bool)

(declare-fun b!3166417 () Bool)

(declare-fun tp!997891 () Bool)

(assert (=> b!3166417 (= e!1972379 (and tp!997891 tp_is_empty!17045 tp!997892 tp!997893))))

(assert (=> b!3166008 (= tp!997628 e!1972379)))

(assert (= (and b!3166008 ((_ is Cons!35450) (t!234649 (zeroValue!4421 (v!35138 (underlying!8553 (v!35139 (underlying!8554 (cache!4211 cache!347))))))))) b!3166417))

(declare-fun e!1972380 () Bool)

(assert (=> b!3166040 (= tp!997667 e!1972380)))

(declare-fun b!3166419 () Bool)

(declare-fun tp!997897 () Bool)

(declare-fun tp!997895 () Bool)

(assert (=> b!3166419 (= e!1972380 (and tp!997897 tp!997895))))

(declare-fun b!3166420 () Bool)

(declare-fun tp!997894 () Bool)

(assert (=> b!3166420 (= e!1972380 tp!997894)))

(declare-fun b!3166418 () Bool)

(assert (=> b!3166418 (= e!1972380 tp_is_empty!17045)))

(declare-fun b!3166421 () Bool)

(declare-fun tp!997896 () Bool)

(declare-fun tp!997898 () Bool)

(assert (=> b!3166421 (= e!1972380 (and tp!997896 tp!997898))))

(assert (= (and b!3166040 ((_ is ElementMatch!9741) (regOne!19995 (reg!10070 r!13156)))) b!3166418))

(assert (= (and b!3166040 ((_ is Concat!15062) (regOne!19995 (reg!10070 r!13156)))) b!3166419))

(assert (= (and b!3166040 ((_ is Star!9741) (regOne!19995 (reg!10070 r!13156)))) b!3166420))

(assert (= (and b!3166040 ((_ is Union!9741) (regOne!19995 (reg!10070 r!13156)))) b!3166421))

(declare-fun e!1972381 () Bool)

(assert (=> b!3166040 (= tp!997669 e!1972381)))

(declare-fun b!3166423 () Bool)

(declare-fun tp!997902 () Bool)

(declare-fun tp!997900 () Bool)

(assert (=> b!3166423 (= e!1972381 (and tp!997902 tp!997900))))

(declare-fun b!3166424 () Bool)

(declare-fun tp!997899 () Bool)

(assert (=> b!3166424 (= e!1972381 tp!997899)))

(declare-fun b!3166422 () Bool)

(assert (=> b!3166422 (= e!1972381 tp_is_empty!17045)))

(declare-fun b!3166425 () Bool)

(declare-fun tp!997901 () Bool)

(declare-fun tp!997903 () Bool)

(assert (=> b!3166425 (= e!1972381 (and tp!997901 tp!997903))))

(assert (= (and b!3166040 ((_ is ElementMatch!9741) (regTwo!19995 (reg!10070 r!13156)))) b!3166422))

(assert (= (and b!3166040 ((_ is Concat!15062) (regTwo!19995 (reg!10070 r!13156)))) b!3166423))

(assert (= (and b!3166040 ((_ is Star!9741) (regTwo!19995 (reg!10070 r!13156)))) b!3166424))

(assert (= (and b!3166040 ((_ is Union!9741) (regTwo!19995 (reg!10070 r!13156)))) b!3166425))

(declare-fun b_lambda!86423 () Bool)

(assert (= b_lambda!86419 (or (and b!3165888 b_free!83129) b_lambda!86423)))

(declare-fun b_lambda!86425 () Bool)

(assert (= b_lambda!86421 (or (and b!3165888 b_free!83129) b_lambda!86425)))

(check-sat (not b!3166331) (not b!3166325) (not b_next!83833) (not b!3166249) (not b!3166335) (not b!3166353) (not b!3166394) (not b!3166344) (not b!3166376) (not b!3166067) (not b!3166351) (not b!3166311) (not b!3166212) (not b!3166272) (not b!3166105) (not b!3166379) (not b!3166252) (not b!3166275) (not b!3166281) (not b!3166286) (not b!3166270) (not b!3166423) (not bm!229607) (not b!3166395) (not b!3166278) (not bm!229581) (not b!3166269) (not b!3166355) (not b!3166277) (not bm!229551) (not b!3166372) (not b!3166415) (not b!3166380) (not bm!229612) (not d!868848) (not b!3166320) (not b!3166300) (not b!3166412) (not b!3166349) (not b!3166419) (not b!3166402) (not b!3166318) b_and!209393 (not bm!229553) (not b!3166268) (not b!3166304) (not b!3166292) (not d!868880) (not bm!229593) (not b!3166401) tp_is_empty!17045 (not b!3166261) (not bm!229572) (not bm!229580) b_and!209397 (not b!3166407) (not bm!229611) (not b!3166290) (not b!3166387) (not b!3166322) (not b!3166389) (not b!3166397) (not b!3166257) (not b!3166266) (not b!3166420) (not bm!229587) (not b!3166307) (not b!3166391) (not b!3166340) (not d!868872) (not b!3166356) (not d!868886) (not b!3166333) (not b!3166323) (not b!3166385) (not b!3166282) (not b!3166399) (not b!3166223) (not b!3166345) (not b!3166260) (not bm!229567) (not b!3166285) (not bm!229610) (not b!3166384) (not b!3166291) (not d!868864) (not b!3166374) (not b!3166312) (not bm!229569) (not b!3166410) (not d!868870) (not b!3166160) (not b!3166403) (not b!3166306) (not b!3166319) (not b!3166406) (not b!3166421) (not b!3166273) (not d!868862) (not b!3166370) (not b!3166303) (not b!3166404) (not b!3166071) (not b!3166383) (not bm!229566) (not bm!229583) (not b!3166178) (not b!3166177) (not b!3166348) (not b!3166393) (not b!3166295) (not b!3166255) (not b!3166302) (not b!3166265) (not b!3166341) (not b!3166310) (not b!3166308) (not b!3166416) (not b!3166193) (not b!3166110) (not b!3166289) (not b!3166125) (not b!3166378) (not bm!229586) (not b_lambda!86425) (not b!3166327) (not b!3166392) (not b!3166066) (not b!3166119) (not b!3166398) (not b!3166424) (not b!3166196) (not b!3166329) (not b!3166343) (not b!3166279) (not d!868850) (not bm!229577) (not b!3166375) (not bm!229589) (not b_next!83835) (not b!3166132) (not mapNonEmpty!18878) (not b!3166347) (not b!3166180) (not b!3166382) (not b!3166328) (not d!868858) (not b!3166299) (not b!3166357) (not bm!229609) (not b!3166314) (not b!3166253) (not b!3166414) (not b!3166332) (not b!3166371) (not bm!229575) (not b!3166339) (not b!3166408) (not b!3166411) (not b!3166336) (not b!3166425) (not bm!229608) (not bm!229578) (not tb!155099) (not b!3166112) (not b!3166352) (not b!3166388) (not b!3166274) (not d!868854) (not b!3166324) (not bm!229552) (not bm!229582) (not b!3166078) (not b!3166294) (not b!3166195) (not b!3166264) (not b!3166298) (not b!3166262) (not b!3166287) (not bm!229592) (not b!3166296) (not b!3166337) (not b!3166315) (not b!3166283) (not b!3166316) (not d!868852) (not bm!229570) (not bm!229556) (not bm!229590) (not d!868874) (not b!3166417) (not b_lambda!86423))
(check-sat b_and!209397 b_and!209393 (not b_next!83835) (not b_next!83833))
