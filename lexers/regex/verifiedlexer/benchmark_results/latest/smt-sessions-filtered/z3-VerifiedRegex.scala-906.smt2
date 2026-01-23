; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!47150 () Bool)

(assert start!47150)

(declare-fun b!518057 () Bool)

(declare-fun b_free!13655 () Bool)

(declare-fun b_next!13671 () Bool)

(assert (=> b!518057 (= b_free!13655 (not b_next!13671))))

(declare-fun tp!161547 () Bool)

(declare-fun b_and!51143 () Bool)

(assert (=> b!518057 (= tp!161547 b_and!51143)))

(declare-fun b!518045 () Bool)

(declare-fun b_free!13657 () Bool)

(declare-fun b_next!13673 () Bool)

(assert (=> b!518045 (= b_free!13657 (not b_next!13673))))

(declare-fun tp!161552 () Bool)

(declare-fun b_and!51145 () Bool)

(assert (=> b!518045 (= tp!161552 b_and!51145)))

(declare-fun b_free!13659 () Bool)

(declare-fun b_next!13675 () Bool)

(assert (=> start!47150 (= b_free!13659 (not b_next!13675))))

(declare-fun tp!161551 () Bool)

(declare-fun b_and!51147 () Bool)

(assert (=> start!47150 (= tp!161551 b_and!51147)))

(declare-fun mapIsEmpty!2069 () Bool)

(declare-fun mapRes!2069 () Bool)

(assert (=> mapIsEmpty!2069 mapRes!2069))

(declare-fun e!310152 () Bool)

(declare-fun e!310159 () Bool)

(assert (=> b!518045 (= e!310152 (and e!310159 tp!161552))))

(declare-fun b!518046 () Bool)

(declare-fun e!310157 () Bool)

(declare-datatypes ((K!1447 0))(
  ( (K!1448 (val!1821 Int)) )
))
(declare-datatypes ((V!1545 0))(
  ( (V!1546 (val!1822 Int)) )
))
(declare-datatypes ((tuple2!5886 0))(
  ( (tuple2!5887 (_1!3159 K!1447) (_2!3159 V!1545)) )
))
(declare-datatypes ((List!4760 0))(
  ( (Nil!4750) (Cons!4750 (h!10151 tuple2!5886) (t!73344 List!4760)) )
))
(declare-datatypes ((array!2075 0))(
  ( (array!2076 (arr!950 (Array (_ BitVec 32) List!4760)) (size!3884 (_ BitVec 32))) )
))
(declare-datatypes ((array!2077 0))(
  ( (array!2078 (arr!951 (Array (_ BitVec 32) (_ BitVec 64))) (size!3885 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1066 0))(
  ( (LongMapFixedSize!1067 (defaultEntry!884 Int) (mask!1964 (_ BitVec 32)) (extraKeys!779 (_ BitVec 32)) (zeroValue!789 List!4760) (minValue!789 List!4760) (_size!1175 (_ BitVec 32)) (_keys!824 array!2077) (_values!811 array!2075) (_vacant!594 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2073 0))(
  ( (Cell!2074 (v!15811 LongMapFixedSize!1066)) )
))
(declare-datatypes ((MutLongMap!533 0))(
  ( (LongMap!533 (underlying!1245 Cell!2073)) (MutLongMapExt!532 (__x!3490 Int)) )
))
(declare-fun lt!215973 () MutLongMap!533)

(get-info :version)

(assert (=> b!518046 (= e!310159 (and e!310157 ((_ is LongMap!533) lt!215973)))))

(declare-datatypes ((Hashable!505 0))(
  ( (HashableExt!504 (__x!3491 Int)) )
))
(declare-datatypes ((Cell!2075 0))(
  ( (Cell!2076 (v!15812 MutLongMap!533)) )
))
(declare-datatypes ((MutableMap!505 0))(
  ( (MutableMapExt!504 (__x!3492 Int)) (HashMap!505 (underlying!1246 Cell!2075) (hashF!2409 Hashable!505) (_size!1176 (_ BitVec 32)) (defaultValue!654 Int)) )
))
(declare-fun hm!65 () MutableMap!505)

(assert (=> b!518046 (= lt!215973 (v!15812 (underlying!1246 hm!65)))))

(declare-datatypes ((ListMap!217 0))(
  ( (ListMap!218 (toList!438 List!4760)) )
))
(declare-fun lt!215972 () ListMap!217)

(declare-datatypes ((Unit!8703 0))(
  ( (Unit!8704) )
))
(declare-fun call!37964 () Unit!8703)

(declare-fun bm!37958 () Bool)

(declare-fun c!100317 () Bool)

(declare-fun p!6060 () Int)

(declare-fun lt!215975 () ListMap!217)

(declare-fun lt!215980 () ListMap!217)

(declare-fun lemmaForallSubset!15 (List!4760 List!4760 Int) Unit!8703)

(assert (=> bm!37958 (= call!37964 (lemmaForallSubset!15 (ite c!100317 (toList!438 lt!215980) (toList!438 lt!215975)) (ite c!100317 (toList!438 lt!215975) (toList!438 lt!215972)) p!6060))))

(declare-fun b!518047 () Bool)

(declare-fun e!310156 () Bool)

(declare-fun e!310155 () Bool)

(assert (=> b!518047 (= e!310156 e!310155)))

(declare-fun res!219680 () Bool)

(assert (=> b!518047 (=> (not res!219680) (not e!310155))))

(declare-fun forall!1420 (List!4760 Int) Bool)

(assert (=> b!518047 (= res!219680 (forall!1420 (toList!438 lt!215972) p!6060))))

(declare-fun map!1067 (MutableMap!505) ListMap!217)

(assert (=> b!518047 (= lt!215972 (map!1067 hm!65))))

(declare-fun b!518048 () Bool)

(declare-fun e!310154 () Bool)

(assert (=> b!518048 (= e!310155 e!310154)))

(declare-fun res!219684 () Bool)

(assert (=> b!518048 (=> (not res!219684) (not e!310154))))

(declare-datatypes ((tuple2!5888 0))(
  ( (tuple2!5889 (_1!3160 Bool) (_2!3160 MutableMap!505)) )
))
(declare-fun lt!215979 () tuple2!5888)

(declare-fun valid!505 (MutableMap!505) Bool)

(assert (=> b!518048 (= res!219684 (valid!505 (_2!3160 lt!215979)))))

(declare-fun k0!1740 () K!1447)

(declare-fun remove!49 (MutableMap!505 K!1447) tuple2!5888)

(assert (=> b!518048 (= lt!215979 (remove!49 hm!65 k0!1740))))

(declare-fun -!46 (ListMap!217 K!1447) ListMap!217)

(assert (=> b!518048 (= lt!215975 (-!46 lt!215972 k0!1740))))

(declare-fun b!518049 () Bool)

(declare-fun e!310160 () Bool)

(declare-fun e!310153 () Bool)

(assert (=> b!518049 (= e!310160 e!310153)))

(declare-fun b!518051 () Bool)

(assert (=> b!518051 (= e!310157 e!310160)))

(declare-fun bm!37959 () Bool)

(declare-fun call!37963 () Bool)

(assert (=> bm!37959 (= call!37963 (forall!1420 (toList!438 lt!215975) p!6060))))

(declare-fun b!518052 () Bool)

(declare-fun e!310161 () Unit!8703)

(declare-fun lt!215976 () Unit!8703)

(assert (=> b!518052 (= e!310161 lt!215976)))

(declare-fun lt!215978 () Unit!8703)

(assert (=> b!518052 (= lt!215978 (lemmaForallSubset!15 (toList!438 lt!215975) (toList!438 lt!215972) p!6060))))

(assert (=> b!518052 call!37963))

(assert (=> b!518052 (= lt!215976 call!37964)))

(assert (=> b!518052 (forall!1420 (toList!438 lt!215980) p!6060)))

(declare-fun b!518053 () Bool)

(declare-fun res!219682 () Bool)

(assert (=> b!518053 (=> (not res!219682) (not e!310156))))

(assert (=> b!518053 (= res!219682 (valid!505 hm!65))))

(declare-fun mapNonEmpty!2069 () Bool)

(declare-fun tp!161549 () Bool)

(declare-fun tp!161553 () Bool)

(assert (=> mapNonEmpty!2069 (= mapRes!2069 (and tp!161549 tp!161553))))

(declare-fun mapKey!2069 () (_ BitVec 32))

(declare-fun mapValue!2069 () List!4760)

(declare-fun mapRest!2069 () (Array (_ BitVec 32) List!4760))

(assert (=> mapNonEmpty!2069 (= (arr!950 (_values!811 (v!15811 (underlying!1245 (v!15812 (underlying!1246 hm!65)))))) (store mapRest!2069 mapKey!2069 mapValue!2069))))

(declare-fun b!518050 () Bool)

(declare-fun e!310151 () Bool)

(assert (=> b!518050 (= e!310151 (not (forall!1420 (toList!438 lt!215980) p!6060)))))

(declare-fun lt!215977 () Unit!8703)

(assert (=> b!518050 (= lt!215977 e!310161)))

(assert (=> b!518050 (= c!100317 (_1!3160 lt!215979))))

(declare-fun res!219681 () Bool)

(assert (=> start!47150 (=> (not res!219681) (not e!310156))))

(assert (=> start!47150 (= res!219681 ((_ is HashMap!505) hm!65))))

(assert (=> start!47150 e!310156))

(assert (=> start!47150 e!310152))

(assert (=> start!47150 tp!161551))

(declare-fun tp_is_empty!2663 () Bool)

(assert (=> start!47150 tp_is_empty!2663))

(declare-fun b!518054 () Bool)

(declare-fun lt!215974 () Unit!8703)

(assert (=> b!518054 (= e!310161 lt!215974)))

(assert (=> b!518054 (= lt!215974 call!37964)))

(assert (=> b!518054 call!37963))

(declare-fun b!518055 () Bool)

(declare-fun e!310158 () Bool)

(declare-fun tp!161548 () Bool)

(assert (=> b!518055 (= e!310158 (and tp!161548 mapRes!2069))))

(declare-fun condMapEmpty!2069 () Bool)

(declare-fun mapDefault!2069 () List!4760)

(assert (=> b!518055 (= condMapEmpty!2069 (= (arr!950 (_values!811 (v!15811 (underlying!1245 (v!15812 (underlying!1246 hm!65)))))) ((as const (Array (_ BitVec 32) List!4760)) mapDefault!2069)))))

(declare-fun b!518056 () Bool)

(assert (=> b!518056 (= e!310154 e!310151)))

(declare-fun res!219683 () Bool)

(assert (=> b!518056 (=> (not res!219683) (not e!310151))))

(declare-fun invariantList!84 (List!4760) Bool)

(assert (=> b!518056 (= res!219683 (invariantList!84 (toList!438 lt!215980)))))

(assert (=> b!518056 (= lt!215980 (map!1067 (_2!3160 lt!215979)))))

(declare-fun tp!161550 () Bool)

(declare-fun tp!161554 () Bool)

(declare-fun array_inv!693 (array!2077) Bool)

(declare-fun array_inv!694 (array!2075) Bool)

(assert (=> b!518057 (= e!310153 (and tp!161547 tp!161554 tp!161550 (array_inv!693 (_keys!824 (v!15811 (underlying!1245 (v!15812 (underlying!1246 hm!65)))))) (array_inv!694 (_values!811 (v!15811 (underlying!1245 (v!15812 (underlying!1246 hm!65)))))) e!310158))))

(assert (= (and start!47150 res!219681) b!518053))

(assert (= (and b!518053 res!219682) b!518047))

(assert (= (and b!518047 res!219680) b!518048))

(assert (= (and b!518048 res!219684) b!518056))

(assert (= (and b!518056 res!219683) b!518050))

(assert (= (and b!518050 c!100317) b!518052))

(assert (= (and b!518050 (not c!100317)) b!518054))

(assert (= (or b!518052 b!518054) bm!37958))

(assert (= (or b!518052 b!518054) bm!37959))

(assert (= (and b!518055 condMapEmpty!2069) mapIsEmpty!2069))

(assert (= (and b!518055 (not condMapEmpty!2069)) mapNonEmpty!2069))

(assert (= b!518057 b!518055))

(assert (= b!518049 b!518057))

(assert (= b!518051 b!518049))

(assert (= (and b!518046 ((_ is LongMap!533) (v!15812 (underlying!1246 hm!65)))) b!518051))

(assert (= b!518045 b!518046))

(assert (= (and start!47150 ((_ is HashMap!505) hm!65)) b!518045))

(declare-fun m!765055 () Bool)

(assert (=> b!518050 m!765055))

(declare-fun m!765057 () Bool)

(assert (=> bm!37959 m!765057))

(declare-fun m!765059 () Bool)

(assert (=> b!518053 m!765059))

(declare-fun m!765061 () Bool)

(assert (=> b!518056 m!765061))

(declare-fun m!765063 () Bool)

(assert (=> b!518056 m!765063))

(declare-fun m!765065 () Bool)

(assert (=> b!518052 m!765065))

(assert (=> b!518052 m!765055))

(declare-fun m!765067 () Bool)

(assert (=> b!518057 m!765067))

(declare-fun m!765069 () Bool)

(assert (=> b!518057 m!765069))

(declare-fun m!765071 () Bool)

(assert (=> b!518047 m!765071))

(declare-fun m!765073 () Bool)

(assert (=> b!518047 m!765073))

(declare-fun m!765075 () Bool)

(assert (=> bm!37958 m!765075))

(declare-fun m!765077 () Bool)

(assert (=> mapNonEmpty!2069 m!765077))

(declare-fun m!765079 () Bool)

(assert (=> b!518048 m!765079))

(declare-fun m!765081 () Bool)

(assert (=> b!518048 m!765081))

(declare-fun m!765083 () Bool)

(assert (=> b!518048 m!765083))

(check-sat (not b_next!13673) b_and!51145 (not b!518057) (not b!518050) (not b_next!13671) (not b!518052) (not mapNonEmpty!2069) (not b!518055) (not bm!37959) (not b!518053) (not bm!37958) tp_is_empty!2663 (not b!518047) (not b!518048) (not b_next!13675) (not b!518056) b_and!51143 b_and!51147)
(check-sat (not b_next!13673) b_and!51145 (not b_next!13671) (not b_next!13675) b_and!51143 b_and!51147)
(get-model)

(declare-fun d!185217 () Bool)

(assert (=> d!185217 (forall!1420 (ite c!100317 (toList!438 lt!215980) (toList!438 lt!215975)) p!6060)))

(declare-fun lt!215983 () Unit!8703)

(declare-fun choose!3700 (List!4760 List!4760 Int) Unit!8703)

(assert (=> d!185217 (= lt!215983 (choose!3700 (ite c!100317 (toList!438 lt!215980) (toList!438 lt!215975)) (ite c!100317 (toList!438 lt!215975) (toList!438 lt!215972)) p!6060))))

(assert (=> d!185217 (invariantList!84 (ite c!100317 (toList!438 lt!215980) (toList!438 lt!215975)))))

(assert (=> d!185217 (= (lemmaForallSubset!15 (ite c!100317 (toList!438 lt!215980) (toList!438 lt!215975)) (ite c!100317 (toList!438 lt!215975) (toList!438 lt!215972)) p!6060) lt!215983)))

(declare-fun bs!60315 () Bool)

(assert (= bs!60315 d!185217))

(declare-fun m!765085 () Bool)

(assert (=> bs!60315 m!765085))

(declare-fun m!765087 () Bool)

(assert (=> bs!60315 m!765087))

(declare-fun m!765089 () Bool)

(assert (=> bs!60315 m!765089))

(assert (=> bm!37958 d!185217))

(declare-fun d!185219 () Bool)

(declare-fun res!219689 () Bool)

(declare-fun e!310166 () Bool)

(assert (=> d!185219 (=> res!219689 e!310166)))

(assert (=> d!185219 (= res!219689 ((_ is Nil!4750) (toList!438 lt!215975)))))

(assert (=> d!185219 (= (forall!1420 (toList!438 lt!215975) p!6060) e!310166)))

(declare-fun b!518062 () Bool)

(declare-fun e!310167 () Bool)

(assert (=> b!518062 (= e!310166 e!310167)))

(declare-fun res!219690 () Bool)

(assert (=> b!518062 (=> (not res!219690) (not e!310167))))

(declare-fun dynLambda!2990 (Int tuple2!5886) Bool)

(assert (=> b!518062 (= res!219690 (dynLambda!2990 p!6060 (h!10151 (toList!438 lt!215975))))))

(declare-fun b!518063 () Bool)

(assert (=> b!518063 (= e!310167 (forall!1420 (t!73344 (toList!438 lt!215975)) p!6060))))

(assert (= (and d!185219 (not res!219689)) b!518062))

(assert (= (and b!518062 res!219690) b!518063))

(declare-fun b_lambda!20169 () Bool)

(assert (=> (not b_lambda!20169) (not b!518062)))

(declare-fun t!73346 () Bool)

(declare-fun tb!47183 () Bool)

(assert (=> (and start!47150 (= p!6060 p!6060) t!73346) tb!47183))

(declare-fun result!52270 () Bool)

(assert (=> tb!47183 (= result!52270 true)))

(assert (=> b!518062 t!73346))

(declare-fun b_and!51149 () Bool)

(assert (= b_and!51147 (and (=> t!73346 result!52270) b_and!51149)))

(declare-fun m!765091 () Bool)

(assert (=> b!518062 m!765091))

(declare-fun m!765093 () Bool)

(assert (=> b!518063 m!765093))

(assert (=> bm!37959 d!185219))

(declare-fun d!185221 () Bool)

(declare-fun res!219691 () Bool)

(declare-fun e!310168 () Bool)

(assert (=> d!185221 (=> res!219691 e!310168)))

(assert (=> d!185221 (= res!219691 ((_ is Nil!4750) (toList!438 lt!215980)))))

(assert (=> d!185221 (= (forall!1420 (toList!438 lt!215980) p!6060) e!310168)))

(declare-fun b!518064 () Bool)

(declare-fun e!310169 () Bool)

(assert (=> b!518064 (= e!310168 e!310169)))

(declare-fun res!219692 () Bool)

(assert (=> b!518064 (=> (not res!219692) (not e!310169))))

(assert (=> b!518064 (= res!219692 (dynLambda!2990 p!6060 (h!10151 (toList!438 lt!215980))))))

(declare-fun b!518065 () Bool)

(assert (=> b!518065 (= e!310169 (forall!1420 (t!73344 (toList!438 lt!215980)) p!6060))))

(assert (= (and d!185221 (not res!219691)) b!518064))

(assert (= (and b!518064 res!219692) b!518065))

(declare-fun b_lambda!20171 () Bool)

(assert (=> (not b_lambda!20171) (not b!518064)))

(declare-fun t!73348 () Bool)

(declare-fun tb!47185 () Bool)

(assert (=> (and start!47150 (= p!6060 p!6060) t!73348) tb!47185))

(declare-fun result!52272 () Bool)

(assert (=> tb!47185 (= result!52272 true)))

(assert (=> b!518064 t!73348))

(declare-fun b_and!51151 () Bool)

(assert (= b_and!51149 (and (=> t!73348 result!52272) b_and!51151)))

(declare-fun m!765095 () Bool)

(assert (=> b!518064 m!765095))

(declare-fun m!765097 () Bool)

(assert (=> b!518065 m!765097))

(assert (=> b!518050 d!185221))

(declare-fun d!185223 () Bool)

(assert (=> d!185223 (= (array_inv!693 (_keys!824 (v!15811 (underlying!1245 (v!15812 (underlying!1246 hm!65)))))) (bvsge (size!3885 (_keys!824 (v!15811 (underlying!1245 (v!15812 (underlying!1246 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!518057 d!185223))

(declare-fun d!185225 () Bool)

(assert (=> d!185225 (= (array_inv!694 (_values!811 (v!15811 (underlying!1245 (v!15812 (underlying!1246 hm!65)))))) (bvsge (size!3884 (_values!811 (v!15811 (underlying!1245 (v!15812 (underlying!1246 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!518057 d!185225))

(declare-fun d!185227 () Bool)

(declare-fun res!219697 () Bool)

(declare-fun e!310172 () Bool)

(assert (=> d!185227 (=> (not res!219697) (not e!310172))))

(declare-fun valid!506 (MutLongMap!533) Bool)

(assert (=> d!185227 (= res!219697 (valid!506 (v!15812 (underlying!1246 hm!65))))))

(assert (=> d!185227 (= (valid!505 hm!65) e!310172)))

(declare-fun b!518070 () Bool)

(declare-fun res!219698 () Bool)

(assert (=> b!518070 (=> (not res!219698) (not e!310172))))

(declare-fun lambda!14657 () Int)

(declare-datatypes ((tuple2!5890 0))(
  ( (tuple2!5891 (_1!3161 (_ BitVec 64)) (_2!3161 List!4760)) )
))
(declare-datatypes ((List!4761 0))(
  ( (Nil!4751) (Cons!4751 (h!10152 tuple2!5890) (t!73351 List!4761)) )
))
(declare-fun forall!1421 (List!4761 Int) Bool)

(declare-datatypes ((ListLongMap!91 0))(
  ( (ListLongMap!92 (toList!439 List!4761)) )
))
(declare-fun map!1068 (MutLongMap!533) ListLongMap!91)

(assert (=> b!518070 (= res!219698 (forall!1421 (toList!439 (map!1068 (v!15812 (underlying!1246 hm!65)))) lambda!14657))))

(declare-fun b!518071 () Bool)

(declare-fun allKeysSameHashInMap!34 (ListLongMap!91 Hashable!505) Bool)

(assert (=> b!518071 (= e!310172 (allKeysSameHashInMap!34 (map!1068 (v!15812 (underlying!1246 hm!65))) (hashF!2409 hm!65)))))

(assert (= (and d!185227 res!219697) b!518070))

(assert (= (and b!518070 res!219698) b!518071))

(declare-fun m!765099 () Bool)

(assert (=> d!185227 m!765099))

(declare-fun m!765101 () Bool)

(assert (=> b!518070 m!765101))

(declare-fun m!765103 () Bool)

(assert (=> b!518070 m!765103))

(assert (=> b!518071 m!765101))

(assert (=> b!518071 m!765101))

(declare-fun m!765105 () Bool)

(assert (=> b!518071 m!765105))

(assert (=> b!518053 d!185227))

(declare-fun d!185229 () Bool)

(declare-fun res!219699 () Bool)

(declare-fun e!310173 () Bool)

(assert (=> d!185229 (=> res!219699 e!310173)))

(assert (=> d!185229 (= res!219699 ((_ is Nil!4750) (toList!438 lt!215972)))))

(assert (=> d!185229 (= (forall!1420 (toList!438 lt!215972) p!6060) e!310173)))

(declare-fun b!518072 () Bool)

(declare-fun e!310174 () Bool)

(assert (=> b!518072 (= e!310173 e!310174)))

(declare-fun res!219700 () Bool)

(assert (=> b!518072 (=> (not res!219700) (not e!310174))))

(assert (=> b!518072 (= res!219700 (dynLambda!2990 p!6060 (h!10151 (toList!438 lt!215972))))))

(declare-fun b!518073 () Bool)

(assert (=> b!518073 (= e!310174 (forall!1420 (t!73344 (toList!438 lt!215972)) p!6060))))

(assert (= (and d!185229 (not res!219699)) b!518072))

(assert (= (and b!518072 res!219700) b!518073))

(declare-fun b_lambda!20173 () Bool)

(assert (=> (not b_lambda!20173) (not b!518072)))

(declare-fun t!73350 () Bool)

(declare-fun tb!47187 () Bool)

(assert (=> (and start!47150 (= p!6060 p!6060) t!73350) tb!47187))

(declare-fun result!52274 () Bool)

(assert (=> tb!47187 (= result!52274 true)))

(assert (=> b!518072 t!73350))

(declare-fun b_and!51153 () Bool)

(assert (= b_and!51151 (and (=> t!73350 result!52274) b_and!51153)))

(declare-fun m!765107 () Bool)

(assert (=> b!518072 m!765107))

(declare-fun m!765109 () Bool)

(assert (=> b!518073 m!765109))

(assert (=> b!518047 d!185229))

(declare-fun d!185231 () Bool)

(declare-fun lt!215986 () ListMap!217)

(assert (=> d!185231 (invariantList!84 (toList!438 lt!215986))))

(declare-fun extractMap!27 (List!4761) ListMap!217)

(assert (=> d!185231 (= lt!215986 (extractMap!27 (toList!439 (map!1068 (v!15812 (underlying!1246 hm!65))))))))

(assert (=> d!185231 (valid!505 hm!65)))

(assert (=> d!185231 (= (map!1067 hm!65) lt!215986)))

(declare-fun bs!60316 () Bool)

(assert (= bs!60316 d!185231))

(declare-fun m!765111 () Bool)

(assert (=> bs!60316 m!765111))

(assert (=> bs!60316 m!765101))

(declare-fun m!765113 () Bool)

(assert (=> bs!60316 m!765113))

(assert (=> bs!60316 m!765059))

(assert (=> b!518047 d!185231))

(declare-fun d!185233 () Bool)

(declare-fun noDuplicatedKeys!22 (List!4760) Bool)

(assert (=> d!185233 (= (invariantList!84 (toList!438 lt!215980)) (noDuplicatedKeys!22 (toList!438 lt!215980)))))

(declare-fun bs!60317 () Bool)

(assert (= bs!60317 d!185233))

(declare-fun m!765115 () Bool)

(assert (=> bs!60317 m!765115))

(assert (=> b!518056 d!185233))

(declare-fun d!185235 () Bool)

(declare-fun lt!215987 () ListMap!217)

(assert (=> d!185235 (invariantList!84 (toList!438 lt!215987))))

(assert (=> d!185235 (= lt!215987 (extractMap!27 (toList!439 (map!1068 (v!15812 (underlying!1246 (_2!3160 lt!215979)))))))))

(assert (=> d!185235 (valid!505 (_2!3160 lt!215979))))

(assert (=> d!185235 (= (map!1067 (_2!3160 lt!215979)) lt!215987)))

(declare-fun bs!60318 () Bool)

(assert (= bs!60318 d!185235))

(declare-fun m!765117 () Bool)

(assert (=> bs!60318 m!765117))

(declare-fun m!765119 () Bool)

(assert (=> bs!60318 m!765119))

(declare-fun m!765121 () Bool)

(assert (=> bs!60318 m!765121))

(assert (=> bs!60318 m!765079))

(assert (=> b!518056 d!185235))

(declare-fun d!185237 () Bool)

(assert (=> d!185237 (forall!1420 (toList!438 lt!215975) p!6060)))

(declare-fun lt!215988 () Unit!8703)

(assert (=> d!185237 (= lt!215988 (choose!3700 (toList!438 lt!215975) (toList!438 lt!215972) p!6060))))

(assert (=> d!185237 (invariantList!84 (toList!438 lt!215975))))

(assert (=> d!185237 (= (lemmaForallSubset!15 (toList!438 lt!215975) (toList!438 lt!215972) p!6060) lt!215988)))

(declare-fun bs!60319 () Bool)

(assert (= bs!60319 d!185237))

(assert (=> bs!60319 m!765057))

(declare-fun m!765123 () Bool)

(assert (=> bs!60319 m!765123))

(declare-fun m!765125 () Bool)

(assert (=> bs!60319 m!765125))

(assert (=> b!518052 d!185237))

(assert (=> b!518052 d!185221))

(declare-fun bs!60320 () Bool)

(declare-fun b!518074 () Bool)

(assert (= bs!60320 (and b!518074 b!518070)))

(declare-fun lambda!14658 () Int)

(assert (=> bs!60320 (= lambda!14658 lambda!14657)))

(declare-fun d!185239 () Bool)

(declare-fun res!219701 () Bool)

(declare-fun e!310175 () Bool)

(assert (=> d!185239 (=> (not res!219701) (not e!310175))))

(assert (=> d!185239 (= res!219701 (valid!506 (v!15812 (underlying!1246 (_2!3160 lt!215979)))))))

(assert (=> d!185239 (= (valid!505 (_2!3160 lt!215979)) e!310175)))

(declare-fun res!219702 () Bool)

(assert (=> b!518074 (=> (not res!219702) (not e!310175))))

(assert (=> b!518074 (= res!219702 (forall!1421 (toList!439 (map!1068 (v!15812 (underlying!1246 (_2!3160 lt!215979))))) lambda!14658))))

(declare-fun b!518075 () Bool)

(assert (=> b!518075 (= e!310175 (allKeysSameHashInMap!34 (map!1068 (v!15812 (underlying!1246 (_2!3160 lt!215979)))) (hashF!2409 (_2!3160 lt!215979))))))

(assert (= (and d!185239 res!219701) b!518074))

(assert (= (and b!518074 res!219702) b!518075))

(declare-fun m!765127 () Bool)

(assert (=> d!185239 m!765127))

(assert (=> b!518074 m!765119))

(declare-fun m!765129 () Bool)

(assert (=> b!518074 m!765129))

(assert (=> b!518075 m!765119))

(assert (=> b!518075 m!765119))

(declare-fun m!765131 () Bool)

(assert (=> b!518075 m!765131))

(assert (=> b!518048 d!185239))

(declare-fun bs!60321 () Bool)

(declare-fun b!518107 () Bool)

(assert (= bs!60321 (and b!518107 b!518070)))

(declare-fun lambda!14665 () Int)

(assert (=> bs!60321 (= lambda!14665 lambda!14657)))

(declare-fun bs!60322 () Bool)

(assert (= bs!60322 (and b!518107 b!518074)))

(assert (=> bs!60322 (= lambda!14665 lambda!14658)))

(declare-fun b!518098 () Bool)

(declare-fun call!37986 () ListMap!217)

(declare-fun lt!216071 () ListMap!217)

(assert (=> b!518098 (= call!37986 lt!216071)))

(declare-fun lt!216049 () Unit!8703)

(declare-fun Unit!8705 () Unit!8703)

(assert (=> b!518098 (= lt!216049 Unit!8705)))

(declare-fun call!37982 () Bool)

(assert (=> b!518098 call!37982))

(declare-fun e!310189 () Unit!8703)

(declare-fun Unit!8706 () Unit!8703)

(assert (=> b!518098 (= e!310189 Unit!8706)))

(declare-fun b!518100 () Bool)

(declare-fun call!37984 () ListMap!217)

(declare-fun eq!42 (ListMap!217 ListMap!217) Bool)

(assert (=> b!518100 (eq!42 call!37986 call!37984)))

(declare-fun lt!216061 () Unit!8703)

(declare-fun lt!216070 () Unit!8703)

(assert (=> b!518100 (= lt!216061 lt!216070)))

(declare-fun lt!216066 () ListLongMap!91)

(declare-fun lt!216050 () (_ BitVec 64))

(declare-fun lt!216060 () List!4760)

(declare-fun call!37988 () ListMap!217)

(declare-fun +!30 (ListLongMap!91 tuple2!5890) ListLongMap!91)

(assert (=> b!518100 (eq!42 (extractMap!27 (toList!439 (+!30 lt!216066 (tuple2!5891 lt!216050 lt!216060)))) (-!46 call!37988 k0!1740))))

(declare-datatypes ((tuple2!5892 0))(
  ( (tuple2!5893 (_1!3162 Unit!8703) (_2!3162 MutableMap!505)) )
))
(declare-fun lt!216053 () tuple2!5892)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!19 (ListLongMap!91 (_ BitVec 64) List!4760 K!1447 Hashable!505) Unit!8703)

(assert (=> b!518100 (= lt!216070 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!19 lt!216066 lt!216050 lt!216060 k0!1740 (hashF!2409 (_2!3162 lt!216053))))))

(declare-fun lt!216062 () Unit!8703)

(declare-fun Unit!8707 () Unit!8703)

(assert (=> b!518100 (= lt!216062 Unit!8707)))

(declare-fun contains!1113 (ListMap!217 K!1447) Bool)

(assert (=> b!518100 (contains!1113 lt!216071 k0!1740)))

(declare-fun lt!216056 () Unit!8703)

(declare-fun Unit!8708 () Unit!8703)

(assert (=> b!518100 (= lt!216056 Unit!8708)))

(assert (=> b!518100 call!37982))

(declare-fun lt!216075 () Unit!8703)

(declare-fun Unit!8709 () Unit!8703)

(assert (=> b!518100 (= lt!216075 Unit!8709)))

(declare-fun call!37985 () ListLongMap!91)

(assert (=> b!518100 (allKeysSameHashInMap!34 call!37985 (hashF!2409 (_2!3162 lt!216053)))))

(declare-fun lt!216059 () Unit!8703)

(declare-fun Unit!8710 () Unit!8703)

(assert (=> b!518100 (= lt!216059 Unit!8710)))

(assert (=> b!518100 (forall!1421 (toList!439 call!37985) lambda!14665)))

(declare-fun lt!216054 () Unit!8703)

(declare-fun lt!216055 () Unit!8703)

(assert (=> b!518100 (= lt!216054 lt!216055)))

(declare-fun e!310190 () Bool)

(assert (=> b!518100 e!310190))

(declare-fun res!219711 () Bool)

(assert (=> b!518100 (=> (not res!219711) (not e!310190))))

(declare-fun lt!216067 () ListLongMap!91)

(assert (=> b!518100 (= res!219711 (forall!1421 (toList!439 lt!216067) lambda!14665))))

(assert (=> b!518100 (= lt!216067 (+!30 lt!216066 (tuple2!5891 lt!216050 lt!216060)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!21 (ListLongMap!91 (_ BitVec 64) List!4760 Hashable!505) Unit!8703)

(assert (=> b!518100 (= lt!216055 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!21 lt!216066 lt!216050 lt!216060 (hashF!2409 (_2!3162 lt!216053))))))

(declare-fun lt!216063 () Unit!8703)

(declare-fun lt!216074 () Unit!8703)

(assert (=> b!518100 (= lt!216063 lt!216074)))

(declare-fun lt!216077 () List!4760)

(declare-fun allKeysSameHash!22 (List!4760 (_ BitVec 64) Hashable!505) Bool)

(declare-fun removePairForKey!21 (List!4760 K!1447) List!4760)

(assert (=> b!518100 (allKeysSameHash!22 (removePairForKey!21 lt!216077 k0!1740) lt!216050 (hashF!2409 (_2!3162 lt!216053)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!21 (List!4760 K!1447 (_ BitVec 64) Hashable!505) Unit!8703)

(assert (=> b!518100 (= lt!216074 (lemmaRemovePairForKeyPreservesHash!21 lt!216077 k0!1740 lt!216050 (hashF!2409 (_2!3162 lt!216053))))))

(declare-fun lt!216078 () Unit!8703)

(declare-fun lt!216076 () Unit!8703)

(assert (=> b!518100 (= lt!216078 lt!216076)))

(assert (=> b!518100 (allKeysSameHash!22 lt!216077 lt!216050 (hashF!2409 (_2!3162 lt!216053)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!21 (List!4761 (_ BitVec 64) List!4760 Hashable!505) Unit!8703)

(assert (=> b!518100 (= lt!216076 (lemmaInLongMapAllKeySameHashThenForTuple!21 (toList!439 lt!216066) lt!216050 lt!216077 (hashF!2409 (_2!3162 lt!216053))))))

(declare-fun Unit!8711 () Unit!8703)

(assert (=> b!518100 (= e!310189 Unit!8711)))

(declare-fun b!518101 () Bool)

(declare-fun e!310188 () ListMap!217)

(declare-fun call!37981 () ListMap!217)

(assert (=> b!518101 (= e!310188 call!37981)))

(declare-fun b!518102 () Bool)

(declare-fun e!310192 () Bool)

(declare-fun e!310191 () Bool)

(assert (=> b!518102 (= e!310192 e!310191)))

(declare-fun c!100328 () Bool)

(declare-fun lt!216073 () tuple2!5888)

(assert (=> b!518102 (= c!100328 (_1!3160 lt!216073))))

(declare-fun b!518103 () Bool)

(declare-fun e!310193 () tuple2!5888)

(assert (=> b!518103 (= e!310193 (tuple2!5889 true hm!65))))

(declare-fun lt!216072 () ListLongMap!91)

(assert (=> b!518103 (= lt!216072 call!37985)))

(declare-fun lt!216057 () Unit!8703)

(declare-fun lemmaRemoveNotContainedDoesNotChange!19 (ListLongMap!91 K!1447 Hashable!505) Unit!8703)

(assert (=> b!518103 (= lt!216057 (lemmaRemoveNotContainedDoesNotChange!19 lt!216072 k0!1740 (hashF!2409 hm!65)))))

(assert (=> b!518103 (= call!37988 call!37984)))

(declare-fun lt!216069 () Unit!8703)

(assert (=> b!518103 (= lt!216069 lt!216057)))

(declare-fun bm!37976 () Bool)

(declare-fun c!100326 () Bool)

(assert (=> bm!37976 (= call!37988 (extractMap!27 (ite c!100326 (toList!439 lt!216072) (toList!439 lt!216066))))))

(declare-fun bm!37977 () Bool)

(assert (=> bm!37977 (= call!37982 (valid!505 (_2!3162 lt!216053)))))

(declare-fun bm!37978 () Bool)

(assert (=> bm!37978 (= call!37985 (map!1068 (ite c!100326 (v!15812 (underlying!1246 hm!65)) (v!15812 (underlying!1246 (_2!3162 lt!216053))))))))

(declare-fun bm!37979 () Bool)

(declare-fun call!37983 () Bool)

(declare-fun call!37987 () ListMap!217)

(assert (=> bm!37979 (= call!37983 (eq!42 call!37987 e!310188))))

(declare-fun c!100329 () Bool)

(assert (=> bm!37979 (= c!100329 c!100328)))

(declare-fun b!518099 () Bool)

(assert (=> b!518099 (= e!310191 call!37983)))

(declare-fun d!185241 () Bool)

(assert (=> d!185241 e!310192))

(declare-fun res!219710 () Bool)

(assert (=> d!185241 (=> (not res!219710) (not e!310192))))

(assert (=> d!185241 (= res!219710 ((_ is HashMap!505) (_2!3160 lt!216073)))))

(assert (=> d!185241 (= lt!216073 e!310193)))

(declare-fun lt!216051 () Bool)

(assert (=> d!185241 (= c!100326 (not lt!216051))))

(declare-fun contains!1114 (MutableMap!505 K!1447) Bool)

(assert (=> d!185241 (= lt!216051 (contains!1114 hm!65 k0!1740))))

(assert (=> d!185241 (valid!505 hm!65)))

(assert (=> d!185241 (= (remove!49 hm!65 k0!1740) lt!216073)))

(declare-fun b!518104 () Bool)

(assert (=> b!518104 (= e!310191 call!37983)))

(declare-fun bm!37980 () Bool)

(assert (=> bm!37980 (= call!37987 (map!1067 (_2!3160 lt!216073)))))

(declare-fun bm!37981 () Bool)

(assert (=> bm!37981 (= call!37986 (map!1067 (_2!3162 lt!216053)))))

(declare-fun bm!37982 () Bool)

(assert (=> bm!37982 (= call!37981 (map!1067 hm!65))))

(declare-fun b!518105 () Bool)

(assert (=> b!518105 (= e!310190 (allKeysSameHashInMap!34 lt!216067 (hashF!2409 (_2!3162 lt!216053))))))

(declare-fun b!518106 () Bool)

(assert (=> b!518106 (= e!310188 (-!46 call!37981 k0!1740))))

(declare-datatypes ((tuple2!5894 0))(
  ( (tuple2!5895 (_1!3163 Bool) (_2!3163 MutLongMap!533)) )
))
(declare-fun lt!216068 () tuple2!5894)

(assert (=> b!518107 (= e!310193 (tuple2!5889 (_1!3163 lt!216068) (_2!3162 lt!216053)))))

(declare-fun hash!540 (Hashable!505 K!1447) (_ BitVec 64))

(assert (=> b!518107 (= lt!216050 (hash!540 (hashF!2409 hm!65) k0!1740))))

(declare-fun apply!1197 (MutLongMap!533 (_ BitVec 64)) List!4760)

(assert (=> b!518107 (= lt!216077 (apply!1197 (v!15812 (underlying!1246 hm!65)) lt!216050))))

(declare-fun lt!216065 () Unit!8703)

(declare-fun forallContained!452 (List!4761 Int tuple2!5890) Unit!8703)

(assert (=> b!518107 (= lt!216065 (forallContained!452 (toList!439 (map!1068 (v!15812 (underlying!1246 hm!65)))) lambda!14665 (tuple2!5891 lt!216050 (apply!1197 (v!15812 (underlying!1246 hm!65)) lt!216050))))))

(assert (=> b!518107 (= lt!216071 (map!1067 hm!65))))

(assert (=> b!518107 (= lt!216066 (map!1068 (v!15812 (underlying!1246 hm!65))))))

(assert (=> b!518107 (= lt!216060 (removePairForKey!21 lt!216077 k0!1740))))

(declare-fun update!64 (MutLongMap!533 (_ BitVec 64) List!4760) tuple2!5894)

(assert (=> b!518107 (= lt!216068 (update!64 (v!15812 (underlying!1246 hm!65)) lt!216050 lt!216060))))

(declare-fun Unit!8712 () Unit!8703)

(declare-fun Unit!8713 () Unit!8703)

(assert (=> b!518107 (= lt!216053 (ite (and (_1!3163 lt!216068) lt!216051) (tuple2!5893 Unit!8712 (HashMap!505 (Cell!2076 (_2!3163 lt!216068)) (hashF!2409 hm!65) (bvsub (_size!1176 hm!65) #b00000000000000000000000000000001) (defaultValue!654 hm!65))) (tuple2!5893 Unit!8713 (HashMap!505 (Cell!2076 (_2!3163 lt!216068)) (hashF!2409 hm!65) (_size!1176 hm!65) (defaultValue!654 hm!65)))))))

(declare-fun lt!216064 () Unit!8703)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!21 (List!4760 K!1447) Unit!8703)

(assert (=> b!518107 (= lt!216064 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!21 lt!216077 k0!1740))))

(declare-fun noDuplicateKeys!23 (List!4760) Bool)

(assert (=> b!518107 (noDuplicateKeys!23 (removePairForKey!21 lt!216077 k0!1740))))

(declare-fun lt!216052 () Unit!8703)

(assert (=> b!518107 (= lt!216052 lt!216064)))

(declare-fun c!100327 () Bool)

(assert (=> b!518107 (= c!100327 (_1!3163 lt!216068))))

(declare-fun lt!216058 () Unit!8703)

(assert (=> b!518107 (= lt!216058 e!310189)))

(declare-fun b!518108 () Bool)

(declare-fun res!219709 () Bool)

(assert (=> b!518108 (=> (not res!219709) (not e!310192))))

(assert (=> b!518108 (= res!219709 (valid!505 (_2!3160 lt!216073)))))

(declare-fun bm!37983 () Bool)

(assert (=> bm!37983 (= call!37984 (-!46 (ite c!100326 call!37988 lt!216071) k0!1740))))

(assert (= (and d!185241 c!100326) b!518103))

(assert (= (and d!185241 (not c!100326)) b!518107))

(assert (= (and b!518107 c!100327) b!518100))

(assert (= (and b!518107 (not c!100327)) b!518098))

(assert (= (and b!518100 res!219711) b!518105))

(assert (= (or b!518100 b!518098) bm!37977))

(assert (= (or b!518100 b!518098) bm!37981))

(assert (= (or b!518103 b!518100) bm!37978))

(assert (= (or b!518103 b!518100) bm!37976))

(assert (= (or b!518103 b!518100) bm!37983))

(assert (= (and d!185241 res!219710) b!518108))

(assert (= (and b!518108 res!219709) b!518102))

(assert (= (and b!518102 c!100328) b!518099))

(assert (= (and b!518102 (not c!100328)) b!518104))

(assert (= (or b!518099 b!518104) bm!37982))

(assert (= (or b!518099 b!518104) bm!37980))

(assert (= (or b!518099 b!518104) bm!37979))

(assert (= (and bm!37979 c!100329) b!518106))

(assert (= (and bm!37979 (not c!100329)) b!518101))

(declare-fun m!765133 () Bool)

(assert (=> d!185241 m!765133))

(assert (=> d!185241 m!765059))

(declare-fun m!765135 () Bool)

(assert (=> bm!37979 m!765135))

(declare-fun m!765137 () Bool)

(assert (=> bm!37978 m!765137))

(declare-fun m!765139 () Bool)

(assert (=> b!518107 m!765139))

(declare-fun m!765141 () Bool)

(assert (=> b!518107 m!765141))

(declare-fun m!765143 () Bool)

(assert (=> b!518107 m!765143))

(declare-fun m!765145 () Bool)

(assert (=> b!518107 m!765145))

(declare-fun m!765147 () Bool)

(assert (=> b!518107 m!765147))

(assert (=> b!518107 m!765073))

(declare-fun m!765149 () Bool)

(assert (=> b!518107 m!765149))

(declare-fun m!765151 () Bool)

(assert (=> b!518107 m!765151))

(assert (=> b!518107 m!765101))

(assert (=> b!518107 m!765139))

(assert (=> bm!37982 m!765073))

(declare-fun m!765153 () Bool)

(assert (=> bm!37976 m!765153))

(declare-fun m!765155 () Bool)

(assert (=> bm!37983 m!765155))

(declare-fun m!765157 () Bool)

(assert (=> b!518105 m!765157))

(declare-fun m!765159 () Bool)

(assert (=> b!518106 m!765159))

(declare-fun m!765161 () Bool)

(assert (=> bm!37977 m!765161))

(declare-fun m!765163 () Bool)

(assert (=> b!518103 m!765163))

(declare-fun m!765165 () Bool)

(assert (=> b!518108 m!765165))

(declare-fun m!765167 () Bool)

(assert (=> b!518100 m!765167))

(declare-fun m!765169 () Bool)

(assert (=> b!518100 m!765169))

(declare-fun m!765171 () Bool)

(assert (=> b!518100 m!765171))

(declare-fun m!765173 () Bool)

(assert (=> b!518100 m!765173))

(declare-fun m!765175 () Bool)

(assert (=> b!518100 m!765175))

(declare-fun m!765177 () Bool)

(assert (=> b!518100 m!765177))

(declare-fun m!765179 () Bool)

(assert (=> b!518100 m!765179))

(declare-fun m!765181 () Bool)

(assert (=> b!518100 m!765181))

(assert (=> b!518100 m!765177))

(declare-fun m!765183 () Bool)

(assert (=> b!518100 m!765183))

(assert (=> b!518100 m!765175))

(assert (=> b!518100 m!765139))

(declare-fun m!765185 () Bool)

(assert (=> b!518100 m!765185))

(declare-fun m!765187 () Bool)

(assert (=> b!518100 m!765187))

(declare-fun m!765189 () Bool)

(assert (=> b!518100 m!765189))

(declare-fun m!765191 () Bool)

(assert (=> b!518100 m!765191))

(declare-fun m!765193 () Bool)

(assert (=> b!518100 m!765193))

(assert (=> b!518100 m!765139))

(declare-fun m!765195 () Bool)

(assert (=> b!518100 m!765195))

(declare-fun m!765197 () Bool)

(assert (=> bm!37980 m!765197))

(declare-fun m!765199 () Bool)

(assert (=> bm!37981 m!765199))

(assert (=> b!518048 d!185241))

(declare-fun d!185243 () Bool)

(declare-fun e!310196 () Bool)

(assert (=> d!185243 e!310196))

(declare-fun res!219714 () Bool)

(assert (=> d!185243 (=> (not res!219714) (not e!310196))))

(declare-fun lt!216081 () ListMap!217)

(assert (=> d!185243 (= res!219714 (not (contains!1113 lt!216081 k0!1740)))))

(declare-fun removePresrvNoDuplicatedKeys!19 (List!4760 K!1447) List!4760)

(assert (=> d!185243 (= lt!216081 (ListMap!218 (removePresrvNoDuplicatedKeys!19 (toList!438 lt!215972) k0!1740)))))

(assert (=> d!185243 (= (-!46 lt!215972 k0!1740) lt!216081)))

(declare-fun b!518111 () Bool)

(declare-datatypes ((List!4762 0))(
  ( (Nil!4752) (Cons!4752 (h!10153 K!1447) (t!73352 List!4762)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!839 (List!4762) (InoxSet K!1447))

(declare-fun keys!1872 (ListMap!217) List!4762)

(assert (=> b!518111 (= e!310196 (= ((_ map and) (content!839 (keys!1872 lt!215972)) ((_ map not) (store ((as const (Array K!1447 Bool)) false) k0!1740 true))) (content!839 (keys!1872 lt!216081))))))

(assert (= (and d!185243 res!219714) b!518111))

(declare-fun m!765201 () Bool)

(assert (=> d!185243 m!765201))

(declare-fun m!765203 () Bool)

(assert (=> d!185243 m!765203))

(declare-fun m!765205 () Bool)

(assert (=> b!518111 m!765205))

(declare-fun m!765207 () Bool)

(assert (=> b!518111 m!765207))

(declare-fun m!765209 () Bool)

(assert (=> b!518111 m!765209))

(declare-fun m!765211 () Bool)

(assert (=> b!518111 m!765211))

(assert (=> b!518111 m!765209))

(assert (=> b!518111 m!765205))

(declare-fun m!765213 () Bool)

(assert (=> b!518111 m!765213))

(assert (=> b!518048 d!185243))

(declare-fun tp_is_empty!2665 () Bool)

(declare-fun b!518116 () Bool)

(declare-fun e!310199 () Bool)

(declare-fun tp!161557 () Bool)

(assert (=> b!518116 (= e!310199 (and tp_is_empty!2663 tp_is_empty!2665 tp!161557))))

(assert (=> b!518055 (= tp!161548 e!310199)))

(assert (= (and b!518055 ((_ is Cons!4750) mapDefault!2069)) b!518116))

(declare-fun e!310204 () Bool)

(declare-fun tp!161565 () Bool)

(declare-fun b!518124 () Bool)

(assert (=> b!518124 (= e!310204 (and tp_is_empty!2663 tp_is_empty!2665 tp!161565))))

(declare-fun mapIsEmpty!2072 () Bool)

(declare-fun mapRes!2072 () Bool)

(assert (=> mapIsEmpty!2072 mapRes!2072))

(declare-fun b!518123 () Bool)

(declare-fun e!310205 () Bool)

(declare-fun tp!161566 () Bool)

(assert (=> b!518123 (= e!310205 (and tp_is_empty!2663 tp_is_empty!2665 tp!161566))))

(declare-fun mapNonEmpty!2072 () Bool)

(declare-fun tp!161564 () Bool)

(assert (=> mapNonEmpty!2072 (= mapRes!2072 (and tp!161564 e!310205))))

(declare-fun mapValue!2072 () List!4760)

(declare-fun mapRest!2072 () (Array (_ BitVec 32) List!4760))

(declare-fun mapKey!2072 () (_ BitVec 32))

(assert (=> mapNonEmpty!2072 (= mapRest!2069 (store mapRest!2072 mapKey!2072 mapValue!2072))))

(declare-fun condMapEmpty!2072 () Bool)

(declare-fun mapDefault!2072 () List!4760)

(assert (=> mapNonEmpty!2069 (= condMapEmpty!2072 (= mapRest!2069 ((as const (Array (_ BitVec 32) List!4760)) mapDefault!2072)))))

(assert (=> mapNonEmpty!2069 (= tp!161549 (and e!310204 mapRes!2072))))

(assert (= (and mapNonEmpty!2069 condMapEmpty!2072) mapIsEmpty!2072))

(assert (= (and mapNonEmpty!2069 (not condMapEmpty!2072)) mapNonEmpty!2072))

(assert (= (and mapNonEmpty!2072 ((_ is Cons!4750) mapValue!2072)) b!518123))

(assert (= (and mapNonEmpty!2069 ((_ is Cons!4750) mapDefault!2072)) b!518124))

(declare-fun m!765215 () Bool)

(assert (=> mapNonEmpty!2072 m!765215))

(declare-fun tp!161567 () Bool)

(declare-fun b!518125 () Bool)

(declare-fun e!310206 () Bool)

(assert (=> b!518125 (= e!310206 (and tp_is_empty!2663 tp_is_empty!2665 tp!161567))))

(assert (=> mapNonEmpty!2069 (= tp!161553 e!310206)))

(assert (= (and mapNonEmpty!2069 ((_ is Cons!4750) mapValue!2069)) b!518125))

(declare-fun b!518126 () Bool)

(declare-fun e!310207 () Bool)

(declare-fun tp!161568 () Bool)

(assert (=> b!518126 (= e!310207 (and tp_is_empty!2663 tp_is_empty!2665 tp!161568))))

(assert (=> b!518057 (= tp!161554 e!310207)))

(assert (= (and b!518057 ((_ is Cons!4750) (zeroValue!789 (v!15811 (underlying!1245 (v!15812 (underlying!1246 hm!65))))))) b!518126))

(declare-fun b!518127 () Bool)

(declare-fun tp!161569 () Bool)

(declare-fun e!310208 () Bool)

(assert (=> b!518127 (= e!310208 (and tp_is_empty!2663 tp_is_empty!2665 tp!161569))))

(assert (=> b!518057 (= tp!161550 e!310208)))

(assert (= (and b!518057 ((_ is Cons!4750) (minValue!789 (v!15811 (underlying!1245 (v!15812 (underlying!1246 hm!65))))))) b!518127))

(declare-fun b_lambda!20175 () Bool)

(assert (= b_lambda!20171 (or (and start!47150 b_free!13659) b_lambda!20175)))

(declare-fun b_lambda!20177 () Bool)

(assert (= b_lambda!20169 (or (and start!47150 b_free!13659) b_lambda!20177)))

(declare-fun b_lambda!20179 () Bool)

(assert (= b_lambda!20173 (or (and start!47150 b_free!13659) b_lambda!20179)))

(check-sat b_and!51153 b_and!51145 (not b_lambda!20175) (not d!185231) (not d!185217) (not mapNonEmpty!2072) (not bm!37978) (not b_next!13673) (not b!518124) (not b!518105) (not b!518116) (not b!518070) (not b!518075) (not d!185241) (not b!518071) (not b!518123) (not d!185243) (not d!185227) (not b_next!13671) (not bm!37983) (not b!518100) tp_is_empty!2665 (not b!518073) (not d!185235) (not b!518106) tp_is_empty!2663 (not d!185237) (not b!518127) (not b!518126) (not b_lambda!20179) (not bm!37977) (not b_next!13675) (not bm!37981) (not bm!37976) (not d!185233) (not b!518107) (not b!518074) b_and!51143 (not b!518063) (not b!518125) (not bm!37982) (not d!185239) (not b!518108) (not b!518111) (not bm!37979) (not bm!37980) (not b!518103) (not b!518065) (not b_lambda!20177))
(check-sat (not b_next!13673) b_and!51153 b_and!51145 (not b_next!13671) (not b_next!13675) b_and!51143)
