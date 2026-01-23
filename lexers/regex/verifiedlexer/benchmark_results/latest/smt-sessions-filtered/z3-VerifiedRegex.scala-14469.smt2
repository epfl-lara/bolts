; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!753016 () Bool)

(assert start!753016)

(declare-fun b!8004139 () Bool)

(declare-fun e!4715053 () Bool)

(declare-fun e!4715048 () Bool)

(assert (=> b!8004139 (= e!4715053 (not e!4715048))))

(declare-fun res!3165090 () Bool)

(assert (=> b!8004139 (=> res!3165090 e!4715048)))

(declare-datatypes ((C!43576 0))(
  ( (C!43577 (val!32336 Int)) )
))
(declare-datatypes ((List!74848 0))(
  ( (Nil!74724) (Cons!74724 (h!81172 C!43576) (t!390591 List!74848)) )
))
(declare-fun testedP!353 () List!74848)

(declare-fun totalInput!1349 () List!74848)

(declare-fun isPrefix!6673 (List!74848 List!74848) Bool)

(assert (=> b!8004139 (= res!3165090 (not (isPrefix!6673 testedP!353 totalInput!1349)))))

(declare-fun lt!2714219 () List!74848)

(assert (=> b!8004139 (isPrefix!6673 testedP!353 lt!2714219)))

(declare-datatypes ((Unit!170634 0))(
  ( (Unit!170635) )
))
(declare-fun lt!2714222 () Unit!170634)

(declare-fun testedSuffix!271 () List!74848)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3904 (List!74848 List!74848) Unit!170634)

(assert (=> b!8004139 (= lt!2714222 (lemmaConcatTwoListThenFirstIsPrefix!3904 testedP!353 testedSuffix!271))))

(declare-fun b!8004140 () Bool)

(declare-fun e!4715047 () Bool)

(assert (=> b!8004140 (= e!4715048 e!4715047)))

(declare-fun res!3165084 () Bool)

(assert (=> b!8004140 (=> res!3165084 e!4715047)))

(declare-datatypes ((Regex!21619 0))(
  ( (ElementMatch!21619 (c!1469450 C!43576)) (Concat!30618 (regOne!43750 Regex!21619) (regTwo!43750 Regex!21619)) (EmptyExpr!21619) (Star!21619 (reg!21948 Regex!21619)) (EmptyLang!21619) (Union!21619 (regOne!43751 Regex!21619) (regTwo!43751 Regex!21619)) )
))
(declare-fun r!15422 () Regex!21619)

(declare-fun lostCause!2016 (Regex!21619) Bool)

(assert (=> b!8004140 (= res!3165084 (lostCause!2016 r!15422))))

(declare-fun lt!2714220 () List!74848)

(assert (=> b!8004140 (and (= testedSuffix!271 lt!2714220) (= lt!2714220 testedSuffix!271))))

(declare-fun lt!2714216 () Unit!170634)

(declare-fun lemmaSamePrefixThenSameSuffix!3036 (List!74848 List!74848 List!74848 List!74848 List!74848) Unit!170634)

(assert (=> b!8004140 (= lt!2714216 (lemmaSamePrefixThenSameSuffix!3036 testedP!353 testedSuffix!271 testedP!353 lt!2714220 totalInput!1349))))

(declare-fun getSuffix!3870 (List!74848 List!74848) List!74848)

(assert (=> b!8004140 (= lt!2714220 (getSuffix!3870 totalInput!1349 testedP!353))))

(declare-fun b!8004141 () Bool)

(declare-fun e!4715050 () Bool)

(declare-fun tp_is_empty!53781 () Bool)

(declare-fun tp!2394758 () Bool)

(assert (=> b!8004141 (= e!4715050 (and tp_is_empty!53781 tp!2394758))))

(declare-fun b!8004142 () Bool)

(declare-fun e!4715049 () Bool)

(declare-fun tp!2394756 () Bool)

(declare-fun tp!2394755 () Bool)

(assert (=> b!8004142 (= e!4715049 (and tp!2394756 tp!2394755))))

(declare-fun b!8004143 () Bool)

(assert (=> b!8004143 (= e!4715049 tp_is_empty!53781)))

(declare-fun b!8004144 () Bool)

(declare-fun e!4715055 () Unit!170634)

(declare-fun Unit!170636 () Unit!170634)

(assert (=> b!8004144 (= e!4715055 Unit!170636)))

(declare-fun lt!2714223 () Unit!170634)

(declare-fun lemmaIsPrefixRefl!4125 (List!74848 List!74848) Unit!170634)

(assert (=> b!8004144 (= lt!2714223 (lemmaIsPrefixRefl!4125 totalInput!1349 totalInput!1349))))

(assert (=> b!8004144 (isPrefix!6673 totalInput!1349 totalInput!1349)))

(declare-fun lt!2714218 () Unit!170634)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1699 (List!74848 List!74848 List!74848) Unit!170634)

(assert (=> b!8004144 (= lt!2714218 (lemmaIsPrefixSameLengthThenSameList!1699 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8004144 false))

(declare-fun res!3165089 () Bool)

(declare-fun e!4715056 () Bool)

(assert (=> start!753016 (=> (not res!3165089) (not e!4715056))))

(declare-fun validRegex!11923 (Regex!21619) Bool)

(assert (=> start!753016 (= res!3165089 (validRegex!11923 r!15422))))

(assert (=> start!753016 e!4715056))

(declare-fun e!4715052 () Bool)

(assert (=> start!753016 e!4715052))

(assert (=> start!753016 true))

(declare-fun e!4715051 () Bool)

(assert (=> start!753016 e!4715051))

(assert (=> start!753016 e!4715049))

(assert (=> start!753016 e!4715050))

(declare-fun b!8004145 () Bool)

(declare-fun tp!2394761 () Bool)

(assert (=> b!8004145 (= e!4715049 tp!2394761)))

(declare-fun b!8004146 () Bool)

(declare-fun e!4715057 () Bool)

(assert (=> b!8004146 (= e!4715056 e!4715057)))

(declare-fun res!3165087 () Bool)

(assert (=> b!8004146 (=> (not res!3165087) (not e!4715057))))

(assert (=> b!8004146 (= res!3165087 (= lt!2714219 totalInput!1349))))

(declare-fun ++!18445 (List!74848 List!74848) List!74848)

(assert (=> b!8004146 (= lt!2714219 (++!18445 testedP!353 testedSuffix!271))))

(declare-fun b!8004147 () Bool)

(declare-fun tp!2394759 () Bool)

(assert (=> b!8004147 (= e!4715051 (and tp_is_empty!53781 tp!2394759))))

(declare-fun b!8004148 () Bool)

(declare-fun e!4715054 () Bool)

(assert (=> b!8004148 (= e!4715057 e!4715054)))

(declare-fun res!3165085 () Bool)

(assert (=> b!8004148 (=> (not res!3165085) (not e!4715054))))

(declare-fun testedPSize!271 () Int)

(declare-fun lt!2714217 () Int)

(assert (=> b!8004148 (= res!3165085 (= testedPSize!271 lt!2714217))))

(declare-fun size!43521 (List!74848) Int)

(assert (=> b!8004148 (= lt!2714217 (size!43521 testedP!353))))

(declare-fun b!8004149 () Bool)

(declare-fun Unit!170637 () Unit!170634)

(assert (=> b!8004149 (= e!4715055 Unit!170637)))

(declare-fun b!8004150 () Bool)

(assert (=> b!8004150 (= e!4715054 e!4715053)))

(declare-fun res!3165088 () Bool)

(assert (=> b!8004150 (=> (not res!3165088) (not e!4715053))))

(declare-fun totalInputSize!629 () Int)

(declare-fun lt!2714224 () Int)

(assert (=> b!8004150 (= res!3165088 (= totalInputSize!629 lt!2714224))))

(assert (=> b!8004150 (= lt!2714224 (size!43521 totalInput!1349))))

(declare-fun b!8004151 () Bool)

(declare-fun res!3165086 () Bool)

(assert (=> b!8004151 (=> res!3165086 e!4715047)))

(assert (=> b!8004151 (= res!3165086 (= testedPSize!271 totalInputSize!629))))

(declare-fun b!8004152 () Bool)

(declare-fun tp!2394762 () Bool)

(declare-fun tp!2394760 () Bool)

(assert (=> b!8004152 (= e!4715049 (and tp!2394762 tp!2394760))))

(declare-fun b!8004153 () Bool)

(assert (=> b!8004153 (= e!4715047 (or (>= lt!2714217 lt!2714224) (not (= testedSuffix!271 Nil!74724))))))

(declare-fun lt!2714221 () Unit!170634)

(assert (=> b!8004153 (= lt!2714221 e!4715055)))

(declare-fun c!1469449 () Bool)

(assert (=> b!8004153 (= c!1469449 (= lt!2714217 lt!2714224))))

(assert (=> b!8004153 (<= lt!2714217 lt!2714224)))

(declare-fun lt!2714225 () Unit!170634)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1174 (List!74848 List!74848) Unit!170634)

(assert (=> b!8004153 (= lt!2714225 (lemmaIsPrefixThenSmallerEqSize!1174 testedP!353 totalInput!1349))))

(declare-fun b!8004154 () Bool)

(declare-fun tp!2394757 () Bool)

(assert (=> b!8004154 (= e!4715052 (and tp_is_empty!53781 tp!2394757))))

(assert (= (and start!753016 res!3165089) b!8004146))

(assert (= (and b!8004146 res!3165087) b!8004148))

(assert (= (and b!8004148 res!3165085) b!8004150))

(assert (= (and b!8004150 res!3165088) b!8004139))

(assert (= (and b!8004139 (not res!3165090)) b!8004140))

(assert (= (and b!8004140 (not res!3165084)) b!8004151))

(assert (= (and b!8004151 (not res!3165086)) b!8004153))

(assert (= (and b!8004153 c!1469449) b!8004144))

(assert (= (and b!8004153 (not c!1469449)) b!8004149))

(get-info :version)

(assert (= (and start!753016 ((_ is Cons!74724) totalInput!1349)) b!8004154))

(assert (= (and start!753016 ((_ is Cons!74724) testedSuffix!271)) b!8004147))

(assert (= (and start!753016 ((_ is ElementMatch!21619) r!15422)) b!8004143))

(assert (= (and start!753016 ((_ is Concat!30618) r!15422)) b!8004142))

(assert (= (and start!753016 ((_ is Star!21619) r!15422)) b!8004145))

(assert (= (and start!753016 ((_ is Union!21619) r!15422)) b!8004152))

(assert (= (and start!753016 ((_ is Cons!74724) testedP!353)) b!8004141))

(declare-fun m!8369830 () Bool)

(assert (=> b!8004140 m!8369830))

(declare-fun m!8369832 () Bool)

(assert (=> b!8004140 m!8369832))

(declare-fun m!8369834 () Bool)

(assert (=> b!8004140 m!8369834))

(declare-fun m!8369836 () Bool)

(assert (=> b!8004150 m!8369836))

(declare-fun m!8369838 () Bool)

(assert (=> b!8004139 m!8369838))

(declare-fun m!8369840 () Bool)

(assert (=> b!8004139 m!8369840))

(declare-fun m!8369842 () Bool)

(assert (=> b!8004139 m!8369842))

(declare-fun m!8369844 () Bool)

(assert (=> b!8004146 m!8369844))

(declare-fun m!8369846 () Bool)

(assert (=> b!8004144 m!8369846))

(declare-fun m!8369848 () Bool)

(assert (=> b!8004144 m!8369848))

(declare-fun m!8369850 () Bool)

(assert (=> b!8004144 m!8369850))

(declare-fun m!8369852 () Bool)

(assert (=> start!753016 m!8369852))

(declare-fun m!8369854 () Bool)

(assert (=> b!8004153 m!8369854))

(declare-fun m!8369856 () Bool)

(assert (=> b!8004148 m!8369856))

(check-sat (not b!8004148) (not b!8004142) (not b!8004146) (not b!8004153) (not b!8004140) (not b!8004154) (not b!8004150) (not b!8004147) (not start!753016) tp_is_empty!53781 (not b!8004139) (not b!8004145) (not b!8004144) (not b!8004141) (not b!8004152))
(check-sat)
(get-model)

(declare-fun d!2387030 () Bool)

(assert (=> d!2387030 (<= (size!43521 testedP!353) (size!43521 totalInput!1349))))

(declare-fun lt!2714228 () Unit!170634)

(declare-fun choose!60215 (List!74848 List!74848) Unit!170634)

(assert (=> d!2387030 (= lt!2714228 (choose!60215 testedP!353 totalInput!1349))))

(assert (=> d!2387030 (isPrefix!6673 testedP!353 totalInput!1349)))

(assert (=> d!2387030 (= (lemmaIsPrefixThenSmallerEqSize!1174 testedP!353 totalInput!1349) lt!2714228)))

(declare-fun bs!1970609 () Bool)

(assert (= bs!1970609 d!2387030))

(assert (=> bs!1970609 m!8369856))

(assert (=> bs!1970609 m!8369836))

(declare-fun m!8369858 () Bool)

(assert (=> bs!1970609 m!8369858))

(assert (=> bs!1970609 m!8369838))

(assert (=> b!8004153 d!2387030))

(declare-fun b!8004173 () Bool)

(declare-fun e!4715074 () Bool)

(declare-fun e!4715072 () Bool)

(assert (=> b!8004173 (= e!4715074 e!4715072)))

(declare-fun res!3165101 () Bool)

(assert (=> b!8004173 (=> (not res!3165101) (not e!4715072))))

(declare-fun call!743666 () Bool)

(assert (=> b!8004173 (= res!3165101 call!743666)))

(declare-fun b!8004174 () Bool)

(declare-fun e!4715077 () Bool)

(declare-fun call!743667 () Bool)

(assert (=> b!8004174 (= e!4715077 call!743667)))

(declare-fun bm!743660 () Bool)

(declare-fun c!1469456 () Bool)

(declare-fun c!1469455 () Bool)

(declare-fun call!743665 () Bool)

(assert (=> bm!743660 (= call!743665 (validRegex!11923 (ite c!1469456 (reg!21948 r!15422) (ite c!1469455 (regOne!43751 r!15422) (regOne!43750 r!15422)))))))

(declare-fun b!8004175 () Bool)

(assert (=> b!8004175 (= e!4715072 call!743667)))

(declare-fun b!8004176 () Bool)

(declare-fun e!4715075 () Bool)

(declare-fun e!4715078 () Bool)

(assert (=> b!8004176 (= e!4715075 e!4715078)))

(declare-fun res!3165105 () Bool)

(declare-fun nullable!9684 (Regex!21619) Bool)

(assert (=> b!8004176 (= res!3165105 (not (nullable!9684 (reg!21948 r!15422))))))

(assert (=> b!8004176 (=> (not res!3165105) (not e!4715078))))

(declare-fun bm!743661 () Bool)

(assert (=> bm!743661 (= call!743666 call!743665)))

(declare-fun b!8004177 () Bool)

(declare-fun res!3165104 () Bool)

(assert (=> b!8004177 (=> (not res!3165104) (not e!4715077))))

(assert (=> b!8004177 (= res!3165104 call!743666)))

(declare-fun e!4715076 () Bool)

(assert (=> b!8004177 (= e!4715076 e!4715077)))

(declare-fun b!8004178 () Bool)

(declare-fun e!4715073 () Bool)

(assert (=> b!8004178 (= e!4715073 e!4715075)))

(assert (=> b!8004178 (= c!1469456 ((_ is Star!21619) r!15422))))

(declare-fun b!8004179 () Bool)

(assert (=> b!8004179 (= e!4715078 call!743665)))

(declare-fun b!8004180 () Bool)

(assert (=> b!8004180 (= e!4715075 e!4715076)))

(assert (=> b!8004180 (= c!1469455 ((_ is Union!21619) r!15422))))

(declare-fun b!8004181 () Bool)

(declare-fun res!3165102 () Bool)

(assert (=> b!8004181 (=> res!3165102 e!4715074)))

(assert (=> b!8004181 (= res!3165102 (not ((_ is Concat!30618) r!15422)))))

(assert (=> b!8004181 (= e!4715076 e!4715074)))

(declare-fun bm!743662 () Bool)

(assert (=> bm!743662 (= call!743667 (validRegex!11923 (ite c!1469455 (regTwo!43751 r!15422) (regTwo!43750 r!15422))))))

(declare-fun d!2387032 () Bool)

(declare-fun res!3165103 () Bool)

(assert (=> d!2387032 (=> res!3165103 e!4715073)))

(assert (=> d!2387032 (= res!3165103 ((_ is ElementMatch!21619) r!15422))))

(assert (=> d!2387032 (= (validRegex!11923 r!15422) e!4715073)))

(assert (= (and d!2387032 (not res!3165103)) b!8004178))

(assert (= (and b!8004178 c!1469456) b!8004176))

(assert (= (and b!8004178 (not c!1469456)) b!8004180))

(assert (= (and b!8004176 res!3165105) b!8004179))

(assert (= (and b!8004180 c!1469455) b!8004177))

(assert (= (and b!8004180 (not c!1469455)) b!8004181))

(assert (= (and b!8004177 res!3165104) b!8004174))

(assert (= (and b!8004181 (not res!3165102)) b!8004173))

(assert (= (and b!8004173 res!3165101) b!8004175))

(assert (= (or b!8004174 b!8004175) bm!743662))

(assert (= (or b!8004177 b!8004173) bm!743661))

(assert (= (or b!8004179 bm!743661) bm!743660))

(declare-fun m!8369860 () Bool)

(assert (=> bm!743660 m!8369860))

(declare-fun m!8369862 () Bool)

(assert (=> b!8004176 m!8369862))

(declare-fun m!8369864 () Bool)

(assert (=> bm!743662 m!8369864))

(assert (=> start!753016 d!2387032))

(declare-fun d!2387036 () Bool)

(declare-fun lt!2714234 () Int)

(assert (=> d!2387036 (>= lt!2714234 0)))

(declare-fun e!4715081 () Int)

(assert (=> d!2387036 (= lt!2714234 e!4715081)))

(declare-fun c!1469459 () Bool)

(assert (=> d!2387036 (= c!1469459 ((_ is Nil!74724) testedP!353))))

(assert (=> d!2387036 (= (size!43521 testedP!353) lt!2714234)))

(declare-fun b!8004186 () Bool)

(assert (=> b!8004186 (= e!4715081 0)))

(declare-fun b!8004187 () Bool)

(assert (=> b!8004187 (= e!4715081 (+ 1 (size!43521 (t!390591 testedP!353))))))

(assert (= (and d!2387036 c!1469459) b!8004186))

(assert (= (and d!2387036 (not c!1469459)) b!8004187))

(declare-fun m!8369868 () Bool)

(assert (=> b!8004187 m!8369868))

(assert (=> b!8004148 d!2387036))

(declare-fun b!8004204 () Bool)

(declare-fun e!4715092 () List!74848)

(assert (=> b!8004204 (= e!4715092 testedSuffix!271)))

(declare-fun d!2387040 () Bool)

(declare-fun e!4715093 () Bool)

(assert (=> d!2387040 e!4715093))

(declare-fun res!3165118 () Bool)

(assert (=> d!2387040 (=> (not res!3165118) (not e!4715093))))

(declare-fun lt!2714242 () List!74848)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15883 (List!74848) (InoxSet C!43576))

(assert (=> d!2387040 (= res!3165118 (= (content!15883 lt!2714242) ((_ map or) (content!15883 testedP!353) (content!15883 testedSuffix!271))))))

(assert (=> d!2387040 (= lt!2714242 e!4715092)))

(declare-fun c!1469462 () Bool)

(assert (=> d!2387040 (= c!1469462 ((_ is Nil!74724) testedP!353))))

(assert (=> d!2387040 (= (++!18445 testedP!353 testedSuffix!271) lt!2714242)))

(declare-fun b!8004206 () Bool)

(declare-fun res!3165119 () Bool)

(assert (=> b!8004206 (=> (not res!3165119) (not e!4715093))))

(assert (=> b!8004206 (= res!3165119 (= (size!43521 lt!2714242) (+ (size!43521 testedP!353) (size!43521 testedSuffix!271))))))

(declare-fun b!8004205 () Bool)

(assert (=> b!8004205 (= e!4715092 (Cons!74724 (h!81172 testedP!353) (++!18445 (t!390591 testedP!353) testedSuffix!271)))))

(declare-fun b!8004207 () Bool)

(assert (=> b!8004207 (= e!4715093 (or (not (= testedSuffix!271 Nil!74724)) (= lt!2714242 testedP!353)))))

(assert (= (and d!2387040 c!1469462) b!8004204))

(assert (= (and d!2387040 (not c!1469462)) b!8004205))

(assert (= (and d!2387040 res!3165118) b!8004206))

(assert (= (and b!8004206 res!3165119) b!8004207))

(declare-fun m!8369872 () Bool)

(assert (=> d!2387040 m!8369872))

(declare-fun m!8369874 () Bool)

(assert (=> d!2387040 m!8369874))

(declare-fun m!8369876 () Bool)

(assert (=> d!2387040 m!8369876))

(declare-fun m!8369878 () Bool)

(assert (=> b!8004206 m!8369878))

(assert (=> b!8004206 m!8369856))

(declare-fun m!8369880 () Bool)

(assert (=> b!8004206 m!8369880))

(declare-fun m!8369882 () Bool)

(assert (=> b!8004205 m!8369882))

(assert (=> b!8004146 d!2387040))

(declare-fun b!8004226 () Bool)

(declare-fun e!4715105 () Bool)

(declare-fun tail!15838 (List!74848) List!74848)

(assert (=> b!8004226 (= e!4715105 (isPrefix!6673 (tail!15838 testedP!353) (tail!15838 totalInput!1349)))))

(declare-fun b!8004227 () Bool)

(declare-fun e!4715106 () Bool)

(assert (=> b!8004227 (= e!4715106 (>= (size!43521 totalInput!1349) (size!43521 testedP!353)))))

(declare-fun b!8004225 () Bool)

(declare-fun res!3165132 () Bool)

(assert (=> b!8004225 (=> (not res!3165132) (not e!4715105))))

(declare-fun head!16311 (List!74848) C!43576)

(assert (=> b!8004225 (= res!3165132 (= (head!16311 testedP!353) (head!16311 totalInput!1349)))))

(declare-fun d!2387044 () Bool)

(assert (=> d!2387044 e!4715106))

(declare-fun res!3165133 () Bool)

(assert (=> d!2387044 (=> res!3165133 e!4715106)))

(declare-fun lt!2714251 () Bool)

(assert (=> d!2387044 (= res!3165133 (not lt!2714251))))

(declare-fun e!4715107 () Bool)

(assert (=> d!2387044 (= lt!2714251 e!4715107)))

(declare-fun res!3165134 () Bool)

(assert (=> d!2387044 (=> res!3165134 e!4715107)))

(assert (=> d!2387044 (= res!3165134 ((_ is Nil!74724) testedP!353))))

(assert (=> d!2387044 (= (isPrefix!6673 testedP!353 totalInput!1349) lt!2714251)))

(declare-fun b!8004224 () Bool)

(assert (=> b!8004224 (= e!4715107 e!4715105)))

(declare-fun res!3165135 () Bool)

(assert (=> b!8004224 (=> (not res!3165135) (not e!4715105))))

(assert (=> b!8004224 (= res!3165135 (not ((_ is Nil!74724) totalInput!1349)))))

(assert (= (and d!2387044 (not res!3165134)) b!8004224))

(assert (= (and b!8004224 res!3165135) b!8004225))

(assert (= (and b!8004225 res!3165132) b!8004226))

(assert (= (and d!2387044 (not res!3165133)) b!8004227))

(declare-fun m!8369892 () Bool)

(assert (=> b!8004226 m!8369892))

(declare-fun m!8369894 () Bool)

(assert (=> b!8004226 m!8369894))

(assert (=> b!8004226 m!8369892))

(assert (=> b!8004226 m!8369894))

(declare-fun m!8369896 () Bool)

(assert (=> b!8004226 m!8369896))

(assert (=> b!8004227 m!8369836))

(assert (=> b!8004227 m!8369856))

(declare-fun m!8369898 () Bool)

(assert (=> b!8004225 m!8369898))

(declare-fun m!8369900 () Bool)

(assert (=> b!8004225 m!8369900))

(assert (=> b!8004139 d!2387044))

(declare-fun b!8004232 () Bool)

(declare-fun e!4715109 () Bool)

(assert (=> b!8004232 (= e!4715109 (isPrefix!6673 (tail!15838 testedP!353) (tail!15838 lt!2714219)))))

(declare-fun b!8004233 () Bool)

(declare-fun e!4715110 () Bool)

(assert (=> b!8004233 (= e!4715110 (>= (size!43521 lt!2714219) (size!43521 testedP!353)))))

(declare-fun b!8004231 () Bool)

(declare-fun res!3165136 () Bool)

(assert (=> b!8004231 (=> (not res!3165136) (not e!4715109))))

(assert (=> b!8004231 (= res!3165136 (= (head!16311 testedP!353) (head!16311 lt!2714219)))))

(declare-fun d!2387050 () Bool)

(assert (=> d!2387050 e!4715110))

(declare-fun res!3165137 () Bool)

(assert (=> d!2387050 (=> res!3165137 e!4715110)))

(declare-fun lt!2714253 () Bool)

(assert (=> d!2387050 (= res!3165137 (not lt!2714253))))

(declare-fun e!4715111 () Bool)

(assert (=> d!2387050 (= lt!2714253 e!4715111)))

(declare-fun res!3165138 () Bool)

(assert (=> d!2387050 (=> res!3165138 e!4715111)))

(assert (=> d!2387050 (= res!3165138 ((_ is Nil!74724) testedP!353))))

(assert (=> d!2387050 (= (isPrefix!6673 testedP!353 lt!2714219) lt!2714253)))

(declare-fun b!8004230 () Bool)

(assert (=> b!8004230 (= e!4715111 e!4715109)))

(declare-fun res!3165139 () Bool)

(assert (=> b!8004230 (=> (not res!3165139) (not e!4715109))))

(assert (=> b!8004230 (= res!3165139 (not ((_ is Nil!74724) lt!2714219)))))

(assert (= (and d!2387050 (not res!3165138)) b!8004230))

(assert (= (and b!8004230 res!3165139) b!8004231))

(assert (= (and b!8004231 res!3165136) b!8004232))

(assert (= (and d!2387050 (not res!3165137)) b!8004233))

(assert (=> b!8004232 m!8369892))

(declare-fun m!8369906 () Bool)

(assert (=> b!8004232 m!8369906))

(assert (=> b!8004232 m!8369892))

(assert (=> b!8004232 m!8369906))

(declare-fun m!8369908 () Bool)

(assert (=> b!8004232 m!8369908))

(declare-fun m!8369910 () Bool)

(assert (=> b!8004233 m!8369910))

(assert (=> b!8004233 m!8369856))

(assert (=> b!8004231 m!8369898))

(declare-fun m!8369912 () Bool)

(assert (=> b!8004231 m!8369912))

(assert (=> b!8004139 d!2387050))

(declare-fun d!2387056 () Bool)

(assert (=> d!2387056 (isPrefix!6673 testedP!353 (++!18445 testedP!353 testedSuffix!271))))

(declare-fun lt!2714257 () Unit!170634)

(declare-fun choose!60220 (List!74848 List!74848) Unit!170634)

(assert (=> d!2387056 (= lt!2714257 (choose!60220 testedP!353 testedSuffix!271))))

(assert (=> d!2387056 (= (lemmaConcatTwoListThenFirstIsPrefix!3904 testedP!353 testedSuffix!271) lt!2714257)))

(declare-fun bs!1970613 () Bool)

(assert (= bs!1970613 d!2387056))

(assert (=> bs!1970613 m!8369844))

(assert (=> bs!1970613 m!8369844))

(declare-fun m!8369914 () Bool)

(assert (=> bs!1970613 m!8369914))

(declare-fun m!8369916 () Bool)

(assert (=> bs!1970613 m!8369916))

(assert (=> b!8004139 d!2387056))

(declare-fun d!2387058 () Bool)

(declare-fun lt!2714258 () Int)

(assert (=> d!2387058 (>= lt!2714258 0)))

(declare-fun e!4715119 () Int)

(assert (=> d!2387058 (= lt!2714258 e!4715119)))

(declare-fun c!1469469 () Bool)

(assert (=> d!2387058 (= c!1469469 ((_ is Nil!74724) totalInput!1349))))

(assert (=> d!2387058 (= (size!43521 totalInput!1349) lt!2714258)))

(declare-fun b!8004247 () Bool)

(assert (=> b!8004247 (= e!4715119 0)))

(declare-fun b!8004249 () Bool)

(assert (=> b!8004249 (= e!4715119 (+ 1 (size!43521 (t!390591 totalInput!1349))))))

(assert (= (and d!2387058 c!1469469) b!8004247))

(assert (= (and d!2387058 (not c!1469469)) b!8004249))

(declare-fun m!8369918 () Bool)

(assert (=> b!8004249 m!8369918))

(assert (=> b!8004150 d!2387058))

(declare-fun d!2387060 () Bool)

(declare-fun lostCauseFct!588 (Regex!21619) Bool)

(assert (=> d!2387060 (= (lostCause!2016 r!15422) (lostCauseFct!588 r!15422))))

(declare-fun bs!1970614 () Bool)

(assert (= bs!1970614 d!2387060))

(declare-fun m!8369920 () Bool)

(assert (=> bs!1970614 m!8369920))

(assert (=> b!8004140 d!2387060))

(declare-fun d!2387062 () Bool)

(assert (=> d!2387062 (= testedSuffix!271 lt!2714220)))

(declare-fun lt!2714261 () Unit!170634)

(declare-fun choose!60221 (List!74848 List!74848 List!74848 List!74848 List!74848) Unit!170634)

(assert (=> d!2387062 (= lt!2714261 (choose!60221 testedP!353 testedSuffix!271 testedP!353 lt!2714220 totalInput!1349))))

(assert (=> d!2387062 (isPrefix!6673 testedP!353 totalInput!1349)))

(assert (=> d!2387062 (= (lemmaSamePrefixThenSameSuffix!3036 testedP!353 testedSuffix!271 testedP!353 lt!2714220 totalInput!1349) lt!2714261)))

(declare-fun bs!1970615 () Bool)

(assert (= bs!1970615 d!2387062))

(declare-fun m!8369922 () Bool)

(assert (=> bs!1970615 m!8369922))

(assert (=> bs!1970615 m!8369838))

(assert (=> b!8004140 d!2387062))

(declare-fun d!2387064 () Bool)

(declare-fun lt!2714266 () List!74848)

(assert (=> d!2387064 (= (++!18445 testedP!353 lt!2714266) totalInput!1349)))

(declare-fun e!4715141 () List!74848)

(assert (=> d!2387064 (= lt!2714266 e!4715141)))

(declare-fun c!1469478 () Bool)

(assert (=> d!2387064 (= c!1469478 ((_ is Cons!74724) testedP!353))))

(assert (=> d!2387064 (>= (size!43521 totalInput!1349) (size!43521 testedP!353))))

(assert (=> d!2387064 (= (getSuffix!3870 totalInput!1349 testedP!353) lt!2714266)))

(declare-fun b!8004277 () Bool)

(assert (=> b!8004277 (= e!4715141 (getSuffix!3870 (tail!15838 totalInput!1349) (t!390591 testedP!353)))))

(declare-fun b!8004278 () Bool)

(assert (=> b!8004278 (= e!4715141 totalInput!1349)))

(assert (= (and d!2387064 c!1469478) b!8004277))

(assert (= (and d!2387064 (not c!1469478)) b!8004278))

(declare-fun m!8369930 () Bool)

(assert (=> d!2387064 m!8369930))

(assert (=> d!2387064 m!8369836))

(assert (=> d!2387064 m!8369856))

(assert (=> b!8004277 m!8369894))

(assert (=> b!8004277 m!8369894))

(declare-fun m!8369932 () Bool)

(assert (=> b!8004277 m!8369932))

(assert (=> b!8004140 d!2387064))

(declare-fun d!2387068 () Bool)

(assert (=> d!2387068 (isPrefix!6673 totalInput!1349 totalInput!1349)))

(declare-fun lt!2714270 () Unit!170634)

(declare-fun choose!60222 (List!74848 List!74848) Unit!170634)

(assert (=> d!2387068 (= lt!2714270 (choose!60222 totalInput!1349 totalInput!1349))))

(assert (=> d!2387068 (= (lemmaIsPrefixRefl!4125 totalInput!1349 totalInput!1349) lt!2714270)))

(declare-fun bs!1970616 () Bool)

(assert (= bs!1970616 d!2387068))

(assert (=> bs!1970616 m!8369848))

(declare-fun m!8369946 () Bool)

(assert (=> bs!1970616 m!8369946))

(assert (=> b!8004144 d!2387068))

(declare-fun b!8004285 () Bool)

(declare-fun e!4715144 () Bool)

(assert (=> b!8004285 (= e!4715144 (isPrefix!6673 (tail!15838 totalInput!1349) (tail!15838 totalInput!1349)))))

(declare-fun b!8004286 () Bool)

(declare-fun e!4715145 () Bool)

(assert (=> b!8004286 (= e!4715145 (>= (size!43521 totalInput!1349) (size!43521 totalInput!1349)))))

(declare-fun b!8004284 () Bool)

(declare-fun res!3165161 () Bool)

(assert (=> b!8004284 (=> (not res!3165161) (not e!4715144))))

(assert (=> b!8004284 (= res!3165161 (= (head!16311 totalInput!1349) (head!16311 totalInput!1349)))))

(declare-fun d!2387072 () Bool)

(assert (=> d!2387072 e!4715145))

(declare-fun res!3165162 () Bool)

(assert (=> d!2387072 (=> res!3165162 e!4715145)))

(declare-fun lt!2714271 () Bool)

(assert (=> d!2387072 (= res!3165162 (not lt!2714271))))

(declare-fun e!4715146 () Bool)

(assert (=> d!2387072 (= lt!2714271 e!4715146)))

(declare-fun res!3165163 () Bool)

(assert (=> d!2387072 (=> res!3165163 e!4715146)))

(assert (=> d!2387072 (= res!3165163 ((_ is Nil!74724) totalInput!1349))))

(assert (=> d!2387072 (= (isPrefix!6673 totalInput!1349 totalInput!1349) lt!2714271)))

(declare-fun b!8004283 () Bool)

(assert (=> b!8004283 (= e!4715146 e!4715144)))

(declare-fun res!3165164 () Bool)

(assert (=> b!8004283 (=> (not res!3165164) (not e!4715144))))

(assert (=> b!8004283 (= res!3165164 (not ((_ is Nil!74724) totalInput!1349)))))

(assert (= (and d!2387072 (not res!3165163)) b!8004283))

(assert (= (and b!8004283 res!3165164) b!8004284))

(assert (= (and b!8004284 res!3165161) b!8004285))

(assert (= (and d!2387072 (not res!3165162)) b!8004286))

(assert (=> b!8004285 m!8369894))

(assert (=> b!8004285 m!8369894))

(assert (=> b!8004285 m!8369894))

(assert (=> b!8004285 m!8369894))

(declare-fun m!8369950 () Bool)

(assert (=> b!8004285 m!8369950))

(assert (=> b!8004286 m!8369836))

(assert (=> b!8004286 m!8369836))

(assert (=> b!8004284 m!8369900))

(assert (=> b!8004284 m!8369900))

(assert (=> b!8004144 d!2387072))

(declare-fun d!2387076 () Bool)

(assert (=> d!2387076 (= totalInput!1349 testedP!353)))

(declare-fun lt!2714277 () Unit!170634)

(declare-fun choose!60224 (List!74848 List!74848 List!74848) Unit!170634)

(assert (=> d!2387076 (= lt!2714277 (choose!60224 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> d!2387076 (isPrefix!6673 totalInput!1349 totalInput!1349)))

(assert (=> d!2387076 (= (lemmaIsPrefixSameLengthThenSameList!1699 totalInput!1349 testedP!353 totalInput!1349) lt!2714277)))

(declare-fun bs!1970619 () Bool)

(assert (= bs!1970619 d!2387076))

(declare-fun m!8369954 () Bool)

(assert (=> bs!1970619 m!8369954))

(assert (=> bs!1970619 m!8369848))

(assert (=> b!8004144 d!2387076))

(declare-fun b!8004295 () Bool)

(declare-fun e!4715151 () Bool)

(declare-fun tp!2394765 () Bool)

(assert (=> b!8004295 (= e!4715151 (and tp_is_empty!53781 tp!2394765))))

(assert (=> b!8004147 (= tp!2394759 e!4715151)))

(assert (= (and b!8004147 ((_ is Cons!74724) (t!390591 testedSuffix!271))) b!8004295))

(declare-fun b!8004314 () Bool)

(declare-fun e!4715158 () Bool)

(declare-fun tp!2394777 () Bool)

(assert (=> b!8004314 (= e!4715158 tp!2394777)))

(assert (=> b!8004142 (= tp!2394756 e!4715158)))

(declare-fun b!8004312 () Bool)

(assert (=> b!8004312 (= e!4715158 tp_is_empty!53781)))

(declare-fun b!8004313 () Bool)

(declare-fun tp!2394778 () Bool)

(declare-fun tp!2394780 () Bool)

(assert (=> b!8004313 (= e!4715158 (and tp!2394778 tp!2394780))))

(declare-fun b!8004315 () Bool)

(declare-fun tp!2394776 () Bool)

(declare-fun tp!2394779 () Bool)

(assert (=> b!8004315 (= e!4715158 (and tp!2394776 tp!2394779))))

(assert (= (and b!8004142 ((_ is ElementMatch!21619) (regOne!43750 r!15422))) b!8004312))

(assert (= (and b!8004142 ((_ is Concat!30618) (regOne!43750 r!15422))) b!8004313))

(assert (= (and b!8004142 ((_ is Star!21619) (regOne!43750 r!15422))) b!8004314))

(assert (= (and b!8004142 ((_ is Union!21619) (regOne!43750 r!15422))) b!8004315))

(declare-fun b!8004318 () Bool)

(declare-fun e!4715159 () Bool)

(declare-fun tp!2394782 () Bool)

(assert (=> b!8004318 (= e!4715159 tp!2394782)))

(assert (=> b!8004142 (= tp!2394755 e!4715159)))

(declare-fun b!8004316 () Bool)

(assert (=> b!8004316 (= e!4715159 tp_is_empty!53781)))

(declare-fun b!8004317 () Bool)

(declare-fun tp!2394783 () Bool)

(declare-fun tp!2394785 () Bool)

(assert (=> b!8004317 (= e!4715159 (and tp!2394783 tp!2394785))))

(declare-fun b!8004319 () Bool)

(declare-fun tp!2394781 () Bool)

(declare-fun tp!2394784 () Bool)

(assert (=> b!8004319 (= e!4715159 (and tp!2394781 tp!2394784))))

(assert (= (and b!8004142 ((_ is ElementMatch!21619) (regTwo!43750 r!15422))) b!8004316))

(assert (= (and b!8004142 ((_ is Concat!30618) (regTwo!43750 r!15422))) b!8004317))

(assert (= (and b!8004142 ((_ is Star!21619) (regTwo!43750 r!15422))) b!8004318))

(assert (= (and b!8004142 ((_ is Union!21619) (regTwo!43750 r!15422))) b!8004319))

(declare-fun b!8004324 () Bool)

(declare-fun e!4715163 () Bool)

(declare-fun tp!2394786 () Bool)

(assert (=> b!8004324 (= e!4715163 (and tp_is_empty!53781 tp!2394786))))

(assert (=> b!8004141 (= tp!2394758 e!4715163)))

(assert (= (and b!8004141 ((_ is Cons!74724) (t!390591 testedP!353))) b!8004324))

(declare-fun b!8004327 () Bool)

(declare-fun e!4715164 () Bool)

(declare-fun tp!2394788 () Bool)

(assert (=> b!8004327 (= e!4715164 tp!2394788)))

(assert (=> b!8004152 (= tp!2394762 e!4715164)))

(declare-fun b!8004325 () Bool)

(assert (=> b!8004325 (= e!4715164 tp_is_empty!53781)))

(declare-fun b!8004326 () Bool)

(declare-fun tp!2394789 () Bool)

(declare-fun tp!2394791 () Bool)

(assert (=> b!8004326 (= e!4715164 (and tp!2394789 tp!2394791))))

(declare-fun b!8004328 () Bool)

(declare-fun tp!2394787 () Bool)

(declare-fun tp!2394790 () Bool)

(assert (=> b!8004328 (= e!4715164 (and tp!2394787 tp!2394790))))

(assert (= (and b!8004152 ((_ is ElementMatch!21619) (regOne!43751 r!15422))) b!8004325))

(assert (= (and b!8004152 ((_ is Concat!30618) (regOne!43751 r!15422))) b!8004326))

(assert (= (and b!8004152 ((_ is Star!21619) (regOne!43751 r!15422))) b!8004327))

(assert (= (and b!8004152 ((_ is Union!21619) (regOne!43751 r!15422))) b!8004328))

(declare-fun b!8004331 () Bool)

(declare-fun e!4715165 () Bool)

(declare-fun tp!2394793 () Bool)

(assert (=> b!8004331 (= e!4715165 tp!2394793)))

(assert (=> b!8004152 (= tp!2394760 e!4715165)))

(declare-fun b!8004329 () Bool)

(assert (=> b!8004329 (= e!4715165 tp_is_empty!53781)))

(declare-fun b!8004330 () Bool)

(declare-fun tp!2394794 () Bool)

(declare-fun tp!2394796 () Bool)

(assert (=> b!8004330 (= e!4715165 (and tp!2394794 tp!2394796))))

(declare-fun b!8004332 () Bool)

(declare-fun tp!2394792 () Bool)

(declare-fun tp!2394795 () Bool)

(assert (=> b!8004332 (= e!4715165 (and tp!2394792 tp!2394795))))

(assert (= (and b!8004152 ((_ is ElementMatch!21619) (regTwo!43751 r!15422))) b!8004329))

(assert (= (and b!8004152 ((_ is Concat!30618) (regTwo!43751 r!15422))) b!8004330))

(assert (= (and b!8004152 ((_ is Star!21619) (regTwo!43751 r!15422))) b!8004331))

(assert (= (and b!8004152 ((_ is Union!21619) (regTwo!43751 r!15422))) b!8004332))

(declare-fun b!8004335 () Bool)

(declare-fun e!4715166 () Bool)

(declare-fun tp!2394798 () Bool)

(assert (=> b!8004335 (= e!4715166 tp!2394798)))

(assert (=> b!8004145 (= tp!2394761 e!4715166)))

(declare-fun b!8004333 () Bool)

(assert (=> b!8004333 (= e!4715166 tp_is_empty!53781)))

(declare-fun b!8004334 () Bool)

(declare-fun tp!2394799 () Bool)

(declare-fun tp!2394801 () Bool)

(assert (=> b!8004334 (= e!4715166 (and tp!2394799 tp!2394801))))

(declare-fun b!8004336 () Bool)

(declare-fun tp!2394797 () Bool)

(declare-fun tp!2394800 () Bool)

(assert (=> b!8004336 (= e!4715166 (and tp!2394797 tp!2394800))))

(assert (= (and b!8004145 ((_ is ElementMatch!21619) (reg!21948 r!15422))) b!8004333))

(assert (= (and b!8004145 ((_ is Concat!30618) (reg!21948 r!15422))) b!8004334))

(assert (= (and b!8004145 ((_ is Star!21619) (reg!21948 r!15422))) b!8004335))

(assert (= (and b!8004145 ((_ is Union!21619) (reg!21948 r!15422))) b!8004336))

(declare-fun b!8004337 () Bool)

(declare-fun e!4715167 () Bool)

(declare-fun tp!2394802 () Bool)

(assert (=> b!8004337 (= e!4715167 (and tp_is_empty!53781 tp!2394802))))

(assert (=> b!8004154 (= tp!2394757 e!4715167)))

(assert (= (and b!8004154 ((_ is Cons!74724) (t!390591 totalInput!1349))) b!8004337))

(check-sat (not b!8004225) (not bm!743660) (not b!8004233) (not d!2387040) (not b!8004324) (not b!8004315) (not b!8004332) (not b!8004318) (not b!8004330) (not b!8004231) (not b!8004232) (not b!8004317) (not b!8004226) (not b!8004334) (not b!8004249) (not b!8004285) (not b!8004319) (not b!8004176) (not b!8004286) (not d!2387060) (not b!8004328) (not d!2387064) (not d!2387056) (not b!8004314) (not b!8004205) (not b!8004206) (not b!8004326) (not d!2387076) (not b!8004227) (not d!2387030) (not d!2387068) (not b!8004284) (not b!8004337) (not b!8004313) (not b!8004277) (not b!8004295) (not b!8004336) (not bm!743662) (not d!2387062) (not b!8004327) tp_is_empty!53781 (not b!8004335) (not b!8004331) (not b!8004187))
(check-sat)
