; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!268184 () Bool)

(assert start!268184)

(declare-fun b!2772222 () Bool)

(declare-fun b_free!78197 () Bool)

(declare-fun b_next!78901 () Bool)

(assert (=> b!2772222 (= b_free!78197 (not b_next!78901))))

(declare-fun tp!876253 () Bool)

(declare-fun b_and!202935 () Bool)

(assert (=> b!2772222 (= tp!876253 b_and!202935)))

(declare-fun b!2772216 () Bool)

(declare-fun b_free!78199 () Bool)

(declare-fun b_next!78903 () Bool)

(assert (=> b!2772216 (= b_free!78199 (not b_next!78903))))

(declare-fun tp!876263 () Bool)

(declare-fun b_and!202937 () Bool)

(assert (=> b!2772216 (= tp!876263 b_and!202937)))

(declare-fun b!2772223 () Bool)

(declare-fun b_free!78201 () Bool)

(declare-fun b_next!78905 () Bool)

(assert (=> b!2772223 (= b_free!78201 (not b_next!78905))))

(declare-fun tp!876257 () Bool)

(declare-fun b_and!202939 () Bool)

(assert (=> b!2772223 (= tp!876257 b_and!202939)))

(declare-fun b!2772227 () Bool)

(declare-fun b_free!78203 () Bool)

(declare-fun b_next!78907 () Bool)

(assert (=> b!2772227 (= b_free!78203 (not b_next!78907))))

(declare-fun tp!876261 () Bool)

(declare-fun b_and!202941 () Bool)

(assert (=> b!2772227 (= tp!876261 b_and!202941)))

(declare-fun b!2772212 () Bool)

(declare-fun res!1159025 () Bool)

(declare-fun e!1747911 () Bool)

(assert (=> b!2772212 (=> (not res!1159025) (not e!1747911))))

(declare-datatypes ((C!16316 0))(
  ( (C!16317 (val!10092 Int)) )
))
(declare-datatypes ((Regex!8079 0))(
  ( (ElementMatch!8079 (c!450253 C!16316)) (Concat!13167 (regOne!16670 Regex!8079) (regTwo!16670 Regex!8079)) (EmptyExpr!8079) (Star!8079 (reg!8408 Regex!8079)) (EmptyLang!8079) (Union!8079 (regOne!16671 Regex!8079) (regTwo!16671 Regex!8079)) )
))
(declare-datatypes ((List!32080 0))(
  ( (Nil!31980) (Cons!31980 (h!37400 Regex!8079) (t!228208 List!32080)) )
))
(declare-datatypes ((Context!4594 0))(
  ( (Context!4595 (exprs!2797 List!32080)) )
))
(declare-datatypes ((array!13408 0))(
  ( (array!13409 (arr!5978 (Array (_ BitVec 32) (_ BitVec 64))) (size!24755 (_ BitVec 32))) )
))
(declare-datatypes ((tuple3!4812 0))(
  ( (tuple3!4813 (_1!18940 Regex!8079) (_2!18940 Context!4594) (_3!2876 C!16316)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!32128 0))(
  ( (tuple2!32129 (_1!18941 tuple3!4812) (_2!18941 (InoxSet Context!4594))) )
))
(declare-datatypes ((List!32081 0))(
  ( (Nil!31981) (Cons!31981 (h!37401 tuple2!32128) (t!228209 List!32081)) )
))
(declare-datatypes ((array!13410 0))(
  ( (array!13411 (arr!5979 (Array (_ BitVec 32) List!32081)) (size!24756 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7532 0))(
  ( (LongMapFixedSize!7533 (defaultEntry!4151 Int) (mask!9542 (_ BitVec 32)) (extraKeys!4015 (_ BitVec 32)) (zeroValue!4025 List!32081) (minValue!4025 List!32081) (_size!7575 (_ BitVec 32)) (_keys!4066 array!13408) (_values!4047 array!13410) (_vacant!3827 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14873 0))(
  ( (Cell!14874 (v!33588 LongMapFixedSize!7532)) )
))
(declare-datatypes ((MutLongMap!3766 0))(
  ( (LongMap!3766 (underlying!7735 Cell!14873)) (MutLongMapExt!3765 (__x!20948 Int)) )
))
(declare-datatypes ((Cell!14875 0))(
  ( (Cell!14876 (v!33589 MutLongMap!3766)) )
))
(declare-datatypes ((Hashable!3682 0))(
  ( (HashableExt!3681 (__x!20949 Int)) )
))
(declare-datatypes ((MutableMap!3672 0))(
  ( (MutableMapExt!3671 (__x!20950 Int)) (HashMap!3672 (underlying!7736 Cell!14875) (hashF!5714 Hashable!3682) (_size!7576 (_ BitVec 32)) (defaultValue!3843 Int)) )
))
(declare-datatypes ((CacheDown!2498 0))(
  ( (CacheDown!2499 (cache!3815 MutableMap!3672)) )
))
(declare-fun cacheDown!939 () CacheDown!2498)

(declare-fun valid!2939 (CacheDown!2498) Bool)

(assert (=> b!2772212 (= res!1159025 (valid!2939 cacheDown!939))))

(declare-fun b!2772213 () Bool)

(declare-fun e!1747906 () Bool)

(declare-fun e!1747915 () Bool)

(declare-datatypes ((tuple2!32130 0))(
  ( (tuple2!32131 (_1!18942 Context!4594) (_2!18942 C!16316)) )
))
(declare-datatypes ((tuple2!32132 0))(
  ( (tuple2!32133 (_1!18943 tuple2!32130) (_2!18943 (InoxSet Context!4594))) )
))
(declare-datatypes ((List!32082 0))(
  ( (Nil!31982) (Cons!31982 (h!37402 tuple2!32132) (t!228210 List!32082)) )
))
(declare-datatypes ((array!13412 0))(
  ( (array!13413 (arr!5980 (Array (_ BitVec 32) List!32082)) (size!24757 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7534 0))(
  ( (LongMapFixedSize!7535 (defaultEntry!4152 Int) (mask!9543 (_ BitVec 32)) (extraKeys!4016 (_ BitVec 32)) (zeroValue!4026 List!32082) (minValue!4026 List!32082) (_size!7577 (_ BitVec 32)) (_keys!4067 array!13408) (_values!4048 array!13412) (_vacant!3828 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!14877 0))(
  ( (Cell!14878 (v!33590 LongMapFixedSize!7534)) )
))
(declare-datatypes ((MutLongMap!3767 0))(
  ( (LongMap!3767 (underlying!7737 Cell!14877)) (MutLongMapExt!3766 (__x!20951 Int)) )
))
(declare-fun lt!988173 () MutLongMap!3767)

(get-info :version)

(assert (=> b!2772213 (= e!1747906 (and e!1747915 ((_ is LongMap!3767) lt!988173)))))

(declare-datatypes ((Hashable!3683 0))(
  ( (HashableExt!3682 (__x!20952 Int)) )
))
(declare-datatypes ((Cell!14879 0))(
  ( (Cell!14880 (v!33591 MutLongMap!3767)) )
))
(declare-datatypes ((MutableMap!3673 0))(
  ( (MutableMapExt!3672 (__x!20953 Int)) (HashMap!3673 (underlying!7738 Cell!14879) (hashF!5715 Hashable!3683) (_size!7578 (_ BitVec 32)) (defaultValue!3844 Int)) )
))
(declare-datatypes ((CacheUp!2378 0))(
  ( (CacheUp!2379 (cache!3816 MutableMap!3673)) )
))
(declare-fun cacheUp!820 () CacheUp!2378)

(assert (=> b!2772213 (= lt!988173 (v!33591 (underlying!7738 (cache!3816 cacheUp!820))))))

(declare-fun b!2772214 () Bool)

(declare-fun e!1747920 () Bool)

(declare-fun e!1747912 () Bool)

(assert (=> b!2772214 (= e!1747920 e!1747912)))

(declare-fun b!2772215 () Bool)

(declare-fun e!1747908 () Bool)

(assert (=> b!2772215 (= e!1747915 e!1747908)))

(declare-fun e!1747910 () Bool)

(assert (=> b!2772216 (= e!1747910 (and e!1747906 tp!876263))))

(declare-fun mapIsEmpty!17197 () Bool)

(declare-fun mapRes!17198 () Bool)

(assert (=> mapIsEmpty!17197 mapRes!17198))

(declare-fun b!2772217 () Bool)

(declare-fun e!1747914 () Bool)

(declare-fun tp!876259 () Bool)

(declare-fun mapRes!17197 () Bool)

(assert (=> b!2772217 (= e!1747914 (and tp!876259 mapRes!17197))))

(declare-fun condMapEmpty!17198 () Bool)

(declare-fun mapDefault!17197 () List!32081)

(assert (=> b!2772217 (= condMapEmpty!17198 (= (arr!5979 (_values!4047 (v!33588 (underlying!7735 (v!33589 (underlying!7736 (cache!3815 cacheDown!939))))))) ((as const (Array (_ BitVec 32) List!32081)) mapDefault!17197)))))

(declare-fun mapIsEmpty!17198 () Bool)

(assert (=> mapIsEmpty!17198 mapRes!17197))

(declare-fun b!2772218 () Bool)

(declare-fun e!1747922 () Bool)

(assert (=> b!2772218 (= e!1747922 e!1747920)))

(declare-fun b!2772219 () Bool)

(declare-fun e!1747921 () Bool)

(declare-fun lt!988176 () MutLongMap!3766)

(assert (=> b!2772219 (= e!1747921 (and e!1747922 ((_ is LongMap!3766) lt!988176)))))

(assert (=> b!2772219 (= lt!988176 (v!33589 (underlying!7736 (cache!3815 cacheDown!939))))))

(declare-fun b!2772220 () Bool)

(declare-datatypes ((List!32083 0))(
  ( (Nil!31983) (Cons!31983 (h!37403 C!16316) (t!228211 List!32083)) )
))
(declare-fun lt!988175 () List!32083)

(declare-fun ++!7914 (List!32083 List!32083) List!32083)

(assert (=> b!2772220 (= e!1747911 (not (= (++!7914 Nil!31983 lt!988175) lt!988175)))))

(declare-fun lt!988174 () Int)

(declare-datatypes ((IArray!19925 0))(
  ( (IArray!19926 (innerList!10020 List!32083)) )
))
(declare-datatypes ((Conc!9960 0))(
  ( (Node!9960 (left!24385 Conc!9960) (right!24715 Conc!9960) (csize!20150 Int) (cheight!10171 Int)) (Leaf!15168 (xs!13070 IArray!19925) (csize!20151 Int)) (Empty!9960) )
))
(declare-datatypes ((BalanceConc!19534 0))(
  ( (BalanceConc!19535 (c!450254 Conc!9960)) )
))
(declare-fun input!5495 () BalanceConc!19534)

(declare-fun size!24758 (BalanceConc!19534) Int)

(assert (=> b!2772220 (= lt!988174 (size!24758 input!5495))))

(declare-fun list!12072 (BalanceConc!19534) List!32083)

(assert (=> b!2772220 (= lt!988175 (list!12072 input!5495))))

(declare-fun mapNonEmpty!17197 () Bool)

(declare-fun tp!876256 () Bool)

(declare-fun tp!876255 () Bool)

(assert (=> mapNonEmpty!17197 (= mapRes!17198 (and tp!876256 tp!876255))))

(declare-fun mapKey!17197 () (_ BitVec 32))

(declare-fun mapValue!17198 () List!32082)

(declare-fun mapRest!17198 () (Array (_ BitVec 32) List!32082))

(assert (=> mapNonEmpty!17197 (= (arr!5980 (_values!4048 (v!33590 (underlying!7737 (v!33591 (underlying!7738 (cache!3816 cacheUp!820))))))) (store mapRest!17198 mapKey!17197 mapValue!17198))))

(declare-fun b!2772221 () Bool)

(declare-fun e!1747919 () Bool)

(declare-fun tp!876252 () Bool)

(declare-fun inv!43427 (Conc!9960) Bool)

(assert (=> b!2772221 (= e!1747919 (and (inv!43427 (c!450254 input!5495)) tp!876252))))

(declare-fun e!1747918 () Bool)

(assert (=> b!2772222 (= e!1747918 (and e!1747921 tp!876253))))

(declare-fun tp!876262 () Bool)

(declare-fun e!1747916 () Bool)

(declare-fun tp!876250 () Bool)

(declare-fun e!1747907 () Bool)

(declare-fun array_inv!4276 (array!13408) Bool)

(declare-fun array_inv!4277 (array!13412) Bool)

(assert (=> b!2772223 (= e!1747916 (and tp!876257 tp!876262 tp!876250 (array_inv!4276 (_keys!4067 (v!33590 (underlying!7737 (v!33591 (underlying!7738 (cache!3816 cacheUp!820))))))) (array_inv!4277 (_values!4048 (v!33590 (underlying!7737 (v!33591 (underlying!7738 (cache!3816 cacheUp!820))))))) e!1747907))))

(declare-fun b!2772224 () Bool)

(declare-fun e!1747909 () Bool)

(assert (=> b!2772224 (= e!1747909 e!1747918)))

(declare-fun b!2772225 () Bool)

(assert (=> b!2772225 (= e!1747908 e!1747916)))

(declare-fun mapNonEmpty!17198 () Bool)

(declare-fun tp!876260 () Bool)

(declare-fun tp!876251 () Bool)

(assert (=> mapNonEmpty!17198 (= mapRes!17197 (and tp!876260 tp!876251))))

(declare-fun mapKey!17198 () (_ BitVec 32))

(declare-fun mapValue!17197 () List!32081)

(declare-fun mapRest!17197 () (Array (_ BitVec 32) List!32081))

(assert (=> mapNonEmpty!17198 (= (arr!5979 (_values!4047 (v!33588 (underlying!7735 (v!33589 (underlying!7736 (cache!3815 cacheDown!939))))))) (store mapRest!17197 mapKey!17198 mapValue!17197))))

(declare-fun b!2772226 () Bool)

(declare-fun tp!876264 () Bool)

(assert (=> b!2772226 (= e!1747907 (and tp!876264 mapRes!17198))))

(declare-fun condMapEmpty!17197 () Bool)

(declare-fun mapDefault!17198 () List!32082)

(assert (=> b!2772226 (= condMapEmpty!17197 (= (arr!5980 (_values!4048 (v!33590 (underlying!7737 (v!33591 (underlying!7738 (cache!3816 cacheUp!820))))))) ((as const (Array (_ BitVec 32) List!32082)) mapDefault!17198)))))

(declare-fun tp!876258 () Bool)

(declare-fun tp!876254 () Bool)

(declare-fun array_inv!4278 (array!13410) Bool)

(assert (=> b!2772227 (= e!1747912 (and tp!876261 tp!876254 tp!876258 (array_inv!4276 (_keys!4066 (v!33588 (underlying!7735 (v!33589 (underlying!7736 (cache!3815 cacheDown!939))))))) (array_inv!4278 (_values!4047 (v!33588 (underlying!7735 (v!33589 (underlying!7736 (cache!3815 cacheDown!939))))))) e!1747914))))

(declare-fun res!1159024 () Bool)

(assert (=> start!268184 (=> (not res!1159024) (not e!1747911))))

(declare-fun valid!2940 (CacheUp!2378) Bool)

(assert (=> start!268184 (= res!1159024 (valid!2940 cacheUp!820))))

(assert (=> start!268184 e!1747911))

(declare-fun e!1747917 () Bool)

(declare-fun inv!43428 (CacheUp!2378) Bool)

(assert (=> start!268184 (and (inv!43428 cacheUp!820) e!1747917)))

(declare-fun inv!43429 (CacheDown!2498) Bool)

(assert (=> start!268184 (and (inv!43429 cacheDown!939) e!1747909)))

(declare-fun inv!43430 (BalanceConc!19534) Bool)

(assert (=> start!268184 (and (inv!43430 input!5495) e!1747919)))

(declare-fun b!2772228 () Bool)

(assert (=> b!2772228 (= e!1747917 e!1747910)))

(assert (= (and start!268184 res!1159024) b!2772212))

(assert (= (and b!2772212 res!1159025) b!2772220))

(assert (= (and b!2772226 condMapEmpty!17197) mapIsEmpty!17197))

(assert (= (and b!2772226 (not condMapEmpty!17197)) mapNonEmpty!17197))

(assert (= b!2772223 b!2772226))

(assert (= b!2772225 b!2772223))

(assert (= b!2772215 b!2772225))

(assert (= (and b!2772213 ((_ is LongMap!3767) (v!33591 (underlying!7738 (cache!3816 cacheUp!820))))) b!2772215))

(assert (= b!2772216 b!2772213))

(assert (= (and b!2772228 ((_ is HashMap!3673) (cache!3816 cacheUp!820))) b!2772216))

(assert (= start!268184 b!2772228))

(assert (= (and b!2772217 condMapEmpty!17198) mapIsEmpty!17198))

(assert (= (and b!2772217 (not condMapEmpty!17198)) mapNonEmpty!17198))

(assert (= b!2772227 b!2772217))

(assert (= b!2772214 b!2772227))

(assert (= b!2772218 b!2772214))

(assert (= (and b!2772219 ((_ is LongMap!3766) (v!33589 (underlying!7736 (cache!3815 cacheDown!939))))) b!2772218))

(assert (= b!2772222 b!2772219))

(assert (= (and b!2772224 ((_ is HashMap!3672) (cache!3815 cacheDown!939))) b!2772222))

(assert (= start!268184 b!2772224))

(assert (= start!268184 b!2772221))

(declare-fun m!3199291 () Bool)

(assert (=> start!268184 m!3199291))

(declare-fun m!3199293 () Bool)

(assert (=> start!268184 m!3199293))

(declare-fun m!3199295 () Bool)

(assert (=> start!268184 m!3199295))

(declare-fun m!3199297 () Bool)

(assert (=> start!268184 m!3199297))

(declare-fun m!3199299 () Bool)

(assert (=> b!2772221 m!3199299))

(declare-fun m!3199301 () Bool)

(assert (=> mapNonEmpty!17198 m!3199301))

(declare-fun m!3199303 () Bool)

(assert (=> b!2772227 m!3199303))

(declare-fun m!3199305 () Bool)

(assert (=> b!2772227 m!3199305))

(declare-fun m!3199307 () Bool)

(assert (=> mapNonEmpty!17197 m!3199307))

(declare-fun m!3199309 () Bool)

(assert (=> b!2772220 m!3199309))

(declare-fun m!3199311 () Bool)

(assert (=> b!2772220 m!3199311))

(declare-fun m!3199313 () Bool)

(assert (=> b!2772220 m!3199313))

(declare-fun m!3199315 () Bool)

(assert (=> b!2772212 m!3199315))

(declare-fun m!3199317 () Bool)

(assert (=> b!2772223 m!3199317))

(declare-fun m!3199319 () Bool)

(assert (=> b!2772223 m!3199319))

(check-sat (not b_next!78903) (not b!2772223) (not b!2772227) (not b_next!78905) b_and!202935 (not b!2772221) (not mapNonEmpty!17197) b_and!202939 b_and!202941 (not mapNonEmpty!17198) (not b!2772212) (not b_next!78907) (not start!268184) (not b!2772217) (not b!2772220) b_and!202937 (not b_next!78901) (not b!2772226))
(check-sat (not b_next!78903) (not b_next!78905) b_and!202935 b_and!202939 b_and!202937 b_and!202941 (not b_next!78901) (not b_next!78907))
(get-model)

(declare-fun d!806232 () Bool)

(assert (=> d!806232 (= (array_inv!4276 (_keys!4066 (v!33588 (underlying!7735 (v!33589 (underlying!7736 (cache!3815 cacheDown!939))))))) (bvsge (size!24755 (_keys!4066 (v!33588 (underlying!7735 (v!33589 (underlying!7736 (cache!3815 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2772227 d!806232))

(declare-fun d!806234 () Bool)

(assert (=> d!806234 (= (array_inv!4278 (_values!4047 (v!33588 (underlying!7735 (v!33589 (underlying!7736 (cache!3815 cacheDown!939))))))) (bvsge (size!24756 (_values!4047 (v!33588 (underlying!7735 (v!33589 (underlying!7736 (cache!3815 cacheDown!939))))))) #b00000000000000000000000000000000))))

(assert (=> b!2772227 d!806234))

(declare-fun d!806236 () Bool)

(assert (=> d!806236 (= (array_inv!4276 (_keys!4067 (v!33590 (underlying!7737 (v!33591 (underlying!7738 (cache!3816 cacheUp!820))))))) (bvsge (size!24755 (_keys!4067 (v!33590 (underlying!7737 (v!33591 (underlying!7738 (cache!3816 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2772223 d!806236))

(declare-fun d!806238 () Bool)

(assert (=> d!806238 (= (array_inv!4277 (_values!4048 (v!33590 (underlying!7737 (v!33591 (underlying!7738 (cache!3816 cacheUp!820))))))) (bvsge (size!24757 (_values!4048 (v!33590 (underlying!7737 (v!33591 (underlying!7738 (cache!3816 cacheUp!820))))))) #b00000000000000000000000000000000))))

(assert (=> b!2772223 d!806238))

(declare-fun b!2772239 () Bool)

(declare-fun res!1159031 () Bool)

(declare-fun e!1747927 () Bool)

(assert (=> b!2772239 (=> (not res!1159031) (not e!1747927))))

(declare-fun lt!988179 () List!32083)

(declare-fun size!24759 (List!32083) Int)

(assert (=> b!2772239 (= res!1159031 (= (size!24759 lt!988179) (+ (size!24759 Nil!31983) (size!24759 lt!988175))))))

(declare-fun b!2772238 () Bool)

(declare-fun e!1747928 () List!32083)

(assert (=> b!2772238 (= e!1747928 (Cons!31983 (h!37403 Nil!31983) (++!7914 (t!228211 Nil!31983) lt!988175)))))

(declare-fun b!2772237 () Bool)

(assert (=> b!2772237 (= e!1747928 lt!988175)))

(declare-fun b!2772240 () Bool)

(assert (=> b!2772240 (= e!1747927 (or (not (= lt!988175 Nil!31983)) (= lt!988179 Nil!31983)))))

(declare-fun d!806240 () Bool)

(assert (=> d!806240 e!1747927))

(declare-fun res!1159030 () Bool)

(assert (=> d!806240 (=> (not res!1159030) (not e!1747927))))

(declare-fun content!4502 (List!32083) (InoxSet C!16316))

(assert (=> d!806240 (= res!1159030 (= (content!4502 lt!988179) ((_ map or) (content!4502 Nil!31983) (content!4502 lt!988175))))))

(assert (=> d!806240 (= lt!988179 e!1747928)))

(declare-fun c!450257 () Bool)

(assert (=> d!806240 (= c!450257 ((_ is Nil!31983) Nil!31983))))

(assert (=> d!806240 (= (++!7914 Nil!31983 lt!988175) lt!988179)))

(assert (= (and d!806240 c!450257) b!2772237))

(assert (= (and d!806240 (not c!450257)) b!2772238))

(assert (= (and d!806240 res!1159030) b!2772239))

(assert (= (and b!2772239 res!1159031) b!2772240))

(declare-fun m!3199321 () Bool)

(assert (=> b!2772239 m!3199321))

(declare-fun m!3199323 () Bool)

(assert (=> b!2772239 m!3199323))

(declare-fun m!3199325 () Bool)

(assert (=> b!2772239 m!3199325))

(declare-fun m!3199327 () Bool)

(assert (=> b!2772238 m!3199327))

(declare-fun m!3199329 () Bool)

(assert (=> d!806240 m!3199329))

(declare-fun m!3199331 () Bool)

(assert (=> d!806240 m!3199331))

(declare-fun m!3199333 () Bool)

(assert (=> d!806240 m!3199333))

(assert (=> b!2772220 d!806240))

(declare-fun d!806242 () Bool)

(declare-fun lt!988182 () Int)

(assert (=> d!806242 (= lt!988182 (size!24759 (list!12072 input!5495)))))

(declare-fun size!24760 (Conc!9960) Int)

(assert (=> d!806242 (= lt!988182 (size!24760 (c!450254 input!5495)))))

(assert (=> d!806242 (= (size!24758 input!5495) lt!988182)))

(declare-fun bs!505198 () Bool)

(assert (= bs!505198 d!806242))

(assert (=> bs!505198 m!3199313))

(assert (=> bs!505198 m!3199313))

(declare-fun m!3199335 () Bool)

(assert (=> bs!505198 m!3199335))

(declare-fun m!3199337 () Bool)

(assert (=> bs!505198 m!3199337))

(assert (=> b!2772220 d!806242))

(declare-fun d!806244 () Bool)

(declare-fun list!12073 (Conc!9960) List!32083)

(assert (=> d!806244 (= (list!12072 input!5495) (list!12073 (c!450254 input!5495)))))

(declare-fun bs!505199 () Bool)

(assert (= bs!505199 d!806244))

(declare-fun m!3199339 () Bool)

(assert (=> bs!505199 m!3199339))

(assert (=> b!2772220 d!806244))

(declare-fun d!806246 () Bool)

(declare-fun validCacheMapDown!394 (MutableMap!3672) Bool)

(assert (=> d!806246 (= (valid!2939 cacheDown!939) (validCacheMapDown!394 (cache!3815 cacheDown!939)))))

(declare-fun bs!505200 () Bool)

(assert (= bs!505200 d!806246))

(declare-fun m!3199341 () Bool)

(assert (=> bs!505200 m!3199341))

(assert (=> b!2772212 d!806246))

(declare-fun d!806248 () Bool)

(declare-fun validCacheMapUp!363 (MutableMap!3673) Bool)

(assert (=> d!806248 (= (valid!2940 cacheUp!820) (validCacheMapUp!363 (cache!3816 cacheUp!820)))))

(declare-fun bs!505201 () Bool)

(assert (= bs!505201 d!806248))

(declare-fun m!3199343 () Bool)

(assert (=> bs!505201 m!3199343))

(assert (=> start!268184 d!806248))

(declare-fun d!806250 () Bool)

(declare-fun res!1159034 () Bool)

(declare-fun e!1747931 () Bool)

(assert (=> d!806250 (=> (not res!1159034) (not e!1747931))))

(assert (=> d!806250 (= res!1159034 ((_ is HashMap!3673) (cache!3816 cacheUp!820)))))

(assert (=> d!806250 (= (inv!43428 cacheUp!820) e!1747931)))

(declare-fun b!2772243 () Bool)

(assert (=> b!2772243 (= e!1747931 (validCacheMapUp!363 (cache!3816 cacheUp!820)))))

(assert (= (and d!806250 res!1159034) b!2772243))

(assert (=> b!2772243 m!3199343))

(assert (=> start!268184 d!806250))

(declare-fun d!806252 () Bool)

(declare-fun res!1159037 () Bool)

(declare-fun e!1747934 () Bool)

(assert (=> d!806252 (=> (not res!1159037) (not e!1747934))))

(assert (=> d!806252 (= res!1159037 ((_ is HashMap!3672) (cache!3815 cacheDown!939)))))

(assert (=> d!806252 (= (inv!43429 cacheDown!939) e!1747934)))

(declare-fun b!2772246 () Bool)

(assert (=> b!2772246 (= e!1747934 (validCacheMapDown!394 (cache!3815 cacheDown!939)))))

(assert (= (and d!806252 res!1159037) b!2772246))

(assert (=> b!2772246 m!3199341))

(assert (=> start!268184 d!806252))

(declare-fun d!806254 () Bool)

(declare-fun isBalanced!3038 (Conc!9960) Bool)

(assert (=> d!806254 (= (inv!43430 input!5495) (isBalanced!3038 (c!450254 input!5495)))))

(declare-fun bs!505202 () Bool)

(assert (= bs!505202 d!806254))

(declare-fun m!3199345 () Bool)

(assert (=> bs!505202 m!3199345))

(assert (=> start!268184 d!806254))

(declare-fun d!806256 () Bool)

(declare-fun c!450260 () Bool)

(assert (=> d!806256 (= c!450260 ((_ is Node!9960) (c!450254 input!5495)))))

(declare-fun e!1747939 () Bool)

(assert (=> d!806256 (= (inv!43427 (c!450254 input!5495)) e!1747939)))

(declare-fun b!2772253 () Bool)

(declare-fun inv!43431 (Conc!9960) Bool)

(assert (=> b!2772253 (= e!1747939 (inv!43431 (c!450254 input!5495)))))

(declare-fun b!2772254 () Bool)

(declare-fun e!1747940 () Bool)

(assert (=> b!2772254 (= e!1747939 e!1747940)))

(declare-fun res!1159040 () Bool)

(assert (=> b!2772254 (= res!1159040 (not ((_ is Leaf!15168) (c!450254 input!5495))))))

(assert (=> b!2772254 (=> res!1159040 e!1747940)))

(declare-fun b!2772255 () Bool)

(declare-fun inv!43432 (Conc!9960) Bool)

(assert (=> b!2772255 (= e!1747940 (inv!43432 (c!450254 input!5495)))))

(assert (= (and d!806256 c!450260) b!2772253))

(assert (= (and d!806256 (not c!450260)) b!2772254))

(assert (= (and b!2772254 (not res!1159040)) b!2772255))

(declare-fun m!3199347 () Bool)

(assert (=> b!2772253 m!3199347))

(declare-fun m!3199349 () Bool)

(assert (=> b!2772255 m!3199349))

(assert (=> b!2772221 d!806256))

(declare-fun setRes!22809 () Bool)

(declare-fun e!1747947 () Bool)

(declare-fun b!2772264 () Bool)

(declare-fun e!1747949 () Bool)

(declare-fun tp!876275 () Bool)

(declare-fun tp_is_empty!14011 () Bool)

(declare-fun inv!43433 (Context!4594) Bool)

(assert (=> b!2772264 (= e!1747949 (and (inv!43433 (_1!18942 (_1!18943 (h!37402 mapDefault!17198)))) e!1747947 tp_is_empty!14011 setRes!22809 tp!876275))))

(declare-fun condSetEmpty!22809 () Bool)

(assert (=> b!2772264 (= condSetEmpty!22809 (= (_2!18943 (h!37402 mapDefault!17198)) ((as const (Array Context!4594 Bool)) false)))))

(declare-fun b!2772265 () Bool)

(declare-fun tp!876276 () Bool)

(assert (=> b!2772265 (= e!1747947 tp!876276)))

(declare-fun b!2772266 () Bool)

(declare-fun e!1747948 () Bool)

(declare-fun tp!876273 () Bool)

(assert (=> b!2772266 (= e!1747948 tp!876273)))

(declare-fun setIsEmpty!22809 () Bool)

(assert (=> setIsEmpty!22809 setRes!22809))

(assert (=> b!2772226 (= tp!876264 e!1747949)))

(declare-fun setNonEmpty!22809 () Bool)

(declare-fun tp!876274 () Bool)

(declare-fun setElem!22809 () Context!4594)

(assert (=> setNonEmpty!22809 (= setRes!22809 (and tp!876274 (inv!43433 setElem!22809) e!1747948))))

(declare-fun setRest!22809 () (InoxSet Context!4594))

(assert (=> setNonEmpty!22809 (= (_2!18943 (h!37402 mapDefault!17198)) ((_ map or) (store ((as const (Array Context!4594 Bool)) false) setElem!22809 true) setRest!22809))))

(assert (= b!2772264 b!2772265))

(assert (= (and b!2772264 condSetEmpty!22809) setIsEmpty!22809))

(assert (= (and b!2772264 (not condSetEmpty!22809)) setNonEmpty!22809))

(assert (= setNonEmpty!22809 b!2772266))

(assert (= (and b!2772226 ((_ is Cons!31982) mapDefault!17198)) b!2772264))

(declare-fun m!3199351 () Bool)

(assert (=> b!2772264 m!3199351))

(declare-fun m!3199353 () Bool)

(assert (=> setNonEmpty!22809 m!3199353))

(declare-fun b!2772276 () Bool)

(declare-fun e!1747958 () Bool)

(declare-fun tp!876288 () Bool)

(assert (=> b!2772276 (= e!1747958 tp!876288)))

(declare-fun setIsEmpty!22812 () Bool)

(declare-fun setRes!22812 () Bool)

(assert (=> setIsEmpty!22812 setRes!22812))

(declare-fun tp!876290 () Bool)

(declare-fun e!1747956 () Bool)

(declare-fun tp!876287 () Bool)

(declare-fun e!1747957 () Bool)

(declare-fun b!2772277 () Bool)

(assert (=> b!2772277 (= e!1747956 (and tp!876287 (inv!43433 (_2!18940 (_1!18941 (h!37401 (zeroValue!4025 (v!33588 (underlying!7735 (v!33589 (underlying!7736 (cache!3815 cacheDown!939)))))))))) e!1747957 tp_is_empty!14011 setRes!22812 tp!876290))))

(declare-fun condSetEmpty!22812 () Bool)

(assert (=> b!2772277 (= condSetEmpty!22812 (= (_2!18941 (h!37401 (zeroValue!4025 (v!33588 (underlying!7735 (v!33589 (underlying!7736 (cache!3815 cacheDown!939)))))))) ((as const (Array Context!4594 Bool)) false)))))

(declare-fun setElem!22812 () Context!4594)

(declare-fun tp!876291 () Bool)

(declare-fun setNonEmpty!22812 () Bool)

(assert (=> setNonEmpty!22812 (= setRes!22812 (and tp!876291 (inv!43433 setElem!22812) e!1747958))))

(declare-fun setRest!22812 () (InoxSet Context!4594))

(assert (=> setNonEmpty!22812 (= (_2!18941 (h!37401 (zeroValue!4025 (v!33588 (underlying!7735 (v!33589 (underlying!7736 (cache!3815 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4594 Bool)) false) setElem!22812 true) setRest!22812))))

(declare-fun b!2772275 () Bool)

(declare-fun tp!876289 () Bool)

(assert (=> b!2772275 (= e!1747957 tp!876289)))

(assert (=> b!2772227 (= tp!876254 e!1747956)))

(assert (= b!2772277 b!2772275))

(assert (= (and b!2772277 condSetEmpty!22812) setIsEmpty!22812))

(assert (= (and b!2772277 (not condSetEmpty!22812)) setNonEmpty!22812))

(assert (= setNonEmpty!22812 b!2772276))

(assert (= (and b!2772227 ((_ is Cons!31981) (zeroValue!4025 (v!33588 (underlying!7735 (v!33589 (underlying!7736 (cache!3815 cacheDown!939)))))))) b!2772277))

(declare-fun m!3199355 () Bool)

(assert (=> b!2772277 m!3199355))

(declare-fun m!3199357 () Bool)

(assert (=> setNonEmpty!22812 m!3199357))

(declare-fun b!2772279 () Bool)

(declare-fun e!1747961 () Bool)

(declare-fun tp!876293 () Bool)

(assert (=> b!2772279 (= e!1747961 tp!876293)))

(declare-fun setIsEmpty!22813 () Bool)

(declare-fun setRes!22813 () Bool)

(assert (=> setIsEmpty!22813 setRes!22813))

(declare-fun e!1747959 () Bool)

(declare-fun e!1747960 () Bool)

(declare-fun b!2772280 () Bool)

(declare-fun tp!876292 () Bool)

(declare-fun tp!876295 () Bool)

(assert (=> b!2772280 (= e!1747959 (and tp!876292 (inv!43433 (_2!18940 (_1!18941 (h!37401 (minValue!4025 (v!33588 (underlying!7735 (v!33589 (underlying!7736 (cache!3815 cacheDown!939)))))))))) e!1747960 tp_is_empty!14011 setRes!22813 tp!876295))))

(declare-fun condSetEmpty!22813 () Bool)

(assert (=> b!2772280 (= condSetEmpty!22813 (= (_2!18941 (h!37401 (minValue!4025 (v!33588 (underlying!7735 (v!33589 (underlying!7736 (cache!3815 cacheDown!939)))))))) ((as const (Array Context!4594 Bool)) false)))))

(declare-fun tp!876296 () Bool)

(declare-fun setElem!22813 () Context!4594)

(declare-fun setNonEmpty!22813 () Bool)

(assert (=> setNonEmpty!22813 (= setRes!22813 (and tp!876296 (inv!43433 setElem!22813) e!1747961))))

(declare-fun setRest!22813 () (InoxSet Context!4594))

(assert (=> setNonEmpty!22813 (= (_2!18941 (h!37401 (minValue!4025 (v!33588 (underlying!7735 (v!33589 (underlying!7736 (cache!3815 cacheDown!939)))))))) ((_ map or) (store ((as const (Array Context!4594 Bool)) false) setElem!22813 true) setRest!22813))))

(declare-fun b!2772278 () Bool)

(declare-fun tp!876294 () Bool)

(assert (=> b!2772278 (= e!1747960 tp!876294)))

(assert (=> b!2772227 (= tp!876258 e!1747959)))

(assert (= b!2772280 b!2772278))

(assert (= (and b!2772280 condSetEmpty!22813) setIsEmpty!22813))

(assert (= (and b!2772280 (not condSetEmpty!22813)) setNonEmpty!22813))

(assert (= setNonEmpty!22813 b!2772279))

(assert (= (and b!2772227 ((_ is Cons!31981) (minValue!4025 (v!33588 (underlying!7735 (v!33589 (underlying!7736 (cache!3815 cacheDown!939)))))))) b!2772280))

(declare-fun m!3199359 () Bool)

(assert (=> b!2772280 m!3199359))

(declare-fun m!3199361 () Bool)

(assert (=> setNonEmpty!22813 m!3199361))

(declare-fun b!2772281 () Bool)

(declare-fun e!1747962 () Bool)

(declare-fun setRes!22814 () Bool)

(declare-fun e!1747964 () Bool)

(declare-fun tp!876299 () Bool)

(assert (=> b!2772281 (= e!1747964 (and (inv!43433 (_1!18942 (_1!18943 (h!37402 (zeroValue!4026 (v!33590 (underlying!7737 (v!33591 (underlying!7738 (cache!3816 cacheUp!820)))))))))) e!1747962 tp_is_empty!14011 setRes!22814 tp!876299))))

(declare-fun condSetEmpty!22814 () Bool)

(assert (=> b!2772281 (= condSetEmpty!22814 (= (_2!18943 (h!37402 (zeroValue!4026 (v!33590 (underlying!7737 (v!33591 (underlying!7738 (cache!3816 cacheUp!820)))))))) ((as const (Array Context!4594 Bool)) false)))))

(declare-fun b!2772282 () Bool)

(declare-fun tp!876300 () Bool)

(assert (=> b!2772282 (= e!1747962 tp!876300)))

(declare-fun b!2772283 () Bool)

(declare-fun e!1747963 () Bool)

(declare-fun tp!876297 () Bool)

(assert (=> b!2772283 (= e!1747963 tp!876297)))

(declare-fun setIsEmpty!22814 () Bool)

(assert (=> setIsEmpty!22814 setRes!22814))

(assert (=> b!2772223 (= tp!876262 e!1747964)))

(declare-fun setNonEmpty!22814 () Bool)

(declare-fun tp!876298 () Bool)

(declare-fun setElem!22814 () Context!4594)

(assert (=> setNonEmpty!22814 (= setRes!22814 (and tp!876298 (inv!43433 setElem!22814) e!1747963))))

(declare-fun setRest!22814 () (InoxSet Context!4594))

(assert (=> setNonEmpty!22814 (= (_2!18943 (h!37402 (zeroValue!4026 (v!33590 (underlying!7737 (v!33591 (underlying!7738 (cache!3816 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4594 Bool)) false) setElem!22814 true) setRest!22814))))

(assert (= b!2772281 b!2772282))

(assert (= (and b!2772281 condSetEmpty!22814) setIsEmpty!22814))

(assert (= (and b!2772281 (not condSetEmpty!22814)) setNonEmpty!22814))

(assert (= setNonEmpty!22814 b!2772283))

(assert (= (and b!2772223 ((_ is Cons!31982) (zeroValue!4026 (v!33590 (underlying!7737 (v!33591 (underlying!7738 (cache!3816 cacheUp!820)))))))) b!2772281))

(declare-fun m!3199363 () Bool)

(assert (=> b!2772281 m!3199363))

(declare-fun m!3199365 () Bool)

(assert (=> setNonEmpty!22814 m!3199365))

(declare-fun e!1747965 () Bool)

(declare-fun setRes!22815 () Bool)

(declare-fun e!1747967 () Bool)

(declare-fun tp!876303 () Bool)

(declare-fun b!2772284 () Bool)

(assert (=> b!2772284 (= e!1747967 (and (inv!43433 (_1!18942 (_1!18943 (h!37402 (minValue!4026 (v!33590 (underlying!7737 (v!33591 (underlying!7738 (cache!3816 cacheUp!820)))))))))) e!1747965 tp_is_empty!14011 setRes!22815 tp!876303))))

(declare-fun condSetEmpty!22815 () Bool)

(assert (=> b!2772284 (= condSetEmpty!22815 (= (_2!18943 (h!37402 (minValue!4026 (v!33590 (underlying!7737 (v!33591 (underlying!7738 (cache!3816 cacheUp!820)))))))) ((as const (Array Context!4594 Bool)) false)))))

(declare-fun b!2772285 () Bool)

(declare-fun tp!876304 () Bool)

(assert (=> b!2772285 (= e!1747965 tp!876304)))

(declare-fun b!2772286 () Bool)

(declare-fun e!1747966 () Bool)

(declare-fun tp!876301 () Bool)

(assert (=> b!2772286 (= e!1747966 tp!876301)))

(declare-fun setIsEmpty!22815 () Bool)

(assert (=> setIsEmpty!22815 setRes!22815))

(assert (=> b!2772223 (= tp!876250 e!1747967)))

(declare-fun setNonEmpty!22815 () Bool)

(declare-fun tp!876302 () Bool)

(declare-fun setElem!22815 () Context!4594)

(assert (=> setNonEmpty!22815 (= setRes!22815 (and tp!876302 (inv!43433 setElem!22815) e!1747966))))

(declare-fun setRest!22815 () (InoxSet Context!4594))

(assert (=> setNonEmpty!22815 (= (_2!18943 (h!37402 (minValue!4026 (v!33590 (underlying!7737 (v!33591 (underlying!7738 (cache!3816 cacheUp!820)))))))) ((_ map or) (store ((as const (Array Context!4594 Bool)) false) setElem!22815 true) setRest!22815))))

(assert (= b!2772284 b!2772285))

(assert (= (and b!2772284 condSetEmpty!22815) setIsEmpty!22815))

(assert (= (and b!2772284 (not condSetEmpty!22815)) setNonEmpty!22815))

(assert (= setNonEmpty!22815 b!2772286))

(assert (= (and b!2772223 ((_ is Cons!31982) (minValue!4026 (v!33590 (underlying!7737 (v!33591 (underlying!7738 (cache!3816 cacheUp!820)))))))) b!2772284))

(declare-fun m!3199367 () Bool)

(assert (=> b!2772284 m!3199367))

(declare-fun m!3199369 () Bool)

(assert (=> setNonEmpty!22815 m!3199369))

(declare-fun mapNonEmpty!17201 () Bool)

(declare-fun mapRes!17201 () Bool)

(declare-fun tp!876330 () Bool)

(declare-fun e!1747981 () Bool)

(assert (=> mapNonEmpty!17201 (= mapRes!17201 (and tp!876330 e!1747981))))

(declare-fun mapValue!17201 () List!32082)

(declare-fun mapKey!17201 () (_ BitVec 32))

(declare-fun mapRest!17201 () (Array (_ BitVec 32) List!32082))

(assert (=> mapNonEmpty!17201 (= mapRest!17198 (store mapRest!17201 mapKey!17201 mapValue!17201))))

(declare-fun setElem!22821 () Context!4594)

(declare-fun setRes!22820 () Bool)

(declare-fun e!1747984 () Bool)

(declare-fun setNonEmpty!22820 () Bool)

(declare-fun tp!876324 () Bool)

(assert (=> setNonEmpty!22820 (= setRes!22820 (and tp!876324 (inv!43433 setElem!22821) e!1747984))))

(declare-fun setRest!22821 () (InoxSet Context!4594))

(assert (=> setNonEmpty!22820 (= (_2!18943 (h!37402 mapValue!17201)) ((_ map or) (store ((as const (Array Context!4594 Bool)) false) setElem!22821 true) setRest!22821))))

(declare-fun b!2772301 () Bool)

(declare-fun e!1747980 () Bool)

(declare-fun tp!876325 () Bool)

(assert (=> b!2772301 (= e!1747980 tp!876325)))

(declare-fun mapIsEmpty!17201 () Bool)

(assert (=> mapIsEmpty!17201 mapRes!17201))

(declare-fun tp!876327 () Bool)

(declare-fun b!2772302 () Bool)

(assert (=> b!2772302 (= e!1747981 (and (inv!43433 (_1!18942 (_1!18943 (h!37402 mapValue!17201)))) e!1747980 tp_is_empty!14011 setRes!22820 tp!876327))))

(declare-fun condSetEmpty!22820 () Bool)

(assert (=> b!2772302 (= condSetEmpty!22820 (= (_2!18943 (h!37402 mapValue!17201)) ((as const (Array Context!4594 Bool)) false)))))

(declare-fun b!2772303 () Bool)

(declare-fun e!1747983 () Bool)

(declare-fun tp!876328 () Bool)

(assert (=> b!2772303 (= e!1747983 tp!876328)))

(declare-fun b!2772304 () Bool)

(declare-fun e!1747982 () Bool)

(declare-fun tp!876329 () Bool)

(assert (=> b!2772304 (= e!1747982 tp!876329)))

(declare-fun setRes!22821 () Bool)

(declare-fun mapDefault!17201 () List!32082)

(declare-fun e!1747985 () Bool)

(declare-fun tp!876326 () Bool)

(declare-fun b!2772305 () Bool)

(assert (=> b!2772305 (= e!1747985 (and (inv!43433 (_1!18942 (_1!18943 (h!37402 mapDefault!17201)))) e!1747982 tp_is_empty!14011 setRes!22821 tp!876326))))

(declare-fun condSetEmpty!22821 () Bool)

(assert (=> b!2772305 (= condSetEmpty!22821 (= (_2!18943 (h!37402 mapDefault!17201)) ((as const (Array Context!4594 Bool)) false)))))

(declare-fun setNonEmpty!22821 () Bool)

(declare-fun setElem!22820 () Context!4594)

(declare-fun tp!876323 () Bool)

(assert (=> setNonEmpty!22821 (= setRes!22821 (and tp!876323 (inv!43433 setElem!22820) e!1747983))))

(declare-fun setRest!22820 () (InoxSet Context!4594))

(assert (=> setNonEmpty!22821 (= (_2!18943 (h!37402 mapDefault!17201)) ((_ map or) (store ((as const (Array Context!4594 Bool)) false) setElem!22820 true) setRest!22820))))

(declare-fun setIsEmpty!22820 () Bool)

(assert (=> setIsEmpty!22820 setRes!22821))

(declare-fun setIsEmpty!22821 () Bool)

(assert (=> setIsEmpty!22821 setRes!22820))

(declare-fun condMapEmpty!17201 () Bool)

(assert (=> mapNonEmpty!17197 (= condMapEmpty!17201 (= mapRest!17198 ((as const (Array (_ BitVec 32) List!32082)) mapDefault!17201)))))

(assert (=> mapNonEmpty!17197 (= tp!876256 (and e!1747985 mapRes!17201))))

(declare-fun b!2772306 () Bool)

(declare-fun tp!876331 () Bool)

(assert (=> b!2772306 (= e!1747984 tp!876331)))

(assert (= (and mapNonEmpty!17197 condMapEmpty!17201) mapIsEmpty!17201))

(assert (= (and mapNonEmpty!17197 (not condMapEmpty!17201)) mapNonEmpty!17201))

(assert (= b!2772302 b!2772301))

(assert (= (and b!2772302 condSetEmpty!22820) setIsEmpty!22821))

(assert (= (and b!2772302 (not condSetEmpty!22820)) setNonEmpty!22820))

(assert (= setNonEmpty!22820 b!2772306))

(assert (= (and mapNonEmpty!17201 ((_ is Cons!31982) mapValue!17201)) b!2772302))

(assert (= b!2772305 b!2772304))

(assert (= (and b!2772305 condSetEmpty!22821) setIsEmpty!22820))

(assert (= (and b!2772305 (not condSetEmpty!22821)) setNonEmpty!22821))

(assert (= setNonEmpty!22821 b!2772303))

(assert (= (and mapNonEmpty!17197 ((_ is Cons!31982) mapDefault!17201)) b!2772305))

(declare-fun m!3199371 () Bool)

(assert (=> b!2772305 m!3199371))

(declare-fun m!3199373 () Bool)

(assert (=> setNonEmpty!22821 m!3199373))

(declare-fun m!3199375 () Bool)

(assert (=> mapNonEmpty!17201 m!3199375))

(declare-fun m!3199377 () Bool)

(assert (=> setNonEmpty!22820 m!3199377))

(declare-fun m!3199379 () Bool)

(assert (=> b!2772302 m!3199379))

(declare-fun setRes!22822 () Bool)

(declare-fun e!1747988 () Bool)

(declare-fun e!1747986 () Bool)

(declare-fun tp!876334 () Bool)

(declare-fun b!2772307 () Bool)

(assert (=> b!2772307 (= e!1747988 (and (inv!43433 (_1!18942 (_1!18943 (h!37402 mapValue!17198)))) e!1747986 tp_is_empty!14011 setRes!22822 tp!876334))))

(declare-fun condSetEmpty!22822 () Bool)

(assert (=> b!2772307 (= condSetEmpty!22822 (= (_2!18943 (h!37402 mapValue!17198)) ((as const (Array Context!4594 Bool)) false)))))

(declare-fun b!2772308 () Bool)

(declare-fun tp!876335 () Bool)

(assert (=> b!2772308 (= e!1747986 tp!876335)))

(declare-fun b!2772309 () Bool)

(declare-fun e!1747987 () Bool)

(declare-fun tp!876332 () Bool)

(assert (=> b!2772309 (= e!1747987 tp!876332)))

(declare-fun setIsEmpty!22822 () Bool)

(assert (=> setIsEmpty!22822 setRes!22822))

(assert (=> mapNonEmpty!17197 (= tp!876255 e!1747988)))

(declare-fun setElem!22822 () Context!4594)

(declare-fun setNonEmpty!22822 () Bool)

(declare-fun tp!876333 () Bool)

(assert (=> setNonEmpty!22822 (= setRes!22822 (and tp!876333 (inv!43433 setElem!22822) e!1747987))))

(declare-fun setRest!22822 () (InoxSet Context!4594))

(assert (=> setNonEmpty!22822 (= (_2!18943 (h!37402 mapValue!17198)) ((_ map or) (store ((as const (Array Context!4594 Bool)) false) setElem!22822 true) setRest!22822))))

(assert (= b!2772307 b!2772308))

(assert (= (and b!2772307 condSetEmpty!22822) setIsEmpty!22822))

(assert (= (and b!2772307 (not condSetEmpty!22822)) setNonEmpty!22822))

(assert (= setNonEmpty!22822 b!2772309))

(assert (= (and mapNonEmpty!17197 ((_ is Cons!31982) mapValue!17198)) b!2772307))

(declare-fun m!3199381 () Bool)

(assert (=> b!2772307 m!3199381))

(declare-fun m!3199383 () Bool)

(assert (=> setNonEmpty!22822 m!3199383))

(declare-fun b!2772311 () Bool)

(declare-fun e!1747991 () Bool)

(declare-fun tp!876337 () Bool)

(assert (=> b!2772311 (= e!1747991 tp!876337)))

(declare-fun setIsEmpty!22823 () Bool)

(declare-fun setRes!22823 () Bool)

(assert (=> setIsEmpty!22823 setRes!22823))

(declare-fun e!1747990 () Bool)

(declare-fun tp!876339 () Bool)

(declare-fun e!1747989 () Bool)

(declare-fun tp!876336 () Bool)

(declare-fun b!2772312 () Bool)

(assert (=> b!2772312 (= e!1747989 (and tp!876336 (inv!43433 (_2!18940 (_1!18941 (h!37401 mapDefault!17197)))) e!1747990 tp_is_empty!14011 setRes!22823 tp!876339))))

(declare-fun condSetEmpty!22823 () Bool)

(assert (=> b!2772312 (= condSetEmpty!22823 (= (_2!18941 (h!37401 mapDefault!17197)) ((as const (Array Context!4594 Bool)) false)))))

(declare-fun setNonEmpty!22823 () Bool)

(declare-fun setElem!22823 () Context!4594)

(declare-fun tp!876340 () Bool)

(assert (=> setNonEmpty!22823 (= setRes!22823 (and tp!876340 (inv!43433 setElem!22823) e!1747991))))

(declare-fun setRest!22823 () (InoxSet Context!4594))

(assert (=> setNonEmpty!22823 (= (_2!18941 (h!37401 mapDefault!17197)) ((_ map or) (store ((as const (Array Context!4594 Bool)) false) setElem!22823 true) setRest!22823))))

(declare-fun b!2772310 () Bool)

(declare-fun tp!876338 () Bool)

(assert (=> b!2772310 (= e!1747990 tp!876338)))

(assert (=> b!2772217 (= tp!876259 e!1747989)))

(assert (= b!2772312 b!2772310))

(assert (= (and b!2772312 condSetEmpty!22823) setIsEmpty!22823))

(assert (= (and b!2772312 (not condSetEmpty!22823)) setNonEmpty!22823))

(assert (= setNonEmpty!22823 b!2772311))

(assert (= (and b!2772217 ((_ is Cons!31981) mapDefault!17197)) b!2772312))

(declare-fun m!3199385 () Bool)

(assert (=> b!2772312 m!3199385))

(declare-fun m!3199387 () Bool)

(assert (=> setNonEmpty!22823 m!3199387))

(declare-fun mapIsEmpty!17204 () Bool)

(declare-fun mapRes!17204 () Bool)

(assert (=> mapIsEmpty!17204 mapRes!17204))

(declare-fun b!2772327 () Bool)

(declare-fun e!1748009 () Bool)

(declare-fun tp!876366 () Bool)

(assert (=> b!2772327 (= e!1748009 tp!876366)))

(declare-fun setIsEmpty!22828 () Bool)

(declare-fun setRes!22828 () Bool)

(assert (=> setIsEmpty!22828 setRes!22828))

(declare-fun b!2772328 () Bool)

(declare-fun e!1748007 () Bool)

(declare-fun tp!876368 () Bool)

(assert (=> b!2772328 (= e!1748007 tp!876368)))

(declare-fun b!2772329 () Bool)

(declare-fun e!1748008 () Bool)

(declare-fun tp!876363 () Bool)

(assert (=> b!2772329 (= e!1748008 tp!876363)))

(declare-fun setIsEmpty!22829 () Bool)

(declare-fun setRes!22829 () Bool)

(assert (=> setIsEmpty!22829 setRes!22829))

(declare-fun b!2772330 () Bool)

(declare-fun tp!876370 () Bool)

(declare-fun e!1748005 () Bool)

(declare-fun e!1748004 () Bool)

(declare-fun tp!876369 () Bool)

(declare-fun mapValue!17204 () List!32081)

(assert (=> b!2772330 (= e!1748004 (and tp!876370 (inv!43433 (_2!18940 (_1!18941 (h!37401 mapValue!17204)))) e!1748005 tp_is_empty!14011 setRes!22828 tp!876369))))

(declare-fun condSetEmpty!22828 () Bool)

(assert (=> b!2772330 (= condSetEmpty!22828 (= (_2!18941 (h!37401 mapValue!17204)) ((as const (Array Context!4594 Bool)) false)))))

(declare-fun setNonEmpty!22828 () Bool)

(declare-fun setElem!22829 () Context!4594)

(declare-fun tp!876371 () Bool)

(assert (=> setNonEmpty!22828 (= setRes!22829 (and tp!876371 (inv!43433 setElem!22829) e!1748009))))

(declare-fun mapDefault!17204 () List!32081)

(declare-fun setRest!22829 () (InoxSet Context!4594))

(assert (=> setNonEmpty!22828 (= (_2!18941 (h!37401 mapDefault!17204)) ((_ map or) (store ((as const (Array Context!4594 Bool)) false) setElem!22829 true) setRest!22829))))

(declare-fun setElem!22828 () Context!4594)

(declare-fun tp!876373 () Bool)

(declare-fun setNonEmpty!22829 () Bool)

(assert (=> setNonEmpty!22829 (= setRes!22828 (and tp!876373 (inv!43433 setElem!22828) e!1748007))))

(declare-fun setRest!22828 () (InoxSet Context!4594))

(assert (=> setNonEmpty!22829 (= (_2!18941 (h!37401 mapValue!17204)) ((_ map or) (store ((as const (Array Context!4594 Bool)) false) setElem!22828 true) setRest!22828))))

(declare-fun condMapEmpty!17204 () Bool)

(assert (=> mapNonEmpty!17198 (= condMapEmpty!17204 (= mapRest!17197 ((as const (Array (_ BitVec 32) List!32081)) mapDefault!17204)))))

(declare-fun e!1748006 () Bool)

(assert (=> mapNonEmpty!17198 (= tp!876260 (and e!1748006 mapRes!17204))))

(declare-fun tp!876365 () Bool)

(declare-fun tp!876367 () Bool)

(declare-fun b!2772331 () Bool)

(assert (=> b!2772331 (= e!1748006 (and tp!876365 (inv!43433 (_2!18940 (_1!18941 (h!37401 mapDefault!17204)))) e!1748008 tp_is_empty!14011 setRes!22829 tp!876367))))

(declare-fun condSetEmpty!22829 () Bool)

(assert (=> b!2772331 (= condSetEmpty!22829 (= (_2!18941 (h!37401 mapDefault!17204)) ((as const (Array Context!4594 Bool)) false)))))

(declare-fun mapNonEmpty!17204 () Bool)

(declare-fun tp!876364 () Bool)

(assert (=> mapNonEmpty!17204 (= mapRes!17204 (and tp!876364 e!1748004))))

(declare-fun mapRest!17204 () (Array (_ BitVec 32) List!32081))

(declare-fun mapKey!17204 () (_ BitVec 32))

(assert (=> mapNonEmpty!17204 (= mapRest!17197 (store mapRest!17204 mapKey!17204 mapValue!17204))))

(declare-fun b!2772332 () Bool)

(declare-fun tp!876372 () Bool)

(assert (=> b!2772332 (= e!1748005 tp!876372)))

(assert (= (and mapNonEmpty!17198 condMapEmpty!17204) mapIsEmpty!17204))

(assert (= (and mapNonEmpty!17198 (not condMapEmpty!17204)) mapNonEmpty!17204))

(assert (= b!2772330 b!2772332))

(assert (= (and b!2772330 condSetEmpty!22828) setIsEmpty!22828))

(assert (= (and b!2772330 (not condSetEmpty!22828)) setNonEmpty!22829))

(assert (= setNonEmpty!22829 b!2772328))

(assert (= (and mapNonEmpty!17204 ((_ is Cons!31981) mapValue!17204)) b!2772330))

(assert (= b!2772331 b!2772329))

(assert (= (and b!2772331 condSetEmpty!22829) setIsEmpty!22829))

(assert (= (and b!2772331 (not condSetEmpty!22829)) setNonEmpty!22828))

(assert (= setNonEmpty!22828 b!2772327))

(assert (= (and mapNonEmpty!17198 ((_ is Cons!31981) mapDefault!17204)) b!2772331))

(declare-fun m!3199389 () Bool)

(assert (=> setNonEmpty!22828 m!3199389))

(declare-fun m!3199391 () Bool)

(assert (=> mapNonEmpty!17204 m!3199391))

(declare-fun m!3199393 () Bool)

(assert (=> b!2772331 m!3199393))

(declare-fun m!3199395 () Bool)

(assert (=> setNonEmpty!22829 m!3199395))

(declare-fun m!3199397 () Bool)

(assert (=> b!2772330 m!3199397))

(declare-fun b!2772334 () Bool)

(declare-fun e!1748012 () Bool)

(declare-fun tp!876375 () Bool)

(assert (=> b!2772334 (= e!1748012 tp!876375)))

(declare-fun setIsEmpty!22830 () Bool)

(declare-fun setRes!22830 () Bool)

(assert (=> setIsEmpty!22830 setRes!22830))

(declare-fun tp!876374 () Bool)

(declare-fun b!2772335 () Bool)

(declare-fun tp!876377 () Bool)

(declare-fun e!1748011 () Bool)

(declare-fun e!1748010 () Bool)

(assert (=> b!2772335 (= e!1748010 (and tp!876374 (inv!43433 (_2!18940 (_1!18941 (h!37401 mapValue!17197)))) e!1748011 tp_is_empty!14011 setRes!22830 tp!876377))))

(declare-fun condSetEmpty!22830 () Bool)

(assert (=> b!2772335 (= condSetEmpty!22830 (= (_2!18941 (h!37401 mapValue!17197)) ((as const (Array Context!4594 Bool)) false)))))

(declare-fun setNonEmpty!22830 () Bool)

(declare-fun tp!876378 () Bool)

(declare-fun setElem!22830 () Context!4594)

(assert (=> setNonEmpty!22830 (= setRes!22830 (and tp!876378 (inv!43433 setElem!22830) e!1748012))))

(declare-fun setRest!22830 () (InoxSet Context!4594))

(assert (=> setNonEmpty!22830 (= (_2!18941 (h!37401 mapValue!17197)) ((_ map or) (store ((as const (Array Context!4594 Bool)) false) setElem!22830 true) setRest!22830))))

(declare-fun b!2772333 () Bool)

(declare-fun tp!876376 () Bool)

(assert (=> b!2772333 (= e!1748011 tp!876376)))

(assert (=> mapNonEmpty!17198 (= tp!876251 e!1748010)))

(assert (= b!2772335 b!2772333))

(assert (= (and b!2772335 condSetEmpty!22830) setIsEmpty!22830))

(assert (= (and b!2772335 (not condSetEmpty!22830)) setNonEmpty!22830))

(assert (= setNonEmpty!22830 b!2772334))

(assert (= (and mapNonEmpty!17198 ((_ is Cons!31981) mapValue!17197)) b!2772335))

(declare-fun m!3199399 () Bool)

(assert (=> b!2772335 m!3199399))

(declare-fun m!3199401 () Bool)

(assert (=> setNonEmpty!22830 m!3199401))

(declare-fun tp!876385 () Bool)

(declare-fun b!2772344 () Bool)

(declare-fun e!1748018 () Bool)

(declare-fun tp!876386 () Bool)

(assert (=> b!2772344 (= e!1748018 (and (inv!43427 (left!24385 (c!450254 input!5495))) tp!876385 (inv!43427 (right!24715 (c!450254 input!5495))) tp!876386))))

(declare-fun b!2772346 () Bool)

(declare-fun e!1748017 () Bool)

(declare-fun tp!876387 () Bool)

(assert (=> b!2772346 (= e!1748017 tp!876387)))

(declare-fun b!2772345 () Bool)

(declare-fun inv!43434 (IArray!19925) Bool)

(assert (=> b!2772345 (= e!1748018 (and (inv!43434 (xs!13070 (c!450254 input!5495))) e!1748017))))

(assert (=> b!2772221 (= tp!876252 (and (inv!43427 (c!450254 input!5495)) e!1748018))))

(assert (= (and b!2772221 ((_ is Node!9960) (c!450254 input!5495))) b!2772344))

(assert (= b!2772345 b!2772346))

(assert (= (and b!2772221 ((_ is Leaf!15168) (c!450254 input!5495))) b!2772345))

(declare-fun m!3199403 () Bool)

(assert (=> b!2772344 m!3199403))

(declare-fun m!3199405 () Bool)

(assert (=> b!2772344 m!3199405))

(declare-fun m!3199407 () Bool)

(assert (=> b!2772345 m!3199407))

(assert (=> b!2772221 m!3199299))

(check-sat (not b!2772302) (not mapNonEmpty!17201) (not b!2772221) (not b!2772329) (not b!2772310) (not setNonEmpty!22822) (not d!806248) (not b!2772280) (not b!2772344) (not d!806240) (not b_next!78903) (not setNonEmpty!22830) (not b!2772332) (not setNonEmpty!22815) (not b!2772333) (not b!2772281) (not b!2772309) (not setNonEmpty!22823) (not d!806254) (not b!2772277) (not b_next!78905) (not b!2772301) (not b!2772265) b_and!202935 (not b!2772266) (not b!2772307) tp_is_empty!14011 (not b!2772253) (not b!2772286) (not d!806242) (not b!2772306) (not b!2772285) (not b!2772327) (not b!2772279) (not b!2772328) (not b!2772243) (not b!2772335) (not mapNonEmpty!17204) (not setNonEmpty!22809) (not b!2772255) (not setNonEmpty!22820) (not b!2772282) (not b!2772238) (not b!2772334) b_and!202939 (not b!2772283) (not b!2772345) (not b!2772239) (not b!2772278) (not b!2772303) (not setNonEmpty!22813) (not d!806244) (not b!2772311) (not setNonEmpty!22829) (not b!2772304) (not b!2772308) b_and!202937 (not b!2772264) (not b!2772305) b_and!202941 (not setNonEmpty!22821) (not b!2772275) (not b!2772284) (not b!2772346) (not b!2772331) (not b!2772246) (not setNonEmpty!22814) (not setNonEmpty!22828) (not b_next!78901) (not d!806246) (not setNonEmpty!22812) (not b!2772312) (not b!2772330) (not b_next!78907) (not b!2772276))
(check-sat (not b_next!78903) (not b_next!78905) b_and!202935 b_and!202939 b_and!202937 b_and!202941 (not b_next!78901) (not b_next!78907))
