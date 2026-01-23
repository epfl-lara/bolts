; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!296796 () Bool)

(assert start!296796)

(declare-fun b!3167938 () Bool)

(declare-fun b_free!83161 () Bool)

(declare-fun b_next!83865 () Bool)

(assert (=> b!3167938 (= b_free!83161 (not b_next!83865))))

(declare-fun tp!998826 () Bool)

(declare-fun b_and!209435 () Bool)

(assert (=> b!3167938 (= tp!998826 b_and!209435)))

(declare-fun b!3167948 () Bool)

(declare-fun b_free!83163 () Bool)

(declare-fun b_next!83867 () Bool)

(assert (=> b!3167948 (= b_free!83163 (not b_next!83867))))

(declare-fun tp!998822 () Bool)

(declare-fun b_and!209437 () Bool)

(assert (=> b!3167948 (= tp!998822 b_and!209437)))

(declare-fun b!3167934 () Bool)

(declare-fun e!1973202 () Bool)

(declare-fun tp_is_empty!17061 () Bool)

(assert (=> b!3167934 (= e!1973202 tp_is_empty!17061)))

(declare-fun b!3167936 () Bool)

(declare-fun tp!998828 () Bool)

(declare-fun tp!998829 () Bool)

(assert (=> b!3167936 (= e!1973202 (and tp!998828 tp!998829))))

(declare-fun b!3167937 () Bool)

(declare-fun e!1973201 () Bool)

(declare-datatypes ((C!19684 0))(
  ( (C!19685 (val!11878 Int)) )
))
(declare-datatypes ((Regex!9749 0))(
  ( (ElementMatch!9749 (c!532805 C!19684)) (Concat!15070 (regOne!20010 Regex!9749) (regTwo!20010 Regex!9749)) (EmptyExpr!9749) (Star!9749 (reg!10078 Regex!9749)) (EmptyLang!9749) (Union!9749 (regOne!20011 Regex!9749) (regTwo!20011 Regex!9749)) )
))
(declare-fun r!13156 () Regex!9749)

(declare-fun RegexPrimitiveSize!135 (Regex!9749) Int)

(assert (=> b!3167937 (= e!1973201 (>= (RegexPrimitiveSize!135 (regOne!20010 r!13156)) (RegexPrimitiveSize!135 r!13156)))))

(declare-fun e!1973198 () Bool)

(declare-fun e!1973206 () Bool)

(assert (=> b!3167938 (= e!1973198 (and e!1973206 tp!998826))))

(declare-fun b!3167939 () Bool)

(declare-fun e!1973204 () Bool)

(declare-fun e!1973203 () Bool)

(assert (=> b!3167939 (= e!1973204 e!1973203)))

(declare-fun b!3167940 () Bool)

(declare-fun res!1288331 () Bool)

(assert (=> b!3167940 (=> (not res!1288331) (not e!1973201))))

(declare-fun nullable!3350 (Regex!9749) Bool)

(assert (=> b!3167940 (= res!1288331 (not (nullable!3350 (regOne!20010 r!13156))))))

(declare-fun b!3167941 () Bool)

(declare-fun res!1288332 () Bool)

(assert (=> b!3167941 (=> (not res!1288332) (not e!1973201))))

(declare-datatypes ((tuple2!34596 0))(
  ( (tuple2!34597 (_1!20430 Regex!9749) (_2!20430 C!19684)) )
))
(declare-datatypes ((tuple2!34598 0))(
  ( (tuple2!34599 (_1!20431 tuple2!34596) (_2!20431 Regex!9749)) )
))
(declare-datatypes ((array!14894 0))(
  ( (array!14895 (arr!6630 (Array (_ BitVec 32) (_ BitVec 64))) (size!26716 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4086 0))(
  ( (HashableExt!4085 (__x!22616 Int)) )
))
(declare-datatypes ((List!35585 0))(
  ( (Nil!35461) (Cons!35461 (h!40881 tuple2!34598) (t!234666 List!35585)) )
))
(declare-datatypes ((array!14896 0))(
  ( (array!14897 (arr!6631 (Array (_ BitVec 32) List!35585)) (size!26717 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8340 0))(
  ( (LongMapFixedSize!8341 (defaultEntry!4555 Int) (mask!10838 (_ BitVec 32)) (extraKeys!4419 (_ BitVec 32)) (zeroValue!4429 List!35585) (minValue!4429 List!35585) (_size!8383 (_ BitVec 32)) (_keys!4470 array!14894) (_values!4451 array!14896) (_vacant!4231 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16489 0))(
  ( (Cell!16490 (v!35167 LongMapFixedSize!8340)) )
))
(declare-datatypes ((MutLongMap!4170 0))(
  ( (LongMap!4170 (underlying!8569 Cell!16489)) (MutLongMapExt!4169 (__x!22617 Int)) )
))
(declare-datatypes ((Cell!16491 0))(
  ( (Cell!16492 (v!35168 MutLongMap!4170)) )
))
(declare-datatypes ((MutableMap!4076 0))(
  ( (MutableMapExt!4075 (__x!22618 Int)) (HashMap!4076 (underlying!8570 Cell!16491) (hashF!6118 Hashable!4086) (_size!8384 (_ BitVec 32)) (defaultValue!4247 Int)) )
))
(declare-datatypes ((Cache!422 0))(
  ( (Cache!423 (cache!4221 MutableMap!4076)) )
))
(declare-fun cache!347 () Cache!422)

(declare-fun a!2409 () C!19684)

(get-info :version)

(declare-datatypes ((Option!6916 0))(
  ( (None!6915) (Some!6915 (v!35169 Regex!9749)) )
))
(declare-fun get!11265 (Cache!422 Regex!9749 C!19684) Option!6916)

(assert (=> b!3167941 (= res!1288332 (not ((_ is Some!6915) (get!11265 cache!347 r!13156 a!2409))))))

(declare-fun b!3167942 () Bool)

(declare-fun res!1288330 () Bool)

(assert (=> b!3167942 (=> (not res!1288330) (not e!1973201))))

(declare-fun valid!3256 (Cache!422) Bool)

(assert (=> b!3167942 (= res!1288330 (valid!3256 cache!347))))

(declare-fun b!3167943 () Bool)

(declare-fun e!1973207 () Bool)

(assert (=> b!3167943 (= e!1973207 e!1973198)))

(declare-fun b!3167944 () Bool)

(declare-fun e!1973200 () Bool)

(declare-fun tp!998824 () Bool)

(declare-fun mapRes!18913 () Bool)

(assert (=> b!3167944 (= e!1973200 (and tp!998824 mapRes!18913))))

(declare-fun condMapEmpty!18913 () Bool)

(declare-fun mapDefault!18913 () List!35585)

(assert (=> b!3167944 (= condMapEmpty!18913 (= (arr!6631 (_values!4451 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347))))))) ((as const (Array (_ BitVec 32) List!35585)) mapDefault!18913)))))

(declare-fun b!3167945 () Bool)

(declare-fun res!1288333 () Bool)

(assert (=> b!3167945 (=> (not res!1288333) (not e!1973201))))

(assert (=> b!3167945 (= res!1288333 (and (not ((_ is EmptyExpr!9749) r!13156)) (not ((_ is EmptyLang!9749) r!13156)) (not ((_ is ElementMatch!9749) r!13156)) (not ((_ is Union!9749) r!13156)) (not ((_ is Star!9749) r!13156))))))

(declare-fun mapIsEmpty!18913 () Bool)

(assert (=> mapIsEmpty!18913 mapRes!18913))

(declare-fun b!3167946 () Bool)

(declare-fun tp!998827 () Bool)

(assert (=> b!3167946 (= e!1973202 tp!998827)))

(declare-fun b!3167947 () Bool)

(declare-fun tp!998830 () Bool)

(declare-fun tp!998833 () Bool)

(assert (=> b!3167947 (= e!1973202 (and tp!998830 tp!998833))))

(declare-fun res!1288329 () Bool)

(assert (=> start!296796 (=> (not res!1288329) (not e!1973201))))

(declare-fun validRegex!4468 (Regex!9749) Bool)

(assert (=> start!296796 (= res!1288329 (validRegex!4468 r!13156))))

(assert (=> start!296796 e!1973201))

(assert (=> start!296796 e!1973202))

(declare-fun inv!48139 (Cache!422) Bool)

(assert (=> start!296796 (and (inv!48139 cache!347) e!1973207)))

(assert (=> start!296796 tp_is_empty!17061))

(declare-fun b!3167935 () Bool)

(declare-fun e!1973205 () Bool)

(assert (=> b!3167935 (= e!1973205 e!1973204)))

(declare-fun tp!998825 () Bool)

(declare-fun tp!998831 () Bool)

(declare-fun array_inv!4752 (array!14894) Bool)

(declare-fun array_inv!4753 (array!14896) Bool)

(assert (=> b!3167948 (= e!1973203 (and tp!998822 tp!998825 tp!998831 (array_inv!4752 (_keys!4470 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347))))))) (array_inv!4753 (_values!4451 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347))))))) e!1973200))))

(declare-fun mapNonEmpty!18913 () Bool)

(declare-fun tp!998823 () Bool)

(declare-fun tp!998832 () Bool)

(assert (=> mapNonEmpty!18913 (= mapRes!18913 (and tp!998823 tp!998832))))

(declare-fun mapRest!18913 () (Array (_ BitVec 32) List!35585))

(declare-fun mapValue!18913 () List!35585)

(declare-fun mapKey!18913 () (_ BitVec 32))

(assert (=> mapNonEmpty!18913 (= (arr!6631 (_values!4451 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347))))))) (store mapRest!18913 mapKey!18913 mapValue!18913))))

(declare-fun b!3167949 () Bool)

(declare-fun lt!1065108 () MutLongMap!4170)

(assert (=> b!3167949 (= e!1973206 (and e!1973205 ((_ is LongMap!4170) lt!1065108)))))

(assert (=> b!3167949 (= lt!1065108 (v!35168 (underlying!8570 (cache!4221 cache!347))))))

(assert (= (and start!296796 res!1288329) b!3167942))

(assert (= (and b!3167942 res!1288330) b!3167941))

(assert (= (and b!3167941 res!1288332) b!3167945))

(assert (= (and b!3167945 res!1288333) b!3167940))

(assert (= (and b!3167940 res!1288331) b!3167937))

(assert (= (and start!296796 ((_ is ElementMatch!9749) r!13156)) b!3167934))

(assert (= (and start!296796 ((_ is Concat!15070) r!13156)) b!3167936))

(assert (= (and start!296796 ((_ is Star!9749) r!13156)) b!3167946))

(assert (= (and start!296796 ((_ is Union!9749) r!13156)) b!3167947))

(assert (= (and b!3167944 condMapEmpty!18913) mapIsEmpty!18913))

(assert (= (and b!3167944 (not condMapEmpty!18913)) mapNonEmpty!18913))

(assert (= b!3167948 b!3167944))

(assert (= b!3167939 b!3167948))

(assert (= b!3167935 b!3167939))

(assert (= (and b!3167949 ((_ is LongMap!4170) (v!35168 (underlying!8570 (cache!4221 cache!347))))) b!3167935))

(assert (= b!3167938 b!3167949))

(assert (= (and b!3167943 ((_ is HashMap!4076) (cache!4221 cache!347))) b!3167938))

(assert (= start!296796 b!3167943))

(declare-fun m!3428808 () Bool)

(assert (=> b!3167941 m!3428808))

(declare-fun m!3428810 () Bool)

(assert (=> b!3167942 m!3428810))

(declare-fun m!3428812 () Bool)

(assert (=> b!3167940 m!3428812))

(declare-fun m!3428814 () Bool)

(assert (=> b!3167948 m!3428814))

(declare-fun m!3428816 () Bool)

(assert (=> b!3167948 m!3428816))

(declare-fun m!3428818 () Bool)

(assert (=> start!296796 m!3428818))

(declare-fun m!3428820 () Bool)

(assert (=> start!296796 m!3428820))

(declare-fun m!3428822 () Bool)

(assert (=> b!3167937 m!3428822))

(declare-fun m!3428824 () Bool)

(assert (=> b!3167937 m!3428824))

(declare-fun m!3428826 () Bool)

(assert (=> mapNonEmpty!18913 m!3428826))

(check-sat tp_is_empty!17061 (not b!3167936) (not mapNonEmpty!18913) (not start!296796) b_and!209435 (not b!3167937) (not b!3167947) (not b!3167941) (not b_next!83867) (not b!3167942) (not b!3167940) (not b!3167944) (not b_next!83865) b_and!209437 (not b!3167946) (not b!3167948))
(check-sat b_and!209435 b_and!209437 (not b_next!83867) (not b_next!83865))
(get-model)

(declare-fun d!869020 () Bool)

(assert (=> d!869020 (= (array_inv!4752 (_keys!4470 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347))))))) (bvsge (size!26716 (_keys!4470 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3167948 d!869020))

(declare-fun d!869022 () Bool)

(assert (=> d!869022 (= (array_inv!4753 (_values!4451 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347))))))) (bvsge (size!26717 (_values!4451 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347))))))) #b00000000000000000000000000000000))))

(assert (=> b!3167948 d!869022))

(declare-fun d!869024 () Bool)

(declare-fun nullableFct!955 (Regex!9749) Bool)

(assert (=> d!869024 (= (nullable!3350 (regOne!20010 r!13156)) (nullableFct!955 (regOne!20010 r!13156)))))

(declare-fun bs!539549 () Bool)

(assert (= bs!539549 d!869024))

(declare-fun m!3428828 () Bool)

(assert (=> bs!539549 m!3428828))

(assert (=> b!3167940 d!869024))

(declare-fun d!869026 () Bool)

(declare-fun e!1973212 () Bool)

(assert (=> d!869026 e!1973212))

(declare-fun res!1288336 () Bool)

(assert (=> d!869026 (=> res!1288336 e!1973212)))

(declare-fun lt!1065114 () Option!6916)

(declare-fun isEmpty!19761 (Option!6916) Bool)

(assert (=> d!869026 (= res!1288336 (isEmpty!19761 lt!1065114))))

(declare-fun e!1973213 () Option!6916)

(assert (=> d!869026 (= lt!1065114 e!1973213)))

(declare-fun c!532809 () Bool)

(declare-fun contains!6188 (MutableMap!4076 tuple2!34596) Bool)

(assert (=> d!869026 (= c!532809 (contains!6188 (cache!4221 cache!347) (tuple2!34597 r!13156 a!2409)))))

(assert (=> d!869026 (validRegex!4468 r!13156)))

(assert (=> d!869026 (= (get!11265 cache!347 r!13156 a!2409) lt!1065114)))

(declare-fun b!3167956 () Bool)

(declare-fun apply!7959 (MutableMap!4076 tuple2!34596) Regex!9749)

(assert (=> b!3167956 (= e!1973213 (Some!6915 (apply!7959 (cache!4221 cache!347) (tuple2!34597 r!13156 a!2409))))))

(declare-datatypes ((Unit!49856 0))(
  ( (Unit!49857) )
))
(declare-fun lt!1065113 () Unit!49856)

(declare-fun lemmaIfInCacheThenValid!59 (Cache!422 Regex!9749 C!19684) Unit!49856)

(assert (=> b!3167956 (= lt!1065113 (lemmaIfInCacheThenValid!59 cache!347 r!13156 a!2409))))

(declare-fun b!3167957 () Bool)

(assert (=> b!3167957 (= e!1973213 None!6915)))

(declare-fun b!3167958 () Bool)

(declare-fun get!11266 (Option!6916) Regex!9749)

(declare-fun derivativeStep!2895 (Regex!9749 C!19684) Regex!9749)

(assert (=> b!3167958 (= e!1973212 (= (get!11266 lt!1065114) (derivativeStep!2895 r!13156 a!2409)))))

(assert (= (and d!869026 c!532809) b!3167956))

(assert (= (and d!869026 (not c!532809)) b!3167957))

(assert (= (and d!869026 (not res!1288336)) b!3167958))

(declare-fun m!3428830 () Bool)

(assert (=> d!869026 m!3428830))

(declare-fun m!3428832 () Bool)

(assert (=> d!869026 m!3428832))

(assert (=> d!869026 m!3428818))

(declare-fun m!3428834 () Bool)

(assert (=> b!3167956 m!3428834))

(declare-fun m!3428836 () Bool)

(assert (=> b!3167956 m!3428836))

(declare-fun m!3428838 () Bool)

(assert (=> b!3167958 m!3428838))

(declare-fun m!3428840 () Bool)

(assert (=> b!3167958 m!3428840))

(assert (=> b!3167941 d!869026))

(declare-fun b!3167979 () Bool)

(declare-fun e!1973225 () Int)

(declare-fun e!1973224 () Int)

(assert (=> b!3167979 (= e!1973225 e!1973224)))

(declare-fun c!532820 () Bool)

(assert (=> b!3167979 (= c!532820 ((_ is Concat!15070) (regOne!20010 r!13156)))))

(declare-fun b!3167980 () Bool)

(assert (=> b!3167980 (= e!1973225 1)))

(declare-fun call!229823 () Int)

(declare-fun bm!229817 () Bool)

(declare-fun c!532823 () Bool)

(assert (=> bm!229817 (= call!229823 (RegexPrimitiveSize!135 (ite c!532820 (regTwo!20010 (regOne!20010 r!13156)) (ite c!532823 (reg!10078 (regOne!20010 r!13156)) (regTwo!20011 (regOne!20010 r!13156))))))))

(declare-fun bm!229818 () Bool)

(declare-fun call!229822 () Int)

(assert (=> bm!229818 (= call!229822 call!229823)))

(declare-fun b!3167981 () Bool)

(declare-fun call!229824 () Int)

(assert (=> b!3167981 (= e!1973224 (+ 1 call!229824 call!229823))))

(declare-fun b!3167982 () Bool)

(declare-fun e!1973227 () Int)

(declare-fun e!1973226 () Int)

(assert (=> b!3167982 (= e!1973227 e!1973226)))

(assert (=> b!3167982 (= c!532823 ((_ is Star!9749) (regOne!20010 r!13156)))))

(declare-fun b!3167983 () Bool)

(declare-fun e!1973228 () Int)

(assert (=> b!3167983 (= e!1973228 (+ 1 call!229824 call!229822))))

(declare-fun d!869028 () Bool)

(declare-fun lt!1065117 () Int)

(assert (=> d!869028 (>= lt!1065117 0)))

(assert (=> d!869028 (= lt!1065117 e!1973225)))

(declare-fun c!532824 () Bool)

(assert (=> d!869028 (= c!532824 ((_ is ElementMatch!9749) (regOne!20010 r!13156)))))

(assert (=> d!869028 (= (RegexPrimitiveSize!135 (regOne!20010 r!13156)) lt!1065117)))

(declare-fun b!3167984 () Bool)

(assert (=> b!3167984 (= e!1973228 0)))

(declare-fun b!3167985 () Bool)

(declare-fun c!532822 () Bool)

(assert (=> b!3167985 (= c!532822 ((_ is EmptyLang!9749) (regOne!20010 r!13156)))))

(assert (=> b!3167985 (= e!1973226 e!1973228)))

(declare-fun b!3167986 () Bool)

(assert (=> b!3167986 (= e!1973226 (+ 1 call!229822))))

(declare-fun b!3167987 () Bool)

(declare-fun c!532821 () Bool)

(assert (=> b!3167987 (= c!532821 ((_ is EmptyExpr!9749) (regOne!20010 r!13156)))))

(assert (=> b!3167987 (= e!1973224 e!1973227)))

(declare-fun bm!229819 () Bool)

(assert (=> bm!229819 (= call!229824 (RegexPrimitiveSize!135 (ite c!532820 (regOne!20010 (regOne!20010 r!13156)) (regOne!20011 (regOne!20010 r!13156)))))))

(declare-fun b!3167988 () Bool)

(assert (=> b!3167988 (= e!1973227 0)))

(assert (= (and d!869028 c!532824) b!3167980))

(assert (= (and d!869028 (not c!532824)) b!3167979))

(assert (= (and b!3167979 c!532820) b!3167981))

(assert (= (and b!3167979 (not c!532820)) b!3167987))

(assert (= (and b!3167987 c!532821) b!3167988))

(assert (= (and b!3167987 (not c!532821)) b!3167982))

(assert (= (and b!3167982 c!532823) b!3167986))

(assert (= (and b!3167982 (not c!532823)) b!3167985))

(assert (= (and b!3167985 c!532822) b!3167984))

(assert (= (and b!3167985 (not c!532822)) b!3167983))

(assert (= (or b!3167986 b!3167983) bm!229818))

(assert (= (or b!3167981 bm!229818) bm!229817))

(assert (= (or b!3167981 b!3167983) bm!229819))

(declare-fun m!3428842 () Bool)

(assert (=> bm!229817 m!3428842))

(declare-fun m!3428844 () Bool)

(assert (=> bm!229819 m!3428844))

(assert (=> b!3167937 d!869028))

(declare-fun b!3167989 () Bool)

(declare-fun e!1973230 () Int)

(declare-fun e!1973229 () Int)

(assert (=> b!3167989 (= e!1973230 e!1973229)))

(declare-fun c!532825 () Bool)

(assert (=> b!3167989 (= c!532825 ((_ is Concat!15070) r!13156))))

(declare-fun b!3167990 () Bool)

(assert (=> b!3167990 (= e!1973230 1)))

(declare-fun call!229826 () Int)

(declare-fun c!532828 () Bool)

(declare-fun bm!229820 () Bool)

(assert (=> bm!229820 (= call!229826 (RegexPrimitiveSize!135 (ite c!532825 (regTwo!20010 r!13156) (ite c!532828 (reg!10078 r!13156) (regTwo!20011 r!13156)))))))

(declare-fun bm!229821 () Bool)

(declare-fun call!229825 () Int)

(assert (=> bm!229821 (= call!229825 call!229826)))

(declare-fun b!3167991 () Bool)

(declare-fun call!229827 () Int)

(assert (=> b!3167991 (= e!1973229 (+ 1 call!229827 call!229826))))

(declare-fun b!3167992 () Bool)

(declare-fun e!1973232 () Int)

(declare-fun e!1973231 () Int)

(assert (=> b!3167992 (= e!1973232 e!1973231)))

(assert (=> b!3167992 (= c!532828 ((_ is Star!9749) r!13156))))

(declare-fun b!3167993 () Bool)

(declare-fun e!1973233 () Int)

(assert (=> b!3167993 (= e!1973233 (+ 1 call!229827 call!229825))))

(declare-fun d!869030 () Bool)

(declare-fun lt!1065118 () Int)

(assert (=> d!869030 (>= lt!1065118 0)))

(assert (=> d!869030 (= lt!1065118 e!1973230)))

(declare-fun c!532829 () Bool)

(assert (=> d!869030 (= c!532829 ((_ is ElementMatch!9749) r!13156))))

(assert (=> d!869030 (= (RegexPrimitiveSize!135 r!13156) lt!1065118)))

(declare-fun b!3167994 () Bool)

(assert (=> b!3167994 (= e!1973233 0)))

(declare-fun b!3167995 () Bool)

(declare-fun c!532827 () Bool)

(assert (=> b!3167995 (= c!532827 ((_ is EmptyLang!9749) r!13156))))

(assert (=> b!3167995 (= e!1973231 e!1973233)))

(declare-fun b!3167996 () Bool)

(assert (=> b!3167996 (= e!1973231 (+ 1 call!229825))))

(declare-fun b!3167997 () Bool)

(declare-fun c!532826 () Bool)

(assert (=> b!3167997 (= c!532826 ((_ is EmptyExpr!9749) r!13156))))

(assert (=> b!3167997 (= e!1973229 e!1973232)))

(declare-fun bm!229822 () Bool)

(assert (=> bm!229822 (= call!229827 (RegexPrimitiveSize!135 (ite c!532825 (regOne!20010 r!13156) (regOne!20011 r!13156))))))

(declare-fun b!3167998 () Bool)

(assert (=> b!3167998 (= e!1973232 0)))

(assert (= (and d!869030 c!532829) b!3167990))

(assert (= (and d!869030 (not c!532829)) b!3167989))

(assert (= (and b!3167989 c!532825) b!3167991))

(assert (= (and b!3167989 (not c!532825)) b!3167997))

(assert (= (and b!3167997 c!532826) b!3167998))

(assert (= (and b!3167997 (not c!532826)) b!3167992))

(assert (= (and b!3167992 c!532828) b!3167996))

(assert (= (and b!3167992 (not c!532828)) b!3167995))

(assert (= (and b!3167995 c!532827) b!3167994))

(assert (= (and b!3167995 (not c!532827)) b!3167993))

(assert (= (or b!3167996 b!3167993) bm!229821))

(assert (= (or b!3167991 bm!229821) bm!229820))

(assert (= (or b!3167991 b!3167993) bm!229822))

(declare-fun m!3428846 () Bool)

(assert (=> bm!229820 m!3428846))

(declare-fun m!3428848 () Bool)

(assert (=> bm!229822 m!3428848))

(assert (=> b!3167937 d!869030))

(declare-fun b!3168017 () Bool)

(declare-fun e!1973249 () Bool)

(declare-fun e!1973252 () Bool)

(assert (=> b!3168017 (= e!1973249 e!1973252)))

(declare-fun c!532834 () Bool)

(assert (=> b!3168017 (= c!532834 ((_ is Star!9749) r!13156))))

(declare-fun b!3168018 () Bool)

(declare-fun e!1973250 () Bool)

(declare-fun call!229835 () Bool)

(assert (=> b!3168018 (= e!1973250 call!229835)))

(declare-fun c!532835 () Bool)

(declare-fun call!229836 () Bool)

(declare-fun bm!229829 () Bool)

(assert (=> bm!229829 (= call!229836 (validRegex!4468 (ite c!532834 (reg!10078 r!13156) (ite c!532835 (regTwo!20011 r!13156) (regTwo!20010 r!13156)))))))

(declare-fun bm!229830 () Bool)

(assert (=> bm!229830 (= call!229835 call!229836)))

(declare-fun bm!229831 () Bool)

(declare-fun call!229834 () Bool)

(assert (=> bm!229831 (= call!229834 (validRegex!4468 (ite c!532835 (regOne!20011 r!13156) (regOne!20010 r!13156))))))

(declare-fun b!3168020 () Bool)

(declare-fun e!1973253 () Bool)

(assert (=> b!3168020 (= e!1973253 call!229836)))

(declare-fun b!3168021 () Bool)

(declare-fun res!1288351 () Bool)

(declare-fun e!1973251 () Bool)

(assert (=> b!3168021 (=> res!1288351 e!1973251)))

(assert (=> b!3168021 (= res!1288351 (not ((_ is Concat!15070) r!13156)))))

(declare-fun e!1973248 () Bool)

(assert (=> b!3168021 (= e!1973248 e!1973251)))

(declare-fun b!3168022 () Bool)

(declare-fun e!1973254 () Bool)

(assert (=> b!3168022 (= e!1973254 call!229835)))

(declare-fun b!3168023 () Bool)

(assert (=> b!3168023 (= e!1973252 e!1973253)))

(declare-fun res!1288350 () Bool)

(assert (=> b!3168023 (= res!1288350 (not (nullable!3350 (reg!10078 r!13156))))))

(assert (=> b!3168023 (=> (not res!1288350) (not e!1973253))))

(declare-fun d!869032 () Bool)

(declare-fun res!1288349 () Bool)

(assert (=> d!869032 (=> res!1288349 e!1973249)))

(assert (=> d!869032 (= res!1288349 ((_ is ElementMatch!9749) r!13156))))

(assert (=> d!869032 (= (validRegex!4468 r!13156) e!1973249)))

(declare-fun b!3168019 () Bool)

(declare-fun res!1288347 () Bool)

(assert (=> b!3168019 (=> (not res!1288347) (not e!1973254))))

(assert (=> b!3168019 (= res!1288347 call!229834)))

(assert (=> b!3168019 (= e!1973248 e!1973254)))

(declare-fun b!3168024 () Bool)

(assert (=> b!3168024 (= e!1973251 e!1973250)))

(declare-fun res!1288348 () Bool)

(assert (=> b!3168024 (=> (not res!1288348) (not e!1973250))))

(assert (=> b!3168024 (= res!1288348 call!229834)))

(declare-fun b!3168025 () Bool)

(assert (=> b!3168025 (= e!1973252 e!1973248)))

(assert (=> b!3168025 (= c!532835 ((_ is Union!9749) r!13156))))

(assert (= (and d!869032 (not res!1288349)) b!3168017))

(assert (= (and b!3168017 c!532834) b!3168023))

(assert (= (and b!3168017 (not c!532834)) b!3168025))

(assert (= (and b!3168023 res!1288350) b!3168020))

(assert (= (and b!3168025 c!532835) b!3168019))

(assert (= (and b!3168025 (not c!532835)) b!3168021))

(assert (= (and b!3168019 res!1288347) b!3168022))

(assert (= (and b!3168021 (not res!1288351)) b!3168024))

(assert (= (and b!3168024 res!1288348) b!3168018))

(assert (= (or b!3168019 b!3168024) bm!229831))

(assert (= (or b!3168022 b!3168018) bm!229830))

(assert (= (or b!3168020 bm!229830) bm!229829))

(declare-fun m!3428850 () Bool)

(assert (=> bm!229829 m!3428850))

(declare-fun m!3428852 () Bool)

(assert (=> bm!229831 m!3428852))

(declare-fun m!3428854 () Bool)

(assert (=> b!3168023 m!3428854))

(assert (=> start!296796 d!869032))

(declare-fun d!869034 () Bool)

(declare-fun res!1288354 () Bool)

(declare-fun e!1973257 () Bool)

(assert (=> d!869034 (=> (not res!1288354) (not e!1973257))))

(assert (=> d!869034 (= res!1288354 ((_ is HashMap!4076) (cache!4221 cache!347)))))

(assert (=> d!869034 (= (inv!48139 cache!347) e!1973257)))

(declare-fun b!3168028 () Bool)

(declare-fun validCacheMap!62 (MutableMap!4076) Bool)

(assert (=> b!3168028 (= e!1973257 (validCacheMap!62 (cache!4221 cache!347)))))

(assert (= (and d!869034 res!1288354) b!3168028))

(declare-fun m!3428856 () Bool)

(assert (=> b!3168028 m!3428856))

(assert (=> start!296796 d!869034))

(declare-fun d!869036 () Bool)

(assert (=> d!869036 (= (valid!3256 cache!347) (validCacheMap!62 (cache!4221 cache!347)))))

(declare-fun bs!539550 () Bool)

(assert (= bs!539550 d!869036))

(assert (=> bs!539550 m!3428856))

(assert (=> b!3167942 d!869036))

(declare-fun tp!998841 () Bool)

(declare-fun tp!998840 () Bool)

(declare-fun tp!998842 () Bool)

(declare-fun e!1973260 () Bool)

(declare-fun b!3168033 () Bool)

(assert (=> b!3168033 (= e!1973260 (and tp!998840 tp_is_empty!17061 tp!998841 tp!998842))))

(assert (=> b!3167948 (= tp!998825 e!1973260)))

(assert (= (and b!3167948 ((_ is Cons!35461) (zeroValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347)))))))) b!3168033))

(declare-fun tp!998843 () Bool)

(declare-fun b!3168034 () Bool)

(declare-fun tp!998844 () Bool)

(declare-fun e!1973261 () Bool)

(declare-fun tp!998845 () Bool)

(assert (=> b!3168034 (= e!1973261 (and tp!998843 tp_is_empty!17061 tp!998844 tp!998845))))

(assert (=> b!3167948 (= tp!998831 e!1973261)))

(assert (= (and b!3167948 ((_ is Cons!35461) (minValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347)))))))) b!3168034))

(declare-fun e!1973262 () Bool)

(declare-fun tp!998847 () Bool)

(declare-fun b!3168035 () Bool)

(declare-fun tp!998846 () Bool)

(declare-fun tp!998848 () Bool)

(assert (=> b!3168035 (= e!1973262 (and tp!998846 tp_is_empty!17061 tp!998847 tp!998848))))

(assert (=> b!3167944 (= tp!998824 e!1973262)))

(assert (= (and b!3167944 ((_ is Cons!35461) mapDefault!18913)) b!3168035))

(declare-fun mapNonEmpty!18916 () Bool)

(declare-fun mapRes!18916 () Bool)

(declare-fun tp!998869 () Bool)

(declare-fun e!1973268 () Bool)

(assert (=> mapNonEmpty!18916 (= mapRes!18916 (and tp!998869 e!1973268))))

(declare-fun mapRest!18916 () (Array (_ BitVec 32) List!35585))

(declare-fun mapValue!18916 () List!35585)

(declare-fun mapKey!18916 () (_ BitVec 32))

(assert (=> mapNonEmpty!18916 (= mapRest!18913 (store mapRest!18916 mapKey!18916 mapValue!18916))))

(declare-fun tp!998864 () Bool)

(declare-fun b!3168043 () Bool)

(declare-fun e!1973267 () Bool)

(declare-fun tp!998867 () Bool)

(declare-fun tp!998863 () Bool)

(assert (=> b!3168043 (= e!1973267 (and tp!998864 tp_is_empty!17061 tp!998867 tp!998863))))

(declare-fun tp!998868 () Bool)

(declare-fun b!3168042 () Bool)

(declare-fun tp!998865 () Bool)

(declare-fun tp!998866 () Bool)

(assert (=> b!3168042 (= e!1973268 (and tp!998868 tp_is_empty!17061 tp!998865 tp!998866))))

(declare-fun condMapEmpty!18916 () Bool)

(declare-fun mapDefault!18916 () List!35585)

(assert (=> mapNonEmpty!18913 (= condMapEmpty!18916 (= mapRest!18913 ((as const (Array (_ BitVec 32) List!35585)) mapDefault!18916)))))

(assert (=> mapNonEmpty!18913 (= tp!998823 (and e!1973267 mapRes!18916))))

(declare-fun mapIsEmpty!18916 () Bool)

(assert (=> mapIsEmpty!18916 mapRes!18916))

(assert (= (and mapNonEmpty!18913 condMapEmpty!18916) mapIsEmpty!18916))

(assert (= (and mapNonEmpty!18913 (not condMapEmpty!18916)) mapNonEmpty!18916))

(assert (= (and mapNonEmpty!18916 ((_ is Cons!35461) mapValue!18916)) b!3168042))

(assert (= (and mapNonEmpty!18913 ((_ is Cons!35461) mapDefault!18916)) b!3168043))

(declare-fun m!3428858 () Bool)

(assert (=> mapNonEmpty!18916 m!3428858))

(declare-fun b!3168044 () Bool)

(declare-fun tp!998870 () Bool)

(declare-fun tp!998872 () Bool)

(declare-fun e!1973269 () Bool)

(declare-fun tp!998871 () Bool)

(assert (=> b!3168044 (= e!1973269 (and tp!998870 tp_is_empty!17061 tp!998871 tp!998872))))

(assert (=> mapNonEmpty!18913 (= tp!998832 e!1973269)))

(assert (= (and mapNonEmpty!18913 ((_ is Cons!35461) mapValue!18913)) b!3168044))

(declare-fun e!1973272 () Bool)

(assert (=> b!3167936 (= tp!998828 e!1973272)))

(declare-fun b!3168056 () Bool)

(declare-fun tp!998885 () Bool)

(declare-fun tp!998887 () Bool)

(assert (=> b!3168056 (= e!1973272 (and tp!998885 tp!998887))))

(declare-fun b!3168058 () Bool)

(declare-fun tp!998884 () Bool)

(declare-fun tp!998883 () Bool)

(assert (=> b!3168058 (= e!1973272 (and tp!998884 tp!998883))))

(declare-fun b!3168057 () Bool)

(declare-fun tp!998886 () Bool)

(assert (=> b!3168057 (= e!1973272 tp!998886)))

(declare-fun b!3168055 () Bool)

(assert (=> b!3168055 (= e!1973272 tp_is_empty!17061)))

(assert (= (and b!3167936 ((_ is ElementMatch!9749) (regOne!20010 r!13156))) b!3168055))

(assert (= (and b!3167936 ((_ is Concat!15070) (regOne!20010 r!13156))) b!3168056))

(assert (= (and b!3167936 ((_ is Star!9749) (regOne!20010 r!13156))) b!3168057))

(assert (= (and b!3167936 ((_ is Union!9749) (regOne!20010 r!13156))) b!3168058))

(declare-fun e!1973273 () Bool)

(assert (=> b!3167936 (= tp!998829 e!1973273)))

(declare-fun b!3168060 () Bool)

(declare-fun tp!998890 () Bool)

(declare-fun tp!998892 () Bool)

(assert (=> b!3168060 (= e!1973273 (and tp!998890 tp!998892))))

(declare-fun b!3168062 () Bool)

(declare-fun tp!998889 () Bool)

(declare-fun tp!998888 () Bool)

(assert (=> b!3168062 (= e!1973273 (and tp!998889 tp!998888))))

(declare-fun b!3168061 () Bool)

(declare-fun tp!998891 () Bool)

(assert (=> b!3168061 (= e!1973273 tp!998891)))

(declare-fun b!3168059 () Bool)

(assert (=> b!3168059 (= e!1973273 tp_is_empty!17061)))

(assert (= (and b!3167936 ((_ is ElementMatch!9749) (regTwo!20010 r!13156))) b!3168059))

(assert (= (and b!3167936 ((_ is Concat!15070) (regTwo!20010 r!13156))) b!3168060))

(assert (= (and b!3167936 ((_ is Star!9749) (regTwo!20010 r!13156))) b!3168061))

(assert (= (and b!3167936 ((_ is Union!9749) (regTwo!20010 r!13156))) b!3168062))

(declare-fun e!1973274 () Bool)

(assert (=> b!3167947 (= tp!998830 e!1973274)))

(declare-fun b!3168064 () Bool)

(declare-fun tp!998895 () Bool)

(declare-fun tp!998897 () Bool)

(assert (=> b!3168064 (= e!1973274 (and tp!998895 tp!998897))))

(declare-fun b!3168066 () Bool)

(declare-fun tp!998894 () Bool)

(declare-fun tp!998893 () Bool)

(assert (=> b!3168066 (= e!1973274 (and tp!998894 tp!998893))))

(declare-fun b!3168065 () Bool)

(declare-fun tp!998896 () Bool)

(assert (=> b!3168065 (= e!1973274 tp!998896)))

(declare-fun b!3168063 () Bool)

(assert (=> b!3168063 (= e!1973274 tp_is_empty!17061)))

(assert (= (and b!3167947 ((_ is ElementMatch!9749) (regOne!20011 r!13156))) b!3168063))

(assert (= (and b!3167947 ((_ is Concat!15070) (regOne!20011 r!13156))) b!3168064))

(assert (= (and b!3167947 ((_ is Star!9749) (regOne!20011 r!13156))) b!3168065))

(assert (= (and b!3167947 ((_ is Union!9749) (regOne!20011 r!13156))) b!3168066))

(declare-fun e!1973275 () Bool)

(assert (=> b!3167947 (= tp!998833 e!1973275)))

(declare-fun b!3168068 () Bool)

(declare-fun tp!998900 () Bool)

(declare-fun tp!998902 () Bool)

(assert (=> b!3168068 (= e!1973275 (and tp!998900 tp!998902))))

(declare-fun b!3168070 () Bool)

(declare-fun tp!998899 () Bool)

(declare-fun tp!998898 () Bool)

(assert (=> b!3168070 (= e!1973275 (and tp!998899 tp!998898))))

(declare-fun b!3168069 () Bool)

(declare-fun tp!998901 () Bool)

(assert (=> b!3168069 (= e!1973275 tp!998901)))

(declare-fun b!3168067 () Bool)

(assert (=> b!3168067 (= e!1973275 tp_is_empty!17061)))

(assert (= (and b!3167947 ((_ is ElementMatch!9749) (regTwo!20011 r!13156))) b!3168067))

(assert (= (and b!3167947 ((_ is Concat!15070) (regTwo!20011 r!13156))) b!3168068))

(assert (= (and b!3167947 ((_ is Star!9749) (regTwo!20011 r!13156))) b!3168069))

(assert (= (and b!3167947 ((_ is Union!9749) (regTwo!20011 r!13156))) b!3168070))

(declare-fun e!1973276 () Bool)

(assert (=> b!3167946 (= tp!998827 e!1973276)))

(declare-fun b!3168072 () Bool)

(declare-fun tp!998905 () Bool)

(declare-fun tp!998907 () Bool)

(assert (=> b!3168072 (= e!1973276 (and tp!998905 tp!998907))))

(declare-fun b!3168074 () Bool)

(declare-fun tp!998904 () Bool)

(declare-fun tp!998903 () Bool)

(assert (=> b!3168074 (= e!1973276 (and tp!998904 tp!998903))))

(declare-fun b!3168073 () Bool)

(declare-fun tp!998906 () Bool)

(assert (=> b!3168073 (= e!1973276 tp!998906)))

(declare-fun b!3168071 () Bool)

(assert (=> b!3168071 (= e!1973276 tp_is_empty!17061)))

(assert (= (and b!3167946 ((_ is ElementMatch!9749) (reg!10078 r!13156))) b!3168071))

(assert (= (and b!3167946 ((_ is Concat!15070) (reg!10078 r!13156))) b!3168072))

(assert (= (and b!3167946 ((_ is Star!9749) (reg!10078 r!13156))) b!3168073))

(assert (= (and b!3167946 ((_ is Union!9749) (reg!10078 r!13156))) b!3168074))

(check-sat (not b!3168070) (not b!3168066) (not b!3168069) (not b!3168034) (not b!3168065) (not bm!229817) (not b_next!83865) (not bm!229820) (not b!3168043) tp_is_empty!17061 (not b!3168062) (not b!3167956) (not b!3168072) (not bm!229822) (not mapNonEmpty!18916) (not d!869036) (not b!3168068) b_and!209435 (not d!869026) (not b!3168058) (not b!3168044) (not bm!229829) (not d!869024) (not b!3168028) (not b!3168060) (not b!3168057) (not b!3168023) (not b!3168073) (not b_next!83867) (not b!3168064) (not b!3168056) (not b!3168074) (not b!3167958) (not b!3168035) (not b!3168033) b_and!209437 (not bm!229831) (not b!3168042) (not b!3168061) (not bm!229819))
(check-sat b_and!209435 b_and!209437 (not b_next!83867) (not b_next!83865))
(get-model)

(declare-fun d!869038 () Bool)

(assert (=> d!869038 (= (isEmpty!19761 lt!1065114) (not ((_ is Some!6915) lt!1065114)))))

(assert (=> d!869026 d!869038))

(declare-datatypes ((Option!6917 0))(
  ( (None!6916) (Some!6916 (v!35170 tuple2!34598)) )
))
(declare-fun call!229849 () Option!6917)

(declare-fun bm!229844 () Bool)

(declare-fun call!229851 () List!35585)

(declare-fun getPair!98 (List!35585 tuple2!34596) Option!6917)

(assert (=> bm!229844 (= call!229849 (getPair!98 call!229851 (tuple2!34597 r!13156 a!2409)))))

(declare-fun bm!229845 () Bool)

(declare-datatypes ((tuple2!34600 0))(
  ( (tuple2!34601 (_1!20432 (_ BitVec 64)) (_2!20432 List!35585)) )
))
(declare-datatypes ((List!35586 0))(
  ( (Nil!35462) (Cons!35462 (h!40882 tuple2!34600) (t!234669 List!35586)) )
))
(declare-datatypes ((ListLongMap!727 0))(
  ( (ListLongMap!728 (toList!2062 List!35586)) )
))
(declare-fun call!229850 () ListLongMap!727)

(declare-fun c!532845 () Bool)

(declare-fun lt!1065161 () ListLongMap!727)

(declare-fun call!229853 () (_ BitVec 64))

(declare-fun call!229852 () Bool)

(declare-fun contains!6189 (ListLongMap!727 (_ BitVec 64)) Bool)

(assert (=> bm!229845 (= call!229852 (contains!6189 (ite c!532845 lt!1065161 call!229850) call!229853))))

(declare-fun bm!229846 () Bool)

(declare-fun call!229854 () Bool)

(declare-fun isDefined!5430 (Option!6917) Bool)

(assert (=> bm!229846 (= call!229854 (isDefined!5430 call!229849))))

(declare-fun b!3168097 () Bool)

(assert (=> b!3168097 false))

(declare-fun lt!1065164 () Unit!49856)

(declare-fun lt!1065166 () Unit!49856)

(assert (=> b!3168097 (= lt!1065164 lt!1065166)))

(declare-fun lt!1065167 () List!35586)

(declare-fun lt!1065171 () (_ BitVec 64))

(declare-fun lt!1065175 () List!35585)

(declare-fun contains!6190 (List!35586 tuple2!34600) Bool)

(assert (=> b!3168097 (contains!6190 lt!1065167 (tuple2!34601 lt!1065171 lt!1065175))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!104 (List!35586 (_ BitVec 64) List!35585) Unit!49856)

(assert (=> b!3168097 (= lt!1065166 (lemmaGetValueByKeyImpliesContainsTuple!104 lt!1065167 lt!1065171 lt!1065175))))

(declare-fun apply!7960 (MutLongMap!4170 (_ BitVec 64)) List!35585)

(assert (=> b!3168097 (= lt!1065175 (apply!7960 (v!35168 (underlying!8570 (cache!4221 cache!347))) lt!1065171))))

(declare-fun map!7912 (MutLongMap!4170) ListLongMap!727)

(assert (=> b!3168097 (= lt!1065167 (toList!2062 (map!7912 (v!35168 (underlying!8570 (cache!4221 cache!347))))))))

(declare-fun lt!1065159 () Unit!49856)

(declare-fun lt!1065177 () Unit!49856)

(assert (=> b!3168097 (= lt!1065159 lt!1065177)))

(declare-fun lt!1065178 () List!35586)

(declare-datatypes ((Option!6918 0))(
  ( (None!6917) (Some!6917 (v!35171 List!35585)) )
))
(declare-fun isDefined!5431 (Option!6918) Bool)

(declare-fun getValueByKey!183 (List!35586 (_ BitVec 64)) Option!6918)

(assert (=> b!3168097 (isDefined!5431 (getValueByKey!183 lt!1065178 lt!1065171))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!132 (List!35586 (_ BitVec 64)) Unit!49856)

(assert (=> b!3168097 (= lt!1065177 (lemmaContainsKeyImpliesGetValueByKeyDefined!132 lt!1065178 lt!1065171))))

(assert (=> b!3168097 (= lt!1065178 (toList!2062 (map!7912 (v!35168 (underlying!8570 (cache!4221 cache!347))))))))

(declare-fun lt!1065165 () Unit!49856)

(declare-fun lt!1065176 () Unit!49856)

(assert (=> b!3168097 (= lt!1065165 lt!1065176)))

(declare-fun lt!1065163 () List!35586)

(declare-fun containsKey!196 (List!35586 (_ BitVec 64)) Bool)

(assert (=> b!3168097 (containsKey!196 lt!1065163 lt!1065171)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!99 (List!35586 (_ BitVec 64)) Unit!49856)

(assert (=> b!3168097 (= lt!1065176 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!99 lt!1065163 lt!1065171))))

(assert (=> b!3168097 (= lt!1065163 (toList!2062 (map!7912 (v!35168 (underlying!8570 (cache!4221 cache!347))))))))

(declare-fun e!1973293 () Unit!49856)

(declare-fun Unit!49858 () Unit!49856)

(assert (=> b!3168097 (= e!1973293 Unit!49858)))

(declare-fun b!3168098 () Bool)

(declare-fun e!1973297 () Unit!49856)

(declare-fun Unit!49859 () Unit!49856)

(assert (=> b!3168098 (= e!1973297 Unit!49859)))

(declare-fun bm!229847 () Bool)

(assert (=> bm!229847 (= call!229850 (map!7912 (v!35168 (underlying!8570 (cache!4221 cache!347)))))))

(declare-fun b!3168099 () Bool)

(assert (=> b!3168099 false))

(declare-fun lt!1065168 () Unit!49856)

(declare-fun lt!1065174 () Unit!49856)

(assert (=> b!3168099 (= lt!1065168 lt!1065174)))

(declare-fun lt!1065172 () ListLongMap!727)

(declare-datatypes ((ListMap!1309 0))(
  ( (ListMap!1310 (toList!2063 List!35585)) )
))
(declare-fun contains!6191 (ListMap!1309 tuple2!34596) Bool)

(declare-fun extractMap!236 (List!35586) ListMap!1309)

(assert (=> b!3168099 (contains!6191 (extractMap!236 (toList!2062 lt!1065172)) (tuple2!34597 r!13156 a!2409))))

(declare-fun lemmaInLongMapThenInGenericMap!98 (ListLongMap!727 tuple2!34596 Hashable!4086) Unit!49856)

(assert (=> b!3168099 (= lt!1065174 (lemmaInLongMapThenInGenericMap!98 lt!1065172 (tuple2!34597 r!13156 a!2409) (hashF!6118 (cache!4221 cache!347))))))

(assert (=> b!3168099 (= lt!1065172 call!229850)))

(declare-fun e!1973292 () Unit!49856)

(declare-fun Unit!49860 () Unit!49856)

(assert (=> b!3168099 (= e!1973292 Unit!49860)))

(declare-fun bm!229848 () Bool)

(declare-fun apply!7961 (ListLongMap!727 (_ BitVec 64)) List!35585)

(assert (=> bm!229848 (= call!229851 (apply!7961 (ite c!532845 lt!1065161 call!229850) call!229853))))

(declare-fun d!869040 () Bool)

(declare-fun lt!1065160 () Bool)

(declare-fun map!7913 (MutableMap!4076) ListMap!1309)

(assert (=> d!869040 (= lt!1065160 (contains!6191 (map!7913 (cache!4221 cache!347)) (tuple2!34597 r!13156 a!2409)))))

(declare-fun e!1973296 () Bool)

(assert (=> d!869040 (= lt!1065160 e!1973296)))

(declare-fun res!1288363 () Bool)

(assert (=> d!869040 (=> (not res!1288363) (not e!1973296))))

(declare-fun contains!6192 (MutLongMap!4170 (_ BitVec 64)) Bool)

(assert (=> d!869040 (= res!1288363 (contains!6192 (v!35168 (underlying!8570 (cache!4221 cache!347))) lt!1065171))))

(declare-fun lt!1065169 () Unit!49856)

(declare-fun e!1973295 () Unit!49856)

(assert (=> d!869040 (= lt!1065169 e!1973295)))

(assert (=> d!869040 (= c!532845 (contains!6191 (extractMap!236 (toList!2062 (map!7912 (v!35168 (underlying!8570 (cache!4221 cache!347)))))) (tuple2!34597 r!13156 a!2409)))))

(declare-fun lt!1065170 () Unit!49856)

(assert (=> d!869040 (= lt!1065170 e!1973297)))

(declare-fun c!532844 () Bool)

(assert (=> d!869040 (= c!532844 (contains!6192 (v!35168 (underlying!8570 (cache!4221 cache!347))) lt!1065171))))

(declare-fun hash!807 (Hashable!4086 tuple2!34596) (_ BitVec 64))

(assert (=> d!869040 (= lt!1065171 (hash!807 (hashF!6118 (cache!4221 cache!347)) (tuple2!34597 r!13156 a!2409)))))

(declare-fun valid!3257 (MutableMap!4076) Bool)

(assert (=> d!869040 (valid!3257 (cache!4221 cache!347))))

(assert (=> d!869040 (= (contains!6188 (cache!4221 cache!347) (tuple2!34597 r!13156 a!2409)) lt!1065160)))

(declare-fun b!3168100 () Bool)

(declare-fun e!1973294 () Bool)

(assert (=> b!3168100 (= e!1973294 call!229854)))

(declare-fun lambda!115903 () Int)

(declare-fun b!3168101 () Bool)

(declare-fun forallContained!1076 (List!35586 Int tuple2!34600) Unit!49856)

(assert (=> b!3168101 (= e!1973297 (forallContained!1076 (toList!2062 (map!7912 (v!35168 (underlying!8570 (cache!4221 cache!347))))) lambda!115903 (tuple2!34601 lt!1065171 (apply!7960 (v!35168 (underlying!8570 (cache!4221 cache!347))) lt!1065171))))))

(declare-fun c!532847 () Bool)

(assert (=> b!3168101 (= c!532847 (not (contains!6190 (toList!2062 (map!7912 (v!35168 (underlying!8570 (cache!4221 cache!347))))) (tuple2!34601 lt!1065171 (apply!7960 (v!35168 (underlying!8570 (cache!4221 cache!347))) lt!1065171)))))))

(declare-fun lt!1065173 () Unit!49856)

(assert (=> b!3168101 (= lt!1065173 e!1973293)))

(declare-fun b!3168102 () Bool)

(assert (=> b!3168102 (= e!1973296 (isDefined!5430 (getPair!98 (apply!7960 (v!35168 (underlying!8570 (cache!4221 cache!347))) lt!1065171) (tuple2!34597 r!13156 a!2409))))))

(declare-fun b!3168103 () Bool)

(declare-fun e!1973291 () Bool)

(assert (=> b!3168103 (= e!1973291 call!229854)))

(declare-fun b!3168104 () Bool)

(declare-fun Unit!49861 () Unit!49856)

(assert (=> b!3168104 (= e!1973292 Unit!49861)))

(declare-fun b!3168105 () Bool)

(declare-fun Unit!49862 () Unit!49856)

(assert (=> b!3168105 (= e!1973293 Unit!49862)))

(declare-fun bm!229849 () Bool)

(assert (=> bm!229849 (= call!229853 (hash!807 (hashF!6118 (cache!4221 cache!347)) (tuple2!34597 r!13156 a!2409)))))

(declare-fun b!3168106 () Bool)

(assert (=> b!3168106 (= e!1973295 e!1973292)))

(declare-fun res!1288361 () Bool)

(assert (=> b!3168106 (= res!1288361 call!229852)))

(assert (=> b!3168106 (=> (not res!1288361) (not e!1973294))))

(declare-fun c!532846 () Bool)

(assert (=> b!3168106 (= c!532846 e!1973294)))

(declare-fun b!3168107 () Bool)

(declare-fun lt!1065162 () Unit!49856)

(assert (=> b!3168107 (= e!1973295 lt!1065162)))

(assert (=> b!3168107 (= lt!1065161 call!229850)))

(declare-fun lemmaInGenericMapThenInLongMap!98 (ListLongMap!727 tuple2!34596 Hashable!4086) Unit!49856)

(assert (=> b!3168107 (= lt!1065162 (lemmaInGenericMapThenInLongMap!98 lt!1065161 (tuple2!34597 r!13156 a!2409) (hashF!6118 (cache!4221 cache!347))))))

(declare-fun res!1288362 () Bool)

(assert (=> b!3168107 (= res!1288362 call!229852)))

(assert (=> b!3168107 (=> (not res!1288362) (not e!1973291))))

(assert (=> b!3168107 e!1973291))

(assert (= (and d!869040 c!532844) b!3168101))

(assert (= (and d!869040 (not c!532844)) b!3168098))

(assert (= (and b!3168101 c!532847) b!3168097))

(assert (= (and b!3168101 (not c!532847)) b!3168105))

(assert (= (and d!869040 c!532845) b!3168107))

(assert (= (and d!869040 (not c!532845)) b!3168106))

(assert (= (and b!3168107 res!1288362) b!3168103))

(assert (= (and b!3168106 res!1288361) b!3168100))

(assert (= (and b!3168106 c!532846) b!3168099))

(assert (= (and b!3168106 (not c!532846)) b!3168104))

(assert (= (or b!3168107 b!3168106 b!3168100 b!3168099) bm!229847))

(assert (= (or b!3168107 b!3168103 b!3168106 b!3168100) bm!229849))

(assert (= (or b!3168103 b!3168100) bm!229848))

(assert (= (or b!3168107 b!3168106) bm!229845))

(assert (= (or b!3168103 b!3168100) bm!229844))

(assert (= (or b!3168103 b!3168100) bm!229846))

(assert (= (and d!869040 res!1288363) b!3168102))

(declare-fun m!3428860 () Bool)

(assert (=> b!3168102 m!3428860))

(assert (=> b!3168102 m!3428860))

(declare-fun m!3428862 () Bool)

(assert (=> b!3168102 m!3428862))

(assert (=> b!3168102 m!3428862))

(declare-fun m!3428864 () Bool)

(assert (=> b!3168102 m!3428864))

(declare-fun m!3428866 () Bool)

(assert (=> bm!229848 m!3428866))

(declare-fun m!3428868 () Bool)

(assert (=> bm!229849 m!3428868))

(declare-fun m!3428870 () Bool)

(assert (=> bm!229844 m!3428870))

(declare-fun m!3428872 () Bool)

(assert (=> bm!229847 m!3428872))

(declare-fun m!3428874 () Bool)

(assert (=> b!3168099 m!3428874))

(assert (=> b!3168099 m!3428874))

(declare-fun m!3428876 () Bool)

(assert (=> b!3168099 m!3428876))

(declare-fun m!3428878 () Bool)

(assert (=> b!3168099 m!3428878))

(assert (=> b!3168101 m!3428872))

(assert (=> b!3168101 m!3428860))

(declare-fun m!3428880 () Bool)

(assert (=> b!3168101 m!3428880))

(declare-fun m!3428882 () Bool)

(assert (=> b!3168101 m!3428882))

(declare-fun m!3428884 () Bool)

(assert (=> d!869040 m!3428884))

(assert (=> d!869040 m!3428872))

(declare-fun m!3428886 () Bool)

(assert (=> d!869040 m!3428886))

(declare-fun m!3428888 () Bool)

(assert (=> d!869040 m!3428888))

(assert (=> d!869040 m!3428884))

(declare-fun m!3428890 () Bool)

(assert (=> d!869040 m!3428890))

(assert (=> d!869040 m!3428868))

(declare-fun m!3428892 () Bool)

(assert (=> d!869040 m!3428892))

(assert (=> d!869040 m!3428888))

(declare-fun m!3428894 () Bool)

(assert (=> d!869040 m!3428894))

(declare-fun m!3428896 () Bool)

(assert (=> b!3168097 m!3428896))

(declare-fun m!3428898 () Bool)

(assert (=> b!3168097 m!3428898))

(declare-fun m!3428900 () Bool)

(assert (=> b!3168097 m!3428900))

(assert (=> b!3168097 m!3428896))

(declare-fun m!3428902 () Bool)

(assert (=> b!3168097 m!3428902))

(declare-fun m!3428904 () Bool)

(assert (=> b!3168097 m!3428904))

(assert (=> b!3168097 m!3428860))

(declare-fun m!3428906 () Bool)

(assert (=> b!3168097 m!3428906))

(assert (=> b!3168097 m!3428872))

(declare-fun m!3428908 () Bool)

(assert (=> b!3168097 m!3428908))

(declare-fun m!3428910 () Bool)

(assert (=> bm!229846 m!3428910))

(declare-fun m!3428912 () Bool)

(assert (=> bm!229845 m!3428912))

(declare-fun m!3428914 () Bool)

(assert (=> b!3168107 m!3428914))

(assert (=> d!869026 d!869040))

(assert (=> d!869026 d!869032))

(declare-fun d!869042 () Bool)

(assert (=> d!869042 (= (get!11266 lt!1065114) (v!35169 lt!1065114))))

(assert (=> b!3167958 d!869042))

(declare-fun b!3168128 () Bool)

(declare-fun e!1973312 () Regex!9749)

(declare-fun e!1973310 () Regex!9749)

(assert (=> b!3168128 (= e!1973312 e!1973310)))

(declare-fun c!532859 () Bool)

(assert (=> b!3168128 (= c!532859 ((_ is Star!9749) r!13156))))

(declare-fun b!3168129 () Bool)

(declare-fun e!1973311 () Regex!9749)

(declare-fun e!1973309 () Regex!9749)

(assert (=> b!3168129 (= e!1973311 e!1973309)))

(declare-fun c!532860 () Bool)

(assert (=> b!3168129 (= c!532860 ((_ is ElementMatch!9749) r!13156))))

(declare-fun b!3168130 () Bool)

(declare-fun call!229864 () Regex!9749)

(assert (=> b!3168130 (= e!1973310 (Concat!15070 call!229864 r!13156))))

(declare-fun b!3168131 () Bool)

(declare-fun e!1973308 () Regex!9749)

(declare-fun call!229863 () Regex!9749)

(assert (=> b!3168131 (= e!1973308 (Union!9749 (Concat!15070 call!229863 (regTwo!20010 r!13156)) EmptyLang!9749))))

(declare-fun d!869044 () Bool)

(declare-fun lt!1065181 () Regex!9749)

(assert (=> d!869044 (validRegex!4468 lt!1065181)))

(assert (=> d!869044 (= lt!1065181 e!1973311)))

(declare-fun c!532862 () Bool)

(assert (=> d!869044 (= c!532862 (or ((_ is EmptyExpr!9749) r!13156) ((_ is EmptyLang!9749) r!13156)))))

(assert (=> d!869044 (validRegex!4468 r!13156)))

(assert (=> d!869044 (= (derivativeStep!2895 r!13156 a!2409) lt!1065181)))

(declare-fun c!532858 () Bool)

(declare-fun bm!229858 () Bool)

(declare-fun call!229866 () Regex!9749)

(assert (=> bm!229858 (= call!229866 (derivativeStep!2895 (ite c!532858 (regOne!20011 r!13156) (regTwo!20010 r!13156)) a!2409))))

(declare-fun b!3168132 () Bool)

(assert (=> b!3168132 (= e!1973311 EmptyLang!9749)))

(declare-fun call!229865 () Regex!9749)

(declare-fun bm!229859 () Bool)

(assert (=> bm!229859 (= call!229865 (derivativeStep!2895 (ite c!532858 (regTwo!20011 r!13156) (ite c!532859 (reg!10078 r!13156) (regOne!20010 r!13156))) a!2409))))

(declare-fun b!3168133 () Bool)

(declare-fun c!532861 () Bool)

(assert (=> b!3168133 (= c!532861 (nullable!3350 (regOne!20010 r!13156)))))

(assert (=> b!3168133 (= e!1973310 e!1973308)))

(declare-fun b!3168134 () Bool)

(assert (=> b!3168134 (= e!1973312 (Union!9749 call!229866 call!229865))))

(declare-fun bm!229860 () Bool)

(assert (=> bm!229860 (= call!229864 call!229865)))

(declare-fun b!3168135 () Bool)

(assert (=> b!3168135 (= e!1973308 (Union!9749 (Concat!15070 call!229863 (regTwo!20010 r!13156)) call!229866))))

(declare-fun bm!229861 () Bool)

(assert (=> bm!229861 (= call!229863 call!229864)))

(declare-fun b!3168136 () Bool)

(assert (=> b!3168136 (= e!1973309 (ite (= a!2409 (c!532805 r!13156)) EmptyExpr!9749 EmptyLang!9749))))

(declare-fun b!3168137 () Bool)

(assert (=> b!3168137 (= c!532858 ((_ is Union!9749) r!13156))))

(assert (=> b!3168137 (= e!1973309 e!1973312)))

(assert (= (and d!869044 c!532862) b!3168132))

(assert (= (and d!869044 (not c!532862)) b!3168129))

(assert (= (and b!3168129 c!532860) b!3168136))

(assert (= (and b!3168129 (not c!532860)) b!3168137))

(assert (= (and b!3168137 c!532858) b!3168134))

(assert (= (and b!3168137 (not c!532858)) b!3168128))

(assert (= (and b!3168128 c!532859) b!3168130))

(assert (= (and b!3168128 (not c!532859)) b!3168133))

(assert (= (and b!3168133 c!532861) b!3168135))

(assert (= (and b!3168133 (not c!532861)) b!3168131))

(assert (= (or b!3168135 b!3168131) bm!229861))

(assert (= (or b!3168130 bm!229861) bm!229860))

(assert (= (or b!3168134 bm!229860) bm!229859))

(assert (= (or b!3168134 b!3168135) bm!229858))

(declare-fun m!3428916 () Bool)

(assert (=> d!869044 m!3428916))

(assert (=> d!869044 m!3428818))

(declare-fun m!3428918 () Bool)

(assert (=> bm!229858 m!3428918))

(declare-fun m!3428920 () Bool)

(assert (=> bm!229859 m!3428920))

(assert (=> b!3168133 m!3428812))

(assert (=> b!3167958 d!869044))

(declare-fun b!3168138 () Bool)

(declare-fun e!1973314 () Int)

(declare-fun e!1973313 () Int)

(assert (=> b!3168138 (= e!1973314 e!1973313)))

(declare-fun c!532863 () Bool)

(assert (=> b!3168138 (= c!532863 ((_ is Concat!15070) (ite c!532820 (regOne!20010 (regOne!20010 r!13156)) (regOne!20011 (regOne!20010 r!13156)))))))

(declare-fun b!3168139 () Bool)

(assert (=> b!3168139 (= e!1973314 1)))

(declare-fun c!532866 () Bool)

(declare-fun call!229868 () Int)

(declare-fun bm!229862 () Bool)

(assert (=> bm!229862 (= call!229868 (RegexPrimitiveSize!135 (ite c!532863 (regTwo!20010 (ite c!532820 (regOne!20010 (regOne!20010 r!13156)) (regOne!20011 (regOne!20010 r!13156)))) (ite c!532866 (reg!10078 (ite c!532820 (regOne!20010 (regOne!20010 r!13156)) (regOne!20011 (regOne!20010 r!13156)))) (regTwo!20011 (ite c!532820 (regOne!20010 (regOne!20010 r!13156)) (regOne!20011 (regOne!20010 r!13156))))))))))

(declare-fun bm!229863 () Bool)

(declare-fun call!229867 () Int)

(assert (=> bm!229863 (= call!229867 call!229868)))

(declare-fun b!3168140 () Bool)

(declare-fun call!229869 () Int)

(assert (=> b!3168140 (= e!1973313 (+ 1 call!229869 call!229868))))

(declare-fun b!3168141 () Bool)

(declare-fun e!1973316 () Int)

(declare-fun e!1973315 () Int)

(assert (=> b!3168141 (= e!1973316 e!1973315)))

(assert (=> b!3168141 (= c!532866 ((_ is Star!9749) (ite c!532820 (regOne!20010 (regOne!20010 r!13156)) (regOne!20011 (regOne!20010 r!13156)))))))

(declare-fun b!3168142 () Bool)

(declare-fun e!1973317 () Int)

(assert (=> b!3168142 (= e!1973317 (+ 1 call!229869 call!229867))))

(declare-fun d!869046 () Bool)

(declare-fun lt!1065182 () Int)

(assert (=> d!869046 (>= lt!1065182 0)))

(assert (=> d!869046 (= lt!1065182 e!1973314)))

(declare-fun c!532867 () Bool)

(assert (=> d!869046 (= c!532867 ((_ is ElementMatch!9749) (ite c!532820 (regOne!20010 (regOne!20010 r!13156)) (regOne!20011 (regOne!20010 r!13156)))))))

(assert (=> d!869046 (= (RegexPrimitiveSize!135 (ite c!532820 (regOne!20010 (regOne!20010 r!13156)) (regOne!20011 (regOne!20010 r!13156)))) lt!1065182)))

(declare-fun b!3168143 () Bool)

(assert (=> b!3168143 (= e!1973317 0)))

(declare-fun b!3168144 () Bool)

(declare-fun c!532865 () Bool)

(assert (=> b!3168144 (= c!532865 ((_ is EmptyLang!9749) (ite c!532820 (regOne!20010 (regOne!20010 r!13156)) (regOne!20011 (regOne!20010 r!13156)))))))

(assert (=> b!3168144 (= e!1973315 e!1973317)))

(declare-fun b!3168145 () Bool)

(assert (=> b!3168145 (= e!1973315 (+ 1 call!229867))))

(declare-fun b!3168146 () Bool)

(declare-fun c!532864 () Bool)

(assert (=> b!3168146 (= c!532864 ((_ is EmptyExpr!9749) (ite c!532820 (regOne!20010 (regOne!20010 r!13156)) (regOne!20011 (regOne!20010 r!13156)))))))

(assert (=> b!3168146 (= e!1973313 e!1973316)))

(declare-fun bm!229864 () Bool)

(assert (=> bm!229864 (= call!229869 (RegexPrimitiveSize!135 (ite c!532863 (regOne!20010 (ite c!532820 (regOne!20010 (regOne!20010 r!13156)) (regOne!20011 (regOne!20010 r!13156)))) (regOne!20011 (ite c!532820 (regOne!20010 (regOne!20010 r!13156)) (regOne!20011 (regOne!20010 r!13156)))))))))

(declare-fun b!3168147 () Bool)

(assert (=> b!3168147 (= e!1973316 0)))

(assert (= (and d!869046 c!532867) b!3168139))

(assert (= (and d!869046 (not c!532867)) b!3168138))

(assert (= (and b!3168138 c!532863) b!3168140))

(assert (= (and b!3168138 (not c!532863)) b!3168146))

(assert (= (and b!3168146 c!532864) b!3168147))

(assert (= (and b!3168146 (not c!532864)) b!3168141))

(assert (= (and b!3168141 c!532866) b!3168145))

(assert (= (and b!3168141 (not c!532866)) b!3168144))

(assert (= (and b!3168144 c!532865) b!3168143))

(assert (= (and b!3168144 (not c!532865)) b!3168142))

(assert (= (or b!3168145 b!3168142) bm!229863))

(assert (= (or b!3168140 bm!229863) bm!229862))

(assert (= (or b!3168140 b!3168142) bm!229864))

(declare-fun m!3428922 () Bool)

(assert (=> bm!229862 m!3428922))

(declare-fun m!3428924 () Bool)

(assert (=> bm!229864 m!3428924))

(assert (=> bm!229819 d!869046))

(declare-fun d!869048 () Bool)

(assert (=> d!869048 (= (nullable!3350 (reg!10078 r!13156)) (nullableFct!955 (reg!10078 r!13156)))))

(declare-fun bs!539551 () Bool)

(assert (= bs!539551 d!869048))

(declare-fun m!3428926 () Bool)

(assert (=> bs!539551 m!3428926))

(assert (=> b!3168023 d!869048))

(declare-fun b!3168148 () Bool)

(declare-fun e!1973319 () Bool)

(declare-fun e!1973322 () Bool)

(assert (=> b!3168148 (= e!1973319 e!1973322)))

(declare-fun c!532868 () Bool)

(assert (=> b!3168148 (= c!532868 ((_ is Star!9749) (ite c!532835 (regOne!20011 r!13156) (regOne!20010 r!13156))))))

(declare-fun b!3168149 () Bool)

(declare-fun e!1973320 () Bool)

(declare-fun call!229871 () Bool)

(assert (=> b!3168149 (= e!1973320 call!229871)))

(declare-fun call!229872 () Bool)

(declare-fun c!532869 () Bool)

(declare-fun bm!229865 () Bool)

(assert (=> bm!229865 (= call!229872 (validRegex!4468 (ite c!532868 (reg!10078 (ite c!532835 (regOne!20011 r!13156) (regOne!20010 r!13156))) (ite c!532869 (regTwo!20011 (ite c!532835 (regOne!20011 r!13156) (regOne!20010 r!13156))) (regTwo!20010 (ite c!532835 (regOne!20011 r!13156) (regOne!20010 r!13156)))))))))

(declare-fun bm!229866 () Bool)

(assert (=> bm!229866 (= call!229871 call!229872)))

(declare-fun bm!229867 () Bool)

(declare-fun call!229870 () Bool)

(assert (=> bm!229867 (= call!229870 (validRegex!4468 (ite c!532869 (regOne!20011 (ite c!532835 (regOne!20011 r!13156) (regOne!20010 r!13156))) (regOne!20010 (ite c!532835 (regOne!20011 r!13156) (regOne!20010 r!13156))))))))

(declare-fun b!3168151 () Bool)

(declare-fun e!1973323 () Bool)

(assert (=> b!3168151 (= e!1973323 call!229872)))

(declare-fun b!3168152 () Bool)

(declare-fun res!1288368 () Bool)

(declare-fun e!1973321 () Bool)

(assert (=> b!3168152 (=> res!1288368 e!1973321)))

(assert (=> b!3168152 (= res!1288368 (not ((_ is Concat!15070) (ite c!532835 (regOne!20011 r!13156) (regOne!20010 r!13156)))))))

(declare-fun e!1973318 () Bool)

(assert (=> b!3168152 (= e!1973318 e!1973321)))

(declare-fun b!3168153 () Bool)

(declare-fun e!1973324 () Bool)

(assert (=> b!3168153 (= e!1973324 call!229871)))

(declare-fun b!3168154 () Bool)

(assert (=> b!3168154 (= e!1973322 e!1973323)))

(declare-fun res!1288367 () Bool)

(assert (=> b!3168154 (= res!1288367 (not (nullable!3350 (reg!10078 (ite c!532835 (regOne!20011 r!13156) (regOne!20010 r!13156))))))))

(assert (=> b!3168154 (=> (not res!1288367) (not e!1973323))))

(declare-fun d!869050 () Bool)

(declare-fun res!1288366 () Bool)

(assert (=> d!869050 (=> res!1288366 e!1973319)))

(assert (=> d!869050 (= res!1288366 ((_ is ElementMatch!9749) (ite c!532835 (regOne!20011 r!13156) (regOne!20010 r!13156))))))

(assert (=> d!869050 (= (validRegex!4468 (ite c!532835 (regOne!20011 r!13156) (regOne!20010 r!13156))) e!1973319)))

(declare-fun b!3168150 () Bool)

(declare-fun res!1288364 () Bool)

(assert (=> b!3168150 (=> (not res!1288364) (not e!1973324))))

(assert (=> b!3168150 (= res!1288364 call!229870)))

(assert (=> b!3168150 (= e!1973318 e!1973324)))

(declare-fun b!3168155 () Bool)

(assert (=> b!3168155 (= e!1973321 e!1973320)))

(declare-fun res!1288365 () Bool)

(assert (=> b!3168155 (=> (not res!1288365) (not e!1973320))))

(assert (=> b!3168155 (= res!1288365 call!229870)))

(declare-fun b!3168156 () Bool)

(assert (=> b!3168156 (= e!1973322 e!1973318)))

(assert (=> b!3168156 (= c!532869 ((_ is Union!9749) (ite c!532835 (regOne!20011 r!13156) (regOne!20010 r!13156))))))

(assert (= (and d!869050 (not res!1288366)) b!3168148))

(assert (= (and b!3168148 c!532868) b!3168154))

(assert (= (and b!3168148 (not c!532868)) b!3168156))

(assert (= (and b!3168154 res!1288367) b!3168151))

(assert (= (and b!3168156 c!532869) b!3168150))

(assert (= (and b!3168156 (not c!532869)) b!3168152))

(assert (= (and b!3168150 res!1288364) b!3168153))

(assert (= (and b!3168152 (not res!1288368)) b!3168155))

(assert (= (and b!3168155 res!1288365) b!3168149))

(assert (= (or b!3168150 b!3168155) bm!229867))

(assert (= (or b!3168153 b!3168149) bm!229866))

(assert (= (or b!3168151 bm!229866) bm!229865))

(declare-fun m!3428928 () Bool)

(assert (=> bm!229865 m!3428928))

(declare-fun m!3428930 () Bool)

(assert (=> bm!229867 m!3428930))

(declare-fun m!3428932 () Bool)

(assert (=> b!3168154 m!3428932))

(assert (=> bm!229831 d!869050))

(declare-fun bs!539552 () Bool)

(declare-fun b!3168173 () Bool)

(assert (= bs!539552 (and b!3168173 b!3168101)))

(declare-fun lambda!115910 () Int)

(assert (=> bs!539552 (= lambda!115910 lambda!115903)))

(declare-fun b!3168169 () Bool)

(assert (=> b!3168169 false))

(declare-fun lt!1065260 () Unit!49856)

(declare-fun lt!1065243 () Unit!49856)

(assert (=> b!3168169 (= lt!1065260 lt!1065243)))

(declare-fun lt!1065245 () List!35586)

(declare-fun lt!1065253 () (_ BitVec 64))

(declare-fun lt!1065271 () List!35585)

(assert (=> b!3168169 (contains!6190 lt!1065245 (tuple2!34601 lt!1065253 lt!1065271))))

(assert (=> b!3168169 (= lt!1065243 (lemmaGetValueByKeyImpliesContainsTuple!104 lt!1065245 lt!1065253 lt!1065271))))

(assert (=> b!3168169 (= lt!1065271 (apply!7960 (v!35168 (underlying!8570 (cache!4221 cache!347))) lt!1065253))))

(assert (=> b!3168169 (= lt!1065245 (toList!2062 (map!7912 (v!35168 (underlying!8570 (cache!4221 cache!347))))))))

(declare-fun lt!1065270 () Unit!49856)

(declare-fun lt!1065246 () Unit!49856)

(assert (=> b!3168169 (= lt!1065270 lt!1065246)))

(declare-fun lt!1065244 () List!35586)

(assert (=> b!3168169 (isDefined!5431 (getValueByKey!183 lt!1065244 lt!1065253))))

(assert (=> b!3168169 (= lt!1065246 (lemmaContainsKeyImpliesGetValueByKeyDefined!132 lt!1065244 lt!1065253))))

(assert (=> b!3168169 (= lt!1065244 (toList!2062 (map!7912 (v!35168 (underlying!8570 (cache!4221 cache!347))))))))

(declare-fun e!1973333 () Unit!49856)

(declare-fun Unit!49863 () Unit!49856)

(assert (=> b!3168169 (= e!1973333 Unit!49863)))

(declare-fun lt!1065248 () Regex!9749)

(declare-fun e!1973331 () Bool)

(declare-fun b!3168171 () Bool)

(declare-fun dynLambda!14363 (Int tuple2!34596) Regex!9749)

(assert (=> b!3168171 (= e!1973331 (= lt!1065248 (dynLambda!14363 (defaultValue!4247 (cache!4221 cache!347)) (tuple2!34597 r!13156 a!2409))))))

(declare-fun b!3168172 () Bool)

(declare-fun getValueByKey!184 (List!35585 tuple2!34596) Option!6916)

(assert (=> b!3168172 (= e!1973331 (= lt!1065248 (get!11266 (getValueByKey!184 (toList!2063 (map!7913 (cache!4221 cache!347))) (tuple2!34597 r!13156 a!2409)))))))

(declare-fun e!1973332 () Regex!9749)

(declare-fun get!11267 (Option!6917) tuple2!34598)

(assert (=> b!3168173 (= e!1973332 (_2!20431 (get!11267 (getPair!98 (apply!7960 (v!35168 (underlying!8570 (cache!4221 cache!347))) lt!1065253) (tuple2!34597 r!13156 a!2409)))))))

(assert (=> b!3168173 (= lt!1065253 (hash!807 (hashF!6118 (cache!4221 cache!347)) (tuple2!34597 r!13156 a!2409)))))

(declare-fun c!532877 () Bool)

(assert (=> b!3168173 (= c!532877 (not (contains!6190 (toList!2062 (map!7912 (v!35168 (underlying!8570 (cache!4221 cache!347))))) (tuple2!34601 lt!1065253 (apply!7960 (v!35168 (underlying!8570 (cache!4221 cache!347))) lt!1065253)))))))

(declare-fun lt!1065263 () Unit!49856)

(assert (=> b!3168173 (= lt!1065263 e!1973333)))

(declare-fun lt!1065259 () Unit!49856)

(assert (=> b!3168173 (= lt!1065259 (forallContained!1076 (toList!2062 (map!7912 (v!35168 (underlying!8570 (cache!4221 cache!347))))) lambda!115910 (tuple2!34601 lt!1065253 (apply!7960 (v!35168 (underlying!8570 (cache!4221 cache!347))) lt!1065253))))))

(declare-fun lt!1065268 () ListLongMap!727)

(assert (=> b!3168173 (= lt!1065268 (map!7912 (v!35168 (underlying!8570 (cache!4221 cache!347)))))))

(declare-fun lt!1065267 () Unit!49856)

(declare-fun lemmaGetPairGetSameValueAsMap!36 (ListLongMap!727 tuple2!34596 Regex!9749 Hashable!4086) Unit!49856)

(assert (=> b!3168173 (= lt!1065267 (lemmaGetPairGetSameValueAsMap!36 lt!1065268 (tuple2!34597 r!13156 a!2409) (_2!20431 (get!11267 (getPair!98 (apply!7960 (v!35168 (underlying!8570 (cache!4221 cache!347))) lt!1065253) (tuple2!34597 r!13156 a!2409)))) (hashF!6118 (cache!4221 cache!347))))))

(declare-fun lt!1065251 () Unit!49856)

(declare-fun lemmaInGenMapThenLongMapContainsHash!42 (ListLongMap!727 tuple2!34596 Hashable!4086) Unit!49856)

(assert (=> b!3168173 (= lt!1065251 (lemmaInGenMapThenLongMapContainsHash!42 lt!1065268 (tuple2!34597 r!13156 a!2409) (hashF!6118 (cache!4221 cache!347))))))

(assert (=> b!3168173 (contains!6189 lt!1065268 (hash!807 (hashF!6118 (cache!4221 cache!347)) (tuple2!34597 r!13156 a!2409)))))

(declare-fun lt!1065272 () Unit!49856)

(assert (=> b!3168173 (= lt!1065272 lt!1065251)))

(declare-fun lt!1065264 () (_ BitVec 64))

(assert (=> b!3168173 (= lt!1065264 (hash!807 (hashF!6118 (cache!4221 cache!347)) (tuple2!34597 r!13156 a!2409)))))

(declare-fun lt!1065261 () List!35585)

(assert (=> b!3168173 (= lt!1065261 (apply!7961 lt!1065268 (hash!807 (hashF!6118 (cache!4221 cache!347)) (tuple2!34597 r!13156 a!2409))))))

(declare-fun lt!1065255 () Unit!49856)

(declare-fun lemmaGetValueImpliesTupleContained!37 (ListLongMap!727 (_ BitVec 64) List!35585) Unit!49856)

(assert (=> b!3168173 (= lt!1065255 (lemmaGetValueImpliesTupleContained!37 lt!1065268 lt!1065264 lt!1065261))))

(assert (=> b!3168173 (contains!6190 (toList!2062 lt!1065268) (tuple2!34601 lt!1065264 lt!1065261))))

(declare-fun lt!1065266 () Unit!49856)

(assert (=> b!3168173 (= lt!1065266 lt!1065255)))

(declare-fun lt!1065250 () Unit!49856)

(assert (=> b!3168173 (= lt!1065250 (forallContained!1076 (toList!2062 lt!1065268) lambda!115910 (tuple2!34601 (hash!807 (hashF!6118 (cache!4221 cache!347)) (tuple2!34597 r!13156 a!2409)) (apply!7961 lt!1065268 (hash!807 (hashF!6118 (cache!4221 cache!347)) (tuple2!34597 r!13156 a!2409))))))))

(declare-fun lt!1065254 () Unit!49856)

(declare-fun lemmaInGenMapThenGetPairDefined!36 (ListLongMap!727 tuple2!34596 Hashable!4086) Unit!49856)

(assert (=> b!3168173 (= lt!1065254 (lemmaInGenMapThenGetPairDefined!36 lt!1065268 (tuple2!34597 r!13156 a!2409) (hashF!6118 (cache!4221 cache!347))))))

(declare-fun lt!1065247 () Unit!49856)

(assert (=> b!3168173 (= lt!1065247 (lemmaInGenMapThenLongMapContainsHash!42 lt!1065268 (tuple2!34597 r!13156 a!2409) (hashF!6118 (cache!4221 cache!347))))))

(declare-fun lt!1065257 () Unit!49856)

(assert (=> b!3168173 (= lt!1065257 lt!1065247)))

(declare-fun lt!1065269 () (_ BitVec 64))

(assert (=> b!3168173 (= lt!1065269 (hash!807 (hashF!6118 (cache!4221 cache!347)) (tuple2!34597 r!13156 a!2409)))))

(declare-fun lt!1065256 () List!35585)

(assert (=> b!3168173 (= lt!1065256 (apply!7961 lt!1065268 (hash!807 (hashF!6118 (cache!4221 cache!347)) (tuple2!34597 r!13156 a!2409))))))

(declare-fun lt!1065265 () Unit!49856)

(assert (=> b!3168173 (= lt!1065265 (lemmaGetValueImpliesTupleContained!37 lt!1065268 lt!1065269 lt!1065256))))

(assert (=> b!3168173 (contains!6190 (toList!2062 lt!1065268) (tuple2!34601 lt!1065269 lt!1065256))))

(declare-fun lt!1065252 () Unit!49856)

(assert (=> b!3168173 (= lt!1065252 lt!1065265)))

(declare-fun lt!1065249 () Unit!49856)

(assert (=> b!3168173 (= lt!1065249 (forallContained!1076 (toList!2062 lt!1065268) lambda!115910 (tuple2!34601 (hash!807 (hashF!6118 (cache!4221 cache!347)) (tuple2!34597 r!13156 a!2409)) (apply!7961 lt!1065268 (hash!807 (hashF!6118 (cache!4221 cache!347)) (tuple2!34597 r!13156 a!2409))))))))

(assert (=> b!3168173 (isDefined!5430 (getPair!98 (apply!7961 lt!1065268 (hash!807 (hashF!6118 (cache!4221 cache!347)) (tuple2!34597 r!13156 a!2409))) (tuple2!34597 r!13156 a!2409)))))

(declare-fun lt!1065258 () Unit!49856)

(assert (=> b!3168173 (= lt!1065258 lt!1065254)))

(assert (=> b!3168173 (= (_2!20431 (get!11267 (getPair!98 (apply!7961 lt!1065268 (hash!807 (hashF!6118 (cache!4221 cache!347)) (tuple2!34597 r!13156 a!2409))) (tuple2!34597 r!13156 a!2409)))) (get!11266 (getValueByKey!184 (toList!2063 (extractMap!236 (toList!2062 lt!1065268))) (tuple2!34597 r!13156 a!2409))))))

(declare-fun lt!1065262 () Unit!49856)

(assert (=> b!3168173 (= lt!1065262 lt!1065267)))

(declare-fun b!3168174 () Bool)

(declare-fun Unit!49864 () Unit!49856)

(assert (=> b!3168174 (= e!1973333 Unit!49864)))

(declare-fun d!869052 () Bool)

(assert (=> d!869052 e!1973331))

(declare-fun c!532876 () Bool)

(assert (=> d!869052 (= c!532876 (contains!6188 (cache!4221 cache!347) (tuple2!34597 r!13156 a!2409)))))

(assert (=> d!869052 (= lt!1065248 e!1973332)))

(declare-fun c!532878 () Bool)

(assert (=> d!869052 (= c!532878 (not (contains!6188 (cache!4221 cache!347) (tuple2!34597 r!13156 a!2409))))))

(assert (=> d!869052 (valid!3257 (cache!4221 cache!347))))

(assert (=> d!869052 (= (apply!7959 (cache!4221 cache!347) (tuple2!34597 r!13156 a!2409)) lt!1065248)))

(declare-fun b!3168170 () Bool)

(assert (=> b!3168170 (= e!1973332 (dynLambda!14363 (defaultValue!4247 (cache!4221 cache!347)) (tuple2!34597 r!13156 a!2409)))))

(assert (= (and d!869052 c!532878) b!3168170))

(assert (= (and d!869052 (not c!532878)) b!3168173))

(assert (= (and b!3168173 c!532877) b!3168169))

(assert (= (and b!3168173 (not c!532877)) b!3168174))

(assert (= (and d!869052 c!532876) b!3168172))

(assert (= (and d!869052 (not c!532876)) b!3168171))

(declare-fun b_lambda!86443 () Bool)

(assert (=> (not b_lambda!86443) (not b!3168171)))

(declare-fun t!234668 () Bool)

(declare-fun tb!155105 () Bool)

(assert (=> (and b!3167938 (= (defaultValue!4247 (cache!4221 cache!347)) (defaultValue!4247 (cache!4221 cache!347))) t!234668) tb!155105))

(assert (=> b!3168171 t!234668))

(declare-fun result!196894 () Bool)

(declare-fun b_and!209439 () Bool)

(assert (= b_and!209435 (and (=> t!234668 result!196894) b_and!209439)))

(declare-fun b_lambda!86445 () Bool)

(assert (=> (not b_lambda!86445) (not b!3168170)))

(assert (=> b!3168170 t!234668))

(declare-fun b_and!209441 () Bool)

(assert (= b_and!209439 (and (=> t!234668 result!196894) b_and!209441)))

(assert (=> b!3168172 m!3428888))

(declare-fun m!3428934 () Bool)

(assert (=> b!3168172 m!3428934))

(assert (=> b!3168172 m!3428934))

(declare-fun m!3428936 () Bool)

(assert (=> b!3168172 m!3428936))

(declare-fun m!3428938 () Bool)

(assert (=> b!3168171 m!3428938))

(assert (=> b!3168170 m!3428938))

(declare-fun m!3428940 () Bool)

(assert (=> b!3168169 m!3428940))

(declare-fun m!3428942 () Bool)

(assert (=> b!3168169 m!3428942))

(assert (=> b!3168169 m!3428872))

(declare-fun m!3428944 () Bool)

(assert (=> b!3168169 m!3428944))

(declare-fun m!3428946 () Bool)

(assert (=> b!3168169 m!3428946))

(declare-fun m!3428948 () Bool)

(assert (=> b!3168169 m!3428948))

(declare-fun m!3428950 () Bool)

(assert (=> b!3168169 m!3428950))

(assert (=> b!3168169 m!3428944))

(declare-fun m!3428952 () Bool)

(assert (=> b!3168173 m!3428952))

(declare-fun m!3428954 () Bool)

(assert (=> b!3168173 m!3428954))

(declare-fun m!3428956 () Bool)

(assert (=> b!3168173 m!3428956))

(declare-fun m!3428958 () Bool)

(assert (=> b!3168173 m!3428958))

(declare-fun m!3428960 () Bool)

(assert (=> b!3168173 m!3428960))

(assert (=> b!3168173 m!3428868))

(assert (=> b!3168173 m!3428952))

(declare-fun m!3428962 () Bool)

(assert (=> b!3168173 m!3428962))

(assert (=> b!3168173 m!3428948))

(assert (=> b!3168173 m!3428958))

(assert (=> b!3168173 m!3428868))

(declare-fun m!3428964 () Bool)

(assert (=> b!3168173 m!3428964))

(declare-fun m!3428966 () Bool)

(assert (=> b!3168173 m!3428966))

(declare-fun m!3428968 () Bool)

(assert (=> b!3168173 m!3428968))

(declare-fun m!3428970 () Bool)

(assert (=> b!3168173 m!3428970))

(assert (=> b!3168173 m!3428954))

(declare-fun m!3428972 () Bool)

(assert (=> b!3168173 m!3428972))

(declare-fun m!3428974 () Bool)

(assert (=> b!3168173 m!3428974))

(declare-fun m!3428976 () Bool)

(assert (=> b!3168173 m!3428976))

(declare-fun m!3428978 () Bool)

(assert (=> b!3168173 m!3428978))

(declare-fun m!3428980 () Bool)

(assert (=> b!3168173 m!3428980))

(assert (=> b!3168173 m!3428872))

(assert (=> b!3168173 m!3428868))

(declare-fun m!3428982 () Bool)

(assert (=> b!3168173 m!3428982))

(assert (=> b!3168173 m!3428980))

(declare-fun m!3428984 () Bool)

(assert (=> b!3168173 m!3428984))

(assert (=> b!3168173 m!3428954))

(declare-fun m!3428986 () Bool)

(assert (=> b!3168173 m!3428986))

(assert (=> b!3168173 m!3428948))

(assert (=> b!3168173 m!3428970))

(declare-fun m!3428988 () Bool)

(assert (=> b!3168173 m!3428988))

(declare-fun m!3428990 () Bool)

(assert (=> b!3168173 m!3428990))

(assert (=> d!869052 m!3428832))

(assert (=> d!869052 m!3428886))

(assert (=> b!3167956 d!869052))

(declare-fun b!3168185 () Bool)

(declare-fun e!1973346 () Unit!49856)

(declare-fun lt!1065296 () Unit!49856)

(assert (=> b!3168185 (= e!1973346 lt!1065296)))

(declare-fun lt!1065291 () tuple2!34596)

(assert (=> b!3168185 (= lt!1065291 (tuple2!34597 r!13156 a!2409))))

(declare-fun lambda!115913 () Int)

(declare-fun lemmaForallPairsThenForLookup!50 (MutableMap!4076 tuple2!34596 Int) Unit!49856)

(assert (=> b!3168185 (= lt!1065296 (lemmaForallPairsThenForLookup!50 (cache!4221 cache!347) lt!1065291 lambda!115913))))

(declare-fun lt!1065289 () tuple2!34598)

(assert (=> b!3168185 (= lt!1065289 (tuple2!34599 lt!1065291 (apply!7959 (cache!4221 cache!347) lt!1065291)))))

(declare-fun lt!1065295 () Regex!9749)

(assert (=> b!3168185 (= lt!1065295 (apply!7959 (cache!4221 cache!347) lt!1065291))))

(declare-fun res!1288375 () Bool)

(assert (=> b!3168185 (= res!1288375 (validRegex!4468 (_1!20430 lt!1065291)))))

(declare-fun e!1973348 () Bool)

(assert (=> b!3168185 (=> (not res!1288375) (not e!1973348))))

(assert (=> b!3168185 e!1973348))

(declare-fun d!869054 () Bool)

(declare-fun e!1973347 () Bool)

(assert (=> d!869054 e!1973347))

(declare-fun res!1288376 () Bool)

(assert (=> d!869054 (=> res!1288376 e!1973347)))

(assert (=> d!869054 (= res!1288376 (not (contains!6188 (cache!4221 cache!347) (tuple2!34597 r!13156 a!2409))))))

(declare-fun lt!1065292 () Unit!49856)

(assert (=> d!869054 (= lt!1065292 e!1973346)))

(declare-fun c!532882 () Bool)

(assert (=> d!869054 (= c!532882 (contains!6188 (cache!4221 cache!347) (tuple2!34597 r!13156 a!2409)))))

(assert (=> d!869054 (validCacheMap!62 (cache!4221 cache!347))))

(assert (=> d!869054 (= (lemmaIfInCacheThenValid!59 cache!347 r!13156 a!2409) lt!1065292)))

(declare-fun b!3168188 () Bool)

(assert (=> b!3168188 (= e!1973347 (= (derivativeStep!2895 r!13156 a!2409) (apply!7959 (cache!4221 cache!347) (tuple2!34597 r!13156 a!2409))))))

(declare-fun b!3168187 () Bool)

(declare-fun lt!1065290 () tuple2!34596)

(assert (=> b!3168187 (= lt!1065290 lt!1065291)))

(declare-fun lt!1065294 () Regex!9749)

(assert (=> b!3168187 (= lt!1065294 (apply!7959 (cache!4221 cache!347) lt!1065291))))

(declare-fun lt!1065293 () Regex!9749)

(assert (=> b!3168187 (= lt!1065293 (apply!7959 (cache!4221 cache!347) lt!1065291))))

(assert (=> b!3168187 (= e!1973348 (= (apply!7959 (cache!4221 cache!347) lt!1065291) (derivativeStep!2895 (_1!20430 lt!1065291) (_2!20430 lt!1065291))))))

(declare-fun b!3168186 () Bool)

(declare-fun Unit!49865 () Unit!49856)

(assert (=> b!3168186 (= e!1973346 Unit!49865)))

(assert (= (and d!869054 c!532882) b!3168185))

(assert (= (and d!869054 (not c!532882)) b!3168186))

(assert (= (and b!3168185 res!1288375) b!3168187))

(assert (= (and d!869054 (not res!1288376)) b!3168188))

(declare-fun m!3428992 () Bool)

(assert (=> b!3168185 m!3428992))

(declare-fun m!3428994 () Bool)

(assert (=> b!3168185 m!3428994))

(declare-fun m!3428996 () Bool)

(assert (=> b!3168185 m!3428996))

(assert (=> d!869054 m!3428832))

(assert (=> d!869054 m!3428856))

(assert (=> b!3168188 m!3428840))

(assert (=> b!3168188 m!3428834))

(assert (=> b!3168187 m!3428994))

(declare-fun m!3428998 () Bool)

(assert (=> b!3168187 m!3428998))

(assert (=> b!3167956 d!869054))

(declare-fun b!3168189 () Bool)

(declare-fun e!1973350 () Bool)

(declare-fun e!1973353 () Bool)

(assert (=> b!3168189 (= e!1973350 e!1973353)))

(declare-fun c!532883 () Bool)

(assert (=> b!3168189 (= c!532883 ((_ is Star!9749) (ite c!532834 (reg!10078 r!13156) (ite c!532835 (regTwo!20011 r!13156) (regTwo!20010 r!13156)))))))

(declare-fun b!3168190 () Bool)

(declare-fun e!1973351 () Bool)

(declare-fun call!229874 () Bool)

(assert (=> b!3168190 (= e!1973351 call!229874)))

(declare-fun call!229875 () Bool)

(declare-fun c!532884 () Bool)

(declare-fun bm!229868 () Bool)

(assert (=> bm!229868 (= call!229875 (validRegex!4468 (ite c!532883 (reg!10078 (ite c!532834 (reg!10078 r!13156) (ite c!532835 (regTwo!20011 r!13156) (regTwo!20010 r!13156)))) (ite c!532884 (regTwo!20011 (ite c!532834 (reg!10078 r!13156) (ite c!532835 (regTwo!20011 r!13156) (regTwo!20010 r!13156)))) (regTwo!20010 (ite c!532834 (reg!10078 r!13156) (ite c!532835 (regTwo!20011 r!13156) (regTwo!20010 r!13156))))))))))

(declare-fun bm!229869 () Bool)

(assert (=> bm!229869 (= call!229874 call!229875)))

(declare-fun bm!229870 () Bool)

(declare-fun call!229873 () Bool)

(assert (=> bm!229870 (= call!229873 (validRegex!4468 (ite c!532884 (regOne!20011 (ite c!532834 (reg!10078 r!13156) (ite c!532835 (regTwo!20011 r!13156) (regTwo!20010 r!13156)))) (regOne!20010 (ite c!532834 (reg!10078 r!13156) (ite c!532835 (regTwo!20011 r!13156) (regTwo!20010 r!13156)))))))))

(declare-fun b!3168192 () Bool)

(declare-fun e!1973354 () Bool)

(assert (=> b!3168192 (= e!1973354 call!229875)))

(declare-fun b!3168193 () Bool)

(declare-fun res!1288381 () Bool)

(declare-fun e!1973352 () Bool)

(assert (=> b!3168193 (=> res!1288381 e!1973352)))

(assert (=> b!3168193 (= res!1288381 (not ((_ is Concat!15070) (ite c!532834 (reg!10078 r!13156) (ite c!532835 (regTwo!20011 r!13156) (regTwo!20010 r!13156))))))))

(declare-fun e!1973349 () Bool)

(assert (=> b!3168193 (= e!1973349 e!1973352)))

(declare-fun b!3168194 () Bool)

(declare-fun e!1973355 () Bool)

(assert (=> b!3168194 (= e!1973355 call!229874)))

(declare-fun b!3168195 () Bool)

(assert (=> b!3168195 (= e!1973353 e!1973354)))

(declare-fun res!1288380 () Bool)

(assert (=> b!3168195 (= res!1288380 (not (nullable!3350 (reg!10078 (ite c!532834 (reg!10078 r!13156) (ite c!532835 (regTwo!20011 r!13156) (regTwo!20010 r!13156)))))))))

(assert (=> b!3168195 (=> (not res!1288380) (not e!1973354))))

(declare-fun d!869056 () Bool)

(declare-fun res!1288379 () Bool)

(assert (=> d!869056 (=> res!1288379 e!1973350)))

(assert (=> d!869056 (= res!1288379 ((_ is ElementMatch!9749) (ite c!532834 (reg!10078 r!13156) (ite c!532835 (regTwo!20011 r!13156) (regTwo!20010 r!13156)))))))

(assert (=> d!869056 (= (validRegex!4468 (ite c!532834 (reg!10078 r!13156) (ite c!532835 (regTwo!20011 r!13156) (regTwo!20010 r!13156)))) e!1973350)))

(declare-fun b!3168191 () Bool)

(declare-fun res!1288377 () Bool)

(assert (=> b!3168191 (=> (not res!1288377) (not e!1973355))))

(assert (=> b!3168191 (= res!1288377 call!229873)))

(assert (=> b!3168191 (= e!1973349 e!1973355)))

(declare-fun b!3168196 () Bool)

(assert (=> b!3168196 (= e!1973352 e!1973351)))

(declare-fun res!1288378 () Bool)

(assert (=> b!3168196 (=> (not res!1288378) (not e!1973351))))

(assert (=> b!3168196 (= res!1288378 call!229873)))

(declare-fun b!3168197 () Bool)

(assert (=> b!3168197 (= e!1973353 e!1973349)))

(assert (=> b!3168197 (= c!532884 ((_ is Union!9749) (ite c!532834 (reg!10078 r!13156) (ite c!532835 (regTwo!20011 r!13156) (regTwo!20010 r!13156)))))))

(assert (= (and d!869056 (not res!1288379)) b!3168189))

(assert (= (and b!3168189 c!532883) b!3168195))

(assert (= (and b!3168189 (not c!532883)) b!3168197))

(assert (= (and b!3168195 res!1288380) b!3168192))

(assert (= (and b!3168197 c!532884) b!3168191))

(assert (= (and b!3168197 (not c!532884)) b!3168193))

(assert (= (and b!3168191 res!1288377) b!3168194))

(assert (= (and b!3168193 (not res!1288381)) b!3168196))

(assert (= (and b!3168196 res!1288378) b!3168190))

(assert (= (or b!3168191 b!3168196) bm!229870))

(assert (= (or b!3168194 b!3168190) bm!229869))

(assert (= (or b!3168192 bm!229869) bm!229868))

(declare-fun m!3429000 () Bool)

(assert (=> bm!229868 m!3429000))

(declare-fun m!3429002 () Bool)

(assert (=> bm!229870 m!3429002))

(declare-fun m!3429004 () Bool)

(assert (=> b!3168195 m!3429004))

(assert (=> bm!229829 d!869056))

(declare-fun bs!539553 () Bool)

(declare-fun b!3168205 () Bool)

(assert (= bs!539553 (and b!3168205 b!3168185)))

(declare-fun lambda!115916 () Int)

(assert (=> bs!539553 (= lambda!115916 lambda!115913)))

(declare-fun d!869058 () Bool)

(declare-fun res!1288388 () Bool)

(declare-fun e!1973360 () Bool)

(assert (=> d!869058 (=> (not res!1288388) (not e!1973360))))

(assert (=> d!869058 (= res!1288388 (valid!3257 (cache!4221 cache!347)))))

(assert (=> d!869058 (= (validCacheMap!62 (cache!4221 cache!347)) e!1973360)))

(declare-fun b!3168204 () Bool)

(declare-fun res!1288389 () Bool)

(assert (=> b!3168204 (=> (not res!1288389) (not e!1973360))))

(declare-fun invariantList!484 (List!35585) Bool)

(assert (=> b!3168204 (= res!1288389 (invariantList!484 (toList!2063 (map!7913 (cache!4221 cache!347)))))))

(declare-fun forall!7150 (List!35585 Int) Bool)

(assert (=> b!3168205 (= e!1973360 (forall!7150 (toList!2063 (map!7913 (cache!4221 cache!347))) lambda!115916))))

(assert (= (and d!869058 res!1288388) b!3168204))

(assert (= (and b!3168204 res!1288389) b!3168205))

(assert (=> d!869058 m!3428886))

(assert (=> b!3168204 m!3428888))

(declare-fun m!3429007 () Bool)

(assert (=> b!3168204 m!3429007))

(assert (=> b!3168205 m!3428888))

(declare-fun m!3429009 () Bool)

(assert (=> b!3168205 m!3429009))

(assert (=> d!869036 d!869058))

(declare-fun b!3168206 () Bool)

(declare-fun e!1973362 () Int)

(declare-fun e!1973361 () Int)

(assert (=> b!3168206 (= e!1973362 e!1973361)))

(declare-fun c!532885 () Bool)

(assert (=> b!3168206 (= c!532885 ((_ is Concat!15070) (ite c!532820 (regTwo!20010 (regOne!20010 r!13156)) (ite c!532823 (reg!10078 (regOne!20010 r!13156)) (regTwo!20011 (regOne!20010 r!13156))))))))

(declare-fun b!3168207 () Bool)

(assert (=> b!3168207 (= e!1973362 1)))

(declare-fun bm!229871 () Bool)

(declare-fun c!532888 () Bool)

(declare-fun call!229877 () Int)

(assert (=> bm!229871 (= call!229877 (RegexPrimitiveSize!135 (ite c!532885 (regTwo!20010 (ite c!532820 (regTwo!20010 (regOne!20010 r!13156)) (ite c!532823 (reg!10078 (regOne!20010 r!13156)) (regTwo!20011 (regOne!20010 r!13156))))) (ite c!532888 (reg!10078 (ite c!532820 (regTwo!20010 (regOne!20010 r!13156)) (ite c!532823 (reg!10078 (regOne!20010 r!13156)) (regTwo!20011 (regOne!20010 r!13156))))) (regTwo!20011 (ite c!532820 (regTwo!20010 (regOne!20010 r!13156)) (ite c!532823 (reg!10078 (regOne!20010 r!13156)) (regTwo!20011 (regOne!20010 r!13156)))))))))))

(declare-fun bm!229872 () Bool)

(declare-fun call!229876 () Int)

(assert (=> bm!229872 (= call!229876 call!229877)))

(declare-fun b!3168208 () Bool)

(declare-fun call!229878 () Int)

(assert (=> b!3168208 (= e!1973361 (+ 1 call!229878 call!229877))))

(declare-fun b!3168209 () Bool)

(declare-fun e!1973364 () Int)

(declare-fun e!1973363 () Int)

(assert (=> b!3168209 (= e!1973364 e!1973363)))

(assert (=> b!3168209 (= c!532888 ((_ is Star!9749) (ite c!532820 (regTwo!20010 (regOne!20010 r!13156)) (ite c!532823 (reg!10078 (regOne!20010 r!13156)) (regTwo!20011 (regOne!20010 r!13156))))))))

(declare-fun b!3168210 () Bool)

(declare-fun e!1973365 () Int)

(assert (=> b!3168210 (= e!1973365 (+ 1 call!229878 call!229876))))

(declare-fun d!869060 () Bool)

(declare-fun lt!1065297 () Int)

(assert (=> d!869060 (>= lt!1065297 0)))

(assert (=> d!869060 (= lt!1065297 e!1973362)))

(declare-fun c!532889 () Bool)

(assert (=> d!869060 (= c!532889 ((_ is ElementMatch!9749) (ite c!532820 (regTwo!20010 (regOne!20010 r!13156)) (ite c!532823 (reg!10078 (regOne!20010 r!13156)) (regTwo!20011 (regOne!20010 r!13156))))))))

(assert (=> d!869060 (= (RegexPrimitiveSize!135 (ite c!532820 (regTwo!20010 (regOne!20010 r!13156)) (ite c!532823 (reg!10078 (regOne!20010 r!13156)) (regTwo!20011 (regOne!20010 r!13156))))) lt!1065297)))

(declare-fun b!3168211 () Bool)

(assert (=> b!3168211 (= e!1973365 0)))

(declare-fun b!3168212 () Bool)

(declare-fun c!532887 () Bool)

(assert (=> b!3168212 (= c!532887 ((_ is EmptyLang!9749) (ite c!532820 (regTwo!20010 (regOne!20010 r!13156)) (ite c!532823 (reg!10078 (regOne!20010 r!13156)) (regTwo!20011 (regOne!20010 r!13156))))))))

(assert (=> b!3168212 (= e!1973363 e!1973365)))

(declare-fun b!3168213 () Bool)

(assert (=> b!3168213 (= e!1973363 (+ 1 call!229876))))

(declare-fun b!3168214 () Bool)

(declare-fun c!532886 () Bool)

(assert (=> b!3168214 (= c!532886 ((_ is EmptyExpr!9749) (ite c!532820 (regTwo!20010 (regOne!20010 r!13156)) (ite c!532823 (reg!10078 (regOne!20010 r!13156)) (regTwo!20011 (regOne!20010 r!13156))))))))

(assert (=> b!3168214 (= e!1973361 e!1973364)))

(declare-fun bm!229873 () Bool)

(assert (=> bm!229873 (= call!229878 (RegexPrimitiveSize!135 (ite c!532885 (regOne!20010 (ite c!532820 (regTwo!20010 (regOne!20010 r!13156)) (ite c!532823 (reg!10078 (regOne!20010 r!13156)) (regTwo!20011 (regOne!20010 r!13156))))) (regOne!20011 (ite c!532820 (regTwo!20010 (regOne!20010 r!13156)) (ite c!532823 (reg!10078 (regOne!20010 r!13156)) (regTwo!20011 (regOne!20010 r!13156))))))))))

(declare-fun b!3168215 () Bool)

(assert (=> b!3168215 (= e!1973364 0)))

(assert (= (and d!869060 c!532889) b!3168207))

(assert (= (and d!869060 (not c!532889)) b!3168206))

(assert (= (and b!3168206 c!532885) b!3168208))

(assert (= (and b!3168206 (not c!532885)) b!3168214))

(assert (= (and b!3168214 c!532886) b!3168215))

(assert (= (and b!3168214 (not c!532886)) b!3168209))

(assert (= (and b!3168209 c!532888) b!3168213))

(assert (= (and b!3168209 (not c!532888)) b!3168212))

(assert (= (and b!3168212 c!532887) b!3168211))

(assert (= (and b!3168212 (not c!532887)) b!3168210))

(assert (= (or b!3168213 b!3168210) bm!229872))

(assert (= (or b!3168208 bm!229872) bm!229871))

(assert (= (or b!3168208 b!3168210) bm!229873))

(declare-fun m!3429011 () Bool)

(assert (=> bm!229871 m!3429011))

(declare-fun m!3429013 () Bool)

(assert (=> bm!229873 m!3429013))

(assert (=> bm!229817 d!869060))

(declare-fun b!3168230 () Bool)

(declare-fun e!1973378 () Bool)

(declare-fun call!229884 () Bool)

(assert (=> b!3168230 (= e!1973378 call!229884)))

(declare-fun bm!229878 () Bool)

(declare-fun c!532892 () Bool)

(assert (=> bm!229878 (= call!229884 (nullable!3350 (ite c!532892 (regTwo!20011 (regOne!20010 r!13156)) (regOne!20010 (regOne!20010 r!13156)))))))

(declare-fun b!3168231 () Bool)

(declare-fun e!1973381 () Bool)

(declare-fun e!1973380 () Bool)

(assert (=> b!3168231 (= e!1973381 e!1973380)))

(assert (=> b!3168231 (= c!532892 ((_ is Union!9749) (regOne!20010 r!13156)))))

(declare-fun b!3168232 () Bool)

(declare-fun e!1973382 () Bool)

(declare-fun call!229883 () Bool)

(assert (=> b!3168232 (= e!1973382 call!229883)))

(declare-fun b!3168233 () Bool)

(declare-fun e!1973383 () Bool)

(declare-fun e!1973379 () Bool)

(assert (=> b!3168233 (= e!1973383 e!1973379)))

(declare-fun res!1288404 () Bool)

(assert (=> b!3168233 (=> (not res!1288404) (not e!1973379))))

(assert (=> b!3168233 (= res!1288404 (and (not ((_ is EmptyLang!9749) (regOne!20010 r!13156))) (not ((_ is ElementMatch!9749) (regOne!20010 r!13156)))))))

(declare-fun d!869062 () Bool)

(declare-fun res!1288403 () Bool)

(assert (=> d!869062 (=> res!1288403 e!1973383)))

(assert (=> d!869062 (= res!1288403 ((_ is EmptyExpr!9749) (regOne!20010 r!13156)))))

(assert (=> d!869062 (= (nullableFct!955 (regOne!20010 r!13156)) e!1973383)))

(declare-fun b!3168234 () Bool)

(assert (=> b!3168234 (= e!1973380 e!1973378)))

(declare-fun res!1288402 () Bool)

(assert (=> b!3168234 (= res!1288402 call!229883)))

(assert (=> b!3168234 (=> res!1288402 e!1973378)))

(declare-fun bm!229879 () Bool)

(assert (=> bm!229879 (= call!229883 (nullable!3350 (ite c!532892 (regOne!20011 (regOne!20010 r!13156)) (regTwo!20010 (regOne!20010 r!13156)))))))

(declare-fun b!3168235 () Bool)

(assert (=> b!3168235 (= e!1973380 e!1973382)))

(declare-fun res!1288400 () Bool)

(assert (=> b!3168235 (= res!1288400 call!229884)))

(assert (=> b!3168235 (=> (not res!1288400) (not e!1973382))))

(declare-fun b!3168236 () Bool)

(assert (=> b!3168236 (= e!1973379 e!1973381)))

(declare-fun res!1288401 () Bool)

(assert (=> b!3168236 (=> res!1288401 e!1973381)))

(assert (=> b!3168236 (= res!1288401 ((_ is Star!9749) (regOne!20010 r!13156)))))

(assert (= (and d!869062 (not res!1288403)) b!3168233))

(assert (= (and b!3168233 res!1288404) b!3168236))

(assert (= (and b!3168236 (not res!1288401)) b!3168231))

(assert (= (and b!3168231 c!532892) b!3168234))

(assert (= (and b!3168231 (not c!532892)) b!3168235))

(assert (= (and b!3168234 (not res!1288402)) b!3168230))

(assert (= (and b!3168235 res!1288400) b!3168232))

(assert (= (or b!3168230 b!3168235) bm!229878))

(assert (= (or b!3168234 b!3168232) bm!229879))

(declare-fun m!3429015 () Bool)

(assert (=> bm!229878 m!3429015))

(declare-fun m!3429017 () Bool)

(assert (=> bm!229879 m!3429017))

(assert (=> d!869024 d!869062))

(assert (=> b!3168028 d!869058))

(declare-fun b!3168237 () Bool)

(declare-fun e!1973385 () Int)

(declare-fun e!1973384 () Int)

(assert (=> b!3168237 (= e!1973385 e!1973384)))

(declare-fun c!532893 () Bool)

(assert (=> b!3168237 (= c!532893 ((_ is Concat!15070) (ite c!532825 (regOne!20010 r!13156) (regOne!20011 r!13156))))))

(declare-fun b!3168238 () Bool)

(assert (=> b!3168238 (= e!1973385 1)))

(declare-fun call!229886 () Int)

(declare-fun bm!229880 () Bool)

(declare-fun c!532896 () Bool)

(assert (=> bm!229880 (= call!229886 (RegexPrimitiveSize!135 (ite c!532893 (regTwo!20010 (ite c!532825 (regOne!20010 r!13156) (regOne!20011 r!13156))) (ite c!532896 (reg!10078 (ite c!532825 (regOne!20010 r!13156) (regOne!20011 r!13156))) (regTwo!20011 (ite c!532825 (regOne!20010 r!13156) (regOne!20011 r!13156)))))))))

(declare-fun bm!229881 () Bool)

(declare-fun call!229885 () Int)

(assert (=> bm!229881 (= call!229885 call!229886)))

(declare-fun b!3168239 () Bool)

(declare-fun call!229887 () Int)

(assert (=> b!3168239 (= e!1973384 (+ 1 call!229887 call!229886))))

(declare-fun b!3168240 () Bool)

(declare-fun e!1973387 () Int)

(declare-fun e!1973386 () Int)

(assert (=> b!3168240 (= e!1973387 e!1973386)))

(assert (=> b!3168240 (= c!532896 ((_ is Star!9749) (ite c!532825 (regOne!20010 r!13156) (regOne!20011 r!13156))))))

(declare-fun b!3168241 () Bool)

(declare-fun e!1973388 () Int)

(assert (=> b!3168241 (= e!1973388 (+ 1 call!229887 call!229885))))

(declare-fun d!869064 () Bool)

(declare-fun lt!1065298 () Int)

(assert (=> d!869064 (>= lt!1065298 0)))

(assert (=> d!869064 (= lt!1065298 e!1973385)))

(declare-fun c!532897 () Bool)

(assert (=> d!869064 (= c!532897 ((_ is ElementMatch!9749) (ite c!532825 (regOne!20010 r!13156) (regOne!20011 r!13156))))))

(assert (=> d!869064 (= (RegexPrimitiveSize!135 (ite c!532825 (regOne!20010 r!13156) (regOne!20011 r!13156))) lt!1065298)))

(declare-fun b!3168242 () Bool)

(assert (=> b!3168242 (= e!1973388 0)))

(declare-fun b!3168243 () Bool)

(declare-fun c!532895 () Bool)

(assert (=> b!3168243 (= c!532895 ((_ is EmptyLang!9749) (ite c!532825 (regOne!20010 r!13156) (regOne!20011 r!13156))))))

(assert (=> b!3168243 (= e!1973386 e!1973388)))

(declare-fun b!3168244 () Bool)

(assert (=> b!3168244 (= e!1973386 (+ 1 call!229885))))

(declare-fun b!3168245 () Bool)

(declare-fun c!532894 () Bool)

(assert (=> b!3168245 (= c!532894 ((_ is EmptyExpr!9749) (ite c!532825 (regOne!20010 r!13156) (regOne!20011 r!13156))))))

(assert (=> b!3168245 (= e!1973384 e!1973387)))

(declare-fun bm!229882 () Bool)

(assert (=> bm!229882 (= call!229887 (RegexPrimitiveSize!135 (ite c!532893 (regOne!20010 (ite c!532825 (regOne!20010 r!13156) (regOne!20011 r!13156))) (regOne!20011 (ite c!532825 (regOne!20010 r!13156) (regOne!20011 r!13156))))))))

(declare-fun b!3168246 () Bool)

(assert (=> b!3168246 (= e!1973387 0)))

(assert (= (and d!869064 c!532897) b!3168238))

(assert (= (and d!869064 (not c!532897)) b!3168237))

(assert (= (and b!3168237 c!532893) b!3168239))

(assert (= (and b!3168237 (not c!532893)) b!3168245))

(assert (= (and b!3168245 c!532894) b!3168246))

(assert (= (and b!3168245 (not c!532894)) b!3168240))

(assert (= (and b!3168240 c!532896) b!3168244))

(assert (= (and b!3168240 (not c!532896)) b!3168243))

(assert (= (and b!3168243 c!532895) b!3168242))

(assert (= (and b!3168243 (not c!532895)) b!3168241))

(assert (= (or b!3168244 b!3168241) bm!229881))

(assert (= (or b!3168239 bm!229881) bm!229880))

(assert (= (or b!3168239 b!3168241) bm!229882))

(declare-fun m!3429019 () Bool)

(assert (=> bm!229880 m!3429019))

(declare-fun m!3429021 () Bool)

(assert (=> bm!229882 m!3429021))

(assert (=> bm!229822 d!869064))

(declare-fun b!3168247 () Bool)

(declare-fun e!1973390 () Int)

(declare-fun e!1973389 () Int)

(assert (=> b!3168247 (= e!1973390 e!1973389)))

(declare-fun c!532898 () Bool)

(assert (=> b!3168247 (= c!532898 ((_ is Concat!15070) (ite c!532825 (regTwo!20010 r!13156) (ite c!532828 (reg!10078 r!13156) (regTwo!20011 r!13156)))))))

(declare-fun b!3168248 () Bool)

(assert (=> b!3168248 (= e!1973390 1)))

(declare-fun call!229889 () Int)

(declare-fun c!532901 () Bool)

(declare-fun bm!229883 () Bool)

(assert (=> bm!229883 (= call!229889 (RegexPrimitiveSize!135 (ite c!532898 (regTwo!20010 (ite c!532825 (regTwo!20010 r!13156) (ite c!532828 (reg!10078 r!13156) (regTwo!20011 r!13156)))) (ite c!532901 (reg!10078 (ite c!532825 (regTwo!20010 r!13156) (ite c!532828 (reg!10078 r!13156) (regTwo!20011 r!13156)))) (regTwo!20011 (ite c!532825 (regTwo!20010 r!13156) (ite c!532828 (reg!10078 r!13156) (regTwo!20011 r!13156))))))))))

(declare-fun bm!229884 () Bool)

(declare-fun call!229888 () Int)

(assert (=> bm!229884 (= call!229888 call!229889)))

(declare-fun b!3168249 () Bool)

(declare-fun call!229890 () Int)

(assert (=> b!3168249 (= e!1973389 (+ 1 call!229890 call!229889))))

(declare-fun b!3168250 () Bool)

(declare-fun e!1973392 () Int)

(declare-fun e!1973391 () Int)

(assert (=> b!3168250 (= e!1973392 e!1973391)))

(assert (=> b!3168250 (= c!532901 ((_ is Star!9749) (ite c!532825 (regTwo!20010 r!13156) (ite c!532828 (reg!10078 r!13156) (regTwo!20011 r!13156)))))))

(declare-fun b!3168251 () Bool)

(declare-fun e!1973393 () Int)

(assert (=> b!3168251 (= e!1973393 (+ 1 call!229890 call!229888))))

(declare-fun d!869066 () Bool)

(declare-fun lt!1065299 () Int)

(assert (=> d!869066 (>= lt!1065299 0)))

(assert (=> d!869066 (= lt!1065299 e!1973390)))

(declare-fun c!532902 () Bool)

(assert (=> d!869066 (= c!532902 ((_ is ElementMatch!9749) (ite c!532825 (regTwo!20010 r!13156) (ite c!532828 (reg!10078 r!13156) (regTwo!20011 r!13156)))))))

(assert (=> d!869066 (= (RegexPrimitiveSize!135 (ite c!532825 (regTwo!20010 r!13156) (ite c!532828 (reg!10078 r!13156) (regTwo!20011 r!13156)))) lt!1065299)))

(declare-fun b!3168252 () Bool)

(assert (=> b!3168252 (= e!1973393 0)))

(declare-fun b!3168253 () Bool)

(declare-fun c!532900 () Bool)

(assert (=> b!3168253 (= c!532900 ((_ is EmptyLang!9749) (ite c!532825 (regTwo!20010 r!13156) (ite c!532828 (reg!10078 r!13156) (regTwo!20011 r!13156)))))))

(assert (=> b!3168253 (= e!1973391 e!1973393)))

(declare-fun b!3168254 () Bool)

(assert (=> b!3168254 (= e!1973391 (+ 1 call!229888))))

(declare-fun b!3168255 () Bool)

(declare-fun c!532899 () Bool)

(assert (=> b!3168255 (= c!532899 ((_ is EmptyExpr!9749) (ite c!532825 (regTwo!20010 r!13156) (ite c!532828 (reg!10078 r!13156) (regTwo!20011 r!13156)))))))

(assert (=> b!3168255 (= e!1973389 e!1973392)))

(declare-fun bm!229885 () Bool)

(assert (=> bm!229885 (= call!229890 (RegexPrimitiveSize!135 (ite c!532898 (regOne!20010 (ite c!532825 (regTwo!20010 r!13156) (ite c!532828 (reg!10078 r!13156) (regTwo!20011 r!13156)))) (regOne!20011 (ite c!532825 (regTwo!20010 r!13156) (ite c!532828 (reg!10078 r!13156) (regTwo!20011 r!13156)))))))))

(declare-fun b!3168256 () Bool)

(assert (=> b!3168256 (= e!1973392 0)))

(assert (= (and d!869066 c!532902) b!3168248))

(assert (= (and d!869066 (not c!532902)) b!3168247))

(assert (= (and b!3168247 c!532898) b!3168249))

(assert (= (and b!3168247 (not c!532898)) b!3168255))

(assert (= (and b!3168255 c!532899) b!3168256))

(assert (= (and b!3168255 (not c!532899)) b!3168250))

(assert (= (and b!3168250 c!532901) b!3168254))

(assert (= (and b!3168250 (not c!532901)) b!3168253))

(assert (= (and b!3168253 c!532900) b!3168252))

(assert (= (and b!3168253 (not c!532900)) b!3168251))

(assert (= (or b!3168254 b!3168251) bm!229884))

(assert (= (or b!3168249 bm!229884) bm!229883))

(assert (= (or b!3168249 b!3168251) bm!229885))

(declare-fun m!3429023 () Bool)

(assert (=> bm!229883 m!3429023))

(declare-fun m!3429025 () Bool)

(assert (=> bm!229885 m!3429025))

(assert (=> bm!229820 d!869066))

(declare-fun e!1973394 () Bool)

(assert (=> b!3168062 (= tp!998889 e!1973394)))

(declare-fun b!3168258 () Bool)

(declare-fun tp!998910 () Bool)

(declare-fun tp!998912 () Bool)

(assert (=> b!3168258 (= e!1973394 (and tp!998910 tp!998912))))

(declare-fun b!3168260 () Bool)

(declare-fun tp!998909 () Bool)

(declare-fun tp!998908 () Bool)

(assert (=> b!3168260 (= e!1973394 (and tp!998909 tp!998908))))

(declare-fun b!3168259 () Bool)

(declare-fun tp!998911 () Bool)

(assert (=> b!3168259 (= e!1973394 tp!998911)))

(declare-fun b!3168257 () Bool)

(assert (=> b!3168257 (= e!1973394 tp_is_empty!17061)))

(assert (= (and b!3168062 ((_ is ElementMatch!9749) (regOne!20011 (regTwo!20010 r!13156)))) b!3168257))

(assert (= (and b!3168062 ((_ is Concat!15070) (regOne!20011 (regTwo!20010 r!13156)))) b!3168258))

(assert (= (and b!3168062 ((_ is Star!9749) (regOne!20011 (regTwo!20010 r!13156)))) b!3168259))

(assert (= (and b!3168062 ((_ is Union!9749) (regOne!20011 (regTwo!20010 r!13156)))) b!3168260))

(declare-fun e!1973395 () Bool)

(assert (=> b!3168062 (= tp!998888 e!1973395)))

(declare-fun b!3168262 () Bool)

(declare-fun tp!998915 () Bool)

(declare-fun tp!998917 () Bool)

(assert (=> b!3168262 (= e!1973395 (and tp!998915 tp!998917))))

(declare-fun b!3168264 () Bool)

(declare-fun tp!998914 () Bool)

(declare-fun tp!998913 () Bool)

(assert (=> b!3168264 (= e!1973395 (and tp!998914 tp!998913))))

(declare-fun b!3168263 () Bool)

(declare-fun tp!998916 () Bool)

(assert (=> b!3168263 (= e!1973395 tp!998916)))

(declare-fun b!3168261 () Bool)

(assert (=> b!3168261 (= e!1973395 tp_is_empty!17061)))

(assert (= (and b!3168062 ((_ is ElementMatch!9749) (regTwo!20011 (regTwo!20010 r!13156)))) b!3168261))

(assert (= (and b!3168062 ((_ is Concat!15070) (regTwo!20011 (regTwo!20010 r!13156)))) b!3168262))

(assert (= (and b!3168062 ((_ is Star!9749) (regTwo!20011 (regTwo!20010 r!13156)))) b!3168263))

(assert (= (and b!3168062 ((_ is Union!9749) (regTwo!20011 (regTwo!20010 r!13156)))) b!3168264))

(declare-fun e!1973396 () Bool)

(assert (=> b!3168057 (= tp!998886 e!1973396)))

(declare-fun b!3168266 () Bool)

(declare-fun tp!998920 () Bool)

(declare-fun tp!998922 () Bool)

(assert (=> b!3168266 (= e!1973396 (and tp!998920 tp!998922))))

(declare-fun b!3168268 () Bool)

(declare-fun tp!998919 () Bool)

(declare-fun tp!998918 () Bool)

(assert (=> b!3168268 (= e!1973396 (and tp!998919 tp!998918))))

(declare-fun b!3168267 () Bool)

(declare-fun tp!998921 () Bool)

(assert (=> b!3168267 (= e!1973396 tp!998921)))

(declare-fun b!3168265 () Bool)

(assert (=> b!3168265 (= e!1973396 tp_is_empty!17061)))

(assert (= (and b!3168057 ((_ is ElementMatch!9749) (reg!10078 (regOne!20010 r!13156)))) b!3168265))

(assert (= (and b!3168057 ((_ is Concat!15070) (reg!10078 (regOne!20010 r!13156)))) b!3168266))

(assert (= (and b!3168057 ((_ is Star!9749) (reg!10078 (regOne!20010 r!13156)))) b!3168267))

(assert (= (and b!3168057 ((_ is Union!9749) (reg!10078 (regOne!20010 r!13156)))) b!3168268))

(declare-fun e!1973397 () Bool)

(assert (=> b!3168058 (= tp!998884 e!1973397)))

(declare-fun b!3168270 () Bool)

(declare-fun tp!998925 () Bool)

(declare-fun tp!998927 () Bool)

(assert (=> b!3168270 (= e!1973397 (and tp!998925 tp!998927))))

(declare-fun b!3168272 () Bool)

(declare-fun tp!998924 () Bool)

(declare-fun tp!998923 () Bool)

(assert (=> b!3168272 (= e!1973397 (and tp!998924 tp!998923))))

(declare-fun b!3168271 () Bool)

(declare-fun tp!998926 () Bool)

(assert (=> b!3168271 (= e!1973397 tp!998926)))

(declare-fun b!3168269 () Bool)

(assert (=> b!3168269 (= e!1973397 tp_is_empty!17061)))

(assert (= (and b!3168058 ((_ is ElementMatch!9749) (regOne!20011 (regOne!20010 r!13156)))) b!3168269))

(assert (= (and b!3168058 ((_ is Concat!15070) (regOne!20011 (regOne!20010 r!13156)))) b!3168270))

(assert (= (and b!3168058 ((_ is Star!9749) (regOne!20011 (regOne!20010 r!13156)))) b!3168271))

(assert (= (and b!3168058 ((_ is Union!9749) (regOne!20011 (regOne!20010 r!13156)))) b!3168272))

(declare-fun e!1973398 () Bool)

(assert (=> b!3168058 (= tp!998883 e!1973398)))

(declare-fun b!3168274 () Bool)

(declare-fun tp!998930 () Bool)

(declare-fun tp!998932 () Bool)

(assert (=> b!3168274 (= e!1973398 (and tp!998930 tp!998932))))

(declare-fun b!3168276 () Bool)

(declare-fun tp!998929 () Bool)

(declare-fun tp!998928 () Bool)

(assert (=> b!3168276 (= e!1973398 (and tp!998929 tp!998928))))

(declare-fun b!3168275 () Bool)

(declare-fun tp!998931 () Bool)

(assert (=> b!3168275 (= e!1973398 tp!998931)))

(declare-fun b!3168273 () Bool)

(assert (=> b!3168273 (= e!1973398 tp_is_empty!17061)))

(assert (= (and b!3168058 ((_ is ElementMatch!9749) (regTwo!20011 (regOne!20010 r!13156)))) b!3168273))

(assert (= (and b!3168058 ((_ is Concat!15070) (regTwo!20011 (regOne!20010 r!13156)))) b!3168274))

(assert (= (and b!3168058 ((_ is Star!9749) (regTwo!20011 (regOne!20010 r!13156)))) b!3168275))

(assert (= (and b!3168058 ((_ is Union!9749) (regTwo!20011 (regOne!20010 r!13156)))) b!3168276))

(declare-fun e!1973399 () Bool)

(assert (=> b!3168043 (= tp!998864 e!1973399)))

(declare-fun b!3168278 () Bool)

(declare-fun tp!998935 () Bool)

(declare-fun tp!998937 () Bool)

(assert (=> b!3168278 (= e!1973399 (and tp!998935 tp!998937))))

(declare-fun b!3168280 () Bool)

(declare-fun tp!998934 () Bool)

(declare-fun tp!998933 () Bool)

(assert (=> b!3168280 (= e!1973399 (and tp!998934 tp!998933))))

(declare-fun b!3168279 () Bool)

(declare-fun tp!998936 () Bool)

(assert (=> b!3168279 (= e!1973399 tp!998936)))

(declare-fun b!3168277 () Bool)

(assert (=> b!3168277 (= e!1973399 tp_is_empty!17061)))

(assert (= (and b!3168043 ((_ is ElementMatch!9749) (_1!20430 (_1!20431 (h!40881 mapDefault!18916))))) b!3168277))

(assert (= (and b!3168043 ((_ is Concat!15070) (_1!20430 (_1!20431 (h!40881 mapDefault!18916))))) b!3168278))

(assert (= (and b!3168043 ((_ is Star!9749) (_1!20430 (_1!20431 (h!40881 mapDefault!18916))))) b!3168279))

(assert (= (and b!3168043 ((_ is Union!9749) (_1!20430 (_1!20431 (h!40881 mapDefault!18916))))) b!3168280))

(declare-fun e!1973400 () Bool)

(assert (=> b!3168043 (= tp!998867 e!1973400)))

(declare-fun b!3168282 () Bool)

(declare-fun tp!998940 () Bool)

(declare-fun tp!998942 () Bool)

(assert (=> b!3168282 (= e!1973400 (and tp!998940 tp!998942))))

(declare-fun b!3168284 () Bool)

(declare-fun tp!998939 () Bool)

(declare-fun tp!998938 () Bool)

(assert (=> b!3168284 (= e!1973400 (and tp!998939 tp!998938))))

(declare-fun b!3168283 () Bool)

(declare-fun tp!998941 () Bool)

(assert (=> b!3168283 (= e!1973400 tp!998941)))

(declare-fun b!3168281 () Bool)

(assert (=> b!3168281 (= e!1973400 tp_is_empty!17061)))

(assert (= (and b!3168043 ((_ is ElementMatch!9749) (_2!20431 (h!40881 mapDefault!18916)))) b!3168281))

(assert (= (and b!3168043 ((_ is Concat!15070) (_2!20431 (h!40881 mapDefault!18916)))) b!3168282))

(assert (= (and b!3168043 ((_ is Star!9749) (_2!20431 (h!40881 mapDefault!18916)))) b!3168283))

(assert (= (and b!3168043 ((_ is Union!9749) (_2!20431 (h!40881 mapDefault!18916)))) b!3168284))

(declare-fun tp!998945 () Bool)

(declare-fun b!3168285 () Bool)

(declare-fun tp!998943 () Bool)

(declare-fun tp!998944 () Bool)

(declare-fun e!1973401 () Bool)

(assert (=> b!3168285 (= e!1973401 (and tp!998943 tp_is_empty!17061 tp!998944 tp!998945))))

(assert (=> b!3168043 (= tp!998863 e!1973401)))

(assert (= (and b!3168043 ((_ is Cons!35461) (t!234666 mapDefault!18916))) b!3168285))

(declare-fun e!1973402 () Bool)

(assert (=> b!3168035 (= tp!998846 e!1973402)))

(declare-fun b!3168287 () Bool)

(declare-fun tp!998948 () Bool)

(declare-fun tp!998950 () Bool)

(assert (=> b!3168287 (= e!1973402 (and tp!998948 tp!998950))))

(declare-fun b!3168289 () Bool)

(declare-fun tp!998947 () Bool)

(declare-fun tp!998946 () Bool)

(assert (=> b!3168289 (= e!1973402 (and tp!998947 tp!998946))))

(declare-fun b!3168288 () Bool)

(declare-fun tp!998949 () Bool)

(assert (=> b!3168288 (= e!1973402 tp!998949)))

(declare-fun b!3168286 () Bool)

(assert (=> b!3168286 (= e!1973402 tp_is_empty!17061)))

(assert (= (and b!3168035 ((_ is ElementMatch!9749) (_1!20430 (_1!20431 (h!40881 mapDefault!18913))))) b!3168286))

(assert (= (and b!3168035 ((_ is Concat!15070) (_1!20430 (_1!20431 (h!40881 mapDefault!18913))))) b!3168287))

(assert (= (and b!3168035 ((_ is Star!9749) (_1!20430 (_1!20431 (h!40881 mapDefault!18913))))) b!3168288))

(assert (= (and b!3168035 ((_ is Union!9749) (_1!20430 (_1!20431 (h!40881 mapDefault!18913))))) b!3168289))

(declare-fun e!1973403 () Bool)

(assert (=> b!3168035 (= tp!998847 e!1973403)))

(declare-fun b!3168291 () Bool)

(declare-fun tp!998953 () Bool)

(declare-fun tp!998955 () Bool)

(assert (=> b!3168291 (= e!1973403 (and tp!998953 tp!998955))))

(declare-fun b!3168293 () Bool)

(declare-fun tp!998952 () Bool)

(declare-fun tp!998951 () Bool)

(assert (=> b!3168293 (= e!1973403 (and tp!998952 tp!998951))))

(declare-fun b!3168292 () Bool)

(declare-fun tp!998954 () Bool)

(assert (=> b!3168292 (= e!1973403 tp!998954)))

(declare-fun b!3168290 () Bool)

(assert (=> b!3168290 (= e!1973403 tp_is_empty!17061)))

(assert (= (and b!3168035 ((_ is ElementMatch!9749) (_2!20431 (h!40881 mapDefault!18913)))) b!3168290))

(assert (= (and b!3168035 ((_ is Concat!15070) (_2!20431 (h!40881 mapDefault!18913)))) b!3168291))

(assert (= (and b!3168035 ((_ is Star!9749) (_2!20431 (h!40881 mapDefault!18913)))) b!3168292))

(assert (= (and b!3168035 ((_ is Union!9749) (_2!20431 (h!40881 mapDefault!18913)))) b!3168293))

(declare-fun tp!998956 () Bool)

(declare-fun b!3168294 () Bool)

(declare-fun tp!998958 () Bool)

(declare-fun tp!998957 () Bool)

(declare-fun e!1973404 () Bool)

(assert (=> b!3168294 (= e!1973404 (and tp!998956 tp_is_empty!17061 tp!998957 tp!998958))))

(assert (=> b!3168035 (= tp!998848 e!1973404)))

(assert (= (and b!3168035 ((_ is Cons!35461) (t!234666 mapDefault!18913))) b!3168294))

(declare-fun e!1973405 () Bool)

(assert (=> b!3168033 (= tp!998840 e!1973405)))

(declare-fun b!3168296 () Bool)

(declare-fun tp!998961 () Bool)

(declare-fun tp!998963 () Bool)

(assert (=> b!3168296 (= e!1973405 (and tp!998961 tp!998963))))

(declare-fun b!3168298 () Bool)

(declare-fun tp!998960 () Bool)

(declare-fun tp!998959 () Bool)

(assert (=> b!3168298 (= e!1973405 (and tp!998960 tp!998959))))

(declare-fun b!3168297 () Bool)

(declare-fun tp!998962 () Bool)

(assert (=> b!3168297 (= e!1973405 tp!998962)))

(declare-fun b!3168295 () Bool)

(assert (=> b!3168295 (= e!1973405 tp_is_empty!17061)))

(assert (= (and b!3168033 ((_ is ElementMatch!9749) (_1!20430 (_1!20431 (h!40881 (zeroValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347))))))))))) b!3168295))

(assert (= (and b!3168033 ((_ is Concat!15070) (_1!20430 (_1!20431 (h!40881 (zeroValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347))))))))))) b!3168296))

(assert (= (and b!3168033 ((_ is Star!9749) (_1!20430 (_1!20431 (h!40881 (zeroValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347))))))))))) b!3168297))

(assert (= (and b!3168033 ((_ is Union!9749) (_1!20430 (_1!20431 (h!40881 (zeroValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347))))))))))) b!3168298))

(declare-fun e!1973406 () Bool)

(assert (=> b!3168033 (= tp!998841 e!1973406)))

(declare-fun b!3168300 () Bool)

(declare-fun tp!998966 () Bool)

(declare-fun tp!998968 () Bool)

(assert (=> b!3168300 (= e!1973406 (and tp!998966 tp!998968))))

(declare-fun b!3168302 () Bool)

(declare-fun tp!998965 () Bool)

(declare-fun tp!998964 () Bool)

(assert (=> b!3168302 (= e!1973406 (and tp!998965 tp!998964))))

(declare-fun b!3168301 () Bool)

(declare-fun tp!998967 () Bool)

(assert (=> b!3168301 (= e!1973406 tp!998967)))

(declare-fun b!3168299 () Bool)

(assert (=> b!3168299 (= e!1973406 tp_is_empty!17061)))

(assert (= (and b!3168033 ((_ is ElementMatch!9749) (_2!20431 (h!40881 (zeroValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347)))))))))) b!3168299))

(assert (= (and b!3168033 ((_ is Concat!15070) (_2!20431 (h!40881 (zeroValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347)))))))))) b!3168300))

(assert (= (and b!3168033 ((_ is Star!9749) (_2!20431 (h!40881 (zeroValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347)))))))))) b!3168301))

(assert (= (and b!3168033 ((_ is Union!9749) (_2!20431 (h!40881 (zeroValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347)))))))))) b!3168302))

(declare-fun b!3168303 () Bool)

(declare-fun tp!998970 () Bool)

(declare-fun e!1973407 () Bool)

(declare-fun tp!998969 () Bool)

(declare-fun tp!998971 () Bool)

(assert (=> b!3168303 (= e!1973407 (and tp!998969 tp_is_empty!17061 tp!998970 tp!998971))))

(assert (=> b!3168033 (= tp!998842 e!1973407)))

(assert (= (and b!3168033 ((_ is Cons!35461) (t!234666 (zeroValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347))))))))) b!3168303))

(declare-fun e!1973408 () Bool)

(assert (=> b!3168064 (= tp!998895 e!1973408)))

(declare-fun b!3168305 () Bool)

(declare-fun tp!998974 () Bool)

(declare-fun tp!998976 () Bool)

(assert (=> b!3168305 (= e!1973408 (and tp!998974 tp!998976))))

(declare-fun b!3168307 () Bool)

(declare-fun tp!998973 () Bool)

(declare-fun tp!998972 () Bool)

(assert (=> b!3168307 (= e!1973408 (and tp!998973 tp!998972))))

(declare-fun b!3168306 () Bool)

(declare-fun tp!998975 () Bool)

(assert (=> b!3168306 (= e!1973408 tp!998975)))

(declare-fun b!3168304 () Bool)

(assert (=> b!3168304 (= e!1973408 tp_is_empty!17061)))

(assert (= (and b!3168064 ((_ is ElementMatch!9749) (regOne!20010 (regOne!20011 r!13156)))) b!3168304))

(assert (= (and b!3168064 ((_ is Concat!15070) (regOne!20010 (regOne!20011 r!13156)))) b!3168305))

(assert (= (and b!3168064 ((_ is Star!9749) (regOne!20010 (regOne!20011 r!13156)))) b!3168306))

(assert (= (and b!3168064 ((_ is Union!9749) (regOne!20010 (regOne!20011 r!13156)))) b!3168307))

(declare-fun e!1973409 () Bool)

(assert (=> b!3168064 (= tp!998897 e!1973409)))

(declare-fun b!3168309 () Bool)

(declare-fun tp!998979 () Bool)

(declare-fun tp!998981 () Bool)

(assert (=> b!3168309 (= e!1973409 (and tp!998979 tp!998981))))

(declare-fun b!3168311 () Bool)

(declare-fun tp!998978 () Bool)

(declare-fun tp!998977 () Bool)

(assert (=> b!3168311 (= e!1973409 (and tp!998978 tp!998977))))

(declare-fun b!3168310 () Bool)

(declare-fun tp!998980 () Bool)

(assert (=> b!3168310 (= e!1973409 tp!998980)))

(declare-fun b!3168308 () Bool)

(assert (=> b!3168308 (= e!1973409 tp_is_empty!17061)))

(assert (= (and b!3168064 ((_ is ElementMatch!9749) (regTwo!20010 (regOne!20011 r!13156)))) b!3168308))

(assert (= (and b!3168064 ((_ is Concat!15070) (regTwo!20010 (regOne!20011 r!13156)))) b!3168309))

(assert (= (and b!3168064 ((_ is Star!9749) (regTwo!20010 (regOne!20011 r!13156)))) b!3168310))

(assert (= (and b!3168064 ((_ is Union!9749) (regTwo!20010 (regOne!20011 r!13156)))) b!3168311))

(declare-fun e!1973410 () Bool)

(assert (=> b!3168073 (= tp!998906 e!1973410)))

(declare-fun b!3168313 () Bool)

(declare-fun tp!998984 () Bool)

(declare-fun tp!998986 () Bool)

(assert (=> b!3168313 (= e!1973410 (and tp!998984 tp!998986))))

(declare-fun b!3168315 () Bool)

(declare-fun tp!998983 () Bool)

(declare-fun tp!998982 () Bool)

(assert (=> b!3168315 (= e!1973410 (and tp!998983 tp!998982))))

(declare-fun b!3168314 () Bool)

(declare-fun tp!998985 () Bool)

(assert (=> b!3168314 (= e!1973410 tp!998985)))

(declare-fun b!3168312 () Bool)

(assert (=> b!3168312 (= e!1973410 tp_is_empty!17061)))

(assert (= (and b!3168073 ((_ is ElementMatch!9749) (reg!10078 (reg!10078 r!13156)))) b!3168312))

(assert (= (and b!3168073 ((_ is Concat!15070) (reg!10078 (reg!10078 r!13156)))) b!3168313))

(assert (= (and b!3168073 ((_ is Star!9749) (reg!10078 (reg!10078 r!13156)))) b!3168314))

(assert (= (and b!3168073 ((_ is Union!9749) (reg!10078 (reg!10078 r!13156)))) b!3168315))

(declare-fun e!1973411 () Bool)

(assert (=> b!3168060 (= tp!998890 e!1973411)))

(declare-fun b!3168317 () Bool)

(declare-fun tp!998989 () Bool)

(declare-fun tp!998991 () Bool)

(assert (=> b!3168317 (= e!1973411 (and tp!998989 tp!998991))))

(declare-fun b!3168319 () Bool)

(declare-fun tp!998988 () Bool)

(declare-fun tp!998987 () Bool)

(assert (=> b!3168319 (= e!1973411 (and tp!998988 tp!998987))))

(declare-fun b!3168318 () Bool)

(declare-fun tp!998990 () Bool)

(assert (=> b!3168318 (= e!1973411 tp!998990)))

(declare-fun b!3168316 () Bool)

(assert (=> b!3168316 (= e!1973411 tp_is_empty!17061)))

(assert (= (and b!3168060 ((_ is ElementMatch!9749) (regOne!20010 (regTwo!20010 r!13156)))) b!3168316))

(assert (= (and b!3168060 ((_ is Concat!15070) (regOne!20010 (regTwo!20010 r!13156)))) b!3168317))

(assert (= (and b!3168060 ((_ is Star!9749) (regOne!20010 (regTwo!20010 r!13156)))) b!3168318))

(assert (= (and b!3168060 ((_ is Union!9749) (regOne!20010 (regTwo!20010 r!13156)))) b!3168319))

(declare-fun e!1973412 () Bool)

(assert (=> b!3168060 (= tp!998892 e!1973412)))

(declare-fun b!3168321 () Bool)

(declare-fun tp!998994 () Bool)

(declare-fun tp!998996 () Bool)

(assert (=> b!3168321 (= e!1973412 (and tp!998994 tp!998996))))

(declare-fun b!3168323 () Bool)

(declare-fun tp!998993 () Bool)

(declare-fun tp!998992 () Bool)

(assert (=> b!3168323 (= e!1973412 (and tp!998993 tp!998992))))

(declare-fun b!3168322 () Bool)

(declare-fun tp!998995 () Bool)

(assert (=> b!3168322 (= e!1973412 tp!998995)))

(declare-fun b!3168320 () Bool)

(assert (=> b!3168320 (= e!1973412 tp_is_empty!17061)))

(assert (= (and b!3168060 ((_ is ElementMatch!9749) (regTwo!20010 (regTwo!20010 r!13156)))) b!3168320))

(assert (= (and b!3168060 ((_ is Concat!15070) (regTwo!20010 (regTwo!20010 r!13156)))) b!3168321))

(assert (= (and b!3168060 ((_ is Star!9749) (regTwo!20010 (regTwo!20010 r!13156)))) b!3168322))

(assert (= (and b!3168060 ((_ is Union!9749) (regTwo!20010 (regTwo!20010 r!13156)))) b!3168323))

(declare-fun e!1973413 () Bool)

(assert (=> b!3168074 (= tp!998904 e!1973413)))

(declare-fun b!3168325 () Bool)

(declare-fun tp!998999 () Bool)

(declare-fun tp!999001 () Bool)

(assert (=> b!3168325 (= e!1973413 (and tp!998999 tp!999001))))

(declare-fun b!3168327 () Bool)

(declare-fun tp!998998 () Bool)

(declare-fun tp!998997 () Bool)

(assert (=> b!3168327 (= e!1973413 (and tp!998998 tp!998997))))

(declare-fun b!3168326 () Bool)

(declare-fun tp!999000 () Bool)

(assert (=> b!3168326 (= e!1973413 tp!999000)))

(declare-fun b!3168324 () Bool)

(assert (=> b!3168324 (= e!1973413 tp_is_empty!17061)))

(assert (= (and b!3168074 ((_ is ElementMatch!9749) (regOne!20011 (reg!10078 r!13156)))) b!3168324))

(assert (= (and b!3168074 ((_ is Concat!15070) (regOne!20011 (reg!10078 r!13156)))) b!3168325))

(assert (= (and b!3168074 ((_ is Star!9749) (regOne!20011 (reg!10078 r!13156)))) b!3168326))

(assert (= (and b!3168074 ((_ is Union!9749) (regOne!20011 (reg!10078 r!13156)))) b!3168327))

(declare-fun e!1973414 () Bool)

(assert (=> b!3168074 (= tp!998903 e!1973414)))

(declare-fun b!3168329 () Bool)

(declare-fun tp!999004 () Bool)

(declare-fun tp!999006 () Bool)

(assert (=> b!3168329 (= e!1973414 (and tp!999004 tp!999006))))

(declare-fun b!3168331 () Bool)

(declare-fun tp!999003 () Bool)

(declare-fun tp!999002 () Bool)

(assert (=> b!3168331 (= e!1973414 (and tp!999003 tp!999002))))

(declare-fun b!3168330 () Bool)

(declare-fun tp!999005 () Bool)

(assert (=> b!3168330 (= e!1973414 tp!999005)))

(declare-fun b!3168328 () Bool)

(assert (=> b!3168328 (= e!1973414 tp_is_empty!17061)))

(assert (= (and b!3168074 ((_ is ElementMatch!9749) (regTwo!20011 (reg!10078 r!13156)))) b!3168328))

(assert (= (and b!3168074 ((_ is Concat!15070) (regTwo!20011 (reg!10078 r!13156)))) b!3168329))

(assert (= (and b!3168074 ((_ is Star!9749) (regTwo!20011 (reg!10078 r!13156)))) b!3168330))

(assert (= (and b!3168074 ((_ is Union!9749) (regTwo!20011 (reg!10078 r!13156)))) b!3168331))

(declare-fun e!1973415 () Bool)

(assert (=> b!3168069 (= tp!998901 e!1973415)))

(declare-fun b!3168333 () Bool)

(declare-fun tp!999009 () Bool)

(declare-fun tp!999011 () Bool)

(assert (=> b!3168333 (= e!1973415 (and tp!999009 tp!999011))))

(declare-fun b!3168335 () Bool)

(declare-fun tp!999008 () Bool)

(declare-fun tp!999007 () Bool)

(assert (=> b!3168335 (= e!1973415 (and tp!999008 tp!999007))))

(declare-fun b!3168334 () Bool)

(declare-fun tp!999010 () Bool)

(assert (=> b!3168334 (= e!1973415 tp!999010)))

(declare-fun b!3168332 () Bool)

(assert (=> b!3168332 (= e!1973415 tp_is_empty!17061)))

(assert (= (and b!3168069 ((_ is ElementMatch!9749) (reg!10078 (regTwo!20011 r!13156)))) b!3168332))

(assert (= (and b!3168069 ((_ is Concat!15070) (reg!10078 (regTwo!20011 r!13156)))) b!3168333))

(assert (= (and b!3168069 ((_ is Star!9749) (reg!10078 (regTwo!20011 r!13156)))) b!3168334))

(assert (= (and b!3168069 ((_ is Union!9749) (reg!10078 (regTwo!20011 r!13156)))) b!3168335))

(declare-fun e!1973416 () Bool)

(assert (=> b!3168056 (= tp!998885 e!1973416)))

(declare-fun b!3168337 () Bool)

(declare-fun tp!999014 () Bool)

(declare-fun tp!999016 () Bool)

(assert (=> b!3168337 (= e!1973416 (and tp!999014 tp!999016))))

(declare-fun b!3168339 () Bool)

(declare-fun tp!999013 () Bool)

(declare-fun tp!999012 () Bool)

(assert (=> b!3168339 (= e!1973416 (and tp!999013 tp!999012))))

(declare-fun b!3168338 () Bool)

(declare-fun tp!999015 () Bool)

(assert (=> b!3168338 (= e!1973416 tp!999015)))

(declare-fun b!3168336 () Bool)

(assert (=> b!3168336 (= e!1973416 tp_is_empty!17061)))

(assert (= (and b!3168056 ((_ is ElementMatch!9749) (regOne!20010 (regOne!20010 r!13156)))) b!3168336))

(assert (= (and b!3168056 ((_ is Concat!15070) (regOne!20010 (regOne!20010 r!13156)))) b!3168337))

(assert (= (and b!3168056 ((_ is Star!9749) (regOne!20010 (regOne!20010 r!13156)))) b!3168338))

(assert (= (and b!3168056 ((_ is Union!9749) (regOne!20010 (regOne!20010 r!13156)))) b!3168339))

(declare-fun e!1973417 () Bool)

(assert (=> b!3168056 (= tp!998887 e!1973417)))

(declare-fun b!3168341 () Bool)

(declare-fun tp!999019 () Bool)

(declare-fun tp!999021 () Bool)

(assert (=> b!3168341 (= e!1973417 (and tp!999019 tp!999021))))

(declare-fun b!3168343 () Bool)

(declare-fun tp!999018 () Bool)

(declare-fun tp!999017 () Bool)

(assert (=> b!3168343 (= e!1973417 (and tp!999018 tp!999017))))

(declare-fun b!3168342 () Bool)

(declare-fun tp!999020 () Bool)

(assert (=> b!3168342 (= e!1973417 tp!999020)))

(declare-fun b!3168340 () Bool)

(assert (=> b!3168340 (= e!1973417 tp_is_empty!17061)))

(assert (= (and b!3168056 ((_ is ElementMatch!9749) (regTwo!20010 (regOne!20010 r!13156)))) b!3168340))

(assert (= (and b!3168056 ((_ is Concat!15070) (regTwo!20010 (regOne!20010 r!13156)))) b!3168341))

(assert (= (and b!3168056 ((_ is Star!9749) (regTwo!20010 (regOne!20010 r!13156)))) b!3168342))

(assert (= (and b!3168056 ((_ is Union!9749) (regTwo!20010 (regOne!20010 r!13156)))) b!3168343))

(declare-fun e!1973418 () Bool)

(assert (=> b!3168070 (= tp!998899 e!1973418)))

(declare-fun b!3168345 () Bool)

(declare-fun tp!999024 () Bool)

(declare-fun tp!999026 () Bool)

(assert (=> b!3168345 (= e!1973418 (and tp!999024 tp!999026))))

(declare-fun b!3168347 () Bool)

(declare-fun tp!999023 () Bool)

(declare-fun tp!999022 () Bool)

(assert (=> b!3168347 (= e!1973418 (and tp!999023 tp!999022))))

(declare-fun b!3168346 () Bool)

(declare-fun tp!999025 () Bool)

(assert (=> b!3168346 (= e!1973418 tp!999025)))

(declare-fun b!3168344 () Bool)

(assert (=> b!3168344 (= e!1973418 tp_is_empty!17061)))

(assert (= (and b!3168070 ((_ is ElementMatch!9749) (regOne!20011 (regTwo!20011 r!13156)))) b!3168344))

(assert (= (and b!3168070 ((_ is Concat!15070) (regOne!20011 (regTwo!20011 r!13156)))) b!3168345))

(assert (= (and b!3168070 ((_ is Star!9749) (regOne!20011 (regTwo!20011 r!13156)))) b!3168346))

(assert (= (and b!3168070 ((_ is Union!9749) (regOne!20011 (regTwo!20011 r!13156)))) b!3168347))

(declare-fun e!1973419 () Bool)

(assert (=> b!3168070 (= tp!998898 e!1973419)))

(declare-fun b!3168349 () Bool)

(declare-fun tp!999029 () Bool)

(declare-fun tp!999031 () Bool)

(assert (=> b!3168349 (= e!1973419 (and tp!999029 tp!999031))))

(declare-fun b!3168351 () Bool)

(declare-fun tp!999028 () Bool)

(declare-fun tp!999027 () Bool)

(assert (=> b!3168351 (= e!1973419 (and tp!999028 tp!999027))))

(declare-fun b!3168350 () Bool)

(declare-fun tp!999030 () Bool)

(assert (=> b!3168350 (= e!1973419 tp!999030)))

(declare-fun b!3168348 () Bool)

(assert (=> b!3168348 (= e!1973419 tp_is_empty!17061)))

(assert (= (and b!3168070 ((_ is ElementMatch!9749) (regTwo!20011 (regTwo!20011 r!13156)))) b!3168348))

(assert (= (and b!3168070 ((_ is Concat!15070) (regTwo!20011 (regTwo!20011 r!13156)))) b!3168349))

(assert (= (and b!3168070 ((_ is Star!9749) (regTwo!20011 (regTwo!20011 r!13156)))) b!3168350))

(assert (= (and b!3168070 ((_ is Union!9749) (regTwo!20011 (regTwo!20011 r!13156)))) b!3168351))

(declare-fun e!1973420 () Bool)

(assert (=> b!3168065 (= tp!998896 e!1973420)))

(declare-fun b!3168353 () Bool)

(declare-fun tp!999034 () Bool)

(declare-fun tp!999036 () Bool)

(assert (=> b!3168353 (= e!1973420 (and tp!999034 tp!999036))))

(declare-fun b!3168355 () Bool)

(declare-fun tp!999033 () Bool)

(declare-fun tp!999032 () Bool)

(assert (=> b!3168355 (= e!1973420 (and tp!999033 tp!999032))))

(declare-fun b!3168354 () Bool)

(declare-fun tp!999035 () Bool)

(assert (=> b!3168354 (= e!1973420 tp!999035)))

(declare-fun b!3168352 () Bool)

(assert (=> b!3168352 (= e!1973420 tp_is_empty!17061)))

(assert (= (and b!3168065 ((_ is ElementMatch!9749) (reg!10078 (regOne!20011 r!13156)))) b!3168352))

(assert (= (and b!3168065 ((_ is Concat!15070) (reg!10078 (regOne!20011 r!13156)))) b!3168353))

(assert (= (and b!3168065 ((_ is Star!9749) (reg!10078 (regOne!20011 r!13156)))) b!3168354))

(assert (= (and b!3168065 ((_ is Union!9749) (reg!10078 (regOne!20011 r!13156)))) b!3168355))

(declare-fun mapNonEmpty!18917 () Bool)

(declare-fun mapRes!18917 () Bool)

(declare-fun tp!999043 () Bool)

(declare-fun e!1973422 () Bool)

(assert (=> mapNonEmpty!18917 (= mapRes!18917 (and tp!999043 e!1973422))))

(declare-fun mapValue!18917 () List!35585)

(declare-fun mapRest!18917 () (Array (_ BitVec 32) List!35585))

(declare-fun mapKey!18917 () (_ BitVec 32))

(assert (=> mapNonEmpty!18917 (= mapRest!18916 (store mapRest!18917 mapKey!18917 mapValue!18917))))

(declare-fun tp!999041 () Bool)

(declare-fun tp!999037 () Bool)

(declare-fun e!1973421 () Bool)

(declare-fun tp!999038 () Bool)

(declare-fun b!3168357 () Bool)

(assert (=> b!3168357 (= e!1973421 (and tp!999038 tp_is_empty!17061 tp!999041 tp!999037))))

(declare-fun tp!999042 () Bool)

(declare-fun tp!999040 () Bool)

(declare-fun b!3168356 () Bool)

(declare-fun tp!999039 () Bool)

(assert (=> b!3168356 (= e!1973422 (and tp!999042 tp_is_empty!17061 tp!999039 tp!999040))))

(declare-fun condMapEmpty!18917 () Bool)

(declare-fun mapDefault!18917 () List!35585)

(assert (=> mapNonEmpty!18916 (= condMapEmpty!18917 (= mapRest!18916 ((as const (Array (_ BitVec 32) List!35585)) mapDefault!18917)))))

(assert (=> mapNonEmpty!18916 (= tp!998869 (and e!1973421 mapRes!18917))))

(declare-fun mapIsEmpty!18917 () Bool)

(assert (=> mapIsEmpty!18917 mapRes!18917))

(assert (= (and mapNonEmpty!18916 condMapEmpty!18917) mapIsEmpty!18917))

(assert (= (and mapNonEmpty!18916 (not condMapEmpty!18917)) mapNonEmpty!18917))

(assert (= (and mapNonEmpty!18917 ((_ is Cons!35461) mapValue!18917)) b!3168356))

(assert (= (and mapNonEmpty!18916 ((_ is Cons!35461) mapDefault!18917)) b!3168357))

(declare-fun m!3429027 () Bool)

(assert (=> mapNonEmpty!18917 m!3429027))

(declare-fun e!1973423 () Bool)

(assert (=> b!3168066 (= tp!998894 e!1973423)))

(declare-fun b!3168359 () Bool)

(declare-fun tp!999046 () Bool)

(declare-fun tp!999048 () Bool)

(assert (=> b!3168359 (= e!1973423 (and tp!999046 tp!999048))))

(declare-fun b!3168361 () Bool)

(declare-fun tp!999045 () Bool)

(declare-fun tp!999044 () Bool)

(assert (=> b!3168361 (= e!1973423 (and tp!999045 tp!999044))))

(declare-fun b!3168360 () Bool)

(declare-fun tp!999047 () Bool)

(assert (=> b!3168360 (= e!1973423 tp!999047)))

(declare-fun b!3168358 () Bool)

(assert (=> b!3168358 (= e!1973423 tp_is_empty!17061)))

(assert (= (and b!3168066 ((_ is ElementMatch!9749) (regOne!20011 (regOne!20011 r!13156)))) b!3168358))

(assert (= (and b!3168066 ((_ is Concat!15070) (regOne!20011 (regOne!20011 r!13156)))) b!3168359))

(assert (= (and b!3168066 ((_ is Star!9749) (regOne!20011 (regOne!20011 r!13156)))) b!3168360))

(assert (= (and b!3168066 ((_ is Union!9749) (regOne!20011 (regOne!20011 r!13156)))) b!3168361))

(declare-fun e!1973424 () Bool)

(assert (=> b!3168066 (= tp!998893 e!1973424)))

(declare-fun b!3168363 () Bool)

(declare-fun tp!999051 () Bool)

(declare-fun tp!999053 () Bool)

(assert (=> b!3168363 (= e!1973424 (and tp!999051 tp!999053))))

(declare-fun b!3168365 () Bool)

(declare-fun tp!999050 () Bool)

(declare-fun tp!999049 () Bool)

(assert (=> b!3168365 (= e!1973424 (and tp!999050 tp!999049))))

(declare-fun b!3168364 () Bool)

(declare-fun tp!999052 () Bool)

(assert (=> b!3168364 (= e!1973424 tp!999052)))

(declare-fun b!3168362 () Bool)

(assert (=> b!3168362 (= e!1973424 tp_is_empty!17061)))

(assert (= (and b!3168066 ((_ is ElementMatch!9749) (regTwo!20011 (regOne!20011 r!13156)))) b!3168362))

(assert (= (and b!3168066 ((_ is Concat!15070) (regTwo!20011 (regOne!20011 r!13156)))) b!3168363))

(assert (= (and b!3168066 ((_ is Star!9749) (regTwo!20011 (regOne!20011 r!13156)))) b!3168364))

(assert (= (and b!3168066 ((_ is Union!9749) (regTwo!20011 (regOne!20011 r!13156)))) b!3168365))

(declare-fun e!1973425 () Bool)

(assert (=> b!3168042 (= tp!998868 e!1973425)))

(declare-fun b!3168367 () Bool)

(declare-fun tp!999056 () Bool)

(declare-fun tp!999058 () Bool)

(assert (=> b!3168367 (= e!1973425 (and tp!999056 tp!999058))))

(declare-fun b!3168369 () Bool)

(declare-fun tp!999055 () Bool)

(declare-fun tp!999054 () Bool)

(assert (=> b!3168369 (= e!1973425 (and tp!999055 tp!999054))))

(declare-fun b!3168368 () Bool)

(declare-fun tp!999057 () Bool)

(assert (=> b!3168368 (= e!1973425 tp!999057)))

(declare-fun b!3168366 () Bool)

(assert (=> b!3168366 (= e!1973425 tp_is_empty!17061)))

(assert (= (and b!3168042 ((_ is ElementMatch!9749) (_1!20430 (_1!20431 (h!40881 mapValue!18916))))) b!3168366))

(assert (= (and b!3168042 ((_ is Concat!15070) (_1!20430 (_1!20431 (h!40881 mapValue!18916))))) b!3168367))

(assert (= (and b!3168042 ((_ is Star!9749) (_1!20430 (_1!20431 (h!40881 mapValue!18916))))) b!3168368))

(assert (= (and b!3168042 ((_ is Union!9749) (_1!20430 (_1!20431 (h!40881 mapValue!18916))))) b!3168369))

(declare-fun e!1973426 () Bool)

(assert (=> b!3168042 (= tp!998865 e!1973426)))

(declare-fun b!3168371 () Bool)

(declare-fun tp!999061 () Bool)

(declare-fun tp!999063 () Bool)

(assert (=> b!3168371 (= e!1973426 (and tp!999061 tp!999063))))

(declare-fun b!3168373 () Bool)

(declare-fun tp!999060 () Bool)

(declare-fun tp!999059 () Bool)

(assert (=> b!3168373 (= e!1973426 (and tp!999060 tp!999059))))

(declare-fun b!3168372 () Bool)

(declare-fun tp!999062 () Bool)

(assert (=> b!3168372 (= e!1973426 tp!999062)))

(declare-fun b!3168370 () Bool)

(assert (=> b!3168370 (= e!1973426 tp_is_empty!17061)))

(assert (= (and b!3168042 ((_ is ElementMatch!9749) (_2!20431 (h!40881 mapValue!18916)))) b!3168370))

(assert (= (and b!3168042 ((_ is Concat!15070) (_2!20431 (h!40881 mapValue!18916)))) b!3168371))

(assert (= (and b!3168042 ((_ is Star!9749) (_2!20431 (h!40881 mapValue!18916)))) b!3168372))

(assert (= (and b!3168042 ((_ is Union!9749) (_2!20431 (h!40881 mapValue!18916)))) b!3168373))

(declare-fun tp!999065 () Bool)

(declare-fun tp!999066 () Bool)

(declare-fun tp!999064 () Bool)

(declare-fun b!3168374 () Bool)

(declare-fun e!1973427 () Bool)

(assert (=> b!3168374 (= e!1973427 (and tp!999064 tp_is_empty!17061 tp!999065 tp!999066))))

(assert (=> b!3168042 (= tp!998866 e!1973427)))

(assert (= (and b!3168042 ((_ is Cons!35461) (t!234666 mapValue!18916))) b!3168374))

(declare-fun e!1973428 () Bool)

(assert (=> b!3168061 (= tp!998891 e!1973428)))

(declare-fun b!3168376 () Bool)

(declare-fun tp!999069 () Bool)

(declare-fun tp!999071 () Bool)

(assert (=> b!3168376 (= e!1973428 (and tp!999069 tp!999071))))

(declare-fun b!3168378 () Bool)

(declare-fun tp!999068 () Bool)

(declare-fun tp!999067 () Bool)

(assert (=> b!3168378 (= e!1973428 (and tp!999068 tp!999067))))

(declare-fun b!3168377 () Bool)

(declare-fun tp!999070 () Bool)

(assert (=> b!3168377 (= e!1973428 tp!999070)))

(declare-fun b!3168375 () Bool)

(assert (=> b!3168375 (= e!1973428 tp_is_empty!17061)))

(assert (= (and b!3168061 ((_ is ElementMatch!9749) (reg!10078 (regTwo!20010 r!13156)))) b!3168375))

(assert (= (and b!3168061 ((_ is Concat!15070) (reg!10078 (regTwo!20010 r!13156)))) b!3168376))

(assert (= (and b!3168061 ((_ is Star!9749) (reg!10078 (regTwo!20010 r!13156)))) b!3168377))

(assert (= (and b!3168061 ((_ is Union!9749) (reg!10078 (regTwo!20010 r!13156)))) b!3168378))

(declare-fun e!1973429 () Bool)

(assert (=> b!3168072 (= tp!998905 e!1973429)))

(declare-fun b!3168380 () Bool)

(declare-fun tp!999074 () Bool)

(declare-fun tp!999076 () Bool)

(assert (=> b!3168380 (= e!1973429 (and tp!999074 tp!999076))))

(declare-fun b!3168382 () Bool)

(declare-fun tp!999073 () Bool)

(declare-fun tp!999072 () Bool)

(assert (=> b!3168382 (= e!1973429 (and tp!999073 tp!999072))))

(declare-fun b!3168381 () Bool)

(declare-fun tp!999075 () Bool)

(assert (=> b!3168381 (= e!1973429 tp!999075)))

(declare-fun b!3168379 () Bool)

(assert (=> b!3168379 (= e!1973429 tp_is_empty!17061)))

(assert (= (and b!3168072 ((_ is ElementMatch!9749) (regOne!20010 (reg!10078 r!13156)))) b!3168379))

(assert (= (and b!3168072 ((_ is Concat!15070) (regOne!20010 (reg!10078 r!13156)))) b!3168380))

(assert (= (and b!3168072 ((_ is Star!9749) (regOne!20010 (reg!10078 r!13156)))) b!3168381))

(assert (= (and b!3168072 ((_ is Union!9749) (regOne!20010 (reg!10078 r!13156)))) b!3168382))

(declare-fun e!1973430 () Bool)

(assert (=> b!3168072 (= tp!998907 e!1973430)))

(declare-fun b!3168384 () Bool)

(declare-fun tp!999079 () Bool)

(declare-fun tp!999081 () Bool)

(assert (=> b!3168384 (= e!1973430 (and tp!999079 tp!999081))))

(declare-fun b!3168386 () Bool)

(declare-fun tp!999078 () Bool)

(declare-fun tp!999077 () Bool)

(assert (=> b!3168386 (= e!1973430 (and tp!999078 tp!999077))))

(declare-fun b!3168385 () Bool)

(declare-fun tp!999080 () Bool)

(assert (=> b!3168385 (= e!1973430 tp!999080)))

(declare-fun b!3168383 () Bool)

(assert (=> b!3168383 (= e!1973430 tp_is_empty!17061)))

(assert (= (and b!3168072 ((_ is ElementMatch!9749) (regTwo!20010 (reg!10078 r!13156)))) b!3168383))

(assert (= (and b!3168072 ((_ is Concat!15070) (regTwo!20010 (reg!10078 r!13156)))) b!3168384))

(assert (= (and b!3168072 ((_ is Star!9749) (regTwo!20010 (reg!10078 r!13156)))) b!3168385))

(assert (= (and b!3168072 ((_ is Union!9749) (regTwo!20010 (reg!10078 r!13156)))) b!3168386))

(declare-fun e!1973431 () Bool)

(assert (=> b!3168068 (= tp!998900 e!1973431)))

(declare-fun b!3168388 () Bool)

(declare-fun tp!999084 () Bool)

(declare-fun tp!999086 () Bool)

(assert (=> b!3168388 (= e!1973431 (and tp!999084 tp!999086))))

(declare-fun b!3168390 () Bool)

(declare-fun tp!999083 () Bool)

(declare-fun tp!999082 () Bool)

(assert (=> b!3168390 (= e!1973431 (and tp!999083 tp!999082))))

(declare-fun b!3168389 () Bool)

(declare-fun tp!999085 () Bool)

(assert (=> b!3168389 (= e!1973431 tp!999085)))

(declare-fun b!3168387 () Bool)

(assert (=> b!3168387 (= e!1973431 tp_is_empty!17061)))

(assert (= (and b!3168068 ((_ is ElementMatch!9749) (regOne!20010 (regTwo!20011 r!13156)))) b!3168387))

(assert (= (and b!3168068 ((_ is Concat!15070) (regOne!20010 (regTwo!20011 r!13156)))) b!3168388))

(assert (= (and b!3168068 ((_ is Star!9749) (regOne!20010 (regTwo!20011 r!13156)))) b!3168389))

(assert (= (and b!3168068 ((_ is Union!9749) (regOne!20010 (regTwo!20011 r!13156)))) b!3168390))

(declare-fun e!1973432 () Bool)

(assert (=> b!3168068 (= tp!998902 e!1973432)))

(declare-fun b!3168392 () Bool)

(declare-fun tp!999089 () Bool)

(declare-fun tp!999091 () Bool)

(assert (=> b!3168392 (= e!1973432 (and tp!999089 tp!999091))))

(declare-fun b!3168394 () Bool)

(declare-fun tp!999088 () Bool)

(declare-fun tp!999087 () Bool)

(assert (=> b!3168394 (= e!1973432 (and tp!999088 tp!999087))))

(declare-fun b!3168393 () Bool)

(declare-fun tp!999090 () Bool)

(assert (=> b!3168393 (= e!1973432 tp!999090)))

(declare-fun b!3168391 () Bool)

(assert (=> b!3168391 (= e!1973432 tp_is_empty!17061)))

(assert (= (and b!3168068 ((_ is ElementMatch!9749) (regTwo!20010 (regTwo!20011 r!13156)))) b!3168391))

(assert (= (and b!3168068 ((_ is Concat!15070) (regTwo!20010 (regTwo!20011 r!13156)))) b!3168392))

(assert (= (and b!3168068 ((_ is Star!9749) (regTwo!20010 (regTwo!20011 r!13156)))) b!3168393))

(assert (= (and b!3168068 ((_ is Union!9749) (regTwo!20010 (regTwo!20011 r!13156)))) b!3168394))

(declare-fun e!1973433 () Bool)

(assert (=> b!3168044 (= tp!998870 e!1973433)))

(declare-fun b!3168396 () Bool)

(declare-fun tp!999094 () Bool)

(declare-fun tp!999096 () Bool)

(assert (=> b!3168396 (= e!1973433 (and tp!999094 tp!999096))))

(declare-fun b!3168398 () Bool)

(declare-fun tp!999093 () Bool)

(declare-fun tp!999092 () Bool)

(assert (=> b!3168398 (= e!1973433 (and tp!999093 tp!999092))))

(declare-fun b!3168397 () Bool)

(declare-fun tp!999095 () Bool)

(assert (=> b!3168397 (= e!1973433 tp!999095)))

(declare-fun b!3168395 () Bool)

(assert (=> b!3168395 (= e!1973433 tp_is_empty!17061)))

(assert (= (and b!3168044 ((_ is ElementMatch!9749) (_1!20430 (_1!20431 (h!40881 mapValue!18913))))) b!3168395))

(assert (= (and b!3168044 ((_ is Concat!15070) (_1!20430 (_1!20431 (h!40881 mapValue!18913))))) b!3168396))

(assert (= (and b!3168044 ((_ is Star!9749) (_1!20430 (_1!20431 (h!40881 mapValue!18913))))) b!3168397))

(assert (= (and b!3168044 ((_ is Union!9749) (_1!20430 (_1!20431 (h!40881 mapValue!18913))))) b!3168398))

(declare-fun e!1973434 () Bool)

(assert (=> b!3168044 (= tp!998871 e!1973434)))

(declare-fun b!3168400 () Bool)

(declare-fun tp!999099 () Bool)

(declare-fun tp!999101 () Bool)

(assert (=> b!3168400 (= e!1973434 (and tp!999099 tp!999101))))

(declare-fun b!3168402 () Bool)

(declare-fun tp!999098 () Bool)

(declare-fun tp!999097 () Bool)

(assert (=> b!3168402 (= e!1973434 (and tp!999098 tp!999097))))

(declare-fun b!3168401 () Bool)

(declare-fun tp!999100 () Bool)

(assert (=> b!3168401 (= e!1973434 tp!999100)))

(declare-fun b!3168399 () Bool)

(assert (=> b!3168399 (= e!1973434 tp_is_empty!17061)))

(assert (= (and b!3168044 ((_ is ElementMatch!9749) (_2!20431 (h!40881 mapValue!18913)))) b!3168399))

(assert (= (and b!3168044 ((_ is Concat!15070) (_2!20431 (h!40881 mapValue!18913)))) b!3168400))

(assert (= (and b!3168044 ((_ is Star!9749) (_2!20431 (h!40881 mapValue!18913)))) b!3168401))

(assert (= (and b!3168044 ((_ is Union!9749) (_2!20431 (h!40881 mapValue!18913)))) b!3168402))

(declare-fun e!1973435 () Bool)

(declare-fun tp!999103 () Bool)

(declare-fun tp!999104 () Bool)

(declare-fun b!3168403 () Bool)

(declare-fun tp!999102 () Bool)

(assert (=> b!3168403 (= e!1973435 (and tp!999102 tp_is_empty!17061 tp!999103 tp!999104))))

(assert (=> b!3168044 (= tp!998872 e!1973435)))

(assert (= (and b!3168044 ((_ is Cons!35461) (t!234666 mapValue!18913))) b!3168403))

(declare-fun e!1973436 () Bool)

(assert (=> b!3168034 (= tp!998843 e!1973436)))

(declare-fun b!3168405 () Bool)

(declare-fun tp!999107 () Bool)

(declare-fun tp!999109 () Bool)

(assert (=> b!3168405 (= e!1973436 (and tp!999107 tp!999109))))

(declare-fun b!3168407 () Bool)

(declare-fun tp!999106 () Bool)

(declare-fun tp!999105 () Bool)

(assert (=> b!3168407 (= e!1973436 (and tp!999106 tp!999105))))

(declare-fun b!3168406 () Bool)

(declare-fun tp!999108 () Bool)

(assert (=> b!3168406 (= e!1973436 tp!999108)))

(declare-fun b!3168404 () Bool)

(assert (=> b!3168404 (= e!1973436 tp_is_empty!17061)))

(assert (= (and b!3168034 ((_ is ElementMatch!9749) (_1!20430 (_1!20431 (h!40881 (minValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347))))))))))) b!3168404))

(assert (= (and b!3168034 ((_ is Concat!15070) (_1!20430 (_1!20431 (h!40881 (minValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347))))))))))) b!3168405))

(assert (= (and b!3168034 ((_ is Star!9749) (_1!20430 (_1!20431 (h!40881 (minValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347))))))))))) b!3168406))

(assert (= (and b!3168034 ((_ is Union!9749) (_1!20430 (_1!20431 (h!40881 (minValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347))))))))))) b!3168407))

(declare-fun e!1973437 () Bool)

(assert (=> b!3168034 (= tp!998844 e!1973437)))

(declare-fun b!3168409 () Bool)

(declare-fun tp!999112 () Bool)

(declare-fun tp!999114 () Bool)

(assert (=> b!3168409 (= e!1973437 (and tp!999112 tp!999114))))

(declare-fun b!3168411 () Bool)

(declare-fun tp!999111 () Bool)

(declare-fun tp!999110 () Bool)

(assert (=> b!3168411 (= e!1973437 (and tp!999111 tp!999110))))

(declare-fun b!3168410 () Bool)

(declare-fun tp!999113 () Bool)

(assert (=> b!3168410 (= e!1973437 tp!999113)))

(declare-fun b!3168408 () Bool)

(assert (=> b!3168408 (= e!1973437 tp_is_empty!17061)))

(assert (= (and b!3168034 ((_ is ElementMatch!9749) (_2!20431 (h!40881 (minValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347)))))))))) b!3168408))

(assert (= (and b!3168034 ((_ is Concat!15070) (_2!20431 (h!40881 (minValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347)))))))))) b!3168409))

(assert (= (and b!3168034 ((_ is Star!9749) (_2!20431 (h!40881 (minValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347)))))))))) b!3168410))

(assert (= (and b!3168034 ((_ is Union!9749) (_2!20431 (h!40881 (minValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347)))))))))) b!3168411))

(declare-fun tp!999115 () Bool)

(declare-fun tp!999117 () Bool)

(declare-fun tp!999116 () Bool)

(declare-fun e!1973438 () Bool)

(declare-fun b!3168412 () Bool)

(assert (=> b!3168412 (= e!1973438 (and tp!999115 tp_is_empty!17061 tp!999116 tp!999117))))

(assert (=> b!3168034 (= tp!998845 e!1973438)))

(assert (= (and b!3168034 ((_ is Cons!35461) (t!234666 (minValue!4429 (v!35167 (underlying!8569 (v!35168 (underlying!8570 (cache!4221 cache!347))))))))) b!3168412))

(declare-fun b_lambda!86447 () Bool)

(assert (= b_lambda!86443 (or (and b!3167938 b_free!83161) b_lambda!86447)))

(declare-fun b_lambda!86449 () Bool)

(assert (= b_lambda!86445 (or (and b!3167938 b_free!83161) b_lambda!86449)))

(check-sat (not b!3168282) (not b!3168359) tp_is_empty!17061 (not b!3168400) (not d!869044) (not b!3168345) (not tb!155105) (not b!3168354) (not b!3168315) (not b!3168318) (not b!3168384) (not b!3168327) (not b!3168133) (not b!3168343) (not b!3168393) (not b!3168313) (not b!3168280) (not bm!229885) (not b!3168392) (not b!3168369) (not bm!229864) (not b!3168107) (not bm!229873) (not b!3168319) (not b!3168303) (not b!3168300) (not bm!229870) (not b!3168385) (not b!3168296) (not b!3168405) (not b!3168185) (not b!3168310) (not b!3168305) (not b!3168204) (not b!3168297) (not b!3168394) (not b!3168276) (not b!3168388) (not b!3168314) (not d!869048) (not bm!229883) (not b!3168260) (not b!3168367) (not bm!229878) (not b!3168301) (not b!3168357) (not b!3168356) (not b!3168349) (not b!3168363) (not b!3168278) (not b!3168333) (not b!3168258) (not b!3168389) (not b!3168291) (not bm!229846) (not bm!229865) (not bm!229871) (not d!869058) (not b!3168172) (not bm!229879) (not b!3168338) (not b!3168289) (not b!3168326) (not b!3168355) (not mapNonEmpty!18917) (not b!3168409) (not b!3168321) (not b!3168309) (not b!3168188) (not b!3168307) (not bm!229849) (not b!3168288) (not b!3168272) (not b!3168331) (not b!3168263) (not b!3168266) (not d!869052) (not d!869040) (not b!3168292) (not b!3168365) (not b!3168284) (not b!3168270) (not b!3168271) (not bm!229845) (not b!3168403) (not bm!229882) (not b!3168360) (not b!3168361) (not b!3168323) (not b!3168390) (not b!3168376) (not b!3168334) (not b!3168298) (not bm!229848) (not b_next!83867) (not b!3168373) (not b!3168337) (not b!3168279) (not b!3168325) (not b!3168412) (not b!3168205) (not b!3168285) (not b!3168351) (not bm!229868) (not b!3168322) (not b!3168173) b_and!209441 (not b!3168380) (not b!3168102) (not b!3168329) (not b!3168407) (not b!3168402) (not bm!229858) (not b!3168372) (not b!3168382) (not b!3168374) (not b!3168401) (not b!3168339) (not b!3168377) (not bm!229880) (not b!3168347) (not b!3168398) (not b_next!83865) (not b!3168283) (not b!3168302) (not d!869054) (not b!3168317) (not b!3168294) (not b!3168287) (not b!3168101) (not bm!229862) (not bm!229867) (not b!3168346) (not b!3168364) b_and!209437 (not b!3168396) (not b!3168410) (not b!3168371) (not b!3168378) (not b!3168293) (not b!3168097) (not b!3168353) (not b!3168259) (not bm!229859) (not b!3168350) (not b!3168335) (not b!3168311) (not b!3168342) (not b!3168154) (not b!3168397) (not b_lambda!86449) (not b!3168169) (not b!3168264) (not b!3168275) (not b!3168267) (not b!3168195) (not b!3168341) (not b!3168381) (not b!3168268) (not b!3168306) (not b!3168274) (not bm!229844) (not bm!229847) (not b_lambda!86447) (not b!3168262) (not b!3168330) (not b!3168099) (not b!3168187) (not b!3168386) (not b!3168368) (not b!3168411) (not b!3168406))
(check-sat b_and!209441 b_and!209437 (not b_next!83867) (not b_next!83865))
