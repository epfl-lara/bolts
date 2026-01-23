; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!724954 () Bool)

(assert start!724954)

(declare-fun b!7484651 () Bool)

(declare-fun e!4464092 () Bool)

(declare-fun tp!2170919 () Bool)

(declare-fun tp!2170923 () Bool)

(assert (=> b!7484651 (= e!4464092 (and tp!2170919 tp!2170923))))

(declare-fun b!7484652 () Bool)

(declare-fun res!3002932 () Bool)

(declare-fun e!4464091 () Bool)

(assert (=> b!7484652 (=> (not res!3002932) (not e!4464091))))

(declare-datatypes ((C!39516 0))(
  ( (C!39517 (val!30156 Int)) )
))
(declare-datatypes ((Regex!19621 0))(
  ( (ElementMatch!19621 (c!1382394 C!39516)) (Concat!28466 (regOne!39754 Regex!19621) (regTwo!39754 Regex!19621)) (EmptyExpr!19621) (Star!19621 (reg!19950 Regex!19621)) (EmptyLang!19621) (Union!19621 (regOne!39755 Regex!19621) (regTwo!39755 Regex!19621)) )
))
(declare-fun r2!5783 () Regex!19621)

(declare-fun validRegex!10135 (Regex!19621) Bool)

(assert (=> b!7484652 (= res!3002932 (validRegex!10135 r2!5783))))

(declare-fun b!7484653 () Bool)

(declare-fun tp_is_empty!49531 () Bool)

(assert (=> b!7484653 (= e!4464092 tp_is_empty!49531)))

(declare-fun b!7484654 () Bool)

(declare-fun e!4464093 () Bool)

(declare-fun tp!2170931 () Bool)

(declare-fun tp!2170921 () Bool)

(assert (=> b!7484654 (= e!4464093 (and tp!2170931 tp!2170921))))

(declare-fun b!7484655 () Bool)

(declare-fun e!4464094 () Bool)

(declare-fun tp!2170933 () Bool)

(assert (=> b!7484655 (= e!4464094 tp!2170933)))

(declare-fun b!7484656 () Bool)

(declare-fun tp!2170926 () Bool)

(assert (=> b!7484656 (= e!4464092 tp!2170926)))

(declare-fun res!3002933 () Bool)

(assert (=> start!724954 (=> (not res!3002933) (not e!4464091))))

(declare-fun r1!5845 () Regex!19621)

(assert (=> start!724954 (= res!3002933 (validRegex!10135 r1!5845))))

(assert (=> start!724954 e!4464091))

(assert (=> start!724954 e!4464094))

(assert (=> start!724954 e!4464093))

(assert (=> start!724954 e!4464092))

(declare-fun b!7484657 () Bool)

(declare-fun res!3002934 () Bool)

(assert (=> b!7484657 (=> (not res!3002934) (not e!4464091))))

(declare-fun rTail!78 () Regex!19621)

(assert (=> b!7484657 (= res!3002934 (validRegex!10135 rTail!78))))

(declare-fun b!7484658 () Bool)

(declare-fun tp!2170928 () Bool)

(declare-fun tp!2170929 () Bool)

(assert (=> b!7484658 (= e!4464094 (and tp!2170928 tp!2170929))))

(declare-fun b!7484659 () Bool)

(assert (=> b!7484659 (= e!4464093 tp_is_empty!49531)))

(declare-fun b!7484660 () Bool)

(declare-fun tp!2170924 () Bool)

(declare-fun tp!2170932 () Bool)

(assert (=> b!7484660 (= e!4464093 (and tp!2170924 tp!2170932))))

(declare-fun b!7484661 () Bool)

(declare-fun tp!2170925 () Bool)

(assert (=> b!7484661 (= e!4464093 tp!2170925)))

(declare-fun b!7484662 () Bool)

(assert (=> b!7484662 (= e!4464091 (not (validRegex!10135 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78))))))

(declare-fun b!7484663 () Bool)

(declare-fun tp!2170930 () Bool)

(declare-fun tp!2170927 () Bool)

(assert (=> b!7484663 (= e!4464094 (and tp!2170930 tp!2170927))))

(declare-fun b!7484664 () Bool)

(assert (=> b!7484664 (= e!4464094 tp_is_empty!49531)))

(declare-fun b!7484665 () Bool)

(declare-fun tp!2170922 () Bool)

(declare-fun tp!2170920 () Bool)

(assert (=> b!7484665 (= e!4464092 (and tp!2170922 tp!2170920))))

(assert (= (and start!724954 res!3002933) b!7484652))

(assert (= (and b!7484652 res!3002932) b!7484657))

(assert (= (and b!7484657 res!3002934) b!7484662))

(get-info :version)

(assert (= (and start!724954 ((_ is ElementMatch!19621) r1!5845)) b!7484664))

(assert (= (and start!724954 ((_ is Concat!28466) r1!5845)) b!7484663))

(assert (= (and start!724954 ((_ is Star!19621) r1!5845)) b!7484655))

(assert (= (and start!724954 ((_ is Union!19621) r1!5845)) b!7484658))

(assert (= (and start!724954 ((_ is ElementMatch!19621) r2!5783)) b!7484659))

(assert (= (and start!724954 ((_ is Concat!28466) r2!5783)) b!7484654))

(assert (= (and start!724954 ((_ is Star!19621) r2!5783)) b!7484661))

(assert (= (and start!724954 ((_ is Union!19621) r2!5783)) b!7484660))

(assert (= (and start!724954 ((_ is ElementMatch!19621) rTail!78)) b!7484653))

(assert (= (and start!724954 ((_ is Concat!28466) rTail!78)) b!7484665))

(assert (= (and start!724954 ((_ is Star!19621) rTail!78)) b!7484656))

(assert (= (and start!724954 ((_ is Union!19621) rTail!78)) b!7484651))

(declare-fun m!8075188 () Bool)

(assert (=> b!7484652 m!8075188))

(declare-fun m!8075190 () Bool)

(assert (=> start!724954 m!8075190))

(declare-fun m!8075192 () Bool)

(assert (=> b!7484657 m!8075192))

(declare-fun m!8075194 () Bool)

(assert (=> b!7484662 m!8075194))

(check-sat (not b!7484663) (not b!7484651) (not b!7484665) (not b!7484657) (not b!7484656) (not b!7484661) (not b!7484654) tp_is_empty!49531 (not b!7484662) (not b!7484655) (not start!724954) (not b!7484652) (not b!7484658) (not b!7484660))
(check-sat)
(get-model)

(declare-fun call!687091 () Bool)

(declare-fun c!1382403 () Bool)

(declare-fun bm!687086 () Bool)

(assert (=> bm!687086 (= call!687091 (validRegex!10135 (ite c!1382403 (regOne!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regOne!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)))))))

(declare-fun b!7484702 () Bool)

(declare-fun e!4464128 () Bool)

(declare-fun call!687093 () Bool)

(assert (=> b!7484702 (= e!4464128 call!687093)))

(declare-fun b!7484703 () Bool)

(declare-fun e!4464125 () Bool)

(declare-fun e!4464123 () Bool)

(assert (=> b!7484703 (= e!4464125 e!4464123)))

(declare-fun res!3002959 () Bool)

(declare-fun nullable!8558 (Regex!19621) Bool)

(assert (=> b!7484703 (= res!3002959 (not (nullable!8558 (reg!19950 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)))))))

(assert (=> b!7484703 (=> (not res!3002959) (not e!4464123))))

(declare-fun b!7484704 () Bool)

(declare-fun e!4464124 () Bool)

(assert (=> b!7484704 (= e!4464124 e!4464128)))

(declare-fun res!3002958 () Bool)

(assert (=> b!7484704 (=> (not res!3002958) (not e!4464128))))

(assert (=> b!7484704 (= res!3002958 call!687091)))

(declare-fun b!7484705 () Bool)

(declare-fun call!687092 () Bool)

(assert (=> b!7484705 (= e!4464123 call!687092)))

(declare-fun d!2300644 () Bool)

(declare-fun res!3002955 () Bool)

(declare-fun e!4464129 () Bool)

(assert (=> d!2300644 (=> res!3002955 e!4464129)))

(assert (=> d!2300644 (= res!3002955 ((_ is ElementMatch!19621) (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)))))

(assert (=> d!2300644 (= (validRegex!10135 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) e!4464129)))

(declare-fun c!1382404 () Bool)

(declare-fun bm!687087 () Bool)

(assert (=> bm!687087 (= call!687092 (validRegex!10135 (ite c!1382404 (reg!19950 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (ite c!1382403 (regTwo!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regTwo!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78))))))))

(declare-fun bm!687088 () Bool)

(assert (=> bm!687088 (= call!687093 call!687092)))

(declare-fun b!7484706 () Bool)

(declare-fun e!4464126 () Bool)

(assert (=> b!7484706 (= e!4464125 e!4464126)))

(assert (=> b!7484706 (= c!1382403 ((_ is Union!19621) (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)))))

(declare-fun b!7484707 () Bool)

(declare-fun e!4464127 () Bool)

(assert (=> b!7484707 (= e!4464127 call!687093)))

(declare-fun b!7484708 () Bool)

(declare-fun res!3002956 () Bool)

(assert (=> b!7484708 (=> (not res!3002956) (not e!4464127))))

(assert (=> b!7484708 (= res!3002956 call!687091)))

(assert (=> b!7484708 (= e!4464126 e!4464127)))

(declare-fun b!7484709 () Bool)

(declare-fun res!3002957 () Bool)

(assert (=> b!7484709 (=> res!3002957 e!4464124)))

(assert (=> b!7484709 (= res!3002957 (not ((_ is Concat!28466) (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78))))))

(assert (=> b!7484709 (= e!4464126 e!4464124)))

(declare-fun b!7484710 () Bool)

(assert (=> b!7484710 (= e!4464129 e!4464125)))

(assert (=> b!7484710 (= c!1382404 ((_ is Star!19621) (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)))))

(assert (= (and d!2300644 (not res!3002955)) b!7484710))

(assert (= (and b!7484710 c!1382404) b!7484703))

(assert (= (and b!7484710 (not c!1382404)) b!7484706))

(assert (= (and b!7484703 res!3002959) b!7484705))

(assert (= (and b!7484706 c!1382403) b!7484708))

(assert (= (and b!7484706 (not c!1382403)) b!7484709))

(assert (= (and b!7484708 res!3002956) b!7484707))

(assert (= (and b!7484709 (not res!3002957)) b!7484704))

(assert (= (and b!7484704 res!3002958) b!7484702))

(assert (= (or b!7484707 b!7484702) bm!687088))

(assert (= (or b!7484708 b!7484704) bm!687086))

(assert (= (or b!7484705 bm!687088) bm!687087))

(declare-fun m!8075196 () Bool)

(assert (=> bm!687086 m!8075196))

(declare-fun m!8075198 () Bool)

(assert (=> b!7484703 m!8075198))

(declare-fun m!8075200 () Bool)

(assert (=> bm!687087 m!8075200))

(assert (=> b!7484662 d!2300644))

(declare-fun bm!687089 () Bool)

(declare-fun call!687094 () Bool)

(declare-fun c!1382405 () Bool)

(assert (=> bm!687089 (= call!687094 (validRegex!10135 (ite c!1382405 (regOne!39755 rTail!78) (regOne!39754 rTail!78))))))

(declare-fun b!7484711 () Bool)

(declare-fun e!4464135 () Bool)

(declare-fun call!687096 () Bool)

(assert (=> b!7484711 (= e!4464135 call!687096)))

(declare-fun b!7484712 () Bool)

(declare-fun e!4464132 () Bool)

(declare-fun e!4464130 () Bool)

(assert (=> b!7484712 (= e!4464132 e!4464130)))

(declare-fun res!3002964 () Bool)

(assert (=> b!7484712 (= res!3002964 (not (nullable!8558 (reg!19950 rTail!78))))))

(assert (=> b!7484712 (=> (not res!3002964) (not e!4464130))))

(declare-fun b!7484713 () Bool)

(declare-fun e!4464131 () Bool)

(assert (=> b!7484713 (= e!4464131 e!4464135)))

(declare-fun res!3002963 () Bool)

(assert (=> b!7484713 (=> (not res!3002963) (not e!4464135))))

(assert (=> b!7484713 (= res!3002963 call!687094)))

(declare-fun b!7484714 () Bool)

(declare-fun call!687095 () Bool)

(assert (=> b!7484714 (= e!4464130 call!687095)))

(declare-fun d!2300648 () Bool)

(declare-fun res!3002960 () Bool)

(declare-fun e!4464136 () Bool)

(assert (=> d!2300648 (=> res!3002960 e!4464136)))

(assert (=> d!2300648 (= res!3002960 ((_ is ElementMatch!19621) rTail!78))))

(assert (=> d!2300648 (= (validRegex!10135 rTail!78) e!4464136)))

(declare-fun bm!687090 () Bool)

(declare-fun c!1382406 () Bool)

(assert (=> bm!687090 (= call!687095 (validRegex!10135 (ite c!1382406 (reg!19950 rTail!78) (ite c!1382405 (regTwo!39755 rTail!78) (regTwo!39754 rTail!78)))))))

(declare-fun bm!687091 () Bool)

(assert (=> bm!687091 (= call!687096 call!687095)))

(declare-fun b!7484715 () Bool)

(declare-fun e!4464133 () Bool)

(assert (=> b!7484715 (= e!4464132 e!4464133)))

(assert (=> b!7484715 (= c!1382405 ((_ is Union!19621) rTail!78))))

(declare-fun b!7484716 () Bool)

(declare-fun e!4464134 () Bool)

(assert (=> b!7484716 (= e!4464134 call!687096)))

(declare-fun b!7484717 () Bool)

(declare-fun res!3002961 () Bool)

(assert (=> b!7484717 (=> (not res!3002961) (not e!4464134))))

(assert (=> b!7484717 (= res!3002961 call!687094)))

(assert (=> b!7484717 (= e!4464133 e!4464134)))

(declare-fun b!7484718 () Bool)

(declare-fun res!3002962 () Bool)

(assert (=> b!7484718 (=> res!3002962 e!4464131)))

(assert (=> b!7484718 (= res!3002962 (not ((_ is Concat!28466) rTail!78)))))

(assert (=> b!7484718 (= e!4464133 e!4464131)))

(declare-fun b!7484719 () Bool)

(assert (=> b!7484719 (= e!4464136 e!4464132)))

(assert (=> b!7484719 (= c!1382406 ((_ is Star!19621) rTail!78))))

(assert (= (and d!2300648 (not res!3002960)) b!7484719))

(assert (= (and b!7484719 c!1382406) b!7484712))

(assert (= (and b!7484719 (not c!1382406)) b!7484715))

(assert (= (and b!7484712 res!3002964) b!7484714))

(assert (= (and b!7484715 c!1382405) b!7484717))

(assert (= (and b!7484715 (not c!1382405)) b!7484718))

(assert (= (and b!7484717 res!3002961) b!7484716))

(assert (= (and b!7484718 (not res!3002962)) b!7484713))

(assert (= (and b!7484713 res!3002963) b!7484711))

(assert (= (or b!7484716 b!7484711) bm!687091))

(assert (= (or b!7484717 b!7484713) bm!687089))

(assert (= (or b!7484714 bm!687091) bm!687090))

(declare-fun m!8075202 () Bool)

(assert (=> bm!687089 m!8075202))

(declare-fun m!8075204 () Bool)

(assert (=> b!7484712 m!8075204))

(declare-fun m!8075206 () Bool)

(assert (=> bm!687090 m!8075206))

(assert (=> b!7484657 d!2300648))

(declare-fun bm!687092 () Bool)

(declare-fun call!687097 () Bool)

(declare-fun c!1382407 () Bool)

(assert (=> bm!687092 (= call!687097 (validRegex!10135 (ite c!1382407 (regOne!39755 r2!5783) (regOne!39754 r2!5783))))))

(declare-fun b!7484720 () Bool)

(declare-fun e!4464146 () Bool)

(declare-fun call!687100 () Bool)

(assert (=> b!7484720 (= e!4464146 call!687100)))

(declare-fun b!7484721 () Bool)

(declare-fun e!4464139 () Bool)

(declare-fun e!4464137 () Bool)

(assert (=> b!7484721 (= e!4464139 e!4464137)))

(declare-fun res!3002972 () Bool)

(assert (=> b!7484721 (= res!3002972 (not (nullable!8558 (reg!19950 r2!5783))))))

(assert (=> b!7484721 (=> (not res!3002972) (not e!4464137))))

(declare-fun b!7484722 () Bool)

(declare-fun e!4464138 () Bool)

(assert (=> b!7484722 (= e!4464138 e!4464146)))

(declare-fun res!3002970 () Bool)

(assert (=> b!7484722 (=> (not res!3002970) (not e!4464146))))

(assert (=> b!7484722 (= res!3002970 call!687097)))

(declare-fun b!7484724 () Bool)

(declare-fun call!687098 () Bool)

(assert (=> b!7484724 (= e!4464137 call!687098)))

(declare-fun d!2300650 () Bool)

(declare-fun res!3002965 () Bool)

(declare-fun e!4464150 () Bool)

(assert (=> d!2300650 (=> res!3002965 e!4464150)))

(assert (=> d!2300650 (= res!3002965 ((_ is ElementMatch!19621) r2!5783))))

(assert (=> d!2300650 (= (validRegex!10135 r2!5783) e!4464150)))

(declare-fun bm!687093 () Bool)

(declare-fun c!1382408 () Bool)

(assert (=> bm!687093 (= call!687098 (validRegex!10135 (ite c!1382408 (reg!19950 r2!5783) (ite c!1382407 (regTwo!39755 r2!5783) (regTwo!39754 r2!5783)))))))

(declare-fun bm!687095 () Bool)

(assert (=> bm!687095 (= call!687100 call!687098)))

(declare-fun b!7484727 () Bool)

(declare-fun e!4464141 () Bool)

(assert (=> b!7484727 (= e!4464139 e!4464141)))

(assert (=> b!7484727 (= c!1382407 ((_ is Union!19621) r2!5783))))

(declare-fun b!7484729 () Bool)

(declare-fun e!4464145 () Bool)

(assert (=> b!7484729 (= e!4464145 call!687100)))

(declare-fun b!7484731 () Bool)

(declare-fun res!3002967 () Bool)

(assert (=> b!7484731 (=> (not res!3002967) (not e!4464145))))

(assert (=> b!7484731 (= res!3002967 call!687097)))

(assert (=> b!7484731 (= e!4464141 e!4464145)))

(declare-fun b!7484732 () Bool)

(declare-fun res!3002969 () Bool)

(assert (=> b!7484732 (=> res!3002969 e!4464138)))

(assert (=> b!7484732 (= res!3002969 (not ((_ is Concat!28466) r2!5783)))))

(assert (=> b!7484732 (= e!4464141 e!4464138)))

(declare-fun b!7484734 () Bool)

(assert (=> b!7484734 (= e!4464150 e!4464139)))

(assert (=> b!7484734 (= c!1382408 ((_ is Star!19621) r2!5783))))

(assert (= (and d!2300650 (not res!3002965)) b!7484734))

(assert (= (and b!7484734 c!1382408) b!7484721))

(assert (= (and b!7484734 (not c!1382408)) b!7484727))

(assert (= (and b!7484721 res!3002972) b!7484724))

(assert (= (and b!7484727 c!1382407) b!7484731))

(assert (= (and b!7484727 (not c!1382407)) b!7484732))

(assert (= (and b!7484731 res!3002967) b!7484729))

(assert (= (and b!7484732 (not res!3002969)) b!7484722))

(assert (= (and b!7484722 res!3002970) b!7484720))

(assert (= (or b!7484729 b!7484720) bm!687095))

(assert (= (or b!7484731 b!7484722) bm!687092))

(assert (= (or b!7484724 bm!687095) bm!687093))

(declare-fun m!8075208 () Bool)

(assert (=> bm!687092 m!8075208))

(declare-fun m!8075210 () Bool)

(assert (=> b!7484721 m!8075210))

(declare-fun m!8075212 () Bool)

(assert (=> bm!687093 m!8075212))

(assert (=> b!7484652 d!2300650))

(declare-fun bm!687098 () Bool)

(declare-fun call!687103 () Bool)

(declare-fun c!1382411 () Bool)

(assert (=> bm!687098 (= call!687103 (validRegex!10135 (ite c!1382411 (regOne!39755 r1!5845) (regOne!39754 r1!5845))))))

(declare-fun b!7484738 () Bool)

(declare-fun e!4464156 () Bool)

(declare-fun call!687105 () Bool)

(assert (=> b!7484738 (= e!4464156 call!687105)))

(declare-fun b!7484739 () Bool)

(declare-fun e!4464153 () Bool)

(declare-fun e!4464151 () Bool)

(assert (=> b!7484739 (= e!4464153 e!4464151)))

(declare-fun res!3002979 () Bool)

(assert (=> b!7484739 (= res!3002979 (not (nullable!8558 (reg!19950 r1!5845))))))

(assert (=> b!7484739 (=> (not res!3002979) (not e!4464151))))

(declare-fun b!7484740 () Bool)

(declare-fun e!4464152 () Bool)

(assert (=> b!7484740 (= e!4464152 e!4464156)))

(declare-fun res!3002978 () Bool)

(assert (=> b!7484740 (=> (not res!3002978) (not e!4464156))))

(assert (=> b!7484740 (= res!3002978 call!687103)))

(declare-fun b!7484741 () Bool)

(declare-fun call!687104 () Bool)

(assert (=> b!7484741 (= e!4464151 call!687104)))

(declare-fun d!2300652 () Bool)

(declare-fun res!3002975 () Bool)

(declare-fun e!4464157 () Bool)

(assert (=> d!2300652 (=> res!3002975 e!4464157)))

(assert (=> d!2300652 (= res!3002975 ((_ is ElementMatch!19621) r1!5845))))

(assert (=> d!2300652 (= (validRegex!10135 r1!5845) e!4464157)))

(declare-fun c!1382412 () Bool)

(declare-fun bm!687099 () Bool)

(assert (=> bm!687099 (= call!687104 (validRegex!10135 (ite c!1382412 (reg!19950 r1!5845) (ite c!1382411 (regTwo!39755 r1!5845) (regTwo!39754 r1!5845)))))))

(declare-fun bm!687100 () Bool)

(assert (=> bm!687100 (= call!687105 call!687104)))

(declare-fun b!7484742 () Bool)

(declare-fun e!4464154 () Bool)

(assert (=> b!7484742 (= e!4464153 e!4464154)))

(assert (=> b!7484742 (= c!1382411 ((_ is Union!19621) r1!5845))))

(declare-fun b!7484743 () Bool)

(declare-fun e!4464155 () Bool)

(assert (=> b!7484743 (= e!4464155 call!687105)))

(declare-fun b!7484744 () Bool)

(declare-fun res!3002976 () Bool)

(assert (=> b!7484744 (=> (not res!3002976) (not e!4464155))))

(assert (=> b!7484744 (= res!3002976 call!687103)))

(assert (=> b!7484744 (= e!4464154 e!4464155)))

(declare-fun b!7484745 () Bool)

(declare-fun res!3002977 () Bool)

(assert (=> b!7484745 (=> res!3002977 e!4464152)))

(assert (=> b!7484745 (= res!3002977 (not ((_ is Concat!28466) r1!5845)))))

(assert (=> b!7484745 (= e!4464154 e!4464152)))

(declare-fun b!7484746 () Bool)

(assert (=> b!7484746 (= e!4464157 e!4464153)))

(assert (=> b!7484746 (= c!1382412 ((_ is Star!19621) r1!5845))))

(assert (= (and d!2300652 (not res!3002975)) b!7484746))

(assert (= (and b!7484746 c!1382412) b!7484739))

(assert (= (and b!7484746 (not c!1382412)) b!7484742))

(assert (= (and b!7484739 res!3002979) b!7484741))

(assert (= (and b!7484742 c!1382411) b!7484744))

(assert (= (and b!7484742 (not c!1382411)) b!7484745))

(assert (= (and b!7484744 res!3002976) b!7484743))

(assert (= (and b!7484745 (not res!3002977)) b!7484740))

(assert (= (and b!7484740 res!3002978) b!7484738))

(assert (= (or b!7484743 b!7484738) bm!687100))

(assert (= (or b!7484744 b!7484740) bm!687098))

(assert (= (or b!7484741 bm!687100) bm!687099))

(declare-fun m!8075220 () Bool)

(assert (=> bm!687098 m!8075220))

(declare-fun m!8075222 () Bool)

(assert (=> b!7484739 m!8075222))

(declare-fun m!8075224 () Bool)

(assert (=> bm!687099 m!8075224))

(assert (=> start!724954 d!2300652))

(declare-fun b!7484776 () Bool)

(declare-fun e!4464174 () Bool)

(declare-fun tp!2170944 () Bool)

(declare-fun tp!2170948 () Bool)

(assert (=> b!7484776 (= e!4464174 (and tp!2170944 tp!2170948))))

(assert (=> b!7484661 (= tp!2170925 e!4464174)))

(declare-fun b!7484778 () Bool)

(declare-fun tp!2170947 () Bool)

(declare-fun tp!2170946 () Bool)

(assert (=> b!7484778 (= e!4464174 (and tp!2170947 tp!2170946))))

(declare-fun b!7484777 () Bool)

(declare-fun tp!2170945 () Bool)

(assert (=> b!7484777 (= e!4464174 tp!2170945)))

(declare-fun b!7484775 () Bool)

(assert (=> b!7484775 (= e!4464174 tp_is_empty!49531)))

(assert (= (and b!7484661 ((_ is ElementMatch!19621) (reg!19950 r2!5783))) b!7484775))

(assert (= (and b!7484661 ((_ is Concat!28466) (reg!19950 r2!5783))) b!7484776))

(assert (= (and b!7484661 ((_ is Star!19621) (reg!19950 r2!5783))) b!7484777))

(assert (= (and b!7484661 ((_ is Union!19621) (reg!19950 r2!5783))) b!7484778))

(declare-fun b!7484780 () Bool)

(declare-fun e!4464175 () Bool)

(declare-fun tp!2170949 () Bool)

(declare-fun tp!2170953 () Bool)

(assert (=> b!7484780 (= e!4464175 (and tp!2170949 tp!2170953))))

(assert (=> b!7484656 (= tp!2170926 e!4464175)))

(declare-fun b!7484782 () Bool)

(declare-fun tp!2170952 () Bool)

(declare-fun tp!2170951 () Bool)

(assert (=> b!7484782 (= e!4464175 (and tp!2170952 tp!2170951))))

(declare-fun b!7484781 () Bool)

(declare-fun tp!2170950 () Bool)

(assert (=> b!7484781 (= e!4464175 tp!2170950)))

(declare-fun b!7484779 () Bool)

(assert (=> b!7484779 (= e!4464175 tp_is_empty!49531)))

(assert (= (and b!7484656 ((_ is ElementMatch!19621) (reg!19950 rTail!78))) b!7484779))

(assert (= (and b!7484656 ((_ is Concat!28466) (reg!19950 rTail!78))) b!7484780))

(assert (= (and b!7484656 ((_ is Star!19621) (reg!19950 rTail!78))) b!7484781))

(assert (= (and b!7484656 ((_ is Union!19621) (reg!19950 rTail!78))) b!7484782))

(declare-fun b!7484786 () Bool)

(declare-fun e!4464183 () Bool)

(declare-fun tp!2170954 () Bool)

(declare-fun tp!2170958 () Bool)

(assert (=> b!7484786 (= e!4464183 (and tp!2170954 tp!2170958))))

(assert (=> b!7484651 (= tp!2170919 e!4464183)))

(declare-fun b!7484790 () Bool)

(declare-fun tp!2170957 () Bool)

(declare-fun tp!2170956 () Bool)

(assert (=> b!7484790 (= e!4464183 (and tp!2170957 tp!2170956))))

(declare-fun b!7484788 () Bool)

(declare-fun tp!2170955 () Bool)

(assert (=> b!7484788 (= e!4464183 tp!2170955)))

(declare-fun b!7484785 () Bool)

(assert (=> b!7484785 (= e!4464183 tp_is_empty!49531)))

(assert (= (and b!7484651 ((_ is ElementMatch!19621) (regOne!39755 rTail!78))) b!7484785))

(assert (= (and b!7484651 ((_ is Concat!28466) (regOne!39755 rTail!78))) b!7484786))

(assert (= (and b!7484651 ((_ is Star!19621) (regOne!39755 rTail!78))) b!7484788))

(assert (= (and b!7484651 ((_ is Union!19621) (regOne!39755 rTail!78))) b!7484790))

(declare-fun b!7484797 () Bool)

(declare-fun e!4464184 () Bool)

(declare-fun tp!2170959 () Bool)

(declare-fun tp!2170963 () Bool)

(assert (=> b!7484797 (= e!4464184 (and tp!2170959 tp!2170963))))

(assert (=> b!7484651 (= tp!2170923 e!4464184)))

(declare-fun b!7484799 () Bool)

(declare-fun tp!2170962 () Bool)

(declare-fun tp!2170961 () Bool)

(assert (=> b!7484799 (= e!4464184 (and tp!2170962 tp!2170961))))

(declare-fun b!7484798 () Bool)

(declare-fun tp!2170960 () Bool)

(assert (=> b!7484798 (= e!4464184 tp!2170960)))

(declare-fun b!7484796 () Bool)

(assert (=> b!7484796 (= e!4464184 tp_is_empty!49531)))

(assert (= (and b!7484651 ((_ is ElementMatch!19621) (regTwo!39755 rTail!78))) b!7484796))

(assert (= (and b!7484651 ((_ is Concat!28466) (regTwo!39755 rTail!78))) b!7484797))

(assert (= (and b!7484651 ((_ is Star!19621) (regTwo!39755 rTail!78))) b!7484798))

(assert (= (and b!7484651 ((_ is Union!19621) (regTwo!39755 rTail!78))) b!7484799))

(declare-fun b!7484801 () Bool)

(declare-fun e!4464185 () Bool)

(declare-fun tp!2170964 () Bool)

(declare-fun tp!2170968 () Bool)

(assert (=> b!7484801 (= e!4464185 (and tp!2170964 tp!2170968))))

(assert (=> b!7484663 (= tp!2170930 e!4464185)))

(declare-fun b!7484803 () Bool)

(declare-fun tp!2170967 () Bool)

(declare-fun tp!2170966 () Bool)

(assert (=> b!7484803 (= e!4464185 (and tp!2170967 tp!2170966))))

(declare-fun b!7484802 () Bool)

(declare-fun tp!2170965 () Bool)

(assert (=> b!7484802 (= e!4464185 tp!2170965)))

(declare-fun b!7484800 () Bool)

(assert (=> b!7484800 (= e!4464185 tp_is_empty!49531)))

(assert (= (and b!7484663 ((_ is ElementMatch!19621) (regOne!39754 r1!5845))) b!7484800))

(assert (= (and b!7484663 ((_ is Concat!28466) (regOne!39754 r1!5845))) b!7484801))

(assert (= (and b!7484663 ((_ is Star!19621) (regOne!39754 r1!5845))) b!7484802))

(assert (= (and b!7484663 ((_ is Union!19621) (regOne!39754 r1!5845))) b!7484803))

(declare-fun b!7484805 () Bool)

(declare-fun e!4464186 () Bool)

(declare-fun tp!2170969 () Bool)

(declare-fun tp!2170973 () Bool)

(assert (=> b!7484805 (= e!4464186 (and tp!2170969 tp!2170973))))

(assert (=> b!7484663 (= tp!2170927 e!4464186)))

(declare-fun b!7484807 () Bool)

(declare-fun tp!2170972 () Bool)

(declare-fun tp!2170971 () Bool)

(assert (=> b!7484807 (= e!4464186 (and tp!2170972 tp!2170971))))

(declare-fun b!7484806 () Bool)

(declare-fun tp!2170970 () Bool)

(assert (=> b!7484806 (= e!4464186 tp!2170970)))

(declare-fun b!7484804 () Bool)

(assert (=> b!7484804 (= e!4464186 tp_is_empty!49531)))

(assert (= (and b!7484663 ((_ is ElementMatch!19621) (regTwo!39754 r1!5845))) b!7484804))

(assert (= (and b!7484663 ((_ is Concat!28466) (regTwo!39754 r1!5845))) b!7484805))

(assert (= (and b!7484663 ((_ is Star!19621) (regTwo!39754 r1!5845))) b!7484806))

(assert (= (and b!7484663 ((_ is Union!19621) (regTwo!39754 r1!5845))) b!7484807))

(declare-fun b!7484813 () Bool)

(declare-fun e!4464189 () Bool)

(declare-fun tp!2170974 () Bool)

(declare-fun tp!2170978 () Bool)

(assert (=> b!7484813 (= e!4464189 (and tp!2170974 tp!2170978))))

(assert (=> b!7484658 (= tp!2170928 e!4464189)))

(declare-fun b!7484815 () Bool)

(declare-fun tp!2170977 () Bool)

(declare-fun tp!2170976 () Bool)

(assert (=> b!7484815 (= e!4464189 (and tp!2170977 tp!2170976))))

(declare-fun b!7484814 () Bool)

(declare-fun tp!2170975 () Bool)

(assert (=> b!7484814 (= e!4464189 tp!2170975)))

(declare-fun b!7484812 () Bool)

(assert (=> b!7484812 (= e!4464189 tp_is_empty!49531)))

(assert (= (and b!7484658 ((_ is ElementMatch!19621) (regOne!39755 r1!5845))) b!7484812))

(assert (= (and b!7484658 ((_ is Concat!28466) (regOne!39755 r1!5845))) b!7484813))

(assert (= (and b!7484658 ((_ is Star!19621) (regOne!39755 r1!5845))) b!7484814))

(assert (= (and b!7484658 ((_ is Union!19621) (regOne!39755 r1!5845))) b!7484815))

(declare-fun b!7484819 () Bool)

(declare-fun e!4464190 () Bool)

(declare-fun tp!2170983 () Bool)

(declare-fun tp!2170987 () Bool)

(assert (=> b!7484819 (= e!4464190 (and tp!2170983 tp!2170987))))

(assert (=> b!7484658 (= tp!2170929 e!4464190)))

(declare-fun b!7484821 () Bool)

(declare-fun tp!2170986 () Bool)

(declare-fun tp!2170985 () Bool)

(assert (=> b!7484821 (= e!4464190 (and tp!2170986 tp!2170985))))

(declare-fun b!7484820 () Bool)

(declare-fun tp!2170984 () Bool)

(assert (=> b!7484820 (= e!4464190 tp!2170984)))

(declare-fun b!7484818 () Bool)

(assert (=> b!7484818 (= e!4464190 tp_is_empty!49531)))

(assert (= (and b!7484658 ((_ is ElementMatch!19621) (regTwo!39755 r1!5845))) b!7484818))

(assert (= (and b!7484658 ((_ is Concat!28466) (regTwo!39755 r1!5845))) b!7484819))

(assert (= (and b!7484658 ((_ is Star!19621) (regTwo!39755 r1!5845))) b!7484820))

(assert (= (and b!7484658 ((_ is Union!19621) (regTwo!39755 r1!5845))) b!7484821))

(declare-fun b!7484827 () Bool)

(declare-fun e!4464191 () Bool)

(declare-fun tp!2170994 () Bool)

(declare-fun tp!2170998 () Bool)

(assert (=> b!7484827 (= e!4464191 (and tp!2170994 tp!2170998))))

(assert (=> b!7484654 (= tp!2170931 e!4464191)))

(declare-fun b!7484829 () Bool)

(declare-fun tp!2170997 () Bool)

(declare-fun tp!2170996 () Bool)

(assert (=> b!7484829 (= e!4464191 (and tp!2170997 tp!2170996))))

(declare-fun b!7484828 () Bool)

(declare-fun tp!2170995 () Bool)

(assert (=> b!7484828 (= e!4464191 tp!2170995)))

(declare-fun b!7484826 () Bool)

(assert (=> b!7484826 (= e!4464191 tp_is_empty!49531)))

(assert (= (and b!7484654 ((_ is ElementMatch!19621) (regOne!39754 r2!5783))) b!7484826))

(assert (= (and b!7484654 ((_ is Concat!28466) (regOne!39754 r2!5783))) b!7484827))

(assert (= (and b!7484654 ((_ is Star!19621) (regOne!39754 r2!5783))) b!7484828))

(assert (= (and b!7484654 ((_ is Union!19621) (regOne!39754 r2!5783))) b!7484829))

(declare-fun b!7484831 () Bool)

(declare-fun e!4464192 () Bool)

(declare-fun tp!2170999 () Bool)

(declare-fun tp!2171003 () Bool)

(assert (=> b!7484831 (= e!4464192 (and tp!2170999 tp!2171003))))

(assert (=> b!7484654 (= tp!2170921 e!4464192)))

(declare-fun b!7484833 () Bool)

(declare-fun tp!2171002 () Bool)

(declare-fun tp!2171001 () Bool)

(assert (=> b!7484833 (= e!4464192 (and tp!2171002 tp!2171001))))

(declare-fun b!7484832 () Bool)

(declare-fun tp!2171000 () Bool)

(assert (=> b!7484832 (= e!4464192 tp!2171000)))

(declare-fun b!7484830 () Bool)

(assert (=> b!7484830 (= e!4464192 tp_is_empty!49531)))

(assert (= (and b!7484654 ((_ is ElementMatch!19621) (regTwo!39754 r2!5783))) b!7484830))

(assert (= (and b!7484654 ((_ is Concat!28466) (regTwo!39754 r2!5783))) b!7484831))

(assert (= (and b!7484654 ((_ is Star!19621) (regTwo!39754 r2!5783))) b!7484832))

(assert (= (and b!7484654 ((_ is Union!19621) (regTwo!39754 r2!5783))) b!7484833))

(declare-fun b!7484835 () Bool)

(declare-fun e!4464193 () Bool)

(declare-fun tp!2171004 () Bool)

(declare-fun tp!2171008 () Bool)

(assert (=> b!7484835 (= e!4464193 (and tp!2171004 tp!2171008))))

(assert (=> b!7484665 (= tp!2170922 e!4464193)))

(declare-fun b!7484837 () Bool)

(declare-fun tp!2171007 () Bool)

(declare-fun tp!2171006 () Bool)

(assert (=> b!7484837 (= e!4464193 (and tp!2171007 tp!2171006))))

(declare-fun b!7484836 () Bool)

(declare-fun tp!2171005 () Bool)

(assert (=> b!7484836 (= e!4464193 tp!2171005)))

(declare-fun b!7484834 () Bool)

(assert (=> b!7484834 (= e!4464193 tp_is_empty!49531)))

(assert (= (and b!7484665 ((_ is ElementMatch!19621) (regOne!39754 rTail!78))) b!7484834))

(assert (= (and b!7484665 ((_ is Concat!28466) (regOne!39754 rTail!78))) b!7484835))

(assert (= (and b!7484665 ((_ is Star!19621) (regOne!39754 rTail!78))) b!7484836))

(assert (= (and b!7484665 ((_ is Union!19621) (regOne!39754 rTail!78))) b!7484837))

(declare-fun b!7484839 () Bool)

(declare-fun e!4464194 () Bool)

(declare-fun tp!2171009 () Bool)

(declare-fun tp!2171013 () Bool)

(assert (=> b!7484839 (= e!4464194 (and tp!2171009 tp!2171013))))

(assert (=> b!7484665 (= tp!2170920 e!4464194)))

(declare-fun b!7484841 () Bool)

(declare-fun tp!2171012 () Bool)

(declare-fun tp!2171011 () Bool)

(assert (=> b!7484841 (= e!4464194 (and tp!2171012 tp!2171011))))

(declare-fun b!7484840 () Bool)

(declare-fun tp!2171010 () Bool)

(assert (=> b!7484840 (= e!4464194 tp!2171010)))

(declare-fun b!7484838 () Bool)

(assert (=> b!7484838 (= e!4464194 tp_is_empty!49531)))

(assert (= (and b!7484665 ((_ is ElementMatch!19621) (regTwo!39754 rTail!78))) b!7484838))

(assert (= (and b!7484665 ((_ is Concat!28466) (regTwo!39754 rTail!78))) b!7484839))

(assert (= (and b!7484665 ((_ is Star!19621) (regTwo!39754 rTail!78))) b!7484840))

(assert (= (and b!7484665 ((_ is Union!19621) (regTwo!39754 rTail!78))) b!7484841))

(declare-fun b!7484843 () Bool)

(declare-fun e!4464195 () Bool)

(declare-fun tp!2171014 () Bool)

(declare-fun tp!2171018 () Bool)

(assert (=> b!7484843 (= e!4464195 (and tp!2171014 tp!2171018))))

(assert (=> b!7484660 (= tp!2170924 e!4464195)))

(declare-fun b!7484845 () Bool)

(declare-fun tp!2171017 () Bool)

(declare-fun tp!2171016 () Bool)

(assert (=> b!7484845 (= e!4464195 (and tp!2171017 tp!2171016))))

(declare-fun b!7484844 () Bool)

(declare-fun tp!2171015 () Bool)

(assert (=> b!7484844 (= e!4464195 tp!2171015)))

(declare-fun b!7484842 () Bool)

(assert (=> b!7484842 (= e!4464195 tp_is_empty!49531)))

(assert (= (and b!7484660 ((_ is ElementMatch!19621) (regOne!39755 r2!5783))) b!7484842))

(assert (= (and b!7484660 ((_ is Concat!28466) (regOne!39755 r2!5783))) b!7484843))

(assert (= (and b!7484660 ((_ is Star!19621) (regOne!39755 r2!5783))) b!7484844))

(assert (= (and b!7484660 ((_ is Union!19621) (regOne!39755 r2!5783))) b!7484845))

(declare-fun b!7484851 () Bool)

(declare-fun e!4464197 () Bool)

(declare-fun tp!2171024 () Bool)

(declare-fun tp!2171028 () Bool)

(assert (=> b!7484851 (= e!4464197 (and tp!2171024 tp!2171028))))

(assert (=> b!7484660 (= tp!2170932 e!4464197)))

(declare-fun b!7484853 () Bool)

(declare-fun tp!2171027 () Bool)

(declare-fun tp!2171026 () Bool)

(assert (=> b!7484853 (= e!4464197 (and tp!2171027 tp!2171026))))

(declare-fun b!7484852 () Bool)

(declare-fun tp!2171025 () Bool)

(assert (=> b!7484852 (= e!4464197 tp!2171025)))

(declare-fun b!7484850 () Bool)

(assert (=> b!7484850 (= e!4464197 tp_is_empty!49531)))

(assert (= (and b!7484660 ((_ is ElementMatch!19621) (regTwo!39755 r2!5783))) b!7484850))

(assert (= (and b!7484660 ((_ is Concat!28466) (regTwo!39755 r2!5783))) b!7484851))

(assert (= (and b!7484660 ((_ is Star!19621) (regTwo!39755 r2!5783))) b!7484852))

(assert (= (and b!7484660 ((_ is Union!19621) (regTwo!39755 r2!5783))) b!7484853))

(declare-fun b!7484859 () Bool)

(declare-fun e!4464199 () Bool)

(declare-fun tp!2171034 () Bool)

(declare-fun tp!2171038 () Bool)

(assert (=> b!7484859 (= e!4464199 (and tp!2171034 tp!2171038))))

(assert (=> b!7484655 (= tp!2170933 e!4464199)))

(declare-fun b!7484861 () Bool)

(declare-fun tp!2171037 () Bool)

(declare-fun tp!2171036 () Bool)

(assert (=> b!7484861 (= e!4464199 (and tp!2171037 tp!2171036))))

(declare-fun b!7484860 () Bool)

(declare-fun tp!2171035 () Bool)

(assert (=> b!7484860 (= e!4464199 tp!2171035)))

(declare-fun b!7484858 () Bool)

(assert (=> b!7484858 (= e!4464199 tp_is_empty!49531)))

(assert (= (and b!7484655 ((_ is ElementMatch!19621) (reg!19950 r1!5845))) b!7484858))

(assert (= (and b!7484655 ((_ is Concat!28466) (reg!19950 r1!5845))) b!7484859))

(assert (= (and b!7484655 ((_ is Star!19621) (reg!19950 r1!5845))) b!7484860))

(assert (= (and b!7484655 ((_ is Union!19621) (reg!19950 r1!5845))) b!7484861))

(check-sat (not b!7484859) (not b!7484837) (not b!7484829) (not b!7484821) (not bm!687086) (not b!7484828) (not b!7484721) (not b!7484861) (not b!7484776) (not b!7484806) (not b!7484805) (not b!7484815) (not b!7484840) (not b!7484845) (not b!7484799) (not b!7484739) (not bm!687087) (not b!7484833) (not b!7484777) (not bm!687099) (not bm!687092) (not b!7484836) (not b!7484860) (not b!7484788) (not b!7484853) (not b!7484813) (not b!7484839) (not b!7484814) (not b!7484819) (not b!7484844) (not b!7484703) (not b!7484712) (not b!7484807) (not b!7484780) (not bm!687093) (not b!7484782) (not b!7484778) (not b!7484802) (not b!7484797) (not b!7484798) (not b!7484790) (not bm!687090) (not b!7484835) (not b!7484801) (not bm!687089) (not b!7484781) (not b!7484820) (not bm!687098) (not b!7484841) (not b!7484827) (not b!7484831) (not b!7484803) tp_is_empty!49531 (not b!7484832) (not b!7484852) (not b!7484851) (not b!7484786) (not b!7484843))
(check-sat)
(get-model)

(declare-fun c!1382419 () Bool)

(declare-fun bm!687110 () Bool)

(declare-fun call!687115 () Bool)

(assert (=> bm!687110 (= call!687115 (validRegex!10135 (ite c!1382419 (regOne!39755 (ite c!1382406 (reg!19950 rTail!78) (ite c!1382405 (regTwo!39755 rTail!78) (regTwo!39754 rTail!78)))) (regOne!39754 (ite c!1382406 (reg!19950 rTail!78) (ite c!1382405 (regTwo!39755 rTail!78) (regTwo!39754 rTail!78)))))))))

(declare-fun b!7484914 () Bool)

(declare-fun e!4464218 () Bool)

(declare-fun call!687117 () Bool)

(assert (=> b!7484914 (= e!4464218 call!687117)))

(declare-fun b!7484915 () Bool)

(declare-fun e!4464215 () Bool)

(declare-fun e!4464213 () Bool)

(assert (=> b!7484915 (= e!4464215 e!4464213)))

(declare-fun res!3002999 () Bool)

(assert (=> b!7484915 (= res!3002999 (not (nullable!8558 (reg!19950 (ite c!1382406 (reg!19950 rTail!78) (ite c!1382405 (regTwo!39755 rTail!78) (regTwo!39754 rTail!78)))))))))

(assert (=> b!7484915 (=> (not res!3002999) (not e!4464213))))

(declare-fun b!7484916 () Bool)

(declare-fun e!4464214 () Bool)

(assert (=> b!7484916 (= e!4464214 e!4464218)))

(declare-fun res!3002998 () Bool)

(assert (=> b!7484916 (=> (not res!3002998) (not e!4464218))))

(assert (=> b!7484916 (= res!3002998 call!687115)))

(declare-fun b!7484917 () Bool)

(declare-fun call!687116 () Bool)

(assert (=> b!7484917 (= e!4464213 call!687116)))

(declare-fun d!2300660 () Bool)

(declare-fun res!3002995 () Bool)

(declare-fun e!4464219 () Bool)

(assert (=> d!2300660 (=> res!3002995 e!4464219)))

(assert (=> d!2300660 (= res!3002995 ((_ is ElementMatch!19621) (ite c!1382406 (reg!19950 rTail!78) (ite c!1382405 (regTwo!39755 rTail!78) (regTwo!39754 rTail!78)))))))

(assert (=> d!2300660 (= (validRegex!10135 (ite c!1382406 (reg!19950 rTail!78) (ite c!1382405 (regTwo!39755 rTail!78) (regTwo!39754 rTail!78)))) e!4464219)))

(declare-fun bm!687111 () Bool)

(declare-fun c!1382420 () Bool)

(assert (=> bm!687111 (= call!687116 (validRegex!10135 (ite c!1382420 (reg!19950 (ite c!1382406 (reg!19950 rTail!78) (ite c!1382405 (regTwo!39755 rTail!78) (regTwo!39754 rTail!78)))) (ite c!1382419 (regTwo!39755 (ite c!1382406 (reg!19950 rTail!78) (ite c!1382405 (regTwo!39755 rTail!78) (regTwo!39754 rTail!78)))) (regTwo!39754 (ite c!1382406 (reg!19950 rTail!78) (ite c!1382405 (regTwo!39755 rTail!78) (regTwo!39754 rTail!78))))))))))

(declare-fun bm!687112 () Bool)

(assert (=> bm!687112 (= call!687117 call!687116)))

(declare-fun b!7484918 () Bool)

(declare-fun e!4464216 () Bool)

(assert (=> b!7484918 (= e!4464215 e!4464216)))

(assert (=> b!7484918 (= c!1382419 ((_ is Union!19621) (ite c!1382406 (reg!19950 rTail!78) (ite c!1382405 (regTwo!39755 rTail!78) (regTwo!39754 rTail!78)))))))

(declare-fun b!7484919 () Bool)

(declare-fun e!4464217 () Bool)

(assert (=> b!7484919 (= e!4464217 call!687117)))

(declare-fun b!7484920 () Bool)

(declare-fun res!3002996 () Bool)

(assert (=> b!7484920 (=> (not res!3002996) (not e!4464217))))

(assert (=> b!7484920 (= res!3002996 call!687115)))

(assert (=> b!7484920 (= e!4464216 e!4464217)))

(declare-fun b!7484921 () Bool)

(declare-fun res!3002997 () Bool)

(assert (=> b!7484921 (=> res!3002997 e!4464214)))

(assert (=> b!7484921 (= res!3002997 (not ((_ is Concat!28466) (ite c!1382406 (reg!19950 rTail!78) (ite c!1382405 (regTwo!39755 rTail!78) (regTwo!39754 rTail!78))))))))

(assert (=> b!7484921 (= e!4464216 e!4464214)))

(declare-fun b!7484922 () Bool)

(assert (=> b!7484922 (= e!4464219 e!4464215)))

(assert (=> b!7484922 (= c!1382420 ((_ is Star!19621) (ite c!1382406 (reg!19950 rTail!78) (ite c!1382405 (regTwo!39755 rTail!78) (regTwo!39754 rTail!78)))))))

(assert (= (and d!2300660 (not res!3002995)) b!7484922))

(assert (= (and b!7484922 c!1382420) b!7484915))

(assert (= (and b!7484922 (not c!1382420)) b!7484918))

(assert (= (and b!7484915 res!3002999) b!7484917))

(assert (= (and b!7484918 c!1382419) b!7484920))

(assert (= (and b!7484918 (not c!1382419)) b!7484921))

(assert (= (and b!7484920 res!3002996) b!7484919))

(assert (= (and b!7484921 (not res!3002997)) b!7484916))

(assert (= (and b!7484916 res!3002998) b!7484914))

(assert (= (or b!7484919 b!7484914) bm!687112))

(assert (= (or b!7484920 b!7484916) bm!687110))

(assert (= (or b!7484917 bm!687112) bm!687111))

(declare-fun m!8075244 () Bool)

(assert (=> bm!687110 m!8075244))

(declare-fun m!8075246 () Bool)

(assert (=> b!7484915 m!8075246))

(declare-fun m!8075248 () Bool)

(assert (=> bm!687111 m!8075248))

(assert (=> bm!687090 d!2300660))

(declare-fun bm!687113 () Bool)

(declare-fun call!687118 () Bool)

(declare-fun c!1382421 () Bool)

(assert (=> bm!687113 (= call!687118 (validRegex!10135 (ite c!1382421 (regOne!39755 (ite c!1382412 (reg!19950 r1!5845) (ite c!1382411 (regTwo!39755 r1!5845) (regTwo!39754 r1!5845)))) (regOne!39754 (ite c!1382412 (reg!19950 r1!5845) (ite c!1382411 (regTwo!39755 r1!5845) (regTwo!39754 r1!5845)))))))))

(declare-fun b!7484923 () Bool)

(declare-fun e!4464225 () Bool)

(declare-fun call!687120 () Bool)

(assert (=> b!7484923 (= e!4464225 call!687120)))

(declare-fun b!7484924 () Bool)

(declare-fun e!4464222 () Bool)

(declare-fun e!4464220 () Bool)

(assert (=> b!7484924 (= e!4464222 e!4464220)))

(declare-fun res!3003004 () Bool)

(assert (=> b!7484924 (= res!3003004 (not (nullable!8558 (reg!19950 (ite c!1382412 (reg!19950 r1!5845) (ite c!1382411 (regTwo!39755 r1!5845) (regTwo!39754 r1!5845)))))))))

(assert (=> b!7484924 (=> (not res!3003004) (not e!4464220))))

(declare-fun b!7484925 () Bool)

(declare-fun e!4464221 () Bool)

(assert (=> b!7484925 (= e!4464221 e!4464225)))

(declare-fun res!3003003 () Bool)

(assert (=> b!7484925 (=> (not res!3003003) (not e!4464225))))

(assert (=> b!7484925 (= res!3003003 call!687118)))

(declare-fun b!7484926 () Bool)

(declare-fun call!687119 () Bool)

(assert (=> b!7484926 (= e!4464220 call!687119)))

(declare-fun d!2300662 () Bool)

(declare-fun res!3003000 () Bool)

(declare-fun e!4464226 () Bool)

(assert (=> d!2300662 (=> res!3003000 e!4464226)))

(assert (=> d!2300662 (= res!3003000 ((_ is ElementMatch!19621) (ite c!1382412 (reg!19950 r1!5845) (ite c!1382411 (regTwo!39755 r1!5845) (regTwo!39754 r1!5845)))))))

(assert (=> d!2300662 (= (validRegex!10135 (ite c!1382412 (reg!19950 r1!5845) (ite c!1382411 (regTwo!39755 r1!5845) (regTwo!39754 r1!5845)))) e!4464226)))

(declare-fun c!1382422 () Bool)

(declare-fun bm!687114 () Bool)

(assert (=> bm!687114 (= call!687119 (validRegex!10135 (ite c!1382422 (reg!19950 (ite c!1382412 (reg!19950 r1!5845) (ite c!1382411 (regTwo!39755 r1!5845) (regTwo!39754 r1!5845)))) (ite c!1382421 (regTwo!39755 (ite c!1382412 (reg!19950 r1!5845) (ite c!1382411 (regTwo!39755 r1!5845) (regTwo!39754 r1!5845)))) (regTwo!39754 (ite c!1382412 (reg!19950 r1!5845) (ite c!1382411 (regTwo!39755 r1!5845) (regTwo!39754 r1!5845))))))))))

(declare-fun bm!687115 () Bool)

(assert (=> bm!687115 (= call!687120 call!687119)))

(declare-fun b!7484927 () Bool)

(declare-fun e!4464223 () Bool)

(assert (=> b!7484927 (= e!4464222 e!4464223)))

(assert (=> b!7484927 (= c!1382421 ((_ is Union!19621) (ite c!1382412 (reg!19950 r1!5845) (ite c!1382411 (regTwo!39755 r1!5845) (regTwo!39754 r1!5845)))))))

(declare-fun b!7484928 () Bool)

(declare-fun e!4464224 () Bool)

(assert (=> b!7484928 (= e!4464224 call!687120)))

(declare-fun b!7484929 () Bool)

(declare-fun res!3003001 () Bool)

(assert (=> b!7484929 (=> (not res!3003001) (not e!4464224))))

(assert (=> b!7484929 (= res!3003001 call!687118)))

(assert (=> b!7484929 (= e!4464223 e!4464224)))

(declare-fun b!7484930 () Bool)

(declare-fun res!3003002 () Bool)

(assert (=> b!7484930 (=> res!3003002 e!4464221)))

(assert (=> b!7484930 (= res!3003002 (not ((_ is Concat!28466) (ite c!1382412 (reg!19950 r1!5845) (ite c!1382411 (regTwo!39755 r1!5845) (regTwo!39754 r1!5845))))))))

(assert (=> b!7484930 (= e!4464223 e!4464221)))

(declare-fun b!7484931 () Bool)

(assert (=> b!7484931 (= e!4464226 e!4464222)))

(assert (=> b!7484931 (= c!1382422 ((_ is Star!19621) (ite c!1382412 (reg!19950 r1!5845) (ite c!1382411 (regTwo!39755 r1!5845) (regTwo!39754 r1!5845)))))))

(assert (= (and d!2300662 (not res!3003000)) b!7484931))

(assert (= (and b!7484931 c!1382422) b!7484924))

(assert (= (and b!7484931 (not c!1382422)) b!7484927))

(assert (= (and b!7484924 res!3003004) b!7484926))

(assert (= (and b!7484927 c!1382421) b!7484929))

(assert (= (and b!7484927 (not c!1382421)) b!7484930))

(assert (= (and b!7484929 res!3003001) b!7484928))

(assert (= (and b!7484930 (not res!3003002)) b!7484925))

(assert (= (and b!7484925 res!3003003) b!7484923))

(assert (= (or b!7484928 b!7484923) bm!687115))

(assert (= (or b!7484929 b!7484925) bm!687113))

(assert (= (or b!7484926 bm!687115) bm!687114))

(declare-fun m!8075250 () Bool)

(assert (=> bm!687113 m!8075250))

(declare-fun m!8075252 () Bool)

(assert (=> b!7484924 m!8075252))

(declare-fun m!8075254 () Bool)

(assert (=> bm!687114 m!8075254))

(assert (=> bm!687099 d!2300662))

(declare-fun call!687121 () Bool)

(declare-fun bm!687116 () Bool)

(declare-fun c!1382423 () Bool)

(assert (=> bm!687116 (= call!687121 (validRegex!10135 (ite c!1382423 (regOne!39755 (ite c!1382403 (regOne!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regOne!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)))) (regOne!39754 (ite c!1382403 (regOne!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regOne!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)))))))))

(declare-fun b!7484932 () Bool)

(declare-fun e!4464232 () Bool)

(declare-fun call!687123 () Bool)

(assert (=> b!7484932 (= e!4464232 call!687123)))

(declare-fun b!7484933 () Bool)

(declare-fun e!4464229 () Bool)

(declare-fun e!4464227 () Bool)

(assert (=> b!7484933 (= e!4464229 e!4464227)))

(declare-fun res!3003009 () Bool)

(assert (=> b!7484933 (= res!3003009 (not (nullable!8558 (reg!19950 (ite c!1382403 (regOne!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regOne!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)))))))))

(assert (=> b!7484933 (=> (not res!3003009) (not e!4464227))))

(declare-fun b!7484934 () Bool)

(declare-fun e!4464228 () Bool)

(assert (=> b!7484934 (= e!4464228 e!4464232)))

(declare-fun res!3003008 () Bool)

(assert (=> b!7484934 (=> (not res!3003008) (not e!4464232))))

(assert (=> b!7484934 (= res!3003008 call!687121)))

(declare-fun b!7484935 () Bool)

(declare-fun call!687122 () Bool)

(assert (=> b!7484935 (= e!4464227 call!687122)))

(declare-fun d!2300664 () Bool)

(declare-fun res!3003005 () Bool)

(declare-fun e!4464233 () Bool)

(assert (=> d!2300664 (=> res!3003005 e!4464233)))

(assert (=> d!2300664 (= res!3003005 ((_ is ElementMatch!19621) (ite c!1382403 (regOne!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regOne!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)))))))

(assert (=> d!2300664 (= (validRegex!10135 (ite c!1382403 (regOne!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regOne!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)))) e!4464233)))

(declare-fun c!1382424 () Bool)

(declare-fun bm!687117 () Bool)

(assert (=> bm!687117 (= call!687122 (validRegex!10135 (ite c!1382424 (reg!19950 (ite c!1382403 (regOne!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regOne!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)))) (ite c!1382423 (regTwo!39755 (ite c!1382403 (regOne!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regOne!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)))) (regTwo!39754 (ite c!1382403 (regOne!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regOne!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78))))))))))

(declare-fun bm!687118 () Bool)

(assert (=> bm!687118 (= call!687123 call!687122)))

(declare-fun b!7484936 () Bool)

(declare-fun e!4464230 () Bool)

(assert (=> b!7484936 (= e!4464229 e!4464230)))

(assert (=> b!7484936 (= c!1382423 ((_ is Union!19621) (ite c!1382403 (regOne!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regOne!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)))))))

(declare-fun b!7484937 () Bool)

(declare-fun e!4464231 () Bool)

(assert (=> b!7484937 (= e!4464231 call!687123)))

(declare-fun b!7484938 () Bool)

(declare-fun res!3003006 () Bool)

(assert (=> b!7484938 (=> (not res!3003006) (not e!4464231))))

(assert (=> b!7484938 (= res!3003006 call!687121)))

(assert (=> b!7484938 (= e!4464230 e!4464231)))

(declare-fun b!7484939 () Bool)

(declare-fun res!3003007 () Bool)

(assert (=> b!7484939 (=> res!3003007 e!4464228)))

(assert (=> b!7484939 (= res!3003007 (not ((_ is Concat!28466) (ite c!1382403 (regOne!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regOne!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78))))))))

(assert (=> b!7484939 (= e!4464230 e!4464228)))

(declare-fun b!7484940 () Bool)

(assert (=> b!7484940 (= e!4464233 e!4464229)))

(assert (=> b!7484940 (= c!1382424 ((_ is Star!19621) (ite c!1382403 (regOne!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regOne!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)))))))

(assert (= (and d!2300664 (not res!3003005)) b!7484940))

(assert (= (and b!7484940 c!1382424) b!7484933))

(assert (= (and b!7484940 (not c!1382424)) b!7484936))

(assert (= (and b!7484933 res!3003009) b!7484935))

(assert (= (and b!7484936 c!1382423) b!7484938))

(assert (= (and b!7484936 (not c!1382423)) b!7484939))

(assert (= (and b!7484938 res!3003006) b!7484937))

(assert (= (and b!7484939 (not res!3003007)) b!7484934))

(assert (= (and b!7484934 res!3003008) b!7484932))

(assert (= (or b!7484937 b!7484932) bm!687118))

(assert (= (or b!7484938 b!7484934) bm!687116))

(assert (= (or b!7484935 bm!687118) bm!687117))

(declare-fun m!8075256 () Bool)

(assert (=> bm!687116 m!8075256))

(declare-fun m!8075258 () Bool)

(assert (=> b!7484933 m!8075258))

(declare-fun m!8075260 () Bool)

(assert (=> bm!687117 m!8075260))

(assert (=> bm!687086 d!2300664))

(declare-fun d!2300666 () Bool)

(declare-fun nullableFct!3428 (Regex!19621) Bool)

(assert (=> d!2300666 (= (nullable!8558 (reg!19950 r2!5783)) (nullableFct!3428 (reg!19950 r2!5783)))))

(declare-fun bs!1934312 () Bool)

(assert (= bs!1934312 d!2300666))

(declare-fun m!8075262 () Bool)

(assert (=> bs!1934312 m!8075262))

(assert (=> b!7484721 d!2300666))

(declare-fun d!2300668 () Bool)

(assert (=> d!2300668 (= (nullable!8558 (reg!19950 rTail!78)) (nullableFct!3428 (reg!19950 rTail!78)))))

(declare-fun bs!1934313 () Bool)

(assert (= bs!1934313 d!2300668))

(declare-fun m!8075264 () Bool)

(assert (=> bs!1934313 m!8075264))

(assert (=> b!7484712 d!2300668))

(declare-fun c!1382425 () Bool)

(declare-fun bm!687119 () Bool)

(declare-fun call!687124 () Bool)

(assert (=> bm!687119 (= call!687124 (validRegex!10135 (ite c!1382425 (regOne!39755 (ite c!1382411 (regOne!39755 r1!5845) (regOne!39754 r1!5845))) (regOne!39754 (ite c!1382411 (regOne!39755 r1!5845) (regOne!39754 r1!5845))))))))

(declare-fun b!7484941 () Bool)

(declare-fun e!4464239 () Bool)

(declare-fun call!687126 () Bool)

(assert (=> b!7484941 (= e!4464239 call!687126)))

(declare-fun b!7484942 () Bool)

(declare-fun e!4464236 () Bool)

(declare-fun e!4464234 () Bool)

(assert (=> b!7484942 (= e!4464236 e!4464234)))

(declare-fun res!3003014 () Bool)

(assert (=> b!7484942 (= res!3003014 (not (nullable!8558 (reg!19950 (ite c!1382411 (regOne!39755 r1!5845) (regOne!39754 r1!5845))))))))

(assert (=> b!7484942 (=> (not res!3003014) (not e!4464234))))

(declare-fun b!7484943 () Bool)

(declare-fun e!4464235 () Bool)

(assert (=> b!7484943 (= e!4464235 e!4464239)))

(declare-fun res!3003013 () Bool)

(assert (=> b!7484943 (=> (not res!3003013) (not e!4464239))))

(assert (=> b!7484943 (= res!3003013 call!687124)))

(declare-fun b!7484944 () Bool)

(declare-fun call!687125 () Bool)

(assert (=> b!7484944 (= e!4464234 call!687125)))

(declare-fun d!2300670 () Bool)

(declare-fun res!3003010 () Bool)

(declare-fun e!4464240 () Bool)

(assert (=> d!2300670 (=> res!3003010 e!4464240)))

(assert (=> d!2300670 (= res!3003010 ((_ is ElementMatch!19621) (ite c!1382411 (regOne!39755 r1!5845) (regOne!39754 r1!5845))))))

(assert (=> d!2300670 (= (validRegex!10135 (ite c!1382411 (regOne!39755 r1!5845) (regOne!39754 r1!5845))) e!4464240)))

(declare-fun bm!687120 () Bool)

(declare-fun c!1382426 () Bool)

(assert (=> bm!687120 (= call!687125 (validRegex!10135 (ite c!1382426 (reg!19950 (ite c!1382411 (regOne!39755 r1!5845) (regOne!39754 r1!5845))) (ite c!1382425 (regTwo!39755 (ite c!1382411 (regOne!39755 r1!5845) (regOne!39754 r1!5845))) (regTwo!39754 (ite c!1382411 (regOne!39755 r1!5845) (regOne!39754 r1!5845)))))))))

(declare-fun bm!687121 () Bool)

(assert (=> bm!687121 (= call!687126 call!687125)))

(declare-fun b!7484945 () Bool)

(declare-fun e!4464237 () Bool)

(assert (=> b!7484945 (= e!4464236 e!4464237)))

(assert (=> b!7484945 (= c!1382425 ((_ is Union!19621) (ite c!1382411 (regOne!39755 r1!5845) (regOne!39754 r1!5845))))))

(declare-fun b!7484946 () Bool)

(declare-fun e!4464238 () Bool)

(assert (=> b!7484946 (= e!4464238 call!687126)))

(declare-fun b!7484947 () Bool)

(declare-fun res!3003011 () Bool)

(assert (=> b!7484947 (=> (not res!3003011) (not e!4464238))))

(assert (=> b!7484947 (= res!3003011 call!687124)))

(assert (=> b!7484947 (= e!4464237 e!4464238)))

(declare-fun b!7484948 () Bool)

(declare-fun res!3003012 () Bool)

(assert (=> b!7484948 (=> res!3003012 e!4464235)))

(assert (=> b!7484948 (= res!3003012 (not ((_ is Concat!28466) (ite c!1382411 (regOne!39755 r1!5845) (regOne!39754 r1!5845)))))))

(assert (=> b!7484948 (= e!4464237 e!4464235)))

(declare-fun b!7484949 () Bool)

(assert (=> b!7484949 (= e!4464240 e!4464236)))

(assert (=> b!7484949 (= c!1382426 ((_ is Star!19621) (ite c!1382411 (regOne!39755 r1!5845) (regOne!39754 r1!5845))))))

(assert (= (and d!2300670 (not res!3003010)) b!7484949))

(assert (= (and b!7484949 c!1382426) b!7484942))

(assert (= (and b!7484949 (not c!1382426)) b!7484945))

(assert (= (and b!7484942 res!3003014) b!7484944))

(assert (= (and b!7484945 c!1382425) b!7484947))

(assert (= (and b!7484945 (not c!1382425)) b!7484948))

(assert (= (and b!7484947 res!3003011) b!7484946))

(assert (= (and b!7484948 (not res!3003012)) b!7484943))

(assert (= (and b!7484943 res!3003013) b!7484941))

(assert (= (or b!7484946 b!7484941) bm!687121))

(assert (= (or b!7484947 b!7484943) bm!687119))

(assert (= (or b!7484944 bm!687121) bm!687120))

(declare-fun m!8075266 () Bool)

(assert (=> bm!687119 m!8075266))

(declare-fun m!8075268 () Bool)

(assert (=> b!7484942 m!8075268))

(declare-fun m!8075270 () Bool)

(assert (=> bm!687120 m!8075270))

(assert (=> bm!687098 d!2300670))

(declare-fun bm!687122 () Bool)

(declare-fun c!1382427 () Bool)

(declare-fun call!687127 () Bool)

(assert (=> bm!687122 (= call!687127 (validRegex!10135 (ite c!1382427 (regOne!39755 (ite c!1382405 (regOne!39755 rTail!78) (regOne!39754 rTail!78))) (regOne!39754 (ite c!1382405 (regOne!39755 rTail!78) (regOne!39754 rTail!78))))))))

(declare-fun b!7484950 () Bool)

(declare-fun e!4464246 () Bool)

(declare-fun call!687129 () Bool)

(assert (=> b!7484950 (= e!4464246 call!687129)))

(declare-fun b!7484951 () Bool)

(declare-fun e!4464243 () Bool)

(declare-fun e!4464241 () Bool)

(assert (=> b!7484951 (= e!4464243 e!4464241)))

(declare-fun res!3003019 () Bool)

(assert (=> b!7484951 (= res!3003019 (not (nullable!8558 (reg!19950 (ite c!1382405 (regOne!39755 rTail!78) (regOne!39754 rTail!78))))))))

(assert (=> b!7484951 (=> (not res!3003019) (not e!4464241))))

(declare-fun b!7484952 () Bool)

(declare-fun e!4464242 () Bool)

(assert (=> b!7484952 (= e!4464242 e!4464246)))

(declare-fun res!3003018 () Bool)

(assert (=> b!7484952 (=> (not res!3003018) (not e!4464246))))

(assert (=> b!7484952 (= res!3003018 call!687127)))

(declare-fun b!7484953 () Bool)

(declare-fun call!687128 () Bool)

(assert (=> b!7484953 (= e!4464241 call!687128)))

(declare-fun d!2300672 () Bool)

(declare-fun res!3003015 () Bool)

(declare-fun e!4464247 () Bool)

(assert (=> d!2300672 (=> res!3003015 e!4464247)))

(assert (=> d!2300672 (= res!3003015 ((_ is ElementMatch!19621) (ite c!1382405 (regOne!39755 rTail!78) (regOne!39754 rTail!78))))))

(assert (=> d!2300672 (= (validRegex!10135 (ite c!1382405 (regOne!39755 rTail!78) (regOne!39754 rTail!78))) e!4464247)))

(declare-fun c!1382428 () Bool)

(declare-fun bm!687123 () Bool)

(assert (=> bm!687123 (= call!687128 (validRegex!10135 (ite c!1382428 (reg!19950 (ite c!1382405 (regOne!39755 rTail!78) (regOne!39754 rTail!78))) (ite c!1382427 (regTwo!39755 (ite c!1382405 (regOne!39755 rTail!78) (regOne!39754 rTail!78))) (regTwo!39754 (ite c!1382405 (regOne!39755 rTail!78) (regOne!39754 rTail!78)))))))))

(declare-fun bm!687124 () Bool)

(assert (=> bm!687124 (= call!687129 call!687128)))

(declare-fun b!7484954 () Bool)

(declare-fun e!4464244 () Bool)

(assert (=> b!7484954 (= e!4464243 e!4464244)))

(assert (=> b!7484954 (= c!1382427 ((_ is Union!19621) (ite c!1382405 (regOne!39755 rTail!78) (regOne!39754 rTail!78))))))

(declare-fun b!7484955 () Bool)

(declare-fun e!4464245 () Bool)

(assert (=> b!7484955 (= e!4464245 call!687129)))

(declare-fun b!7484956 () Bool)

(declare-fun res!3003016 () Bool)

(assert (=> b!7484956 (=> (not res!3003016) (not e!4464245))))

(assert (=> b!7484956 (= res!3003016 call!687127)))

(assert (=> b!7484956 (= e!4464244 e!4464245)))

(declare-fun b!7484957 () Bool)

(declare-fun res!3003017 () Bool)

(assert (=> b!7484957 (=> res!3003017 e!4464242)))

(assert (=> b!7484957 (= res!3003017 (not ((_ is Concat!28466) (ite c!1382405 (regOne!39755 rTail!78) (regOne!39754 rTail!78)))))))

(assert (=> b!7484957 (= e!4464244 e!4464242)))

(declare-fun b!7484958 () Bool)

(assert (=> b!7484958 (= e!4464247 e!4464243)))

(assert (=> b!7484958 (= c!1382428 ((_ is Star!19621) (ite c!1382405 (regOne!39755 rTail!78) (regOne!39754 rTail!78))))))

(assert (= (and d!2300672 (not res!3003015)) b!7484958))

(assert (= (and b!7484958 c!1382428) b!7484951))

(assert (= (and b!7484958 (not c!1382428)) b!7484954))

(assert (= (and b!7484951 res!3003019) b!7484953))

(assert (= (and b!7484954 c!1382427) b!7484956))

(assert (= (and b!7484954 (not c!1382427)) b!7484957))

(assert (= (and b!7484956 res!3003016) b!7484955))

(assert (= (and b!7484957 (not res!3003017)) b!7484952))

(assert (= (and b!7484952 res!3003018) b!7484950))

(assert (= (or b!7484955 b!7484950) bm!687124))

(assert (= (or b!7484956 b!7484952) bm!687122))

(assert (= (or b!7484953 bm!687124) bm!687123))

(declare-fun m!8075272 () Bool)

(assert (=> bm!687122 m!8075272))

(declare-fun m!8075274 () Bool)

(assert (=> b!7484951 m!8075274))

(declare-fun m!8075276 () Bool)

(assert (=> bm!687123 m!8075276))

(assert (=> bm!687089 d!2300672))

(declare-fun bm!687125 () Bool)

(declare-fun call!687130 () Bool)

(declare-fun c!1382429 () Bool)

(assert (=> bm!687125 (= call!687130 (validRegex!10135 (ite c!1382429 (regOne!39755 (ite c!1382404 (reg!19950 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (ite c!1382403 (regTwo!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regTwo!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78))))) (regOne!39754 (ite c!1382404 (reg!19950 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (ite c!1382403 (regTwo!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regTwo!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78))))))))))

(declare-fun b!7484959 () Bool)

(declare-fun e!4464253 () Bool)

(declare-fun call!687132 () Bool)

(assert (=> b!7484959 (= e!4464253 call!687132)))

(declare-fun b!7484960 () Bool)

(declare-fun e!4464250 () Bool)

(declare-fun e!4464248 () Bool)

(assert (=> b!7484960 (= e!4464250 e!4464248)))

(declare-fun res!3003024 () Bool)

(assert (=> b!7484960 (= res!3003024 (not (nullable!8558 (reg!19950 (ite c!1382404 (reg!19950 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (ite c!1382403 (regTwo!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regTwo!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78))))))))))

(assert (=> b!7484960 (=> (not res!3003024) (not e!4464248))))

(declare-fun b!7484961 () Bool)

(declare-fun e!4464249 () Bool)

(assert (=> b!7484961 (= e!4464249 e!4464253)))

(declare-fun res!3003023 () Bool)

(assert (=> b!7484961 (=> (not res!3003023) (not e!4464253))))

(assert (=> b!7484961 (= res!3003023 call!687130)))

(declare-fun b!7484962 () Bool)

(declare-fun call!687131 () Bool)

(assert (=> b!7484962 (= e!4464248 call!687131)))

(declare-fun d!2300674 () Bool)

(declare-fun res!3003020 () Bool)

(declare-fun e!4464254 () Bool)

(assert (=> d!2300674 (=> res!3003020 e!4464254)))

(assert (=> d!2300674 (= res!3003020 ((_ is ElementMatch!19621) (ite c!1382404 (reg!19950 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (ite c!1382403 (regTwo!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regTwo!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78))))))))

(assert (=> d!2300674 (= (validRegex!10135 (ite c!1382404 (reg!19950 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (ite c!1382403 (regTwo!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regTwo!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78))))) e!4464254)))

(declare-fun c!1382430 () Bool)

(declare-fun bm!687126 () Bool)

(assert (=> bm!687126 (= call!687131 (validRegex!10135 (ite c!1382430 (reg!19950 (ite c!1382404 (reg!19950 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (ite c!1382403 (regTwo!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regTwo!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78))))) (ite c!1382429 (regTwo!39755 (ite c!1382404 (reg!19950 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (ite c!1382403 (regTwo!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regTwo!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78))))) (regTwo!39754 (ite c!1382404 (reg!19950 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (ite c!1382403 (regTwo!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regTwo!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)))))))))))

(declare-fun bm!687127 () Bool)

(assert (=> bm!687127 (= call!687132 call!687131)))

(declare-fun b!7484963 () Bool)

(declare-fun e!4464251 () Bool)

(assert (=> b!7484963 (= e!4464250 e!4464251)))

(assert (=> b!7484963 (= c!1382429 ((_ is Union!19621) (ite c!1382404 (reg!19950 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (ite c!1382403 (regTwo!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regTwo!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78))))))))

(declare-fun b!7484964 () Bool)

(declare-fun e!4464252 () Bool)

(assert (=> b!7484964 (= e!4464252 call!687132)))

(declare-fun b!7484965 () Bool)

(declare-fun res!3003021 () Bool)

(assert (=> b!7484965 (=> (not res!3003021) (not e!4464252))))

(assert (=> b!7484965 (= res!3003021 call!687130)))

(assert (=> b!7484965 (= e!4464251 e!4464252)))

(declare-fun b!7484966 () Bool)

(declare-fun res!3003022 () Bool)

(assert (=> b!7484966 (=> res!3003022 e!4464249)))

(assert (=> b!7484966 (= res!3003022 (not ((_ is Concat!28466) (ite c!1382404 (reg!19950 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (ite c!1382403 (regTwo!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regTwo!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)))))))))

(assert (=> b!7484966 (= e!4464251 e!4464249)))

(declare-fun b!7484967 () Bool)

(assert (=> b!7484967 (= e!4464254 e!4464250)))

(assert (=> b!7484967 (= c!1382430 ((_ is Star!19621) (ite c!1382404 (reg!19950 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (ite c!1382403 (regTwo!39755 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78)) (regTwo!39754 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78))))))))

(assert (= (and d!2300674 (not res!3003020)) b!7484967))

(assert (= (and b!7484967 c!1382430) b!7484960))

(assert (= (and b!7484967 (not c!1382430)) b!7484963))

(assert (= (and b!7484960 res!3003024) b!7484962))

(assert (= (and b!7484963 c!1382429) b!7484965))

(assert (= (and b!7484963 (not c!1382429)) b!7484966))

(assert (= (and b!7484965 res!3003021) b!7484964))

(assert (= (and b!7484966 (not res!3003022)) b!7484961))

(assert (= (and b!7484961 res!3003023) b!7484959))

(assert (= (or b!7484964 b!7484959) bm!687127))

(assert (= (or b!7484965 b!7484961) bm!687125))

(assert (= (or b!7484962 bm!687127) bm!687126))

(declare-fun m!8075278 () Bool)

(assert (=> bm!687125 m!8075278))

(declare-fun m!8075280 () Bool)

(assert (=> b!7484960 m!8075280))

(declare-fun m!8075282 () Bool)

(assert (=> bm!687126 m!8075282))

(assert (=> bm!687087 d!2300674))

(declare-fun c!1382431 () Bool)

(declare-fun bm!687128 () Bool)

(declare-fun call!687133 () Bool)

(assert (=> bm!687128 (= call!687133 (validRegex!10135 (ite c!1382431 (regOne!39755 (ite c!1382408 (reg!19950 r2!5783) (ite c!1382407 (regTwo!39755 r2!5783) (regTwo!39754 r2!5783)))) (regOne!39754 (ite c!1382408 (reg!19950 r2!5783) (ite c!1382407 (regTwo!39755 r2!5783) (regTwo!39754 r2!5783)))))))))

(declare-fun b!7484968 () Bool)

(declare-fun e!4464260 () Bool)

(declare-fun call!687135 () Bool)

(assert (=> b!7484968 (= e!4464260 call!687135)))

(declare-fun b!7484969 () Bool)

(declare-fun e!4464257 () Bool)

(declare-fun e!4464255 () Bool)

(assert (=> b!7484969 (= e!4464257 e!4464255)))

(declare-fun res!3003029 () Bool)

(assert (=> b!7484969 (= res!3003029 (not (nullable!8558 (reg!19950 (ite c!1382408 (reg!19950 r2!5783) (ite c!1382407 (regTwo!39755 r2!5783) (regTwo!39754 r2!5783)))))))))

(assert (=> b!7484969 (=> (not res!3003029) (not e!4464255))))

(declare-fun b!7484970 () Bool)

(declare-fun e!4464256 () Bool)

(assert (=> b!7484970 (= e!4464256 e!4464260)))

(declare-fun res!3003028 () Bool)

(assert (=> b!7484970 (=> (not res!3003028) (not e!4464260))))

(assert (=> b!7484970 (= res!3003028 call!687133)))

(declare-fun b!7484971 () Bool)

(declare-fun call!687134 () Bool)

(assert (=> b!7484971 (= e!4464255 call!687134)))

(declare-fun d!2300676 () Bool)

(declare-fun res!3003025 () Bool)

(declare-fun e!4464261 () Bool)

(assert (=> d!2300676 (=> res!3003025 e!4464261)))

(assert (=> d!2300676 (= res!3003025 ((_ is ElementMatch!19621) (ite c!1382408 (reg!19950 r2!5783) (ite c!1382407 (regTwo!39755 r2!5783) (regTwo!39754 r2!5783)))))))

(assert (=> d!2300676 (= (validRegex!10135 (ite c!1382408 (reg!19950 r2!5783) (ite c!1382407 (regTwo!39755 r2!5783) (regTwo!39754 r2!5783)))) e!4464261)))

(declare-fun bm!687129 () Bool)

(declare-fun c!1382432 () Bool)

(assert (=> bm!687129 (= call!687134 (validRegex!10135 (ite c!1382432 (reg!19950 (ite c!1382408 (reg!19950 r2!5783) (ite c!1382407 (regTwo!39755 r2!5783) (regTwo!39754 r2!5783)))) (ite c!1382431 (regTwo!39755 (ite c!1382408 (reg!19950 r2!5783) (ite c!1382407 (regTwo!39755 r2!5783) (regTwo!39754 r2!5783)))) (regTwo!39754 (ite c!1382408 (reg!19950 r2!5783) (ite c!1382407 (regTwo!39755 r2!5783) (regTwo!39754 r2!5783))))))))))

(declare-fun bm!687130 () Bool)

(assert (=> bm!687130 (= call!687135 call!687134)))

(declare-fun b!7484972 () Bool)

(declare-fun e!4464258 () Bool)

(assert (=> b!7484972 (= e!4464257 e!4464258)))

(assert (=> b!7484972 (= c!1382431 ((_ is Union!19621) (ite c!1382408 (reg!19950 r2!5783) (ite c!1382407 (regTwo!39755 r2!5783) (regTwo!39754 r2!5783)))))))

(declare-fun b!7484973 () Bool)

(declare-fun e!4464259 () Bool)

(assert (=> b!7484973 (= e!4464259 call!687135)))

(declare-fun b!7484974 () Bool)

(declare-fun res!3003026 () Bool)

(assert (=> b!7484974 (=> (not res!3003026) (not e!4464259))))

(assert (=> b!7484974 (= res!3003026 call!687133)))

(assert (=> b!7484974 (= e!4464258 e!4464259)))

(declare-fun b!7484975 () Bool)

(declare-fun res!3003027 () Bool)

(assert (=> b!7484975 (=> res!3003027 e!4464256)))

(assert (=> b!7484975 (= res!3003027 (not ((_ is Concat!28466) (ite c!1382408 (reg!19950 r2!5783) (ite c!1382407 (regTwo!39755 r2!5783) (regTwo!39754 r2!5783))))))))

(assert (=> b!7484975 (= e!4464258 e!4464256)))

(declare-fun b!7484976 () Bool)

(assert (=> b!7484976 (= e!4464261 e!4464257)))

(assert (=> b!7484976 (= c!1382432 ((_ is Star!19621) (ite c!1382408 (reg!19950 r2!5783) (ite c!1382407 (regTwo!39755 r2!5783) (regTwo!39754 r2!5783)))))))

(assert (= (and d!2300676 (not res!3003025)) b!7484976))

(assert (= (and b!7484976 c!1382432) b!7484969))

(assert (= (and b!7484976 (not c!1382432)) b!7484972))

(assert (= (and b!7484969 res!3003029) b!7484971))

(assert (= (and b!7484972 c!1382431) b!7484974))

(assert (= (and b!7484972 (not c!1382431)) b!7484975))

(assert (= (and b!7484974 res!3003026) b!7484973))

(assert (= (and b!7484975 (not res!3003027)) b!7484970))

(assert (= (and b!7484970 res!3003028) b!7484968))

(assert (= (or b!7484973 b!7484968) bm!687130))

(assert (= (or b!7484974 b!7484970) bm!687128))

(assert (= (or b!7484971 bm!687130) bm!687129))

(declare-fun m!8075284 () Bool)

(assert (=> bm!687128 m!8075284))

(declare-fun m!8075286 () Bool)

(assert (=> b!7484969 m!8075286))

(declare-fun m!8075288 () Bool)

(assert (=> bm!687129 m!8075288))

(assert (=> bm!687093 d!2300676))

(declare-fun d!2300678 () Bool)

(assert (=> d!2300678 (= (nullable!8558 (reg!19950 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78))) (nullableFct!3428 (reg!19950 (Concat!28466 (Union!19621 r1!5845 r2!5783) rTail!78))))))

(declare-fun bs!1934314 () Bool)

(assert (= bs!1934314 d!2300678))

(declare-fun m!8075290 () Bool)

(assert (=> bs!1934314 m!8075290))

(assert (=> b!7484703 d!2300678))

(declare-fun d!2300680 () Bool)

(assert (=> d!2300680 (= (nullable!8558 (reg!19950 r1!5845)) (nullableFct!3428 (reg!19950 r1!5845)))))

(declare-fun bs!1934315 () Bool)

(assert (= bs!1934315 d!2300680))

(declare-fun m!8075292 () Bool)

(assert (=> bs!1934315 m!8075292))

(assert (=> b!7484739 d!2300680))

(declare-fun bm!687131 () Bool)

(declare-fun c!1382433 () Bool)

(declare-fun call!687136 () Bool)

(assert (=> bm!687131 (= call!687136 (validRegex!10135 (ite c!1382433 (regOne!39755 (ite c!1382407 (regOne!39755 r2!5783) (regOne!39754 r2!5783))) (regOne!39754 (ite c!1382407 (regOne!39755 r2!5783) (regOne!39754 r2!5783))))))))

(declare-fun b!7484977 () Bool)

(declare-fun e!4464267 () Bool)

(declare-fun call!687138 () Bool)

(assert (=> b!7484977 (= e!4464267 call!687138)))

(declare-fun b!7484978 () Bool)

(declare-fun e!4464264 () Bool)

(declare-fun e!4464262 () Bool)

(assert (=> b!7484978 (= e!4464264 e!4464262)))

(declare-fun res!3003034 () Bool)

(assert (=> b!7484978 (= res!3003034 (not (nullable!8558 (reg!19950 (ite c!1382407 (regOne!39755 r2!5783) (regOne!39754 r2!5783))))))))

(assert (=> b!7484978 (=> (not res!3003034) (not e!4464262))))

(declare-fun b!7484979 () Bool)

(declare-fun e!4464263 () Bool)

(assert (=> b!7484979 (= e!4464263 e!4464267)))

(declare-fun res!3003033 () Bool)

(assert (=> b!7484979 (=> (not res!3003033) (not e!4464267))))

(assert (=> b!7484979 (= res!3003033 call!687136)))

(declare-fun b!7484980 () Bool)

(declare-fun call!687137 () Bool)

(assert (=> b!7484980 (= e!4464262 call!687137)))

(declare-fun d!2300682 () Bool)

(declare-fun res!3003030 () Bool)

(declare-fun e!4464268 () Bool)

(assert (=> d!2300682 (=> res!3003030 e!4464268)))

(assert (=> d!2300682 (= res!3003030 ((_ is ElementMatch!19621) (ite c!1382407 (regOne!39755 r2!5783) (regOne!39754 r2!5783))))))

(assert (=> d!2300682 (= (validRegex!10135 (ite c!1382407 (regOne!39755 r2!5783) (regOne!39754 r2!5783))) e!4464268)))

(declare-fun c!1382434 () Bool)

(declare-fun bm!687132 () Bool)

(assert (=> bm!687132 (= call!687137 (validRegex!10135 (ite c!1382434 (reg!19950 (ite c!1382407 (regOne!39755 r2!5783) (regOne!39754 r2!5783))) (ite c!1382433 (regTwo!39755 (ite c!1382407 (regOne!39755 r2!5783) (regOne!39754 r2!5783))) (regTwo!39754 (ite c!1382407 (regOne!39755 r2!5783) (regOne!39754 r2!5783)))))))))

(declare-fun bm!687133 () Bool)

(assert (=> bm!687133 (= call!687138 call!687137)))

(declare-fun b!7484981 () Bool)

(declare-fun e!4464265 () Bool)

(assert (=> b!7484981 (= e!4464264 e!4464265)))

(assert (=> b!7484981 (= c!1382433 ((_ is Union!19621) (ite c!1382407 (regOne!39755 r2!5783) (regOne!39754 r2!5783))))))

(declare-fun b!7484982 () Bool)

(declare-fun e!4464266 () Bool)

(assert (=> b!7484982 (= e!4464266 call!687138)))

(declare-fun b!7484983 () Bool)

(declare-fun res!3003031 () Bool)

(assert (=> b!7484983 (=> (not res!3003031) (not e!4464266))))

(assert (=> b!7484983 (= res!3003031 call!687136)))

(assert (=> b!7484983 (= e!4464265 e!4464266)))

(declare-fun b!7484984 () Bool)

(declare-fun res!3003032 () Bool)

(assert (=> b!7484984 (=> res!3003032 e!4464263)))

(assert (=> b!7484984 (= res!3003032 (not ((_ is Concat!28466) (ite c!1382407 (regOne!39755 r2!5783) (regOne!39754 r2!5783)))))))

(assert (=> b!7484984 (= e!4464265 e!4464263)))

(declare-fun b!7484985 () Bool)

(assert (=> b!7484985 (= e!4464268 e!4464264)))

(assert (=> b!7484985 (= c!1382434 ((_ is Star!19621) (ite c!1382407 (regOne!39755 r2!5783) (regOne!39754 r2!5783))))))

(assert (= (and d!2300682 (not res!3003030)) b!7484985))

(assert (= (and b!7484985 c!1382434) b!7484978))

(assert (= (and b!7484985 (not c!1382434)) b!7484981))

(assert (= (and b!7484978 res!3003034) b!7484980))

(assert (= (and b!7484981 c!1382433) b!7484983))

(assert (= (and b!7484981 (not c!1382433)) b!7484984))

(assert (= (and b!7484983 res!3003031) b!7484982))

(assert (= (and b!7484984 (not res!3003032)) b!7484979))

(assert (= (and b!7484979 res!3003033) b!7484977))

(assert (= (or b!7484982 b!7484977) bm!687133))

(assert (= (or b!7484983 b!7484979) bm!687131))

(assert (= (or b!7484980 bm!687133) bm!687132))

(declare-fun m!8075294 () Bool)

(assert (=> bm!687131 m!8075294))

(declare-fun m!8075296 () Bool)

(assert (=> b!7484978 m!8075296))

(declare-fun m!8075298 () Bool)

(assert (=> bm!687132 m!8075298))

(assert (=> bm!687092 d!2300682))

(declare-fun b!7484987 () Bool)

(declare-fun e!4464269 () Bool)

(declare-fun tp!2171104 () Bool)

(declare-fun tp!2171108 () Bool)

(assert (=> b!7484987 (= e!4464269 (and tp!2171104 tp!2171108))))

(assert (=> b!7484831 (= tp!2170999 e!4464269)))

(declare-fun b!7484989 () Bool)

(declare-fun tp!2171107 () Bool)

(declare-fun tp!2171106 () Bool)

(assert (=> b!7484989 (= e!4464269 (and tp!2171107 tp!2171106))))

(declare-fun b!7484988 () Bool)

(declare-fun tp!2171105 () Bool)

(assert (=> b!7484988 (= e!4464269 tp!2171105)))

(declare-fun b!7484986 () Bool)

(assert (=> b!7484986 (= e!4464269 tp_is_empty!49531)))

(assert (= (and b!7484831 ((_ is ElementMatch!19621) (regOne!39754 (regTwo!39754 r2!5783)))) b!7484986))

(assert (= (and b!7484831 ((_ is Concat!28466) (regOne!39754 (regTwo!39754 r2!5783)))) b!7484987))

(assert (= (and b!7484831 ((_ is Star!19621) (regOne!39754 (regTwo!39754 r2!5783)))) b!7484988))

(assert (= (and b!7484831 ((_ is Union!19621) (regOne!39754 (regTwo!39754 r2!5783)))) b!7484989))

(declare-fun b!7484991 () Bool)

(declare-fun e!4464270 () Bool)

(declare-fun tp!2171109 () Bool)

(declare-fun tp!2171113 () Bool)

(assert (=> b!7484991 (= e!4464270 (and tp!2171109 tp!2171113))))

(assert (=> b!7484831 (= tp!2171003 e!4464270)))

(declare-fun b!7484993 () Bool)

(declare-fun tp!2171112 () Bool)

(declare-fun tp!2171111 () Bool)

(assert (=> b!7484993 (= e!4464270 (and tp!2171112 tp!2171111))))

(declare-fun b!7484992 () Bool)

(declare-fun tp!2171110 () Bool)

(assert (=> b!7484992 (= e!4464270 tp!2171110)))

(declare-fun b!7484990 () Bool)

(assert (=> b!7484990 (= e!4464270 tp_is_empty!49531)))

(assert (= (and b!7484831 ((_ is ElementMatch!19621) (regTwo!39754 (regTwo!39754 r2!5783)))) b!7484990))

(assert (= (and b!7484831 ((_ is Concat!28466) (regTwo!39754 (regTwo!39754 r2!5783)))) b!7484991))

(assert (= (and b!7484831 ((_ is Star!19621) (regTwo!39754 (regTwo!39754 r2!5783)))) b!7484992))

(assert (= (and b!7484831 ((_ is Union!19621) (regTwo!39754 (regTwo!39754 r2!5783)))) b!7484993))

(declare-fun b!7484995 () Bool)

(declare-fun e!4464271 () Bool)

(declare-fun tp!2171114 () Bool)

(declare-fun tp!2171118 () Bool)

(assert (=> b!7484995 (= e!4464271 (and tp!2171114 tp!2171118))))

(assert (=> b!7484790 (= tp!2170957 e!4464271)))

(declare-fun b!7484997 () Bool)

(declare-fun tp!2171117 () Bool)

(declare-fun tp!2171116 () Bool)

(assert (=> b!7484997 (= e!4464271 (and tp!2171117 tp!2171116))))

(declare-fun b!7484996 () Bool)

(declare-fun tp!2171115 () Bool)

(assert (=> b!7484996 (= e!4464271 tp!2171115)))

(declare-fun b!7484994 () Bool)

(assert (=> b!7484994 (= e!4464271 tp_is_empty!49531)))

(assert (= (and b!7484790 ((_ is ElementMatch!19621) (regOne!39755 (regOne!39755 rTail!78)))) b!7484994))

(assert (= (and b!7484790 ((_ is Concat!28466) (regOne!39755 (regOne!39755 rTail!78)))) b!7484995))

(assert (= (and b!7484790 ((_ is Star!19621) (regOne!39755 (regOne!39755 rTail!78)))) b!7484996))

(assert (= (and b!7484790 ((_ is Union!19621) (regOne!39755 (regOne!39755 rTail!78)))) b!7484997))

(declare-fun b!7484999 () Bool)

(declare-fun e!4464272 () Bool)

(declare-fun tp!2171119 () Bool)

(declare-fun tp!2171123 () Bool)

(assert (=> b!7484999 (= e!4464272 (and tp!2171119 tp!2171123))))

(assert (=> b!7484790 (= tp!2170956 e!4464272)))

(declare-fun b!7485001 () Bool)

(declare-fun tp!2171122 () Bool)

(declare-fun tp!2171121 () Bool)

(assert (=> b!7485001 (= e!4464272 (and tp!2171122 tp!2171121))))

(declare-fun b!7485000 () Bool)

(declare-fun tp!2171120 () Bool)

(assert (=> b!7485000 (= e!4464272 tp!2171120)))

(declare-fun b!7484998 () Bool)

(assert (=> b!7484998 (= e!4464272 tp_is_empty!49531)))

(assert (= (and b!7484790 ((_ is ElementMatch!19621) (regTwo!39755 (regOne!39755 rTail!78)))) b!7484998))

(assert (= (and b!7484790 ((_ is Concat!28466) (regTwo!39755 (regOne!39755 rTail!78)))) b!7484999))

(assert (= (and b!7484790 ((_ is Star!19621) (regTwo!39755 (regOne!39755 rTail!78)))) b!7485000))

(assert (= (and b!7484790 ((_ is Union!19621) (regTwo!39755 (regOne!39755 rTail!78)))) b!7485001))

(declare-fun b!7485003 () Bool)

(declare-fun e!4464273 () Bool)

(declare-fun tp!2171124 () Bool)

(declare-fun tp!2171128 () Bool)

(assert (=> b!7485003 (= e!4464273 (and tp!2171124 tp!2171128))))

(assert (=> b!7484840 (= tp!2171010 e!4464273)))

(declare-fun b!7485005 () Bool)

(declare-fun tp!2171127 () Bool)

(declare-fun tp!2171126 () Bool)

(assert (=> b!7485005 (= e!4464273 (and tp!2171127 tp!2171126))))

(declare-fun b!7485004 () Bool)

(declare-fun tp!2171125 () Bool)

(assert (=> b!7485004 (= e!4464273 tp!2171125)))

(declare-fun b!7485002 () Bool)

(assert (=> b!7485002 (= e!4464273 tp_is_empty!49531)))

(assert (= (and b!7484840 ((_ is ElementMatch!19621) (reg!19950 (regTwo!39754 rTail!78)))) b!7485002))

(assert (= (and b!7484840 ((_ is Concat!28466) (reg!19950 (regTwo!39754 rTail!78)))) b!7485003))

(assert (= (and b!7484840 ((_ is Star!19621) (reg!19950 (regTwo!39754 rTail!78)))) b!7485004))

(assert (= (and b!7484840 ((_ is Union!19621) (reg!19950 (regTwo!39754 rTail!78)))) b!7485005))

(declare-fun b!7485007 () Bool)

(declare-fun e!4464274 () Bool)

(declare-fun tp!2171129 () Bool)

(declare-fun tp!2171133 () Bool)

(assert (=> b!7485007 (= e!4464274 (and tp!2171129 tp!2171133))))

(assert (=> b!7484839 (= tp!2171009 e!4464274)))

(declare-fun b!7485009 () Bool)

(declare-fun tp!2171132 () Bool)

(declare-fun tp!2171131 () Bool)

(assert (=> b!7485009 (= e!4464274 (and tp!2171132 tp!2171131))))

(declare-fun b!7485008 () Bool)

(declare-fun tp!2171130 () Bool)

(assert (=> b!7485008 (= e!4464274 tp!2171130)))

(declare-fun b!7485006 () Bool)

(assert (=> b!7485006 (= e!4464274 tp_is_empty!49531)))

(assert (= (and b!7484839 ((_ is ElementMatch!19621) (regOne!39754 (regTwo!39754 rTail!78)))) b!7485006))

(assert (= (and b!7484839 ((_ is Concat!28466) (regOne!39754 (regTwo!39754 rTail!78)))) b!7485007))

(assert (= (and b!7484839 ((_ is Star!19621) (regOne!39754 (regTwo!39754 rTail!78)))) b!7485008))

(assert (= (and b!7484839 ((_ is Union!19621) (regOne!39754 (regTwo!39754 rTail!78)))) b!7485009))

(declare-fun b!7485011 () Bool)

(declare-fun e!4464275 () Bool)

(declare-fun tp!2171134 () Bool)

(declare-fun tp!2171138 () Bool)

(assert (=> b!7485011 (= e!4464275 (and tp!2171134 tp!2171138))))

(assert (=> b!7484839 (= tp!2171013 e!4464275)))

(declare-fun b!7485013 () Bool)

(declare-fun tp!2171137 () Bool)

(declare-fun tp!2171136 () Bool)

(assert (=> b!7485013 (= e!4464275 (and tp!2171137 tp!2171136))))

(declare-fun b!7485012 () Bool)

(declare-fun tp!2171135 () Bool)

(assert (=> b!7485012 (= e!4464275 tp!2171135)))

(declare-fun b!7485010 () Bool)

(assert (=> b!7485010 (= e!4464275 tp_is_empty!49531)))

(assert (= (and b!7484839 ((_ is ElementMatch!19621) (regTwo!39754 (regTwo!39754 rTail!78)))) b!7485010))

(assert (= (and b!7484839 ((_ is Concat!28466) (regTwo!39754 (regTwo!39754 rTail!78)))) b!7485011))

(assert (= (and b!7484839 ((_ is Star!19621) (regTwo!39754 (regTwo!39754 rTail!78)))) b!7485012))

(assert (= (and b!7484839 ((_ is Union!19621) (regTwo!39754 (regTwo!39754 rTail!78)))) b!7485013))

(declare-fun b!7485015 () Bool)

(declare-fun e!4464276 () Bool)

(declare-fun tp!2171139 () Bool)

(declare-fun tp!2171143 () Bool)

(assert (=> b!7485015 (= e!4464276 (and tp!2171139 tp!2171143))))

(assert (=> b!7484815 (= tp!2170977 e!4464276)))

(declare-fun b!7485017 () Bool)

(declare-fun tp!2171142 () Bool)

(declare-fun tp!2171141 () Bool)

(assert (=> b!7485017 (= e!4464276 (and tp!2171142 tp!2171141))))

(declare-fun b!7485016 () Bool)

(declare-fun tp!2171140 () Bool)

(assert (=> b!7485016 (= e!4464276 tp!2171140)))

(declare-fun b!7485014 () Bool)

(assert (=> b!7485014 (= e!4464276 tp_is_empty!49531)))

(assert (= (and b!7484815 ((_ is ElementMatch!19621) (regOne!39755 (regOne!39755 r1!5845)))) b!7485014))

(assert (= (and b!7484815 ((_ is Concat!28466) (regOne!39755 (regOne!39755 r1!5845)))) b!7485015))

(assert (= (and b!7484815 ((_ is Star!19621) (regOne!39755 (regOne!39755 r1!5845)))) b!7485016))

(assert (= (and b!7484815 ((_ is Union!19621) (regOne!39755 (regOne!39755 r1!5845)))) b!7485017))

(declare-fun b!7485019 () Bool)

(declare-fun e!4464277 () Bool)

(declare-fun tp!2171144 () Bool)

(declare-fun tp!2171148 () Bool)

(assert (=> b!7485019 (= e!4464277 (and tp!2171144 tp!2171148))))

(assert (=> b!7484815 (= tp!2170976 e!4464277)))

(declare-fun b!7485021 () Bool)

(declare-fun tp!2171147 () Bool)

(declare-fun tp!2171146 () Bool)

(assert (=> b!7485021 (= e!4464277 (and tp!2171147 tp!2171146))))

(declare-fun b!7485020 () Bool)

(declare-fun tp!2171145 () Bool)

(assert (=> b!7485020 (= e!4464277 tp!2171145)))

(declare-fun b!7485018 () Bool)

(assert (=> b!7485018 (= e!4464277 tp_is_empty!49531)))

(assert (= (and b!7484815 ((_ is ElementMatch!19621) (regTwo!39755 (regOne!39755 r1!5845)))) b!7485018))

(assert (= (and b!7484815 ((_ is Concat!28466) (regTwo!39755 (regOne!39755 r1!5845)))) b!7485019))

(assert (= (and b!7484815 ((_ is Star!19621) (regTwo!39755 (regOne!39755 r1!5845)))) b!7485020))

(assert (= (and b!7484815 ((_ is Union!19621) (regTwo!39755 (regOne!39755 r1!5845)))) b!7485021))

(declare-fun b!7485023 () Bool)

(declare-fun e!4464278 () Bool)

(declare-fun tp!2171149 () Bool)

(declare-fun tp!2171153 () Bool)

(assert (=> b!7485023 (= e!4464278 (and tp!2171149 tp!2171153))))

(assert (=> b!7484788 (= tp!2170955 e!4464278)))

(declare-fun b!7485025 () Bool)

(declare-fun tp!2171152 () Bool)

(declare-fun tp!2171151 () Bool)

(assert (=> b!7485025 (= e!4464278 (and tp!2171152 tp!2171151))))

(declare-fun b!7485024 () Bool)

(declare-fun tp!2171150 () Bool)

(assert (=> b!7485024 (= e!4464278 tp!2171150)))

(declare-fun b!7485022 () Bool)

(assert (=> b!7485022 (= e!4464278 tp_is_empty!49531)))

(assert (= (and b!7484788 ((_ is ElementMatch!19621) (reg!19950 (regOne!39755 rTail!78)))) b!7485022))

(assert (= (and b!7484788 ((_ is Concat!28466) (reg!19950 (regOne!39755 rTail!78)))) b!7485023))

(assert (= (and b!7484788 ((_ is Star!19621) (reg!19950 (regOne!39755 rTail!78)))) b!7485024))

(assert (= (and b!7484788 ((_ is Union!19621) (reg!19950 (regOne!39755 rTail!78)))) b!7485025))

(declare-fun b!7485027 () Bool)

(declare-fun e!4464279 () Bool)

(declare-fun tp!2171154 () Bool)

(declare-fun tp!2171158 () Bool)

(assert (=> b!7485027 (= e!4464279 (and tp!2171154 tp!2171158))))

(assert (=> b!7484814 (= tp!2170975 e!4464279)))

(declare-fun b!7485029 () Bool)

(declare-fun tp!2171157 () Bool)

(declare-fun tp!2171156 () Bool)

(assert (=> b!7485029 (= e!4464279 (and tp!2171157 tp!2171156))))

(declare-fun b!7485028 () Bool)

(declare-fun tp!2171155 () Bool)

(assert (=> b!7485028 (= e!4464279 tp!2171155)))

(declare-fun b!7485026 () Bool)

(assert (=> b!7485026 (= e!4464279 tp_is_empty!49531)))

(assert (= (and b!7484814 ((_ is ElementMatch!19621) (reg!19950 (regOne!39755 r1!5845)))) b!7485026))

(assert (= (and b!7484814 ((_ is Concat!28466) (reg!19950 (regOne!39755 r1!5845)))) b!7485027))

(assert (= (and b!7484814 ((_ is Star!19621) (reg!19950 (regOne!39755 r1!5845)))) b!7485028))

(assert (= (and b!7484814 ((_ is Union!19621) (reg!19950 (regOne!39755 r1!5845)))) b!7485029))

(declare-fun b!7485031 () Bool)

(declare-fun e!4464280 () Bool)

(declare-fun tp!2171159 () Bool)

(declare-fun tp!2171163 () Bool)

(assert (=> b!7485031 (= e!4464280 (and tp!2171159 tp!2171163))))

(assert (=> b!7484780 (= tp!2170949 e!4464280)))

(declare-fun b!7485033 () Bool)

(declare-fun tp!2171162 () Bool)

(declare-fun tp!2171161 () Bool)

(assert (=> b!7485033 (= e!4464280 (and tp!2171162 tp!2171161))))

(declare-fun b!7485032 () Bool)

(declare-fun tp!2171160 () Bool)

(assert (=> b!7485032 (= e!4464280 tp!2171160)))

(declare-fun b!7485030 () Bool)

(assert (=> b!7485030 (= e!4464280 tp_is_empty!49531)))

(assert (= (and b!7484780 ((_ is ElementMatch!19621) (regOne!39754 (reg!19950 rTail!78)))) b!7485030))

(assert (= (and b!7484780 ((_ is Concat!28466) (regOne!39754 (reg!19950 rTail!78)))) b!7485031))

(assert (= (and b!7484780 ((_ is Star!19621) (regOne!39754 (reg!19950 rTail!78)))) b!7485032))

(assert (= (and b!7484780 ((_ is Union!19621) (regOne!39754 (reg!19950 rTail!78)))) b!7485033))

(declare-fun b!7485035 () Bool)

(declare-fun e!4464281 () Bool)

(declare-fun tp!2171164 () Bool)

(declare-fun tp!2171168 () Bool)

(assert (=> b!7485035 (= e!4464281 (and tp!2171164 tp!2171168))))

(assert (=> b!7484780 (= tp!2170953 e!4464281)))

(declare-fun b!7485037 () Bool)

(declare-fun tp!2171167 () Bool)

(declare-fun tp!2171166 () Bool)

(assert (=> b!7485037 (= e!4464281 (and tp!2171167 tp!2171166))))

(declare-fun b!7485036 () Bool)

(declare-fun tp!2171165 () Bool)

(assert (=> b!7485036 (= e!4464281 tp!2171165)))

(declare-fun b!7485034 () Bool)

(assert (=> b!7485034 (= e!4464281 tp_is_empty!49531)))

(assert (= (and b!7484780 ((_ is ElementMatch!19621) (regTwo!39754 (reg!19950 rTail!78)))) b!7485034))

(assert (= (and b!7484780 ((_ is Concat!28466) (regTwo!39754 (reg!19950 rTail!78)))) b!7485035))

(assert (= (and b!7484780 ((_ is Star!19621) (regTwo!39754 (reg!19950 rTail!78)))) b!7485036))

(assert (= (and b!7484780 ((_ is Union!19621) (regTwo!39754 (reg!19950 rTail!78)))) b!7485037))

(declare-fun b!7485039 () Bool)

(declare-fun e!4464282 () Bool)

(declare-fun tp!2171169 () Bool)

(declare-fun tp!2171173 () Bool)

(assert (=> b!7485039 (= e!4464282 (and tp!2171169 tp!2171173))))

(assert (=> b!7484833 (= tp!2171002 e!4464282)))

(declare-fun b!7485041 () Bool)

(declare-fun tp!2171172 () Bool)

(declare-fun tp!2171171 () Bool)

(assert (=> b!7485041 (= e!4464282 (and tp!2171172 tp!2171171))))

(declare-fun b!7485040 () Bool)

(declare-fun tp!2171170 () Bool)

(assert (=> b!7485040 (= e!4464282 tp!2171170)))

(declare-fun b!7485038 () Bool)

(assert (=> b!7485038 (= e!4464282 tp_is_empty!49531)))

(assert (= (and b!7484833 ((_ is ElementMatch!19621) (regOne!39755 (regTwo!39754 r2!5783)))) b!7485038))

(assert (= (and b!7484833 ((_ is Concat!28466) (regOne!39755 (regTwo!39754 r2!5783)))) b!7485039))

(assert (= (and b!7484833 ((_ is Star!19621) (regOne!39755 (regTwo!39754 r2!5783)))) b!7485040))

(assert (= (and b!7484833 ((_ is Union!19621) (regOne!39755 (regTwo!39754 r2!5783)))) b!7485041))

(declare-fun b!7485043 () Bool)

(declare-fun e!4464283 () Bool)

(declare-fun tp!2171174 () Bool)

(declare-fun tp!2171178 () Bool)

(assert (=> b!7485043 (= e!4464283 (and tp!2171174 tp!2171178))))

(assert (=> b!7484833 (= tp!2171001 e!4464283)))

(declare-fun b!7485045 () Bool)

(declare-fun tp!2171177 () Bool)

(declare-fun tp!2171176 () Bool)

(assert (=> b!7485045 (= e!4464283 (and tp!2171177 tp!2171176))))

(declare-fun b!7485044 () Bool)

(declare-fun tp!2171175 () Bool)

(assert (=> b!7485044 (= e!4464283 tp!2171175)))

(declare-fun b!7485042 () Bool)

(assert (=> b!7485042 (= e!4464283 tp_is_empty!49531)))

(assert (= (and b!7484833 ((_ is ElementMatch!19621) (regTwo!39755 (regTwo!39754 r2!5783)))) b!7485042))

(assert (= (and b!7484833 ((_ is Concat!28466) (regTwo!39755 (regTwo!39754 r2!5783)))) b!7485043))

(assert (= (and b!7484833 ((_ is Star!19621) (regTwo!39755 (regTwo!39754 r2!5783)))) b!7485044))

(assert (= (and b!7484833 ((_ is Union!19621) (regTwo!39755 (regTwo!39754 r2!5783)))) b!7485045))

(declare-fun b!7485047 () Bool)

(declare-fun e!4464284 () Bool)

(declare-fun tp!2171179 () Bool)

(declare-fun tp!2171183 () Bool)

(assert (=> b!7485047 (= e!4464284 (and tp!2171179 tp!2171183))))

(assert (=> b!7484832 (= tp!2171000 e!4464284)))

(declare-fun b!7485049 () Bool)

(declare-fun tp!2171182 () Bool)

(declare-fun tp!2171181 () Bool)

(assert (=> b!7485049 (= e!4464284 (and tp!2171182 tp!2171181))))

(declare-fun b!7485048 () Bool)

(declare-fun tp!2171180 () Bool)

(assert (=> b!7485048 (= e!4464284 tp!2171180)))

(declare-fun b!7485046 () Bool)

(assert (=> b!7485046 (= e!4464284 tp_is_empty!49531)))

(assert (= (and b!7484832 ((_ is ElementMatch!19621) (reg!19950 (regTwo!39754 r2!5783)))) b!7485046))

(assert (= (and b!7484832 ((_ is Concat!28466) (reg!19950 (regTwo!39754 r2!5783)))) b!7485047))

(assert (= (and b!7484832 ((_ is Star!19621) (reg!19950 (regTwo!39754 r2!5783)))) b!7485048))

(assert (= (and b!7484832 ((_ is Union!19621) (reg!19950 (regTwo!39754 r2!5783)))) b!7485049))

(declare-fun b!7485051 () Bool)

(declare-fun e!4464285 () Bool)

(declare-fun tp!2171184 () Bool)

(declare-fun tp!2171188 () Bool)

(assert (=> b!7485051 (= e!4464285 (and tp!2171184 tp!2171188))))

(assert (=> b!7484841 (= tp!2171012 e!4464285)))

(declare-fun b!7485053 () Bool)

(declare-fun tp!2171187 () Bool)

(declare-fun tp!2171186 () Bool)

(assert (=> b!7485053 (= e!4464285 (and tp!2171187 tp!2171186))))

(declare-fun b!7485052 () Bool)

(declare-fun tp!2171185 () Bool)

(assert (=> b!7485052 (= e!4464285 tp!2171185)))

(declare-fun b!7485050 () Bool)

(assert (=> b!7485050 (= e!4464285 tp_is_empty!49531)))

(assert (= (and b!7484841 ((_ is ElementMatch!19621) (regOne!39755 (regTwo!39754 rTail!78)))) b!7485050))

(assert (= (and b!7484841 ((_ is Concat!28466) (regOne!39755 (regTwo!39754 rTail!78)))) b!7485051))

(assert (= (and b!7484841 ((_ is Star!19621) (regOne!39755 (regTwo!39754 rTail!78)))) b!7485052))

(assert (= (and b!7484841 ((_ is Union!19621) (regOne!39755 (regTwo!39754 rTail!78)))) b!7485053))

(declare-fun b!7485055 () Bool)

(declare-fun e!4464286 () Bool)

(declare-fun tp!2171189 () Bool)

(declare-fun tp!2171193 () Bool)

(assert (=> b!7485055 (= e!4464286 (and tp!2171189 tp!2171193))))

(assert (=> b!7484841 (= tp!2171011 e!4464286)))

(declare-fun b!7485057 () Bool)

(declare-fun tp!2171192 () Bool)

(declare-fun tp!2171191 () Bool)

(assert (=> b!7485057 (= e!4464286 (and tp!2171192 tp!2171191))))

(declare-fun b!7485056 () Bool)

(declare-fun tp!2171190 () Bool)

(assert (=> b!7485056 (= e!4464286 tp!2171190)))

(declare-fun b!7485054 () Bool)

(assert (=> b!7485054 (= e!4464286 tp_is_empty!49531)))

(assert (= (and b!7484841 ((_ is ElementMatch!19621) (regTwo!39755 (regTwo!39754 rTail!78)))) b!7485054))

(assert (= (and b!7484841 ((_ is Concat!28466) (regTwo!39755 (regTwo!39754 rTail!78)))) b!7485055))

(assert (= (and b!7484841 ((_ is Star!19621) (regTwo!39755 (regTwo!39754 rTail!78)))) b!7485056))

(assert (= (and b!7484841 ((_ is Union!19621) (regTwo!39755 (regTwo!39754 rTail!78)))) b!7485057))

(declare-fun b!7485059 () Bool)

(declare-fun e!4464287 () Bool)

(declare-fun tp!2171194 () Bool)

(declare-fun tp!2171198 () Bool)

(assert (=> b!7485059 (= e!4464287 (and tp!2171194 tp!2171198))))

(assert (=> b!7484803 (= tp!2170967 e!4464287)))

(declare-fun b!7485061 () Bool)

(declare-fun tp!2171197 () Bool)

(declare-fun tp!2171196 () Bool)

(assert (=> b!7485061 (= e!4464287 (and tp!2171197 tp!2171196))))

(declare-fun b!7485060 () Bool)

(declare-fun tp!2171195 () Bool)

(assert (=> b!7485060 (= e!4464287 tp!2171195)))

(declare-fun b!7485058 () Bool)

(assert (=> b!7485058 (= e!4464287 tp_is_empty!49531)))

(assert (= (and b!7484803 ((_ is ElementMatch!19621) (regOne!39755 (regOne!39754 r1!5845)))) b!7485058))

(assert (= (and b!7484803 ((_ is Concat!28466) (regOne!39755 (regOne!39754 r1!5845)))) b!7485059))

(assert (= (and b!7484803 ((_ is Star!19621) (regOne!39755 (regOne!39754 r1!5845)))) b!7485060))

(assert (= (and b!7484803 ((_ is Union!19621) (regOne!39755 (regOne!39754 r1!5845)))) b!7485061))

(declare-fun b!7485063 () Bool)

(declare-fun e!4464288 () Bool)

(declare-fun tp!2171199 () Bool)

(declare-fun tp!2171203 () Bool)

(assert (=> b!7485063 (= e!4464288 (and tp!2171199 tp!2171203))))

(assert (=> b!7484803 (= tp!2170966 e!4464288)))

(declare-fun b!7485065 () Bool)

(declare-fun tp!2171202 () Bool)

(declare-fun tp!2171201 () Bool)

(assert (=> b!7485065 (= e!4464288 (and tp!2171202 tp!2171201))))

(declare-fun b!7485064 () Bool)

(declare-fun tp!2171200 () Bool)

(assert (=> b!7485064 (= e!4464288 tp!2171200)))

(declare-fun b!7485062 () Bool)

(assert (=> b!7485062 (= e!4464288 tp_is_empty!49531)))

(assert (= (and b!7484803 ((_ is ElementMatch!19621) (regTwo!39755 (regOne!39754 r1!5845)))) b!7485062))

(assert (= (and b!7484803 ((_ is Concat!28466) (regTwo!39755 (regOne!39754 r1!5845)))) b!7485063))

(assert (= (and b!7484803 ((_ is Star!19621) (regTwo!39755 (regOne!39754 r1!5845)))) b!7485064))

(assert (= (and b!7484803 ((_ is Union!19621) (regTwo!39755 (regOne!39754 r1!5845)))) b!7485065))

(declare-fun b!7485067 () Bool)

(declare-fun e!4464289 () Bool)

(declare-fun tp!2171204 () Bool)

(declare-fun tp!2171208 () Bool)

(assert (=> b!7485067 (= e!4464289 (and tp!2171204 tp!2171208))))

(assert (=> b!7484802 (= tp!2170965 e!4464289)))

(declare-fun b!7485069 () Bool)

(declare-fun tp!2171207 () Bool)

(declare-fun tp!2171206 () Bool)

(assert (=> b!7485069 (= e!4464289 (and tp!2171207 tp!2171206))))

(declare-fun b!7485068 () Bool)

(declare-fun tp!2171205 () Bool)

(assert (=> b!7485068 (= e!4464289 tp!2171205)))

(declare-fun b!7485066 () Bool)

(assert (=> b!7485066 (= e!4464289 tp_is_empty!49531)))

(assert (= (and b!7484802 ((_ is ElementMatch!19621) (reg!19950 (regOne!39754 r1!5845)))) b!7485066))

(assert (= (and b!7484802 ((_ is Concat!28466) (reg!19950 (regOne!39754 r1!5845)))) b!7485067))

(assert (= (and b!7484802 ((_ is Star!19621) (reg!19950 (regOne!39754 r1!5845)))) b!7485068))

(assert (= (and b!7484802 ((_ is Union!19621) (reg!19950 (regOne!39754 r1!5845)))) b!7485069))

(declare-fun b!7485071 () Bool)

(declare-fun e!4464290 () Bool)

(declare-fun tp!2171209 () Bool)

(declare-fun tp!2171213 () Bool)

(assert (=> b!7485071 (= e!4464290 (and tp!2171209 tp!2171213))))

(assert (=> b!7484782 (= tp!2170952 e!4464290)))

(declare-fun b!7485073 () Bool)

(declare-fun tp!2171212 () Bool)

(declare-fun tp!2171211 () Bool)

(assert (=> b!7485073 (= e!4464290 (and tp!2171212 tp!2171211))))

(declare-fun b!7485072 () Bool)

(declare-fun tp!2171210 () Bool)

(assert (=> b!7485072 (= e!4464290 tp!2171210)))

(declare-fun b!7485070 () Bool)

(assert (=> b!7485070 (= e!4464290 tp_is_empty!49531)))

(assert (= (and b!7484782 ((_ is ElementMatch!19621) (regOne!39755 (reg!19950 rTail!78)))) b!7485070))

(assert (= (and b!7484782 ((_ is Concat!28466) (regOne!39755 (reg!19950 rTail!78)))) b!7485071))

(assert (= (and b!7484782 ((_ is Star!19621) (regOne!39755 (reg!19950 rTail!78)))) b!7485072))

(assert (= (and b!7484782 ((_ is Union!19621) (regOne!39755 (reg!19950 rTail!78)))) b!7485073))

(declare-fun b!7485075 () Bool)

(declare-fun e!4464291 () Bool)

(declare-fun tp!2171214 () Bool)

(declare-fun tp!2171218 () Bool)

(assert (=> b!7485075 (= e!4464291 (and tp!2171214 tp!2171218))))

(assert (=> b!7484782 (= tp!2170951 e!4464291)))

(declare-fun b!7485077 () Bool)

(declare-fun tp!2171217 () Bool)

(declare-fun tp!2171216 () Bool)

(assert (=> b!7485077 (= e!4464291 (and tp!2171217 tp!2171216))))

(declare-fun b!7485076 () Bool)

(declare-fun tp!2171215 () Bool)

(assert (=> b!7485076 (= e!4464291 tp!2171215)))

(declare-fun b!7485074 () Bool)

(assert (=> b!7485074 (= e!4464291 tp_is_empty!49531)))

(assert (= (and b!7484782 ((_ is ElementMatch!19621) (regTwo!39755 (reg!19950 rTail!78)))) b!7485074))

(assert (= (and b!7484782 ((_ is Concat!28466) (regTwo!39755 (reg!19950 rTail!78)))) b!7485075))

(assert (= (and b!7484782 ((_ is Star!19621) (regTwo!39755 (reg!19950 rTail!78)))) b!7485076))

(assert (= (and b!7484782 ((_ is Union!19621) (regTwo!39755 (reg!19950 rTail!78)))) b!7485077))

(declare-fun b!7485079 () Bool)

(declare-fun e!4464292 () Bool)

(declare-fun tp!2171219 () Bool)

(declare-fun tp!2171223 () Bool)

(assert (=> b!7485079 (= e!4464292 (and tp!2171219 tp!2171223))))

(assert (=> b!7484801 (= tp!2170964 e!4464292)))

(declare-fun b!7485081 () Bool)

(declare-fun tp!2171222 () Bool)

(declare-fun tp!2171221 () Bool)

(assert (=> b!7485081 (= e!4464292 (and tp!2171222 tp!2171221))))

(declare-fun b!7485080 () Bool)

(declare-fun tp!2171220 () Bool)

(assert (=> b!7485080 (= e!4464292 tp!2171220)))

(declare-fun b!7485078 () Bool)

(assert (=> b!7485078 (= e!4464292 tp_is_empty!49531)))

(assert (= (and b!7484801 ((_ is ElementMatch!19621) (regOne!39754 (regOne!39754 r1!5845)))) b!7485078))

(assert (= (and b!7484801 ((_ is Concat!28466) (regOne!39754 (regOne!39754 r1!5845)))) b!7485079))

(assert (= (and b!7484801 ((_ is Star!19621) (regOne!39754 (regOne!39754 r1!5845)))) b!7485080))

(assert (= (and b!7484801 ((_ is Union!19621) (regOne!39754 (regOne!39754 r1!5845)))) b!7485081))

(declare-fun b!7485083 () Bool)

(declare-fun e!4464293 () Bool)

(declare-fun tp!2171224 () Bool)

(declare-fun tp!2171228 () Bool)

(assert (=> b!7485083 (= e!4464293 (and tp!2171224 tp!2171228))))

(assert (=> b!7484801 (= tp!2170968 e!4464293)))

(declare-fun b!7485085 () Bool)

(declare-fun tp!2171227 () Bool)

(declare-fun tp!2171226 () Bool)

(assert (=> b!7485085 (= e!4464293 (and tp!2171227 tp!2171226))))

(declare-fun b!7485084 () Bool)

(declare-fun tp!2171225 () Bool)

(assert (=> b!7485084 (= e!4464293 tp!2171225)))

(declare-fun b!7485082 () Bool)

(assert (=> b!7485082 (= e!4464293 tp_is_empty!49531)))

(assert (= (and b!7484801 ((_ is ElementMatch!19621) (regTwo!39754 (regOne!39754 r1!5845)))) b!7485082))

(assert (= (and b!7484801 ((_ is Concat!28466) (regTwo!39754 (regOne!39754 r1!5845)))) b!7485083))

(assert (= (and b!7484801 ((_ is Star!19621) (regTwo!39754 (regOne!39754 r1!5845)))) b!7485084))

(assert (= (and b!7484801 ((_ is Union!19621) (regTwo!39754 (regOne!39754 r1!5845)))) b!7485085))

(declare-fun b!7485087 () Bool)

(declare-fun e!4464294 () Bool)

(declare-fun tp!2171229 () Bool)

(declare-fun tp!2171233 () Bool)

(assert (=> b!7485087 (= e!4464294 (and tp!2171229 tp!2171233))))

(assert (=> b!7484781 (= tp!2170950 e!4464294)))

(declare-fun b!7485089 () Bool)

(declare-fun tp!2171232 () Bool)

(declare-fun tp!2171231 () Bool)

(assert (=> b!7485089 (= e!4464294 (and tp!2171232 tp!2171231))))

(declare-fun b!7485088 () Bool)

(declare-fun tp!2171230 () Bool)

(assert (=> b!7485088 (= e!4464294 tp!2171230)))

(declare-fun b!7485086 () Bool)

(assert (=> b!7485086 (= e!4464294 tp_is_empty!49531)))

(assert (= (and b!7484781 ((_ is ElementMatch!19621) (reg!19950 (reg!19950 rTail!78)))) b!7485086))

(assert (= (and b!7484781 ((_ is Concat!28466) (reg!19950 (reg!19950 rTail!78)))) b!7485087))

(assert (= (and b!7484781 ((_ is Star!19621) (reg!19950 (reg!19950 rTail!78)))) b!7485088))

(assert (= (and b!7484781 ((_ is Union!19621) (reg!19950 (reg!19950 rTail!78)))) b!7485089))

(declare-fun b!7485091 () Bool)

(declare-fun e!4464295 () Bool)

(declare-fun tp!2171234 () Bool)

(declare-fun tp!2171238 () Bool)

(assert (=> b!7485091 (= e!4464295 (and tp!2171234 tp!2171238))))

(assert (=> b!7484861 (= tp!2171037 e!4464295)))

(declare-fun b!7485093 () Bool)

(declare-fun tp!2171237 () Bool)

(declare-fun tp!2171236 () Bool)

(assert (=> b!7485093 (= e!4464295 (and tp!2171237 tp!2171236))))

(declare-fun b!7485092 () Bool)

(declare-fun tp!2171235 () Bool)

(assert (=> b!7485092 (= e!4464295 tp!2171235)))

(declare-fun b!7485090 () Bool)

(assert (=> b!7485090 (= e!4464295 tp_is_empty!49531)))

(assert (= (and b!7484861 ((_ is ElementMatch!19621) (regOne!39755 (reg!19950 r1!5845)))) b!7485090))

(assert (= (and b!7484861 ((_ is Concat!28466) (regOne!39755 (reg!19950 r1!5845)))) b!7485091))

(assert (= (and b!7484861 ((_ is Star!19621) (regOne!39755 (reg!19950 r1!5845)))) b!7485092))

(assert (= (and b!7484861 ((_ is Union!19621) (regOne!39755 (reg!19950 r1!5845)))) b!7485093))

(declare-fun b!7485095 () Bool)

(declare-fun e!4464296 () Bool)

(declare-fun tp!2171239 () Bool)

(declare-fun tp!2171243 () Bool)

(assert (=> b!7485095 (= e!4464296 (and tp!2171239 tp!2171243))))

(assert (=> b!7484861 (= tp!2171036 e!4464296)))

(declare-fun b!7485097 () Bool)

(declare-fun tp!2171242 () Bool)

(declare-fun tp!2171241 () Bool)

(assert (=> b!7485097 (= e!4464296 (and tp!2171242 tp!2171241))))

(declare-fun b!7485096 () Bool)

(declare-fun tp!2171240 () Bool)

(assert (=> b!7485096 (= e!4464296 tp!2171240)))

(declare-fun b!7485094 () Bool)

(assert (=> b!7485094 (= e!4464296 tp_is_empty!49531)))

(assert (= (and b!7484861 ((_ is ElementMatch!19621) (regTwo!39755 (reg!19950 r1!5845)))) b!7485094))

(assert (= (and b!7484861 ((_ is Concat!28466) (regTwo!39755 (reg!19950 r1!5845)))) b!7485095))

(assert (= (and b!7484861 ((_ is Star!19621) (regTwo!39755 (reg!19950 r1!5845)))) b!7485096))

(assert (= (and b!7484861 ((_ is Union!19621) (regTwo!39755 (reg!19950 r1!5845)))) b!7485097))

(declare-fun b!7485099 () Bool)

(declare-fun e!4464297 () Bool)

(declare-fun tp!2171244 () Bool)

(declare-fun tp!2171248 () Bool)

(assert (=> b!7485099 (= e!4464297 (and tp!2171244 tp!2171248))))

(assert (=> b!7484851 (= tp!2171024 e!4464297)))

(declare-fun b!7485101 () Bool)

(declare-fun tp!2171247 () Bool)

(declare-fun tp!2171246 () Bool)

(assert (=> b!7485101 (= e!4464297 (and tp!2171247 tp!2171246))))

(declare-fun b!7485100 () Bool)

(declare-fun tp!2171245 () Bool)

(assert (=> b!7485100 (= e!4464297 tp!2171245)))

(declare-fun b!7485098 () Bool)

(assert (=> b!7485098 (= e!4464297 tp_is_empty!49531)))

(assert (= (and b!7484851 ((_ is ElementMatch!19621) (regOne!39754 (regTwo!39755 r2!5783)))) b!7485098))

(assert (= (and b!7484851 ((_ is Concat!28466) (regOne!39754 (regTwo!39755 r2!5783)))) b!7485099))

(assert (= (and b!7484851 ((_ is Star!19621) (regOne!39754 (regTwo!39755 r2!5783)))) b!7485100))

(assert (= (and b!7484851 ((_ is Union!19621) (regOne!39754 (regTwo!39755 r2!5783)))) b!7485101))

(declare-fun b!7485103 () Bool)

(declare-fun e!4464298 () Bool)

(declare-fun tp!2171249 () Bool)

(declare-fun tp!2171253 () Bool)

(assert (=> b!7485103 (= e!4464298 (and tp!2171249 tp!2171253))))

(assert (=> b!7484851 (= tp!2171028 e!4464298)))

(declare-fun b!7485105 () Bool)

(declare-fun tp!2171252 () Bool)

(declare-fun tp!2171251 () Bool)

(assert (=> b!7485105 (= e!4464298 (and tp!2171252 tp!2171251))))

(declare-fun b!7485104 () Bool)

(declare-fun tp!2171250 () Bool)

(assert (=> b!7485104 (= e!4464298 tp!2171250)))

(declare-fun b!7485102 () Bool)

(assert (=> b!7485102 (= e!4464298 tp_is_empty!49531)))

(assert (= (and b!7484851 ((_ is ElementMatch!19621) (regTwo!39754 (regTwo!39755 r2!5783)))) b!7485102))

(assert (= (and b!7484851 ((_ is Concat!28466) (regTwo!39754 (regTwo!39755 r2!5783)))) b!7485103))

(assert (= (and b!7484851 ((_ is Star!19621) (regTwo!39754 (regTwo!39755 r2!5783)))) b!7485104))

(assert (= (and b!7484851 ((_ is Union!19621) (regTwo!39754 (regTwo!39755 r2!5783)))) b!7485105))

(declare-fun b!7485107 () Bool)

(declare-fun e!4464299 () Bool)

(declare-fun tp!2171254 () Bool)

(declare-fun tp!2171258 () Bool)

(assert (=> b!7485107 (= e!4464299 (and tp!2171254 tp!2171258))))

(assert (=> b!7484860 (= tp!2171035 e!4464299)))

(declare-fun b!7485109 () Bool)

(declare-fun tp!2171257 () Bool)

(declare-fun tp!2171256 () Bool)

(assert (=> b!7485109 (= e!4464299 (and tp!2171257 tp!2171256))))

(declare-fun b!7485108 () Bool)

(declare-fun tp!2171255 () Bool)

(assert (=> b!7485108 (= e!4464299 tp!2171255)))

(declare-fun b!7485106 () Bool)

(assert (=> b!7485106 (= e!4464299 tp_is_empty!49531)))

(assert (= (and b!7484860 ((_ is ElementMatch!19621) (reg!19950 (reg!19950 r1!5845)))) b!7485106))

(assert (= (and b!7484860 ((_ is Concat!28466) (reg!19950 (reg!19950 r1!5845)))) b!7485107))

(assert (= (and b!7484860 ((_ is Star!19621) (reg!19950 (reg!19950 r1!5845)))) b!7485108))

(assert (= (and b!7484860 ((_ is Union!19621) (reg!19950 (reg!19950 r1!5845)))) b!7485109))

(declare-fun b!7485111 () Bool)

(declare-fun e!4464300 () Bool)

(declare-fun tp!2171259 () Bool)

(declare-fun tp!2171263 () Bool)

(assert (=> b!7485111 (= e!4464300 (and tp!2171259 tp!2171263))))

(assert (=> b!7484859 (= tp!2171034 e!4464300)))

(declare-fun b!7485113 () Bool)

(declare-fun tp!2171262 () Bool)

(declare-fun tp!2171261 () Bool)

(assert (=> b!7485113 (= e!4464300 (and tp!2171262 tp!2171261))))

(declare-fun b!7485112 () Bool)

(declare-fun tp!2171260 () Bool)

(assert (=> b!7485112 (= e!4464300 tp!2171260)))

(declare-fun b!7485110 () Bool)

(assert (=> b!7485110 (= e!4464300 tp_is_empty!49531)))

(assert (= (and b!7484859 ((_ is ElementMatch!19621) (regOne!39754 (reg!19950 r1!5845)))) b!7485110))

(assert (= (and b!7484859 ((_ is Concat!28466) (regOne!39754 (reg!19950 r1!5845)))) b!7485111))

(assert (= (and b!7484859 ((_ is Star!19621) (regOne!39754 (reg!19950 r1!5845)))) b!7485112))

(assert (= (and b!7484859 ((_ is Union!19621) (regOne!39754 (reg!19950 r1!5845)))) b!7485113))

(declare-fun b!7485115 () Bool)

(declare-fun e!4464301 () Bool)

(declare-fun tp!2171264 () Bool)

(declare-fun tp!2171268 () Bool)

(assert (=> b!7485115 (= e!4464301 (and tp!2171264 tp!2171268))))

(assert (=> b!7484859 (= tp!2171038 e!4464301)))

(declare-fun b!7485117 () Bool)

(declare-fun tp!2171267 () Bool)

(declare-fun tp!2171266 () Bool)

(assert (=> b!7485117 (= e!4464301 (and tp!2171267 tp!2171266))))

(declare-fun b!7485116 () Bool)

(declare-fun tp!2171265 () Bool)

(assert (=> b!7485116 (= e!4464301 tp!2171265)))

(declare-fun b!7485114 () Bool)

(assert (=> b!7485114 (= e!4464301 tp_is_empty!49531)))

(assert (= (and b!7484859 ((_ is ElementMatch!19621) (regTwo!39754 (reg!19950 r1!5845)))) b!7485114))

(assert (= (and b!7484859 ((_ is Concat!28466) (regTwo!39754 (reg!19950 r1!5845)))) b!7485115))

(assert (= (and b!7484859 ((_ is Star!19621) (regTwo!39754 (reg!19950 r1!5845)))) b!7485116))

(assert (= (and b!7484859 ((_ is Union!19621) (regTwo!39754 (reg!19950 r1!5845)))) b!7485117))

(declare-fun b!7485119 () Bool)

(declare-fun e!4464309 () Bool)

(declare-fun tp!2171269 () Bool)

(declare-fun tp!2171273 () Bool)

(assert (=> b!7485119 (= e!4464309 (and tp!2171269 tp!2171273))))

(assert (=> b!7484845 (= tp!2171017 e!4464309)))

(declare-fun b!7485121 () Bool)

(declare-fun tp!2171272 () Bool)

(declare-fun tp!2171271 () Bool)

(assert (=> b!7485121 (= e!4464309 (and tp!2171272 tp!2171271))))

(declare-fun b!7485120 () Bool)

(declare-fun tp!2171270 () Bool)

(assert (=> b!7485120 (= e!4464309 tp!2171270)))

(declare-fun b!7485118 () Bool)

(assert (=> b!7485118 (= e!4464309 tp_is_empty!49531)))

(assert (= (and b!7484845 ((_ is ElementMatch!19621) (regOne!39755 (regOne!39755 r2!5783)))) b!7485118))

(assert (= (and b!7484845 ((_ is Concat!28466) (regOne!39755 (regOne!39755 r2!5783)))) b!7485119))

(assert (= (and b!7484845 ((_ is Star!19621) (regOne!39755 (regOne!39755 r2!5783)))) b!7485120))

(assert (= (and b!7484845 ((_ is Union!19621) (regOne!39755 (regOne!39755 r2!5783)))) b!7485121))

(declare-fun b!7485132 () Bool)

(declare-fun e!4464310 () Bool)

(declare-fun tp!2171274 () Bool)

(declare-fun tp!2171278 () Bool)

(assert (=> b!7485132 (= e!4464310 (and tp!2171274 tp!2171278))))

(assert (=> b!7484845 (= tp!2171016 e!4464310)))

(declare-fun b!7485134 () Bool)

(declare-fun tp!2171277 () Bool)

(declare-fun tp!2171276 () Bool)

(assert (=> b!7485134 (= e!4464310 (and tp!2171277 tp!2171276))))

(declare-fun b!7485133 () Bool)

(declare-fun tp!2171275 () Bool)

(assert (=> b!7485133 (= e!4464310 tp!2171275)))

(declare-fun b!7485131 () Bool)

(assert (=> b!7485131 (= e!4464310 tp_is_empty!49531)))

(assert (= (and b!7484845 ((_ is ElementMatch!19621) (regTwo!39755 (regOne!39755 r2!5783)))) b!7485131))

(assert (= (and b!7484845 ((_ is Concat!28466) (regTwo!39755 (regOne!39755 r2!5783)))) b!7485132))

(assert (= (and b!7484845 ((_ is Star!19621) (regTwo!39755 (regOne!39755 r2!5783)))) b!7485133))

(assert (= (and b!7484845 ((_ is Union!19621) (regTwo!39755 (regOne!39755 r2!5783)))) b!7485134))

(declare-fun b!7485136 () Bool)

(declare-fun e!4464311 () Bool)

(declare-fun tp!2171279 () Bool)

(declare-fun tp!2171283 () Bool)

(assert (=> b!7485136 (= e!4464311 (and tp!2171279 tp!2171283))))

(assert (=> b!7484835 (= tp!2171004 e!4464311)))

(declare-fun b!7485138 () Bool)

(declare-fun tp!2171282 () Bool)

(declare-fun tp!2171281 () Bool)

(assert (=> b!7485138 (= e!4464311 (and tp!2171282 tp!2171281))))

(declare-fun b!7485137 () Bool)

(declare-fun tp!2171280 () Bool)

(assert (=> b!7485137 (= e!4464311 tp!2171280)))

(declare-fun b!7485135 () Bool)

(assert (=> b!7485135 (= e!4464311 tp_is_empty!49531)))

(assert (= (and b!7484835 ((_ is ElementMatch!19621) (regOne!39754 (regOne!39754 rTail!78)))) b!7485135))

(assert (= (and b!7484835 ((_ is Concat!28466) (regOne!39754 (regOne!39754 rTail!78)))) b!7485136))

(assert (= (and b!7484835 ((_ is Star!19621) (regOne!39754 (regOne!39754 rTail!78)))) b!7485137))

(assert (= (and b!7484835 ((_ is Union!19621) (regOne!39754 (regOne!39754 rTail!78)))) b!7485138))

(declare-fun b!7485140 () Bool)

(declare-fun e!4464312 () Bool)

(declare-fun tp!2171284 () Bool)

(declare-fun tp!2171288 () Bool)

(assert (=> b!7485140 (= e!4464312 (and tp!2171284 tp!2171288))))

(assert (=> b!7484835 (= tp!2171008 e!4464312)))

(declare-fun b!7485142 () Bool)

(declare-fun tp!2171287 () Bool)

(declare-fun tp!2171286 () Bool)

(assert (=> b!7485142 (= e!4464312 (and tp!2171287 tp!2171286))))

(declare-fun b!7485141 () Bool)

(declare-fun tp!2171285 () Bool)

(assert (=> b!7485141 (= e!4464312 tp!2171285)))

(declare-fun b!7485139 () Bool)

(assert (=> b!7485139 (= e!4464312 tp_is_empty!49531)))

(assert (= (and b!7484835 ((_ is ElementMatch!19621) (regTwo!39754 (regOne!39754 rTail!78)))) b!7485139))

(assert (= (and b!7484835 ((_ is Concat!28466) (regTwo!39754 (regOne!39754 rTail!78)))) b!7485140))

(assert (= (and b!7484835 ((_ is Star!19621) (regTwo!39754 (regOne!39754 rTail!78)))) b!7485141))

(assert (= (and b!7484835 ((_ is Union!19621) (regTwo!39754 (regOne!39754 rTail!78)))) b!7485142))

(declare-fun b!7485144 () Bool)

(declare-fun e!4464313 () Bool)

(declare-fun tp!2171289 () Bool)

(declare-fun tp!2171293 () Bool)

(assert (=> b!7485144 (= e!4464313 (and tp!2171289 tp!2171293))))

(assert (=> b!7484844 (= tp!2171015 e!4464313)))

(declare-fun b!7485146 () Bool)

(declare-fun tp!2171292 () Bool)

(declare-fun tp!2171291 () Bool)

(assert (=> b!7485146 (= e!4464313 (and tp!2171292 tp!2171291))))

(declare-fun b!7485145 () Bool)

(declare-fun tp!2171290 () Bool)

(assert (=> b!7485145 (= e!4464313 tp!2171290)))

(declare-fun b!7485143 () Bool)

(assert (=> b!7485143 (= e!4464313 tp_is_empty!49531)))

(assert (= (and b!7484844 ((_ is ElementMatch!19621) (reg!19950 (regOne!39755 r2!5783)))) b!7485143))

(assert (= (and b!7484844 ((_ is Concat!28466) (reg!19950 (regOne!39755 r2!5783)))) b!7485144))

(assert (= (and b!7484844 ((_ is Star!19621) (reg!19950 (regOne!39755 r2!5783)))) b!7485145))

(assert (= (and b!7484844 ((_ is Union!19621) (reg!19950 (regOne!39755 r2!5783)))) b!7485146))

(declare-fun b!7485148 () Bool)

(declare-fun e!4464314 () Bool)

(declare-fun tp!2171294 () Bool)

(declare-fun tp!2171298 () Bool)

(assert (=> b!7485148 (= e!4464314 (and tp!2171294 tp!2171298))))

(assert (=> b!7484853 (= tp!2171027 e!4464314)))

(declare-fun b!7485150 () Bool)

(declare-fun tp!2171297 () Bool)

(declare-fun tp!2171296 () Bool)

(assert (=> b!7485150 (= e!4464314 (and tp!2171297 tp!2171296))))

(declare-fun b!7485149 () Bool)

(declare-fun tp!2171295 () Bool)

(assert (=> b!7485149 (= e!4464314 tp!2171295)))

(declare-fun b!7485147 () Bool)

(assert (=> b!7485147 (= e!4464314 tp_is_empty!49531)))

(assert (= (and b!7484853 ((_ is ElementMatch!19621) (regOne!39755 (regTwo!39755 r2!5783)))) b!7485147))

(assert (= (and b!7484853 ((_ is Concat!28466) (regOne!39755 (regTwo!39755 r2!5783)))) b!7485148))

(assert (= (and b!7484853 ((_ is Star!19621) (regOne!39755 (regTwo!39755 r2!5783)))) b!7485149))

(assert (= (and b!7484853 ((_ is Union!19621) (regOne!39755 (regTwo!39755 r2!5783)))) b!7485150))

(declare-fun b!7485152 () Bool)

(declare-fun e!4464315 () Bool)

(declare-fun tp!2171299 () Bool)

(declare-fun tp!2171303 () Bool)

(assert (=> b!7485152 (= e!4464315 (and tp!2171299 tp!2171303))))

(assert (=> b!7484853 (= tp!2171026 e!4464315)))

(declare-fun b!7485154 () Bool)

(declare-fun tp!2171302 () Bool)

(declare-fun tp!2171301 () Bool)

(assert (=> b!7485154 (= e!4464315 (and tp!2171302 tp!2171301))))

(declare-fun b!7485153 () Bool)

(declare-fun tp!2171300 () Bool)

(assert (=> b!7485153 (= e!4464315 tp!2171300)))

(declare-fun b!7485151 () Bool)

(assert (=> b!7485151 (= e!4464315 tp_is_empty!49531)))

(assert (= (and b!7484853 ((_ is ElementMatch!19621) (regTwo!39755 (regTwo!39755 r2!5783)))) b!7485151))

(assert (= (and b!7484853 ((_ is Concat!28466) (regTwo!39755 (regTwo!39755 r2!5783)))) b!7485152))

(assert (= (and b!7484853 ((_ is Star!19621) (regTwo!39755 (regTwo!39755 r2!5783)))) b!7485153))

(assert (= (and b!7484853 ((_ is Union!19621) (regTwo!39755 (regTwo!39755 r2!5783)))) b!7485154))

(declare-fun b!7485156 () Bool)

(declare-fun e!4464316 () Bool)

(declare-fun tp!2171304 () Bool)

(declare-fun tp!2171308 () Bool)

(assert (=> b!7485156 (= e!4464316 (and tp!2171304 tp!2171308))))

(assert (=> b!7484843 (= tp!2171014 e!4464316)))

(declare-fun b!7485158 () Bool)

(declare-fun tp!2171307 () Bool)

(declare-fun tp!2171306 () Bool)

(assert (=> b!7485158 (= e!4464316 (and tp!2171307 tp!2171306))))

(declare-fun b!7485157 () Bool)

(declare-fun tp!2171305 () Bool)

(assert (=> b!7485157 (= e!4464316 tp!2171305)))

(declare-fun b!7485155 () Bool)

(assert (=> b!7485155 (= e!4464316 tp_is_empty!49531)))

(assert (= (and b!7484843 ((_ is ElementMatch!19621) (regOne!39754 (regOne!39755 r2!5783)))) b!7485155))

(assert (= (and b!7484843 ((_ is Concat!28466) (regOne!39754 (regOne!39755 r2!5783)))) b!7485156))

(assert (= (and b!7484843 ((_ is Star!19621) (regOne!39754 (regOne!39755 r2!5783)))) b!7485157))

(assert (= (and b!7484843 ((_ is Union!19621) (regOne!39754 (regOne!39755 r2!5783)))) b!7485158))

(declare-fun b!7485169 () Bool)

(declare-fun e!4464324 () Bool)

(declare-fun tp!2171309 () Bool)

(declare-fun tp!2171313 () Bool)

(assert (=> b!7485169 (= e!4464324 (and tp!2171309 tp!2171313))))

(assert (=> b!7484843 (= tp!2171018 e!4464324)))

(declare-fun b!7485171 () Bool)

(declare-fun tp!2171312 () Bool)

(declare-fun tp!2171311 () Bool)

(assert (=> b!7485171 (= e!4464324 (and tp!2171312 tp!2171311))))

(declare-fun b!7485170 () Bool)

(declare-fun tp!2171310 () Bool)

(assert (=> b!7485170 (= e!4464324 tp!2171310)))

(declare-fun b!7485168 () Bool)

(assert (=> b!7485168 (= e!4464324 tp_is_empty!49531)))

(assert (= (and b!7484843 ((_ is ElementMatch!19621) (regTwo!39754 (regOne!39755 r2!5783)))) b!7485168))

(assert (= (and b!7484843 ((_ is Concat!28466) (regTwo!39754 (regOne!39755 r2!5783)))) b!7485169))

(assert (= (and b!7484843 ((_ is Star!19621) (regTwo!39754 (regOne!39755 r2!5783)))) b!7485170))

(assert (= (and b!7484843 ((_ is Union!19621) (regTwo!39754 (regOne!39755 r2!5783)))) b!7485171))

(declare-fun b!7485173 () Bool)

(declare-fun e!4464325 () Bool)

(declare-fun tp!2171314 () Bool)

(declare-fun tp!2171318 () Bool)

(assert (=> b!7485173 (= e!4464325 (and tp!2171314 tp!2171318))))

(assert (=> b!7484852 (= tp!2171025 e!4464325)))

(declare-fun b!7485175 () Bool)

(declare-fun tp!2171317 () Bool)

(declare-fun tp!2171316 () Bool)

(assert (=> b!7485175 (= e!4464325 (and tp!2171317 tp!2171316))))

(declare-fun b!7485174 () Bool)

(declare-fun tp!2171315 () Bool)

(assert (=> b!7485174 (= e!4464325 tp!2171315)))

(declare-fun b!7485172 () Bool)

(assert (=> b!7485172 (= e!4464325 tp_is_empty!49531)))

(assert (= (and b!7484852 ((_ is ElementMatch!19621) (reg!19950 (regTwo!39755 r2!5783)))) b!7485172))

(assert (= (and b!7484852 ((_ is Concat!28466) (reg!19950 (regTwo!39755 r2!5783)))) b!7485173))

(assert (= (and b!7484852 ((_ is Star!19621) (reg!19950 (regTwo!39755 r2!5783)))) b!7485174))

(assert (= (and b!7484852 ((_ is Union!19621) (reg!19950 (regTwo!39755 r2!5783)))) b!7485175))

(declare-fun b!7485177 () Bool)

(declare-fun e!4464326 () Bool)

(declare-fun tp!2171319 () Bool)

(declare-fun tp!2171323 () Bool)

(assert (=> b!7485177 (= e!4464326 (and tp!2171319 tp!2171323))))

(assert (=> b!7484805 (= tp!2170969 e!4464326)))

(declare-fun b!7485179 () Bool)

(declare-fun tp!2171322 () Bool)

(declare-fun tp!2171321 () Bool)

(assert (=> b!7485179 (= e!4464326 (and tp!2171322 tp!2171321))))

(declare-fun b!7485178 () Bool)

(declare-fun tp!2171320 () Bool)

(assert (=> b!7485178 (= e!4464326 tp!2171320)))

(declare-fun b!7485176 () Bool)

(assert (=> b!7485176 (= e!4464326 tp_is_empty!49531)))

(assert (= (and b!7484805 ((_ is ElementMatch!19621) (regOne!39754 (regTwo!39754 r1!5845)))) b!7485176))

(assert (= (and b!7484805 ((_ is Concat!28466) (regOne!39754 (regTwo!39754 r1!5845)))) b!7485177))

(assert (= (and b!7484805 ((_ is Star!19621) (regOne!39754 (regTwo!39754 r1!5845)))) b!7485178))

(assert (= (and b!7484805 ((_ is Union!19621) (regOne!39754 (regTwo!39754 r1!5845)))) b!7485179))

(declare-fun b!7485181 () Bool)

(declare-fun e!4464327 () Bool)

(declare-fun tp!2171324 () Bool)

(declare-fun tp!2171328 () Bool)

(assert (=> b!7485181 (= e!4464327 (and tp!2171324 tp!2171328))))

(assert (=> b!7484805 (= tp!2170973 e!4464327)))

(declare-fun b!7485183 () Bool)

(declare-fun tp!2171327 () Bool)

(declare-fun tp!2171326 () Bool)

(assert (=> b!7485183 (= e!4464327 (and tp!2171327 tp!2171326))))

(declare-fun b!7485182 () Bool)

(declare-fun tp!2171325 () Bool)

(assert (=> b!7485182 (= e!4464327 tp!2171325)))

(declare-fun b!7485180 () Bool)

(assert (=> b!7485180 (= e!4464327 tp_is_empty!49531)))

(assert (= (and b!7484805 ((_ is ElementMatch!19621) (regTwo!39754 (regTwo!39754 r1!5845)))) b!7485180))

(assert (= (and b!7484805 ((_ is Concat!28466) (regTwo!39754 (regTwo!39754 r1!5845)))) b!7485181))

(assert (= (and b!7484805 ((_ is Star!19621) (regTwo!39754 (regTwo!39754 r1!5845)))) b!7485182))

(assert (= (and b!7484805 ((_ is Union!19621) (regTwo!39754 (regTwo!39754 r1!5845)))) b!7485183))

(declare-fun b!7485190 () Bool)

(declare-fun e!4464335 () Bool)

(declare-fun tp!2171329 () Bool)

(declare-fun tp!2171333 () Bool)

(assert (=> b!7485190 (= e!4464335 (and tp!2171329 tp!2171333))))

(assert (=> b!7484829 (= tp!2170997 e!4464335)))

(declare-fun b!7485193 () Bool)

(declare-fun tp!2171332 () Bool)

(declare-fun tp!2171331 () Bool)

(assert (=> b!7485193 (= e!4464335 (and tp!2171332 tp!2171331))))

(declare-fun b!7485191 () Bool)

(declare-fun tp!2171330 () Bool)

(assert (=> b!7485191 (= e!4464335 tp!2171330)))

(declare-fun b!7485188 () Bool)

(assert (=> b!7485188 (= e!4464335 tp_is_empty!49531)))

(assert (= (and b!7484829 ((_ is ElementMatch!19621) (regOne!39755 (regOne!39754 r2!5783)))) b!7485188))

(assert (= (and b!7484829 ((_ is Concat!28466) (regOne!39755 (regOne!39754 r2!5783)))) b!7485190))

(assert (= (and b!7484829 ((_ is Star!19621) (regOne!39755 (regOne!39754 r2!5783)))) b!7485191))

(assert (= (and b!7484829 ((_ is Union!19621) (regOne!39755 (regOne!39754 r2!5783)))) b!7485193))

(declare-fun b!7485198 () Bool)

(declare-fun e!4464336 () Bool)

(declare-fun tp!2171334 () Bool)

(declare-fun tp!2171338 () Bool)

(assert (=> b!7485198 (= e!4464336 (and tp!2171334 tp!2171338))))

(assert (=> b!7484829 (= tp!2170996 e!4464336)))

(declare-fun b!7485200 () Bool)

(declare-fun tp!2171337 () Bool)

(declare-fun tp!2171336 () Bool)

(assert (=> b!7485200 (= e!4464336 (and tp!2171337 tp!2171336))))

(declare-fun b!7485199 () Bool)

(declare-fun tp!2171335 () Bool)

(assert (=> b!7485199 (= e!4464336 tp!2171335)))

(declare-fun b!7485197 () Bool)

(assert (=> b!7485197 (= e!4464336 tp_is_empty!49531)))

(assert (= (and b!7484829 ((_ is ElementMatch!19621) (regTwo!39755 (regOne!39754 r2!5783)))) b!7485197))

(assert (= (and b!7484829 ((_ is Concat!28466) (regTwo!39755 (regOne!39754 r2!5783)))) b!7485198))

(assert (= (and b!7484829 ((_ is Star!19621) (regTwo!39755 (regOne!39754 r2!5783)))) b!7485199))

(assert (= (and b!7484829 ((_ is Union!19621) (regTwo!39755 (regOne!39754 r2!5783)))) b!7485200))

(declare-fun b!7485202 () Bool)

(declare-fun e!4464337 () Bool)

(declare-fun tp!2171339 () Bool)

(declare-fun tp!2171343 () Bool)

(assert (=> b!7485202 (= e!4464337 (and tp!2171339 tp!2171343))))

(assert (=> b!7484777 (= tp!2170945 e!4464337)))

(declare-fun b!7485204 () Bool)

(declare-fun tp!2171342 () Bool)

(declare-fun tp!2171341 () Bool)

(assert (=> b!7485204 (= e!4464337 (and tp!2171342 tp!2171341))))

(declare-fun b!7485203 () Bool)

(declare-fun tp!2171340 () Bool)

(assert (=> b!7485203 (= e!4464337 tp!2171340)))

(declare-fun b!7485201 () Bool)

(assert (=> b!7485201 (= e!4464337 tp_is_empty!49531)))

(assert (= (and b!7484777 ((_ is ElementMatch!19621) (reg!19950 (reg!19950 r2!5783)))) b!7485201))

(assert (= (and b!7484777 ((_ is Concat!28466) (reg!19950 (reg!19950 r2!5783)))) b!7485202))

(assert (= (and b!7484777 ((_ is Star!19621) (reg!19950 (reg!19950 r2!5783)))) b!7485203))

(assert (= (and b!7484777 ((_ is Union!19621) (reg!19950 (reg!19950 r2!5783)))) b!7485204))

(declare-fun b!7485206 () Bool)

(declare-fun e!4464338 () Bool)

(declare-fun tp!2171344 () Bool)

(declare-fun tp!2171348 () Bool)

(assert (=> b!7485206 (= e!4464338 (and tp!2171344 tp!2171348))))

(assert (=> b!7484819 (= tp!2170983 e!4464338)))

(declare-fun b!7485208 () Bool)

(declare-fun tp!2171347 () Bool)

(declare-fun tp!2171346 () Bool)

(assert (=> b!7485208 (= e!4464338 (and tp!2171347 tp!2171346))))

(declare-fun b!7485207 () Bool)

(declare-fun tp!2171345 () Bool)

(assert (=> b!7485207 (= e!4464338 tp!2171345)))

(declare-fun b!7485205 () Bool)

(assert (=> b!7485205 (= e!4464338 tp_is_empty!49531)))

(assert (= (and b!7484819 ((_ is ElementMatch!19621) (regOne!39754 (regTwo!39755 r1!5845)))) b!7485205))

(assert (= (and b!7484819 ((_ is Concat!28466) (regOne!39754 (regTwo!39755 r1!5845)))) b!7485206))

(assert (= (and b!7484819 ((_ is Star!19621) (regOne!39754 (regTwo!39755 r1!5845)))) b!7485207))

(assert (= (and b!7484819 ((_ is Union!19621) (regOne!39754 (regTwo!39755 r1!5845)))) b!7485208))

(declare-fun b!7485210 () Bool)

(declare-fun e!4464339 () Bool)

(declare-fun tp!2171349 () Bool)

(declare-fun tp!2171353 () Bool)

(assert (=> b!7485210 (= e!4464339 (and tp!2171349 tp!2171353))))

(assert (=> b!7484819 (= tp!2170987 e!4464339)))

(declare-fun b!7485212 () Bool)

(declare-fun tp!2171352 () Bool)

(declare-fun tp!2171351 () Bool)

(assert (=> b!7485212 (= e!4464339 (and tp!2171352 tp!2171351))))

(declare-fun b!7485211 () Bool)

(declare-fun tp!2171350 () Bool)

(assert (=> b!7485211 (= e!4464339 tp!2171350)))

(declare-fun b!7485209 () Bool)

(assert (=> b!7485209 (= e!4464339 tp_is_empty!49531)))

(assert (= (and b!7484819 ((_ is ElementMatch!19621) (regTwo!39754 (regTwo!39755 r1!5845)))) b!7485209))

(assert (= (and b!7484819 ((_ is Concat!28466) (regTwo!39754 (regTwo!39755 r1!5845)))) b!7485210))

(assert (= (and b!7484819 ((_ is Star!19621) (regTwo!39754 (regTwo!39755 r1!5845)))) b!7485211))

(assert (= (and b!7484819 ((_ is Union!19621) (regTwo!39754 (regTwo!39755 r1!5845)))) b!7485212))

(declare-fun b!7485214 () Bool)

(declare-fun e!4464347 () Bool)

(declare-fun tp!2171354 () Bool)

(declare-fun tp!2171358 () Bool)

(assert (=> b!7485214 (= e!4464347 (and tp!2171354 tp!2171358))))

(assert (=> b!7484828 (= tp!2170995 e!4464347)))

(declare-fun b!7485217 () Bool)

(declare-fun tp!2171357 () Bool)

(declare-fun tp!2171356 () Bool)

(assert (=> b!7485217 (= e!4464347 (and tp!2171357 tp!2171356))))

(declare-fun b!7485215 () Bool)

(declare-fun tp!2171355 () Bool)

(assert (=> b!7485215 (= e!4464347 tp!2171355)))

(declare-fun b!7485213 () Bool)

(assert (=> b!7485213 (= e!4464347 tp_is_empty!49531)))

(assert (= (and b!7484828 ((_ is ElementMatch!19621) (reg!19950 (regOne!39754 r2!5783)))) b!7485213))

(assert (= (and b!7484828 ((_ is Concat!28466) (reg!19950 (regOne!39754 r2!5783)))) b!7485214))

(assert (= (and b!7484828 ((_ is Star!19621) (reg!19950 (regOne!39754 r2!5783)))) b!7485215))

(assert (= (and b!7484828 ((_ is Union!19621) (reg!19950 (regOne!39754 r2!5783)))) b!7485217))

(declare-fun b!7485227 () Bool)

(declare-fun e!4464348 () Bool)

(declare-fun tp!2171359 () Bool)

(declare-fun tp!2171363 () Bool)

(assert (=> b!7485227 (= e!4464348 (and tp!2171359 tp!2171363))))

(assert (=> b!7484837 (= tp!2171007 e!4464348)))

(declare-fun b!7485229 () Bool)

(declare-fun tp!2171362 () Bool)

(declare-fun tp!2171361 () Bool)

(assert (=> b!7485229 (= e!4464348 (and tp!2171362 tp!2171361))))

(declare-fun b!7485228 () Bool)

(declare-fun tp!2171360 () Bool)

(assert (=> b!7485228 (= e!4464348 tp!2171360)))

(declare-fun b!7485226 () Bool)

(assert (=> b!7485226 (= e!4464348 tp_is_empty!49531)))

(assert (= (and b!7484837 ((_ is ElementMatch!19621) (regOne!39755 (regOne!39754 rTail!78)))) b!7485226))

(assert (= (and b!7484837 ((_ is Concat!28466) (regOne!39755 (regOne!39754 rTail!78)))) b!7485227))

(assert (= (and b!7484837 ((_ is Star!19621) (regOne!39755 (regOne!39754 rTail!78)))) b!7485228))

(assert (= (and b!7484837 ((_ is Union!19621) (regOne!39755 (regOne!39754 rTail!78)))) b!7485229))

(declare-fun b!7485231 () Bool)

(declare-fun e!4464349 () Bool)

(declare-fun tp!2171364 () Bool)

(declare-fun tp!2171368 () Bool)

(assert (=> b!7485231 (= e!4464349 (and tp!2171364 tp!2171368))))

(assert (=> b!7484837 (= tp!2171006 e!4464349)))

(declare-fun b!7485233 () Bool)

(declare-fun tp!2171367 () Bool)

(declare-fun tp!2171366 () Bool)

(assert (=> b!7485233 (= e!4464349 (and tp!2171367 tp!2171366))))

(declare-fun b!7485232 () Bool)

(declare-fun tp!2171365 () Bool)

(assert (=> b!7485232 (= e!4464349 tp!2171365)))

(declare-fun b!7485230 () Bool)

(assert (=> b!7485230 (= e!4464349 tp_is_empty!49531)))

(assert (= (and b!7484837 ((_ is ElementMatch!19621) (regTwo!39755 (regOne!39754 rTail!78)))) b!7485230))

(assert (= (and b!7484837 ((_ is Concat!28466) (regTwo!39755 (regOne!39754 rTail!78)))) b!7485231))

(assert (= (and b!7484837 ((_ is Star!19621) (regTwo!39755 (regOne!39754 rTail!78)))) b!7485232))

(assert (= (and b!7484837 ((_ is Union!19621) (regTwo!39755 (regOne!39754 rTail!78)))) b!7485233))

(declare-fun b!7485235 () Bool)

(declare-fun e!4464350 () Bool)

(declare-fun tp!2171369 () Bool)

(declare-fun tp!2171373 () Bool)

(assert (=> b!7485235 (= e!4464350 (and tp!2171369 tp!2171373))))

(assert (=> b!7484776 (= tp!2170944 e!4464350)))

(declare-fun b!7485237 () Bool)

(declare-fun tp!2171372 () Bool)

(declare-fun tp!2171371 () Bool)

(assert (=> b!7485237 (= e!4464350 (and tp!2171372 tp!2171371))))

(declare-fun b!7485236 () Bool)

(declare-fun tp!2171370 () Bool)

(assert (=> b!7485236 (= e!4464350 tp!2171370)))

(declare-fun b!7485234 () Bool)

(assert (=> b!7485234 (= e!4464350 tp_is_empty!49531)))

(assert (= (and b!7484776 ((_ is ElementMatch!19621) (regOne!39754 (reg!19950 r2!5783)))) b!7485234))

(assert (= (and b!7484776 ((_ is Concat!28466) (regOne!39754 (reg!19950 r2!5783)))) b!7485235))

(assert (= (and b!7484776 ((_ is Star!19621) (regOne!39754 (reg!19950 r2!5783)))) b!7485236))

(assert (= (and b!7484776 ((_ is Union!19621) (regOne!39754 (reg!19950 r2!5783)))) b!7485237))

(declare-fun b!7485239 () Bool)

(declare-fun e!4464351 () Bool)

(declare-fun tp!2171374 () Bool)

(declare-fun tp!2171378 () Bool)

(assert (=> b!7485239 (= e!4464351 (and tp!2171374 tp!2171378))))

(assert (=> b!7484776 (= tp!2170948 e!4464351)))

(declare-fun b!7485241 () Bool)

(declare-fun tp!2171377 () Bool)

(declare-fun tp!2171376 () Bool)

(assert (=> b!7485241 (= e!4464351 (and tp!2171377 tp!2171376))))

(declare-fun b!7485240 () Bool)

(declare-fun tp!2171375 () Bool)

(assert (=> b!7485240 (= e!4464351 tp!2171375)))

(declare-fun b!7485238 () Bool)

(assert (=> b!7485238 (= e!4464351 tp_is_empty!49531)))

(assert (= (and b!7484776 ((_ is ElementMatch!19621) (regTwo!39754 (reg!19950 r2!5783)))) b!7485238))

(assert (= (and b!7484776 ((_ is Concat!28466) (regTwo!39754 (reg!19950 r2!5783)))) b!7485239))

(assert (= (and b!7484776 ((_ is Star!19621) (regTwo!39754 (reg!19950 r2!5783)))) b!7485240))

(assert (= (and b!7484776 ((_ is Union!19621) (regTwo!39754 (reg!19950 r2!5783)))) b!7485241))

(declare-fun b!7485243 () Bool)

(declare-fun e!4464352 () Bool)

(declare-fun tp!2171379 () Bool)

(declare-fun tp!2171383 () Bool)

(assert (=> b!7485243 (= e!4464352 (and tp!2171379 tp!2171383))))

(assert (=> b!7484827 (= tp!2170994 e!4464352)))

(declare-fun b!7485245 () Bool)

(declare-fun tp!2171382 () Bool)

(declare-fun tp!2171381 () Bool)

(assert (=> b!7485245 (= e!4464352 (and tp!2171382 tp!2171381))))

(declare-fun b!7485244 () Bool)

(declare-fun tp!2171380 () Bool)

(assert (=> b!7485244 (= e!4464352 tp!2171380)))

(declare-fun b!7485242 () Bool)

(assert (=> b!7485242 (= e!4464352 tp_is_empty!49531)))

(assert (= (and b!7484827 ((_ is ElementMatch!19621) (regOne!39754 (regOne!39754 r2!5783)))) b!7485242))

(assert (= (and b!7484827 ((_ is Concat!28466) (regOne!39754 (regOne!39754 r2!5783)))) b!7485243))

(assert (= (and b!7484827 ((_ is Star!19621) (regOne!39754 (regOne!39754 r2!5783)))) b!7485244))

(assert (= (and b!7484827 ((_ is Union!19621) (regOne!39754 (regOne!39754 r2!5783)))) b!7485245))

(declare-fun b!7485256 () Bool)

(declare-fun e!4464360 () Bool)

(declare-fun tp!2171384 () Bool)

(declare-fun tp!2171388 () Bool)

(assert (=> b!7485256 (= e!4464360 (and tp!2171384 tp!2171388))))

(assert (=> b!7484827 (= tp!2170998 e!4464360)))

(declare-fun b!7485258 () Bool)

(declare-fun tp!2171387 () Bool)

(declare-fun tp!2171386 () Bool)

(assert (=> b!7485258 (= e!4464360 (and tp!2171387 tp!2171386))))

(declare-fun b!7485257 () Bool)

(declare-fun tp!2171385 () Bool)

(assert (=> b!7485257 (= e!4464360 tp!2171385)))

(declare-fun b!7485255 () Bool)

(assert (=> b!7485255 (= e!4464360 tp_is_empty!49531)))

(assert (= (and b!7484827 ((_ is ElementMatch!19621) (regTwo!39754 (regOne!39754 r2!5783)))) b!7485255))

(assert (= (and b!7484827 ((_ is Concat!28466) (regTwo!39754 (regOne!39754 r2!5783)))) b!7485256))

(assert (= (and b!7484827 ((_ is Star!19621) (regTwo!39754 (regOne!39754 r2!5783)))) b!7485257))

(assert (= (and b!7484827 ((_ is Union!19621) (regTwo!39754 (regOne!39754 r2!5783)))) b!7485258))

(declare-fun b!7485260 () Bool)

(declare-fun e!4464361 () Bool)

(declare-fun tp!2171389 () Bool)

(declare-fun tp!2171393 () Bool)

(assert (=> b!7485260 (= e!4464361 (and tp!2171389 tp!2171393))))

(assert (=> b!7484836 (= tp!2171005 e!4464361)))

(declare-fun b!7485262 () Bool)

(declare-fun tp!2171392 () Bool)

(declare-fun tp!2171391 () Bool)

(assert (=> b!7485262 (= e!4464361 (and tp!2171392 tp!2171391))))

(declare-fun b!7485261 () Bool)

(declare-fun tp!2171390 () Bool)

(assert (=> b!7485261 (= e!4464361 tp!2171390)))

(declare-fun b!7485259 () Bool)

(assert (=> b!7485259 (= e!4464361 tp_is_empty!49531)))

(assert (= (and b!7484836 ((_ is ElementMatch!19621) (reg!19950 (regOne!39754 rTail!78)))) b!7485259))

(assert (= (and b!7484836 ((_ is Concat!28466) (reg!19950 (regOne!39754 rTail!78)))) b!7485260))

(assert (= (and b!7484836 ((_ is Star!19621) (reg!19950 (regOne!39754 rTail!78)))) b!7485261))

(assert (= (and b!7484836 ((_ is Union!19621) (reg!19950 (regOne!39754 rTail!78)))) b!7485262))

(declare-fun b!7485264 () Bool)

(declare-fun e!4464362 () Bool)

(declare-fun tp!2171394 () Bool)

(declare-fun tp!2171398 () Bool)

(assert (=> b!7485264 (= e!4464362 (and tp!2171394 tp!2171398))))

(assert (=> b!7484798 (= tp!2170960 e!4464362)))

(declare-fun b!7485266 () Bool)

(declare-fun tp!2171397 () Bool)

(declare-fun tp!2171396 () Bool)

(assert (=> b!7485266 (= e!4464362 (and tp!2171397 tp!2171396))))

(declare-fun b!7485265 () Bool)

(declare-fun tp!2171395 () Bool)

(assert (=> b!7485265 (= e!4464362 tp!2171395)))

(declare-fun b!7485263 () Bool)

(assert (=> b!7485263 (= e!4464362 tp_is_empty!49531)))

(assert (= (and b!7484798 ((_ is ElementMatch!19621) (reg!19950 (regTwo!39755 rTail!78)))) b!7485263))

(assert (= (and b!7484798 ((_ is Concat!28466) (reg!19950 (regTwo!39755 rTail!78)))) b!7485264))

(assert (= (and b!7484798 ((_ is Star!19621) (reg!19950 (regTwo!39755 rTail!78)))) b!7485265))

(assert (= (and b!7484798 ((_ is Union!19621) (reg!19950 (regTwo!39755 rTail!78)))) b!7485266))

(declare-fun b!7485268 () Bool)

(declare-fun e!4464363 () Bool)

(declare-fun tp!2171399 () Bool)

(declare-fun tp!2171403 () Bool)

(assert (=> b!7485268 (= e!4464363 (and tp!2171399 tp!2171403))))

(assert (=> b!7484807 (= tp!2170972 e!4464363)))

(declare-fun b!7485270 () Bool)

(declare-fun tp!2171402 () Bool)

(declare-fun tp!2171401 () Bool)

(assert (=> b!7485270 (= e!4464363 (and tp!2171402 tp!2171401))))

(declare-fun b!7485269 () Bool)

(declare-fun tp!2171400 () Bool)

(assert (=> b!7485269 (= e!4464363 tp!2171400)))

(declare-fun b!7485267 () Bool)

(assert (=> b!7485267 (= e!4464363 tp_is_empty!49531)))

(assert (= (and b!7484807 ((_ is ElementMatch!19621) (regOne!39755 (regTwo!39754 r1!5845)))) b!7485267))

(assert (= (and b!7484807 ((_ is Concat!28466) (regOne!39755 (regTwo!39754 r1!5845)))) b!7485268))

(assert (= (and b!7484807 ((_ is Star!19621) (regOne!39755 (regTwo!39754 r1!5845)))) b!7485269))

(assert (= (and b!7484807 ((_ is Union!19621) (regOne!39755 (regTwo!39754 r1!5845)))) b!7485270))

(declare-fun b!7485272 () Bool)

(declare-fun e!4464364 () Bool)

(declare-fun tp!2171404 () Bool)

(declare-fun tp!2171408 () Bool)

(assert (=> b!7485272 (= e!4464364 (and tp!2171404 tp!2171408))))

(assert (=> b!7484807 (= tp!2170971 e!4464364)))

(declare-fun b!7485274 () Bool)

(declare-fun tp!2171407 () Bool)

(declare-fun tp!2171406 () Bool)

(assert (=> b!7485274 (= e!4464364 (and tp!2171407 tp!2171406))))

(declare-fun b!7485273 () Bool)

(declare-fun tp!2171405 () Bool)

(assert (=> b!7485273 (= e!4464364 tp!2171405)))

(declare-fun b!7485271 () Bool)

(assert (=> b!7485271 (= e!4464364 tp_is_empty!49531)))

(assert (= (and b!7484807 ((_ is ElementMatch!19621) (regTwo!39755 (regTwo!39754 r1!5845)))) b!7485271))

(assert (= (and b!7484807 ((_ is Concat!28466) (regTwo!39755 (regTwo!39754 r1!5845)))) b!7485272))

(assert (= (and b!7484807 ((_ is Star!19621) (regTwo!39755 (regTwo!39754 r1!5845)))) b!7485273))

(assert (= (and b!7484807 ((_ is Union!19621) (regTwo!39755 (regTwo!39754 r1!5845)))) b!7485274))

(declare-fun b!7485285 () Bool)

(declare-fun e!4464372 () Bool)

(declare-fun tp!2171409 () Bool)

(declare-fun tp!2171413 () Bool)

(assert (=> b!7485285 (= e!4464372 (and tp!2171409 tp!2171413))))

(assert (=> b!7484797 (= tp!2170959 e!4464372)))

(declare-fun b!7485287 () Bool)

(declare-fun tp!2171412 () Bool)

(declare-fun tp!2171411 () Bool)

(assert (=> b!7485287 (= e!4464372 (and tp!2171412 tp!2171411))))

(declare-fun b!7485286 () Bool)

(declare-fun tp!2171410 () Bool)

(assert (=> b!7485286 (= e!4464372 tp!2171410)))

(declare-fun b!7485284 () Bool)

(assert (=> b!7485284 (= e!4464372 tp_is_empty!49531)))

(assert (= (and b!7484797 ((_ is ElementMatch!19621) (regOne!39754 (regTwo!39755 rTail!78)))) b!7485284))

(assert (= (and b!7484797 ((_ is Concat!28466) (regOne!39754 (regTwo!39755 rTail!78)))) b!7485285))

(assert (= (and b!7484797 ((_ is Star!19621) (regOne!39754 (regTwo!39755 rTail!78)))) b!7485286))

(assert (= (and b!7484797 ((_ is Union!19621) (regOne!39754 (regTwo!39755 rTail!78)))) b!7485287))

(declare-fun b!7485289 () Bool)

(declare-fun e!4464373 () Bool)

(declare-fun tp!2171414 () Bool)

(declare-fun tp!2171418 () Bool)

(assert (=> b!7485289 (= e!4464373 (and tp!2171414 tp!2171418))))

(assert (=> b!7484797 (= tp!2170963 e!4464373)))

(declare-fun b!7485291 () Bool)

(declare-fun tp!2171417 () Bool)

(declare-fun tp!2171416 () Bool)

(assert (=> b!7485291 (= e!4464373 (and tp!2171417 tp!2171416))))

(declare-fun b!7485290 () Bool)

(declare-fun tp!2171415 () Bool)

(assert (=> b!7485290 (= e!4464373 tp!2171415)))

(declare-fun b!7485288 () Bool)

(assert (=> b!7485288 (= e!4464373 tp_is_empty!49531)))

(assert (= (and b!7484797 ((_ is ElementMatch!19621) (regTwo!39754 (regTwo!39755 rTail!78)))) b!7485288))

(assert (= (and b!7484797 ((_ is Concat!28466) (regTwo!39754 (regTwo!39755 rTail!78)))) b!7485289))

(assert (= (and b!7484797 ((_ is Star!19621) (regTwo!39754 (regTwo!39755 rTail!78)))) b!7485290))

(assert (= (and b!7484797 ((_ is Union!19621) (regTwo!39754 (regTwo!39755 rTail!78)))) b!7485291))

(declare-fun b!7485293 () Bool)

(declare-fun e!4464374 () Bool)

(declare-fun tp!2171419 () Bool)

(declare-fun tp!2171423 () Bool)

(assert (=> b!7485293 (= e!4464374 (and tp!2171419 tp!2171423))))

(assert (=> b!7484821 (= tp!2170986 e!4464374)))

(declare-fun b!7485295 () Bool)

(declare-fun tp!2171422 () Bool)

(declare-fun tp!2171421 () Bool)

(assert (=> b!7485295 (= e!4464374 (and tp!2171422 tp!2171421))))

(declare-fun b!7485294 () Bool)

(declare-fun tp!2171420 () Bool)

(assert (=> b!7485294 (= e!4464374 tp!2171420)))

(declare-fun b!7485292 () Bool)

(assert (=> b!7485292 (= e!4464374 tp_is_empty!49531)))

(assert (= (and b!7484821 ((_ is ElementMatch!19621) (regOne!39755 (regTwo!39755 r1!5845)))) b!7485292))

(assert (= (and b!7484821 ((_ is Concat!28466) (regOne!39755 (regTwo!39755 r1!5845)))) b!7485293))

(assert (= (and b!7484821 ((_ is Star!19621) (regOne!39755 (regTwo!39755 r1!5845)))) b!7485294))

(assert (= (and b!7484821 ((_ is Union!19621) (regOne!39755 (regTwo!39755 r1!5845)))) b!7485295))

(declare-fun b!7485297 () Bool)

(declare-fun e!4464375 () Bool)

(declare-fun tp!2171424 () Bool)

(declare-fun tp!2171428 () Bool)

(assert (=> b!7485297 (= e!4464375 (and tp!2171424 tp!2171428))))

(assert (=> b!7484821 (= tp!2170985 e!4464375)))

(declare-fun b!7485299 () Bool)

(declare-fun tp!2171427 () Bool)

(declare-fun tp!2171426 () Bool)

(assert (=> b!7485299 (= e!4464375 (and tp!2171427 tp!2171426))))

(declare-fun b!7485298 () Bool)

(declare-fun tp!2171425 () Bool)

(assert (=> b!7485298 (= e!4464375 tp!2171425)))

(declare-fun b!7485296 () Bool)

(assert (=> b!7485296 (= e!4464375 tp_is_empty!49531)))

(assert (= (and b!7484821 ((_ is ElementMatch!19621) (regTwo!39755 (regTwo!39755 r1!5845)))) b!7485296))

(assert (= (and b!7484821 ((_ is Concat!28466) (regTwo!39755 (regTwo!39755 r1!5845)))) b!7485297))

(assert (= (and b!7484821 ((_ is Star!19621) (regTwo!39755 (regTwo!39755 r1!5845)))) b!7485298))

(assert (= (and b!7484821 ((_ is Union!19621) (regTwo!39755 (regTwo!39755 r1!5845)))) b!7485299))

(declare-fun b!7485301 () Bool)

(declare-fun e!4464376 () Bool)

(declare-fun tp!2171429 () Bool)

(declare-fun tp!2171433 () Bool)

(assert (=> b!7485301 (= e!4464376 (and tp!2171429 tp!2171433))))

(assert (=> b!7484806 (= tp!2170970 e!4464376)))

(declare-fun b!7485303 () Bool)

(declare-fun tp!2171432 () Bool)

(declare-fun tp!2171431 () Bool)

(assert (=> b!7485303 (= e!4464376 (and tp!2171432 tp!2171431))))

(declare-fun b!7485302 () Bool)

(declare-fun tp!2171430 () Bool)

(assert (=> b!7485302 (= e!4464376 tp!2171430)))

(declare-fun b!7485300 () Bool)

(assert (=> b!7485300 (= e!4464376 tp_is_empty!49531)))

(assert (= (and b!7484806 ((_ is ElementMatch!19621) (reg!19950 (regTwo!39754 r1!5845)))) b!7485300))

(assert (= (and b!7484806 ((_ is Concat!28466) (reg!19950 (regTwo!39754 r1!5845)))) b!7485301))

(assert (= (and b!7484806 ((_ is Star!19621) (reg!19950 (regTwo!39754 r1!5845)))) b!7485302))

(assert (= (and b!7484806 ((_ is Union!19621) (reg!19950 (regTwo!39754 r1!5845)))) b!7485303))

(declare-fun b!7485305 () Bool)

(declare-fun e!4464377 () Bool)

(declare-fun tp!2171434 () Bool)

(declare-fun tp!2171438 () Bool)

(assert (=> b!7485305 (= e!4464377 (and tp!2171434 tp!2171438))))

(assert (=> b!7484778 (= tp!2170947 e!4464377)))

(declare-fun b!7485307 () Bool)

(declare-fun tp!2171437 () Bool)

(declare-fun tp!2171436 () Bool)

(assert (=> b!7485307 (= e!4464377 (and tp!2171437 tp!2171436))))

(declare-fun b!7485306 () Bool)

(declare-fun tp!2171435 () Bool)

(assert (=> b!7485306 (= e!4464377 tp!2171435)))

(declare-fun b!7485304 () Bool)

(assert (=> b!7485304 (= e!4464377 tp_is_empty!49531)))

(assert (= (and b!7484778 ((_ is ElementMatch!19621) (regOne!39755 (reg!19950 r2!5783)))) b!7485304))

(assert (= (and b!7484778 ((_ is Concat!28466) (regOne!39755 (reg!19950 r2!5783)))) b!7485305))

(assert (= (and b!7484778 ((_ is Star!19621) (regOne!39755 (reg!19950 r2!5783)))) b!7485306))

(assert (= (and b!7484778 ((_ is Union!19621) (regOne!39755 (reg!19950 r2!5783)))) b!7485307))

(declare-fun b!7485309 () Bool)

(declare-fun e!4464378 () Bool)

(declare-fun tp!2171439 () Bool)

(declare-fun tp!2171443 () Bool)

(assert (=> b!7485309 (= e!4464378 (and tp!2171439 tp!2171443))))

(assert (=> b!7484778 (= tp!2170946 e!4464378)))

(declare-fun b!7485311 () Bool)

(declare-fun tp!2171442 () Bool)

(declare-fun tp!2171441 () Bool)

(assert (=> b!7485311 (= e!4464378 (and tp!2171442 tp!2171441))))

(declare-fun b!7485310 () Bool)

(declare-fun tp!2171440 () Bool)

(assert (=> b!7485310 (= e!4464378 tp!2171440)))

(declare-fun b!7485308 () Bool)

(assert (=> b!7485308 (= e!4464378 tp_is_empty!49531)))

(assert (= (and b!7484778 ((_ is ElementMatch!19621) (regTwo!39755 (reg!19950 r2!5783)))) b!7485308))

(assert (= (and b!7484778 ((_ is Concat!28466) (regTwo!39755 (reg!19950 r2!5783)))) b!7485309))

(assert (= (and b!7484778 ((_ is Star!19621) (regTwo!39755 (reg!19950 r2!5783)))) b!7485310))

(assert (= (and b!7484778 ((_ is Union!19621) (regTwo!39755 (reg!19950 r2!5783)))) b!7485311))

(declare-fun b!7485313 () Bool)

(declare-fun e!4464379 () Bool)

(declare-fun tp!2171444 () Bool)

(declare-fun tp!2171448 () Bool)

(assert (=> b!7485313 (= e!4464379 (and tp!2171444 tp!2171448))))

(assert (=> b!7484820 (= tp!2170984 e!4464379)))

(declare-fun b!7485315 () Bool)

(declare-fun tp!2171447 () Bool)

(declare-fun tp!2171446 () Bool)

(assert (=> b!7485315 (= e!4464379 (and tp!2171447 tp!2171446))))

(declare-fun b!7485314 () Bool)

(declare-fun tp!2171445 () Bool)

(assert (=> b!7485314 (= e!4464379 tp!2171445)))

(declare-fun b!7485312 () Bool)

(assert (=> b!7485312 (= e!4464379 tp_is_empty!49531)))

(assert (= (and b!7484820 ((_ is ElementMatch!19621) (reg!19950 (regTwo!39755 r1!5845)))) b!7485312))

(assert (= (and b!7484820 ((_ is Concat!28466) (reg!19950 (regTwo!39755 r1!5845)))) b!7485313))

(assert (= (and b!7484820 ((_ is Star!19621) (reg!19950 (regTwo!39755 r1!5845)))) b!7485314))

(assert (= (and b!7484820 ((_ is Union!19621) (reg!19950 (regTwo!39755 r1!5845)))) b!7485315))

(declare-fun b!7485326 () Bool)

(declare-fun e!4464387 () Bool)

(declare-fun tp!2171449 () Bool)

(declare-fun tp!2171453 () Bool)

(assert (=> b!7485326 (= e!4464387 (and tp!2171449 tp!2171453))))

(assert (=> b!7484813 (= tp!2170974 e!4464387)))

(declare-fun b!7485328 () Bool)

(declare-fun tp!2171452 () Bool)

(declare-fun tp!2171451 () Bool)

(assert (=> b!7485328 (= e!4464387 (and tp!2171452 tp!2171451))))

(declare-fun b!7485327 () Bool)

(declare-fun tp!2171450 () Bool)

(assert (=> b!7485327 (= e!4464387 tp!2171450)))

(declare-fun b!7485325 () Bool)

(assert (=> b!7485325 (= e!4464387 tp_is_empty!49531)))

(assert (= (and b!7484813 ((_ is ElementMatch!19621) (regOne!39754 (regOne!39755 r1!5845)))) b!7485325))

(assert (= (and b!7484813 ((_ is Concat!28466) (regOne!39754 (regOne!39755 r1!5845)))) b!7485326))

(assert (= (and b!7484813 ((_ is Star!19621) (regOne!39754 (regOne!39755 r1!5845)))) b!7485327))

(assert (= (and b!7484813 ((_ is Union!19621) (regOne!39754 (regOne!39755 r1!5845)))) b!7485328))

(declare-fun b!7485330 () Bool)

(declare-fun e!4464388 () Bool)

(declare-fun tp!2171454 () Bool)

(declare-fun tp!2171458 () Bool)

(assert (=> b!7485330 (= e!4464388 (and tp!2171454 tp!2171458))))

(assert (=> b!7484813 (= tp!2170978 e!4464388)))

(declare-fun b!7485332 () Bool)

(declare-fun tp!2171457 () Bool)

(declare-fun tp!2171456 () Bool)

(assert (=> b!7485332 (= e!4464388 (and tp!2171457 tp!2171456))))

(declare-fun b!7485331 () Bool)

(declare-fun tp!2171455 () Bool)

(assert (=> b!7485331 (= e!4464388 tp!2171455)))

(declare-fun b!7485329 () Bool)

(assert (=> b!7485329 (= e!4464388 tp_is_empty!49531)))

(assert (= (and b!7484813 ((_ is ElementMatch!19621) (regTwo!39754 (regOne!39755 r1!5845)))) b!7485329))

(assert (= (and b!7484813 ((_ is Concat!28466) (regTwo!39754 (regOne!39755 r1!5845)))) b!7485330))

(assert (= (and b!7484813 ((_ is Star!19621) (regTwo!39754 (regOne!39755 r1!5845)))) b!7485331))

(assert (= (and b!7484813 ((_ is Union!19621) (regTwo!39754 (regOne!39755 r1!5845)))) b!7485332))

(declare-fun b!7485334 () Bool)

(declare-fun e!4464389 () Bool)

(declare-fun tp!2171459 () Bool)

(declare-fun tp!2171463 () Bool)

(assert (=> b!7485334 (= e!4464389 (and tp!2171459 tp!2171463))))

(assert (=> b!7484786 (= tp!2170954 e!4464389)))

(declare-fun b!7485336 () Bool)

(declare-fun tp!2171462 () Bool)

(declare-fun tp!2171461 () Bool)

(assert (=> b!7485336 (= e!4464389 (and tp!2171462 tp!2171461))))

(declare-fun b!7485335 () Bool)

(declare-fun tp!2171460 () Bool)

(assert (=> b!7485335 (= e!4464389 tp!2171460)))

(declare-fun b!7485333 () Bool)

(assert (=> b!7485333 (= e!4464389 tp_is_empty!49531)))

(assert (= (and b!7484786 ((_ is ElementMatch!19621) (regOne!39754 (regOne!39755 rTail!78)))) b!7485333))

(assert (= (and b!7484786 ((_ is Concat!28466) (regOne!39754 (regOne!39755 rTail!78)))) b!7485334))

(assert (= (and b!7484786 ((_ is Star!19621) (regOne!39754 (regOne!39755 rTail!78)))) b!7485335))

(assert (= (and b!7484786 ((_ is Union!19621) (regOne!39754 (regOne!39755 rTail!78)))) b!7485336))

(declare-fun b!7485338 () Bool)

(declare-fun e!4464390 () Bool)

(declare-fun tp!2171464 () Bool)

(declare-fun tp!2171468 () Bool)

(assert (=> b!7485338 (= e!4464390 (and tp!2171464 tp!2171468))))

(assert (=> b!7484786 (= tp!2170958 e!4464390)))

(declare-fun b!7485340 () Bool)

(declare-fun tp!2171467 () Bool)

(declare-fun tp!2171466 () Bool)

(assert (=> b!7485340 (= e!4464390 (and tp!2171467 tp!2171466))))

(declare-fun b!7485339 () Bool)

(declare-fun tp!2171465 () Bool)

(assert (=> b!7485339 (= e!4464390 tp!2171465)))

(declare-fun b!7485337 () Bool)

(assert (=> b!7485337 (= e!4464390 tp_is_empty!49531)))

(assert (= (and b!7484786 ((_ is ElementMatch!19621) (regTwo!39754 (regOne!39755 rTail!78)))) b!7485337))

(assert (= (and b!7484786 ((_ is Concat!28466) (regTwo!39754 (regOne!39755 rTail!78)))) b!7485338))

(assert (= (and b!7484786 ((_ is Star!19621) (regTwo!39754 (regOne!39755 rTail!78)))) b!7485339))

(assert (= (and b!7484786 ((_ is Union!19621) (regTwo!39754 (regOne!39755 rTail!78)))) b!7485340))

(declare-fun b!7485342 () Bool)

(declare-fun e!4464391 () Bool)

(declare-fun tp!2171469 () Bool)

(declare-fun tp!2171473 () Bool)

(assert (=> b!7485342 (= e!4464391 (and tp!2171469 tp!2171473))))

(assert (=> b!7484799 (= tp!2170962 e!4464391)))

(declare-fun b!7485344 () Bool)

(declare-fun tp!2171472 () Bool)

(declare-fun tp!2171471 () Bool)

(assert (=> b!7485344 (= e!4464391 (and tp!2171472 tp!2171471))))

(declare-fun b!7485343 () Bool)

(declare-fun tp!2171470 () Bool)

(assert (=> b!7485343 (= e!4464391 tp!2171470)))

(declare-fun b!7485341 () Bool)

(assert (=> b!7485341 (= e!4464391 tp_is_empty!49531)))

(assert (= (and b!7484799 ((_ is ElementMatch!19621) (regOne!39755 (regTwo!39755 rTail!78)))) b!7485341))

(assert (= (and b!7484799 ((_ is Concat!28466) (regOne!39755 (regTwo!39755 rTail!78)))) b!7485342))

(assert (= (and b!7484799 ((_ is Star!19621) (regOne!39755 (regTwo!39755 rTail!78)))) b!7485343))

(assert (= (and b!7484799 ((_ is Union!19621) (regOne!39755 (regTwo!39755 rTail!78)))) b!7485344))

(declare-fun b!7485346 () Bool)

(declare-fun e!4464392 () Bool)

(declare-fun tp!2171474 () Bool)

(declare-fun tp!2171478 () Bool)

(assert (=> b!7485346 (= e!4464392 (and tp!2171474 tp!2171478))))

(assert (=> b!7484799 (= tp!2170961 e!4464392)))

(declare-fun b!7485348 () Bool)

(declare-fun tp!2171477 () Bool)

(declare-fun tp!2171476 () Bool)

(assert (=> b!7485348 (= e!4464392 (and tp!2171477 tp!2171476))))

(declare-fun b!7485347 () Bool)

(declare-fun tp!2171475 () Bool)

(assert (=> b!7485347 (= e!4464392 tp!2171475)))

(declare-fun b!7485345 () Bool)

(assert (=> b!7485345 (= e!4464392 tp_is_empty!49531)))

(assert (= (and b!7484799 ((_ is ElementMatch!19621) (regTwo!39755 (regTwo!39755 rTail!78)))) b!7485345))

(assert (= (and b!7484799 ((_ is Concat!28466) (regTwo!39755 (regTwo!39755 rTail!78)))) b!7485346))

(assert (= (and b!7484799 ((_ is Star!19621) (regTwo!39755 (regTwo!39755 rTail!78)))) b!7485347))

(assert (= (and b!7484799 ((_ is Union!19621) (regTwo!39755 (regTwo!39755 rTail!78)))) b!7485348))

(check-sat (not b!7485049) (not bm!687131) (not b!7485294) (not b!7485031) (not b!7485169) (not b!7485302) (not b!7485097) (not b!7485107) (not b!7484924) (not b!7485071) (not b!7485113) (not b!7485158) (not b!7485211) (not b!7485315) (not b!7485334) (not b!7485200) (not b!7485309) (not b!7485136) (not b!7484951) (not b!7485210) (not b!7485272) (not b!7485203) (not b!7485043) (not b!7484987) (not b!7485156) (not b!7485005) (not b!7485303) (not b!7485060) (not b!7485080) (not b!7485181) (not bm!687113) (not b!7485096) (not b!7485148) (not b!7485036) (not b!7485064) (not b!7485335) (not b!7485347) (not b!7485068) (not b!7485008) (not b!7485003) (not b!7485177) (not b!7485115) (not d!2300680) (not b!7485100) (not b!7485016) (not b!7484996) (not b!7485145) (not b!7485116) (not b!7485215) (not b!7485183) (not b!7485285) (not b!7485327) (not b!7485004) (not b!7485009) (not b!7485293) (not b!7485146) (not b!7485299) (not b!7485117) (not b!7485264) (not b!7485256) (not b!7485297) (not bm!687116) (not b!7485137) (not b!7485142) (not b!7485089) (not b!7485023) (not b!7485268) (not b!7484993) (not d!2300668) (not b!7485157) (not b!7485239) (not b!7485274) (not b!7485154) (not b!7485033) (not b!7485007) (not b!7485088) (not d!2300678) (not b!7485212) (not bm!687111) (not b!7485025) (not b!7485011) (not b!7485193) (not b!7485258) (not b!7485178) (not b!7485053) (not b!7485339) (not bm!687132) (not bm!687129) (not b!7485266) (not b!7485289) (not bm!687119) (not b!7485244) (not b!7485109) (not b!7485076) (not b!7485265) (not b!7485301) (not b!7485015) (not b!7485105) (not b!7485072) (not b!7485260) (not b!7485133) (not b!7485027) (not b!7485121) (not b!7485101) (not b!7485235) (not b!7485330) (not b!7484988) (not b!7485208) (not b!7485065) (not b!7485061) (not b!7485233) (not b!7485240) (not b!7485012) (not b!7485051) (not b!7484991) (not b!7485141) (not b!7485017) (not b!7485331) (not b!7485190) (not b!7485237) (not bm!687114) (not b!7485243) (not b!7485199) (not b!7485020) (not b!7485307) (not b!7485079) (not b!7484960) (not bm!687110) (not b!7485056) (not b!7485262) (not b!7485024) (not b!7485342) (not b!7485093) (not bm!687123) (not b!7485077) (not bm!687125) (not b!7485204) (not b!7485217) (not b!7484999) (not b!7485040) (not b!7485290) (not b!7484997) (not b!7484992) (not b!7484995) (not b!7485229) (not b!7485063) (not b!7485344) (not bm!687126) (not b!7485041) (not b!7485343) (not b!7485269) (not b!7485045) (not b!7485310) (not b!7485073) (not b!7485202) (not b!7485153) (not b!7485306) (not b!7485039) (not b!7485241) (not b!7485340) (not b!7485021) (not b!7485175) (not b!7485013) (not b!7485095) (not b!7485057) (not b!7485311) (not b!7485228) (not b!7485152) (not b!7485081) (not b!7485150) (not b!7485295) (not b!7485052) (not b!7484969) (not b!7485083) (not b!7485286) (not b!7485328) (not b!7485059) (not b!7485198) (not b!7485001) (not b!7485055) (not b!7484978) (not b!7485231) (not b!7484933) (not b!7485111) (not b!7485207) (not bm!687122) (not b!7485120) (not b!7485245) (not b!7485099) (not b!7485134) (not b!7485104) (not b!7485305) (not b!7485182) (not b!7484942) (not b!7485028) (not b!7485092) (not b!7485075) (not b!7485085) (not b!7485326) (not b!7484989) (not b!7485232) (not b!7485087) (not b!7485174) (not b!7485291) (not bm!687117) (not b!7485132) (not b!7485314) (not b!7485261) (not b!7485112) (not b!7485173) (not b!7485179) (not b!7485214) (not b!7485019) (not b!7485084) (not b!7485287) (not b!7485000) (not b!7484915) (not b!7485313) (not b!7485119) (not b!7485103) tp_is_empty!49531 (not b!7485348) (not b!7485067) (not b!7485236) (not b!7485047) (not d!2300666) (not b!7485069) (not bm!687128) (not b!7485227) (not b!7485044) (not b!7485091) (not b!7485346) (not b!7485191) (not b!7485037) (not b!7485338) (not b!7485032) (not b!7485270) (not b!7485029) (not b!7485149) (not b!7485048) (not b!7485273) (not b!7485035) (not b!7485138) (not b!7485332) (not b!7485170) (not bm!687120) (not b!7485140) (not b!7485206) (not b!7485108) (not b!7485144) (not b!7485257) (not b!7485336) (not b!7485298) (not b!7485171))
(check-sat)
