; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!754016 () Bool)

(assert start!754016)

(declare-fun b!8012700 () Bool)

(declare-datatypes ((Unit!170830 0))(
  ( (Unit!170831) )
))
(declare-fun e!4720100 () Unit!170830)

(declare-fun Unit!170832 () Unit!170830)

(assert (=> b!8012700 (= e!4720100 Unit!170832)))

(declare-fun lt!2717386 () Unit!170830)

(declare-datatypes ((C!43700 0))(
  ( (C!43701 (val!32398 Int)) )
))
(declare-datatypes ((List!74910 0))(
  ( (Nil!74786) (Cons!74786 (h!81234 C!43700) (t!390653 List!74910)) )
))
(declare-fun totalInput!1349 () List!74910)

(declare-fun lemmaIsPrefixRefl!4175 (List!74910 List!74910) Unit!170830)

(assert (=> b!8012700 (= lt!2717386 (lemmaIsPrefixRefl!4175 totalInput!1349 totalInput!1349))))

(declare-fun isPrefix!6733 (List!74910 List!74910) Bool)

(assert (=> b!8012700 (isPrefix!6733 totalInput!1349 totalInput!1349)))

(declare-fun lt!2717379 () Unit!170830)

(declare-fun testedP!353 () List!74910)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1745 (List!74910 List!74910 List!74910) Unit!170830)

(assert (=> b!8012700 (= lt!2717379 (lemmaIsPrefixSameLengthThenSameList!1745 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> b!8012700 false))

(declare-fun b!8012701 () Bool)

(declare-fun e!4720101 () Bool)

(declare-fun e!4720096 () Bool)

(assert (=> b!8012701 (= e!4720101 e!4720096)))

(declare-fun res!3168379 () Bool)

(assert (=> b!8012701 (=> res!3168379 e!4720096)))

(declare-fun lt!2717390 () Int)

(declare-fun lt!2717388 () Int)

(assert (=> b!8012701 (= res!3168379 (>= lt!2717390 lt!2717388))))

(declare-fun lt!2717382 () Unit!170830)

(assert (=> b!8012701 (= lt!2717382 e!4720100)))

(declare-fun c!1470631 () Bool)

(assert (=> b!8012701 (= c!1470631 (= lt!2717390 lt!2717388))))

(assert (=> b!8012701 (<= lt!2717390 lt!2717388)))

(declare-fun lt!2717385 () Unit!170830)

(declare-fun lemmaIsPrefixThenSmallerEqSize!1216 (List!74910 List!74910) Unit!170830)

(assert (=> b!8012701 (= lt!2717385 (lemmaIsPrefixThenSmallerEqSize!1216 testedP!353 totalInput!1349))))

(declare-fun b!8012702 () Bool)

(declare-fun e!4720093 () Bool)

(declare-fun tp_is_empty!53905 () Bool)

(declare-fun tp!2398213 () Bool)

(assert (=> b!8012702 (= e!4720093 (and tp_is_empty!53905 tp!2398213))))

(declare-fun b!8012703 () Bool)

(declare-fun e!4720102 () Bool)

(declare-fun tp!2398212 () Bool)

(assert (=> b!8012703 (= e!4720102 tp!2398212)))

(declare-fun res!3168378 () Bool)

(declare-fun e!4720097 () Bool)

(assert (=> start!754016 (=> (not res!3168378) (not e!4720097))))

(declare-datatypes ((Regex!21681 0))(
  ( (ElementMatch!21681 (c!1470632 C!43700)) (Concat!30680 (regOne!43874 Regex!21681) (regTwo!43874 Regex!21681)) (EmptyExpr!21681) (Star!21681 (reg!22010 Regex!21681)) (EmptyLang!21681) (Union!21681 (regOne!43875 Regex!21681) (regTwo!43875 Regex!21681)) )
))
(declare-fun r!15422 () Regex!21681)

(declare-fun validRegex!11985 (Regex!21681) Bool)

(assert (=> start!754016 (= res!3168378 (validRegex!11985 r!15422))))

(assert (=> start!754016 e!4720097))

(declare-fun e!4720095 () Bool)

(assert (=> start!754016 e!4720095))

(assert (=> start!754016 true))

(declare-fun e!4720098 () Bool)

(assert (=> start!754016 e!4720098))

(assert (=> start!754016 e!4720102))

(assert (=> start!754016 e!4720093))

(declare-fun b!8012704 () Bool)

(declare-fun e!4720099 () Bool)

(declare-fun e!4720094 () Bool)

(assert (=> b!8012704 (= e!4720099 e!4720094)))

(declare-fun res!3168382 () Bool)

(assert (=> b!8012704 (=> (not res!3168382) (not e!4720094))))

(declare-fun testedPSize!271 () Int)

(assert (=> b!8012704 (= res!3168382 (= testedPSize!271 lt!2717390))))

(declare-fun size!43583 (List!74910) Int)

(assert (=> b!8012704 (= lt!2717390 (size!43583 testedP!353))))

(declare-fun b!8012705 () Bool)

(declare-fun tp!2398215 () Bool)

(declare-fun tp!2398217 () Bool)

(assert (=> b!8012705 (= e!4720102 (and tp!2398215 tp!2398217))))

(declare-fun b!8012706 () Bool)

(declare-fun e!4720092 () Bool)

(declare-fun e!4720103 () Bool)

(assert (=> b!8012706 (= e!4720092 (not e!4720103))))

(declare-fun res!3168375 () Bool)

(assert (=> b!8012706 (=> res!3168375 e!4720103)))

(assert (=> b!8012706 (= res!3168375 (not (isPrefix!6733 testedP!353 totalInput!1349)))))

(declare-fun lt!2717389 () List!74910)

(assert (=> b!8012706 (isPrefix!6733 testedP!353 lt!2717389)))

(declare-fun lt!2717383 () Unit!170830)

(declare-fun testedSuffix!271 () List!74910)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3964 (List!74910 List!74910) Unit!170830)

(assert (=> b!8012706 (= lt!2717383 (lemmaConcatTwoListThenFirstIsPrefix!3964 testedP!353 testedSuffix!271))))

(declare-fun b!8012707 () Bool)

(declare-fun tp!2398211 () Bool)

(declare-fun tp!2398218 () Bool)

(assert (=> b!8012707 (= e!4720102 (and tp!2398211 tp!2398218))))

(declare-fun b!8012708 () Bool)

(declare-fun res!3168376 () Bool)

(assert (=> b!8012708 (=> res!3168376 e!4720101)))

(declare-fun totalInputSize!629 () Int)

(assert (=> b!8012708 (= res!3168376 (= testedPSize!271 totalInputSize!629))))

(declare-fun lt!2717380 () C!43700)

(declare-fun b!8012709 () Bool)

(declare-fun ++!18507 (List!74910 List!74910) List!74910)

(declare-fun tail!15878 (List!74910) List!74910)

(assert (=> b!8012709 (= e!4720096 (= (++!18507 testedP!353 (Cons!74786 lt!2717380 (tail!15878 testedSuffix!271))) totalInput!1349))))

(declare-fun lt!2717387 () List!74910)

(declare-fun head!16355 (List!74910) C!43700)

(assert (=> b!8012709 (isPrefix!6733 (++!18507 testedP!353 (Cons!74786 (head!16355 lt!2717387) Nil!74786)) totalInput!1349)))

(declare-fun lt!2717381 () Unit!170830)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1406 (List!74910 List!74910) Unit!170830)

(assert (=> b!8012709 (= lt!2717381 (lemmaAddHeadSuffixToPrefixStillPrefix!1406 testedP!353 totalInput!1349))))

(declare-fun lt!2717391 () List!74910)

(assert (=> b!8012709 (= lt!2717391 (++!18507 testedP!353 (Cons!74786 lt!2717380 Nil!74786)))))

(assert (=> b!8012709 (= lt!2717380 (head!16355 testedSuffix!271))))

(declare-fun b!8012710 () Bool)

(declare-fun tp!2398216 () Bool)

(assert (=> b!8012710 (= e!4720095 (and tp_is_empty!53905 tp!2398216))))

(declare-fun b!8012711 () Bool)

(assert (=> b!8012711 (= e!4720097 e!4720099)))

(declare-fun res!3168380 () Bool)

(assert (=> b!8012711 (=> (not res!3168380) (not e!4720099))))

(assert (=> b!8012711 (= res!3168380 (= lt!2717389 totalInput!1349))))

(assert (=> b!8012711 (= lt!2717389 (++!18507 testedP!353 testedSuffix!271))))

(declare-fun b!8012712 () Bool)

(assert (=> b!8012712 (= e!4720094 e!4720092)))

(declare-fun res!3168381 () Bool)

(assert (=> b!8012712 (=> (not res!3168381) (not e!4720092))))

(assert (=> b!8012712 (= res!3168381 (= totalInputSize!629 lt!2717388))))

(assert (=> b!8012712 (= lt!2717388 (size!43583 totalInput!1349))))

(declare-fun b!8012713 () Bool)

(declare-fun tp!2398214 () Bool)

(assert (=> b!8012713 (= e!4720098 (and tp_is_empty!53905 tp!2398214))))

(declare-fun b!8012714 () Bool)

(assert (=> b!8012714 (= e!4720102 tp_is_empty!53905)))

(declare-fun b!8012715 () Bool)

(declare-fun Unit!170833 () Unit!170830)

(assert (=> b!8012715 (= e!4720100 Unit!170833)))

(declare-fun b!8012716 () Bool)

(assert (=> b!8012716 (= e!4720103 e!4720101)))

(declare-fun res!3168377 () Bool)

(assert (=> b!8012716 (=> res!3168377 e!4720101)))

(declare-fun lostCause!2068 (Regex!21681) Bool)

(assert (=> b!8012716 (= res!3168377 (lostCause!2068 r!15422))))

(assert (=> b!8012716 (and (= testedSuffix!271 lt!2717387) (= lt!2717387 testedSuffix!271))))

(declare-fun lt!2717384 () Unit!170830)

(declare-fun lemmaSamePrefixThenSameSuffix!3090 (List!74910 List!74910 List!74910 List!74910 List!74910) Unit!170830)

(assert (=> b!8012716 (= lt!2717384 (lemmaSamePrefixThenSameSuffix!3090 testedP!353 testedSuffix!271 testedP!353 lt!2717387 totalInput!1349))))

(declare-fun getSuffix!3928 (List!74910 List!74910) List!74910)

(assert (=> b!8012716 (= lt!2717387 (getSuffix!3928 totalInput!1349 testedP!353))))

(assert (= (and start!754016 res!3168378) b!8012711))

(assert (= (and b!8012711 res!3168380) b!8012704))

(assert (= (and b!8012704 res!3168382) b!8012712))

(assert (= (and b!8012712 res!3168381) b!8012706))

(assert (= (and b!8012706 (not res!3168375)) b!8012716))

(assert (= (and b!8012716 (not res!3168377)) b!8012708))

(assert (= (and b!8012708 (not res!3168376)) b!8012701))

(assert (= (and b!8012701 c!1470631) b!8012700))

(assert (= (and b!8012701 (not c!1470631)) b!8012715))

(assert (= (and b!8012701 (not res!3168379)) b!8012709))

(get-info :version)

(assert (= (and start!754016 ((_ is Cons!74786) totalInput!1349)) b!8012710))

(assert (= (and start!754016 ((_ is Cons!74786) testedSuffix!271)) b!8012713))

(assert (= (and start!754016 ((_ is ElementMatch!21681) r!15422)) b!8012714))

(assert (= (and start!754016 ((_ is Concat!30680) r!15422)) b!8012707))

(assert (= (and start!754016 ((_ is Star!21681) r!15422)) b!8012703))

(assert (= (and start!754016 ((_ is Union!21681) r!15422)) b!8012705))

(assert (= (and start!754016 ((_ is Cons!74786) testedP!353)) b!8012702))

(declare-fun m!8376126 () Bool)

(assert (=> b!8012704 m!8376126))

(declare-fun m!8376128 () Bool)

(assert (=> b!8012716 m!8376128))

(declare-fun m!8376130 () Bool)

(assert (=> b!8012716 m!8376130))

(declare-fun m!8376132 () Bool)

(assert (=> b!8012716 m!8376132))

(declare-fun m!8376134 () Bool)

(assert (=> b!8012711 m!8376134))

(declare-fun m!8376136 () Bool)

(assert (=> b!8012701 m!8376136))

(declare-fun m!8376138 () Bool)

(assert (=> b!8012709 m!8376138))

(declare-fun m!8376140 () Bool)

(assert (=> b!8012709 m!8376140))

(declare-fun m!8376142 () Bool)

(assert (=> b!8012709 m!8376142))

(declare-fun m!8376144 () Bool)

(assert (=> b!8012709 m!8376144))

(declare-fun m!8376146 () Bool)

(assert (=> b!8012709 m!8376146))

(declare-fun m!8376148 () Bool)

(assert (=> b!8012709 m!8376148))

(declare-fun m!8376150 () Bool)

(assert (=> b!8012709 m!8376150))

(assert (=> b!8012709 m!8376144))

(declare-fun m!8376152 () Bool)

(assert (=> b!8012709 m!8376152))

(declare-fun m!8376154 () Bool)

(assert (=> b!8012712 m!8376154))

(declare-fun m!8376156 () Bool)

(assert (=> b!8012700 m!8376156))

(declare-fun m!8376158 () Bool)

(assert (=> b!8012700 m!8376158))

(declare-fun m!8376160 () Bool)

(assert (=> b!8012700 m!8376160))

(declare-fun m!8376162 () Bool)

(assert (=> b!8012706 m!8376162))

(declare-fun m!8376164 () Bool)

(assert (=> b!8012706 m!8376164))

(declare-fun m!8376166 () Bool)

(assert (=> b!8012706 m!8376166))

(declare-fun m!8376168 () Bool)

(assert (=> start!754016 m!8376168))

(check-sat (not b!8012711) (not b!8012709) (not b!8012702) (not start!754016) (not b!8012703) (not b!8012712) (not b!8012716) (not b!8012710) (not b!8012713) tp_is_empty!53905 (not b!8012706) (not b!8012704) (not b!8012700) (not b!8012705) (not b!8012701) (not b!8012707))
(check-sat)
(get-model)

(declare-fun d!2388809 () Bool)

(declare-fun lt!2717394 () Int)

(assert (=> d!2388809 (>= lt!2717394 0)))

(declare-fun e!4720106 () Int)

(assert (=> d!2388809 (= lt!2717394 e!4720106)))

(declare-fun c!1470635 () Bool)

(assert (=> d!2388809 (= c!1470635 ((_ is Nil!74786) testedP!353))))

(assert (=> d!2388809 (= (size!43583 testedP!353) lt!2717394)))

(declare-fun b!8012721 () Bool)

(assert (=> b!8012721 (= e!4720106 0)))

(declare-fun b!8012722 () Bool)

(assert (=> b!8012722 (= e!4720106 (+ 1 (size!43583 (t!390653 testedP!353))))))

(assert (= (and d!2388809 c!1470635) b!8012721))

(assert (= (and d!2388809 (not c!1470635)) b!8012722))

(declare-fun m!8376170 () Bool)

(assert (=> b!8012722 m!8376170))

(assert (=> b!8012704 d!2388809))

(declare-fun d!2388811 () Bool)

(assert (=> d!2388811 (isPrefix!6733 (++!18507 testedP!353 (Cons!74786 (head!16355 (getSuffix!3928 totalInput!1349 testedP!353)) Nil!74786)) totalInput!1349)))

(declare-fun lt!2717397 () Unit!170830)

(declare-fun choose!60362 (List!74910 List!74910) Unit!170830)

(assert (=> d!2388811 (= lt!2717397 (choose!60362 testedP!353 totalInput!1349))))

(assert (=> d!2388811 (isPrefix!6733 testedP!353 totalInput!1349)))

(assert (=> d!2388811 (= (lemmaAddHeadSuffixToPrefixStillPrefix!1406 testedP!353 totalInput!1349) lt!2717397)))

(declare-fun bs!1970907 () Bool)

(assert (= bs!1970907 d!2388811))

(assert (=> bs!1970907 m!8376132))

(declare-fun m!8376172 () Bool)

(assert (=> bs!1970907 m!8376172))

(declare-fun m!8376174 () Bool)

(assert (=> bs!1970907 m!8376174))

(assert (=> bs!1970907 m!8376132))

(declare-fun m!8376176 () Bool)

(assert (=> bs!1970907 m!8376176))

(assert (=> bs!1970907 m!8376162))

(assert (=> bs!1970907 m!8376172))

(declare-fun m!8376178 () Bool)

(assert (=> bs!1970907 m!8376178))

(assert (=> b!8012709 d!2388811))

(declare-fun b!8012751 () Bool)

(declare-fun res!3168398 () Bool)

(declare-fun e!4720126 () Bool)

(assert (=> b!8012751 (=> (not res!3168398) (not e!4720126))))

(declare-fun lt!2717400 () List!74910)

(assert (=> b!8012751 (= res!3168398 (= (size!43583 lt!2717400) (+ (size!43583 testedP!353) (size!43583 (Cons!74786 lt!2717380 Nil!74786)))))))

(declare-fun b!8012750 () Bool)

(declare-fun e!4720125 () List!74910)

(assert (=> b!8012750 (= e!4720125 (Cons!74786 (h!81234 testedP!353) (++!18507 (t!390653 testedP!353) (Cons!74786 lt!2717380 Nil!74786))))))

(declare-fun d!2388815 () Bool)

(assert (=> d!2388815 e!4720126))

(declare-fun res!3168397 () Bool)

(assert (=> d!2388815 (=> (not res!3168397) (not e!4720126))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15913 (List!74910) (InoxSet C!43700))

(assert (=> d!2388815 (= res!3168397 (= (content!15913 lt!2717400) ((_ map or) (content!15913 testedP!353) (content!15913 (Cons!74786 lt!2717380 Nil!74786)))))))

(assert (=> d!2388815 (= lt!2717400 e!4720125)))

(declare-fun c!1470642 () Bool)

(assert (=> d!2388815 (= c!1470642 ((_ is Nil!74786) testedP!353))))

(assert (=> d!2388815 (= (++!18507 testedP!353 (Cons!74786 lt!2717380 Nil!74786)) lt!2717400)))

(declare-fun b!8012752 () Bool)

(assert (=> b!8012752 (= e!4720126 (or (not (= (Cons!74786 lt!2717380 Nil!74786) Nil!74786)) (= lt!2717400 testedP!353)))))

(declare-fun b!8012749 () Bool)

(assert (=> b!8012749 (= e!4720125 (Cons!74786 lt!2717380 Nil!74786))))

(assert (= (and d!2388815 c!1470642) b!8012749))

(assert (= (and d!2388815 (not c!1470642)) b!8012750))

(assert (= (and d!2388815 res!3168397) b!8012751))

(assert (= (and b!8012751 res!3168398) b!8012752))

(declare-fun m!8376180 () Bool)

(assert (=> b!8012751 m!8376180))

(assert (=> b!8012751 m!8376126))

(declare-fun m!8376182 () Bool)

(assert (=> b!8012751 m!8376182))

(declare-fun m!8376184 () Bool)

(assert (=> b!8012750 m!8376184))

(declare-fun m!8376186 () Bool)

(assert (=> d!2388815 m!8376186))

(declare-fun m!8376188 () Bool)

(assert (=> d!2388815 m!8376188))

(declare-fun m!8376190 () Bool)

(assert (=> d!2388815 m!8376190))

(assert (=> b!8012709 d!2388815))

(declare-fun b!8012755 () Bool)

(declare-fun res!3168400 () Bool)

(declare-fun e!4720128 () Bool)

(assert (=> b!8012755 (=> (not res!3168400) (not e!4720128))))

(declare-fun lt!2717401 () List!74910)

(assert (=> b!8012755 (= res!3168400 (= (size!43583 lt!2717401) (+ (size!43583 testedP!353) (size!43583 (Cons!74786 lt!2717380 (tail!15878 testedSuffix!271))))))))

(declare-fun b!8012754 () Bool)

(declare-fun e!4720127 () List!74910)

(assert (=> b!8012754 (= e!4720127 (Cons!74786 (h!81234 testedP!353) (++!18507 (t!390653 testedP!353) (Cons!74786 lt!2717380 (tail!15878 testedSuffix!271)))))))

(declare-fun d!2388817 () Bool)

(assert (=> d!2388817 e!4720128))

(declare-fun res!3168399 () Bool)

(assert (=> d!2388817 (=> (not res!3168399) (not e!4720128))))

(assert (=> d!2388817 (= res!3168399 (= (content!15913 lt!2717401) ((_ map or) (content!15913 testedP!353) (content!15913 (Cons!74786 lt!2717380 (tail!15878 testedSuffix!271))))))))

(assert (=> d!2388817 (= lt!2717401 e!4720127)))

(declare-fun c!1470643 () Bool)

(assert (=> d!2388817 (= c!1470643 ((_ is Nil!74786) testedP!353))))

(assert (=> d!2388817 (= (++!18507 testedP!353 (Cons!74786 lt!2717380 (tail!15878 testedSuffix!271))) lt!2717401)))

(declare-fun b!8012756 () Bool)

(assert (=> b!8012756 (= e!4720128 (or (not (= (Cons!74786 lt!2717380 (tail!15878 testedSuffix!271)) Nil!74786)) (= lt!2717401 testedP!353)))))

(declare-fun b!8012753 () Bool)

(assert (=> b!8012753 (= e!4720127 (Cons!74786 lt!2717380 (tail!15878 testedSuffix!271)))))

(assert (= (and d!2388817 c!1470643) b!8012753))

(assert (= (and d!2388817 (not c!1470643)) b!8012754))

(assert (= (and d!2388817 res!3168399) b!8012755))

(assert (= (and b!8012755 res!3168400) b!8012756))

(declare-fun m!8376192 () Bool)

(assert (=> b!8012755 m!8376192))

(assert (=> b!8012755 m!8376126))

(declare-fun m!8376194 () Bool)

(assert (=> b!8012755 m!8376194))

(declare-fun m!8376196 () Bool)

(assert (=> b!8012754 m!8376196))

(declare-fun m!8376198 () Bool)

(assert (=> d!2388817 m!8376198))

(assert (=> d!2388817 m!8376188))

(declare-fun m!8376200 () Bool)

(assert (=> d!2388817 m!8376200))

(assert (=> b!8012709 d!2388817))

(declare-fun e!4720143 () Bool)

(declare-fun b!8012776 () Bool)

(assert (=> b!8012776 (= e!4720143 (isPrefix!6733 (tail!15878 (++!18507 testedP!353 (Cons!74786 (head!16355 lt!2717387) Nil!74786))) (tail!15878 totalInput!1349)))))

(declare-fun b!8012775 () Bool)

(declare-fun res!3168415 () Bool)

(assert (=> b!8012775 (=> (not res!3168415) (not e!4720143))))

(assert (=> b!8012775 (= res!3168415 (= (head!16355 (++!18507 testedP!353 (Cons!74786 (head!16355 lt!2717387) Nil!74786))) (head!16355 totalInput!1349)))))

(declare-fun b!8012774 () Bool)

(declare-fun e!4720144 () Bool)

(assert (=> b!8012774 (= e!4720144 e!4720143)))

(declare-fun res!3168416 () Bool)

(assert (=> b!8012774 (=> (not res!3168416) (not e!4720143))))

(assert (=> b!8012774 (= res!3168416 (not ((_ is Nil!74786) totalInput!1349)))))

(declare-fun d!2388819 () Bool)

(declare-fun e!4720142 () Bool)

(assert (=> d!2388819 e!4720142))

(declare-fun res!3168414 () Bool)

(assert (=> d!2388819 (=> res!3168414 e!4720142)))

(declare-fun lt!2717407 () Bool)

(assert (=> d!2388819 (= res!3168414 (not lt!2717407))))

(assert (=> d!2388819 (= lt!2717407 e!4720144)))

(declare-fun res!3168417 () Bool)

(assert (=> d!2388819 (=> res!3168417 e!4720144)))

(assert (=> d!2388819 (= res!3168417 ((_ is Nil!74786) (++!18507 testedP!353 (Cons!74786 (head!16355 lt!2717387) Nil!74786))))))

(assert (=> d!2388819 (= (isPrefix!6733 (++!18507 testedP!353 (Cons!74786 (head!16355 lt!2717387) Nil!74786)) totalInput!1349) lt!2717407)))

(declare-fun b!8012777 () Bool)

(assert (=> b!8012777 (= e!4720142 (>= (size!43583 totalInput!1349) (size!43583 (++!18507 testedP!353 (Cons!74786 (head!16355 lt!2717387) Nil!74786)))))))

(assert (= (and d!2388819 (not res!3168417)) b!8012774))

(assert (= (and b!8012774 res!3168416) b!8012775))

(assert (= (and b!8012775 res!3168415) b!8012776))

(assert (= (and d!2388819 (not res!3168414)) b!8012777))

(assert (=> b!8012776 m!8376144))

(declare-fun m!8376210 () Bool)

(assert (=> b!8012776 m!8376210))

(declare-fun m!8376212 () Bool)

(assert (=> b!8012776 m!8376212))

(assert (=> b!8012776 m!8376210))

(assert (=> b!8012776 m!8376212))

(declare-fun m!8376214 () Bool)

(assert (=> b!8012776 m!8376214))

(assert (=> b!8012775 m!8376144))

(declare-fun m!8376216 () Bool)

(assert (=> b!8012775 m!8376216))

(declare-fun m!8376218 () Bool)

(assert (=> b!8012775 m!8376218))

(assert (=> b!8012777 m!8376154))

(assert (=> b!8012777 m!8376144))

(declare-fun m!8376220 () Bool)

(assert (=> b!8012777 m!8376220))

(assert (=> b!8012709 d!2388819))

(declare-fun b!8012788 () Bool)

(declare-fun res!3168427 () Bool)

(declare-fun e!4720152 () Bool)

(assert (=> b!8012788 (=> (not res!3168427) (not e!4720152))))

(declare-fun lt!2717410 () List!74910)

(assert (=> b!8012788 (= res!3168427 (= (size!43583 lt!2717410) (+ (size!43583 testedP!353) (size!43583 (Cons!74786 (head!16355 lt!2717387) Nil!74786)))))))

(declare-fun b!8012787 () Bool)

(declare-fun e!4720151 () List!74910)

(assert (=> b!8012787 (= e!4720151 (Cons!74786 (h!81234 testedP!353) (++!18507 (t!390653 testedP!353) (Cons!74786 (head!16355 lt!2717387) Nil!74786))))))

(declare-fun d!2388825 () Bool)

(assert (=> d!2388825 e!4720152))

(declare-fun res!3168426 () Bool)

(assert (=> d!2388825 (=> (not res!3168426) (not e!4720152))))

(assert (=> d!2388825 (= res!3168426 (= (content!15913 lt!2717410) ((_ map or) (content!15913 testedP!353) (content!15913 (Cons!74786 (head!16355 lt!2717387) Nil!74786)))))))

(assert (=> d!2388825 (= lt!2717410 e!4720151)))

(declare-fun c!1470646 () Bool)

(assert (=> d!2388825 (= c!1470646 ((_ is Nil!74786) testedP!353))))

(assert (=> d!2388825 (= (++!18507 testedP!353 (Cons!74786 (head!16355 lt!2717387) Nil!74786)) lt!2717410)))

(declare-fun b!8012789 () Bool)

(assert (=> b!8012789 (= e!4720152 (or (not (= (Cons!74786 (head!16355 lt!2717387) Nil!74786) Nil!74786)) (= lt!2717410 testedP!353)))))

(declare-fun b!8012786 () Bool)

(assert (=> b!8012786 (= e!4720151 (Cons!74786 (head!16355 lt!2717387) Nil!74786))))

(assert (= (and d!2388825 c!1470646) b!8012786))

(assert (= (and d!2388825 (not c!1470646)) b!8012787))

(assert (= (and d!2388825 res!3168426) b!8012788))

(assert (= (and b!8012788 res!3168427) b!8012789))

(declare-fun m!8376222 () Bool)

(assert (=> b!8012788 m!8376222))

(assert (=> b!8012788 m!8376126))

(declare-fun m!8376224 () Bool)

(assert (=> b!8012788 m!8376224))

(declare-fun m!8376226 () Bool)

(assert (=> b!8012787 m!8376226))

(declare-fun m!8376228 () Bool)

(assert (=> d!2388825 m!8376228))

(assert (=> d!2388825 m!8376188))

(declare-fun m!8376230 () Bool)

(assert (=> d!2388825 m!8376230))

(assert (=> b!8012709 d!2388825))

(declare-fun d!2388827 () Bool)

(assert (=> d!2388827 (= (head!16355 testedSuffix!271) (h!81234 testedSuffix!271))))

(assert (=> b!8012709 d!2388827))

(declare-fun d!2388829 () Bool)

(assert (=> d!2388829 (= (head!16355 lt!2717387) (h!81234 lt!2717387))))

(assert (=> b!8012709 d!2388829))

(declare-fun d!2388831 () Bool)

(assert (=> d!2388831 (= (tail!15878 testedSuffix!271) (t!390653 testedSuffix!271))))

(assert (=> b!8012709 d!2388831))

(declare-fun d!2388833 () Bool)

(declare-fun lt!2717412 () Int)

(assert (=> d!2388833 (>= lt!2717412 0)))

(declare-fun e!4720156 () Int)

(assert (=> d!2388833 (= lt!2717412 e!4720156)))

(declare-fun c!1470647 () Bool)

(assert (=> d!2388833 (= c!1470647 ((_ is Nil!74786) totalInput!1349))))

(assert (=> d!2388833 (= (size!43583 totalInput!1349) lt!2717412)))

(declare-fun b!8012794 () Bool)

(assert (=> b!8012794 (= e!4720156 0)))

(declare-fun b!8012795 () Bool)

(assert (=> b!8012795 (= e!4720156 (+ 1 (size!43583 (t!390653 totalInput!1349))))))

(assert (= (and d!2388833 c!1470647) b!8012794))

(assert (= (and d!2388833 (not c!1470647)) b!8012795))

(declare-fun m!8376232 () Bool)

(assert (=> b!8012795 m!8376232))

(assert (=> b!8012712 d!2388833))

(declare-fun b!8012820 () Bool)

(declare-fun e!4720177 () Bool)

(declare-fun e!4720176 () Bool)

(assert (=> b!8012820 (= e!4720177 e!4720176)))

(declare-fun res!3168446 () Bool)

(assert (=> b!8012820 (=> (not res!3168446) (not e!4720176))))

(declare-fun call!744265 () Bool)

(assert (=> b!8012820 (= res!3168446 call!744265)))

(declare-fun b!8012821 () Bool)

(declare-fun call!744266 () Bool)

(assert (=> b!8012821 (= e!4720176 call!744266)))

(declare-fun b!8012822 () Bool)

(declare-fun e!4720175 () Bool)

(declare-fun e!4720179 () Bool)

(assert (=> b!8012822 (= e!4720175 e!4720179)))

(declare-fun c!1470655 () Bool)

(assert (=> b!8012822 (= c!1470655 ((_ is Union!21681) r!15422))))

(declare-fun b!8012823 () Bool)

(declare-fun e!4720180 () Bool)

(assert (=> b!8012823 (= e!4720180 call!744266)))

(declare-fun b!8012824 () Bool)

(declare-fun res!3168444 () Bool)

(assert (=> b!8012824 (=> (not res!3168444) (not e!4720180))))

(assert (=> b!8012824 (= res!3168444 call!744265)))

(assert (=> b!8012824 (= e!4720179 e!4720180)))

(declare-fun b!8012825 () Bool)

(declare-fun e!4720174 () Bool)

(assert (=> b!8012825 (= e!4720175 e!4720174)))

(declare-fun res!3168443 () Bool)

(declare-fun nullable!9723 (Regex!21681) Bool)

(assert (=> b!8012825 (= res!3168443 (not (nullable!9723 (reg!22010 r!15422))))))

(assert (=> b!8012825 (=> (not res!3168443) (not e!4720174))))

(declare-fun b!8012826 () Bool)

(declare-fun e!4720178 () Bool)

(assert (=> b!8012826 (= e!4720178 e!4720175)))

(declare-fun c!1470656 () Bool)

(assert (=> b!8012826 (= c!1470656 ((_ is Star!21681) r!15422))))

(declare-fun bm!744259 () Bool)

(declare-fun call!744264 () Bool)

(assert (=> bm!744259 (= call!744266 call!744264)))

(declare-fun d!2388835 () Bool)

(declare-fun res!3168442 () Bool)

(assert (=> d!2388835 (=> res!3168442 e!4720178)))

(assert (=> d!2388835 (= res!3168442 ((_ is ElementMatch!21681) r!15422))))

(assert (=> d!2388835 (= (validRegex!11985 r!15422) e!4720178)))

(declare-fun bm!744260 () Bool)

(assert (=> bm!744260 (= call!744265 (validRegex!11985 (ite c!1470655 (regOne!43875 r!15422) (regOne!43874 r!15422))))))

(declare-fun b!8012827 () Bool)

(assert (=> b!8012827 (= e!4720174 call!744264)))

(declare-fun b!8012828 () Bool)

(declare-fun res!3168445 () Bool)

(assert (=> b!8012828 (=> res!3168445 e!4720177)))

(assert (=> b!8012828 (= res!3168445 (not ((_ is Concat!30680) r!15422)))))

(assert (=> b!8012828 (= e!4720179 e!4720177)))

(declare-fun bm!744261 () Bool)

(assert (=> bm!744261 (= call!744264 (validRegex!11985 (ite c!1470656 (reg!22010 r!15422) (ite c!1470655 (regTwo!43875 r!15422) (regTwo!43874 r!15422)))))))

(assert (= (and d!2388835 (not res!3168442)) b!8012826))

(assert (= (and b!8012826 c!1470656) b!8012825))

(assert (= (and b!8012826 (not c!1470656)) b!8012822))

(assert (= (and b!8012825 res!3168443) b!8012827))

(assert (= (and b!8012822 c!1470655) b!8012824))

(assert (= (and b!8012822 (not c!1470655)) b!8012828))

(assert (= (and b!8012824 res!3168444) b!8012823))

(assert (= (and b!8012828 (not res!3168445)) b!8012820))

(assert (= (and b!8012820 res!3168446) b!8012821))

(assert (= (or b!8012823 b!8012821) bm!744259))

(assert (= (or b!8012824 b!8012820) bm!744260))

(assert (= (or b!8012827 bm!744259) bm!744261))

(declare-fun m!8376248 () Bool)

(assert (=> b!8012825 m!8376248))

(declare-fun m!8376250 () Bool)

(assert (=> bm!744260 m!8376250))

(declare-fun m!8376252 () Bool)

(assert (=> bm!744261 m!8376252))

(assert (=> start!754016 d!2388835))

(declare-fun b!8012831 () Bool)

(declare-fun res!3168448 () Bool)

(declare-fun e!4720182 () Bool)

(assert (=> b!8012831 (=> (not res!3168448) (not e!4720182))))

(declare-fun lt!2717422 () List!74910)

(assert (=> b!8012831 (= res!3168448 (= (size!43583 lt!2717422) (+ (size!43583 testedP!353) (size!43583 testedSuffix!271))))))

(declare-fun b!8012830 () Bool)

(declare-fun e!4720181 () List!74910)

(assert (=> b!8012830 (= e!4720181 (Cons!74786 (h!81234 testedP!353) (++!18507 (t!390653 testedP!353) testedSuffix!271)))))

(declare-fun d!2388847 () Bool)

(assert (=> d!2388847 e!4720182))

(declare-fun res!3168447 () Bool)

(assert (=> d!2388847 (=> (not res!3168447) (not e!4720182))))

(assert (=> d!2388847 (= res!3168447 (= (content!15913 lt!2717422) ((_ map or) (content!15913 testedP!353) (content!15913 testedSuffix!271))))))

(assert (=> d!2388847 (= lt!2717422 e!4720181)))

(declare-fun c!1470657 () Bool)

(assert (=> d!2388847 (= c!1470657 ((_ is Nil!74786) testedP!353))))

(assert (=> d!2388847 (= (++!18507 testedP!353 testedSuffix!271) lt!2717422)))

(declare-fun b!8012832 () Bool)

(assert (=> b!8012832 (= e!4720182 (or (not (= testedSuffix!271 Nil!74786)) (= lt!2717422 testedP!353)))))

(declare-fun b!8012829 () Bool)

(assert (=> b!8012829 (= e!4720181 testedSuffix!271)))

(assert (= (and d!2388847 c!1470657) b!8012829))

(assert (= (and d!2388847 (not c!1470657)) b!8012830))

(assert (= (and d!2388847 res!3168447) b!8012831))

(assert (= (and b!8012831 res!3168448) b!8012832))

(declare-fun m!8376254 () Bool)

(assert (=> b!8012831 m!8376254))

(assert (=> b!8012831 m!8376126))

(declare-fun m!8376256 () Bool)

(assert (=> b!8012831 m!8376256))

(declare-fun m!8376258 () Bool)

(assert (=> b!8012830 m!8376258))

(declare-fun m!8376260 () Bool)

(assert (=> d!2388847 m!8376260))

(assert (=> d!2388847 m!8376188))

(declare-fun m!8376262 () Bool)

(assert (=> d!2388847 m!8376262))

(assert (=> b!8012711 d!2388847))

(declare-fun d!2388849 () Bool)

(assert (=> d!2388849 (isPrefix!6733 totalInput!1349 totalInput!1349)))

(declare-fun lt!2717428 () Unit!170830)

(declare-fun choose!60368 (List!74910 List!74910) Unit!170830)

(assert (=> d!2388849 (= lt!2717428 (choose!60368 totalInput!1349 totalInput!1349))))

(assert (=> d!2388849 (= (lemmaIsPrefixRefl!4175 totalInput!1349 totalInput!1349) lt!2717428)))

(declare-fun bs!1970913 () Bool)

(assert (= bs!1970913 d!2388849))

(assert (=> bs!1970913 m!8376158))

(declare-fun m!8376266 () Bool)

(assert (=> bs!1970913 m!8376266))

(assert (=> b!8012700 d!2388849))

(declare-fun b!8012835 () Bool)

(declare-fun e!4720184 () Bool)

(assert (=> b!8012835 (= e!4720184 (isPrefix!6733 (tail!15878 totalInput!1349) (tail!15878 totalInput!1349)))))

(declare-fun b!8012834 () Bool)

(declare-fun res!3168450 () Bool)

(assert (=> b!8012834 (=> (not res!3168450) (not e!4720184))))

(assert (=> b!8012834 (= res!3168450 (= (head!16355 totalInput!1349) (head!16355 totalInput!1349)))))

(declare-fun b!8012833 () Bool)

(declare-fun e!4720185 () Bool)

(assert (=> b!8012833 (= e!4720185 e!4720184)))

(declare-fun res!3168451 () Bool)

(assert (=> b!8012833 (=> (not res!3168451) (not e!4720184))))

(assert (=> b!8012833 (= res!3168451 (not ((_ is Nil!74786) totalInput!1349)))))

(declare-fun d!2388853 () Bool)

(declare-fun e!4720183 () Bool)

(assert (=> d!2388853 e!4720183))

(declare-fun res!3168449 () Bool)

(assert (=> d!2388853 (=> res!3168449 e!4720183)))

(declare-fun lt!2717429 () Bool)

(assert (=> d!2388853 (= res!3168449 (not lt!2717429))))

(assert (=> d!2388853 (= lt!2717429 e!4720185)))

(declare-fun res!3168452 () Bool)

(assert (=> d!2388853 (=> res!3168452 e!4720185)))

(assert (=> d!2388853 (= res!3168452 ((_ is Nil!74786) totalInput!1349))))

(assert (=> d!2388853 (= (isPrefix!6733 totalInput!1349 totalInput!1349) lt!2717429)))

(declare-fun b!8012836 () Bool)

(assert (=> b!8012836 (= e!4720183 (>= (size!43583 totalInput!1349) (size!43583 totalInput!1349)))))

(assert (= (and d!2388853 (not res!3168452)) b!8012833))

(assert (= (and b!8012833 res!3168451) b!8012834))

(assert (= (and b!8012834 res!3168450) b!8012835))

(assert (= (and d!2388853 (not res!3168449)) b!8012836))

(assert (=> b!8012835 m!8376212))

(assert (=> b!8012835 m!8376212))

(assert (=> b!8012835 m!8376212))

(assert (=> b!8012835 m!8376212))

(declare-fun m!8376268 () Bool)

(assert (=> b!8012835 m!8376268))

(assert (=> b!8012834 m!8376218))

(assert (=> b!8012834 m!8376218))

(assert (=> b!8012836 m!8376154))

(assert (=> b!8012836 m!8376154))

(assert (=> b!8012700 d!2388853))

(declare-fun d!2388855 () Bool)

(assert (=> d!2388855 (= totalInput!1349 testedP!353)))

(declare-fun lt!2717436 () Unit!170830)

(declare-fun choose!60369 (List!74910 List!74910 List!74910) Unit!170830)

(assert (=> d!2388855 (= lt!2717436 (choose!60369 totalInput!1349 testedP!353 totalInput!1349))))

(assert (=> d!2388855 (isPrefix!6733 totalInput!1349 totalInput!1349)))

(assert (=> d!2388855 (= (lemmaIsPrefixSameLengthThenSameList!1745 totalInput!1349 testedP!353 totalInput!1349) lt!2717436)))

(declare-fun bs!1970914 () Bool)

(assert (= bs!1970914 d!2388855))

(declare-fun m!8376276 () Bool)

(assert (=> bs!1970914 m!8376276))

(assert (=> bs!1970914 m!8376158))

(assert (=> b!8012700 d!2388855))

(declare-fun d!2388861 () Bool)

(declare-fun lostCauseFct!612 (Regex!21681) Bool)

(assert (=> d!2388861 (= (lostCause!2068 r!15422) (lostCauseFct!612 r!15422))))

(declare-fun bs!1970915 () Bool)

(assert (= bs!1970915 d!2388861))

(declare-fun m!8376278 () Bool)

(assert (=> bs!1970915 m!8376278))

(assert (=> b!8012716 d!2388861))

(declare-fun d!2388863 () Bool)

(assert (=> d!2388863 (= testedSuffix!271 lt!2717387)))

(declare-fun lt!2717442 () Unit!170830)

(declare-fun choose!60370 (List!74910 List!74910 List!74910 List!74910 List!74910) Unit!170830)

(assert (=> d!2388863 (= lt!2717442 (choose!60370 testedP!353 testedSuffix!271 testedP!353 lt!2717387 totalInput!1349))))

(assert (=> d!2388863 (isPrefix!6733 testedP!353 totalInput!1349)))

(assert (=> d!2388863 (= (lemmaSamePrefixThenSameSuffix!3090 testedP!353 testedSuffix!271 testedP!353 lt!2717387 totalInput!1349) lt!2717442)))

(declare-fun bs!1970917 () Bool)

(assert (= bs!1970917 d!2388863))

(declare-fun m!8376288 () Bool)

(assert (=> bs!1970917 m!8376288))

(assert (=> bs!1970917 m!8376162))

(assert (=> b!8012716 d!2388863))

(declare-fun d!2388869 () Bool)

(declare-fun lt!2717448 () List!74910)

(assert (=> d!2388869 (= (++!18507 testedP!353 lt!2717448) totalInput!1349)))

(declare-fun e!4720198 () List!74910)

(assert (=> d!2388869 (= lt!2717448 e!4720198)))

(declare-fun c!1470667 () Bool)

(assert (=> d!2388869 (= c!1470667 ((_ is Cons!74786) testedP!353))))

(assert (=> d!2388869 (>= (size!43583 totalInput!1349) (size!43583 testedP!353))))

(assert (=> d!2388869 (= (getSuffix!3928 totalInput!1349 testedP!353) lt!2717448)))

(declare-fun b!8012861 () Bool)

(assert (=> b!8012861 (= e!4720198 (getSuffix!3928 (tail!15878 totalInput!1349) (t!390653 testedP!353)))))

(declare-fun b!8012862 () Bool)

(assert (=> b!8012862 (= e!4720198 totalInput!1349)))

(assert (= (and d!2388869 c!1470667) b!8012861))

(assert (= (and d!2388869 (not c!1470667)) b!8012862))

(declare-fun m!8376302 () Bool)

(assert (=> d!2388869 m!8376302))

(assert (=> d!2388869 m!8376154))

(assert (=> d!2388869 m!8376126))

(assert (=> b!8012861 m!8376212))

(assert (=> b!8012861 m!8376212))

(declare-fun m!8376304 () Bool)

(assert (=> b!8012861 m!8376304))

(assert (=> b!8012716 d!2388869))

(declare-fun d!2388873 () Bool)

(assert (=> d!2388873 (<= (size!43583 testedP!353) (size!43583 totalInput!1349))))

(declare-fun lt!2717455 () Unit!170830)

(declare-fun choose!60372 (List!74910 List!74910) Unit!170830)

(assert (=> d!2388873 (= lt!2717455 (choose!60372 testedP!353 totalInput!1349))))

(assert (=> d!2388873 (isPrefix!6733 testedP!353 totalInput!1349)))

(assert (=> d!2388873 (= (lemmaIsPrefixThenSmallerEqSize!1216 testedP!353 totalInput!1349) lt!2717455)))

(declare-fun bs!1970918 () Bool)

(assert (= bs!1970918 d!2388873))

(assert (=> bs!1970918 m!8376126))

(assert (=> bs!1970918 m!8376154))

(declare-fun m!8376340 () Bool)

(assert (=> bs!1970918 m!8376340))

(assert (=> bs!1970918 m!8376162))

(assert (=> b!8012701 d!2388873))

(declare-fun b!8012885 () Bool)

(declare-fun e!4720213 () Bool)

(assert (=> b!8012885 (= e!4720213 (isPrefix!6733 (tail!15878 testedP!353) (tail!15878 totalInput!1349)))))

(declare-fun b!8012884 () Bool)

(declare-fun res!3168476 () Bool)

(assert (=> b!8012884 (=> (not res!3168476) (not e!4720213))))

(assert (=> b!8012884 (= res!3168476 (= (head!16355 testedP!353) (head!16355 totalInput!1349)))))

(declare-fun b!8012883 () Bool)

(declare-fun e!4720214 () Bool)

(assert (=> b!8012883 (= e!4720214 e!4720213)))

(declare-fun res!3168477 () Bool)

(assert (=> b!8012883 (=> (not res!3168477) (not e!4720213))))

(assert (=> b!8012883 (= res!3168477 (not ((_ is Nil!74786) totalInput!1349)))))

(declare-fun d!2388887 () Bool)

(declare-fun e!4720212 () Bool)

(assert (=> d!2388887 e!4720212))

(declare-fun res!3168475 () Bool)

(assert (=> d!2388887 (=> res!3168475 e!4720212)))

(declare-fun lt!2717457 () Bool)

(assert (=> d!2388887 (= res!3168475 (not lt!2717457))))

(assert (=> d!2388887 (= lt!2717457 e!4720214)))

(declare-fun res!3168478 () Bool)

(assert (=> d!2388887 (=> res!3168478 e!4720214)))

(assert (=> d!2388887 (= res!3168478 ((_ is Nil!74786) testedP!353))))

(assert (=> d!2388887 (= (isPrefix!6733 testedP!353 totalInput!1349) lt!2717457)))

(declare-fun b!8012886 () Bool)

(assert (=> b!8012886 (= e!4720212 (>= (size!43583 totalInput!1349) (size!43583 testedP!353)))))

(assert (= (and d!2388887 (not res!3168478)) b!8012883))

(assert (= (and b!8012883 res!3168477) b!8012884))

(assert (= (and b!8012884 res!3168476) b!8012885))

(assert (= (and d!2388887 (not res!3168475)) b!8012886))

(declare-fun m!8376350 () Bool)

(assert (=> b!8012885 m!8376350))

(assert (=> b!8012885 m!8376212))

(assert (=> b!8012885 m!8376350))

(assert (=> b!8012885 m!8376212))

(declare-fun m!8376352 () Bool)

(assert (=> b!8012885 m!8376352))

(declare-fun m!8376354 () Bool)

(assert (=> b!8012884 m!8376354))

(assert (=> b!8012884 m!8376218))

(assert (=> b!8012886 m!8376154))

(assert (=> b!8012886 m!8376126))

(assert (=> b!8012706 d!2388887))

(declare-fun b!8012889 () Bool)

(declare-fun e!4720216 () Bool)

(assert (=> b!8012889 (= e!4720216 (isPrefix!6733 (tail!15878 testedP!353) (tail!15878 lt!2717389)))))

(declare-fun b!8012888 () Bool)

(declare-fun res!3168480 () Bool)

(assert (=> b!8012888 (=> (not res!3168480) (not e!4720216))))

(assert (=> b!8012888 (= res!3168480 (= (head!16355 testedP!353) (head!16355 lt!2717389)))))

(declare-fun b!8012887 () Bool)

(declare-fun e!4720217 () Bool)

(assert (=> b!8012887 (= e!4720217 e!4720216)))

(declare-fun res!3168481 () Bool)

(assert (=> b!8012887 (=> (not res!3168481) (not e!4720216))))

(assert (=> b!8012887 (= res!3168481 (not ((_ is Nil!74786) lt!2717389)))))

(declare-fun d!2388891 () Bool)

(declare-fun e!4720215 () Bool)

(assert (=> d!2388891 e!4720215))

(declare-fun res!3168479 () Bool)

(assert (=> d!2388891 (=> res!3168479 e!4720215)))

(declare-fun lt!2717458 () Bool)

(assert (=> d!2388891 (= res!3168479 (not lt!2717458))))

(assert (=> d!2388891 (= lt!2717458 e!4720217)))

(declare-fun res!3168482 () Bool)

(assert (=> d!2388891 (=> res!3168482 e!4720217)))

(assert (=> d!2388891 (= res!3168482 ((_ is Nil!74786) testedP!353))))

(assert (=> d!2388891 (= (isPrefix!6733 testedP!353 lt!2717389) lt!2717458)))

(declare-fun b!8012890 () Bool)

(assert (=> b!8012890 (= e!4720215 (>= (size!43583 lt!2717389) (size!43583 testedP!353)))))

(assert (= (and d!2388891 (not res!3168482)) b!8012887))

(assert (= (and b!8012887 res!3168481) b!8012888))

(assert (= (and b!8012888 res!3168480) b!8012889))

(assert (= (and d!2388891 (not res!3168479)) b!8012890))

(assert (=> b!8012889 m!8376350))

(declare-fun m!8376356 () Bool)

(assert (=> b!8012889 m!8376356))

(assert (=> b!8012889 m!8376350))

(assert (=> b!8012889 m!8376356))

(declare-fun m!8376358 () Bool)

(assert (=> b!8012889 m!8376358))

(assert (=> b!8012888 m!8376354))

(declare-fun m!8376360 () Bool)

(assert (=> b!8012888 m!8376360))

(declare-fun m!8376362 () Bool)

(assert (=> b!8012890 m!8376362))

(assert (=> b!8012890 m!8376126))

(assert (=> b!8012706 d!2388891))

(declare-fun d!2388893 () Bool)

(assert (=> d!2388893 (isPrefix!6733 testedP!353 (++!18507 testedP!353 testedSuffix!271))))

(declare-fun lt!2717465 () Unit!170830)

(declare-fun choose!60373 (List!74910 List!74910) Unit!170830)

(assert (=> d!2388893 (= lt!2717465 (choose!60373 testedP!353 testedSuffix!271))))

(assert (=> d!2388893 (= (lemmaConcatTwoListThenFirstIsPrefix!3964 testedP!353 testedSuffix!271) lt!2717465)))

(declare-fun bs!1970920 () Bool)

(assert (= bs!1970920 d!2388893))

(assert (=> bs!1970920 m!8376134))

(assert (=> bs!1970920 m!8376134))

(declare-fun m!8376378 () Bool)

(assert (=> bs!1970920 m!8376378))

(declare-fun m!8376380 () Bool)

(assert (=> bs!1970920 m!8376380))

(assert (=> b!8012706 d!2388893))

(declare-fun b!8012936 () Bool)

(declare-fun e!4720231 () Bool)

(declare-fun tp!2398258 () Bool)

(declare-fun tp!2398261 () Bool)

(assert (=> b!8012936 (= e!4720231 (and tp!2398258 tp!2398261))))

(declare-fun b!8012933 () Bool)

(assert (=> b!8012933 (= e!4720231 tp_is_empty!53905)))

(declare-fun b!8012934 () Bool)

(declare-fun tp!2398262 () Bool)

(declare-fun tp!2398260 () Bool)

(assert (=> b!8012934 (= e!4720231 (and tp!2398262 tp!2398260))))

(assert (=> b!8012705 (= tp!2398215 e!4720231)))

(declare-fun b!8012935 () Bool)

(declare-fun tp!2398259 () Bool)

(assert (=> b!8012935 (= e!4720231 tp!2398259)))

(assert (= (and b!8012705 ((_ is ElementMatch!21681) (regOne!43875 r!15422))) b!8012933))

(assert (= (and b!8012705 ((_ is Concat!30680) (regOne!43875 r!15422))) b!8012934))

(assert (= (and b!8012705 ((_ is Star!21681) (regOne!43875 r!15422))) b!8012935))

(assert (= (and b!8012705 ((_ is Union!21681) (regOne!43875 r!15422))) b!8012936))

(declare-fun b!8012944 () Bool)

(declare-fun e!4720233 () Bool)

(declare-fun tp!2398268 () Bool)

(declare-fun tp!2398271 () Bool)

(assert (=> b!8012944 (= e!4720233 (and tp!2398268 tp!2398271))))

(declare-fun b!8012941 () Bool)

(assert (=> b!8012941 (= e!4720233 tp_is_empty!53905)))

(declare-fun b!8012942 () Bool)

(declare-fun tp!2398272 () Bool)

(declare-fun tp!2398270 () Bool)

(assert (=> b!8012942 (= e!4720233 (and tp!2398272 tp!2398270))))

(assert (=> b!8012705 (= tp!2398217 e!4720233)))

(declare-fun b!8012943 () Bool)

(declare-fun tp!2398269 () Bool)

(assert (=> b!8012943 (= e!4720233 tp!2398269)))

(assert (= (and b!8012705 ((_ is ElementMatch!21681) (regTwo!43875 r!15422))) b!8012941))

(assert (= (and b!8012705 ((_ is Concat!30680) (regTwo!43875 r!15422))) b!8012942))

(assert (= (and b!8012705 ((_ is Star!21681) (regTwo!43875 r!15422))) b!8012943))

(assert (= (and b!8012705 ((_ is Union!21681) (regTwo!43875 r!15422))) b!8012944))

(declare-fun b!8012954 () Bool)

(declare-fun e!4720238 () Bool)

(declare-fun tp!2398281 () Bool)

(assert (=> b!8012954 (= e!4720238 (and tp_is_empty!53905 tp!2398281))))

(assert (=> b!8012710 (= tp!2398216 e!4720238)))

(assert (= (and b!8012710 ((_ is Cons!74786) (t!390653 totalInput!1349))) b!8012954))

(declare-fun b!8012958 () Bool)

(declare-fun e!4720239 () Bool)

(declare-fun tp!2398282 () Bool)

(declare-fun tp!2398285 () Bool)

(assert (=> b!8012958 (= e!4720239 (and tp!2398282 tp!2398285))))

(declare-fun b!8012955 () Bool)

(assert (=> b!8012955 (= e!4720239 tp_is_empty!53905)))

(declare-fun b!8012956 () Bool)

(declare-fun tp!2398286 () Bool)

(declare-fun tp!2398284 () Bool)

(assert (=> b!8012956 (= e!4720239 (and tp!2398286 tp!2398284))))

(assert (=> b!8012703 (= tp!2398212 e!4720239)))

(declare-fun b!8012957 () Bool)

(declare-fun tp!2398283 () Bool)

(assert (=> b!8012957 (= e!4720239 tp!2398283)))

(assert (= (and b!8012703 ((_ is ElementMatch!21681) (reg!22010 r!15422))) b!8012955))

(assert (= (and b!8012703 ((_ is Concat!30680) (reg!22010 r!15422))) b!8012956))

(assert (= (and b!8012703 ((_ is Star!21681) (reg!22010 r!15422))) b!8012957))

(assert (= (and b!8012703 ((_ is Union!21681) (reg!22010 r!15422))) b!8012958))

(declare-fun b!8012962 () Bool)

(declare-fun e!4720240 () Bool)

(declare-fun tp!2398287 () Bool)

(declare-fun tp!2398290 () Bool)

(assert (=> b!8012962 (= e!4720240 (and tp!2398287 tp!2398290))))

(declare-fun b!8012959 () Bool)

(assert (=> b!8012959 (= e!4720240 tp_is_empty!53905)))

(declare-fun b!8012960 () Bool)

(declare-fun tp!2398291 () Bool)

(declare-fun tp!2398289 () Bool)

(assert (=> b!8012960 (= e!4720240 (and tp!2398291 tp!2398289))))

(assert (=> b!8012707 (= tp!2398211 e!4720240)))

(declare-fun b!8012961 () Bool)

(declare-fun tp!2398288 () Bool)

(assert (=> b!8012961 (= e!4720240 tp!2398288)))

(assert (= (and b!8012707 ((_ is ElementMatch!21681) (regOne!43874 r!15422))) b!8012959))

(assert (= (and b!8012707 ((_ is Concat!30680) (regOne!43874 r!15422))) b!8012960))

(assert (= (and b!8012707 ((_ is Star!21681) (regOne!43874 r!15422))) b!8012961))

(assert (= (and b!8012707 ((_ is Union!21681) (regOne!43874 r!15422))) b!8012962))

(declare-fun b!8012966 () Bool)

(declare-fun e!4720241 () Bool)

(declare-fun tp!2398292 () Bool)

(declare-fun tp!2398295 () Bool)

(assert (=> b!8012966 (= e!4720241 (and tp!2398292 tp!2398295))))

(declare-fun b!8012963 () Bool)

(assert (=> b!8012963 (= e!4720241 tp_is_empty!53905)))

(declare-fun b!8012964 () Bool)

(declare-fun tp!2398296 () Bool)

(declare-fun tp!2398294 () Bool)

(assert (=> b!8012964 (= e!4720241 (and tp!2398296 tp!2398294))))

(assert (=> b!8012707 (= tp!2398218 e!4720241)))

(declare-fun b!8012965 () Bool)

(declare-fun tp!2398293 () Bool)

(assert (=> b!8012965 (= e!4720241 tp!2398293)))

(assert (= (and b!8012707 ((_ is ElementMatch!21681) (regTwo!43874 r!15422))) b!8012963))

(assert (= (and b!8012707 ((_ is Concat!30680) (regTwo!43874 r!15422))) b!8012964))

(assert (= (and b!8012707 ((_ is Star!21681) (regTwo!43874 r!15422))) b!8012965))

(assert (= (and b!8012707 ((_ is Union!21681) (regTwo!43874 r!15422))) b!8012966))

(declare-fun b!8012967 () Bool)

(declare-fun e!4720242 () Bool)

(declare-fun tp!2398297 () Bool)

(assert (=> b!8012967 (= e!4720242 (and tp_is_empty!53905 tp!2398297))))

(assert (=> b!8012713 (= tp!2398214 e!4720242)))

(assert (= (and b!8012713 ((_ is Cons!74786) (t!390653 testedSuffix!271))) b!8012967))

(declare-fun b!8012968 () Bool)

(declare-fun e!4720243 () Bool)

(declare-fun tp!2398298 () Bool)

(assert (=> b!8012968 (= e!4720243 (and tp_is_empty!53905 tp!2398298))))

(assert (=> b!8012702 (= tp!2398213 e!4720243)))

(assert (= (and b!8012702 ((_ is Cons!74786) (t!390653 testedP!353))) b!8012968))

(check-sat (not b!8012962) (not b!8012967) (not b!8012777) (not b!8012964) (not b!8012795) (not b!8012788) (not b!8012956) (not b!8012934) (not d!2388849) (not d!2388811) (not b!8012751) (not bm!744261) (not b!8012750) (not b!8012954) (not b!8012787) (not b!8012886) (not b!8012958) (not b!8012861) (not b!8012775) (not b!8012834) (not b!8012935) (not b!8012885) (not b!8012965) (not d!2388893) (not b!8012968) (not b!8012755) (not b!8012776) (not b!8012835) (not b!8012936) (not b!8012961) (not b!8012836) (not b!8012884) (not d!2388815) (not d!2388861) (not b!8012960) (not d!2388869) (not b!8012825) (not d!2388825) (not b!8012888) (not b!8012944) tp_is_empty!53905 (not b!8012889) (not d!2388817) (not b!8012942) (not b!8012890) (not d!2388855) (not d!2388847) (not d!2388863) (not b!8012831) (not b!8012966) (not b!8012943) (not d!2388873) (not b!8012722) (not b!8012830) (not b!8012754) (not b!8012957) (not bm!744260))
(check-sat)
