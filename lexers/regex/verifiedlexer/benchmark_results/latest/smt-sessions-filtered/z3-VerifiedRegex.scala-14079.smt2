; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!742066 () Bool)

(assert start!742066)

(declare-fun b!7822957 () Bool)

(declare-fun e!4628196 () Bool)

(declare-fun tp_is_empty!52261 () Bool)

(assert (=> b!7822957 (= e!4628196 tp_is_empty!52261)))

(declare-fun b!7822958 () Bool)

(declare-fun res!3113663 () Bool)

(declare-fun e!4628194 () Bool)

(assert (=> b!7822958 (=> (not res!3113663) (not e!4628194))))

(declare-datatypes ((C!42232 0))(
  ( (C!42233 (val!31556 Int)) )
))
(declare-datatypes ((List!73790 0))(
  ( (Nil!73666) (Cons!73666 (h!80114 C!42232) (t!388525 List!73790)) )
))
(declare-fun s1!4101 () List!73790)

(declare-fun s2!3721 () List!73790)

(declare-fun s!14274 () List!73790)

(declare-fun ++!17987 (List!73790 List!73790) List!73790)

(assert (=> b!7822958 (= res!3113663 (= (++!17987 s1!4101 s2!3721) s!14274))))

(declare-fun b!7822959 () Bool)

(declare-fun e!4628193 () Bool)

(assert (=> b!7822959 (= e!4628193 tp_is_empty!52261)))

(declare-fun b!7822960 () Bool)

(declare-fun res!3113664 () Bool)

(assert (=> b!7822960 (=> (not res!3113664) (not e!4628194))))

(declare-fun e!4628195 () Bool)

(assert (=> b!7822960 (= res!3113664 e!4628195)))

(declare-fun res!3113659 () Bool)

(assert (=> b!7822960 (=> res!3113659 e!4628195)))

(declare-datatypes ((Regex!20953 0))(
  ( (ElementMatch!20953 (c!1439622 C!42232)) (Concat!29798 (regOne!42418 Regex!20953) (regTwo!42418 Regex!20953)) (EmptyExpr!20953) (Star!20953 (reg!21282 Regex!20953)) (EmptyLang!20953) (Union!20953 (regOne!42419 Regex!20953) (regTwo!42419 Regex!20953)) )
))
(declare-fun r1!6261 () Regex!20953)

(declare-fun s1Rec!453 () List!73790)

(declare-fun matchR!10409 (Regex!20953 List!73790) Bool)

(assert (=> b!7822960 (= res!3113659 (not (matchR!10409 r1!6261 s1Rec!453)))))

(declare-fun b!7822961 () Bool)

(declare-fun res!3113669 () Bool)

(assert (=> b!7822961 (=> (not res!3113669) (not e!4628194))))

(assert (=> b!7822961 (= res!3113669 (matchR!10409 r1!6261 s1!4101))))

(declare-fun b!7822962 () Bool)

(declare-fun tp!2309298 () Bool)

(declare-fun tp!2309291 () Bool)

(assert (=> b!7822962 (= e!4628196 (and tp!2309298 tp!2309291))))

(declare-fun b!7822963 () Bool)

(declare-fun res!3113662 () Bool)

(assert (=> b!7822963 (=> (not res!3113662) (not e!4628194))))

(declare-fun s2Rec!453 () List!73790)

(get-info :version)

(assert (=> b!7822963 (= res!3113662 ((_ is Nil!73666) s2Rec!453))))

(declare-fun b!7822964 () Bool)

(declare-fun tp!2309292 () Bool)

(declare-fun tp!2309295 () Bool)

(assert (=> b!7822964 (= e!4628193 (and tp!2309292 tp!2309295))))

(declare-fun b!7822965 () Bool)

(declare-fun res!3113670 () Bool)

(assert (=> b!7822965 (=> (not res!3113670) (not e!4628194))))

(declare-fun r2!6199 () Regex!20953)

(assert (=> b!7822965 (= res!3113670 (matchR!10409 r2!6199 s2!3721))))

(declare-fun b!7822966 () Bool)

(assert (=> b!7822966 (= e!4628195 (not (matchR!10409 r2!6199 s2Rec!453)))))

(declare-fun b!7822967 () Bool)

(declare-fun res!3113668 () Bool)

(assert (=> b!7822967 (=> (not res!3113668) (not e!4628194))))

(declare-fun validRegex!11367 (Regex!20953) Bool)

(assert (=> b!7822967 (= res!3113668 (validRegex!11367 r2!6199))))

(declare-fun res!3113661 () Bool)

(assert (=> start!742066 (=> (not res!3113661) (not e!4628194))))

(assert (=> start!742066 (= res!3113661 (validRegex!11367 r1!6261))))

(assert (=> start!742066 e!4628194))

(assert (=> start!742066 e!4628196))

(declare-fun e!4628192 () Bool)

(assert (=> start!742066 e!4628192))

(declare-fun e!4628191 () Bool)

(assert (=> start!742066 e!4628191))

(declare-fun e!4628190 () Bool)

(assert (=> start!742066 e!4628190))

(declare-fun e!4628197 () Bool)

(assert (=> start!742066 e!4628197))

(assert (=> start!742066 e!4628193))

(declare-fun e!4628189 () Bool)

(assert (=> start!742066 e!4628189))

(declare-fun b!7822968 () Bool)

(declare-fun tp!2309300 () Bool)

(assert (=> b!7822968 (= e!4628189 (and tp_is_empty!52261 tp!2309300))))

(declare-fun b!7822969 () Bool)

(declare-fun tp!2309299 () Bool)

(assert (=> b!7822969 (= e!4628191 (and tp_is_empty!52261 tp!2309299))))

(declare-fun b!7822970 () Bool)

(declare-fun res!3113667 () Bool)

(assert (=> b!7822970 (=> (not res!3113667) (not e!4628194))))

(assert (=> b!7822970 (= res!3113667 (= (++!17987 s1Rec!453 s2Rec!453) s!14274))))

(declare-fun b!7822971 () Bool)

(declare-fun tp!2309296 () Bool)

(declare-fun tp!2309293 () Bool)

(assert (=> b!7822971 (= e!4628196 (and tp!2309296 tp!2309293))))

(declare-fun b!7822972 () Bool)

(declare-fun tp!2309302 () Bool)

(assert (=> b!7822972 (= e!4628197 (and tp_is_empty!52261 tp!2309302))))

(declare-fun b!7822973 () Bool)

(declare-fun tp!2309305 () Bool)

(assert (=> b!7822973 (= e!4628196 tp!2309305)))

(declare-fun b!7822974 () Bool)

(declare-fun tp!2309297 () Bool)

(assert (=> b!7822974 (= e!4628190 (and tp_is_empty!52261 tp!2309297))))

(declare-fun b!7822975 () Bool)

(declare-fun tp!2309303 () Bool)

(assert (=> b!7822975 (= e!4628193 tp!2309303)))

(declare-fun b!7822976 () Bool)

(declare-fun res!3113666 () Bool)

(assert (=> b!7822976 (=> (not res!3113666) (not e!4628194))))

(declare-fun isPrefix!6303 (List!73790 List!73790) Bool)

(assert (=> b!7822976 (= res!3113666 (isPrefix!6303 s1Rec!453 s1!4101))))

(declare-fun b!7822977 () Bool)

(declare-fun tp!2309301 () Bool)

(assert (=> b!7822977 (= e!4628192 (and tp_is_empty!52261 tp!2309301))))

(declare-fun b!7822978 () Bool)

(declare-fun res!3113660 () Bool)

(declare-fun e!4628188 () Bool)

(assert (=> b!7822978 (=> (not res!3113660) (not e!4628188))))

(declare-fun lt!2676650 () Int)

(declare-fun size!42753 (List!73790) Int)

(assert (=> b!7822978 (= res!3113660 (= lt!2676650 (size!42753 s1!4101)))))

(declare-fun b!7822979 () Bool)

(declare-fun tp!2309294 () Bool)

(declare-fun tp!2309304 () Bool)

(assert (=> b!7822979 (= e!4628193 (and tp!2309294 tp!2309304))))

(declare-fun b!7822980 () Bool)

(assert (=> b!7822980 (= e!4628194 e!4628188)))

(declare-fun res!3113665 () Bool)

(assert (=> b!7822980 (=> (not res!3113665) (not e!4628188))))

(assert (=> b!7822980 (= res!3113665 (= lt!2676650 (size!42753 s!14274)))))

(assert (=> b!7822980 (= lt!2676650 (size!42753 s1Rec!453))))

(declare-fun b!7822981 () Bool)

(assert (=> b!7822981 (= e!4628188 (not (= s1Rec!453 s1!4101)))))

(assert (= (and start!742066 res!3113661) b!7822967))

(assert (= (and b!7822967 res!3113668) b!7822958))

(assert (= (and b!7822958 res!3113663) b!7822976))

(assert (= (and b!7822976 res!3113666) b!7822970))

(assert (= (and b!7822970 res!3113667) b!7822961))

(assert (= (and b!7822961 res!3113669) b!7822965))

(assert (= (and b!7822965 res!3113670) b!7822960))

(assert (= (and b!7822960 (not res!3113659)) b!7822966))

(assert (= (and b!7822960 res!3113664) b!7822963))

(assert (= (and b!7822963 res!3113662) b!7822980))

(assert (= (and b!7822980 res!3113665) b!7822978))

(assert (= (and b!7822978 res!3113660) b!7822981))

(assert (= (and start!742066 ((_ is ElementMatch!20953) r2!6199)) b!7822957))

(assert (= (and start!742066 ((_ is Concat!29798) r2!6199)) b!7822971))

(assert (= (and start!742066 ((_ is Star!20953) r2!6199)) b!7822973))

(assert (= (and start!742066 ((_ is Union!20953) r2!6199)) b!7822962))

(assert (= (and start!742066 ((_ is Cons!73666) s1!4101)) b!7822977))

(assert (= (and start!742066 ((_ is Cons!73666) s2!3721)) b!7822969))

(assert (= (and start!742066 ((_ is Cons!73666) s2Rec!453)) b!7822974))

(assert (= (and start!742066 ((_ is Cons!73666) s!14274)) b!7822972))

(assert (= (and start!742066 ((_ is ElementMatch!20953) r1!6261)) b!7822959))

(assert (= (and start!742066 ((_ is Concat!29798) r1!6261)) b!7822964))

(assert (= (and start!742066 ((_ is Star!20953) r1!6261)) b!7822975))

(assert (= (and start!742066 ((_ is Union!20953) r1!6261)) b!7822979))

(assert (= (and start!742066 ((_ is Cons!73666) s1Rec!453)) b!7822968))

(declare-fun m!8246014 () Bool)

(assert (=> b!7822980 m!8246014))

(declare-fun m!8246016 () Bool)

(assert (=> b!7822980 m!8246016))

(declare-fun m!8246018 () Bool)

(assert (=> b!7822970 m!8246018))

(declare-fun m!8246020 () Bool)

(assert (=> b!7822961 m!8246020))

(declare-fun m!8246022 () Bool)

(assert (=> b!7822965 m!8246022))

(declare-fun m!8246024 () Bool)

(assert (=> b!7822978 m!8246024))

(declare-fun m!8246026 () Bool)

(assert (=> b!7822960 m!8246026))

(declare-fun m!8246028 () Bool)

(assert (=> b!7822976 m!8246028))

(declare-fun m!8246030 () Bool)

(assert (=> b!7822967 m!8246030))

(declare-fun m!8246032 () Bool)

(assert (=> start!742066 m!8246032))

(declare-fun m!8246034 () Bool)

(assert (=> b!7822966 m!8246034))

(declare-fun m!8246036 () Bool)

(assert (=> b!7822958 m!8246036))

(check-sat (not b!7822969) (not b!7822978) (not start!742066) (not b!7822979) (not b!7822980) (not b!7822976) (not b!7822960) (not b!7822973) (not b!7822974) (not b!7822966) (not b!7822961) (not b!7822968) (not b!7822977) (not b!7822970) (not b!7822975) (not b!7822965) (not b!7822962) (not b!7822971) (not b!7822967) tp_is_empty!52261 (not b!7822964) (not b!7822972) (not b!7822958))
(check-sat)
(get-model)

(declare-fun d!2349832 () Bool)

(declare-fun lt!2676653 () Int)

(assert (=> d!2349832 (>= lt!2676653 0)))

(declare-fun e!4628200 () Int)

(assert (=> d!2349832 (= lt!2676653 e!4628200)))

(declare-fun c!1439625 () Bool)

(assert (=> d!2349832 (= c!1439625 ((_ is Nil!73666) s1!4101))))

(assert (=> d!2349832 (= (size!42753 s1!4101) lt!2676653)))

(declare-fun b!7822986 () Bool)

(assert (=> b!7822986 (= e!4628200 0)))

(declare-fun b!7822987 () Bool)

(assert (=> b!7822987 (= e!4628200 (+ 1 (size!42753 (t!388525 s1!4101))))))

(assert (= (and d!2349832 c!1439625) b!7822986))

(assert (= (and d!2349832 (not c!1439625)) b!7822987))

(declare-fun m!8246038 () Bool)

(assert (=> b!7822987 m!8246038))

(assert (=> b!7822978 d!2349832))

(declare-fun b!7823014 () Bool)

(declare-fun e!4628223 () Bool)

(declare-fun call!725593 () Bool)

(assert (=> b!7823014 (= e!4628223 call!725593)))

(declare-fun b!7823015 () Bool)

(declare-fun e!4628225 () Bool)

(declare-fun call!725595 () Bool)

(assert (=> b!7823015 (= e!4628225 call!725595)))

(declare-fun c!1439630 () Bool)

(declare-fun bm!725588 () Bool)

(declare-fun c!1439631 () Bool)

(assert (=> bm!725588 (= call!725595 (validRegex!11367 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))))))

(declare-fun b!7823017 () Bool)

(declare-fun res!3113691 () Bool)

(declare-fun e!4628224 () Bool)

(assert (=> b!7823017 (=> res!3113691 e!4628224)))

(assert (=> b!7823017 (= res!3113691 (not ((_ is Concat!29798) r2!6199)))))

(declare-fun e!4628222 () Bool)

(assert (=> b!7823017 (= e!4628222 e!4628224)))

(declare-fun b!7823018 () Bool)

(declare-fun e!4628221 () Bool)

(assert (=> b!7823018 (= e!4628221 e!4628222)))

(assert (=> b!7823018 (= c!1439631 ((_ is Union!20953) r2!6199))))

(declare-fun b!7823019 () Bool)

(declare-fun e!4628227 () Bool)

(declare-fun call!725594 () Bool)

(assert (=> b!7823019 (= e!4628227 call!725594)))

(declare-fun bm!725589 () Bool)

(assert (=> bm!725589 (= call!725593 (validRegex!11367 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))))))

(declare-fun bm!725590 () Bool)

(assert (=> bm!725590 (= call!725594 call!725595)))

(declare-fun b!7823020 () Bool)

(declare-fun e!4628226 () Bool)

(assert (=> b!7823020 (= e!4628226 e!4628221)))

(assert (=> b!7823020 (= c!1439630 ((_ is Star!20953) r2!6199))))

(declare-fun b!7823021 () Bool)

(declare-fun res!3113690 () Bool)

(assert (=> b!7823021 (=> (not res!3113690) (not e!4628223))))

(assert (=> b!7823021 (= res!3113690 call!725594)))

(assert (=> b!7823021 (= e!4628222 e!4628223)))

(declare-fun b!7823022 () Bool)

(assert (=> b!7823022 (= e!4628224 e!4628227)))

(declare-fun res!3113692 () Bool)

(assert (=> b!7823022 (=> (not res!3113692) (not e!4628227))))

(assert (=> b!7823022 (= res!3113692 call!725593)))

(declare-fun d!2349836 () Bool)

(declare-fun res!3113693 () Bool)

(assert (=> d!2349836 (=> res!3113693 e!4628226)))

(assert (=> d!2349836 (= res!3113693 ((_ is ElementMatch!20953) r2!6199))))

(assert (=> d!2349836 (= (validRegex!11367 r2!6199) e!4628226)))

(declare-fun b!7823016 () Bool)

(assert (=> b!7823016 (= e!4628221 e!4628225)))

(declare-fun res!3113689 () Bool)

(declare-fun nullable!9296 (Regex!20953) Bool)

(assert (=> b!7823016 (= res!3113689 (not (nullable!9296 (reg!21282 r2!6199))))))

(assert (=> b!7823016 (=> (not res!3113689) (not e!4628225))))

(assert (= (and d!2349836 (not res!3113693)) b!7823020))

(assert (= (and b!7823020 c!1439630) b!7823016))

(assert (= (and b!7823020 (not c!1439630)) b!7823018))

(assert (= (and b!7823016 res!3113689) b!7823015))

(assert (= (and b!7823018 c!1439631) b!7823021))

(assert (= (and b!7823018 (not c!1439631)) b!7823017))

(assert (= (and b!7823021 res!3113690) b!7823014))

(assert (= (and b!7823017 (not res!3113691)) b!7823022))

(assert (= (and b!7823022 res!3113692) b!7823019))

(assert (= (or b!7823014 b!7823022) bm!725589))

(assert (= (or b!7823021 b!7823019) bm!725590))

(assert (= (or b!7823015 bm!725590) bm!725588))

(declare-fun m!8246040 () Bool)

(assert (=> bm!725588 m!8246040))

(declare-fun m!8246042 () Bool)

(assert (=> bm!725589 m!8246042))

(declare-fun m!8246044 () Bool)

(assert (=> b!7823016 m!8246044))

(assert (=> b!7822967 d!2349836))

(declare-fun b!7823065 () Bool)

(declare-fun e!4628252 () Bool)

(declare-fun head!15985 (List!73790) C!42232)

(assert (=> b!7823065 (= e!4628252 (not (= (head!15985 s1!4101) (c!1439622 r1!6261))))))

(declare-fun b!7823066 () Bool)

(declare-fun e!4628255 () Bool)

(assert (=> b!7823066 (= e!4628255 e!4628252)))

(declare-fun res!3113721 () Bool)

(assert (=> b!7823066 (=> res!3113721 e!4628252)))

(declare-fun call!725598 () Bool)

(assert (=> b!7823066 (= res!3113721 call!725598)))

(declare-fun b!7823067 () Bool)

(declare-fun e!4628251 () Bool)

(declare-fun lt!2676664 () Bool)

(assert (=> b!7823067 (= e!4628251 (= lt!2676664 call!725598))))

(declare-fun b!7823068 () Bool)

(declare-fun e!4628256 () Bool)

(declare-fun derivativeStep!6255 (Regex!20953 C!42232) Regex!20953)

(declare-fun tail!15526 (List!73790) List!73790)

(assert (=> b!7823068 (= e!4628256 (matchR!10409 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)) (tail!15526 s1!4101)))))

(declare-fun d!2349838 () Bool)

(assert (=> d!2349838 e!4628251))

(declare-fun c!1439644 () Bool)

(assert (=> d!2349838 (= c!1439644 ((_ is EmptyExpr!20953) r1!6261))))

(assert (=> d!2349838 (= lt!2676664 e!4628256)))

(declare-fun c!1439643 () Bool)

(declare-fun isEmpty!42284 (List!73790) Bool)

(assert (=> d!2349838 (= c!1439643 (isEmpty!42284 s1!4101))))

(assert (=> d!2349838 (validRegex!11367 r1!6261)))

(assert (=> d!2349838 (= (matchR!10409 r1!6261 s1!4101) lt!2676664)))

(declare-fun b!7823069 () Bool)

(declare-fun e!4628253 () Bool)

(assert (=> b!7823069 (= e!4628253 e!4628255)))

(declare-fun res!3113720 () Bool)

(assert (=> b!7823069 (=> (not res!3113720) (not e!4628255))))

(assert (=> b!7823069 (= res!3113720 (not lt!2676664))))

(declare-fun b!7823070 () Bool)

(declare-fun e!4628254 () Bool)

(assert (=> b!7823070 (= e!4628254 (not lt!2676664))))

(declare-fun b!7823071 () Bool)

(declare-fun res!3113714 () Bool)

(assert (=> b!7823071 (=> res!3113714 e!4628253)))

(declare-fun e!4628250 () Bool)

(assert (=> b!7823071 (= res!3113714 e!4628250)))

(declare-fun res!3113716 () Bool)

(assert (=> b!7823071 (=> (not res!3113716) (not e!4628250))))

(assert (=> b!7823071 (= res!3113716 lt!2676664)))

(declare-fun b!7823072 () Bool)

(assert (=> b!7823072 (= e!4628250 (= (head!15985 s1!4101) (c!1439622 r1!6261)))))

(declare-fun b!7823073 () Bool)

(declare-fun res!3113715 () Bool)

(assert (=> b!7823073 (=> res!3113715 e!4628253)))

(assert (=> b!7823073 (= res!3113715 (not ((_ is ElementMatch!20953) r1!6261)))))

(assert (=> b!7823073 (= e!4628254 e!4628253)))

(declare-fun b!7823074 () Bool)

(assert (=> b!7823074 (= e!4628251 e!4628254)))

(declare-fun c!1439645 () Bool)

(assert (=> b!7823074 (= c!1439645 ((_ is EmptyLang!20953) r1!6261))))

(declare-fun bm!725593 () Bool)

(assert (=> bm!725593 (= call!725598 (isEmpty!42284 s1!4101))))

(declare-fun b!7823075 () Bool)

(declare-fun res!3113719 () Bool)

(assert (=> b!7823075 (=> (not res!3113719) (not e!4628250))))

(assert (=> b!7823075 (= res!3113719 (not call!725598))))

(declare-fun b!7823076 () Bool)

(declare-fun res!3113717 () Bool)

(assert (=> b!7823076 (=> res!3113717 e!4628252)))

(assert (=> b!7823076 (= res!3113717 (not (isEmpty!42284 (tail!15526 s1!4101))))))

(declare-fun b!7823077 () Bool)

(assert (=> b!7823077 (= e!4628256 (nullable!9296 r1!6261))))

(declare-fun b!7823078 () Bool)

(declare-fun res!3113718 () Bool)

(assert (=> b!7823078 (=> (not res!3113718) (not e!4628250))))

(assert (=> b!7823078 (= res!3113718 (isEmpty!42284 (tail!15526 s1!4101)))))

(assert (= (and d!2349838 c!1439643) b!7823077))

(assert (= (and d!2349838 (not c!1439643)) b!7823068))

(assert (= (and d!2349838 c!1439644) b!7823067))

(assert (= (and d!2349838 (not c!1439644)) b!7823074))

(assert (= (and b!7823074 c!1439645) b!7823070))

(assert (= (and b!7823074 (not c!1439645)) b!7823073))

(assert (= (and b!7823073 (not res!3113715)) b!7823071))

(assert (= (and b!7823071 res!3113716) b!7823075))

(assert (= (and b!7823075 res!3113719) b!7823078))

(assert (= (and b!7823078 res!3113718) b!7823072))

(assert (= (and b!7823071 (not res!3113714)) b!7823069))

(assert (= (and b!7823069 res!3113720) b!7823066))

(assert (= (and b!7823066 (not res!3113721)) b!7823076))

(assert (= (and b!7823076 (not res!3113717)) b!7823065))

(assert (= (or b!7823067 b!7823066 b!7823075) bm!725593))

(declare-fun m!8246062 () Bool)

(assert (=> b!7823065 m!8246062))

(declare-fun m!8246064 () Bool)

(assert (=> b!7823078 m!8246064))

(assert (=> b!7823078 m!8246064))

(declare-fun m!8246066 () Bool)

(assert (=> b!7823078 m!8246066))

(declare-fun m!8246068 () Bool)

(assert (=> b!7823077 m!8246068))

(assert (=> b!7823068 m!8246062))

(assert (=> b!7823068 m!8246062))

(declare-fun m!8246070 () Bool)

(assert (=> b!7823068 m!8246070))

(assert (=> b!7823068 m!8246064))

(assert (=> b!7823068 m!8246070))

(assert (=> b!7823068 m!8246064))

(declare-fun m!8246072 () Bool)

(assert (=> b!7823068 m!8246072))

(assert (=> b!7823072 m!8246062))

(declare-fun m!8246074 () Bool)

(assert (=> bm!725593 m!8246074))

(assert (=> b!7823076 m!8246064))

(assert (=> b!7823076 m!8246064))

(assert (=> b!7823076 m!8246066))

(assert (=> d!2349838 m!8246074))

(assert (=> d!2349838 m!8246032))

(assert (=> b!7822961 d!2349838))

(declare-fun b!7823079 () Bool)

(declare-fun e!4628259 () Bool)

(assert (=> b!7823079 (= e!4628259 (not (= (head!15985 s2Rec!453) (c!1439622 r2!6199))))))

(declare-fun b!7823080 () Bool)

(declare-fun e!4628262 () Bool)

(assert (=> b!7823080 (= e!4628262 e!4628259)))

(declare-fun res!3113729 () Bool)

(assert (=> b!7823080 (=> res!3113729 e!4628259)))

(declare-fun call!725599 () Bool)

(assert (=> b!7823080 (= res!3113729 call!725599)))

(declare-fun b!7823081 () Bool)

(declare-fun e!4628258 () Bool)

(declare-fun lt!2676665 () Bool)

(assert (=> b!7823081 (= e!4628258 (= lt!2676665 call!725599))))

(declare-fun b!7823082 () Bool)

(declare-fun e!4628263 () Bool)

(assert (=> b!7823082 (= e!4628263 (matchR!10409 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)) (tail!15526 s2Rec!453)))))

(declare-fun d!2349848 () Bool)

(assert (=> d!2349848 e!4628258))

(declare-fun c!1439647 () Bool)

(assert (=> d!2349848 (= c!1439647 ((_ is EmptyExpr!20953) r2!6199))))

(assert (=> d!2349848 (= lt!2676665 e!4628263)))

(declare-fun c!1439646 () Bool)

(assert (=> d!2349848 (= c!1439646 (isEmpty!42284 s2Rec!453))))

(assert (=> d!2349848 (validRegex!11367 r2!6199)))

(assert (=> d!2349848 (= (matchR!10409 r2!6199 s2Rec!453) lt!2676665)))

(declare-fun b!7823083 () Bool)

(declare-fun e!4628260 () Bool)

(assert (=> b!7823083 (= e!4628260 e!4628262)))

(declare-fun res!3113728 () Bool)

(assert (=> b!7823083 (=> (not res!3113728) (not e!4628262))))

(assert (=> b!7823083 (= res!3113728 (not lt!2676665))))

(declare-fun b!7823084 () Bool)

(declare-fun e!4628261 () Bool)

(assert (=> b!7823084 (= e!4628261 (not lt!2676665))))

(declare-fun b!7823085 () Bool)

(declare-fun res!3113722 () Bool)

(assert (=> b!7823085 (=> res!3113722 e!4628260)))

(declare-fun e!4628257 () Bool)

(assert (=> b!7823085 (= res!3113722 e!4628257)))

(declare-fun res!3113724 () Bool)

(assert (=> b!7823085 (=> (not res!3113724) (not e!4628257))))

(assert (=> b!7823085 (= res!3113724 lt!2676665)))

(declare-fun b!7823086 () Bool)

(assert (=> b!7823086 (= e!4628257 (= (head!15985 s2Rec!453) (c!1439622 r2!6199)))))

(declare-fun b!7823087 () Bool)

(declare-fun res!3113723 () Bool)

(assert (=> b!7823087 (=> res!3113723 e!4628260)))

(assert (=> b!7823087 (= res!3113723 (not ((_ is ElementMatch!20953) r2!6199)))))

(assert (=> b!7823087 (= e!4628261 e!4628260)))

(declare-fun b!7823088 () Bool)

(assert (=> b!7823088 (= e!4628258 e!4628261)))

(declare-fun c!1439648 () Bool)

(assert (=> b!7823088 (= c!1439648 ((_ is EmptyLang!20953) r2!6199))))

(declare-fun bm!725594 () Bool)

(assert (=> bm!725594 (= call!725599 (isEmpty!42284 s2Rec!453))))

(declare-fun b!7823089 () Bool)

(declare-fun res!3113727 () Bool)

(assert (=> b!7823089 (=> (not res!3113727) (not e!4628257))))

(assert (=> b!7823089 (= res!3113727 (not call!725599))))

(declare-fun b!7823090 () Bool)

(declare-fun res!3113725 () Bool)

(assert (=> b!7823090 (=> res!3113725 e!4628259)))

(assert (=> b!7823090 (= res!3113725 (not (isEmpty!42284 (tail!15526 s2Rec!453))))))

(declare-fun b!7823091 () Bool)

(assert (=> b!7823091 (= e!4628263 (nullable!9296 r2!6199))))

(declare-fun b!7823092 () Bool)

(declare-fun res!3113726 () Bool)

(assert (=> b!7823092 (=> (not res!3113726) (not e!4628257))))

(assert (=> b!7823092 (= res!3113726 (isEmpty!42284 (tail!15526 s2Rec!453)))))

(assert (= (and d!2349848 c!1439646) b!7823091))

(assert (= (and d!2349848 (not c!1439646)) b!7823082))

(assert (= (and d!2349848 c!1439647) b!7823081))

(assert (= (and d!2349848 (not c!1439647)) b!7823088))

(assert (= (and b!7823088 c!1439648) b!7823084))

(assert (= (and b!7823088 (not c!1439648)) b!7823087))

(assert (= (and b!7823087 (not res!3113723)) b!7823085))

(assert (= (and b!7823085 res!3113724) b!7823089))

(assert (= (and b!7823089 res!3113727) b!7823092))

(assert (= (and b!7823092 res!3113726) b!7823086))

(assert (= (and b!7823085 (not res!3113722)) b!7823083))

(assert (= (and b!7823083 res!3113728) b!7823080))

(assert (= (and b!7823080 (not res!3113729)) b!7823090))

(assert (= (and b!7823090 (not res!3113725)) b!7823079))

(assert (= (or b!7823081 b!7823080 b!7823089) bm!725594))

(declare-fun m!8246076 () Bool)

(assert (=> b!7823079 m!8246076))

(declare-fun m!8246078 () Bool)

(assert (=> b!7823092 m!8246078))

(assert (=> b!7823092 m!8246078))

(declare-fun m!8246080 () Bool)

(assert (=> b!7823092 m!8246080))

(declare-fun m!8246082 () Bool)

(assert (=> b!7823091 m!8246082))

(assert (=> b!7823082 m!8246076))

(assert (=> b!7823082 m!8246076))

(declare-fun m!8246084 () Bool)

(assert (=> b!7823082 m!8246084))

(assert (=> b!7823082 m!8246078))

(assert (=> b!7823082 m!8246084))

(assert (=> b!7823082 m!8246078))

(declare-fun m!8246086 () Bool)

(assert (=> b!7823082 m!8246086))

(assert (=> b!7823086 m!8246076))

(declare-fun m!8246088 () Bool)

(assert (=> bm!725594 m!8246088))

(assert (=> b!7823090 m!8246078))

(assert (=> b!7823090 m!8246078))

(assert (=> b!7823090 m!8246080))

(assert (=> d!2349848 m!8246088))

(assert (=> d!2349848 m!8246030))

(assert (=> b!7822966 d!2349848))

(declare-fun b!7823093 () Bool)

(declare-fun e!4628266 () Bool)

(declare-fun call!725600 () Bool)

(assert (=> b!7823093 (= e!4628266 call!725600)))

(declare-fun b!7823094 () Bool)

(declare-fun e!4628268 () Bool)

(declare-fun call!725602 () Bool)

(assert (=> b!7823094 (= e!4628268 call!725602)))

(declare-fun c!1439650 () Bool)

(declare-fun bm!725595 () Bool)

(declare-fun c!1439649 () Bool)

(assert (=> bm!725595 (= call!725602 (validRegex!11367 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))))))

(declare-fun b!7823096 () Bool)

(declare-fun res!3113732 () Bool)

(declare-fun e!4628267 () Bool)

(assert (=> b!7823096 (=> res!3113732 e!4628267)))

(assert (=> b!7823096 (= res!3113732 (not ((_ is Concat!29798) r1!6261)))))

(declare-fun e!4628265 () Bool)

(assert (=> b!7823096 (= e!4628265 e!4628267)))

(declare-fun b!7823097 () Bool)

(declare-fun e!4628264 () Bool)

(assert (=> b!7823097 (= e!4628264 e!4628265)))

(assert (=> b!7823097 (= c!1439650 ((_ is Union!20953) r1!6261))))

(declare-fun b!7823098 () Bool)

(declare-fun e!4628270 () Bool)

(declare-fun call!725601 () Bool)

(assert (=> b!7823098 (= e!4628270 call!725601)))

(declare-fun bm!725596 () Bool)

(assert (=> bm!725596 (= call!725600 (validRegex!11367 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))))))

(declare-fun bm!725597 () Bool)

(assert (=> bm!725597 (= call!725601 call!725602)))

(declare-fun b!7823099 () Bool)

(declare-fun e!4628269 () Bool)

(assert (=> b!7823099 (= e!4628269 e!4628264)))

(assert (=> b!7823099 (= c!1439649 ((_ is Star!20953) r1!6261))))

(declare-fun b!7823100 () Bool)

(declare-fun res!3113731 () Bool)

(assert (=> b!7823100 (=> (not res!3113731) (not e!4628266))))

(assert (=> b!7823100 (= res!3113731 call!725601)))

(assert (=> b!7823100 (= e!4628265 e!4628266)))

(declare-fun b!7823101 () Bool)

(assert (=> b!7823101 (= e!4628267 e!4628270)))

(declare-fun res!3113733 () Bool)

(assert (=> b!7823101 (=> (not res!3113733) (not e!4628270))))

(assert (=> b!7823101 (= res!3113733 call!725600)))

(declare-fun d!2349850 () Bool)

(declare-fun res!3113734 () Bool)

(assert (=> d!2349850 (=> res!3113734 e!4628269)))

(assert (=> d!2349850 (= res!3113734 ((_ is ElementMatch!20953) r1!6261))))

(assert (=> d!2349850 (= (validRegex!11367 r1!6261) e!4628269)))

(declare-fun b!7823095 () Bool)

(assert (=> b!7823095 (= e!4628264 e!4628268)))

(declare-fun res!3113730 () Bool)

(assert (=> b!7823095 (= res!3113730 (not (nullable!9296 (reg!21282 r1!6261))))))

(assert (=> b!7823095 (=> (not res!3113730) (not e!4628268))))

(assert (= (and d!2349850 (not res!3113734)) b!7823099))

(assert (= (and b!7823099 c!1439649) b!7823095))

(assert (= (and b!7823099 (not c!1439649)) b!7823097))

(assert (= (and b!7823095 res!3113730) b!7823094))

(assert (= (and b!7823097 c!1439650) b!7823100))

(assert (= (and b!7823097 (not c!1439650)) b!7823096))

(assert (= (and b!7823100 res!3113731) b!7823093))

(assert (= (and b!7823096 (not res!3113732)) b!7823101))

(assert (= (and b!7823101 res!3113733) b!7823098))

(assert (= (or b!7823093 b!7823101) bm!725596))

(assert (= (or b!7823100 b!7823098) bm!725597))

(assert (= (or b!7823094 bm!725597) bm!725595))

(declare-fun m!8246090 () Bool)

(assert (=> bm!725595 m!8246090))

(declare-fun m!8246092 () Bool)

(assert (=> bm!725596 m!8246092))

(declare-fun m!8246094 () Bool)

(assert (=> b!7823095 m!8246094))

(assert (=> start!742066 d!2349850))

(declare-fun b!7823131 () Bool)

(declare-fun e!4628293 () Bool)

(assert (=> b!7823131 (= e!4628293 (>= (size!42753 s1!4101) (size!42753 s1Rec!453)))))

(declare-fun b!7823129 () Bool)

(declare-fun res!3113755 () Bool)

(declare-fun e!4628292 () Bool)

(assert (=> b!7823129 (=> (not res!3113755) (not e!4628292))))

(assert (=> b!7823129 (= res!3113755 (= (head!15985 s1Rec!453) (head!15985 s1!4101)))))

(declare-fun d!2349852 () Bool)

(assert (=> d!2349852 e!4628293))

(declare-fun res!3113754 () Bool)

(assert (=> d!2349852 (=> res!3113754 e!4628293)))

(declare-fun lt!2676668 () Bool)

(assert (=> d!2349852 (= res!3113754 (not lt!2676668))))

(declare-fun e!4628291 () Bool)

(assert (=> d!2349852 (= lt!2676668 e!4628291)))

(declare-fun res!3113756 () Bool)

(assert (=> d!2349852 (=> res!3113756 e!4628291)))

(assert (=> d!2349852 (= res!3113756 ((_ is Nil!73666) s1Rec!453))))

(assert (=> d!2349852 (= (isPrefix!6303 s1Rec!453 s1!4101) lt!2676668)))

(declare-fun b!7823130 () Bool)

(assert (=> b!7823130 (= e!4628292 (isPrefix!6303 (tail!15526 s1Rec!453) (tail!15526 s1!4101)))))

(declare-fun b!7823128 () Bool)

(assert (=> b!7823128 (= e!4628291 e!4628292)))

(declare-fun res!3113753 () Bool)

(assert (=> b!7823128 (=> (not res!3113753) (not e!4628292))))

(assert (=> b!7823128 (= res!3113753 (not ((_ is Nil!73666) s1!4101)))))

(assert (= (and d!2349852 (not res!3113756)) b!7823128))

(assert (= (and b!7823128 res!3113753) b!7823129))

(assert (= (and b!7823129 res!3113755) b!7823130))

(assert (= (and d!2349852 (not res!3113754)) b!7823131))

(assert (=> b!7823131 m!8246024))

(assert (=> b!7823131 m!8246016))

(declare-fun m!8246096 () Bool)

(assert (=> b!7823129 m!8246096))

(assert (=> b!7823129 m!8246062))

(declare-fun m!8246098 () Bool)

(assert (=> b!7823130 m!8246098))

(assert (=> b!7823130 m!8246064))

(assert (=> b!7823130 m!8246098))

(assert (=> b!7823130 m!8246064))

(declare-fun m!8246100 () Bool)

(assert (=> b!7823130 m!8246100))

(assert (=> b!7822976 d!2349852))

(declare-fun b!7823132 () Bool)

(declare-fun e!4628296 () Bool)

(assert (=> b!7823132 (= e!4628296 (not (= (head!15985 s1Rec!453) (c!1439622 r1!6261))))))

(declare-fun b!7823133 () Bool)

(declare-fun e!4628299 () Bool)

(assert (=> b!7823133 (= e!4628299 e!4628296)))

(declare-fun res!3113764 () Bool)

(assert (=> b!7823133 (=> res!3113764 e!4628296)))

(declare-fun call!725609 () Bool)

(assert (=> b!7823133 (= res!3113764 call!725609)))

(declare-fun b!7823134 () Bool)

(declare-fun e!4628295 () Bool)

(declare-fun lt!2676669 () Bool)

(assert (=> b!7823134 (= e!4628295 (= lt!2676669 call!725609))))

(declare-fun b!7823135 () Bool)

(declare-fun e!4628300 () Bool)

(assert (=> b!7823135 (= e!4628300 (matchR!10409 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)) (tail!15526 s1Rec!453)))))

(declare-fun d!2349854 () Bool)

(assert (=> d!2349854 e!4628295))

(declare-fun c!1439656 () Bool)

(assert (=> d!2349854 (= c!1439656 ((_ is EmptyExpr!20953) r1!6261))))

(assert (=> d!2349854 (= lt!2676669 e!4628300)))

(declare-fun c!1439655 () Bool)

(assert (=> d!2349854 (= c!1439655 (isEmpty!42284 s1Rec!453))))

(assert (=> d!2349854 (validRegex!11367 r1!6261)))

(assert (=> d!2349854 (= (matchR!10409 r1!6261 s1Rec!453) lt!2676669)))

(declare-fun b!7823136 () Bool)

(declare-fun e!4628297 () Bool)

(assert (=> b!7823136 (= e!4628297 e!4628299)))

(declare-fun res!3113763 () Bool)

(assert (=> b!7823136 (=> (not res!3113763) (not e!4628299))))

(assert (=> b!7823136 (= res!3113763 (not lt!2676669))))

(declare-fun b!7823137 () Bool)

(declare-fun e!4628298 () Bool)

(assert (=> b!7823137 (= e!4628298 (not lt!2676669))))

(declare-fun b!7823138 () Bool)

(declare-fun res!3113757 () Bool)

(assert (=> b!7823138 (=> res!3113757 e!4628297)))

(declare-fun e!4628294 () Bool)

(assert (=> b!7823138 (= res!3113757 e!4628294)))

(declare-fun res!3113759 () Bool)

(assert (=> b!7823138 (=> (not res!3113759) (not e!4628294))))

(assert (=> b!7823138 (= res!3113759 lt!2676669)))

(declare-fun b!7823139 () Bool)

(assert (=> b!7823139 (= e!4628294 (= (head!15985 s1Rec!453) (c!1439622 r1!6261)))))

(declare-fun b!7823140 () Bool)

(declare-fun res!3113758 () Bool)

(assert (=> b!7823140 (=> res!3113758 e!4628297)))

(assert (=> b!7823140 (= res!3113758 (not ((_ is ElementMatch!20953) r1!6261)))))

(assert (=> b!7823140 (= e!4628298 e!4628297)))

(declare-fun b!7823141 () Bool)

(assert (=> b!7823141 (= e!4628295 e!4628298)))

(declare-fun c!1439657 () Bool)

(assert (=> b!7823141 (= c!1439657 ((_ is EmptyLang!20953) r1!6261))))

(declare-fun bm!725604 () Bool)

(assert (=> bm!725604 (= call!725609 (isEmpty!42284 s1Rec!453))))

(declare-fun b!7823142 () Bool)

(declare-fun res!3113762 () Bool)

(assert (=> b!7823142 (=> (not res!3113762) (not e!4628294))))

(assert (=> b!7823142 (= res!3113762 (not call!725609))))

(declare-fun b!7823143 () Bool)

(declare-fun res!3113760 () Bool)

(assert (=> b!7823143 (=> res!3113760 e!4628296)))

(assert (=> b!7823143 (= res!3113760 (not (isEmpty!42284 (tail!15526 s1Rec!453))))))

(declare-fun b!7823144 () Bool)

(assert (=> b!7823144 (= e!4628300 (nullable!9296 r1!6261))))

(declare-fun b!7823145 () Bool)

(declare-fun res!3113761 () Bool)

(assert (=> b!7823145 (=> (not res!3113761) (not e!4628294))))

(assert (=> b!7823145 (= res!3113761 (isEmpty!42284 (tail!15526 s1Rec!453)))))

(assert (= (and d!2349854 c!1439655) b!7823144))

(assert (= (and d!2349854 (not c!1439655)) b!7823135))

(assert (= (and d!2349854 c!1439656) b!7823134))

(assert (= (and d!2349854 (not c!1439656)) b!7823141))

(assert (= (and b!7823141 c!1439657) b!7823137))

(assert (= (and b!7823141 (not c!1439657)) b!7823140))

(assert (= (and b!7823140 (not res!3113758)) b!7823138))

(assert (= (and b!7823138 res!3113759) b!7823142))

(assert (= (and b!7823142 res!3113762) b!7823145))

(assert (= (and b!7823145 res!3113761) b!7823139))

(assert (= (and b!7823138 (not res!3113757)) b!7823136))

(assert (= (and b!7823136 res!3113763) b!7823133))

(assert (= (and b!7823133 (not res!3113764)) b!7823143))

(assert (= (and b!7823143 (not res!3113760)) b!7823132))

(assert (= (or b!7823134 b!7823133 b!7823142) bm!725604))

(assert (=> b!7823132 m!8246096))

(assert (=> b!7823145 m!8246098))

(assert (=> b!7823145 m!8246098))

(declare-fun m!8246102 () Bool)

(assert (=> b!7823145 m!8246102))

(assert (=> b!7823144 m!8246068))

(assert (=> b!7823135 m!8246096))

(assert (=> b!7823135 m!8246096))

(declare-fun m!8246104 () Bool)

(assert (=> b!7823135 m!8246104))

(assert (=> b!7823135 m!8246098))

(assert (=> b!7823135 m!8246104))

(assert (=> b!7823135 m!8246098))

(declare-fun m!8246106 () Bool)

(assert (=> b!7823135 m!8246106))

(assert (=> b!7823139 m!8246096))

(declare-fun m!8246108 () Bool)

(assert (=> bm!725604 m!8246108))

(assert (=> b!7823143 m!8246098))

(assert (=> b!7823143 m!8246098))

(assert (=> b!7823143 m!8246102))

(assert (=> d!2349854 m!8246108))

(assert (=> d!2349854 m!8246032))

(assert (=> b!7822960 d!2349854))

(declare-fun b!7823146 () Bool)

(declare-fun e!4628303 () Bool)

(assert (=> b!7823146 (= e!4628303 (not (= (head!15985 s2!3721) (c!1439622 r2!6199))))))

(declare-fun b!7823147 () Bool)

(declare-fun e!4628306 () Bool)

(assert (=> b!7823147 (= e!4628306 e!4628303)))

(declare-fun res!3113772 () Bool)

(assert (=> b!7823147 (=> res!3113772 e!4628303)))

(declare-fun call!725610 () Bool)

(assert (=> b!7823147 (= res!3113772 call!725610)))

(declare-fun b!7823148 () Bool)

(declare-fun e!4628302 () Bool)

(declare-fun lt!2676670 () Bool)

(assert (=> b!7823148 (= e!4628302 (= lt!2676670 call!725610))))

(declare-fun b!7823149 () Bool)

(declare-fun e!4628307 () Bool)

(assert (=> b!7823149 (= e!4628307 (matchR!10409 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)) (tail!15526 s2!3721)))))

(declare-fun d!2349856 () Bool)

(assert (=> d!2349856 e!4628302))

(declare-fun c!1439659 () Bool)

(assert (=> d!2349856 (= c!1439659 ((_ is EmptyExpr!20953) r2!6199))))

(assert (=> d!2349856 (= lt!2676670 e!4628307)))

(declare-fun c!1439658 () Bool)

(assert (=> d!2349856 (= c!1439658 (isEmpty!42284 s2!3721))))

(assert (=> d!2349856 (validRegex!11367 r2!6199)))

(assert (=> d!2349856 (= (matchR!10409 r2!6199 s2!3721) lt!2676670)))

(declare-fun b!7823150 () Bool)

(declare-fun e!4628304 () Bool)

(assert (=> b!7823150 (= e!4628304 e!4628306)))

(declare-fun res!3113771 () Bool)

(assert (=> b!7823150 (=> (not res!3113771) (not e!4628306))))

(assert (=> b!7823150 (= res!3113771 (not lt!2676670))))

(declare-fun b!7823151 () Bool)

(declare-fun e!4628305 () Bool)

(assert (=> b!7823151 (= e!4628305 (not lt!2676670))))

(declare-fun b!7823152 () Bool)

(declare-fun res!3113765 () Bool)

(assert (=> b!7823152 (=> res!3113765 e!4628304)))

(declare-fun e!4628301 () Bool)

(assert (=> b!7823152 (= res!3113765 e!4628301)))

(declare-fun res!3113767 () Bool)

(assert (=> b!7823152 (=> (not res!3113767) (not e!4628301))))

(assert (=> b!7823152 (= res!3113767 lt!2676670)))

(declare-fun b!7823153 () Bool)

(assert (=> b!7823153 (= e!4628301 (= (head!15985 s2!3721) (c!1439622 r2!6199)))))

(declare-fun b!7823154 () Bool)

(declare-fun res!3113766 () Bool)

(assert (=> b!7823154 (=> res!3113766 e!4628304)))

(assert (=> b!7823154 (= res!3113766 (not ((_ is ElementMatch!20953) r2!6199)))))

(assert (=> b!7823154 (= e!4628305 e!4628304)))

(declare-fun b!7823155 () Bool)

(assert (=> b!7823155 (= e!4628302 e!4628305)))

(declare-fun c!1439660 () Bool)

(assert (=> b!7823155 (= c!1439660 ((_ is EmptyLang!20953) r2!6199))))

(declare-fun bm!725605 () Bool)

(assert (=> bm!725605 (= call!725610 (isEmpty!42284 s2!3721))))

(declare-fun b!7823156 () Bool)

(declare-fun res!3113770 () Bool)

(assert (=> b!7823156 (=> (not res!3113770) (not e!4628301))))

(assert (=> b!7823156 (= res!3113770 (not call!725610))))

(declare-fun b!7823157 () Bool)

(declare-fun res!3113768 () Bool)

(assert (=> b!7823157 (=> res!3113768 e!4628303)))

(assert (=> b!7823157 (= res!3113768 (not (isEmpty!42284 (tail!15526 s2!3721))))))

(declare-fun b!7823158 () Bool)

(assert (=> b!7823158 (= e!4628307 (nullable!9296 r2!6199))))

(declare-fun b!7823159 () Bool)

(declare-fun res!3113769 () Bool)

(assert (=> b!7823159 (=> (not res!3113769) (not e!4628301))))

(assert (=> b!7823159 (= res!3113769 (isEmpty!42284 (tail!15526 s2!3721)))))

(assert (= (and d!2349856 c!1439658) b!7823158))

(assert (= (and d!2349856 (not c!1439658)) b!7823149))

(assert (= (and d!2349856 c!1439659) b!7823148))

(assert (= (and d!2349856 (not c!1439659)) b!7823155))

(assert (= (and b!7823155 c!1439660) b!7823151))

(assert (= (and b!7823155 (not c!1439660)) b!7823154))

(assert (= (and b!7823154 (not res!3113766)) b!7823152))

(assert (= (and b!7823152 res!3113767) b!7823156))

(assert (= (and b!7823156 res!3113770) b!7823159))

(assert (= (and b!7823159 res!3113769) b!7823153))

(assert (= (and b!7823152 (not res!3113765)) b!7823150))

(assert (= (and b!7823150 res!3113771) b!7823147))

(assert (= (and b!7823147 (not res!3113772)) b!7823157))

(assert (= (and b!7823157 (not res!3113768)) b!7823146))

(assert (= (or b!7823148 b!7823147 b!7823156) bm!725605))

(declare-fun m!8246110 () Bool)

(assert (=> b!7823146 m!8246110))

(declare-fun m!8246112 () Bool)

(assert (=> b!7823159 m!8246112))

(assert (=> b!7823159 m!8246112))

(declare-fun m!8246114 () Bool)

(assert (=> b!7823159 m!8246114))

(assert (=> b!7823158 m!8246082))

(assert (=> b!7823149 m!8246110))

(assert (=> b!7823149 m!8246110))

(declare-fun m!8246116 () Bool)

(assert (=> b!7823149 m!8246116))

(assert (=> b!7823149 m!8246112))

(assert (=> b!7823149 m!8246116))

(assert (=> b!7823149 m!8246112))

(declare-fun m!8246118 () Bool)

(assert (=> b!7823149 m!8246118))

(assert (=> b!7823153 m!8246110))

(declare-fun m!8246120 () Bool)

(assert (=> bm!725605 m!8246120))

(assert (=> b!7823157 m!8246112))

(assert (=> b!7823157 m!8246112))

(assert (=> b!7823157 m!8246114))

(assert (=> d!2349856 m!8246120))

(assert (=> d!2349856 m!8246030))

(assert (=> b!7822965 d!2349856))

(declare-fun lt!2676673 () List!73790)

(declare-fun e!4628320 () Bool)

(declare-fun b!7823180 () Bool)

(assert (=> b!7823180 (= e!4628320 (or (not (= s2Rec!453 Nil!73666)) (= lt!2676673 s1Rec!453)))))

(declare-fun b!7823179 () Bool)

(declare-fun res!3113783 () Bool)

(assert (=> b!7823179 (=> (not res!3113783) (not e!4628320))))

(assert (=> b!7823179 (= res!3113783 (= (size!42753 lt!2676673) (+ (size!42753 s1Rec!453) (size!42753 s2Rec!453))))))

(declare-fun b!7823177 () Bool)

(declare-fun e!4628319 () List!73790)

(assert (=> b!7823177 (= e!4628319 s2Rec!453)))

(declare-fun b!7823178 () Bool)

(assert (=> b!7823178 (= e!4628319 (Cons!73666 (h!80114 s1Rec!453) (++!17987 (t!388525 s1Rec!453) s2Rec!453)))))

(declare-fun d!2349858 () Bool)

(assert (=> d!2349858 e!4628320))

(declare-fun res!3113782 () Bool)

(assert (=> d!2349858 (=> (not res!3113782) (not e!4628320))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15637 (List!73790) (InoxSet C!42232))

(assert (=> d!2349858 (= res!3113782 (= (content!15637 lt!2676673) ((_ map or) (content!15637 s1Rec!453) (content!15637 s2Rec!453))))))

(assert (=> d!2349858 (= lt!2676673 e!4628319)))

(declare-fun c!1439665 () Bool)

(assert (=> d!2349858 (= c!1439665 ((_ is Nil!73666) s1Rec!453))))

(assert (=> d!2349858 (= (++!17987 s1Rec!453 s2Rec!453) lt!2676673)))

(assert (= (and d!2349858 c!1439665) b!7823177))

(assert (= (and d!2349858 (not c!1439665)) b!7823178))

(assert (= (and d!2349858 res!3113782) b!7823179))

(assert (= (and b!7823179 res!3113783) b!7823180))

(declare-fun m!8246128 () Bool)

(assert (=> b!7823179 m!8246128))

(assert (=> b!7823179 m!8246016))

(declare-fun m!8246130 () Bool)

(assert (=> b!7823179 m!8246130))

(declare-fun m!8246132 () Bool)

(assert (=> b!7823178 m!8246132))

(declare-fun m!8246134 () Bool)

(assert (=> d!2349858 m!8246134))

(declare-fun m!8246136 () Bool)

(assert (=> d!2349858 m!8246136))

(declare-fun m!8246138 () Bool)

(assert (=> d!2349858 m!8246138))

(assert (=> b!7822970 d!2349858))

(declare-fun d!2349862 () Bool)

(declare-fun lt!2676674 () Int)

(assert (=> d!2349862 (>= lt!2676674 0)))

(declare-fun e!4628321 () Int)

(assert (=> d!2349862 (= lt!2676674 e!4628321)))

(declare-fun c!1439666 () Bool)

(assert (=> d!2349862 (= c!1439666 ((_ is Nil!73666) s!14274))))

(assert (=> d!2349862 (= (size!42753 s!14274) lt!2676674)))

(declare-fun b!7823181 () Bool)

(assert (=> b!7823181 (= e!4628321 0)))

(declare-fun b!7823182 () Bool)

(assert (=> b!7823182 (= e!4628321 (+ 1 (size!42753 (t!388525 s!14274))))))

(assert (= (and d!2349862 c!1439666) b!7823181))

(assert (= (and d!2349862 (not c!1439666)) b!7823182))

(declare-fun m!8246140 () Bool)

(assert (=> b!7823182 m!8246140))

(assert (=> b!7822980 d!2349862))

(declare-fun d!2349864 () Bool)

(declare-fun lt!2676675 () Int)

(assert (=> d!2349864 (>= lt!2676675 0)))

(declare-fun e!4628322 () Int)

(assert (=> d!2349864 (= lt!2676675 e!4628322)))

(declare-fun c!1439667 () Bool)

(assert (=> d!2349864 (= c!1439667 ((_ is Nil!73666) s1Rec!453))))

(assert (=> d!2349864 (= (size!42753 s1Rec!453) lt!2676675)))

(declare-fun b!7823183 () Bool)

(assert (=> b!7823183 (= e!4628322 0)))

(declare-fun b!7823184 () Bool)

(assert (=> b!7823184 (= e!4628322 (+ 1 (size!42753 (t!388525 s1Rec!453))))))

(assert (= (and d!2349864 c!1439667) b!7823183))

(assert (= (and d!2349864 (not c!1439667)) b!7823184))

(declare-fun m!8246142 () Bool)

(assert (=> b!7823184 m!8246142))

(assert (=> b!7822980 d!2349864))

(declare-fun b!7823188 () Bool)

(declare-fun lt!2676676 () List!73790)

(declare-fun e!4628324 () Bool)

(assert (=> b!7823188 (= e!4628324 (or (not (= s2!3721 Nil!73666)) (= lt!2676676 s1!4101)))))

(declare-fun b!7823187 () Bool)

(declare-fun res!3113785 () Bool)

(assert (=> b!7823187 (=> (not res!3113785) (not e!4628324))))

(assert (=> b!7823187 (= res!3113785 (= (size!42753 lt!2676676) (+ (size!42753 s1!4101) (size!42753 s2!3721))))))

(declare-fun b!7823185 () Bool)

(declare-fun e!4628323 () List!73790)

(assert (=> b!7823185 (= e!4628323 s2!3721)))

(declare-fun b!7823186 () Bool)

(assert (=> b!7823186 (= e!4628323 (Cons!73666 (h!80114 s1!4101) (++!17987 (t!388525 s1!4101) s2!3721)))))

(declare-fun d!2349866 () Bool)

(assert (=> d!2349866 e!4628324))

(declare-fun res!3113784 () Bool)

(assert (=> d!2349866 (=> (not res!3113784) (not e!4628324))))

(assert (=> d!2349866 (= res!3113784 (= (content!15637 lt!2676676) ((_ map or) (content!15637 s1!4101) (content!15637 s2!3721))))))

(assert (=> d!2349866 (= lt!2676676 e!4628323)))

(declare-fun c!1439668 () Bool)

(assert (=> d!2349866 (= c!1439668 ((_ is Nil!73666) s1!4101))))

(assert (=> d!2349866 (= (++!17987 s1!4101 s2!3721) lt!2676676)))

(assert (= (and d!2349866 c!1439668) b!7823185))

(assert (= (and d!2349866 (not c!1439668)) b!7823186))

(assert (= (and d!2349866 res!3113784) b!7823187))

(assert (= (and b!7823187 res!3113785) b!7823188))

(declare-fun m!8246144 () Bool)

(assert (=> b!7823187 m!8246144))

(assert (=> b!7823187 m!8246024))

(declare-fun m!8246146 () Bool)

(assert (=> b!7823187 m!8246146))

(declare-fun m!8246148 () Bool)

(assert (=> b!7823186 m!8246148))

(declare-fun m!8246150 () Bool)

(assert (=> d!2349866 m!8246150))

(declare-fun m!8246152 () Bool)

(assert (=> d!2349866 m!8246152))

(declare-fun m!8246154 () Bool)

(assert (=> d!2349866 m!8246154))

(assert (=> b!7822958 d!2349866))

(declare-fun b!7823193 () Bool)

(declare-fun e!4628327 () Bool)

(declare-fun tp!2309308 () Bool)

(assert (=> b!7823193 (= e!4628327 (and tp_is_empty!52261 tp!2309308))))

(assert (=> b!7822968 (= tp!2309300 e!4628327)))

(assert (= (and b!7822968 ((_ is Cons!73666) (t!388525 s1Rec!453))) b!7823193))

(declare-fun b!7823204 () Bool)

(declare-fun e!4628330 () Bool)

(assert (=> b!7823204 (= e!4628330 tp_is_empty!52261)))

(assert (=> b!7822973 (= tp!2309305 e!4628330)))

(declare-fun b!7823207 () Bool)

(declare-fun tp!2309321 () Bool)

(declare-fun tp!2309323 () Bool)

(assert (=> b!7823207 (= e!4628330 (and tp!2309321 tp!2309323))))

(declare-fun b!7823206 () Bool)

(declare-fun tp!2309322 () Bool)

(assert (=> b!7823206 (= e!4628330 tp!2309322)))

(declare-fun b!7823205 () Bool)

(declare-fun tp!2309319 () Bool)

(declare-fun tp!2309320 () Bool)

(assert (=> b!7823205 (= e!4628330 (and tp!2309319 tp!2309320))))

(assert (= (and b!7822973 ((_ is ElementMatch!20953) (reg!21282 r2!6199))) b!7823204))

(assert (= (and b!7822973 ((_ is Concat!29798) (reg!21282 r2!6199))) b!7823205))

(assert (= (and b!7822973 ((_ is Star!20953) (reg!21282 r2!6199))) b!7823206))

(assert (= (and b!7822973 ((_ is Union!20953) (reg!21282 r2!6199))) b!7823207))

(declare-fun b!7823208 () Bool)

(declare-fun e!4628331 () Bool)

(assert (=> b!7823208 (= e!4628331 tp_is_empty!52261)))

(assert (=> b!7822962 (= tp!2309298 e!4628331)))

(declare-fun b!7823211 () Bool)

(declare-fun tp!2309326 () Bool)

(declare-fun tp!2309328 () Bool)

(assert (=> b!7823211 (= e!4628331 (and tp!2309326 tp!2309328))))

(declare-fun b!7823210 () Bool)

(declare-fun tp!2309327 () Bool)

(assert (=> b!7823210 (= e!4628331 tp!2309327)))

(declare-fun b!7823209 () Bool)

(declare-fun tp!2309324 () Bool)

(declare-fun tp!2309325 () Bool)

(assert (=> b!7823209 (= e!4628331 (and tp!2309324 tp!2309325))))

(assert (= (and b!7822962 ((_ is ElementMatch!20953) (regOne!42419 r2!6199))) b!7823208))

(assert (= (and b!7822962 ((_ is Concat!29798) (regOne!42419 r2!6199))) b!7823209))

(assert (= (and b!7822962 ((_ is Star!20953) (regOne!42419 r2!6199))) b!7823210))

(assert (= (and b!7822962 ((_ is Union!20953) (regOne!42419 r2!6199))) b!7823211))

(declare-fun b!7823212 () Bool)

(declare-fun e!4628332 () Bool)

(assert (=> b!7823212 (= e!4628332 tp_is_empty!52261)))

(assert (=> b!7822962 (= tp!2309291 e!4628332)))

(declare-fun b!7823215 () Bool)

(declare-fun tp!2309331 () Bool)

(declare-fun tp!2309333 () Bool)

(assert (=> b!7823215 (= e!4628332 (and tp!2309331 tp!2309333))))

(declare-fun b!7823214 () Bool)

(declare-fun tp!2309332 () Bool)

(assert (=> b!7823214 (= e!4628332 tp!2309332)))

(declare-fun b!7823213 () Bool)

(declare-fun tp!2309329 () Bool)

(declare-fun tp!2309330 () Bool)

(assert (=> b!7823213 (= e!4628332 (and tp!2309329 tp!2309330))))

(assert (= (and b!7822962 ((_ is ElementMatch!20953) (regTwo!42419 r2!6199))) b!7823212))

(assert (= (and b!7822962 ((_ is Concat!29798) (regTwo!42419 r2!6199))) b!7823213))

(assert (= (and b!7822962 ((_ is Star!20953) (regTwo!42419 r2!6199))) b!7823214))

(assert (= (and b!7822962 ((_ is Union!20953) (regTwo!42419 r2!6199))) b!7823215))

(declare-fun b!7823216 () Bool)

(declare-fun e!4628333 () Bool)

(declare-fun tp!2309334 () Bool)

(assert (=> b!7823216 (= e!4628333 (and tp_is_empty!52261 tp!2309334))))

(assert (=> b!7822972 (= tp!2309302 e!4628333)))

(assert (= (and b!7822972 ((_ is Cons!73666) (t!388525 s!14274))) b!7823216))

(declare-fun b!7823217 () Bool)

(declare-fun e!4628334 () Bool)

(declare-fun tp!2309335 () Bool)

(assert (=> b!7823217 (= e!4628334 (and tp_is_empty!52261 tp!2309335))))

(assert (=> b!7822977 (= tp!2309301 e!4628334)))

(assert (= (and b!7822977 ((_ is Cons!73666) (t!388525 s1!4101))) b!7823217))

(declare-fun b!7823218 () Bool)

(declare-fun e!4628335 () Bool)

(assert (=> b!7823218 (= e!4628335 tp_is_empty!52261)))

(assert (=> b!7822971 (= tp!2309296 e!4628335)))

(declare-fun b!7823221 () Bool)

(declare-fun tp!2309338 () Bool)

(declare-fun tp!2309340 () Bool)

(assert (=> b!7823221 (= e!4628335 (and tp!2309338 tp!2309340))))

(declare-fun b!7823220 () Bool)

(declare-fun tp!2309339 () Bool)

(assert (=> b!7823220 (= e!4628335 tp!2309339)))

(declare-fun b!7823219 () Bool)

(declare-fun tp!2309336 () Bool)

(declare-fun tp!2309337 () Bool)

(assert (=> b!7823219 (= e!4628335 (and tp!2309336 tp!2309337))))

(assert (= (and b!7822971 ((_ is ElementMatch!20953) (regOne!42418 r2!6199))) b!7823218))

(assert (= (and b!7822971 ((_ is Concat!29798) (regOne!42418 r2!6199))) b!7823219))

(assert (= (and b!7822971 ((_ is Star!20953) (regOne!42418 r2!6199))) b!7823220))

(assert (= (and b!7822971 ((_ is Union!20953) (regOne!42418 r2!6199))) b!7823221))

(declare-fun b!7823222 () Bool)

(declare-fun e!4628336 () Bool)

(assert (=> b!7823222 (= e!4628336 tp_is_empty!52261)))

(assert (=> b!7822971 (= tp!2309293 e!4628336)))

(declare-fun b!7823225 () Bool)

(declare-fun tp!2309343 () Bool)

(declare-fun tp!2309345 () Bool)

(assert (=> b!7823225 (= e!4628336 (and tp!2309343 tp!2309345))))

(declare-fun b!7823224 () Bool)

(declare-fun tp!2309344 () Bool)

(assert (=> b!7823224 (= e!4628336 tp!2309344)))

(declare-fun b!7823223 () Bool)

(declare-fun tp!2309341 () Bool)

(declare-fun tp!2309342 () Bool)

(assert (=> b!7823223 (= e!4628336 (and tp!2309341 tp!2309342))))

(assert (= (and b!7822971 ((_ is ElementMatch!20953) (regTwo!42418 r2!6199))) b!7823222))

(assert (= (and b!7822971 ((_ is Concat!29798) (regTwo!42418 r2!6199))) b!7823223))

(assert (= (and b!7822971 ((_ is Star!20953) (regTwo!42418 r2!6199))) b!7823224))

(assert (= (and b!7822971 ((_ is Union!20953) (regTwo!42418 r2!6199))) b!7823225))

(declare-fun b!7823226 () Bool)

(declare-fun e!4628337 () Bool)

(assert (=> b!7823226 (= e!4628337 tp_is_empty!52261)))

(assert (=> b!7822975 (= tp!2309303 e!4628337)))

(declare-fun b!7823229 () Bool)

(declare-fun tp!2309348 () Bool)

(declare-fun tp!2309350 () Bool)

(assert (=> b!7823229 (= e!4628337 (and tp!2309348 tp!2309350))))

(declare-fun b!7823228 () Bool)

(declare-fun tp!2309349 () Bool)

(assert (=> b!7823228 (= e!4628337 tp!2309349)))

(declare-fun b!7823227 () Bool)

(declare-fun tp!2309346 () Bool)

(declare-fun tp!2309347 () Bool)

(assert (=> b!7823227 (= e!4628337 (and tp!2309346 tp!2309347))))

(assert (= (and b!7822975 ((_ is ElementMatch!20953) (reg!21282 r1!6261))) b!7823226))

(assert (= (and b!7822975 ((_ is Concat!29798) (reg!21282 r1!6261))) b!7823227))

(assert (= (and b!7822975 ((_ is Star!20953) (reg!21282 r1!6261))) b!7823228))

(assert (= (and b!7822975 ((_ is Union!20953) (reg!21282 r1!6261))) b!7823229))

(declare-fun b!7823230 () Bool)

(declare-fun e!4628338 () Bool)

(assert (=> b!7823230 (= e!4628338 tp_is_empty!52261)))

(assert (=> b!7822964 (= tp!2309292 e!4628338)))

(declare-fun b!7823233 () Bool)

(declare-fun tp!2309353 () Bool)

(declare-fun tp!2309355 () Bool)

(assert (=> b!7823233 (= e!4628338 (and tp!2309353 tp!2309355))))

(declare-fun b!7823232 () Bool)

(declare-fun tp!2309354 () Bool)

(assert (=> b!7823232 (= e!4628338 tp!2309354)))

(declare-fun b!7823231 () Bool)

(declare-fun tp!2309351 () Bool)

(declare-fun tp!2309352 () Bool)

(assert (=> b!7823231 (= e!4628338 (and tp!2309351 tp!2309352))))

(assert (= (and b!7822964 ((_ is ElementMatch!20953) (regOne!42418 r1!6261))) b!7823230))

(assert (= (and b!7822964 ((_ is Concat!29798) (regOne!42418 r1!6261))) b!7823231))

(assert (= (and b!7822964 ((_ is Star!20953) (regOne!42418 r1!6261))) b!7823232))

(assert (= (and b!7822964 ((_ is Union!20953) (regOne!42418 r1!6261))) b!7823233))

(declare-fun b!7823234 () Bool)

(declare-fun e!4628339 () Bool)

(assert (=> b!7823234 (= e!4628339 tp_is_empty!52261)))

(assert (=> b!7822964 (= tp!2309295 e!4628339)))

(declare-fun b!7823237 () Bool)

(declare-fun tp!2309358 () Bool)

(declare-fun tp!2309360 () Bool)

(assert (=> b!7823237 (= e!4628339 (and tp!2309358 tp!2309360))))

(declare-fun b!7823236 () Bool)

(declare-fun tp!2309359 () Bool)

(assert (=> b!7823236 (= e!4628339 tp!2309359)))

(declare-fun b!7823235 () Bool)

(declare-fun tp!2309356 () Bool)

(declare-fun tp!2309357 () Bool)

(assert (=> b!7823235 (= e!4628339 (and tp!2309356 tp!2309357))))

(assert (= (and b!7822964 ((_ is ElementMatch!20953) (regTwo!42418 r1!6261))) b!7823234))

(assert (= (and b!7822964 ((_ is Concat!29798) (regTwo!42418 r1!6261))) b!7823235))

(assert (= (and b!7822964 ((_ is Star!20953) (regTwo!42418 r1!6261))) b!7823236))

(assert (= (and b!7822964 ((_ is Union!20953) (regTwo!42418 r1!6261))) b!7823237))

(declare-fun b!7823238 () Bool)

(declare-fun e!4628340 () Bool)

(declare-fun tp!2309361 () Bool)

(assert (=> b!7823238 (= e!4628340 (and tp_is_empty!52261 tp!2309361))))

(assert (=> b!7822969 (= tp!2309299 e!4628340)))

(assert (= (and b!7822969 ((_ is Cons!73666) (t!388525 s2!3721))) b!7823238))

(declare-fun b!7823239 () Bool)

(declare-fun e!4628341 () Bool)

(declare-fun tp!2309362 () Bool)

(assert (=> b!7823239 (= e!4628341 (and tp_is_empty!52261 tp!2309362))))

(assert (=> b!7822974 (= tp!2309297 e!4628341)))

(assert (= (and b!7822974 ((_ is Cons!73666) (t!388525 s2Rec!453))) b!7823239))

(declare-fun b!7823240 () Bool)

(declare-fun e!4628342 () Bool)

(assert (=> b!7823240 (= e!4628342 tp_is_empty!52261)))

(assert (=> b!7822979 (= tp!2309294 e!4628342)))

(declare-fun b!7823243 () Bool)

(declare-fun tp!2309365 () Bool)

(declare-fun tp!2309367 () Bool)

(assert (=> b!7823243 (= e!4628342 (and tp!2309365 tp!2309367))))

(declare-fun b!7823242 () Bool)

(declare-fun tp!2309366 () Bool)

(assert (=> b!7823242 (= e!4628342 tp!2309366)))

(declare-fun b!7823241 () Bool)

(declare-fun tp!2309363 () Bool)

(declare-fun tp!2309364 () Bool)

(assert (=> b!7823241 (= e!4628342 (and tp!2309363 tp!2309364))))

(assert (= (and b!7822979 ((_ is ElementMatch!20953) (regOne!42419 r1!6261))) b!7823240))

(assert (= (and b!7822979 ((_ is Concat!29798) (regOne!42419 r1!6261))) b!7823241))

(assert (= (and b!7822979 ((_ is Star!20953) (regOne!42419 r1!6261))) b!7823242))

(assert (= (and b!7822979 ((_ is Union!20953) (regOne!42419 r1!6261))) b!7823243))

(declare-fun b!7823244 () Bool)

(declare-fun e!4628343 () Bool)

(assert (=> b!7823244 (= e!4628343 tp_is_empty!52261)))

(assert (=> b!7822979 (= tp!2309304 e!4628343)))

(declare-fun b!7823247 () Bool)

(declare-fun tp!2309370 () Bool)

(declare-fun tp!2309372 () Bool)

(assert (=> b!7823247 (= e!4628343 (and tp!2309370 tp!2309372))))

(declare-fun b!7823246 () Bool)

(declare-fun tp!2309371 () Bool)

(assert (=> b!7823246 (= e!4628343 tp!2309371)))

(declare-fun b!7823245 () Bool)

(declare-fun tp!2309368 () Bool)

(declare-fun tp!2309369 () Bool)

(assert (=> b!7823245 (= e!4628343 (and tp!2309368 tp!2309369))))

(assert (= (and b!7822979 ((_ is ElementMatch!20953) (regTwo!42419 r1!6261))) b!7823244))

(assert (= (and b!7822979 ((_ is Concat!29798) (regTwo!42419 r1!6261))) b!7823245))

(assert (= (and b!7822979 ((_ is Star!20953) (regTwo!42419 r1!6261))) b!7823246))

(assert (= (and b!7822979 ((_ is Union!20953) (regTwo!42419 r1!6261))) b!7823247))

(check-sat (not b!7823216) (not b!7823210) (not b!7823132) (not b!7823072) (not b!7823082) (not b!7823229) (not b!7823095) (not b!7823247) (not bm!725588) (not b!7823220) (not b!7823228) (not d!2349854) (not b!7822987) (not b!7823221) (not b!7823078) (not b!7823130) (not b!7823092) (not b!7823223) (not b!7823235) (not b!7823232) (not b!7823090) (not b!7823224) (not bm!725589) (not b!7823237) (not b!7823205) (not b!7823145) (not d!2349848) (not b!7823068) (not b!7823076) (not b!7823178) (not b!7823077) (not b!7823215) (not b!7823211) (not b!7823236) (not b!7823206) (not b!7823243) (not b!7823086) (not b!7823217) (not b!7823233) (not b!7823146) (not bm!725594) (not b!7823091) (not d!2349858) (not bm!725596) (not b!7823135) (not b!7823184) (not b!7823016) (not d!2349838) (not b!7823144) (not bm!725604) (not b!7823179) (not b!7823065) (not d!2349866) (not b!7823227) (not bm!725605) (not b!7823187) (not b!7823231) (not b!7823241) (not b!7823193) (not b!7823219) (not b!7823209) (not b!7823149) (not b!7823207) (not b!7823242) (not b!7823245) (not b!7823079) tp_is_empty!52261 (not bm!725593) (not b!7823246) (not b!7823238) (not b!7823239) (not b!7823159) (not b!7823213) (not b!7823157) (not b!7823139) (not b!7823225) (not b!7823186) (not b!7823182) (not b!7823129) (not b!7823153) (not bm!725595) (not d!2349856) (not b!7823143) (not b!7823158) (not b!7823214) (not b!7823131))
(check-sat)
(get-model)

(declare-fun d!2349880 () Bool)

(assert (=> d!2349880 (= (isEmpty!42284 (tail!15526 s2Rec!453)) ((_ is Nil!73666) (tail!15526 s2Rec!453)))))

(assert (=> b!7823090 d!2349880))

(declare-fun d!2349882 () Bool)

(assert (=> d!2349882 (= (tail!15526 s2Rec!453) (t!388525 s2Rec!453))))

(assert (=> b!7823090 d!2349882))

(declare-fun b!7823416 () Bool)

(declare-fun e!4628422 () Bool)

(declare-fun call!725623 () Bool)

(assert (=> b!7823416 (= e!4628422 call!725623)))

(declare-fun b!7823417 () Bool)

(declare-fun e!4628424 () Bool)

(declare-fun call!725625 () Bool)

(assert (=> b!7823417 (= e!4628424 call!725625)))

(declare-fun bm!725618 () Bool)

(declare-fun c!1439693 () Bool)

(declare-fun c!1439694 () Bool)

(assert (=> bm!725618 (= call!725625 (validRegex!11367 (ite c!1439693 (reg!21282 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (ite c!1439694 (regOne!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regTwo!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261))))))))))

(declare-fun b!7823419 () Bool)

(declare-fun res!3113849 () Bool)

(declare-fun e!4628423 () Bool)

(assert (=> b!7823419 (=> res!3113849 e!4628423)))

(assert (=> b!7823419 (= res!3113849 (not ((_ is Concat!29798) (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261))))))))

(declare-fun e!4628421 () Bool)

(assert (=> b!7823419 (= e!4628421 e!4628423)))

(declare-fun b!7823420 () Bool)

(declare-fun e!4628420 () Bool)

(assert (=> b!7823420 (= e!4628420 e!4628421)))

(assert (=> b!7823420 (= c!1439694 ((_ is Union!20953) (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))))))

(declare-fun b!7823421 () Bool)

(declare-fun e!4628426 () Bool)

(declare-fun call!725624 () Bool)

(assert (=> b!7823421 (= e!4628426 call!725624)))

(declare-fun bm!725619 () Bool)

(assert (=> bm!725619 (= call!725623 (validRegex!11367 (ite c!1439694 (regTwo!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regOne!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))))))))

(declare-fun bm!725620 () Bool)

(assert (=> bm!725620 (= call!725624 call!725625)))

(declare-fun b!7823422 () Bool)

(declare-fun e!4628425 () Bool)

(assert (=> b!7823422 (= e!4628425 e!4628420)))

(assert (=> b!7823422 (= c!1439693 ((_ is Star!20953) (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))))))

(declare-fun b!7823423 () Bool)

(declare-fun res!3113848 () Bool)

(assert (=> b!7823423 (=> (not res!3113848) (not e!4628422))))

(assert (=> b!7823423 (= res!3113848 call!725624)))

(assert (=> b!7823423 (= e!4628421 e!4628422)))

(declare-fun b!7823424 () Bool)

(assert (=> b!7823424 (= e!4628423 e!4628426)))

(declare-fun res!3113850 () Bool)

(assert (=> b!7823424 (=> (not res!3113850) (not e!4628426))))

(assert (=> b!7823424 (= res!3113850 call!725623)))

(declare-fun d!2349884 () Bool)

(declare-fun res!3113851 () Bool)

(assert (=> d!2349884 (=> res!3113851 e!4628425)))

(assert (=> d!2349884 (= res!3113851 ((_ is ElementMatch!20953) (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))))))

(assert (=> d!2349884 (= (validRegex!11367 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) e!4628425)))

(declare-fun b!7823418 () Bool)

(assert (=> b!7823418 (= e!4628420 e!4628424)))

(declare-fun res!3113847 () Bool)

(assert (=> b!7823418 (= res!3113847 (not (nullable!9296 (reg!21282 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))))))))

(assert (=> b!7823418 (=> (not res!3113847) (not e!4628424))))

(assert (= (and d!2349884 (not res!3113851)) b!7823422))

(assert (= (and b!7823422 c!1439693) b!7823418))

(assert (= (and b!7823422 (not c!1439693)) b!7823420))

(assert (= (and b!7823418 res!3113847) b!7823417))

(assert (= (and b!7823420 c!1439694) b!7823423))

(assert (= (and b!7823420 (not c!1439694)) b!7823419))

(assert (= (and b!7823423 res!3113848) b!7823416))

(assert (= (and b!7823419 (not res!3113849)) b!7823424))

(assert (= (and b!7823424 res!3113850) b!7823421))

(assert (= (or b!7823416 b!7823424) bm!725619))

(assert (= (or b!7823423 b!7823421) bm!725620))

(assert (= (or b!7823417 bm!725620) bm!725618))

(declare-fun m!8246230 () Bool)

(assert (=> bm!725618 m!8246230))

(declare-fun m!8246232 () Bool)

(assert (=> bm!725619 m!8246232))

(declare-fun m!8246234 () Bool)

(assert (=> b!7823418 m!8246234))

(assert (=> bm!725595 d!2349884))

(declare-fun d!2349886 () Bool)

(assert (=> d!2349886 (= (isEmpty!42284 s2Rec!453) ((_ is Nil!73666) s2Rec!453))))

(assert (=> bm!725594 d!2349886))

(declare-fun b!7823425 () Bool)

(declare-fun e!4628429 () Bool)

(assert (=> b!7823425 (= e!4628429 (not (= (head!15985 (tail!15526 s2!3721)) (c!1439622 (derivativeStep!6255 r2!6199 (head!15985 s2!3721))))))))

(declare-fun b!7823426 () Bool)

(declare-fun e!4628432 () Bool)

(assert (=> b!7823426 (= e!4628432 e!4628429)))

(declare-fun res!3113859 () Bool)

(assert (=> b!7823426 (=> res!3113859 e!4628429)))

(declare-fun call!725626 () Bool)

(assert (=> b!7823426 (= res!3113859 call!725626)))

(declare-fun b!7823427 () Bool)

(declare-fun e!4628428 () Bool)

(declare-fun lt!2676687 () Bool)

(assert (=> b!7823427 (= e!4628428 (= lt!2676687 call!725626))))

(declare-fun b!7823428 () Bool)

(declare-fun e!4628433 () Bool)

(assert (=> b!7823428 (= e!4628433 (matchR!10409 (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)) (head!15985 (tail!15526 s2!3721))) (tail!15526 (tail!15526 s2!3721))))))

(declare-fun d!2349888 () Bool)

(assert (=> d!2349888 e!4628428))

(declare-fun c!1439696 () Bool)

(assert (=> d!2349888 (= c!1439696 ((_ is EmptyExpr!20953) (derivativeStep!6255 r2!6199 (head!15985 s2!3721))))))

(assert (=> d!2349888 (= lt!2676687 e!4628433)))

(declare-fun c!1439695 () Bool)

(assert (=> d!2349888 (= c!1439695 (isEmpty!42284 (tail!15526 s2!3721)))))

(assert (=> d!2349888 (validRegex!11367 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)))))

(assert (=> d!2349888 (= (matchR!10409 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)) (tail!15526 s2!3721)) lt!2676687)))

(declare-fun b!7823429 () Bool)

(declare-fun e!4628430 () Bool)

(assert (=> b!7823429 (= e!4628430 e!4628432)))

(declare-fun res!3113858 () Bool)

(assert (=> b!7823429 (=> (not res!3113858) (not e!4628432))))

(assert (=> b!7823429 (= res!3113858 (not lt!2676687))))

(declare-fun b!7823430 () Bool)

(declare-fun e!4628431 () Bool)

(assert (=> b!7823430 (= e!4628431 (not lt!2676687))))

(declare-fun b!7823431 () Bool)

(declare-fun res!3113852 () Bool)

(assert (=> b!7823431 (=> res!3113852 e!4628430)))

(declare-fun e!4628427 () Bool)

(assert (=> b!7823431 (= res!3113852 e!4628427)))

(declare-fun res!3113854 () Bool)

(assert (=> b!7823431 (=> (not res!3113854) (not e!4628427))))

(assert (=> b!7823431 (= res!3113854 lt!2676687)))

(declare-fun b!7823432 () Bool)

(assert (=> b!7823432 (= e!4628427 (= (head!15985 (tail!15526 s2!3721)) (c!1439622 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)))))))

(declare-fun b!7823433 () Bool)

(declare-fun res!3113853 () Bool)

(assert (=> b!7823433 (=> res!3113853 e!4628430)))

(assert (=> b!7823433 (= res!3113853 (not ((_ is ElementMatch!20953) (derivativeStep!6255 r2!6199 (head!15985 s2!3721)))))))

(assert (=> b!7823433 (= e!4628431 e!4628430)))

(declare-fun b!7823434 () Bool)

(assert (=> b!7823434 (= e!4628428 e!4628431)))

(declare-fun c!1439697 () Bool)

(assert (=> b!7823434 (= c!1439697 ((_ is EmptyLang!20953) (derivativeStep!6255 r2!6199 (head!15985 s2!3721))))))

(declare-fun bm!725621 () Bool)

(assert (=> bm!725621 (= call!725626 (isEmpty!42284 (tail!15526 s2!3721)))))

(declare-fun b!7823435 () Bool)

(declare-fun res!3113857 () Bool)

(assert (=> b!7823435 (=> (not res!3113857) (not e!4628427))))

(assert (=> b!7823435 (= res!3113857 (not call!725626))))

(declare-fun b!7823436 () Bool)

(declare-fun res!3113855 () Bool)

(assert (=> b!7823436 (=> res!3113855 e!4628429)))

(assert (=> b!7823436 (= res!3113855 (not (isEmpty!42284 (tail!15526 (tail!15526 s2!3721)))))))

(declare-fun b!7823437 () Bool)

(assert (=> b!7823437 (= e!4628433 (nullable!9296 (derivativeStep!6255 r2!6199 (head!15985 s2!3721))))))

(declare-fun b!7823438 () Bool)

(declare-fun res!3113856 () Bool)

(assert (=> b!7823438 (=> (not res!3113856) (not e!4628427))))

(assert (=> b!7823438 (= res!3113856 (isEmpty!42284 (tail!15526 (tail!15526 s2!3721))))))

(assert (= (and d!2349888 c!1439695) b!7823437))

(assert (= (and d!2349888 (not c!1439695)) b!7823428))

(assert (= (and d!2349888 c!1439696) b!7823427))

(assert (= (and d!2349888 (not c!1439696)) b!7823434))

(assert (= (and b!7823434 c!1439697) b!7823430))

(assert (= (and b!7823434 (not c!1439697)) b!7823433))

(assert (= (and b!7823433 (not res!3113853)) b!7823431))

(assert (= (and b!7823431 res!3113854) b!7823435))

(assert (= (and b!7823435 res!3113857) b!7823438))

(assert (= (and b!7823438 res!3113856) b!7823432))

(assert (= (and b!7823431 (not res!3113852)) b!7823429))

(assert (= (and b!7823429 res!3113858) b!7823426))

(assert (= (and b!7823426 (not res!3113859)) b!7823436))

(assert (= (and b!7823436 (not res!3113855)) b!7823425))

(assert (= (or b!7823427 b!7823426 b!7823435) bm!725621))

(assert (=> b!7823425 m!8246112))

(declare-fun m!8246236 () Bool)

(assert (=> b!7823425 m!8246236))

(assert (=> b!7823438 m!8246112))

(declare-fun m!8246238 () Bool)

(assert (=> b!7823438 m!8246238))

(assert (=> b!7823438 m!8246238))

(declare-fun m!8246240 () Bool)

(assert (=> b!7823438 m!8246240))

(assert (=> b!7823437 m!8246116))

(declare-fun m!8246242 () Bool)

(assert (=> b!7823437 m!8246242))

(assert (=> b!7823428 m!8246112))

(assert (=> b!7823428 m!8246236))

(assert (=> b!7823428 m!8246116))

(assert (=> b!7823428 m!8246236))

(declare-fun m!8246244 () Bool)

(assert (=> b!7823428 m!8246244))

(assert (=> b!7823428 m!8246112))

(assert (=> b!7823428 m!8246238))

(assert (=> b!7823428 m!8246244))

(assert (=> b!7823428 m!8246238))

(declare-fun m!8246246 () Bool)

(assert (=> b!7823428 m!8246246))

(assert (=> b!7823432 m!8246112))

(assert (=> b!7823432 m!8246236))

(assert (=> bm!725621 m!8246112))

(assert (=> bm!725621 m!8246114))

(assert (=> b!7823436 m!8246112))

(assert (=> b!7823436 m!8246238))

(assert (=> b!7823436 m!8246238))

(assert (=> b!7823436 m!8246240))

(assert (=> d!2349888 m!8246112))

(assert (=> d!2349888 m!8246114))

(assert (=> d!2349888 m!8246116))

(declare-fun m!8246248 () Bool)

(assert (=> d!2349888 m!8246248))

(assert (=> b!7823149 d!2349888))

(declare-fun b!7823459 () Bool)

(declare-fun c!1439712 () Bool)

(assert (=> b!7823459 (= c!1439712 (nullable!9296 (regOne!42418 r2!6199)))))

(declare-fun e!4628447 () Regex!20953)

(declare-fun e!4628448 () Regex!20953)

(assert (=> b!7823459 (= e!4628447 e!4628448)))

(declare-fun bm!725630 () Bool)

(declare-fun call!725637 () Regex!20953)

(declare-fun call!725636 () Regex!20953)

(assert (=> bm!725630 (= call!725637 call!725636)))

(declare-fun b!7823460 () Bool)

(declare-fun e!4628445 () Regex!20953)

(assert (=> b!7823460 (= e!4628445 EmptyLang!20953)))

(declare-fun b!7823461 () Bool)

(declare-fun e!4628446 () Regex!20953)

(assert (=> b!7823461 (= e!4628446 (ite (= (head!15985 s2!3721) (c!1439622 r2!6199)) EmptyExpr!20953 EmptyLang!20953))))

(declare-fun d!2349890 () Bool)

(declare-fun lt!2676690 () Regex!20953)

(assert (=> d!2349890 (validRegex!11367 lt!2676690)))

(assert (=> d!2349890 (= lt!2676690 e!4628445)))

(declare-fun c!1439711 () Bool)

(assert (=> d!2349890 (= c!1439711 (or ((_ is EmptyExpr!20953) r2!6199) ((_ is EmptyLang!20953) r2!6199)))))

(assert (=> d!2349890 (validRegex!11367 r2!6199)))

(assert (=> d!2349890 (= (derivativeStep!6255 r2!6199 (head!15985 s2!3721)) lt!2676690)))

(declare-fun b!7823462 () Bool)

(assert (=> b!7823462 (= e!4628447 (Concat!29798 call!725637 r2!6199))))

(declare-fun b!7823463 () Bool)

(declare-fun call!725638 () Regex!20953)

(assert (=> b!7823463 (= e!4628448 (Union!20953 (Concat!29798 call!725638 (regTwo!42418 r2!6199)) EmptyLang!20953))))

(declare-fun b!7823464 () Bool)

(declare-fun c!1439708 () Bool)

(assert (=> b!7823464 (= c!1439708 ((_ is Union!20953) r2!6199))))

(declare-fun e!4628444 () Regex!20953)

(assert (=> b!7823464 (= e!4628446 e!4628444)))

(declare-fun bm!725631 () Bool)

(assert (=> bm!725631 (= call!725638 call!725637)))

(declare-fun b!7823465 () Bool)

(declare-fun call!725635 () Regex!20953)

(assert (=> b!7823465 (= e!4628448 (Union!20953 (Concat!29798 call!725638 (regTwo!42418 r2!6199)) call!725635))))

(declare-fun b!7823466 () Bool)

(assert (=> b!7823466 (= e!4628444 e!4628447)))

(declare-fun c!1439709 () Bool)

(assert (=> b!7823466 (= c!1439709 ((_ is Star!20953) r2!6199))))

(declare-fun bm!725632 () Bool)

(assert (=> bm!725632 (= call!725636 (derivativeStep!6255 (ite c!1439708 (regOne!42419 r2!6199) (ite c!1439709 (reg!21282 r2!6199) (regOne!42418 r2!6199))) (head!15985 s2!3721)))))

(declare-fun bm!725633 () Bool)

(assert (=> bm!725633 (= call!725635 (derivativeStep!6255 (ite c!1439708 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199)) (head!15985 s2!3721)))))

(declare-fun b!7823467 () Bool)

(assert (=> b!7823467 (= e!4628445 e!4628446)))

(declare-fun c!1439710 () Bool)

(assert (=> b!7823467 (= c!1439710 ((_ is ElementMatch!20953) r2!6199))))

(declare-fun b!7823468 () Bool)

(assert (=> b!7823468 (= e!4628444 (Union!20953 call!725636 call!725635))))

(assert (= (and d!2349890 c!1439711) b!7823460))

(assert (= (and d!2349890 (not c!1439711)) b!7823467))

(assert (= (and b!7823467 c!1439710) b!7823461))

(assert (= (and b!7823467 (not c!1439710)) b!7823464))

(assert (= (and b!7823464 c!1439708) b!7823468))

(assert (= (and b!7823464 (not c!1439708)) b!7823466))

(assert (= (and b!7823466 c!1439709) b!7823462))

(assert (= (and b!7823466 (not c!1439709)) b!7823459))

(assert (= (and b!7823459 c!1439712) b!7823465))

(assert (= (and b!7823459 (not c!1439712)) b!7823463))

(assert (= (or b!7823465 b!7823463) bm!725631))

(assert (= (or b!7823462 bm!725631) bm!725630))

(assert (= (or b!7823468 bm!725630) bm!725632))

(assert (= (or b!7823468 b!7823465) bm!725633))

(declare-fun m!8246250 () Bool)

(assert (=> b!7823459 m!8246250))

(declare-fun m!8246252 () Bool)

(assert (=> d!2349890 m!8246252))

(assert (=> d!2349890 m!8246030))

(assert (=> bm!725632 m!8246110))

(declare-fun m!8246254 () Bool)

(assert (=> bm!725632 m!8246254))

(assert (=> bm!725633 m!8246110))

(declare-fun m!8246256 () Bool)

(assert (=> bm!725633 m!8246256))

(assert (=> b!7823149 d!2349890))

(declare-fun d!2349892 () Bool)

(assert (=> d!2349892 (= (head!15985 s2!3721) (h!80114 s2!3721))))

(assert (=> b!7823149 d!2349892))

(declare-fun d!2349894 () Bool)

(assert (=> d!2349894 (= (tail!15526 s2!3721) (t!388525 s2!3721))))

(assert (=> b!7823149 d!2349894))

(declare-fun d!2349896 () Bool)

(declare-fun c!1439715 () Bool)

(assert (=> d!2349896 (= c!1439715 ((_ is Nil!73666) lt!2676676))))

(declare-fun e!4628451 () (InoxSet C!42232))

(assert (=> d!2349896 (= (content!15637 lt!2676676) e!4628451)))

(declare-fun b!7823473 () Bool)

(assert (=> b!7823473 (= e!4628451 ((as const (Array C!42232 Bool)) false))))

(declare-fun b!7823474 () Bool)

(assert (=> b!7823474 (= e!4628451 ((_ map or) (store ((as const (Array C!42232 Bool)) false) (h!80114 lt!2676676) true) (content!15637 (t!388525 lt!2676676))))))

(assert (= (and d!2349896 c!1439715) b!7823473))

(assert (= (and d!2349896 (not c!1439715)) b!7823474))

(declare-fun m!8246258 () Bool)

(assert (=> b!7823474 m!8246258))

(declare-fun m!8246260 () Bool)

(assert (=> b!7823474 m!8246260))

(assert (=> d!2349866 d!2349896))

(declare-fun d!2349898 () Bool)

(declare-fun c!1439716 () Bool)

(assert (=> d!2349898 (= c!1439716 ((_ is Nil!73666) s1!4101))))

(declare-fun e!4628452 () (InoxSet C!42232))

(assert (=> d!2349898 (= (content!15637 s1!4101) e!4628452)))

(declare-fun b!7823475 () Bool)

(assert (=> b!7823475 (= e!4628452 ((as const (Array C!42232 Bool)) false))))

(declare-fun b!7823476 () Bool)

(assert (=> b!7823476 (= e!4628452 ((_ map or) (store ((as const (Array C!42232 Bool)) false) (h!80114 s1!4101) true) (content!15637 (t!388525 s1!4101))))))

(assert (= (and d!2349898 c!1439716) b!7823475))

(assert (= (and d!2349898 (not c!1439716)) b!7823476))

(declare-fun m!8246262 () Bool)

(assert (=> b!7823476 m!8246262))

(declare-fun m!8246264 () Bool)

(assert (=> b!7823476 m!8246264))

(assert (=> d!2349866 d!2349898))

(declare-fun d!2349900 () Bool)

(declare-fun c!1439717 () Bool)

(assert (=> d!2349900 (= c!1439717 ((_ is Nil!73666) s2!3721))))

(declare-fun e!4628453 () (InoxSet C!42232))

(assert (=> d!2349900 (= (content!15637 s2!3721) e!4628453)))

(declare-fun b!7823477 () Bool)

(assert (=> b!7823477 (= e!4628453 ((as const (Array C!42232 Bool)) false))))

(declare-fun b!7823478 () Bool)

(assert (=> b!7823478 (= e!4628453 ((_ map or) (store ((as const (Array C!42232 Bool)) false) (h!80114 s2!3721) true) (content!15637 (t!388525 s2!3721))))))

(assert (= (and d!2349900 c!1439717) b!7823477))

(assert (= (and d!2349900 (not c!1439717)) b!7823478))

(declare-fun m!8246266 () Bool)

(assert (=> b!7823478 m!8246266))

(declare-fun m!8246268 () Bool)

(assert (=> b!7823478 m!8246268))

(assert (=> d!2349866 d!2349900))

(declare-fun d!2349902 () Bool)

(assert (=> d!2349902 (= (isEmpty!42284 s1Rec!453) ((_ is Nil!73666) s1Rec!453))))

(assert (=> bm!725604 d!2349902))

(declare-fun d!2349904 () Bool)

(declare-fun c!1439718 () Bool)

(assert (=> d!2349904 (= c!1439718 ((_ is Nil!73666) lt!2676673))))

(declare-fun e!4628454 () (InoxSet C!42232))

(assert (=> d!2349904 (= (content!15637 lt!2676673) e!4628454)))

(declare-fun b!7823479 () Bool)

(assert (=> b!7823479 (= e!4628454 ((as const (Array C!42232 Bool)) false))))

(declare-fun b!7823480 () Bool)

(assert (=> b!7823480 (= e!4628454 ((_ map or) (store ((as const (Array C!42232 Bool)) false) (h!80114 lt!2676673) true) (content!15637 (t!388525 lt!2676673))))))

(assert (= (and d!2349904 c!1439718) b!7823479))

(assert (= (and d!2349904 (not c!1439718)) b!7823480))

(declare-fun m!8246270 () Bool)

(assert (=> b!7823480 m!8246270))

(declare-fun m!8246272 () Bool)

(assert (=> b!7823480 m!8246272))

(assert (=> d!2349858 d!2349904))

(declare-fun d!2349906 () Bool)

(declare-fun c!1439719 () Bool)

(assert (=> d!2349906 (= c!1439719 ((_ is Nil!73666) s1Rec!453))))

(declare-fun e!4628455 () (InoxSet C!42232))

(assert (=> d!2349906 (= (content!15637 s1Rec!453) e!4628455)))

(declare-fun b!7823481 () Bool)

(assert (=> b!7823481 (= e!4628455 ((as const (Array C!42232 Bool)) false))))

(declare-fun b!7823482 () Bool)

(assert (=> b!7823482 (= e!4628455 ((_ map or) (store ((as const (Array C!42232 Bool)) false) (h!80114 s1Rec!453) true) (content!15637 (t!388525 s1Rec!453))))))

(assert (= (and d!2349906 c!1439719) b!7823481))

(assert (= (and d!2349906 (not c!1439719)) b!7823482))

(declare-fun m!8246274 () Bool)

(assert (=> b!7823482 m!8246274))

(declare-fun m!8246276 () Bool)

(assert (=> b!7823482 m!8246276))

(assert (=> d!2349858 d!2349906))

(declare-fun d!2349908 () Bool)

(declare-fun c!1439720 () Bool)

(assert (=> d!2349908 (= c!1439720 ((_ is Nil!73666) s2Rec!453))))

(declare-fun e!4628456 () (InoxSet C!42232))

(assert (=> d!2349908 (= (content!15637 s2Rec!453) e!4628456)))

(declare-fun b!7823483 () Bool)

(assert (=> b!7823483 (= e!4628456 ((as const (Array C!42232 Bool)) false))))

(declare-fun b!7823484 () Bool)

(assert (=> b!7823484 (= e!4628456 ((_ map or) (store ((as const (Array C!42232 Bool)) false) (h!80114 s2Rec!453) true) (content!15637 (t!388525 s2Rec!453))))))

(assert (= (and d!2349908 c!1439720) b!7823483))

(assert (= (and d!2349908 (not c!1439720)) b!7823484))

(declare-fun m!8246278 () Bool)

(assert (=> b!7823484 m!8246278))

(declare-fun m!8246280 () Bool)

(assert (=> b!7823484 m!8246280))

(assert (=> d!2349858 d!2349908))

(assert (=> b!7823092 d!2349880))

(assert (=> b!7823092 d!2349882))

(assert (=> b!7823153 d!2349892))

(declare-fun d!2349910 () Bool)

(assert (=> d!2349910 (= (head!15985 s1!4101) (h!80114 s1!4101))))

(assert (=> b!7823065 d!2349910))

(declare-fun b!7823488 () Bool)

(declare-fun e!4628459 () Bool)

(assert (=> b!7823488 (= e!4628459 (>= (size!42753 (tail!15526 s1!4101)) (size!42753 (tail!15526 s1Rec!453))))))

(declare-fun b!7823486 () Bool)

(declare-fun res!3113862 () Bool)

(declare-fun e!4628458 () Bool)

(assert (=> b!7823486 (=> (not res!3113862) (not e!4628458))))

(assert (=> b!7823486 (= res!3113862 (= (head!15985 (tail!15526 s1Rec!453)) (head!15985 (tail!15526 s1!4101))))))

(declare-fun d!2349912 () Bool)

(assert (=> d!2349912 e!4628459))

(declare-fun res!3113861 () Bool)

(assert (=> d!2349912 (=> res!3113861 e!4628459)))

(declare-fun lt!2676691 () Bool)

(assert (=> d!2349912 (= res!3113861 (not lt!2676691))))

(declare-fun e!4628457 () Bool)

(assert (=> d!2349912 (= lt!2676691 e!4628457)))

(declare-fun res!3113863 () Bool)

(assert (=> d!2349912 (=> res!3113863 e!4628457)))

(assert (=> d!2349912 (= res!3113863 ((_ is Nil!73666) (tail!15526 s1Rec!453)))))

(assert (=> d!2349912 (= (isPrefix!6303 (tail!15526 s1Rec!453) (tail!15526 s1!4101)) lt!2676691)))

(declare-fun b!7823487 () Bool)

(assert (=> b!7823487 (= e!4628458 (isPrefix!6303 (tail!15526 (tail!15526 s1Rec!453)) (tail!15526 (tail!15526 s1!4101))))))

(declare-fun b!7823485 () Bool)

(assert (=> b!7823485 (= e!4628457 e!4628458)))

(declare-fun res!3113860 () Bool)

(assert (=> b!7823485 (=> (not res!3113860) (not e!4628458))))

(assert (=> b!7823485 (= res!3113860 (not ((_ is Nil!73666) (tail!15526 s1!4101))))))

(assert (= (and d!2349912 (not res!3113863)) b!7823485))

(assert (= (and b!7823485 res!3113860) b!7823486))

(assert (= (and b!7823486 res!3113862) b!7823487))

(assert (= (and d!2349912 (not res!3113861)) b!7823488))

(assert (=> b!7823488 m!8246064))

(declare-fun m!8246282 () Bool)

(assert (=> b!7823488 m!8246282))

(assert (=> b!7823488 m!8246098))

(declare-fun m!8246284 () Bool)

(assert (=> b!7823488 m!8246284))

(assert (=> b!7823486 m!8246098))

(declare-fun m!8246286 () Bool)

(assert (=> b!7823486 m!8246286))

(assert (=> b!7823486 m!8246064))

(declare-fun m!8246288 () Bool)

(assert (=> b!7823486 m!8246288))

(assert (=> b!7823487 m!8246098))

(declare-fun m!8246290 () Bool)

(assert (=> b!7823487 m!8246290))

(assert (=> b!7823487 m!8246064))

(declare-fun m!8246292 () Bool)

(assert (=> b!7823487 m!8246292))

(assert (=> b!7823487 m!8246290))

(assert (=> b!7823487 m!8246292))

(declare-fun m!8246294 () Bool)

(assert (=> b!7823487 m!8246294))

(assert (=> b!7823130 d!2349912))

(declare-fun d!2349914 () Bool)

(assert (=> d!2349914 (= (tail!15526 s1Rec!453) (t!388525 s1Rec!453))))

(assert (=> b!7823130 d!2349914))

(declare-fun d!2349916 () Bool)

(assert (=> d!2349916 (= (tail!15526 s1!4101) (t!388525 s1!4101))))

(assert (=> b!7823130 d!2349916))

(declare-fun d!2349918 () Bool)

(assert (=> d!2349918 (= (isEmpty!42284 (tail!15526 s1Rec!453)) ((_ is Nil!73666) (tail!15526 s1Rec!453)))))

(assert (=> b!7823143 d!2349918))

(assert (=> b!7823143 d!2349914))

(declare-fun b!7823489 () Bool)

(declare-fun e!4628462 () Bool)

(declare-fun call!725639 () Bool)

(assert (=> b!7823489 (= e!4628462 call!725639)))

(declare-fun b!7823490 () Bool)

(declare-fun e!4628464 () Bool)

(declare-fun call!725641 () Bool)

(assert (=> b!7823490 (= e!4628464 call!725641)))

(declare-fun c!1439722 () Bool)

(declare-fun bm!725634 () Bool)

(declare-fun c!1439721 () Bool)

(assert (=> bm!725634 (= call!725641 (validRegex!11367 (ite c!1439721 (reg!21282 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (ite c!1439722 (regOne!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regTwo!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261)))))))))

(declare-fun b!7823492 () Bool)

(declare-fun res!3113866 () Bool)

(declare-fun e!4628463 () Bool)

(assert (=> b!7823492 (=> res!3113866 e!4628463)))

(assert (=> b!7823492 (= res!3113866 (not ((_ is Concat!29798) (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261)))))))

(declare-fun e!4628461 () Bool)

(assert (=> b!7823492 (= e!4628461 e!4628463)))

(declare-fun b!7823493 () Bool)

(declare-fun e!4628460 () Bool)

(assert (=> b!7823493 (= e!4628460 e!4628461)))

(assert (=> b!7823493 (= c!1439722 ((_ is Union!20953) (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))))))

(declare-fun b!7823494 () Bool)

(declare-fun e!4628466 () Bool)

(declare-fun call!725640 () Bool)

(assert (=> b!7823494 (= e!4628466 call!725640)))

(declare-fun bm!725635 () Bool)

(assert (=> bm!725635 (= call!725639 (validRegex!11367 (ite c!1439722 (regTwo!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regOne!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))))))))

(declare-fun bm!725636 () Bool)

(assert (=> bm!725636 (= call!725640 call!725641)))

(declare-fun b!7823495 () Bool)

(declare-fun e!4628465 () Bool)

(assert (=> b!7823495 (= e!4628465 e!4628460)))

(assert (=> b!7823495 (= c!1439721 ((_ is Star!20953) (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))))))

(declare-fun b!7823496 () Bool)

(declare-fun res!3113865 () Bool)

(assert (=> b!7823496 (=> (not res!3113865) (not e!4628462))))

(assert (=> b!7823496 (= res!3113865 call!725640)))

(assert (=> b!7823496 (= e!4628461 e!4628462)))

(declare-fun b!7823497 () Bool)

(assert (=> b!7823497 (= e!4628463 e!4628466)))

(declare-fun res!3113867 () Bool)

(assert (=> b!7823497 (=> (not res!3113867) (not e!4628466))))

(assert (=> b!7823497 (= res!3113867 call!725639)))

(declare-fun d!2349920 () Bool)

(declare-fun res!3113868 () Bool)

(assert (=> d!2349920 (=> res!3113868 e!4628465)))

(assert (=> d!2349920 (= res!3113868 ((_ is ElementMatch!20953) (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))))))

(assert (=> d!2349920 (= (validRegex!11367 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) e!4628465)))

(declare-fun b!7823491 () Bool)

(assert (=> b!7823491 (= e!4628460 e!4628464)))

(declare-fun res!3113864 () Bool)

(assert (=> b!7823491 (= res!3113864 (not (nullable!9296 (reg!21282 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))))))))

(assert (=> b!7823491 (=> (not res!3113864) (not e!4628464))))

(assert (= (and d!2349920 (not res!3113868)) b!7823495))

(assert (= (and b!7823495 c!1439721) b!7823491))

(assert (= (and b!7823495 (not c!1439721)) b!7823493))

(assert (= (and b!7823491 res!3113864) b!7823490))

(assert (= (and b!7823493 c!1439722) b!7823496))

(assert (= (and b!7823493 (not c!1439722)) b!7823492))

(assert (= (and b!7823496 res!3113865) b!7823489))

(assert (= (and b!7823492 (not res!3113866)) b!7823497))

(assert (= (and b!7823497 res!3113867) b!7823494))

(assert (= (or b!7823489 b!7823497) bm!725635))

(assert (= (or b!7823496 b!7823494) bm!725636))

(assert (= (or b!7823490 bm!725636) bm!725634))

(declare-fun m!8246296 () Bool)

(assert (=> bm!725634 m!8246296))

(declare-fun m!8246298 () Bool)

(assert (=> bm!725635 m!8246298))

(declare-fun m!8246300 () Bool)

(assert (=> b!7823491 m!8246300))

(assert (=> bm!725596 d!2349920))

(declare-fun d!2349922 () Bool)

(declare-fun nullableFct!3665 (Regex!20953) Bool)

(assert (=> d!2349922 (= (nullable!9296 r2!6199) (nullableFct!3665 r2!6199))))

(declare-fun bs!1966752 () Bool)

(assert (= bs!1966752 d!2349922))

(declare-fun m!8246302 () Bool)

(assert (=> bs!1966752 m!8246302))

(assert (=> b!7823158 d!2349922))

(declare-fun d!2349924 () Bool)

(declare-fun lt!2676692 () Int)

(assert (=> d!2349924 (>= lt!2676692 0)))

(declare-fun e!4628467 () Int)

(assert (=> d!2349924 (= lt!2676692 e!4628467)))

(declare-fun c!1439723 () Bool)

(assert (=> d!2349924 (= c!1439723 ((_ is Nil!73666) (t!388525 s!14274)))))

(assert (=> d!2349924 (= (size!42753 (t!388525 s!14274)) lt!2676692)))

(declare-fun b!7823498 () Bool)

(assert (=> b!7823498 (= e!4628467 0)))

(declare-fun b!7823499 () Bool)

(assert (=> b!7823499 (= e!4628467 (+ 1 (size!42753 (t!388525 (t!388525 s!14274)))))))

(assert (= (and d!2349924 c!1439723) b!7823498))

(assert (= (and d!2349924 (not c!1439723)) b!7823499))

(declare-fun m!8246304 () Bool)

(assert (=> b!7823499 m!8246304))

(assert (=> b!7823182 d!2349924))

(assert (=> b!7823145 d!2349918))

(assert (=> b!7823145 d!2349914))

(declare-fun b!7823503 () Bool)

(declare-fun e!4628469 () Bool)

(declare-fun lt!2676693 () List!73790)

(assert (=> b!7823503 (= e!4628469 (or (not (= s2Rec!453 Nil!73666)) (= lt!2676693 (t!388525 s1Rec!453))))))

(declare-fun b!7823502 () Bool)

(declare-fun res!3113870 () Bool)

(assert (=> b!7823502 (=> (not res!3113870) (not e!4628469))))

(assert (=> b!7823502 (= res!3113870 (= (size!42753 lt!2676693) (+ (size!42753 (t!388525 s1Rec!453)) (size!42753 s2Rec!453))))))

(declare-fun b!7823500 () Bool)

(declare-fun e!4628468 () List!73790)

(assert (=> b!7823500 (= e!4628468 s2Rec!453)))

(declare-fun b!7823501 () Bool)

(assert (=> b!7823501 (= e!4628468 (Cons!73666 (h!80114 (t!388525 s1Rec!453)) (++!17987 (t!388525 (t!388525 s1Rec!453)) s2Rec!453)))))

(declare-fun d!2349926 () Bool)

(assert (=> d!2349926 e!4628469))

(declare-fun res!3113869 () Bool)

(assert (=> d!2349926 (=> (not res!3113869) (not e!4628469))))

(assert (=> d!2349926 (= res!3113869 (= (content!15637 lt!2676693) ((_ map or) (content!15637 (t!388525 s1Rec!453)) (content!15637 s2Rec!453))))))

(assert (=> d!2349926 (= lt!2676693 e!4628468)))

(declare-fun c!1439724 () Bool)

(assert (=> d!2349926 (= c!1439724 ((_ is Nil!73666) (t!388525 s1Rec!453)))))

(assert (=> d!2349926 (= (++!17987 (t!388525 s1Rec!453) s2Rec!453) lt!2676693)))

(assert (= (and d!2349926 c!1439724) b!7823500))

(assert (= (and d!2349926 (not c!1439724)) b!7823501))

(assert (= (and d!2349926 res!3113869) b!7823502))

(assert (= (and b!7823502 res!3113870) b!7823503))

(declare-fun m!8246306 () Bool)

(assert (=> b!7823502 m!8246306))

(assert (=> b!7823502 m!8246142))

(assert (=> b!7823502 m!8246130))

(declare-fun m!8246308 () Bool)

(assert (=> b!7823501 m!8246308))

(declare-fun m!8246310 () Bool)

(assert (=> d!2349926 m!8246310))

(assert (=> d!2349926 m!8246276))

(assert (=> d!2349926 m!8246138))

(assert (=> b!7823178 d!2349926))

(declare-fun e!4628471 () Bool)

(declare-fun lt!2676694 () List!73790)

(declare-fun b!7823507 () Bool)

(assert (=> b!7823507 (= e!4628471 (or (not (= s2!3721 Nil!73666)) (= lt!2676694 (t!388525 s1!4101))))))

(declare-fun b!7823506 () Bool)

(declare-fun res!3113872 () Bool)

(assert (=> b!7823506 (=> (not res!3113872) (not e!4628471))))

(assert (=> b!7823506 (= res!3113872 (= (size!42753 lt!2676694) (+ (size!42753 (t!388525 s1!4101)) (size!42753 s2!3721))))))

(declare-fun b!7823504 () Bool)

(declare-fun e!4628470 () List!73790)

(assert (=> b!7823504 (= e!4628470 s2!3721)))

(declare-fun b!7823505 () Bool)

(assert (=> b!7823505 (= e!4628470 (Cons!73666 (h!80114 (t!388525 s1!4101)) (++!17987 (t!388525 (t!388525 s1!4101)) s2!3721)))))

(declare-fun d!2349928 () Bool)

(assert (=> d!2349928 e!4628471))

(declare-fun res!3113871 () Bool)

(assert (=> d!2349928 (=> (not res!3113871) (not e!4628471))))

(assert (=> d!2349928 (= res!3113871 (= (content!15637 lt!2676694) ((_ map or) (content!15637 (t!388525 s1!4101)) (content!15637 s2!3721))))))

(assert (=> d!2349928 (= lt!2676694 e!4628470)))

(declare-fun c!1439725 () Bool)

(assert (=> d!2349928 (= c!1439725 ((_ is Nil!73666) (t!388525 s1!4101)))))

(assert (=> d!2349928 (= (++!17987 (t!388525 s1!4101) s2!3721) lt!2676694)))

(assert (= (and d!2349928 c!1439725) b!7823504))

(assert (= (and d!2349928 (not c!1439725)) b!7823505))

(assert (= (and d!2349928 res!3113871) b!7823506))

(assert (= (and b!7823506 res!3113872) b!7823507))

(declare-fun m!8246312 () Bool)

(assert (=> b!7823506 m!8246312))

(assert (=> b!7823506 m!8246038))

(assert (=> b!7823506 m!8246146))

(declare-fun m!8246314 () Bool)

(assert (=> b!7823505 m!8246314))

(declare-fun m!8246316 () Bool)

(assert (=> d!2349928 m!8246316))

(assert (=> d!2349928 m!8246264))

(assert (=> d!2349928 m!8246154))

(assert (=> b!7823186 d!2349928))

(declare-fun d!2349930 () Bool)

(assert (=> d!2349930 (= (isEmpty!42284 s1!4101) ((_ is Nil!73666) s1!4101))))

(assert (=> bm!725593 d!2349930))

(declare-fun d!2349932 () Bool)

(assert (=> d!2349932 (= (isEmpty!42284 (tail!15526 s1!4101)) ((_ is Nil!73666) (tail!15526 s1!4101)))))

(assert (=> b!7823076 d!2349932))

(assert (=> b!7823076 d!2349916))

(declare-fun b!7823508 () Bool)

(declare-fun e!4628474 () Bool)

(assert (=> b!7823508 (= e!4628474 (not (= (head!15985 (tail!15526 s2Rec!453)) (c!1439622 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))))))))

(declare-fun b!7823509 () Bool)

(declare-fun e!4628477 () Bool)

(assert (=> b!7823509 (= e!4628477 e!4628474)))

(declare-fun res!3113880 () Bool)

(assert (=> b!7823509 (=> res!3113880 e!4628474)))

(declare-fun call!725642 () Bool)

(assert (=> b!7823509 (= res!3113880 call!725642)))

(declare-fun b!7823510 () Bool)

(declare-fun e!4628473 () Bool)

(declare-fun lt!2676695 () Bool)

(assert (=> b!7823510 (= e!4628473 (= lt!2676695 call!725642))))

(declare-fun b!7823511 () Bool)

(declare-fun e!4628478 () Bool)

(assert (=> b!7823511 (= e!4628478 (matchR!10409 (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)) (head!15985 (tail!15526 s2Rec!453))) (tail!15526 (tail!15526 s2Rec!453))))))

(declare-fun d!2349934 () Bool)

(assert (=> d!2349934 e!4628473))

(declare-fun c!1439727 () Bool)

(assert (=> d!2349934 (= c!1439727 ((_ is EmptyExpr!20953) (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))))))

(assert (=> d!2349934 (= lt!2676695 e!4628478)))

(declare-fun c!1439726 () Bool)

(assert (=> d!2349934 (= c!1439726 (isEmpty!42284 (tail!15526 s2Rec!453)))))

(assert (=> d!2349934 (validRegex!11367 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)))))

(assert (=> d!2349934 (= (matchR!10409 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)) (tail!15526 s2Rec!453)) lt!2676695)))

(declare-fun b!7823512 () Bool)

(declare-fun e!4628475 () Bool)

(assert (=> b!7823512 (= e!4628475 e!4628477)))

(declare-fun res!3113879 () Bool)

(assert (=> b!7823512 (=> (not res!3113879) (not e!4628477))))

(assert (=> b!7823512 (= res!3113879 (not lt!2676695))))

(declare-fun b!7823513 () Bool)

(declare-fun e!4628476 () Bool)

(assert (=> b!7823513 (= e!4628476 (not lt!2676695))))

(declare-fun b!7823514 () Bool)

(declare-fun res!3113873 () Bool)

(assert (=> b!7823514 (=> res!3113873 e!4628475)))

(declare-fun e!4628472 () Bool)

(assert (=> b!7823514 (= res!3113873 e!4628472)))

(declare-fun res!3113875 () Bool)

(assert (=> b!7823514 (=> (not res!3113875) (not e!4628472))))

(assert (=> b!7823514 (= res!3113875 lt!2676695)))

(declare-fun b!7823515 () Bool)

(assert (=> b!7823515 (= e!4628472 (= (head!15985 (tail!15526 s2Rec!453)) (c!1439622 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)))))))

(declare-fun b!7823516 () Bool)

(declare-fun res!3113874 () Bool)

(assert (=> b!7823516 (=> res!3113874 e!4628475)))

(assert (=> b!7823516 (= res!3113874 (not ((_ is ElementMatch!20953) (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)))))))

(assert (=> b!7823516 (= e!4628476 e!4628475)))

(declare-fun b!7823517 () Bool)

(assert (=> b!7823517 (= e!4628473 e!4628476)))

(declare-fun c!1439728 () Bool)

(assert (=> b!7823517 (= c!1439728 ((_ is EmptyLang!20953) (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))))))

(declare-fun bm!725637 () Bool)

(assert (=> bm!725637 (= call!725642 (isEmpty!42284 (tail!15526 s2Rec!453)))))

(declare-fun b!7823518 () Bool)

(declare-fun res!3113878 () Bool)

(assert (=> b!7823518 (=> (not res!3113878) (not e!4628472))))

(assert (=> b!7823518 (= res!3113878 (not call!725642))))

(declare-fun b!7823519 () Bool)

(declare-fun res!3113876 () Bool)

(assert (=> b!7823519 (=> res!3113876 e!4628474)))

(assert (=> b!7823519 (= res!3113876 (not (isEmpty!42284 (tail!15526 (tail!15526 s2Rec!453)))))))

(declare-fun b!7823520 () Bool)

(assert (=> b!7823520 (= e!4628478 (nullable!9296 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))))))

(declare-fun b!7823521 () Bool)

(declare-fun res!3113877 () Bool)

(assert (=> b!7823521 (=> (not res!3113877) (not e!4628472))))

(assert (=> b!7823521 (= res!3113877 (isEmpty!42284 (tail!15526 (tail!15526 s2Rec!453))))))

(assert (= (and d!2349934 c!1439726) b!7823520))

(assert (= (and d!2349934 (not c!1439726)) b!7823511))

(assert (= (and d!2349934 c!1439727) b!7823510))

(assert (= (and d!2349934 (not c!1439727)) b!7823517))

(assert (= (and b!7823517 c!1439728) b!7823513))

(assert (= (and b!7823517 (not c!1439728)) b!7823516))

(assert (= (and b!7823516 (not res!3113874)) b!7823514))

(assert (= (and b!7823514 res!3113875) b!7823518))

(assert (= (and b!7823518 res!3113878) b!7823521))

(assert (= (and b!7823521 res!3113877) b!7823515))

(assert (= (and b!7823514 (not res!3113873)) b!7823512))

(assert (= (and b!7823512 res!3113879) b!7823509))

(assert (= (and b!7823509 (not res!3113880)) b!7823519))

(assert (= (and b!7823519 (not res!3113876)) b!7823508))

(assert (= (or b!7823510 b!7823509 b!7823518) bm!725637))

(assert (=> b!7823508 m!8246078))

(declare-fun m!8246318 () Bool)

(assert (=> b!7823508 m!8246318))

(assert (=> b!7823521 m!8246078))

(declare-fun m!8246320 () Bool)

(assert (=> b!7823521 m!8246320))

(assert (=> b!7823521 m!8246320))

(declare-fun m!8246322 () Bool)

(assert (=> b!7823521 m!8246322))

(assert (=> b!7823520 m!8246084))

(declare-fun m!8246324 () Bool)

(assert (=> b!7823520 m!8246324))

(assert (=> b!7823511 m!8246078))

(assert (=> b!7823511 m!8246318))

(assert (=> b!7823511 m!8246084))

(assert (=> b!7823511 m!8246318))

(declare-fun m!8246326 () Bool)

(assert (=> b!7823511 m!8246326))

(assert (=> b!7823511 m!8246078))

(assert (=> b!7823511 m!8246320))

(assert (=> b!7823511 m!8246326))

(assert (=> b!7823511 m!8246320))

(declare-fun m!8246328 () Bool)

(assert (=> b!7823511 m!8246328))

(assert (=> b!7823515 m!8246078))

(assert (=> b!7823515 m!8246318))

(assert (=> bm!725637 m!8246078))

(assert (=> bm!725637 m!8246080))

(assert (=> b!7823519 m!8246078))

(assert (=> b!7823519 m!8246320))

(assert (=> b!7823519 m!8246320))

(assert (=> b!7823519 m!8246322))

(assert (=> d!2349934 m!8246078))

(assert (=> d!2349934 m!8246080))

(assert (=> d!2349934 m!8246084))

(declare-fun m!8246330 () Bool)

(assert (=> d!2349934 m!8246330))

(assert (=> b!7823082 d!2349934))

(declare-fun b!7823522 () Bool)

(declare-fun c!1439733 () Bool)

(assert (=> b!7823522 (= c!1439733 (nullable!9296 (regOne!42418 r2!6199)))))

(declare-fun e!4628482 () Regex!20953)

(declare-fun e!4628483 () Regex!20953)

(assert (=> b!7823522 (= e!4628482 e!4628483)))

(declare-fun bm!725638 () Bool)

(declare-fun call!725645 () Regex!20953)

(declare-fun call!725644 () Regex!20953)

(assert (=> bm!725638 (= call!725645 call!725644)))

(declare-fun b!7823523 () Bool)

(declare-fun e!4628480 () Regex!20953)

(assert (=> b!7823523 (= e!4628480 EmptyLang!20953)))

(declare-fun b!7823524 () Bool)

(declare-fun e!4628481 () Regex!20953)

(assert (=> b!7823524 (= e!4628481 (ite (= (head!15985 s2Rec!453) (c!1439622 r2!6199)) EmptyExpr!20953 EmptyLang!20953))))

(declare-fun d!2349936 () Bool)

(declare-fun lt!2676696 () Regex!20953)

(assert (=> d!2349936 (validRegex!11367 lt!2676696)))

(assert (=> d!2349936 (= lt!2676696 e!4628480)))

(declare-fun c!1439732 () Bool)

(assert (=> d!2349936 (= c!1439732 (or ((_ is EmptyExpr!20953) r2!6199) ((_ is EmptyLang!20953) r2!6199)))))

(assert (=> d!2349936 (validRegex!11367 r2!6199)))

(assert (=> d!2349936 (= (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)) lt!2676696)))

(declare-fun b!7823525 () Bool)

(assert (=> b!7823525 (= e!4628482 (Concat!29798 call!725645 r2!6199))))

(declare-fun b!7823526 () Bool)

(declare-fun call!725646 () Regex!20953)

(assert (=> b!7823526 (= e!4628483 (Union!20953 (Concat!29798 call!725646 (regTwo!42418 r2!6199)) EmptyLang!20953))))

(declare-fun b!7823527 () Bool)

(declare-fun c!1439729 () Bool)

(assert (=> b!7823527 (= c!1439729 ((_ is Union!20953) r2!6199))))

(declare-fun e!4628479 () Regex!20953)

(assert (=> b!7823527 (= e!4628481 e!4628479)))

(declare-fun bm!725639 () Bool)

(assert (=> bm!725639 (= call!725646 call!725645)))

(declare-fun call!725643 () Regex!20953)

(declare-fun b!7823528 () Bool)

(assert (=> b!7823528 (= e!4628483 (Union!20953 (Concat!29798 call!725646 (regTwo!42418 r2!6199)) call!725643))))

(declare-fun b!7823529 () Bool)

(assert (=> b!7823529 (= e!4628479 e!4628482)))

(declare-fun c!1439730 () Bool)

(assert (=> b!7823529 (= c!1439730 ((_ is Star!20953) r2!6199))))

(declare-fun bm!725640 () Bool)

(assert (=> bm!725640 (= call!725644 (derivativeStep!6255 (ite c!1439729 (regOne!42419 r2!6199) (ite c!1439730 (reg!21282 r2!6199) (regOne!42418 r2!6199))) (head!15985 s2Rec!453)))))

(declare-fun bm!725641 () Bool)

(assert (=> bm!725641 (= call!725643 (derivativeStep!6255 (ite c!1439729 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199)) (head!15985 s2Rec!453)))))

(declare-fun b!7823530 () Bool)

(assert (=> b!7823530 (= e!4628480 e!4628481)))

(declare-fun c!1439731 () Bool)

(assert (=> b!7823530 (= c!1439731 ((_ is ElementMatch!20953) r2!6199))))

(declare-fun b!7823531 () Bool)

(assert (=> b!7823531 (= e!4628479 (Union!20953 call!725644 call!725643))))

(assert (= (and d!2349936 c!1439732) b!7823523))

(assert (= (and d!2349936 (not c!1439732)) b!7823530))

(assert (= (and b!7823530 c!1439731) b!7823524))

(assert (= (and b!7823530 (not c!1439731)) b!7823527))

(assert (= (and b!7823527 c!1439729) b!7823531))

(assert (= (and b!7823527 (not c!1439729)) b!7823529))

(assert (= (and b!7823529 c!1439730) b!7823525))

(assert (= (and b!7823529 (not c!1439730)) b!7823522))

(assert (= (and b!7823522 c!1439733) b!7823528))

(assert (= (and b!7823522 (not c!1439733)) b!7823526))

(assert (= (or b!7823528 b!7823526) bm!725639))

(assert (= (or b!7823525 bm!725639) bm!725638))

(assert (= (or b!7823531 bm!725638) bm!725640))

(assert (= (or b!7823531 b!7823528) bm!725641))

(assert (=> b!7823522 m!8246250))

(declare-fun m!8246332 () Bool)

(assert (=> d!2349936 m!8246332))

(assert (=> d!2349936 m!8246030))

(assert (=> bm!725640 m!8246076))

(declare-fun m!8246334 () Bool)

(assert (=> bm!725640 m!8246334))

(assert (=> bm!725641 m!8246076))

(declare-fun m!8246336 () Bool)

(assert (=> bm!725641 m!8246336))

(assert (=> b!7823082 d!2349936))

(declare-fun d!2349938 () Bool)

(assert (=> d!2349938 (= (head!15985 s2Rec!453) (h!80114 s2Rec!453))))

(assert (=> b!7823082 d!2349938))

(assert (=> b!7823082 d!2349882))

(assert (=> b!7823086 d!2349938))

(assert (=> b!7823078 d!2349932))

(assert (=> b!7823078 d!2349916))

(declare-fun b!7823532 () Bool)

(declare-fun e!4628486 () Bool)

(declare-fun call!725647 () Bool)

(assert (=> b!7823532 (= e!4628486 call!725647)))

(declare-fun b!7823533 () Bool)

(declare-fun e!4628488 () Bool)

(declare-fun call!725649 () Bool)

(assert (=> b!7823533 (= e!4628488 call!725649)))

(declare-fun c!1439734 () Bool)

(declare-fun c!1439735 () Bool)

(declare-fun bm!725642 () Bool)

(assert (=> bm!725642 (= call!725649 (validRegex!11367 (ite c!1439734 (reg!21282 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (ite c!1439735 (regOne!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regTwo!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199))))))))))

(declare-fun b!7823535 () Bool)

(declare-fun res!3113883 () Bool)

(declare-fun e!4628487 () Bool)

(assert (=> b!7823535 (=> res!3113883 e!4628487)))

(assert (=> b!7823535 (= res!3113883 (not ((_ is Concat!29798) (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199))))))))

(declare-fun e!4628485 () Bool)

(assert (=> b!7823535 (= e!4628485 e!4628487)))

(declare-fun b!7823536 () Bool)

(declare-fun e!4628484 () Bool)

(assert (=> b!7823536 (= e!4628484 e!4628485)))

(assert (=> b!7823536 (= c!1439735 ((_ is Union!20953) (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))))))

(declare-fun b!7823537 () Bool)

(declare-fun e!4628490 () Bool)

(declare-fun call!725648 () Bool)

(assert (=> b!7823537 (= e!4628490 call!725648)))

(declare-fun bm!725643 () Bool)

(assert (=> bm!725643 (= call!725647 (validRegex!11367 (ite c!1439735 (regTwo!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regOne!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))))))))

(declare-fun bm!725644 () Bool)

(assert (=> bm!725644 (= call!725648 call!725649)))

(declare-fun b!7823538 () Bool)

(declare-fun e!4628489 () Bool)

(assert (=> b!7823538 (= e!4628489 e!4628484)))

(assert (=> b!7823538 (= c!1439734 ((_ is Star!20953) (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))))))

(declare-fun b!7823539 () Bool)

(declare-fun res!3113882 () Bool)

(assert (=> b!7823539 (=> (not res!3113882) (not e!4628486))))

(assert (=> b!7823539 (= res!3113882 call!725648)))

(assert (=> b!7823539 (= e!4628485 e!4628486)))

(declare-fun b!7823540 () Bool)

(assert (=> b!7823540 (= e!4628487 e!4628490)))

(declare-fun res!3113884 () Bool)

(assert (=> b!7823540 (=> (not res!3113884) (not e!4628490))))

(assert (=> b!7823540 (= res!3113884 call!725647)))

(declare-fun d!2349940 () Bool)

(declare-fun res!3113885 () Bool)

(assert (=> d!2349940 (=> res!3113885 e!4628489)))

(assert (=> d!2349940 (= res!3113885 ((_ is ElementMatch!20953) (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))))))

(assert (=> d!2349940 (= (validRegex!11367 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) e!4628489)))

(declare-fun b!7823534 () Bool)

(assert (=> b!7823534 (= e!4628484 e!4628488)))

(declare-fun res!3113881 () Bool)

(assert (=> b!7823534 (= res!3113881 (not (nullable!9296 (reg!21282 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))))))))

(assert (=> b!7823534 (=> (not res!3113881) (not e!4628488))))

(assert (= (and d!2349940 (not res!3113885)) b!7823538))

(assert (= (and b!7823538 c!1439734) b!7823534))

(assert (= (and b!7823538 (not c!1439734)) b!7823536))

(assert (= (and b!7823534 res!3113881) b!7823533))

(assert (= (and b!7823536 c!1439735) b!7823539))

(assert (= (and b!7823536 (not c!1439735)) b!7823535))

(assert (= (and b!7823539 res!3113882) b!7823532))

(assert (= (and b!7823535 (not res!3113883)) b!7823540))

(assert (= (and b!7823540 res!3113884) b!7823537))

(assert (= (or b!7823532 b!7823540) bm!725643))

(assert (= (or b!7823539 b!7823537) bm!725644))

(assert (= (or b!7823533 bm!725644) bm!725642))

(declare-fun m!8246338 () Bool)

(assert (=> bm!725642 m!8246338))

(declare-fun m!8246340 () Bool)

(assert (=> bm!725643 m!8246340))

(declare-fun m!8246342 () Bool)

(assert (=> b!7823534 m!8246342))

(assert (=> bm!725588 d!2349940))

(declare-fun b!7823541 () Bool)

(declare-fun e!4628493 () Bool)

(assert (=> b!7823541 (= e!4628493 (not (= (head!15985 (tail!15526 s1Rec!453)) (c!1439622 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))))))))

(declare-fun b!7823542 () Bool)

(declare-fun e!4628496 () Bool)

(assert (=> b!7823542 (= e!4628496 e!4628493)))

(declare-fun res!3113893 () Bool)

(assert (=> b!7823542 (=> res!3113893 e!4628493)))

(declare-fun call!725650 () Bool)

(assert (=> b!7823542 (= res!3113893 call!725650)))

(declare-fun b!7823543 () Bool)

(declare-fun e!4628492 () Bool)

(declare-fun lt!2676697 () Bool)

(assert (=> b!7823543 (= e!4628492 (= lt!2676697 call!725650))))

(declare-fun b!7823544 () Bool)

(declare-fun e!4628497 () Bool)

(assert (=> b!7823544 (= e!4628497 (matchR!10409 (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)) (head!15985 (tail!15526 s1Rec!453))) (tail!15526 (tail!15526 s1Rec!453))))))

(declare-fun d!2349942 () Bool)

(assert (=> d!2349942 e!4628492))

(declare-fun c!1439737 () Bool)

(assert (=> d!2349942 (= c!1439737 ((_ is EmptyExpr!20953) (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))))))

(assert (=> d!2349942 (= lt!2676697 e!4628497)))

(declare-fun c!1439736 () Bool)

(assert (=> d!2349942 (= c!1439736 (isEmpty!42284 (tail!15526 s1Rec!453)))))

(assert (=> d!2349942 (validRegex!11367 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)))))

(assert (=> d!2349942 (= (matchR!10409 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)) (tail!15526 s1Rec!453)) lt!2676697)))

(declare-fun b!7823545 () Bool)

(declare-fun e!4628494 () Bool)

(assert (=> b!7823545 (= e!4628494 e!4628496)))

(declare-fun res!3113892 () Bool)

(assert (=> b!7823545 (=> (not res!3113892) (not e!4628496))))

(assert (=> b!7823545 (= res!3113892 (not lt!2676697))))

(declare-fun b!7823546 () Bool)

(declare-fun e!4628495 () Bool)

(assert (=> b!7823546 (= e!4628495 (not lt!2676697))))

(declare-fun b!7823547 () Bool)

(declare-fun res!3113886 () Bool)

(assert (=> b!7823547 (=> res!3113886 e!4628494)))

(declare-fun e!4628491 () Bool)

(assert (=> b!7823547 (= res!3113886 e!4628491)))

(declare-fun res!3113888 () Bool)

(assert (=> b!7823547 (=> (not res!3113888) (not e!4628491))))

(assert (=> b!7823547 (= res!3113888 lt!2676697)))

(declare-fun b!7823548 () Bool)

(assert (=> b!7823548 (= e!4628491 (= (head!15985 (tail!15526 s1Rec!453)) (c!1439622 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)))))))

(declare-fun b!7823549 () Bool)

(declare-fun res!3113887 () Bool)

(assert (=> b!7823549 (=> res!3113887 e!4628494)))

(assert (=> b!7823549 (= res!3113887 (not ((_ is ElementMatch!20953) (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)))))))

(assert (=> b!7823549 (= e!4628495 e!4628494)))

(declare-fun b!7823550 () Bool)

(assert (=> b!7823550 (= e!4628492 e!4628495)))

(declare-fun c!1439738 () Bool)

(assert (=> b!7823550 (= c!1439738 ((_ is EmptyLang!20953) (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))))))

(declare-fun bm!725645 () Bool)

(assert (=> bm!725645 (= call!725650 (isEmpty!42284 (tail!15526 s1Rec!453)))))

(declare-fun b!7823551 () Bool)

(declare-fun res!3113891 () Bool)

(assert (=> b!7823551 (=> (not res!3113891) (not e!4628491))))

(assert (=> b!7823551 (= res!3113891 (not call!725650))))

(declare-fun b!7823552 () Bool)

(declare-fun res!3113889 () Bool)

(assert (=> b!7823552 (=> res!3113889 e!4628493)))

(assert (=> b!7823552 (= res!3113889 (not (isEmpty!42284 (tail!15526 (tail!15526 s1Rec!453)))))))

(declare-fun b!7823553 () Bool)

(assert (=> b!7823553 (= e!4628497 (nullable!9296 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))))))

(declare-fun b!7823554 () Bool)

(declare-fun res!3113890 () Bool)

(assert (=> b!7823554 (=> (not res!3113890) (not e!4628491))))

(assert (=> b!7823554 (= res!3113890 (isEmpty!42284 (tail!15526 (tail!15526 s1Rec!453))))))

(assert (= (and d!2349942 c!1439736) b!7823553))

(assert (= (and d!2349942 (not c!1439736)) b!7823544))

(assert (= (and d!2349942 c!1439737) b!7823543))

(assert (= (and d!2349942 (not c!1439737)) b!7823550))

(assert (= (and b!7823550 c!1439738) b!7823546))

(assert (= (and b!7823550 (not c!1439738)) b!7823549))

(assert (= (and b!7823549 (not res!3113887)) b!7823547))

(assert (= (and b!7823547 res!3113888) b!7823551))

(assert (= (and b!7823551 res!3113891) b!7823554))

(assert (= (and b!7823554 res!3113890) b!7823548))

(assert (= (and b!7823547 (not res!3113886)) b!7823545))

(assert (= (and b!7823545 res!3113892) b!7823542))

(assert (= (and b!7823542 (not res!3113893)) b!7823552))

(assert (= (and b!7823552 (not res!3113889)) b!7823541))

(assert (= (or b!7823543 b!7823542 b!7823551) bm!725645))

(assert (=> b!7823541 m!8246098))

(assert (=> b!7823541 m!8246286))

(assert (=> b!7823554 m!8246098))

(assert (=> b!7823554 m!8246290))

(assert (=> b!7823554 m!8246290))

(declare-fun m!8246344 () Bool)

(assert (=> b!7823554 m!8246344))

(assert (=> b!7823553 m!8246104))

(declare-fun m!8246346 () Bool)

(assert (=> b!7823553 m!8246346))

(assert (=> b!7823544 m!8246098))

(assert (=> b!7823544 m!8246286))

(assert (=> b!7823544 m!8246104))

(assert (=> b!7823544 m!8246286))

(declare-fun m!8246348 () Bool)

(assert (=> b!7823544 m!8246348))

(assert (=> b!7823544 m!8246098))

(assert (=> b!7823544 m!8246290))

(assert (=> b!7823544 m!8246348))

(assert (=> b!7823544 m!8246290))

(declare-fun m!8246350 () Bool)

(assert (=> b!7823544 m!8246350))

(assert (=> b!7823548 m!8246098))

(assert (=> b!7823548 m!8246286))

(assert (=> bm!725645 m!8246098))

(assert (=> bm!725645 m!8246102))

(assert (=> b!7823552 m!8246098))

(assert (=> b!7823552 m!8246290))

(assert (=> b!7823552 m!8246290))

(assert (=> b!7823552 m!8246344))

(assert (=> d!2349942 m!8246098))

(assert (=> d!2349942 m!8246102))

(assert (=> d!2349942 m!8246104))

(declare-fun m!8246352 () Bool)

(assert (=> d!2349942 m!8246352))

(assert (=> b!7823135 d!2349942))

(declare-fun b!7823555 () Bool)

(declare-fun c!1439743 () Bool)

(assert (=> b!7823555 (= c!1439743 (nullable!9296 (regOne!42418 r1!6261)))))

(declare-fun e!4628501 () Regex!20953)

(declare-fun e!4628502 () Regex!20953)

(assert (=> b!7823555 (= e!4628501 e!4628502)))

(declare-fun bm!725646 () Bool)

(declare-fun call!725653 () Regex!20953)

(declare-fun call!725652 () Regex!20953)

(assert (=> bm!725646 (= call!725653 call!725652)))

(declare-fun b!7823556 () Bool)

(declare-fun e!4628499 () Regex!20953)

(assert (=> b!7823556 (= e!4628499 EmptyLang!20953)))

(declare-fun b!7823557 () Bool)

(declare-fun e!4628500 () Regex!20953)

(assert (=> b!7823557 (= e!4628500 (ite (= (head!15985 s1Rec!453) (c!1439622 r1!6261)) EmptyExpr!20953 EmptyLang!20953))))

(declare-fun d!2349944 () Bool)

(declare-fun lt!2676698 () Regex!20953)

(assert (=> d!2349944 (validRegex!11367 lt!2676698)))

(assert (=> d!2349944 (= lt!2676698 e!4628499)))

(declare-fun c!1439742 () Bool)

(assert (=> d!2349944 (= c!1439742 (or ((_ is EmptyExpr!20953) r1!6261) ((_ is EmptyLang!20953) r1!6261)))))

(assert (=> d!2349944 (validRegex!11367 r1!6261)))

(assert (=> d!2349944 (= (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)) lt!2676698)))

(declare-fun b!7823558 () Bool)

(assert (=> b!7823558 (= e!4628501 (Concat!29798 call!725653 r1!6261))))

(declare-fun b!7823559 () Bool)

(declare-fun call!725654 () Regex!20953)

(assert (=> b!7823559 (= e!4628502 (Union!20953 (Concat!29798 call!725654 (regTwo!42418 r1!6261)) EmptyLang!20953))))

(declare-fun b!7823560 () Bool)

(declare-fun c!1439739 () Bool)

(assert (=> b!7823560 (= c!1439739 ((_ is Union!20953) r1!6261))))

(declare-fun e!4628498 () Regex!20953)

(assert (=> b!7823560 (= e!4628500 e!4628498)))

(declare-fun bm!725647 () Bool)

(assert (=> bm!725647 (= call!725654 call!725653)))

(declare-fun call!725651 () Regex!20953)

(declare-fun b!7823561 () Bool)

(assert (=> b!7823561 (= e!4628502 (Union!20953 (Concat!29798 call!725654 (regTwo!42418 r1!6261)) call!725651))))

(declare-fun b!7823562 () Bool)

(assert (=> b!7823562 (= e!4628498 e!4628501)))

(declare-fun c!1439740 () Bool)

(assert (=> b!7823562 (= c!1439740 ((_ is Star!20953) r1!6261))))

(declare-fun bm!725648 () Bool)

(assert (=> bm!725648 (= call!725652 (derivativeStep!6255 (ite c!1439739 (regOne!42419 r1!6261) (ite c!1439740 (reg!21282 r1!6261) (regOne!42418 r1!6261))) (head!15985 s1Rec!453)))))

(declare-fun bm!725649 () Bool)

(assert (=> bm!725649 (= call!725651 (derivativeStep!6255 (ite c!1439739 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261)) (head!15985 s1Rec!453)))))

(declare-fun b!7823563 () Bool)

(assert (=> b!7823563 (= e!4628499 e!4628500)))

(declare-fun c!1439741 () Bool)

(assert (=> b!7823563 (= c!1439741 ((_ is ElementMatch!20953) r1!6261))))

(declare-fun b!7823564 () Bool)

(assert (=> b!7823564 (= e!4628498 (Union!20953 call!725652 call!725651))))

(assert (= (and d!2349944 c!1439742) b!7823556))

(assert (= (and d!2349944 (not c!1439742)) b!7823563))

(assert (= (and b!7823563 c!1439741) b!7823557))

(assert (= (and b!7823563 (not c!1439741)) b!7823560))

(assert (= (and b!7823560 c!1439739) b!7823564))

(assert (= (and b!7823560 (not c!1439739)) b!7823562))

(assert (= (and b!7823562 c!1439740) b!7823558))

(assert (= (and b!7823562 (not c!1439740)) b!7823555))

(assert (= (and b!7823555 c!1439743) b!7823561))

(assert (= (and b!7823555 (not c!1439743)) b!7823559))

(assert (= (or b!7823561 b!7823559) bm!725647))

(assert (= (or b!7823558 bm!725647) bm!725646))

(assert (= (or b!7823564 bm!725646) bm!725648))

(assert (= (or b!7823564 b!7823561) bm!725649))

(declare-fun m!8246354 () Bool)

(assert (=> b!7823555 m!8246354))

(declare-fun m!8246356 () Bool)

(assert (=> d!2349944 m!8246356))

(assert (=> d!2349944 m!8246032))

(assert (=> bm!725648 m!8246096))

(declare-fun m!8246358 () Bool)

(assert (=> bm!725648 m!8246358))

(assert (=> bm!725649 m!8246096))

(declare-fun m!8246360 () Bool)

(assert (=> bm!725649 m!8246360))

(assert (=> b!7823135 d!2349944))

(declare-fun d!2349946 () Bool)

(assert (=> d!2349946 (= (head!15985 s1Rec!453) (h!80114 s1Rec!453))))

(assert (=> b!7823135 d!2349946))

(assert (=> b!7823135 d!2349914))

(assert (=> b!7823146 d!2349892))

(declare-fun d!2349948 () Bool)

(assert (=> d!2349948 (= (isEmpty!42284 s2!3721) ((_ is Nil!73666) s2!3721))))

(assert (=> d!2349856 d!2349948))

(assert (=> d!2349856 d!2349836))

(assert (=> b!7823139 d!2349946))

(declare-fun d!2349950 () Bool)

(assert (=> d!2349950 (= (nullable!9296 (reg!21282 r1!6261)) (nullableFct!3665 (reg!21282 r1!6261)))))

(declare-fun bs!1966753 () Bool)

(assert (= bs!1966753 d!2349950))

(declare-fun m!8246362 () Bool)

(assert (=> bs!1966753 m!8246362))

(assert (=> b!7823095 d!2349950))

(assert (=> b!7823091 d!2349922))

(declare-fun b!7823565 () Bool)

(declare-fun e!4628505 () Bool)

(declare-fun call!725655 () Bool)

(assert (=> b!7823565 (= e!4628505 call!725655)))

(declare-fun b!7823566 () Bool)

(declare-fun e!4628507 () Bool)

(declare-fun call!725657 () Bool)

(assert (=> b!7823566 (= e!4628507 call!725657)))

(declare-fun bm!725650 () Bool)

(declare-fun c!1439744 () Bool)

(declare-fun c!1439745 () Bool)

(assert (=> bm!725650 (= call!725657 (validRegex!11367 (ite c!1439744 (reg!21282 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (ite c!1439745 (regOne!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regTwo!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199)))))))))

(declare-fun b!7823568 () Bool)

(declare-fun res!3113896 () Bool)

(declare-fun e!4628506 () Bool)

(assert (=> b!7823568 (=> res!3113896 e!4628506)))

(assert (=> b!7823568 (= res!3113896 (not ((_ is Concat!29798) (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199)))))))

(declare-fun e!4628504 () Bool)

(assert (=> b!7823568 (= e!4628504 e!4628506)))

(declare-fun b!7823569 () Bool)

(declare-fun e!4628503 () Bool)

(assert (=> b!7823569 (= e!4628503 e!4628504)))

(assert (=> b!7823569 (= c!1439745 ((_ is Union!20953) (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))))))

(declare-fun b!7823570 () Bool)

(declare-fun e!4628509 () Bool)

(declare-fun call!725656 () Bool)

(assert (=> b!7823570 (= e!4628509 call!725656)))

(declare-fun bm!725651 () Bool)

(assert (=> bm!725651 (= call!725655 (validRegex!11367 (ite c!1439745 (regTwo!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regOne!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))))))))

(declare-fun bm!725652 () Bool)

(assert (=> bm!725652 (= call!725656 call!725657)))

(declare-fun b!7823571 () Bool)

(declare-fun e!4628508 () Bool)

(assert (=> b!7823571 (= e!4628508 e!4628503)))

(assert (=> b!7823571 (= c!1439744 ((_ is Star!20953) (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))))))

(declare-fun b!7823572 () Bool)

(declare-fun res!3113895 () Bool)

(assert (=> b!7823572 (=> (not res!3113895) (not e!4628505))))

(assert (=> b!7823572 (= res!3113895 call!725656)))

(assert (=> b!7823572 (= e!4628504 e!4628505)))

(declare-fun b!7823573 () Bool)

(assert (=> b!7823573 (= e!4628506 e!4628509)))

(declare-fun res!3113897 () Bool)

(assert (=> b!7823573 (=> (not res!3113897) (not e!4628509))))

(assert (=> b!7823573 (= res!3113897 call!725655)))

(declare-fun d!2349952 () Bool)

(declare-fun res!3113898 () Bool)

(assert (=> d!2349952 (=> res!3113898 e!4628508)))

(assert (=> d!2349952 (= res!3113898 ((_ is ElementMatch!20953) (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))))))

(assert (=> d!2349952 (= (validRegex!11367 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) e!4628508)))

(declare-fun b!7823567 () Bool)

(assert (=> b!7823567 (= e!4628503 e!4628507)))

(declare-fun res!3113894 () Bool)

(assert (=> b!7823567 (= res!3113894 (not (nullable!9296 (reg!21282 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))))))))

(assert (=> b!7823567 (=> (not res!3113894) (not e!4628507))))

(assert (= (and d!2349952 (not res!3113898)) b!7823571))

(assert (= (and b!7823571 c!1439744) b!7823567))

(assert (= (and b!7823571 (not c!1439744)) b!7823569))

(assert (= (and b!7823567 res!3113894) b!7823566))

(assert (= (and b!7823569 c!1439745) b!7823572))

(assert (= (and b!7823569 (not c!1439745)) b!7823568))

(assert (= (and b!7823572 res!3113895) b!7823565))

(assert (= (and b!7823568 (not res!3113896)) b!7823573))

(assert (= (and b!7823573 res!3113897) b!7823570))

(assert (= (or b!7823565 b!7823573) bm!725651))

(assert (= (or b!7823572 b!7823570) bm!725652))

(assert (= (or b!7823566 bm!725652) bm!725650))

(declare-fun m!8246364 () Bool)

(assert (=> bm!725650 m!8246364))

(declare-fun m!8246366 () Bool)

(assert (=> bm!725651 m!8246366))

(declare-fun m!8246368 () Bool)

(assert (=> b!7823567 m!8246368))

(assert (=> bm!725589 d!2349952))

(assert (=> bm!725605 d!2349948))

(assert (=> b!7823129 d!2349946))

(assert (=> b!7823129 d!2349910))

(declare-fun b!7823574 () Bool)

(declare-fun e!4628512 () Bool)

(assert (=> b!7823574 (= e!4628512 (not (= (head!15985 (tail!15526 s1!4101)) (c!1439622 (derivativeStep!6255 r1!6261 (head!15985 s1!4101))))))))

(declare-fun b!7823575 () Bool)

(declare-fun e!4628515 () Bool)

(assert (=> b!7823575 (= e!4628515 e!4628512)))

(declare-fun res!3113906 () Bool)

(assert (=> b!7823575 (=> res!3113906 e!4628512)))

(declare-fun call!725658 () Bool)

(assert (=> b!7823575 (= res!3113906 call!725658)))

(declare-fun b!7823576 () Bool)

(declare-fun e!4628511 () Bool)

(declare-fun lt!2676699 () Bool)

(assert (=> b!7823576 (= e!4628511 (= lt!2676699 call!725658))))

(declare-fun b!7823577 () Bool)

(declare-fun e!4628516 () Bool)

(assert (=> b!7823577 (= e!4628516 (matchR!10409 (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)) (head!15985 (tail!15526 s1!4101))) (tail!15526 (tail!15526 s1!4101))))))

(declare-fun d!2349954 () Bool)

(assert (=> d!2349954 e!4628511))

(declare-fun c!1439747 () Bool)

(assert (=> d!2349954 (= c!1439747 ((_ is EmptyExpr!20953) (derivativeStep!6255 r1!6261 (head!15985 s1!4101))))))

(assert (=> d!2349954 (= lt!2676699 e!4628516)))

(declare-fun c!1439746 () Bool)

(assert (=> d!2349954 (= c!1439746 (isEmpty!42284 (tail!15526 s1!4101)))))

(assert (=> d!2349954 (validRegex!11367 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)))))

(assert (=> d!2349954 (= (matchR!10409 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)) (tail!15526 s1!4101)) lt!2676699)))

(declare-fun b!7823578 () Bool)

(declare-fun e!4628513 () Bool)

(assert (=> b!7823578 (= e!4628513 e!4628515)))

(declare-fun res!3113905 () Bool)

(assert (=> b!7823578 (=> (not res!3113905) (not e!4628515))))

(assert (=> b!7823578 (= res!3113905 (not lt!2676699))))

(declare-fun b!7823579 () Bool)

(declare-fun e!4628514 () Bool)

(assert (=> b!7823579 (= e!4628514 (not lt!2676699))))

(declare-fun b!7823580 () Bool)

(declare-fun res!3113899 () Bool)

(assert (=> b!7823580 (=> res!3113899 e!4628513)))

(declare-fun e!4628510 () Bool)

(assert (=> b!7823580 (= res!3113899 e!4628510)))

(declare-fun res!3113901 () Bool)

(assert (=> b!7823580 (=> (not res!3113901) (not e!4628510))))

(assert (=> b!7823580 (= res!3113901 lt!2676699)))

(declare-fun b!7823581 () Bool)

(assert (=> b!7823581 (= e!4628510 (= (head!15985 (tail!15526 s1!4101)) (c!1439622 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)))))))

(declare-fun b!7823582 () Bool)

(declare-fun res!3113900 () Bool)

(assert (=> b!7823582 (=> res!3113900 e!4628513)))

(assert (=> b!7823582 (= res!3113900 (not ((_ is ElementMatch!20953) (derivativeStep!6255 r1!6261 (head!15985 s1!4101)))))))

(assert (=> b!7823582 (= e!4628514 e!4628513)))

(declare-fun b!7823583 () Bool)

(assert (=> b!7823583 (= e!4628511 e!4628514)))

(declare-fun c!1439748 () Bool)

(assert (=> b!7823583 (= c!1439748 ((_ is EmptyLang!20953) (derivativeStep!6255 r1!6261 (head!15985 s1!4101))))))

(declare-fun bm!725653 () Bool)

(assert (=> bm!725653 (= call!725658 (isEmpty!42284 (tail!15526 s1!4101)))))

(declare-fun b!7823584 () Bool)

(declare-fun res!3113904 () Bool)

(assert (=> b!7823584 (=> (not res!3113904) (not e!4628510))))

(assert (=> b!7823584 (= res!3113904 (not call!725658))))

(declare-fun b!7823585 () Bool)

(declare-fun res!3113902 () Bool)

(assert (=> b!7823585 (=> res!3113902 e!4628512)))

(assert (=> b!7823585 (= res!3113902 (not (isEmpty!42284 (tail!15526 (tail!15526 s1!4101)))))))

(declare-fun b!7823586 () Bool)

(assert (=> b!7823586 (= e!4628516 (nullable!9296 (derivativeStep!6255 r1!6261 (head!15985 s1!4101))))))

(declare-fun b!7823587 () Bool)

(declare-fun res!3113903 () Bool)

(assert (=> b!7823587 (=> (not res!3113903) (not e!4628510))))

(assert (=> b!7823587 (= res!3113903 (isEmpty!42284 (tail!15526 (tail!15526 s1!4101))))))

(assert (= (and d!2349954 c!1439746) b!7823586))

(assert (= (and d!2349954 (not c!1439746)) b!7823577))

(assert (= (and d!2349954 c!1439747) b!7823576))

(assert (= (and d!2349954 (not c!1439747)) b!7823583))

(assert (= (and b!7823583 c!1439748) b!7823579))

(assert (= (and b!7823583 (not c!1439748)) b!7823582))

(assert (= (and b!7823582 (not res!3113900)) b!7823580))

(assert (= (and b!7823580 res!3113901) b!7823584))

(assert (= (and b!7823584 res!3113904) b!7823587))

(assert (= (and b!7823587 res!3113903) b!7823581))

(assert (= (and b!7823580 (not res!3113899)) b!7823578))

(assert (= (and b!7823578 res!3113905) b!7823575))

(assert (= (and b!7823575 (not res!3113906)) b!7823585))

(assert (= (and b!7823585 (not res!3113902)) b!7823574))

(assert (= (or b!7823576 b!7823575 b!7823584) bm!725653))

(assert (=> b!7823574 m!8246064))

(assert (=> b!7823574 m!8246288))

(assert (=> b!7823587 m!8246064))

(assert (=> b!7823587 m!8246292))

(assert (=> b!7823587 m!8246292))

(declare-fun m!8246370 () Bool)

(assert (=> b!7823587 m!8246370))

(assert (=> b!7823586 m!8246070))

(declare-fun m!8246372 () Bool)

(assert (=> b!7823586 m!8246372))

(assert (=> b!7823577 m!8246064))

(assert (=> b!7823577 m!8246288))

(assert (=> b!7823577 m!8246070))

(assert (=> b!7823577 m!8246288))

(declare-fun m!8246374 () Bool)

(assert (=> b!7823577 m!8246374))

(assert (=> b!7823577 m!8246064))

(assert (=> b!7823577 m!8246292))

(assert (=> b!7823577 m!8246374))

(assert (=> b!7823577 m!8246292))

(declare-fun m!8246376 () Bool)

(assert (=> b!7823577 m!8246376))

(assert (=> b!7823581 m!8246064))

(assert (=> b!7823581 m!8246288))

(assert (=> bm!725653 m!8246064))

(assert (=> bm!725653 m!8246066))

(assert (=> b!7823585 m!8246064))

(assert (=> b!7823585 m!8246292))

(assert (=> b!7823585 m!8246292))

(assert (=> b!7823585 m!8246370))

(assert (=> d!2349954 m!8246064))

(assert (=> d!2349954 m!8246066))

(assert (=> d!2349954 m!8246070))

(declare-fun m!8246378 () Bool)

(assert (=> d!2349954 m!8246378))

(assert (=> b!7823068 d!2349954))

(declare-fun b!7823588 () Bool)

(declare-fun c!1439753 () Bool)

(assert (=> b!7823588 (= c!1439753 (nullable!9296 (regOne!42418 r1!6261)))))

(declare-fun e!4628520 () Regex!20953)

(declare-fun e!4628521 () Regex!20953)

(assert (=> b!7823588 (= e!4628520 e!4628521)))

(declare-fun bm!725654 () Bool)

(declare-fun call!725661 () Regex!20953)

(declare-fun call!725660 () Regex!20953)

(assert (=> bm!725654 (= call!725661 call!725660)))

(declare-fun b!7823589 () Bool)

(declare-fun e!4628518 () Regex!20953)

(assert (=> b!7823589 (= e!4628518 EmptyLang!20953)))

(declare-fun b!7823590 () Bool)

(declare-fun e!4628519 () Regex!20953)

(assert (=> b!7823590 (= e!4628519 (ite (= (head!15985 s1!4101) (c!1439622 r1!6261)) EmptyExpr!20953 EmptyLang!20953))))

(declare-fun d!2349956 () Bool)

(declare-fun lt!2676700 () Regex!20953)

(assert (=> d!2349956 (validRegex!11367 lt!2676700)))

(assert (=> d!2349956 (= lt!2676700 e!4628518)))

(declare-fun c!1439752 () Bool)

(assert (=> d!2349956 (= c!1439752 (or ((_ is EmptyExpr!20953) r1!6261) ((_ is EmptyLang!20953) r1!6261)))))

(assert (=> d!2349956 (validRegex!11367 r1!6261)))

(assert (=> d!2349956 (= (derivativeStep!6255 r1!6261 (head!15985 s1!4101)) lt!2676700)))

(declare-fun b!7823591 () Bool)

(assert (=> b!7823591 (= e!4628520 (Concat!29798 call!725661 r1!6261))))

(declare-fun b!7823592 () Bool)

(declare-fun call!725662 () Regex!20953)

(assert (=> b!7823592 (= e!4628521 (Union!20953 (Concat!29798 call!725662 (regTwo!42418 r1!6261)) EmptyLang!20953))))

(declare-fun b!7823593 () Bool)

(declare-fun c!1439749 () Bool)

(assert (=> b!7823593 (= c!1439749 ((_ is Union!20953) r1!6261))))

(declare-fun e!4628517 () Regex!20953)

(assert (=> b!7823593 (= e!4628519 e!4628517)))

(declare-fun bm!725655 () Bool)

(assert (=> bm!725655 (= call!725662 call!725661)))

(declare-fun call!725659 () Regex!20953)

(declare-fun b!7823594 () Bool)

(assert (=> b!7823594 (= e!4628521 (Union!20953 (Concat!29798 call!725662 (regTwo!42418 r1!6261)) call!725659))))

(declare-fun b!7823595 () Bool)

(assert (=> b!7823595 (= e!4628517 e!4628520)))

(declare-fun c!1439750 () Bool)

(assert (=> b!7823595 (= c!1439750 ((_ is Star!20953) r1!6261))))

(declare-fun bm!725656 () Bool)

(assert (=> bm!725656 (= call!725660 (derivativeStep!6255 (ite c!1439749 (regOne!42419 r1!6261) (ite c!1439750 (reg!21282 r1!6261) (regOne!42418 r1!6261))) (head!15985 s1!4101)))))

(declare-fun bm!725657 () Bool)

(assert (=> bm!725657 (= call!725659 (derivativeStep!6255 (ite c!1439749 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261)) (head!15985 s1!4101)))))

(declare-fun b!7823596 () Bool)

(assert (=> b!7823596 (= e!4628518 e!4628519)))

(declare-fun c!1439751 () Bool)

(assert (=> b!7823596 (= c!1439751 ((_ is ElementMatch!20953) r1!6261))))

(declare-fun b!7823597 () Bool)

(assert (=> b!7823597 (= e!4628517 (Union!20953 call!725660 call!725659))))

(assert (= (and d!2349956 c!1439752) b!7823589))

(assert (= (and d!2349956 (not c!1439752)) b!7823596))

(assert (= (and b!7823596 c!1439751) b!7823590))

(assert (= (and b!7823596 (not c!1439751)) b!7823593))

(assert (= (and b!7823593 c!1439749) b!7823597))

(assert (= (and b!7823593 (not c!1439749)) b!7823595))

(assert (= (and b!7823595 c!1439750) b!7823591))

(assert (= (and b!7823595 (not c!1439750)) b!7823588))

(assert (= (and b!7823588 c!1439753) b!7823594))

(assert (= (and b!7823588 (not c!1439753)) b!7823592))

(assert (= (or b!7823594 b!7823592) bm!725655))

(assert (= (or b!7823591 bm!725655) bm!725654))

(assert (= (or b!7823597 bm!725654) bm!725656))

(assert (= (or b!7823597 b!7823594) bm!725657))

(assert (=> b!7823588 m!8246354))

(declare-fun m!8246380 () Bool)

(assert (=> d!2349956 m!8246380))

(assert (=> d!2349956 m!8246032))

(assert (=> bm!725656 m!8246062))

(declare-fun m!8246382 () Bool)

(assert (=> bm!725656 m!8246382))

(assert (=> bm!725657 m!8246062))

(declare-fun m!8246384 () Bool)

(assert (=> bm!725657 m!8246384))

(assert (=> b!7823068 d!2349956))

(assert (=> b!7823068 d!2349910))

(assert (=> b!7823068 d!2349916))

(declare-fun d!2349958 () Bool)

(declare-fun lt!2676701 () Int)

(assert (=> d!2349958 (>= lt!2676701 0)))

(declare-fun e!4628522 () Int)

(assert (=> d!2349958 (= lt!2676701 e!4628522)))

(declare-fun c!1439754 () Bool)

(assert (=> d!2349958 (= c!1439754 ((_ is Nil!73666) lt!2676673))))

(assert (=> d!2349958 (= (size!42753 lt!2676673) lt!2676701)))

(declare-fun b!7823598 () Bool)

(assert (=> b!7823598 (= e!4628522 0)))

(declare-fun b!7823599 () Bool)

(assert (=> b!7823599 (= e!4628522 (+ 1 (size!42753 (t!388525 lt!2676673))))))

(assert (= (and d!2349958 c!1439754) b!7823598))

(assert (= (and d!2349958 (not c!1439754)) b!7823599))

(declare-fun m!8246386 () Bool)

(assert (=> b!7823599 m!8246386))

(assert (=> b!7823179 d!2349958))

(assert (=> b!7823179 d!2349864))

(declare-fun d!2349960 () Bool)

(declare-fun lt!2676702 () Int)

(assert (=> d!2349960 (>= lt!2676702 0)))

(declare-fun e!4628523 () Int)

(assert (=> d!2349960 (= lt!2676702 e!4628523)))

(declare-fun c!1439755 () Bool)

(assert (=> d!2349960 (= c!1439755 ((_ is Nil!73666) s2Rec!453))))

(assert (=> d!2349960 (= (size!42753 s2Rec!453) lt!2676702)))

(declare-fun b!7823600 () Bool)

(assert (=> b!7823600 (= e!4628523 0)))

(declare-fun b!7823601 () Bool)

(assert (=> b!7823601 (= e!4628523 (+ 1 (size!42753 (t!388525 s2Rec!453))))))

(assert (= (and d!2349960 c!1439755) b!7823600))

(assert (= (and d!2349960 (not c!1439755)) b!7823601))

(declare-fun m!8246388 () Bool)

(assert (=> b!7823601 m!8246388))

(assert (=> b!7823179 d!2349960))

(assert (=> b!7823072 d!2349910))

(declare-fun d!2349962 () Bool)

(assert (=> d!2349962 (= (isEmpty!42284 (tail!15526 s2!3721)) ((_ is Nil!73666) (tail!15526 s2!3721)))))

(assert (=> b!7823157 d!2349962))

(assert (=> b!7823157 d!2349894))

(declare-fun d!2349964 () Bool)

(declare-fun lt!2676703 () Int)

(assert (=> d!2349964 (>= lt!2676703 0)))

(declare-fun e!4628524 () Int)

(assert (=> d!2349964 (= lt!2676703 e!4628524)))

(declare-fun c!1439756 () Bool)

(assert (=> d!2349964 (= c!1439756 ((_ is Nil!73666) lt!2676676))))

(assert (=> d!2349964 (= (size!42753 lt!2676676) lt!2676703)))

(declare-fun b!7823602 () Bool)

(assert (=> b!7823602 (= e!4628524 0)))

(declare-fun b!7823603 () Bool)

(assert (=> b!7823603 (= e!4628524 (+ 1 (size!42753 (t!388525 lt!2676676))))))

(assert (= (and d!2349964 c!1439756) b!7823602))

(assert (= (and d!2349964 (not c!1439756)) b!7823603))

(declare-fun m!8246390 () Bool)

(assert (=> b!7823603 m!8246390))

(assert (=> b!7823187 d!2349964))

(assert (=> b!7823187 d!2349832))

(declare-fun d!2349966 () Bool)

(declare-fun lt!2676704 () Int)

(assert (=> d!2349966 (>= lt!2676704 0)))

(declare-fun e!4628525 () Int)

(assert (=> d!2349966 (= lt!2676704 e!4628525)))

(declare-fun c!1439757 () Bool)

(assert (=> d!2349966 (= c!1439757 ((_ is Nil!73666) s2!3721))))

(assert (=> d!2349966 (= (size!42753 s2!3721) lt!2676704)))

(declare-fun b!7823604 () Bool)

(assert (=> b!7823604 (= e!4628525 0)))

(declare-fun b!7823605 () Bool)

(assert (=> b!7823605 (= e!4628525 (+ 1 (size!42753 (t!388525 s2!3721))))))

(assert (= (and d!2349966 c!1439757) b!7823604))

(assert (= (and d!2349966 (not c!1439757)) b!7823605))

(declare-fun m!8246392 () Bool)

(assert (=> b!7823605 m!8246392))

(assert (=> b!7823187 d!2349966))

(assert (=> b!7823131 d!2349832))

(assert (=> b!7823131 d!2349864))

(declare-fun d!2349968 () Bool)

(assert (=> d!2349968 (= (nullable!9296 r1!6261) (nullableFct!3665 r1!6261))))

(declare-fun bs!1966754 () Bool)

(assert (= bs!1966754 d!2349968))

(declare-fun m!8246394 () Bool)

(assert (=> bs!1966754 m!8246394))

(assert (=> b!7823144 d!2349968))

(declare-fun d!2349970 () Bool)

(declare-fun lt!2676705 () Int)

(assert (=> d!2349970 (>= lt!2676705 0)))

(declare-fun e!4628526 () Int)

(assert (=> d!2349970 (= lt!2676705 e!4628526)))

(declare-fun c!1439758 () Bool)

(assert (=> d!2349970 (= c!1439758 ((_ is Nil!73666) (t!388525 s1!4101)))))

(assert (=> d!2349970 (= (size!42753 (t!388525 s1!4101)) lt!2676705)))

(declare-fun b!7823606 () Bool)

(assert (=> b!7823606 (= e!4628526 0)))

(declare-fun b!7823607 () Bool)

(assert (=> b!7823607 (= e!4628526 (+ 1 (size!42753 (t!388525 (t!388525 s1!4101)))))))

(assert (= (and d!2349970 c!1439758) b!7823606))

(assert (= (and d!2349970 (not c!1439758)) b!7823607))

(declare-fun m!8246396 () Bool)

(assert (=> b!7823607 m!8246396))

(assert (=> b!7822987 d!2349970))

(assert (=> d!2349848 d!2349886))

(assert (=> d!2349848 d!2349836))

(assert (=> b!7823159 d!2349962))

(assert (=> b!7823159 d!2349894))

(assert (=> b!7823079 d!2349938))

(assert (=> d!2349838 d!2349930))

(assert (=> d!2349838 d!2349850))

(declare-fun d!2349972 () Bool)

(declare-fun lt!2676706 () Int)

(assert (=> d!2349972 (>= lt!2676706 0)))

(declare-fun e!4628527 () Int)

(assert (=> d!2349972 (= lt!2676706 e!4628527)))

(declare-fun c!1439759 () Bool)

(assert (=> d!2349972 (= c!1439759 ((_ is Nil!73666) (t!388525 s1Rec!453)))))

(assert (=> d!2349972 (= (size!42753 (t!388525 s1Rec!453)) lt!2676706)))

(declare-fun b!7823608 () Bool)

(assert (=> b!7823608 (= e!4628527 0)))

(declare-fun b!7823609 () Bool)

(assert (=> b!7823609 (= e!4628527 (+ 1 (size!42753 (t!388525 (t!388525 s1Rec!453)))))))

(assert (= (and d!2349972 c!1439759) b!7823608))

(assert (= (and d!2349972 (not c!1439759)) b!7823609))

(declare-fun m!8246398 () Bool)

(assert (=> b!7823609 m!8246398))

(assert (=> b!7823184 d!2349972))

(assert (=> d!2349854 d!2349902))

(assert (=> d!2349854 d!2349850))

(assert (=> b!7823077 d!2349968))

(assert (=> b!7823132 d!2349946))

(declare-fun d!2349974 () Bool)

(assert (=> d!2349974 (= (nullable!9296 (reg!21282 r2!6199)) (nullableFct!3665 (reg!21282 r2!6199)))))

(declare-fun bs!1966755 () Bool)

(assert (= bs!1966755 d!2349974))

(declare-fun m!8246400 () Bool)

(assert (=> bs!1966755 m!8246400))

(assert (=> b!7823016 d!2349974))

(declare-fun b!7823610 () Bool)

(declare-fun e!4628528 () Bool)

(assert (=> b!7823610 (= e!4628528 tp_is_empty!52261)))

(assert (=> b!7823229 (= tp!2309348 e!4628528)))

(declare-fun b!7823613 () Bool)

(declare-fun tp!2309442 () Bool)

(declare-fun tp!2309444 () Bool)

(assert (=> b!7823613 (= e!4628528 (and tp!2309442 tp!2309444))))

(declare-fun b!7823612 () Bool)

(declare-fun tp!2309443 () Bool)

(assert (=> b!7823612 (= e!4628528 tp!2309443)))

(declare-fun b!7823611 () Bool)

(declare-fun tp!2309440 () Bool)

(declare-fun tp!2309441 () Bool)

(assert (=> b!7823611 (= e!4628528 (and tp!2309440 tp!2309441))))

(assert (= (and b!7823229 ((_ is ElementMatch!20953) (regOne!42419 (reg!21282 r1!6261)))) b!7823610))

(assert (= (and b!7823229 ((_ is Concat!29798) (regOne!42419 (reg!21282 r1!6261)))) b!7823611))

(assert (= (and b!7823229 ((_ is Star!20953) (regOne!42419 (reg!21282 r1!6261)))) b!7823612))

(assert (= (and b!7823229 ((_ is Union!20953) (regOne!42419 (reg!21282 r1!6261)))) b!7823613))

(declare-fun b!7823614 () Bool)

(declare-fun e!4628529 () Bool)

(assert (=> b!7823614 (= e!4628529 tp_is_empty!52261)))

(assert (=> b!7823229 (= tp!2309350 e!4628529)))

(declare-fun b!7823617 () Bool)

(declare-fun tp!2309447 () Bool)

(declare-fun tp!2309449 () Bool)

(assert (=> b!7823617 (= e!4628529 (and tp!2309447 tp!2309449))))

(declare-fun b!7823616 () Bool)

(declare-fun tp!2309448 () Bool)

(assert (=> b!7823616 (= e!4628529 tp!2309448)))

(declare-fun b!7823615 () Bool)

(declare-fun tp!2309445 () Bool)

(declare-fun tp!2309446 () Bool)

(assert (=> b!7823615 (= e!4628529 (and tp!2309445 tp!2309446))))

(assert (= (and b!7823229 ((_ is ElementMatch!20953) (regTwo!42419 (reg!21282 r1!6261)))) b!7823614))

(assert (= (and b!7823229 ((_ is Concat!29798) (regTwo!42419 (reg!21282 r1!6261)))) b!7823615))

(assert (= (and b!7823229 ((_ is Star!20953) (regTwo!42419 (reg!21282 r1!6261)))) b!7823616))

(assert (= (and b!7823229 ((_ is Union!20953) (regTwo!42419 (reg!21282 r1!6261)))) b!7823617))

(declare-fun b!7823618 () Bool)

(declare-fun e!4628530 () Bool)

(assert (=> b!7823618 (= e!4628530 tp_is_empty!52261)))

(assert (=> b!7823220 (= tp!2309339 e!4628530)))

(declare-fun b!7823621 () Bool)

(declare-fun tp!2309452 () Bool)

(declare-fun tp!2309454 () Bool)

(assert (=> b!7823621 (= e!4628530 (and tp!2309452 tp!2309454))))

(declare-fun b!7823620 () Bool)

(declare-fun tp!2309453 () Bool)

(assert (=> b!7823620 (= e!4628530 tp!2309453)))

(declare-fun b!7823619 () Bool)

(declare-fun tp!2309450 () Bool)

(declare-fun tp!2309451 () Bool)

(assert (=> b!7823619 (= e!4628530 (and tp!2309450 tp!2309451))))

(assert (= (and b!7823220 ((_ is ElementMatch!20953) (reg!21282 (regOne!42418 r2!6199)))) b!7823618))

(assert (= (and b!7823220 ((_ is Concat!29798) (reg!21282 (regOne!42418 r2!6199)))) b!7823619))

(assert (= (and b!7823220 ((_ is Star!20953) (reg!21282 (regOne!42418 r2!6199)))) b!7823620))

(assert (= (and b!7823220 ((_ is Union!20953) (reg!21282 (regOne!42418 r2!6199)))) b!7823621))

(declare-fun b!7823622 () Bool)

(declare-fun e!4628531 () Bool)

(assert (=> b!7823622 (= e!4628531 tp_is_empty!52261)))

(assert (=> b!7823219 (= tp!2309336 e!4628531)))

(declare-fun b!7823625 () Bool)

(declare-fun tp!2309457 () Bool)

(declare-fun tp!2309459 () Bool)

(assert (=> b!7823625 (= e!4628531 (and tp!2309457 tp!2309459))))

(declare-fun b!7823624 () Bool)

(declare-fun tp!2309458 () Bool)

(assert (=> b!7823624 (= e!4628531 tp!2309458)))

(declare-fun b!7823623 () Bool)

(declare-fun tp!2309455 () Bool)

(declare-fun tp!2309456 () Bool)

(assert (=> b!7823623 (= e!4628531 (and tp!2309455 tp!2309456))))

(assert (= (and b!7823219 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42418 r2!6199)))) b!7823622))

(assert (= (and b!7823219 ((_ is Concat!29798) (regOne!42418 (regOne!42418 r2!6199)))) b!7823623))

(assert (= (and b!7823219 ((_ is Star!20953) (regOne!42418 (regOne!42418 r2!6199)))) b!7823624))

(assert (= (and b!7823219 ((_ is Union!20953) (regOne!42418 (regOne!42418 r2!6199)))) b!7823625))

(declare-fun b!7823626 () Bool)

(declare-fun e!4628532 () Bool)

(assert (=> b!7823626 (= e!4628532 tp_is_empty!52261)))

(assert (=> b!7823219 (= tp!2309337 e!4628532)))

(declare-fun b!7823629 () Bool)

(declare-fun tp!2309462 () Bool)

(declare-fun tp!2309464 () Bool)

(assert (=> b!7823629 (= e!4628532 (and tp!2309462 tp!2309464))))

(declare-fun b!7823628 () Bool)

(declare-fun tp!2309463 () Bool)

(assert (=> b!7823628 (= e!4628532 tp!2309463)))

(declare-fun b!7823627 () Bool)

(declare-fun tp!2309460 () Bool)

(declare-fun tp!2309461 () Bool)

(assert (=> b!7823627 (= e!4628532 (and tp!2309460 tp!2309461))))

(assert (= (and b!7823219 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42418 r2!6199)))) b!7823626))

(assert (= (and b!7823219 ((_ is Concat!29798) (regTwo!42418 (regOne!42418 r2!6199)))) b!7823627))

(assert (= (and b!7823219 ((_ is Star!20953) (regTwo!42418 (regOne!42418 r2!6199)))) b!7823628))

(assert (= (and b!7823219 ((_ is Union!20953) (regTwo!42418 (regOne!42418 r2!6199)))) b!7823629))

(declare-fun b!7823630 () Bool)

(declare-fun e!4628533 () Bool)

(assert (=> b!7823630 (= e!4628533 tp_is_empty!52261)))

(assert (=> b!7823237 (= tp!2309358 e!4628533)))

(declare-fun b!7823633 () Bool)

(declare-fun tp!2309467 () Bool)

(declare-fun tp!2309469 () Bool)

(assert (=> b!7823633 (= e!4628533 (and tp!2309467 tp!2309469))))

(declare-fun b!7823632 () Bool)

(declare-fun tp!2309468 () Bool)

(assert (=> b!7823632 (= e!4628533 tp!2309468)))

(declare-fun b!7823631 () Bool)

(declare-fun tp!2309465 () Bool)

(declare-fun tp!2309466 () Bool)

(assert (=> b!7823631 (= e!4628533 (and tp!2309465 tp!2309466))))

(assert (= (and b!7823237 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42418 r1!6261)))) b!7823630))

(assert (= (and b!7823237 ((_ is Concat!29798) (regOne!42419 (regTwo!42418 r1!6261)))) b!7823631))

(assert (= (and b!7823237 ((_ is Star!20953) (regOne!42419 (regTwo!42418 r1!6261)))) b!7823632))

(assert (= (and b!7823237 ((_ is Union!20953) (regOne!42419 (regTwo!42418 r1!6261)))) b!7823633))

(declare-fun b!7823634 () Bool)

(declare-fun e!4628534 () Bool)

(assert (=> b!7823634 (= e!4628534 tp_is_empty!52261)))

(assert (=> b!7823237 (= tp!2309360 e!4628534)))

(declare-fun b!7823637 () Bool)

(declare-fun tp!2309472 () Bool)

(declare-fun tp!2309474 () Bool)

(assert (=> b!7823637 (= e!4628534 (and tp!2309472 tp!2309474))))

(declare-fun b!7823636 () Bool)

(declare-fun tp!2309473 () Bool)

(assert (=> b!7823636 (= e!4628534 tp!2309473)))

(declare-fun b!7823635 () Bool)

(declare-fun tp!2309470 () Bool)

(declare-fun tp!2309471 () Bool)

(assert (=> b!7823635 (= e!4628534 (and tp!2309470 tp!2309471))))

(assert (= (and b!7823237 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42418 r1!6261)))) b!7823634))

(assert (= (and b!7823237 ((_ is Concat!29798) (regTwo!42419 (regTwo!42418 r1!6261)))) b!7823635))

(assert (= (and b!7823237 ((_ is Star!20953) (regTwo!42419 (regTwo!42418 r1!6261)))) b!7823636))

(assert (= (and b!7823237 ((_ is Union!20953) (regTwo!42419 (regTwo!42418 r1!6261)))) b!7823637))

(declare-fun b!7823638 () Bool)

(declare-fun e!4628535 () Bool)

(assert (=> b!7823638 (= e!4628535 tp_is_empty!52261)))

(assert (=> b!7823228 (= tp!2309349 e!4628535)))

(declare-fun b!7823641 () Bool)

(declare-fun tp!2309477 () Bool)

(declare-fun tp!2309479 () Bool)

(assert (=> b!7823641 (= e!4628535 (and tp!2309477 tp!2309479))))

(declare-fun b!7823640 () Bool)

(declare-fun tp!2309478 () Bool)

(assert (=> b!7823640 (= e!4628535 tp!2309478)))

(declare-fun b!7823639 () Bool)

(declare-fun tp!2309475 () Bool)

(declare-fun tp!2309476 () Bool)

(assert (=> b!7823639 (= e!4628535 (and tp!2309475 tp!2309476))))

(assert (= (and b!7823228 ((_ is ElementMatch!20953) (reg!21282 (reg!21282 r1!6261)))) b!7823638))

(assert (= (and b!7823228 ((_ is Concat!29798) (reg!21282 (reg!21282 r1!6261)))) b!7823639))

(assert (= (and b!7823228 ((_ is Star!20953) (reg!21282 (reg!21282 r1!6261)))) b!7823640))

(assert (= (and b!7823228 ((_ is Union!20953) (reg!21282 (reg!21282 r1!6261)))) b!7823641))

(declare-fun b!7823642 () Bool)

(declare-fun e!4628536 () Bool)

(assert (=> b!7823642 (= e!4628536 tp_is_empty!52261)))

(assert (=> b!7823247 (= tp!2309370 e!4628536)))

(declare-fun b!7823645 () Bool)

(declare-fun tp!2309482 () Bool)

(declare-fun tp!2309484 () Bool)

(assert (=> b!7823645 (= e!4628536 (and tp!2309482 tp!2309484))))

(declare-fun b!7823644 () Bool)

(declare-fun tp!2309483 () Bool)

(assert (=> b!7823644 (= e!4628536 tp!2309483)))

(declare-fun b!7823643 () Bool)

(declare-fun tp!2309480 () Bool)

(declare-fun tp!2309481 () Bool)

(assert (=> b!7823643 (= e!4628536 (and tp!2309480 tp!2309481))))

(assert (= (and b!7823247 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42419 r1!6261)))) b!7823642))

(assert (= (and b!7823247 ((_ is Concat!29798) (regOne!42419 (regTwo!42419 r1!6261)))) b!7823643))

(assert (= (and b!7823247 ((_ is Star!20953) (regOne!42419 (regTwo!42419 r1!6261)))) b!7823644))

(assert (= (and b!7823247 ((_ is Union!20953) (regOne!42419 (regTwo!42419 r1!6261)))) b!7823645))

(declare-fun b!7823646 () Bool)

(declare-fun e!4628537 () Bool)

(assert (=> b!7823646 (= e!4628537 tp_is_empty!52261)))

(assert (=> b!7823247 (= tp!2309372 e!4628537)))

(declare-fun b!7823649 () Bool)

(declare-fun tp!2309487 () Bool)

(declare-fun tp!2309489 () Bool)

(assert (=> b!7823649 (= e!4628537 (and tp!2309487 tp!2309489))))

(declare-fun b!7823648 () Bool)

(declare-fun tp!2309488 () Bool)

(assert (=> b!7823648 (= e!4628537 tp!2309488)))

(declare-fun b!7823647 () Bool)

(declare-fun tp!2309485 () Bool)

(declare-fun tp!2309486 () Bool)

(assert (=> b!7823647 (= e!4628537 (and tp!2309485 tp!2309486))))

(assert (= (and b!7823247 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42419 r1!6261)))) b!7823646))

(assert (= (and b!7823247 ((_ is Concat!29798) (regTwo!42419 (regTwo!42419 r1!6261)))) b!7823647))

(assert (= (and b!7823247 ((_ is Star!20953) (regTwo!42419 (regTwo!42419 r1!6261)))) b!7823648))

(assert (= (and b!7823247 ((_ is Union!20953) (regTwo!42419 (regTwo!42419 r1!6261)))) b!7823649))

(declare-fun b!7823650 () Bool)

(declare-fun e!4628538 () Bool)

(assert (=> b!7823650 (= e!4628538 tp_is_empty!52261)))

(assert (=> b!7823246 (= tp!2309371 e!4628538)))

(declare-fun b!7823653 () Bool)

(declare-fun tp!2309492 () Bool)

(declare-fun tp!2309494 () Bool)

(assert (=> b!7823653 (= e!4628538 (and tp!2309492 tp!2309494))))

(declare-fun b!7823652 () Bool)

(declare-fun tp!2309493 () Bool)

(assert (=> b!7823652 (= e!4628538 tp!2309493)))

(declare-fun b!7823651 () Bool)

(declare-fun tp!2309490 () Bool)

(declare-fun tp!2309491 () Bool)

(assert (=> b!7823651 (= e!4628538 (and tp!2309490 tp!2309491))))

(assert (= (and b!7823246 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42419 r1!6261)))) b!7823650))

(assert (= (and b!7823246 ((_ is Concat!29798) (reg!21282 (regTwo!42419 r1!6261)))) b!7823651))

(assert (= (and b!7823246 ((_ is Star!20953) (reg!21282 (regTwo!42419 r1!6261)))) b!7823652))

(assert (= (and b!7823246 ((_ is Union!20953) (reg!21282 (regTwo!42419 r1!6261)))) b!7823653))

(declare-fun b!7823654 () Bool)

(declare-fun e!4628539 () Bool)

(assert (=> b!7823654 (= e!4628539 tp_is_empty!52261)))

(assert (=> b!7823245 (= tp!2309368 e!4628539)))

(declare-fun b!7823657 () Bool)

(declare-fun tp!2309497 () Bool)

(declare-fun tp!2309499 () Bool)

(assert (=> b!7823657 (= e!4628539 (and tp!2309497 tp!2309499))))

(declare-fun b!7823656 () Bool)

(declare-fun tp!2309498 () Bool)

(assert (=> b!7823656 (= e!4628539 tp!2309498)))

(declare-fun b!7823655 () Bool)

(declare-fun tp!2309495 () Bool)

(declare-fun tp!2309496 () Bool)

(assert (=> b!7823655 (= e!4628539 (and tp!2309495 tp!2309496))))

(assert (= (and b!7823245 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42419 r1!6261)))) b!7823654))

(assert (= (and b!7823245 ((_ is Concat!29798) (regOne!42418 (regTwo!42419 r1!6261)))) b!7823655))

(assert (= (and b!7823245 ((_ is Star!20953) (regOne!42418 (regTwo!42419 r1!6261)))) b!7823656))

(assert (= (and b!7823245 ((_ is Union!20953) (regOne!42418 (regTwo!42419 r1!6261)))) b!7823657))

(declare-fun b!7823658 () Bool)

(declare-fun e!4628540 () Bool)

(assert (=> b!7823658 (= e!4628540 tp_is_empty!52261)))

(assert (=> b!7823245 (= tp!2309369 e!4628540)))

(declare-fun b!7823661 () Bool)

(declare-fun tp!2309502 () Bool)

(declare-fun tp!2309504 () Bool)

(assert (=> b!7823661 (= e!4628540 (and tp!2309502 tp!2309504))))

(declare-fun b!7823660 () Bool)

(declare-fun tp!2309503 () Bool)

(assert (=> b!7823660 (= e!4628540 tp!2309503)))

(declare-fun b!7823659 () Bool)

(declare-fun tp!2309500 () Bool)

(declare-fun tp!2309501 () Bool)

(assert (=> b!7823659 (= e!4628540 (and tp!2309500 tp!2309501))))

(assert (= (and b!7823245 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42419 r1!6261)))) b!7823658))

(assert (= (and b!7823245 ((_ is Concat!29798) (regTwo!42418 (regTwo!42419 r1!6261)))) b!7823659))

(assert (= (and b!7823245 ((_ is Star!20953) (regTwo!42418 (regTwo!42419 r1!6261)))) b!7823660))

(assert (= (and b!7823245 ((_ is Union!20953) (regTwo!42418 (regTwo!42419 r1!6261)))) b!7823661))

(declare-fun b!7823662 () Bool)

(declare-fun e!4628541 () Bool)

(assert (=> b!7823662 (= e!4628541 tp_is_empty!52261)))

(assert (=> b!7823221 (= tp!2309338 e!4628541)))

(declare-fun b!7823665 () Bool)

(declare-fun tp!2309507 () Bool)

(declare-fun tp!2309509 () Bool)

(assert (=> b!7823665 (= e!4628541 (and tp!2309507 tp!2309509))))

(declare-fun b!7823664 () Bool)

(declare-fun tp!2309508 () Bool)

(assert (=> b!7823664 (= e!4628541 tp!2309508)))

(declare-fun b!7823663 () Bool)

(declare-fun tp!2309505 () Bool)

(declare-fun tp!2309506 () Bool)

(assert (=> b!7823663 (= e!4628541 (and tp!2309505 tp!2309506))))

(assert (= (and b!7823221 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42418 r2!6199)))) b!7823662))

(assert (= (and b!7823221 ((_ is Concat!29798) (regOne!42419 (regOne!42418 r2!6199)))) b!7823663))

(assert (= (and b!7823221 ((_ is Star!20953) (regOne!42419 (regOne!42418 r2!6199)))) b!7823664))

(assert (= (and b!7823221 ((_ is Union!20953) (regOne!42419 (regOne!42418 r2!6199)))) b!7823665))

(declare-fun b!7823666 () Bool)

(declare-fun e!4628542 () Bool)

(assert (=> b!7823666 (= e!4628542 tp_is_empty!52261)))

(assert (=> b!7823221 (= tp!2309340 e!4628542)))

(declare-fun b!7823669 () Bool)

(declare-fun tp!2309512 () Bool)

(declare-fun tp!2309514 () Bool)

(assert (=> b!7823669 (= e!4628542 (and tp!2309512 tp!2309514))))

(declare-fun b!7823668 () Bool)

(declare-fun tp!2309513 () Bool)

(assert (=> b!7823668 (= e!4628542 tp!2309513)))

(declare-fun b!7823667 () Bool)

(declare-fun tp!2309510 () Bool)

(declare-fun tp!2309511 () Bool)

(assert (=> b!7823667 (= e!4628542 (and tp!2309510 tp!2309511))))

(assert (= (and b!7823221 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42418 r2!6199)))) b!7823666))

(assert (= (and b!7823221 ((_ is Concat!29798) (regTwo!42419 (regOne!42418 r2!6199)))) b!7823667))

(assert (= (and b!7823221 ((_ is Star!20953) (regTwo!42419 (regOne!42418 r2!6199)))) b!7823668))

(assert (= (and b!7823221 ((_ is Union!20953) (regTwo!42419 (regOne!42418 r2!6199)))) b!7823669))

(declare-fun b!7823670 () Bool)

(declare-fun e!4628543 () Bool)

(declare-fun tp!2309515 () Bool)

(assert (=> b!7823670 (= e!4628543 (and tp_is_empty!52261 tp!2309515))))

(assert (=> b!7823238 (= tp!2309361 e!4628543)))

(assert (= (and b!7823238 ((_ is Cons!73666) (t!388525 (t!388525 s2!3721)))) b!7823670))

(declare-fun b!7823671 () Bool)

(declare-fun e!4628544 () Bool)

(assert (=> b!7823671 (= e!4628544 tp_is_empty!52261)))

(assert (=> b!7823205 (= tp!2309319 e!4628544)))

(declare-fun b!7823674 () Bool)

(declare-fun tp!2309518 () Bool)

(declare-fun tp!2309520 () Bool)

(assert (=> b!7823674 (= e!4628544 (and tp!2309518 tp!2309520))))

(declare-fun b!7823673 () Bool)

(declare-fun tp!2309519 () Bool)

(assert (=> b!7823673 (= e!4628544 tp!2309519)))

(declare-fun b!7823672 () Bool)

(declare-fun tp!2309516 () Bool)

(declare-fun tp!2309517 () Bool)

(assert (=> b!7823672 (= e!4628544 (and tp!2309516 tp!2309517))))

(assert (= (and b!7823205 ((_ is ElementMatch!20953) (regOne!42418 (reg!21282 r2!6199)))) b!7823671))

(assert (= (and b!7823205 ((_ is Concat!29798) (regOne!42418 (reg!21282 r2!6199)))) b!7823672))

(assert (= (and b!7823205 ((_ is Star!20953) (regOne!42418 (reg!21282 r2!6199)))) b!7823673))

(assert (= (and b!7823205 ((_ is Union!20953) (regOne!42418 (reg!21282 r2!6199)))) b!7823674))

(declare-fun b!7823675 () Bool)

(declare-fun e!4628545 () Bool)

(assert (=> b!7823675 (= e!4628545 tp_is_empty!52261)))

(assert (=> b!7823205 (= tp!2309320 e!4628545)))

(declare-fun b!7823678 () Bool)

(declare-fun tp!2309523 () Bool)

(declare-fun tp!2309525 () Bool)

(assert (=> b!7823678 (= e!4628545 (and tp!2309523 tp!2309525))))

(declare-fun b!7823677 () Bool)

(declare-fun tp!2309524 () Bool)

(assert (=> b!7823677 (= e!4628545 tp!2309524)))

(declare-fun b!7823676 () Bool)

(declare-fun tp!2309521 () Bool)

(declare-fun tp!2309522 () Bool)

(assert (=> b!7823676 (= e!4628545 (and tp!2309521 tp!2309522))))

(assert (= (and b!7823205 ((_ is ElementMatch!20953) (regTwo!42418 (reg!21282 r2!6199)))) b!7823675))

(assert (= (and b!7823205 ((_ is Concat!29798) (regTwo!42418 (reg!21282 r2!6199)))) b!7823676))

(assert (= (and b!7823205 ((_ is Star!20953) (regTwo!42418 (reg!21282 r2!6199)))) b!7823677))

(assert (= (and b!7823205 ((_ is Union!20953) (regTwo!42418 (reg!21282 r2!6199)))) b!7823678))

(declare-fun b!7823679 () Bool)

(declare-fun e!4628546 () Bool)

(assert (=> b!7823679 (= e!4628546 tp_is_empty!52261)))

(assert (=> b!7823214 (= tp!2309332 e!4628546)))

(declare-fun b!7823682 () Bool)

(declare-fun tp!2309528 () Bool)

(declare-fun tp!2309530 () Bool)

(assert (=> b!7823682 (= e!4628546 (and tp!2309528 tp!2309530))))

(declare-fun b!7823681 () Bool)

(declare-fun tp!2309529 () Bool)

(assert (=> b!7823681 (= e!4628546 tp!2309529)))

(declare-fun b!7823680 () Bool)

(declare-fun tp!2309526 () Bool)

(declare-fun tp!2309527 () Bool)

(assert (=> b!7823680 (= e!4628546 (and tp!2309526 tp!2309527))))

(assert (= (and b!7823214 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42419 r2!6199)))) b!7823679))

(assert (= (and b!7823214 ((_ is Concat!29798) (reg!21282 (regTwo!42419 r2!6199)))) b!7823680))

(assert (= (and b!7823214 ((_ is Star!20953) (reg!21282 (regTwo!42419 r2!6199)))) b!7823681))

(assert (= (and b!7823214 ((_ is Union!20953) (reg!21282 (regTwo!42419 r2!6199)))) b!7823682))

(declare-fun b!7823683 () Bool)

(declare-fun e!4628547 () Bool)

(declare-fun tp!2309531 () Bool)

(assert (=> b!7823683 (= e!4628547 (and tp_is_empty!52261 tp!2309531))))

(assert (=> b!7823239 (= tp!2309362 e!4628547)))

(assert (= (and b!7823239 ((_ is Cons!73666) (t!388525 (t!388525 s2Rec!453)))) b!7823683))

(declare-fun b!7823684 () Bool)

(declare-fun e!4628548 () Bool)

(assert (=> b!7823684 (= e!4628548 tp_is_empty!52261)))

(assert (=> b!7823213 (= tp!2309329 e!4628548)))

(declare-fun b!7823687 () Bool)

(declare-fun tp!2309534 () Bool)

(declare-fun tp!2309536 () Bool)

(assert (=> b!7823687 (= e!4628548 (and tp!2309534 tp!2309536))))

(declare-fun b!7823686 () Bool)

(declare-fun tp!2309535 () Bool)

(assert (=> b!7823686 (= e!4628548 tp!2309535)))

(declare-fun b!7823685 () Bool)

(declare-fun tp!2309532 () Bool)

(declare-fun tp!2309533 () Bool)

(assert (=> b!7823685 (= e!4628548 (and tp!2309532 tp!2309533))))

(assert (= (and b!7823213 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42419 r2!6199)))) b!7823684))

(assert (= (and b!7823213 ((_ is Concat!29798) (regOne!42418 (regTwo!42419 r2!6199)))) b!7823685))

(assert (= (and b!7823213 ((_ is Star!20953) (regOne!42418 (regTwo!42419 r2!6199)))) b!7823686))

(assert (= (and b!7823213 ((_ is Union!20953) (regOne!42418 (regTwo!42419 r2!6199)))) b!7823687))

(declare-fun b!7823688 () Bool)

(declare-fun e!4628549 () Bool)

(assert (=> b!7823688 (= e!4628549 tp_is_empty!52261)))

(assert (=> b!7823213 (= tp!2309330 e!4628549)))

(declare-fun b!7823691 () Bool)

(declare-fun tp!2309539 () Bool)

(declare-fun tp!2309541 () Bool)

(assert (=> b!7823691 (= e!4628549 (and tp!2309539 tp!2309541))))

(declare-fun b!7823690 () Bool)

(declare-fun tp!2309540 () Bool)

(assert (=> b!7823690 (= e!4628549 tp!2309540)))

(declare-fun b!7823689 () Bool)

(declare-fun tp!2309537 () Bool)

(declare-fun tp!2309538 () Bool)

(assert (=> b!7823689 (= e!4628549 (and tp!2309537 tp!2309538))))

(assert (= (and b!7823213 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42419 r2!6199)))) b!7823688))

(assert (= (and b!7823213 ((_ is Concat!29798) (regTwo!42418 (regTwo!42419 r2!6199)))) b!7823689))

(assert (= (and b!7823213 ((_ is Star!20953) (regTwo!42418 (regTwo!42419 r2!6199)))) b!7823690))

(assert (= (and b!7823213 ((_ is Union!20953) (regTwo!42418 (regTwo!42419 r2!6199)))) b!7823691))

(declare-fun b!7823692 () Bool)

(declare-fun e!4628550 () Bool)

(assert (=> b!7823692 (= e!4628550 tp_is_empty!52261)))

(assert (=> b!7823232 (= tp!2309354 e!4628550)))

(declare-fun b!7823695 () Bool)

(declare-fun tp!2309544 () Bool)

(declare-fun tp!2309546 () Bool)

(assert (=> b!7823695 (= e!4628550 (and tp!2309544 tp!2309546))))

(declare-fun b!7823694 () Bool)

(declare-fun tp!2309545 () Bool)

(assert (=> b!7823694 (= e!4628550 tp!2309545)))

(declare-fun b!7823693 () Bool)

(declare-fun tp!2309542 () Bool)

(declare-fun tp!2309543 () Bool)

(assert (=> b!7823693 (= e!4628550 (and tp!2309542 tp!2309543))))

(assert (= (and b!7823232 ((_ is ElementMatch!20953) (reg!21282 (regOne!42418 r1!6261)))) b!7823692))

(assert (= (and b!7823232 ((_ is Concat!29798) (reg!21282 (regOne!42418 r1!6261)))) b!7823693))

(assert (= (and b!7823232 ((_ is Star!20953) (reg!21282 (regOne!42418 r1!6261)))) b!7823694))

(assert (= (and b!7823232 ((_ is Union!20953) (reg!21282 (regOne!42418 r1!6261)))) b!7823695))

(declare-fun b!7823696 () Bool)

(declare-fun e!4628551 () Bool)

(assert (=> b!7823696 (= e!4628551 tp_is_empty!52261)))

(assert (=> b!7823207 (= tp!2309321 e!4628551)))

(declare-fun b!7823699 () Bool)

(declare-fun tp!2309549 () Bool)

(declare-fun tp!2309551 () Bool)

(assert (=> b!7823699 (= e!4628551 (and tp!2309549 tp!2309551))))

(declare-fun b!7823698 () Bool)

(declare-fun tp!2309550 () Bool)

(assert (=> b!7823698 (= e!4628551 tp!2309550)))

(declare-fun b!7823697 () Bool)

(declare-fun tp!2309547 () Bool)

(declare-fun tp!2309548 () Bool)

(assert (=> b!7823697 (= e!4628551 (and tp!2309547 tp!2309548))))

(assert (= (and b!7823207 ((_ is ElementMatch!20953) (regOne!42419 (reg!21282 r2!6199)))) b!7823696))

(assert (= (and b!7823207 ((_ is Concat!29798) (regOne!42419 (reg!21282 r2!6199)))) b!7823697))

(assert (= (and b!7823207 ((_ is Star!20953) (regOne!42419 (reg!21282 r2!6199)))) b!7823698))

(assert (= (and b!7823207 ((_ is Union!20953) (regOne!42419 (reg!21282 r2!6199)))) b!7823699))

(declare-fun b!7823700 () Bool)

(declare-fun e!4628552 () Bool)

(assert (=> b!7823700 (= e!4628552 tp_is_empty!52261)))

(assert (=> b!7823207 (= tp!2309323 e!4628552)))

(declare-fun b!7823703 () Bool)

(declare-fun tp!2309554 () Bool)

(declare-fun tp!2309556 () Bool)

(assert (=> b!7823703 (= e!4628552 (and tp!2309554 tp!2309556))))

(declare-fun b!7823702 () Bool)

(declare-fun tp!2309555 () Bool)

(assert (=> b!7823702 (= e!4628552 tp!2309555)))

(declare-fun b!7823701 () Bool)

(declare-fun tp!2309552 () Bool)

(declare-fun tp!2309553 () Bool)

(assert (=> b!7823701 (= e!4628552 (and tp!2309552 tp!2309553))))

(assert (= (and b!7823207 ((_ is ElementMatch!20953) (regTwo!42419 (reg!21282 r2!6199)))) b!7823700))

(assert (= (and b!7823207 ((_ is Concat!29798) (regTwo!42419 (reg!21282 r2!6199)))) b!7823701))

(assert (= (and b!7823207 ((_ is Star!20953) (regTwo!42419 (reg!21282 r2!6199)))) b!7823702))

(assert (= (and b!7823207 ((_ is Union!20953) (regTwo!42419 (reg!21282 r2!6199)))) b!7823703))

(declare-fun b!7823704 () Bool)

(declare-fun e!4628553 () Bool)

(assert (=> b!7823704 (= e!4628553 tp_is_empty!52261)))

(assert (=> b!7823231 (= tp!2309351 e!4628553)))

(declare-fun b!7823707 () Bool)

(declare-fun tp!2309559 () Bool)

(declare-fun tp!2309561 () Bool)

(assert (=> b!7823707 (= e!4628553 (and tp!2309559 tp!2309561))))

(declare-fun b!7823706 () Bool)

(declare-fun tp!2309560 () Bool)

(assert (=> b!7823706 (= e!4628553 tp!2309560)))

(declare-fun b!7823705 () Bool)

(declare-fun tp!2309557 () Bool)

(declare-fun tp!2309558 () Bool)

(assert (=> b!7823705 (= e!4628553 (and tp!2309557 tp!2309558))))

(assert (= (and b!7823231 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42418 r1!6261)))) b!7823704))

(assert (= (and b!7823231 ((_ is Concat!29798) (regOne!42418 (regOne!42418 r1!6261)))) b!7823705))

(assert (= (and b!7823231 ((_ is Star!20953) (regOne!42418 (regOne!42418 r1!6261)))) b!7823706))

(assert (= (and b!7823231 ((_ is Union!20953) (regOne!42418 (regOne!42418 r1!6261)))) b!7823707))

(declare-fun b!7823708 () Bool)

(declare-fun e!4628554 () Bool)

(assert (=> b!7823708 (= e!4628554 tp_is_empty!52261)))

(assert (=> b!7823231 (= tp!2309352 e!4628554)))

(declare-fun b!7823711 () Bool)

(declare-fun tp!2309564 () Bool)

(declare-fun tp!2309566 () Bool)

(assert (=> b!7823711 (= e!4628554 (and tp!2309564 tp!2309566))))

(declare-fun b!7823710 () Bool)

(declare-fun tp!2309565 () Bool)

(assert (=> b!7823710 (= e!4628554 tp!2309565)))

(declare-fun b!7823709 () Bool)

(declare-fun tp!2309562 () Bool)

(declare-fun tp!2309563 () Bool)

(assert (=> b!7823709 (= e!4628554 (and tp!2309562 tp!2309563))))

(assert (= (and b!7823231 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42418 r1!6261)))) b!7823708))

(assert (= (and b!7823231 ((_ is Concat!29798) (regTwo!42418 (regOne!42418 r1!6261)))) b!7823709))

(assert (= (and b!7823231 ((_ is Star!20953) (regTwo!42418 (regOne!42418 r1!6261)))) b!7823710))

(assert (= (and b!7823231 ((_ is Union!20953) (regTwo!42418 (regOne!42418 r1!6261)))) b!7823711))

(declare-fun b!7823712 () Bool)

(declare-fun e!4628555 () Bool)

(assert (=> b!7823712 (= e!4628555 tp_is_empty!52261)))

(assert (=> b!7823215 (= tp!2309331 e!4628555)))

(declare-fun b!7823715 () Bool)

(declare-fun tp!2309569 () Bool)

(declare-fun tp!2309571 () Bool)

(assert (=> b!7823715 (= e!4628555 (and tp!2309569 tp!2309571))))

(declare-fun b!7823714 () Bool)

(declare-fun tp!2309570 () Bool)

(assert (=> b!7823714 (= e!4628555 tp!2309570)))

(declare-fun b!7823713 () Bool)

(declare-fun tp!2309567 () Bool)

(declare-fun tp!2309568 () Bool)

(assert (=> b!7823713 (= e!4628555 (and tp!2309567 tp!2309568))))

(assert (= (and b!7823215 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42419 r2!6199)))) b!7823712))

(assert (= (and b!7823215 ((_ is Concat!29798) (regOne!42419 (regTwo!42419 r2!6199)))) b!7823713))

(assert (= (and b!7823215 ((_ is Star!20953) (regOne!42419 (regTwo!42419 r2!6199)))) b!7823714))

(assert (= (and b!7823215 ((_ is Union!20953) (regOne!42419 (regTwo!42419 r2!6199)))) b!7823715))

(declare-fun b!7823716 () Bool)

(declare-fun e!4628556 () Bool)

(assert (=> b!7823716 (= e!4628556 tp_is_empty!52261)))

(assert (=> b!7823215 (= tp!2309333 e!4628556)))

(declare-fun b!7823719 () Bool)

(declare-fun tp!2309574 () Bool)

(declare-fun tp!2309576 () Bool)

(assert (=> b!7823719 (= e!4628556 (and tp!2309574 tp!2309576))))

(declare-fun b!7823718 () Bool)

(declare-fun tp!2309575 () Bool)

(assert (=> b!7823718 (= e!4628556 tp!2309575)))

(declare-fun b!7823717 () Bool)

(declare-fun tp!2309572 () Bool)

(declare-fun tp!2309573 () Bool)

(assert (=> b!7823717 (= e!4628556 (and tp!2309572 tp!2309573))))

(assert (= (and b!7823215 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42419 r2!6199)))) b!7823716))

(assert (= (and b!7823215 ((_ is Concat!29798) (regTwo!42419 (regTwo!42419 r2!6199)))) b!7823717))

(assert (= (and b!7823215 ((_ is Star!20953) (regTwo!42419 (regTwo!42419 r2!6199)))) b!7823718))

(assert (= (and b!7823215 ((_ is Union!20953) (regTwo!42419 (regTwo!42419 r2!6199)))) b!7823719))

(declare-fun b!7823720 () Bool)

(declare-fun e!4628557 () Bool)

(assert (=> b!7823720 (= e!4628557 tp_is_empty!52261)))

(assert (=> b!7823206 (= tp!2309322 e!4628557)))

(declare-fun b!7823723 () Bool)

(declare-fun tp!2309579 () Bool)

(declare-fun tp!2309581 () Bool)

(assert (=> b!7823723 (= e!4628557 (and tp!2309579 tp!2309581))))

(declare-fun b!7823722 () Bool)

(declare-fun tp!2309580 () Bool)

(assert (=> b!7823722 (= e!4628557 tp!2309580)))

(declare-fun b!7823721 () Bool)

(declare-fun tp!2309577 () Bool)

(declare-fun tp!2309578 () Bool)

(assert (=> b!7823721 (= e!4628557 (and tp!2309577 tp!2309578))))

(assert (= (and b!7823206 ((_ is ElementMatch!20953) (reg!21282 (reg!21282 r2!6199)))) b!7823720))

(assert (= (and b!7823206 ((_ is Concat!29798) (reg!21282 (reg!21282 r2!6199)))) b!7823721))

(assert (= (and b!7823206 ((_ is Star!20953) (reg!21282 (reg!21282 r2!6199)))) b!7823722))

(assert (= (and b!7823206 ((_ is Union!20953) (reg!21282 (reg!21282 r2!6199)))) b!7823723))

(declare-fun b!7823724 () Bool)

(declare-fun e!4628558 () Bool)

(assert (=> b!7823724 (= e!4628558 tp_is_empty!52261)))

(assert (=> b!7823225 (= tp!2309343 e!4628558)))

(declare-fun b!7823727 () Bool)

(declare-fun tp!2309584 () Bool)

(declare-fun tp!2309586 () Bool)

(assert (=> b!7823727 (= e!4628558 (and tp!2309584 tp!2309586))))

(declare-fun b!7823726 () Bool)

(declare-fun tp!2309585 () Bool)

(assert (=> b!7823726 (= e!4628558 tp!2309585)))

(declare-fun b!7823725 () Bool)

(declare-fun tp!2309582 () Bool)

(declare-fun tp!2309583 () Bool)

(assert (=> b!7823725 (= e!4628558 (and tp!2309582 tp!2309583))))

(assert (= (and b!7823225 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42418 r2!6199)))) b!7823724))

(assert (= (and b!7823225 ((_ is Concat!29798) (regOne!42419 (regTwo!42418 r2!6199)))) b!7823725))

(assert (= (and b!7823225 ((_ is Star!20953) (regOne!42419 (regTwo!42418 r2!6199)))) b!7823726))

(assert (= (and b!7823225 ((_ is Union!20953) (regOne!42419 (regTwo!42418 r2!6199)))) b!7823727))

(declare-fun b!7823728 () Bool)

(declare-fun e!4628559 () Bool)

(assert (=> b!7823728 (= e!4628559 tp_is_empty!52261)))

(assert (=> b!7823225 (= tp!2309345 e!4628559)))

(declare-fun b!7823731 () Bool)

(declare-fun tp!2309589 () Bool)

(declare-fun tp!2309591 () Bool)

(assert (=> b!7823731 (= e!4628559 (and tp!2309589 tp!2309591))))

(declare-fun b!7823730 () Bool)

(declare-fun tp!2309590 () Bool)

(assert (=> b!7823730 (= e!4628559 tp!2309590)))

(declare-fun b!7823729 () Bool)

(declare-fun tp!2309587 () Bool)

(declare-fun tp!2309588 () Bool)

(assert (=> b!7823729 (= e!4628559 (and tp!2309587 tp!2309588))))

(assert (= (and b!7823225 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42418 r2!6199)))) b!7823728))

(assert (= (and b!7823225 ((_ is Concat!29798) (regTwo!42419 (regTwo!42418 r2!6199)))) b!7823729))

(assert (= (and b!7823225 ((_ is Star!20953) (regTwo!42419 (regTwo!42418 r2!6199)))) b!7823730))

(assert (= (and b!7823225 ((_ is Union!20953) (regTwo!42419 (regTwo!42418 r2!6199)))) b!7823731))

(declare-fun b!7823732 () Bool)

(declare-fun e!4628560 () Bool)

(assert (=> b!7823732 (= e!4628560 tp_is_empty!52261)))

(assert (=> b!7823233 (= tp!2309353 e!4628560)))

(declare-fun b!7823735 () Bool)

(declare-fun tp!2309594 () Bool)

(declare-fun tp!2309596 () Bool)

(assert (=> b!7823735 (= e!4628560 (and tp!2309594 tp!2309596))))

(declare-fun b!7823734 () Bool)

(declare-fun tp!2309595 () Bool)

(assert (=> b!7823734 (= e!4628560 tp!2309595)))

(declare-fun b!7823733 () Bool)

(declare-fun tp!2309592 () Bool)

(declare-fun tp!2309593 () Bool)

(assert (=> b!7823733 (= e!4628560 (and tp!2309592 tp!2309593))))

(assert (= (and b!7823233 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42418 r1!6261)))) b!7823732))

(assert (= (and b!7823233 ((_ is Concat!29798) (regOne!42419 (regOne!42418 r1!6261)))) b!7823733))

(assert (= (and b!7823233 ((_ is Star!20953) (regOne!42419 (regOne!42418 r1!6261)))) b!7823734))

(assert (= (and b!7823233 ((_ is Union!20953) (regOne!42419 (regOne!42418 r1!6261)))) b!7823735))

(declare-fun b!7823736 () Bool)

(declare-fun e!4628561 () Bool)

(assert (=> b!7823736 (= e!4628561 tp_is_empty!52261)))

(assert (=> b!7823233 (= tp!2309355 e!4628561)))

(declare-fun b!7823739 () Bool)

(declare-fun tp!2309599 () Bool)

(declare-fun tp!2309601 () Bool)

(assert (=> b!7823739 (= e!4628561 (and tp!2309599 tp!2309601))))

(declare-fun b!7823738 () Bool)

(declare-fun tp!2309600 () Bool)

(assert (=> b!7823738 (= e!4628561 tp!2309600)))

(declare-fun b!7823737 () Bool)

(declare-fun tp!2309597 () Bool)

(declare-fun tp!2309598 () Bool)

(assert (=> b!7823737 (= e!4628561 (and tp!2309597 tp!2309598))))

(assert (= (and b!7823233 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42418 r1!6261)))) b!7823736))

(assert (= (and b!7823233 ((_ is Concat!29798) (regTwo!42419 (regOne!42418 r1!6261)))) b!7823737))

(assert (= (and b!7823233 ((_ is Star!20953) (regTwo!42419 (regOne!42418 r1!6261)))) b!7823738))

(assert (= (and b!7823233 ((_ is Union!20953) (regTwo!42419 (regOne!42418 r1!6261)))) b!7823739))

(declare-fun b!7823740 () Bool)

(declare-fun e!4628562 () Bool)

(assert (=> b!7823740 (= e!4628562 tp_is_empty!52261)))

(assert (=> b!7823224 (= tp!2309344 e!4628562)))

(declare-fun b!7823743 () Bool)

(declare-fun tp!2309604 () Bool)

(declare-fun tp!2309606 () Bool)

(assert (=> b!7823743 (= e!4628562 (and tp!2309604 tp!2309606))))

(declare-fun b!7823742 () Bool)

(declare-fun tp!2309605 () Bool)

(assert (=> b!7823742 (= e!4628562 tp!2309605)))

(declare-fun b!7823741 () Bool)

(declare-fun tp!2309602 () Bool)

(declare-fun tp!2309603 () Bool)

(assert (=> b!7823741 (= e!4628562 (and tp!2309602 tp!2309603))))

(assert (= (and b!7823224 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42418 r2!6199)))) b!7823740))

(assert (= (and b!7823224 ((_ is Concat!29798) (reg!21282 (regTwo!42418 r2!6199)))) b!7823741))

(assert (= (and b!7823224 ((_ is Star!20953) (reg!21282 (regTwo!42418 r2!6199)))) b!7823742))

(assert (= (and b!7823224 ((_ is Union!20953) (reg!21282 (regTwo!42418 r2!6199)))) b!7823743))

(declare-fun b!7823744 () Bool)

(declare-fun e!4628563 () Bool)

(assert (=> b!7823744 (= e!4628563 tp_is_empty!52261)))

(assert (=> b!7823223 (= tp!2309341 e!4628563)))

(declare-fun b!7823747 () Bool)

(declare-fun tp!2309609 () Bool)

(declare-fun tp!2309611 () Bool)

(assert (=> b!7823747 (= e!4628563 (and tp!2309609 tp!2309611))))

(declare-fun b!7823746 () Bool)

(declare-fun tp!2309610 () Bool)

(assert (=> b!7823746 (= e!4628563 tp!2309610)))

(declare-fun b!7823745 () Bool)

(declare-fun tp!2309607 () Bool)

(declare-fun tp!2309608 () Bool)

(assert (=> b!7823745 (= e!4628563 (and tp!2309607 tp!2309608))))

(assert (= (and b!7823223 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42418 r2!6199)))) b!7823744))

(assert (= (and b!7823223 ((_ is Concat!29798) (regOne!42418 (regTwo!42418 r2!6199)))) b!7823745))

(assert (= (and b!7823223 ((_ is Star!20953) (regOne!42418 (regTwo!42418 r2!6199)))) b!7823746))

(assert (= (and b!7823223 ((_ is Union!20953) (regOne!42418 (regTwo!42418 r2!6199)))) b!7823747))

(declare-fun b!7823748 () Bool)

(declare-fun e!4628564 () Bool)

(assert (=> b!7823748 (= e!4628564 tp_is_empty!52261)))

(assert (=> b!7823223 (= tp!2309342 e!4628564)))

(declare-fun b!7823751 () Bool)

(declare-fun tp!2309614 () Bool)

(declare-fun tp!2309616 () Bool)

(assert (=> b!7823751 (= e!4628564 (and tp!2309614 tp!2309616))))

(declare-fun b!7823750 () Bool)

(declare-fun tp!2309615 () Bool)

(assert (=> b!7823750 (= e!4628564 tp!2309615)))

(declare-fun b!7823749 () Bool)

(declare-fun tp!2309612 () Bool)

(declare-fun tp!2309613 () Bool)

(assert (=> b!7823749 (= e!4628564 (and tp!2309612 tp!2309613))))

(assert (= (and b!7823223 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42418 r2!6199)))) b!7823748))

(assert (= (and b!7823223 ((_ is Concat!29798) (regTwo!42418 (regTwo!42418 r2!6199)))) b!7823749))

(assert (= (and b!7823223 ((_ is Star!20953) (regTwo!42418 (regTwo!42418 r2!6199)))) b!7823750))

(assert (= (and b!7823223 ((_ is Union!20953) (regTwo!42418 (regTwo!42418 r2!6199)))) b!7823751))

(declare-fun b!7823752 () Bool)

(declare-fun e!4628565 () Bool)

(declare-fun tp!2309617 () Bool)

(assert (=> b!7823752 (= e!4628565 (and tp_is_empty!52261 tp!2309617))))

(assert (=> b!7823216 (= tp!2309334 e!4628565)))

(assert (= (and b!7823216 ((_ is Cons!73666) (t!388525 (t!388525 s!14274)))) b!7823752))

(declare-fun b!7823753 () Bool)

(declare-fun e!4628566 () Bool)

(assert (=> b!7823753 (= e!4628566 tp_is_empty!52261)))

(assert (=> b!7823242 (= tp!2309366 e!4628566)))

(declare-fun b!7823756 () Bool)

(declare-fun tp!2309620 () Bool)

(declare-fun tp!2309622 () Bool)

(assert (=> b!7823756 (= e!4628566 (and tp!2309620 tp!2309622))))

(declare-fun b!7823755 () Bool)

(declare-fun tp!2309621 () Bool)

(assert (=> b!7823755 (= e!4628566 tp!2309621)))

(declare-fun b!7823754 () Bool)

(declare-fun tp!2309618 () Bool)

(declare-fun tp!2309619 () Bool)

(assert (=> b!7823754 (= e!4628566 (and tp!2309618 tp!2309619))))

(assert (= (and b!7823242 ((_ is ElementMatch!20953) (reg!21282 (regOne!42419 r1!6261)))) b!7823753))

(assert (= (and b!7823242 ((_ is Concat!29798) (reg!21282 (regOne!42419 r1!6261)))) b!7823754))

(assert (= (and b!7823242 ((_ is Star!20953) (reg!21282 (regOne!42419 r1!6261)))) b!7823755))

(assert (= (and b!7823242 ((_ is Union!20953) (reg!21282 (regOne!42419 r1!6261)))) b!7823756))

(declare-fun b!7823757 () Bool)

(declare-fun e!4628567 () Bool)

(assert (=> b!7823757 (= e!4628567 tp_is_empty!52261)))

(assert (=> b!7823241 (= tp!2309363 e!4628567)))

(declare-fun b!7823760 () Bool)

(declare-fun tp!2309625 () Bool)

(declare-fun tp!2309627 () Bool)

(assert (=> b!7823760 (= e!4628567 (and tp!2309625 tp!2309627))))

(declare-fun b!7823759 () Bool)

(declare-fun tp!2309626 () Bool)

(assert (=> b!7823759 (= e!4628567 tp!2309626)))

(declare-fun b!7823758 () Bool)

(declare-fun tp!2309623 () Bool)

(declare-fun tp!2309624 () Bool)

(assert (=> b!7823758 (= e!4628567 (and tp!2309623 tp!2309624))))

(assert (= (and b!7823241 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42419 r1!6261)))) b!7823757))

(assert (= (and b!7823241 ((_ is Concat!29798) (regOne!42418 (regOne!42419 r1!6261)))) b!7823758))

(assert (= (and b!7823241 ((_ is Star!20953) (regOne!42418 (regOne!42419 r1!6261)))) b!7823759))

(assert (= (and b!7823241 ((_ is Union!20953) (regOne!42418 (regOne!42419 r1!6261)))) b!7823760))

(declare-fun b!7823761 () Bool)

(declare-fun e!4628568 () Bool)

(assert (=> b!7823761 (= e!4628568 tp_is_empty!52261)))

(assert (=> b!7823241 (= tp!2309364 e!4628568)))

(declare-fun b!7823764 () Bool)

(declare-fun tp!2309630 () Bool)

(declare-fun tp!2309632 () Bool)

(assert (=> b!7823764 (= e!4628568 (and tp!2309630 tp!2309632))))

(declare-fun b!7823763 () Bool)

(declare-fun tp!2309631 () Bool)

(assert (=> b!7823763 (= e!4628568 tp!2309631)))

(declare-fun b!7823762 () Bool)

(declare-fun tp!2309628 () Bool)

(declare-fun tp!2309629 () Bool)

(assert (=> b!7823762 (= e!4628568 (and tp!2309628 tp!2309629))))

(assert (= (and b!7823241 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42419 r1!6261)))) b!7823761))

(assert (= (and b!7823241 ((_ is Concat!29798) (regTwo!42418 (regOne!42419 r1!6261)))) b!7823762))

(assert (= (and b!7823241 ((_ is Star!20953) (regTwo!42418 (regOne!42419 r1!6261)))) b!7823763))

(assert (= (and b!7823241 ((_ is Union!20953) (regTwo!42418 (regOne!42419 r1!6261)))) b!7823764))

(declare-fun b!7823765 () Bool)

(declare-fun e!4628569 () Bool)

(declare-fun tp!2309633 () Bool)

(assert (=> b!7823765 (= e!4628569 (and tp_is_empty!52261 tp!2309633))))

(assert (=> b!7823217 (= tp!2309335 e!4628569)))

(assert (= (and b!7823217 ((_ is Cons!73666) (t!388525 (t!388525 s1!4101)))) b!7823765))

(declare-fun b!7823766 () Bool)

(declare-fun e!4628570 () Bool)

(assert (=> b!7823766 (= e!4628570 tp_is_empty!52261)))

(assert (=> b!7823210 (= tp!2309327 e!4628570)))

(declare-fun b!7823769 () Bool)

(declare-fun tp!2309636 () Bool)

(declare-fun tp!2309638 () Bool)

(assert (=> b!7823769 (= e!4628570 (and tp!2309636 tp!2309638))))

(declare-fun b!7823768 () Bool)

(declare-fun tp!2309637 () Bool)

(assert (=> b!7823768 (= e!4628570 tp!2309637)))

(declare-fun b!7823767 () Bool)

(declare-fun tp!2309634 () Bool)

(declare-fun tp!2309635 () Bool)

(assert (=> b!7823767 (= e!4628570 (and tp!2309634 tp!2309635))))

(assert (= (and b!7823210 ((_ is ElementMatch!20953) (reg!21282 (regOne!42419 r2!6199)))) b!7823766))

(assert (= (and b!7823210 ((_ is Concat!29798) (reg!21282 (regOne!42419 r2!6199)))) b!7823767))

(assert (= (and b!7823210 ((_ is Star!20953) (reg!21282 (regOne!42419 r2!6199)))) b!7823768))

(assert (= (and b!7823210 ((_ is Union!20953) (reg!21282 (regOne!42419 r2!6199)))) b!7823769))

(declare-fun b!7823770 () Bool)

(declare-fun e!4628571 () Bool)

(assert (=> b!7823770 (= e!4628571 tp_is_empty!52261)))

(assert (=> b!7823209 (= tp!2309324 e!4628571)))

(declare-fun b!7823773 () Bool)

(declare-fun tp!2309641 () Bool)

(declare-fun tp!2309643 () Bool)

(assert (=> b!7823773 (= e!4628571 (and tp!2309641 tp!2309643))))

(declare-fun b!7823772 () Bool)

(declare-fun tp!2309642 () Bool)

(assert (=> b!7823772 (= e!4628571 tp!2309642)))

(declare-fun b!7823771 () Bool)

(declare-fun tp!2309639 () Bool)

(declare-fun tp!2309640 () Bool)

(assert (=> b!7823771 (= e!4628571 (and tp!2309639 tp!2309640))))

(assert (= (and b!7823209 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42419 r2!6199)))) b!7823770))

(assert (= (and b!7823209 ((_ is Concat!29798) (regOne!42418 (regOne!42419 r2!6199)))) b!7823771))

(assert (= (and b!7823209 ((_ is Star!20953) (regOne!42418 (regOne!42419 r2!6199)))) b!7823772))

(assert (= (and b!7823209 ((_ is Union!20953) (regOne!42418 (regOne!42419 r2!6199)))) b!7823773))

(declare-fun b!7823774 () Bool)

(declare-fun e!4628572 () Bool)

(assert (=> b!7823774 (= e!4628572 tp_is_empty!52261)))

(assert (=> b!7823209 (= tp!2309325 e!4628572)))

(declare-fun b!7823777 () Bool)

(declare-fun tp!2309646 () Bool)

(declare-fun tp!2309648 () Bool)

(assert (=> b!7823777 (= e!4628572 (and tp!2309646 tp!2309648))))

(declare-fun b!7823776 () Bool)

(declare-fun tp!2309647 () Bool)

(assert (=> b!7823776 (= e!4628572 tp!2309647)))

(declare-fun b!7823775 () Bool)

(declare-fun tp!2309644 () Bool)

(declare-fun tp!2309645 () Bool)

(assert (=> b!7823775 (= e!4628572 (and tp!2309644 tp!2309645))))

(assert (= (and b!7823209 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42419 r2!6199)))) b!7823774))

(assert (= (and b!7823209 ((_ is Concat!29798) (regTwo!42418 (regOne!42419 r2!6199)))) b!7823775))

(assert (= (and b!7823209 ((_ is Star!20953) (regTwo!42418 (regOne!42419 r2!6199)))) b!7823776))

(assert (= (and b!7823209 ((_ is Union!20953) (regTwo!42418 (regOne!42419 r2!6199)))) b!7823777))

(declare-fun b!7823778 () Bool)

(declare-fun e!4628573 () Bool)

(declare-fun tp!2309649 () Bool)

(assert (=> b!7823778 (= e!4628573 (and tp_is_empty!52261 tp!2309649))))

(assert (=> b!7823193 (= tp!2309308 e!4628573)))

(assert (= (and b!7823193 ((_ is Cons!73666) (t!388525 (t!388525 s1Rec!453)))) b!7823778))

(declare-fun b!7823779 () Bool)

(declare-fun e!4628574 () Bool)

(assert (=> b!7823779 (= e!4628574 tp_is_empty!52261)))

(assert (=> b!7823243 (= tp!2309365 e!4628574)))

(declare-fun b!7823782 () Bool)

(declare-fun tp!2309652 () Bool)

(declare-fun tp!2309654 () Bool)

(assert (=> b!7823782 (= e!4628574 (and tp!2309652 tp!2309654))))

(declare-fun b!7823781 () Bool)

(declare-fun tp!2309653 () Bool)

(assert (=> b!7823781 (= e!4628574 tp!2309653)))

(declare-fun b!7823780 () Bool)

(declare-fun tp!2309650 () Bool)

(declare-fun tp!2309651 () Bool)

(assert (=> b!7823780 (= e!4628574 (and tp!2309650 tp!2309651))))

(assert (= (and b!7823243 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42419 r1!6261)))) b!7823779))

(assert (= (and b!7823243 ((_ is Concat!29798) (regOne!42419 (regOne!42419 r1!6261)))) b!7823780))

(assert (= (and b!7823243 ((_ is Star!20953) (regOne!42419 (regOne!42419 r1!6261)))) b!7823781))

(assert (= (and b!7823243 ((_ is Union!20953) (regOne!42419 (regOne!42419 r1!6261)))) b!7823782))

(declare-fun b!7823783 () Bool)

(declare-fun e!4628575 () Bool)

(assert (=> b!7823783 (= e!4628575 tp_is_empty!52261)))

(assert (=> b!7823243 (= tp!2309367 e!4628575)))

(declare-fun b!7823786 () Bool)

(declare-fun tp!2309657 () Bool)

(declare-fun tp!2309659 () Bool)

(assert (=> b!7823786 (= e!4628575 (and tp!2309657 tp!2309659))))

(declare-fun b!7823785 () Bool)

(declare-fun tp!2309658 () Bool)

(assert (=> b!7823785 (= e!4628575 tp!2309658)))

(declare-fun b!7823784 () Bool)

(declare-fun tp!2309655 () Bool)

(declare-fun tp!2309656 () Bool)

(assert (=> b!7823784 (= e!4628575 (and tp!2309655 tp!2309656))))

(assert (= (and b!7823243 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42419 r1!6261)))) b!7823783))

(assert (= (and b!7823243 ((_ is Concat!29798) (regTwo!42419 (regOne!42419 r1!6261)))) b!7823784))

(assert (= (and b!7823243 ((_ is Star!20953) (regTwo!42419 (regOne!42419 r1!6261)))) b!7823785))

(assert (= (and b!7823243 ((_ is Union!20953) (regTwo!42419 (regOne!42419 r1!6261)))) b!7823786))

(declare-fun b!7823787 () Bool)

(declare-fun e!4628576 () Bool)

(assert (=> b!7823787 (= e!4628576 tp_is_empty!52261)))

(assert (=> b!7823227 (= tp!2309346 e!4628576)))

(declare-fun b!7823790 () Bool)

(declare-fun tp!2309662 () Bool)

(declare-fun tp!2309664 () Bool)

(assert (=> b!7823790 (= e!4628576 (and tp!2309662 tp!2309664))))

(declare-fun b!7823789 () Bool)

(declare-fun tp!2309663 () Bool)

(assert (=> b!7823789 (= e!4628576 tp!2309663)))

(declare-fun b!7823788 () Bool)

(declare-fun tp!2309660 () Bool)

(declare-fun tp!2309661 () Bool)

(assert (=> b!7823788 (= e!4628576 (and tp!2309660 tp!2309661))))

(assert (= (and b!7823227 ((_ is ElementMatch!20953) (regOne!42418 (reg!21282 r1!6261)))) b!7823787))

(assert (= (and b!7823227 ((_ is Concat!29798) (regOne!42418 (reg!21282 r1!6261)))) b!7823788))

(assert (= (and b!7823227 ((_ is Star!20953) (regOne!42418 (reg!21282 r1!6261)))) b!7823789))

(assert (= (and b!7823227 ((_ is Union!20953) (regOne!42418 (reg!21282 r1!6261)))) b!7823790))

(declare-fun b!7823791 () Bool)

(declare-fun e!4628577 () Bool)

(assert (=> b!7823791 (= e!4628577 tp_is_empty!52261)))

(assert (=> b!7823227 (= tp!2309347 e!4628577)))

(declare-fun b!7823794 () Bool)

(declare-fun tp!2309667 () Bool)

(declare-fun tp!2309669 () Bool)

(assert (=> b!7823794 (= e!4628577 (and tp!2309667 tp!2309669))))

(declare-fun b!7823793 () Bool)

(declare-fun tp!2309668 () Bool)

(assert (=> b!7823793 (= e!4628577 tp!2309668)))

(declare-fun b!7823792 () Bool)

(declare-fun tp!2309665 () Bool)

(declare-fun tp!2309666 () Bool)

(assert (=> b!7823792 (= e!4628577 (and tp!2309665 tp!2309666))))

(assert (= (and b!7823227 ((_ is ElementMatch!20953) (regTwo!42418 (reg!21282 r1!6261)))) b!7823791))

(assert (= (and b!7823227 ((_ is Concat!29798) (regTwo!42418 (reg!21282 r1!6261)))) b!7823792))

(assert (= (and b!7823227 ((_ is Star!20953) (regTwo!42418 (reg!21282 r1!6261)))) b!7823793))

(assert (= (and b!7823227 ((_ is Union!20953) (regTwo!42418 (reg!21282 r1!6261)))) b!7823794))

(declare-fun b!7823795 () Bool)

(declare-fun e!4628578 () Bool)

(assert (=> b!7823795 (= e!4628578 tp_is_empty!52261)))

(assert (=> b!7823236 (= tp!2309359 e!4628578)))

(declare-fun b!7823798 () Bool)

(declare-fun tp!2309672 () Bool)

(declare-fun tp!2309674 () Bool)

(assert (=> b!7823798 (= e!4628578 (and tp!2309672 tp!2309674))))

(declare-fun b!7823797 () Bool)

(declare-fun tp!2309673 () Bool)

(assert (=> b!7823797 (= e!4628578 tp!2309673)))

(declare-fun b!7823796 () Bool)

(declare-fun tp!2309670 () Bool)

(declare-fun tp!2309671 () Bool)

(assert (=> b!7823796 (= e!4628578 (and tp!2309670 tp!2309671))))

(assert (= (and b!7823236 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42418 r1!6261)))) b!7823795))

(assert (= (and b!7823236 ((_ is Concat!29798) (reg!21282 (regTwo!42418 r1!6261)))) b!7823796))

(assert (= (and b!7823236 ((_ is Star!20953) (reg!21282 (regTwo!42418 r1!6261)))) b!7823797))

(assert (= (and b!7823236 ((_ is Union!20953) (reg!21282 (regTwo!42418 r1!6261)))) b!7823798))

(declare-fun b!7823799 () Bool)

(declare-fun e!4628579 () Bool)

(assert (=> b!7823799 (= e!4628579 tp_is_empty!52261)))

(assert (=> b!7823211 (= tp!2309326 e!4628579)))

(declare-fun b!7823802 () Bool)

(declare-fun tp!2309677 () Bool)

(declare-fun tp!2309679 () Bool)

(assert (=> b!7823802 (= e!4628579 (and tp!2309677 tp!2309679))))

(declare-fun b!7823801 () Bool)

(declare-fun tp!2309678 () Bool)

(assert (=> b!7823801 (= e!4628579 tp!2309678)))

(declare-fun b!7823800 () Bool)

(declare-fun tp!2309675 () Bool)

(declare-fun tp!2309676 () Bool)

(assert (=> b!7823800 (= e!4628579 (and tp!2309675 tp!2309676))))

(assert (= (and b!7823211 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42419 r2!6199)))) b!7823799))

(assert (= (and b!7823211 ((_ is Concat!29798) (regOne!42419 (regOne!42419 r2!6199)))) b!7823800))

(assert (= (and b!7823211 ((_ is Star!20953) (regOne!42419 (regOne!42419 r2!6199)))) b!7823801))

(assert (= (and b!7823211 ((_ is Union!20953) (regOne!42419 (regOne!42419 r2!6199)))) b!7823802))

(declare-fun b!7823803 () Bool)

(declare-fun e!4628580 () Bool)

(assert (=> b!7823803 (= e!4628580 tp_is_empty!52261)))

(assert (=> b!7823211 (= tp!2309328 e!4628580)))

(declare-fun b!7823806 () Bool)

(declare-fun tp!2309682 () Bool)

(declare-fun tp!2309684 () Bool)

(assert (=> b!7823806 (= e!4628580 (and tp!2309682 tp!2309684))))

(declare-fun b!7823805 () Bool)

(declare-fun tp!2309683 () Bool)

(assert (=> b!7823805 (= e!4628580 tp!2309683)))

(declare-fun b!7823804 () Bool)

(declare-fun tp!2309680 () Bool)

(declare-fun tp!2309681 () Bool)

(assert (=> b!7823804 (= e!4628580 (and tp!2309680 tp!2309681))))

(assert (= (and b!7823211 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42419 r2!6199)))) b!7823803))

(assert (= (and b!7823211 ((_ is Concat!29798) (regTwo!42419 (regOne!42419 r2!6199)))) b!7823804))

(assert (= (and b!7823211 ((_ is Star!20953) (regTwo!42419 (regOne!42419 r2!6199)))) b!7823805))

(assert (= (and b!7823211 ((_ is Union!20953) (regTwo!42419 (regOne!42419 r2!6199)))) b!7823806))

(declare-fun b!7823807 () Bool)

(declare-fun e!4628581 () Bool)

(assert (=> b!7823807 (= e!4628581 tp_is_empty!52261)))

(assert (=> b!7823235 (= tp!2309356 e!4628581)))

(declare-fun b!7823810 () Bool)

(declare-fun tp!2309687 () Bool)

(declare-fun tp!2309689 () Bool)

(assert (=> b!7823810 (= e!4628581 (and tp!2309687 tp!2309689))))

(declare-fun b!7823809 () Bool)

(declare-fun tp!2309688 () Bool)

(assert (=> b!7823809 (= e!4628581 tp!2309688)))

(declare-fun b!7823808 () Bool)

(declare-fun tp!2309685 () Bool)

(declare-fun tp!2309686 () Bool)

(assert (=> b!7823808 (= e!4628581 (and tp!2309685 tp!2309686))))

(assert (= (and b!7823235 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42418 r1!6261)))) b!7823807))

(assert (= (and b!7823235 ((_ is Concat!29798) (regOne!42418 (regTwo!42418 r1!6261)))) b!7823808))

(assert (= (and b!7823235 ((_ is Star!20953) (regOne!42418 (regTwo!42418 r1!6261)))) b!7823809))

(assert (= (and b!7823235 ((_ is Union!20953) (regOne!42418 (regTwo!42418 r1!6261)))) b!7823810))

(declare-fun b!7823811 () Bool)

(declare-fun e!4628582 () Bool)

(assert (=> b!7823811 (= e!4628582 tp_is_empty!52261)))

(assert (=> b!7823235 (= tp!2309357 e!4628582)))

(declare-fun b!7823814 () Bool)

(declare-fun tp!2309692 () Bool)

(declare-fun tp!2309694 () Bool)

(assert (=> b!7823814 (= e!4628582 (and tp!2309692 tp!2309694))))

(declare-fun b!7823813 () Bool)

(declare-fun tp!2309693 () Bool)

(assert (=> b!7823813 (= e!4628582 tp!2309693)))

(declare-fun b!7823812 () Bool)

(declare-fun tp!2309690 () Bool)

(declare-fun tp!2309691 () Bool)

(assert (=> b!7823812 (= e!4628582 (and tp!2309690 tp!2309691))))

(assert (= (and b!7823235 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42418 r1!6261)))) b!7823811))

(assert (= (and b!7823235 ((_ is Concat!29798) (regTwo!42418 (regTwo!42418 r1!6261)))) b!7823812))

(assert (= (and b!7823235 ((_ is Star!20953) (regTwo!42418 (regTwo!42418 r1!6261)))) b!7823813))

(assert (= (and b!7823235 ((_ is Union!20953) (regTwo!42418 (regTwo!42418 r1!6261)))) b!7823814))

(check-sat (not b!7823617) (not d!2349936) (not b!7823480) (not bm!725651) (not b!7823659) (not b!7823810) (not b!7823714) (not b!7823522) (not b!7823710) (not b!7823747) (not b!7823428) (not b!7823641) (not b!7823649) (not b!7823613) (not d!2349942) (not b!7823794) (not d!2349888) (not b!7823432) (not b!7823635) (not b!7823663) (not b!7823660) (not b!7823709) (not b!7823775) (not bm!725645) (not b!7823678) (not b!7823499) (not b!7823534) (not b!7823436) (not b!7823623) (not b!7823698) (not b!7823647) (not d!2349922) (not b!7823763) (not b!7823632) (not b!7823772) (not d!2349934) (not b!7823669) (not b!7823459) (not b!7823511) (not b!7823574) (not b!7823750) (not b!7823805) (not b!7823809) (not b!7823505) (not b!7823520) (not b!7823767) (not b!7823515) (not b!7823599) (not b!7823484) (not b!7823544) (not b!7823759) (not b!7823506) (not b!7823801) (not b!7823707) (not b!7823687) (not bm!725642) (not bm!725643) (not b!7823656) (not d!2349944) (not bm!725640) (not b!7823776) (not b!7823673) (not b!7823726) (not b!7823577) (not b!7823715) (not b!7823812) (not b!7823765) (not b!7823751) (not b!7823627) (not b!7823731) (not b!7823631) (not b!7823612) (not b!7823813) (not b!7823768) (not b!7823611) (not b!7823737) (not b!7823609) (not bm!725641) (not b!7823798) (not b!7823697) (not b!7823742) (not b!7823717) (not b!7823691) (not b!7823743) (not b!7823788) (not b!7823749) (not b!7823695) (not d!2349954) (not d!2349950) (not b!7823762) (not b!7823603) (not b!7823804) (not d!2349974) (not b!7823790) (not bm!725633) (not b!7823702) (not b!7823780) (not b!7823438) (not b!7823553) (not b!7823655) (not d!2349890) (not b!7823705) (not b!7823685) (not b!7823639) (not bm!725657) (not bm!725637) (not b!7823699) (not b!7823554) (not b!7823693) (not b!7823615) (not b!7823735) (not b!7823781) (not b!7823793) (not b!7823640) (not bm!725653) (not b!7823758) (not b!7823555) (not bm!725649) (not bm!725618) (not b!7823664) (not bm!725621) (not bm!725632) (not b!7823690) (not b!7823486) (not b!7823739) (not b!7823474) (not b!7823541) (not b!7823585) (not b!7823677) (not b!7823488) (not b!7823786) (not b!7823725) (not bm!725634) (not b!7823508) (not b!7823703) (not b!7823667) (not b!7823746) (not bm!725648) (not b!7823437) (not b!7823487) (not d!2349956) (not b!7823586) (not b!7823769) (not bm!725635) (not b!7823785) (not b!7823643) (not d!2349926) (not b!7823653) (not b!7823624) (not b!7823621) (not b!7823521) (not b!7823548) (not d!2349968) (not b!7823686) (not b!7823418) (not b!7823661) (not b!7823629) (not b!7823723) (not b!7823808) tp_is_empty!52261 (not b!7823782) (not b!7823605) (not b!7823644) (not b!7823713) (not b!7823674) (not b!7823607) (not b!7823676) (not b!7823800) (not b!7823729) (not b!7823519) (not b!7823476) (not b!7823771) (not b!7823682) (not b!7823719) (not b!7823552) (not b!7823651) (not b!7823670) (not b!7823581) (not b!7823694) (not b!7823814) (not b!7823718) (not b!7823789) (not b!7823665) (not b!7823784) (not b!7823752) (not b!7823721) (not b!7823491) (not b!7823587) (not d!2349928) (not b!7823796) (not b!7823567) (not b!7823619) (not b!7823727) (not b!7823502) (not bm!725619) (not b!7823773) (not b!7823625) (not b!7823806) (not b!7823478) (not b!7823722) (not b!7823760) (not b!7823741) (not b!7823778) (not b!7823648) (not b!7823802) (not b!7823616) (not b!7823701) (not b!7823637) (not b!7823425) (not b!7823733) (not b!7823620) (not b!7823681) (not b!7823706) (not b!7823764) (not b!7823652) (not b!7823588) (not b!7823645) (not b!7823756) (not bm!725656) (not b!7823711) (not b!7823797) (not b!7823672) (not b!7823601) (not b!7823482) (not b!7823730) (not b!7823792) (not b!7823734) (not b!7823738) (not b!7823633) (not b!7823628) (not b!7823689) (not bm!725650) (not b!7823680) (not b!7823683) (not b!7823657) (not b!7823501) (not b!7823636) (not b!7823745) (not b!7823668) (not b!7823777) (not b!7823755) (not b!7823754))
(check-sat)
(get-model)

(declare-fun d!2350072 () Bool)

(assert (=> d!2350072 (= (head!15985 (tail!15526 s2Rec!453)) (h!80114 (tail!15526 s2Rec!453)))))

(assert (=> b!7823515 d!2350072))

(declare-fun d!2350074 () Bool)

(declare-fun lt!2676727 () Int)

(assert (=> d!2350074 (>= lt!2676727 0)))

(declare-fun e!4628746 () Int)

(assert (=> d!2350074 (= lt!2676727 e!4628746)))

(declare-fun c!1439827 () Bool)

(assert (=> d!2350074 (= c!1439827 ((_ is Nil!73666) (t!388525 lt!2676676)))))

(assert (=> d!2350074 (= (size!42753 (t!388525 lt!2676676)) lt!2676727)))

(declare-fun b!7824214 () Bool)

(assert (=> b!7824214 (= e!4628746 0)))

(declare-fun b!7824215 () Bool)

(assert (=> b!7824215 (= e!4628746 (+ 1 (size!42753 (t!388525 (t!388525 lt!2676676)))))))

(assert (= (and d!2350074 c!1439827) b!7824214))

(assert (= (and d!2350074 (not c!1439827)) b!7824215))

(declare-fun m!8246574 () Bool)

(assert (=> b!7824215 m!8246574))

(assert (=> b!7823603 d!2350074))

(assert (=> bm!725645 d!2349918))

(declare-fun b!7824216 () Bool)

(declare-fun e!4628749 () Bool)

(declare-fun call!725703 () Bool)

(assert (=> b!7824216 (= e!4628749 call!725703)))

(declare-fun b!7824217 () Bool)

(declare-fun e!4628751 () Bool)

(declare-fun call!725705 () Bool)

(assert (=> b!7824217 (= e!4628751 call!725705)))

(declare-fun c!1439828 () Bool)

(declare-fun bm!725698 () Bool)

(declare-fun c!1439829 () Bool)

(assert (=> bm!725698 (= call!725705 (validRegex!11367 (ite c!1439828 (reg!21282 lt!2676696) (ite c!1439829 (regOne!42419 lt!2676696) (regTwo!42418 lt!2676696)))))))

(declare-fun b!7824219 () Bool)

(declare-fun res!3113969 () Bool)

(declare-fun e!4628750 () Bool)

(assert (=> b!7824219 (=> res!3113969 e!4628750)))

(assert (=> b!7824219 (= res!3113969 (not ((_ is Concat!29798) lt!2676696)))))

(declare-fun e!4628748 () Bool)

(assert (=> b!7824219 (= e!4628748 e!4628750)))

(declare-fun b!7824220 () Bool)

(declare-fun e!4628747 () Bool)

(assert (=> b!7824220 (= e!4628747 e!4628748)))

(assert (=> b!7824220 (= c!1439829 ((_ is Union!20953) lt!2676696))))

(declare-fun b!7824221 () Bool)

(declare-fun e!4628753 () Bool)

(declare-fun call!725704 () Bool)

(assert (=> b!7824221 (= e!4628753 call!725704)))

(declare-fun bm!725699 () Bool)

(assert (=> bm!725699 (= call!725703 (validRegex!11367 (ite c!1439829 (regTwo!42419 lt!2676696) (regOne!42418 lt!2676696))))))

(declare-fun bm!725700 () Bool)

(assert (=> bm!725700 (= call!725704 call!725705)))

(declare-fun b!7824222 () Bool)

(declare-fun e!4628752 () Bool)

(assert (=> b!7824222 (= e!4628752 e!4628747)))

(assert (=> b!7824222 (= c!1439828 ((_ is Star!20953) lt!2676696))))

(declare-fun b!7824223 () Bool)

(declare-fun res!3113968 () Bool)

(assert (=> b!7824223 (=> (not res!3113968) (not e!4628749))))

(assert (=> b!7824223 (= res!3113968 call!725704)))

(assert (=> b!7824223 (= e!4628748 e!4628749)))

(declare-fun b!7824224 () Bool)

(assert (=> b!7824224 (= e!4628750 e!4628753)))

(declare-fun res!3113970 () Bool)

(assert (=> b!7824224 (=> (not res!3113970) (not e!4628753))))

(assert (=> b!7824224 (= res!3113970 call!725703)))

(declare-fun d!2350076 () Bool)

(declare-fun res!3113971 () Bool)

(assert (=> d!2350076 (=> res!3113971 e!4628752)))

(assert (=> d!2350076 (= res!3113971 ((_ is ElementMatch!20953) lt!2676696))))

(assert (=> d!2350076 (= (validRegex!11367 lt!2676696) e!4628752)))

(declare-fun b!7824218 () Bool)

(assert (=> b!7824218 (= e!4628747 e!4628751)))

(declare-fun res!3113967 () Bool)

(assert (=> b!7824218 (= res!3113967 (not (nullable!9296 (reg!21282 lt!2676696))))))

(assert (=> b!7824218 (=> (not res!3113967) (not e!4628751))))

(assert (= (and d!2350076 (not res!3113971)) b!7824222))

(assert (= (and b!7824222 c!1439828) b!7824218))

(assert (= (and b!7824222 (not c!1439828)) b!7824220))

(assert (= (and b!7824218 res!3113967) b!7824217))

(assert (= (and b!7824220 c!1439829) b!7824223))

(assert (= (and b!7824220 (not c!1439829)) b!7824219))

(assert (= (and b!7824223 res!3113968) b!7824216))

(assert (= (and b!7824219 (not res!3113969)) b!7824224))

(assert (= (and b!7824224 res!3113970) b!7824221))

(assert (= (or b!7824216 b!7824224) bm!725699))

(assert (= (or b!7824223 b!7824221) bm!725700))

(assert (= (or b!7824217 bm!725700) bm!725698))

(declare-fun m!8246576 () Bool)

(assert (=> bm!725698 m!8246576))

(declare-fun m!8246578 () Bool)

(assert (=> bm!725699 m!8246578))

(declare-fun m!8246580 () Bool)

(assert (=> b!7824218 m!8246580))

(assert (=> d!2349936 d!2350076))

(assert (=> d!2349936 d!2349836))

(declare-fun d!2350078 () Bool)

(assert (=> d!2350078 (= (nullable!9296 (reg!21282 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199)))) (nullableFct!3665 (reg!21282 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199)))))))

(declare-fun bs!1966760 () Bool)

(assert (= bs!1966760 d!2350078))

(declare-fun m!8246582 () Bool)

(assert (=> bs!1966760 m!8246582))

(assert (=> b!7823567 d!2350078))

(declare-fun lt!2676728 () List!73790)

(declare-fun b!7824228 () Bool)

(declare-fun e!4628755 () Bool)

(assert (=> b!7824228 (= e!4628755 (or (not (= s2!3721 Nil!73666)) (= lt!2676728 (t!388525 (t!388525 s1!4101)))))))

(declare-fun b!7824227 () Bool)

(declare-fun res!3113973 () Bool)

(assert (=> b!7824227 (=> (not res!3113973) (not e!4628755))))

(assert (=> b!7824227 (= res!3113973 (= (size!42753 lt!2676728) (+ (size!42753 (t!388525 (t!388525 s1!4101))) (size!42753 s2!3721))))))

(declare-fun b!7824225 () Bool)

(declare-fun e!4628754 () List!73790)

(assert (=> b!7824225 (= e!4628754 s2!3721)))

(declare-fun b!7824226 () Bool)

(assert (=> b!7824226 (= e!4628754 (Cons!73666 (h!80114 (t!388525 (t!388525 s1!4101))) (++!17987 (t!388525 (t!388525 (t!388525 s1!4101))) s2!3721)))))

(declare-fun d!2350080 () Bool)

(assert (=> d!2350080 e!4628755))

(declare-fun res!3113972 () Bool)

(assert (=> d!2350080 (=> (not res!3113972) (not e!4628755))))

(assert (=> d!2350080 (= res!3113972 (= (content!15637 lt!2676728) ((_ map or) (content!15637 (t!388525 (t!388525 s1!4101))) (content!15637 s2!3721))))))

(assert (=> d!2350080 (= lt!2676728 e!4628754)))

(declare-fun c!1439830 () Bool)

(assert (=> d!2350080 (= c!1439830 ((_ is Nil!73666) (t!388525 (t!388525 s1!4101))))))

(assert (=> d!2350080 (= (++!17987 (t!388525 (t!388525 s1!4101)) s2!3721) lt!2676728)))

(assert (= (and d!2350080 c!1439830) b!7824225))

(assert (= (and d!2350080 (not c!1439830)) b!7824226))

(assert (= (and d!2350080 res!3113972) b!7824227))

(assert (= (and b!7824227 res!3113973) b!7824228))

(declare-fun m!8246584 () Bool)

(assert (=> b!7824227 m!8246584))

(assert (=> b!7824227 m!8246396))

(assert (=> b!7824227 m!8246146))

(declare-fun m!8246586 () Bool)

(assert (=> b!7824226 m!8246586))

(declare-fun m!8246588 () Bool)

(assert (=> d!2350080 m!8246588))

(declare-fun m!8246590 () Bool)

(assert (=> d!2350080 m!8246590))

(assert (=> d!2350080 m!8246154))

(assert (=> b!7823505 d!2350080))

(declare-fun d!2350082 () Bool)

(declare-fun lt!2676729 () Int)

(assert (=> d!2350082 (>= lt!2676729 0)))

(declare-fun e!4628756 () Int)

(assert (=> d!2350082 (= lt!2676729 e!4628756)))

(declare-fun c!1439831 () Bool)

(assert (=> d!2350082 (= c!1439831 ((_ is Nil!73666) (t!388525 (t!388525 s1!4101))))))

(assert (=> d!2350082 (= (size!42753 (t!388525 (t!388525 s1!4101))) lt!2676729)))

(declare-fun b!7824229 () Bool)

(assert (=> b!7824229 (= e!4628756 0)))

(declare-fun b!7824230 () Bool)

(assert (=> b!7824230 (= e!4628756 (+ 1 (size!42753 (t!388525 (t!388525 (t!388525 s1!4101))))))))

(assert (= (and d!2350082 c!1439831) b!7824229))

(assert (= (and d!2350082 (not c!1439831)) b!7824230))

(declare-fun m!8246592 () Bool)

(assert (=> b!7824230 m!8246592))

(assert (=> b!7823607 d!2350082))

(declare-fun c!1439836 () Bool)

(declare-fun b!7824231 () Bool)

(assert (=> b!7824231 (= c!1439836 (nullable!9296 (regOne!42418 (ite c!1439739 (regOne!42419 r1!6261) (ite c!1439740 (reg!21282 r1!6261) (regOne!42418 r1!6261))))))))

(declare-fun e!4628760 () Regex!20953)

(declare-fun e!4628761 () Regex!20953)

(assert (=> b!7824231 (= e!4628760 e!4628761)))

(declare-fun bm!725701 () Bool)

(declare-fun call!725708 () Regex!20953)

(declare-fun call!725707 () Regex!20953)

(assert (=> bm!725701 (= call!725708 call!725707)))

(declare-fun b!7824232 () Bool)

(declare-fun e!4628758 () Regex!20953)

(assert (=> b!7824232 (= e!4628758 EmptyLang!20953)))

(declare-fun e!4628759 () Regex!20953)

(declare-fun b!7824233 () Bool)

(assert (=> b!7824233 (= e!4628759 (ite (= (head!15985 s1Rec!453) (c!1439622 (ite c!1439739 (regOne!42419 r1!6261) (ite c!1439740 (reg!21282 r1!6261) (regOne!42418 r1!6261))))) EmptyExpr!20953 EmptyLang!20953))))

(declare-fun d!2350084 () Bool)

(declare-fun lt!2676730 () Regex!20953)

(assert (=> d!2350084 (validRegex!11367 lt!2676730)))

(assert (=> d!2350084 (= lt!2676730 e!4628758)))

(declare-fun c!1439835 () Bool)

(assert (=> d!2350084 (= c!1439835 (or ((_ is EmptyExpr!20953) (ite c!1439739 (regOne!42419 r1!6261) (ite c!1439740 (reg!21282 r1!6261) (regOne!42418 r1!6261)))) ((_ is EmptyLang!20953) (ite c!1439739 (regOne!42419 r1!6261) (ite c!1439740 (reg!21282 r1!6261) (regOne!42418 r1!6261))))))))

(assert (=> d!2350084 (validRegex!11367 (ite c!1439739 (regOne!42419 r1!6261) (ite c!1439740 (reg!21282 r1!6261) (regOne!42418 r1!6261))))))

(assert (=> d!2350084 (= (derivativeStep!6255 (ite c!1439739 (regOne!42419 r1!6261) (ite c!1439740 (reg!21282 r1!6261) (regOne!42418 r1!6261))) (head!15985 s1Rec!453)) lt!2676730)))

(declare-fun b!7824234 () Bool)

(assert (=> b!7824234 (= e!4628760 (Concat!29798 call!725708 (ite c!1439739 (regOne!42419 r1!6261) (ite c!1439740 (reg!21282 r1!6261) (regOne!42418 r1!6261)))))))

(declare-fun call!725709 () Regex!20953)

(declare-fun b!7824235 () Bool)

(assert (=> b!7824235 (= e!4628761 (Union!20953 (Concat!29798 call!725709 (regTwo!42418 (ite c!1439739 (regOne!42419 r1!6261) (ite c!1439740 (reg!21282 r1!6261) (regOne!42418 r1!6261))))) EmptyLang!20953))))

(declare-fun b!7824236 () Bool)

(declare-fun c!1439832 () Bool)

(assert (=> b!7824236 (= c!1439832 ((_ is Union!20953) (ite c!1439739 (regOne!42419 r1!6261) (ite c!1439740 (reg!21282 r1!6261) (regOne!42418 r1!6261)))))))

(declare-fun e!4628757 () Regex!20953)

(assert (=> b!7824236 (= e!4628759 e!4628757)))

(declare-fun bm!725702 () Bool)

(assert (=> bm!725702 (= call!725709 call!725708)))

(declare-fun call!725706 () Regex!20953)

(declare-fun b!7824237 () Bool)

(assert (=> b!7824237 (= e!4628761 (Union!20953 (Concat!29798 call!725709 (regTwo!42418 (ite c!1439739 (regOne!42419 r1!6261) (ite c!1439740 (reg!21282 r1!6261) (regOne!42418 r1!6261))))) call!725706))))

(declare-fun b!7824238 () Bool)

(assert (=> b!7824238 (= e!4628757 e!4628760)))

(declare-fun c!1439833 () Bool)

(assert (=> b!7824238 (= c!1439833 ((_ is Star!20953) (ite c!1439739 (regOne!42419 r1!6261) (ite c!1439740 (reg!21282 r1!6261) (regOne!42418 r1!6261)))))))

(declare-fun bm!725703 () Bool)

(assert (=> bm!725703 (= call!725707 (derivativeStep!6255 (ite c!1439832 (regOne!42419 (ite c!1439739 (regOne!42419 r1!6261) (ite c!1439740 (reg!21282 r1!6261) (regOne!42418 r1!6261)))) (ite c!1439833 (reg!21282 (ite c!1439739 (regOne!42419 r1!6261) (ite c!1439740 (reg!21282 r1!6261) (regOne!42418 r1!6261)))) (regOne!42418 (ite c!1439739 (regOne!42419 r1!6261) (ite c!1439740 (reg!21282 r1!6261) (regOne!42418 r1!6261)))))) (head!15985 s1Rec!453)))))

(declare-fun bm!725704 () Bool)

(assert (=> bm!725704 (= call!725706 (derivativeStep!6255 (ite c!1439832 (regTwo!42419 (ite c!1439739 (regOne!42419 r1!6261) (ite c!1439740 (reg!21282 r1!6261) (regOne!42418 r1!6261)))) (regTwo!42418 (ite c!1439739 (regOne!42419 r1!6261) (ite c!1439740 (reg!21282 r1!6261) (regOne!42418 r1!6261))))) (head!15985 s1Rec!453)))))

(declare-fun b!7824239 () Bool)

(assert (=> b!7824239 (= e!4628758 e!4628759)))

(declare-fun c!1439834 () Bool)

(assert (=> b!7824239 (= c!1439834 ((_ is ElementMatch!20953) (ite c!1439739 (regOne!42419 r1!6261) (ite c!1439740 (reg!21282 r1!6261) (regOne!42418 r1!6261)))))))

(declare-fun b!7824240 () Bool)

(assert (=> b!7824240 (= e!4628757 (Union!20953 call!725707 call!725706))))

(assert (= (and d!2350084 c!1439835) b!7824232))

(assert (= (and d!2350084 (not c!1439835)) b!7824239))

(assert (= (and b!7824239 c!1439834) b!7824233))

(assert (= (and b!7824239 (not c!1439834)) b!7824236))

(assert (= (and b!7824236 c!1439832) b!7824240))

(assert (= (and b!7824236 (not c!1439832)) b!7824238))

(assert (= (and b!7824238 c!1439833) b!7824234))

(assert (= (and b!7824238 (not c!1439833)) b!7824231))

(assert (= (and b!7824231 c!1439836) b!7824237))

(assert (= (and b!7824231 (not c!1439836)) b!7824235))

(assert (= (or b!7824237 b!7824235) bm!725702))

(assert (= (or b!7824234 bm!725702) bm!725701))

(assert (= (or b!7824240 bm!725701) bm!725703))

(assert (= (or b!7824240 b!7824237) bm!725704))

(declare-fun m!8246594 () Bool)

(assert (=> b!7824231 m!8246594))

(declare-fun m!8246596 () Bool)

(assert (=> d!2350084 m!8246596))

(declare-fun m!8246598 () Bool)

(assert (=> d!2350084 m!8246598))

(assert (=> bm!725703 m!8246096))

(declare-fun m!8246600 () Bool)

(assert (=> bm!725703 m!8246600))

(assert (=> bm!725704 m!8246096))

(declare-fun m!8246602 () Bool)

(assert (=> bm!725704 m!8246602))

(assert (=> bm!725648 d!2350084))

(declare-fun b!7824244 () Bool)

(declare-fun e!4628764 () Bool)

(assert (=> b!7824244 (= e!4628764 (>= (size!42753 (tail!15526 (tail!15526 s1!4101))) (size!42753 (tail!15526 (tail!15526 s1Rec!453)))))))

(declare-fun b!7824242 () Bool)

(declare-fun res!3113976 () Bool)

(declare-fun e!4628763 () Bool)

(assert (=> b!7824242 (=> (not res!3113976) (not e!4628763))))

(assert (=> b!7824242 (= res!3113976 (= (head!15985 (tail!15526 (tail!15526 s1Rec!453))) (head!15985 (tail!15526 (tail!15526 s1!4101)))))))

(declare-fun d!2350086 () Bool)

(assert (=> d!2350086 e!4628764))

(declare-fun res!3113975 () Bool)

(assert (=> d!2350086 (=> res!3113975 e!4628764)))

(declare-fun lt!2676731 () Bool)

(assert (=> d!2350086 (= res!3113975 (not lt!2676731))))

(declare-fun e!4628762 () Bool)

(assert (=> d!2350086 (= lt!2676731 e!4628762)))

(declare-fun res!3113977 () Bool)

(assert (=> d!2350086 (=> res!3113977 e!4628762)))

(assert (=> d!2350086 (= res!3113977 ((_ is Nil!73666) (tail!15526 (tail!15526 s1Rec!453))))))

(assert (=> d!2350086 (= (isPrefix!6303 (tail!15526 (tail!15526 s1Rec!453)) (tail!15526 (tail!15526 s1!4101))) lt!2676731)))

(declare-fun b!7824243 () Bool)

(assert (=> b!7824243 (= e!4628763 (isPrefix!6303 (tail!15526 (tail!15526 (tail!15526 s1Rec!453))) (tail!15526 (tail!15526 (tail!15526 s1!4101)))))))

(declare-fun b!7824241 () Bool)

(assert (=> b!7824241 (= e!4628762 e!4628763)))

(declare-fun res!3113974 () Bool)

(assert (=> b!7824241 (=> (not res!3113974) (not e!4628763))))

(assert (=> b!7824241 (= res!3113974 (not ((_ is Nil!73666) (tail!15526 (tail!15526 s1!4101)))))))

(assert (= (and d!2350086 (not res!3113977)) b!7824241))

(assert (= (and b!7824241 res!3113974) b!7824242))

(assert (= (and b!7824242 res!3113976) b!7824243))

(assert (= (and d!2350086 (not res!3113975)) b!7824244))

(assert (=> b!7824244 m!8246292))

(declare-fun m!8246604 () Bool)

(assert (=> b!7824244 m!8246604))

(assert (=> b!7824244 m!8246290))

(declare-fun m!8246606 () Bool)

(assert (=> b!7824244 m!8246606))

(assert (=> b!7824242 m!8246290))

(declare-fun m!8246608 () Bool)

(assert (=> b!7824242 m!8246608))

(assert (=> b!7824242 m!8246292))

(declare-fun m!8246610 () Bool)

(assert (=> b!7824242 m!8246610))

(assert (=> b!7824243 m!8246290))

(declare-fun m!8246612 () Bool)

(assert (=> b!7824243 m!8246612))

(assert (=> b!7824243 m!8246292))

(declare-fun m!8246614 () Bool)

(assert (=> b!7824243 m!8246614))

(assert (=> b!7824243 m!8246612))

(assert (=> b!7824243 m!8246614))

(declare-fun m!8246616 () Bool)

(assert (=> b!7824243 m!8246616))

(assert (=> b!7823487 d!2350086))

(declare-fun d!2350088 () Bool)

(assert (=> d!2350088 (= (tail!15526 (tail!15526 s1Rec!453)) (t!388525 (tail!15526 s1Rec!453)))))

(assert (=> b!7823487 d!2350088))

(declare-fun d!2350090 () Bool)

(assert (=> d!2350090 (= (tail!15526 (tail!15526 s1!4101)) (t!388525 (tail!15526 s1!4101)))))

(assert (=> b!7823487 d!2350090))

(declare-fun c!1439841 () Bool)

(declare-fun b!7824245 () Bool)

(assert (=> b!7824245 (= c!1439841 (nullable!9296 (regOne!42418 (ite c!1439749 (regOne!42419 r1!6261) (ite c!1439750 (reg!21282 r1!6261) (regOne!42418 r1!6261))))))))

(declare-fun e!4628768 () Regex!20953)

(declare-fun e!4628769 () Regex!20953)

(assert (=> b!7824245 (= e!4628768 e!4628769)))

(declare-fun bm!725705 () Bool)

(declare-fun call!725712 () Regex!20953)

(declare-fun call!725711 () Regex!20953)

(assert (=> bm!725705 (= call!725712 call!725711)))

(declare-fun b!7824246 () Bool)

(declare-fun e!4628766 () Regex!20953)

(assert (=> b!7824246 (= e!4628766 EmptyLang!20953)))

(declare-fun e!4628767 () Regex!20953)

(declare-fun b!7824247 () Bool)

(assert (=> b!7824247 (= e!4628767 (ite (= (head!15985 s1!4101) (c!1439622 (ite c!1439749 (regOne!42419 r1!6261) (ite c!1439750 (reg!21282 r1!6261) (regOne!42418 r1!6261))))) EmptyExpr!20953 EmptyLang!20953))))

(declare-fun d!2350092 () Bool)

(declare-fun lt!2676732 () Regex!20953)

(assert (=> d!2350092 (validRegex!11367 lt!2676732)))

(assert (=> d!2350092 (= lt!2676732 e!4628766)))

(declare-fun c!1439840 () Bool)

(assert (=> d!2350092 (= c!1439840 (or ((_ is EmptyExpr!20953) (ite c!1439749 (regOne!42419 r1!6261) (ite c!1439750 (reg!21282 r1!6261) (regOne!42418 r1!6261)))) ((_ is EmptyLang!20953) (ite c!1439749 (regOne!42419 r1!6261) (ite c!1439750 (reg!21282 r1!6261) (regOne!42418 r1!6261))))))))

(assert (=> d!2350092 (validRegex!11367 (ite c!1439749 (regOne!42419 r1!6261) (ite c!1439750 (reg!21282 r1!6261) (regOne!42418 r1!6261))))))

(assert (=> d!2350092 (= (derivativeStep!6255 (ite c!1439749 (regOne!42419 r1!6261) (ite c!1439750 (reg!21282 r1!6261) (regOne!42418 r1!6261))) (head!15985 s1!4101)) lt!2676732)))

(declare-fun b!7824248 () Bool)

(assert (=> b!7824248 (= e!4628768 (Concat!29798 call!725712 (ite c!1439749 (regOne!42419 r1!6261) (ite c!1439750 (reg!21282 r1!6261) (regOne!42418 r1!6261)))))))

(declare-fun call!725713 () Regex!20953)

(declare-fun b!7824249 () Bool)

(assert (=> b!7824249 (= e!4628769 (Union!20953 (Concat!29798 call!725713 (regTwo!42418 (ite c!1439749 (regOne!42419 r1!6261) (ite c!1439750 (reg!21282 r1!6261) (regOne!42418 r1!6261))))) EmptyLang!20953))))

(declare-fun b!7824250 () Bool)

(declare-fun c!1439837 () Bool)

(assert (=> b!7824250 (= c!1439837 ((_ is Union!20953) (ite c!1439749 (regOne!42419 r1!6261) (ite c!1439750 (reg!21282 r1!6261) (regOne!42418 r1!6261)))))))

(declare-fun e!4628765 () Regex!20953)

(assert (=> b!7824250 (= e!4628767 e!4628765)))

(declare-fun bm!725706 () Bool)

(assert (=> bm!725706 (= call!725713 call!725712)))

(declare-fun b!7824251 () Bool)

(declare-fun call!725710 () Regex!20953)

(assert (=> b!7824251 (= e!4628769 (Union!20953 (Concat!29798 call!725713 (regTwo!42418 (ite c!1439749 (regOne!42419 r1!6261) (ite c!1439750 (reg!21282 r1!6261) (regOne!42418 r1!6261))))) call!725710))))

(declare-fun b!7824252 () Bool)

(assert (=> b!7824252 (= e!4628765 e!4628768)))

(declare-fun c!1439838 () Bool)

(assert (=> b!7824252 (= c!1439838 ((_ is Star!20953) (ite c!1439749 (regOne!42419 r1!6261) (ite c!1439750 (reg!21282 r1!6261) (regOne!42418 r1!6261)))))))

(declare-fun bm!725707 () Bool)

(assert (=> bm!725707 (= call!725711 (derivativeStep!6255 (ite c!1439837 (regOne!42419 (ite c!1439749 (regOne!42419 r1!6261) (ite c!1439750 (reg!21282 r1!6261) (regOne!42418 r1!6261)))) (ite c!1439838 (reg!21282 (ite c!1439749 (regOne!42419 r1!6261) (ite c!1439750 (reg!21282 r1!6261) (regOne!42418 r1!6261)))) (regOne!42418 (ite c!1439749 (regOne!42419 r1!6261) (ite c!1439750 (reg!21282 r1!6261) (regOne!42418 r1!6261)))))) (head!15985 s1!4101)))))

(declare-fun bm!725708 () Bool)

(assert (=> bm!725708 (= call!725710 (derivativeStep!6255 (ite c!1439837 (regTwo!42419 (ite c!1439749 (regOne!42419 r1!6261) (ite c!1439750 (reg!21282 r1!6261) (regOne!42418 r1!6261)))) (regTwo!42418 (ite c!1439749 (regOne!42419 r1!6261) (ite c!1439750 (reg!21282 r1!6261) (regOne!42418 r1!6261))))) (head!15985 s1!4101)))))

(declare-fun b!7824253 () Bool)

(assert (=> b!7824253 (= e!4628766 e!4628767)))

(declare-fun c!1439839 () Bool)

(assert (=> b!7824253 (= c!1439839 ((_ is ElementMatch!20953) (ite c!1439749 (regOne!42419 r1!6261) (ite c!1439750 (reg!21282 r1!6261) (regOne!42418 r1!6261)))))))

(declare-fun b!7824254 () Bool)

(assert (=> b!7824254 (= e!4628765 (Union!20953 call!725711 call!725710))))

(assert (= (and d!2350092 c!1439840) b!7824246))

(assert (= (and d!2350092 (not c!1439840)) b!7824253))

(assert (= (and b!7824253 c!1439839) b!7824247))

(assert (= (and b!7824253 (not c!1439839)) b!7824250))

(assert (= (and b!7824250 c!1439837) b!7824254))

(assert (= (and b!7824250 (not c!1439837)) b!7824252))

(assert (= (and b!7824252 c!1439838) b!7824248))

(assert (= (and b!7824252 (not c!1439838)) b!7824245))

(assert (= (and b!7824245 c!1439841) b!7824251))

(assert (= (and b!7824245 (not c!1439841)) b!7824249))

(assert (= (or b!7824251 b!7824249) bm!725706))

(assert (= (or b!7824248 bm!725706) bm!725705))

(assert (= (or b!7824254 bm!725705) bm!725707))

(assert (= (or b!7824254 b!7824251) bm!725708))

(declare-fun m!8246618 () Bool)

(assert (=> b!7824245 m!8246618))

(declare-fun m!8246620 () Bool)

(assert (=> d!2350092 m!8246620))

(declare-fun m!8246622 () Bool)

(assert (=> d!2350092 m!8246622))

(assert (=> bm!725707 m!8246062))

(declare-fun m!8246624 () Bool)

(assert (=> bm!725707 m!8246624))

(assert (=> bm!725708 m!8246062))

(declare-fun m!8246626 () Bool)

(assert (=> bm!725708 m!8246626))

(assert (=> bm!725656 d!2350092))

(declare-fun d!2350094 () Bool)

(declare-fun lt!2676733 () Int)

(assert (=> d!2350094 (>= lt!2676733 0)))

(declare-fun e!4628770 () Int)

(assert (=> d!2350094 (= lt!2676733 e!4628770)))

(declare-fun c!1439842 () Bool)

(assert (=> d!2350094 (= c!1439842 ((_ is Nil!73666) lt!2676693))))

(assert (=> d!2350094 (= (size!42753 lt!2676693) lt!2676733)))

(declare-fun b!7824255 () Bool)

(assert (=> b!7824255 (= e!4628770 0)))

(declare-fun b!7824256 () Bool)

(assert (=> b!7824256 (= e!4628770 (+ 1 (size!42753 (t!388525 lt!2676693))))))

(assert (= (and d!2350094 c!1439842) b!7824255))

(assert (= (and d!2350094 (not c!1439842)) b!7824256))

(declare-fun m!8246628 () Bool)

(assert (=> b!7824256 m!8246628))

(assert (=> b!7823502 d!2350094))

(assert (=> b!7823502 d!2349972))

(assert (=> b!7823502 d!2349960))

(declare-fun d!2350096 () Bool)

(assert (=> d!2350096 (= (isEmpty!42284 (tail!15526 (tail!15526 s1Rec!453))) ((_ is Nil!73666) (tail!15526 (tail!15526 s1Rec!453))))))

(assert (=> b!7823552 d!2350096))

(assert (=> b!7823552 d!2350088))

(assert (=> bm!725621 d!2349962))

(declare-fun d!2350098 () Bool)

(declare-fun c!1439843 () Bool)

(assert (=> d!2350098 (= c!1439843 ((_ is Nil!73666) (t!388525 s1!4101)))))

(declare-fun e!4628771 () (InoxSet C!42232))

(assert (=> d!2350098 (= (content!15637 (t!388525 s1!4101)) e!4628771)))

(declare-fun b!7824257 () Bool)

(assert (=> b!7824257 (= e!4628771 ((as const (Array C!42232 Bool)) false))))

(declare-fun b!7824258 () Bool)

(assert (=> b!7824258 (= e!4628771 ((_ map or) (store ((as const (Array C!42232 Bool)) false) (h!80114 (t!388525 s1!4101)) true) (content!15637 (t!388525 (t!388525 s1!4101)))))))

(assert (= (and d!2350098 c!1439843) b!7824257))

(assert (= (and d!2350098 (not c!1439843)) b!7824258))

(declare-fun m!8246630 () Bool)

(assert (=> b!7824258 m!8246630))

(assert (=> b!7824258 m!8246590))

(assert (=> b!7823476 d!2350098))

(declare-fun b!7824259 () Bool)

(declare-fun c!1439848 () Bool)

(assert (=> b!7824259 (= c!1439848 (nullable!9296 (regOne!42418 (ite c!1439729 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199)))))))

(declare-fun e!4628775 () Regex!20953)

(declare-fun e!4628776 () Regex!20953)

(assert (=> b!7824259 (= e!4628775 e!4628776)))

(declare-fun bm!725709 () Bool)

(declare-fun call!725716 () Regex!20953)

(declare-fun call!725715 () Regex!20953)

(assert (=> bm!725709 (= call!725716 call!725715)))

(declare-fun b!7824260 () Bool)

(declare-fun e!4628773 () Regex!20953)

(assert (=> b!7824260 (= e!4628773 EmptyLang!20953)))

(declare-fun b!7824261 () Bool)

(declare-fun e!4628774 () Regex!20953)

(assert (=> b!7824261 (= e!4628774 (ite (= (head!15985 s2Rec!453) (c!1439622 (ite c!1439729 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199)))) EmptyExpr!20953 EmptyLang!20953))))

(declare-fun d!2350100 () Bool)

(declare-fun lt!2676734 () Regex!20953)

(assert (=> d!2350100 (validRegex!11367 lt!2676734)))

(assert (=> d!2350100 (= lt!2676734 e!4628773)))

(declare-fun c!1439847 () Bool)

(assert (=> d!2350100 (= c!1439847 (or ((_ is EmptyExpr!20953) (ite c!1439729 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199))) ((_ is EmptyLang!20953) (ite c!1439729 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199)))))))

(assert (=> d!2350100 (validRegex!11367 (ite c!1439729 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199)))))

(assert (=> d!2350100 (= (derivativeStep!6255 (ite c!1439729 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199)) (head!15985 s2Rec!453)) lt!2676734)))

(declare-fun b!7824262 () Bool)

(assert (=> b!7824262 (= e!4628775 (Concat!29798 call!725716 (ite c!1439729 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199))))))

(declare-fun b!7824263 () Bool)

(declare-fun call!725717 () Regex!20953)

(assert (=> b!7824263 (= e!4628776 (Union!20953 (Concat!29798 call!725717 (regTwo!42418 (ite c!1439729 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199)))) EmptyLang!20953))))

(declare-fun b!7824264 () Bool)

(declare-fun c!1439844 () Bool)

(assert (=> b!7824264 (= c!1439844 ((_ is Union!20953) (ite c!1439729 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199))))))

(declare-fun e!4628772 () Regex!20953)

(assert (=> b!7824264 (= e!4628774 e!4628772)))

(declare-fun bm!725710 () Bool)

(assert (=> bm!725710 (= call!725717 call!725716)))

(declare-fun call!725714 () Regex!20953)

(declare-fun b!7824265 () Bool)

(assert (=> b!7824265 (= e!4628776 (Union!20953 (Concat!29798 call!725717 (regTwo!42418 (ite c!1439729 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199)))) call!725714))))

(declare-fun b!7824266 () Bool)

(assert (=> b!7824266 (= e!4628772 e!4628775)))

(declare-fun c!1439845 () Bool)

(assert (=> b!7824266 (= c!1439845 ((_ is Star!20953) (ite c!1439729 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199))))))

(declare-fun bm!725711 () Bool)

(assert (=> bm!725711 (= call!725715 (derivativeStep!6255 (ite c!1439844 (regOne!42419 (ite c!1439729 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199))) (ite c!1439845 (reg!21282 (ite c!1439729 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199))) (regOne!42418 (ite c!1439729 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199))))) (head!15985 s2Rec!453)))))

(declare-fun bm!725712 () Bool)

(assert (=> bm!725712 (= call!725714 (derivativeStep!6255 (ite c!1439844 (regTwo!42419 (ite c!1439729 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199))) (regTwo!42418 (ite c!1439729 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199)))) (head!15985 s2Rec!453)))))

(declare-fun b!7824267 () Bool)

(assert (=> b!7824267 (= e!4628773 e!4628774)))

(declare-fun c!1439846 () Bool)

(assert (=> b!7824267 (= c!1439846 ((_ is ElementMatch!20953) (ite c!1439729 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199))))))

(declare-fun b!7824268 () Bool)

(assert (=> b!7824268 (= e!4628772 (Union!20953 call!725715 call!725714))))

(assert (= (and d!2350100 c!1439847) b!7824260))

(assert (= (and d!2350100 (not c!1439847)) b!7824267))

(assert (= (and b!7824267 c!1439846) b!7824261))

(assert (= (and b!7824267 (not c!1439846)) b!7824264))

(assert (= (and b!7824264 c!1439844) b!7824268))

(assert (= (and b!7824264 (not c!1439844)) b!7824266))

(assert (= (and b!7824266 c!1439845) b!7824262))

(assert (= (and b!7824266 (not c!1439845)) b!7824259))

(assert (= (and b!7824259 c!1439848) b!7824265))

(assert (= (and b!7824259 (not c!1439848)) b!7824263))

(assert (= (or b!7824265 b!7824263) bm!725710))

(assert (= (or b!7824262 bm!725710) bm!725709))

(assert (= (or b!7824268 bm!725709) bm!725711))

(assert (= (or b!7824268 b!7824265) bm!725712))

(declare-fun m!8246632 () Bool)

(assert (=> b!7824259 m!8246632))

(declare-fun m!8246634 () Bool)

(assert (=> d!2350100 m!8246634))

(declare-fun m!8246636 () Bool)

(assert (=> d!2350100 m!8246636))

(assert (=> bm!725711 m!8246076))

(declare-fun m!8246638 () Bool)

(assert (=> bm!725711 m!8246638))

(assert (=> bm!725712 m!8246076))

(declare-fun m!8246640 () Bool)

(assert (=> bm!725712 m!8246640))

(assert (=> bm!725641 d!2350100))

(declare-fun d!2350102 () Bool)

(assert (=> d!2350102 (= (isEmpty!42284 (tail!15526 (tail!15526 s1!4101))) ((_ is Nil!73666) (tail!15526 (tail!15526 s1!4101))))))

(assert (=> b!7823585 d!2350102))

(assert (=> b!7823585 d!2350090))

(declare-fun d!2350104 () Bool)

(assert (=> d!2350104 (= (isEmpty!42284 (tail!15526 (tail!15526 s2!3721))) ((_ is Nil!73666) (tail!15526 (tail!15526 s2!3721))))))

(assert (=> b!7823438 d!2350104))

(declare-fun d!2350106 () Bool)

(assert (=> d!2350106 (= (tail!15526 (tail!15526 s2!3721)) (t!388525 (tail!15526 s2!3721)))))

(assert (=> b!7823438 d!2350106))

(assert (=> bm!725653 d!2349932))

(declare-fun b!7824269 () Bool)

(declare-fun c!1439853 () Bool)

(assert (=> b!7824269 (= c!1439853 (nullable!9296 (regOne!42418 (ite c!1439708 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199)))))))

(declare-fun e!4628780 () Regex!20953)

(declare-fun e!4628781 () Regex!20953)

(assert (=> b!7824269 (= e!4628780 e!4628781)))

(declare-fun bm!725713 () Bool)

(declare-fun call!725720 () Regex!20953)

(declare-fun call!725719 () Regex!20953)

(assert (=> bm!725713 (= call!725720 call!725719)))

(declare-fun b!7824270 () Bool)

(declare-fun e!4628778 () Regex!20953)

(assert (=> b!7824270 (= e!4628778 EmptyLang!20953)))

(declare-fun b!7824271 () Bool)

(declare-fun e!4628779 () Regex!20953)

(assert (=> b!7824271 (= e!4628779 (ite (= (head!15985 s2!3721) (c!1439622 (ite c!1439708 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199)))) EmptyExpr!20953 EmptyLang!20953))))

(declare-fun d!2350108 () Bool)

(declare-fun lt!2676735 () Regex!20953)

(assert (=> d!2350108 (validRegex!11367 lt!2676735)))

(assert (=> d!2350108 (= lt!2676735 e!4628778)))

(declare-fun c!1439852 () Bool)

(assert (=> d!2350108 (= c!1439852 (or ((_ is EmptyExpr!20953) (ite c!1439708 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199))) ((_ is EmptyLang!20953) (ite c!1439708 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199)))))))

(assert (=> d!2350108 (validRegex!11367 (ite c!1439708 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199)))))

(assert (=> d!2350108 (= (derivativeStep!6255 (ite c!1439708 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199)) (head!15985 s2!3721)) lt!2676735)))

(declare-fun b!7824272 () Bool)

(assert (=> b!7824272 (= e!4628780 (Concat!29798 call!725720 (ite c!1439708 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199))))))

(declare-fun b!7824273 () Bool)

(declare-fun call!725721 () Regex!20953)

(assert (=> b!7824273 (= e!4628781 (Union!20953 (Concat!29798 call!725721 (regTwo!42418 (ite c!1439708 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199)))) EmptyLang!20953))))

(declare-fun b!7824274 () Bool)

(declare-fun c!1439849 () Bool)

(assert (=> b!7824274 (= c!1439849 ((_ is Union!20953) (ite c!1439708 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199))))))

(declare-fun e!4628777 () Regex!20953)

(assert (=> b!7824274 (= e!4628779 e!4628777)))

(declare-fun bm!725714 () Bool)

(assert (=> bm!725714 (= call!725721 call!725720)))

(declare-fun call!725718 () Regex!20953)

(declare-fun b!7824275 () Bool)

(assert (=> b!7824275 (= e!4628781 (Union!20953 (Concat!29798 call!725721 (regTwo!42418 (ite c!1439708 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199)))) call!725718))))

(declare-fun b!7824276 () Bool)

(assert (=> b!7824276 (= e!4628777 e!4628780)))

(declare-fun c!1439850 () Bool)

(assert (=> b!7824276 (= c!1439850 ((_ is Star!20953) (ite c!1439708 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199))))))

(declare-fun bm!725715 () Bool)

(assert (=> bm!725715 (= call!725719 (derivativeStep!6255 (ite c!1439849 (regOne!42419 (ite c!1439708 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199))) (ite c!1439850 (reg!21282 (ite c!1439708 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199))) (regOne!42418 (ite c!1439708 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199))))) (head!15985 s2!3721)))))

(declare-fun bm!725716 () Bool)

(assert (=> bm!725716 (= call!725718 (derivativeStep!6255 (ite c!1439849 (regTwo!42419 (ite c!1439708 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199))) (regTwo!42418 (ite c!1439708 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199)))) (head!15985 s2!3721)))))

(declare-fun b!7824277 () Bool)

(assert (=> b!7824277 (= e!4628778 e!4628779)))

(declare-fun c!1439851 () Bool)

(assert (=> b!7824277 (= c!1439851 ((_ is ElementMatch!20953) (ite c!1439708 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199))))))

(declare-fun b!7824278 () Bool)

(assert (=> b!7824278 (= e!4628777 (Union!20953 call!725719 call!725718))))

(assert (= (and d!2350108 c!1439852) b!7824270))

(assert (= (and d!2350108 (not c!1439852)) b!7824277))

(assert (= (and b!7824277 c!1439851) b!7824271))

(assert (= (and b!7824277 (not c!1439851)) b!7824274))

(assert (= (and b!7824274 c!1439849) b!7824278))

(assert (= (and b!7824274 (not c!1439849)) b!7824276))

(assert (= (and b!7824276 c!1439850) b!7824272))

(assert (= (and b!7824276 (not c!1439850)) b!7824269))

(assert (= (and b!7824269 c!1439853) b!7824275))

(assert (= (and b!7824269 (not c!1439853)) b!7824273))

(assert (= (or b!7824275 b!7824273) bm!725714))

(assert (= (or b!7824272 bm!725714) bm!725713))

(assert (= (or b!7824278 bm!725713) bm!725715))

(assert (= (or b!7824278 b!7824275) bm!725716))

(declare-fun m!8246642 () Bool)

(assert (=> b!7824269 m!8246642))

(declare-fun m!8246644 () Bool)

(assert (=> d!2350108 m!8246644))

(declare-fun m!8246646 () Bool)

(assert (=> d!2350108 m!8246646))

(assert (=> bm!725715 m!8246110))

(declare-fun m!8246648 () Bool)

(assert (=> bm!725715 m!8246648))

(assert (=> bm!725716 m!8246110))

(declare-fun m!8246650 () Bool)

(assert (=> bm!725716 m!8246650))

(assert (=> bm!725633 d!2350108))

(assert (=> b!7823554 d!2350096))

(assert (=> b!7823554 d!2350088))

(declare-fun d!2350110 () Bool)

(assert (=> d!2350110 (= (nullable!9296 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))) (nullableFct!3665 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))))))

(declare-fun bs!1966761 () Bool)

(assert (= bs!1966761 d!2350110))

(assert (=> bs!1966761 m!8246084))

(declare-fun m!8246652 () Bool)

(assert (=> bs!1966761 m!8246652))

(assert (=> b!7823520 d!2350110))

(assert (=> b!7823436 d!2350104))

(assert (=> b!7823436 d!2350106))

(declare-fun b!7824279 () Bool)

(declare-fun e!4628784 () Bool)

(declare-fun call!725722 () Bool)

(assert (=> b!7824279 (= e!4628784 call!725722)))

(declare-fun b!7824280 () Bool)

(declare-fun e!4628786 () Bool)

(declare-fun call!725724 () Bool)

(assert (=> b!7824280 (= e!4628786 call!725724)))

(declare-fun c!1439854 () Bool)

(declare-fun c!1439855 () Bool)

(declare-fun bm!725717 () Bool)

(assert (=> bm!725717 (= call!725724 (validRegex!11367 (ite c!1439854 (reg!21282 (ite c!1439721 (reg!21282 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (ite c!1439722 (regOne!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regTwo!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261)))))) (ite c!1439855 (regOne!42419 (ite c!1439721 (reg!21282 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (ite c!1439722 (regOne!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regTwo!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261)))))) (regTwo!42418 (ite c!1439721 (reg!21282 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (ite c!1439722 (regOne!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regTwo!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))))))))))))

(declare-fun b!7824282 () Bool)

(declare-fun res!3113980 () Bool)

(declare-fun e!4628785 () Bool)

(assert (=> b!7824282 (=> res!3113980 e!4628785)))

(assert (=> b!7824282 (= res!3113980 (not ((_ is Concat!29798) (ite c!1439721 (reg!21282 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (ite c!1439722 (regOne!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regTwo!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))))))))))

(declare-fun e!4628783 () Bool)

(assert (=> b!7824282 (= e!4628783 e!4628785)))

(declare-fun b!7824283 () Bool)

(declare-fun e!4628782 () Bool)

(assert (=> b!7824283 (= e!4628782 e!4628783)))

(assert (=> b!7824283 (= c!1439855 ((_ is Union!20953) (ite c!1439721 (reg!21282 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (ite c!1439722 (regOne!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regTwo!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261)))))))))

(declare-fun b!7824284 () Bool)

(declare-fun e!4628788 () Bool)

(declare-fun call!725723 () Bool)

(assert (=> b!7824284 (= e!4628788 call!725723)))

(declare-fun bm!725718 () Bool)

(assert (=> bm!725718 (= call!725722 (validRegex!11367 (ite c!1439855 (regTwo!42419 (ite c!1439721 (reg!21282 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (ite c!1439722 (regOne!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regTwo!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261)))))) (regOne!42418 (ite c!1439721 (reg!21282 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (ite c!1439722 (regOne!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regTwo!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261)))))))))))

(declare-fun bm!725719 () Bool)

(assert (=> bm!725719 (= call!725723 call!725724)))

(declare-fun b!7824285 () Bool)

(declare-fun e!4628787 () Bool)

(assert (=> b!7824285 (= e!4628787 e!4628782)))

(assert (=> b!7824285 (= c!1439854 ((_ is Star!20953) (ite c!1439721 (reg!21282 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (ite c!1439722 (regOne!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regTwo!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261)))))))))

(declare-fun b!7824286 () Bool)

(declare-fun res!3113979 () Bool)

(assert (=> b!7824286 (=> (not res!3113979) (not e!4628784))))

(assert (=> b!7824286 (= res!3113979 call!725723)))

(assert (=> b!7824286 (= e!4628783 e!4628784)))

(declare-fun b!7824287 () Bool)

(assert (=> b!7824287 (= e!4628785 e!4628788)))

(declare-fun res!3113981 () Bool)

(assert (=> b!7824287 (=> (not res!3113981) (not e!4628788))))

(assert (=> b!7824287 (= res!3113981 call!725722)))

(declare-fun d!2350112 () Bool)

(declare-fun res!3113982 () Bool)

(assert (=> d!2350112 (=> res!3113982 e!4628787)))

(assert (=> d!2350112 (= res!3113982 ((_ is ElementMatch!20953) (ite c!1439721 (reg!21282 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (ite c!1439722 (regOne!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regTwo!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261)))))))))

(assert (=> d!2350112 (= (validRegex!11367 (ite c!1439721 (reg!21282 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (ite c!1439722 (regOne!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regTwo!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261)))))) e!4628787)))

(declare-fun b!7824281 () Bool)

(assert (=> b!7824281 (= e!4628782 e!4628786)))

(declare-fun res!3113978 () Bool)

(assert (=> b!7824281 (= res!3113978 (not (nullable!9296 (reg!21282 (ite c!1439721 (reg!21282 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (ite c!1439722 (regOne!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regTwo!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261)))))))))))

(assert (=> b!7824281 (=> (not res!3113978) (not e!4628786))))

(assert (= (and d!2350112 (not res!3113982)) b!7824285))

(assert (= (and b!7824285 c!1439854) b!7824281))

(assert (= (and b!7824285 (not c!1439854)) b!7824283))

(assert (= (and b!7824281 res!3113978) b!7824280))

(assert (= (and b!7824283 c!1439855) b!7824286))

(assert (= (and b!7824283 (not c!1439855)) b!7824282))

(assert (= (and b!7824286 res!3113979) b!7824279))

(assert (= (and b!7824282 (not res!3113980)) b!7824287))

(assert (= (and b!7824287 res!3113981) b!7824284))

(assert (= (or b!7824279 b!7824287) bm!725718))

(assert (= (or b!7824286 b!7824284) bm!725719))

(assert (= (or b!7824280 bm!725719) bm!725717))

(declare-fun m!8246654 () Bool)

(assert (=> bm!725717 m!8246654))

(declare-fun m!8246656 () Bool)

(assert (=> bm!725718 m!8246656))

(declare-fun m!8246658 () Bool)

(assert (=> b!7824281 m!8246658))

(assert (=> bm!725634 d!2350112))

(declare-fun d!2350114 () Bool)

(declare-fun c!1439856 () Bool)

(assert (=> d!2350114 (= c!1439856 ((_ is Nil!73666) (t!388525 s2Rec!453)))))

(declare-fun e!4628789 () (InoxSet C!42232))

(assert (=> d!2350114 (= (content!15637 (t!388525 s2Rec!453)) e!4628789)))

(declare-fun b!7824288 () Bool)

(assert (=> b!7824288 (= e!4628789 ((as const (Array C!42232 Bool)) false))))

(declare-fun b!7824289 () Bool)

(assert (=> b!7824289 (= e!4628789 ((_ map or) (store ((as const (Array C!42232 Bool)) false) (h!80114 (t!388525 s2Rec!453)) true) (content!15637 (t!388525 (t!388525 s2Rec!453)))))))

(assert (= (and d!2350114 c!1439856) b!7824288))

(assert (= (and d!2350114 (not c!1439856)) b!7824289))

(declare-fun m!8246660 () Bool)

(assert (=> b!7824289 m!8246660))

(declare-fun m!8246662 () Bool)

(assert (=> b!7824289 m!8246662))

(assert (=> b!7823484 d!2350114))

(assert (=> b!7823587 d!2350102))

(assert (=> b!7823587 d!2350090))

(declare-fun b!7824290 () Bool)

(declare-fun e!4628792 () Bool)

(declare-fun call!725725 () Bool)

(assert (=> b!7824290 (= e!4628792 call!725725)))

(declare-fun b!7824291 () Bool)

(declare-fun e!4628794 () Bool)

(declare-fun call!725727 () Bool)

(assert (=> b!7824291 (= e!4628794 call!725727)))

(declare-fun c!1439858 () Bool)

(declare-fun bm!725720 () Bool)

(declare-fun c!1439857 () Bool)

(assert (=> bm!725720 (= call!725727 (validRegex!11367 (ite c!1439857 (reg!21282 (ite c!1439722 (regTwo!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regOne!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))))) (ite c!1439858 (regOne!42419 (ite c!1439722 (regTwo!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regOne!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))))) (regTwo!42418 (ite c!1439722 (regTwo!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regOne!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261)))))))))))

(declare-fun b!7824293 () Bool)

(declare-fun res!3113985 () Bool)

(declare-fun e!4628793 () Bool)

(assert (=> b!7824293 (=> res!3113985 e!4628793)))

(assert (=> b!7824293 (= res!3113985 (not ((_ is Concat!29798) (ite c!1439722 (regTwo!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regOne!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261)))))))))

(declare-fun e!4628791 () Bool)

(assert (=> b!7824293 (= e!4628791 e!4628793)))

(declare-fun b!7824294 () Bool)

(declare-fun e!4628790 () Bool)

(assert (=> b!7824294 (= e!4628790 e!4628791)))

(assert (=> b!7824294 (= c!1439858 ((_ is Union!20953) (ite c!1439722 (regTwo!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regOne!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))))))))

(declare-fun b!7824295 () Bool)

(declare-fun e!4628796 () Bool)

(declare-fun call!725726 () Bool)

(assert (=> b!7824295 (= e!4628796 call!725726)))

(declare-fun bm!725721 () Bool)

(assert (=> bm!725721 (= call!725725 (validRegex!11367 (ite c!1439858 (regTwo!42419 (ite c!1439722 (regTwo!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regOne!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))))) (regOne!42418 (ite c!1439722 (regTwo!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regOne!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))))))))))

(declare-fun bm!725722 () Bool)

(assert (=> bm!725722 (= call!725726 call!725727)))

(declare-fun b!7824296 () Bool)

(declare-fun e!4628795 () Bool)

(assert (=> b!7824296 (= e!4628795 e!4628790)))

(assert (=> b!7824296 (= c!1439857 ((_ is Star!20953) (ite c!1439722 (regTwo!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regOne!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))))))))

(declare-fun b!7824297 () Bool)

(declare-fun res!3113984 () Bool)

(assert (=> b!7824297 (=> (not res!3113984) (not e!4628792))))

(assert (=> b!7824297 (= res!3113984 call!725726)))

(assert (=> b!7824297 (= e!4628791 e!4628792)))

(declare-fun b!7824298 () Bool)

(assert (=> b!7824298 (= e!4628793 e!4628796)))

(declare-fun res!3113986 () Bool)

(assert (=> b!7824298 (=> (not res!3113986) (not e!4628796))))

(assert (=> b!7824298 (= res!3113986 call!725725)))

(declare-fun d!2350116 () Bool)

(declare-fun res!3113987 () Bool)

(assert (=> d!2350116 (=> res!3113987 e!4628795)))

(assert (=> d!2350116 (= res!3113987 ((_ is ElementMatch!20953) (ite c!1439722 (regTwo!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regOne!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))))))))

(assert (=> d!2350116 (= (validRegex!11367 (ite c!1439722 (regTwo!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regOne!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))))) e!4628795)))

(declare-fun b!7824292 () Bool)

(assert (=> b!7824292 (= e!4628790 e!4628794)))

(declare-fun res!3113983 () Bool)

(assert (=> b!7824292 (= res!3113983 (not (nullable!9296 (reg!21282 (ite c!1439722 (regTwo!42419 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))) (regOne!42418 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261))))))))))

(assert (=> b!7824292 (=> (not res!3113983) (not e!4628794))))

(assert (= (and d!2350116 (not res!3113987)) b!7824296))

(assert (= (and b!7824296 c!1439857) b!7824292))

(assert (= (and b!7824296 (not c!1439857)) b!7824294))

(assert (= (and b!7824292 res!3113983) b!7824291))

(assert (= (and b!7824294 c!1439858) b!7824297))

(assert (= (and b!7824294 (not c!1439858)) b!7824293))

(assert (= (and b!7824297 res!3113984) b!7824290))

(assert (= (and b!7824293 (not res!3113985)) b!7824298))

(assert (= (and b!7824298 res!3113986) b!7824295))

(assert (= (or b!7824290 b!7824298) bm!725721))

(assert (= (or b!7824297 b!7824295) bm!725722))

(assert (= (or b!7824291 bm!725722) bm!725720))

(declare-fun m!8246664 () Bool)

(assert (=> bm!725720 m!8246664))

(declare-fun m!8246666 () Bool)

(assert (=> bm!725721 m!8246666))

(declare-fun m!8246668 () Bool)

(assert (=> b!7824292 m!8246668))

(assert (=> bm!725635 d!2350116))

(declare-fun d!2350118 () Bool)

(declare-fun lt!2676736 () Int)

(assert (=> d!2350118 (>= lt!2676736 0)))

(declare-fun e!4628797 () Int)

(assert (=> d!2350118 (= lt!2676736 e!4628797)))

(declare-fun c!1439859 () Bool)

(assert (=> d!2350118 (= c!1439859 ((_ is Nil!73666) (t!388525 s2Rec!453)))))

(assert (=> d!2350118 (= (size!42753 (t!388525 s2Rec!453)) lt!2676736)))

(declare-fun b!7824299 () Bool)

(assert (=> b!7824299 (= e!4628797 0)))

(declare-fun b!7824300 () Bool)

(assert (=> b!7824300 (= e!4628797 (+ 1 (size!42753 (t!388525 (t!388525 s2Rec!453)))))))

(assert (= (and d!2350118 c!1439859) b!7824299))

(assert (= (and d!2350118 (not c!1439859)) b!7824300))

(declare-fun m!8246670 () Bool)

(assert (=> b!7824300 m!8246670))

(assert (=> b!7823601 d!2350118))

(declare-fun d!2350120 () Bool)

(declare-fun lt!2676737 () Int)

(assert (=> d!2350120 (>= lt!2676737 0)))

(declare-fun e!4628798 () Int)

(assert (=> d!2350120 (= lt!2676737 e!4628798)))

(declare-fun c!1439860 () Bool)

(assert (=> d!2350120 (= c!1439860 ((_ is Nil!73666) (t!388525 (t!388525 s!14274))))))

(assert (=> d!2350120 (= (size!42753 (t!388525 (t!388525 s!14274))) lt!2676737)))

(declare-fun b!7824301 () Bool)

(assert (=> b!7824301 (= e!4628798 0)))

(declare-fun b!7824302 () Bool)

(assert (=> b!7824302 (= e!4628798 (+ 1 (size!42753 (t!388525 (t!388525 (t!388525 s!14274))))))))

(assert (= (and d!2350120 c!1439860) b!7824301))

(assert (= (and d!2350120 (not c!1439860)) b!7824302))

(declare-fun m!8246672 () Bool)

(assert (=> b!7824302 m!8246672))

(assert (=> b!7823499 d!2350120))

(assert (=> d!2349934 d!2349880))

(declare-fun b!7824303 () Bool)

(declare-fun e!4628801 () Bool)

(declare-fun call!725728 () Bool)

(assert (=> b!7824303 (= e!4628801 call!725728)))

(declare-fun b!7824304 () Bool)

(declare-fun e!4628803 () Bool)

(declare-fun call!725730 () Bool)

(assert (=> b!7824304 (= e!4628803 call!725730)))

(declare-fun c!1439862 () Bool)

(declare-fun c!1439861 () Bool)

(declare-fun bm!725723 () Bool)

(assert (=> bm!725723 (= call!725730 (validRegex!11367 (ite c!1439861 (reg!21282 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))) (ite c!1439862 (regOne!42419 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))) (regTwo!42418 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)))))))))

(declare-fun b!7824306 () Bool)

(declare-fun res!3113990 () Bool)

(declare-fun e!4628802 () Bool)

(assert (=> b!7824306 (=> res!3113990 e!4628802)))

(assert (=> b!7824306 (= res!3113990 (not ((_ is Concat!29798) (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)))))))

(declare-fun e!4628800 () Bool)

(assert (=> b!7824306 (= e!4628800 e!4628802)))

(declare-fun b!7824307 () Bool)

(declare-fun e!4628799 () Bool)

(assert (=> b!7824307 (= e!4628799 e!4628800)))

(assert (=> b!7824307 (= c!1439862 ((_ is Union!20953) (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))))))

(declare-fun b!7824308 () Bool)

(declare-fun e!4628805 () Bool)

(declare-fun call!725729 () Bool)

(assert (=> b!7824308 (= e!4628805 call!725729)))

(declare-fun bm!725724 () Bool)

(assert (=> bm!725724 (= call!725728 (validRegex!11367 (ite c!1439862 (regTwo!42419 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))) (regOne!42418 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))))))))

(declare-fun bm!725725 () Bool)

(assert (=> bm!725725 (= call!725729 call!725730)))

(declare-fun b!7824309 () Bool)

(declare-fun e!4628804 () Bool)

(assert (=> b!7824309 (= e!4628804 e!4628799)))

(assert (=> b!7824309 (= c!1439861 ((_ is Star!20953) (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))))))

(declare-fun b!7824310 () Bool)

(declare-fun res!3113989 () Bool)

(assert (=> b!7824310 (=> (not res!3113989) (not e!4628801))))

(assert (=> b!7824310 (= res!3113989 call!725729)))

(assert (=> b!7824310 (= e!4628800 e!4628801)))

(declare-fun b!7824311 () Bool)

(assert (=> b!7824311 (= e!4628802 e!4628805)))

(declare-fun res!3113991 () Bool)

(assert (=> b!7824311 (=> (not res!3113991) (not e!4628805))))

(assert (=> b!7824311 (= res!3113991 call!725728)))

(declare-fun d!2350122 () Bool)

(declare-fun res!3113992 () Bool)

(assert (=> d!2350122 (=> res!3113992 e!4628804)))

(assert (=> d!2350122 (= res!3113992 ((_ is ElementMatch!20953) (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))))))

(assert (=> d!2350122 (= (validRegex!11367 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))) e!4628804)))

(declare-fun b!7824305 () Bool)

(assert (=> b!7824305 (= e!4628799 e!4628803)))

(declare-fun res!3113988 () Bool)

(assert (=> b!7824305 (= res!3113988 (not (nullable!9296 (reg!21282 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))))))))

(assert (=> b!7824305 (=> (not res!3113988) (not e!4628803))))

(assert (= (and d!2350122 (not res!3113992)) b!7824309))

(assert (= (and b!7824309 c!1439861) b!7824305))

(assert (= (and b!7824309 (not c!1439861)) b!7824307))

(assert (= (and b!7824305 res!3113988) b!7824304))

(assert (= (and b!7824307 c!1439862) b!7824310))

(assert (= (and b!7824307 (not c!1439862)) b!7824306))

(assert (= (and b!7824310 res!3113989) b!7824303))

(assert (= (and b!7824306 (not res!3113990)) b!7824311))

(assert (= (and b!7824311 res!3113991) b!7824308))

(assert (= (or b!7824303 b!7824311) bm!725724))

(assert (= (or b!7824310 b!7824308) bm!725725))

(assert (= (or b!7824304 bm!725725) bm!725723))

(declare-fun m!8246674 () Bool)

(assert (=> bm!725723 m!8246674))

(declare-fun m!8246676 () Bool)

(assert (=> bm!725724 m!8246676))

(declare-fun m!8246678 () Bool)

(assert (=> b!7824305 m!8246678))

(assert (=> d!2349934 d!2350122))

(assert (=> b!7823508 d!2350072))

(declare-fun b!7824312 () Bool)

(declare-fun e!4628808 () Bool)

(declare-fun call!725731 () Bool)

(assert (=> b!7824312 (= e!4628808 call!725731)))

(declare-fun b!7824313 () Bool)

(declare-fun e!4628810 () Bool)

(declare-fun call!725733 () Bool)

(assert (=> b!7824313 (= e!4628810 call!725733)))

(declare-fun c!1439864 () Bool)

(declare-fun bm!725726 () Bool)

(declare-fun c!1439863 () Bool)

(assert (=> bm!725726 (= call!725733 (validRegex!11367 (ite c!1439863 (reg!21282 lt!2676698) (ite c!1439864 (regOne!42419 lt!2676698) (regTwo!42418 lt!2676698)))))))

(declare-fun b!7824315 () Bool)

(declare-fun res!3113995 () Bool)

(declare-fun e!4628809 () Bool)

(assert (=> b!7824315 (=> res!3113995 e!4628809)))

(assert (=> b!7824315 (= res!3113995 (not ((_ is Concat!29798) lt!2676698)))))

(declare-fun e!4628807 () Bool)

(assert (=> b!7824315 (= e!4628807 e!4628809)))

(declare-fun b!7824316 () Bool)

(declare-fun e!4628806 () Bool)

(assert (=> b!7824316 (= e!4628806 e!4628807)))

(assert (=> b!7824316 (= c!1439864 ((_ is Union!20953) lt!2676698))))

(declare-fun b!7824317 () Bool)

(declare-fun e!4628812 () Bool)

(declare-fun call!725732 () Bool)

(assert (=> b!7824317 (= e!4628812 call!725732)))

(declare-fun bm!725727 () Bool)

(assert (=> bm!725727 (= call!725731 (validRegex!11367 (ite c!1439864 (regTwo!42419 lt!2676698) (regOne!42418 lt!2676698))))))

(declare-fun bm!725728 () Bool)

(assert (=> bm!725728 (= call!725732 call!725733)))

(declare-fun b!7824318 () Bool)

(declare-fun e!4628811 () Bool)

(assert (=> b!7824318 (= e!4628811 e!4628806)))

(assert (=> b!7824318 (= c!1439863 ((_ is Star!20953) lt!2676698))))

(declare-fun b!7824319 () Bool)

(declare-fun res!3113994 () Bool)

(assert (=> b!7824319 (=> (not res!3113994) (not e!4628808))))

(assert (=> b!7824319 (= res!3113994 call!725732)))

(assert (=> b!7824319 (= e!4628807 e!4628808)))

(declare-fun b!7824320 () Bool)

(assert (=> b!7824320 (= e!4628809 e!4628812)))

(declare-fun res!3113996 () Bool)

(assert (=> b!7824320 (=> (not res!3113996) (not e!4628812))))

(assert (=> b!7824320 (= res!3113996 call!725731)))

(declare-fun d!2350124 () Bool)

(declare-fun res!3113997 () Bool)

(assert (=> d!2350124 (=> res!3113997 e!4628811)))

(assert (=> d!2350124 (= res!3113997 ((_ is ElementMatch!20953) lt!2676698))))

(assert (=> d!2350124 (= (validRegex!11367 lt!2676698) e!4628811)))

(declare-fun b!7824314 () Bool)

(assert (=> b!7824314 (= e!4628806 e!4628810)))

(declare-fun res!3113993 () Bool)

(assert (=> b!7824314 (= res!3113993 (not (nullable!9296 (reg!21282 lt!2676698))))))

(assert (=> b!7824314 (=> (not res!3113993) (not e!4628810))))

(assert (= (and d!2350124 (not res!3113997)) b!7824318))

(assert (= (and b!7824318 c!1439863) b!7824314))

(assert (= (and b!7824318 (not c!1439863)) b!7824316))

(assert (= (and b!7824314 res!3113993) b!7824313))

(assert (= (and b!7824316 c!1439864) b!7824319))

(assert (= (and b!7824316 (not c!1439864)) b!7824315))

(assert (= (and b!7824319 res!3113994) b!7824312))

(assert (= (and b!7824315 (not res!3113995)) b!7824320))

(assert (= (and b!7824320 res!3113996) b!7824317))

(assert (= (or b!7824312 b!7824320) bm!725727))

(assert (= (or b!7824319 b!7824317) bm!725728))

(assert (= (or b!7824313 bm!725728) bm!725726))

(declare-fun m!8246680 () Bool)

(assert (=> bm!725726 m!8246680))

(declare-fun m!8246682 () Bool)

(assert (=> bm!725727 m!8246682))

(declare-fun m!8246684 () Bool)

(assert (=> b!7824314 m!8246684))

(assert (=> d!2349944 d!2350124))

(assert (=> d!2349944 d!2349850))

(declare-fun b!7824321 () Bool)

(declare-fun e!4628815 () Bool)

(assert (=> b!7824321 (= e!4628815 (not (= (head!15985 (tail!15526 (tail!15526 s2!3721))) (c!1439622 (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)) (head!15985 (tail!15526 s2!3721)))))))))

(declare-fun b!7824322 () Bool)

(declare-fun e!4628818 () Bool)

(assert (=> b!7824322 (= e!4628818 e!4628815)))

(declare-fun res!3114005 () Bool)

(assert (=> b!7824322 (=> res!3114005 e!4628815)))

(declare-fun call!725734 () Bool)

(assert (=> b!7824322 (= res!3114005 call!725734)))

(declare-fun b!7824323 () Bool)

(declare-fun e!4628814 () Bool)

(declare-fun lt!2676738 () Bool)

(assert (=> b!7824323 (= e!4628814 (= lt!2676738 call!725734))))

(declare-fun b!7824324 () Bool)

(declare-fun e!4628819 () Bool)

(assert (=> b!7824324 (= e!4628819 (matchR!10409 (derivativeStep!6255 (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)) (head!15985 (tail!15526 s2!3721))) (head!15985 (tail!15526 (tail!15526 s2!3721)))) (tail!15526 (tail!15526 (tail!15526 s2!3721)))))))

(declare-fun d!2350126 () Bool)

(assert (=> d!2350126 e!4628814))

(declare-fun c!1439866 () Bool)

(assert (=> d!2350126 (= c!1439866 ((_ is EmptyExpr!20953) (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)) (head!15985 (tail!15526 s2!3721)))))))

(assert (=> d!2350126 (= lt!2676738 e!4628819)))

(declare-fun c!1439865 () Bool)

(assert (=> d!2350126 (= c!1439865 (isEmpty!42284 (tail!15526 (tail!15526 s2!3721))))))

(assert (=> d!2350126 (validRegex!11367 (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)) (head!15985 (tail!15526 s2!3721))))))

(assert (=> d!2350126 (= (matchR!10409 (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)) (head!15985 (tail!15526 s2!3721))) (tail!15526 (tail!15526 s2!3721))) lt!2676738)))

(declare-fun b!7824325 () Bool)

(declare-fun e!4628816 () Bool)

(assert (=> b!7824325 (= e!4628816 e!4628818)))

(declare-fun res!3114004 () Bool)

(assert (=> b!7824325 (=> (not res!3114004) (not e!4628818))))

(assert (=> b!7824325 (= res!3114004 (not lt!2676738))))

(declare-fun b!7824326 () Bool)

(declare-fun e!4628817 () Bool)

(assert (=> b!7824326 (= e!4628817 (not lt!2676738))))

(declare-fun b!7824327 () Bool)

(declare-fun res!3113998 () Bool)

(assert (=> b!7824327 (=> res!3113998 e!4628816)))

(declare-fun e!4628813 () Bool)

(assert (=> b!7824327 (= res!3113998 e!4628813)))

(declare-fun res!3114000 () Bool)

(assert (=> b!7824327 (=> (not res!3114000) (not e!4628813))))

(assert (=> b!7824327 (= res!3114000 lt!2676738)))

(declare-fun b!7824328 () Bool)

(assert (=> b!7824328 (= e!4628813 (= (head!15985 (tail!15526 (tail!15526 s2!3721))) (c!1439622 (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)) (head!15985 (tail!15526 s2!3721))))))))

(declare-fun b!7824329 () Bool)

(declare-fun res!3113999 () Bool)

(assert (=> b!7824329 (=> res!3113999 e!4628816)))

(assert (=> b!7824329 (= res!3113999 (not ((_ is ElementMatch!20953) (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)) (head!15985 (tail!15526 s2!3721))))))))

(assert (=> b!7824329 (= e!4628817 e!4628816)))

(declare-fun b!7824330 () Bool)

(assert (=> b!7824330 (= e!4628814 e!4628817)))

(declare-fun c!1439867 () Bool)

(assert (=> b!7824330 (= c!1439867 ((_ is EmptyLang!20953) (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)) (head!15985 (tail!15526 s2!3721)))))))

(declare-fun bm!725729 () Bool)

(assert (=> bm!725729 (= call!725734 (isEmpty!42284 (tail!15526 (tail!15526 s2!3721))))))

(declare-fun b!7824331 () Bool)

(declare-fun res!3114003 () Bool)

(assert (=> b!7824331 (=> (not res!3114003) (not e!4628813))))

(assert (=> b!7824331 (= res!3114003 (not call!725734))))

(declare-fun b!7824332 () Bool)

(declare-fun res!3114001 () Bool)

(assert (=> b!7824332 (=> res!3114001 e!4628815)))

(assert (=> b!7824332 (= res!3114001 (not (isEmpty!42284 (tail!15526 (tail!15526 (tail!15526 s2!3721))))))))

(declare-fun b!7824333 () Bool)

(assert (=> b!7824333 (= e!4628819 (nullable!9296 (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)) (head!15985 (tail!15526 s2!3721)))))))

(declare-fun b!7824334 () Bool)

(declare-fun res!3114002 () Bool)

(assert (=> b!7824334 (=> (not res!3114002) (not e!4628813))))

(assert (=> b!7824334 (= res!3114002 (isEmpty!42284 (tail!15526 (tail!15526 (tail!15526 s2!3721)))))))

(assert (= (and d!2350126 c!1439865) b!7824333))

(assert (= (and d!2350126 (not c!1439865)) b!7824324))

(assert (= (and d!2350126 c!1439866) b!7824323))

(assert (= (and d!2350126 (not c!1439866)) b!7824330))

(assert (= (and b!7824330 c!1439867) b!7824326))

(assert (= (and b!7824330 (not c!1439867)) b!7824329))

(assert (= (and b!7824329 (not res!3113999)) b!7824327))

(assert (= (and b!7824327 res!3114000) b!7824331))

(assert (= (and b!7824331 res!3114003) b!7824334))

(assert (= (and b!7824334 res!3114002) b!7824328))

(assert (= (and b!7824327 (not res!3113998)) b!7824325))

(assert (= (and b!7824325 res!3114004) b!7824322))

(assert (= (and b!7824322 (not res!3114005)) b!7824332))

(assert (= (and b!7824332 (not res!3114001)) b!7824321))

(assert (= (or b!7824323 b!7824322 b!7824331) bm!725729))

(assert (=> b!7824321 m!8246238))

(declare-fun m!8246686 () Bool)

(assert (=> b!7824321 m!8246686))

(assert (=> b!7824334 m!8246238))

(declare-fun m!8246688 () Bool)

(assert (=> b!7824334 m!8246688))

(assert (=> b!7824334 m!8246688))

(declare-fun m!8246690 () Bool)

(assert (=> b!7824334 m!8246690))

(assert (=> b!7824333 m!8246244))

(declare-fun m!8246692 () Bool)

(assert (=> b!7824333 m!8246692))

(assert (=> b!7824324 m!8246238))

(assert (=> b!7824324 m!8246686))

(assert (=> b!7824324 m!8246244))

(assert (=> b!7824324 m!8246686))

(declare-fun m!8246694 () Bool)

(assert (=> b!7824324 m!8246694))

(assert (=> b!7824324 m!8246238))

(assert (=> b!7824324 m!8246688))

(assert (=> b!7824324 m!8246694))

(assert (=> b!7824324 m!8246688))

(declare-fun m!8246696 () Bool)

(assert (=> b!7824324 m!8246696))

(assert (=> b!7824328 m!8246238))

(assert (=> b!7824328 m!8246686))

(assert (=> bm!725729 m!8246238))

(assert (=> bm!725729 m!8246240))

(assert (=> b!7824332 m!8246238))

(assert (=> b!7824332 m!8246688))

(assert (=> b!7824332 m!8246688))

(assert (=> b!7824332 m!8246690))

(assert (=> d!2350126 m!8246238))

(assert (=> d!2350126 m!8246240))

(assert (=> d!2350126 m!8246244))

(declare-fun m!8246698 () Bool)

(assert (=> d!2350126 m!8246698))

(assert (=> b!7823428 d!2350126))

(declare-fun b!7824335 () Bool)

(declare-fun c!1439872 () Bool)

(assert (=> b!7824335 (= c!1439872 (nullable!9296 (regOne!42418 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)))))))

(declare-fun e!4628823 () Regex!20953)

(declare-fun e!4628824 () Regex!20953)

(assert (=> b!7824335 (= e!4628823 e!4628824)))

(declare-fun bm!725730 () Bool)

(declare-fun call!725737 () Regex!20953)

(declare-fun call!725736 () Regex!20953)

(assert (=> bm!725730 (= call!725737 call!725736)))

(declare-fun b!7824336 () Bool)

(declare-fun e!4628821 () Regex!20953)

(assert (=> b!7824336 (= e!4628821 EmptyLang!20953)))

(declare-fun b!7824337 () Bool)

(declare-fun e!4628822 () Regex!20953)

(assert (=> b!7824337 (= e!4628822 (ite (= (head!15985 (tail!15526 s2!3721)) (c!1439622 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)))) EmptyExpr!20953 EmptyLang!20953))))

(declare-fun d!2350128 () Bool)

(declare-fun lt!2676739 () Regex!20953)

(assert (=> d!2350128 (validRegex!11367 lt!2676739)))

(assert (=> d!2350128 (= lt!2676739 e!4628821)))

(declare-fun c!1439871 () Bool)

(assert (=> d!2350128 (= c!1439871 (or ((_ is EmptyExpr!20953) (derivativeStep!6255 r2!6199 (head!15985 s2!3721))) ((_ is EmptyLang!20953) (derivativeStep!6255 r2!6199 (head!15985 s2!3721)))))))

(assert (=> d!2350128 (validRegex!11367 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)))))

(assert (=> d!2350128 (= (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)) (head!15985 (tail!15526 s2!3721))) lt!2676739)))

(declare-fun b!7824338 () Bool)

(assert (=> b!7824338 (= e!4628823 (Concat!29798 call!725737 (derivativeStep!6255 r2!6199 (head!15985 s2!3721))))))

(declare-fun call!725738 () Regex!20953)

(declare-fun b!7824339 () Bool)

(assert (=> b!7824339 (= e!4628824 (Union!20953 (Concat!29798 call!725738 (regTwo!42418 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)))) EmptyLang!20953))))

(declare-fun b!7824340 () Bool)

(declare-fun c!1439868 () Bool)

(assert (=> b!7824340 (= c!1439868 ((_ is Union!20953) (derivativeStep!6255 r2!6199 (head!15985 s2!3721))))))

(declare-fun e!4628820 () Regex!20953)

(assert (=> b!7824340 (= e!4628822 e!4628820)))

(declare-fun bm!725731 () Bool)

(assert (=> bm!725731 (= call!725738 call!725737)))

(declare-fun call!725735 () Regex!20953)

(declare-fun b!7824341 () Bool)

(assert (=> b!7824341 (= e!4628824 (Union!20953 (Concat!29798 call!725738 (regTwo!42418 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)))) call!725735))))

(declare-fun b!7824342 () Bool)

(assert (=> b!7824342 (= e!4628820 e!4628823)))

(declare-fun c!1439869 () Bool)

(assert (=> b!7824342 (= c!1439869 ((_ is Star!20953) (derivativeStep!6255 r2!6199 (head!15985 s2!3721))))))

(declare-fun bm!725732 () Bool)

(assert (=> bm!725732 (= call!725736 (derivativeStep!6255 (ite c!1439868 (regOne!42419 (derivativeStep!6255 r2!6199 (head!15985 s2!3721))) (ite c!1439869 (reg!21282 (derivativeStep!6255 r2!6199 (head!15985 s2!3721))) (regOne!42418 (derivativeStep!6255 r2!6199 (head!15985 s2!3721))))) (head!15985 (tail!15526 s2!3721))))))

(declare-fun bm!725733 () Bool)

(assert (=> bm!725733 (= call!725735 (derivativeStep!6255 (ite c!1439868 (regTwo!42419 (derivativeStep!6255 r2!6199 (head!15985 s2!3721))) (regTwo!42418 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)))) (head!15985 (tail!15526 s2!3721))))))

(declare-fun b!7824343 () Bool)

(assert (=> b!7824343 (= e!4628821 e!4628822)))

(declare-fun c!1439870 () Bool)

(assert (=> b!7824343 (= c!1439870 ((_ is ElementMatch!20953) (derivativeStep!6255 r2!6199 (head!15985 s2!3721))))))

(declare-fun b!7824344 () Bool)

(assert (=> b!7824344 (= e!4628820 (Union!20953 call!725736 call!725735))))

(assert (= (and d!2350128 c!1439871) b!7824336))

(assert (= (and d!2350128 (not c!1439871)) b!7824343))

(assert (= (and b!7824343 c!1439870) b!7824337))

(assert (= (and b!7824343 (not c!1439870)) b!7824340))

(assert (= (and b!7824340 c!1439868) b!7824344))

(assert (= (and b!7824340 (not c!1439868)) b!7824342))

(assert (= (and b!7824342 c!1439869) b!7824338))

(assert (= (and b!7824342 (not c!1439869)) b!7824335))

(assert (= (and b!7824335 c!1439872) b!7824341))

(assert (= (and b!7824335 (not c!1439872)) b!7824339))

(assert (= (or b!7824341 b!7824339) bm!725731))

(assert (= (or b!7824338 bm!725731) bm!725730))

(assert (= (or b!7824344 bm!725730) bm!725732))

(assert (= (or b!7824344 b!7824341) bm!725733))

(declare-fun m!8246700 () Bool)

(assert (=> b!7824335 m!8246700))

(declare-fun m!8246702 () Bool)

(assert (=> d!2350128 m!8246702))

(assert (=> d!2350128 m!8246116))

(assert (=> d!2350128 m!8246248))

(assert (=> bm!725732 m!8246236))

(declare-fun m!8246704 () Bool)

(assert (=> bm!725732 m!8246704))

(assert (=> bm!725733 m!8246236))

(declare-fun m!8246706 () Bool)

(assert (=> bm!725733 m!8246706))

(assert (=> b!7823428 d!2350128))

(declare-fun d!2350130 () Bool)

(assert (=> d!2350130 (= (head!15985 (tail!15526 s2!3721)) (h!80114 (tail!15526 s2!3721)))))

(assert (=> b!7823428 d!2350130))

(assert (=> b!7823428 d!2350106))

(declare-fun b!7824345 () Bool)

(declare-fun e!4628827 () Bool)

(declare-fun call!725739 () Bool)

(assert (=> b!7824345 (= e!4628827 call!725739)))

(declare-fun b!7824346 () Bool)

(declare-fun e!4628829 () Bool)

(declare-fun call!725741 () Bool)

(assert (=> b!7824346 (= e!4628829 call!725741)))

(declare-fun c!1439873 () Bool)

(declare-fun bm!725734 () Bool)

(declare-fun c!1439874 () Bool)

(assert (=> bm!725734 (= call!725741 (validRegex!11367 (ite c!1439873 (reg!21282 (ite c!1439693 (reg!21282 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (ite c!1439694 (regOne!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regTwo!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261))))))) (ite c!1439874 (regOne!42419 (ite c!1439693 (reg!21282 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (ite c!1439694 (regOne!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regTwo!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261))))))) (regTwo!42418 (ite c!1439693 (reg!21282 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (ite c!1439694 (regOne!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regTwo!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))))))))))))

(declare-fun b!7824348 () Bool)

(declare-fun res!3114008 () Bool)

(declare-fun e!4628828 () Bool)

(assert (=> b!7824348 (=> res!3114008 e!4628828)))

(assert (=> b!7824348 (= res!3114008 (not ((_ is Concat!29798) (ite c!1439693 (reg!21282 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (ite c!1439694 (regOne!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regTwo!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))))))))))

(declare-fun e!4628826 () Bool)

(assert (=> b!7824348 (= e!4628826 e!4628828)))

(declare-fun b!7824349 () Bool)

(declare-fun e!4628825 () Bool)

(assert (=> b!7824349 (= e!4628825 e!4628826)))

(assert (=> b!7824349 (= c!1439874 ((_ is Union!20953) (ite c!1439693 (reg!21282 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (ite c!1439694 (regOne!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regTwo!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261))))))))))

(declare-fun b!7824350 () Bool)

(declare-fun e!4628831 () Bool)

(declare-fun call!725740 () Bool)

(assert (=> b!7824350 (= e!4628831 call!725740)))

(declare-fun bm!725735 () Bool)

(assert (=> bm!725735 (= call!725739 (validRegex!11367 (ite c!1439874 (regTwo!42419 (ite c!1439693 (reg!21282 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (ite c!1439694 (regOne!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regTwo!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261))))))) (regOne!42418 (ite c!1439693 (reg!21282 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (ite c!1439694 (regOne!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regTwo!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261))))))))))))

(declare-fun bm!725736 () Bool)

(assert (=> bm!725736 (= call!725740 call!725741)))

(declare-fun b!7824351 () Bool)

(declare-fun e!4628830 () Bool)

(assert (=> b!7824351 (= e!4628830 e!4628825)))

(assert (=> b!7824351 (= c!1439873 ((_ is Star!20953) (ite c!1439693 (reg!21282 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (ite c!1439694 (regOne!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regTwo!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261))))))))))

(declare-fun b!7824352 () Bool)

(declare-fun res!3114007 () Bool)

(assert (=> b!7824352 (=> (not res!3114007) (not e!4628827))))

(assert (=> b!7824352 (= res!3114007 call!725740)))

(assert (=> b!7824352 (= e!4628826 e!4628827)))

(declare-fun b!7824353 () Bool)

(assert (=> b!7824353 (= e!4628828 e!4628831)))

(declare-fun res!3114009 () Bool)

(assert (=> b!7824353 (=> (not res!3114009) (not e!4628831))))

(assert (=> b!7824353 (= res!3114009 call!725739)))

(declare-fun d!2350132 () Bool)

(declare-fun res!3114010 () Bool)

(assert (=> d!2350132 (=> res!3114010 e!4628830)))

(assert (=> d!2350132 (= res!3114010 ((_ is ElementMatch!20953) (ite c!1439693 (reg!21282 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (ite c!1439694 (regOne!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regTwo!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261))))))))))

(assert (=> d!2350132 (= (validRegex!11367 (ite c!1439693 (reg!21282 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (ite c!1439694 (regOne!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regTwo!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261))))))) e!4628830)))

(declare-fun b!7824347 () Bool)

(assert (=> b!7824347 (= e!4628825 e!4628829)))

(declare-fun res!3114006 () Bool)

(assert (=> b!7824347 (= res!3114006 (not (nullable!9296 (reg!21282 (ite c!1439693 (reg!21282 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (ite c!1439694 (regOne!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regTwo!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261))))))))))))

(assert (=> b!7824347 (=> (not res!3114006) (not e!4628829))))

(assert (= (and d!2350132 (not res!3114010)) b!7824351))

(assert (= (and b!7824351 c!1439873) b!7824347))

(assert (= (and b!7824351 (not c!1439873)) b!7824349))

(assert (= (and b!7824347 res!3114006) b!7824346))

(assert (= (and b!7824349 c!1439874) b!7824352))

(assert (= (and b!7824349 (not c!1439874)) b!7824348))

(assert (= (and b!7824352 res!3114007) b!7824345))

(assert (= (and b!7824348 (not res!3114008)) b!7824353))

(assert (= (and b!7824353 res!3114009) b!7824350))

(assert (= (or b!7824345 b!7824353) bm!725735))

(assert (= (or b!7824352 b!7824350) bm!725736))

(assert (= (or b!7824346 bm!725736) bm!725734))

(declare-fun m!8246708 () Bool)

(assert (=> bm!725734 m!8246708))

(declare-fun m!8246710 () Bool)

(assert (=> bm!725735 m!8246710))

(declare-fun m!8246712 () Bool)

(assert (=> b!7824347 m!8246712))

(assert (=> bm!725618 d!2350132))

(declare-fun d!2350134 () Bool)

(assert (=> d!2350134 (= (nullable!9296 (regOne!42418 r2!6199)) (nullableFct!3665 (regOne!42418 r2!6199)))))

(declare-fun bs!1966762 () Bool)

(assert (= bs!1966762 d!2350134))

(declare-fun m!8246714 () Bool)

(assert (=> bs!1966762 m!8246714))

(assert (=> b!7823522 d!2350134))

(assert (=> b!7823459 d!2350134))

(declare-fun b!7824354 () Bool)

(declare-fun e!4628834 () Bool)

(assert (=> b!7824354 (= e!4628834 (not (= (head!15985 (tail!15526 (tail!15526 s1Rec!453))) (c!1439622 (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)) (head!15985 (tail!15526 s1Rec!453)))))))))

(declare-fun b!7824355 () Bool)

(declare-fun e!4628837 () Bool)

(assert (=> b!7824355 (= e!4628837 e!4628834)))

(declare-fun res!3114018 () Bool)

(assert (=> b!7824355 (=> res!3114018 e!4628834)))

(declare-fun call!725742 () Bool)

(assert (=> b!7824355 (= res!3114018 call!725742)))

(declare-fun b!7824356 () Bool)

(declare-fun e!4628833 () Bool)

(declare-fun lt!2676740 () Bool)

(assert (=> b!7824356 (= e!4628833 (= lt!2676740 call!725742))))

(declare-fun b!7824357 () Bool)

(declare-fun e!4628838 () Bool)

(assert (=> b!7824357 (= e!4628838 (matchR!10409 (derivativeStep!6255 (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)) (head!15985 (tail!15526 s1Rec!453))) (head!15985 (tail!15526 (tail!15526 s1Rec!453)))) (tail!15526 (tail!15526 (tail!15526 s1Rec!453)))))))

(declare-fun d!2350136 () Bool)

(assert (=> d!2350136 e!4628833))

(declare-fun c!1439876 () Bool)

(assert (=> d!2350136 (= c!1439876 ((_ is EmptyExpr!20953) (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)) (head!15985 (tail!15526 s1Rec!453)))))))

(assert (=> d!2350136 (= lt!2676740 e!4628838)))

(declare-fun c!1439875 () Bool)

(assert (=> d!2350136 (= c!1439875 (isEmpty!42284 (tail!15526 (tail!15526 s1Rec!453))))))

(assert (=> d!2350136 (validRegex!11367 (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)) (head!15985 (tail!15526 s1Rec!453))))))

(assert (=> d!2350136 (= (matchR!10409 (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)) (head!15985 (tail!15526 s1Rec!453))) (tail!15526 (tail!15526 s1Rec!453))) lt!2676740)))

(declare-fun b!7824358 () Bool)

(declare-fun e!4628835 () Bool)

(assert (=> b!7824358 (= e!4628835 e!4628837)))

(declare-fun res!3114017 () Bool)

(assert (=> b!7824358 (=> (not res!3114017) (not e!4628837))))

(assert (=> b!7824358 (= res!3114017 (not lt!2676740))))

(declare-fun b!7824359 () Bool)

(declare-fun e!4628836 () Bool)

(assert (=> b!7824359 (= e!4628836 (not lt!2676740))))

(declare-fun b!7824360 () Bool)

(declare-fun res!3114011 () Bool)

(assert (=> b!7824360 (=> res!3114011 e!4628835)))

(declare-fun e!4628832 () Bool)

(assert (=> b!7824360 (= res!3114011 e!4628832)))

(declare-fun res!3114013 () Bool)

(assert (=> b!7824360 (=> (not res!3114013) (not e!4628832))))

(assert (=> b!7824360 (= res!3114013 lt!2676740)))

(declare-fun b!7824361 () Bool)

(assert (=> b!7824361 (= e!4628832 (= (head!15985 (tail!15526 (tail!15526 s1Rec!453))) (c!1439622 (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)) (head!15985 (tail!15526 s1Rec!453))))))))

(declare-fun b!7824362 () Bool)

(declare-fun res!3114012 () Bool)

(assert (=> b!7824362 (=> res!3114012 e!4628835)))

(assert (=> b!7824362 (= res!3114012 (not ((_ is ElementMatch!20953) (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)) (head!15985 (tail!15526 s1Rec!453))))))))

(assert (=> b!7824362 (= e!4628836 e!4628835)))

(declare-fun b!7824363 () Bool)

(assert (=> b!7824363 (= e!4628833 e!4628836)))

(declare-fun c!1439877 () Bool)

(assert (=> b!7824363 (= c!1439877 ((_ is EmptyLang!20953) (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)) (head!15985 (tail!15526 s1Rec!453)))))))

(declare-fun bm!725737 () Bool)

(assert (=> bm!725737 (= call!725742 (isEmpty!42284 (tail!15526 (tail!15526 s1Rec!453))))))

(declare-fun b!7824364 () Bool)

(declare-fun res!3114016 () Bool)

(assert (=> b!7824364 (=> (not res!3114016) (not e!4628832))))

(assert (=> b!7824364 (= res!3114016 (not call!725742))))

(declare-fun b!7824365 () Bool)

(declare-fun res!3114014 () Bool)

(assert (=> b!7824365 (=> res!3114014 e!4628834)))

(assert (=> b!7824365 (= res!3114014 (not (isEmpty!42284 (tail!15526 (tail!15526 (tail!15526 s1Rec!453))))))))

(declare-fun b!7824366 () Bool)

(assert (=> b!7824366 (= e!4628838 (nullable!9296 (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)) (head!15985 (tail!15526 s1Rec!453)))))))

(declare-fun b!7824367 () Bool)

(declare-fun res!3114015 () Bool)

(assert (=> b!7824367 (=> (not res!3114015) (not e!4628832))))

(assert (=> b!7824367 (= res!3114015 (isEmpty!42284 (tail!15526 (tail!15526 (tail!15526 s1Rec!453)))))))

(assert (= (and d!2350136 c!1439875) b!7824366))

(assert (= (and d!2350136 (not c!1439875)) b!7824357))

(assert (= (and d!2350136 c!1439876) b!7824356))

(assert (= (and d!2350136 (not c!1439876)) b!7824363))

(assert (= (and b!7824363 c!1439877) b!7824359))

(assert (= (and b!7824363 (not c!1439877)) b!7824362))

(assert (= (and b!7824362 (not res!3114012)) b!7824360))

(assert (= (and b!7824360 res!3114013) b!7824364))

(assert (= (and b!7824364 res!3114016) b!7824367))

(assert (= (and b!7824367 res!3114015) b!7824361))

(assert (= (and b!7824360 (not res!3114011)) b!7824358))

(assert (= (and b!7824358 res!3114017) b!7824355))

(assert (= (and b!7824355 (not res!3114018)) b!7824365))

(assert (= (and b!7824365 (not res!3114014)) b!7824354))

(assert (= (or b!7824356 b!7824355 b!7824364) bm!725737))

(assert (=> b!7824354 m!8246290))

(assert (=> b!7824354 m!8246608))

(assert (=> b!7824367 m!8246290))

(assert (=> b!7824367 m!8246612))

(assert (=> b!7824367 m!8246612))

(declare-fun m!8246716 () Bool)

(assert (=> b!7824367 m!8246716))

(assert (=> b!7824366 m!8246348))

(declare-fun m!8246718 () Bool)

(assert (=> b!7824366 m!8246718))

(assert (=> b!7824357 m!8246290))

(assert (=> b!7824357 m!8246608))

(assert (=> b!7824357 m!8246348))

(assert (=> b!7824357 m!8246608))

(declare-fun m!8246720 () Bool)

(assert (=> b!7824357 m!8246720))

(assert (=> b!7824357 m!8246290))

(assert (=> b!7824357 m!8246612))

(assert (=> b!7824357 m!8246720))

(assert (=> b!7824357 m!8246612))

(declare-fun m!8246722 () Bool)

(assert (=> b!7824357 m!8246722))

(assert (=> b!7824361 m!8246290))

(assert (=> b!7824361 m!8246608))

(assert (=> bm!725737 m!8246290))

(assert (=> bm!725737 m!8246344))

(assert (=> b!7824365 m!8246290))

(assert (=> b!7824365 m!8246612))

(assert (=> b!7824365 m!8246612))

(assert (=> b!7824365 m!8246716))

(assert (=> d!2350136 m!8246290))

(assert (=> d!2350136 m!8246344))

(assert (=> d!2350136 m!8246348))

(declare-fun m!8246724 () Bool)

(assert (=> d!2350136 m!8246724))

(assert (=> b!7823544 d!2350136))

(declare-fun b!7824368 () Bool)

(declare-fun c!1439882 () Bool)

(assert (=> b!7824368 (= c!1439882 (nullable!9296 (regOne!42418 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)))))))

(declare-fun e!4628842 () Regex!20953)

(declare-fun e!4628843 () Regex!20953)

(assert (=> b!7824368 (= e!4628842 e!4628843)))

(declare-fun bm!725738 () Bool)

(declare-fun call!725745 () Regex!20953)

(declare-fun call!725744 () Regex!20953)

(assert (=> bm!725738 (= call!725745 call!725744)))

(declare-fun b!7824369 () Bool)

(declare-fun e!4628840 () Regex!20953)

(assert (=> b!7824369 (= e!4628840 EmptyLang!20953)))

(declare-fun b!7824370 () Bool)

(declare-fun e!4628841 () Regex!20953)

(assert (=> b!7824370 (= e!4628841 (ite (= (head!15985 (tail!15526 s1Rec!453)) (c!1439622 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)))) EmptyExpr!20953 EmptyLang!20953))))

(declare-fun d!2350138 () Bool)

(declare-fun lt!2676741 () Regex!20953)

(assert (=> d!2350138 (validRegex!11367 lt!2676741)))

(assert (=> d!2350138 (= lt!2676741 e!4628840)))

(declare-fun c!1439881 () Bool)

(assert (=> d!2350138 (= c!1439881 (or ((_ is EmptyExpr!20953) (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))) ((_ is EmptyLang!20953) (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)))))))

(assert (=> d!2350138 (validRegex!11367 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)))))

(assert (=> d!2350138 (= (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)) (head!15985 (tail!15526 s1Rec!453))) lt!2676741)))

(declare-fun b!7824371 () Bool)

(assert (=> b!7824371 (= e!4628842 (Concat!29798 call!725745 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))))))

(declare-fun b!7824372 () Bool)

(declare-fun call!725746 () Regex!20953)

(assert (=> b!7824372 (= e!4628843 (Union!20953 (Concat!29798 call!725746 (regTwo!42418 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)))) EmptyLang!20953))))

(declare-fun b!7824373 () Bool)

(declare-fun c!1439878 () Bool)

(assert (=> b!7824373 (= c!1439878 ((_ is Union!20953) (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))))))

(declare-fun e!4628839 () Regex!20953)

(assert (=> b!7824373 (= e!4628841 e!4628839)))

(declare-fun bm!725739 () Bool)

(assert (=> bm!725739 (= call!725746 call!725745)))

(declare-fun b!7824374 () Bool)

(declare-fun call!725743 () Regex!20953)

(assert (=> b!7824374 (= e!4628843 (Union!20953 (Concat!29798 call!725746 (regTwo!42418 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)))) call!725743))))

(declare-fun b!7824375 () Bool)

(assert (=> b!7824375 (= e!4628839 e!4628842)))

(declare-fun c!1439879 () Bool)

(assert (=> b!7824375 (= c!1439879 ((_ is Star!20953) (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))))))

(declare-fun bm!725740 () Bool)

(assert (=> bm!725740 (= call!725744 (derivativeStep!6255 (ite c!1439878 (regOne!42419 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))) (ite c!1439879 (reg!21282 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))) (regOne!42418 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))))) (head!15985 (tail!15526 s1Rec!453))))))

(declare-fun bm!725741 () Bool)

(assert (=> bm!725741 (= call!725743 (derivativeStep!6255 (ite c!1439878 (regTwo!42419 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))) (regTwo!42418 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)))) (head!15985 (tail!15526 s1Rec!453))))))

(declare-fun b!7824376 () Bool)

(assert (=> b!7824376 (= e!4628840 e!4628841)))

(declare-fun c!1439880 () Bool)

(assert (=> b!7824376 (= c!1439880 ((_ is ElementMatch!20953) (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))))))

(declare-fun b!7824377 () Bool)

(assert (=> b!7824377 (= e!4628839 (Union!20953 call!725744 call!725743))))

(assert (= (and d!2350138 c!1439881) b!7824369))

(assert (= (and d!2350138 (not c!1439881)) b!7824376))

(assert (= (and b!7824376 c!1439880) b!7824370))

(assert (= (and b!7824376 (not c!1439880)) b!7824373))

(assert (= (and b!7824373 c!1439878) b!7824377))

(assert (= (and b!7824373 (not c!1439878)) b!7824375))

(assert (= (and b!7824375 c!1439879) b!7824371))

(assert (= (and b!7824375 (not c!1439879)) b!7824368))

(assert (= (and b!7824368 c!1439882) b!7824374))

(assert (= (and b!7824368 (not c!1439882)) b!7824372))

(assert (= (or b!7824374 b!7824372) bm!725739))

(assert (= (or b!7824371 bm!725739) bm!725738))

(assert (= (or b!7824377 bm!725738) bm!725740))

(assert (= (or b!7824377 b!7824374) bm!725741))

(declare-fun m!8246726 () Bool)

(assert (=> b!7824368 m!8246726))

(declare-fun m!8246728 () Bool)

(assert (=> d!2350138 m!8246728))

(assert (=> d!2350138 m!8246104))

(assert (=> d!2350138 m!8246352))

(assert (=> bm!725740 m!8246286))

(declare-fun m!8246730 () Bool)

(assert (=> bm!725740 m!8246730))

(assert (=> bm!725741 m!8246286))

(declare-fun m!8246732 () Bool)

(assert (=> bm!725741 m!8246732))

(assert (=> b!7823544 d!2350138))

(declare-fun d!2350140 () Bool)

(assert (=> d!2350140 (= (head!15985 (tail!15526 s1Rec!453)) (h!80114 (tail!15526 s1Rec!453)))))

(assert (=> b!7823544 d!2350140))

(assert (=> b!7823544 d!2350088))

(declare-fun d!2350142 () Bool)

(declare-fun c!1439883 () Bool)

(assert (=> d!2350142 (= c!1439883 ((_ is Nil!73666) (t!388525 s2!3721)))))

(declare-fun e!4628844 () (InoxSet C!42232))

(assert (=> d!2350142 (= (content!15637 (t!388525 s2!3721)) e!4628844)))

(declare-fun b!7824378 () Bool)

(assert (=> b!7824378 (= e!4628844 ((as const (Array C!42232 Bool)) false))))

(declare-fun b!7824379 () Bool)

(assert (=> b!7824379 (= e!4628844 ((_ map or) (store ((as const (Array C!42232 Bool)) false) (h!80114 (t!388525 s2!3721)) true) (content!15637 (t!388525 (t!388525 s2!3721)))))))

(assert (= (and d!2350142 c!1439883) b!7824378))

(assert (= (and d!2350142 (not c!1439883)) b!7824379))

(declare-fun m!8246734 () Bool)

(assert (=> b!7824379 m!8246734))

(declare-fun m!8246736 () Bool)

(assert (=> b!7824379 m!8246736))

(assert (=> b!7823478 d!2350142))

(declare-fun d!2350144 () Bool)

(declare-fun c!1439884 () Bool)

(assert (=> d!2350144 (= c!1439884 ((_ is Nil!73666) lt!2676693))))

(declare-fun e!4628845 () (InoxSet C!42232))

(assert (=> d!2350144 (= (content!15637 lt!2676693) e!4628845)))

(declare-fun b!7824380 () Bool)

(assert (=> b!7824380 (= e!4628845 ((as const (Array C!42232 Bool)) false))))

(declare-fun b!7824381 () Bool)

(assert (=> b!7824381 (= e!4628845 ((_ map or) (store ((as const (Array C!42232 Bool)) false) (h!80114 lt!2676693) true) (content!15637 (t!388525 lt!2676693))))))

(assert (= (and d!2350144 c!1439884) b!7824380))

(assert (= (and d!2350144 (not c!1439884)) b!7824381))

(declare-fun m!8246738 () Bool)

(assert (=> b!7824381 m!8246738))

(declare-fun m!8246740 () Bool)

(assert (=> b!7824381 m!8246740))

(assert (=> d!2349926 d!2350144))

(declare-fun d!2350146 () Bool)

(declare-fun c!1439885 () Bool)

(assert (=> d!2350146 (= c!1439885 ((_ is Nil!73666) (t!388525 s1Rec!453)))))

(declare-fun e!4628846 () (InoxSet C!42232))

(assert (=> d!2350146 (= (content!15637 (t!388525 s1Rec!453)) e!4628846)))

(declare-fun b!7824382 () Bool)

(assert (=> b!7824382 (= e!4628846 ((as const (Array C!42232 Bool)) false))))

(declare-fun b!7824383 () Bool)

(assert (=> b!7824383 (= e!4628846 ((_ map or) (store ((as const (Array C!42232 Bool)) false) (h!80114 (t!388525 s1Rec!453)) true) (content!15637 (t!388525 (t!388525 s1Rec!453)))))))

(assert (= (and d!2350146 c!1439885) b!7824382))

(assert (= (and d!2350146 (not c!1439885)) b!7824383))

(declare-fun m!8246742 () Bool)

(assert (=> b!7824383 m!8246742))

(declare-fun m!8246744 () Bool)

(assert (=> b!7824383 m!8246744))

(assert (=> d!2349926 d!2350146))

(assert (=> d!2349926 d!2349908))

(declare-fun b!7824384 () Bool)

(declare-fun e!4628849 () Bool)

(assert (=> b!7824384 (= e!4628849 (not (= (head!15985 (tail!15526 (tail!15526 s1!4101))) (c!1439622 (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)) (head!15985 (tail!15526 s1!4101)))))))))

(declare-fun b!7824385 () Bool)

(declare-fun e!4628852 () Bool)

(assert (=> b!7824385 (= e!4628852 e!4628849)))

(declare-fun res!3114026 () Bool)

(assert (=> b!7824385 (=> res!3114026 e!4628849)))

(declare-fun call!725747 () Bool)

(assert (=> b!7824385 (= res!3114026 call!725747)))

(declare-fun b!7824386 () Bool)

(declare-fun e!4628848 () Bool)

(declare-fun lt!2676742 () Bool)

(assert (=> b!7824386 (= e!4628848 (= lt!2676742 call!725747))))

(declare-fun b!7824387 () Bool)

(declare-fun e!4628853 () Bool)

(assert (=> b!7824387 (= e!4628853 (matchR!10409 (derivativeStep!6255 (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)) (head!15985 (tail!15526 s1!4101))) (head!15985 (tail!15526 (tail!15526 s1!4101)))) (tail!15526 (tail!15526 (tail!15526 s1!4101)))))))

(declare-fun d!2350148 () Bool)

(assert (=> d!2350148 e!4628848))

(declare-fun c!1439887 () Bool)

(assert (=> d!2350148 (= c!1439887 ((_ is EmptyExpr!20953) (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)) (head!15985 (tail!15526 s1!4101)))))))

(assert (=> d!2350148 (= lt!2676742 e!4628853)))

(declare-fun c!1439886 () Bool)

(assert (=> d!2350148 (= c!1439886 (isEmpty!42284 (tail!15526 (tail!15526 s1!4101))))))

(assert (=> d!2350148 (validRegex!11367 (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)) (head!15985 (tail!15526 s1!4101))))))

(assert (=> d!2350148 (= (matchR!10409 (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)) (head!15985 (tail!15526 s1!4101))) (tail!15526 (tail!15526 s1!4101))) lt!2676742)))

(declare-fun b!7824388 () Bool)

(declare-fun e!4628850 () Bool)

(assert (=> b!7824388 (= e!4628850 e!4628852)))

(declare-fun res!3114025 () Bool)

(assert (=> b!7824388 (=> (not res!3114025) (not e!4628852))))

(assert (=> b!7824388 (= res!3114025 (not lt!2676742))))

(declare-fun b!7824389 () Bool)

(declare-fun e!4628851 () Bool)

(assert (=> b!7824389 (= e!4628851 (not lt!2676742))))

(declare-fun b!7824390 () Bool)

(declare-fun res!3114019 () Bool)

(assert (=> b!7824390 (=> res!3114019 e!4628850)))

(declare-fun e!4628847 () Bool)

(assert (=> b!7824390 (= res!3114019 e!4628847)))

(declare-fun res!3114021 () Bool)

(assert (=> b!7824390 (=> (not res!3114021) (not e!4628847))))

(assert (=> b!7824390 (= res!3114021 lt!2676742)))

(declare-fun b!7824391 () Bool)

(assert (=> b!7824391 (= e!4628847 (= (head!15985 (tail!15526 (tail!15526 s1!4101))) (c!1439622 (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)) (head!15985 (tail!15526 s1!4101))))))))

(declare-fun b!7824392 () Bool)

(declare-fun res!3114020 () Bool)

(assert (=> b!7824392 (=> res!3114020 e!4628850)))

(assert (=> b!7824392 (= res!3114020 (not ((_ is ElementMatch!20953) (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)) (head!15985 (tail!15526 s1!4101))))))))

(assert (=> b!7824392 (= e!4628851 e!4628850)))

(declare-fun b!7824393 () Bool)

(assert (=> b!7824393 (= e!4628848 e!4628851)))

(declare-fun c!1439888 () Bool)

(assert (=> b!7824393 (= c!1439888 ((_ is EmptyLang!20953) (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)) (head!15985 (tail!15526 s1!4101)))))))

(declare-fun bm!725742 () Bool)

(assert (=> bm!725742 (= call!725747 (isEmpty!42284 (tail!15526 (tail!15526 s1!4101))))))

(declare-fun b!7824394 () Bool)

(declare-fun res!3114024 () Bool)

(assert (=> b!7824394 (=> (not res!3114024) (not e!4628847))))

(assert (=> b!7824394 (= res!3114024 (not call!725747))))

(declare-fun b!7824395 () Bool)

(declare-fun res!3114022 () Bool)

(assert (=> b!7824395 (=> res!3114022 e!4628849)))

(assert (=> b!7824395 (= res!3114022 (not (isEmpty!42284 (tail!15526 (tail!15526 (tail!15526 s1!4101))))))))

(declare-fun b!7824396 () Bool)

(assert (=> b!7824396 (= e!4628853 (nullable!9296 (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)) (head!15985 (tail!15526 s1!4101)))))))

(declare-fun b!7824397 () Bool)

(declare-fun res!3114023 () Bool)

(assert (=> b!7824397 (=> (not res!3114023) (not e!4628847))))

(assert (=> b!7824397 (= res!3114023 (isEmpty!42284 (tail!15526 (tail!15526 (tail!15526 s1!4101)))))))

(assert (= (and d!2350148 c!1439886) b!7824396))

(assert (= (and d!2350148 (not c!1439886)) b!7824387))

(assert (= (and d!2350148 c!1439887) b!7824386))

(assert (= (and d!2350148 (not c!1439887)) b!7824393))

(assert (= (and b!7824393 c!1439888) b!7824389))

(assert (= (and b!7824393 (not c!1439888)) b!7824392))

(assert (= (and b!7824392 (not res!3114020)) b!7824390))

(assert (= (and b!7824390 res!3114021) b!7824394))

(assert (= (and b!7824394 res!3114024) b!7824397))

(assert (= (and b!7824397 res!3114023) b!7824391))

(assert (= (and b!7824390 (not res!3114019)) b!7824388))

(assert (= (and b!7824388 res!3114025) b!7824385))

(assert (= (and b!7824385 (not res!3114026)) b!7824395))

(assert (= (and b!7824395 (not res!3114022)) b!7824384))

(assert (= (or b!7824386 b!7824385 b!7824394) bm!725742))

(assert (=> b!7824384 m!8246292))

(assert (=> b!7824384 m!8246610))

(assert (=> b!7824397 m!8246292))

(assert (=> b!7824397 m!8246614))

(assert (=> b!7824397 m!8246614))

(declare-fun m!8246746 () Bool)

(assert (=> b!7824397 m!8246746))

(assert (=> b!7824396 m!8246374))

(declare-fun m!8246748 () Bool)

(assert (=> b!7824396 m!8246748))

(assert (=> b!7824387 m!8246292))

(assert (=> b!7824387 m!8246610))

(assert (=> b!7824387 m!8246374))

(assert (=> b!7824387 m!8246610))

(declare-fun m!8246750 () Bool)

(assert (=> b!7824387 m!8246750))

(assert (=> b!7824387 m!8246292))

(assert (=> b!7824387 m!8246614))

(assert (=> b!7824387 m!8246750))

(assert (=> b!7824387 m!8246614))

(declare-fun m!8246752 () Bool)

(assert (=> b!7824387 m!8246752))

(assert (=> b!7824391 m!8246292))

(assert (=> b!7824391 m!8246610))

(assert (=> bm!725742 m!8246292))

(assert (=> bm!725742 m!8246370))

(assert (=> b!7824395 m!8246292))

(assert (=> b!7824395 m!8246614))

(assert (=> b!7824395 m!8246614))

(assert (=> b!7824395 m!8246746))

(assert (=> d!2350148 m!8246292))

(assert (=> d!2350148 m!8246370))

(assert (=> d!2350148 m!8246374))

(declare-fun m!8246754 () Bool)

(assert (=> d!2350148 m!8246754))

(assert (=> b!7823577 d!2350148))

(declare-fun b!7824398 () Bool)

(declare-fun c!1439893 () Bool)

(assert (=> b!7824398 (= c!1439893 (nullable!9296 (regOne!42418 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)))))))

(declare-fun e!4628857 () Regex!20953)

(declare-fun e!4628858 () Regex!20953)

(assert (=> b!7824398 (= e!4628857 e!4628858)))

(declare-fun bm!725743 () Bool)

(declare-fun call!725750 () Regex!20953)

(declare-fun call!725749 () Regex!20953)

(assert (=> bm!725743 (= call!725750 call!725749)))

(declare-fun b!7824399 () Bool)

(declare-fun e!4628855 () Regex!20953)

(assert (=> b!7824399 (= e!4628855 EmptyLang!20953)))

(declare-fun b!7824400 () Bool)

(declare-fun e!4628856 () Regex!20953)

(assert (=> b!7824400 (= e!4628856 (ite (= (head!15985 (tail!15526 s1!4101)) (c!1439622 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)))) EmptyExpr!20953 EmptyLang!20953))))

(declare-fun d!2350150 () Bool)

(declare-fun lt!2676743 () Regex!20953)

(assert (=> d!2350150 (validRegex!11367 lt!2676743)))

(assert (=> d!2350150 (= lt!2676743 e!4628855)))

(declare-fun c!1439892 () Bool)

(assert (=> d!2350150 (= c!1439892 (or ((_ is EmptyExpr!20953) (derivativeStep!6255 r1!6261 (head!15985 s1!4101))) ((_ is EmptyLang!20953) (derivativeStep!6255 r1!6261 (head!15985 s1!4101)))))))

(assert (=> d!2350150 (validRegex!11367 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)))))

(assert (=> d!2350150 (= (derivativeStep!6255 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)) (head!15985 (tail!15526 s1!4101))) lt!2676743)))

(declare-fun b!7824401 () Bool)

(assert (=> b!7824401 (= e!4628857 (Concat!29798 call!725750 (derivativeStep!6255 r1!6261 (head!15985 s1!4101))))))

(declare-fun call!725751 () Regex!20953)

(declare-fun b!7824402 () Bool)

(assert (=> b!7824402 (= e!4628858 (Union!20953 (Concat!29798 call!725751 (regTwo!42418 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)))) EmptyLang!20953))))

(declare-fun b!7824403 () Bool)

(declare-fun c!1439889 () Bool)

(assert (=> b!7824403 (= c!1439889 ((_ is Union!20953) (derivativeStep!6255 r1!6261 (head!15985 s1!4101))))))

(declare-fun e!4628854 () Regex!20953)

(assert (=> b!7824403 (= e!4628856 e!4628854)))

(declare-fun bm!725744 () Bool)

(assert (=> bm!725744 (= call!725751 call!725750)))

(declare-fun b!7824404 () Bool)

(declare-fun call!725748 () Regex!20953)

(assert (=> b!7824404 (= e!4628858 (Union!20953 (Concat!29798 call!725751 (regTwo!42418 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)))) call!725748))))

(declare-fun b!7824405 () Bool)

(assert (=> b!7824405 (= e!4628854 e!4628857)))

(declare-fun c!1439890 () Bool)

(assert (=> b!7824405 (= c!1439890 ((_ is Star!20953) (derivativeStep!6255 r1!6261 (head!15985 s1!4101))))))

(declare-fun bm!725745 () Bool)

(assert (=> bm!725745 (= call!725749 (derivativeStep!6255 (ite c!1439889 (regOne!42419 (derivativeStep!6255 r1!6261 (head!15985 s1!4101))) (ite c!1439890 (reg!21282 (derivativeStep!6255 r1!6261 (head!15985 s1!4101))) (regOne!42418 (derivativeStep!6255 r1!6261 (head!15985 s1!4101))))) (head!15985 (tail!15526 s1!4101))))))

(declare-fun bm!725746 () Bool)

(assert (=> bm!725746 (= call!725748 (derivativeStep!6255 (ite c!1439889 (regTwo!42419 (derivativeStep!6255 r1!6261 (head!15985 s1!4101))) (regTwo!42418 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)))) (head!15985 (tail!15526 s1!4101))))))

(declare-fun b!7824406 () Bool)

(assert (=> b!7824406 (= e!4628855 e!4628856)))

(declare-fun c!1439891 () Bool)

(assert (=> b!7824406 (= c!1439891 ((_ is ElementMatch!20953) (derivativeStep!6255 r1!6261 (head!15985 s1!4101))))))

(declare-fun b!7824407 () Bool)

(assert (=> b!7824407 (= e!4628854 (Union!20953 call!725749 call!725748))))

(assert (= (and d!2350150 c!1439892) b!7824399))

(assert (= (and d!2350150 (not c!1439892)) b!7824406))

(assert (= (and b!7824406 c!1439891) b!7824400))

(assert (= (and b!7824406 (not c!1439891)) b!7824403))

(assert (= (and b!7824403 c!1439889) b!7824407))

(assert (= (and b!7824403 (not c!1439889)) b!7824405))

(assert (= (and b!7824405 c!1439890) b!7824401))

(assert (= (and b!7824405 (not c!1439890)) b!7824398))

(assert (= (and b!7824398 c!1439893) b!7824404))

(assert (= (and b!7824398 (not c!1439893)) b!7824402))

(assert (= (or b!7824404 b!7824402) bm!725744))

(assert (= (or b!7824401 bm!725744) bm!725743))

(assert (= (or b!7824407 bm!725743) bm!725745))

(assert (= (or b!7824407 b!7824404) bm!725746))

(declare-fun m!8246756 () Bool)

(assert (=> b!7824398 m!8246756))

(declare-fun m!8246758 () Bool)

(assert (=> d!2350150 m!8246758))

(assert (=> d!2350150 m!8246070))

(assert (=> d!2350150 m!8246378))

(assert (=> bm!725745 m!8246288))

(declare-fun m!8246760 () Bool)

(assert (=> bm!725745 m!8246760))

(assert (=> bm!725746 m!8246288))

(declare-fun m!8246762 () Bool)

(assert (=> bm!725746 m!8246762))

(assert (=> b!7823577 d!2350150))

(declare-fun d!2350152 () Bool)

(assert (=> d!2350152 (= (head!15985 (tail!15526 s1!4101)) (h!80114 (tail!15526 s1!4101)))))

(assert (=> b!7823577 d!2350152))

(assert (=> b!7823577 d!2350090))

(assert (=> b!7823548 d!2350140))

(declare-fun d!2350154 () Bool)

(declare-fun lt!2676744 () Int)

(assert (=> d!2350154 (>= lt!2676744 0)))

(declare-fun e!4628859 () Int)

(assert (=> d!2350154 (= lt!2676744 e!4628859)))

(declare-fun c!1439894 () Bool)

(assert (=> d!2350154 (= c!1439894 ((_ is Nil!73666) (t!388525 lt!2676673)))))

(assert (=> d!2350154 (= (size!42753 (t!388525 lt!2676673)) lt!2676744)))

(declare-fun b!7824408 () Bool)

(assert (=> b!7824408 (= e!4628859 0)))

(declare-fun b!7824409 () Bool)

(assert (=> b!7824409 (= e!4628859 (+ 1 (size!42753 (t!388525 (t!388525 lt!2676673)))))))

(assert (= (and d!2350154 c!1439894) b!7824408))

(assert (= (and d!2350154 (not c!1439894)) b!7824409))

(declare-fun m!8246764 () Bool)

(assert (=> b!7824409 m!8246764))

(assert (=> b!7823599 d!2350154))

(declare-fun b!7824410 () Bool)

(declare-fun e!4628862 () Bool)

(declare-fun call!725752 () Bool)

(assert (=> b!7824410 (= e!4628862 call!725752)))

(declare-fun b!7824411 () Bool)

(declare-fun e!4628864 () Bool)

(declare-fun call!725754 () Bool)

(assert (=> b!7824411 (= e!4628864 call!725754)))

(declare-fun c!1439895 () Bool)

(declare-fun bm!725747 () Bool)

(declare-fun c!1439896 () Bool)

(assert (=> bm!725747 (= call!725754 (validRegex!11367 (ite c!1439895 (reg!21282 (ite c!1439734 (reg!21282 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (ite c!1439735 (regOne!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regTwo!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199))))))) (ite c!1439896 (regOne!42419 (ite c!1439734 (reg!21282 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (ite c!1439735 (regOne!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regTwo!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199))))))) (regTwo!42418 (ite c!1439734 (reg!21282 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (ite c!1439735 (regOne!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regTwo!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))))))))))))

(declare-fun b!7824413 () Bool)

(declare-fun res!3114029 () Bool)

(declare-fun e!4628863 () Bool)

(assert (=> b!7824413 (=> res!3114029 e!4628863)))

(assert (=> b!7824413 (= res!3114029 (not ((_ is Concat!29798) (ite c!1439734 (reg!21282 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (ite c!1439735 (regOne!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regTwo!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))))))))))

(declare-fun e!4628861 () Bool)

(assert (=> b!7824413 (= e!4628861 e!4628863)))

(declare-fun b!7824414 () Bool)

(declare-fun e!4628860 () Bool)

(assert (=> b!7824414 (= e!4628860 e!4628861)))

(assert (=> b!7824414 (= c!1439896 ((_ is Union!20953) (ite c!1439734 (reg!21282 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (ite c!1439735 (regOne!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regTwo!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199))))))))))

(declare-fun b!7824415 () Bool)

(declare-fun e!4628866 () Bool)

(declare-fun call!725753 () Bool)

(assert (=> b!7824415 (= e!4628866 call!725753)))

(declare-fun bm!725748 () Bool)

(assert (=> bm!725748 (= call!725752 (validRegex!11367 (ite c!1439896 (regTwo!42419 (ite c!1439734 (reg!21282 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (ite c!1439735 (regOne!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regTwo!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199))))))) (regOne!42418 (ite c!1439734 (reg!21282 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (ite c!1439735 (regOne!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regTwo!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199))))))))))))

(declare-fun bm!725749 () Bool)

(assert (=> bm!725749 (= call!725753 call!725754)))

(declare-fun b!7824416 () Bool)

(declare-fun e!4628865 () Bool)

(assert (=> b!7824416 (= e!4628865 e!4628860)))

(assert (=> b!7824416 (= c!1439895 ((_ is Star!20953) (ite c!1439734 (reg!21282 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (ite c!1439735 (regOne!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regTwo!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199))))))))))

(declare-fun b!7824417 () Bool)

(declare-fun res!3114028 () Bool)

(assert (=> b!7824417 (=> (not res!3114028) (not e!4628862))))

(assert (=> b!7824417 (= res!3114028 call!725753)))

(assert (=> b!7824417 (= e!4628861 e!4628862)))

(declare-fun b!7824418 () Bool)

(assert (=> b!7824418 (= e!4628863 e!4628866)))

(declare-fun res!3114030 () Bool)

(assert (=> b!7824418 (=> (not res!3114030) (not e!4628866))))

(assert (=> b!7824418 (= res!3114030 call!725752)))

(declare-fun d!2350156 () Bool)

(declare-fun res!3114031 () Bool)

(assert (=> d!2350156 (=> res!3114031 e!4628865)))

(assert (=> d!2350156 (= res!3114031 ((_ is ElementMatch!20953) (ite c!1439734 (reg!21282 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (ite c!1439735 (regOne!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regTwo!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199))))))))))

(assert (=> d!2350156 (= (validRegex!11367 (ite c!1439734 (reg!21282 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (ite c!1439735 (regOne!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regTwo!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199))))))) e!4628865)))

(declare-fun b!7824412 () Bool)

(assert (=> b!7824412 (= e!4628860 e!4628864)))

(declare-fun res!3114027 () Bool)

(assert (=> b!7824412 (= res!3114027 (not (nullable!9296 (reg!21282 (ite c!1439734 (reg!21282 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (ite c!1439735 (regOne!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regTwo!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199))))))))))))

(assert (=> b!7824412 (=> (not res!3114027) (not e!4628864))))

(assert (= (and d!2350156 (not res!3114031)) b!7824416))

(assert (= (and b!7824416 c!1439895) b!7824412))

(assert (= (and b!7824416 (not c!1439895)) b!7824414))

(assert (= (and b!7824412 res!3114027) b!7824411))

(assert (= (and b!7824414 c!1439896) b!7824417))

(assert (= (and b!7824414 (not c!1439896)) b!7824413))

(assert (= (and b!7824417 res!3114028) b!7824410))

(assert (= (and b!7824413 (not res!3114029)) b!7824418))

(assert (= (and b!7824418 res!3114030) b!7824415))

(assert (= (or b!7824410 b!7824418) bm!725748))

(assert (= (or b!7824417 b!7824415) bm!725749))

(assert (= (or b!7824411 bm!725749) bm!725747))

(declare-fun m!8246766 () Bool)

(assert (=> bm!725747 m!8246766))

(declare-fun m!8246768 () Bool)

(assert (=> bm!725748 m!8246768))

(declare-fun m!8246770 () Bool)

(assert (=> b!7824412 m!8246770))

(assert (=> bm!725642 d!2350156))

(declare-fun b!7824419 () Bool)

(declare-fun e!4628869 () Bool)

(declare-fun call!725755 () Bool)

(assert (=> b!7824419 (= e!4628869 call!725755)))

(declare-fun b!7824420 () Bool)

(declare-fun e!4628871 () Bool)

(declare-fun call!725757 () Bool)

(assert (=> b!7824420 (= e!4628871 call!725757)))

(declare-fun bm!725750 () Bool)

(declare-fun c!1439898 () Bool)

(declare-fun c!1439897 () Bool)

(assert (=> bm!725750 (= call!725757 (validRegex!11367 (ite c!1439897 (reg!21282 (ite c!1439744 (reg!21282 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (ite c!1439745 (regOne!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regTwo!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199)))))) (ite c!1439898 (regOne!42419 (ite c!1439744 (reg!21282 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (ite c!1439745 (regOne!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regTwo!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199)))))) (regTwo!42418 (ite c!1439744 (reg!21282 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (ite c!1439745 (regOne!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regTwo!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))))))))))))

(declare-fun b!7824422 () Bool)

(declare-fun res!3114034 () Bool)

(declare-fun e!4628870 () Bool)

(assert (=> b!7824422 (=> res!3114034 e!4628870)))

(assert (=> b!7824422 (= res!3114034 (not ((_ is Concat!29798) (ite c!1439744 (reg!21282 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (ite c!1439745 (regOne!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regTwo!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))))))))))

(declare-fun e!4628868 () Bool)

(assert (=> b!7824422 (= e!4628868 e!4628870)))

(declare-fun b!7824423 () Bool)

(declare-fun e!4628867 () Bool)

(assert (=> b!7824423 (= e!4628867 e!4628868)))

(assert (=> b!7824423 (= c!1439898 ((_ is Union!20953) (ite c!1439744 (reg!21282 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (ite c!1439745 (regOne!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regTwo!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199)))))))))

(declare-fun b!7824424 () Bool)

(declare-fun e!4628873 () Bool)

(declare-fun call!725756 () Bool)

(assert (=> b!7824424 (= e!4628873 call!725756)))

(declare-fun bm!725751 () Bool)

(assert (=> bm!725751 (= call!725755 (validRegex!11367 (ite c!1439898 (regTwo!42419 (ite c!1439744 (reg!21282 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (ite c!1439745 (regOne!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regTwo!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199)))))) (regOne!42418 (ite c!1439744 (reg!21282 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (ite c!1439745 (regOne!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regTwo!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199)))))))))))

(declare-fun bm!725752 () Bool)

(assert (=> bm!725752 (= call!725756 call!725757)))

(declare-fun b!7824425 () Bool)

(declare-fun e!4628872 () Bool)

(assert (=> b!7824425 (= e!4628872 e!4628867)))

(assert (=> b!7824425 (= c!1439897 ((_ is Star!20953) (ite c!1439744 (reg!21282 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (ite c!1439745 (regOne!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regTwo!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199)))))))))

(declare-fun b!7824426 () Bool)

(declare-fun res!3114033 () Bool)

(assert (=> b!7824426 (=> (not res!3114033) (not e!4628869))))

(assert (=> b!7824426 (= res!3114033 call!725756)))

(assert (=> b!7824426 (= e!4628868 e!4628869)))

(declare-fun b!7824427 () Bool)

(assert (=> b!7824427 (= e!4628870 e!4628873)))

(declare-fun res!3114035 () Bool)

(assert (=> b!7824427 (=> (not res!3114035) (not e!4628873))))

(assert (=> b!7824427 (= res!3114035 call!725755)))

(declare-fun d!2350158 () Bool)

(declare-fun res!3114036 () Bool)

(assert (=> d!2350158 (=> res!3114036 e!4628872)))

(assert (=> d!2350158 (= res!3114036 ((_ is ElementMatch!20953) (ite c!1439744 (reg!21282 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (ite c!1439745 (regOne!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regTwo!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199)))))))))

(assert (=> d!2350158 (= (validRegex!11367 (ite c!1439744 (reg!21282 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (ite c!1439745 (regOne!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regTwo!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199)))))) e!4628872)))

(declare-fun b!7824421 () Bool)

(assert (=> b!7824421 (= e!4628867 e!4628871)))

(declare-fun res!3114032 () Bool)

(assert (=> b!7824421 (= res!3114032 (not (nullable!9296 (reg!21282 (ite c!1439744 (reg!21282 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (ite c!1439745 (regOne!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regTwo!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199)))))))))))

(assert (=> b!7824421 (=> (not res!3114032) (not e!4628871))))

(assert (= (and d!2350158 (not res!3114036)) b!7824425))

(assert (= (and b!7824425 c!1439897) b!7824421))

(assert (= (and b!7824425 (not c!1439897)) b!7824423))

(assert (= (and b!7824421 res!3114032) b!7824420))

(assert (= (and b!7824423 c!1439898) b!7824426))

(assert (= (and b!7824423 (not c!1439898)) b!7824422))

(assert (= (and b!7824426 res!3114033) b!7824419))

(assert (= (and b!7824422 (not res!3114034)) b!7824427))

(assert (= (and b!7824427 res!3114035) b!7824424))

(assert (= (or b!7824419 b!7824427) bm!725751))

(assert (= (or b!7824426 b!7824424) bm!725752))

(assert (= (or b!7824420 bm!725752) bm!725750))

(declare-fun m!8246772 () Bool)

(assert (=> bm!725750 m!8246772))

(declare-fun m!8246774 () Bool)

(assert (=> bm!725751 m!8246774))

(declare-fun m!8246776 () Bool)

(assert (=> b!7824421 m!8246776))

(assert (=> bm!725650 d!2350158))

(declare-fun d!2350160 () Bool)

(declare-fun lt!2676745 () Int)

(assert (=> d!2350160 (>= lt!2676745 0)))

(declare-fun e!4628874 () Int)

(assert (=> d!2350160 (= lt!2676745 e!4628874)))

(declare-fun c!1439899 () Bool)

(assert (=> d!2350160 (= c!1439899 ((_ is Nil!73666) lt!2676694))))

(assert (=> d!2350160 (= (size!42753 lt!2676694) lt!2676745)))

(declare-fun b!7824428 () Bool)

(assert (=> b!7824428 (= e!4628874 0)))

(declare-fun b!7824429 () Bool)

(assert (=> b!7824429 (= e!4628874 (+ 1 (size!42753 (t!388525 lt!2676694))))))

(assert (= (and d!2350160 c!1439899) b!7824428))

(assert (= (and d!2350160 (not c!1439899)) b!7824429))

(declare-fun m!8246778 () Bool)

(assert (=> b!7824429 m!8246778))

(assert (=> b!7823506 d!2350160))

(assert (=> b!7823506 d!2349970))

(assert (=> b!7823506 d!2349966))

(declare-fun b!7824430 () Bool)

(declare-fun e!4628877 () Bool)

(declare-fun call!725758 () Bool)

(assert (=> b!7824430 (= e!4628877 call!725758)))

(declare-fun b!7824431 () Bool)

(declare-fun e!4628879 () Bool)

(declare-fun call!725760 () Bool)

(assert (=> b!7824431 (= e!4628879 call!725760)))

(declare-fun bm!725753 () Bool)

(declare-fun c!1439900 () Bool)

(declare-fun c!1439901 () Bool)

(assert (=> bm!725753 (= call!725760 (validRegex!11367 (ite c!1439900 (reg!21282 (ite c!1439735 (regTwo!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regOne!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))))) (ite c!1439901 (regOne!42419 (ite c!1439735 (regTwo!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regOne!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))))) (regTwo!42418 (ite c!1439735 (regTwo!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regOne!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199))))))))))))

(declare-fun b!7824433 () Bool)

(declare-fun res!3114039 () Bool)

(declare-fun e!4628878 () Bool)

(assert (=> b!7824433 (=> res!3114039 e!4628878)))

(assert (=> b!7824433 (= res!3114039 (not ((_ is Concat!29798) (ite c!1439735 (regTwo!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regOne!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199))))))))))

(declare-fun e!4628876 () Bool)

(assert (=> b!7824433 (= e!4628876 e!4628878)))

(declare-fun b!7824434 () Bool)

(declare-fun e!4628875 () Bool)

(assert (=> b!7824434 (= e!4628875 e!4628876)))

(assert (=> b!7824434 (= c!1439901 ((_ is Union!20953) (ite c!1439735 (regTwo!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regOne!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))))))))

(declare-fun b!7824435 () Bool)

(declare-fun e!4628881 () Bool)

(declare-fun call!725759 () Bool)

(assert (=> b!7824435 (= e!4628881 call!725759)))

(declare-fun bm!725754 () Bool)

(assert (=> bm!725754 (= call!725758 (validRegex!11367 (ite c!1439901 (regTwo!42419 (ite c!1439735 (regTwo!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regOne!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))))) (regOne!42418 (ite c!1439735 (regTwo!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regOne!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))))))))))

(declare-fun bm!725755 () Bool)

(assert (=> bm!725755 (= call!725759 call!725760)))

(declare-fun b!7824436 () Bool)

(declare-fun e!4628880 () Bool)

(assert (=> b!7824436 (= e!4628880 e!4628875)))

(assert (=> b!7824436 (= c!1439900 ((_ is Star!20953) (ite c!1439735 (regTwo!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regOne!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))))))))

(declare-fun b!7824437 () Bool)

(declare-fun res!3114038 () Bool)

(assert (=> b!7824437 (=> (not res!3114038) (not e!4628877))))

(assert (=> b!7824437 (= res!3114038 call!725759)))

(assert (=> b!7824437 (= e!4628876 e!4628877)))

(declare-fun b!7824438 () Bool)

(assert (=> b!7824438 (= e!4628878 e!4628881)))

(declare-fun res!3114040 () Bool)

(assert (=> b!7824438 (=> (not res!3114040) (not e!4628881))))

(assert (=> b!7824438 (= res!3114040 call!725758)))

(declare-fun d!2350162 () Bool)

(declare-fun res!3114041 () Bool)

(assert (=> d!2350162 (=> res!3114041 e!4628880)))

(assert (=> d!2350162 (= res!3114041 ((_ is ElementMatch!20953) (ite c!1439735 (regTwo!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regOne!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))))))))

(assert (=> d!2350162 (= (validRegex!11367 (ite c!1439735 (regTwo!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regOne!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))))) e!4628880)))

(declare-fun b!7824432 () Bool)

(assert (=> b!7824432 (= e!4628875 e!4628879)))

(declare-fun res!3114037 () Bool)

(assert (=> b!7824432 (= res!3114037 (not (nullable!9296 (reg!21282 (ite c!1439735 (regTwo!42419 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))) (regOne!42418 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199)))))))))))

(assert (=> b!7824432 (=> (not res!3114037) (not e!4628879))))

(assert (= (and d!2350162 (not res!3114041)) b!7824436))

(assert (= (and b!7824436 c!1439900) b!7824432))

(assert (= (and b!7824436 (not c!1439900)) b!7824434))

(assert (= (and b!7824432 res!3114037) b!7824431))

(assert (= (and b!7824434 c!1439901) b!7824437))

(assert (= (and b!7824434 (not c!1439901)) b!7824433))

(assert (= (and b!7824437 res!3114038) b!7824430))

(assert (= (and b!7824433 (not res!3114039)) b!7824438))

(assert (= (and b!7824438 res!3114040) b!7824435))

(assert (= (or b!7824430 b!7824438) bm!725754))

(assert (= (or b!7824437 b!7824435) bm!725755))

(assert (= (or b!7824431 bm!725755) bm!725753))

(declare-fun m!8246780 () Bool)

(assert (=> bm!725753 m!8246780))

(declare-fun m!8246782 () Bool)

(assert (=> bm!725754 m!8246782))

(declare-fun m!8246784 () Bool)

(assert (=> b!7824432 m!8246784))

(assert (=> bm!725643 d!2350162))

(declare-fun b!7824439 () Bool)

(declare-fun c!1439906 () Bool)

(assert (=> b!7824439 (= c!1439906 (nullable!9296 (regOne!42418 (ite c!1439739 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261)))))))

(declare-fun e!4628885 () Regex!20953)

(declare-fun e!4628886 () Regex!20953)

(assert (=> b!7824439 (= e!4628885 e!4628886)))

(declare-fun bm!725756 () Bool)

(declare-fun call!725763 () Regex!20953)

(declare-fun call!725762 () Regex!20953)

(assert (=> bm!725756 (= call!725763 call!725762)))

(declare-fun b!7824440 () Bool)

(declare-fun e!4628883 () Regex!20953)

(assert (=> b!7824440 (= e!4628883 EmptyLang!20953)))

(declare-fun e!4628884 () Regex!20953)

(declare-fun b!7824441 () Bool)

(assert (=> b!7824441 (= e!4628884 (ite (= (head!15985 s1Rec!453) (c!1439622 (ite c!1439739 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261)))) EmptyExpr!20953 EmptyLang!20953))))

(declare-fun d!2350164 () Bool)

(declare-fun lt!2676746 () Regex!20953)

(assert (=> d!2350164 (validRegex!11367 lt!2676746)))

(assert (=> d!2350164 (= lt!2676746 e!4628883)))

(declare-fun c!1439905 () Bool)

(assert (=> d!2350164 (= c!1439905 (or ((_ is EmptyExpr!20953) (ite c!1439739 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261))) ((_ is EmptyLang!20953) (ite c!1439739 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261)))))))

(assert (=> d!2350164 (validRegex!11367 (ite c!1439739 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261)))))

(assert (=> d!2350164 (= (derivativeStep!6255 (ite c!1439739 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261)) (head!15985 s1Rec!453)) lt!2676746)))

(declare-fun b!7824442 () Bool)

(assert (=> b!7824442 (= e!4628885 (Concat!29798 call!725763 (ite c!1439739 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261))))))

(declare-fun call!725764 () Regex!20953)

(declare-fun b!7824443 () Bool)

(assert (=> b!7824443 (= e!4628886 (Union!20953 (Concat!29798 call!725764 (regTwo!42418 (ite c!1439739 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261)))) EmptyLang!20953))))

(declare-fun b!7824444 () Bool)

(declare-fun c!1439902 () Bool)

(assert (=> b!7824444 (= c!1439902 ((_ is Union!20953) (ite c!1439739 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261))))))

(declare-fun e!4628882 () Regex!20953)

(assert (=> b!7824444 (= e!4628884 e!4628882)))

(declare-fun bm!725757 () Bool)

(assert (=> bm!725757 (= call!725764 call!725763)))

(declare-fun call!725761 () Regex!20953)

(declare-fun b!7824445 () Bool)

(assert (=> b!7824445 (= e!4628886 (Union!20953 (Concat!29798 call!725764 (regTwo!42418 (ite c!1439739 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261)))) call!725761))))

(declare-fun b!7824446 () Bool)

(assert (=> b!7824446 (= e!4628882 e!4628885)))

(declare-fun c!1439903 () Bool)

(assert (=> b!7824446 (= c!1439903 ((_ is Star!20953) (ite c!1439739 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261))))))

(declare-fun bm!725758 () Bool)

(assert (=> bm!725758 (= call!725762 (derivativeStep!6255 (ite c!1439902 (regOne!42419 (ite c!1439739 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261))) (ite c!1439903 (reg!21282 (ite c!1439739 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261))) (regOne!42418 (ite c!1439739 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261))))) (head!15985 s1Rec!453)))))

(declare-fun bm!725759 () Bool)

(assert (=> bm!725759 (= call!725761 (derivativeStep!6255 (ite c!1439902 (regTwo!42419 (ite c!1439739 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261))) (regTwo!42418 (ite c!1439739 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261)))) (head!15985 s1Rec!453)))))

(declare-fun b!7824447 () Bool)

(assert (=> b!7824447 (= e!4628883 e!4628884)))

(declare-fun c!1439904 () Bool)

(assert (=> b!7824447 (= c!1439904 ((_ is ElementMatch!20953) (ite c!1439739 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261))))))

(declare-fun b!7824448 () Bool)

(assert (=> b!7824448 (= e!4628882 (Union!20953 call!725762 call!725761))))

(assert (= (and d!2350164 c!1439905) b!7824440))

(assert (= (and d!2350164 (not c!1439905)) b!7824447))

(assert (= (and b!7824447 c!1439904) b!7824441))

(assert (= (and b!7824447 (not c!1439904)) b!7824444))

(assert (= (and b!7824444 c!1439902) b!7824448))

(assert (= (and b!7824444 (not c!1439902)) b!7824446))

(assert (= (and b!7824446 c!1439903) b!7824442))

(assert (= (and b!7824446 (not c!1439903)) b!7824439))

(assert (= (and b!7824439 c!1439906) b!7824445))

(assert (= (and b!7824439 (not c!1439906)) b!7824443))

(assert (= (or b!7824445 b!7824443) bm!725757))

(assert (= (or b!7824442 bm!725757) bm!725756))

(assert (= (or b!7824448 bm!725756) bm!725758))

(assert (= (or b!7824448 b!7824445) bm!725759))

(declare-fun m!8246786 () Bool)

(assert (=> b!7824439 m!8246786))

(declare-fun m!8246788 () Bool)

(assert (=> d!2350164 m!8246788))

(declare-fun m!8246790 () Bool)

(assert (=> d!2350164 m!8246790))

(assert (=> bm!725758 m!8246096))

(declare-fun m!8246792 () Bool)

(assert (=> bm!725758 m!8246792))

(assert (=> bm!725759 m!8246096))

(declare-fun m!8246794 () Bool)

(assert (=> bm!725759 m!8246794))

(assert (=> bm!725649 d!2350164))

(declare-fun b!7824449 () Bool)

(declare-fun e!4628889 () Bool)

(declare-fun call!725765 () Bool)

(assert (=> b!7824449 (= e!4628889 call!725765)))

(declare-fun b!7824450 () Bool)

(declare-fun e!4628891 () Bool)

(declare-fun call!725767 () Bool)

(assert (=> b!7824450 (= e!4628891 call!725767)))

(declare-fun c!1439907 () Bool)

(declare-fun c!1439908 () Bool)

(declare-fun bm!725760 () Bool)

(assert (=> bm!725760 (= call!725767 (validRegex!11367 (ite c!1439907 (reg!21282 lt!2676690) (ite c!1439908 (regOne!42419 lt!2676690) (regTwo!42418 lt!2676690)))))))

(declare-fun b!7824452 () Bool)

(declare-fun res!3114044 () Bool)

(declare-fun e!4628890 () Bool)

(assert (=> b!7824452 (=> res!3114044 e!4628890)))

(assert (=> b!7824452 (= res!3114044 (not ((_ is Concat!29798) lt!2676690)))))

(declare-fun e!4628888 () Bool)

(assert (=> b!7824452 (= e!4628888 e!4628890)))

(declare-fun b!7824453 () Bool)

(declare-fun e!4628887 () Bool)

(assert (=> b!7824453 (= e!4628887 e!4628888)))

(assert (=> b!7824453 (= c!1439908 ((_ is Union!20953) lt!2676690))))

(declare-fun b!7824454 () Bool)

(declare-fun e!4628893 () Bool)

(declare-fun call!725766 () Bool)

(assert (=> b!7824454 (= e!4628893 call!725766)))

(declare-fun bm!725761 () Bool)

(assert (=> bm!725761 (= call!725765 (validRegex!11367 (ite c!1439908 (regTwo!42419 lt!2676690) (regOne!42418 lt!2676690))))))

(declare-fun bm!725762 () Bool)

(assert (=> bm!725762 (= call!725766 call!725767)))

(declare-fun b!7824455 () Bool)

(declare-fun e!4628892 () Bool)

(assert (=> b!7824455 (= e!4628892 e!4628887)))

(assert (=> b!7824455 (= c!1439907 ((_ is Star!20953) lt!2676690))))

(declare-fun b!7824456 () Bool)

(declare-fun res!3114043 () Bool)

(assert (=> b!7824456 (=> (not res!3114043) (not e!4628889))))

(assert (=> b!7824456 (= res!3114043 call!725766)))

(assert (=> b!7824456 (= e!4628888 e!4628889)))

(declare-fun b!7824457 () Bool)

(assert (=> b!7824457 (= e!4628890 e!4628893)))

(declare-fun res!3114045 () Bool)

(assert (=> b!7824457 (=> (not res!3114045) (not e!4628893))))

(assert (=> b!7824457 (= res!3114045 call!725765)))

(declare-fun d!2350166 () Bool)

(declare-fun res!3114046 () Bool)

(assert (=> d!2350166 (=> res!3114046 e!4628892)))

(assert (=> d!2350166 (= res!3114046 ((_ is ElementMatch!20953) lt!2676690))))

(assert (=> d!2350166 (= (validRegex!11367 lt!2676690) e!4628892)))

(declare-fun b!7824451 () Bool)

(assert (=> b!7824451 (= e!4628887 e!4628891)))

(declare-fun res!3114042 () Bool)

(assert (=> b!7824451 (= res!3114042 (not (nullable!9296 (reg!21282 lt!2676690))))))

(assert (=> b!7824451 (=> (not res!3114042) (not e!4628891))))

(assert (= (and d!2350166 (not res!3114046)) b!7824455))

(assert (= (and b!7824455 c!1439907) b!7824451))

(assert (= (and b!7824455 (not c!1439907)) b!7824453))

(assert (= (and b!7824451 res!3114042) b!7824450))

(assert (= (and b!7824453 c!1439908) b!7824456))

(assert (= (and b!7824453 (not c!1439908)) b!7824452))

(assert (= (and b!7824456 res!3114043) b!7824449))

(assert (= (and b!7824452 (not res!3114044)) b!7824457))

(assert (= (and b!7824457 res!3114045) b!7824454))

(assert (= (or b!7824449 b!7824457) bm!725761))

(assert (= (or b!7824456 b!7824454) bm!725762))

(assert (= (or b!7824450 bm!725762) bm!725760))

(declare-fun m!8246796 () Bool)

(assert (=> bm!725760 m!8246796))

(declare-fun m!8246798 () Bool)

(assert (=> bm!725761 m!8246798))

(declare-fun m!8246800 () Bool)

(assert (=> b!7824451 m!8246800))

(assert (=> d!2349890 d!2350166))

(assert (=> d!2349890 d!2349836))

(declare-fun b!7824458 () Bool)

(declare-fun e!4628896 () Bool)

(declare-fun call!725768 () Bool)

(assert (=> b!7824458 (= e!4628896 call!725768)))

(declare-fun b!7824459 () Bool)

(declare-fun e!4628898 () Bool)

(declare-fun call!725770 () Bool)

(assert (=> b!7824459 (= e!4628898 call!725770)))

(declare-fun bm!725763 () Bool)

(declare-fun c!1439910 () Bool)

(declare-fun c!1439909 () Bool)

(assert (=> bm!725763 (= call!725770 (validRegex!11367 (ite c!1439909 (reg!21282 lt!2676700) (ite c!1439910 (regOne!42419 lt!2676700) (regTwo!42418 lt!2676700)))))))

(declare-fun b!7824461 () Bool)

(declare-fun res!3114049 () Bool)

(declare-fun e!4628897 () Bool)

(assert (=> b!7824461 (=> res!3114049 e!4628897)))

(assert (=> b!7824461 (= res!3114049 (not ((_ is Concat!29798) lt!2676700)))))

(declare-fun e!4628895 () Bool)

(assert (=> b!7824461 (= e!4628895 e!4628897)))

(declare-fun b!7824462 () Bool)

(declare-fun e!4628894 () Bool)

(assert (=> b!7824462 (= e!4628894 e!4628895)))

(assert (=> b!7824462 (= c!1439910 ((_ is Union!20953) lt!2676700))))

(declare-fun b!7824463 () Bool)

(declare-fun e!4628900 () Bool)

(declare-fun call!725769 () Bool)

(assert (=> b!7824463 (= e!4628900 call!725769)))

(declare-fun bm!725764 () Bool)

(assert (=> bm!725764 (= call!725768 (validRegex!11367 (ite c!1439910 (regTwo!42419 lt!2676700) (regOne!42418 lt!2676700))))))

(declare-fun bm!725765 () Bool)

(assert (=> bm!725765 (= call!725769 call!725770)))

(declare-fun b!7824464 () Bool)

(declare-fun e!4628899 () Bool)

(assert (=> b!7824464 (= e!4628899 e!4628894)))

(assert (=> b!7824464 (= c!1439909 ((_ is Star!20953) lt!2676700))))

(declare-fun b!7824465 () Bool)

(declare-fun res!3114048 () Bool)

(assert (=> b!7824465 (=> (not res!3114048) (not e!4628896))))

(assert (=> b!7824465 (= res!3114048 call!725769)))

(assert (=> b!7824465 (= e!4628895 e!4628896)))

(declare-fun b!7824466 () Bool)

(assert (=> b!7824466 (= e!4628897 e!4628900)))

(declare-fun res!3114050 () Bool)

(assert (=> b!7824466 (=> (not res!3114050) (not e!4628900))))

(assert (=> b!7824466 (= res!3114050 call!725768)))

(declare-fun d!2350168 () Bool)

(declare-fun res!3114051 () Bool)

(assert (=> d!2350168 (=> res!3114051 e!4628899)))

(assert (=> d!2350168 (= res!3114051 ((_ is ElementMatch!20953) lt!2676700))))

(assert (=> d!2350168 (= (validRegex!11367 lt!2676700) e!4628899)))

(declare-fun b!7824460 () Bool)

(assert (=> b!7824460 (= e!4628894 e!4628898)))

(declare-fun res!3114047 () Bool)

(assert (=> b!7824460 (= res!3114047 (not (nullable!9296 (reg!21282 lt!2676700))))))

(assert (=> b!7824460 (=> (not res!3114047) (not e!4628898))))

(assert (= (and d!2350168 (not res!3114051)) b!7824464))

(assert (= (and b!7824464 c!1439909) b!7824460))

(assert (= (and b!7824464 (not c!1439909)) b!7824462))

(assert (= (and b!7824460 res!3114047) b!7824459))

(assert (= (and b!7824462 c!1439910) b!7824465))

(assert (= (and b!7824462 (not c!1439910)) b!7824461))

(assert (= (and b!7824465 res!3114048) b!7824458))

(assert (= (and b!7824461 (not res!3114049)) b!7824466))

(assert (= (and b!7824466 res!3114050) b!7824463))

(assert (= (or b!7824458 b!7824466) bm!725764))

(assert (= (or b!7824465 b!7824463) bm!725765))

(assert (= (or b!7824459 bm!725765) bm!725763))

(declare-fun m!8246802 () Bool)

(assert (=> bm!725763 m!8246802))

(declare-fun m!8246804 () Bool)

(assert (=> bm!725764 m!8246804))

(declare-fun m!8246806 () Bool)

(assert (=> b!7824460 m!8246806))

(assert (=> d!2349956 d!2350168))

(assert (=> d!2349956 d!2349850))

(assert (=> b!7823432 d!2350130))

(declare-fun b!7824467 () Bool)

(declare-fun e!4628903 () Bool)

(declare-fun call!725771 () Bool)

(assert (=> b!7824467 (= e!4628903 call!725771)))

(declare-fun b!7824468 () Bool)

(declare-fun e!4628905 () Bool)

(declare-fun call!725773 () Bool)

(assert (=> b!7824468 (= e!4628905 call!725773)))

(declare-fun bm!725766 () Bool)

(declare-fun c!1439911 () Bool)

(declare-fun c!1439912 () Bool)

(assert (=> bm!725766 (= call!725773 (validRegex!11367 (ite c!1439911 (reg!21282 (ite c!1439694 (regTwo!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regOne!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))))) (ite c!1439912 (regOne!42419 (ite c!1439694 (regTwo!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regOne!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))))) (regTwo!42418 (ite c!1439694 (regTwo!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regOne!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261))))))))))))

(declare-fun b!7824470 () Bool)

(declare-fun res!3114054 () Bool)

(declare-fun e!4628904 () Bool)

(assert (=> b!7824470 (=> res!3114054 e!4628904)))

(assert (=> b!7824470 (= res!3114054 (not ((_ is Concat!29798) (ite c!1439694 (regTwo!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regOne!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261))))))))))

(declare-fun e!4628902 () Bool)

(assert (=> b!7824470 (= e!4628902 e!4628904)))

(declare-fun b!7824471 () Bool)

(declare-fun e!4628901 () Bool)

(assert (=> b!7824471 (= e!4628901 e!4628902)))

(assert (=> b!7824471 (= c!1439912 ((_ is Union!20953) (ite c!1439694 (regTwo!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regOne!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))))))))

(declare-fun b!7824472 () Bool)

(declare-fun e!4628907 () Bool)

(declare-fun call!725772 () Bool)

(assert (=> b!7824472 (= e!4628907 call!725772)))

(declare-fun bm!725767 () Bool)

(assert (=> bm!725767 (= call!725771 (validRegex!11367 (ite c!1439912 (regTwo!42419 (ite c!1439694 (regTwo!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regOne!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))))) (regOne!42418 (ite c!1439694 (regTwo!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regOne!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))))))))))

(declare-fun bm!725768 () Bool)

(assert (=> bm!725768 (= call!725772 call!725773)))

(declare-fun b!7824473 () Bool)

(declare-fun e!4628906 () Bool)

(assert (=> b!7824473 (= e!4628906 e!4628901)))

(assert (=> b!7824473 (= c!1439911 ((_ is Star!20953) (ite c!1439694 (regTwo!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regOne!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))))))))

(declare-fun b!7824474 () Bool)

(declare-fun res!3114053 () Bool)

(assert (=> b!7824474 (=> (not res!3114053) (not e!4628903))))

(assert (=> b!7824474 (= res!3114053 call!725772)))

(assert (=> b!7824474 (= e!4628902 e!4628903)))

(declare-fun b!7824475 () Bool)

(assert (=> b!7824475 (= e!4628904 e!4628907)))

(declare-fun res!3114055 () Bool)

(assert (=> b!7824475 (=> (not res!3114055) (not e!4628907))))

(assert (=> b!7824475 (= res!3114055 call!725771)))

(declare-fun d!2350170 () Bool)

(declare-fun res!3114056 () Bool)

(assert (=> d!2350170 (=> res!3114056 e!4628906)))

(assert (=> d!2350170 (= res!3114056 ((_ is ElementMatch!20953) (ite c!1439694 (regTwo!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regOne!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))))))))

(assert (=> d!2350170 (= (validRegex!11367 (ite c!1439694 (regTwo!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regOne!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))))) e!4628906)))

(declare-fun b!7824469 () Bool)

(assert (=> b!7824469 (= e!4628901 e!4628905)))

(declare-fun res!3114052 () Bool)

(assert (=> b!7824469 (= res!3114052 (not (nullable!9296 (reg!21282 (ite c!1439694 (regTwo!42419 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))) (regOne!42418 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261)))))))))))

(assert (=> b!7824469 (=> (not res!3114052) (not e!4628905))))

(assert (= (and d!2350170 (not res!3114056)) b!7824473))

(assert (= (and b!7824473 c!1439911) b!7824469))

(assert (= (and b!7824473 (not c!1439911)) b!7824471))

(assert (= (and b!7824469 res!3114052) b!7824468))

(assert (= (and b!7824471 c!1439912) b!7824474))

(assert (= (and b!7824471 (not c!1439912)) b!7824470))

(assert (= (and b!7824474 res!3114053) b!7824467))

(assert (= (and b!7824470 (not res!3114054)) b!7824475))

(assert (= (and b!7824475 res!3114055) b!7824472))

(assert (= (or b!7824467 b!7824475) bm!725767))

(assert (= (or b!7824474 b!7824472) bm!725768))

(assert (= (or b!7824468 bm!725768) bm!725766))

(declare-fun m!8246808 () Bool)

(assert (=> bm!725766 m!8246808))

(declare-fun m!8246810 () Bool)

(assert (=> bm!725767 m!8246810))

(declare-fun m!8246812 () Bool)

(assert (=> b!7824469 m!8246812))

(assert (=> bm!725619 d!2350170))

(declare-fun b!7824490 () Bool)

(declare-fun e!4628923 () Bool)

(declare-fun e!4628921 () Bool)

(assert (=> b!7824490 (= e!4628923 e!4628921)))

(declare-fun res!3114067 () Bool)

(declare-fun call!725778 () Bool)

(assert (=> b!7824490 (= res!3114067 call!725778)))

(assert (=> b!7824490 (=> res!3114067 e!4628921)))

(declare-fun b!7824491 () Bool)

(declare-fun e!4628924 () Bool)

(assert (=> b!7824491 (= e!4628923 e!4628924)))

(declare-fun res!3114071 () Bool)

(assert (=> b!7824491 (= res!3114071 call!725778)))

(assert (=> b!7824491 (=> (not res!3114071) (not e!4628924))))

(declare-fun bm!725773 () Bool)

(declare-fun c!1439915 () Bool)

(assert (=> bm!725773 (= call!725778 (nullable!9296 (ite c!1439915 (regOne!42419 r2!6199) (regOne!42418 r2!6199))))))

(declare-fun b!7824492 () Bool)

(declare-fun e!4628922 () Bool)

(declare-fun e!4628920 () Bool)

(assert (=> b!7824492 (= e!4628922 e!4628920)))

(declare-fun res!3114069 () Bool)

(assert (=> b!7824492 (=> (not res!3114069) (not e!4628920))))

(assert (=> b!7824492 (= res!3114069 (and (not ((_ is EmptyLang!20953) r2!6199)) (not ((_ is ElementMatch!20953) r2!6199))))))

(declare-fun d!2350172 () Bool)

(declare-fun res!3114070 () Bool)

(assert (=> d!2350172 (=> res!3114070 e!4628922)))

(assert (=> d!2350172 (= res!3114070 ((_ is EmptyExpr!20953) r2!6199))))

(assert (=> d!2350172 (= (nullableFct!3665 r2!6199) e!4628922)))

(declare-fun b!7824493 () Bool)

(declare-fun call!725779 () Bool)

(assert (=> b!7824493 (= e!4628924 call!725779)))

(declare-fun bm!725774 () Bool)

(assert (=> bm!725774 (= call!725779 (nullable!9296 (ite c!1439915 (regTwo!42419 r2!6199) (regTwo!42418 r2!6199))))))

(declare-fun b!7824494 () Bool)

(declare-fun e!4628925 () Bool)

(assert (=> b!7824494 (= e!4628925 e!4628923)))

(assert (=> b!7824494 (= c!1439915 ((_ is Union!20953) r2!6199))))

(declare-fun b!7824495 () Bool)

(assert (=> b!7824495 (= e!4628920 e!4628925)))

(declare-fun res!3114068 () Bool)

(assert (=> b!7824495 (=> res!3114068 e!4628925)))

(assert (=> b!7824495 (= res!3114068 ((_ is Star!20953) r2!6199))))

(declare-fun b!7824496 () Bool)

(assert (=> b!7824496 (= e!4628921 call!725779)))

(assert (= (and d!2350172 (not res!3114070)) b!7824492))

(assert (= (and b!7824492 res!3114069) b!7824495))

(assert (= (and b!7824495 (not res!3114068)) b!7824494))

(assert (= (and b!7824494 c!1439915) b!7824490))

(assert (= (and b!7824494 (not c!1439915)) b!7824491))

(assert (= (and b!7824490 (not res!3114067)) b!7824496))

(assert (= (and b!7824491 res!3114071) b!7824493))

(assert (= (or b!7824496 b!7824493) bm!725774))

(assert (= (or b!7824490 b!7824491) bm!725773))

(declare-fun m!8246814 () Bool)

(assert (=> bm!725773 m!8246814))

(declare-fun m!8246816 () Bool)

(assert (=> bm!725774 m!8246816))

(assert (=> d!2349922 d!2350172))

(declare-fun d!2350174 () Bool)

(assert (=> d!2350174 (= (nullable!9296 (reg!21282 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261)))) (nullableFct!3665 (reg!21282 (ite c!1439650 (regTwo!42419 r1!6261) (regOne!42418 r1!6261)))))))

(declare-fun bs!1966763 () Bool)

(assert (= bs!1966763 d!2350174))

(declare-fun m!8246818 () Bool)

(assert (=> bs!1966763 m!8246818))

(assert (=> b!7823491 d!2350174))

(declare-fun d!2350176 () Bool)

(declare-fun lt!2676747 () Int)

(assert (=> d!2350176 (>= lt!2676747 0)))

(declare-fun e!4628926 () Int)

(assert (=> d!2350176 (= lt!2676747 e!4628926)))

(declare-fun c!1439916 () Bool)

(assert (=> d!2350176 (= c!1439916 ((_ is Nil!73666) (tail!15526 s1!4101)))))

(assert (=> d!2350176 (= (size!42753 (tail!15526 s1!4101)) lt!2676747)))

(declare-fun b!7824497 () Bool)

(assert (=> b!7824497 (= e!4628926 0)))

(declare-fun b!7824498 () Bool)

(assert (=> b!7824498 (= e!4628926 (+ 1 (size!42753 (t!388525 (tail!15526 s1!4101)))))))

(assert (= (and d!2350176 c!1439916) b!7824497))

(assert (= (and d!2350176 (not c!1439916)) b!7824498))

(declare-fun m!8246820 () Bool)

(assert (=> b!7824498 m!8246820))

(assert (=> b!7823488 d!2350176))

(declare-fun d!2350178 () Bool)

(declare-fun lt!2676748 () Int)

(assert (=> d!2350178 (>= lt!2676748 0)))

(declare-fun e!4628927 () Int)

(assert (=> d!2350178 (= lt!2676748 e!4628927)))

(declare-fun c!1439917 () Bool)

(assert (=> d!2350178 (= c!1439917 ((_ is Nil!73666) (tail!15526 s1Rec!453)))))

(assert (=> d!2350178 (= (size!42753 (tail!15526 s1Rec!453)) lt!2676748)))

(declare-fun b!7824499 () Bool)

(assert (=> b!7824499 (= e!4628927 0)))

(declare-fun b!7824500 () Bool)

(assert (=> b!7824500 (= e!4628927 (+ 1 (size!42753 (t!388525 (tail!15526 s1Rec!453)))))))

(assert (= (and d!2350178 c!1439917) b!7824499))

(assert (= (and d!2350178 (not c!1439917)) b!7824500))

(declare-fun m!8246822 () Bool)

(assert (=> b!7824500 m!8246822))

(assert (=> b!7823488 d!2350178))

(declare-fun b!7824501 () Bool)

(declare-fun c!1439922 () Bool)

(assert (=> b!7824501 (= c!1439922 (nullable!9296 (regOne!42418 (ite c!1439708 (regOne!42419 r2!6199) (ite c!1439709 (reg!21282 r2!6199) (regOne!42418 r2!6199))))))))

(declare-fun e!4628931 () Regex!20953)

(declare-fun e!4628932 () Regex!20953)

(assert (=> b!7824501 (= e!4628931 e!4628932)))

(declare-fun bm!725775 () Bool)

(declare-fun call!725782 () Regex!20953)

(declare-fun call!725781 () Regex!20953)

(assert (=> bm!725775 (= call!725782 call!725781)))

(declare-fun b!7824502 () Bool)

(declare-fun e!4628929 () Regex!20953)

(assert (=> b!7824502 (= e!4628929 EmptyLang!20953)))

(declare-fun b!7824503 () Bool)

(declare-fun e!4628930 () Regex!20953)

(assert (=> b!7824503 (= e!4628930 (ite (= (head!15985 s2!3721) (c!1439622 (ite c!1439708 (regOne!42419 r2!6199) (ite c!1439709 (reg!21282 r2!6199) (regOne!42418 r2!6199))))) EmptyExpr!20953 EmptyLang!20953))))

(declare-fun d!2350180 () Bool)

(declare-fun lt!2676749 () Regex!20953)

(assert (=> d!2350180 (validRegex!11367 lt!2676749)))

(assert (=> d!2350180 (= lt!2676749 e!4628929)))

(declare-fun c!1439921 () Bool)

(assert (=> d!2350180 (= c!1439921 (or ((_ is EmptyExpr!20953) (ite c!1439708 (regOne!42419 r2!6199) (ite c!1439709 (reg!21282 r2!6199) (regOne!42418 r2!6199)))) ((_ is EmptyLang!20953) (ite c!1439708 (regOne!42419 r2!6199) (ite c!1439709 (reg!21282 r2!6199) (regOne!42418 r2!6199))))))))

(assert (=> d!2350180 (validRegex!11367 (ite c!1439708 (regOne!42419 r2!6199) (ite c!1439709 (reg!21282 r2!6199) (regOne!42418 r2!6199))))))

(assert (=> d!2350180 (= (derivativeStep!6255 (ite c!1439708 (regOne!42419 r2!6199) (ite c!1439709 (reg!21282 r2!6199) (regOne!42418 r2!6199))) (head!15985 s2!3721)) lt!2676749)))

(declare-fun b!7824504 () Bool)

(assert (=> b!7824504 (= e!4628931 (Concat!29798 call!725782 (ite c!1439708 (regOne!42419 r2!6199) (ite c!1439709 (reg!21282 r2!6199) (regOne!42418 r2!6199)))))))

(declare-fun call!725783 () Regex!20953)

(declare-fun b!7824505 () Bool)

(assert (=> b!7824505 (= e!4628932 (Union!20953 (Concat!29798 call!725783 (regTwo!42418 (ite c!1439708 (regOne!42419 r2!6199) (ite c!1439709 (reg!21282 r2!6199) (regOne!42418 r2!6199))))) EmptyLang!20953))))

(declare-fun c!1439918 () Bool)

(declare-fun b!7824506 () Bool)

(assert (=> b!7824506 (= c!1439918 ((_ is Union!20953) (ite c!1439708 (regOne!42419 r2!6199) (ite c!1439709 (reg!21282 r2!6199) (regOne!42418 r2!6199)))))))

(declare-fun e!4628928 () Regex!20953)

(assert (=> b!7824506 (= e!4628930 e!4628928)))

(declare-fun bm!725776 () Bool)

(assert (=> bm!725776 (= call!725783 call!725782)))

(declare-fun b!7824507 () Bool)

(declare-fun call!725780 () Regex!20953)

(assert (=> b!7824507 (= e!4628932 (Union!20953 (Concat!29798 call!725783 (regTwo!42418 (ite c!1439708 (regOne!42419 r2!6199) (ite c!1439709 (reg!21282 r2!6199) (regOne!42418 r2!6199))))) call!725780))))

(declare-fun b!7824508 () Bool)

(assert (=> b!7824508 (= e!4628928 e!4628931)))

(declare-fun c!1439919 () Bool)

(assert (=> b!7824508 (= c!1439919 ((_ is Star!20953) (ite c!1439708 (regOne!42419 r2!6199) (ite c!1439709 (reg!21282 r2!6199) (regOne!42418 r2!6199)))))))

(declare-fun bm!725777 () Bool)

(assert (=> bm!725777 (= call!725781 (derivativeStep!6255 (ite c!1439918 (regOne!42419 (ite c!1439708 (regOne!42419 r2!6199) (ite c!1439709 (reg!21282 r2!6199) (regOne!42418 r2!6199)))) (ite c!1439919 (reg!21282 (ite c!1439708 (regOne!42419 r2!6199) (ite c!1439709 (reg!21282 r2!6199) (regOne!42418 r2!6199)))) (regOne!42418 (ite c!1439708 (regOne!42419 r2!6199) (ite c!1439709 (reg!21282 r2!6199) (regOne!42418 r2!6199)))))) (head!15985 s2!3721)))))

(declare-fun bm!725778 () Bool)

(assert (=> bm!725778 (= call!725780 (derivativeStep!6255 (ite c!1439918 (regTwo!42419 (ite c!1439708 (regOne!42419 r2!6199) (ite c!1439709 (reg!21282 r2!6199) (regOne!42418 r2!6199)))) (regTwo!42418 (ite c!1439708 (regOne!42419 r2!6199) (ite c!1439709 (reg!21282 r2!6199) (regOne!42418 r2!6199))))) (head!15985 s2!3721)))))

(declare-fun b!7824509 () Bool)

(assert (=> b!7824509 (= e!4628929 e!4628930)))

(declare-fun c!1439920 () Bool)

(assert (=> b!7824509 (= c!1439920 ((_ is ElementMatch!20953) (ite c!1439708 (regOne!42419 r2!6199) (ite c!1439709 (reg!21282 r2!6199) (regOne!42418 r2!6199)))))))

(declare-fun b!7824510 () Bool)

(assert (=> b!7824510 (= e!4628928 (Union!20953 call!725781 call!725780))))

(assert (= (and d!2350180 c!1439921) b!7824502))

(assert (= (and d!2350180 (not c!1439921)) b!7824509))

(assert (= (and b!7824509 c!1439920) b!7824503))

(assert (= (and b!7824509 (not c!1439920)) b!7824506))

(assert (= (and b!7824506 c!1439918) b!7824510))

(assert (= (and b!7824506 (not c!1439918)) b!7824508))

(assert (= (and b!7824508 c!1439919) b!7824504))

(assert (= (and b!7824508 (not c!1439919)) b!7824501))

(assert (= (and b!7824501 c!1439922) b!7824507))

(assert (= (and b!7824501 (not c!1439922)) b!7824505))

(assert (= (or b!7824507 b!7824505) bm!725776))

(assert (= (or b!7824504 bm!725776) bm!725775))

(assert (= (or b!7824510 bm!725775) bm!725777))

(assert (= (or b!7824510 b!7824507) bm!725778))

(declare-fun m!8246824 () Bool)

(assert (=> b!7824501 m!8246824))

(declare-fun m!8246826 () Bool)

(assert (=> d!2350180 m!8246826))

(declare-fun m!8246828 () Bool)

(assert (=> d!2350180 m!8246828))

(assert (=> bm!725777 m!8246110))

(declare-fun m!8246830 () Bool)

(assert (=> bm!725777 m!8246830))

(assert (=> bm!725778 m!8246110))

(declare-fun m!8246832 () Bool)

(assert (=> bm!725778 m!8246832))

(assert (=> bm!725632 d!2350180))

(declare-fun d!2350182 () Bool)

(assert (=> d!2350182 (= (nullable!9296 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))) (nullableFct!3665 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))))))

(declare-fun bs!1966764 () Bool)

(assert (= bs!1966764 d!2350182))

(assert (=> bs!1966764 m!8246104))

(declare-fun m!8246834 () Bool)

(assert (=> bs!1966764 m!8246834))

(assert (=> b!7823553 d!2350182))

(declare-fun d!2350184 () Bool)

(assert (=> d!2350184 (= (isEmpty!42284 (tail!15526 (tail!15526 s2Rec!453))) ((_ is Nil!73666) (tail!15526 (tail!15526 s2Rec!453))))))

(assert (=> b!7823519 d!2350184))

(declare-fun d!2350186 () Bool)

(assert (=> d!2350186 (= (tail!15526 (tail!15526 s2Rec!453)) (t!388525 (tail!15526 s2Rec!453)))))

(assert (=> b!7823519 d!2350186))

(assert (=> b!7823486 d!2350140))

(assert (=> b!7823486 d!2350152))

(assert (=> b!7823581 d!2350152))

(assert (=> bm!725637 d!2349880))

(declare-fun e!4628934 () Bool)

(declare-fun b!7824514 () Bool)

(declare-fun lt!2676750 () List!73790)

(assert (=> b!7824514 (= e!4628934 (or (not (= s2Rec!453 Nil!73666)) (= lt!2676750 (t!388525 (t!388525 s1Rec!453)))))))

(declare-fun b!7824513 () Bool)

(declare-fun res!3114073 () Bool)

(assert (=> b!7824513 (=> (not res!3114073) (not e!4628934))))

(assert (=> b!7824513 (= res!3114073 (= (size!42753 lt!2676750) (+ (size!42753 (t!388525 (t!388525 s1Rec!453))) (size!42753 s2Rec!453))))))

(declare-fun b!7824511 () Bool)

(declare-fun e!4628933 () List!73790)

(assert (=> b!7824511 (= e!4628933 s2Rec!453)))

(declare-fun b!7824512 () Bool)

(assert (=> b!7824512 (= e!4628933 (Cons!73666 (h!80114 (t!388525 (t!388525 s1Rec!453))) (++!17987 (t!388525 (t!388525 (t!388525 s1Rec!453))) s2Rec!453)))))

(declare-fun d!2350188 () Bool)

(assert (=> d!2350188 e!4628934))

(declare-fun res!3114072 () Bool)

(assert (=> d!2350188 (=> (not res!3114072) (not e!4628934))))

(assert (=> d!2350188 (= res!3114072 (= (content!15637 lt!2676750) ((_ map or) (content!15637 (t!388525 (t!388525 s1Rec!453))) (content!15637 s2Rec!453))))))

(assert (=> d!2350188 (= lt!2676750 e!4628933)))

(declare-fun c!1439923 () Bool)

(assert (=> d!2350188 (= c!1439923 ((_ is Nil!73666) (t!388525 (t!388525 s1Rec!453))))))

(assert (=> d!2350188 (= (++!17987 (t!388525 (t!388525 s1Rec!453)) s2Rec!453) lt!2676750)))

(assert (= (and d!2350188 c!1439923) b!7824511))

(assert (= (and d!2350188 (not c!1439923)) b!7824512))

(assert (= (and d!2350188 res!3114072) b!7824513))

(assert (= (and b!7824513 res!3114073) b!7824514))

(declare-fun m!8246836 () Bool)

(assert (=> b!7824513 m!8246836))

(assert (=> b!7824513 m!8246398))

(assert (=> b!7824513 m!8246130))

(declare-fun m!8246838 () Bool)

(assert (=> b!7824512 m!8246838))

(declare-fun m!8246840 () Bool)

(assert (=> d!2350188 m!8246840))

(assert (=> d!2350188 m!8246744))

(assert (=> d!2350188 m!8246138))

(assert (=> b!7823501 d!2350188))

(assert (=> b!7823521 d!2350184))

(assert (=> b!7823521 d!2350186))

(declare-fun d!2350190 () Bool)

(declare-fun c!1439924 () Bool)

(assert (=> d!2350190 (= c!1439924 ((_ is Nil!73666) (t!388525 lt!2676673)))))

(declare-fun e!4628935 () (InoxSet C!42232))

(assert (=> d!2350190 (= (content!15637 (t!388525 lt!2676673)) e!4628935)))

(declare-fun b!7824515 () Bool)

(assert (=> b!7824515 (= e!4628935 ((as const (Array C!42232 Bool)) false))))

(declare-fun b!7824516 () Bool)

(assert (=> b!7824516 (= e!4628935 ((_ map or) (store ((as const (Array C!42232 Bool)) false) (h!80114 (t!388525 lt!2676673)) true) (content!15637 (t!388525 (t!388525 lt!2676673)))))))

(assert (= (and d!2350190 c!1439924) b!7824515))

(assert (= (and d!2350190 (not c!1439924)) b!7824516))

(declare-fun m!8246842 () Bool)

(assert (=> b!7824516 m!8246842))

(declare-fun m!8246844 () Bool)

(assert (=> b!7824516 m!8246844))

(assert (=> b!7823480 d!2350190))

(declare-fun d!2350192 () Bool)

(declare-fun lt!2676751 () Int)

(assert (=> d!2350192 (>= lt!2676751 0)))

(declare-fun e!4628936 () Int)

(assert (=> d!2350192 (= lt!2676751 e!4628936)))

(declare-fun c!1439925 () Bool)

(assert (=> d!2350192 (= c!1439925 ((_ is Nil!73666) (t!388525 s2!3721)))))

(assert (=> d!2350192 (= (size!42753 (t!388525 s2!3721)) lt!2676751)))

(declare-fun b!7824517 () Bool)

(assert (=> b!7824517 (= e!4628936 0)))

(declare-fun b!7824518 () Bool)

(assert (=> b!7824518 (= e!4628936 (+ 1 (size!42753 (t!388525 (t!388525 s2!3721)))))))

(assert (= (and d!2350192 c!1439925) b!7824517))

(assert (= (and d!2350192 (not c!1439925)) b!7824518))

(declare-fun m!8246846 () Bool)

(assert (=> b!7824518 m!8246846))

(assert (=> b!7823605 d!2350192))

(declare-fun b!7824519 () Bool)

(declare-fun e!4628939 () Bool)

(declare-fun call!725784 () Bool)

(assert (=> b!7824519 (= e!4628939 call!725784)))

(declare-fun b!7824520 () Bool)

(declare-fun e!4628941 () Bool)

(declare-fun call!725786 () Bool)

(assert (=> b!7824520 (= e!4628941 call!725786)))

(declare-fun c!1439926 () Bool)

(declare-fun bm!725779 () Bool)

(declare-fun c!1439927 () Bool)

(assert (=> bm!725779 (= call!725786 (validRegex!11367 (ite c!1439926 (reg!21282 (ite c!1439745 (regTwo!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regOne!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))))) (ite c!1439927 (regOne!42419 (ite c!1439745 (regTwo!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regOne!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))))) (regTwo!42418 (ite c!1439745 (regTwo!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regOne!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199)))))))))))

(declare-fun b!7824522 () Bool)

(declare-fun res!3114076 () Bool)

(declare-fun e!4628940 () Bool)

(assert (=> b!7824522 (=> res!3114076 e!4628940)))

(assert (=> b!7824522 (= res!3114076 (not ((_ is Concat!29798) (ite c!1439745 (regTwo!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regOne!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199)))))))))

(declare-fun e!4628938 () Bool)

(assert (=> b!7824522 (= e!4628938 e!4628940)))

(declare-fun b!7824523 () Bool)

(declare-fun e!4628937 () Bool)

(assert (=> b!7824523 (= e!4628937 e!4628938)))

(assert (=> b!7824523 (= c!1439927 ((_ is Union!20953) (ite c!1439745 (regTwo!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regOne!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))))))))

(declare-fun b!7824524 () Bool)

(declare-fun e!4628943 () Bool)

(declare-fun call!725785 () Bool)

(assert (=> b!7824524 (= e!4628943 call!725785)))

(declare-fun bm!725780 () Bool)

(assert (=> bm!725780 (= call!725784 (validRegex!11367 (ite c!1439927 (regTwo!42419 (ite c!1439745 (regTwo!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regOne!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))))) (regOne!42418 (ite c!1439745 (regTwo!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regOne!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))))))))))

(declare-fun bm!725781 () Bool)

(assert (=> bm!725781 (= call!725785 call!725786)))

(declare-fun b!7824525 () Bool)

(declare-fun e!4628942 () Bool)

(assert (=> b!7824525 (= e!4628942 e!4628937)))

(assert (=> b!7824525 (= c!1439926 ((_ is Star!20953) (ite c!1439745 (regTwo!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regOne!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))))))))

(declare-fun b!7824526 () Bool)

(declare-fun res!3114075 () Bool)

(assert (=> b!7824526 (=> (not res!3114075) (not e!4628939))))

(assert (=> b!7824526 (= res!3114075 call!725785)))

(assert (=> b!7824526 (= e!4628938 e!4628939)))

(declare-fun b!7824527 () Bool)

(assert (=> b!7824527 (= e!4628940 e!4628943)))

(declare-fun res!3114077 () Bool)

(assert (=> b!7824527 (=> (not res!3114077) (not e!4628943))))

(assert (=> b!7824527 (= res!3114077 call!725784)))

(declare-fun d!2350194 () Bool)

(declare-fun res!3114078 () Bool)

(assert (=> d!2350194 (=> res!3114078 e!4628942)))

(assert (=> d!2350194 (= res!3114078 ((_ is ElementMatch!20953) (ite c!1439745 (regTwo!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regOne!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))))))))

(assert (=> d!2350194 (= (validRegex!11367 (ite c!1439745 (regTwo!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regOne!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))))) e!4628942)))

(declare-fun b!7824521 () Bool)

(assert (=> b!7824521 (= e!4628937 e!4628941)))

(declare-fun res!3114074 () Bool)

(assert (=> b!7824521 (= res!3114074 (not (nullable!9296 (reg!21282 (ite c!1439745 (regTwo!42419 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))) (regOne!42418 (ite c!1439631 (regTwo!42419 r2!6199) (regOne!42418 r2!6199))))))))))

(assert (=> b!7824521 (=> (not res!3114074) (not e!4628941))))

(assert (= (and d!2350194 (not res!3114078)) b!7824525))

(assert (= (and b!7824525 c!1439926) b!7824521))

(assert (= (and b!7824525 (not c!1439926)) b!7824523))

(assert (= (and b!7824521 res!3114074) b!7824520))

(assert (= (and b!7824523 c!1439927) b!7824526))

(assert (= (and b!7824523 (not c!1439927)) b!7824522))

(assert (= (and b!7824526 res!3114075) b!7824519))

(assert (= (and b!7824522 (not res!3114076)) b!7824527))

(assert (= (and b!7824527 res!3114077) b!7824524))

(assert (= (or b!7824519 b!7824527) bm!725780))

(assert (= (or b!7824526 b!7824524) bm!725781))

(assert (= (or b!7824520 bm!725781) bm!725779))

(declare-fun m!8246848 () Bool)

(assert (=> bm!725779 m!8246848))

(declare-fun m!8246850 () Bool)

(assert (=> bm!725780 m!8246850))

(declare-fun m!8246852 () Bool)

(assert (=> b!7824521 m!8246852))

(assert (=> bm!725651 d!2350194))

(declare-fun d!2350196 () Bool)

(assert (=> d!2350196 (= (nullable!9296 (derivativeStep!6255 r2!6199 (head!15985 s2!3721))) (nullableFct!3665 (derivativeStep!6255 r2!6199 (head!15985 s2!3721))))))

(declare-fun bs!1966765 () Bool)

(assert (= bs!1966765 d!2350196))

(assert (=> bs!1966765 m!8246116))

(declare-fun m!8246854 () Bool)

(assert (=> bs!1966765 m!8246854))

(assert (=> b!7823437 d!2350196))

(declare-fun b!7824528 () Bool)

(declare-fun c!1439932 () Bool)

(assert (=> b!7824528 (= c!1439932 (nullable!9296 (regOne!42418 (ite c!1439749 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261)))))))

(declare-fun e!4628947 () Regex!20953)

(declare-fun e!4628948 () Regex!20953)

(assert (=> b!7824528 (= e!4628947 e!4628948)))

(declare-fun bm!725782 () Bool)

(declare-fun call!725789 () Regex!20953)

(declare-fun call!725788 () Regex!20953)

(assert (=> bm!725782 (= call!725789 call!725788)))

(declare-fun b!7824529 () Bool)

(declare-fun e!4628945 () Regex!20953)

(assert (=> b!7824529 (= e!4628945 EmptyLang!20953)))

(declare-fun e!4628946 () Regex!20953)

(declare-fun b!7824530 () Bool)

(assert (=> b!7824530 (= e!4628946 (ite (= (head!15985 s1!4101) (c!1439622 (ite c!1439749 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261)))) EmptyExpr!20953 EmptyLang!20953))))

(declare-fun d!2350198 () Bool)

(declare-fun lt!2676752 () Regex!20953)

(assert (=> d!2350198 (validRegex!11367 lt!2676752)))

(assert (=> d!2350198 (= lt!2676752 e!4628945)))

(declare-fun c!1439931 () Bool)

(assert (=> d!2350198 (= c!1439931 (or ((_ is EmptyExpr!20953) (ite c!1439749 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261))) ((_ is EmptyLang!20953) (ite c!1439749 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261)))))))

(assert (=> d!2350198 (validRegex!11367 (ite c!1439749 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261)))))

(assert (=> d!2350198 (= (derivativeStep!6255 (ite c!1439749 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261)) (head!15985 s1!4101)) lt!2676752)))

(declare-fun b!7824531 () Bool)

(assert (=> b!7824531 (= e!4628947 (Concat!29798 call!725789 (ite c!1439749 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261))))))

(declare-fun b!7824532 () Bool)

(declare-fun call!725790 () Regex!20953)

(assert (=> b!7824532 (= e!4628948 (Union!20953 (Concat!29798 call!725790 (regTwo!42418 (ite c!1439749 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261)))) EmptyLang!20953))))

(declare-fun b!7824533 () Bool)

(declare-fun c!1439928 () Bool)

(assert (=> b!7824533 (= c!1439928 ((_ is Union!20953) (ite c!1439749 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261))))))

(declare-fun e!4628944 () Regex!20953)

(assert (=> b!7824533 (= e!4628946 e!4628944)))

(declare-fun bm!725783 () Bool)

(assert (=> bm!725783 (= call!725790 call!725789)))

(declare-fun call!725787 () Regex!20953)

(declare-fun b!7824534 () Bool)

(assert (=> b!7824534 (= e!4628948 (Union!20953 (Concat!29798 call!725790 (regTwo!42418 (ite c!1439749 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261)))) call!725787))))

(declare-fun b!7824535 () Bool)

(assert (=> b!7824535 (= e!4628944 e!4628947)))

(declare-fun c!1439929 () Bool)

(assert (=> b!7824535 (= c!1439929 ((_ is Star!20953) (ite c!1439749 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261))))))

(declare-fun bm!725784 () Bool)

(assert (=> bm!725784 (= call!725788 (derivativeStep!6255 (ite c!1439928 (regOne!42419 (ite c!1439749 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261))) (ite c!1439929 (reg!21282 (ite c!1439749 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261))) (regOne!42418 (ite c!1439749 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261))))) (head!15985 s1!4101)))))

(declare-fun bm!725785 () Bool)

(assert (=> bm!725785 (= call!725787 (derivativeStep!6255 (ite c!1439928 (regTwo!42419 (ite c!1439749 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261))) (regTwo!42418 (ite c!1439749 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261)))) (head!15985 s1!4101)))))

(declare-fun b!7824536 () Bool)

(assert (=> b!7824536 (= e!4628945 e!4628946)))

(declare-fun c!1439930 () Bool)

(assert (=> b!7824536 (= c!1439930 ((_ is ElementMatch!20953) (ite c!1439749 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261))))))

(declare-fun b!7824537 () Bool)

(assert (=> b!7824537 (= e!4628944 (Union!20953 call!725788 call!725787))))

(assert (= (and d!2350198 c!1439931) b!7824529))

(assert (= (and d!2350198 (not c!1439931)) b!7824536))

(assert (= (and b!7824536 c!1439930) b!7824530))

(assert (= (and b!7824536 (not c!1439930)) b!7824533))

(assert (= (and b!7824533 c!1439928) b!7824537))

(assert (= (and b!7824533 (not c!1439928)) b!7824535))

(assert (= (and b!7824535 c!1439929) b!7824531))

(assert (= (and b!7824535 (not c!1439929)) b!7824528))

(assert (= (and b!7824528 c!1439932) b!7824534))

(assert (= (and b!7824528 (not c!1439932)) b!7824532))

(assert (= (or b!7824534 b!7824532) bm!725783))

(assert (= (or b!7824531 bm!725783) bm!725782))

(assert (= (or b!7824537 bm!725782) bm!725784))

(assert (= (or b!7824537 b!7824534) bm!725785))

(declare-fun m!8246856 () Bool)

(assert (=> b!7824528 m!8246856))

(declare-fun m!8246858 () Bool)

(assert (=> d!2350198 m!8246858))

(declare-fun m!8246860 () Bool)

(assert (=> d!2350198 m!8246860))

(assert (=> bm!725784 m!8246062))

(declare-fun m!8246862 () Bool)

(assert (=> bm!725784 m!8246862))

(assert (=> bm!725785 m!8246062))

(declare-fun m!8246864 () Bool)

(assert (=> bm!725785 m!8246864))

(assert (=> bm!725657 d!2350198))

(declare-fun b!7824538 () Bool)

(declare-fun c!1439937 () Bool)

(assert (=> b!7824538 (= c!1439937 (nullable!9296 (regOne!42418 (ite c!1439729 (regOne!42419 r2!6199) (ite c!1439730 (reg!21282 r2!6199) (regOne!42418 r2!6199))))))))

(declare-fun e!4628952 () Regex!20953)

(declare-fun e!4628953 () Regex!20953)

(assert (=> b!7824538 (= e!4628952 e!4628953)))

(declare-fun bm!725786 () Bool)

(declare-fun call!725793 () Regex!20953)

(declare-fun call!725792 () Regex!20953)

(assert (=> bm!725786 (= call!725793 call!725792)))

(declare-fun b!7824539 () Bool)

(declare-fun e!4628950 () Regex!20953)

(assert (=> b!7824539 (= e!4628950 EmptyLang!20953)))

(declare-fun e!4628951 () Regex!20953)

(declare-fun b!7824540 () Bool)

(assert (=> b!7824540 (= e!4628951 (ite (= (head!15985 s2Rec!453) (c!1439622 (ite c!1439729 (regOne!42419 r2!6199) (ite c!1439730 (reg!21282 r2!6199) (regOne!42418 r2!6199))))) EmptyExpr!20953 EmptyLang!20953))))

(declare-fun d!2350200 () Bool)

(declare-fun lt!2676753 () Regex!20953)

(assert (=> d!2350200 (validRegex!11367 lt!2676753)))

(assert (=> d!2350200 (= lt!2676753 e!4628950)))

(declare-fun c!1439936 () Bool)

(assert (=> d!2350200 (= c!1439936 (or ((_ is EmptyExpr!20953) (ite c!1439729 (regOne!42419 r2!6199) (ite c!1439730 (reg!21282 r2!6199) (regOne!42418 r2!6199)))) ((_ is EmptyLang!20953) (ite c!1439729 (regOne!42419 r2!6199) (ite c!1439730 (reg!21282 r2!6199) (regOne!42418 r2!6199))))))))

(assert (=> d!2350200 (validRegex!11367 (ite c!1439729 (regOne!42419 r2!6199) (ite c!1439730 (reg!21282 r2!6199) (regOne!42418 r2!6199))))))

(assert (=> d!2350200 (= (derivativeStep!6255 (ite c!1439729 (regOne!42419 r2!6199) (ite c!1439730 (reg!21282 r2!6199) (regOne!42418 r2!6199))) (head!15985 s2Rec!453)) lt!2676753)))

(declare-fun b!7824541 () Bool)

(assert (=> b!7824541 (= e!4628952 (Concat!29798 call!725793 (ite c!1439729 (regOne!42419 r2!6199) (ite c!1439730 (reg!21282 r2!6199) (regOne!42418 r2!6199)))))))

(declare-fun call!725794 () Regex!20953)

(declare-fun b!7824542 () Bool)

(assert (=> b!7824542 (= e!4628953 (Union!20953 (Concat!29798 call!725794 (regTwo!42418 (ite c!1439729 (regOne!42419 r2!6199) (ite c!1439730 (reg!21282 r2!6199) (regOne!42418 r2!6199))))) EmptyLang!20953))))

(declare-fun c!1439933 () Bool)

(declare-fun b!7824543 () Bool)

(assert (=> b!7824543 (= c!1439933 ((_ is Union!20953) (ite c!1439729 (regOne!42419 r2!6199) (ite c!1439730 (reg!21282 r2!6199) (regOne!42418 r2!6199)))))))

(declare-fun e!4628949 () Regex!20953)

(assert (=> b!7824543 (= e!4628951 e!4628949)))

(declare-fun bm!725787 () Bool)

(assert (=> bm!725787 (= call!725794 call!725793)))

(declare-fun b!7824544 () Bool)

(declare-fun call!725791 () Regex!20953)

(assert (=> b!7824544 (= e!4628953 (Union!20953 (Concat!29798 call!725794 (regTwo!42418 (ite c!1439729 (regOne!42419 r2!6199) (ite c!1439730 (reg!21282 r2!6199) (regOne!42418 r2!6199))))) call!725791))))

(declare-fun b!7824545 () Bool)

(assert (=> b!7824545 (= e!4628949 e!4628952)))

(declare-fun c!1439934 () Bool)

(assert (=> b!7824545 (= c!1439934 ((_ is Star!20953) (ite c!1439729 (regOne!42419 r2!6199) (ite c!1439730 (reg!21282 r2!6199) (regOne!42418 r2!6199)))))))

(declare-fun bm!725788 () Bool)

(assert (=> bm!725788 (= call!725792 (derivativeStep!6255 (ite c!1439933 (regOne!42419 (ite c!1439729 (regOne!42419 r2!6199) (ite c!1439730 (reg!21282 r2!6199) (regOne!42418 r2!6199)))) (ite c!1439934 (reg!21282 (ite c!1439729 (regOne!42419 r2!6199) (ite c!1439730 (reg!21282 r2!6199) (regOne!42418 r2!6199)))) (regOne!42418 (ite c!1439729 (regOne!42419 r2!6199) (ite c!1439730 (reg!21282 r2!6199) (regOne!42418 r2!6199)))))) (head!15985 s2Rec!453)))))

(declare-fun bm!725789 () Bool)

(assert (=> bm!725789 (= call!725791 (derivativeStep!6255 (ite c!1439933 (regTwo!42419 (ite c!1439729 (regOne!42419 r2!6199) (ite c!1439730 (reg!21282 r2!6199) (regOne!42418 r2!6199)))) (regTwo!42418 (ite c!1439729 (regOne!42419 r2!6199) (ite c!1439730 (reg!21282 r2!6199) (regOne!42418 r2!6199))))) (head!15985 s2Rec!453)))))

(declare-fun b!7824546 () Bool)

(assert (=> b!7824546 (= e!4628950 e!4628951)))

(declare-fun c!1439935 () Bool)

(assert (=> b!7824546 (= c!1439935 ((_ is ElementMatch!20953) (ite c!1439729 (regOne!42419 r2!6199) (ite c!1439730 (reg!21282 r2!6199) (regOne!42418 r2!6199)))))))

(declare-fun b!7824547 () Bool)

(assert (=> b!7824547 (= e!4628949 (Union!20953 call!725792 call!725791))))

(assert (= (and d!2350200 c!1439936) b!7824539))

(assert (= (and d!2350200 (not c!1439936)) b!7824546))

(assert (= (and b!7824546 c!1439935) b!7824540))

(assert (= (and b!7824546 (not c!1439935)) b!7824543))

(assert (= (and b!7824543 c!1439933) b!7824547))

(assert (= (and b!7824543 (not c!1439933)) b!7824545))

(assert (= (and b!7824545 c!1439934) b!7824541))

(assert (= (and b!7824545 (not c!1439934)) b!7824538))

(assert (= (and b!7824538 c!1439937) b!7824544))

(assert (= (and b!7824538 (not c!1439937)) b!7824542))

(assert (= (or b!7824544 b!7824542) bm!725787))

(assert (= (or b!7824541 bm!725787) bm!725786))

(assert (= (or b!7824547 bm!725786) bm!725788))

(assert (= (or b!7824547 b!7824544) bm!725789))

(declare-fun m!8246866 () Bool)

(assert (=> b!7824538 m!8246866))

(declare-fun m!8246868 () Bool)

(assert (=> d!2350200 m!8246868))

(declare-fun m!8246870 () Bool)

(assert (=> d!2350200 m!8246870))

(assert (=> bm!725788 m!8246076))

(declare-fun m!8246872 () Bool)

(assert (=> bm!725788 m!8246872))

(assert (=> bm!725789 m!8246076))

(declare-fun m!8246874 () Bool)

(assert (=> bm!725789 m!8246874))

(assert (=> bm!725640 d!2350200))

(declare-fun d!2350202 () Bool)

(declare-fun lt!2676754 () Int)

(assert (=> d!2350202 (>= lt!2676754 0)))

(declare-fun e!4628954 () Int)

(assert (=> d!2350202 (= lt!2676754 e!4628954)))

(declare-fun c!1439938 () Bool)

(assert (=> d!2350202 (= c!1439938 ((_ is Nil!73666) (t!388525 (t!388525 s1Rec!453))))))

(assert (=> d!2350202 (= (size!42753 (t!388525 (t!388525 s1Rec!453))) lt!2676754)))

(declare-fun b!7824548 () Bool)

(assert (=> b!7824548 (= e!4628954 0)))

(declare-fun b!7824549 () Bool)

(assert (=> b!7824549 (= e!4628954 (+ 1 (size!42753 (t!388525 (t!388525 (t!388525 s1Rec!453))))))))

(assert (= (and d!2350202 c!1439938) b!7824548))

(assert (= (and d!2350202 (not c!1439938)) b!7824549))

(declare-fun m!8246876 () Bool)

(assert (=> b!7824549 m!8246876))

(assert (=> b!7823609 d!2350202))

(declare-fun d!2350204 () Bool)

(assert (=> d!2350204 (= (nullable!9296 (derivativeStep!6255 r1!6261 (head!15985 s1!4101))) (nullableFct!3665 (derivativeStep!6255 r1!6261 (head!15985 s1!4101))))))

(declare-fun bs!1966766 () Bool)

(assert (= bs!1966766 d!2350204))

(assert (=> bs!1966766 m!8246070))

(declare-fun m!8246878 () Bool)

(assert (=> bs!1966766 m!8246878))

(assert (=> b!7823586 d!2350204))

(declare-fun d!2350206 () Bool)

(assert (=> d!2350206 (= (nullable!9296 (regOne!42418 r1!6261)) (nullableFct!3665 (regOne!42418 r1!6261)))))

(declare-fun bs!1966767 () Bool)

(assert (= bs!1966767 d!2350206))

(declare-fun m!8246880 () Bool)

(assert (=> bs!1966767 m!8246880))

(assert (=> b!7823555 d!2350206))

(declare-fun b!7824550 () Bool)

(declare-fun e!4628958 () Bool)

(declare-fun e!4628956 () Bool)

(assert (=> b!7824550 (= e!4628958 e!4628956)))

(declare-fun res!3114079 () Bool)

(declare-fun call!725795 () Bool)

(assert (=> b!7824550 (= res!3114079 call!725795)))

(assert (=> b!7824550 (=> res!3114079 e!4628956)))

(declare-fun b!7824551 () Bool)

(declare-fun e!4628959 () Bool)

(assert (=> b!7824551 (= e!4628958 e!4628959)))

(declare-fun res!3114083 () Bool)

(assert (=> b!7824551 (= res!3114083 call!725795)))

(assert (=> b!7824551 (=> (not res!3114083) (not e!4628959))))

(declare-fun bm!725790 () Bool)

(declare-fun c!1439939 () Bool)

(assert (=> bm!725790 (= call!725795 (nullable!9296 (ite c!1439939 (regOne!42419 (reg!21282 r2!6199)) (regOne!42418 (reg!21282 r2!6199)))))))

(declare-fun b!7824552 () Bool)

(declare-fun e!4628957 () Bool)

(declare-fun e!4628955 () Bool)

(assert (=> b!7824552 (= e!4628957 e!4628955)))

(declare-fun res!3114081 () Bool)

(assert (=> b!7824552 (=> (not res!3114081) (not e!4628955))))

(assert (=> b!7824552 (= res!3114081 (and (not ((_ is EmptyLang!20953) (reg!21282 r2!6199))) (not ((_ is ElementMatch!20953) (reg!21282 r2!6199)))))))

(declare-fun d!2350208 () Bool)

(declare-fun res!3114082 () Bool)

(assert (=> d!2350208 (=> res!3114082 e!4628957)))

(assert (=> d!2350208 (= res!3114082 ((_ is EmptyExpr!20953) (reg!21282 r2!6199)))))

(assert (=> d!2350208 (= (nullableFct!3665 (reg!21282 r2!6199)) e!4628957)))

(declare-fun b!7824553 () Bool)

(declare-fun call!725796 () Bool)

(assert (=> b!7824553 (= e!4628959 call!725796)))

(declare-fun bm!725791 () Bool)

(assert (=> bm!725791 (= call!725796 (nullable!9296 (ite c!1439939 (regTwo!42419 (reg!21282 r2!6199)) (regTwo!42418 (reg!21282 r2!6199)))))))

(declare-fun b!7824554 () Bool)

(declare-fun e!4628960 () Bool)

(assert (=> b!7824554 (= e!4628960 e!4628958)))

(assert (=> b!7824554 (= c!1439939 ((_ is Union!20953) (reg!21282 r2!6199)))))

(declare-fun b!7824555 () Bool)

(assert (=> b!7824555 (= e!4628955 e!4628960)))

(declare-fun res!3114080 () Bool)

(assert (=> b!7824555 (=> res!3114080 e!4628960)))

(assert (=> b!7824555 (= res!3114080 ((_ is Star!20953) (reg!21282 r2!6199)))))

(declare-fun b!7824556 () Bool)

(assert (=> b!7824556 (= e!4628956 call!725796)))

(assert (= (and d!2350208 (not res!3114082)) b!7824552))

(assert (= (and b!7824552 res!3114081) b!7824555))

(assert (= (and b!7824555 (not res!3114080)) b!7824554))

(assert (= (and b!7824554 c!1439939) b!7824550))

(assert (= (and b!7824554 (not c!1439939)) b!7824551))

(assert (= (and b!7824550 (not res!3114079)) b!7824556))

(assert (= (and b!7824551 res!3114083) b!7824553))

(assert (= (or b!7824556 b!7824553) bm!725791))

(assert (= (or b!7824550 b!7824551) bm!725790))

(declare-fun m!8246882 () Bool)

(assert (=> bm!725790 m!8246882))

(declare-fun m!8246884 () Bool)

(assert (=> bm!725791 m!8246884))

(assert (=> d!2349974 d!2350208))

(assert (=> b!7823541 d!2350140))

(declare-fun b!7824557 () Bool)

(declare-fun e!4628964 () Bool)

(declare-fun e!4628962 () Bool)

(assert (=> b!7824557 (= e!4628964 e!4628962)))

(declare-fun res!3114084 () Bool)

(declare-fun call!725797 () Bool)

(assert (=> b!7824557 (= res!3114084 call!725797)))

(assert (=> b!7824557 (=> res!3114084 e!4628962)))

(declare-fun b!7824558 () Bool)

(declare-fun e!4628965 () Bool)

(assert (=> b!7824558 (= e!4628964 e!4628965)))

(declare-fun res!3114088 () Bool)

(assert (=> b!7824558 (= res!3114088 call!725797)))

(assert (=> b!7824558 (=> (not res!3114088) (not e!4628965))))

(declare-fun bm!725792 () Bool)

(declare-fun c!1439940 () Bool)

(assert (=> bm!725792 (= call!725797 (nullable!9296 (ite c!1439940 (regOne!42419 r1!6261) (regOne!42418 r1!6261))))))

(declare-fun b!7824559 () Bool)

(declare-fun e!4628963 () Bool)

(declare-fun e!4628961 () Bool)

(assert (=> b!7824559 (= e!4628963 e!4628961)))

(declare-fun res!3114086 () Bool)

(assert (=> b!7824559 (=> (not res!3114086) (not e!4628961))))

(assert (=> b!7824559 (= res!3114086 (and (not ((_ is EmptyLang!20953) r1!6261)) (not ((_ is ElementMatch!20953) r1!6261))))))

(declare-fun d!2350210 () Bool)

(declare-fun res!3114087 () Bool)

(assert (=> d!2350210 (=> res!3114087 e!4628963)))

(assert (=> d!2350210 (= res!3114087 ((_ is EmptyExpr!20953) r1!6261))))

(assert (=> d!2350210 (= (nullableFct!3665 r1!6261) e!4628963)))

(declare-fun b!7824560 () Bool)

(declare-fun call!725798 () Bool)

(assert (=> b!7824560 (= e!4628965 call!725798)))

(declare-fun bm!725793 () Bool)

(assert (=> bm!725793 (= call!725798 (nullable!9296 (ite c!1439940 (regTwo!42419 r1!6261) (regTwo!42418 r1!6261))))))

(declare-fun b!7824561 () Bool)

(declare-fun e!4628966 () Bool)

(assert (=> b!7824561 (= e!4628966 e!4628964)))

(assert (=> b!7824561 (= c!1439940 ((_ is Union!20953) r1!6261))))

(declare-fun b!7824562 () Bool)

(assert (=> b!7824562 (= e!4628961 e!4628966)))

(declare-fun res!3114085 () Bool)

(assert (=> b!7824562 (=> res!3114085 e!4628966)))

(assert (=> b!7824562 (= res!3114085 ((_ is Star!20953) r1!6261))))

(declare-fun b!7824563 () Bool)

(assert (=> b!7824563 (= e!4628962 call!725798)))

(assert (= (and d!2350210 (not res!3114087)) b!7824559))

(assert (= (and b!7824559 res!3114086) b!7824562))

(assert (= (and b!7824562 (not res!3114085)) b!7824561))

(assert (= (and b!7824561 c!1439940) b!7824557))

(assert (= (and b!7824561 (not c!1439940)) b!7824558))

(assert (= (and b!7824557 (not res!3114084)) b!7824563))

(assert (= (and b!7824558 res!3114088) b!7824560))

(assert (= (or b!7824563 b!7824560) bm!725793))

(assert (= (or b!7824557 b!7824558) bm!725792))

(declare-fun m!8246886 () Bool)

(assert (=> bm!725792 m!8246886))

(declare-fun m!8246888 () Bool)

(assert (=> bm!725793 m!8246888))

(assert (=> d!2349968 d!2350210))

(assert (=> d!2349888 d!2349962))

(declare-fun b!7824564 () Bool)

(declare-fun e!4628969 () Bool)

(declare-fun call!725799 () Bool)

(assert (=> b!7824564 (= e!4628969 call!725799)))

(declare-fun b!7824565 () Bool)

(declare-fun e!4628971 () Bool)

(declare-fun call!725801 () Bool)

(assert (=> b!7824565 (= e!4628971 call!725801)))

(declare-fun bm!725794 () Bool)

(declare-fun c!1439941 () Bool)

(declare-fun c!1439942 () Bool)

(assert (=> bm!725794 (= call!725801 (validRegex!11367 (ite c!1439941 (reg!21282 (derivativeStep!6255 r2!6199 (head!15985 s2!3721))) (ite c!1439942 (regOne!42419 (derivativeStep!6255 r2!6199 (head!15985 s2!3721))) (regTwo!42418 (derivativeStep!6255 r2!6199 (head!15985 s2!3721)))))))))

(declare-fun b!7824567 () Bool)

(declare-fun res!3114091 () Bool)

(declare-fun e!4628970 () Bool)

(assert (=> b!7824567 (=> res!3114091 e!4628970)))

(assert (=> b!7824567 (= res!3114091 (not ((_ is Concat!29798) (derivativeStep!6255 r2!6199 (head!15985 s2!3721)))))))

(declare-fun e!4628968 () Bool)

(assert (=> b!7824567 (= e!4628968 e!4628970)))

(declare-fun b!7824568 () Bool)

(declare-fun e!4628967 () Bool)

(assert (=> b!7824568 (= e!4628967 e!4628968)))

(assert (=> b!7824568 (= c!1439942 ((_ is Union!20953) (derivativeStep!6255 r2!6199 (head!15985 s2!3721))))))

(declare-fun b!7824569 () Bool)

(declare-fun e!4628973 () Bool)

(declare-fun call!725800 () Bool)

(assert (=> b!7824569 (= e!4628973 call!725800)))

(declare-fun bm!725795 () Bool)

(assert (=> bm!725795 (= call!725799 (validRegex!11367 (ite c!1439942 (regTwo!42419 (derivativeStep!6255 r2!6199 (head!15985 s2!3721))) (regOne!42418 (derivativeStep!6255 r2!6199 (head!15985 s2!3721))))))))

(declare-fun bm!725796 () Bool)

(assert (=> bm!725796 (= call!725800 call!725801)))

(declare-fun b!7824570 () Bool)

(declare-fun e!4628972 () Bool)

(assert (=> b!7824570 (= e!4628972 e!4628967)))

(assert (=> b!7824570 (= c!1439941 ((_ is Star!20953) (derivativeStep!6255 r2!6199 (head!15985 s2!3721))))))

(declare-fun b!7824571 () Bool)

(declare-fun res!3114090 () Bool)

(assert (=> b!7824571 (=> (not res!3114090) (not e!4628969))))

(assert (=> b!7824571 (= res!3114090 call!725800)))

(assert (=> b!7824571 (= e!4628968 e!4628969)))

(declare-fun b!7824572 () Bool)

(assert (=> b!7824572 (= e!4628970 e!4628973)))

(declare-fun res!3114092 () Bool)

(assert (=> b!7824572 (=> (not res!3114092) (not e!4628973))))

(assert (=> b!7824572 (= res!3114092 call!725799)))

(declare-fun d!2350212 () Bool)

(declare-fun res!3114093 () Bool)

(assert (=> d!2350212 (=> res!3114093 e!4628972)))

(assert (=> d!2350212 (= res!3114093 ((_ is ElementMatch!20953) (derivativeStep!6255 r2!6199 (head!15985 s2!3721))))))

(assert (=> d!2350212 (= (validRegex!11367 (derivativeStep!6255 r2!6199 (head!15985 s2!3721))) e!4628972)))

(declare-fun b!7824566 () Bool)

(assert (=> b!7824566 (= e!4628967 e!4628971)))

(declare-fun res!3114089 () Bool)

(assert (=> b!7824566 (= res!3114089 (not (nullable!9296 (reg!21282 (derivativeStep!6255 r2!6199 (head!15985 s2!3721))))))))

(assert (=> b!7824566 (=> (not res!3114089) (not e!4628971))))

(assert (= (and d!2350212 (not res!3114093)) b!7824570))

(assert (= (and b!7824570 c!1439941) b!7824566))

(assert (= (and b!7824570 (not c!1439941)) b!7824568))

(assert (= (and b!7824566 res!3114089) b!7824565))

(assert (= (and b!7824568 c!1439942) b!7824571))

(assert (= (and b!7824568 (not c!1439942)) b!7824567))

(assert (= (and b!7824571 res!3114090) b!7824564))

(assert (= (and b!7824567 (not res!3114091)) b!7824572))

(assert (= (and b!7824572 res!3114092) b!7824569))

(assert (= (or b!7824564 b!7824572) bm!725795))

(assert (= (or b!7824571 b!7824569) bm!725796))

(assert (= (or b!7824565 bm!725796) bm!725794))

(declare-fun m!8246890 () Bool)

(assert (=> bm!725794 m!8246890))

(declare-fun m!8246892 () Bool)

(assert (=> bm!725795 m!8246892))

(declare-fun m!8246894 () Bool)

(assert (=> b!7824566 m!8246894))

(assert (=> d!2349888 d!2350212))

(assert (=> b!7823425 d!2350130))

(declare-fun d!2350214 () Bool)

(declare-fun c!1439943 () Bool)

(assert (=> d!2350214 (= c!1439943 ((_ is Nil!73666) lt!2676694))))

(declare-fun e!4628974 () (InoxSet C!42232))

(assert (=> d!2350214 (= (content!15637 lt!2676694) e!4628974)))

(declare-fun b!7824573 () Bool)

(assert (=> b!7824573 (= e!4628974 ((as const (Array C!42232 Bool)) false))))

(declare-fun b!7824574 () Bool)

(assert (=> b!7824574 (= e!4628974 ((_ map or) (store ((as const (Array C!42232 Bool)) false) (h!80114 lt!2676694) true) (content!15637 (t!388525 lt!2676694))))))

(assert (= (and d!2350214 c!1439943) b!7824573))

(assert (= (and d!2350214 (not c!1439943)) b!7824574))

(declare-fun m!8246896 () Bool)

(assert (=> b!7824574 m!8246896))

(declare-fun m!8246898 () Bool)

(assert (=> b!7824574 m!8246898))

(assert (=> d!2349928 d!2350214))

(assert (=> d!2349928 d!2350098))

(assert (=> d!2349928 d!2349900))

(assert (=> d!2349942 d!2349918))

(declare-fun b!7824575 () Bool)

(declare-fun e!4628977 () Bool)

(declare-fun call!725802 () Bool)

(assert (=> b!7824575 (= e!4628977 call!725802)))

(declare-fun b!7824576 () Bool)

(declare-fun e!4628979 () Bool)

(declare-fun call!725804 () Bool)

(assert (=> b!7824576 (= e!4628979 call!725804)))

(declare-fun c!1439945 () Bool)

(declare-fun bm!725797 () Bool)

(declare-fun c!1439944 () Bool)

(assert (=> bm!725797 (= call!725804 (validRegex!11367 (ite c!1439944 (reg!21282 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))) (ite c!1439945 (regOne!42419 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))) (regTwo!42418 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)))))))))

(declare-fun b!7824578 () Bool)

(declare-fun res!3114096 () Bool)

(declare-fun e!4628978 () Bool)

(assert (=> b!7824578 (=> res!3114096 e!4628978)))

(assert (=> b!7824578 (= res!3114096 (not ((_ is Concat!29798) (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453)))))))

(declare-fun e!4628976 () Bool)

(assert (=> b!7824578 (= e!4628976 e!4628978)))

(declare-fun b!7824579 () Bool)

(declare-fun e!4628975 () Bool)

(assert (=> b!7824579 (= e!4628975 e!4628976)))

(assert (=> b!7824579 (= c!1439945 ((_ is Union!20953) (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))))))

(declare-fun b!7824580 () Bool)

(declare-fun e!4628981 () Bool)

(declare-fun call!725803 () Bool)

(assert (=> b!7824580 (= e!4628981 call!725803)))

(declare-fun bm!725798 () Bool)

(assert (=> bm!725798 (= call!725802 (validRegex!11367 (ite c!1439945 (regTwo!42419 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))) (regOne!42418 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))))))))

(declare-fun bm!725799 () Bool)

(assert (=> bm!725799 (= call!725803 call!725804)))

(declare-fun b!7824581 () Bool)

(declare-fun e!4628980 () Bool)

(assert (=> b!7824581 (= e!4628980 e!4628975)))

(assert (=> b!7824581 (= c!1439944 ((_ is Star!20953) (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))))))

(declare-fun b!7824582 () Bool)

(declare-fun res!3114095 () Bool)

(assert (=> b!7824582 (=> (not res!3114095) (not e!4628977))))

(assert (=> b!7824582 (= res!3114095 call!725803)))

(assert (=> b!7824582 (= e!4628976 e!4628977)))

(declare-fun b!7824583 () Bool)

(assert (=> b!7824583 (= e!4628978 e!4628981)))

(declare-fun res!3114097 () Bool)

(assert (=> b!7824583 (=> (not res!3114097) (not e!4628981))))

(assert (=> b!7824583 (= res!3114097 call!725802)))

(declare-fun d!2350216 () Bool)

(declare-fun res!3114098 () Bool)

(assert (=> d!2350216 (=> res!3114098 e!4628980)))

(assert (=> d!2350216 (= res!3114098 ((_ is ElementMatch!20953) (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))))))

(assert (=> d!2350216 (= (validRegex!11367 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))) e!4628980)))

(declare-fun b!7824577 () Bool)

(assert (=> b!7824577 (= e!4628975 e!4628979)))

(declare-fun res!3114094 () Bool)

(assert (=> b!7824577 (= res!3114094 (not (nullable!9296 (reg!21282 (derivativeStep!6255 r1!6261 (head!15985 s1Rec!453))))))))

(assert (=> b!7824577 (=> (not res!3114094) (not e!4628979))))

(assert (= (and d!2350216 (not res!3114098)) b!7824581))

(assert (= (and b!7824581 c!1439944) b!7824577))

(assert (= (and b!7824581 (not c!1439944)) b!7824579))

(assert (= (and b!7824577 res!3114094) b!7824576))

(assert (= (and b!7824579 c!1439945) b!7824582))

(assert (= (and b!7824579 (not c!1439945)) b!7824578))

(assert (= (and b!7824582 res!3114095) b!7824575))

(assert (= (and b!7824578 (not res!3114096)) b!7824583))

(assert (= (and b!7824583 res!3114097) b!7824580))

(assert (= (or b!7824575 b!7824583) bm!725798))

(assert (= (or b!7824582 b!7824580) bm!725799))

(assert (= (or b!7824576 bm!725799) bm!725797))

(declare-fun m!8246900 () Bool)

(assert (=> bm!725797 m!8246900))

(declare-fun m!8246902 () Bool)

(assert (=> bm!725798 m!8246902))

(declare-fun m!8246904 () Bool)

(assert (=> b!7824577 m!8246904))

(assert (=> d!2349942 d!2350216))

(assert (=> b!7823482 d!2350146))

(declare-fun d!2350218 () Bool)

(assert (=> d!2350218 (= (nullable!9296 (reg!21282 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199))))) (nullableFct!3665 (reg!21282 (ite c!1439630 (reg!21282 r2!6199) (ite c!1439631 (regOne!42419 r2!6199) (regTwo!42418 r2!6199))))))))

(declare-fun bs!1966768 () Bool)

(assert (= bs!1966768 d!2350218))

(declare-fun m!8246906 () Bool)

(assert (=> bs!1966768 m!8246906))

(assert (=> b!7823534 d!2350218))

(assert (=> d!2349954 d!2349932))

(declare-fun b!7824584 () Bool)

(declare-fun e!4628984 () Bool)

(declare-fun call!725805 () Bool)

(assert (=> b!7824584 (= e!4628984 call!725805)))

(declare-fun b!7824585 () Bool)

(declare-fun e!4628986 () Bool)

(declare-fun call!725807 () Bool)

(assert (=> b!7824585 (= e!4628986 call!725807)))

(declare-fun bm!725800 () Bool)

(declare-fun c!1439946 () Bool)

(declare-fun c!1439947 () Bool)

(assert (=> bm!725800 (= call!725807 (validRegex!11367 (ite c!1439946 (reg!21282 (derivativeStep!6255 r1!6261 (head!15985 s1!4101))) (ite c!1439947 (regOne!42419 (derivativeStep!6255 r1!6261 (head!15985 s1!4101))) (regTwo!42418 (derivativeStep!6255 r1!6261 (head!15985 s1!4101)))))))))

(declare-fun b!7824587 () Bool)

(declare-fun res!3114101 () Bool)

(declare-fun e!4628985 () Bool)

(assert (=> b!7824587 (=> res!3114101 e!4628985)))

(assert (=> b!7824587 (= res!3114101 (not ((_ is Concat!29798) (derivativeStep!6255 r1!6261 (head!15985 s1!4101)))))))

(declare-fun e!4628983 () Bool)

(assert (=> b!7824587 (= e!4628983 e!4628985)))

(declare-fun b!7824588 () Bool)

(declare-fun e!4628982 () Bool)

(assert (=> b!7824588 (= e!4628982 e!4628983)))

(assert (=> b!7824588 (= c!1439947 ((_ is Union!20953) (derivativeStep!6255 r1!6261 (head!15985 s1!4101))))))

(declare-fun b!7824589 () Bool)

(declare-fun e!4628988 () Bool)

(declare-fun call!725806 () Bool)

(assert (=> b!7824589 (= e!4628988 call!725806)))

(declare-fun bm!725801 () Bool)

(assert (=> bm!725801 (= call!725805 (validRegex!11367 (ite c!1439947 (regTwo!42419 (derivativeStep!6255 r1!6261 (head!15985 s1!4101))) (regOne!42418 (derivativeStep!6255 r1!6261 (head!15985 s1!4101))))))))

(declare-fun bm!725802 () Bool)

(assert (=> bm!725802 (= call!725806 call!725807)))

(declare-fun b!7824590 () Bool)

(declare-fun e!4628987 () Bool)

(assert (=> b!7824590 (= e!4628987 e!4628982)))

(assert (=> b!7824590 (= c!1439946 ((_ is Star!20953) (derivativeStep!6255 r1!6261 (head!15985 s1!4101))))))

(declare-fun b!7824591 () Bool)

(declare-fun res!3114100 () Bool)

(assert (=> b!7824591 (=> (not res!3114100) (not e!4628984))))

(assert (=> b!7824591 (= res!3114100 call!725806)))

(assert (=> b!7824591 (= e!4628983 e!4628984)))

(declare-fun b!7824592 () Bool)

(assert (=> b!7824592 (= e!4628985 e!4628988)))

(declare-fun res!3114102 () Bool)

(assert (=> b!7824592 (=> (not res!3114102) (not e!4628988))))

(assert (=> b!7824592 (= res!3114102 call!725805)))

(declare-fun d!2350220 () Bool)

(declare-fun res!3114103 () Bool)

(assert (=> d!2350220 (=> res!3114103 e!4628987)))

(assert (=> d!2350220 (= res!3114103 ((_ is ElementMatch!20953) (derivativeStep!6255 r1!6261 (head!15985 s1!4101))))))

(assert (=> d!2350220 (= (validRegex!11367 (derivativeStep!6255 r1!6261 (head!15985 s1!4101))) e!4628987)))

(declare-fun b!7824586 () Bool)

(assert (=> b!7824586 (= e!4628982 e!4628986)))

(declare-fun res!3114099 () Bool)

(assert (=> b!7824586 (= res!3114099 (not (nullable!9296 (reg!21282 (derivativeStep!6255 r1!6261 (head!15985 s1!4101))))))))

(assert (=> b!7824586 (=> (not res!3114099) (not e!4628986))))

(assert (= (and d!2350220 (not res!3114103)) b!7824590))

(assert (= (and b!7824590 c!1439946) b!7824586))

(assert (= (and b!7824590 (not c!1439946)) b!7824588))

(assert (= (and b!7824586 res!3114099) b!7824585))

(assert (= (and b!7824588 c!1439947) b!7824591))

(assert (= (and b!7824588 (not c!1439947)) b!7824587))

(assert (= (and b!7824591 res!3114100) b!7824584))

(assert (= (and b!7824587 (not res!3114101)) b!7824592))

(assert (= (and b!7824592 res!3114102) b!7824589))

(assert (= (or b!7824584 b!7824592) bm!725801))

(assert (= (or b!7824591 b!7824589) bm!725802))

(assert (= (or b!7824585 bm!725802) bm!725800))

(declare-fun m!8246908 () Bool)

(assert (=> bm!725800 m!8246908))

(declare-fun m!8246910 () Bool)

(assert (=> bm!725801 m!8246910))

(declare-fun m!8246912 () Bool)

(assert (=> b!7824586 m!8246912))

(assert (=> d!2349954 d!2350220))

(declare-fun d!2350222 () Bool)

(assert (=> d!2350222 (= (nullable!9296 (reg!21282 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261))))) (nullableFct!3665 (reg!21282 (ite c!1439649 (reg!21282 r1!6261) (ite c!1439650 (regOne!42419 r1!6261) (regTwo!42418 r1!6261))))))))

(declare-fun bs!1966769 () Bool)

(assert (= bs!1966769 d!2350222))

(declare-fun m!8246914 () Bool)

(assert (=> bs!1966769 m!8246914))

(assert (=> b!7823418 d!2350222))

(declare-fun d!2350224 () Bool)

(declare-fun c!1439948 () Bool)

(assert (=> d!2350224 (= c!1439948 ((_ is Nil!73666) (t!388525 lt!2676676)))))

(declare-fun e!4628989 () (InoxSet C!42232))

(assert (=> d!2350224 (= (content!15637 (t!388525 lt!2676676)) e!4628989)))

(declare-fun b!7824593 () Bool)

(assert (=> b!7824593 (= e!4628989 ((as const (Array C!42232 Bool)) false))))

(declare-fun b!7824594 () Bool)

(assert (=> b!7824594 (= e!4628989 ((_ map or) (store ((as const (Array C!42232 Bool)) false) (h!80114 (t!388525 lt!2676676)) true) (content!15637 (t!388525 (t!388525 lt!2676676)))))))

(assert (= (and d!2350224 c!1439948) b!7824593))

(assert (= (and d!2350224 (not c!1439948)) b!7824594))

(declare-fun m!8246916 () Bool)

(assert (=> b!7824594 m!8246916))

(declare-fun m!8246918 () Bool)

(assert (=> b!7824594 m!8246918))

(assert (=> b!7823474 d!2350224))

(declare-fun b!7824595 () Bool)

(declare-fun e!4628993 () Bool)

(declare-fun e!4628991 () Bool)

(assert (=> b!7824595 (= e!4628993 e!4628991)))

(declare-fun res!3114104 () Bool)

(declare-fun call!725808 () Bool)

(assert (=> b!7824595 (= res!3114104 call!725808)))

(assert (=> b!7824595 (=> res!3114104 e!4628991)))

(declare-fun b!7824596 () Bool)

(declare-fun e!4628994 () Bool)

(assert (=> b!7824596 (= e!4628993 e!4628994)))

(declare-fun res!3114108 () Bool)

(assert (=> b!7824596 (= res!3114108 call!725808)))

(assert (=> b!7824596 (=> (not res!3114108) (not e!4628994))))

(declare-fun bm!725803 () Bool)

(declare-fun c!1439949 () Bool)

(assert (=> bm!725803 (= call!725808 (nullable!9296 (ite c!1439949 (regOne!42419 (reg!21282 r1!6261)) (regOne!42418 (reg!21282 r1!6261)))))))

(declare-fun b!7824597 () Bool)

(declare-fun e!4628992 () Bool)

(declare-fun e!4628990 () Bool)

(assert (=> b!7824597 (= e!4628992 e!4628990)))

(declare-fun res!3114106 () Bool)

(assert (=> b!7824597 (=> (not res!3114106) (not e!4628990))))

(assert (=> b!7824597 (= res!3114106 (and (not ((_ is EmptyLang!20953) (reg!21282 r1!6261))) (not ((_ is ElementMatch!20953) (reg!21282 r1!6261)))))))

(declare-fun d!2350226 () Bool)

(declare-fun res!3114107 () Bool)

(assert (=> d!2350226 (=> res!3114107 e!4628992)))

(assert (=> d!2350226 (= res!3114107 ((_ is EmptyExpr!20953) (reg!21282 r1!6261)))))

(assert (=> d!2350226 (= (nullableFct!3665 (reg!21282 r1!6261)) e!4628992)))

(declare-fun b!7824598 () Bool)

(declare-fun call!725809 () Bool)

(assert (=> b!7824598 (= e!4628994 call!725809)))

(declare-fun bm!725804 () Bool)

(assert (=> bm!725804 (= call!725809 (nullable!9296 (ite c!1439949 (regTwo!42419 (reg!21282 r1!6261)) (regTwo!42418 (reg!21282 r1!6261)))))))

(declare-fun b!7824599 () Bool)

(declare-fun e!4628995 () Bool)

(assert (=> b!7824599 (= e!4628995 e!4628993)))

(assert (=> b!7824599 (= c!1439949 ((_ is Union!20953) (reg!21282 r1!6261)))))

(declare-fun b!7824600 () Bool)

(assert (=> b!7824600 (= e!4628990 e!4628995)))

(declare-fun res!3114105 () Bool)

(assert (=> b!7824600 (=> res!3114105 e!4628995)))

(assert (=> b!7824600 (= res!3114105 ((_ is Star!20953) (reg!21282 r1!6261)))))

(declare-fun b!7824601 () Bool)

(assert (=> b!7824601 (= e!4628991 call!725809)))

(assert (= (and d!2350226 (not res!3114107)) b!7824597))

(assert (= (and b!7824597 res!3114106) b!7824600))

(assert (= (and b!7824600 (not res!3114105)) b!7824599))

(assert (= (and b!7824599 c!1439949) b!7824595))

(assert (= (and b!7824599 (not c!1439949)) b!7824596))

(assert (= (and b!7824595 (not res!3114104)) b!7824601))

(assert (= (and b!7824596 res!3114108) b!7824598))

(assert (= (or b!7824601 b!7824598) bm!725804))

(assert (= (or b!7824595 b!7824596) bm!725803))

(declare-fun m!8246920 () Bool)

(assert (=> bm!725803 m!8246920))

(declare-fun m!8246922 () Bool)

(assert (=> bm!725804 m!8246922))

(assert (=> d!2349950 d!2350226))

(assert (=> b!7823588 d!2350206))

(assert (=> b!7823574 d!2350152))

(declare-fun b!7824602 () Bool)

(declare-fun e!4628998 () Bool)

(assert (=> b!7824602 (= e!4628998 (not (= (head!15985 (tail!15526 (tail!15526 s2Rec!453))) (c!1439622 (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)) (head!15985 (tail!15526 s2Rec!453)))))))))

(declare-fun b!7824603 () Bool)

(declare-fun e!4629001 () Bool)

(assert (=> b!7824603 (= e!4629001 e!4628998)))

(declare-fun res!3114116 () Bool)

(assert (=> b!7824603 (=> res!3114116 e!4628998)))

(declare-fun call!725810 () Bool)

(assert (=> b!7824603 (= res!3114116 call!725810)))

(declare-fun b!7824604 () Bool)

(declare-fun e!4628997 () Bool)

(declare-fun lt!2676755 () Bool)

(assert (=> b!7824604 (= e!4628997 (= lt!2676755 call!725810))))

(declare-fun b!7824605 () Bool)

(declare-fun e!4629002 () Bool)

(assert (=> b!7824605 (= e!4629002 (matchR!10409 (derivativeStep!6255 (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)) (head!15985 (tail!15526 s2Rec!453))) (head!15985 (tail!15526 (tail!15526 s2Rec!453)))) (tail!15526 (tail!15526 (tail!15526 s2Rec!453)))))))

(declare-fun d!2350228 () Bool)

(assert (=> d!2350228 e!4628997))

(declare-fun c!1439951 () Bool)

(assert (=> d!2350228 (= c!1439951 ((_ is EmptyExpr!20953) (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)) (head!15985 (tail!15526 s2Rec!453)))))))

(assert (=> d!2350228 (= lt!2676755 e!4629002)))

(declare-fun c!1439950 () Bool)

(assert (=> d!2350228 (= c!1439950 (isEmpty!42284 (tail!15526 (tail!15526 s2Rec!453))))))

(assert (=> d!2350228 (validRegex!11367 (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)) (head!15985 (tail!15526 s2Rec!453))))))

(assert (=> d!2350228 (= (matchR!10409 (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)) (head!15985 (tail!15526 s2Rec!453))) (tail!15526 (tail!15526 s2Rec!453))) lt!2676755)))

(declare-fun b!7824606 () Bool)

(declare-fun e!4628999 () Bool)

(assert (=> b!7824606 (= e!4628999 e!4629001)))

(declare-fun res!3114115 () Bool)

(assert (=> b!7824606 (=> (not res!3114115) (not e!4629001))))

(assert (=> b!7824606 (= res!3114115 (not lt!2676755))))

(declare-fun b!7824607 () Bool)

(declare-fun e!4629000 () Bool)

(assert (=> b!7824607 (= e!4629000 (not lt!2676755))))

(declare-fun b!7824608 () Bool)

(declare-fun res!3114109 () Bool)

(assert (=> b!7824608 (=> res!3114109 e!4628999)))

(declare-fun e!4628996 () Bool)

(assert (=> b!7824608 (= res!3114109 e!4628996)))

(declare-fun res!3114111 () Bool)

(assert (=> b!7824608 (=> (not res!3114111) (not e!4628996))))

(assert (=> b!7824608 (= res!3114111 lt!2676755)))

(declare-fun b!7824609 () Bool)

(assert (=> b!7824609 (= e!4628996 (= (head!15985 (tail!15526 (tail!15526 s2Rec!453))) (c!1439622 (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)) (head!15985 (tail!15526 s2Rec!453))))))))

(declare-fun b!7824610 () Bool)

(declare-fun res!3114110 () Bool)

(assert (=> b!7824610 (=> res!3114110 e!4628999)))

(assert (=> b!7824610 (= res!3114110 (not ((_ is ElementMatch!20953) (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)) (head!15985 (tail!15526 s2Rec!453))))))))

(assert (=> b!7824610 (= e!4629000 e!4628999)))

(declare-fun b!7824611 () Bool)

(assert (=> b!7824611 (= e!4628997 e!4629000)))

(declare-fun c!1439952 () Bool)

(assert (=> b!7824611 (= c!1439952 ((_ is EmptyLang!20953) (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)) (head!15985 (tail!15526 s2Rec!453)))))))

(declare-fun bm!725805 () Bool)

(assert (=> bm!725805 (= call!725810 (isEmpty!42284 (tail!15526 (tail!15526 s2Rec!453))))))

(declare-fun b!7824612 () Bool)

(declare-fun res!3114114 () Bool)

(assert (=> b!7824612 (=> (not res!3114114) (not e!4628996))))

(assert (=> b!7824612 (= res!3114114 (not call!725810))))

(declare-fun b!7824613 () Bool)

(declare-fun res!3114112 () Bool)

(assert (=> b!7824613 (=> res!3114112 e!4628998)))

(assert (=> b!7824613 (= res!3114112 (not (isEmpty!42284 (tail!15526 (tail!15526 (tail!15526 s2Rec!453))))))))

(declare-fun b!7824614 () Bool)

(assert (=> b!7824614 (= e!4629002 (nullable!9296 (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)) (head!15985 (tail!15526 s2Rec!453)))))))

(declare-fun b!7824615 () Bool)

(declare-fun res!3114113 () Bool)

(assert (=> b!7824615 (=> (not res!3114113) (not e!4628996))))

(assert (=> b!7824615 (= res!3114113 (isEmpty!42284 (tail!15526 (tail!15526 (tail!15526 s2Rec!453)))))))

(assert (= (and d!2350228 c!1439950) b!7824614))

(assert (= (and d!2350228 (not c!1439950)) b!7824605))

(assert (= (and d!2350228 c!1439951) b!7824604))

(assert (= (and d!2350228 (not c!1439951)) b!7824611))

(assert (= (and b!7824611 c!1439952) b!7824607))

(assert (= (and b!7824611 (not c!1439952)) b!7824610))

(assert (= (and b!7824610 (not res!3114110)) b!7824608))

(assert (= (and b!7824608 res!3114111) b!7824612))

(assert (= (and b!7824612 res!3114114) b!7824615))

(assert (= (and b!7824615 res!3114113) b!7824609))

(assert (= (and b!7824608 (not res!3114109)) b!7824606))

(assert (= (and b!7824606 res!3114115) b!7824603))

(assert (= (and b!7824603 (not res!3114116)) b!7824613))

(assert (= (and b!7824613 (not res!3114112)) b!7824602))

(assert (= (or b!7824604 b!7824603 b!7824612) bm!725805))

(assert (=> b!7824602 m!8246320))

(declare-fun m!8246924 () Bool)

(assert (=> b!7824602 m!8246924))

(assert (=> b!7824615 m!8246320))

(declare-fun m!8246926 () Bool)

(assert (=> b!7824615 m!8246926))

(assert (=> b!7824615 m!8246926))

(declare-fun m!8246928 () Bool)

(assert (=> b!7824615 m!8246928))

(assert (=> b!7824614 m!8246326))

(declare-fun m!8246930 () Bool)

(assert (=> b!7824614 m!8246930))

(assert (=> b!7824605 m!8246320))

(assert (=> b!7824605 m!8246924))

(assert (=> b!7824605 m!8246326))

(assert (=> b!7824605 m!8246924))

(declare-fun m!8246932 () Bool)

(assert (=> b!7824605 m!8246932))

(assert (=> b!7824605 m!8246320))

(assert (=> b!7824605 m!8246926))

(assert (=> b!7824605 m!8246932))

(assert (=> b!7824605 m!8246926))

(declare-fun m!8246934 () Bool)

(assert (=> b!7824605 m!8246934))

(assert (=> b!7824609 m!8246320))

(assert (=> b!7824609 m!8246924))

(assert (=> bm!725805 m!8246320))

(assert (=> bm!725805 m!8246322))

(assert (=> b!7824613 m!8246320))

(assert (=> b!7824613 m!8246926))

(assert (=> b!7824613 m!8246926))

(assert (=> b!7824613 m!8246928))

(assert (=> d!2350228 m!8246320))

(assert (=> d!2350228 m!8246322))

(assert (=> d!2350228 m!8246326))

(declare-fun m!8246936 () Bool)

(assert (=> d!2350228 m!8246936))

(assert (=> b!7823511 d!2350228))

(declare-fun b!7824616 () Bool)

(declare-fun c!1439957 () Bool)

(assert (=> b!7824616 (= c!1439957 (nullable!9296 (regOne!42418 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)))))))

(declare-fun e!4629006 () Regex!20953)

(declare-fun e!4629007 () Regex!20953)

(assert (=> b!7824616 (= e!4629006 e!4629007)))

(declare-fun bm!725806 () Bool)

(declare-fun call!725813 () Regex!20953)

(declare-fun call!725812 () Regex!20953)

(assert (=> bm!725806 (= call!725813 call!725812)))

(declare-fun b!7824617 () Bool)

(declare-fun e!4629004 () Regex!20953)

(assert (=> b!7824617 (= e!4629004 EmptyLang!20953)))

(declare-fun b!7824618 () Bool)

(declare-fun e!4629005 () Regex!20953)

(assert (=> b!7824618 (= e!4629005 (ite (= (head!15985 (tail!15526 s2Rec!453)) (c!1439622 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)))) EmptyExpr!20953 EmptyLang!20953))))

(declare-fun d!2350230 () Bool)

(declare-fun lt!2676756 () Regex!20953)

(assert (=> d!2350230 (validRegex!11367 lt!2676756)))

(assert (=> d!2350230 (= lt!2676756 e!4629004)))

(declare-fun c!1439956 () Bool)

(assert (=> d!2350230 (= c!1439956 (or ((_ is EmptyExpr!20953) (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))) ((_ is EmptyLang!20953) (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)))))))

(assert (=> d!2350230 (validRegex!11367 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)))))

(assert (=> d!2350230 (= (derivativeStep!6255 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)) (head!15985 (tail!15526 s2Rec!453))) lt!2676756)))

(declare-fun b!7824619 () Bool)

(assert (=> b!7824619 (= e!4629006 (Concat!29798 call!725813 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))))))

(declare-fun call!725814 () Regex!20953)

(declare-fun b!7824620 () Bool)

(assert (=> b!7824620 (= e!4629007 (Union!20953 (Concat!29798 call!725814 (regTwo!42418 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)))) EmptyLang!20953))))

(declare-fun b!7824621 () Bool)

(declare-fun c!1439953 () Bool)

(assert (=> b!7824621 (= c!1439953 ((_ is Union!20953) (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))))))

(declare-fun e!4629003 () Regex!20953)

(assert (=> b!7824621 (= e!4629005 e!4629003)))

(declare-fun bm!725807 () Bool)

(assert (=> bm!725807 (= call!725814 call!725813)))

(declare-fun b!7824622 () Bool)

(declare-fun call!725811 () Regex!20953)

(assert (=> b!7824622 (= e!4629007 (Union!20953 (Concat!29798 call!725814 (regTwo!42418 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)))) call!725811))))

(declare-fun b!7824623 () Bool)

(assert (=> b!7824623 (= e!4629003 e!4629006)))

(declare-fun c!1439954 () Bool)

(assert (=> b!7824623 (= c!1439954 ((_ is Star!20953) (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))))))

(declare-fun bm!725808 () Bool)

(assert (=> bm!725808 (= call!725812 (derivativeStep!6255 (ite c!1439953 (regOne!42419 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))) (ite c!1439954 (reg!21282 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))) (regOne!42418 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))))) (head!15985 (tail!15526 s2Rec!453))))))

(declare-fun bm!725809 () Bool)

(assert (=> bm!725809 (= call!725811 (derivativeStep!6255 (ite c!1439953 (regTwo!42419 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))) (regTwo!42418 (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453)))) (head!15985 (tail!15526 s2Rec!453))))))

(declare-fun b!7824624 () Bool)

(assert (=> b!7824624 (= e!4629004 e!4629005)))

(declare-fun c!1439955 () Bool)

(assert (=> b!7824624 (= c!1439955 ((_ is ElementMatch!20953) (derivativeStep!6255 r2!6199 (head!15985 s2Rec!453))))))

(declare-fun b!7824625 () Bool)

(assert (=> b!7824625 (= e!4629003 (Union!20953 call!725812 call!725811))))

(assert (= (and d!2350230 c!1439956) b!7824617))

(assert (= (and d!2350230 (not c!1439956)) b!7824624))

(assert (= (and b!7824624 c!1439955) b!7824618))

(assert (= (and b!7824624 (not c!1439955)) b!7824621))

(assert (= (and b!7824621 c!1439953) b!7824625))

(assert (= (and b!7824621 (not c!1439953)) b!7824623))

(assert (= (and b!7824623 c!1439954) b!7824619))

(assert (= (and b!7824623 (not c!1439954)) b!7824616))

(assert (= (and b!7824616 c!1439957) b!7824622))

(assert (= (and b!7824616 (not c!1439957)) b!7824620))

(assert (= (or b!7824622 b!7824620) bm!725807))

(assert (= (or b!7824619 bm!725807) bm!725806))

(assert (= (or b!7824625 bm!725806) bm!725808))

(assert (= (or b!7824625 b!7824622) bm!725809))

(declare-fun m!8246938 () Bool)

(assert (=> b!7824616 m!8246938))

(declare-fun m!8246940 () Bool)

(assert (=> d!2350230 m!8246940))

(assert (=> d!2350230 m!8246084))

(assert (=> d!2350230 m!8246330))

(assert (=> bm!725808 m!8246318))

(declare-fun m!8246942 () Bool)

(assert (=> bm!725808 m!8246942))

(assert (=> bm!725809 m!8246318))

(declare-fun m!8246944 () Bool)

(assert (=> bm!725809 m!8246944))

(assert (=> b!7823511 d!2350230))

(assert (=> b!7823511 d!2350072))

(assert (=> b!7823511 d!2350186))

(declare-fun b!7824626 () Bool)

(declare-fun e!4629008 () Bool)

(assert (=> b!7824626 (= e!4629008 tp_is_empty!52261)))

(assert (=> b!7823687 (= tp!2309534 e!4629008)))

(declare-fun b!7824629 () Bool)

(declare-fun tp!2309952 () Bool)

(declare-fun tp!2309954 () Bool)

(assert (=> b!7824629 (= e!4629008 (and tp!2309952 tp!2309954))))

(declare-fun b!7824628 () Bool)

(declare-fun tp!2309953 () Bool)

(assert (=> b!7824628 (= e!4629008 tp!2309953)))

(declare-fun b!7824627 () Bool)

(declare-fun tp!2309950 () Bool)

(declare-fun tp!2309951 () Bool)

(assert (=> b!7824627 (= e!4629008 (and tp!2309950 tp!2309951))))

(assert (= (and b!7823687 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42418 (regTwo!42419 r2!6199))))) b!7824626))

(assert (= (and b!7823687 ((_ is Concat!29798) (regOne!42419 (regOne!42418 (regTwo!42419 r2!6199))))) b!7824627))

(assert (= (and b!7823687 ((_ is Star!20953) (regOne!42419 (regOne!42418 (regTwo!42419 r2!6199))))) b!7824628))

(assert (= (and b!7823687 ((_ is Union!20953) (regOne!42419 (regOne!42418 (regTwo!42419 r2!6199))))) b!7824629))

(declare-fun b!7824630 () Bool)

(declare-fun e!4629009 () Bool)

(assert (=> b!7824630 (= e!4629009 tp_is_empty!52261)))

(assert (=> b!7823687 (= tp!2309536 e!4629009)))

(declare-fun b!7824633 () Bool)

(declare-fun tp!2309957 () Bool)

(declare-fun tp!2309959 () Bool)

(assert (=> b!7824633 (= e!4629009 (and tp!2309957 tp!2309959))))

(declare-fun b!7824632 () Bool)

(declare-fun tp!2309958 () Bool)

(assert (=> b!7824632 (= e!4629009 tp!2309958)))

(declare-fun b!7824631 () Bool)

(declare-fun tp!2309955 () Bool)

(declare-fun tp!2309956 () Bool)

(assert (=> b!7824631 (= e!4629009 (and tp!2309955 tp!2309956))))

(assert (= (and b!7823687 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42418 (regTwo!42419 r2!6199))))) b!7824630))

(assert (= (and b!7823687 ((_ is Concat!29798) (regTwo!42419 (regOne!42418 (regTwo!42419 r2!6199))))) b!7824631))

(assert (= (and b!7823687 ((_ is Star!20953) (regTwo!42419 (regOne!42418 (regTwo!42419 r2!6199))))) b!7824632))

(assert (= (and b!7823687 ((_ is Union!20953) (regTwo!42419 (regOne!42418 (regTwo!42419 r2!6199))))) b!7824633))

(declare-fun b!7824634 () Bool)

(declare-fun e!4629010 () Bool)

(assert (=> b!7824634 (= e!4629010 tp_is_empty!52261)))

(assert (=> b!7823771 (= tp!2309639 e!4629010)))

(declare-fun b!7824637 () Bool)

(declare-fun tp!2309962 () Bool)

(declare-fun tp!2309964 () Bool)

(assert (=> b!7824637 (= e!4629010 (and tp!2309962 tp!2309964))))

(declare-fun b!7824636 () Bool)

(declare-fun tp!2309963 () Bool)

(assert (=> b!7824636 (= e!4629010 tp!2309963)))

(declare-fun b!7824635 () Bool)

(declare-fun tp!2309960 () Bool)

(declare-fun tp!2309961 () Bool)

(assert (=> b!7824635 (= e!4629010 (and tp!2309960 tp!2309961))))

(assert (= (and b!7823771 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42418 (regOne!42419 r2!6199))))) b!7824634))

(assert (= (and b!7823771 ((_ is Concat!29798) (regOne!42418 (regOne!42418 (regOne!42419 r2!6199))))) b!7824635))

(assert (= (and b!7823771 ((_ is Star!20953) (regOne!42418 (regOne!42418 (regOne!42419 r2!6199))))) b!7824636))

(assert (= (and b!7823771 ((_ is Union!20953) (regOne!42418 (regOne!42418 (regOne!42419 r2!6199))))) b!7824637))

(declare-fun b!7824638 () Bool)

(declare-fun e!4629011 () Bool)

(assert (=> b!7824638 (= e!4629011 tp_is_empty!52261)))

(assert (=> b!7823771 (= tp!2309640 e!4629011)))

(declare-fun b!7824641 () Bool)

(declare-fun tp!2309967 () Bool)

(declare-fun tp!2309969 () Bool)

(assert (=> b!7824641 (= e!4629011 (and tp!2309967 tp!2309969))))

(declare-fun b!7824640 () Bool)

(declare-fun tp!2309968 () Bool)

(assert (=> b!7824640 (= e!4629011 tp!2309968)))

(declare-fun b!7824639 () Bool)

(declare-fun tp!2309965 () Bool)

(declare-fun tp!2309966 () Bool)

(assert (=> b!7824639 (= e!4629011 (and tp!2309965 tp!2309966))))

(assert (= (and b!7823771 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42418 (regOne!42419 r2!6199))))) b!7824638))

(assert (= (and b!7823771 ((_ is Concat!29798) (regTwo!42418 (regOne!42418 (regOne!42419 r2!6199))))) b!7824639))

(assert (= (and b!7823771 ((_ is Star!20953) (regTwo!42418 (regOne!42418 (regOne!42419 r2!6199))))) b!7824640))

(assert (= (and b!7823771 ((_ is Union!20953) (regTwo!42418 (regOne!42418 (regOne!42419 r2!6199))))) b!7824641))

(declare-fun b!7824642 () Bool)

(declare-fun e!4629012 () Bool)

(assert (=> b!7824642 (= e!4629012 tp_is_empty!52261)))

(assert (=> b!7823764 (= tp!2309630 e!4629012)))

(declare-fun b!7824645 () Bool)

(declare-fun tp!2309972 () Bool)

(declare-fun tp!2309974 () Bool)

(assert (=> b!7824645 (= e!4629012 (and tp!2309972 tp!2309974))))

(declare-fun b!7824644 () Bool)

(declare-fun tp!2309973 () Bool)

(assert (=> b!7824644 (= e!4629012 tp!2309973)))

(declare-fun b!7824643 () Bool)

(declare-fun tp!2309970 () Bool)

(declare-fun tp!2309971 () Bool)

(assert (=> b!7824643 (= e!4629012 (and tp!2309970 tp!2309971))))

(assert (= (and b!7823764 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42418 (regOne!42419 r1!6261))))) b!7824642))

(assert (= (and b!7823764 ((_ is Concat!29798) (regOne!42419 (regTwo!42418 (regOne!42419 r1!6261))))) b!7824643))

(assert (= (and b!7823764 ((_ is Star!20953) (regOne!42419 (regTwo!42418 (regOne!42419 r1!6261))))) b!7824644))

(assert (= (and b!7823764 ((_ is Union!20953) (regOne!42419 (regTwo!42418 (regOne!42419 r1!6261))))) b!7824645))

(declare-fun b!7824646 () Bool)

(declare-fun e!4629013 () Bool)

(assert (=> b!7824646 (= e!4629013 tp_is_empty!52261)))

(assert (=> b!7823764 (= tp!2309632 e!4629013)))

(declare-fun b!7824649 () Bool)

(declare-fun tp!2309977 () Bool)

(declare-fun tp!2309979 () Bool)

(assert (=> b!7824649 (= e!4629013 (and tp!2309977 tp!2309979))))

(declare-fun b!7824648 () Bool)

(declare-fun tp!2309978 () Bool)

(assert (=> b!7824648 (= e!4629013 tp!2309978)))

(declare-fun b!7824647 () Bool)

(declare-fun tp!2309975 () Bool)

(declare-fun tp!2309976 () Bool)

(assert (=> b!7824647 (= e!4629013 (and tp!2309975 tp!2309976))))

(assert (= (and b!7823764 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42418 (regOne!42419 r1!6261))))) b!7824646))

(assert (= (and b!7823764 ((_ is Concat!29798) (regTwo!42419 (regTwo!42418 (regOne!42419 r1!6261))))) b!7824647))

(assert (= (and b!7823764 ((_ is Star!20953) (regTwo!42419 (regTwo!42418 (regOne!42419 r1!6261))))) b!7824648))

(assert (= (and b!7823764 ((_ is Union!20953) (regTwo!42419 (regTwo!42418 (regOne!42419 r1!6261))))) b!7824649))

(declare-fun b!7824650 () Bool)

(declare-fun e!4629014 () Bool)

(assert (=> b!7824650 (= e!4629014 tp_is_empty!52261)))

(assert (=> b!7823814 (= tp!2309692 e!4629014)))

(declare-fun b!7824653 () Bool)

(declare-fun tp!2309982 () Bool)

(declare-fun tp!2309984 () Bool)

(assert (=> b!7824653 (= e!4629014 (and tp!2309982 tp!2309984))))

(declare-fun b!7824652 () Bool)

(declare-fun tp!2309983 () Bool)

(assert (=> b!7824652 (= e!4629014 tp!2309983)))

(declare-fun b!7824651 () Bool)

(declare-fun tp!2309980 () Bool)

(declare-fun tp!2309981 () Bool)

(assert (=> b!7824651 (= e!4629014 (and tp!2309980 tp!2309981))))

(assert (= (and b!7823814 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7824650))

(assert (= (and b!7823814 ((_ is Concat!29798) (regOne!42419 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7824651))

(assert (= (and b!7823814 ((_ is Star!20953) (regOne!42419 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7824652))

(assert (= (and b!7823814 ((_ is Union!20953) (regOne!42419 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7824653))

(declare-fun b!7824654 () Bool)

(declare-fun e!4629015 () Bool)

(assert (=> b!7824654 (= e!4629015 tp_is_empty!52261)))

(assert (=> b!7823814 (= tp!2309694 e!4629015)))

(declare-fun b!7824657 () Bool)

(declare-fun tp!2309987 () Bool)

(declare-fun tp!2309989 () Bool)

(assert (=> b!7824657 (= e!4629015 (and tp!2309987 tp!2309989))))

(declare-fun b!7824656 () Bool)

(declare-fun tp!2309988 () Bool)

(assert (=> b!7824656 (= e!4629015 tp!2309988)))

(declare-fun b!7824655 () Bool)

(declare-fun tp!2309985 () Bool)

(declare-fun tp!2309986 () Bool)

(assert (=> b!7824655 (= e!4629015 (and tp!2309985 tp!2309986))))

(assert (= (and b!7823814 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7824654))

(assert (= (and b!7823814 ((_ is Concat!29798) (regTwo!42419 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7824655))

(assert (= (and b!7823814 ((_ is Star!20953) (regTwo!42419 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7824656))

(assert (= (and b!7823814 ((_ is Union!20953) (regTwo!42419 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7824657))

(declare-fun b!7824658 () Bool)

(declare-fun e!4629016 () Bool)

(assert (=> b!7824658 (= e!4629016 tp_is_empty!52261)))

(assert (=> b!7823805 (= tp!2309683 e!4629016)))

(declare-fun b!7824661 () Bool)

(declare-fun tp!2309992 () Bool)

(declare-fun tp!2309994 () Bool)

(assert (=> b!7824661 (= e!4629016 (and tp!2309992 tp!2309994))))

(declare-fun b!7824660 () Bool)

(declare-fun tp!2309993 () Bool)

(assert (=> b!7824660 (= e!4629016 tp!2309993)))

(declare-fun b!7824659 () Bool)

(declare-fun tp!2309990 () Bool)

(declare-fun tp!2309991 () Bool)

(assert (=> b!7824659 (= e!4629016 (and tp!2309990 tp!2309991))))

(assert (= (and b!7823805 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42419 (regOne!42419 r2!6199))))) b!7824658))

(assert (= (and b!7823805 ((_ is Concat!29798) (reg!21282 (regTwo!42419 (regOne!42419 r2!6199))))) b!7824659))

(assert (= (and b!7823805 ((_ is Star!20953) (reg!21282 (regTwo!42419 (regOne!42419 r2!6199))))) b!7824660))

(assert (= (and b!7823805 ((_ is Union!20953) (reg!21282 (regTwo!42419 (regOne!42419 r2!6199))))) b!7824661))

(declare-fun b!7824662 () Bool)

(declare-fun e!4629017 () Bool)

(assert (=> b!7824662 (= e!4629017 tp_is_empty!52261)))

(assert (=> b!7823796 (= tp!2309670 e!4629017)))

(declare-fun b!7824665 () Bool)

(declare-fun tp!2309997 () Bool)

(declare-fun tp!2309999 () Bool)

(assert (=> b!7824665 (= e!4629017 (and tp!2309997 tp!2309999))))

(declare-fun b!7824664 () Bool)

(declare-fun tp!2309998 () Bool)

(assert (=> b!7824664 (= e!4629017 tp!2309998)))

(declare-fun b!7824663 () Bool)

(declare-fun tp!2309995 () Bool)

(declare-fun tp!2309996 () Bool)

(assert (=> b!7824663 (= e!4629017 (and tp!2309995 tp!2309996))))

(assert (= (and b!7823796 ((_ is ElementMatch!20953) (regOne!42418 (reg!21282 (regTwo!42418 r1!6261))))) b!7824662))

(assert (= (and b!7823796 ((_ is Concat!29798) (regOne!42418 (reg!21282 (regTwo!42418 r1!6261))))) b!7824663))

(assert (= (and b!7823796 ((_ is Star!20953) (regOne!42418 (reg!21282 (regTwo!42418 r1!6261))))) b!7824664))

(assert (= (and b!7823796 ((_ is Union!20953) (regOne!42418 (reg!21282 (regTwo!42418 r1!6261))))) b!7824665))

(declare-fun b!7824666 () Bool)

(declare-fun e!4629018 () Bool)

(assert (=> b!7824666 (= e!4629018 tp_is_empty!52261)))

(assert (=> b!7823796 (= tp!2309671 e!4629018)))

(declare-fun b!7824669 () Bool)

(declare-fun tp!2310002 () Bool)

(declare-fun tp!2310004 () Bool)

(assert (=> b!7824669 (= e!4629018 (and tp!2310002 tp!2310004))))

(declare-fun b!7824668 () Bool)

(declare-fun tp!2310003 () Bool)

(assert (=> b!7824668 (= e!4629018 tp!2310003)))

(declare-fun b!7824667 () Bool)

(declare-fun tp!2310000 () Bool)

(declare-fun tp!2310001 () Bool)

(assert (=> b!7824667 (= e!4629018 (and tp!2310000 tp!2310001))))

(assert (= (and b!7823796 ((_ is ElementMatch!20953) (regTwo!42418 (reg!21282 (regTwo!42418 r1!6261))))) b!7824666))

(assert (= (and b!7823796 ((_ is Concat!29798) (regTwo!42418 (reg!21282 (regTwo!42418 r1!6261))))) b!7824667))

(assert (= (and b!7823796 ((_ is Star!20953) (regTwo!42418 (reg!21282 (regTwo!42418 r1!6261))))) b!7824668))

(assert (= (and b!7823796 ((_ is Union!20953) (regTwo!42418 (reg!21282 (regTwo!42418 r1!6261))))) b!7824669))

(declare-fun b!7824670 () Bool)

(declare-fun e!4629019 () Bool)

(assert (=> b!7824670 (= e!4629019 tp_is_empty!52261)))

(assert (=> b!7823619 (= tp!2309450 e!4629019)))

(declare-fun b!7824673 () Bool)

(declare-fun tp!2310007 () Bool)

(declare-fun tp!2310009 () Bool)

(assert (=> b!7824673 (= e!4629019 (and tp!2310007 tp!2310009))))

(declare-fun b!7824672 () Bool)

(declare-fun tp!2310008 () Bool)

(assert (=> b!7824672 (= e!4629019 tp!2310008)))

(declare-fun b!7824671 () Bool)

(declare-fun tp!2310005 () Bool)

(declare-fun tp!2310006 () Bool)

(assert (=> b!7824671 (= e!4629019 (and tp!2310005 tp!2310006))))

(assert (= (and b!7823619 ((_ is ElementMatch!20953) (regOne!42418 (reg!21282 (regOne!42418 r2!6199))))) b!7824670))

(assert (= (and b!7823619 ((_ is Concat!29798) (regOne!42418 (reg!21282 (regOne!42418 r2!6199))))) b!7824671))

(assert (= (and b!7823619 ((_ is Star!20953) (regOne!42418 (reg!21282 (regOne!42418 r2!6199))))) b!7824672))

(assert (= (and b!7823619 ((_ is Union!20953) (regOne!42418 (reg!21282 (regOne!42418 r2!6199))))) b!7824673))

(declare-fun b!7824674 () Bool)

(declare-fun e!4629020 () Bool)

(assert (=> b!7824674 (= e!4629020 tp_is_empty!52261)))

(assert (=> b!7823619 (= tp!2309451 e!4629020)))

(declare-fun b!7824677 () Bool)

(declare-fun tp!2310012 () Bool)

(declare-fun tp!2310014 () Bool)

(assert (=> b!7824677 (= e!4629020 (and tp!2310012 tp!2310014))))

(declare-fun b!7824676 () Bool)

(declare-fun tp!2310013 () Bool)

(assert (=> b!7824676 (= e!4629020 tp!2310013)))

(declare-fun b!7824675 () Bool)

(declare-fun tp!2310010 () Bool)

(declare-fun tp!2310011 () Bool)

(assert (=> b!7824675 (= e!4629020 (and tp!2310010 tp!2310011))))

(assert (= (and b!7823619 ((_ is ElementMatch!20953) (regTwo!42418 (reg!21282 (regOne!42418 r2!6199))))) b!7824674))

(assert (= (and b!7823619 ((_ is Concat!29798) (regTwo!42418 (reg!21282 (regOne!42418 r2!6199))))) b!7824675))

(assert (= (and b!7823619 ((_ is Star!20953) (regTwo!42418 (reg!21282 (regOne!42418 r2!6199))))) b!7824676))

(assert (= (and b!7823619 ((_ is Union!20953) (regTwo!42418 (reg!21282 (regOne!42418 r2!6199))))) b!7824677))

(declare-fun b!7824678 () Bool)

(declare-fun e!4629021 () Bool)

(assert (=> b!7824678 (= e!4629021 tp_is_empty!52261)))

(assert (=> b!7823721 (= tp!2309577 e!4629021)))

(declare-fun b!7824681 () Bool)

(declare-fun tp!2310017 () Bool)

(declare-fun tp!2310019 () Bool)

(assert (=> b!7824681 (= e!4629021 (and tp!2310017 tp!2310019))))

(declare-fun b!7824680 () Bool)

(declare-fun tp!2310018 () Bool)

(assert (=> b!7824680 (= e!4629021 tp!2310018)))

(declare-fun b!7824679 () Bool)

(declare-fun tp!2310015 () Bool)

(declare-fun tp!2310016 () Bool)

(assert (=> b!7824679 (= e!4629021 (and tp!2310015 tp!2310016))))

(assert (= (and b!7823721 ((_ is ElementMatch!20953) (regOne!42418 (reg!21282 (reg!21282 r2!6199))))) b!7824678))

(assert (= (and b!7823721 ((_ is Concat!29798) (regOne!42418 (reg!21282 (reg!21282 r2!6199))))) b!7824679))

(assert (= (and b!7823721 ((_ is Star!20953) (regOne!42418 (reg!21282 (reg!21282 r2!6199))))) b!7824680))

(assert (= (and b!7823721 ((_ is Union!20953) (regOne!42418 (reg!21282 (reg!21282 r2!6199))))) b!7824681))

(declare-fun b!7824682 () Bool)

(declare-fun e!4629022 () Bool)

(assert (=> b!7824682 (= e!4629022 tp_is_empty!52261)))

(assert (=> b!7823721 (= tp!2309578 e!4629022)))

(declare-fun b!7824685 () Bool)

(declare-fun tp!2310022 () Bool)

(declare-fun tp!2310024 () Bool)

(assert (=> b!7824685 (= e!4629022 (and tp!2310022 tp!2310024))))

(declare-fun b!7824684 () Bool)

(declare-fun tp!2310023 () Bool)

(assert (=> b!7824684 (= e!4629022 tp!2310023)))

(declare-fun b!7824683 () Bool)

(declare-fun tp!2310020 () Bool)

(declare-fun tp!2310021 () Bool)

(assert (=> b!7824683 (= e!4629022 (and tp!2310020 tp!2310021))))

(assert (= (and b!7823721 ((_ is ElementMatch!20953) (regTwo!42418 (reg!21282 (reg!21282 r2!6199))))) b!7824682))

(assert (= (and b!7823721 ((_ is Concat!29798) (regTwo!42418 (reg!21282 (reg!21282 r2!6199))))) b!7824683))

(assert (= (and b!7823721 ((_ is Star!20953) (regTwo!42418 (reg!21282 (reg!21282 r2!6199))))) b!7824684))

(assert (= (and b!7823721 ((_ is Union!20953) (regTwo!42418 (reg!21282 (reg!21282 r2!6199))))) b!7824685))

(declare-fun b!7824686 () Bool)

(declare-fun e!4629023 () Bool)

(assert (=> b!7824686 (= e!4629023 tp_is_empty!52261)))

(assert (=> b!7823755 (= tp!2309621 e!4629023)))

(declare-fun b!7824689 () Bool)

(declare-fun tp!2310027 () Bool)

(declare-fun tp!2310029 () Bool)

(assert (=> b!7824689 (= e!4629023 (and tp!2310027 tp!2310029))))

(declare-fun b!7824688 () Bool)

(declare-fun tp!2310028 () Bool)

(assert (=> b!7824688 (= e!4629023 tp!2310028)))

(declare-fun b!7824687 () Bool)

(declare-fun tp!2310025 () Bool)

(declare-fun tp!2310026 () Bool)

(assert (=> b!7824687 (= e!4629023 (and tp!2310025 tp!2310026))))

(assert (= (and b!7823755 ((_ is ElementMatch!20953) (reg!21282 (reg!21282 (regOne!42419 r1!6261))))) b!7824686))

(assert (= (and b!7823755 ((_ is Concat!29798) (reg!21282 (reg!21282 (regOne!42419 r1!6261))))) b!7824687))

(assert (= (and b!7823755 ((_ is Star!20953) (reg!21282 (reg!21282 (regOne!42419 r1!6261))))) b!7824688))

(assert (= (and b!7823755 ((_ is Union!20953) (reg!21282 (reg!21282 (regOne!42419 r1!6261))))) b!7824689))

(declare-fun b!7824690 () Bool)

(declare-fun e!4629024 () Bool)

(assert (=> b!7824690 (= e!4629024 tp_is_empty!52261)))

(assert (=> b!7823628 (= tp!2309463 e!4629024)))

(declare-fun b!7824693 () Bool)

(declare-fun tp!2310032 () Bool)

(declare-fun tp!2310034 () Bool)

(assert (=> b!7824693 (= e!4629024 (and tp!2310032 tp!2310034))))

(declare-fun b!7824692 () Bool)

(declare-fun tp!2310033 () Bool)

(assert (=> b!7824692 (= e!4629024 tp!2310033)))

(declare-fun b!7824691 () Bool)

(declare-fun tp!2310030 () Bool)

(declare-fun tp!2310031 () Bool)

(assert (=> b!7824691 (= e!4629024 (and tp!2310030 tp!2310031))))

(assert (= (and b!7823628 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42418 (regOne!42418 r2!6199))))) b!7824690))

(assert (= (and b!7823628 ((_ is Concat!29798) (reg!21282 (regTwo!42418 (regOne!42418 r2!6199))))) b!7824691))

(assert (= (and b!7823628 ((_ is Star!20953) (reg!21282 (regTwo!42418 (regOne!42418 r2!6199))))) b!7824692))

(assert (= (and b!7823628 ((_ is Union!20953) (reg!21282 (regTwo!42418 (regOne!42418 r2!6199))))) b!7824693))

(declare-fun b!7824694 () Bool)

(declare-fun e!4629025 () Bool)

(assert (=> b!7824694 (= e!4629025 tp_is_empty!52261)))

(assert (=> b!7823739 (= tp!2309599 e!4629025)))

(declare-fun b!7824697 () Bool)

(declare-fun tp!2310037 () Bool)

(declare-fun tp!2310039 () Bool)

(assert (=> b!7824697 (= e!4629025 (and tp!2310037 tp!2310039))))

(declare-fun b!7824696 () Bool)

(declare-fun tp!2310038 () Bool)

(assert (=> b!7824696 (= e!4629025 tp!2310038)))

(declare-fun b!7824695 () Bool)

(declare-fun tp!2310035 () Bool)

(declare-fun tp!2310036 () Bool)

(assert (=> b!7824695 (= e!4629025 (and tp!2310035 tp!2310036))))

(assert (= (and b!7823739 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42419 (regOne!42418 r1!6261))))) b!7824694))

(assert (= (and b!7823739 ((_ is Concat!29798) (regOne!42419 (regTwo!42419 (regOne!42418 r1!6261))))) b!7824695))

(assert (= (and b!7823739 ((_ is Star!20953) (regOne!42419 (regTwo!42419 (regOne!42418 r1!6261))))) b!7824696))

(assert (= (and b!7823739 ((_ is Union!20953) (regOne!42419 (regTwo!42419 (regOne!42418 r1!6261))))) b!7824697))

(declare-fun b!7824698 () Bool)

(declare-fun e!4629026 () Bool)

(assert (=> b!7824698 (= e!4629026 tp_is_empty!52261)))

(assert (=> b!7823739 (= tp!2309601 e!4629026)))

(declare-fun b!7824701 () Bool)

(declare-fun tp!2310042 () Bool)

(declare-fun tp!2310044 () Bool)

(assert (=> b!7824701 (= e!4629026 (and tp!2310042 tp!2310044))))

(declare-fun b!7824700 () Bool)

(declare-fun tp!2310043 () Bool)

(assert (=> b!7824700 (= e!4629026 tp!2310043)))

(declare-fun b!7824699 () Bool)

(declare-fun tp!2310040 () Bool)

(declare-fun tp!2310041 () Bool)

(assert (=> b!7824699 (= e!4629026 (and tp!2310040 tp!2310041))))

(assert (= (and b!7823739 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42419 (regOne!42418 r1!6261))))) b!7824698))

(assert (= (and b!7823739 ((_ is Concat!29798) (regTwo!42419 (regTwo!42419 (regOne!42418 r1!6261))))) b!7824699))

(assert (= (and b!7823739 ((_ is Star!20953) (regTwo!42419 (regTwo!42419 (regOne!42418 r1!6261))))) b!7824700))

(assert (= (and b!7823739 ((_ is Union!20953) (regTwo!42419 (regTwo!42419 (regOne!42418 r1!6261))))) b!7824701))

(declare-fun b!7824702 () Bool)

(declare-fun e!4629027 () Bool)

(assert (=> b!7824702 (= e!4629027 tp_is_empty!52261)))

(assert (=> b!7823637 (= tp!2309472 e!4629027)))

(declare-fun b!7824705 () Bool)

(declare-fun tp!2310047 () Bool)

(declare-fun tp!2310049 () Bool)

(assert (=> b!7824705 (= e!4629027 (and tp!2310047 tp!2310049))))

(declare-fun b!7824704 () Bool)

(declare-fun tp!2310048 () Bool)

(assert (=> b!7824704 (= e!4629027 tp!2310048)))

(declare-fun b!7824703 () Bool)

(declare-fun tp!2310045 () Bool)

(declare-fun tp!2310046 () Bool)

(assert (=> b!7824703 (= e!4629027 (and tp!2310045 tp!2310046))))

(assert (= (and b!7823637 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7824702))

(assert (= (and b!7823637 ((_ is Concat!29798) (regOne!42419 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7824703))

(assert (= (and b!7823637 ((_ is Star!20953) (regOne!42419 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7824704))

(assert (= (and b!7823637 ((_ is Union!20953) (regOne!42419 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7824705))

(declare-fun b!7824706 () Bool)

(declare-fun e!4629028 () Bool)

(assert (=> b!7824706 (= e!4629028 tp_is_empty!52261)))

(assert (=> b!7823637 (= tp!2309474 e!4629028)))

(declare-fun b!7824709 () Bool)

(declare-fun tp!2310052 () Bool)

(declare-fun tp!2310054 () Bool)

(assert (=> b!7824709 (= e!4629028 (and tp!2310052 tp!2310054))))

(declare-fun b!7824708 () Bool)

(declare-fun tp!2310053 () Bool)

(assert (=> b!7824708 (= e!4629028 tp!2310053)))

(declare-fun b!7824707 () Bool)

(declare-fun tp!2310050 () Bool)

(declare-fun tp!2310051 () Bool)

(assert (=> b!7824707 (= e!4629028 (and tp!2310050 tp!2310051))))

(assert (= (and b!7823637 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7824706))

(assert (= (and b!7823637 ((_ is Concat!29798) (regTwo!42419 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7824707))

(assert (= (and b!7823637 ((_ is Star!20953) (regTwo!42419 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7824708))

(assert (= (and b!7823637 ((_ is Union!20953) (regTwo!42419 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7824709))

(declare-fun b!7824710 () Bool)

(declare-fun e!4629029 () Bool)

(assert (=> b!7824710 (= e!4629029 tp_is_empty!52261)))

(assert (=> b!7823730 (= tp!2309590 e!4629029)))

(declare-fun b!7824713 () Bool)

(declare-fun tp!2310057 () Bool)

(declare-fun tp!2310059 () Bool)

(assert (=> b!7824713 (= e!4629029 (and tp!2310057 tp!2310059))))

(declare-fun b!7824712 () Bool)

(declare-fun tp!2310058 () Bool)

(assert (=> b!7824712 (= e!4629029 tp!2310058)))

(declare-fun b!7824711 () Bool)

(declare-fun tp!2310055 () Bool)

(declare-fun tp!2310056 () Bool)

(assert (=> b!7824711 (= e!4629029 (and tp!2310055 tp!2310056))))

(assert (= (and b!7823730 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7824710))

(assert (= (and b!7823730 ((_ is Concat!29798) (reg!21282 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7824711))

(assert (= (and b!7823730 ((_ is Star!20953) (reg!21282 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7824712))

(assert (= (and b!7823730 ((_ is Union!20953) (reg!21282 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7824713))

(declare-fun b!7824714 () Bool)

(declare-fun e!4629030 () Bool)

(assert (=> b!7824714 (= e!4629030 tp_is_empty!52261)))

(assert (=> b!7823782 (= tp!2309652 e!4629030)))

(declare-fun b!7824717 () Bool)

(declare-fun tp!2310062 () Bool)

(declare-fun tp!2310064 () Bool)

(assert (=> b!7824717 (= e!4629030 (and tp!2310062 tp!2310064))))

(declare-fun b!7824716 () Bool)

(declare-fun tp!2310063 () Bool)

(assert (=> b!7824716 (= e!4629030 tp!2310063)))

(declare-fun b!7824715 () Bool)

(declare-fun tp!2310060 () Bool)

(declare-fun tp!2310061 () Bool)

(assert (=> b!7824715 (= e!4629030 (and tp!2310060 tp!2310061))))

(assert (= (and b!7823782 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42419 (regOne!42419 r1!6261))))) b!7824714))

(assert (= (and b!7823782 ((_ is Concat!29798) (regOne!42419 (regOne!42419 (regOne!42419 r1!6261))))) b!7824715))

(assert (= (and b!7823782 ((_ is Star!20953) (regOne!42419 (regOne!42419 (regOne!42419 r1!6261))))) b!7824716))

(assert (= (and b!7823782 ((_ is Union!20953) (regOne!42419 (regOne!42419 (regOne!42419 r1!6261))))) b!7824717))

(declare-fun b!7824718 () Bool)

(declare-fun e!4629031 () Bool)

(assert (=> b!7824718 (= e!4629031 tp_is_empty!52261)))

(assert (=> b!7823782 (= tp!2309654 e!4629031)))

(declare-fun b!7824721 () Bool)

(declare-fun tp!2310067 () Bool)

(declare-fun tp!2310069 () Bool)

(assert (=> b!7824721 (= e!4629031 (and tp!2310067 tp!2310069))))

(declare-fun b!7824720 () Bool)

(declare-fun tp!2310068 () Bool)

(assert (=> b!7824720 (= e!4629031 tp!2310068)))

(declare-fun b!7824719 () Bool)

(declare-fun tp!2310065 () Bool)

(declare-fun tp!2310066 () Bool)

(assert (=> b!7824719 (= e!4629031 (and tp!2310065 tp!2310066))))

(assert (= (and b!7823782 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42419 (regOne!42419 r1!6261))))) b!7824718))

(assert (= (and b!7823782 ((_ is Concat!29798) (regTwo!42419 (regOne!42419 (regOne!42419 r1!6261))))) b!7824719))

(assert (= (and b!7823782 ((_ is Star!20953) (regTwo!42419 (regOne!42419 (regOne!42419 r1!6261))))) b!7824720))

(assert (= (and b!7823782 ((_ is Union!20953) (regTwo!42419 (regOne!42419 (regOne!42419 r1!6261))))) b!7824721))

(declare-fun b!7824722 () Bool)

(declare-fun e!4629032 () Bool)

(assert (=> b!7824722 (= e!4629032 tp_is_empty!52261)))

(assert (=> b!7823682 (= tp!2309528 e!4629032)))

(declare-fun b!7824725 () Bool)

(declare-fun tp!2310072 () Bool)

(declare-fun tp!2310074 () Bool)

(assert (=> b!7824725 (= e!4629032 (and tp!2310072 tp!2310074))))

(declare-fun b!7824724 () Bool)

(declare-fun tp!2310073 () Bool)

(assert (=> b!7824724 (= e!4629032 tp!2310073)))

(declare-fun b!7824723 () Bool)

(declare-fun tp!2310070 () Bool)

(declare-fun tp!2310071 () Bool)

(assert (=> b!7824723 (= e!4629032 (and tp!2310070 tp!2310071))))

(assert (= (and b!7823682 ((_ is ElementMatch!20953) (regOne!42419 (reg!21282 (regTwo!42419 r2!6199))))) b!7824722))

(assert (= (and b!7823682 ((_ is Concat!29798) (regOne!42419 (reg!21282 (regTwo!42419 r2!6199))))) b!7824723))

(assert (= (and b!7823682 ((_ is Star!20953) (regOne!42419 (reg!21282 (regTwo!42419 r2!6199))))) b!7824724))

(assert (= (and b!7823682 ((_ is Union!20953) (regOne!42419 (reg!21282 (regTwo!42419 r2!6199))))) b!7824725))

(declare-fun b!7824726 () Bool)

(declare-fun e!4629033 () Bool)

(assert (=> b!7824726 (= e!4629033 tp_is_empty!52261)))

(assert (=> b!7823682 (= tp!2309530 e!4629033)))

(declare-fun b!7824729 () Bool)

(declare-fun tp!2310077 () Bool)

(declare-fun tp!2310079 () Bool)

(assert (=> b!7824729 (= e!4629033 (and tp!2310077 tp!2310079))))

(declare-fun b!7824728 () Bool)

(declare-fun tp!2310078 () Bool)

(assert (=> b!7824728 (= e!4629033 tp!2310078)))

(declare-fun b!7824727 () Bool)

(declare-fun tp!2310075 () Bool)

(declare-fun tp!2310076 () Bool)

(assert (=> b!7824727 (= e!4629033 (and tp!2310075 tp!2310076))))

(assert (= (and b!7823682 ((_ is ElementMatch!20953) (regTwo!42419 (reg!21282 (regTwo!42419 r2!6199))))) b!7824726))

(assert (= (and b!7823682 ((_ is Concat!29798) (regTwo!42419 (reg!21282 (regTwo!42419 r2!6199))))) b!7824727))

(assert (= (and b!7823682 ((_ is Star!20953) (regTwo!42419 (reg!21282 (regTwo!42419 r2!6199))))) b!7824728))

(assert (= (and b!7823682 ((_ is Union!20953) (regTwo!42419 (reg!21282 (regTwo!42419 r2!6199))))) b!7824729))

(declare-fun b!7824730 () Bool)

(declare-fun e!4629034 () Bool)

(assert (=> b!7824730 (= e!4629034 tp_is_empty!52261)))

(assert (=> b!7823689 (= tp!2309537 e!4629034)))

(declare-fun b!7824733 () Bool)

(declare-fun tp!2310082 () Bool)

(declare-fun tp!2310084 () Bool)

(assert (=> b!7824733 (= e!4629034 (and tp!2310082 tp!2310084))))

(declare-fun b!7824732 () Bool)

(declare-fun tp!2310083 () Bool)

(assert (=> b!7824732 (= e!4629034 tp!2310083)))

(declare-fun b!7824731 () Bool)

(declare-fun tp!2310080 () Bool)

(declare-fun tp!2310081 () Bool)

(assert (=> b!7824731 (= e!4629034 (and tp!2310080 tp!2310081))))

(assert (= (and b!7823689 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7824730))

(assert (= (and b!7823689 ((_ is Concat!29798) (regOne!42418 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7824731))

(assert (= (and b!7823689 ((_ is Star!20953) (regOne!42418 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7824732))

(assert (= (and b!7823689 ((_ is Union!20953) (regOne!42418 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7824733))

(declare-fun b!7824734 () Bool)

(declare-fun e!4629035 () Bool)

(assert (=> b!7824734 (= e!4629035 tp_is_empty!52261)))

(assert (=> b!7823689 (= tp!2309538 e!4629035)))

(declare-fun b!7824737 () Bool)

(declare-fun tp!2310087 () Bool)

(declare-fun tp!2310089 () Bool)

(assert (=> b!7824737 (= e!4629035 (and tp!2310087 tp!2310089))))

(declare-fun b!7824736 () Bool)

(declare-fun tp!2310088 () Bool)

(assert (=> b!7824736 (= e!4629035 tp!2310088)))

(declare-fun b!7824735 () Bool)

(declare-fun tp!2310085 () Bool)

(declare-fun tp!2310086 () Bool)

(assert (=> b!7824735 (= e!4629035 (and tp!2310085 tp!2310086))))

(assert (= (and b!7823689 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7824734))

(assert (= (and b!7823689 ((_ is Concat!29798) (regTwo!42418 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7824735))

(assert (= (and b!7823689 ((_ is Star!20953) (regTwo!42418 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7824736))

(assert (= (and b!7823689 ((_ is Union!20953) (regTwo!42418 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7824737))

(declare-fun b!7824738 () Bool)

(declare-fun e!4629036 () Bool)

(assert (=> b!7824738 (= e!4629036 tp_is_empty!52261)))

(assert (=> b!7823673 (= tp!2309519 e!4629036)))

(declare-fun b!7824741 () Bool)

(declare-fun tp!2310092 () Bool)

(declare-fun tp!2310094 () Bool)

(assert (=> b!7824741 (= e!4629036 (and tp!2310092 tp!2310094))))

(declare-fun b!7824740 () Bool)

(declare-fun tp!2310093 () Bool)

(assert (=> b!7824740 (= e!4629036 tp!2310093)))

(declare-fun b!7824739 () Bool)

(declare-fun tp!2310090 () Bool)

(declare-fun tp!2310091 () Bool)

(assert (=> b!7824739 (= e!4629036 (and tp!2310090 tp!2310091))))

(assert (= (and b!7823673 ((_ is ElementMatch!20953) (reg!21282 (regOne!42418 (reg!21282 r2!6199))))) b!7824738))

(assert (= (and b!7823673 ((_ is Concat!29798) (reg!21282 (regOne!42418 (reg!21282 r2!6199))))) b!7824739))

(assert (= (and b!7823673 ((_ is Star!20953) (reg!21282 (regOne!42418 (reg!21282 r2!6199))))) b!7824740))

(assert (= (and b!7823673 ((_ is Union!20953) (reg!21282 (regOne!42418 (reg!21282 r2!6199))))) b!7824741))

(declare-fun b!7824742 () Bool)

(declare-fun e!4629037 () Bool)

(assert (=> b!7824742 (= e!4629037 tp_is_empty!52261)))

(assert (=> b!7823698 (= tp!2309550 e!4629037)))

(declare-fun b!7824745 () Bool)

(declare-fun tp!2310097 () Bool)

(declare-fun tp!2310099 () Bool)

(assert (=> b!7824745 (= e!4629037 (and tp!2310097 tp!2310099))))

(declare-fun b!7824744 () Bool)

(declare-fun tp!2310098 () Bool)

(assert (=> b!7824744 (= e!4629037 tp!2310098)))

(declare-fun b!7824743 () Bool)

(declare-fun tp!2310095 () Bool)

(declare-fun tp!2310096 () Bool)

(assert (=> b!7824743 (= e!4629037 (and tp!2310095 tp!2310096))))

(assert (= (and b!7823698 ((_ is ElementMatch!20953) (reg!21282 (regOne!42419 (reg!21282 r2!6199))))) b!7824742))

(assert (= (and b!7823698 ((_ is Concat!29798) (reg!21282 (regOne!42419 (reg!21282 r2!6199))))) b!7824743))

(assert (= (and b!7823698 ((_ is Star!20953) (reg!21282 (regOne!42419 (reg!21282 r2!6199))))) b!7824744))

(assert (= (and b!7823698 ((_ is Union!20953) (reg!21282 (regOne!42419 (reg!21282 r2!6199))))) b!7824745))

(declare-fun b!7824746 () Bool)

(declare-fun e!4629038 () Bool)

(assert (=> b!7824746 (= e!4629038 tp_is_empty!52261)))

(assert (=> b!7823707 (= tp!2309559 e!4629038)))

(declare-fun b!7824749 () Bool)

(declare-fun tp!2310102 () Bool)

(declare-fun tp!2310104 () Bool)

(assert (=> b!7824749 (= e!4629038 (and tp!2310102 tp!2310104))))

(declare-fun b!7824748 () Bool)

(declare-fun tp!2310103 () Bool)

(assert (=> b!7824748 (= e!4629038 tp!2310103)))

(declare-fun b!7824747 () Bool)

(declare-fun tp!2310100 () Bool)

(declare-fun tp!2310101 () Bool)

(assert (=> b!7824747 (= e!4629038 (and tp!2310100 tp!2310101))))

(assert (= (and b!7823707 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42418 (regOne!42418 r1!6261))))) b!7824746))

(assert (= (and b!7823707 ((_ is Concat!29798) (regOne!42419 (regOne!42418 (regOne!42418 r1!6261))))) b!7824747))

(assert (= (and b!7823707 ((_ is Star!20953) (regOne!42419 (regOne!42418 (regOne!42418 r1!6261))))) b!7824748))

(assert (= (and b!7823707 ((_ is Union!20953) (regOne!42419 (regOne!42418 (regOne!42418 r1!6261))))) b!7824749))

(declare-fun b!7824750 () Bool)

(declare-fun e!4629039 () Bool)

(assert (=> b!7824750 (= e!4629039 tp_is_empty!52261)))

(assert (=> b!7823707 (= tp!2309561 e!4629039)))

(declare-fun b!7824753 () Bool)

(declare-fun tp!2310107 () Bool)

(declare-fun tp!2310109 () Bool)

(assert (=> b!7824753 (= e!4629039 (and tp!2310107 tp!2310109))))

(declare-fun b!7824752 () Bool)

(declare-fun tp!2310108 () Bool)

(assert (=> b!7824752 (= e!4629039 tp!2310108)))

(declare-fun b!7824751 () Bool)

(declare-fun tp!2310105 () Bool)

(declare-fun tp!2310106 () Bool)

(assert (=> b!7824751 (= e!4629039 (and tp!2310105 tp!2310106))))

(assert (= (and b!7823707 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42418 (regOne!42418 r1!6261))))) b!7824750))

(assert (= (and b!7823707 ((_ is Concat!29798) (regTwo!42419 (regOne!42418 (regOne!42418 r1!6261))))) b!7824751))

(assert (= (and b!7823707 ((_ is Star!20953) (regTwo!42419 (regOne!42418 (regOne!42418 r1!6261))))) b!7824752))

(assert (= (and b!7823707 ((_ is Union!20953) (regTwo!42419 (regOne!42418 (regOne!42418 r1!6261))))) b!7824753))

(declare-fun b!7824754 () Bool)

(declare-fun e!4629040 () Bool)

(assert (=> b!7824754 (= e!4629040 tp_is_empty!52261)))

(assert (=> b!7823802 (= tp!2309677 e!4629040)))

(declare-fun b!7824757 () Bool)

(declare-fun tp!2310112 () Bool)

(declare-fun tp!2310114 () Bool)

(assert (=> b!7824757 (= e!4629040 (and tp!2310112 tp!2310114))))

(declare-fun b!7824756 () Bool)

(declare-fun tp!2310113 () Bool)

(assert (=> b!7824756 (= e!4629040 tp!2310113)))

(declare-fun b!7824755 () Bool)

(declare-fun tp!2310110 () Bool)

(declare-fun tp!2310111 () Bool)

(assert (=> b!7824755 (= e!4629040 (and tp!2310110 tp!2310111))))

(assert (= (and b!7823802 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42419 (regOne!42419 r2!6199))))) b!7824754))

(assert (= (and b!7823802 ((_ is Concat!29798) (regOne!42419 (regOne!42419 (regOne!42419 r2!6199))))) b!7824755))

(assert (= (and b!7823802 ((_ is Star!20953) (regOne!42419 (regOne!42419 (regOne!42419 r2!6199))))) b!7824756))

(assert (= (and b!7823802 ((_ is Union!20953) (regOne!42419 (regOne!42419 (regOne!42419 r2!6199))))) b!7824757))

(declare-fun b!7824758 () Bool)

(declare-fun e!4629041 () Bool)

(assert (=> b!7824758 (= e!4629041 tp_is_empty!52261)))

(assert (=> b!7823802 (= tp!2309679 e!4629041)))

(declare-fun b!7824761 () Bool)

(declare-fun tp!2310117 () Bool)

(declare-fun tp!2310119 () Bool)

(assert (=> b!7824761 (= e!4629041 (and tp!2310117 tp!2310119))))

(declare-fun b!7824760 () Bool)

(declare-fun tp!2310118 () Bool)

(assert (=> b!7824760 (= e!4629041 tp!2310118)))

(declare-fun b!7824759 () Bool)

(declare-fun tp!2310115 () Bool)

(declare-fun tp!2310116 () Bool)

(assert (=> b!7824759 (= e!4629041 (and tp!2310115 tp!2310116))))

(assert (= (and b!7823802 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42419 (regOne!42419 r2!6199))))) b!7824758))

(assert (= (and b!7823802 ((_ is Concat!29798) (regTwo!42419 (regOne!42419 (regOne!42419 r2!6199))))) b!7824759))

(assert (= (and b!7823802 ((_ is Star!20953) (regTwo!42419 (regOne!42419 (regOne!42419 r2!6199))))) b!7824760))

(assert (= (and b!7823802 ((_ is Union!20953) (regTwo!42419 (regOne!42419 (regOne!42419 r2!6199))))) b!7824761))

(declare-fun b!7824762 () Bool)

(declare-fun e!4629042 () Bool)

(assert (=> b!7824762 (= e!4629042 tp_is_empty!52261)))

(assert (=> b!7823648 (= tp!2309488 e!4629042)))

(declare-fun b!7824765 () Bool)

(declare-fun tp!2310122 () Bool)

(declare-fun tp!2310124 () Bool)

(assert (=> b!7824765 (= e!4629042 (and tp!2310122 tp!2310124))))

(declare-fun b!7824764 () Bool)

(declare-fun tp!2310123 () Bool)

(assert (=> b!7824764 (= e!4629042 tp!2310123)))

(declare-fun b!7824763 () Bool)

(declare-fun tp!2310120 () Bool)

(declare-fun tp!2310121 () Bool)

(assert (=> b!7824763 (= e!4629042 (and tp!2310120 tp!2310121))))

(assert (= (and b!7823648 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7824762))

(assert (= (and b!7823648 ((_ is Concat!29798) (reg!21282 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7824763))

(assert (= (and b!7823648 ((_ is Star!20953) (reg!21282 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7824764))

(assert (= (and b!7823648 ((_ is Union!20953) (reg!21282 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7824765))

(declare-fun b!7824766 () Bool)

(declare-fun e!4629043 () Bool)

(assert (=> b!7824766 (= e!4629043 tp_is_empty!52261)))

(assert (=> b!7823657 (= tp!2309497 e!4629043)))

(declare-fun b!7824769 () Bool)

(declare-fun tp!2310127 () Bool)

(declare-fun tp!2310129 () Bool)

(assert (=> b!7824769 (= e!4629043 (and tp!2310127 tp!2310129))))

(declare-fun b!7824768 () Bool)

(declare-fun tp!2310128 () Bool)

(assert (=> b!7824768 (= e!4629043 tp!2310128)))

(declare-fun b!7824767 () Bool)

(declare-fun tp!2310125 () Bool)

(declare-fun tp!2310126 () Bool)

(assert (=> b!7824767 (= e!4629043 (and tp!2310125 tp!2310126))))

(assert (= (and b!7823657 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42418 (regTwo!42419 r1!6261))))) b!7824766))

(assert (= (and b!7823657 ((_ is Concat!29798) (regOne!42419 (regOne!42418 (regTwo!42419 r1!6261))))) b!7824767))

(assert (= (and b!7823657 ((_ is Star!20953) (regOne!42419 (regOne!42418 (regTwo!42419 r1!6261))))) b!7824768))

(assert (= (and b!7823657 ((_ is Union!20953) (regOne!42419 (regOne!42418 (regTwo!42419 r1!6261))))) b!7824769))

(declare-fun b!7824770 () Bool)

(declare-fun e!4629044 () Bool)

(assert (=> b!7824770 (= e!4629044 tp_is_empty!52261)))

(assert (=> b!7823657 (= tp!2309499 e!4629044)))

(declare-fun b!7824773 () Bool)

(declare-fun tp!2310132 () Bool)

(declare-fun tp!2310134 () Bool)

(assert (=> b!7824773 (= e!4629044 (and tp!2310132 tp!2310134))))

(declare-fun b!7824772 () Bool)

(declare-fun tp!2310133 () Bool)

(assert (=> b!7824772 (= e!4629044 tp!2310133)))

(declare-fun b!7824771 () Bool)

(declare-fun tp!2310130 () Bool)

(declare-fun tp!2310131 () Bool)

(assert (=> b!7824771 (= e!4629044 (and tp!2310130 tp!2310131))))

(assert (= (and b!7823657 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42418 (regTwo!42419 r1!6261))))) b!7824770))

(assert (= (and b!7823657 ((_ is Concat!29798) (regTwo!42419 (regOne!42418 (regTwo!42419 r1!6261))))) b!7824771))

(assert (= (and b!7823657 ((_ is Star!20953) (regTwo!42419 (regOne!42418 (regTwo!42419 r1!6261))))) b!7824772))

(assert (= (and b!7823657 ((_ is Union!20953) (regTwo!42419 (regOne!42418 (regTwo!42419 r1!6261))))) b!7824773))

(declare-fun b!7824774 () Bool)

(declare-fun e!4629045 () Bool)

(assert (=> b!7824774 (= e!4629045 tp_is_empty!52261)))

(assert (=> b!7823750 (= tp!2309615 e!4629045)))

(declare-fun b!7824777 () Bool)

(declare-fun tp!2310137 () Bool)

(declare-fun tp!2310139 () Bool)

(assert (=> b!7824777 (= e!4629045 (and tp!2310137 tp!2310139))))

(declare-fun b!7824776 () Bool)

(declare-fun tp!2310138 () Bool)

(assert (=> b!7824776 (= e!4629045 tp!2310138)))

(declare-fun b!7824775 () Bool)

(declare-fun tp!2310135 () Bool)

(declare-fun tp!2310136 () Bool)

(assert (=> b!7824775 (= e!4629045 (and tp!2310135 tp!2310136))))

(assert (= (and b!7823750 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7824774))

(assert (= (and b!7823750 ((_ is Concat!29798) (reg!21282 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7824775))

(assert (= (and b!7823750 ((_ is Star!20953) (reg!21282 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7824776))

(assert (= (and b!7823750 ((_ is Union!20953) (reg!21282 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7824777))

(declare-fun b!7824778 () Bool)

(declare-fun e!4629046 () Bool)

(assert (=> b!7824778 (= e!4629046 tp_is_empty!52261)))

(assert (=> b!7823741 (= tp!2309602 e!4629046)))

(declare-fun b!7824781 () Bool)

(declare-fun tp!2310142 () Bool)

(declare-fun tp!2310144 () Bool)

(assert (=> b!7824781 (= e!4629046 (and tp!2310142 tp!2310144))))

(declare-fun b!7824780 () Bool)

(declare-fun tp!2310143 () Bool)

(assert (=> b!7824780 (= e!4629046 tp!2310143)))

(declare-fun b!7824779 () Bool)

(declare-fun tp!2310140 () Bool)

(declare-fun tp!2310141 () Bool)

(assert (=> b!7824779 (= e!4629046 (and tp!2310140 tp!2310141))))

(assert (= (and b!7823741 ((_ is ElementMatch!20953) (regOne!42418 (reg!21282 (regTwo!42418 r2!6199))))) b!7824778))

(assert (= (and b!7823741 ((_ is Concat!29798) (regOne!42418 (reg!21282 (regTwo!42418 r2!6199))))) b!7824779))

(assert (= (and b!7823741 ((_ is Star!20953) (regOne!42418 (reg!21282 (regTwo!42418 r2!6199))))) b!7824780))

(assert (= (and b!7823741 ((_ is Union!20953) (regOne!42418 (reg!21282 (regTwo!42418 r2!6199))))) b!7824781))

(declare-fun b!7824782 () Bool)

(declare-fun e!4629047 () Bool)

(assert (=> b!7824782 (= e!4629047 tp_is_empty!52261)))

(assert (=> b!7823741 (= tp!2309603 e!4629047)))

(declare-fun b!7824785 () Bool)

(declare-fun tp!2310147 () Bool)

(declare-fun tp!2310149 () Bool)

(assert (=> b!7824785 (= e!4629047 (and tp!2310147 tp!2310149))))

(declare-fun b!7824784 () Bool)

(declare-fun tp!2310148 () Bool)

(assert (=> b!7824784 (= e!4629047 tp!2310148)))

(declare-fun b!7824783 () Bool)

(declare-fun tp!2310145 () Bool)

(declare-fun tp!2310146 () Bool)

(assert (=> b!7824783 (= e!4629047 (and tp!2310145 tp!2310146))))

(assert (= (and b!7823741 ((_ is ElementMatch!20953) (regTwo!42418 (reg!21282 (regTwo!42418 r2!6199))))) b!7824782))

(assert (= (and b!7823741 ((_ is Concat!29798) (regTwo!42418 (reg!21282 (regTwo!42418 r2!6199))))) b!7824783))

(assert (= (and b!7823741 ((_ is Star!20953) (regTwo!42418 (reg!21282 (regTwo!42418 r2!6199))))) b!7824784))

(assert (= (and b!7823741 ((_ is Union!20953) (regTwo!42418 (reg!21282 (regTwo!42418 r2!6199))))) b!7824785))

(declare-fun b!7824786 () Bool)

(declare-fun e!4629048 () Bool)

(assert (=> b!7824786 (= e!4629048 tp_is_empty!52261)))

(assert (=> b!7823639 (= tp!2309475 e!4629048)))

(declare-fun b!7824789 () Bool)

(declare-fun tp!2310152 () Bool)

(declare-fun tp!2310154 () Bool)

(assert (=> b!7824789 (= e!4629048 (and tp!2310152 tp!2310154))))

(declare-fun b!7824788 () Bool)

(declare-fun tp!2310153 () Bool)

(assert (=> b!7824788 (= e!4629048 tp!2310153)))

(declare-fun b!7824787 () Bool)

(declare-fun tp!2310150 () Bool)

(declare-fun tp!2310151 () Bool)

(assert (=> b!7824787 (= e!4629048 (and tp!2310150 tp!2310151))))

(assert (= (and b!7823639 ((_ is ElementMatch!20953) (regOne!42418 (reg!21282 (reg!21282 r1!6261))))) b!7824786))

(assert (= (and b!7823639 ((_ is Concat!29798) (regOne!42418 (reg!21282 (reg!21282 r1!6261))))) b!7824787))

(assert (= (and b!7823639 ((_ is Star!20953) (regOne!42418 (reg!21282 (reg!21282 r1!6261))))) b!7824788))

(assert (= (and b!7823639 ((_ is Union!20953) (regOne!42418 (reg!21282 (reg!21282 r1!6261))))) b!7824789))

(declare-fun b!7824790 () Bool)

(declare-fun e!4629049 () Bool)

(assert (=> b!7824790 (= e!4629049 tp_is_empty!52261)))

(assert (=> b!7823639 (= tp!2309476 e!4629049)))

(declare-fun b!7824793 () Bool)

(declare-fun tp!2310157 () Bool)

(declare-fun tp!2310159 () Bool)

(assert (=> b!7824793 (= e!4629049 (and tp!2310157 tp!2310159))))

(declare-fun b!7824792 () Bool)

(declare-fun tp!2310158 () Bool)

(assert (=> b!7824792 (= e!4629049 tp!2310158)))

(declare-fun b!7824791 () Bool)

(declare-fun tp!2310155 () Bool)

(declare-fun tp!2310156 () Bool)

(assert (=> b!7824791 (= e!4629049 (and tp!2310155 tp!2310156))))

(assert (= (and b!7823639 ((_ is ElementMatch!20953) (regTwo!42418 (reg!21282 (reg!21282 r1!6261))))) b!7824790))

(assert (= (and b!7823639 ((_ is Concat!29798) (regTwo!42418 (reg!21282 (reg!21282 r1!6261))))) b!7824791))

(assert (= (and b!7823639 ((_ is Star!20953) (regTwo!42418 (reg!21282 (reg!21282 r1!6261))))) b!7824792))

(assert (= (and b!7823639 ((_ is Union!20953) (regTwo!42418 (reg!21282 (reg!21282 r1!6261))))) b!7824793))

(declare-fun b!7824794 () Bool)

(declare-fun e!4629050 () Bool)

(declare-fun tp!2310160 () Bool)

(assert (=> b!7824794 (= e!4629050 (and tp_is_empty!52261 tp!2310160))))

(assert (=> b!7823752 (= tp!2309617 e!4629050)))

(assert (= (and b!7823752 ((_ is Cons!73666) (t!388525 (t!388525 (t!388525 s!14274))))) b!7824794))

(declare-fun b!7824795 () Bool)

(declare-fun e!4629051 () Bool)

(assert (=> b!7824795 (= e!4629051 tp_is_empty!52261)))

(assert (=> b!7823793 (= tp!2309668 e!4629051)))

(declare-fun b!7824798 () Bool)

(declare-fun tp!2310163 () Bool)

(declare-fun tp!2310165 () Bool)

(assert (=> b!7824798 (= e!4629051 (and tp!2310163 tp!2310165))))

(declare-fun b!7824797 () Bool)

(declare-fun tp!2310164 () Bool)

(assert (=> b!7824797 (= e!4629051 tp!2310164)))

(declare-fun b!7824796 () Bool)

(declare-fun tp!2310161 () Bool)

(declare-fun tp!2310162 () Bool)

(assert (=> b!7824796 (= e!4629051 (and tp!2310161 tp!2310162))))

(assert (= (and b!7823793 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42418 (reg!21282 r1!6261))))) b!7824795))

(assert (= (and b!7823793 ((_ is Concat!29798) (reg!21282 (regTwo!42418 (reg!21282 r1!6261))))) b!7824796))

(assert (= (and b!7823793 ((_ is Star!20953) (reg!21282 (regTwo!42418 (reg!21282 r1!6261))))) b!7824797))

(assert (= (and b!7823793 ((_ is Union!20953) (reg!21282 (regTwo!42418 (reg!21282 r1!6261))))) b!7824798))

(declare-fun b!7824799 () Bool)

(declare-fun e!4629052 () Bool)

(assert (=> b!7824799 (= e!4629052 tp_is_empty!52261)))

(assert (=> b!7823784 (= tp!2309655 e!4629052)))

(declare-fun b!7824802 () Bool)

(declare-fun tp!2310168 () Bool)

(declare-fun tp!2310170 () Bool)

(assert (=> b!7824802 (= e!4629052 (and tp!2310168 tp!2310170))))

(declare-fun b!7824801 () Bool)

(declare-fun tp!2310169 () Bool)

(assert (=> b!7824801 (= e!4629052 tp!2310169)))

(declare-fun b!7824800 () Bool)

(declare-fun tp!2310166 () Bool)

(declare-fun tp!2310167 () Bool)

(assert (=> b!7824800 (= e!4629052 (and tp!2310166 tp!2310167))))

(assert (= (and b!7823784 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42419 (regOne!42419 r1!6261))))) b!7824799))

(assert (= (and b!7823784 ((_ is Concat!29798) (regOne!42418 (regTwo!42419 (regOne!42419 r1!6261))))) b!7824800))

(assert (= (and b!7823784 ((_ is Star!20953) (regOne!42418 (regTwo!42419 (regOne!42419 r1!6261))))) b!7824801))

(assert (= (and b!7823784 ((_ is Union!20953) (regOne!42418 (regTwo!42419 (regOne!42419 r1!6261))))) b!7824802))

(declare-fun b!7824803 () Bool)

(declare-fun e!4629053 () Bool)

(assert (=> b!7824803 (= e!4629053 tp_is_empty!52261)))

(assert (=> b!7823784 (= tp!2309656 e!4629053)))

(declare-fun b!7824806 () Bool)

(declare-fun tp!2310173 () Bool)

(declare-fun tp!2310175 () Bool)

(assert (=> b!7824806 (= e!4629053 (and tp!2310173 tp!2310175))))

(declare-fun b!7824805 () Bool)

(declare-fun tp!2310174 () Bool)

(assert (=> b!7824805 (= e!4629053 tp!2310174)))

(declare-fun b!7824804 () Bool)

(declare-fun tp!2310171 () Bool)

(declare-fun tp!2310172 () Bool)

(assert (=> b!7824804 (= e!4629053 (and tp!2310171 tp!2310172))))

(assert (= (and b!7823784 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42419 (regOne!42419 r1!6261))))) b!7824803))

(assert (= (and b!7823784 ((_ is Concat!29798) (regTwo!42418 (regTwo!42419 (regOne!42419 r1!6261))))) b!7824804))

(assert (= (and b!7823784 ((_ is Star!20953) (regTwo!42418 (regTwo!42419 (regOne!42419 r1!6261))))) b!7824805))

(assert (= (and b!7823784 ((_ is Union!20953) (regTwo!42418 (regTwo!42419 (regOne!42419 r1!6261))))) b!7824806))

(declare-fun b!7824807 () Bool)

(declare-fun e!4629054 () Bool)

(assert (=> b!7824807 (= e!4629054 tp_is_empty!52261)))

(assert (=> b!7823777 (= tp!2309646 e!4629054)))

(declare-fun b!7824810 () Bool)

(declare-fun tp!2310178 () Bool)

(declare-fun tp!2310180 () Bool)

(assert (=> b!7824810 (= e!4629054 (and tp!2310178 tp!2310180))))

(declare-fun b!7824809 () Bool)

(declare-fun tp!2310179 () Bool)

(assert (=> b!7824809 (= e!4629054 tp!2310179)))

(declare-fun b!7824808 () Bool)

(declare-fun tp!2310176 () Bool)

(declare-fun tp!2310177 () Bool)

(assert (=> b!7824808 (= e!4629054 (and tp!2310176 tp!2310177))))

(assert (= (and b!7823777 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42418 (regOne!42419 r2!6199))))) b!7824807))

(assert (= (and b!7823777 ((_ is Concat!29798) (regOne!42419 (regTwo!42418 (regOne!42419 r2!6199))))) b!7824808))

(assert (= (and b!7823777 ((_ is Star!20953) (regOne!42419 (regTwo!42418 (regOne!42419 r2!6199))))) b!7824809))

(assert (= (and b!7823777 ((_ is Union!20953) (regOne!42419 (regTwo!42418 (regOne!42419 r2!6199))))) b!7824810))

(declare-fun b!7824811 () Bool)

(declare-fun e!4629055 () Bool)

(assert (=> b!7824811 (= e!4629055 tp_is_empty!52261)))

(assert (=> b!7823777 (= tp!2309648 e!4629055)))

(declare-fun b!7824814 () Bool)

(declare-fun tp!2310183 () Bool)

(declare-fun tp!2310185 () Bool)

(assert (=> b!7824814 (= e!4629055 (and tp!2310183 tp!2310185))))

(declare-fun b!7824813 () Bool)

(declare-fun tp!2310184 () Bool)

(assert (=> b!7824813 (= e!4629055 tp!2310184)))

(declare-fun b!7824812 () Bool)

(declare-fun tp!2310181 () Bool)

(declare-fun tp!2310182 () Bool)

(assert (=> b!7824812 (= e!4629055 (and tp!2310181 tp!2310182))))

(assert (= (and b!7823777 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42418 (regOne!42419 r2!6199))))) b!7824811))

(assert (= (and b!7823777 ((_ is Concat!29798) (regTwo!42419 (regTwo!42418 (regOne!42419 r2!6199))))) b!7824812))

(assert (= (and b!7823777 ((_ is Star!20953) (regTwo!42419 (regTwo!42418 (regOne!42419 r2!6199))))) b!7824813))

(assert (= (and b!7823777 ((_ is Union!20953) (regTwo!42419 (regTwo!42418 (regOne!42419 r2!6199))))) b!7824814))

(declare-fun b!7824815 () Bool)

(declare-fun e!4629056 () Bool)

(assert (=> b!7824815 (= e!4629056 tp_is_empty!52261)))

(assert (=> b!7823768 (= tp!2309637 e!4629056)))

(declare-fun b!7824818 () Bool)

(declare-fun tp!2310188 () Bool)

(declare-fun tp!2310190 () Bool)

(assert (=> b!7824818 (= e!4629056 (and tp!2310188 tp!2310190))))

(declare-fun b!7824817 () Bool)

(declare-fun tp!2310189 () Bool)

(assert (=> b!7824817 (= e!4629056 tp!2310189)))

(declare-fun b!7824816 () Bool)

(declare-fun tp!2310186 () Bool)

(declare-fun tp!2310187 () Bool)

(assert (=> b!7824816 (= e!4629056 (and tp!2310186 tp!2310187))))

(assert (= (and b!7823768 ((_ is ElementMatch!20953) (reg!21282 (reg!21282 (regOne!42419 r2!6199))))) b!7824815))

(assert (= (and b!7823768 ((_ is Concat!29798) (reg!21282 (reg!21282 (regOne!42419 r2!6199))))) b!7824816))

(assert (= (and b!7823768 ((_ is Star!20953) (reg!21282 (reg!21282 (regOne!42419 r2!6199))))) b!7824817))

(assert (= (and b!7823768 ((_ is Union!20953) (reg!21282 (reg!21282 (regOne!42419 r2!6199))))) b!7824818))

(declare-fun b!7824819 () Bool)

(declare-fun e!4629057 () Bool)

(assert (=> b!7824819 (= e!4629057 tp_is_empty!52261)))

(assert (=> b!7823668 (= tp!2309513 e!4629057)))

(declare-fun b!7824822 () Bool)

(declare-fun tp!2310193 () Bool)

(declare-fun tp!2310195 () Bool)

(assert (=> b!7824822 (= e!4629057 (and tp!2310193 tp!2310195))))

(declare-fun b!7824821 () Bool)

(declare-fun tp!2310194 () Bool)

(assert (=> b!7824821 (= e!4629057 tp!2310194)))

(declare-fun b!7824820 () Bool)

(declare-fun tp!2310191 () Bool)

(declare-fun tp!2310192 () Bool)

(assert (=> b!7824820 (= e!4629057 (and tp!2310191 tp!2310192))))

(assert (= (and b!7823668 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42419 (regOne!42418 r2!6199))))) b!7824819))

(assert (= (and b!7823668 ((_ is Concat!29798) (reg!21282 (regTwo!42419 (regOne!42418 r2!6199))))) b!7824820))

(assert (= (and b!7823668 ((_ is Star!20953) (reg!21282 (regTwo!42419 (regOne!42418 r2!6199))))) b!7824821))

(assert (= (and b!7823668 ((_ is Union!20953) (reg!21282 (regTwo!42419 (regOne!42418 r2!6199))))) b!7824822))

(declare-fun b!7824823 () Bool)

(declare-fun e!4629058 () Bool)

(assert (=> b!7824823 (= e!4629058 tp_is_empty!52261)))

(assert (=> b!7823616 (= tp!2309448 e!4629058)))

(declare-fun b!7824826 () Bool)

(declare-fun tp!2310198 () Bool)

(declare-fun tp!2310200 () Bool)

(assert (=> b!7824826 (= e!4629058 (and tp!2310198 tp!2310200))))

(declare-fun b!7824825 () Bool)

(declare-fun tp!2310199 () Bool)

(assert (=> b!7824825 (= e!4629058 tp!2310199)))

(declare-fun b!7824824 () Bool)

(declare-fun tp!2310196 () Bool)

(declare-fun tp!2310197 () Bool)

(assert (=> b!7824824 (= e!4629058 (and tp!2310196 tp!2310197))))

(assert (= (and b!7823616 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42419 (reg!21282 r1!6261))))) b!7824823))

(assert (= (and b!7823616 ((_ is Concat!29798) (reg!21282 (regTwo!42419 (reg!21282 r1!6261))))) b!7824824))

(assert (= (and b!7823616 ((_ is Star!20953) (reg!21282 (regTwo!42419 (reg!21282 r1!6261))))) b!7824825))

(assert (= (and b!7823616 ((_ is Union!20953) (reg!21282 (regTwo!42419 (reg!21282 r1!6261))))) b!7824826))

(declare-fun b!7824827 () Bool)

(declare-fun e!4629059 () Bool)

(assert (=> b!7824827 (= e!4629059 tp_is_empty!52261)))

(assert (=> b!7823718 (= tp!2309575 e!4629059)))

(declare-fun b!7824830 () Bool)

(declare-fun tp!2310203 () Bool)

(declare-fun tp!2310205 () Bool)

(assert (=> b!7824830 (= e!4629059 (and tp!2310203 tp!2310205))))

(declare-fun b!7824829 () Bool)

(declare-fun tp!2310204 () Bool)

(assert (=> b!7824829 (= e!4629059 tp!2310204)))

(declare-fun b!7824828 () Bool)

(declare-fun tp!2310201 () Bool)

(declare-fun tp!2310202 () Bool)

(assert (=> b!7824828 (= e!4629059 (and tp!2310201 tp!2310202))))

(assert (= (and b!7823718 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7824827))

(assert (= (and b!7823718 ((_ is Concat!29798) (reg!21282 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7824828))

(assert (= (and b!7823718 ((_ is Star!20953) (reg!21282 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7824829))

(assert (= (and b!7823718 ((_ is Union!20953) (reg!21282 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7824830))

(declare-fun b!7824831 () Bool)

(declare-fun e!4629060 () Bool)

(assert (=> b!7824831 (= e!4629060 tp_is_empty!52261)))

(assert (=> b!7823727 (= tp!2309584 e!4629060)))

(declare-fun b!7824834 () Bool)

(declare-fun tp!2310208 () Bool)

(declare-fun tp!2310210 () Bool)

(assert (=> b!7824834 (= e!4629060 (and tp!2310208 tp!2310210))))

(declare-fun b!7824833 () Bool)

(declare-fun tp!2310209 () Bool)

(assert (=> b!7824833 (= e!4629060 tp!2310209)))

(declare-fun b!7824832 () Bool)

(declare-fun tp!2310206 () Bool)

(declare-fun tp!2310207 () Bool)

(assert (=> b!7824832 (= e!4629060 (and tp!2310206 tp!2310207))))

(assert (= (and b!7823727 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42419 (regTwo!42418 r2!6199))))) b!7824831))

(assert (= (and b!7823727 ((_ is Concat!29798) (regOne!42419 (regOne!42419 (regTwo!42418 r2!6199))))) b!7824832))

(assert (= (and b!7823727 ((_ is Star!20953) (regOne!42419 (regOne!42419 (regTwo!42418 r2!6199))))) b!7824833))

(assert (= (and b!7823727 ((_ is Union!20953) (regOne!42419 (regOne!42419 (regTwo!42418 r2!6199))))) b!7824834))

(declare-fun b!7824835 () Bool)

(declare-fun e!4629061 () Bool)

(assert (=> b!7824835 (= e!4629061 tp_is_empty!52261)))

(assert (=> b!7823727 (= tp!2309586 e!4629061)))

(declare-fun b!7824838 () Bool)

(declare-fun tp!2310213 () Bool)

(declare-fun tp!2310215 () Bool)

(assert (=> b!7824838 (= e!4629061 (and tp!2310213 tp!2310215))))

(declare-fun b!7824837 () Bool)

(declare-fun tp!2310214 () Bool)

(assert (=> b!7824837 (= e!4629061 tp!2310214)))

(declare-fun b!7824836 () Bool)

(declare-fun tp!2310211 () Bool)

(declare-fun tp!2310212 () Bool)

(assert (=> b!7824836 (= e!4629061 (and tp!2310211 tp!2310212))))

(assert (= (and b!7823727 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42419 (regTwo!42418 r2!6199))))) b!7824835))

(assert (= (and b!7823727 ((_ is Concat!29798) (regTwo!42419 (regOne!42419 (regTwo!42418 r2!6199))))) b!7824836))

(assert (= (and b!7823727 ((_ is Star!20953) (regTwo!42419 (regOne!42419 (regTwo!42418 r2!6199))))) b!7824837))

(assert (= (and b!7823727 ((_ is Union!20953) (regTwo!42419 (regOne!42419 (regTwo!42418 r2!6199))))) b!7824838))

(declare-fun b!7824839 () Bool)

(declare-fun e!4629062 () Bool)

(assert (=> b!7824839 (= e!4629062 tp_is_empty!52261)))

(assert (=> b!7823625 (= tp!2309457 e!4629062)))

(declare-fun b!7824842 () Bool)

(declare-fun tp!2310218 () Bool)

(declare-fun tp!2310220 () Bool)

(assert (=> b!7824842 (= e!4629062 (and tp!2310218 tp!2310220))))

(declare-fun b!7824841 () Bool)

(declare-fun tp!2310219 () Bool)

(assert (=> b!7824841 (= e!4629062 tp!2310219)))

(declare-fun b!7824840 () Bool)

(declare-fun tp!2310216 () Bool)

(declare-fun tp!2310217 () Bool)

(assert (=> b!7824840 (= e!4629062 (and tp!2310216 tp!2310217))))

(assert (= (and b!7823625 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42418 (regOne!42418 r2!6199))))) b!7824839))

(assert (= (and b!7823625 ((_ is Concat!29798) (regOne!42419 (regOne!42418 (regOne!42418 r2!6199))))) b!7824840))

(assert (= (and b!7823625 ((_ is Star!20953) (regOne!42419 (regOne!42418 (regOne!42418 r2!6199))))) b!7824841))

(assert (= (and b!7823625 ((_ is Union!20953) (regOne!42419 (regOne!42418 (regOne!42418 r2!6199))))) b!7824842))

(declare-fun b!7824843 () Bool)

(declare-fun e!4629063 () Bool)

(assert (=> b!7824843 (= e!4629063 tp_is_empty!52261)))

(assert (=> b!7823625 (= tp!2309459 e!4629063)))

(declare-fun b!7824846 () Bool)

(declare-fun tp!2310223 () Bool)

(declare-fun tp!2310225 () Bool)

(assert (=> b!7824846 (= e!4629063 (and tp!2310223 tp!2310225))))

(declare-fun b!7824845 () Bool)

(declare-fun tp!2310224 () Bool)

(assert (=> b!7824845 (= e!4629063 tp!2310224)))

(declare-fun b!7824844 () Bool)

(declare-fun tp!2310221 () Bool)

(declare-fun tp!2310222 () Bool)

(assert (=> b!7824844 (= e!4629063 (and tp!2310221 tp!2310222))))

(assert (= (and b!7823625 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42418 (regOne!42418 r2!6199))))) b!7824843))

(assert (= (and b!7823625 ((_ is Concat!29798) (regTwo!42419 (regOne!42418 (regOne!42418 r2!6199))))) b!7824844))

(assert (= (and b!7823625 ((_ is Star!20953) (regTwo!42419 (regOne!42418 (regOne!42418 r2!6199))))) b!7824845))

(assert (= (and b!7823625 ((_ is Union!20953) (regTwo!42419 (regOne!42418 (regOne!42418 r2!6199))))) b!7824846))

(declare-fun b!7824847 () Bool)

(declare-fun e!4629064 () Bool)

(assert (=> b!7824847 (= e!4629064 tp_is_empty!52261)))

(assert (=> b!7823709 (= tp!2309562 e!4629064)))

(declare-fun b!7824850 () Bool)

(declare-fun tp!2310228 () Bool)

(declare-fun tp!2310230 () Bool)

(assert (=> b!7824850 (= e!4629064 (and tp!2310228 tp!2310230))))

(declare-fun b!7824849 () Bool)

(declare-fun tp!2310229 () Bool)

(assert (=> b!7824849 (= e!4629064 tp!2310229)))

(declare-fun b!7824848 () Bool)

(declare-fun tp!2310226 () Bool)

(declare-fun tp!2310227 () Bool)

(assert (=> b!7824848 (= e!4629064 (and tp!2310226 tp!2310227))))

(assert (= (and b!7823709 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42418 (regOne!42418 r1!6261))))) b!7824847))

(assert (= (and b!7823709 ((_ is Concat!29798) (regOne!42418 (regTwo!42418 (regOne!42418 r1!6261))))) b!7824848))

(assert (= (and b!7823709 ((_ is Star!20953) (regOne!42418 (regTwo!42418 (regOne!42418 r1!6261))))) b!7824849))

(assert (= (and b!7823709 ((_ is Union!20953) (regOne!42418 (regTwo!42418 (regOne!42418 r1!6261))))) b!7824850))

(declare-fun b!7824851 () Bool)

(declare-fun e!4629065 () Bool)

(assert (=> b!7824851 (= e!4629065 tp_is_empty!52261)))

(assert (=> b!7823709 (= tp!2309563 e!4629065)))

(declare-fun b!7824854 () Bool)

(declare-fun tp!2310233 () Bool)

(declare-fun tp!2310235 () Bool)

(assert (=> b!7824854 (= e!4629065 (and tp!2310233 tp!2310235))))

(declare-fun b!7824853 () Bool)

(declare-fun tp!2310234 () Bool)

(assert (=> b!7824853 (= e!4629065 tp!2310234)))

(declare-fun b!7824852 () Bool)

(declare-fun tp!2310231 () Bool)

(declare-fun tp!2310232 () Bool)

(assert (=> b!7824852 (= e!4629065 (and tp!2310231 tp!2310232))))

(assert (= (and b!7823709 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42418 (regOne!42418 r1!6261))))) b!7824851))

(assert (= (and b!7823709 ((_ is Concat!29798) (regTwo!42418 (regTwo!42418 (regOne!42418 r1!6261))))) b!7824852))

(assert (= (and b!7823709 ((_ is Star!20953) (regTwo!42418 (regTwo!42418 (regOne!42418 r1!6261))))) b!7824853))

(assert (= (and b!7823709 ((_ is Union!20953) (regTwo!42418 (regTwo!42418 (regOne!42418 r1!6261))))) b!7824854))

(declare-fun b!7824855 () Bool)

(declare-fun e!4629066 () Bool)

(assert (=> b!7824855 (= e!4629066 tp_is_empty!52261)))

(assert (=> b!7823813 (= tp!2309693 e!4629066)))

(declare-fun b!7824858 () Bool)

(declare-fun tp!2310238 () Bool)

(declare-fun tp!2310240 () Bool)

(assert (=> b!7824858 (= e!4629066 (and tp!2310238 tp!2310240))))

(declare-fun b!7824857 () Bool)

(declare-fun tp!2310239 () Bool)

(assert (=> b!7824857 (= e!4629066 tp!2310239)))

(declare-fun b!7824856 () Bool)

(declare-fun tp!2310236 () Bool)

(declare-fun tp!2310237 () Bool)

(assert (=> b!7824856 (= e!4629066 (and tp!2310236 tp!2310237))))

(assert (= (and b!7823813 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7824855))

(assert (= (and b!7823813 ((_ is Concat!29798) (reg!21282 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7824856))

(assert (= (and b!7823813 ((_ is Star!20953) (reg!21282 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7824857))

(assert (= (and b!7823813 ((_ is Union!20953) (reg!21282 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7824858))

(declare-fun b!7824859 () Bool)

(declare-fun e!4629067 () Bool)

(assert (=> b!7824859 (= e!4629067 tp_is_empty!52261)))

(assert (=> b!7823804 (= tp!2309680 e!4629067)))

(declare-fun b!7824862 () Bool)

(declare-fun tp!2310243 () Bool)

(declare-fun tp!2310245 () Bool)

(assert (=> b!7824862 (= e!4629067 (and tp!2310243 tp!2310245))))

(declare-fun b!7824861 () Bool)

(declare-fun tp!2310244 () Bool)

(assert (=> b!7824861 (= e!4629067 tp!2310244)))

(declare-fun b!7824860 () Bool)

(declare-fun tp!2310241 () Bool)

(declare-fun tp!2310242 () Bool)

(assert (=> b!7824860 (= e!4629067 (and tp!2310241 tp!2310242))))

(assert (= (and b!7823804 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42419 (regOne!42419 r2!6199))))) b!7824859))

(assert (= (and b!7823804 ((_ is Concat!29798) (regOne!42418 (regTwo!42419 (regOne!42419 r2!6199))))) b!7824860))

(assert (= (and b!7823804 ((_ is Star!20953) (regOne!42418 (regTwo!42419 (regOne!42419 r2!6199))))) b!7824861))

(assert (= (and b!7823804 ((_ is Union!20953) (regOne!42418 (regTwo!42419 (regOne!42419 r2!6199))))) b!7824862))

(declare-fun b!7824863 () Bool)

(declare-fun e!4629068 () Bool)

(assert (=> b!7824863 (= e!4629068 tp_is_empty!52261)))

(assert (=> b!7823804 (= tp!2309681 e!4629068)))

(declare-fun b!7824866 () Bool)

(declare-fun tp!2310248 () Bool)

(declare-fun tp!2310250 () Bool)

(assert (=> b!7824866 (= e!4629068 (and tp!2310248 tp!2310250))))

(declare-fun b!7824865 () Bool)

(declare-fun tp!2310249 () Bool)

(assert (=> b!7824865 (= e!4629068 tp!2310249)))

(declare-fun b!7824864 () Bool)

(declare-fun tp!2310246 () Bool)

(declare-fun tp!2310247 () Bool)

(assert (=> b!7824864 (= e!4629068 (and tp!2310246 tp!2310247))))

(assert (= (and b!7823804 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42419 (regOne!42419 r2!6199))))) b!7824863))

(assert (= (and b!7823804 ((_ is Concat!29798) (regTwo!42418 (regTwo!42419 (regOne!42419 r2!6199))))) b!7824864))

(assert (= (and b!7823804 ((_ is Star!20953) (regTwo!42418 (regTwo!42419 (regOne!42419 r2!6199))))) b!7824865))

(assert (= (and b!7823804 ((_ is Union!20953) (regTwo!42418 (regTwo!42419 (regOne!42419 r2!6199))))) b!7824866))

(declare-fun b!7824867 () Bool)

(declare-fun e!4629069 () Bool)

(assert (=> b!7824867 (= e!4629069 tp_is_empty!52261)))

(assert (=> b!7823659 (= tp!2309500 e!4629069)))

(declare-fun b!7824870 () Bool)

(declare-fun tp!2310253 () Bool)

(declare-fun tp!2310255 () Bool)

(assert (=> b!7824870 (= e!4629069 (and tp!2310253 tp!2310255))))

(declare-fun b!7824869 () Bool)

(declare-fun tp!2310254 () Bool)

(assert (=> b!7824869 (= e!4629069 tp!2310254)))

(declare-fun b!7824868 () Bool)

(declare-fun tp!2310251 () Bool)

(declare-fun tp!2310252 () Bool)

(assert (=> b!7824868 (= e!4629069 (and tp!2310251 tp!2310252))))

(assert (= (and b!7823659 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7824867))

(assert (= (and b!7823659 ((_ is Concat!29798) (regOne!42418 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7824868))

(assert (= (and b!7823659 ((_ is Star!20953) (regOne!42418 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7824869))

(assert (= (and b!7823659 ((_ is Union!20953) (regOne!42418 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7824870))

(declare-fun b!7824871 () Bool)

(declare-fun e!4629070 () Bool)

(assert (=> b!7824871 (= e!4629070 tp_is_empty!52261)))

(assert (=> b!7823659 (= tp!2309501 e!4629070)))

(declare-fun b!7824874 () Bool)

(declare-fun tp!2310258 () Bool)

(declare-fun tp!2310260 () Bool)

(assert (=> b!7824874 (= e!4629070 (and tp!2310258 tp!2310260))))

(declare-fun b!7824873 () Bool)

(declare-fun tp!2310259 () Bool)

(assert (=> b!7824873 (= e!4629070 tp!2310259)))

(declare-fun b!7824872 () Bool)

(declare-fun tp!2310256 () Bool)

(declare-fun tp!2310257 () Bool)

(assert (=> b!7824872 (= e!4629070 (and tp!2310256 tp!2310257))))

(assert (= (and b!7823659 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7824871))

(assert (= (and b!7823659 ((_ is Concat!29798) (regTwo!42418 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7824872))

(assert (= (and b!7823659 ((_ is Star!20953) (regTwo!42418 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7824873))

(assert (= (and b!7823659 ((_ is Union!20953) (regTwo!42418 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7824874))

(declare-fun b!7824875 () Bool)

(declare-fun e!4629071 () Bool)

(assert (=> b!7824875 (= e!4629071 tp_is_empty!52261)))

(assert (=> b!7823763 (= tp!2309631 e!4629071)))

(declare-fun b!7824878 () Bool)

(declare-fun tp!2310263 () Bool)

(declare-fun tp!2310265 () Bool)

(assert (=> b!7824878 (= e!4629071 (and tp!2310263 tp!2310265))))

(declare-fun b!7824877 () Bool)

(declare-fun tp!2310264 () Bool)

(assert (=> b!7824877 (= e!4629071 tp!2310264)))

(declare-fun b!7824876 () Bool)

(declare-fun tp!2310261 () Bool)

(declare-fun tp!2310262 () Bool)

(assert (=> b!7824876 (= e!4629071 (and tp!2310261 tp!2310262))))

(assert (= (and b!7823763 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42418 (regOne!42419 r1!6261))))) b!7824875))

(assert (= (and b!7823763 ((_ is Concat!29798) (reg!21282 (regTwo!42418 (regOne!42419 r1!6261))))) b!7824876))

(assert (= (and b!7823763 ((_ is Star!20953) (reg!21282 (regTwo!42418 (regOne!42419 r1!6261))))) b!7824877))

(assert (= (and b!7823763 ((_ is Union!20953) (reg!21282 (regTwo!42418 (regOne!42419 r1!6261))))) b!7824878))

(declare-fun b!7824879 () Bool)

(declare-fun e!4629072 () Bool)

(assert (=> b!7824879 (= e!4629072 tp_is_empty!52261)))

(assert (=> b!7823754 (= tp!2309618 e!4629072)))

(declare-fun b!7824882 () Bool)

(declare-fun tp!2310268 () Bool)

(declare-fun tp!2310270 () Bool)

(assert (=> b!7824882 (= e!4629072 (and tp!2310268 tp!2310270))))

(declare-fun b!7824881 () Bool)

(declare-fun tp!2310269 () Bool)

(assert (=> b!7824881 (= e!4629072 tp!2310269)))

(declare-fun b!7824880 () Bool)

(declare-fun tp!2310266 () Bool)

(declare-fun tp!2310267 () Bool)

(assert (=> b!7824880 (= e!4629072 (and tp!2310266 tp!2310267))))

(assert (= (and b!7823754 ((_ is ElementMatch!20953) (regOne!42418 (reg!21282 (regOne!42419 r1!6261))))) b!7824879))

(assert (= (and b!7823754 ((_ is Concat!29798) (regOne!42418 (reg!21282 (regOne!42419 r1!6261))))) b!7824880))

(assert (= (and b!7823754 ((_ is Star!20953) (regOne!42418 (reg!21282 (regOne!42419 r1!6261))))) b!7824881))

(assert (= (and b!7823754 ((_ is Union!20953) (regOne!42418 (reg!21282 (regOne!42419 r1!6261))))) b!7824882))

(declare-fun b!7824883 () Bool)

(declare-fun e!4629073 () Bool)

(assert (=> b!7824883 (= e!4629073 tp_is_empty!52261)))

(assert (=> b!7823754 (= tp!2309619 e!4629073)))

(declare-fun b!7824886 () Bool)

(declare-fun tp!2310273 () Bool)

(declare-fun tp!2310275 () Bool)

(assert (=> b!7824886 (= e!4629073 (and tp!2310273 tp!2310275))))

(declare-fun b!7824885 () Bool)

(declare-fun tp!2310274 () Bool)

(assert (=> b!7824885 (= e!4629073 tp!2310274)))

(declare-fun b!7824884 () Bool)

(declare-fun tp!2310271 () Bool)

(declare-fun tp!2310272 () Bool)

(assert (=> b!7824884 (= e!4629073 (and tp!2310271 tp!2310272))))

(assert (= (and b!7823754 ((_ is ElementMatch!20953) (regTwo!42418 (reg!21282 (regOne!42419 r1!6261))))) b!7824883))

(assert (= (and b!7823754 ((_ is Concat!29798) (regTwo!42418 (reg!21282 (regOne!42419 r1!6261))))) b!7824884))

(assert (= (and b!7823754 ((_ is Star!20953) (regTwo!42418 (reg!21282 (regOne!42419 r1!6261))))) b!7824885))

(assert (= (and b!7823754 ((_ is Union!20953) (regTwo!42418 (reg!21282 (regOne!42419 r1!6261))))) b!7824886))

(declare-fun b!7824887 () Bool)

(declare-fun e!4629074 () Bool)

(assert (=> b!7824887 (= e!4629074 tp_is_empty!52261)))

(assert (=> b!7823636 (= tp!2309473 e!4629074)))

(declare-fun b!7824890 () Bool)

(declare-fun tp!2310278 () Bool)

(declare-fun tp!2310280 () Bool)

(assert (=> b!7824890 (= e!4629074 (and tp!2310278 tp!2310280))))

(declare-fun b!7824889 () Bool)

(declare-fun tp!2310279 () Bool)

(assert (=> b!7824889 (= e!4629074 tp!2310279)))

(declare-fun b!7824888 () Bool)

(declare-fun tp!2310276 () Bool)

(declare-fun tp!2310277 () Bool)

(assert (=> b!7824888 (= e!4629074 (and tp!2310276 tp!2310277))))

(assert (= (and b!7823636 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7824887))

(assert (= (and b!7823636 ((_ is Concat!29798) (reg!21282 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7824888))

(assert (= (and b!7823636 ((_ is Star!20953) (reg!21282 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7824889))

(assert (= (and b!7823636 ((_ is Union!20953) (reg!21282 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7824890))

(declare-fun b!7824891 () Bool)

(declare-fun e!4629075 () Bool)

(assert (=> b!7824891 (= e!4629075 tp_is_empty!52261)))

(assert (=> b!7823747 (= tp!2309609 e!4629075)))

(declare-fun b!7824894 () Bool)

(declare-fun tp!2310283 () Bool)

(declare-fun tp!2310285 () Bool)

(assert (=> b!7824894 (= e!4629075 (and tp!2310283 tp!2310285))))

(declare-fun b!7824893 () Bool)

(declare-fun tp!2310284 () Bool)

(assert (=> b!7824893 (= e!4629075 tp!2310284)))

(declare-fun b!7824892 () Bool)

(declare-fun tp!2310281 () Bool)

(declare-fun tp!2310282 () Bool)

(assert (=> b!7824892 (= e!4629075 (and tp!2310281 tp!2310282))))

(assert (= (and b!7823747 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42418 (regTwo!42418 r2!6199))))) b!7824891))

(assert (= (and b!7823747 ((_ is Concat!29798) (regOne!42419 (regOne!42418 (regTwo!42418 r2!6199))))) b!7824892))

(assert (= (and b!7823747 ((_ is Star!20953) (regOne!42419 (regOne!42418 (regTwo!42418 r2!6199))))) b!7824893))

(assert (= (and b!7823747 ((_ is Union!20953) (regOne!42419 (regOne!42418 (regTwo!42418 r2!6199))))) b!7824894))

(declare-fun b!7824895 () Bool)

(declare-fun e!4629076 () Bool)

(assert (=> b!7824895 (= e!4629076 tp_is_empty!52261)))

(assert (=> b!7823747 (= tp!2309611 e!4629076)))

(declare-fun b!7824898 () Bool)

(declare-fun tp!2310288 () Bool)

(declare-fun tp!2310290 () Bool)

(assert (=> b!7824898 (= e!4629076 (and tp!2310288 tp!2310290))))

(declare-fun b!7824897 () Bool)

(declare-fun tp!2310289 () Bool)

(assert (=> b!7824897 (= e!4629076 tp!2310289)))

(declare-fun b!7824896 () Bool)

(declare-fun tp!2310286 () Bool)

(declare-fun tp!2310287 () Bool)

(assert (=> b!7824896 (= e!4629076 (and tp!2310286 tp!2310287))))

(assert (= (and b!7823747 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42418 (regTwo!42418 r2!6199))))) b!7824895))

(assert (= (and b!7823747 ((_ is Concat!29798) (regTwo!42419 (regOne!42418 (regTwo!42418 r2!6199))))) b!7824896))

(assert (= (and b!7823747 ((_ is Star!20953) (regTwo!42419 (regOne!42418 (regTwo!42418 r2!6199))))) b!7824897))

(assert (= (and b!7823747 ((_ is Union!20953) (regTwo!42419 (regOne!42418 (regTwo!42418 r2!6199))))) b!7824898))

(declare-fun b!7824899 () Bool)

(declare-fun e!4629077 () Bool)

(assert (=> b!7824899 (= e!4629077 tp_is_empty!52261)))

(assert (=> b!7823645 (= tp!2309482 e!4629077)))

(declare-fun b!7824902 () Bool)

(declare-fun tp!2310293 () Bool)

(declare-fun tp!2310295 () Bool)

(assert (=> b!7824902 (= e!4629077 (and tp!2310293 tp!2310295))))

(declare-fun b!7824901 () Bool)

(declare-fun tp!2310294 () Bool)

(assert (=> b!7824901 (= e!4629077 tp!2310294)))

(declare-fun b!7824900 () Bool)

(declare-fun tp!2310291 () Bool)

(declare-fun tp!2310292 () Bool)

(assert (=> b!7824900 (= e!4629077 (and tp!2310291 tp!2310292))))

(assert (= (and b!7823645 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42419 (regTwo!42419 r1!6261))))) b!7824899))

(assert (= (and b!7823645 ((_ is Concat!29798) (regOne!42419 (regOne!42419 (regTwo!42419 r1!6261))))) b!7824900))

(assert (= (and b!7823645 ((_ is Star!20953) (regOne!42419 (regOne!42419 (regTwo!42419 r1!6261))))) b!7824901))

(assert (= (and b!7823645 ((_ is Union!20953) (regOne!42419 (regOne!42419 (regTwo!42419 r1!6261))))) b!7824902))

(declare-fun b!7824903 () Bool)

(declare-fun e!4629078 () Bool)

(assert (=> b!7824903 (= e!4629078 tp_is_empty!52261)))

(assert (=> b!7823645 (= tp!2309484 e!4629078)))

(declare-fun b!7824906 () Bool)

(declare-fun tp!2310298 () Bool)

(declare-fun tp!2310300 () Bool)

(assert (=> b!7824906 (= e!4629078 (and tp!2310298 tp!2310300))))

(declare-fun b!7824905 () Bool)

(declare-fun tp!2310299 () Bool)

(assert (=> b!7824905 (= e!4629078 tp!2310299)))

(declare-fun b!7824904 () Bool)

(declare-fun tp!2310296 () Bool)

(declare-fun tp!2310297 () Bool)

(assert (=> b!7824904 (= e!4629078 (and tp!2310296 tp!2310297))))

(assert (= (and b!7823645 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42419 (regTwo!42419 r1!6261))))) b!7824903))

(assert (= (and b!7823645 ((_ is Concat!29798) (regTwo!42419 (regOne!42419 (regTwo!42419 r1!6261))))) b!7824904))

(assert (= (and b!7823645 ((_ is Star!20953) (regTwo!42419 (regOne!42419 (regTwo!42419 r1!6261))))) b!7824905))

(assert (= (and b!7823645 ((_ is Union!20953) (regTwo!42419 (regOne!42419 (regTwo!42419 r1!6261))))) b!7824906))

(declare-fun b!7824907 () Bool)

(declare-fun e!4629079 () Bool)

(assert (=> b!7824907 (= e!4629079 tp_is_empty!52261)))

(assert (=> b!7823738 (= tp!2309600 e!4629079)))

(declare-fun b!7824910 () Bool)

(declare-fun tp!2310303 () Bool)

(declare-fun tp!2310305 () Bool)

(assert (=> b!7824910 (= e!4629079 (and tp!2310303 tp!2310305))))

(declare-fun b!7824909 () Bool)

(declare-fun tp!2310304 () Bool)

(assert (=> b!7824909 (= e!4629079 tp!2310304)))

(declare-fun b!7824908 () Bool)

(declare-fun tp!2310301 () Bool)

(declare-fun tp!2310302 () Bool)

(assert (=> b!7824908 (= e!4629079 (and tp!2310301 tp!2310302))))

(assert (= (and b!7823738 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42419 (regOne!42418 r1!6261))))) b!7824907))

(assert (= (and b!7823738 ((_ is Concat!29798) (reg!21282 (regTwo!42419 (regOne!42418 r1!6261))))) b!7824908))

(assert (= (and b!7823738 ((_ is Star!20953) (reg!21282 (regTwo!42419 (regOne!42418 r1!6261))))) b!7824909))

(assert (= (and b!7823738 ((_ is Union!20953) (reg!21282 (regTwo!42419 (regOne!42418 r1!6261))))) b!7824910))

(declare-fun b!7824911 () Bool)

(declare-fun e!4629080 () Bool)

(assert (=> b!7824911 (= e!4629080 tp_is_empty!52261)))

(assert (=> b!7823686 (= tp!2309535 e!4629080)))

(declare-fun b!7824914 () Bool)

(declare-fun tp!2310308 () Bool)

(declare-fun tp!2310310 () Bool)

(assert (=> b!7824914 (= e!4629080 (and tp!2310308 tp!2310310))))

(declare-fun b!7824913 () Bool)

(declare-fun tp!2310309 () Bool)

(assert (=> b!7824913 (= e!4629080 tp!2310309)))

(declare-fun b!7824912 () Bool)

(declare-fun tp!2310306 () Bool)

(declare-fun tp!2310307 () Bool)

(assert (=> b!7824912 (= e!4629080 (and tp!2310306 tp!2310307))))

(assert (= (and b!7823686 ((_ is ElementMatch!20953) (reg!21282 (regOne!42418 (regTwo!42419 r2!6199))))) b!7824911))

(assert (= (and b!7823686 ((_ is Concat!29798) (reg!21282 (regOne!42418 (regTwo!42419 r2!6199))))) b!7824912))

(assert (= (and b!7823686 ((_ is Star!20953) (reg!21282 (regOne!42418 (regTwo!42419 r2!6199))))) b!7824913))

(assert (= (and b!7823686 ((_ is Union!20953) (reg!21282 (regOne!42418 (regTwo!42419 r2!6199))))) b!7824914))

(declare-fun b!7824915 () Bool)

(declare-fun e!4629081 () Bool)

(assert (=> b!7824915 (= e!4629081 tp_is_empty!52261)))

(assert (=> b!7823695 (= tp!2309544 e!4629081)))

(declare-fun b!7824918 () Bool)

(declare-fun tp!2310313 () Bool)

(declare-fun tp!2310315 () Bool)

(assert (=> b!7824918 (= e!4629081 (and tp!2310313 tp!2310315))))

(declare-fun b!7824917 () Bool)

(declare-fun tp!2310314 () Bool)

(assert (=> b!7824917 (= e!4629081 tp!2310314)))

(declare-fun b!7824916 () Bool)

(declare-fun tp!2310311 () Bool)

(declare-fun tp!2310312 () Bool)

(assert (=> b!7824916 (= e!4629081 (and tp!2310311 tp!2310312))))

(assert (= (and b!7823695 ((_ is ElementMatch!20953) (regOne!42419 (reg!21282 (regOne!42418 r1!6261))))) b!7824915))

(assert (= (and b!7823695 ((_ is Concat!29798) (regOne!42419 (reg!21282 (regOne!42418 r1!6261))))) b!7824916))

(assert (= (and b!7823695 ((_ is Star!20953) (regOne!42419 (reg!21282 (regOne!42418 r1!6261))))) b!7824917))

(assert (= (and b!7823695 ((_ is Union!20953) (regOne!42419 (reg!21282 (regOne!42418 r1!6261))))) b!7824918))

(declare-fun b!7824919 () Bool)

(declare-fun e!4629082 () Bool)

(assert (=> b!7824919 (= e!4629082 tp_is_empty!52261)))

(assert (=> b!7823695 (= tp!2309546 e!4629082)))

(declare-fun b!7824922 () Bool)

(declare-fun tp!2310318 () Bool)

(declare-fun tp!2310320 () Bool)

(assert (=> b!7824922 (= e!4629082 (and tp!2310318 tp!2310320))))

(declare-fun b!7824921 () Bool)

(declare-fun tp!2310319 () Bool)

(assert (=> b!7824921 (= e!4629082 tp!2310319)))

(declare-fun b!7824920 () Bool)

(declare-fun tp!2310316 () Bool)

(declare-fun tp!2310317 () Bool)

(assert (=> b!7824920 (= e!4629082 (and tp!2310316 tp!2310317))))

(assert (= (and b!7823695 ((_ is ElementMatch!20953) (regTwo!42419 (reg!21282 (regOne!42418 r1!6261))))) b!7824919))

(assert (= (and b!7823695 ((_ is Concat!29798) (regTwo!42419 (reg!21282 (regOne!42418 r1!6261))))) b!7824920))

(assert (= (and b!7823695 ((_ is Star!20953) (regTwo!42419 (reg!21282 (regOne!42418 r1!6261))))) b!7824921))

(assert (= (and b!7823695 ((_ is Union!20953) (regTwo!42419 (reg!21282 (regOne!42418 r1!6261))))) b!7824922))

(declare-fun b!7824923 () Bool)

(declare-fun e!4629083 () Bool)

(declare-fun tp!2310321 () Bool)

(assert (=> b!7824923 (= e!4629083 (and tp_is_empty!52261 tp!2310321))))

(assert (=> b!7823670 (= tp!2309515 e!4629083)))

(assert (= (and b!7823670 ((_ is Cons!73666) (t!388525 (t!388525 (t!388525 s2!3721))))) b!7824923))

(declare-fun b!7824924 () Bool)

(declare-fun e!4629084 () Bool)

(assert (=> b!7824924 (= e!4629084 tp_is_empty!52261)))

(assert (=> b!7823790 (= tp!2309662 e!4629084)))

(declare-fun b!7824927 () Bool)

(declare-fun tp!2310324 () Bool)

(declare-fun tp!2310326 () Bool)

(assert (=> b!7824927 (= e!4629084 (and tp!2310324 tp!2310326))))

(declare-fun b!7824926 () Bool)

(declare-fun tp!2310325 () Bool)

(assert (=> b!7824926 (= e!4629084 tp!2310325)))

(declare-fun b!7824925 () Bool)

(declare-fun tp!2310322 () Bool)

(declare-fun tp!2310323 () Bool)

(assert (=> b!7824925 (= e!4629084 (and tp!2310322 tp!2310323))))

(assert (= (and b!7823790 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42418 (reg!21282 r1!6261))))) b!7824924))

(assert (= (and b!7823790 ((_ is Concat!29798) (regOne!42419 (regOne!42418 (reg!21282 r1!6261))))) b!7824925))

(assert (= (and b!7823790 ((_ is Star!20953) (regOne!42419 (regOne!42418 (reg!21282 r1!6261))))) b!7824926))

(assert (= (and b!7823790 ((_ is Union!20953) (regOne!42419 (regOne!42418 (reg!21282 r1!6261))))) b!7824927))

(declare-fun b!7824928 () Bool)

(declare-fun e!4629085 () Bool)

(assert (=> b!7824928 (= e!4629085 tp_is_empty!52261)))

(assert (=> b!7823790 (= tp!2309664 e!4629085)))

(declare-fun b!7824931 () Bool)

(declare-fun tp!2310329 () Bool)

(declare-fun tp!2310331 () Bool)

(assert (=> b!7824931 (= e!4629085 (and tp!2310329 tp!2310331))))

(declare-fun b!7824930 () Bool)

(declare-fun tp!2310330 () Bool)

(assert (=> b!7824930 (= e!4629085 tp!2310330)))

(declare-fun b!7824929 () Bool)

(declare-fun tp!2310327 () Bool)

(declare-fun tp!2310328 () Bool)

(assert (=> b!7824929 (= e!4629085 (and tp!2310327 tp!2310328))))

(assert (= (and b!7823790 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42418 (reg!21282 r1!6261))))) b!7824928))

(assert (= (and b!7823790 ((_ is Concat!29798) (regTwo!42419 (regOne!42418 (reg!21282 r1!6261))))) b!7824929))

(assert (= (and b!7823790 ((_ is Star!20953) (regTwo!42419 (regOne!42418 (reg!21282 r1!6261))))) b!7824930))

(assert (= (and b!7823790 ((_ is Union!20953) (regTwo!42419 (regOne!42418 (reg!21282 r1!6261))))) b!7824931))

(declare-fun b!7824932 () Bool)

(declare-fun e!4629086 () Bool)

(assert (=> b!7824932 (= e!4629086 tp_is_empty!52261)))

(assert (=> b!7823781 (= tp!2309653 e!4629086)))

(declare-fun b!7824935 () Bool)

(declare-fun tp!2310334 () Bool)

(declare-fun tp!2310336 () Bool)

(assert (=> b!7824935 (= e!4629086 (and tp!2310334 tp!2310336))))

(declare-fun b!7824934 () Bool)

(declare-fun tp!2310335 () Bool)

(assert (=> b!7824934 (= e!4629086 tp!2310335)))

(declare-fun b!7824933 () Bool)

(declare-fun tp!2310332 () Bool)

(declare-fun tp!2310333 () Bool)

(assert (=> b!7824933 (= e!4629086 (and tp!2310332 tp!2310333))))

(assert (= (and b!7823781 ((_ is ElementMatch!20953) (reg!21282 (regOne!42419 (regOne!42419 r1!6261))))) b!7824932))

(assert (= (and b!7823781 ((_ is Concat!29798) (reg!21282 (regOne!42419 (regOne!42419 r1!6261))))) b!7824933))

(assert (= (and b!7823781 ((_ is Star!20953) (reg!21282 (regOne!42419 (regOne!42419 r1!6261))))) b!7824934))

(assert (= (and b!7823781 ((_ is Union!20953) (reg!21282 (regOne!42419 (regOne!42419 r1!6261))))) b!7824935))

(declare-fun b!7824936 () Bool)

(declare-fun e!4629087 () Bool)

(assert (=> b!7824936 (= e!4629087 tp_is_empty!52261)))

(assert (=> b!7823729 (= tp!2309587 e!4629087)))

(declare-fun b!7824939 () Bool)

(declare-fun tp!2310339 () Bool)

(declare-fun tp!2310341 () Bool)

(assert (=> b!7824939 (= e!4629087 (and tp!2310339 tp!2310341))))

(declare-fun b!7824938 () Bool)

(declare-fun tp!2310340 () Bool)

(assert (=> b!7824938 (= e!4629087 tp!2310340)))

(declare-fun b!7824937 () Bool)

(declare-fun tp!2310337 () Bool)

(declare-fun tp!2310338 () Bool)

(assert (=> b!7824937 (= e!4629087 (and tp!2310337 tp!2310338))))

(assert (= (and b!7823729 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7824936))

(assert (= (and b!7823729 ((_ is Concat!29798) (regOne!42418 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7824937))

(assert (= (and b!7823729 ((_ is Star!20953) (regOne!42418 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7824938))

(assert (= (and b!7823729 ((_ is Union!20953) (regOne!42418 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7824939))

(declare-fun b!7824940 () Bool)

(declare-fun e!4629088 () Bool)

(assert (=> b!7824940 (= e!4629088 tp_is_empty!52261)))

(assert (=> b!7823729 (= tp!2309588 e!4629088)))

(declare-fun b!7824943 () Bool)

(declare-fun tp!2310344 () Bool)

(declare-fun tp!2310346 () Bool)

(assert (=> b!7824943 (= e!4629088 (and tp!2310344 tp!2310346))))

(declare-fun b!7824942 () Bool)

(declare-fun tp!2310345 () Bool)

(assert (=> b!7824942 (= e!4629088 tp!2310345)))

(declare-fun b!7824941 () Bool)

(declare-fun tp!2310342 () Bool)

(declare-fun tp!2310343 () Bool)

(assert (=> b!7824941 (= e!4629088 (and tp!2310342 tp!2310343))))

(assert (= (and b!7823729 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7824940))

(assert (= (and b!7823729 ((_ is Concat!29798) (regTwo!42418 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7824941))

(assert (= (and b!7823729 ((_ is Star!20953) (regTwo!42418 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7824942))

(assert (= (and b!7823729 ((_ is Union!20953) (regTwo!42418 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7824943))

(declare-fun b!7824944 () Bool)

(declare-fun e!4629089 () Bool)

(assert (=> b!7824944 (= e!4629089 tp_is_empty!52261)))

(assert (=> b!7823627 (= tp!2309460 e!4629089)))

(declare-fun b!7824947 () Bool)

(declare-fun tp!2310349 () Bool)

(declare-fun tp!2310351 () Bool)

(assert (=> b!7824947 (= e!4629089 (and tp!2310349 tp!2310351))))

(declare-fun b!7824946 () Bool)

(declare-fun tp!2310350 () Bool)

(assert (=> b!7824946 (= e!4629089 tp!2310350)))

(declare-fun b!7824945 () Bool)

(declare-fun tp!2310347 () Bool)

(declare-fun tp!2310348 () Bool)

(assert (=> b!7824945 (= e!4629089 (and tp!2310347 tp!2310348))))

(assert (= (and b!7823627 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42418 (regOne!42418 r2!6199))))) b!7824944))

(assert (= (and b!7823627 ((_ is Concat!29798) (regOne!42418 (regTwo!42418 (regOne!42418 r2!6199))))) b!7824945))

(assert (= (and b!7823627 ((_ is Star!20953) (regOne!42418 (regTwo!42418 (regOne!42418 r2!6199))))) b!7824946))

(assert (= (and b!7823627 ((_ is Union!20953) (regOne!42418 (regTwo!42418 (regOne!42418 r2!6199))))) b!7824947))

(declare-fun b!7824948 () Bool)

(declare-fun e!4629090 () Bool)

(assert (=> b!7824948 (= e!4629090 tp_is_empty!52261)))

(assert (=> b!7823627 (= tp!2309461 e!4629090)))

(declare-fun b!7824951 () Bool)

(declare-fun tp!2310354 () Bool)

(declare-fun tp!2310356 () Bool)

(assert (=> b!7824951 (= e!4629090 (and tp!2310354 tp!2310356))))

(declare-fun b!7824950 () Bool)

(declare-fun tp!2310355 () Bool)

(assert (=> b!7824950 (= e!4629090 tp!2310355)))

(declare-fun b!7824949 () Bool)

(declare-fun tp!2310352 () Bool)

(declare-fun tp!2310353 () Bool)

(assert (=> b!7824949 (= e!4629090 (and tp!2310352 tp!2310353))))

(assert (= (and b!7823627 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42418 (regOne!42418 r2!6199))))) b!7824948))

(assert (= (and b!7823627 ((_ is Concat!29798) (regTwo!42418 (regTwo!42418 (regOne!42418 r2!6199))))) b!7824949))

(assert (= (and b!7823627 ((_ is Star!20953) (regTwo!42418 (regTwo!42418 (regOne!42418 r2!6199))))) b!7824950))

(assert (= (and b!7823627 ((_ is Union!20953) (regTwo!42418 (regTwo!42418 (regOne!42418 r2!6199))))) b!7824951))

(declare-fun b!7824952 () Bool)

(declare-fun e!4629091 () Bool)

(assert (=> b!7824952 (= e!4629091 tp_is_empty!52261)))

(assert (=> b!7823706 (= tp!2309560 e!4629091)))

(declare-fun b!7824955 () Bool)

(declare-fun tp!2310359 () Bool)

(declare-fun tp!2310361 () Bool)

(assert (=> b!7824955 (= e!4629091 (and tp!2310359 tp!2310361))))

(declare-fun b!7824954 () Bool)

(declare-fun tp!2310360 () Bool)

(assert (=> b!7824954 (= e!4629091 tp!2310360)))

(declare-fun b!7824953 () Bool)

(declare-fun tp!2310357 () Bool)

(declare-fun tp!2310358 () Bool)

(assert (=> b!7824953 (= e!4629091 (and tp!2310357 tp!2310358))))

(assert (= (and b!7823706 ((_ is ElementMatch!20953) (reg!21282 (regOne!42418 (regOne!42418 r1!6261))))) b!7824952))

(assert (= (and b!7823706 ((_ is Concat!29798) (reg!21282 (regOne!42418 (regOne!42418 r1!6261))))) b!7824953))

(assert (= (and b!7823706 ((_ is Star!20953) (reg!21282 (regOne!42418 (regOne!42418 r1!6261))))) b!7824954))

(assert (= (and b!7823706 ((_ is Union!20953) (reg!21282 (regOne!42418 (regOne!42418 r1!6261))))) b!7824955))

(declare-fun b!7824956 () Bool)

(declare-fun e!4629092 () Bool)

(assert (=> b!7824956 (= e!4629092 tp_is_empty!52261)))

(assert (=> b!7823613 (= tp!2309442 e!4629092)))

(declare-fun b!7824959 () Bool)

(declare-fun tp!2310364 () Bool)

(declare-fun tp!2310366 () Bool)

(assert (=> b!7824959 (= e!4629092 (and tp!2310364 tp!2310366))))

(declare-fun b!7824958 () Bool)

(declare-fun tp!2310365 () Bool)

(assert (=> b!7824958 (= e!4629092 tp!2310365)))

(declare-fun b!7824957 () Bool)

(declare-fun tp!2310362 () Bool)

(declare-fun tp!2310363 () Bool)

(assert (=> b!7824957 (= e!4629092 (and tp!2310362 tp!2310363))))

(assert (= (and b!7823613 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42419 (reg!21282 r1!6261))))) b!7824956))

(assert (= (and b!7823613 ((_ is Concat!29798) (regOne!42419 (regOne!42419 (reg!21282 r1!6261))))) b!7824957))

(assert (= (and b!7823613 ((_ is Star!20953) (regOne!42419 (regOne!42419 (reg!21282 r1!6261))))) b!7824958))

(assert (= (and b!7823613 ((_ is Union!20953) (regOne!42419 (regOne!42419 (reg!21282 r1!6261))))) b!7824959))

(declare-fun b!7824960 () Bool)

(declare-fun e!4629093 () Bool)

(assert (=> b!7824960 (= e!4629093 tp_is_empty!52261)))

(assert (=> b!7823613 (= tp!2309444 e!4629093)))

(declare-fun b!7824963 () Bool)

(declare-fun tp!2310369 () Bool)

(declare-fun tp!2310371 () Bool)

(assert (=> b!7824963 (= e!4629093 (and tp!2310369 tp!2310371))))

(declare-fun b!7824962 () Bool)

(declare-fun tp!2310370 () Bool)

(assert (=> b!7824962 (= e!4629093 tp!2310370)))

(declare-fun b!7824961 () Bool)

(declare-fun tp!2310367 () Bool)

(declare-fun tp!2310368 () Bool)

(assert (=> b!7824961 (= e!4629093 (and tp!2310367 tp!2310368))))

(assert (= (and b!7823613 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42419 (reg!21282 r1!6261))))) b!7824960))

(assert (= (and b!7823613 ((_ is Concat!29798) (regTwo!42419 (regOne!42419 (reg!21282 r1!6261))))) b!7824961))

(assert (= (and b!7823613 ((_ is Star!20953) (regTwo!42419 (regOne!42419 (reg!21282 r1!6261))))) b!7824962))

(assert (= (and b!7823613 ((_ is Union!20953) (regTwo!42419 (regOne!42419 (reg!21282 r1!6261))))) b!7824963))

(declare-fun b!7824964 () Bool)

(declare-fun e!4629094 () Bool)

(assert (=> b!7824964 (= e!4629094 tp_is_empty!52261)))

(assert (=> b!7823715 (= tp!2309569 e!4629094)))

(declare-fun b!7824967 () Bool)

(declare-fun tp!2310374 () Bool)

(declare-fun tp!2310376 () Bool)

(assert (=> b!7824967 (= e!4629094 (and tp!2310374 tp!2310376))))

(declare-fun b!7824966 () Bool)

(declare-fun tp!2310375 () Bool)

(assert (=> b!7824966 (= e!4629094 tp!2310375)))

(declare-fun b!7824965 () Bool)

(declare-fun tp!2310372 () Bool)

(declare-fun tp!2310373 () Bool)

(assert (=> b!7824965 (= e!4629094 (and tp!2310372 tp!2310373))))

(assert (= (and b!7823715 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42419 (regTwo!42419 r2!6199))))) b!7824964))

(assert (= (and b!7823715 ((_ is Concat!29798) (regOne!42419 (regOne!42419 (regTwo!42419 r2!6199))))) b!7824965))

(assert (= (and b!7823715 ((_ is Star!20953) (regOne!42419 (regOne!42419 (regTwo!42419 r2!6199))))) b!7824966))

(assert (= (and b!7823715 ((_ is Union!20953) (regOne!42419 (regOne!42419 (regTwo!42419 r2!6199))))) b!7824967))

(declare-fun b!7824968 () Bool)

(declare-fun e!4629095 () Bool)

(assert (=> b!7824968 (= e!4629095 tp_is_empty!52261)))

(assert (=> b!7823715 (= tp!2309571 e!4629095)))

(declare-fun b!7824971 () Bool)

(declare-fun tp!2310379 () Bool)

(declare-fun tp!2310381 () Bool)

(assert (=> b!7824971 (= e!4629095 (and tp!2310379 tp!2310381))))

(declare-fun b!7824970 () Bool)

(declare-fun tp!2310380 () Bool)

(assert (=> b!7824970 (= e!4629095 tp!2310380)))

(declare-fun b!7824969 () Bool)

(declare-fun tp!2310377 () Bool)

(declare-fun tp!2310378 () Bool)

(assert (=> b!7824969 (= e!4629095 (and tp!2310377 tp!2310378))))

(assert (= (and b!7823715 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42419 (regTwo!42419 r2!6199))))) b!7824968))

(assert (= (and b!7823715 ((_ is Concat!29798) (regTwo!42419 (regOne!42419 (regTwo!42419 r2!6199))))) b!7824969))

(assert (= (and b!7823715 ((_ is Star!20953) (regTwo!42419 (regOne!42419 (regTwo!42419 r2!6199))))) b!7824970))

(assert (= (and b!7823715 ((_ is Union!20953) (regTwo!42419 (regOne!42419 (regTwo!42419 r2!6199))))) b!7824971))

(declare-fun b!7824972 () Bool)

(declare-fun e!4629096 () Bool)

(declare-fun tp!2310382 () Bool)

(assert (=> b!7824972 (= e!4629096 (and tp_is_empty!52261 tp!2310382))))

(assert (=> b!7823765 (= tp!2309633 e!4629096)))

(assert (= (and b!7823765 ((_ is Cons!73666) (t!388525 (t!388525 (t!388525 s1!4101))))) b!7824972))

(declare-fun b!7824973 () Bool)

(declare-fun e!4629097 () Bool)

(assert (=> b!7824973 (= e!4629097 tp_is_empty!52261)))

(assert (=> b!7823656 (= tp!2309498 e!4629097)))

(declare-fun b!7824976 () Bool)

(declare-fun tp!2310385 () Bool)

(declare-fun tp!2310387 () Bool)

(assert (=> b!7824976 (= e!4629097 (and tp!2310385 tp!2310387))))

(declare-fun b!7824975 () Bool)

(declare-fun tp!2310386 () Bool)

(assert (=> b!7824975 (= e!4629097 tp!2310386)))

(declare-fun b!7824974 () Bool)

(declare-fun tp!2310383 () Bool)

(declare-fun tp!2310384 () Bool)

(assert (=> b!7824974 (= e!4629097 (and tp!2310383 tp!2310384))))

(assert (= (and b!7823656 ((_ is ElementMatch!20953) (reg!21282 (regOne!42418 (regTwo!42419 r1!6261))))) b!7824973))

(assert (= (and b!7823656 ((_ is Concat!29798) (reg!21282 (regOne!42418 (regTwo!42419 r1!6261))))) b!7824974))

(assert (= (and b!7823656 ((_ is Star!20953) (reg!21282 (regOne!42418 (regTwo!42419 r1!6261))))) b!7824975))

(assert (= (and b!7823656 ((_ is Union!20953) (reg!21282 (regOne!42418 (regTwo!42419 r1!6261))))) b!7824976))

(declare-fun b!7824977 () Bool)

(declare-fun e!4629098 () Bool)

(assert (=> b!7824977 (= e!4629098 tp_is_empty!52261)))

(assert (=> b!7823665 (= tp!2309507 e!4629098)))

(declare-fun b!7824980 () Bool)

(declare-fun tp!2310390 () Bool)

(declare-fun tp!2310392 () Bool)

(assert (=> b!7824980 (= e!4629098 (and tp!2310390 tp!2310392))))

(declare-fun b!7824979 () Bool)

(declare-fun tp!2310391 () Bool)

(assert (=> b!7824979 (= e!4629098 tp!2310391)))

(declare-fun b!7824978 () Bool)

(declare-fun tp!2310388 () Bool)

(declare-fun tp!2310389 () Bool)

(assert (=> b!7824978 (= e!4629098 (and tp!2310388 tp!2310389))))

(assert (= (and b!7823665 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42419 (regOne!42418 r2!6199))))) b!7824977))

(assert (= (and b!7823665 ((_ is Concat!29798) (regOne!42419 (regOne!42419 (regOne!42418 r2!6199))))) b!7824978))

(assert (= (and b!7823665 ((_ is Star!20953) (regOne!42419 (regOne!42419 (regOne!42418 r2!6199))))) b!7824979))

(assert (= (and b!7823665 ((_ is Union!20953) (regOne!42419 (regOne!42419 (regOne!42418 r2!6199))))) b!7824980))

(declare-fun b!7824981 () Bool)

(declare-fun e!4629099 () Bool)

(assert (=> b!7824981 (= e!4629099 tp_is_empty!52261)))

(assert (=> b!7823665 (= tp!2309509 e!4629099)))

(declare-fun b!7824984 () Bool)

(declare-fun tp!2310395 () Bool)

(declare-fun tp!2310397 () Bool)

(assert (=> b!7824984 (= e!4629099 (and tp!2310395 tp!2310397))))

(declare-fun b!7824983 () Bool)

(declare-fun tp!2310396 () Bool)

(assert (=> b!7824983 (= e!4629099 tp!2310396)))

(declare-fun b!7824982 () Bool)

(declare-fun tp!2310393 () Bool)

(declare-fun tp!2310394 () Bool)

(assert (=> b!7824982 (= e!4629099 (and tp!2310393 tp!2310394))))

(assert (= (and b!7823665 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42419 (regOne!42418 r2!6199))))) b!7824981))

(assert (= (and b!7823665 ((_ is Concat!29798) (regTwo!42419 (regOne!42419 (regOne!42418 r2!6199))))) b!7824982))

(assert (= (and b!7823665 ((_ is Star!20953) (regTwo!42419 (regOne!42419 (regOne!42418 r2!6199))))) b!7824983))

(assert (= (and b!7823665 ((_ is Union!20953) (regTwo!42419 (regOne!42419 (regOne!42418 r2!6199))))) b!7824984))

(declare-fun b!7824985 () Bool)

(declare-fun e!4629100 () Bool)

(assert (=> b!7824985 (= e!4629100 tp_is_empty!52261)))

(assert (=> b!7823749 (= tp!2309612 e!4629100)))

(declare-fun b!7824988 () Bool)

(declare-fun tp!2310400 () Bool)

(declare-fun tp!2310402 () Bool)

(assert (=> b!7824988 (= e!4629100 (and tp!2310400 tp!2310402))))

(declare-fun b!7824987 () Bool)

(declare-fun tp!2310401 () Bool)

(assert (=> b!7824987 (= e!4629100 tp!2310401)))

(declare-fun b!7824986 () Bool)

(declare-fun tp!2310398 () Bool)

(declare-fun tp!2310399 () Bool)

(assert (=> b!7824986 (= e!4629100 (and tp!2310398 tp!2310399))))

(assert (= (and b!7823749 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7824985))

(assert (= (and b!7823749 ((_ is Concat!29798) (regOne!42418 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7824986))

(assert (= (and b!7823749 ((_ is Star!20953) (regOne!42418 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7824987))

(assert (= (and b!7823749 ((_ is Union!20953) (regOne!42418 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7824988))

(declare-fun b!7824989 () Bool)

(declare-fun e!4629101 () Bool)

(assert (=> b!7824989 (= e!4629101 tp_is_empty!52261)))

(assert (=> b!7823749 (= tp!2309613 e!4629101)))

(declare-fun b!7824992 () Bool)

(declare-fun tp!2310405 () Bool)

(declare-fun tp!2310407 () Bool)

(assert (=> b!7824992 (= e!4629101 (and tp!2310405 tp!2310407))))

(declare-fun b!7824991 () Bool)

(declare-fun tp!2310406 () Bool)

(assert (=> b!7824991 (= e!4629101 tp!2310406)))

(declare-fun b!7824990 () Bool)

(declare-fun tp!2310403 () Bool)

(declare-fun tp!2310404 () Bool)

(assert (=> b!7824990 (= e!4629101 (and tp!2310403 tp!2310404))))

(assert (= (and b!7823749 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7824989))

(assert (= (and b!7823749 ((_ is Concat!29798) (regTwo!42418 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7824990))

(assert (= (and b!7823749 ((_ is Star!20953) (regTwo!42418 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7824991))

(assert (= (and b!7823749 ((_ is Union!20953) (regTwo!42418 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7824992))

(declare-fun b!7824993 () Bool)

(declare-fun e!4629102 () Bool)

(assert (=> b!7824993 (= e!4629102 tp_is_empty!52261)))

(assert (=> b!7823647 (= tp!2309485 e!4629102)))

(declare-fun b!7824996 () Bool)

(declare-fun tp!2310410 () Bool)

(declare-fun tp!2310412 () Bool)

(assert (=> b!7824996 (= e!4629102 (and tp!2310410 tp!2310412))))

(declare-fun b!7824995 () Bool)

(declare-fun tp!2310411 () Bool)

(assert (=> b!7824995 (= e!4629102 tp!2310411)))

(declare-fun b!7824994 () Bool)

(declare-fun tp!2310408 () Bool)

(declare-fun tp!2310409 () Bool)

(assert (=> b!7824994 (= e!4629102 (and tp!2310408 tp!2310409))))

(assert (= (and b!7823647 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7824993))

(assert (= (and b!7823647 ((_ is Concat!29798) (regOne!42418 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7824994))

(assert (= (and b!7823647 ((_ is Star!20953) (regOne!42418 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7824995))

(assert (= (and b!7823647 ((_ is Union!20953) (regOne!42418 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7824996))

(declare-fun b!7824997 () Bool)

(declare-fun e!4629103 () Bool)

(assert (=> b!7824997 (= e!4629103 tp_is_empty!52261)))

(assert (=> b!7823647 (= tp!2309486 e!4629103)))

(declare-fun b!7825000 () Bool)

(declare-fun tp!2310415 () Bool)

(declare-fun tp!2310417 () Bool)

(assert (=> b!7825000 (= e!4629103 (and tp!2310415 tp!2310417))))

(declare-fun b!7824999 () Bool)

(declare-fun tp!2310416 () Bool)

(assert (=> b!7824999 (= e!4629103 tp!2310416)))

(declare-fun b!7824998 () Bool)

(declare-fun tp!2310413 () Bool)

(declare-fun tp!2310414 () Bool)

(assert (=> b!7824998 (= e!4629103 (and tp!2310413 tp!2310414))))

(assert (= (and b!7823647 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7824997))

(assert (= (and b!7823647 ((_ is Concat!29798) (regTwo!42418 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7824998))

(assert (= (and b!7823647 ((_ is Star!20953) (regTwo!42418 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7824999))

(assert (= (and b!7823647 ((_ is Union!20953) (regTwo!42418 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7825000))

(declare-fun b!7825001 () Bool)

(declare-fun e!4629104 () Bool)

(assert (=> b!7825001 (= e!4629104 tp_is_empty!52261)))

(assert (=> b!7823697 (= tp!2309547 e!4629104)))

(declare-fun b!7825004 () Bool)

(declare-fun tp!2310420 () Bool)

(declare-fun tp!2310422 () Bool)

(assert (=> b!7825004 (= e!4629104 (and tp!2310420 tp!2310422))))

(declare-fun b!7825003 () Bool)

(declare-fun tp!2310421 () Bool)

(assert (=> b!7825003 (= e!4629104 tp!2310421)))

(declare-fun b!7825002 () Bool)

(declare-fun tp!2310418 () Bool)

(declare-fun tp!2310419 () Bool)

(assert (=> b!7825002 (= e!4629104 (and tp!2310418 tp!2310419))))

(assert (= (and b!7823697 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42419 (reg!21282 r2!6199))))) b!7825001))

(assert (= (and b!7823697 ((_ is Concat!29798) (regOne!42418 (regOne!42419 (reg!21282 r2!6199))))) b!7825002))

(assert (= (and b!7823697 ((_ is Star!20953) (regOne!42418 (regOne!42419 (reg!21282 r2!6199))))) b!7825003))

(assert (= (and b!7823697 ((_ is Union!20953) (regOne!42418 (regOne!42419 (reg!21282 r2!6199))))) b!7825004))

(declare-fun b!7825005 () Bool)

(declare-fun e!4629105 () Bool)

(assert (=> b!7825005 (= e!4629105 tp_is_empty!52261)))

(assert (=> b!7823697 (= tp!2309548 e!4629105)))

(declare-fun b!7825008 () Bool)

(declare-fun tp!2310425 () Bool)

(declare-fun tp!2310427 () Bool)

(assert (=> b!7825008 (= e!4629105 (and tp!2310425 tp!2310427))))

(declare-fun b!7825007 () Bool)

(declare-fun tp!2310426 () Bool)

(assert (=> b!7825007 (= e!4629105 tp!2310426)))

(declare-fun b!7825006 () Bool)

(declare-fun tp!2310423 () Bool)

(declare-fun tp!2310424 () Bool)

(assert (=> b!7825006 (= e!4629105 (and tp!2310423 tp!2310424))))

(assert (= (and b!7823697 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42419 (reg!21282 r2!6199))))) b!7825005))

(assert (= (and b!7823697 ((_ is Concat!29798) (regTwo!42418 (regOne!42419 (reg!21282 r2!6199))))) b!7825006))

(assert (= (and b!7823697 ((_ is Star!20953) (regTwo!42418 (regOne!42419 (reg!21282 r2!6199))))) b!7825007))

(assert (= (and b!7823697 ((_ is Union!20953) (regTwo!42418 (regOne!42419 (reg!21282 r2!6199))))) b!7825008))

(declare-fun b!7825009 () Bool)

(declare-fun e!4629106 () Bool)

(assert (=> b!7825009 (= e!4629106 tp_is_empty!52261)))

(assert (=> b!7823672 (= tp!2309516 e!4629106)))

(declare-fun b!7825012 () Bool)

(declare-fun tp!2310430 () Bool)

(declare-fun tp!2310432 () Bool)

(assert (=> b!7825012 (= e!4629106 (and tp!2310430 tp!2310432))))

(declare-fun b!7825011 () Bool)

(declare-fun tp!2310431 () Bool)

(assert (=> b!7825011 (= e!4629106 tp!2310431)))

(declare-fun b!7825010 () Bool)

(declare-fun tp!2310428 () Bool)

(declare-fun tp!2310429 () Bool)

(assert (=> b!7825010 (= e!4629106 (and tp!2310428 tp!2310429))))

(assert (= (and b!7823672 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42418 (reg!21282 r2!6199))))) b!7825009))

(assert (= (and b!7823672 ((_ is Concat!29798) (regOne!42418 (regOne!42418 (reg!21282 r2!6199))))) b!7825010))

(assert (= (and b!7823672 ((_ is Star!20953) (regOne!42418 (regOne!42418 (reg!21282 r2!6199))))) b!7825011))

(assert (= (and b!7823672 ((_ is Union!20953) (regOne!42418 (regOne!42418 (reg!21282 r2!6199))))) b!7825012))

(declare-fun b!7825013 () Bool)

(declare-fun e!4629107 () Bool)

(assert (=> b!7825013 (= e!4629107 tp_is_empty!52261)))

(assert (=> b!7823672 (= tp!2309517 e!4629107)))

(declare-fun b!7825016 () Bool)

(declare-fun tp!2310435 () Bool)

(declare-fun tp!2310437 () Bool)

(assert (=> b!7825016 (= e!4629107 (and tp!2310435 tp!2310437))))

(declare-fun b!7825015 () Bool)

(declare-fun tp!2310436 () Bool)

(assert (=> b!7825015 (= e!4629107 tp!2310436)))

(declare-fun b!7825014 () Bool)

(declare-fun tp!2310433 () Bool)

(declare-fun tp!2310434 () Bool)

(assert (=> b!7825014 (= e!4629107 (and tp!2310433 tp!2310434))))

(assert (= (and b!7823672 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42418 (reg!21282 r2!6199))))) b!7825013))

(assert (= (and b!7823672 ((_ is Concat!29798) (regTwo!42418 (regOne!42418 (reg!21282 r2!6199))))) b!7825014))

(assert (= (and b!7823672 ((_ is Star!20953) (regTwo!42418 (regOne!42418 (reg!21282 r2!6199))))) b!7825015))

(assert (= (and b!7823672 ((_ is Union!20953) (regTwo!42418 (regOne!42418 (reg!21282 r2!6199))))) b!7825016))

(declare-fun b!7825017 () Bool)

(declare-fun e!4629108 () Bool)

(assert (=> b!7825017 (= e!4629108 tp_is_empty!52261)))

(assert (=> b!7823681 (= tp!2309529 e!4629108)))

(declare-fun b!7825020 () Bool)

(declare-fun tp!2310440 () Bool)

(declare-fun tp!2310442 () Bool)

(assert (=> b!7825020 (= e!4629108 (and tp!2310440 tp!2310442))))

(declare-fun b!7825019 () Bool)

(declare-fun tp!2310441 () Bool)

(assert (=> b!7825019 (= e!4629108 tp!2310441)))

(declare-fun b!7825018 () Bool)

(declare-fun tp!2310438 () Bool)

(declare-fun tp!2310439 () Bool)

(assert (=> b!7825018 (= e!4629108 (and tp!2310438 tp!2310439))))

(assert (= (and b!7823681 ((_ is ElementMatch!20953) (reg!21282 (reg!21282 (regTwo!42419 r2!6199))))) b!7825017))

(assert (= (and b!7823681 ((_ is Concat!29798) (reg!21282 (reg!21282 (regTwo!42419 r2!6199))))) b!7825018))

(assert (= (and b!7823681 ((_ is Star!20953) (reg!21282 (reg!21282 (regTwo!42419 r2!6199))))) b!7825019))

(assert (= (and b!7823681 ((_ is Union!20953) (reg!21282 (reg!21282 (regTwo!42419 r2!6199))))) b!7825020))

(declare-fun b!7825021 () Bool)

(declare-fun e!4629109 () Bool)

(assert (=> b!7825021 (= e!4629109 tp_is_empty!52261)))

(assert (=> b!7823801 (= tp!2309678 e!4629109)))

(declare-fun b!7825024 () Bool)

(declare-fun tp!2310445 () Bool)

(declare-fun tp!2310447 () Bool)

(assert (=> b!7825024 (= e!4629109 (and tp!2310445 tp!2310447))))

(declare-fun b!7825023 () Bool)

(declare-fun tp!2310446 () Bool)

(assert (=> b!7825023 (= e!4629109 tp!2310446)))

(declare-fun b!7825022 () Bool)

(declare-fun tp!2310443 () Bool)

(declare-fun tp!2310444 () Bool)

(assert (=> b!7825022 (= e!4629109 (and tp!2310443 tp!2310444))))

(assert (= (and b!7823801 ((_ is ElementMatch!20953) (reg!21282 (regOne!42419 (regOne!42419 r2!6199))))) b!7825021))

(assert (= (and b!7823801 ((_ is Concat!29798) (reg!21282 (regOne!42419 (regOne!42419 r2!6199))))) b!7825022))

(assert (= (and b!7823801 ((_ is Star!20953) (reg!21282 (regOne!42419 (regOne!42419 r2!6199))))) b!7825023))

(assert (= (and b!7823801 ((_ is Union!20953) (reg!21282 (regOne!42419 (regOne!42419 r2!6199))))) b!7825024))

(declare-fun b!7825025 () Bool)

(declare-fun e!4629110 () Bool)

(assert (=> b!7825025 (= e!4629110 tp_is_empty!52261)))

(assert (=> b!7823792 (= tp!2309665 e!4629110)))

(declare-fun b!7825028 () Bool)

(declare-fun tp!2310450 () Bool)

(declare-fun tp!2310452 () Bool)

(assert (=> b!7825028 (= e!4629110 (and tp!2310450 tp!2310452))))

(declare-fun b!7825027 () Bool)

(declare-fun tp!2310451 () Bool)

(assert (=> b!7825027 (= e!4629110 tp!2310451)))

(declare-fun b!7825026 () Bool)

(declare-fun tp!2310448 () Bool)

(declare-fun tp!2310449 () Bool)

(assert (=> b!7825026 (= e!4629110 (and tp!2310448 tp!2310449))))

(assert (= (and b!7823792 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42418 (reg!21282 r1!6261))))) b!7825025))

(assert (= (and b!7823792 ((_ is Concat!29798) (regOne!42418 (regTwo!42418 (reg!21282 r1!6261))))) b!7825026))

(assert (= (and b!7823792 ((_ is Star!20953) (regOne!42418 (regTwo!42418 (reg!21282 r1!6261))))) b!7825027))

(assert (= (and b!7823792 ((_ is Union!20953) (regOne!42418 (regTwo!42418 (reg!21282 r1!6261))))) b!7825028))

(declare-fun b!7825029 () Bool)

(declare-fun e!4629111 () Bool)

(assert (=> b!7825029 (= e!4629111 tp_is_empty!52261)))

(assert (=> b!7823792 (= tp!2309666 e!4629111)))

(declare-fun b!7825032 () Bool)

(declare-fun tp!2310455 () Bool)

(declare-fun tp!2310457 () Bool)

(assert (=> b!7825032 (= e!4629111 (and tp!2310455 tp!2310457))))

(declare-fun b!7825031 () Bool)

(declare-fun tp!2310456 () Bool)

(assert (=> b!7825031 (= e!4629111 tp!2310456)))

(declare-fun b!7825030 () Bool)

(declare-fun tp!2310453 () Bool)

(declare-fun tp!2310454 () Bool)

(assert (=> b!7825030 (= e!4629111 (and tp!2310453 tp!2310454))))

(assert (= (and b!7823792 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42418 (reg!21282 r1!6261))))) b!7825029))

(assert (= (and b!7823792 ((_ is Concat!29798) (regTwo!42418 (regTwo!42418 (reg!21282 r1!6261))))) b!7825030))

(assert (= (and b!7823792 ((_ is Star!20953) (regTwo!42418 (regTwo!42418 (reg!21282 r1!6261))))) b!7825031))

(assert (= (and b!7823792 ((_ is Union!20953) (regTwo!42418 (regTwo!42418 (reg!21282 r1!6261))))) b!7825032))

(declare-fun b!7825033 () Bool)

(declare-fun e!4629112 () Bool)

(declare-fun tp!2310458 () Bool)

(assert (=> b!7825033 (= e!4629112 (and tp_is_empty!52261 tp!2310458))))

(assert (=> b!7823683 (= tp!2309531 e!4629112)))

(assert (= (and b!7823683 ((_ is Cons!73666) (t!388525 (t!388525 (t!388525 s2Rec!453))))) b!7825033))

(declare-fun b!7825034 () Bool)

(declare-fun e!4629113 () Bool)

(assert (=> b!7825034 (= e!4629113 tp_is_empty!52261)))

(assert (=> b!7823776 (= tp!2309647 e!4629113)))

(declare-fun b!7825037 () Bool)

(declare-fun tp!2310461 () Bool)

(declare-fun tp!2310463 () Bool)

(assert (=> b!7825037 (= e!4629113 (and tp!2310461 tp!2310463))))

(declare-fun b!7825036 () Bool)

(declare-fun tp!2310462 () Bool)

(assert (=> b!7825036 (= e!4629113 tp!2310462)))

(declare-fun b!7825035 () Bool)

(declare-fun tp!2310459 () Bool)

(declare-fun tp!2310460 () Bool)

(assert (=> b!7825035 (= e!4629113 (and tp!2310459 tp!2310460))))

(assert (= (and b!7823776 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42418 (regOne!42419 r2!6199))))) b!7825034))

(assert (= (and b!7823776 ((_ is Concat!29798) (reg!21282 (regTwo!42418 (regOne!42419 r2!6199))))) b!7825035))

(assert (= (and b!7823776 ((_ is Star!20953) (reg!21282 (regTwo!42418 (regOne!42419 r2!6199))))) b!7825036))

(assert (= (and b!7823776 ((_ is Union!20953) (reg!21282 (regTwo!42418 (regOne!42419 r2!6199))))) b!7825037))

(declare-fun b!7825038 () Bool)

(declare-fun e!4629114 () Bool)

(assert (=> b!7825038 (= e!4629114 tp_is_empty!52261)))

(assert (=> b!7823810 (= tp!2309687 e!4629114)))

(declare-fun b!7825041 () Bool)

(declare-fun tp!2310466 () Bool)

(declare-fun tp!2310468 () Bool)

(assert (=> b!7825041 (= e!4629114 (and tp!2310466 tp!2310468))))

(declare-fun b!7825040 () Bool)

(declare-fun tp!2310467 () Bool)

(assert (=> b!7825040 (= e!4629114 tp!2310467)))

(declare-fun b!7825039 () Bool)

(declare-fun tp!2310464 () Bool)

(declare-fun tp!2310465 () Bool)

(assert (=> b!7825039 (= e!4629114 (and tp!2310464 tp!2310465))))

(assert (= (and b!7823810 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825038))

(assert (= (and b!7823810 ((_ is Concat!29798) (regOne!42419 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825039))

(assert (= (and b!7823810 ((_ is Star!20953) (regOne!42419 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825040))

(assert (= (and b!7823810 ((_ is Union!20953) (regOne!42419 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825041))

(declare-fun b!7825042 () Bool)

(declare-fun e!4629115 () Bool)

(assert (=> b!7825042 (= e!4629115 tp_is_empty!52261)))

(assert (=> b!7823810 (= tp!2309689 e!4629115)))

(declare-fun b!7825045 () Bool)

(declare-fun tp!2310471 () Bool)

(declare-fun tp!2310473 () Bool)

(assert (=> b!7825045 (= e!4629115 (and tp!2310471 tp!2310473))))

(declare-fun b!7825044 () Bool)

(declare-fun tp!2310472 () Bool)

(assert (=> b!7825044 (= e!4629115 tp!2310472)))

(declare-fun b!7825043 () Bool)

(declare-fun tp!2310469 () Bool)

(declare-fun tp!2310470 () Bool)

(assert (=> b!7825043 (= e!4629115 (and tp!2310469 tp!2310470))))

(assert (= (and b!7823810 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825042))

(assert (= (and b!7823810 ((_ is Concat!29798) (regTwo!42419 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825043))

(assert (= (and b!7823810 ((_ is Star!20953) (regTwo!42419 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825044))

(assert (= (and b!7823810 ((_ is Union!20953) (regTwo!42419 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825045))

(declare-fun b!7825046 () Bool)

(declare-fun e!4629116 () Bool)

(assert (=> b!7825046 (= e!4629116 tp_is_empty!52261)))

(assert (=> b!7823624 (= tp!2309458 e!4629116)))

(declare-fun b!7825049 () Bool)

(declare-fun tp!2310476 () Bool)

(declare-fun tp!2310478 () Bool)

(assert (=> b!7825049 (= e!4629116 (and tp!2310476 tp!2310478))))

(declare-fun b!7825048 () Bool)

(declare-fun tp!2310477 () Bool)

(assert (=> b!7825048 (= e!4629116 tp!2310477)))

(declare-fun b!7825047 () Bool)

(declare-fun tp!2310474 () Bool)

(declare-fun tp!2310475 () Bool)

(assert (=> b!7825047 (= e!4629116 (and tp!2310474 tp!2310475))))

(assert (= (and b!7823624 ((_ is ElementMatch!20953) (reg!21282 (regOne!42418 (regOne!42418 r2!6199))))) b!7825046))

(assert (= (and b!7823624 ((_ is Concat!29798) (reg!21282 (regOne!42418 (regOne!42418 r2!6199))))) b!7825047))

(assert (= (and b!7823624 ((_ is Star!20953) (reg!21282 (regOne!42418 (regOne!42418 r2!6199))))) b!7825048))

(assert (= (and b!7823624 ((_ is Union!20953) (reg!21282 (regOne!42418 (regOne!42418 r2!6199))))) b!7825049))

(declare-fun b!7825050 () Bool)

(declare-fun e!4629117 () Bool)

(assert (=> b!7825050 (= e!4629117 tp_is_empty!52261)))

(assert (=> b!7823735 (= tp!2309594 e!4629117)))

(declare-fun b!7825053 () Bool)

(declare-fun tp!2310481 () Bool)

(declare-fun tp!2310483 () Bool)

(assert (=> b!7825053 (= e!4629117 (and tp!2310481 tp!2310483))))

(declare-fun b!7825052 () Bool)

(declare-fun tp!2310482 () Bool)

(assert (=> b!7825052 (= e!4629117 tp!2310482)))

(declare-fun b!7825051 () Bool)

(declare-fun tp!2310479 () Bool)

(declare-fun tp!2310480 () Bool)

(assert (=> b!7825051 (= e!4629117 (and tp!2310479 tp!2310480))))

(assert (= (and b!7823735 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42419 (regOne!42418 r1!6261))))) b!7825050))

(assert (= (and b!7823735 ((_ is Concat!29798) (regOne!42419 (regOne!42419 (regOne!42418 r1!6261))))) b!7825051))

(assert (= (and b!7823735 ((_ is Star!20953) (regOne!42419 (regOne!42419 (regOne!42418 r1!6261))))) b!7825052))

(assert (= (and b!7823735 ((_ is Union!20953) (regOne!42419 (regOne!42419 (regOne!42418 r1!6261))))) b!7825053))

(declare-fun b!7825054 () Bool)

(declare-fun e!4629118 () Bool)

(assert (=> b!7825054 (= e!4629118 tp_is_empty!52261)))

(assert (=> b!7823735 (= tp!2309596 e!4629118)))

(declare-fun b!7825057 () Bool)

(declare-fun tp!2310486 () Bool)

(declare-fun tp!2310488 () Bool)

(assert (=> b!7825057 (= e!4629118 (and tp!2310486 tp!2310488))))

(declare-fun b!7825056 () Bool)

(declare-fun tp!2310487 () Bool)

(assert (=> b!7825056 (= e!4629118 tp!2310487)))

(declare-fun b!7825055 () Bool)

(declare-fun tp!2310484 () Bool)

(declare-fun tp!2310485 () Bool)

(assert (=> b!7825055 (= e!4629118 (and tp!2310484 tp!2310485))))

(assert (= (and b!7823735 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42419 (regOne!42418 r1!6261))))) b!7825054))

(assert (= (and b!7823735 ((_ is Concat!29798) (regTwo!42419 (regOne!42419 (regOne!42418 r1!6261))))) b!7825055))

(assert (= (and b!7823735 ((_ is Star!20953) (regTwo!42419 (regOne!42419 (regOne!42418 r1!6261))))) b!7825056))

(assert (= (and b!7823735 ((_ is Union!20953) (regTwo!42419 (regOne!42419 (regOne!42418 r1!6261))))) b!7825057))

(declare-fun b!7825058 () Bool)

(declare-fun e!4629119 () Bool)

(assert (=> b!7825058 (= e!4629119 tp_is_empty!52261)))

(assert (=> b!7823633 (= tp!2309467 e!4629119)))

(declare-fun b!7825061 () Bool)

(declare-fun tp!2310491 () Bool)

(declare-fun tp!2310493 () Bool)

(assert (=> b!7825061 (= e!4629119 (and tp!2310491 tp!2310493))))

(declare-fun b!7825060 () Bool)

(declare-fun tp!2310492 () Bool)

(assert (=> b!7825060 (= e!4629119 tp!2310492)))

(declare-fun b!7825059 () Bool)

(declare-fun tp!2310489 () Bool)

(declare-fun tp!2310490 () Bool)

(assert (=> b!7825059 (= e!4629119 (and tp!2310489 tp!2310490))))

(assert (= (and b!7823633 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825058))

(assert (= (and b!7823633 ((_ is Concat!29798) (regOne!42419 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825059))

(assert (= (and b!7823633 ((_ is Star!20953) (regOne!42419 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825060))

(assert (= (and b!7823633 ((_ is Union!20953) (regOne!42419 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825061))

(declare-fun b!7825062 () Bool)

(declare-fun e!4629120 () Bool)

(assert (=> b!7825062 (= e!4629120 tp_is_empty!52261)))

(assert (=> b!7823633 (= tp!2309469 e!4629120)))

(declare-fun b!7825065 () Bool)

(declare-fun tp!2310496 () Bool)

(declare-fun tp!2310498 () Bool)

(assert (=> b!7825065 (= e!4629120 (and tp!2310496 tp!2310498))))

(declare-fun b!7825064 () Bool)

(declare-fun tp!2310497 () Bool)

(assert (=> b!7825064 (= e!4629120 tp!2310497)))

(declare-fun b!7825063 () Bool)

(declare-fun tp!2310494 () Bool)

(declare-fun tp!2310495 () Bool)

(assert (=> b!7825063 (= e!4629120 (and tp!2310494 tp!2310495))))

(assert (= (and b!7823633 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825062))

(assert (= (and b!7823633 ((_ is Concat!29798) (regTwo!42419 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825063))

(assert (= (and b!7823633 ((_ is Star!20953) (regTwo!42419 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825064))

(assert (= (and b!7823633 ((_ is Union!20953) (regTwo!42419 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825065))

(declare-fun b!7825066 () Bool)

(declare-fun e!4629121 () Bool)

(assert (=> b!7825066 (= e!4629121 tp_is_empty!52261)))

(assert (=> b!7823726 (= tp!2309585 e!4629121)))

(declare-fun b!7825069 () Bool)

(declare-fun tp!2310501 () Bool)

(declare-fun tp!2310503 () Bool)

(assert (=> b!7825069 (= e!4629121 (and tp!2310501 tp!2310503))))

(declare-fun b!7825068 () Bool)

(declare-fun tp!2310502 () Bool)

(assert (=> b!7825068 (= e!4629121 tp!2310502)))

(declare-fun b!7825067 () Bool)

(declare-fun tp!2310499 () Bool)

(declare-fun tp!2310500 () Bool)

(assert (=> b!7825067 (= e!4629121 (and tp!2310499 tp!2310500))))

(assert (= (and b!7823726 ((_ is ElementMatch!20953) (reg!21282 (regOne!42419 (regTwo!42418 r2!6199))))) b!7825066))

(assert (= (and b!7823726 ((_ is Concat!29798) (reg!21282 (regOne!42419 (regTwo!42418 r2!6199))))) b!7825067))

(assert (= (and b!7823726 ((_ is Star!20953) (reg!21282 (regOne!42419 (regTwo!42418 r2!6199))))) b!7825068))

(assert (= (and b!7823726 ((_ is Union!20953) (reg!21282 (regOne!42419 (regTwo!42418 r2!6199))))) b!7825069))

(declare-fun b!7825070 () Bool)

(declare-fun e!4629122 () Bool)

(assert (=> b!7825070 (= e!4629122 tp_is_empty!52261)))

(assert (=> b!7823615 (= tp!2309445 e!4629122)))

(declare-fun b!7825073 () Bool)

(declare-fun tp!2310506 () Bool)

(declare-fun tp!2310508 () Bool)

(assert (=> b!7825073 (= e!4629122 (and tp!2310506 tp!2310508))))

(declare-fun b!7825072 () Bool)

(declare-fun tp!2310507 () Bool)

(assert (=> b!7825072 (= e!4629122 tp!2310507)))

(declare-fun b!7825071 () Bool)

(declare-fun tp!2310504 () Bool)

(declare-fun tp!2310505 () Bool)

(assert (=> b!7825071 (= e!4629122 (and tp!2310504 tp!2310505))))

(assert (= (and b!7823615 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42419 (reg!21282 r1!6261))))) b!7825070))

(assert (= (and b!7823615 ((_ is Concat!29798) (regOne!42418 (regTwo!42419 (reg!21282 r1!6261))))) b!7825071))

(assert (= (and b!7823615 ((_ is Star!20953) (regOne!42418 (regTwo!42419 (reg!21282 r1!6261))))) b!7825072))

(assert (= (and b!7823615 ((_ is Union!20953) (regOne!42418 (regTwo!42419 (reg!21282 r1!6261))))) b!7825073))

(declare-fun b!7825074 () Bool)

(declare-fun e!4629123 () Bool)

(assert (=> b!7825074 (= e!4629123 tp_is_empty!52261)))

(assert (=> b!7823615 (= tp!2309446 e!4629123)))

(declare-fun b!7825077 () Bool)

(declare-fun tp!2310511 () Bool)

(declare-fun tp!2310513 () Bool)

(assert (=> b!7825077 (= e!4629123 (and tp!2310511 tp!2310513))))

(declare-fun b!7825076 () Bool)

(declare-fun tp!2310512 () Bool)

(assert (=> b!7825076 (= e!4629123 tp!2310512)))

(declare-fun b!7825075 () Bool)

(declare-fun tp!2310509 () Bool)

(declare-fun tp!2310510 () Bool)

(assert (=> b!7825075 (= e!4629123 (and tp!2310509 tp!2310510))))

(assert (= (and b!7823615 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42419 (reg!21282 r1!6261))))) b!7825074))

(assert (= (and b!7823615 ((_ is Concat!29798) (regTwo!42418 (regTwo!42419 (reg!21282 r1!6261))))) b!7825075))

(assert (= (and b!7823615 ((_ is Star!20953) (regTwo!42418 (regTwo!42419 (reg!21282 r1!6261))))) b!7825076))

(assert (= (and b!7823615 ((_ is Union!20953) (regTwo!42418 (regTwo!42419 (reg!21282 r1!6261))))) b!7825077))

(declare-fun b!7825078 () Bool)

(declare-fun e!4629124 () Bool)

(assert (=> b!7825078 (= e!4629124 tp_is_empty!52261)))

(assert (=> b!7823717 (= tp!2309572 e!4629124)))

(declare-fun b!7825081 () Bool)

(declare-fun tp!2310516 () Bool)

(declare-fun tp!2310518 () Bool)

(assert (=> b!7825081 (= e!4629124 (and tp!2310516 tp!2310518))))

(declare-fun b!7825080 () Bool)

(declare-fun tp!2310517 () Bool)

(assert (=> b!7825080 (= e!4629124 tp!2310517)))

(declare-fun b!7825079 () Bool)

(declare-fun tp!2310514 () Bool)

(declare-fun tp!2310515 () Bool)

(assert (=> b!7825079 (= e!4629124 (and tp!2310514 tp!2310515))))

(assert (= (and b!7823717 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7825078))

(assert (= (and b!7823717 ((_ is Concat!29798) (regOne!42418 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7825079))

(assert (= (and b!7823717 ((_ is Star!20953) (regOne!42418 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7825080))

(assert (= (and b!7823717 ((_ is Union!20953) (regOne!42418 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7825081))

(declare-fun b!7825082 () Bool)

(declare-fun e!4629125 () Bool)

(assert (=> b!7825082 (= e!4629125 tp_is_empty!52261)))

(assert (=> b!7823717 (= tp!2309573 e!4629125)))

(declare-fun b!7825085 () Bool)

(declare-fun tp!2310521 () Bool)

(declare-fun tp!2310523 () Bool)

(assert (=> b!7825085 (= e!4629125 (and tp!2310521 tp!2310523))))

(declare-fun b!7825084 () Bool)

(declare-fun tp!2310522 () Bool)

(assert (=> b!7825084 (= e!4629125 tp!2310522)))

(declare-fun b!7825083 () Bool)

(declare-fun tp!2310519 () Bool)

(declare-fun tp!2310520 () Bool)

(assert (=> b!7825083 (= e!4629125 (and tp!2310519 tp!2310520))))

(assert (= (and b!7823717 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7825082))

(assert (= (and b!7823717 ((_ is Concat!29798) (regTwo!42418 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7825083))

(assert (= (and b!7823717 ((_ is Star!20953) (regTwo!42418 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7825084))

(assert (= (and b!7823717 ((_ is Union!20953) (regTwo!42418 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7825085))

(declare-fun b!7825086 () Bool)

(declare-fun e!4629126 () Bool)

(assert (=> b!7825086 (= e!4629126 tp_is_empty!52261)))

(assert (=> b!7823767 (= tp!2309634 e!4629126)))

(declare-fun b!7825089 () Bool)

(declare-fun tp!2310526 () Bool)

(declare-fun tp!2310528 () Bool)

(assert (=> b!7825089 (= e!4629126 (and tp!2310526 tp!2310528))))

(declare-fun b!7825088 () Bool)

(declare-fun tp!2310527 () Bool)

(assert (=> b!7825088 (= e!4629126 tp!2310527)))

(declare-fun b!7825087 () Bool)

(declare-fun tp!2310524 () Bool)

(declare-fun tp!2310525 () Bool)

(assert (=> b!7825087 (= e!4629126 (and tp!2310524 tp!2310525))))

(assert (= (and b!7823767 ((_ is ElementMatch!20953) (regOne!42418 (reg!21282 (regOne!42419 r2!6199))))) b!7825086))

(assert (= (and b!7823767 ((_ is Concat!29798) (regOne!42418 (reg!21282 (regOne!42419 r2!6199))))) b!7825087))

(assert (= (and b!7823767 ((_ is Star!20953) (regOne!42418 (reg!21282 (regOne!42419 r2!6199))))) b!7825088))

(assert (= (and b!7823767 ((_ is Union!20953) (regOne!42418 (reg!21282 (regOne!42419 r2!6199))))) b!7825089))

(declare-fun b!7825090 () Bool)

(declare-fun e!4629127 () Bool)

(assert (=> b!7825090 (= e!4629127 tp_is_empty!52261)))

(assert (=> b!7823767 (= tp!2309635 e!4629127)))

(declare-fun b!7825093 () Bool)

(declare-fun tp!2310531 () Bool)

(declare-fun tp!2310533 () Bool)

(assert (=> b!7825093 (= e!4629127 (and tp!2310531 tp!2310533))))

(declare-fun b!7825092 () Bool)

(declare-fun tp!2310532 () Bool)

(assert (=> b!7825092 (= e!4629127 tp!2310532)))

(declare-fun b!7825091 () Bool)

(declare-fun tp!2310529 () Bool)

(declare-fun tp!2310530 () Bool)

(assert (=> b!7825091 (= e!4629127 (and tp!2310529 tp!2310530))))

(assert (= (and b!7823767 ((_ is ElementMatch!20953) (regTwo!42418 (reg!21282 (regOne!42419 r2!6199))))) b!7825090))

(assert (= (and b!7823767 ((_ is Concat!29798) (regTwo!42418 (reg!21282 (regOne!42419 r2!6199))))) b!7825091))

(assert (= (and b!7823767 ((_ is Star!20953) (regTwo!42418 (reg!21282 (regOne!42419 r2!6199))))) b!7825092))

(assert (= (and b!7823767 ((_ is Union!20953) (regTwo!42418 (reg!21282 (regOne!42419 r2!6199))))) b!7825093))

(declare-fun b!7825094 () Bool)

(declare-fun e!4629128 () Bool)

(assert (=> b!7825094 (= e!4629128 tp_is_empty!52261)))

(assert (=> b!7823760 (= tp!2309625 e!4629128)))

(declare-fun b!7825097 () Bool)

(declare-fun tp!2310536 () Bool)

(declare-fun tp!2310538 () Bool)

(assert (=> b!7825097 (= e!4629128 (and tp!2310536 tp!2310538))))

(declare-fun b!7825096 () Bool)

(declare-fun tp!2310537 () Bool)

(assert (=> b!7825096 (= e!4629128 tp!2310537)))

(declare-fun b!7825095 () Bool)

(declare-fun tp!2310534 () Bool)

(declare-fun tp!2310535 () Bool)

(assert (=> b!7825095 (= e!4629128 (and tp!2310534 tp!2310535))))

(assert (= (and b!7823760 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42418 (regOne!42419 r1!6261))))) b!7825094))

(assert (= (and b!7823760 ((_ is Concat!29798) (regOne!42419 (regOne!42418 (regOne!42419 r1!6261))))) b!7825095))

(assert (= (and b!7823760 ((_ is Star!20953) (regOne!42419 (regOne!42418 (regOne!42419 r1!6261))))) b!7825096))

(assert (= (and b!7823760 ((_ is Union!20953) (regOne!42419 (regOne!42418 (regOne!42419 r1!6261))))) b!7825097))

(declare-fun b!7825098 () Bool)

(declare-fun e!4629129 () Bool)

(assert (=> b!7825098 (= e!4629129 tp_is_empty!52261)))

(assert (=> b!7823760 (= tp!2309627 e!4629129)))

(declare-fun b!7825101 () Bool)

(declare-fun tp!2310541 () Bool)

(declare-fun tp!2310543 () Bool)

(assert (=> b!7825101 (= e!4629129 (and tp!2310541 tp!2310543))))

(declare-fun b!7825100 () Bool)

(declare-fun tp!2310542 () Bool)

(assert (=> b!7825100 (= e!4629129 tp!2310542)))

(declare-fun b!7825099 () Bool)

(declare-fun tp!2310539 () Bool)

(declare-fun tp!2310540 () Bool)

(assert (=> b!7825099 (= e!4629129 (and tp!2310539 tp!2310540))))

(assert (= (and b!7823760 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42418 (regOne!42419 r1!6261))))) b!7825098))

(assert (= (and b!7823760 ((_ is Concat!29798) (regTwo!42419 (regOne!42418 (regOne!42419 r1!6261))))) b!7825099))

(assert (= (and b!7823760 ((_ is Star!20953) (regTwo!42419 (regOne!42418 (regOne!42419 r1!6261))))) b!7825100))

(assert (= (and b!7823760 ((_ is Union!20953) (regTwo!42419 (regOne!42418 (regOne!42419 r1!6261))))) b!7825101))

(declare-fun b!7825102 () Bool)

(declare-fun e!4629130 () Bool)

(assert (=> b!7825102 (= e!4629130 tp_is_empty!52261)))

(assert (=> b!7823667 (= tp!2309510 e!4629130)))

(declare-fun b!7825105 () Bool)

(declare-fun tp!2310546 () Bool)

(declare-fun tp!2310548 () Bool)

(assert (=> b!7825105 (= e!4629130 (and tp!2310546 tp!2310548))))

(declare-fun b!7825104 () Bool)

(declare-fun tp!2310547 () Bool)

(assert (=> b!7825104 (= e!4629130 tp!2310547)))

(declare-fun b!7825103 () Bool)

(declare-fun tp!2310544 () Bool)

(declare-fun tp!2310545 () Bool)

(assert (=> b!7825103 (= e!4629130 (and tp!2310544 tp!2310545))))

(assert (= (and b!7823667 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42419 (regOne!42418 r2!6199))))) b!7825102))

(assert (= (and b!7823667 ((_ is Concat!29798) (regOne!42418 (regTwo!42419 (regOne!42418 r2!6199))))) b!7825103))

(assert (= (and b!7823667 ((_ is Star!20953) (regOne!42418 (regTwo!42419 (regOne!42418 r2!6199))))) b!7825104))

(assert (= (and b!7823667 ((_ is Union!20953) (regOne!42418 (regTwo!42419 (regOne!42418 r2!6199))))) b!7825105))

(declare-fun b!7825106 () Bool)

(declare-fun e!4629131 () Bool)

(assert (=> b!7825106 (= e!4629131 tp_is_empty!52261)))

(assert (=> b!7823667 (= tp!2309511 e!4629131)))

(declare-fun b!7825109 () Bool)

(declare-fun tp!2310551 () Bool)

(declare-fun tp!2310553 () Bool)

(assert (=> b!7825109 (= e!4629131 (and tp!2310551 tp!2310553))))

(declare-fun b!7825108 () Bool)

(declare-fun tp!2310552 () Bool)

(assert (=> b!7825108 (= e!4629131 tp!2310552)))

(declare-fun b!7825107 () Bool)

(declare-fun tp!2310549 () Bool)

(declare-fun tp!2310550 () Bool)

(assert (=> b!7825107 (= e!4629131 (and tp!2310549 tp!2310550))))

(assert (= (and b!7823667 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42419 (regOne!42418 r2!6199))))) b!7825106))

(assert (= (and b!7823667 ((_ is Concat!29798) (regTwo!42418 (regTwo!42419 (regOne!42418 r2!6199))))) b!7825107))

(assert (= (and b!7823667 ((_ is Star!20953) (regTwo!42418 (regTwo!42419 (regOne!42418 r2!6199))))) b!7825108))

(assert (= (and b!7823667 ((_ is Union!20953) (regTwo!42418 (regTwo!42419 (regOne!42418 r2!6199))))) b!7825109))

(declare-fun b!7825110 () Bool)

(declare-fun e!4629132 () Bool)

(declare-fun tp!2310554 () Bool)

(assert (=> b!7825110 (= e!4629132 (and tp_is_empty!52261 tp!2310554))))

(assert (=> b!7823778 (= tp!2309649 e!4629132)))

(assert (= (and b!7823778 ((_ is Cons!73666) (t!388525 (t!388525 (t!388525 s1Rec!453))))) b!7825110))

(declare-fun b!7825111 () Bool)

(declare-fun e!4629133 () Bool)

(assert (=> b!7825111 (= e!4629133 tp_is_empty!52261)))

(assert (=> b!7823694 (= tp!2309545 e!4629133)))

(declare-fun b!7825114 () Bool)

(declare-fun tp!2310557 () Bool)

(declare-fun tp!2310559 () Bool)

(assert (=> b!7825114 (= e!4629133 (and tp!2310557 tp!2310559))))

(declare-fun b!7825113 () Bool)

(declare-fun tp!2310558 () Bool)

(assert (=> b!7825113 (= e!4629133 tp!2310558)))

(declare-fun b!7825112 () Bool)

(declare-fun tp!2310555 () Bool)

(declare-fun tp!2310556 () Bool)

(assert (=> b!7825112 (= e!4629133 (and tp!2310555 tp!2310556))))

(assert (= (and b!7823694 ((_ is ElementMatch!20953) (reg!21282 (reg!21282 (regOne!42418 r1!6261))))) b!7825111))

(assert (= (and b!7823694 ((_ is Concat!29798) (reg!21282 (reg!21282 (regOne!42418 r1!6261))))) b!7825112))

(assert (= (and b!7823694 ((_ is Star!20953) (reg!21282 (reg!21282 (regOne!42418 r1!6261))))) b!7825113))

(assert (= (and b!7823694 ((_ is Union!20953) (reg!21282 (reg!21282 (regOne!42418 r1!6261))))) b!7825114))

(declare-fun b!7825115 () Bool)

(declare-fun e!4629134 () Bool)

(assert (=> b!7825115 (= e!4629134 tp_is_empty!52261)))

(assert (=> b!7823703 (= tp!2309554 e!4629134)))

(declare-fun b!7825118 () Bool)

(declare-fun tp!2310562 () Bool)

(declare-fun tp!2310564 () Bool)

(assert (=> b!7825118 (= e!4629134 (and tp!2310562 tp!2310564))))

(declare-fun b!7825117 () Bool)

(declare-fun tp!2310563 () Bool)

(assert (=> b!7825117 (= e!4629134 tp!2310563)))

(declare-fun b!7825116 () Bool)

(declare-fun tp!2310560 () Bool)

(declare-fun tp!2310561 () Bool)

(assert (=> b!7825116 (= e!4629134 (and tp!2310560 tp!2310561))))

(assert (= (and b!7823703 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42419 (reg!21282 r2!6199))))) b!7825115))

(assert (= (and b!7823703 ((_ is Concat!29798) (regOne!42419 (regTwo!42419 (reg!21282 r2!6199))))) b!7825116))

(assert (= (and b!7823703 ((_ is Star!20953) (regOne!42419 (regTwo!42419 (reg!21282 r2!6199))))) b!7825117))

(assert (= (and b!7823703 ((_ is Union!20953) (regOne!42419 (regTwo!42419 (reg!21282 r2!6199))))) b!7825118))

(declare-fun b!7825119 () Bool)

(declare-fun e!4629135 () Bool)

(assert (=> b!7825119 (= e!4629135 tp_is_empty!52261)))

(assert (=> b!7823703 (= tp!2309556 e!4629135)))

(declare-fun b!7825122 () Bool)

(declare-fun tp!2310567 () Bool)

(declare-fun tp!2310569 () Bool)

(assert (=> b!7825122 (= e!4629135 (and tp!2310567 tp!2310569))))

(declare-fun b!7825121 () Bool)

(declare-fun tp!2310568 () Bool)

(assert (=> b!7825121 (= e!4629135 tp!2310568)))

(declare-fun b!7825120 () Bool)

(declare-fun tp!2310565 () Bool)

(declare-fun tp!2310566 () Bool)

(assert (=> b!7825120 (= e!4629135 (and tp!2310565 tp!2310566))))

(assert (= (and b!7823703 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42419 (reg!21282 r2!6199))))) b!7825119))

(assert (= (and b!7823703 ((_ is Concat!29798) (regTwo!42419 (regTwo!42419 (reg!21282 r2!6199))))) b!7825120))

(assert (= (and b!7823703 ((_ is Star!20953) (regTwo!42419 (regTwo!42419 (reg!21282 r2!6199))))) b!7825121))

(assert (= (and b!7823703 ((_ is Union!20953) (regTwo!42419 (regTwo!42419 (reg!21282 r2!6199))))) b!7825122))

(declare-fun b!7825123 () Bool)

(declare-fun e!4629136 () Bool)

(assert (=> b!7825123 (= e!4629136 tp_is_empty!52261)))

(assert (=> b!7823678 (= tp!2309523 e!4629136)))

(declare-fun b!7825126 () Bool)

(declare-fun tp!2310572 () Bool)

(declare-fun tp!2310574 () Bool)

(assert (=> b!7825126 (= e!4629136 (and tp!2310572 tp!2310574))))

(declare-fun b!7825125 () Bool)

(declare-fun tp!2310573 () Bool)

(assert (=> b!7825125 (= e!4629136 tp!2310573)))

(declare-fun b!7825124 () Bool)

(declare-fun tp!2310570 () Bool)

(declare-fun tp!2310571 () Bool)

(assert (=> b!7825124 (= e!4629136 (and tp!2310570 tp!2310571))))

(assert (= (and b!7823678 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42418 (reg!21282 r2!6199))))) b!7825123))

(assert (= (and b!7823678 ((_ is Concat!29798) (regOne!42419 (regTwo!42418 (reg!21282 r2!6199))))) b!7825124))

(assert (= (and b!7823678 ((_ is Star!20953) (regOne!42419 (regTwo!42418 (reg!21282 r2!6199))))) b!7825125))

(assert (= (and b!7823678 ((_ is Union!20953) (regOne!42419 (regTwo!42418 (reg!21282 r2!6199))))) b!7825126))

(declare-fun b!7825127 () Bool)

(declare-fun e!4629137 () Bool)

(assert (=> b!7825127 (= e!4629137 tp_is_empty!52261)))

(assert (=> b!7823678 (= tp!2309525 e!4629137)))

(declare-fun b!7825130 () Bool)

(declare-fun tp!2310577 () Bool)

(declare-fun tp!2310579 () Bool)

(assert (=> b!7825130 (= e!4629137 (and tp!2310577 tp!2310579))))

(declare-fun b!7825129 () Bool)

(declare-fun tp!2310578 () Bool)

(assert (=> b!7825129 (= e!4629137 tp!2310578)))

(declare-fun b!7825128 () Bool)

(declare-fun tp!2310575 () Bool)

(declare-fun tp!2310576 () Bool)

(assert (=> b!7825128 (= e!4629137 (and tp!2310575 tp!2310576))))

(assert (= (and b!7823678 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42418 (reg!21282 r2!6199))))) b!7825127))

(assert (= (and b!7823678 ((_ is Concat!29798) (regTwo!42419 (regTwo!42418 (reg!21282 r2!6199))))) b!7825128))

(assert (= (and b!7823678 ((_ is Star!20953) (regTwo!42419 (regTwo!42418 (reg!21282 r2!6199))))) b!7825129))

(assert (= (and b!7823678 ((_ is Union!20953) (regTwo!42419 (regTwo!42418 (reg!21282 r2!6199))))) b!7825130))

(declare-fun b!7825131 () Bool)

(declare-fun e!4629138 () Bool)

(assert (=> b!7825131 (= e!4629138 tp_is_empty!52261)))

(assert (=> b!7823685 (= tp!2309532 e!4629138)))

(declare-fun b!7825134 () Bool)

(declare-fun tp!2310582 () Bool)

(declare-fun tp!2310584 () Bool)

(assert (=> b!7825134 (= e!4629138 (and tp!2310582 tp!2310584))))

(declare-fun b!7825133 () Bool)

(declare-fun tp!2310583 () Bool)

(assert (=> b!7825133 (= e!4629138 tp!2310583)))

(declare-fun b!7825132 () Bool)

(declare-fun tp!2310580 () Bool)

(declare-fun tp!2310581 () Bool)

(assert (=> b!7825132 (= e!4629138 (and tp!2310580 tp!2310581))))

(assert (= (and b!7823685 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42418 (regTwo!42419 r2!6199))))) b!7825131))

(assert (= (and b!7823685 ((_ is Concat!29798) (regOne!42418 (regOne!42418 (regTwo!42419 r2!6199))))) b!7825132))

(assert (= (and b!7823685 ((_ is Star!20953) (regOne!42418 (regOne!42418 (regTwo!42419 r2!6199))))) b!7825133))

(assert (= (and b!7823685 ((_ is Union!20953) (regOne!42418 (regOne!42418 (regTwo!42419 r2!6199))))) b!7825134))

(declare-fun b!7825135 () Bool)

(declare-fun e!4629139 () Bool)

(assert (=> b!7825135 (= e!4629139 tp_is_empty!52261)))

(assert (=> b!7823685 (= tp!2309533 e!4629139)))

(declare-fun b!7825138 () Bool)

(declare-fun tp!2310587 () Bool)

(declare-fun tp!2310589 () Bool)

(assert (=> b!7825138 (= e!4629139 (and tp!2310587 tp!2310589))))

(declare-fun b!7825137 () Bool)

(declare-fun tp!2310588 () Bool)

(assert (=> b!7825137 (= e!4629139 tp!2310588)))

(declare-fun b!7825136 () Bool)

(declare-fun tp!2310585 () Bool)

(declare-fun tp!2310586 () Bool)

(assert (=> b!7825136 (= e!4629139 (and tp!2310585 tp!2310586))))

(assert (= (and b!7823685 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42418 (regTwo!42419 r2!6199))))) b!7825135))

(assert (= (and b!7823685 ((_ is Concat!29798) (regTwo!42418 (regOne!42418 (regTwo!42419 r2!6199))))) b!7825136))

(assert (= (and b!7823685 ((_ is Star!20953) (regTwo!42418 (regOne!42418 (regTwo!42419 r2!6199))))) b!7825137))

(assert (= (and b!7823685 ((_ is Union!20953) (regTwo!42418 (regOne!42418 (regTwo!42419 r2!6199))))) b!7825138))

(declare-fun b!7825139 () Bool)

(declare-fun e!4629140 () Bool)

(assert (=> b!7825139 (= e!4629140 tp_is_empty!52261)))

(assert (=> b!7823812 (= tp!2309690 e!4629140)))

(declare-fun b!7825142 () Bool)

(declare-fun tp!2310592 () Bool)

(declare-fun tp!2310594 () Bool)

(assert (=> b!7825142 (= e!4629140 (and tp!2310592 tp!2310594))))

(declare-fun b!7825141 () Bool)

(declare-fun tp!2310593 () Bool)

(assert (=> b!7825141 (= e!4629140 tp!2310593)))

(declare-fun b!7825140 () Bool)

(declare-fun tp!2310590 () Bool)

(declare-fun tp!2310591 () Bool)

(assert (=> b!7825140 (= e!4629140 (and tp!2310590 tp!2310591))))

(assert (= (and b!7823812 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7825139))

(assert (= (and b!7823812 ((_ is Concat!29798) (regOne!42418 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7825140))

(assert (= (and b!7823812 ((_ is Star!20953) (regOne!42418 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7825141))

(assert (= (and b!7823812 ((_ is Union!20953) (regOne!42418 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7825142))

(declare-fun b!7825143 () Bool)

(declare-fun e!4629141 () Bool)

(assert (=> b!7825143 (= e!4629141 tp_is_empty!52261)))

(assert (=> b!7823812 (= tp!2309691 e!4629141)))

(declare-fun b!7825146 () Bool)

(declare-fun tp!2310597 () Bool)

(declare-fun tp!2310599 () Bool)

(assert (=> b!7825146 (= e!4629141 (and tp!2310597 tp!2310599))))

(declare-fun b!7825145 () Bool)

(declare-fun tp!2310598 () Bool)

(assert (=> b!7825145 (= e!4629141 tp!2310598)))

(declare-fun b!7825144 () Bool)

(declare-fun tp!2310595 () Bool)

(declare-fun tp!2310596 () Bool)

(assert (=> b!7825144 (= e!4629141 (and tp!2310595 tp!2310596))))

(assert (= (and b!7823812 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7825143))

(assert (= (and b!7823812 ((_ is Concat!29798) (regTwo!42418 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7825144))

(assert (= (and b!7823812 ((_ is Star!20953) (regTwo!42418 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7825145))

(assert (= (and b!7823812 ((_ is Union!20953) (regTwo!42418 (regTwo!42418 (regTwo!42418 r1!6261))))) b!7825146))

(declare-fun b!7825147 () Bool)

(declare-fun e!4629142 () Bool)

(assert (=> b!7825147 (= e!4629142 tp_is_empty!52261)))

(assert (=> b!7823737 (= tp!2309597 e!4629142)))

(declare-fun b!7825150 () Bool)

(declare-fun tp!2310602 () Bool)

(declare-fun tp!2310604 () Bool)

(assert (=> b!7825150 (= e!4629142 (and tp!2310602 tp!2310604))))

(declare-fun b!7825149 () Bool)

(declare-fun tp!2310603 () Bool)

(assert (=> b!7825149 (= e!4629142 tp!2310603)))

(declare-fun b!7825148 () Bool)

(declare-fun tp!2310600 () Bool)

(declare-fun tp!2310601 () Bool)

(assert (=> b!7825148 (= e!4629142 (and tp!2310600 tp!2310601))))

(assert (= (and b!7823737 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42419 (regOne!42418 r1!6261))))) b!7825147))

(assert (= (and b!7823737 ((_ is Concat!29798) (regOne!42418 (regTwo!42419 (regOne!42418 r1!6261))))) b!7825148))

(assert (= (and b!7823737 ((_ is Star!20953) (regOne!42418 (regTwo!42419 (regOne!42418 r1!6261))))) b!7825149))

(assert (= (and b!7823737 ((_ is Union!20953) (regOne!42418 (regTwo!42419 (regOne!42418 r1!6261))))) b!7825150))

(declare-fun b!7825151 () Bool)

(declare-fun e!4629143 () Bool)

(assert (=> b!7825151 (= e!4629143 tp_is_empty!52261)))

(assert (=> b!7823737 (= tp!2309598 e!4629143)))

(declare-fun b!7825154 () Bool)

(declare-fun tp!2310607 () Bool)

(declare-fun tp!2310609 () Bool)

(assert (=> b!7825154 (= e!4629143 (and tp!2310607 tp!2310609))))

(declare-fun b!7825153 () Bool)

(declare-fun tp!2310608 () Bool)

(assert (=> b!7825153 (= e!4629143 tp!2310608)))

(declare-fun b!7825152 () Bool)

(declare-fun tp!2310605 () Bool)

(declare-fun tp!2310606 () Bool)

(assert (=> b!7825152 (= e!4629143 (and tp!2310605 tp!2310606))))

(assert (= (and b!7823737 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42419 (regOne!42418 r1!6261))))) b!7825151))

(assert (= (and b!7823737 ((_ is Concat!29798) (regTwo!42418 (regTwo!42419 (regOne!42418 r1!6261))))) b!7825152))

(assert (= (and b!7823737 ((_ is Star!20953) (regTwo!42418 (regTwo!42419 (regOne!42418 r1!6261))))) b!7825153))

(assert (= (and b!7823737 ((_ is Union!20953) (regTwo!42418 (regTwo!42419 (regOne!42418 r1!6261))))) b!7825154))

(declare-fun b!7825155 () Bool)

(declare-fun e!4629144 () Bool)

(assert (=> b!7825155 (= e!4629144 tp_is_empty!52261)))

(assert (=> b!7823635 (= tp!2309470 e!4629144)))

(declare-fun b!7825158 () Bool)

(declare-fun tp!2310612 () Bool)

(declare-fun tp!2310614 () Bool)

(assert (=> b!7825158 (= e!4629144 (and tp!2310612 tp!2310614))))

(declare-fun b!7825157 () Bool)

(declare-fun tp!2310613 () Bool)

(assert (=> b!7825157 (= e!4629144 tp!2310613)))

(declare-fun b!7825156 () Bool)

(declare-fun tp!2310610 () Bool)

(declare-fun tp!2310611 () Bool)

(assert (=> b!7825156 (= e!4629144 (and tp!2310610 tp!2310611))))

(assert (= (and b!7823635 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7825155))

(assert (= (and b!7823635 ((_ is Concat!29798) (regOne!42418 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7825156))

(assert (= (and b!7823635 ((_ is Star!20953) (regOne!42418 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7825157))

(assert (= (and b!7823635 ((_ is Union!20953) (regOne!42418 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7825158))

(declare-fun b!7825159 () Bool)

(declare-fun e!4629145 () Bool)

(assert (=> b!7825159 (= e!4629145 tp_is_empty!52261)))

(assert (=> b!7823635 (= tp!2309471 e!4629145)))

(declare-fun b!7825162 () Bool)

(declare-fun tp!2310617 () Bool)

(declare-fun tp!2310619 () Bool)

(assert (=> b!7825162 (= e!4629145 (and tp!2310617 tp!2310619))))

(declare-fun b!7825161 () Bool)

(declare-fun tp!2310618 () Bool)

(assert (=> b!7825161 (= e!4629145 tp!2310618)))

(declare-fun b!7825160 () Bool)

(declare-fun tp!2310615 () Bool)

(declare-fun tp!2310616 () Bool)

(assert (=> b!7825160 (= e!4629145 (and tp!2310615 tp!2310616))))

(assert (= (and b!7823635 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7825159))

(assert (= (and b!7823635 ((_ is Concat!29798) (regTwo!42418 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7825160))

(assert (= (and b!7823635 ((_ is Star!20953) (regTwo!42418 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7825161))

(assert (= (and b!7823635 ((_ is Union!20953) (regTwo!42418 (regTwo!42419 (regTwo!42418 r1!6261))))) b!7825162))

(declare-fun b!7825163 () Bool)

(declare-fun e!4629146 () Bool)

(assert (=> b!7825163 (= e!4629146 tp_is_empty!52261)))

(assert (=> b!7823762 (= tp!2309628 e!4629146)))

(declare-fun b!7825166 () Bool)

(declare-fun tp!2310622 () Bool)

(declare-fun tp!2310624 () Bool)

(assert (=> b!7825166 (= e!4629146 (and tp!2310622 tp!2310624))))

(declare-fun b!7825165 () Bool)

(declare-fun tp!2310623 () Bool)

(assert (=> b!7825165 (= e!4629146 tp!2310623)))

(declare-fun b!7825164 () Bool)

(declare-fun tp!2310620 () Bool)

(declare-fun tp!2310621 () Bool)

(assert (=> b!7825164 (= e!4629146 (and tp!2310620 tp!2310621))))

(assert (= (and b!7823762 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42418 (regOne!42419 r1!6261))))) b!7825163))

(assert (= (and b!7823762 ((_ is Concat!29798) (regOne!42418 (regTwo!42418 (regOne!42419 r1!6261))))) b!7825164))

(assert (= (and b!7823762 ((_ is Star!20953) (regOne!42418 (regTwo!42418 (regOne!42419 r1!6261))))) b!7825165))

(assert (= (and b!7823762 ((_ is Union!20953) (regOne!42418 (regTwo!42418 (regOne!42419 r1!6261))))) b!7825166))

(declare-fun b!7825167 () Bool)

(declare-fun e!4629147 () Bool)

(assert (=> b!7825167 (= e!4629147 tp_is_empty!52261)))

(assert (=> b!7823762 (= tp!2309629 e!4629147)))

(declare-fun b!7825170 () Bool)

(declare-fun tp!2310627 () Bool)

(declare-fun tp!2310629 () Bool)

(assert (=> b!7825170 (= e!4629147 (and tp!2310627 tp!2310629))))

(declare-fun b!7825169 () Bool)

(declare-fun tp!2310628 () Bool)

(assert (=> b!7825169 (= e!4629147 tp!2310628)))

(declare-fun b!7825168 () Bool)

(declare-fun tp!2310625 () Bool)

(declare-fun tp!2310626 () Bool)

(assert (=> b!7825168 (= e!4629147 (and tp!2310625 tp!2310626))))

(assert (= (and b!7823762 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42418 (regOne!42419 r1!6261))))) b!7825167))

(assert (= (and b!7823762 ((_ is Concat!29798) (regTwo!42418 (regTwo!42418 (regOne!42419 r1!6261))))) b!7825168))

(assert (= (and b!7823762 ((_ is Star!20953) (regTwo!42418 (regTwo!42418 (regOne!42419 r1!6261))))) b!7825169))

(assert (= (and b!7823762 ((_ is Union!20953) (regTwo!42418 (regTwo!42418 (regOne!42419 r1!6261))))) b!7825170))

(declare-fun b!7825171 () Bool)

(declare-fun e!4629148 () Bool)

(assert (=> b!7825171 (= e!4629148 tp_is_empty!52261)))

(assert (=> b!7823644 (= tp!2309483 e!4629148)))

(declare-fun b!7825174 () Bool)

(declare-fun tp!2310632 () Bool)

(declare-fun tp!2310634 () Bool)

(assert (=> b!7825174 (= e!4629148 (and tp!2310632 tp!2310634))))

(declare-fun b!7825173 () Bool)

(declare-fun tp!2310633 () Bool)

(assert (=> b!7825173 (= e!4629148 tp!2310633)))

(declare-fun b!7825172 () Bool)

(declare-fun tp!2310630 () Bool)

(declare-fun tp!2310631 () Bool)

(assert (=> b!7825172 (= e!4629148 (and tp!2310630 tp!2310631))))

(assert (= (and b!7823644 ((_ is ElementMatch!20953) (reg!21282 (regOne!42419 (regTwo!42419 r1!6261))))) b!7825171))

(assert (= (and b!7823644 ((_ is Concat!29798) (reg!21282 (regOne!42419 (regTwo!42419 r1!6261))))) b!7825172))

(assert (= (and b!7823644 ((_ is Star!20953) (reg!21282 (regOne!42419 (regTwo!42419 r1!6261))))) b!7825173))

(assert (= (and b!7823644 ((_ is Union!20953) (reg!21282 (regOne!42419 (regTwo!42419 r1!6261))))) b!7825174))

(declare-fun b!7825175 () Bool)

(declare-fun e!4629149 () Bool)

(assert (=> b!7825175 (= e!4629149 tp_is_empty!52261)))

(assert (=> b!7823653 (= tp!2309492 e!4629149)))

(declare-fun b!7825178 () Bool)

(declare-fun tp!2310637 () Bool)

(declare-fun tp!2310639 () Bool)

(assert (=> b!7825178 (= e!4629149 (and tp!2310637 tp!2310639))))

(declare-fun b!7825177 () Bool)

(declare-fun tp!2310638 () Bool)

(assert (=> b!7825177 (= e!4629149 tp!2310638)))

(declare-fun b!7825176 () Bool)

(declare-fun tp!2310635 () Bool)

(declare-fun tp!2310636 () Bool)

(assert (=> b!7825176 (= e!4629149 (and tp!2310635 tp!2310636))))

(assert (= (and b!7823653 ((_ is ElementMatch!20953) (regOne!42419 (reg!21282 (regTwo!42419 r1!6261))))) b!7825175))

(assert (= (and b!7823653 ((_ is Concat!29798) (regOne!42419 (reg!21282 (regTwo!42419 r1!6261))))) b!7825176))

(assert (= (and b!7823653 ((_ is Star!20953) (regOne!42419 (reg!21282 (regTwo!42419 r1!6261))))) b!7825177))

(assert (= (and b!7823653 ((_ is Union!20953) (regOne!42419 (reg!21282 (regTwo!42419 r1!6261))))) b!7825178))

(declare-fun b!7825179 () Bool)

(declare-fun e!4629150 () Bool)

(assert (=> b!7825179 (= e!4629150 tp_is_empty!52261)))

(assert (=> b!7823653 (= tp!2309494 e!4629150)))

(declare-fun b!7825182 () Bool)

(declare-fun tp!2310642 () Bool)

(declare-fun tp!2310644 () Bool)

(assert (=> b!7825182 (= e!4629150 (and tp!2310642 tp!2310644))))

(declare-fun b!7825181 () Bool)

(declare-fun tp!2310643 () Bool)

(assert (=> b!7825181 (= e!4629150 tp!2310643)))

(declare-fun b!7825180 () Bool)

(declare-fun tp!2310640 () Bool)

(declare-fun tp!2310641 () Bool)

(assert (=> b!7825180 (= e!4629150 (and tp!2310640 tp!2310641))))

(assert (= (and b!7823653 ((_ is ElementMatch!20953) (regTwo!42419 (reg!21282 (regTwo!42419 r1!6261))))) b!7825179))

(assert (= (and b!7823653 ((_ is Concat!29798) (regTwo!42419 (reg!21282 (regTwo!42419 r1!6261))))) b!7825180))

(assert (= (and b!7823653 ((_ is Star!20953) (regTwo!42419 (reg!21282 (regTwo!42419 r1!6261))))) b!7825181))

(assert (= (and b!7823653 ((_ is Union!20953) (regTwo!42419 (reg!21282 (regTwo!42419 r1!6261))))) b!7825182))

(declare-fun b!7825183 () Bool)

(declare-fun e!4629151 () Bool)

(assert (=> b!7825183 (= e!4629151 tp_is_empty!52261)))

(assert (=> b!7823746 (= tp!2309610 e!4629151)))

(declare-fun b!7825186 () Bool)

(declare-fun tp!2310647 () Bool)

(declare-fun tp!2310649 () Bool)

(assert (=> b!7825186 (= e!4629151 (and tp!2310647 tp!2310649))))

(declare-fun b!7825185 () Bool)

(declare-fun tp!2310648 () Bool)

(assert (=> b!7825185 (= e!4629151 tp!2310648)))

(declare-fun b!7825184 () Bool)

(declare-fun tp!2310645 () Bool)

(declare-fun tp!2310646 () Bool)

(assert (=> b!7825184 (= e!4629151 (and tp!2310645 tp!2310646))))

(assert (= (and b!7823746 ((_ is ElementMatch!20953) (reg!21282 (regOne!42418 (regTwo!42418 r2!6199))))) b!7825183))

(assert (= (and b!7823746 ((_ is Concat!29798) (reg!21282 (regOne!42418 (regTwo!42418 r2!6199))))) b!7825184))

(assert (= (and b!7823746 ((_ is Star!20953) (reg!21282 (regOne!42418 (regTwo!42418 r2!6199))))) b!7825185))

(assert (= (and b!7823746 ((_ is Union!20953) (reg!21282 (regOne!42418 (regTwo!42418 r2!6199))))) b!7825186))

(declare-fun b!7825187 () Bool)

(declare-fun e!4629152 () Bool)

(assert (=> b!7825187 (= e!4629152 tp_is_empty!52261)))

(assert (=> b!7823773 (= tp!2309641 e!4629152)))

(declare-fun b!7825190 () Bool)

(declare-fun tp!2310652 () Bool)

(declare-fun tp!2310654 () Bool)

(assert (=> b!7825190 (= e!4629152 (and tp!2310652 tp!2310654))))

(declare-fun b!7825189 () Bool)

(declare-fun tp!2310653 () Bool)

(assert (=> b!7825189 (= e!4629152 tp!2310653)))

(declare-fun b!7825188 () Bool)

(declare-fun tp!2310650 () Bool)

(declare-fun tp!2310651 () Bool)

(assert (=> b!7825188 (= e!4629152 (and tp!2310650 tp!2310651))))

(assert (= (and b!7823773 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42418 (regOne!42419 r2!6199))))) b!7825187))

(assert (= (and b!7823773 ((_ is Concat!29798) (regOne!42419 (regOne!42418 (regOne!42419 r2!6199))))) b!7825188))

(assert (= (and b!7823773 ((_ is Star!20953) (regOne!42419 (regOne!42418 (regOne!42419 r2!6199))))) b!7825189))

(assert (= (and b!7823773 ((_ is Union!20953) (regOne!42419 (regOne!42418 (regOne!42419 r2!6199))))) b!7825190))

(declare-fun b!7825191 () Bool)

(declare-fun e!4629153 () Bool)

(assert (=> b!7825191 (= e!4629153 tp_is_empty!52261)))

(assert (=> b!7823773 (= tp!2309643 e!4629153)))

(declare-fun b!7825194 () Bool)

(declare-fun tp!2310657 () Bool)

(declare-fun tp!2310659 () Bool)

(assert (=> b!7825194 (= e!4629153 (and tp!2310657 tp!2310659))))

(declare-fun b!7825193 () Bool)

(declare-fun tp!2310658 () Bool)

(assert (=> b!7825193 (= e!4629153 tp!2310658)))

(declare-fun b!7825192 () Bool)

(declare-fun tp!2310655 () Bool)

(declare-fun tp!2310656 () Bool)

(assert (=> b!7825192 (= e!4629153 (and tp!2310655 tp!2310656))))

(assert (= (and b!7823773 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42418 (regOne!42419 r2!6199))))) b!7825191))

(assert (= (and b!7823773 ((_ is Concat!29798) (regTwo!42419 (regOne!42418 (regOne!42419 r2!6199))))) b!7825192))

(assert (= (and b!7823773 ((_ is Star!20953) (regTwo!42419 (regOne!42418 (regOne!42419 r2!6199))))) b!7825193))

(assert (= (and b!7823773 ((_ is Union!20953) (regTwo!42419 (regOne!42418 (regOne!42419 r2!6199))))) b!7825194))

(declare-fun b!7825195 () Bool)

(declare-fun e!4629154 () Bool)

(assert (=> b!7825195 (= e!4629154 tp_is_empty!52261)))

(assert (=> b!7823798 (= tp!2309672 e!4629154)))

(declare-fun b!7825198 () Bool)

(declare-fun tp!2310662 () Bool)

(declare-fun tp!2310664 () Bool)

(assert (=> b!7825198 (= e!4629154 (and tp!2310662 tp!2310664))))

(declare-fun b!7825197 () Bool)

(declare-fun tp!2310663 () Bool)

(assert (=> b!7825197 (= e!4629154 tp!2310663)))

(declare-fun b!7825196 () Bool)

(declare-fun tp!2310660 () Bool)

(declare-fun tp!2310661 () Bool)

(assert (=> b!7825196 (= e!4629154 (and tp!2310660 tp!2310661))))

(assert (= (and b!7823798 ((_ is ElementMatch!20953) (regOne!42419 (reg!21282 (regTwo!42418 r1!6261))))) b!7825195))

(assert (= (and b!7823798 ((_ is Concat!29798) (regOne!42419 (reg!21282 (regTwo!42418 r1!6261))))) b!7825196))

(assert (= (and b!7823798 ((_ is Star!20953) (regOne!42419 (reg!21282 (regTwo!42418 r1!6261))))) b!7825197))

(assert (= (and b!7823798 ((_ is Union!20953) (regOne!42419 (reg!21282 (regTwo!42418 r1!6261))))) b!7825198))

(declare-fun b!7825199 () Bool)

(declare-fun e!4629155 () Bool)

(assert (=> b!7825199 (= e!4629155 tp_is_empty!52261)))

(assert (=> b!7823798 (= tp!2309674 e!4629155)))

(declare-fun b!7825202 () Bool)

(declare-fun tp!2310667 () Bool)

(declare-fun tp!2310669 () Bool)

(assert (=> b!7825202 (= e!4629155 (and tp!2310667 tp!2310669))))

(declare-fun b!7825201 () Bool)

(declare-fun tp!2310668 () Bool)

(assert (=> b!7825201 (= e!4629155 tp!2310668)))

(declare-fun b!7825200 () Bool)

(declare-fun tp!2310665 () Bool)

(declare-fun tp!2310666 () Bool)

(assert (=> b!7825200 (= e!4629155 (and tp!2310665 tp!2310666))))

(assert (= (and b!7823798 ((_ is ElementMatch!20953) (regTwo!42419 (reg!21282 (regTwo!42418 r1!6261))))) b!7825199))

(assert (= (and b!7823798 ((_ is Concat!29798) (regTwo!42419 (reg!21282 (regTwo!42418 r1!6261))))) b!7825200))

(assert (= (and b!7823798 ((_ is Star!20953) (regTwo!42419 (reg!21282 (regTwo!42418 r1!6261))))) b!7825201))

(assert (= (and b!7823798 ((_ is Union!20953) (regTwo!42419 (reg!21282 (regTwo!42418 r1!6261))))) b!7825202))

(declare-fun b!7825203 () Bool)

(declare-fun e!4629156 () Bool)

(assert (=> b!7825203 (= e!4629156 tp_is_empty!52261)))

(assert (=> b!7823789 (= tp!2309663 e!4629156)))

(declare-fun b!7825206 () Bool)

(declare-fun tp!2310672 () Bool)

(declare-fun tp!2310674 () Bool)

(assert (=> b!7825206 (= e!4629156 (and tp!2310672 tp!2310674))))

(declare-fun b!7825205 () Bool)

(declare-fun tp!2310673 () Bool)

(assert (=> b!7825205 (= e!4629156 tp!2310673)))

(declare-fun b!7825204 () Bool)

(declare-fun tp!2310670 () Bool)

(declare-fun tp!2310671 () Bool)

(assert (=> b!7825204 (= e!4629156 (and tp!2310670 tp!2310671))))

(assert (= (and b!7823789 ((_ is ElementMatch!20953) (reg!21282 (regOne!42418 (reg!21282 r1!6261))))) b!7825203))

(assert (= (and b!7823789 ((_ is Concat!29798) (reg!21282 (regOne!42418 (reg!21282 r1!6261))))) b!7825204))

(assert (= (and b!7823789 ((_ is Star!20953) (reg!21282 (regOne!42418 (reg!21282 r1!6261))))) b!7825205))

(assert (= (and b!7823789 ((_ is Union!20953) (reg!21282 (regOne!42418 (reg!21282 r1!6261))))) b!7825206))

(declare-fun b!7825207 () Bool)

(declare-fun e!4629157 () Bool)

(assert (=> b!7825207 (= e!4629157 tp_is_empty!52261)))

(assert (=> b!7823780 (= tp!2309650 e!4629157)))

(declare-fun b!7825210 () Bool)

(declare-fun tp!2310677 () Bool)

(declare-fun tp!2310679 () Bool)

(assert (=> b!7825210 (= e!4629157 (and tp!2310677 tp!2310679))))

(declare-fun b!7825209 () Bool)

(declare-fun tp!2310678 () Bool)

(assert (=> b!7825209 (= e!4629157 tp!2310678)))

(declare-fun b!7825208 () Bool)

(declare-fun tp!2310675 () Bool)

(declare-fun tp!2310676 () Bool)

(assert (=> b!7825208 (= e!4629157 (and tp!2310675 tp!2310676))))

(assert (= (and b!7823780 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42419 (regOne!42419 r1!6261))))) b!7825207))

(assert (= (and b!7823780 ((_ is Concat!29798) (regOne!42418 (regOne!42419 (regOne!42419 r1!6261))))) b!7825208))

(assert (= (and b!7823780 ((_ is Star!20953) (regOne!42418 (regOne!42419 (regOne!42419 r1!6261))))) b!7825209))

(assert (= (and b!7823780 ((_ is Union!20953) (regOne!42418 (regOne!42419 (regOne!42419 r1!6261))))) b!7825210))

(declare-fun b!7825211 () Bool)

(declare-fun e!4629158 () Bool)

(assert (=> b!7825211 (= e!4629158 tp_is_empty!52261)))

(assert (=> b!7823780 (= tp!2309651 e!4629158)))

(declare-fun b!7825214 () Bool)

(declare-fun tp!2310682 () Bool)

(declare-fun tp!2310684 () Bool)

(assert (=> b!7825214 (= e!4629158 (and tp!2310682 tp!2310684))))

(declare-fun b!7825213 () Bool)

(declare-fun tp!2310683 () Bool)

(assert (=> b!7825213 (= e!4629158 tp!2310683)))

(declare-fun b!7825212 () Bool)

(declare-fun tp!2310680 () Bool)

(declare-fun tp!2310681 () Bool)

(assert (=> b!7825212 (= e!4629158 (and tp!2310680 tp!2310681))))

(assert (= (and b!7823780 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42419 (regOne!42419 r1!6261))))) b!7825211))

(assert (= (and b!7823780 ((_ is Concat!29798) (regTwo!42418 (regOne!42419 (regOne!42419 r1!6261))))) b!7825212))

(assert (= (and b!7823780 ((_ is Star!20953) (regTwo!42418 (regOne!42419 (regOne!42419 r1!6261))))) b!7825213))

(assert (= (and b!7823780 ((_ is Union!20953) (regTwo!42418 (regOne!42419 (regOne!42419 r1!6261))))) b!7825214))

(declare-fun b!7825215 () Bool)

(declare-fun e!4629159 () Bool)

(assert (=> b!7825215 (= e!4629159 tp_is_empty!52261)))

(assert (=> b!7823705 (= tp!2309557 e!4629159)))

(declare-fun b!7825218 () Bool)

(declare-fun tp!2310687 () Bool)

(declare-fun tp!2310689 () Bool)

(assert (=> b!7825218 (= e!4629159 (and tp!2310687 tp!2310689))))

(declare-fun b!7825217 () Bool)

(declare-fun tp!2310688 () Bool)

(assert (=> b!7825217 (= e!4629159 tp!2310688)))

(declare-fun b!7825216 () Bool)

(declare-fun tp!2310685 () Bool)

(declare-fun tp!2310686 () Bool)

(assert (=> b!7825216 (= e!4629159 (and tp!2310685 tp!2310686))))

(assert (= (and b!7823705 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42418 (regOne!42418 r1!6261))))) b!7825215))

(assert (= (and b!7823705 ((_ is Concat!29798) (regOne!42418 (regOne!42418 (regOne!42418 r1!6261))))) b!7825216))

(assert (= (and b!7823705 ((_ is Star!20953) (regOne!42418 (regOne!42418 (regOne!42418 r1!6261))))) b!7825217))

(assert (= (and b!7823705 ((_ is Union!20953) (regOne!42418 (regOne!42418 (regOne!42418 r1!6261))))) b!7825218))

(declare-fun b!7825219 () Bool)

(declare-fun e!4629160 () Bool)

(assert (=> b!7825219 (= e!4629160 tp_is_empty!52261)))

(assert (=> b!7823705 (= tp!2309558 e!4629160)))

(declare-fun b!7825222 () Bool)

(declare-fun tp!2310692 () Bool)

(declare-fun tp!2310694 () Bool)

(assert (=> b!7825222 (= e!4629160 (and tp!2310692 tp!2310694))))

(declare-fun b!7825221 () Bool)

(declare-fun tp!2310693 () Bool)

(assert (=> b!7825221 (= e!4629160 tp!2310693)))

(declare-fun b!7825220 () Bool)

(declare-fun tp!2310690 () Bool)

(declare-fun tp!2310691 () Bool)

(assert (=> b!7825220 (= e!4629160 (and tp!2310690 tp!2310691))))

(assert (= (and b!7823705 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42418 (regOne!42418 r1!6261))))) b!7825219))

(assert (= (and b!7823705 ((_ is Concat!29798) (regTwo!42418 (regOne!42418 (regOne!42418 r1!6261))))) b!7825220))

(assert (= (and b!7823705 ((_ is Star!20953) (regTwo!42418 (regOne!42418 (regOne!42418 r1!6261))))) b!7825221))

(assert (= (and b!7823705 ((_ is Union!20953) (regTwo!42418 (regOne!42418 (regOne!42418 r1!6261))))) b!7825222))

(declare-fun b!7825223 () Bool)

(declare-fun e!4629161 () Bool)

(assert (=> b!7825223 (= e!4629161 tp_is_empty!52261)))

(assert (=> b!7823680 (= tp!2309526 e!4629161)))

(declare-fun b!7825226 () Bool)

(declare-fun tp!2310697 () Bool)

(declare-fun tp!2310699 () Bool)

(assert (=> b!7825226 (= e!4629161 (and tp!2310697 tp!2310699))))

(declare-fun b!7825225 () Bool)

(declare-fun tp!2310698 () Bool)

(assert (=> b!7825225 (= e!4629161 tp!2310698)))

(declare-fun b!7825224 () Bool)

(declare-fun tp!2310695 () Bool)

(declare-fun tp!2310696 () Bool)

(assert (=> b!7825224 (= e!4629161 (and tp!2310695 tp!2310696))))

(assert (= (and b!7823680 ((_ is ElementMatch!20953) (regOne!42418 (reg!21282 (regTwo!42419 r2!6199))))) b!7825223))

(assert (= (and b!7823680 ((_ is Concat!29798) (regOne!42418 (reg!21282 (regTwo!42419 r2!6199))))) b!7825224))

(assert (= (and b!7823680 ((_ is Star!20953) (regOne!42418 (reg!21282 (regTwo!42419 r2!6199))))) b!7825225))

(assert (= (and b!7823680 ((_ is Union!20953) (regOne!42418 (reg!21282 (regTwo!42419 r2!6199))))) b!7825226))

(declare-fun b!7825227 () Bool)

(declare-fun e!4629162 () Bool)

(assert (=> b!7825227 (= e!4629162 tp_is_empty!52261)))

(assert (=> b!7823680 (= tp!2309527 e!4629162)))

(declare-fun b!7825230 () Bool)

(declare-fun tp!2310702 () Bool)

(declare-fun tp!2310704 () Bool)

(assert (=> b!7825230 (= e!4629162 (and tp!2310702 tp!2310704))))

(declare-fun b!7825229 () Bool)

(declare-fun tp!2310703 () Bool)

(assert (=> b!7825229 (= e!4629162 tp!2310703)))

(declare-fun b!7825228 () Bool)

(declare-fun tp!2310700 () Bool)

(declare-fun tp!2310701 () Bool)

(assert (=> b!7825228 (= e!4629162 (and tp!2310700 tp!2310701))))

(assert (= (and b!7823680 ((_ is ElementMatch!20953) (regTwo!42418 (reg!21282 (regTwo!42419 r2!6199))))) b!7825227))

(assert (= (and b!7823680 ((_ is Concat!29798) (regTwo!42418 (reg!21282 (regTwo!42419 r2!6199))))) b!7825228))

(assert (= (and b!7823680 ((_ is Star!20953) (regTwo!42418 (reg!21282 (regTwo!42419 r2!6199))))) b!7825229))

(assert (= (and b!7823680 ((_ is Union!20953) (regTwo!42418 (reg!21282 (regTwo!42419 r2!6199))))) b!7825230))

(declare-fun b!7825231 () Bool)

(declare-fun e!4629163 () Bool)

(assert (=> b!7825231 (= e!4629163 tp_is_empty!52261)))

(assert (=> b!7823612 (= tp!2309443 e!4629163)))

(declare-fun b!7825234 () Bool)

(declare-fun tp!2310707 () Bool)

(declare-fun tp!2310709 () Bool)

(assert (=> b!7825234 (= e!4629163 (and tp!2310707 tp!2310709))))

(declare-fun b!7825233 () Bool)

(declare-fun tp!2310708 () Bool)

(assert (=> b!7825233 (= e!4629163 tp!2310708)))

(declare-fun b!7825232 () Bool)

(declare-fun tp!2310705 () Bool)

(declare-fun tp!2310706 () Bool)

(assert (=> b!7825232 (= e!4629163 (and tp!2310705 tp!2310706))))

(assert (= (and b!7823612 ((_ is ElementMatch!20953) (reg!21282 (regOne!42419 (reg!21282 r1!6261))))) b!7825231))

(assert (= (and b!7823612 ((_ is Concat!29798) (reg!21282 (regOne!42419 (reg!21282 r1!6261))))) b!7825232))

(assert (= (and b!7823612 ((_ is Star!20953) (reg!21282 (regOne!42419 (reg!21282 r1!6261))))) b!7825233))

(assert (= (and b!7823612 ((_ is Union!20953) (reg!21282 (regOne!42419 (reg!21282 r1!6261))))) b!7825234))

(declare-fun b!7825235 () Bool)

(declare-fun e!4629164 () Bool)

(assert (=> b!7825235 (= e!4629164 tp_is_empty!52261)))

(assert (=> b!7823714 (= tp!2309570 e!4629164)))

(declare-fun b!7825238 () Bool)

(declare-fun tp!2310712 () Bool)

(declare-fun tp!2310714 () Bool)

(assert (=> b!7825238 (= e!4629164 (and tp!2310712 tp!2310714))))

(declare-fun b!7825237 () Bool)

(declare-fun tp!2310713 () Bool)

(assert (=> b!7825237 (= e!4629164 tp!2310713)))

(declare-fun b!7825236 () Bool)

(declare-fun tp!2310710 () Bool)

(declare-fun tp!2310711 () Bool)

(assert (=> b!7825236 (= e!4629164 (and tp!2310710 tp!2310711))))

(assert (= (and b!7823714 ((_ is ElementMatch!20953) (reg!21282 (regOne!42419 (regTwo!42419 r2!6199))))) b!7825235))

(assert (= (and b!7823714 ((_ is Concat!29798) (reg!21282 (regOne!42419 (regTwo!42419 r2!6199))))) b!7825236))

(assert (= (and b!7823714 ((_ is Star!20953) (reg!21282 (regOne!42419 (regTwo!42419 r2!6199))))) b!7825237))

(assert (= (and b!7823714 ((_ is Union!20953) (reg!21282 (regOne!42419 (regTwo!42419 r2!6199))))) b!7825238))

(declare-fun b!7825239 () Bool)

(declare-fun e!4629165 () Bool)

(assert (=> b!7825239 (= e!4629165 tp_is_empty!52261)))

(assert (=> b!7823621 (= tp!2309452 e!4629165)))

(declare-fun b!7825242 () Bool)

(declare-fun tp!2310717 () Bool)

(declare-fun tp!2310719 () Bool)

(assert (=> b!7825242 (= e!4629165 (and tp!2310717 tp!2310719))))

(declare-fun b!7825241 () Bool)

(declare-fun tp!2310718 () Bool)

(assert (=> b!7825241 (= e!4629165 tp!2310718)))

(declare-fun b!7825240 () Bool)

(declare-fun tp!2310715 () Bool)

(declare-fun tp!2310716 () Bool)

(assert (=> b!7825240 (= e!4629165 (and tp!2310715 tp!2310716))))

(assert (= (and b!7823621 ((_ is ElementMatch!20953) (regOne!42419 (reg!21282 (regOne!42418 r2!6199))))) b!7825239))

(assert (= (and b!7823621 ((_ is Concat!29798) (regOne!42419 (reg!21282 (regOne!42418 r2!6199))))) b!7825240))

(assert (= (and b!7823621 ((_ is Star!20953) (regOne!42419 (reg!21282 (regOne!42418 r2!6199))))) b!7825241))

(assert (= (and b!7823621 ((_ is Union!20953) (regOne!42419 (reg!21282 (regOne!42418 r2!6199))))) b!7825242))

(declare-fun b!7825243 () Bool)

(declare-fun e!4629166 () Bool)

(assert (=> b!7825243 (= e!4629166 tp_is_empty!52261)))

(assert (=> b!7823621 (= tp!2309454 e!4629166)))

(declare-fun b!7825246 () Bool)

(declare-fun tp!2310722 () Bool)

(declare-fun tp!2310724 () Bool)

(assert (=> b!7825246 (= e!4629166 (and tp!2310722 tp!2310724))))

(declare-fun b!7825245 () Bool)

(declare-fun tp!2310723 () Bool)

(assert (=> b!7825245 (= e!4629166 tp!2310723)))

(declare-fun b!7825244 () Bool)

(declare-fun tp!2310720 () Bool)

(declare-fun tp!2310721 () Bool)

(assert (=> b!7825244 (= e!4629166 (and tp!2310720 tp!2310721))))

(assert (= (and b!7823621 ((_ is ElementMatch!20953) (regTwo!42419 (reg!21282 (regOne!42418 r2!6199))))) b!7825243))

(assert (= (and b!7823621 ((_ is Concat!29798) (regTwo!42419 (reg!21282 (regOne!42418 r2!6199))))) b!7825244))

(assert (= (and b!7823621 ((_ is Star!20953) (regTwo!42419 (reg!21282 (regOne!42418 r2!6199))))) b!7825245))

(assert (= (and b!7823621 ((_ is Union!20953) (regTwo!42419 (reg!21282 (regOne!42418 r2!6199))))) b!7825246))

(declare-fun b!7825247 () Bool)

(declare-fun e!4629167 () Bool)

(assert (=> b!7825247 (= e!4629167 tp_is_empty!52261)))

(assert (=> b!7823723 (= tp!2309579 e!4629167)))

(declare-fun b!7825250 () Bool)

(declare-fun tp!2310727 () Bool)

(declare-fun tp!2310729 () Bool)

(assert (=> b!7825250 (= e!4629167 (and tp!2310727 tp!2310729))))

(declare-fun b!7825249 () Bool)

(declare-fun tp!2310728 () Bool)

(assert (=> b!7825249 (= e!4629167 tp!2310728)))

(declare-fun b!7825248 () Bool)

(declare-fun tp!2310725 () Bool)

(declare-fun tp!2310726 () Bool)

(assert (=> b!7825248 (= e!4629167 (and tp!2310725 tp!2310726))))

(assert (= (and b!7823723 ((_ is ElementMatch!20953) (regOne!42419 (reg!21282 (reg!21282 r2!6199))))) b!7825247))

(assert (= (and b!7823723 ((_ is Concat!29798) (regOne!42419 (reg!21282 (reg!21282 r2!6199))))) b!7825248))

(assert (= (and b!7823723 ((_ is Star!20953) (regOne!42419 (reg!21282 (reg!21282 r2!6199))))) b!7825249))

(assert (= (and b!7823723 ((_ is Union!20953) (regOne!42419 (reg!21282 (reg!21282 r2!6199))))) b!7825250))

(declare-fun b!7825251 () Bool)

(declare-fun e!4629168 () Bool)

(assert (=> b!7825251 (= e!4629168 tp_is_empty!52261)))

(assert (=> b!7823723 (= tp!2309581 e!4629168)))

(declare-fun b!7825254 () Bool)

(declare-fun tp!2310732 () Bool)

(declare-fun tp!2310734 () Bool)

(assert (=> b!7825254 (= e!4629168 (and tp!2310732 tp!2310734))))

(declare-fun b!7825253 () Bool)

(declare-fun tp!2310733 () Bool)

(assert (=> b!7825253 (= e!4629168 tp!2310733)))

(declare-fun b!7825252 () Bool)

(declare-fun tp!2310730 () Bool)

(declare-fun tp!2310731 () Bool)

(assert (=> b!7825252 (= e!4629168 (and tp!2310730 tp!2310731))))

(assert (= (and b!7823723 ((_ is ElementMatch!20953) (regTwo!42419 (reg!21282 (reg!21282 r2!6199))))) b!7825251))

(assert (= (and b!7823723 ((_ is Concat!29798) (regTwo!42419 (reg!21282 (reg!21282 r2!6199))))) b!7825252))

(assert (= (and b!7823723 ((_ is Star!20953) (regTwo!42419 (reg!21282 (reg!21282 r2!6199))))) b!7825253))

(assert (= (and b!7823723 ((_ is Union!20953) (regTwo!42419 (reg!21282 (reg!21282 r2!6199))))) b!7825254))

(declare-fun b!7825255 () Bool)

(declare-fun e!4629169 () Bool)

(assert (=> b!7825255 (= e!4629169 tp_is_empty!52261)))

(assert (=> b!7823664 (= tp!2309508 e!4629169)))

(declare-fun b!7825258 () Bool)

(declare-fun tp!2310737 () Bool)

(declare-fun tp!2310739 () Bool)

(assert (=> b!7825258 (= e!4629169 (and tp!2310737 tp!2310739))))

(declare-fun b!7825257 () Bool)

(declare-fun tp!2310738 () Bool)

(assert (=> b!7825257 (= e!4629169 tp!2310738)))

(declare-fun b!7825256 () Bool)

(declare-fun tp!2310735 () Bool)

(declare-fun tp!2310736 () Bool)

(assert (=> b!7825256 (= e!4629169 (and tp!2310735 tp!2310736))))

(assert (= (and b!7823664 ((_ is ElementMatch!20953) (reg!21282 (regOne!42419 (regOne!42418 r2!6199))))) b!7825255))

(assert (= (and b!7823664 ((_ is Concat!29798) (reg!21282 (regOne!42419 (regOne!42418 r2!6199))))) b!7825256))

(assert (= (and b!7823664 ((_ is Star!20953) (reg!21282 (regOne!42419 (regOne!42418 r2!6199))))) b!7825257))

(assert (= (and b!7823664 ((_ is Union!20953) (reg!21282 (regOne!42419 (regOne!42418 r2!6199))))) b!7825258))

(declare-fun b!7825259 () Bool)

(declare-fun e!4629170 () Bool)

(assert (=> b!7825259 (= e!4629170 tp_is_empty!52261)))

(assert (=> b!7823655 (= tp!2309495 e!4629170)))

(declare-fun b!7825262 () Bool)

(declare-fun tp!2310742 () Bool)

(declare-fun tp!2310744 () Bool)

(assert (=> b!7825262 (= e!4629170 (and tp!2310742 tp!2310744))))

(declare-fun b!7825261 () Bool)

(declare-fun tp!2310743 () Bool)

(assert (=> b!7825261 (= e!4629170 tp!2310743)))

(declare-fun b!7825260 () Bool)

(declare-fun tp!2310740 () Bool)

(declare-fun tp!2310741 () Bool)

(assert (=> b!7825260 (= e!4629170 (and tp!2310740 tp!2310741))))

(assert (= (and b!7823655 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42418 (regTwo!42419 r1!6261))))) b!7825259))

(assert (= (and b!7823655 ((_ is Concat!29798) (regOne!42418 (regOne!42418 (regTwo!42419 r1!6261))))) b!7825260))

(assert (= (and b!7823655 ((_ is Star!20953) (regOne!42418 (regOne!42418 (regTwo!42419 r1!6261))))) b!7825261))

(assert (= (and b!7823655 ((_ is Union!20953) (regOne!42418 (regOne!42418 (regTwo!42419 r1!6261))))) b!7825262))

(declare-fun b!7825263 () Bool)

(declare-fun e!4629171 () Bool)

(assert (=> b!7825263 (= e!4629171 tp_is_empty!52261)))

(assert (=> b!7823655 (= tp!2309496 e!4629171)))

(declare-fun b!7825266 () Bool)

(declare-fun tp!2310747 () Bool)

(declare-fun tp!2310749 () Bool)

(assert (=> b!7825266 (= e!4629171 (and tp!2310747 tp!2310749))))

(declare-fun b!7825265 () Bool)

(declare-fun tp!2310748 () Bool)

(assert (=> b!7825265 (= e!4629171 tp!2310748)))

(declare-fun b!7825264 () Bool)

(declare-fun tp!2310745 () Bool)

(declare-fun tp!2310746 () Bool)

(assert (=> b!7825264 (= e!4629171 (and tp!2310745 tp!2310746))))

(assert (= (and b!7823655 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42418 (regTwo!42419 r1!6261))))) b!7825263))

(assert (= (and b!7823655 ((_ is Concat!29798) (regTwo!42418 (regOne!42418 (regTwo!42419 r1!6261))))) b!7825264))

(assert (= (and b!7823655 ((_ is Star!20953) (regTwo!42418 (regOne!42418 (regTwo!42419 r1!6261))))) b!7825265))

(assert (= (and b!7823655 ((_ is Union!20953) (regTwo!42418 (regOne!42418 (regTwo!42419 r1!6261))))) b!7825266))

(declare-fun b!7825267 () Bool)

(declare-fun e!4629172 () Bool)

(assert (=> b!7825267 (= e!4629172 tp_is_empty!52261)))

(assert (=> b!7823775 (= tp!2309644 e!4629172)))

(declare-fun b!7825270 () Bool)

(declare-fun tp!2310752 () Bool)

(declare-fun tp!2310754 () Bool)

(assert (=> b!7825270 (= e!4629172 (and tp!2310752 tp!2310754))))

(declare-fun b!7825269 () Bool)

(declare-fun tp!2310753 () Bool)

(assert (=> b!7825269 (= e!4629172 tp!2310753)))

(declare-fun b!7825268 () Bool)

(declare-fun tp!2310750 () Bool)

(declare-fun tp!2310751 () Bool)

(assert (=> b!7825268 (= e!4629172 (and tp!2310750 tp!2310751))))

(assert (= (and b!7823775 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42418 (regOne!42419 r2!6199))))) b!7825267))

(assert (= (and b!7823775 ((_ is Concat!29798) (regOne!42418 (regTwo!42418 (regOne!42419 r2!6199))))) b!7825268))

(assert (= (and b!7823775 ((_ is Star!20953) (regOne!42418 (regTwo!42418 (regOne!42419 r2!6199))))) b!7825269))

(assert (= (and b!7823775 ((_ is Union!20953) (regOne!42418 (regTwo!42418 (regOne!42419 r2!6199))))) b!7825270))

(declare-fun b!7825271 () Bool)

(declare-fun e!4629173 () Bool)

(assert (=> b!7825271 (= e!4629173 tp_is_empty!52261)))

(assert (=> b!7823775 (= tp!2309645 e!4629173)))

(declare-fun b!7825274 () Bool)

(declare-fun tp!2310757 () Bool)

(declare-fun tp!2310759 () Bool)

(assert (=> b!7825274 (= e!4629173 (and tp!2310757 tp!2310759))))

(declare-fun b!7825273 () Bool)

(declare-fun tp!2310758 () Bool)

(assert (=> b!7825273 (= e!4629173 tp!2310758)))

(declare-fun b!7825272 () Bool)

(declare-fun tp!2310755 () Bool)

(declare-fun tp!2310756 () Bool)

(assert (=> b!7825272 (= e!4629173 (and tp!2310755 tp!2310756))))

(assert (= (and b!7823775 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42418 (regOne!42419 r2!6199))))) b!7825271))

(assert (= (and b!7823775 ((_ is Concat!29798) (regTwo!42418 (regTwo!42418 (regOne!42419 r2!6199))))) b!7825272))

(assert (= (and b!7823775 ((_ is Star!20953) (regTwo!42418 (regTwo!42418 (regOne!42419 r2!6199))))) b!7825273))

(assert (= (and b!7823775 ((_ is Union!20953) (regTwo!42418 (regTwo!42418 (regOne!42419 r2!6199))))) b!7825274))

(declare-fun b!7825275 () Bool)

(declare-fun e!4629174 () Bool)

(assert (=> b!7825275 (= e!4629174 tp_is_empty!52261)))

(assert (=> b!7823759 (= tp!2309626 e!4629174)))

(declare-fun b!7825278 () Bool)

(declare-fun tp!2310762 () Bool)

(declare-fun tp!2310764 () Bool)

(assert (=> b!7825278 (= e!4629174 (and tp!2310762 tp!2310764))))

(declare-fun b!7825277 () Bool)

(declare-fun tp!2310763 () Bool)

(assert (=> b!7825277 (= e!4629174 tp!2310763)))

(declare-fun b!7825276 () Bool)

(declare-fun tp!2310760 () Bool)

(declare-fun tp!2310761 () Bool)

(assert (=> b!7825276 (= e!4629174 (and tp!2310760 tp!2310761))))

(assert (= (and b!7823759 ((_ is ElementMatch!20953) (reg!21282 (regOne!42418 (regOne!42419 r1!6261))))) b!7825275))

(assert (= (and b!7823759 ((_ is Concat!29798) (reg!21282 (regOne!42418 (regOne!42419 r1!6261))))) b!7825276))

(assert (= (and b!7823759 ((_ is Star!20953) (reg!21282 (regOne!42418 (regOne!42419 r1!6261))))) b!7825277))

(assert (= (and b!7823759 ((_ is Union!20953) (reg!21282 (regOne!42418 (regOne!42419 r1!6261))))) b!7825278))

(declare-fun b!7825279 () Bool)

(declare-fun e!4629175 () Bool)

(assert (=> b!7825279 (= e!4629175 tp_is_empty!52261)))

(assert (=> b!7823809 (= tp!2309688 e!4629175)))

(declare-fun b!7825282 () Bool)

(declare-fun tp!2310767 () Bool)

(declare-fun tp!2310769 () Bool)

(assert (=> b!7825282 (= e!4629175 (and tp!2310767 tp!2310769))))

(declare-fun b!7825281 () Bool)

(declare-fun tp!2310768 () Bool)

(assert (=> b!7825281 (= e!4629175 tp!2310768)))

(declare-fun b!7825280 () Bool)

(declare-fun tp!2310765 () Bool)

(declare-fun tp!2310766 () Bool)

(assert (=> b!7825280 (= e!4629175 (and tp!2310765 tp!2310766))))

(assert (= (and b!7823809 ((_ is ElementMatch!20953) (reg!21282 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825279))

(assert (= (and b!7823809 ((_ is Concat!29798) (reg!21282 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825280))

(assert (= (and b!7823809 ((_ is Star!20953) (reg!21282 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825281))

(assert (= (and b!7823809 ((_ is Union!20953) (reg!21282 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825282))

(declare-fun b!7825283 () Bool)

(declare-fun e!4629176 () Bool)

(assert (=> b!7825283 (= e!4629176 tp_is_empty!52261)))

(assert (=> b!7823800 (= tp!2309675 e!4629176)))

(declare-fun b!7825286 () Bool)

(declare-fun tp!2310772 () Bool)

(declare-fun tp!2310774 () Bool)

(assert (=> b!7825286 (= e!4629176 (and tp!2310772 tp!2310774))))

(declare-fun b!7825285 () Bool)

(declare-fun tp!2310773 () Bool)

(assert (=> b!7825285 (= e!4629176 tp!2310773)))

(declare-fun b!7825284 () Bool)

(declare-fun tp!2310770 () Bool)

(declare-fun tp!2310771 () Bool)

(assert (=> b!7825284 (= e!4629176 (and tp!2310770 tp!2310771))))

(assert (= (and b!7823800 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42419 (regOne!42419 r2!6199))))) b!7825283))

(assert (= (and b!7823800 ((_ is Concat!29798) (regOne!42418 (regOne!42419 (regOne!42419 r2!6199))))) b!7825284))

(assert (= (and b!7823800 ((_ is Star!20953) (regOne!42418 (regOne!42419 (regOne!42419 r2!6199))))) b!7825285))

(assert (= (and b!7823800 ((_ is Union!20953) (regOne!42418 (regOne!42419 (regOne!42419 r2!6199))))) b!7825286))

(declare-fun b!7825287 () Bool)

(declare-fun e!4629177 () Bool)

(assert (=> b!7825287 (= e!4629177 tp_is_empty!52261)))

(assert (=> b!7823800 (= tp!2309676 e!4629177)))

(declare-fun b!7825290 () Bool)

(declare-fun tp!2310777 () Bool)

(declare-fun tp!2310779 () Bool)

(assert (=> b!7825290 (= e!4629177 (and tp!2310777 tp!2310779))))

(declare-fun b!7825289 () Bool)

(declare-fun tp!2310778 () Bool)

(assert (=> b!7825289 (= e!4629177 tp!2310778)))

(declare-fun b!7825288 () Bool)

(declare-fun tp!2310775 () Bool)

(declare-fun tp!2310776 () Bool)

(assert (=> b!7825288 (= e!4629177 (and tp!2310775 tp!2310776))))

(assert (= (and b!7823800 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42419 (regOne!42419 r2!6199))))) b!7825287))

(assert (= (and b!7823800 ((_ is Concat!29798) (regTwo!42418 (regOne!42419 (regOne!42419 r2!6199))))) b!7825288))

(assert (= (and b!7823800 ((_ is Star!20953) (regTwo!42418 (regOne!42419 (regOne!42419 r2!6199))))) b!7825289))

(assert (= (and b!7823800 ((_ is Union!20953) (regTwo!42418 (regOne!42419 (regOne!42419 r2!6199))))) b!7825290))

(declare-fun b!7825291 () Bool)

(declare-fun e!4629178 () Bool)

(assert (=> b!7825291 (= e!4629178 tp_is_empty!52261)))

(assert (=> b!7823691 (= tp!2309539 e!4629178)))

(declare-fun b!7825294 () Bool)

(declare-fun tp!2310782 () Bool)

(declare-fun tp!2310784 () Bool)

(assert (=> b!7825294 (= e!4629178 (and tp!2310782 tp!2310784))))

(declare-fun b!7825293 () Bool)

(declare-fun tp!2310783 () Bool)

(assert (=> b!7825293 (= e!4629178 tp!2310783)))

(declare-fun b!7825292 () Bool)

(declare-fun tp!2310780 () Bool)

(declare-fun tp!2310781 () Bool)

(assert (=> b!7825292 (= e!4629178 (and tp!2310780 tp!2310781))))

(assert (= (and b!7823691 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7825291))

(assert (= (and b!7823691 ((_ is Concat!29798) (regOne!42419 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7825292))

(assert (= (and b!7823691 ((_ is Star!20953) (regOne!42419 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7825293))

(assert (= (and b!7823691 ((_ is Union!20953) (regOne!42419 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7825294))

(declare-fun b!7825295 () Bool)

(declare-fun e!4629179 () Bool)

(assert (=> b!7825295 (= e!4629179 tp_is_empty!52261)))

(assert (=> b!7823691 (= tp!2309541 e!4629179)))

(declare-fun b!7825298 () Bool)

(declare-fun tp!2310787 () Bool)

(declare-fun tp!2310789 () Bool)

(assert (=> b!7825298 (= e!4629179 (and tp!2310787 tp!2310789))))

(declare-fun b!7825297 () Bool)

(declare-fun tp!2310788 () Bool)

(assert (=> b!7825297 (= e!4629179 tp!2310788)))

(declare-fun b!7825296 () Bool)

(declare-fun tp!2310785 () Bool)

(declare-fun tp!2310786 () Bool)

(assert (=> b!7825296 (= e!4629179 (and tp!2310785 tp!2310786))))

(assert (= (and b!7823691 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7825295))

(assert (= (and b!7823691 ((_ is Concat!29798) (regTwo!42419 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7825296))

(assert (= (and b!7823691 ((_ is Star!20953) (regTwo!42419 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7825297))

(assert (= (and b!7823691 ((_ is Union!20953) (regTwo!42419 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7825298))

(declare-fun b!7825299 () Bool)

(declare-fun e!4629180 () Bool)

(assert (=> b!7825299 (= e!4629180 tp_is_empty!52261)))

(assert (=> b!7823786 (= tp!2309657 e!4629180)))

(declare-fun b!7825302 () Bool)

(declare-fun tp!2310792 () Bool)

(declare-fun tp!2310794 () Bool)

(assert (=> b!7825302 (= e!4629180 (and tp!2310792 tp!2310794))))

(declare-fun b!7825301 () Bool)

(declare-fun tp!2310793 () Bool)

(assert (=> b!7825301 (= e!4629180 tp!2310793)))

(declare-fun b!7825300 () Bool)

(declare-fun tp!2310790 () Bool)

(declare-fun tp!2310791 () Bool)

(assert (=> b!7825300 (= e!4629180 (and tp!2310790 tp!2310791))))

(assert (= (and b!7823786 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42419 (regOne!42419 r1!6261))))) b!7825299))

(assert (= (and b!7823786 ((_ is Concat!29798) (regOne!42419 (regTwo!42419 (regOne!42419 r1!6261))))) b!7825300))

(assert (= (and b!7823786 ((_ is Star!20953) (regOne!42419 (regTwo!42419 (regOne!42419 r1!6261))))) b!7825301))

(assert (= (and b!7823786 ((_ is Union!20953) (regOne!42419 (regTwo!42419 (regOne!42419 r1!6261))))) b!7825302))

(declare-fun b!7825303 () Bool)

(declare-fun e!4629181 () Bool)

(assert (=> b!7825303 (= e!4629181 tp_is_empty!52261)))

(assert (=> b!7823786 (= tp!2309659 e!4629181)))

(declare-fun b!7825306 () Bool)

(declare-fun tp!2310797 () Bool)

(declare-fun tp!2310799 () Bool)

(assert (=> b!7825306 (= e!4629181 (and tp!2310797 tp!2310799))))

(declare-fun b!7825305 () Bool)

(declare-fun tp!2310798 () Bool)

(assert (=> b!7825305 (= e!4629181 tp!2310798)))

(declare-fun b!7825304 () Bool)

(declare-fun tp!2310795 () Bool)

(declare-fun tp!2310796 () Bool)

(assert (=> b!7825304 (= e!4629181 (and tp!2310795 tp!2310796))))

(assert (= (and b!7823786 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42419 (regOne!42419 r1!6261))))) b!7825303))

(assert (= (and b!7823786 ((_ is Concat!29798) (regTwo!42419 (regTwo!42419 (regOne!42419 r1!6261))))) b!7825304))

(assert (= (and b!7823786 ((_ is Star!20953) (regTwo!42419 (regTwo!42419 (regOne!42419 r1!6261))))) b!7825305))

(assert (= (and b!7823786 ((_ is Union!20953) (regTwo!42419 (regTwo!42419 (regOne!42419 r1!6261))))) b!7825306))

(declare-fun b!7825307 () Bool)

(declare-fun e!4629182 () Bool)

(assert (=> b!7825307 (= e!4629182 tp_is_empty!52261)))

(assert (=> b!7823632 (= tp!2309468 e!4629182)))

(declare-fun b!7825310 () Bool)

(declare-fun tp!2310802 () Bool)

(declare-fun tp!2310804 () Bool)

(assert (=> b!7825310 (= e!4629182 (and tp!2310802 tp!2310804))))

(declare-fun b!7825309 () Bool)

(declare-fun tp!2310803 () Bool)

(assert (=> b!7825309 (= e!4629182 tp!2310803)))

(declare-fun b!7825308 () Bool)

(declare-fun tp!2310800 () Bool)

(declare-fun tp!2310801 () Bool)

(assert (=> b!7825308 (= e!4629182 (and tp!2310800 tp!2310801))))

(assert (= (and b!7823632 ((_ is ElementMatch!20953) (reg!21282 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825307))

(assert (= (and b!7823632 ((_ is Concat!29798) (reg!21282 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825308))

(assert (= (and b!7823632 ((_ is Star!20953) (reg!21282 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825309))

(assert (= (and b!7823632 ((_ is Union!20953) (reg!21282 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825310))

(declare-fun b!7825311 () Bool)

(declare-fun e!4629183 () Bool)

(assert (=> b!7825311 (= e!4629183 tp_is_empty!52261)))

(assert (=> b!7823743 (= tp!2309604 e!4629183)))

(declare-fun b!7825314 () Bool)

(declare-fun tp!2310807 () Bool)

(declare-fun tp!2310809 () Bool)

(assert (=> b!7825314 (= e!4629183 (and tp!2310807 tp!2310809))))

(declare-fun b!7825313 () Bool)

(declare-fun tp!2310808 () Bool)

(assert (=> b!7825313 (= e!4629183 tp!2310808)))

(declare-fun b!7825312 () Bool)

(declare-fun tp!2310805 () Bool)

(declare-fun tp!2310806 () Bool)

(assert (=> b!7825312 (= e!4629183 (and tp!2310805 tp!2310806))))

(assert (= (and b!7823743 ((_ is ElementMatch!20953) (regOne!42419 (reg!21282 (regTwo!42418 r2!6199))))) b!7825311))

(assert (= (and b!7823743 ((_ is Concat!29798) (regOne!42419 (reg!21282 (regTwo!42418 r2!6199))))) b!7825312))

(assert (= (and b!7823743 ((_ is Star!20953) (regOne!42419 (reg!21282 (regTwo!42418 r2!6199))))) b!7825313))

(assert (= (and b!7823743 ((_ is Union!20953) (regOne!42419 (reg!21282 (regTwo!42418 r2!6199))))) b!7825314))

(declare-fun b!7825315 () Bool)

(declare-fun e!4629184 () Bool)

(assert (=> b!7825315 (= e!4629184 tp_is_empty!52261)))

(assert (=> b!7823743 (= tp!2309606 e!4629184)))

(declare-fun b!7825318 () Bool)

(declare-fun tp!2310812 () Bool)

(declare-fun tp!2310814 () Bool)

(assert (=> b!7825318 (= e!4629184 (and tp!2310812 tp!2310814))))

(declare-fun b!7825317 () Bool)

(declare-fun tp!2310813 () Bool)

(assert (=> b!7825317 (= e!4629184 tp!2310813)))

(declare-fun b!7825316 () Bool)

(declare-fun tp!2310810 () Bool)

(declare-fun tp!2310811 () Bool)

(assert (=> b!7825316 (= e!4629184 (and tp!2310810 tp!2310811))))

(assert (= (and b!7823743 ((_ is ElementMatch!20953) (regTwo!42419 (reg!21282 (regTwo!42418 r2!6199))))) b!7825315))

(assert (= (and b!7823743 ((_ is Concat!29798) (regTwo!42419 (reg!21282 (regTwo!42418 r2!6199))))) b!7825316))

(assert (= (and b!7823743 ((_ is Star!20953) (regTwo!42419 (reg!21282 (regTwo!42418 r2!6199))))) b!7825317))

(assert (= (and b!7823743 ((_ is Union!20953) (regTwo!42419 (reg!21282 (regTwo!42418 r2!6199))))) b!7825318))

(declare-fun b!7825319 () Bool)

(declare-fun e!4629185 () Bool)

(assert (=> b!7825319 (= e!4629185 tp_is_empty!52261)))

(assert (=> b!7823641 (= tp!2309477 e!4629185)))

(declare-fun b!7825322 () Bool)

(declare-fun tp!2310817 () Bool)

(declare-fun tp!2310819 () Bool)

(assert (=> b!7825322 (= e!4629185 (and tp!2310817 tp!2310819))))

(declare-fun b!7825321 () Bool)

(declare-fun tp!2310818 () Bool)

(assert (=> b!7825321 (= e!4629185 tp!2310818)))

(declare-fun b!7825320 () Bool)

(declare-fun tp!2310815 () Bool)

(declare-fun tp!2310816 () Bool)

(assert (=> b!7825320 (= e!4629185 (and tp!2310815 tp!2310816))))

(assert (= (and b!7823641 ((_ is ElementMatch!20953) (regOne!42419 (reg!21282 (reg!21282 r1!6261))))) b!7825319))

(assert (= (and b!7823641 ((_ is Concat!29798) (regOne!42419 (reg!21282 (reg!21282 r1!6261))))) b!7825320))

(assert (= (and b!7823641 ((_ is Star!20953) (regOne!42419 (reg!21282 (reg!21282 r1!6261))))) b!7825321))

(assert (= (and b!7823641 ((_ is Union!20953) (regOne!42419 (reg!21282 (reg!21282 r1!6261))))) b!7825322))

(declare-fun b!7825323 () Bool)

(declare-fun e!4629186 () Bool)

(assert (=> b!7825323 (= e!4629186 tp_is_empty!52261)))

(assert (=> b!7823641 (= tp!2309479 e!4629186)))

(declare-fun b!7825326 () Bool)

(declare-fun tp!2310822 () Bool)

(declare-fun tp!2310824 () Bool)

(assert (=> b!7825326 (= e!4629186 (and tp!2310822 tp!2310824))))

(declare-fun b!7825325 () Bool)

(declare-fun tp!2310823 () Bool)

(assert (=> b!7825325 (= e!4629186 tp!2310823)))

(declare-fun b!7825324 () Bool)

(declare-fun tp!2310820 () Bool)

(declare-fun tp!2310821 () Bool)

(assert (=> b!7825324 (= e!4629186 (and tp!2310820 tp!2310821))))

(assert (= (and b!7823641 ((_ is ElementMatch!20953) (regTwo!42419 (reg!21282 (reg!21282 r1!6261))))) b!7825323))

(assert (= (and b!7823641 ((_ is Concat!29798) (regTwo!42419 (reg!21282 (reg!21282 r1!6261))))) b!7825324))

(assert (= (and b!7823641 ((_ is Star!20953) (regTwo!42419 (reg!21282 (reg!21282 r1!6261))))) b!7825325))

(assert (= (and b!7823641 ((_ is Union!20953) (regTwo!42419 (reg!21282 (reg!21282 r1!6261))))) b!7825326))

(declare-fun b!7825327 () Bool)

(declare-fun e!4629187 () Bool)

(assert (=> b!7825327 (= e!4629187 tp_is_empty!52261)))

(assert (=> b!7823734 (= tp!2309595 e!4629187)))

(declare-fun b!7825330 () Bool)

(declare-fun tp!2310827 () Bool)

(declare-fun tp!2310829 () Bool)

(assert (=> b!7825330 (= e!4629187 (and tp!2310827 tp!2310829))))

(declare-fun b!7825329 () Bool)

(declare-fun tp!2310828 () Bool)

(assert (=> b!7825329 (= e!4629187 tp!2310828)))

(declare-fun b!7825328 () Bool)

(declare-fun tp!2310825 () Bool)

(declare-fun tp!2310826 () Bool)

(assert (=> b!7825328 (= e!4629187 (and tp!2310825 tp!2310826))))

(assert (= (and b!7823734 ((_ is ElementMatch!20953) (reg!21282 (regOne!42419 (regOne!42418 r1!6261))))) b!7825327))

(assert (= (and b!7823734 ((_ is Concat!29798) (reg!21282 (regOne!42419 (regOne!42418 r1!6261))))) b!7825328))

(assert (= (and b!7823734 ((_ is Star!20953) (reg!21282 (regOne!42419 (regOne!42418 r1!6261))))) b!7825329))

(assert (= (and b!7823734 ((_ is Union!20953) (reg!21282 (regOne!42419 (regOne!42418 r1!6261))))) b!7825330))

(declare-fun b!7825331 () Bool)

(declare-fun e!4629188 () Bool)

(assert (=> b!7825331 (= e!4629188 tp_is_empty!52261)))

(assert (=> b!7823623 (= tp!2309455 e!4629188)))

(declare-fun b!7825334 () Bool)

(declare-fun tp!2310832 () Bool)

(declare-fun tp!2310834 () Bool)

(assert (=> b!7825334 (= e!4629188 (and tp!2310832 tp!2310834))))

(declare-fun b!7825333 () Bool)

(declare-fun tp!2310833 () Bool)

(assert (=> b!7825333 (= e!4629188 tp!2310833)))

(declare-fun b!7825332 () Bool)

(declare-fun tp!2310830 () Bool)

(declare-fun tp!2310831 () Bool)

(assert (=> b!7825332 (= e!4629188 (and tp!2310830 tp!2310831))))

(assert (= (and b!7823623 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42418 (regOne!42418 r2!6199))))) b!7825331))

(assert (= (and b!7823623 ((_ is Concat!29798) (regOne!42418 (regOne!42418 (regOne!42418 r2!6199))))) b!7825332))

(assert (= (and b!7823623 ((_ is Star!20953) (regOne!42418 (regOne!42418 (regOne!42418 r2!6199))))) b!7825333))

(assert (= (and b!7823623 ((_ is Union!20953) (regOne!42418 (regOne!42418 (regOne!42418 r2!6199))))) b!7825334))

(declare-fun b!7825335 () Bool)

(declare-fun e!4629189 () Bool)

(assert (=> b!7825335 (= e!4629189 tp_is_empty!52261)))

(assert (=> b!7823623 (= tp!2309456 e!4629189)))

(declare-fun b!7825338 () Bool)

(declare-fun tp!2310837 () Bool)

(declare-fun tp!2310839 () Bool)

(assert (=> b!7825338 (= e!4629189 (and tp!2310837 tp!2310839))))

(declare-fun b!7825337 () Bool)

(declare-fun tp!2310838 () Bool)

(assert (=> b!7825337 (= e!4629189 tp!2310838)))

(declare-fun b!7825336 () Bool)

(declare-fun tp!2310835 () Bool)

(declare-fun tp!2310836 () Bool)

(assert (=> b!7825336 (= e!4629189 (and tp!2310835 tp!2310836))))

(assert (= (and b!7823623 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42418 (regOne!42418 r2!6199))))) b!7825335))

(assert (= (and b!7823623 ((_ is Concat!29798) (regTwo!42418 (regOne!42418 (regOne!42418 r2!6199))))) b!7825336))

(assert (= (and b!7823623 ((_ is Star!20953) (regTwo!42418 (regOne!42418 (regOne!42418 r2!6199))))) b!7825337))

(assert (= (and b!7823623 ((_ is Union!20953) (regTwo!42418 (regOne!42418 (regOne!42418 r2!6199))))) b!7825338))

(declare-fun b!7825339 () Bool)

(declare-fun e!4629190 () Bool)

(assert (=> b!7825339 (= e!4629190 tp_is_empty!52261)))

(assert (=> b!7823725 (= tp!2309582 e!4629190)))

(declare-fun b!7825342 () Bool)

(declare-fun tp!2310842 () Bool)

(declare-fun tp!2310844 () Bool)

(assert (=> b!7825342 (= e!4629190 (and tp!2310842 tp!2310844))))

(declare-fun b!7825341 () Bool)

(declare-fun tp!2310843 () Bool)

(assert (=> b!7825341 (= e!4629190 tp!2310843)))

(declare-fun b!7825340 () Bool)

(declare-fun tp!2310840 () Bool)

(declare-fun tp!2310841 () Bool)

(assert (=> b!7825340 (= e!4629190 (and tp!2310840 tp!2310841))))

(assert (= (and b!7823725 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42419 (regTwo!42418 r2!6199))))) b!7825339))

(assert (= (and b!7823725 ((_ is Concat!29798) (regOne!42418 (regOne!42419 (regTwo!42418 r2!6199))))) b!7825340))

(assert (= (and b!7823725 ((_ is Star!20953) (regOne!42418 (regOne!42419 (regTwo!42418 r2!6199))))) b!7825341))

(assert (= (and b!7823725 ((_ is Union!20953) (regOne!42418 (regOne!42419 (regTwo!42418 r2!6199))))) b!7825342))

(declare-fun b!7825343 () Bool)

(declare-fun e!4629191 () Bool)

(assert (=> b!7825343 (= e!4629191 tp_is_empty!52261)))

(assert (=> b!7823725 (= tp!2309583 e!4629191)))

(declare-fun b!7825346 () Bool)

(declare-fun tp!2310847 () Bool)

(declare-fun tp!2310849 () Bool)

(assert (=> b!7825346 (= e!4629191 (and tp!2310847 tp!2310849))))

(declare-fun b!7825345 () Bool)

(declare-fun tp!2310848 () Bool)

(assert (=> b!7825345 (= e!4629191 tp!2310848)))

(declare-fun b!7825344 () Bool)

(declare-fun tp!2310845 () Bool)

(declare-fun tp!2310846 () Bool)

(assert (=> b!7825344 (= e!4629191 (and tp!2310845 tp!2310846))))

(assert (= (and b!7823725 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42419 (regTwo!42418 r2!6199))))) b!7825343))

(assert (= (and b!7823725 ((_ is Concat!29798) (regTwo!42418 (regOne!42419 (regTwo!42418 r2!6199))))) b!7825344))

(assert (= (and b!7823725 ((_ is Star!20953) (regTwo!42418 (regOne!42419 (regTwo!42418 r2!6199))))) b!7825345))

(assert (= (and b!7823725 ((_ is Union!20953) (regTwo!42418 (regOne!42419 (regTwo!42418 r2!6199))))) b!7825346))

(declare-fun b!7825347 () Bool)

(declare-fun e!4629192 () Bool)

(assert (=> b!7825347 (= e!4629192 tp_is_empty!52261)))

(assert (=> b!7823677 (= tp!2309524 e!4629192)))

(declare-fun b!7825350 () Bool)

(declare-fun tp!2310852 () Bool)

(declare-fun tp!2310854 () Bool)

(assert (=> b!7825350 (= e!4629192 (and tp!2310852 tp!2310854))))

(declare-fun b!7825349 () Bool)

(declare-fun tp!2310853 () Bool)

(assert (=> b!7825349 (= e!4629192 tp!2310853)))

(declare-fun b!7825348 () Bool)

(declare-fun tp!2310850 () Bool)

(declare-fun tp!2310851 () Bool)

(assert (=> b!7825348 (= e!4629192 (and tp!2310850 tp!2310851))))

(assert (= (and b!7823677 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42418 (reg!21282 r2!6199))))) b!7825347))

(assert (= (and b!7823677 ((_ is Concat!29798) (reg!21282 (regTwo!42418 (reg!21282 r2!6199))))) b!7825348))

(assert (= (and b!7823677 ((_ is Star!20953) (reg!21282 (regTwo!42418 (reg!21282 r2!6199))))) b!7825349))

(assert (= (and b!7823677 ((_ is Union!20953) (reg!21282 (regTwo!42418 (reg!21282 r2!6199))))) b!7825350))

(declare-fun b!7825351 () Bool)

(declare-fun e!4629193 () Bool)

(assert (=> b!7825351 (= e!4629193 tp_is_empty!52261)))

(assert (=> b!7823652 (= tp!2309493 e!4629193)))

(declare-fun b!7825354 () Bool)

(declare-fun tp!2310857 () Bool)

(declare-fun tp!2310859 () Bool)

(assert (=> b!7825354 (= e!4629193 (and tp!2310857 tp!2310859))))

(declare-fun b!7825353 () Bool)

(declare-fun tp!2310858 () Bool)

(assert (=> b!7825353 (= e!4629193 tp!2310858)))

(declare-fun b!7825352 () Bool)

(declare-fun tp!2310855 () Bool)

(declare-fun tp!2310856 () Bool)

(assert (=> b!7825352 (= e!4629193 (and tp!2310855 tp!2310856))))

(assert (= (and b!7823652 ((_ is ElementMatch!20953) (reg!21282 (reg!21282 (regTwo!42419 r1!6261))))) b!7825351))

(assert (= (and b!7823652 ((_ is Concat!29798) (reg!21282 (reg!21282 (regTwo!42419 r1!6261))))) b!7825352))

(assert (= (and b!7823652 ((_ is Star!20953) (reg!21282 (reg!21282 (regTwo!42419 r1!6261))))) b!7825353))

(assert (= (and b!7823652 ((_ is Union!20953) (reg!21282 (reg!21282 (regTwo!42419 r1!6261))))) b!7825354))

(declare-fun b!7825355 () Bool)

(declare-fun e!4629194 () Bool)

(assert (=> b!7825355 (= e!4629194 tp_is_empty!52261)))

(assert (=> b!7823661 (= tp!2309502 e!4629194)))

(declare-fun b!7825358 () Bool)

(declare-fun tp!2310862 () Bool)

(declare-fun tp!2310864 () Bool)

(assert (=> b!7825358 (= e!4629194 (and tp!2310862 tp!2310864))))

(declare-fun b!7825357 () Bool)

(declare-fun tp!2310863 () Bool)

(assert (=> b!7825357 (= e!4629194 tp!2310863)))

(declare-fun b!7825356 () Bool)

(declare-fun tp!2310860 () Bool)

(declare-fun tp!2310861 () Bool)

(assert (=> b!7825356 (= e!4629194 (and tp!2310860 tp!2310861))))

(assert (= (and b!7823661 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7825355))

(assert (= (and b!7823661 ((_ is Concat!29798) (regOne!42419 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7825356))

(assert (= (and b!7823661 ((_ is Star!20953) (regOne!42419 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7825357))

(assert (= (and b!7823661 ((_ is Union!20953) (regOne!42419 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7825358))

(declare-fun b!7825359 () Bool)

(declare-fun e!4629195 () Bool)

(assert (=> b!7825359 (= e!4629195 tp_is_empty!52261)))

(assert (=> b!7823661 (= tp!2309504 e!4629195)))

(declare-fun b!7825362 () Bool)

(declare-fun tp!2310867 () Bool)

(declare-fun tp!2310869 () Bool)

(assert (=> b!7825362 (= e!4629195 (and tp!2310867 tp!2310869))))

(declare-fun b!7825361 () Bool)

(declare-fun tp!2310868 () Bool)

(assert (=> b!7825361 (= e!4629195 tp!2310868)))

(declare-fun b!7825360 () Bool)

(declare-fun tp!2310865 () Bool)

(declare-fun tp!2310866 () Bool)

(assert (=> b!7825360 (= e!4629195 (and tp!2310865 tp!2310866))))

(assert (= (and b!7823661 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7825359))

(assert (= (and b!7823661 ((_ is Concat!29798) (regTwo!42419 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7825360))

(assert (= (and b!7823661 ((_ is Star!20953) (regTwo!42419 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7825361))

(assert (= (and b!7823661 ((_ is Union!20953) (regTwo!42419 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7825362))

(declare-fun b!7825363 () Bool)

(declare-fun e!4629196 () Bool)

(assert (=> b!7825363 (= e!4629196 tp_is_empty!52261)))

(assert (=> b!7823702 (= tp!2309555 e!4629196)))

(declare-fun b!7825366 () Bool)

(declare-fun tp!2310872 () Bool)

(declare-fun tp!2310874 () Bool)

(assert (=> b!7825366 (= e!4629196 (and tp!2310872 tp!2310874))))

(declare-fun b!7825365 () Bool)

(declare-fun tp!2310873 () Bool)

(assert (=> b!7825365 (= e!4629196 tp!2310873)))

(declare-fun b!7825364 () Bool)

(declare-fun tp!2310870 () Bool)

(declare-fun tp!2310871 () Bool)

(assert (=> b!7825364 (= e!4629196 (and tp!2310870 tp!2310871))))

(assert (= (and b!7823702 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42419 (reg!21282 r2!6199))))) b!7825363))

(assert (= (and b!7823702 ((_ is Concat!29798) (reg!21282 (regTwo!42419 (reg!21282 r2!6199))))) b!7825364))

(assert (= (and b!7823702 ((_ is Star!20953) (reg!21282 (regTwo!42419 (reg!21282 r2!6199))))) b!7825365))

(assert (= (and b!7823702 ((_ is Union!20953) (reg!21282 (regTwo!42419 (reg!21282 r2!6199))))) b!7825366))

(declare-fun b!7825367 () Bool)

(declare-fun e!4629197 () Bool)

(assert (=> b!7825367 (= e!4629197 tp_is_empty!52261)))

(assert (=> b!7823711 (= tp!2309564 e!4629197)))

(declare-fun b!7825370 () Bool)

(declare-fun tp!2310877 () Bool)

(declare-fun tp!2310879 () Bool)

(assert (=> b!7825370 (= e!4629197 (and tp!2310877 tp!2310879))))

(declare-fun b!7825369 () Bool)

(declare-fun tp!2310878 () Bool)

(assert (=> b!7825369 (= e!4629197 tp!2310878)))

(declare-fun b!7825368 () Bool)

(declare-fun tp!2310875 () Bool)

(declare-fun tp!2310876 () Bool)

(assert (=> b!7825368 (= e!4629197 (and tp!2310875 tp!2310876))))

(assert (= (and b!7823711 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42418 (regOne!42418 r1!6261))))) b!7825367))

(assert (= (and b!7823711 ((_ is Concat!29798) (regOne!42419 (regTwo!42418 (regOne!42418 r1!6261))))) b!7825368))

(assert (= (and b!7823711 ((_ is Star!20953) (regOne!42419 (regTwo!42418 (regOne!42418 r1!6261))))) b!7825369))

(assert (= (and b!7823711 ((_ is Union!20953) (regOne!42419 (regTwo!42418 (regOne!42418 r1!6261))))) b!7825370))

(declare-fun b!7825371 () Bool)

(declare-fun e!4629198 () Bool)

(assert (=> b!7825371 (= e!4629198 tp_is_empty!52261)))

(assert (=> b!7823711 (= tp!2309566 e!4629198)))

(declare-fun b!7825374 () Bool)

(declare-fun tp!2310882 () Bool)

(declare-fun tp!2310884 () Bool)

(assert (=> b!7825374 (= e!4629198 (and tp!2310882 tp!2310884))))

(declare-fun b!7825373 () Bool)

(declare-fun tp!2310883 () Bool)

(assert (=> b!7825373 (= e!4629198 tp!2310883)))

(declare-fun b!7825372 () Bool)

(declare-fun tp!2310880 () Bool)

(declare-fun tp!2310881 () Bool)

(assert (=> b!7825372 (= e!4629198 (and tp!2310880 tp!2310881))))

(assert (= (and b!7823711 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42418 (regOne!42418 r1!6261))))) b!7825371))

(assert (= (and b!7823711 ((_ is Concat!29798) (regTwo!42419 (regTwo!42418 (regOne!42418 r1!6261))))) b!7825372))

(assert (= (and b!7823711 ((_ is Star!20953) (regTwo!42419 (regTwo!42418 (regOne!42418 r1!6261))))) b!7825373))

(assert (= (and b!7823711 ((_ is Union!20953) (regTwo!42419 (regTwo!42418 (regOne!42418 r1!6261))))) b!7825374))

(declare-fun b!7825375 () Bool)

(declare-fun e!4629199 () Bool)

(assert (=> b!7825375 (= e!4629199 tp_is_empty!52261)))

(assert (=> b!7823693 (= tp!2309542 e!4629199)))

(declare-fun b!7825378 () Bool)

(declare-fun tp!2310887 () Bool)

(declare-fun tp!2310889 () Bool)

(assert (=> b!7825378 (= e!4629199 (and tp!2310887 tp!2310889))))

(declare-fun b!7825377 () Bool)

(declare-fun tp!2310888 () Bool)

(assert (=> b!7825377 (= e!4629199 tp!2310888)))

(declare-fun b!7825376 () Bool)

(declare-fun tp!2310885 () Bool)

(declare-fun tp!2310886 () Bool)

(assert (=> b!7825376 (= e!4629199 (and tp!2310885 tp!2310886))))

(assert (= (and b!7823693 ((_ is ElementMatch!20953) (regOne!42418 (reg!21282 (regOne!42418 r1!6261))))) b!7825375))

(assert (= (and b!7823693 ((_ is Concat!29798) (regOne!42418 (reg!21282 (regOne!42418 r1!6261))))) b!7825376))

(assert (= (and b!7823693 ((_ is Star!20953) (regOne!42418 (reg!21282 (regOne!42418 r1!6261))))) b!7825377))

(assert (= (and b!7823693 ((_ is Union!20953) (regOne!42418 (reg!21282 (regOne!42418 r1!6261))))) b!7825378))

(declare-fun b!7825379 () Bool)

(declare-fun e!4629200 () Bool)

(assert (=> b!7825379 (= e!4629200 tp_is_empty!52261)))

(assert (=> b!7823693 (= tp!2309543 e!4629200)))

(declare-fun b!7825382 () Bool)

(declare-fun tp!2310892 () Bool)

(declare-fun tp!2310894 () Bool)

(assert (=> b!7825382 (= e!4629200 (and tp!2310892 tp!2310894))))

(declare-fun b!7825381 () Bool)

(declare-fun tp!2310893 () Bool)

(assert (=> b!7825381 (= e!4629200 tp!2310893)))

(declare-fun b!7825380 () Bool)

(declare-fun tp!2310890 () Bool)

(declare-fun tp!2310891 () Bool)

(assert (=> b!7825380 (= e!4629200 (and tp!2310890 tp!2310891))))

(assert (= (and b!7823693 ((_ is ElementMatch!20953) (regTwo!42418 (reg!21282 (regOne!42418 r1!6261))))) b!7825379))

(assert (= (and b!7823693 ((_ is Concat!29798) (regTwo!42418 (reg!21282 (regOne!42418 r1!6261))))) b!7825380))

(assert (= (and b!7823693 ((_ is Star!20953) (regTwo!42418 (reg!21282 (regOne!42418 r1!6261))))) b!7825381))

(assert (= (and b!7823693 ((_ is Union!20953) (regTwo!42418 (reg!21282 (regOne!42418 r1!6261))))) b!7825382))

(declare-fun b!7825383 () Bool)

(declare-fun e!4629201 () Bool)

(assert (=> b!7825383 (= e!4629201 tp_is_empty!52261)))

(assert (=> b!7823806 (= tp!2309682 e!4629201)))

(declare-fun b!7825386 () Bool)

(declare-fun tp!2310897 () Bool)

(declare-fun tp!2310899 () Bool)

(assert (=> b!7825386 (= e!4629201 (and tp!2310897 tp!2310899))))

(declare-fun b!7825385 () Bool)

(declare-fun tp!2310898 () Bool)

(assert (=> b!7825385 (= e!4629201 tp!2310898)))

(declare-fun b!7825384 () Bool)

(declare-fun tp!2310895 () Bool)

(declare-fun tp!2310896 () Bool)

(assert (=> b!7825384 (= e!4629201 (and tp!2310895 tp!2310896))))

(assert (= (and b!7823806 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42419 (regOne!42419 r2!6199))))) b!7825383))

(assert (= (and b!7823806 ((_ is Concat!29798) (regOne!42419 (regTwo!42419 (regOne!42419 r2!6199))))) b!7825384))

(assert (= (and b!7823806 ((_ is Star!20953) (regOne!42419 (regTwo!42419 (regOne!42419 r2!6199))))) b!7825385))

(assert (= (and b!7823806 ((_ is Union!20953) (regOne!42419 (regTwo!42419 (regOne!42419 r2!6199))))) b!7825386))

(declare-fun b!7825387 () Bool)

(declare-fun e!4629202 () Bool)

(assert (=> b!7825387 (= e!4629202 tp_is_empty!52261)))

(assert (=> b!7823806 (= tp!2309684 e!4629202)))

(declare-fun b!7825390 () Bool)

(declare-fun tp!2310902 () Bool)

(declare-fun tp!2310904 () Bool)

(assert (=> b!7825390 (= e!4629202 (and tp!2310902 tp!2310904))))

(declare-fun b!7825389 () Bool)

(declare-fun tp!2310903 () Bool)

(assert (=> b!7825389 (= e!4629202 tp!2310903)))

(declare-fun b!7825388 () Bool)

(declare-fun tp!2310900 () Bool)

(declare-fun tp!2310901 () Bool)

(assert (=> b!7825388 (= e!4629202 (and tp!2310900 tp!2310901))))

(assert (= (and b!7823806 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42419 (regOne!42419 r2!6199))))) b!7825387))

(assert (= (and b!7823806 ((_ is Concat!29798) (regTwo!42419 (regTwo!42419 (regOne!42419 r2!6199))))) b!7825388))

(assert (= (and b!7823806 ((_ is Star!20953) (regTwo!42419 (regTwo!42419 (regOne!42419 r2!6199))))) b!7825389))

(assert (= (and b!7823806 ((_ is Union!20953) (regTwo!42419 (regTwo!42419 (regOne!42419 r2!6199))))) b!7825390))

(declare-fun b!7825391 () Bool)

(declare-fun e!4629203 () Bool)

(assert (=> b!7825391 (= e!4629203 tp_is_empty!52261)))

(assert (=> b!7823797 (= tp!2309673 e!4629203)))

(declare-fun b!7825394 () Bool)

(declare-fun tp!2310907 () Bool)

(declare-fun tp!2310909 () Bool)

(assert (=> b!7825394 (= e!4629203 (and tp!2310907 tp!2310909))))

(declare-fun b!7825393 () Bool)

(declare-fun tp!2310908 () Bool)

(assert (=> b!7825393 (= e!4629203 tp!2310908)))

(declare-fun b!7825392 () Bool)

(declare-fun tp!2310905 () Bool)

(declare-fun tp!2310906 () Bool)

(assert (=> b!7825392 (= e!4629203 (and tp!2310905 tp!2310906))))

(assert (= (and b!7823797 ((_ is ElementMatch!20953) (reg!21282 (reg!21282 (regTwo!42418 r1!6261))))) b!7825391))

(assert (= (and b!7823797 ((_ is Concat!29798) (reg!21282 (reg!21282 (regTwo!42418 r1!6261))))) b!7825392))

(assert (= (and b!7823797 ((_ is Star!20953) (reg!21282 (reg!21282 (regTwo!42418 r1!6261))))) b!7825393))

(assert (= (and b!7823797 ((_ is Union!20953) (reg!21282 (reg!21282 (regTwo!42418 r1!6261))))) b!7825394))

(declare-fun b!7825395 () Bool)

(declare-fun e!4629204 () Bool)

(assert (=> b!7825395 (= e!4629204 tp_is_empty!52261)))

(assert (=> b!7823788 (= tp!2309660 e!4629204)))

(declare-fun b!7825398 () Bool)

(declare-fun tp!2310912 () Bool)

(declare-fun tp!2310914 () Bool)

(assert (=> b!7825398 (= e!4629204 (and tp!2310912 tp!2310914))))

(declare-fun b!7825397 () Bool)

(declare-fun tp!2310913 () Bool)

(assert (=> b!7825397 (= e!4629204 tp!2310913)))

(declare-fun b!7825396 () Bool)

(declare-fun tp!2310910 () Bool)

(declare-fun tp!2310911 () Bool)

(assert (=> b!7825396 (= e!4629204 (and tp!2310910 tp!2310911))))

(assert (= (and b!7823788 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42418 (reg!21282 r1!6261))))) b!7825395))

(assert (= (and b!7823788 ((_ is Concat!29798) (regOne!42418 (regOne!42418 (reg!21282 r1!6261))))) b!7825396))

(assert (= (and b!7823788 ((_ is Star!20953) (regOne!42418 (regOne!42418 (reg!21282 r1!6261))))) b!7825397))

(assert (= (and b!7823788 ((_ is Union!20953) (regOne!42418 (regOne!42418 (reg!21282 r1!6261))))) b!7825398))

(declare-fun b!7825399 () Bool)

(declare-fun e!4629205 () Bool)

(assert (=> b!7825399 (= e!4629205 tp_is_empty!52261)))

(assert (=> b!7823788 (= tp!2309661 e!4629205)))

(declare-fun b!7825402 () Bool)

(declare-fun tp!2310917 () Bool)

(declare-fun tp!2310919 () Bool)

(assert (=> b!7825402 (= e!4629205 (and tp!2310917 tp!2310919))))

(declare-fun b!7825401 () Bool)

(declare-fun tp!2310918 () Bool)

(assert (=> b!7825401 (= e!4629205 tp!2310918)))

(declare-fun b!7825400 () Bool)

(declare-fun tp!2310915 () Bool)

(declare-fun tp!2310916 () Bool)

(assert (=> b!7825400 (= e!4629205 (and tp!2310915 tp!2310916))))

(assert (= (and b!7823788 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42418 (reg!21282 r1!6261))))) b!7825399))

(assert (= (and b!7823788 ((_ is Concat!29798) (regTwo!42418 (regOne!42418 (reg!21282 r1!6261))))) b!7825400))

(assert (= (and b!7823788 ((_ is Star!20953) (regTwo!42418 (regOne!42418 (reg!21282 r1!6261))))) b!7825401))

(assert (= (and b!7823788 ((_ is Union!20953) (regTwo!42418 (regOne!42418 (reg!21282 r1!6261))))) b!7825402))

(declare-fun b!7825403 () Bool)

(declare-fun e!4629206 () Bool)

(assert (=> b!7825403 (= e!4629206 tp_is_empty!52261)))

(assert (=> b!7823745 (= tp!2309607 e!4629206)))

(declare-fun b!7825406 () Bool)

(declare-fun tp!2310922 () Bool)

(declare-fun tp!2310924 () Bool)

(assert (=> b!7825406 (= e!4629206 (and tp!2310922 tp!2310924))))

(declare-fun b!7825405 () Bool)

(declare-fun tp!2310923 () Bool)

(assert (=> b!7825405 (= e!4629206 tp!2310923)))

(declare-fun b!7825404 () Bool)

(declare-fun tp!2310920 () Bool)

(declare-fun tp!2310921 () Bool)

(assert (=> b!7825404 (= e!4629206 (and tp!2310920 tp!2310921))))

(assert (= (and b!7823745 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42418 (regTwo!42418 r2!6199))))) b!7825403))

(assert (= (and b!7823745 ((_ is Concat!29798) (regOne!42418 (regOne!42418 (regTwo!42418 r2!6199))))) b!7825404))

(assert (= (and b!7823745 ((_ is Star!20953) (regOne!42418 (regOne!42418 (regTwo!42418 r2!6199))))) b!7825405))

(assert (= (and b!7823745 ((_ is Union!20953) (regOne!42418 (regOne!42418 (regTwo!42418 r2!6199))))) b!7825406))

(declare-fun b!7825407 () Bool)

(declare-fun e!4629207 () Bool)

(assert (=> b!7825407 (= e!4629207 tp_is_empty!52261)))

(assert (=> b!7823745 (= tp!2309608 e!4629207)))

(declare-fun b!7825410 () Bool)

(declare-fun tp!2310927 () Bool)

(declare-fun tp!2310929 () Bool)

(assert (=> b!7825410 (= e!4629207 (and tp!2310927 tp!2310929))))

(declare-fun b!7825409 () Bool)

(declare-fun tp!2310928 () Bool)

(assert (=> b!7825409 (= e!4629207 tp!2310928)))

(declare-fun b!7825408 () Bool)

(declare-fun tp!2310925 () Bool)

(declare-fun tp!2310926 () Bool)

(assert (=> b!7825408 (= e!4629207 (and tp!2310925 tp!2310926))))

(assert (= (and b!7823745 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42418 (regTwo!42418 r2!6199))))) b!7825407))

(assert (= (and b!7823745 ((_ is Concat!29798) (regTwo!42418 (regOne!42418 (regTwo!42418 r2!6199))))) b!7825408))

(assert (= (and b!7823745 ((_ is Star!20953) (regTwo!42418 (regOne!42418 (regTwo!42418 r2!6199))))) b!7825409))

(assert (= (and b!7823745 ((_ is Union!20953) (regTwo!42418 (regOne!42418 (regTwo!42418 r2!6199))))) b!7825410))

(declare-fun b!7825411 () Bool)

(declare-fun e!4629208 () Bool)

(assert (=> b!7825411 (= e!4629208 tp_is_empty!52261)))

(assert (=> b!7823643 (= tp!2309480 e!4629208)))

(declare-fun b!7825414 () Bool)

(declare-fun tp!2310932 () Bool)

(declare-fun tp!2310934 () Bool)

(assert (=> b!7825414 (= e!4629208 (and tp!2310932 tp!2310934))))

(declare-fun b!7825413 () Bool)

(declare-fun tp!2310933 () Bool)

(assert (=> b!7825413 (= e!4629208 tp!2310933)))

(declare-fun b!7825412 () Bool)

(declare-fun tp!2310930 () Bool)

(declare-fun tp!2310931 () Bool)

(assert (=> b!7825412 (= e!4629208 (and tp!2310930 tp!2310931))))

(assert (= (and b!7823643 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42419 (regTwo!42419 r1!6261))))) b!7825411))

(assert (= (and b!7823643 ((_ is Concat!29798) (regOne!42418 (regOne!42419 (regTwo!42419 r1!6261))))) b!7825412))

(assert (= (and b!7823643 ((_ is Star!20953) (regOne!42418 (regOne!42419 (regTwo!42419 r1!6261))))) b!7825413))

(assert (= (and b!7823643 ((_ is Union!20953) (regOne!42418 (regOne!42419 (regTwo!42419 r1!6261))))) b!7825414))

(declare-fun b!7825415 () Bool)

(declare-fun e!4629209 () Bool)

(assert (=> b!7825415 (= e!4629209 tp_is_empty!52261)))

(assert (=> b!7823643 (= tp!2309481 e!4629209)))

(declare-fun b!7825418 () Bool)

(declare-fun tp!2310937 () Bool)

(declare-fun tp!2310939 () Bool)

(assert (=> b!7825418 (= e!4629209 (and tp!2310937 tp!2310939))))

(declare-fun b!7825417 () Bool)

(declare-fun tp!2310938 () Bool)

(assert (=> b!7825417 (= e!4629209 tp!2310938)))

(declare-fun b!7825416 () Bool)

(declare-fun tp!2310935 () Bool)

(declare-fun tp!2310936 () Bool)

(assert (=> b!7825416 (= e!4629209 (and tp!2310935 tp!2310936))))

(assert (= (and b!7823643 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42419 (regTwo!42419 r1!6261))))) b!7825415))

(assert (= (and b!7823643 ((_ is Concat!29798) (regTwo!42418 (regOne!42419 (regTwo!42419 r1!6261))))) b!7825416))

(assert (= (and b!7823643 ((_ is Star!20953) (regTwo!42418 (regOne!42419 (regTwo!42419 r1!6261))))) b!7825417))

(assert (= (and b!7823643 ((_ is Union!20953) (regTwo!42418 (regOne!42419 (regTwo!42419 r1!6261))))) b!7825418))

(declare-fun b!7825419 () Bool)

(declare-fun e!4629210 () Bool)

(assert (=> b!7825419 (= e!4629210 tp_is_empty!52261)))

(assert (=> b!7823620 (= tp!2309453 e!4629210)))

(declare-fun b!7825422 () Bool)

(declare-fun tp!2310942 () Bool)

(declare-fun tp!2310944 () Bool)

(assert (=> b!7825422 (= e!4629210 (and tp!2310942 tp!2310944))))

(declare-fun b!7825421 () Bool)

(declare-fun tp!2310943 () Bool)

(assert (=> b!7825421 (= e!4629210 tp!2310943)))

(declare-fun b!7825420 () Bool)

(declare-fun tp!2310940 () Bool)

(declare-fun tp!2310941 () Bool)

(assert (=> b!7825420 (= e!4629210 (and tp!2310940 tp!2310941))))

(assert (= (and b!7823620 ((_ is ElementMatch!20953) (reg!21282 (reg!21282 (regOne!42418 r2!6199))))) b!7825419))

(assert (= (and b!7823620 ((_ is Concat!29798) (reg!21282 (reg!21282 (regOne!42418 r2!6199))))) b!7825420))

(assert (= (and b!7823620 ((_ is Star!20953) (reg!21282 (reg!21282 (regOne!42418 r2!6199))))) b!7825421))

(assert (= (and b!7823620 ((_ is Union!20953) (reg!21282 (reg!21282 (regOne!42418 r2!6199))))) b!7825422))

(declare-fun b!7825423 () Bool)

(declare-fun e!4629211 () Bool)

(assert (=> b!7825423 (= e!4629211 tp_is_empty!52261)))

(assert (=> b!7823722 (= tp!2309580 e!4629211)))

(declare-fun b!7825426 () Bool)

(declare-fun tp!2310947 () Bool)

(declare-fun tp!2310949 () Bool)

(assert (=> b!7825426 (= e!4629211 (and tp!2310947 tp!2310949))))

(declare-fun b!7825425 () Bool)

(declare-fun tp!2310948 () Bool)

(assert (=> b!7825425 (= e!4629211 tp!2310948)))

(declare-fun b!7825424 () Bool)

(declare-fun tp!2310945 () Bool)

(declare-fun tp!2310946 () Bool)

(assert (=> b!7825424 (= e!4629211 (and tp!2310945 tp!2310946))))

(assert (= (and b!7823722 ((_ is ElementMatch!20953) (reg!21282 (reg!21282 (reg!21282 r2!6199))))) b!7825423))

(assert (= (and b!7823722 ((_ is Concat!29798) (reg!21282 (reg!21282 (reg!21282 r2!6199))))) b!7825424))

(assert (= (and b!7823722 ((_ is Star!20953) (reg!21282 (reg!21282 (reg!21282 r2!6199))))) b!7825425))

(assert (= (and b!7823722 ((_ is Union!20953) (reg!21282 (reg!21282 (reg!21282 r2!6199))))) b!7825426))

(declare-fun b!7825427 () Bool)

(declare-fun e!4629212 () Bool)

(assert (=> b!7825427 (= e!4629212 tp_is_empty!52261)))

(assert (=> b!7823731 (= tp!2309589 e!4629212)))

(declare-fun b!7825430 () Bool)

(declare-fun tp!2310952 () Bool)

(declare-fun tp!2310954 () Bool)

(assert (=> b!7825430 (= e!4629212 (and tp!2310952 tp!2310954))))

(declare-fun b!7825429 () Bool)

(declare-fun tp!2310953 () Bool)

(assert (=> b!7825429 (= e!4629212 tp!2310953)))

(declare-fun b!7825428 () Bool)

(declare-fun tp!2310950 () Bool)

(declare-fun tp!2310951 () Bool)

(assert (=> b!7825428 (= e!4629212 (and tp!2310950 tp!2310951))))

(assert (= (and b!7823731 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7825427))

(assert (= (and b!7823731 ((_ is Concat!29798) (regOne!42419 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7825428))

(assert (= (and b!7823731 ((_ is Star!20953) (regOne!42419 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7825429))

(assert (= (and b!7823731 ((_ is Union!20953) (regOne!42419 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7825430))

(declare-fun b!7825431 () Bool)

(declare-fun e!4629213 () Bool)

(assert (=> b!7825431 (= e!4629213 tp_is_empty!52261)))

(assert (=> b!7823731 (= tp!2309591 e!4629213)))

(declare-fun b!7825434 () Bool)

(declare-fun tp!2310957 () Bool)

(declare-fun tp!2310959 () Bool)

(assert (=> b!7825434 (= e!4629213 (and tp!2310957 tp!2310959))))

(declare-fun b!7825433 () Bool)

(declare-fun tp!2310958 () Bool)

(assert (=> b!7825433 (= e!4629213 tp!2310958)))

(declare-fun b!7825432 () Bool)

(declare-fun tp!2310955 () Bool)

(declare-fun tp!2310956 () Bool)

(assert (=> b!7825432 (= e!4629213 (and tp!2310955 tp!2310956))))

(assert (= (and b!7823731 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7825431))

(assert (= (and b!7823731 ((_ is Concat!29798) (regTwo!42419 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7825432))

(assert (= (and b!7823731 ((_ is Star!20953) (regTwo!42419 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7825433))

(assert (= (and b!7823731 ((_ is Union!20953) (regTwo!42419 (regTwo!42419 (regTwo!42418 r2!6199))))) b!7825434))

(declare-fun b!7825435 () Bool)

(declare-fun e!4629214 () Bool)

(assert (=> b!7825435 (= e!4629214 tp_is_empty!52261)))

(assert (=> b!7823629 (= tp!2309462 e!4629214)))

(declare-fun b!7825438 () Bool)

(declare-fun tp!2310962 () Bool)

(declare-fun tp!2310964 () Bool)

(assert (=> b!7825438 (= e!4629214 (and tp!2310962 tp!2310964))))

(declare-fun b!7825437 () Bool)

(declare-fun tp!2310963 () Bool)

(assert (=> b!7825437 (= e!4629214 tp!2310963)))

(declare-fun b!7825436 () Bool)

(declare-fun tp!2310960 () Bool)

(declare-fun tp!2310961 () Bool)

(assert (=> b!7825436 (= e!4629214 (and tp!2310960 tp!2310961))))

(assert (= (and b!7823629 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42418 (regOne!42418 r2!6199))))) b!7825435))

(assert (= (and b!7823629 ((_ is Concat!29798) (regOne!42419 (regTwo!42418 (regOne!42418 r2!6199))))) b!7825436))

(assert (= (and b!7823629 ((_ is Star!20953) (regOne!42419 (regTwo!42418 (regOne!42418 r2!6199))))) b!7825437))

(assert (= (and b!7823629 ((_ is Union!20953) (regOne!42419 (regTwo!42418 (regOne!42418 r2!6199))))) b!7825438))

(declare-fun b!7825439 () Bool)

(declare-fun e!4629215 () Bool)

(assert (=> b!7825439 (= e!4629215 tp_is_empty!52261)))

(assert (=> b!7823629 (= tp!2309464 e!4629215)))

(declare-fun b!7825442 () Bool)

(declare-fun tp!2310967 () Bool)

(declare-fun tp!2310969 () Bool)

(assert (=> b!7825442 (= e!4629215 (and tp!2310967 tp!2310969))))

(declare-fun b!7825441 () Bool)

(declare-fun tp!2310968 () Bool)

(assert (=> b!7825441 (= e!4629215 tp!2310968)))

(declare-fun b!7825440 () Bool)

(declare-fun tp!2310965 () Bool)

(declare-fun tp!2310966 () Bool)

(assert (=> b!7825440 (= e!4629215 (and tp!2310965 tp!2310966))))

(assert (= (and b!7823629 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42418 (regOne!42418 r2!6199))))) b!7825439))

(assert (= (and b!7823629 ((_ is Concat!29798) (regTwo!42419 (regTwo!42418 (regOne!42418 r2!6199))))) b!7825440))

(assert (= (and b!7823629 ((_ is Star!20953) (regTwo!42419 (regTwo!42418 (regOne!42418 r2!6199))))) b!7825441))

(assert (= (and b!7823629 ((_ is Union!20953) (regTwo!42419 (regTwo!42418 (regOne!42418 r2!6199))))) b!7825442))

(declare-fun b!7825443 () Bool)

(declare-fun e!4629216 () Bool)

(assert (=> b!7825443 (= e!4629216 tp_is_empty!52261)))

(assert (=> b!7823772 (= tp!2309642 e!4629216)))

(declare-fun b!7825446 () Bool)

(declare-fun tp!2310972 () Bool)

(declare-fun tp!2310974 () Bool)

(assert (=> b!7825446 (= e!4629216 (and tp!2310972 tp!2310974))))

(declare-fun b!7825445 () Bool)

(declare-fun tp!2310973 () Bool)

(assert (=> b!7825445 (= e!4629216 tp!2310973)))

(declare-fun b!7825444 () Bool)

(declare-fun tp!2310970 () Bool)

(declare-fun tp!2310971 () Bool)

(assert (=> b!7825444 (= e!4629216 (and tp!2310970 tp!2310971))))

(assert (= (and b!7823772 ((_ is ElementMatch!20953) (reg!21282 (regOne!42418 (regOne!42419 r2!6199))))) b!7825443))

(assert (= (and b!7823772 ((_ is Concat!29798) (reg!21282 (regOne!42418 (regOne!42419 r2!6199))))) b!7825444))

(assert (= (and b!7823772 ((_ is Star!20953) (reg!21282 (regOne!42418 (regOne!42419 r2!6199))))) b!7825445))

(assert (= (and b!7823772 ((_ is Union!20953) (reg!21282 (regOne!42418 (regOne!42419 r2!6199))))) b!7825446))

(declare-fun b!7825447 () Bool)

(declare-fun e!4629217 () Bool)

(assert (=> b!7825447 (= e!4629217 tp_is_empty!52261)))

(assert (=> b!7823756 (= tp!2309620 e!4629217)))

(declare-fun b!7825450 () Bool)

(declare-fun tp!2310977 () Bool)

(declare-fun tp!2310979 () Bool)

(assert (=> b!7825450 (= e!4629217 (and tp!2310977 tp!2310979))))

(declare-fun b!7825449 () Bool)

(declare-fun tp!2310978 () Bool)

(assert (=> b!7825449 (= e!4629217 tp!2310978)))

(declare-fun b!7825448 () Bool)

(declare-fun tp!2310975 () Bool)

(declare-fun tp!2310976 () Bool)

(assert (=> b!7825448 (= e!4629217 (and tp!2310975 tp!2310976))))

(assert (= (and b!7823756 ((_ is ElementMatch!20953) (regOne!42419 (reg!21282 (regOne!42419 r1!6261))))) b!7825447))

(assert (= (and b!7823756 ((_ is Concat!29798) (regOne!42419 (reg!21282 (regOne!42419 r1!6261))))) b!7825448))

(assert (= (and b!7823756 ((_ is Star!20953) (regOne!42419 (reg!21282 (regOne!42419 r1!6261))))) b!7825449))

(assert (= (and b!7823756 ((_ is Union!20953) (regOne!42419 (reg!21282 (regOne!42419 r1!6261))))) b!7825450))

(declare-fun b!7825451 () Bool)

(declare-fun e!4629218 () Bool)

(assert (=> b!7825451 (= e!4629218 tp_is_empty!52261)))

(assert (=> b!7823756 (= tp!2309622 e!4629218)))

(declare-fun b!7825454 () Bool)

(declare-fun tp!2310982 () Bool)

(declare-fun tp!2310984 () Bool)

(assert (=> b!7825454 (= e!4629218 (and tp!2310982 tp!2310984))))

(declare-fun b!7825453 () Bool)

(declare-fun tp!2310983 () Bool)

(assert (=> b!7825453 (= e!4629218 tp!2310983)))

(declare-fun b!7825452 () Bool)

(declare-fun tp!2310980 () Bool)

(declare-fun tp!2310981 () Bool)

(assert (=> b!7825452 (= e!4629218 (and tp!2310980 tp!2310981))))

(assert (= (and b!7823756 ((_ is ElementMatch!20953) (regTwo!42419 (reg!21282 (regOne!42419 r1!6261))))) b!7825451))

(assert (= (and b!7823756 ((_ is Concat!29798) (regTwo!42419 (reg!21282 (regOne!42419 r1!6261))))) b!7825452))

(assert (= (and b!7823756 ((_ is Star!20953) (regTwo!42419 (reg!21282 (regOne!42419 r1!6261))))) b!7825453))

(assert (= (and b!7823756 ((_ is Union!20953) (regTwo!42419 (reg!21282 (regOne!42419 r1!6261))))) b!7825454))

(declare-fun b!7825455 () Bool)

(declare-fun e!4629219 () Bool)

(assert (=> b!7825455 (= e!4629219 tp_is_empty!52261)))

(assert (=> b!7823663 (= tp!2309505 e!4629219)))

(declare-fun b!7825458 () Bool)

(declare-fun tp!2310987 () Bool)

(declare-fun tp!2310989 () Bool)

(assert (=> b!7825458 (= e!4629219 (and tp!2310987 tp!2310989))))

(declare-fun b!7825457 () Bool)

(declare-fun tp!2310988 () Bool)

(assert (=> b!7825457 (= e!4629219 tp!2310988)))

(declare-fun b!7825456 () Bool)

(declare-fun tp!2310985 () Bool)

(declare-fun tp!2310986 () Bool)

(assert (=> b!7825456 (= e!4629219 (and tp!2310985 tp!2310986))))

(assert (= (and b!7823663 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42419 (regOne!42418 r2!6199))))) b!7825455))

(assert (= (and b!7823663 ((_ is Concat!29798) (regOne!42418 (regOne!42419 (regOne!42418 r2!6199))))) b!7825456))

(assert (= (and b!7823663 ((_ is Star!20953) (regOne!42418 (regOne!42419 (regOne!42418 r2!6199))))) b!7825457))

(assert (= (and b!7823663 ((_ is Union!20953) (regOne!42418 (regOne!42419 (regOne!42418 r2!6199))))) b!7825458))

(declare-fun b!7825459 () Bool)

(declare-fun e!4629220 () Bool)

(assert (=> b!7825459 (= e!4629220 tp_is_empty!52261)))

(assert (=> b!7823663 (= tp!2309506 e!4629220)))

(declare-fun b!7825462 () Bool)

(declare-fun tp!2310992 () Bool)

(declare-fun tp!2310994 () Bool)

(assert (=> b!7825462 (= e!4629220 (and tp!2310992 tp!2310994))))

(declare-fun b!7825461 () Bool)

(declare-fun tp!2310993 () Bool)

(assert (=> b!7825461 (= e!4629220 tp!2310993)))

(declare-fun b!7825460 () Bool)

(declare-fun tp!2310990 () Bool)

(declare-fun tp!2310991 () Bool)

(assert (=> b!7825460 (= e!4629220 (and tp!2310990 tp!2310991))))

(assert (= (and b!7823663 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42419 (regOne!42418 r2!6199))))) b!7825459))

(assert (= (and b!7823663 ((_ is Concat!29798) (regTwo!42418 (regOne!42419 (regOne!42418 r2!6199))))) b!7825460))

(assert (= (and b!7823663 ((_ is Star!20953) (regTwo!42418 (regOne!42419 (regOne!42418 r2!6199))))) b!7825461))

(assert (= (and b!7823663 ((_ is Union!20953) (regTwo!42418 (regOne!42419 (regOne!42418 r2!6199))))) b!7825462))

(declare-fun b!7825463 () Bool)

(declare-fun e!4629221 () Bool)

(assert (=> b!7825463 (= e!4629221 tp_is_empty!52261)))

(assert (=> b!7823611 (= tp!2309440 e!4629221)))

(declare-fun b!7825466 () Bool)

(declare-fun tp!2310997 () Bool)

(declare-fun tp!2310999 () Bool)

(assert (=> b!7825466 (= e!4629221 (and tp!2310997 tp!2310999))))

(declare-fun b!7825465 () Bool)

(declare-fun tp!2310998 () Bool)

(assert (=> b!7825465 (= e!4629221 tp!2310998)))

(declare-fun b!7825464 () Bool)

(declare-fun tp!2310995 () Bool)

(declare-fun tp!2310996 () Bool)

(assert (=> b!7825464 (= e!4629221 (and tp!2310995 tp!2310996))))

(assert (= (and b!7823611 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42419 (reg!21282 r1!6261))))) b!7825463))

(assert (= (and b!7823611 ((_ is Concat!29798) (regOne!42418 (regOne!42419 (reg!21282 r1!6261))))) b!7825464))

(assert (= (and b!7823611 ((_ is Star!20953) (regOne!42418 (regOne!42419 (reg!21282 r1!6261))))) b!7825465))

(assert (= (and b!7823611 ((_ is Union!20953) (regOne!42418 (regOne!42419 (reg!21282 r1!6261))))) b!7825466))

(declare-fun b!7825467 () Bool)

(declare-fun e!4629222 () Bool)

(assert (=> b!7825467 (= e!4629222 tp_is_empty!52261)))

(assert (=> b!7823611 (= tp!2309441 e!4629222)))

(declare-fun b!7825470 () Bool)

(declare-fun tp!2311002 () Bool)

(declare-fun tp!2311004 () Bool)

(assert (=> b!7825470 (= e!4629222 (and tp!2311002 tp!2311004))))

(declare-fun b!7825469 () Bool)

(declare-fun tp!2311003 () Bool)

(assert (=> b!7825469 (= e!4629222 tp!2311003)))

(declare-fun b!7825468 () Bool)

(declare-fun tp!2311000 () Bool)

(declare-fun tp!2311001 () Bool)

(assert (=> b!7825468 (= e!4629222 (and tp!2311000 tp!2311001))))

(assert (= (and b!7823611 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42419 (reg!21282 r1!6261))))) b!7825467))

(assert (= (and b!7823611 ((_ is Concat!29798) (regTwo!42418 (regOne!42419 (reg!21282 r1!6261))))) b!7825468))

(assert (= (and b!7823611 ((_ is Star!20953) (regTwo!42418 (regOne!42419 (reg!21282 r1!6261))))) b!7825469))

(assert (= (and b!7823611 ((_ is Union!20953) (regTwo!42418 (regOne!42419 (reg!21282 r1!6261))))) b!7825470))

(declare-fun b!7825471 () Bool)

(declare-fun e!4629223 () Bool)

(assert (=> b!7825471 (= e!4629223 tp_is_empty!52261)))

(assert (=> b!7823713 (= tp!2309567 e!4629223)))

(declare-fun b!7825474 () Bool)

(declare-fun tp!2311007 () Bool)

(declare-fun tp!2311009 () Bool)

(assert (=> b!7825474 (= e!4629223 (and tp!2311007 tp!2311009))))

(declare-fun b!7825473 () Bool)

(declare-fun tp!2311008 () Bool)

(assert (=> b!7825473 (= e!4629223 tp!2311008)))

(declare-fun b!7825472 () Bool)

(declare-fun tp!2311005 () Bool)

(declare-fun tp!2311006 () Bool)

(assert (=> b!7825472 (= e!4629223 (and tp!2311005 tp!2311006))))

(assert (= (and b!7823713 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42419 (regTwo!42419 r2!6199))))) b!7825471))

(assert (= (and b!7823713 ((_ is Concat!29798) (regOne!42418 (regOne!42419 (regTwo!42419 r2!6199))))) b!7825472))

(assert (= (and b!7823713 ((_ is Star!20953) (regOne!42418 (regOne!42419 (regTwo!42419 r2!6199))))) b!7825473))

(assert (= (and b!7823713 ((_ is Union!20953) (regOne!42418 (regOne!42419 (regTwo!42419 r2!6199))))) b!7825474))

(declare-fun b!7825475 () Bool)

(declare-fun e!4629224 () Bool)

(assert (=> b!7825475 (= e!4629224 tp_is_empty!52261)))

(assert (=> b!7823713 (= tp!2309568 e!4629224)))

(declare-fun b!7825478 () Bool)

(declare-fun tp!2311012 () Bool)

(declare-fun tp!2311014 () Bool)

(assert (=> b!7825478 (= e!4629224 (and tp!2311012 tp!2311014))))

(declare-fun b!7825477 () Bool)

(declare-fun tp!2311013 () Bool)

(assert (=> b!7825477 (= e!4629224 tp!2311013)))

(declare-fun b!7825476 () Bool)

(declare-fun tp!2311010 () Bool)

(declare-fun tp!2311011 () Bool)

(assert (=> b!7825476 (= e!4629224 (and tp!2311010 tp!2311011))))

(assert (= (and b!7823713 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42419 (regTwo!42419 r2!6199))))) b!7825475))

(assert (= (and b!7823713 ((_ is Concat!29798) (regTwo!42418 (regOne!42419 (regTwo!42419 r2!6199))))) b!7825476))

(assert (= (and b!7823713 ((_ is Star!20953) (regTwo!42418 (regOne!42419 (regTwo!42419 r2!6199))))) b!7825477))

(assert (= (and b!7823713 ((_ is Union!20953) (regTwo!42418 (regOne!42419 (regTwo!42419 r2!6199))))) b!7825478))

(declare-fun b!7825479 () Bool)

(declare-fun e!4629225 () Bool)

(assert (=> b!7825479 (= e!4629225 tp_is_empty!52261)))

(assert (=> b!7823808 (= tp!2309685 e!4629225)))

(declare-fun b!7825482 () Bool)

(declare-fun tp!2311017 () Bool)

(declare-fun tp!2311019 () Bool)

(assert (=> b!7825482 (= e!4629225 (and tp!2311017 tp!2311019))))

(declare-fun b!7825481 () Bool)

(declare-fun tp!2311018 () Bool)

(assert (=> b!7825481 (= e!4629225 tp!2311018)))

(declare-fun b!7825480 () Bool)

(declare-fun tp!2311015 () Bool)

(declare-fun tp!2311016 () Bool)

(assert (=> b!7825480 (= e!4629225 (and tp!2311015 tp!2311016))))

(assert (= (and b!7823808 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825479))

(assert (= (and b!7823808 ((_ is Concat!29798) (regOne!42418 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825480))

(assert (= (and b!7823808 ((_ is Star!20953) (regOne!42418 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825481))

(assert (= (and b!7823808 ((_ is Union!20953) (regOne!42418 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825482))

(declare-fun b!7825483 () Bool)

(declare-fun e!4629226 () Bool)

(assert (=> b!7825483 (= e!4629226 tp_is_empty!52261)))

(assert (=> b!7823808 (= tp!2309686 e!4629226)))

(declare-fun b!7825486 () Bool)

(declare-fun tp!2311022 () Bool)

(declare-fun tp!2311024 () Bool)

(assert (=> b!7825486 (= e!4629226 (and tp!2311022 tp!2311024))))

(declare-fun b!7825485 () Bool)

(declare-fun tp!2311023 () Bool)

(assert (=> b!7825485 (= e!4629226 tp!2311023)))

(declare-fun b!7825484 () Bool)

(declare-fun tp!2311020 () Bool)

(declare-fun tp!2311021 () Bool)

(assert (=> b!7825484 (= e!4629226 (and tp!2311020 tp!2311021))))

(assert (= (and b!7823808 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825483))

(assert (= (and b!7823808 ((_ is Concat!29798) (regTwo!42418 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825484))

(assert (= (and b!7823808 ((_ is Star!20953) (regTwo!42418 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825485))

(assert (= (and b!7823808 ((_ is Union!20953) (regTwo!42418 (regOne!42418 (regTwo!42418 r1!6261))))) b!7825486))

(declare-fun b!7825487 () Bool)

(declare-fun e!4629227 () Bool)

(assert (=> b!7825487 (= e!4629227 tp_is_empty!52261)))

(assert (=> b!7823690 (= tp!2309540 e!4629227)))

(declare-fun b!7825490 () Bool)

(declare-fun tp!2311027 () Bool)

(declare-fun tp!2311029 () Bool)

(assert (=> b!7825490 (= e!4629227 (and tp!2311027 tp!2311029))))

(declare-fun b!7825489 () Bool)

(declare-fun tp!2311028 () Bool)

(assert (=> b!7825489 (= e!4629227 tp!2311028)))

(declare-fun b!7825488 () Bool)

(declare-fun tp!2311025 () Bool)

(declare-fun tp!2311026 () Bool)

(assert (=> b!7825488 (= e!4629227 (and tp!2311025 tp!2311026))))

(assert (= (and b!7823690 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7825487))

(assert (= (and b!7823690 ((_ is Concat!29798) (reg!21282 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7825488))

(assert (= (and b!7823690 ((_ is Star!20953) (reg!21282 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7825489))

(assert (= (and b!7823690 ((_ is Union!20953) (reg!21282 (regTwo!42418 (regTwo!42419 r2!6199))))) b!7825490))

(declare-fun b!7825491 () Bool)

(declare-fun e!4629228 () Bool)

(assert (=> b!7825491 (= e!4629228 tp_is_empty!52261)))

(assert (=> b!7823699 (= tp!2309549 e!4629228)))

(declare-fun b!7825494 () Bool)

(declare-fun tp!2311032 () Bool)

(declare-fun tp!2311034 () Bool)

(assert (=> b!7825494 (= e!4629228 (and tp!2311032 tp!2311034))))

(declare-fun b!7825493 () Bool)

(declare-fun tp!2311033 () Bool)

(assert (=> b!7825493 (= e!4629228 tp!2311033)))

(declare-fun b!7825492 () Bool)

(declare-fun tp!2311030 () Bool)

(declare-fun tp!2311031 () Bool)

(assert (=> b!7825492 (= e!4629228 (and tp!2311030 tp!2311031))))

(assert (= (and b!7823699 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42419 (reg!21282 r2!6199))))) b!7825491))

(assert (= (and b!7823699 ((_ is Concat!29798) (regOne!42419 (regOne!42419 (reg!21282 r2!6199))))) b!7825492))

(assert (= (and b!7823699 ((_ is Star!20953) (regOne!42419 (regOne!42419 (reg!21282 r2!6199))))) b!7825493))

(assert (= (and b!7823699 ((_ is Union!20953) (regOne!42419 (regOne!42419 (reg!21282 r2!6199))))) b!7825494))

(declare-fun b!7825495 () Bool)

(declare-fun e!4629229 () Bool)

(assert (=> b!7825495 (= e!4629229 tp_is_empty!52261)))

(assert (=> b!7823699 (= tp!2309551 e!4629229)))

(declare-fun b!7825498 () Bool)

(declare-fun tp!2311037 () Bool)

(declare-fun tp!2311039 () Bool)

(assert (=> b!7825498 (= e!4629229 (and tp!2311037 tp!2311039))))

(declare-fun b!7825497 () Bool)

(declare-fun tp!2311038 () Bool)

(assert (=> b!7825497 (= e!4629229 tp!2311038)))

(declare-fun b!7825496 () Bool)

(declare-fun tp!2311035 () Bool)

(declare-fun tp!2311036 () Bool)

(assert (=> b!7825496 (= e!4629229 (and tp!2311035 tp!2311036))))

(assert (= (and b!7823699 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42419 (reg!21282 r2!6199))))) b!7825495))

(assert (= (and b!7823699 ((_ is Concat!29798) (regTwo!42419 (regOne!42419 (reg!21282 r2!6199))))) b!7825496))

(assert (= (and b!7823699 ((_ is Star!20953) (regTwo!42419 (regOne!42419 (reg!21282 r2!6199))))) b!7825497))

(assert (= (and b!7823699 ((_ is Union!20953) (regTwo!42419 (regOne!42419 (reg!21282 r2!6199))))) b!7825498))

(declare-fun b!7825499 () Bool)

(declare-fun e!4629230 () Bool)

(assert (=> b!7825499 (= e!4629230 tp_is_empty!52261)))

(assert (=> b!7823640 (= tp!2309478 e!4629230)))

(declare-fun b!7825502 () Bool)

(declare-fun tp!2311042 () Bool)

(declare-fun tp!2311044 () Bool)

(assert (=> b!7825502 (= e!4629230 (and tp!2311042 tp!2311044))))

(declare-fun b!7825501 () Bool)

(declare-fun tp!2311043 () Bool)

(assert (=> b!7825501 (= e!4629230 tp!2311043)))

(declare-fun b!7825500 () Bool)

(declare-fun tp!2311040 () Bool)

(declare-fun tp!2311041 () Bool)

(assert (=> b!7825500 (= e!4629230 (and tp!2311040 tp!2311041))))

(assert (= (and b!7823640 ((_ is ElementMatch!20953) (reg!21282 (reg!21282 (reg!21282 r1!6261))))) b!7825499))

(assert (= (and b!7823640 ((_ is Concat!29798) (reg!21282 (reg!21282 (reg!21282 r1!6261))))) b!7825500))

(assert (= (and b!7823640 ((_ is Star!20953) (reg!21282 (reg!21282 (reg!21282 r1!6261))))) b!7825501))

(assert (= (and b!7823640 ((_ is Union!20953) (reg!21282 (reg!21282 (reg!21282 r1!6261))))) b!7825502))

(declare-fun b!7825503 () Bool)

(declare-fun e!4629231 () Bool)

(assert (=> b!7825503 (= e!4629231 tp_is_empty!52261)))

(assert (=> b!7823751 (= tp!2309614 e!4629231)))

(declare-fun b!7825506 () Bool)

(declare-fun tp!2311047 () Bool)

(declare-fun tp!2311049 () Bool)

(assert (=> b!7825506 (= e!4629231 (and tp!2311047 tp!2311049))))

(declare-fun b!7825505 () Bool)

(declare-fun tp!2311048 () Bool)

(assert (=> b!7825505 (= e!4629231 tp!2311048)))

(declare-fun b!7825504 () Bool)

(declare-fun tp!2311045 () Bool)

(declare-fun tp!2311046 () Bool)

(assert (=> b!7825504 (= e!4629231 (and tp!2311045 tp!2311046))))

(assert (= (and b!7823751 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7825503))

(assert (= (and b!7823751 ((_ is Concat!29798) (regOne!42419 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7825504))

(assert (= (and b!7823751 ((_ is Star!20953) (regOne!42419 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7825505))

(assert (= (and b!7823751 ((_ is Union!20953) (regOne!42419 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7825506))

(declare-fun b!7825507 () Bool)

(declare-fun e!4629232 () Bool)

(assert (=> b!7825507 (= e!4629232 tp_is_empty!52261)))

(assert (=> b!7823751 (= tp!2309616 e!4629232)))

(declare-fun b!7825510 () Bool)

(declare-fun tp!2311052 () Bool)

(declare-fun tp!2311054 () Bool)

(assert (=> b!7825510 (= e!4629232 (and tp!2311052 tp!2311054))))

(declare-fun b!7825509 () Bool)

(declare-fun tp!2311053 () Bool)

(assert (=> b!7825509 (= e!4629232 tp!2311053)))

(declare-fun b!7825508 () Bool)

(declare-fun tp!2311050 () Bool)

(declare-fun tp!2311051 () Bool)

(assert (=> b!7825508 (= e!4629232 (and tp!2311050 tp!2311051))))

(assert (= (and b!7823751 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7825507))

(assert (= (and b!7823751 ((_ is Concat!29798) (regTwo!42419 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7825508))

(assert (= (and b!7823751 ((_ is Star!20953) (regTwo!42419 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7825509))

(assert (= (and b!7823751 ((_ is Union!20953) (regTwo!42419 (regTwo!42418 (regTwo!42418 r2!6199))))) b!7825510))

(declare-fun b!7825511 () Bool)

(declare-fun e!4629233 () Bool)

(assert (=> b!7825511 (= e!4629233 tp_is_empty!52261)))

(assert (=> b!7823649 (= tp!2309487 e!4629233)))

(declare-fun b!7825514 () Bool)

(declare-fun tp!2311057 () Bool)

(declare-fun tp!2311059 () Bool)

(assert (=> b!7825514 (= e!4629233 (and tp!2311057 tp!2311059))))

(declare-fun b!7825513 () Bool)

(declare-fun tp!2311058 () Bool)

(assert (=> b!7825513 (= e!4629233 tp!2311058)))

(declare-fun b!7825512 () Bool)

(declare-fun tp!2311055 () Bool)

(declare-fun tp!2311056 () Bool)

(assert (=> b!7825512 (= e!4629233 (and tp!2311055 tp!2311056))))

(assert (= (and b!7823649 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7825511))

(assert (= (and b!7823649 ((_ is Concat!29798) (regOne!42419 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7825512))

(assert (= (and b!7823649 ((_ is Star!20953) (regOne!42419 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7825513))

(assert (= (and b!7823649 ((_ is Union!20953) (regOne!42419 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7825514))

(declare-fun b!7825515 () Bool)

(declare-fun e!4629234 () Bool)

(assert (=> b!7825515 (= e!4629234 tp_is_empty!52261)))

(assert (=> b!7823649 (= tp!2309489 e!4629234)))

(declare-fun b!7825518 () Bool)

(declare-fun tp!2311062 () Bool)

(declare-fun tp!2311064 () Bool)

(assert (=> b!7825518 (= e!4629234 (and tp!2311062 tp!2311064))))

(declare-fun b!7825517 () Bool)

(declare-fun tp!2311063 () Bool)

(assert (=> b!7825517 (= e!4629234 tp!2311063)))

(declare-fun b!7825516 () Bool)

(declare-fun tp!2311060 () Bool)

(declare-fun tp!2311061 () Bool)

(assert (=> b!7825516 (= e!4629234 (and tp!2311060 tp!2311061))))

(assert (= (and b!7823649 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7825515))

(assert (= (and b!7823649 ((_ is Concat!29798) (regTwo!42419 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7825516))

(assert (= (and b!7823649 ((_ is Star!20953) (regTwo!42419 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7825517))

(assert (= (and b!7823649 ((_ is Union!20953) (regTwo!42419 (regTwo!42419 (regTwo!42419 r1!6261))))) b!7825518))

(declare-fun b!7825519 () Bool)

(declare-fun e!4629235 () Bool)

(assert (=> b!7825519 (= e!4629235 tp_is_empty!52261)))

(assert (=> b!7823742 (= tp!2309605 e!4629235)))

(declare-fun b!7825522 () Bool)

(declare-fun tp!2311067 () Bool)

(declare-fun tp!2311069 () Bool)

(assert (=> b!7825522 (= e!4629235 (and tp!2311067 tp!2311069))))

(declare-fun b!7825521 () Bool)

(declare-fun tp!2311068 () Bool)

(assert (=> b!7825521 (= e!4629235 tp!2311068)))

(declare-fun b!7825520 () Bool)

(declare-fun tp!2311065 () Bool)

(declare-fun tp!2311066 () Bool)

(assert (=> b!7825520 (= e!4629235 (and tp!2311065 tp!2311066))))

(assert (= (and b!7823742 ((_ is ElementMatch!20953) (reg!21282 (reg!21282 (regTwo!42418 r2!6199))))) b!7825519))

(assert (= (and b!7823742 ((_ is Concat!29798) (reg!21282 (reg!21282 (regTwo!42418 r2!6199))))) b!7825520))

(assert (= (and b!7823742 ((_ is Star!20953) (reg!21282 (reg!21282 (regTwo!42418 r2!6199))))) b!7825521))

(assert (= (and b!7823742 ((_ is Union!20953) (reg!21282 (reg!21282 (regTwo!42418 r2!6199))))) b!7825522))

(declare-fun b!7825523 () Bool)

(declare-fun e!4629236 () Bool)

(assert (=> b!7825523 (= e!4629236 tp_is_empty!52261)))

(assert (=> b!7823733 (= tp!2309592 e!4629236)))

(declare-fun b!7825526 () Bool)

(declare-fun tp!2311072 () Bool)

(declare-fun tp!2311074 () Bool)

(assert (=> b!7825526 (= e!4629236 (and tp!2311072 tp!2311074))))

(declare-fun b!7825525 () Bool)

(declare-fun tp!2311073 () Bool)

(assert (=> b!7825525 (= e!4629236 tp!2311073)))

(declare-fun b!7825524 () Bool)

(declare-fun tp!2311070 () Bool)

(declare-fun tp!2311071 () Bool)

(assert (=> b!7825524 (= e!4629236 (and tp!2311070 tp!2311071))))

(assert (= (and b!7823733 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42419 (regOne!42418 r1!6261))))) b!7825523))

(assert (= (and b!7823733 ((_ is Concat!29798) (regOne!42418 (regOne!42419 (regOne!42418 r1!6261))))) b!7825524))

(assert (= (and b!7823733 ((_ is Star!20953) (regOne!42418 (regOne!42419 (regOne!42418 r1!6261))))) b!7825525))

(assert (= (and b!7823733 ((_ is Union!20953) (regOne!42418 (regOne!42419 (regOne!42418 r1!6261))))) b!7825526))

(declare-fun b!7825527 () Bool)

(declare-fun e!4629237 () Bool)

(assert (=> b!7825527 (= e!4629237 tp_is_empty!52261)))

(assert (=> b!7823733 (= tp!2309593 e!4629237)))

(declare-fun b!7825530 () Bool)

(declare-fun tp!2311077 () Bool)

(declare-fun tp!2311079 () Bool)

(assert (=> b!7825530 (= e!4629237 (and tp!2311077 tp!2311079))))

(declare-fun b!7825529 () Bool)

(declare-fun tp!2311078 () Bool)

(assert (=> b!7825529 (= e!4629237 tp!2311078)))

(declare-fun b!7825528 () Bool)

(declare-fun tp!2311075 () Bool)

(declare-fun tp!2311076 () Bool)

(assert (=> b!7825528 (= e!4629237 (and tp!2311075 tp!2311076))))

(assert (= (and b!7823733 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42419 (regOne!42418 r1!6261))))) b!7825527))

(assert (= (and b!7823733 ((_ is Concat!29798) (regTwo!42418 (regOne!42419 (regOne!42418 r1!6261))))) b!7825528))

(assert (= (and b!7823733 ((_ is Star!20953) (regTwo!42418 (regOne!42419 (regOne!42418 r1!6261))))) b!7825529))

(assert (= (and b!7823733 ((_ is Union!20953) (regTwo!42418 (regOne!42419 (regOne!42418 r1!6261))))) b!7825530))

(declare-fun b!7825531 () Bool)

(declare-fun e!4629238 () Bool)

(assert (=> b!7825531 (= e!4629238 tp_is_empty!52261)))

(assert (=> b!7823631 (= tp!2309465 e!4629238)))

(declare-fun b!7825534 () Bool)

(declare-fun tp!2311082 () Bool)

(declare-fun tp!2311084 () Bool)

(assert (=> b!7825534 (= e!4629238 (and tp!2311082 tp!2311084))))

(declare-fun b!7825533 () Bool)

(declare-fun tp!2311083 () Bool)

(assert (=> b!7825533 (= e!4629238 tp!2311083)))

(declare-fun b!7825532 () Bool)

(declare-fun tp!2311080 () Bool)

(declare-fun tp!2311081 () Bool)

(assert (=> b!7825532 (= e!4629238 (and tp!2311080 tp!2311081))))

(assert (= (and b!7823631 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825531))

(assert (= (and b!7823631 ((_ is Concat!29798) (regOne!42418 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825532))

(assert (= (and b!7823631 ((_ is Star!20953) (regOne!42418 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825533))

(assert (= (and b!7823631 ((_ is Union!20953) (regOne!42418 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825534))

(declare-fun b!7825535 () Bool)

(declare-fun e!4629239 () Bool)

(assert (=> b!7825535 (= e!4629239 tp_is_empty!52261)))

(assert (=> b!7823631 (= tp!2309466 e!4629239)))

(declare-fun b!7825538 () Bool)

(declare-fun tp!2311087 () Bool)

(declare-fun tp!2311089 () Bool)

(assert (=> b!7825538 (= e!4629239 (and tp!2311087 tp!2311089))))

(declare-fun b!7825537 () Bool)

(declare-fun tp!2311088 () Bool)

(assert (=> b!7825537 (= e!4629239 tp!2311088)))

(declare-fun b!7825536 () Bool)

(declare-fun tp!2311085 () Bool)

(declare-fun tp!2311086 () Bool)

(assert (=> b!7825536 (= e!4629239 (and tp!2311085 tp!2311086))))

(assert (= (and b!7823631 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825535))

(assert (= (and b!7823631 ((_ is Concat!29798) (regTwo!42418 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825536))

(assert (= (and b!7823631 ((_ is Star!20953) (regTwo!42418 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825537))

(assert (= (and b!7823631 ((_ is Union!20953) (regTwo!42418 (regOne!42419 (regTwo!42418 r1!6261))))) b!7825538))

(declare-fun b!7825539 () Bool)

(declare-fun e!4629240 () Bool)

(assert (=> b!7825539 (= e!4629240 tp_is_empty!52261)))

(assert (=> b!7823674 (= tp!2309518 e!4629240)))

(declare-fun b!7825542 () Bool)

(declare-fun tp!2311092 () Bool)

(declare-fun tp!2311094 () Bool)

(assert (=> b!7825542 (= e!4629240 (and tp!2311092 tp!2311094))))

(declare-fun b!7825541 () Bool)

(declare-fun tp!2311093 () Bool)

(assert (=> b!7825541 (= e!4629240 tp!2311093)))

(declare-fun b!7825540 () Bool)

(declare-fun tp!2311090 () Bool)

(declare-fun tp!2311091 () Bool)

(assert (=> b!7825540 (= e!4629240 (and tp!2311090 tp!2311091))))

(assert (= (and b!7823674 ((_ is ElementMatch!20953) (regOne!42419 (regOne!42418 (reg!21282 r2!6199))))) b!7825539))

(assert (= (and b!7823674 ((_ is Concat!29798) (regOne!42419 (regOne!42418 (reg!21282 r2!6199))))) b!7825540))

(assert (= (and b!7823674 ((_ is Star!20953) (regOne!42419 (regOne!42418 (reg!21282 r2!6199))))) b!7825541))

(assert (= (and b!7823674 ((_ is Union!20953) (regOne!42419 (regOne!42418 (reg!21282 r2!6199))))) b!7825542))

(declare-fun b!7825543 () Bool)

(declare-fun e!4629241 () Bool)

(assert (=> b!7825543 (= e!4629241 tp_is_empty!52261)))

(assert (=> b!7823674 (= tp!2309520 e!4629241)))

(declare-fun b!7825546 () Bool)

(declare-fun tp!2311097 () Bool)

(declare-fun tp!2311099 () Bool)

(assert (=> b!7825546 (= e!4629241 (and tp!2311097 tp!2311099))))

(declare-fun b!7825545 () Bool)

(declare-fun tp!2311098 () Bool)

(assert (=> b!7825545 (= e!4629241 tp!2311098)))

(declare-fun b!7825544 () Bool)

(declare-fun tp!2311095 () Bool)

(declare-fun tp!2311096 () Bool)

(assert (=> b!7825544 (= e!4629241 (and tp!2311095 tp!2311096))))

(assert (= (and b!7823674 ((_ is ElementMatch!20953) (regTwo!42419 (regOne!42418 (reg!21282 r2!6199))))) b!7825543))

(assert (= (and b!7823674 ((_ is Concat!29798) (regTwo!42419 (regOne!42418 (reg!21282 r2!6199))))) b!7825544))

(assert (= (and b!7823674 ((_ is Star!20953) (regTwo!42419 (regOne!42418 (reg!21282 r2!6199))))) b!7825545))

(assert (= (and b!7823674 ((_ is Union!20953) (regTwo!42419 (regOne!42418 (reg!21282 r2!6199))))) b!7825546))

(declare-fun b!7825547 () Bool)

(declare-fun e!4629242 () Bool)

(assert (=> b!7825547 (= e!4629242 tp_is_empty!52261)))

(assert (=> b!7823758 (= tp!2309623 e!4629242)))

(declare-fun b!7825550 () Bool)

(declare-fun tp!2311102 () Bool)

(declare-fun tp!2311104 () Bool)

(assert (=> b!7825550 (= e!4629242 (and tp!2311102 tp!2311104))))

(declare-fun b!7825549 () Bool)

(declare-fun tp!2311103 () Bool)

(assert (=> b!7825549 (= e!4629242 tp!2311103)))

(declare-fun b!7825548 () Bool)

(declare-fun tp!2311100 () Bool)

(declare-fun tp!2311101 () Bool)

(assert (=> b!7825548 (= e!4629242 (and tp!2311100 tp!2311101))))

(assert (= (and b!7823758 ((_ is ElementMatch!20953) (regOne!42418 (regOne!42418 (regOne!42419 r1!6261))))) b!7825547))

(assert (= (and b!7823758 ((_ is Concat!29798) (regOne!42418 (regOne!42418 (regOne!42419 r1!6261))))) b!7825548))

(assert (= (and b!7823758 ((_ is Star!20953) (regOne!42418 (regOne!42418 (regOne!42419 r1!6261))))) b!7825549))

(assert (= (and b!7823758 ((_ is Union!20953) (regOne!42418 (regOne!42418 (regOne!42419 r1!6261))))) b!7825550))

(declare-fun b!7825551 () Bool)

(declare-fun e!4629243 () Bool)

(assert (=> b!7825551 (= e!4629243 tp_is_empty!52261)))

(assert (=> b!7823758 (= tp!2309624 e!4629243)))

(declare-fun b!7825554 () Bool)

(declare-fun tp!2311107 () Bool)

(declare-fun tp!2311109 () Bool)

(assert (=> b!7825554 (= e!4629243 (and tp!2311107 tp!2311109))))

(declare-fun b!7825553 () Bool)

(declare-fun tp!2311108 () Bool)

(assert (=> b!7825553 (= e!4629243 tp!2311108)))

(declare-fun b!7825552 () Bool)

(declare-fun tp!2311105 () Bool)

(declare-fun tp!2311106 () Bool)

(assert (=> b!7825552 (= e!4629243 (and tp!2311105 tp!2311106))))

(assert (= (and b!7823758 ((_ is ElementMatch!20953) (regTwo!42418 (regOne!42418 (regOne!42419 r1!6261))))) b!7825551))

(assert (= (and b!7823758 ((_ is Concat!29798) (regTwo!42418 (regOne!42418 (regOne!42419 r1!6261))))) b!7825552))

(assert (= (and b!7823758 ((_ is Star!20953) (regTwo!42418 (regOne!42418 (regOne!42419 r1!6261))))) b!7825553))

(assert (= (and b!7823758 ((_ is Union!20953) (regTwo!42418 (regOne!42418 (regOne!42419 r1!6261))))) b!7825554))

(declare-fun b!7825555 () Bool)

(declare-fun e!4629244 () Bool)

(assert (=> b!7825555 (= e!4629244 tp_is_empty!52261)))

(assert (=> b!7823785 (= tp!2309658 e!4629244)))

(declare-fun b!7825558 () Bool)

(declare-fun tp!2311112 () Bool)

(declare-fun tp!2311114 () Bool)

(assert (=> b!7825558 (= e!4629244 (and tp!2311112 tp!2311114))))

(declare-fun b!7825557 () Bool)

(declare-fun tp!2311113 () Bool)

(assert (=> b!7825557 (= e!4629244 tp!2311113)))

(declare-fun b!7825556 () Bool)

(declare-fun tp!2311110 () Bool)

(declare-fun tp!2311111 () Bool)

(assert (=> b!7825556 (= e!4629244 (and tp!2311110 tp!2311111))))

(assert (= (and b!7823785 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42419 (regOne!42419 r1!6261))))) b!7825555))

(assert (= (and b!7823785 ((_ is Concat!29798) (reg!21282 (regTwo!42419 (regOne!42419 r1!6261))))) b!7825556))

(assert (= (and b!7823785 ((_ is Star!20953) (reg!21282 (regTwo!42419 (regOne!42419 r1!6261))))) b!7825557))

(assert (= (and b!7823785 ((_ is Union!20953) (reg!21282 (regTwo!42419 (regOne!42419 r1!6261))))) b!7825558))

(declare-fun b!7825559 () Bool)

(declare-fun e!4629245 () Bool)

(assert (=> b!7825559 (= e!4629245 tp_is_empty!52261)))

(assert (=> b!7823769 (= tp!2309636 e!4629245)))

(declare-fun b!7825562 () Bool)

(declare-fun tp!2311117 () Bool)

(declare-fun tp!2311119 () Bool)

(assert (=> b!7825562 (= e!4629245 (and tp!2311117 tp!2311119))))

(declare-fun b!7825561 () Bool)

(declare-fun tp!2311118 () Bool)

(assert (=> b!7825561 (= e!4629245 tp!2311118)))

(declare-fun b!7825560 () Bool)

(declare-fun tp!2311115 () Bool)

(declare-fun tp!2311116 () Bool)

(assert (=> b!7825560 (= e!4629245 (and tp!2311115 tp!2311116))))

(assert (= (and b!7823769 ((_ is ElementMatch!20953) (regOne!42419 (reg!21282 (regOne!42419 r2!6199))))) b!7825559))

(assert (= (and b!7823769 ((_ is Concat!29798) (regOne!42419 (reg!21282 (regOne!42419 r2!6199))))) b!7825560))

(assert (= (and b!7823769 ((_ is Star!20953) (regOne!42419 (reg!21282 (regOne!42419 r2!6199))))) b!7825561))

(assert (= (and b!7823769 ((_ is Union!20953) (regOne!42419 (reg!21282 (regOne!42419 r2!6199))))) b!7825562))

(declare-fun b!7825563 () Bool)

(declare-fun e!4629246 () Bool)

(assert (=> b!7825563 (= e!4629246 tp_is_empty!52261)))

(assert (=> b!7823769 (= tp!2309638 e!4629246)))

(declare-fun b!7825566 () Bool)

(declare-fun tp!2311122 () Bool)

(declare-fun tp!2311124 () Bool)

(assert (=> b!7825566 (= e!4629246 (and tp!2311122 tp!2311124))))

(declare-fun b!7825565 () Bool)

(declare-fun tp!2311123 () Bool)

(assert (=> b!7825565 (= e!4629246 tp!2311123)))

(declare-fun b!7825564 () Bool)

(declare-fun tp!2311120 () Bool)

(declare-fun tp!2311121 () Bool)

(assert (=> b!7825564 (= e!4629246 (and tp!2311120 tp!2311121))))

(assert (= (and b!7823769 ((_ is ElementMatch!20953) (regTwo!42419 (reg!21282 (regOne!42419 r2!6199))))) b!7825563))

(assert (= (and b!7823769 ((_ is Concat!29798) (regTwo!42419 (reg!21282 (regOne!42419 r2!6199))))) b!7825564))

(assert (= (and b!7823769 ((_ is Star!20953) (regTwo!42419 (reg!21282 (regOne!42419 r2!6199))))) b!7825565))

(assert (= (and b!7823769 ((_ is Union!20953) (regTwo!42419 (reg!21282 (regOne!42419 r2!6199))))) b!7825566))

(declare-fun b!7825567 () Bool)

(declare-fun e!4629247 () Bool)

(assert (=> b!7825567 (= e!4629247 tp_is_empty!52261)))

(assert (=> b!7823794 (= tp!2309667 e!4629247)))

(declare-fun b!7825570 () Bool)

(declare-fun tp!2311127 () Bool)

(declare-fun tp!2311129 () Bool)

(assert (=> b!7825570 (= e!4629247 (and tp!2311127 tp!2311129))))

(declare-fun b!7825569 () Bool)

(declare-fun tp!2311128 () Bool)

(assert (=> b!7825569 (= e!4629247 tp!2311128)))

(declare-fun b!7825568 () Bool)

(declare-fun tp!2311125 () Bool)

(declare-fun tp!2311126 () Bool)

(assert (=> b!7825568 (= e!4629247 (and tp!2311125 tp!2311126))))

(assert (= (and b!7823794 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42418 (reg!21282 r1!6261))))) b!7825567))

(assert (= (and b!7823794 ((_ is Concat!29798) (regOne!42419 (regTwo!42418 (reg!21282 r1!6261))))) b!7825568))

(assert (= (and b!7823794 ((_ is Star!20953) (regOne!42419 (regTwo!42418 (reg!21282 r1!6261))))) b!7825569))

(assert (= (and b!7823794 ((_ is Union!20953) (regOne!42419 (regTwo!42418 (reg!21282 r1!6261))))) b!7825570))

(declare-fun b!7825571 () Bool)

(declare-fun e!4629248 () Bool)

(assert (=> b!7825571 (= e!4629248 tp_is_empty!52261)))

(assert (=> b!7823794 (= tp!2309669 e!4629248)))

(declare-fun b!7825574 () Bool)

(declare-fun tp!2311132 () Bool)

(declare-fun tp!2311134 () Bool)

(assert (=> b!7825574 (= e!4629248 (and tp!2311132 tp!2311134))))

(declare-fun b!7825573 () Bool)

(declare-fun tp!2311133 () Bool)

(assert (=> b!7825573 (= e!4629248 tp!2311133)))

(declare-fun b!7825572 () Bool)

(declare-fun tp!2311130 () Bool)

(declare-fun tp!2311131 () Bool)

(assert (=> b!7825572 (= e!4629248 (and tp!2311130 tp!2311131))))

(assert (= (and b!7823794 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42418 (reg!21282 r1!6261))))) b!7825571))

(assert (= (and b!7823794 ((_ is Concat!29798) (regTwo!42419 (regTwo!42418 (reg!21282 r1!6261))))) b!7825572))

(assert (= (and b!7823794 ((_ is Star!20953) (regTwo!42419 (regTwo!42418 (reg!21282 r1!6261))))) b!7825573))

(assert (= (and b!7823794 ((_ is Union!20953) (regTwo!42419 (regTwo!42418 (reg!21282 r1!6261))))) b!7825574))

(declare-fun b!7825575 () Bool)

(declare-fun e!4629249 () Bool)

(assert (=> b!7825575 (= e!4629249 tp_is_empty!52261)))

(assert (=> b!7823710 (= tp!2309565 e!4629249)))

(declare-fun b!7825578 () Bool)

(declare-fun tp!2311137 () Bool)

(declare-fun tp!2311139 () Bool)

(assert (=> b!7825578 (= e!4629249 (and tp!2311137 tp!2311139))))

(declare-fun b!7825577 () Bool)

(declare-fun tp!2311138 () Bool)

(assert (=> b!7825577 (= e!4629249 tp!2311138)))

(declare-fun b!7825576 () Bool)

(declare-fun tp!2311135 () Bool)

(declare-fun tp!2311136 () Bool)

(assert (=> b!7825576 (= e!4629249 (and tp!2311135 tp!2311136))))

(assert (= (and b!7823710 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42418 (regOne!42418 r1!6261))))) b!7825575))

(assert (= (and b!7823710 ((_ is Concat!29798) (reg!21282 (regTwo!42418 (regOne!42418 r1!6261))))) b!7825576))

(assert (= (and b!7823710 ((_ is Star!20953) (reg!21282 (regTwo!42418 (regOne!42418 r1!6261))))) b!7825577))

(assert (= (and b!7823710 ((_ is Union!20953) (reg!21282 (regTwo!42418 (regOne!42418 r1!6261))))) b!7825578))

(declare-fun b!7825579 () Bool)

(declare-fun e!4629250 () Bool)

(assert (=> b!7825579 (= e!4629250 tp_is_empty!52261)))

(assert (=> b!7823617 (= tp!2309447 e!4629250)))

(declare-fun b!7825582 () Bool)

(declare-fun tp!2311142 () Bool)

(declare-fun tp!2311144 () Bool)

(assert (=> b!7825582 (= e!4629250 (and tp!2311142 tp!2311144))))

(declare-fun b!7825581 () Bool)

(declare-fun tp!2311143 () Bool)

(assert (=> b!7825581 (= e!4629250 tp!2311143)))

(declare-fun b!7825580 () Bool)

(declare-fun tp!2311140 () Bool)

(declare-fun tp!2311141 () Bool)

(assert (=> b!7825580 (= e!4629250 (and tp!2311140 tp!2311141))))

(assert (= (and b!7823617 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42419 (reg!21282 r1!6261))))) b!7825579))

(assert (= (and b!7823617 ((_ is Concat!29798) (regOne!42419 (regTwo!42419 (reg!21282 r1!6261))))) b!7825580))

(assert (= (and b!7823617 ((_ is Star!20953) (regOne!42419 (regTwo!42419 (reg!21282 r1!6261))))) b!7825581))

(assert (= (and b!7823617 ((_ is Union!20953) (regOne!42419 (regTwo!42419 (reg!21282 r1!6261))))) b!7825582))

(declare-fun b!7825583 () Bool)

(declare-fun e!4629251 () Bool)

(assert (=> b!7825583 (= e!4629251 tp_is_empty!52261)))

(assert (=> b!7823617 (= tp!2309449 e!4629251)))

(declare-fun b!7825586 () Bool)

(declare-fun tp!2311147 () Bool)

(declare-fun tp!2311149 () Bool)

(assert (=> b!7825586 (= e!4629251 (and tp!2311147 tp!2311149))))

(declare-fun b!7825585 () Bool)

(declare-fun tp!2311148 () Bool)

(assert (=> b!7825585 (= e!4629251 tp!2311148)))

(declare-fun b!7825584 () Bool)

(declare-fun tp!2311145 () Bool)

(declare-fun tp!2311146 () Bool)

(assert (=> b!7825584 (= e!4629251 (and tp!2311145 tp!2311146))))

(assert (= (and b!7823617 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42419 (reg!21282 r1!6261))))) b!7825583))

(assert (= (and b!7823617 ((_ is Concat!29798) (regTwo!42419 (regTwo!42419 (reg!21282 r1!6261))))) b!7825584))

(assert (= (and b!7823617 ((_ is Star!20953) (regTwo!42419 (regTwo!42419 (reg!21282 r1!6261))))) b!7825585))

(assert (= (and b!7823617 ((_ is Union!20953) (regTwo!42419 (regTwo!42419 (reg!21282 r1!6261))))) b!7825586))

(declare-fun b!7825587 () Bool)

(declare-fun e!4629252 () Bool)

(assert (=> b!7825587 (= e!4629252 tp_is_empty!52261)))

(assert (=> b!7823719 (= tp!2309574 e!4629252)))

(declare-fun b!7825590 () Bool)

(declare-fun tp!2311152 () Bool)

(declare-fun tp!2311154 () Bool)

(assert (=> b!7825590 (= e!4629252 (and tp!2311152 tp!2311154))))

(declare-fun b!7825589 () Bool)

(declare-fun tp!2311153 () Bool)

(assert (=> b!7825589 (= e!4629252 tp!2311153)))

(declare-fun b!7825588 () Bool)

(declare-fun tp!2311150 () Bool)

(declare-fun tp!2311151 () Bool)

(assert (=> b!7825588 (= e!4629252 (and tp!2311150 tp!2311151))))

(assert (= (and b!7823719 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7825587))

(assert (= (and b!7823719 ((_ is Concat!29798) (regOne!42419 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7825588))

(assert (= (and b!7823719 ((_ is Star!20953) (regOne!42419 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7825589))

(assert (= (and b!7823719 ((_ is Union!20953) (regOne!42419 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7825590))

(declare-fun b!7825591 () Bool)

(declare-fun e!4629253 () Bool)

(assert (=> b!7825591 (= e!4629253 tp_is_empty!52261)))

(assert (=> b!7823719 (= tp!2309576 e!4629253)))

(declare-fun b!7825594 () Bool)

(declare-fun tp!2311157 () Bool)

(declare-fun tp!2311159 () Bool)

(assert (=> b!7825594 (= e!4629253 (and tp!2311157 tp!2311159))))

(declare-fun b!7825593 () Bool)

(declare-fun tp!2311158 () Bool)

(assert (=> b!7825593 (= e!4629253 tp!2311158)))

(declare-fun b!7825592 () Bool)

(declare-fun tp!2311155 () Bool)

(declare-fun tp!2311156 () Bool)

(assert (=> b!7825592 (= e!4629253 (and tp!2311155 tp!2311156))))

(assert (= (and b!7823719 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7825591))

(assert (= (and b!7823719 ((_ is Concat!29798) (regTwo!42419 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7825592))

(assert (= (and b!7823719 ((_ is Star!20953) (regTwo!42419 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7825593))

(assert (= (and b!7823719 ((_ is Union!20953) (regTwo!42419 (regTwo!42419 (regTwo!42419 r2!6199))))) b!7825594))

(declare-fun b!7825595 () Bool)

(declare-fun e!4629254 () Bool)

(assert (=> b!7825595 (= e!4629254 tp_is_empty!52261)))

(assert (=> b!7823701 (= tp!2309552 e!4629254)))

(declare-fun b!7825598 () Bool)

(declare-fun tp!2311162 () Bool)

(declare-fun tp!2311164 () Bool)

(assert (=> b!7825598 (= e!4629254 (and tp!2311162 tp!2311164))))

(declare-fun b!7825597 () Bool)

(declare-fun tp!2311163 () Bool)

(assert (=> b!7825597 (= e!4629254 tp!2311163)))

(declare-fun b!7825596 () Bool)

(declare-fun tp!2311160 () Bool)

(declare-fun tp!2311161 () Bool)

(assert (=> b!7825596 (= e!4629254 (and tp!2311160 tp!2311161))))

(assert (= (and b!7823701 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42419 (reg!21282 r2!6199))))) b!7825595))

(assert (= (and b!7823701 ((_ is Concat!29798) (regOne!42418 (regTwo!42419 (reg!21282 r2!6199))))) b!7825596))

(assert (= (and b!7823701 ((_ is Star!20953) (regOne!42418 (regTwo!42419 (reg!21282 r2!6199))))) b!7825597))

(assert (= (and b!7823701 ((_ is Union!20953) (regOne!42418 (regTwo!42419 (reg!21282 r2!6199))))) b!7825598))

(declare-fun b!7825599 () Bool)

(declare-fun e!4629255 () Bool)

(assert (=> b!7825599 (= e!4629255 tp_is_empty!52261)))

(assert (=> b!7823701 (= tp!2309553 e!4629255)))

(declare-fun b!7825602 () Bool)

(declare-fun tp!2311167 () Bool)

(declare-fun tp!2311169 () Bool)

(assert (=> b!7825602 (= e!4629255 (and tp!2311167 tp!2311169))))

(declare-fun b!7825601 () Bool)

(declare-fun tp!2311168 () Bool)

(assert (=> b!7825601 (= e!4629255 tp!2311168)))

(declare-fun b!7825600 () Bool)

(declare-fun tp!2311165 () Bool)

(declare-fun tp!2311166 () Bool)

(assert (=> b!7825600 (= e!4629255 (and tp!2311165 tp!2311166))))

(assert (= (and b!7823701 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42419 (reg!21282 r2!6199))))) b!7825599))

(assert (= (and b!7823701 ((_ is Concat!29798) (regTwo!42418 (regTwo!42419 (reg!21282 r2!6199))))) b!7825600))

(assert (= (and b!7823701 ((_ is Star!20953) (regTwo!42418 (regTwo!42419 (reg!21282 r2!6199))))) b!7825601))

(assert (= (and b!7823701 ((_ is Union!20953) (regTwo!42418 (regTwo!42419 (reg!21282 r2!6199))))) b!7825602))

(declare-fun b!7825603 () Bool)

(declare-fun e!4629256 () Bool)

(assert (=> b!7825603 (= e!4629256 tp_is_empty!52261)))

(assert (=> b!7823651 (= tp!2309490 e!4629256)))

(declare-fun b!7825606 () Bool)

(declare-fun tp!2311172 () Bool)

(declare-fun tp!2311174 () Bool)

(assert (=> b!7825606 (= e!4629256 (and tp!2311172 tp!2311174))))

(declare-fun b!7825605 () Bool)

(declare-fun tp!2311173 () Bool)

(assert (=> b!7825605 (= e!4629256 tp!2311173)))

(declare-fun b!7825604 () Bool)

(declare-fun tp!2311170 () Bool)

(declare-fun tp!2311171 () Bool)

(assert (=> b!7825604 (= e!4629256 (and tp!2311170 tp!2311171))))

(assert (= (and b!7823651 ((_ is ElementMatch!20953) (regOne!42418 (reg!21282 (regTwo!42419 r1!6261))))) b!7825603))

(assert (= (and b!7823651 ((_ is Concat!29798) (regOne!42418 (reg!21282 (regTwo!42419 r1!6261))))) b!7825604))

(assert (= (and b!7823651 ((_ is Star!20953) (regOne!42418 (reg!21282 (regTwo!42419 r1!6261))))) b!7825605))

(assert (= (and b!7823651 ((_ is Union!20953) (regOne!42418 (reg!21282 (regTwo!42419 r1!6261))))) b!7825606))

(declare-fun b!7825607 () Bool)

(declare-fun e!4629257 () Bool)

(assert (=> b!7825607 (= e!4629257 tp_is_empty!52261)))

(assert (=> b!7823651 (= tp!2309491 e!4629257)))

(declare-fun b!7825610 () Bool)

(declare-fun tp!2311177 () Bool)

(declare-fun tp!2311179 () Bool)

(assert (=> b!7825610 (= e!4629257 (and tp!2311177 tp!2311179))))

(declare-fun b!7825609 () Bool)

(declare-fun tp!2311178 () Bool)

(assert (=> b!7825609 (= e!4629257 tp!2311178)))

(declare-fun b!7825608 () Bool)

(declare-fun tp!2311175 () Bool)

(declare-fun tp!2311176 () Bool)

(assert (=> b!7825608 (= e!4629257 (and tp!2311175 tp!2311176))))

(assert (= (and b!7823651 ((_ is ElementMatch!20953) (regTwo!42418 (reg!21282 (regTwo!42419 r1!6261))))) b!7825607))

(assert (= (and b!7823651 ((_ is Concat!29798) (regTwo!42418 (reg!21282 (regTwo!42419 r1!6261))))) b!7825608))

(assert (= (and b!7823651 ((_ is Star!20953) (regTwo!42418 (reg!21282 (regTwo!42419 r1!6261))))) b!7825609))

(assert (= (and b!7823651 ((_ is Union!20953) (regTwo!42418 (reg!21282 (regTwo!42419 r1!6261))))) b!7825610))

(declare-fun b!7825611 () Bool)

(declare-fun e!4629258 () Bool)

(assert (=> b!7825611 (= e!4629258 tp_is_empty!52261)))

(assert (=> b!7823676 (= tp!2309521 e!4629258)))

(declare-fun b!7825614 () Bool)

(declare-fun tp!2311182 () Bool)

(declare-fun tp!2311184 () Bool)

(assert (=> b!7825614 (= e!4629258 (and tp!2311182 tp!2311184))))

(declare-fun b!7825613 () Bool)

(declare-fun tp!2311183 () Bool)

(assert (=> b!7825613 (= e!4629258 tp!2311183)))

(declare-fun b!7825612 () Bool)

(declare-fun tp!2311180 () Bool)

(declare-fun tp!2311181 () Bool)

(assert (=> b!7825612 (= e!4629258 (and tp!2311180 tp!2311181))))

(assert (= (and b!7823676 ((_ is ElementMatch!20953) (regOne!42418 (regTwo!42418 (reg!21282 r2!6199))))) b!7825611))

(assert (= (and b!7823676 ((_ is Concat!29798) (regOne!42418 (regTwo!42418 (reg!21282 r2!6199))))) b!7825612))

(assert (= (and b!7823676 ((_ is Star!20953) (regOne!42418 (regTwo!42418 (reg!21282 r2!6199))))) b!7825613))

(assert (= (and b!7823676 ((_ is Union!20953) (regOne!42418 (regTwo!42418 (reg!21282 r2!6199))))) b!7825614))

(declare-fun b!7825615 () Bool)

(declare-fun e!4629259 () Bool)

(assert (=> b!7825615 (= e!4629259 tp_is_empty!52261)))

(assert (=> b!7823676 (= tp!2309522 e!4629259)))

(declare-fun b!7825618 () Bool)

(declare-fun tp!2311187 () Bool)

(declare-fun tp!2311189 () Bool)

(assert (=> b!7825618 (= e!4629259 (and tp!2311187 tp!2311189))))

(declare-fun b!7825617 () Bool)

(declare-fun tp!2311188 () Bool)

(assert (=> b!7825617 (= e!4629259 tp!2311188)))

(declare-fun b!7825616 () Bool)

(declare-fun tp!2311185 () Bool)

(declare-fun tp!2311186 () Bool)

(assert (=> b!7825616 (= e!4629259 (and tp!2311185 tp!2311186))))

(assert (= (and b!7823676 ((_ is ElementMatch!20953) (regTwo!42418 (regTwo!42418 (reg!21282 r2!6199))))) b!7825615))

(assert (= (and b!7823676 ((_ is Concat!29798) (regTwo!42418 (regTwo!42418 (reg!21282 r2!6199))))) b!7825616))

(assert (= (and b!7823676 ((_ is Star!20953) (regTwo!42418 (regTwo!42418 (reg!21282 r2!6199))))) b!7825617))

(assert (= (and b!7823676 ((_ is Union!20953) (regTwo!42418 (regTwo!42418 (reg!21282 r2!6199))))) b!7825618))

(declare-fun b!7825619 () Bool)

(declare-fun e!4629260 () Bool)

(assert (=> b!7825619 (= e!4629260 tp_is_empty!52261)))

(assert (=> b!7823660 (= tp!2309503 e!4629260)))

(declare-fun b!7825622 () Bool)

(declare-fun tp!2311192 () Bool)

(declare-fun tp!2311194 () Bool)

(assert (=> b!7825622 (= e!4629260 (and tp!2311192 tp!2311194))))

(declare-fun b!7825621 () Bool)

(declare-fun tp!2311193 () Bool)

(assert (=> b!7825621 (= e!4629260 tp!2311193)))

(declare-fun b!7825620 () Bool)

(declare-fun tp!2311190 () Bool)

(declare-fun tp!2311191 () Bool)

(assert (=> b!7825620 (= e!4629260 (and tp!2311190 tp!2311191))))

(assert (= (and b!7823660 ((_ is ElementMatch!20953) (reg!21282 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7825619))

(assert (= (and b!7823660 ((_ is Concat!29798) (reg!21282 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7825620))

(assert (= (and b!7823660 ((_ is Star!20953) (reg!21282 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7825621))

(assert (= (and b!7823660 ((_ is Union!20953) (reg!21282 (regTwo!42418 (regTwo!42419 r1!6261))))) b!7825622))

(declare-fun b!7825623 () Bool)

(declare-fun e!4629261 () Bool)

(assert (=> b!7825623 (= e!4629261 tp_is_empty!52261)))

(assert (=> b!7823669 (= tp!2309512 e!4629261)))

(declare-fun b!7825626 () Bool)

(declare-fun tp!2311197 () Bool)

(declare-fun tp!2311199 () Bool)

(assert (=> b!7825626 (= e!4629261 (and tp!2311197 tp!2311199))))

(declare-fun b!7825625 () Bool)

(declare-fun tp!2311198 () Bool)

(assert (=> b!7825625 (= e!4629261 tp!2311198)))

(declare-fun b!7825624 () Bool)

(declare-fun tp!2311195 () Bool)

(declare-fun tp!2311196 () Bool)

(assert (=> b!7825624 (= e!4629261 (and tp!2311195 tp!2311196))))

(assert (= (and b!7823669 ((_ is ElementMatch!20953) (regOne!42419 (regTwo!42419 (regOne!42418 r2!6199))))) b!7825623))

(assert (= (and b!7823669 ((_ is Concat!29798) (regOne!42419 (regTwo!42419 (regOne!42418 r2!6199))))) b!7825624))

(assert (= (and b!7823669 ((_ is Star!20953) (regOne!42419 (regTwo!42419 (regOne!42418 r2!6199))))) b!7825625))

(assert (= (and b!7823669 ((_ is Union!20953) (regOne!42419 (regTwo!42419 (regOne!42418 r2!6199))))) b!7825626))

(declare-fun b!7825627 () Bool)

(declare-fun e!4629262 () Bool)

(assert (=> b!7825627 (= e!4629262 tp_is_empty!52261)))

(assert (=> b!7823669 (= tp!2309514 e!4629262)))

(declare-fun b!7825630 () Bool)

(declare-fun tp!2311202 () Bool)

(declare-fun tp!2311204 () Bool)

(assert (=> b!7825630 (= e!4629262 (and tp!2311202 tp!2311204))))

(declare-fun b!7825629 () Bool)

(declare-fun tp!2311203 () Bool)

(assert (=> b!7825629 (= e!4629262 tp!2311203)))

(declare-fun b!7825628 () Bool)

(declare-fun tp!2311200 () Bool)

(declare-fun tp!2311201 () Bool)

(assert (=> b!7825628 (= e!4629262 (and tp!2311200 tp!2311201))))

(assert (= (and b!7823669 ((_ is ElementMatch!20953) (regTwo!42419 (regTwo!42419 (regOne!42418 r2!6199))))) b!7825627))

(assert (= (and b!7823669 ((_ is Concat!29798) (regTwo!42419 (regTwo!42419 (regOne!42418 r2!6199))))) b!7825628))

(assert (= (and b!7823669 ((_ is Star!20953) (regTwo!42419 (regTwo!42419 (regOne!42418 r2!6199))))) b!7825629))

(assert (= (and b!7823669 ((_ is Union!20953) (regTwo!42419 (regTwo!42419 (regOne!42418 r2!6199))))) b!7825630))

(check-sat (not b!7824865) (not b!7825095) (not b!7825620) (not b!7824215) (not b!7825458) (not b!7825297) (not b!7825456) (not b!7825589) (not b!7824938) (not b!7824586) (not b!7824768) (not b!7825557) (not b!7824966) (not b!7824982) (not b!7825346) (not b!7825260) (not b!7824801) (not b!7824877) (not b!7825150) (not b!7825304) (not b!7825250) (not bm!725704) (not bm!725794) (not b!7825394) (not b!7825602) (not b!7825413) (not b!7825196) (not b!7825501) (not b!7824806) (not b!7825378) (not b!7825298) (not b!7824769) (not b!7825432) (not b!7825176) (not bm!725723) (not bm!725742) (not b!7825329) (not b!7825144) (not b!7825083) (not b!7824676) (not b!7825453) (not b!7824824) (not b!7824687) (not b!7824826) (not b!7825056) (not b!7824335) (not b!7825613) (not b!7825114) (not b!7825352) (not b!7824756) (not b!7824653) (not b!7825103) (not b!7824937) (not b!7824876) (not b!7825061) (not b!7824242) (not b!7824366) (not b!7824231) (not b!7824858) (not b!7824916) (not b!7825128) (not b!7824605) (not b!7825172) (not b!7825129) (not b!7825093) (not b!7825629) (not b!7825417) (not b!7825242) (not b!7825590) (not b!7824980) (not b!7824269) (not b!7824935) (not b!7824631) (not b!7824743) (not b!7824923) (not bm!725715) (not b!7824788) (not bm!725711) (not b!7824969) (not b!7825340) (not b!7824679) (not bm!725703) (not b!7824699) (not b!7824841) (not b!7825126) (not b!7825556) (not b!7825218) (not b!7825512) (not b!7824735) (not b!7825080) (not d!2350126) (not b!7825337) (not b!7825412) (not d!2350084) (not b!7825582) (not b!7825088) (not b!7825092) (not b!7825071) (not b!7824986) (not b!7824995) (not b!7825208) (not b!7824888) (not b!7825160) (not b!7824332) (not b!7824357) (not b!7825390) (not b!7825140) (not b!7825201) (not b!7824962) (not b!7824781) (not b!7824328) (not b!7825117) (not b!7825221) (not b!7825418) (not b!7825364) (not b!7824649) (not bm!725798) (not b!7825344) (not b!7825624) (not bm!725720) (not b!7825301) (not b!7824244) (not b!7824677) (not b!7824628) (not b!7825184) (not b!7824760) (not b!7824862) (not b!7824683) (not b!7825361) (not b!7824950) (not b!7825157) (not b!7825048) (not b!7824971) (not b!7824720) (not b!7825464) (not b!7825091) (not b!7824663) (not b!7824721) (not b!7824639) (not b!7825079) (not b!7824230) (not b!7824860) (not b!7824675) (not b!7825320) (not b!7825608) (not b!7825273) (not b!7825158) (not b!7825360) (not b!7825537) (not b!7825063) (not b!7824845) (not b!7825002) (not b!7825373) (not b!7825494) (not b!7825576) (not b!7825096) (not b!7825513) (not b!7824712) (not b!7824347) (not bm!725773) (not b!7825289) (not bm!725707) (not bm!725727) (not b!7824820) (not b!7825498) (not b!7825210) (not b!7825100) (not b!7824613) (not b!7824979) (not b!7824933) (not b!7824866) (not b!7825254) (not b!7825348) (not b!7825368) (not bm!725724) (not b!7824715) (not b!7824667) (not b!7825517) (not b!7824804) (not b!7825109) (not b!7824665) (not b!7825085) (not b!7824711) (not b!7825113) (not b!7824796) (not bm!725792) (not b!7824518) (not b!7825077) (not b!7825033) (not b!7825538) (not b!7824957) (not b!7824685) (not b!7825312) (not b!7825536) (not b!7825545) (not b!7824740) (not b!7825410) (not b!7824813) (not b!7824941) (not b!7825170) (not b!7825548) (not bm!725733) (not b!7824852) (not bm!725791) (not b!7825549) (not bm!725735) (not bm!725774) (not b!7824379) (not b!7825566) (not b!7825516) (not b!7825569) (not b!7825330) (not b!7824853) (not b!7825369) (not b!7825206) (not bm!725805) (not b!7824954) (not b!7825162) (not d!2350148) (not b!7824764) (not b!7825560) (not bm!725790) (not b!7824828) (not b!7825325) (not b!7825101) (not b!7825345) (not b!7825112) (not b!7824745) (not b!7824751) (not b!7824898) (not b!7825166) (not b!7825064) (not b!7825120) (not bm!725758) (not b!7825136) (not b!7824681) (not b!7824836) (not b!7825306) (not b!7825007) (not b!7824395) (not b!7824967) (not bm!725718) (not b!7825107) (not b!7825497) (not b!7825040) (not b!7824834) (not b!7824789) (not b!7824975) (not b!7824777) (not bm!725746) (not b!7824927) (not b!7824905) (not b!7825508) (not b!7825558) (not bm!725767) (not b!7825293) (not b!7825138) (not b!7825249) (not b!7825384) (not b!7825049) (not b!7824724) (not b!7824451) (not b!7825437) (not b!7825530) (not b!7824594) (not b!7825213) (not bm!725747) (not b!7824814) (not bm!725712) (not b!7824779) (not b!7825584) (not bm!725777) (not d!2350136) (not b!7825552) (not b!7825470) (not b!7825072) (not b!7824324) (not bm!725717) (not b!7824566) (not d!2350150) (not b!7825305) (not d!2350138) (not b!7824739) (not bm!725793) (not b!7825314) (not b!7825225) (not b!7824868) (not b!7824689) (not b!7824998) (not b!7825476) (not b!7824772) (not bm!725729) (not b!7824812) (not b!7825121) (not b!7824892) (not b!7825529) (not b!7825480) (not b!7825477) (not bm!725780) (not b!7825392) (not b!7824258) (not b!7824922) (not b!7825446) (not b!7825342) (not b!7824549) (not b!7825161) (not b!7824951) (not b!7825197) (not b!7824719) (not b!7824627) (not b!7824906) (not b!7825626) (not b!7825265) (not b!7825084) (not b!7825493) (not b!7824990) (not b!7825130) (not b!7825296) (not b!7825600) (not bm!725760) (not bm!725800) (not b!7824391) (not b!7824805) (not b!7825030) (not b!7825286) (not bm!725809) (not b!7824808) (not b!7824920) (not b!7825553) (not b!7825380) (not b!7825488) (not b!7825580) (not b!7824773) (not b!7825073) (not b!7825205) (not b!7825333) (not b!7825224) (not b!7825156) (not b!7825065) (not b!7824752) (not b!7824684) (not b!7824842) (not b!7824609) (not bm!725804) (not b!7825193) (not b!7825039) (not b!7825281) (not b!7824846) (not b!7824797) (not b!7825581) (not b!7825358) (not b!7824695) (not b!7824963) (not b!7824648) (not b!7825324) (not b!7825388) (not b!7825478) (not b!7825389) (not b!7824864) (not b!7824987) (not b!7825008) (not b!7824793) (not b!7825036) (not b!7825220) (not b!7825365) (not b!7825226) (not b!7824959) (not b!7824334) (not b!7825014) (not b!7825234) (not b!7825404) (not b!7824942) (not b!7824832) (not b!7825486) (not b!7825617) (not b!7825492) (not b!7825244) (not b!7825108) (not b!7825362) (not b!7824882) (not b!7825618) (not b!7825596) (not b!7825022) (not b!7824704) (not b!7825011) (not b!7825125) (not b!7824896) (not b!7825116) (not b!7824918) (not b!7825586) (not b!7824302) (not b!7825198) (not b!7825012) (not b!7825621) (not b!7825165) (not b!7824409) (not b!7824794) (not b!7825031) (not b!7825614) (not d!2350182) (not b!7825357) (not b!7825075) (not b!7824733) (not bm!725764) (not b!7825019) (not b!7824660) (not b!7825564) (not b!7824256) (not b!7825438) (not b!7825149) (not b!7825405) (not b!7824953) (not b!7824798) (not b!7825386) (not b!7824657) (not b!7825067) (not b!7825578) (not b!7825216) (not b!7825268) (not b!7825562) (not b!7825326) (not b!7824707) (not b!7825504) (not b!7824528) (not b!7825572) (not b!7825490) (not bm!725740) (not b!7825570) (not b!7825514) (not b!7824930) (not b!7824412) (not b!7824367) (not b!7825076) (not b!7824780) (not b!7824644) (not b!7824717) (not b!7824688) (not b!7824439) (not b!7824925) (not b!7824784) (not b!7825496) (not b!7825204) (not b!7825154) (not b!7825272) (not b!7825192) (not d!2350200) (not b!7825292) (not b!7824830) (not b!7824226) (not b!7825122) (not b!7825448) (not b!7824716) (not b!7825104) (not b!7824671) (not b!7824693) (not b!7825097) (not b!7825546) (not b!7825460) (not d!2350188) (not b!7824869) (not bm!725808) (not b!7825416) (not b!7825240) (not b!7824629) (not b!7824636) (not b!7825277) (not b!7825185) (not b!7824305) (not b!7825182) (not b!7825280) (not b!7825522) (not b!7825450) (not b!7825194) (not b!7825200) (not b!7824821) (not bm!725726) (not bm!725784) (not b!7825502) (not b!7824983) (not b!7825414) (not b!7825015) (not b!7824809) (not b!7825133) (not b!7824761) (not b!7825285) (not b!7824633) (not b!7824727) (not b!7825246) (not b!7824947) (not b!7824292) (not b!7825035) (not b!7824365) (not b!7825006) (not b!7825452) (not b!7824889) (not b!7825041) (not b!7824818) (not d!2350128) (not b!7825202) (not b!7825037) (not bm!725754) (not b!7825152) (not b!7824943) (not b!7824972) (not b!7825262) (not b!7825366) (not b!7824984) (not b!7824703) (not b!7825630) (not b!7825409) (not b!7824749) (not b!7825318) (not bm!725797) (not b!7825081) (not d!2350078) (not b!7825261) (not b!7825089) (not b!7825087) (not bm!725795) (not b!7825510) (not b!7825105) (not b!7824939) (not bm!725732) (not b!7825237) (not b!7825430) (not b!7825288) (not bm!725737) (not b!7824397) (not d!2350198) (not b!7825238) (not b!7825294) (not b!7825258) (not b!7825526) (not b!7824521) (not b!7825350) (not b!7825020) (not b!7825349) (not b!7824822) (not b!7825524) (not bm!725803) (not b!7825010) (not b!7825164) (not b!7824708) (not b!7825509) (not b!7824890) (not b!7824848) (not b!7825445) (not b!7825372) (not b!7825422) (not b!7825124) (not b!7825300) (not b!7825059) (not b!7825142) (not b!7825574) (not b!7824381) (not b!7824748) (not b!7825068) (not b!7825420) (not bm!725778) (not b!7824641) (not b!7825396) (not b!7824538) (not b!7824958) (not b!7824602) (not b!7824856) (not b!7824243) (not b!7825252) (not b!7825217) (not b!7824383) (not b!7825461) (not b!7825482) (not b!7825577) (not b!7824759) (not b!7825266) (not d!2350080) (not b!7825606) (not b!7824647) (not b!7825043) (not bm!725766) (not b!7825594) (not b!7825532) (not bm!725801) (not b!7824728) (not b!7825044) (not b!7824765) (not b!7824921) (not b!7825353) (not b!7824655) (not b!7824897) (not b!7825541) (not b!7825601) (not b!7824354) tp_is_empty!52261 (not b!7825625) (not b!7824635) (not b!7825241) (not b!7824885) (not b!7825148) (not b!7825316) (not b!7824259) (not b!7825052) (not b!7825454) (not b!7824861) (not b!7824893) (not b!7825401) (not b!7825616) (not b!7824227) (not b!7824691) (not b!7825609) (not b!7825248) (not bm!725748) (not b!7824333) (not b!7824880) (not b!7825233) (not b!7824669) (not b!7825214) (not b!7824870) (not b!7825588) (not b!7824500) (not b!7824800) (not b!7825309) (not b!7824755) (not b!7825110) (not b!7825186) (not b!7825628) (not b!7824701) (not b!7825328) (not d!2350108) (not b!7825573) (not bm!725751) (not b!7824651) (not b!7824659) (not b!7825436) (not b!7824902) (not d!2350110) (not b!7824361) (not b!7824281) (not b!7824999) (not b!7824696) (not b!7825099) (not b!7824614) (not b!7825424) (not b!7825018) (not b!7825449) (not b!7824744) (not b!7824757) (not b!7825605) (not b!7824637) (not b!7824574) (not b!7824705) (not b!7824996) (not b!7825047) (not b!7825520) (not b!7825374) (not b!7825228) (not b!7825222) (not b!7825338) (not b!7824656) (not b!7824429) (not b!7824894) (not b!7825554) (not d!2350206) (not b!7824398) (not b!7825004) (not b!7825145) (not b!7825245) (not bm!725750) (not b!7825190) (not d!2350164) (not bm!725789) (not b!7825468) (not b!7824946) (not bm!725721) (not b!7824680) (not bm!725763) (not b!7824732) (not b!7824886) (not b!7825597) (not b!7825137) (not b!7825457) (not b!7825209) (not b!7824949) (not b!7825173) (not b!7825466) (not b!7825434) (not b!7824850) (not b!7825408) (not b!7825026) (not d!2350222) (not b!7825465) (not b!7824900) (not b!7825230) (not b!7824974) (not b!7824914) (not b!7825229) (not b!7825421) (not b!7824723) (not b!7825585) (not b!7825313) (not b!7825057) (not b!7824396) (not b!7825610) (not b!7824615) (not bm!725785) (not b!7825521) (not b!7824965) (not b!7825444) (not b!7825256) (not b!7824970) (not b!7824516) (not b!7825023) (not b!7825177) (not b!7825032) (not b!7825284) (not b!7825188) (not b!7824901) (not b!7824713) (not b!7825377) (not d!2350134) (not b!7825024) (not b!7825276) (not b!7825568) (not b!7825016) (not b!7824737) (not b!7824978) (not b!7825028) (not b!7824783) (not bm!725716) (not b!7825592) (not b!7824643) (not b!7825385) (not bm!725698) (not b!7825544) (not b!7824913) (not b!7824825) (not bm!725734) (not b!7825472) (not b!7824874) (not b!7824763) (not b!7825180) (not b!7824767) (not b!7825169) (not b!7824218) (not b!7825440) (not b!7825027) (not b!7824776) (not b!7825525) (not b!7824878) (not d!2350092) (not b!7824792) (not b!7824384) (not bm!725753) (not b!7825506) (not b!7825332) (not b!7825003) (not b!7824929) (not bm!725745) (not b!7825174) (not b!7824872) (not b!7825429) (not b!7824976) (not b!7824802) (not b!7825134) (not b!7825598) (not b!7824955) (not b!7824884) (not b!7825593) (not b!7825232) (not b!7824673) (not b!7825462) (not b!7824421) (not b!7824873) (not d!2350180) (not b!7824616) (not b!7825485) (not b!7825489) (not b!7825308) (not b!7825045) (not b!7824368) (not bm!725699) (not b!7825533) (not bm!725759) (not b!7825400) (not b!7825146) (not b!7824729) (not b!7825270) (not b!7825540) (not b!7824775) (not b!7824992) (not b!7825469) (not b!7824917) (not b!7824771) (not b!7824934) (not b!7825565) (not b!7825500) (not b!7825550) (not b!7825055) (not b!7825321) (not b!7824289) (not b!7824697) (not b!7824909) (not b!7825622) (not b!7825425) (not b!7824513) (not b!7825406) (not b!7825278) (not b!7824785) (not b!7825000) (not b!7824460) (not d!2350218) (not b!7824501) (not b!7825212) (not b!7825302) (not b!7824991) (not d!2350228) (not b!7825132) (not b!7825069) (not b!7824652) (not b!7824692) (not b!7825264) (not b!7825282) (not b!7825433) (not b!7825189) (not b!7825356) (not b!7824881) (not b!7824741) (not b!7825542) (not b!7825473) (not b!7824857) (not b!7824632) (not b!7825442) (not b!7824672) (not b!7825181) (not b!7825528) (not b!7825354) (not bm!725779) (not b!7825274) (not b!7824833) (not b!7824645) (not b!7825484) (not b!7825334) (not b!7824816) (not b!7824432) (not b!7824577) (not b!7825612) (not b!7824300) (not b!7824731) (not b!7824640) (not b!7824926) (not b!7824904) (not b!7824668) (not b!7824664) (not b!7825168) (not b!7824753) (not b!7825393) (not b!7825604) (not b!7825322) (not b!7824387) (not b!7824837) (not d!2350196) (not b!7825051) (not b!7824844) (not b!7825376) (not b!7824245) (not b!7824321) (not b!7824961) (not b!7825178) (not b!7824498) (not b!7824912) (not b!7824314) (not b!7825398) (not b!7825402) (not d!2350174) (not b!7824945) (not b!7825253) (not b!7824838) (not bm!725788) (not b!7824747) (not b!7824787) (not b!7825317) (not b!7825382) (not b!7824994) (not b!7825561) (not b!7825236) (not b!7824512) (not d!2350230) (not b!7825505) (not b!7825153) (not b!7825257) (not b!7824988) (not b!7825428) (not b!7824736) (not b!7824931) (not b!7824829) (not b!7825381) (not b!7825426) (not b!7824910) (not b!7824791) (not b!7825118) (not bm!725741) (not b!7824725) (not b!7825290) (not b!7825336) (not b!7825518) (not b!7825481) (not b!7824849) (not b!7825397) (not b!7824908) (not b!7825534) (not d!2350204) (not b!7824810) (not bm!725761) (not b!7825474) (not b!7824709) (not b!7824840) (not b!7825370) (not b!7824469) (not b!7825053) (not b!7824661) (not b!7825269) (not b!7824854) (not b!7824700) (not b!7825060) (not b!7825341) (not b!7825141) (not b!7825310) (not b!7824817) (not b!7825441) (not d!2350100) (not bm!725708))
(check-sat)
