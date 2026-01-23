; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!243216 () Bool)

(assert start!243216)

(declare-fun b!2488679 () Bool)

(declare-fun e!1580118 () Bool)

(declare-fun tp!796702 () Bool)

(declare-fun tp!796701 () Bool)

(assert (=> b!2488679 (= e!1580118 (and tp!796702 tp!796701))))

(declare-fun b!2488680 () Bool)

(declare-fun tp_is_empty!12481 () Bool)

(assert (=> b!2488680 (= e!1580118 tp_is_empty!12481)))

(declare-fun e!1580117 () Bool)

(declare-datatypes ((C!14784 0))(
  ( (C!14785 (val!9044 Int)) )
))
(declare-datatypes ((List!29380 0))(
  ( (Nil!29280) (Cons!29280 (h!34700 C!14784) (t!211079 List!29380)) )
))
(declare-fun s!14955 () List!29380)

(declare-datatypes ((Regex!7313 0))(
  ( (ElementMatch!7313 (c!395479 C!14784)) (Concat!12009 (regOne!15138 Regex!7313) (regTwo!15138 Regex!7313)) (EmptyExpr!7313) (Star!7313 (reg!7642 Regex!7313)) (EmptyLang!7313) (Union!7313 (regOne!15139 Regex!7313) (regTwo!15139 Regex!7313)) )
))
(declare-fun r!26136 () Regex!7313)

(declare-fun b!2488681 () Bool)

(declare-fun c!13476 () C!14784)

(declare-fun nullable!2230 (Regex!7313) Bool)

(declare-fun derivative!10 (Regex!7313 List!29380) Regex!7313)

(declare-fun derivativeStep!1882 (Regex!7313 C!14784) Regex!7313)

(declare-fun tail!3950 (List!29380) List!29380)

(assert (=> b!2488681 (= e!1580117 (not (nullable!2230 (derivative!10 (derivativeStep!1882 r!26136 c!13476) (tail!3950 s!14955)))))))

(declare-fun matchR!3364 (Regex!7313 List!29380) Bool)

(assert (=> b!2488681 (matchR!3364 (derivative!10 r!26136 s!14955) Nil!29280)))

(declare-datatypes ((Unit!42979 0))(
  ( (Unit!42980) )
))
(declare-fun lt!893770 () Unit!42979)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!10 (Regex!7313 List!29380) Unit!42979)

(assert (=> b!2488681 (= lt!893770 (lemmaMatchRIsSameAsWholeDerivativeAndNil!10 r!26136 s!14955))))

(declare-fun b!2488682 () Bool)

(declare-fun res!1053483 () Bool)

(assert (=> b!2488682 (=> (not res!1053483) (not e!1580117))))

(declare-fun contains!5289 (List!29380 C!14784) Bool)

(assert (=> b!2488682 (= res!1053483 (contains!5289 s!14955 c!13476))))

(declare-fun b!2488683 () Bool)

(declare-fun res!1053480 () Bool)

(assert (=> b!2488683 (=> (not res!1053480) (not e!1580117))))

(declare-fun firstChars!80 (Regex!7313) List!29380)

(assert (=> b!2488683 (= res!1053480 (not (contains!5289 (firstChars!80 r!26136) c!13476)))))

(declare-fun b!2488684 () Bool)

(declare-fun e!1580116 () Bool)

(declare-fun tp!796703 () Bool)

(assert (=> b!2488684 (= e!1580116 (and tp_is_empty!12481 tp!796703))))

(declare-fun res!1053484 () Bool)

(assert (=> start!243216 (=> (not res!1053484) (not e!1580117))))

(declare-fun validRegex!2939 (Regex!7313) Bool)

(assert (=> start!243216 (= res!1053484 (validRegex!2939 r!26136))))

(assert (=> start!243216 e!1580117))

(assert (=> start!243216 e!1580118))

(assert (=> start!243216 e!1580116))

(assert (=> start!243216 tp_is_empty!12481))

(declare-fun b!2488685 () Bool)

(declare-fun res!1053481 () Bool)

(assert (=> b!2488685 (=> (not res!1053481) (not e!1580117))))

(assert (=> b!2488685 (= res!1053481 (matchR!3364 r!26136 s!14955))))

(declare-fun b!2488686 () Bool)

(declare-fun tp!796705 () Bool)

(assert (=> b!2488686 (= e!1580118 tp!796705)))

(declare-fun b!2488687 () Bool)

(declare-fun res!1053482 () Bool)

(assert (=> b!2488687 (=> (not res!1053482) (not e!1580117))))

(declare-fun head!5669 (List!29380) C!14784)

(assert (=> b!2488687 (= res!1053482 (= (head!5669 s!14955) c!13476))))

(declare-fun b!2488688 () Bool)

(declare-fun tp!796706 () Bool)

(declare-fun tp!796704 () Bool)

(assert (=> b!2488688 (= e!1580118 (and tp!796706 tp!796704))))

(assert (= (and start!243216 res!1053484) b!2488682))

(assert (= (and b!2488682 res!1053483) b!2488687))

(assert (= (and b!2488687 res!1053482) b!2488683))

(assert (= (and b!2488683 res!1053480) b!2488685))

(assert (= (and b!2488685 res!1053481) b!2488681))

(get-info :version)

(assert (= (and start!243216 ((_ is ElementMatch!7313) r!26136)) b!2488680))

(assert (= (and start!243216 ((_ is Concat!12009) r!26136)) b!2488679))

(assert (= (and start!243216 ((_ is Star!7313) r!26136)) b!2488686))

(assert (= (and start!243216 ((_ is Union!7313) r!26136)) b!2488688))

(assert (= (and start!243216 ((_ is Cons!29280) s!14955)) b!2488684))

(declare-fun m!2857043 () Bool)

(assert (=> b!2488687 m!2857043))

(declare-fun m!2857045 () Bool)

(assert (=> start!243216 m!2857045))

(declare-fun m!2857047 () Bool)

(assert (=> b!2488681 m!2857047))

(declare-fun m!2857049 () Bool)

(assert (=> b!2488681 m!2857049))

(declare-fun m!2857051 () Bool)

(assert (=> b!2488681 m!2857051))

(assert (=> b!2488681 m!2857047))

(declare-fun m!2857053 () Bool)

(assert (=> b!2488681 m!2857053))

(declare-fun m!2857055 () Bool)

(assert (=> b!2488681 m!2857055))

(declare-fun m!2857057 () Bool)

(assert (=> b!2488681 m!2857057))

(assert (=> b!2488681 m!2857049))

(assert (=> b!2488681 m!2857055))

(assert (=> b!2488681 m!2857057))

(declare-fun m!2857059 () Bool)

(assert (=> b!2488681 m!2857059))

(declare-fun m!2857061 () Bool)

(assert (=> b!2488682 m!2857061))

(declare-fun m!2857063 () Bool)

(assert (=> b!2488685 m!2857063))

(declare-fun m!2857065 () Bool)

(assert (=> b!2488683 m!2857065))

(assert (=> b!2488683 m!2857065))

(declare-fun m!2857067 () Bool)

(assert (=> b!2488683 m!2857067))

(check-sat (not b!2488679) (not b!2488683) (not start!243216) (not b!2488684) (not b!2488685) (not b!2488687) (not b!2488682) (not b!2488686) tp_is_empty!12481 (not b!2488688) (not b!2488681))
(check-sat)
(get-model)

(declare-fun d!714110 () Bool)

(declare-fun lt!893776 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3990 (List!29380) (InoxSet C!14784))

(assert (=> d!714110 (= lt!893776 (select (content!3990 (firstChars!80 r!26136)) c!13476))))

(declare-fun e!1580130 () Bool)

(assert (=> d!714110 (= lt!893776 e!1580130)))

(declare-fun res!1053496 () Bool)

(assert (=> d!714110 (=> (not res!1053496) (not e!1580130))))

(assert (=> d!714110 (= res!1053496 ((_ is Cons!29280) (firstChars!80 r!26136)))))

(assert (=> d!714110 (= (contains!5289 (firstChars!80 r!26136) c!13476) lt!893776)))

(declare-fun b!2488699 () Bool)

(declare-fun e!1580129 () Bool)

(assert (=> b!2488699 (= e!1580130 e!1580129)))

(declare-fun res!1053495 () Bool)

(assert (=> b!2488699 (=> res!1053495 e!1580129)))

(assert (=> b!2488699 (= res!1053495 (= (h!34700 (firstChars!80 r!26136)) c!13476))))

(declare-fun b!2488700 () Bool)

(assert (=> b!2488700 (= e!1580129 (contains!5289 (t!211079 (firstChars!80 r!26136)) c!13476))))

(assert (= (and d!714110 res!1053496) b!2488699))

(assert (= (and b!2488699 (not res!1053495)) b!2488700))

(assert (=> d!714110 m!2857065))

(declare-fun m!2857075 () Bool)

(assert (=> d!714110 m!2857075))

(declare-fun m!2857077 () Bool)

(assert (=> d!714110 m!2857077))

(declare-fun m!2857079 () Bool)

(assert (=> b!2488700 m!2857079))

(assert (=> b!2488683 d!714110))

(declare-fun call!152706 () List!29380)

(declare-fun call!152707 () List!29380)

(declare-fun call!152708 () List!29380)

(declare-fun call!152710 () List!29380)

(declare-fun bm!152701 () Bool)

(declare-fun c!395509 () Bool)

(declare-fun ++!7154 (List!29380 List!29380) List!29380)

(assert (=> bm!152701 (= call!152710 (++!7154 (ite c!395509 call!152706 call!152707) (ite c!395509 call!152708 call!152706)))))

(declare-fun bm!152702 () Bool)

(assert (=> bm!152702 (= call!152707 call!152708)))

(declare-fun b!2488757 () Bool)

(declare-fun c!395510 () Bool)

(assert (=> b!2488757 (= c!395510 ((_ is Star!7313) r!26136))))

(declare-fun e!1580163 () List!29380)

(declare-fun e!1580159 () List!29380)

(assert (=> b!2488757 (= e!1580163 e!1580159)))

(declare-fun b!2488758 () Bool)

(declare-fun e!1580160 () List!29380)

(assert (=> b!2488758 (= e!1580160 e!1580163)))

(declare-fun c!395512 () Bool)

(assert (=> b!2488758 (= c!395512 ((_ is ElementMatch!7313) r!26136))))

(declare-fun d!714118 () Bool)

(declare-fun c!395511 () Bool)

(assert (=> d!714118 (= c!395511 (or ((_ is EmptyExpr!7313) r!26136) ((_ is EmptyLang!7313) r!26136)))))

(assert (=> d!714118 (= (firstChars!80 r!26136) e!1580160)))

(declare-fun b!2488759 () Bool)

(declare-fun e!1580162 () List!29380)

(assert (=> b!2488759 (= e!1580162 call!152710)))

(declare-fun b!2488760 () Bool)

(assert (=> b!2488760 (= e!1580160 Nil!29280)))

(declare-fun b!2488761 () Bool)

(declare-fun c!395508 () Bool)

(assert (=> b!2488761 (= c!395508 (nullable!2230 (regOne!15138 r!26136)))))

(declare-fun e!1580161 () List!29380)

(assert (=> b!2488761 (= e!1580161 e!1580162)))

(declare-fun b!2488762 () Bool)

(assert (=> b!2488762 (= e!1580159 e!1580161)))

(assert (=> b!2488762 (= c!395509 ((_ is Union!7313) r!26136))))

(declare-fun b!2488763 () Bool)

(assert (=> b!2488763 (= e!1580161 call!152710)))

(declare-fun b!2488764 () Bool)

(declare-fun call!152709 () List!29380)

(assert (=> b!2488764 (= e!1580159 call!152709)))

(declare-fun b!2488765 () Bool)

(assert (=> b!2488765 (= e!1580163 (Cons!29280 (c!395479 r!26136) Nil!29280))))

(declare-fun bm!152703 () Bool)

(assert (=> bm!152703 (= call!152708 call!152709)))

(declare-fun bm!152704 () Bool)

(assert (=> bm!152704 (= call!152706 (firstChars!80 (ite c!395509 (regOne!15139 r!26136) (regTwo!15138 r!26136))))))

(declare-fun bm!152705 () Bool)

(assert (=> bm!152705 (= call!152709 (firstChars!80 (ite c!395510 (reg!7642 r!26136) (ite c!395509 (regTwo!15139 r!26136) (regOne!15138 r!26136)))))))

(declare-fun b!2488766 () Bool)

(assert (=> b!2488766 (= e!1580162 call!152707)))

(assert (= (and d!714118 c!395511) b!2488760))

(assert (= (and d!714118 (not c!395511)) b!2488758))

(assert (= (and b!2488758 c!395512) b!2488765))

(assert (= (and b!2488758 (not c!395512)) b!2488757))

(assert (= (and b!2488757 c!395510) b!2488764))

(assert (= (and b!2488757 (not c!395510)) b!2488762))

(assert (= (and b!2488762 c!395509) b!2488763))

(assert (= (and b!2488762 (not c!395509)) b!2488761))

(assert (= (and b!2488761 c!395508) b!2488759))

(assert (= (and b!2488761 (not c!395508)) b!2488766))

(assert (= (or b!2488759 b!2488766) bm!152702))

(assert (= (or b!2488763 bm!152702) bm!152703))

(assert (= (or b!2488763 b!2488759) bm!152704))

(assert (= (or b!2488763 b!2488759) bm!152701))

(assert (= (or b!2488764 bm!152703) bm!152705))

(declare-fun m!2857097 () Bool)

(assert (=> bm!152701 m!2857097))

(declare-fun m!2857099 () Bool)

(assert (=> b!2488761 m!2857099))

(declare-fun m!2857101 () Bool)

(assert (=> bm!152704 m!2857101))

(declare-fun m!2857103 () Bool)

(assert (=> bm!152705 m!2857103))

(assert (=> b!2488683 d!714118))

(declare-fun d!714128 () Bool)

(assert (=> d!714128 (= (head!5669 s!14955) (h!34700 s!14955))))

(assert (=> b!2488687 d!714128))

(declare-fun d!714130 () Bool)

(declare-fun lt!893788 () Bool)

(assert (=> d!714130 (= lt!893788 (select (content!3990 s!14955) c!13476))))

(declare-fun e!1580167 () Bool)

(assert (=> d!714130 (= lt!893788 e!1580167)))

(declare-fun res!1053498 () Bool)

(assert (=> d!714130 (=> (not res!1053498) (not e!1580167))))

(assert (=> d!714130 (= res!1053498 ((_ is Cons!29280) s!14955))))

(assert (=> d!714130 (= (contains!5289 s!14955 c!13476) lt!893788)))

(declare-fun b!2488771 () Bool)

(declare-fun e!1580166 () Bool)

(assert (=> b!2488771 (= e!1580167 e!1580166)))

(declare-fun res!1053497 () Bool)

(assert (=> b!2488771 (=> res!1053497 e!1580166)))

(assert (=> b!2488771 (= res!1053497 (= (h!34700 s!14955) c!13476))))

(declare-fun b!2488772 () Bool)

(assert (=> b!2488772 (= e!1580166 (contains!5289 (t!211079 s!14955) c!13476))))

(assert (= (and d!714130 res!1053498) b!2488771))

(assert (= (and b!2488771 (not res!1053497)) b!2488772))

(declare-fun m!2857105 () Bool)

(assert (=> d!714130 m!2857105))

(declare-fun m!2857107 () Bool)

(assert (=> d!714130 m!2857107))

(declare-fun m!2857109 () Bool)

(assert (=> b!2488772 m!2857109))

(assert (=> b!2488682 d!714130))

(declare-fun b!2488863 () Bool)

(declare-fun e!1580223 () Bool)

(declare-fun call!152729 () Bool)

(assert (=> b!2488863 (= e!1580223 call!152729)))

(declare-fun b!2488864 () Bool)

(declare-fun e!1580228 () Bool)

(declare-fun e!1580229 () Bool)

(assert (=> b!2488864 (= e!1580228 e!1580229)))

(declare-fun res!1053553 () Bool)

(assert (=> b!2488864 (=> (not res!1053553) (not e!1580229))))

(assert (=> b!2488864 (= res!1053553 call!152729)))

(declare-fun b!2488865 () Bool)

(declare-fun e!1580226 () Bool)

(declare-fun e!1580225 () Bool)

(assert (=> b!2488865 (= e!1580226 e!1580225)))

(declare-fun c!395534 () Bool)

(assert (=> b!2488865 (= c!395534 ((_ is Star!7313) r!26136))))

(declare-fun b!2488866 () Bool)

(declare-fun e!1580224 () Bool)

(declare-fun call!152727 () Bool)

(assert (=> b!2488866 (= e!1580224 call!152727)))

(declare-fun bm!152722 () Bool)

(assert (=> bm!152722 (= call!152729 call!152727)))

(declare-fun b!2488867 () Bool)

(declare-fun res!1053551 () Bool)

(assert (=> b!2488867 (=> res!1053551 e!1580228)))

(assert (=> b!2488867 (= res!1053551 (not ((_ is Concat!12009) r!26136)))))

(declare-fun e!1580227 () Bool)

(assert (=> b!2488867 (= e!1580227 e!1580228)))

(declare-fun bm!152723 () Bool)

(declare-fun call!152728 () Bool)

(declare-fun c!395535 () Bool)

(assert (=> bm!152723 (= call!152728 (validRegex!2939 (ite c!395535 (regOne!15139 r!26136) (regTwo!15138 r!26136))))))

(declare-fun b!2488868 () Bool)

(declare-fun res!1053552 () Bool)

(assert (=> b!2488868 (=> (not res!1053552) (not e!1580223))))

(assert (=> b!2488868 (= res!1053552 call!152728)))

(assert (=> b!2488868 (= e!1580227 e!1580223)))

(declare-fun b!2488869 () Bool)

(assert (=> b!2488869 (= e!1580225 e!1580227)))

(assert (=> b!2488869 (= c!395535 ((_ is Union!7313) r!26136))))

(declare-fun d!714132 () Bool)

(declare-fun res!1053554 () Bool)

(assert (=> d!714132 (=> res!1053554 e!1580226)))

(assert (=> d!714132 (= res!1053554 ((_ is ElementMatch!7313) r!26136))))

(assert (=> d!714132 (= (validRegex!2939 r!26136) e!1580226)))

(declare-fun bm!152724 () Bool)

(assert (=> bm!152724 (= call!152727 (validRegex!2939 (ite c!395534 (reg!7642 r!26136) (ite c!395535 (regTwo!15139 r!26136) (regOne!15138 r!26136)))))))

(declare-fun b!2488870 () Bool)

(assert (=> b!2488870 (= e!1580229 call!152728)))

(declare-fun b!2488871 () Bool)

(assert (=> b!2488871 (= e!1580225 e!1580224)))

(declare-fun res!1053555 () Bool)

(assert (=> b!2488871 (= res!1053555 (not (nullable!2230 (reg!7642 r!26136))))))

(assert (=> b!2488871 (=> (not res!1053555) (not e!1580224))))

(assert (= (and d!714132 (not res!1053554)) b!2488865))

(assert (= (and b!2488865 c!395534) b!2488871))

(assert (= (and b!2488865 (not c!395534)) b!2488869))

(assert (= (and b!2488871 res!1053555) b!2488866))

(assert (= (and b!2488869 c!395535) b!2488868))

(assert (= (and b!2488869 (not c!395535)) b!2488867))

(assert (= (and b!2488868 res!1053552) b!2488863))

(assert (= (and b!2488867 (not res!1053551)) b!2488864))

(assert (= (and b!2488864 res!1053553) b!2488870))

(assert (= (or b!2488863 b!2488864) bm!152722))

(assert (= (or b!2488868 b!2488870) bm!152723))

(assert (= (or b!2488866 bm!152722) bm!152724))

(declare-fun m!2857153 () Bool)

(assert (=> bm!152723 m!2857153))

(declare-fun m!2857159 () Bool)

(assert (=> bm!152724 m!2857159))

(declare-fun m!2857163 () Bool)

(assert (=> b!2488871 m!2857163))

(assert (=> start!243216 d!714132))

(declare-fun d!714146 () Bool)

(declare-fun lt!893795 () Regex!7313)

(assert (=> d!714146 (validRegex!2939 lt!893795)))

(declare-fun e!1580251 () Regex!7313)

(assert (=> d!714146 (= lt!893795 e!1580251)))

(declare-fun c!395550 () Bool)

(assert (=> d!714146 (= c!395550 ((_ is Cons!29280) s!14955))))

(assert (=> d!714146 (validRegex!2939 r!26136)))

(assert (=> d!714146 (= (derivative!10 r!26136 s!14955) lt!893795)))

(declare-fun b!2488907 () Bool)

(assert (=> b!2488907 (= e!1580251 (derivative!10 (derivativeStep!1882 r!26136 (h!34700 s!14955)) (t!211079 s!14955)))))

(declare-fun b!2488908 () Bool)

(assert (=> b!2488908 (= e!1580251 r!26136)))

(assert (= (and d!714146 c!395550) b!2488907))

(assert (= (and d!714146 (not c!395550)) b!2488908))

(declare-fun m!2857165 () Bool)

(assert (=> d!714146 m!2857165))

(assert (=> d!714146 m!2857045))

(declare-fun m!2857167 () Bool)

(assert (=> b!2488907 m!2857167))

(assert (=> b!2488907 m!2857167))

(declare-fun m!2857169 () Bool)

(assert (=> b!2488907 m!2857169))

(assert (=> b!2488681 d!714146))

(declare-fun call!152758 () Regex!7313)

(declare-fun call!152756 () Regex!7313)

(declare-fun e!1580277 () Regex!7313)

(declare-fun b!2488974 () Bool)

(assert (=> b!2488974 (= e!1580277 (Union!7313 (Concat!12009 call!152756 (regTwo!15138 r!26136)) call!152758))))

(declare-fun b!2488975 () Bool)

(declare-fun e!1580278 () Regex!7313)

(declare-fun e!1580280 () Regex!7313)

(assert (=> b!2488975 (= e!1580278 e!1580280)))

(declare-fun c!395569 () Bool)

(assert (=> b!2488975 (= c!395569 ((_ is ElementMatch!7313) r!26136))))

(declare-fun bm!152751 () Bool)

(declare-fun call!152757 () Regex!7313)

(declare-fun call!152759 () Regex!7313)

(assert (=> bm!152751 (= call!152757 call!152759)))

(declare-fun b!2488976 () Bool)

(declare-fun c!395567 () Bool)

(assert (=> b!2488976 (= c!395567 (nullable!2230 (regOne!15138 r!26136)))))

(declare-fun e!1580279 () Regex!7313)

(assert (=> b!2488976 (= e!1580279 e!1580277)))

(declare-fun b!2488977 () Bool)

(assert (=> b!2488977 (= e!1580278 EmptyLang!7313)))

(declare-fun c!395566 () Bool)

(declare-fun bm!152752 () Bool)

(declare-fun c!395568 () Bool)

(assert (=> bm!152752 (= call!152759 (derivativeStep!1882 (ite c!395566 (regTwo!15139 r!26136) (ite c!395568 (reg!7642 r!26136) (ite c!395567 (regTwo!15138 r!26136) (regOne!15138 r!26136)))) c!13476))))

(declare-fun b!2488978 () Bool)

(declare-fun e!1580281 () Regex!7313)

(assert (=> b!2488978 (= e!1580281 e!1580279)))

(assert (=> b!2488978 (= c!395568 ((_ is Star!7313) r!26136))))

(declare-fun b!2488979 () Bool)

(assert (=> b!2488979 (= c!395566 ((_ is Union!7313) r!26136))))

(assert (=> b!2488979 (= e!1580280 e!1580281)))

(declare-fun b!2488980 () Bool)

(assert (=> b!2488980 (= e!1580277 (Union!7313 (Concat!12009 call!152758 (regTwo!15138 r!26136)) EmptyLang!7313))))

(declare-fun b!2488981 () Bool)

(assert (=> b!2488981 (= e!1580281 (Union!7313 call!152756 call!152759))))

(declare-fun d!714148 () Bool)

(declare-fun lt!893798 () Regex!7313)

(assert (=> d!714148 (validRegex!2939 lt!893798)))

(assert (=> d!714148 (= lt!893798 e!1580278)))

(declare-fun c!395570 () Bool)

(assert (=> d!714148 (= c!395570 (or ((_ is EmptyExpr!7313) r!26136) ((_ is EmptyLang!7313) r!26136)))))

(assert (=> d!714148 (validRegex!2939 r!26136)))

(assert (=> d!714148 (= (derivativeStep!1882 r!26136 c!13476) lt!893798)))

(declare-fun bm!152753 () Bool)

(assert (=> bm!152753 (= call!152756 (derivativeStep!1882 (ite c!395566 (regOne!15139 r!26136) (regOne!15138 r!26136)) c!13476))))

(declare-fun b!2488982 () Bool)

(assert (=> b!2488982 (= e!1580280 (ite (= c!13476 (c!395479 r!26136)) EmptyExpr!7313 EmptyLang!7313))))

(declare-fun bm!152754 () Bool)

(assert (=> bm!152754 (= call!152758 call!152757)))

(declare-fun b!2488983 () Bool)

(assert (=> b!2488983 (= e!1580279 (Concat!12009 call!152757 r!26136))))

(assert (= (and d!714148 c!395570) b!2488977))

(assert (= (and d!714148 (not c!395570)) b!2488975))

(assert (= (and b!2488975 c!395569) b!2488982))

(assert (= (and b!2488975 (not c!395569)) b!2488979))

(assert (= (and b!2488979 c!395566) b!2488981))

(assert (= (and b!2488979 (not c!395566)) b!2488978))

(assert (= (and b!2488978 c!395568) b!2488983))

(assert (= (and b!2488978 (not c!395568)) b!2488976))

(assert (= (and b!2488976 c!395567) b!2488974))

(assert (= (and b!2488976 (not c!395567)) b!2488980))

(assert (= (or b!2488974 b!2488980) bm!152754))

(assert (= (or b!2488983 bm!152754) bm!152751))

(assert (= (or b!2488981 b!2488974) bm!152753))

(assert (= (or b!2488981 bm!152751) bm!152752))

(assert (=> b!2488976 m!2857099))

(declare-fun m!2857177 () Bool)

(assert (=> bm!152752 m!2857177))

(declare-fun m!2857179 () Bool)

(assert (=> d!714148 m!2857179))

(assert (=> d!714148 m!2857045))

(declare-fun m!2857181 () Bool)

(assert (=> bm!152753 m!2857181))

(assert (=> b!2488681 d!714148))

(declare-fun d!714150 () Bool)

(assert (=> d!714150 (= (matchR!3364 r!26136 s!14955) (matchR!3364 (derivative!10 r!26136 s!14955) Nil!29280))))

(declare-fun lt!893801 () Unit!42979)

(declare-fun choose!14731 (Regex!7313 List!29380) Unit!42979)

(assert (=> d!714150 (= lt!893801 (choose!14731 r!26136 s!14955))))

(assert (=> d!714150 (validRegex!2939 r!26136)))

(assert (=> d!714150 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!10 r!26136 s!14955) lt!893801)))

(declare-fun bs!468326 () Bool)

(assert (= bs!468326 d!714150))

(assert (=> bs!468326 m!2857047))

(assert (=> bs!468326 m!2857053))

(assert (=> bs!468326 m!2857047))

(assert (=> bs!468326 m!2857045))

(assert (=> bs!468326 m!2857063))

(declare-fun m!2857183 () Bool)

(assert (=> bs!468326 m!2857183))

(assert (=> b!2488681 d!714150))

(declare-fun d!714152 () Bool)

(assert (=> d!714152 (= (tail!3950 s!14955) (t!211079 s!14955))))

(assert (=> b!2488681 d!714152))

(declare-fun b!2489012 () Bool)

(declare-fun e!1580296 () Bool)

(assert (=> b!2489012 (= e!1580296 (matchR!3364 (derivativeStep!1882 (derivative!10 r!26136 s!14955) (head!5669 Nil!29280)) (tail!3950 Nil!29280)))))

(declare-fun b!2489013 () Bool)

(declare-fun e!1580297 () Bool)

(declare-fun e!1580299 () Bool)

(assert (=> b!2489013 (= e!1580297 e!1580299)))

(declare-fun res!1053583 () Bool)

(assert (=> b!2489013 (=> (not res!1053583) (not e!1580299))))

(declare-fun lt!893804 () Bool)

(assert (=> b!2489013 (= res!1053583 (not lt!893804))))

(declare-fun b!2489014 () Bool)

(declare-fun res!1053582 () Bool)

(declare-fun e!1580300 () Bool)

(assert (=> b!2489014 (=> res!1053582 e!1580300)))

(declare-fun isEmpty!16785 (List!29380) Bool)

(assert (=> b!2489014 (= res!1053582 (not (isEmpty!16785 (tail!3950 Nil!29280))))))

(declare-fun b!2489015 () Bool)

(declare-fun res!1053580 () Bool)

(assert (=> b!2489015 (=> res!1053580 e!1580297)))

(declare-fun e!1580301 () Bool)

(assert (=> b!2489015 (= res!1053580 e!1580301)))

(declare-fun res!1053579 () Bool)

(assert (=> b!2489015 (=> (not res!1053579) (not e!1580301))))

(assert (=> b!2489015 (= res!1053579 lt!893804)))

(declare-fun d!714154 () Bool)

(declare-fun e!1580302 () Bool)

(assert (=> d!714154 e!1580302))

(declare-fun c!395577 () Bool)

(assert (=> d!714154 (= c!395577 ((_ is EmptyExpr!7313) (derivative!10 r!26136 s!14955)))))

(assert (=> d!714154 (= lt!893804 e!1580296)))

(declare-fun c!395578 () Bool)

(assert (=> d!714154 (= c!395578 (isEmpty!16785 Nil!29280))))

(assert (=> d!714154 (validRegex!2939 (derivative!10 r!26136 s!14955))))

(assert (=> d!714154 (= (matchR!3364 (derivative!10 r!26136 s!14955) Nil!29280) lt!893804)))

(declare-fun b!2489016 () Bool)

(assert (=> b!2489016 (= e!1580301 (= (head!5669 Nil!29280) (c!395479 (derivative!10 r!26136 s!14955))))))

(declare-fun b!2489017 () Bool)

(declare-fun e!1580298 () Bool)

(assert (=> b!2489017 (= e!1580298 (not lt!893804))))

(declare-fun b!2489018 () Bool)

(assert (=> b!2489018 (= e!1580300 (not (= (head!5669 Nil!29280) (c!395479 (derivative!10 r!26136 s!14955)))))))

(declare-fun b!2489019 () Bool)

(assert (=> b!2489019 (= e!1580302 e!1580298)))

(declare-fun c!395579 () Bool)

(assert (=> b!2489019 (= c!395579 ((_ is EmptyLang!7313) (derivative!10 r!26136 s!14955)))))

(declare-fun b!2489020 () Bool)

(assert (=> b!2489020 (= e!1580296 (nullable!2230 (derivative!10 r!26136 s!14955)))))

(declare-fun b!2489021 () Bool)

(assert (=> b!2489021 (= e!1580299 e!1580300)))

(declare-fun res!1053581 () Bool)

(assert (=> b!2489021 (=> res!1053581 e!1580300)))

(declare-fun call!152762 () Bool)

(assert (=> b!2489021 (= res!1053581 call!152762)))

(declare-fun b!2489022 () Bool)

(declare-fun res!1053586 () Bool)

(assert (=> b!2489022 (=> (not res!1053586) (not e!1580301))))

(assert (=> b!2489022 (= res!1053586 (isEmpty!16785 (tail!3950 Nil!29280)))))

(declare-fun b!2489023 () Bool)

(assert (=> b!2489023 (= e!1580302 (= lt!893804 call!152762))))

(declare-fun b!2489024 () Bool)

(declare-fun res!1053585 () Bool)

(assert (=> b!2489024 (=> res!1053585 e!1580297)))

(assert (=> b!2489024 (= res!1053585 (not ((_ is ElementMatch!7313) (derivative!10 r!26136 s!14955))))))

(assert (=> b!2489024 (= e!1580298 e!1580297)))

(declare-fun b!2489025 () Bool)

(declare-fun res!1053584 () Bool)

(assert (=> b!2489025 (=> (not res!1053584) (not e!1580301))))

(assert (=> b!2489025 (= res!1053584 (not call!152762))))

(declare-fun bm!152757 () Bool)

(assert (=> bm!152757 (= call!152762 (isEmpty!16785 Nil!29280))))

(assert (= (and d!714154 c!395578) b!2489020))

(assert (= (and d!714154 (not c!395578)) b!2489012))

(assert (= (and d!714154 c!395577) b!2489023))

(assert (= (and d!714154 (not c!395577)) b!2489019))

(assert (= (and b!2489019 c!395579) b!2489017))

(assert (= (and b!2489019 (not c!395579)) b!2489024))

(assert (= (and b!2489024 (not res!1053585)) b!2489015))

(assert (= (and b!2489015 res!1053579) b!2489025))

(assert (= (and b!2489025 res!1053584) b!2489022))

(assert (= (and b!2489022 res!1053586) b!2489016))

(assert (= (and b!2489015 (not res!1053580)) b!2489013))

(assert (= (and b!2489013 res!1053583) b!2489021))

(assert (= (and b!2489021 (not res!1053581)) b!2489014))

(assert (= (and b!2489014 (not res!1053582)) b!2489018))

(assert (= (or b!2489023 b!2489025 b!2489021) bm!152757))

(declare-fun m!2857185 () Bool)

(assert (=> b!2489022 m!2857185))

(assert (=> b!2489022 m!2857185))

(declare-fun m!2857187 () Bool)

(assert (=> b!2489022 m!2857187))

(assert (=> b!2489014 m!2857185))

(assert (=> b!2489014 m!2857185))

(assert (=> b!2489014 m!2857187))

(declare-fun m!2857189 () Bool)

(assert (=> bm!152757 m!2857189))

(assert (=> d!714154 m!2857189))

(assert (=> d!714154 m!2857047))

(declare-fun m!2857191 () Bool)

(assert (=> d!714154 m!2857191))

(assert (=> b!2489020 m!2857047))

(declare-fun m!2857193 () Bool)

(assert (=> b!2489020 m!2857193))

(declare-fun m!2857195 () Bool)

(assert (=> b!2489018 m!2857195))

(assert (=> b!2489012 m!2857195))

(assert (=> b!2489012 m!2857047))

(assert (=> b!2489012 m!2857195))

(declare-fun m!2857197 () Bool)

(assert (=> b!2489012 m!2857197))

(assert (=> b!2489012 m!2857185))

(assert (=> b!2489012 m!2857197))

(assert (=> b!2489012 m!2857185))

(declare-fun m!2857199 () Bool)

(assert (=> b!2489012 m!2857199))

(assert (=> b!2489016 m!2857195))

(assert (=> b!2488681 d!714154))

(declare-fun d!714156 () Bool)

(declare-fun lt!893805 () Regex!7313)

(assert (=> d!714156 (validRegex!2939 lt!893805)))

(declare-fun e!1580303 () Regex!7313)

(assert (=> d!714156 (= lt!893805 e!1580303)))

(declare-fun c!395580 () Bool)

(assert (=> d!714156 (= c!395580 ((_ is Cons!29280) (tail!3950 s!14955)))))

(assert (=> d!714156 (validRegex!2939 (derivativeStep!1882 r!26136 c!13476))))

(assert (=> d!714156 (= (derivative!10 (derivativeStep!1882 r!26136 c!13476) (tail!3950 s!14955)) lt!893805)))

(declare-fun b!2489026 () Bool)

(assert (=> b!2489026 (= e!1580303 (derivative!10 (derivativeStep!1882 (derivativeStep!1882 r!26136 c!13476) (h!34700 (tail!3950 s!14955))) (t!211079 (tail!3950 s!14955))))))

(declare-fun b!2489027 () Bool)

(assert (=> b!2489027 (= e!1580303 (derivativeStep!1882 r!26136 c!13476))))

(assert (= (and d!714156 c!395580) b!2489026))

(assert (= (and d!714156 (not c!395580)) b!2489027))

(declare-fun m!2857201 () Bool)

(assert (=> d!714156 m!2857201))

(assert (=> d!714156 m!2857055))

(declare-fun m!2857203 () Bool)

(assert (=> d!714156 m!2857203))

(assert (=> b!2489026 m!2857055))

(declare-fun m!2857205 () Bool)

(assert (=> b!2489026 m!2857205))

(assert (=> b!2489026 m!2857205))

(declare-fun m!2857207 () Bool)

(assert (=> b!2489026 m!2857207))

(assert (=> b!2488681 d!714156))

(declare-fun d!714158 () Bool)

(declare-fun nullableFct!543 (Regex!7313) Bool)

(assert (=> d!714158 (= (nullable!2230 (derivative!10 (derivativeStep!1882 r!26136 c!13476) (tail!3950 s!14955))) (nullableFct!543 (derivative!10 (derivativeStep!1882 r!26136 c!13476) (tail!3950 s!14955))))))

(declare-fun bs!468327 () Bool)

(assert (= bs!468327 d!714158))

(assert (=> bs!468327 m!2857049))

(declare-fun m!2857209 () Bool)

(assert (=> bs!468327 m!2857209))

(assert (=> b!2488681 d!714158))

(declare-fun b!2489028 () Bool)

(declare-fun e!1580304 () Bool)

(assert (=> b!2489028 (= e!1580304 (matchR!3364 (derivativeStep!1882 r!26136 (head!5669 s!14955)) (tail!3950 s!14955)))))

(declare-fun b!2489029 () Bool)

(declare-fun e!1580305 () Bool)

(declare-fun e!1580307 () Bool)

(assert (=> b!2489029 (= e!1580305 e!1580307)))

(declare-fun res!1053591 () Bool)

(assert (=> b!2489029 (=> (not res!1053591) (not e!1580307))))

(declare-fun lt!893806 () Bool)

(assert (=> b!2489029 (= res!1053591 (not lt!893806))))

(declare-fun b!2489030 () Bool)

(declare-fun res!1053590 () Bool)

(declare-fun e!1580308 () Bool)

(assert (=> b!2489030 (=> res!1053590 e!1580308)))

(assert (=> b!2489030 (= res!1053590 (not (isEmpty!16785 (tail!3950 s!14955))))))

(declare-fun b!2489031 () Bool)

(declare-fun res!1053588 () Bool)

(assert (=> b!2489031 (=> res!1053588 e!1580305)))

(declare-fun e!1580309 () Bool)

(assert (=> b!2489031 (= res!1053588 e!1580309)))

(declare-fun res!1053587 () Bool)

(assert (=> b!2489031 (=> (not res!1053587) (not e!1580309))))

(assert (=> b!2489031 (= res!1053587 lt!893806)))

(declare-fun d!714160 () Bool)

(declare-fun e!1580310 () Bool)

(assert (=> d!714160 e!1580310))

(declare-fun c!395581 () Bool)

(assert (=> d!714160 (= c!395581 ((_ is EmptyExpr!7313) r!26136))))

(assert (=> d!714160 (= lt!893806 e!1580304)))

(declare-fun c!395582 () Bool)

(assert (=> d!714160 (= c!395582 (isEmpty!16785 s!14955))))

(assert (=> d!714160 (validRegex!2939 r!26136)))

(assert (=> d!714160 (= (matchR!3364 r!26136 s!14955) lt!893806)))

(declare-fun b!2489032 () Bool)

(assert (=> b!2489032 (= e!1580309 (= (head!5669 s!14955) (c!395479 r!26136)))))

(declare-fun b!2489033 () Bool)

(declare-fun e!1580306 () Bool)

(assert (=> b!2489033 (= e!1580306 (not lt!893806))))

(declare-fun b!2489034 () Bool)

(assert (=> b!2489034 (= e!1580308 (not (= (head!5669 s!14955) (c!395479 r!26136))))))

(declare-fun b!2489035 () Bool)

(assert (=> b!2489035 (= e!1580310 e!1580306)))

(declare-fun c!395583 () Bool)

(assert (=> b!2489035 (= c!395583 ((_ is EmptyLang!7313) r!26136))))

(declare-fun b!2489036 () Bool)

(assert (=> b!2489036 (= e!1580304 (nullable!2230 r!26136))))

(declare-fun b!2489037 () Bool)

(assert (=> b!2489037 (= e!1580307 e!1580308)))

(declare-fun res!1053589 () Bool)

(assert (=> b!2489037 (=> res!1053589 e!1580308)))

(declare-fun call!152763 () Bool)

(assert (=> b!2489037 (= res!1053589 call!152763)))

(declare-fun b!2489038 () Bool)

(declare-fun res!1053594 () Bool)

(assert (=> b!2489038 (=> (not res!1053594) (not e!1580309))))

(assert (=> b!2489038 (= res!1053594 (isEmpty!16785 (tail!3950 s!14955)))))

(declare-fun b!2489039 () Bool)

(assert (=> b!2489039 (= e!1580310 (= lt!893806 call!152763))))

(declare-fun b!2489040 () Bool)

(declare-fun res!1053593 () Bool)

(assert (=> b!2489040 (=> res!1053593 e!1580305)))

(assert (=> b!2489040 (= res!1053593 (not ((_ is ElementMatch!7313) r!26136)))))

(assert (=> b!2489040 (= e!1580306 e!1580305)))

(declare-fun b!2489041 () Bool)

(declare-fun res!1053592 () Bool)

(assert (=> b!2489041 (=> (not res!1053592) (not e!1580309))))

(assert (=> b!2489041 (= res!1053592 (not call!152763))))

(declare-fun bm!152758 () Bool)

(assert (=> bm!152758 (= call!152763 (isEmpty!16785 s!14955))))

(assert (= (and d!714160 c!395582) b!2489036))

(assert (= (and d!714160 (not c!395582)) b!2489028))

(assert (= (and d!714160 c!395581) b!2489039))

(assert (= (and d!714160 (not c!395581)) b!2489035))

(assert (= (and b!2489035 c!395583) b!2489033))

(assert (= (and b!2489035 (not c!395583)) b!2489040))

(assert (= (and b!2489040 (not res!1053593)) b!2489031))

(assert (= (and b!2489031 res!1053587) b!2489041))

(assert (= (and b!2489041 res!1053592) b!2489038))

(assert (= (and b!2489038 res!1053594) b!2489032))

(assert (= (and b!2489031 (not res!1053588)) b!2489029))

(assert (= (and b!2489029 res!1053591) b!2489037))

(assert (= (and b!2489037 (not res!1053589)) b!2489030))

(assert (= (and b!2489030 (not res!1053590)) b!2489034))

(assert (= (or b!2489039 b!2489041 b!2489037) bm!152758))

(assert (=> b!2489038 m!2857057))

(assert (=> b!2489038 m!2857057))

(declare-fun m!2857211 () Bool)

(assert (=> b!2489038 m!2857211))

(assert (=> b!2489030 m!2857057))

(assert (=> b!2489030 m!2857057))

(assert (=> b!2489030 m!2857211))

(declare-fun m!2857213 () Bool)

(assert (=> bm!152758 m!2857213))

(assert (=> d!714160 m!2857213))

(assert (=> d!714160 m!2857045))

(declare-fun m!2857215 () Bool)

(assert (=> b!2489036 m!2857215))

(assert (=> b!2489034 m!2857043))

(assert (=> b!2489028 m!2857043))

(assert (=> b!2489028 m!2857043))

(declare-fun m!2857217 () Bool)

(assert (=> b!2489028 m!2857217))

(assert (=> b!2489028 m!2857057))

(assert (=> b!2489028 m!2857217))

(assert (=> b!2489028 m!2857057))

(declare-fun m!2857219 () Bool)

(assert (=> b!2489028 m!2857219))

(assert (=> b!2489032 m!2857043))

(assert (=> b!2488685 d!714160))

(declare-fun b!2489046 () Bool)

(declare-fun e!1580313 () Bool)

(declare-fun tp!796747 () Bool)

(assert (=> b!2489046 (= e!1580313 (and tp_is_empty!12481 tp!796747))))

(assert (=> b!2488684 (= tp!796703 e!1580313)))

(assert (= (and b!2488684 ((_ is Cons!29280) (t!211079 s!14955))) b!2489046))

(declare-fun b!2489060 () Bool)

(declare-fun e!1580316 () Bool)

(declare-fun tp!796762 () Bool)

(declare-fun tp!796761 () Bool)

(assert (=> b!2489060 (= e!1580316 (and tp!796762 tp!796761))))

(declare-fun b!2489057 () Bool)

(assert (=> b!2489057 (= e!1580316 tp_is_empty!12481)))

(declare-fun b!2489059 () Bool)

(declare-fun tp!796759 () Bool)

(assert (=> b!2489059 (= e!1580316 tp!796759)))

(declare-fun b!2489058 () Bool)

(declare-fun tp!796758 () Bool)

(declare-fun tp!796760 () Bool)

(assert (=> b!2489058 (= e!1580316 (and tp!796758 tp!796760))))

(assert (=> b!2488688 (= tp!796706 e!1580316)))

(assert (= (and b!2488688 ((_ is ElementMatch!7313) (regOne!15139 r!26136))) b!2489057))

(assert (= (and b!2488688 ((_ is Concat!12009) (regOne!15139 r!26136))) b!2489058))

(assert (= (and b!2488688 ((_ is Star!7313) (regOne!15139 r!26136))) b!2489059))

(assert (= (and b!2488688 ((_ is Union!7313) (regOne!15139 r!26136))) b!2489060))

(declare-fun b!2489064 () Bool)

(declare-fun e!1580317 () Bool)

(declare-fun tp!796767 () Bool)

(declare-fun tp!796766 () Bool)

(assert (=> b!2489064 (= e!1580317 (and tp!796767 tp!796766))))

(declare-fun b!2489061 () Bool)

(assert (=> b!2489061 (= e!1580317 tp_is_empty!12481)))

(declare-fun b!2489063 () Bool)

(declare-fun tp!796764 () Bool)

(assert (=> b!2489063 (= e!1580317 tp!796764)))

(declare-fun b!2489062 () Bool)

(declare-fun tp!796763 () Bool)

(declare-fun tp!796765 () Bool)

(assert (=> b!2489062 (= e!1580317 (and tp!796763 tp!796765))))

(assert (=> b!2488688 (= tp!796704 e!1580317)))

(assert (= (and b!2488688 ((_ is ElementMatch!7313) (regTwo!15139 r!26136))) b!2489061))

(assert (= (and b!2488688 ((_ is Concat!12009) (regTwo!15139 r!26136))) b!2489062))

(assert (= (and b!2488688 ((_ is Star!7313) (regTwo!15139 r!26136))) b!2489063))

(assert (= (and b!2488688 ((_ is Union!7313) (regTwo!15139 r!26136))) b!2489064))

(declare-fun b!2489068 () Bool)

(declare-fun e!1580318 () Bool)

(declare-fun tp!796772 () Bool)

(declare-fun tp!796771 () Bool)

(assert (=> b!2489068 (= e!1580318 (and tp!796772 tp!796771))))

(declare-fun b!2489065 () Bool)

(assert (=> b!2489065 (= e!1580318 tp_is_empty!12481)))

(declare-fun b!2489067 () Bool)

(declare-fun tp!796769 () Bool)

(assert (=> b!2489067 (= e!1580318 tp!796769)))

(declare-fun b!2489066 () Bool)

(declare-fun tp!796768 () Bool)

(declare-fun tp!796770 () Bool)

(assert (=> b!2489066 (= e!1580318 (and tp!796768 tp!796770))))

(assert (=> b!2488686 (= tp!796705 e!1580318)))

(assert (= (and b!2488686 ((_ is ElementMatch!7313) (reg!7642 r!26136))) b!2489065))

(assert (= (and b!2488686 ((_ is Concat!12009) (reg!7642 r!26136))) b!2489066))

(assert (= (and b!2488686 ((_ is Star!7313) (reg!7642 r!26136))) b!2489067))

(assert (= (and b!2488686 ((_ is Union!7313) (reg!7642 r!26136))) b!2489068))

(declare-fun b!2489072 () Bool)

(declare-fun e!1580319 () Bool)

(declare-fun tp!796777 () Bool)

(declare-fun tp!796776 () Bool)

(assert (=> b!2489072 (= e!1580319 (and tp!796777 tp!796776))))

(declare-fun b!2489069 () Bool)

(assert (=> b!2489069 (= e!1580319 tp_is_empty!12481)))

(declare-fun b!2489071 () Bool)

(declare-fun tp!796774 () Bool)

(assert (=> b!2489071 (= e!1580319 tp!796774)))

(declare-fun b!2489070 () Bool)

(declare-fun tp!796773 () Bool)

(declare-fun tp!796775 () Bool)

(assert (=> b!2489070 (= e!1580319 (and tp!796773 tp!796775))))

(assert (=> b!2488679 (= tp!796702 e!1580319)))

(assert (= (and b!2488679 ((_ is ElementMatch!7313) (regOne!15138 r!26136))) b!2489069))

(assert (= (and b!2488679 ((_ is Concat!12009) (regOne!15138 r!26136))) b!2489070))

(assert (= (and b!2488679 ((_ is Star!7313) (regOne!15138 r!26136))) b!2489071))

(assert (= (and b!2488679 ((_ is Union!7313) (regOne!15138 r!26136))) b!2489072))

(declare-fun b!2489076 () Bool)

(declare-fun e!1580320 () Bool)

(declare-fun tp!796782 () Bool)

(declare-fun tp!796781 () Bool)

(assert (=> b!2489076 (= e!1580320 (and tp!796782 tp!796781))))

(declare-fun b!2489073 () Bool)

(assert (=> b!2489073 (= e!1580320 tp_is_empty!12481)))

(declare-fun b!2489075 () Bool)

(declare-fun tp!796779 () Bool)

(assert (=> b!2489075 (= e!1580320 tp!796779)))

(declare-fun b!2489074 () Bool)

(declare-fun tp!796778 () Bool)

(declare-fun tp!796780 () Bool)

(assert (=> b!2489074 (= e!1580320 (and tp!796778 tp!796780))))

(assert (=> b!2488679 (= tp!796701 e!1580320)))

(assert (= (and b!2488679 ((_ is ElementMatch!7313) (regTwo!15138 r!26136))) b!2489073))

(assert (= (and b!2488679 ((_ is Concat!12009) (regTwo!15138 r!26136))) b!2489074))

(assert (= (and b!2488679 ((_ is Star!7313) (regTwo!15138 r!26136))) b!2489075))

(assert (= (and b!2488679 ((_ is Union!7313) (regTwo!15138 r!26136))) b!2489076))

(check-sat (not b!2489038) (not d!714154) (not b!2489068) (not d!714110) (not b!2489016) (not b!2489046) (not bm!152758) (not b!2489075) (not d!714130) (not b!2489067) (not b!2489036) (not b!2489074) (not b!2488772) (not b!2489076) (not bm!152704) (not b!2489066) (not b!2488976) (not d!714158) (not d!714150) (not b!2489014) (not b!2489060) (not b!2489030) (not bm!152757) (not b!2489058) (not bm!152723) (not d!714146) (not d!714160) (not bm!152752) (not bm!152701) (not b!2489072) (not b!2489020) (not b!2489070) (not b!2489062) (not b!2489012) (not b!2489059) (not d!714156) (not b!2489022) (not bm!152705) (not bm!152724) (not b!2489018) (not b!2488761) (not b!2488871) (not b!2488907) (not b!2489026) (not b!2488700) (not b!2489063) (not b!2489034) (not b!2489032) (not b!2489071) (not b!2489064) tp_is_empty!12481 (not b!2489028) (not d!714148) (not bm!152753))
(check-sat)
(get-model)

(declare-fun e!1580382 () List!29380)

(declare-fun b!2489181 () Bool)

(assert (=> b!2489181 (= e!1580382 (Cons!29280 (h!34700 (ite c!395509 call!152706 call!152707)) (++!7154 (t!211079 (ite c!395509 call!152706 call!152707)) (ite c!395509 call!152708 call!152706))))))

(declare-fun b!2489182 () Bool)

(declare-fun res!1053624 () Bool)

(declare-fun e!1580381 () Bool)

(assert (=> b!2489182 (=> (not res!1053624) (not e!1580381))))

(declare-fun lt!893816 () List!29380)

(declare-fun size!22875 (List!29380) Int)

(assert (=> b!2489182 (= res!1053624 (= (size!22875 lt!893816) (+ (size!22875 (ite c!395509 call!152706 call!152707)) (size!22875 (ite c!395509 call!152708 call!152706)))))))

(declare-fun b!2489183 () Bool)

(assert (=> b!2489183 (= e!1580381 (or (not (= (ite c!395509 call!152708 call!152706) Nil!29280)) (= lt!893816 (ite c!395509 call!152706 call!152707))))))

(declare-fun d!714180 () Bool)

(assert (=> d!714180 e!1580381))

(declare-fun res!1053625 () Bool)

(assert (=> d!714180 (=> (not res!1053625) (not e!1580381))))

(assert (=> d!714180 (= res!1053625 (= (content!3990 lt!893816) ((_ map or) (content!3990 (ite c!395509 call!152706 call!152707)) (content!3990 (ite c!395509 call!152708 call!152706)))))))

(assert (=> d!714180 (= lt!893816 e!1580382)))

(declare-fun c!395621 () Bool)

(assert (=> d!714180 (= c!395621 ((_ is Nil!29280) (ite c!395509 call!152706 call!152707)))))

(assert (=> d!714180 (= (++!7154 (ite c!395509 call!152706 call!152707) (ite c!395509 call!152708 call!152706)) lt!893816)))

(declare-fun b!2489180 () Bool)

(assert (=> b!2489180 (= e!1580382 (ite c!395509 call!152708 call!152706))))

(assert (= (and d!714180 c!395621) b!2489180))

(assert (= (and d!714180 (not c!395621)) b!2489181))

(assert (= (and d!714180 res!1053625) b!2489182))

(assert (= (and b!2489182 res!1053624) b!2489183))

(declare-fun m!2857305 () Bool)

(assert (=> b!2489181 m!2857305))

(declare-fun m!2857307 () Bool)

(assert (=> b!2489182 m!2857307))

(declare-fun m!2857309 () Bool)

(assert (=> b!2489182 m!2857309))

(declare-fun m!2857311 () Bool)

(assert (=> b!2489182 m!2857311))

(declare-fun m!2857313 () Bool)

(assert (=> d!714180 m!2857313))

(declare-fun m!2857315 () Bool)

(assert (=> d!714180 m!2857315))

(declare-fun m!2857317 () Bool)

(assert (=> d!714180 m!2857317))

(assert (=> bm!152701 d!714180))

(declare-fun d!714198 () Bool)

(declare-fun c!395624 () Bool)

(assert (=> d!714198 (= c!395624 ((_ is Nil!29280) s!14955))))

(declare-fun e!1580385 () (InoxSet C!14784))

(assert (=> d!714198 (= (content!3990 s!14955) e!1580385)))

(declare-fun b!2489188 () Bool)

(assert (=> b!2489188 (= e!1580385 ((as const (Array C!14784 Bool)) false))))

(declare-fun b!2489189 () Bool)

(assert (=> b!2489189 (= e!1580385 ((_ map or) (store ((as const (Array C!14784 Bool)) false) (h!34700 s!14955) true) (content!3990 (t!211079 s!14955))))))

(assert (= (and d!714198 c!395624) b!2489188))

(assert (= (and d!714198 (not c!395624)) b!2489189))

(declare-fun m!2857327 () Bool)

(assert (=> b!2489189 m!2857327))

(declare-fun m!2857329 () Bool)

(assert (=> b!2489189 m!2857329))

(assert (=> d!714130 d!714198))

(declare-fun b!2489190 () Bool)

(declare-fun e!1580386 () Bool)

(declare-fun call!152797 () Bool)

(assert (=> b!2489190 (= e!1580386 call!152797)))

(declare-fun b!2489191 () Bool)

(declare-fun e!1580391 () Bool)

(declare-fun e!1580392 () Bool)

(assert (=> b!2489191 (= e!1580391 e!1580392)))

(declare-fun res!1053628 () Bool)

(assert (=> b!2489191 (=> (not res!1053628) (not e!1580392))))

(assert (=> b!2489191 (= res!1053628 call!152797)))

(declare-fun b!2489192 () Bool)

(declare-fun e!1580389 () Bool)

(declare-fun e!1580388 () Bool)

(assert (=> b!2489192 (= e!1580389 e!1580388)))

(declare-fun c!395625 () Bool)

(assert (=> b!2489192 (= c!395625 ((_ is Star!7313) lt!893805))))

(declare-fun b!2489193 () Bool)

(declare-fun e!1580387 () Bool)

(declare-fun call!152795 () Bool)

(assert (=> b!2489193 (= e!1580387 call!152795)))

(declare-fun bm!152790 () Bool)

(assert (=> bm!152790 (= call!152797 call!152795)))

(declare-fun b!2489194 () Bool)

(declare-fun res!1053626 () Bool)

(assert (=> b!2489194 (=> res!1053626 e!1580391)))

(assert (=> b!2489194 (= res!1053626 (not ((_ is Concat!12009) lt!893805)))))

(declare-fun e!1580390 () Bool)

(assert (=> b!2489194 (= e!1580390 e!1580391)))

(declare-fun bm!152791 () Bool)

(declare-fun call!152796 () Bool)

(declare-fun c!395626 () Bool)

(assert (=> bm!152791 (= call!152796 (validRegex!2939 (ite c!395626 (regOne!15139 lt!893805) (regTwo!15138 lt!893805))))))

(declare-fun b!2489195 () Bool)

(declare-fun res!1053627 () Bool)

(assert (=> b!2489195 (=> (not res!1053627) (not e!1580386))))

(assert (=> b!2489195 (= res!1053627 call!152796)))

(assert (=> b!2489195 (= e!1580390 e!1580386)))

(declare-fun b!2489196 () Bool)

(assert (=> b!2489196 (= e!1580388 e!1580390)))

(assert (=> b!2489196 (= c!395626 ((_ is Union!7313) lt!893805))))

(declare-fun d!714202 () Bool)

(declare-fun res!1053629 () Bool)

(assert (=> d!714202 (=> res!1053629 e!1580389)))

(assert (=> d!714202 (= res!1053629 ((_ is ElementMatch!7313) lt!893805))))

(assert (=> d!714202 (= (validRegex!2939 lt!893805) e!1580389)))

(declare-fun bm!152792 () Bool)

(assert (=> bm!152792 (= call!152795 (validRegex!2939 (ite c!395625 (reg!7642 lt!893805) (ite c!395626 (regTwo!15139 lt!893805) (regOne!15138 lt!893805)))))))

(declare-fun b!2489197 () Bool)

(assert (=> b!2489197 (= e!1580392 call!152796)))

(declare-fun b!2489198 () Bool)

(assert (=> b!2489198 (= e!1580388 e!1580387)))

(declare-fun res!1053630 () Bool)

(assert (=> b!2489198 (= res!1053630 (not (nullable!2230 (reg!7642 lt!893805))))))

(assert (=> b!2489198 (=> (not res!1053630) (not e!1580387))))

(assert (= (and d!714202 (not res!1053629)) b!2489192))

(assert (= (and b!2489192 c!395625) b!2489198))

(assert (= (and b!2489192 (not c!395625)) b!2489196))

(assert (= (and b!2489198 res!1053630) b!2489193))

(assert (= (and b!2489196 c!395626) b!2489195))

(assert (= (and b!2489196 (not c!395626)) b!2489194))

(assert (= (and b!2489195 res!1053627) b!2489190))

(assert (= (and b!2489194 (not res!1053626)) b!2489191))

(assert (= (and b!2489191 res!1053628) b!2489197))

(assert (= (or b!2489190 b!2489191) bm!152790))

(assert (= (or b!2489195 b!2489197) bm!152791))

(assert (= (or b!2489193 bm!152790) bm!152792))

(declare-fun m!2857331 () Bool)

(assert (=> bm!152791 m!2857331))

(declare-fun m!2857333 () Bool)

(assert (=> bm!152792 m!2857333))

(declare-fun m!2857335 () Bool)

(assert (=> b!2489198 m!2857335))

(assert (=> d!714156 d!714202))

(declare-fun b!2489199 () Bool)

(declare-fun e!1580393 () Bool)

(declare-fun call!152800 () Bool)

(assert (=> b!2489199 (= e!1580393 call!152800)))

(declare-fun b!2489200 () Bool)

(declare-fun e!1580398 () Bool)

(declare-fun e!1580399 () Bool)

(assert (=> b!2489200 (= e!1580398 e!1580399)))

(declare-fun res!1053633 () Bool)

(assert (=> b!2489200 (=> (not res!1053633) (not e!1580399))))

(assert (=> b!2489200 (= res!1053633 call!152800)))

(declare-fun b!2489201 () Bool)

(declare-fun e!1580396 () Bool)

(declare-fun e!1580395 () Bool)

(assert (=> b!2489201 (= e!1580396 e!1580395)))

(declare-fun c!395627 () Bool)

(assert (=> b!2489201 (= c!395627 ((_ is Star!7313) (derivativeStep!1882 r!26136 c!13476)))))

(declare-fun b!2489202 () Bool)

(declare-fun e!1580394 () Bool)

(declare-fun call!152798 () Bool)

(assert (=> b!2489202 (= e!1580394 call!152798)))

(declare-fun bm!152793 () Bool)

(assert (=> bm!152793 (= call!152800 call!152798)))

(declare-fun b!2489203 () Bool)

(declare-fun res!1053631 () Bool)

(assert (=> b!2489203 (=> res!1053631 e!1580398)))

(assert (=> b!2489203 (= res!1053631 (not ((_ is Concat!12009) (derivativeStep!1882 r!26136 c!13476))))))

(declare-fun e!1580397 () Bool)

(assert (=> b!2489203 (= e!1580397 e!1580398)))

(declare-fun bm!152794 () Bool)

(declare-fun call!152799 () Bool)

(declare-fun c!395628 () Bool)

(assert (=> bm!152794 (= call!152799 (validRegex!2939 (ite c!395628 (regOne!15139 (derivativeStep!1882 r!26136 c!13476)) (regTwo!15138 (derivativeStep!1882 r!26136 c!13476)))))))

(declare-fun b!2489204 () Bool)

(declare-fun res!1053632 () Bool)

(assert (=> b!2489204 (=> (not res!1053632) (not e!1580393))))

(assert (=> b!2489204 (= res!1053632 call!152799)))

(assert (=> b!2489204 (= e!1580397 e!1580393)))

(declare-fun b!2489205 () Bool)

(assert (=> b!2489205 (= e!1580395 e!1580397)))

(assert (=> b!2489205 (= c!395628 ((_ is Union!7313) (derivativeStep!1882 r!26136 c!13476)))))

(declare-fun d!714204 () Bool)

(declare-fun res!1053634 () Bool)

(assert (=> d!714204 (=> res!1053634 e!1580396)))

(assert (=> d!714204 (= res!1053634 ((_ is ElementMatch!7313) (derivativeStep!1882 r!26136 c!13476)))))

(assert (=> d!714204 (= (validRegex!2939 (derivativeStep!1882 r!26136 c!13476)) e!1580396)))

(declare-fun bm!152795 () Bool)

(assert (=> bm!152795 (= call!152798 (validRegex!2939 (ite c!395627 (reg!7642 (derivativeStep!1882 r!26136 c!13476)) (ite c!395628 (regTwo!15139 (derivativeStep!1882 r!26136 c!13476)) (regOne!15138 (derivativeStep!1882 r!26136 c!13476))))))))

(declare-fun b!2489206 () Bool)

(assert (=> b!2489206 (= e!1580399 call!152799)))

(declare-fun b!2489207 () Bool)

(assert (=> b!2489207 (= e!1580395 e!1580394)))

(declare-fun res!1053635 () Bool)

(assert (=> b!2489207 (= res!1053635 (not (nullable!2230 (reg!7642 (derivativeStep!1882 r!26136 c!13476)))))))

(assert (=> b!2489207 (=> (not res!1053635) (not e!1580394))))

(assert (= (and d!714204 (not res!1053634)) b!2489201))

(assert (= (and b!2489201 c!395627) b!2489207))

(assert (= (and b!2489201 (not c!395627)) b!2489205))

(assert (= (and b!2489207 res!1053635) b!2489202))

(assert (= (and b!2489205 c!395628) b!2489204))

(assert (= (and b!2489205 (not c!395628)) b!2489203))

(assert (= (and b!2489204 res!1053632) b!2489199))

(assert (= (and b!2489203 (not res!1053631)) b!2489200))

(assert (= (and b!2489200 res!1053633) b!2489206))

(assert (= (or b!2489199 b!2489200) bm!152793))

(assert (= (or b!2489204 b!2489206) bm!152794))

(assert (= (or b!2489202 bm!152793) bm!152795))

(declare-fun m!2857337 () Bool)

(assert (=> bm!152794 m!2857337))

(declare-fun m!2857339 () Bool)

(assert (=> bm!152795 m!2857339))

(declare-fun m!2857341 () Bool)

(assert (=> b!2489207 m!2857341))

(assert (=> d!714156 d!714204))

(declare-fun d!714214 () Bool)

(assert (=> d!714214 (= (isEmpty!16785 Nil!29280) true)))

(assert (=> d!714154 d!714214))

(declare-fun b!2489208 () Bool)

(declare-fun e!1580400 () Bool)

(declare-fun call!152803 () Bool)

(assert (=> b!2489208 (= e!1580400 call!152803)))

(declare-fun b!2489209 () Bool)

(declare-fun e!1580405 () Bool)

(declare-fun e!1580406 () Bool)

(assert (=> b!2489209 (= e!1580405 e!1580406)))

(declare-fun res!1053638 () Bool)

(assert (=> b!2489209 (=> (not res!1053638) (not e!1580406))))

(assert (=> b!2489209 (= res!1053638 call!152803)))

(declare-fun b!2489210 () Bool)

(declare-fun e!1580403 () Bool)

(declare-fun e!1580402 () Bool)

(assert (=> b!2489210 (= e!1580403 e!1580402)))

(declare-fun c!395629 () Bool)

(assert (=> b!2489210 (= c!395629 ((_ is Star!7313) (derivative!10 r!26136 s!14955)))))

(declare-fun b!2489211 () Bool)

(declare-fun e!1580401 () Bool)

(declare-fun call!152801 () Bool)

(assert (=> b!2489211 (= e!1580401 call!152801)))

(declare-fun bm!152796 () Bool)

(assert (=> bm!152796 (= call!152803 call!152801)))

(declare-fun b!2489212 () Bool)

(declare-fun res!1053636 () Bool)

(assert (=> b!2489212 (=> res!1053636 e!1580405)))

(assert (=> b!2489212 (= res!1053636 (not ((_ is Concat!12009) (derivative!10 r!26136 s!14955))))))

(declare-fun e!1580404 () Bool)

(assert (=> b!2489212 (= e!1580404 e!1580405)))

(declare-fun c!395630 () Bool)

(declare-fun bm!152797 () Bool)

(declare-fun call!152802 () Bool)

(assert (=> bm!152797 (= call!152802 (validRegex!2939 (ite c!395630 (regOne!15139 (derivative!10 r!26136 s!14955)) (regTwo!15138 (derivative!10 r!26136 s!14955)))))))

(declare-fun b!2489213 () Bool)

(declare-fun res!1053637 () Bool)

(assert (=> b!2489213 (=> (not res!1053637) (not e!1580400))))

(assert (=> b!2489213 (= res!1053637 call!152802)))

(assert (=> b!2489213 (= e!1580404 e!1580400)))

(declare-fun b!2489214 () Bool)

(assert (=> b!2489214 (= e!1580402 e!1580404)))

(assert (=> b!2489214 (= c!395630 ((_ is Union!7313) (derivative!10 r!26136 s!14955)))))

(declare-fun d!714216 () Bool)

(declare-fun res!1053639 () Bool)

(assert (=> d!714216 (=> res!1053639 e!1580403)))

(assert (=> d!714216 (= res!1053639 ((_ is ElementMatch!7313) (derivative!10 r!26136 s!14955)))))

(assert (=> d!714216 (= (validRegex!2939 (derivative!10 r!26136 s!14955)) e!1580403)))

(declare-fun bm!152798 () Bool)

(assert (=> bm!152798 (= call!152801 (validRegex!2939 (ite c!395629 (reg!7642 (derivative!10 r!26136 s!14955)) (ite c!395630 (regTwo!15139 (derivative!10 r!26136 s!14955)) (regOne!15138 (derivative!10 r!26136 s!14955))))))))

(declare-fun b!2489215 () Bool)

(assert (=> b!2489215 (= e!1580406 call!152802)))

(declare-fun b!2489216 () Bool)

(assert (=> b!2489216 (= e!1580402 e!1580401)))

(declare-fun res!1053640 () Bool)

(assert (=> b!2489216 (= res!1053640 (not (nullable!2230 (reg!7642 (derivative!10 r!26136 s!14955)))))))

(assert (=> b!2489216 (=> (not res!1053640) (not e!1580401))))

(assert (= (and d!714216 (not res!1053639)) b!2489210))

(assert (= (and b!2489210 c!395629) b!2489216))

(assert (= (and b!2489210 (not c!395629)) b!2489214))

(assert (= (and b!2489216 res!1053640) b!2489211))

(assert (= (and b!2489214 c!395630) b!2489213))

(assert (= (and b!2489214 (not c!395630)) b!2489212))

(assert (= (and b!2489213 res!1053637) b!2489208))

(assert (= (and b!2489212 (not res!1053636)) b!2489209))

(assert (= (and b!2489209 res!1053638) b!2489215))

(assert (= (or b!2489208 b!2489209) bm!152796))

(assert (= (or b!2489213 b!2489215) bm!152797))

(assert (= (or b!2489211 bm!152796) bm!152798))

(declare-fun m!2857343 () Bool)

(assert (=> bm!152797 m!2857343))

(declare-fun m!2857345 () Bool)

(assert (=> bm!152798 m!2857345))

(declare-fun m!2857347 () Bool)

(assert (=> b!2489216 m!2857347))

(assert (=> d!714154 d!714216))

(declare-fun d!714218 () Bool)

(assert (=> d!714218 (= (isEmpty!16785 s!14955) ((_ is Nil!29280) s!14955))))

(assert (=> d!714160 d!714218))

(assert (=> d!714160 d!714132))

(declare-fun b!2489225 () Bool)

(declare-fun e!1580413 () Bool)

(assert (=> b!2489225 (= e!1580413 (matchR!3364 (derivativeStep!1882 (derivativeStep!1882 r!26136 (head!5669 s!14955)) (head!5669 (tail!3950 s!14955))) (tail!3950 (tail!3950 s!14955))))))

(declare-fun b!2489226 () Bool)

(declare-fun e!1580414 () Bool)

(declare-fun e!1580416 () Bool)

(assert (=> b!2489226 (= e!1580414 e!1580416)))

(declare-fun res!1053651 () Bool)

(assert (=> b!2489226 (=> (not res!1053651) (not e!1580416))))

(declare-fun lt!893817 () Bool)

(assert (=> b!2489226 (= res!1053651 (not lt!893817))))

(declare-fun b!2489227 () Bool)

(declare-fun res!1053650 () Bool)

(declare-fun e!1580417 () Bool)

(assert (=> b!2489227 (=> res!1053650 e!1580417)))

(assert (=> b!2489227 (= res!1053650 (not (isEmpty!16785 (tail!3950 (tail!3950 s!14955)))))))

(declare-fun b!2489228 () Bool)

(declare-fun res!1053648 () Bool)

(assert (=> b!2489228 (=> res!1053648 e!1580414)))

(declare-fun e!1580418 () Bool)

(assert (=> b!2489228 (= res!1053648 e!1580418)))

(declare-fun res!1053647 () Bool)

(assert (=> b!2489228 (=> (not res!1053647) (not e!1580418))))

(assert (=> b!2489228 (= res!1053647 lt!893817)))

(declare-fun d!714220 () Bool)

(declare-fun e!1580419 () Bool)

(assert (=> d!714220 e!1580419))

(declare-fun c!395631 () Bool)

(assert (=> d!714220 (= c!395631 ((_ is EmptyExpr!7313) (derivativeStep!1882 r!26136 (head!5669 s!14955))))))

(assert (=> d!714220 (= lt!893817 e!1580413)))

(declare-fun c!395632 () Bool)

(assert (=> d!714220 (= c!395632 (isEmpty!16785 (tail!3950 s!14955)))))

(assert (=> d!714220 (validRegex!2939 (derivativeStep!1882 r!26136 (head!5669 s!14955)))))

(assert (=> d!714220 (= (matchR!3364 (derivativeStep!1882 r!26136 (head!5669 s!14955)) (tail!3950 s!14955)) lt!893817)))

(declare-fun b!2489229 () Bool)

(assert (=> b!2489229 (= e!1580418 (= (head!5669 (tail!3950 s!14955)) (c!395479 (derivativeStep!1882 r!26136 (head!5669 s!14955)))))))

(declare-fun b!2489230 () Bool)

(declare-fun e!1580415 () Bool)

(assert (=> b!2489230 (= e!1580415 (not lt!893817))))

(declare-fun b!2489231 () Bool)

(assert (=> b!2489231 (= e!1580417 (not (= (head!5669 (tail!3950 s!14955)) (c!395479 (derivativeStep!1882 r!26136 (head!5669 s!14955))))))))

(declare-fun b!2489232 () Bool)

(assert (=> b!2489232 (= e!1580419 e!1580415)))

(declare-fun c!395633 () Bool)

(assert (=> b!2489232 (= c!395633 ((_ is EmptyLang!7313) (derivativeStep!1882 r!26136 (head!5669 s!14955))))))

(declare-fun b!2489233 () Bool)

(assert (=> b!2489233 (= e!1580413 (nullable!2230 (derivativeStep!1882 r!26136 (head!5669 s!14955))))))

(declare-fun b!2489234 () Bool)

(assert (=> b!2489234 (= e!1580416 e!1580417)))

(declare-fun res!1053649 () Bool)

(assert (=> b!2489234 (=> res!1053649 e!1580417)))

(declare-fun call!152804 () Bool)

(assert (=> b!2489234 (= res!1053649 call!152804)))

(declare-fun b!2489235 () Bool)

(declare-fun res!1053654 () Bool)

(assert (=> b!2489235 (=> (not res!1053654) (not e!1580418))))

(assert (=> b!2489235 (= res!1053654 (isEmpty!16785 (tail!3950 (tail!3950 s!14955))))))

(declare-fun b!2489236 () Bool)

(assert (=> b!2489236 (= e!1580419 (= lt!893817 call!152804))))

(declare-fun b!2489237 () Bool)

(declare-fun res!1053653 () Bool)

(assert (=> b!2489237 (=> res!1053653 e!1580414)))

(assert (=> b!2489237 (= res!1053653 (not ((_ is ElementMatch!7313) (derivativeStep!1882 r!26136 (head!5669 s!14955)))))))

(assert (=> b!2489237 (= e!1580415 e!1580414)))

(declare-fun b!2489238 () Bool)

(declare-fun res!1053652 () Bool)

(assert (=> b!2489238 (=> (not res!1053652) (not e!1580418))))

(assert (=> b!2489238 (= res!1053652 (not call!152804))))

(declare-fun bm!152799 () Bool)

(assert (=> bm!152799 (= call!152804 (isEmpty!16785 (tail!3950 s!14955)))))

(assert (= (and d!714220 c!395632) b!2489233))

(assert (= (and d!714220 (not c!395632)) b!2489225))

(assert (= (and d!714220 c!395631) b!2489236))

(assert (= (and d!714220 (not c!395631)) b!2489232))

(assert (= (and b!2489232 c!395633) b!2489230))

(assert (= (and b!2489232 (not c!395633)) b!2489237))

(assert (= (and b!2489237 (not res!1053653)) b!2489228))

(assert (= (and b!2489228 res!1053647) b!2489238))

(assert (= (and b!2489238 res!1053652) b!2489235))

(assert (= (and b!2489235 res!1053654) b!2489229))

(assert (= (and b!2489228 (not res!1053648)) b!2489226))

(assert (= (and b!2489226 res!1053651) b!2489234))

(assert (= (and b!2489234 (not res!1053649)) b!2489227))

(assert (= (and b!2489227 (not res!1053650)) b!2489231))

(assert (= (or b!2489236 b!2489238 b!2489234) bm!152799))

(assert (=> b!2489235 m!2857057))

(declare-fun m!2857349 () Bool)

(assert (=> b!2489235 m!2857349))

(assert (=> b!2489235 m!2857349))

(declare-fun m!2857351 () Bool)

(assert (=> b!2489235 m!2857351))

(assert (=> b!2489227 m!2857057))

(assert (=> b!2489227 m!2857349))

(assert (=> b!2489227 m!2857349))

(assert (=> b!2489227 m!2857351))

(assert (=> bm!152799 m!2857057))

(assert (=> bm!152799 m!2857211))

(assert (=> d!714220 m!2857057))

(assert (=> d!714220 m!2857211))

(assert (=> d!714220 m!2857217))

(declare-fun m!2857353 () Bool)

(assert (=> d!714220 m!2857353))

(assert (=> b!2489233 m!2857217))

(declare-fun m!2857355 () Bool)

(assert (=> b!2489233 m!2857355))

(assert (=> b!2489231 m!2857057))

(declare-fun m!2857357 () Bool)

(assert (=> b!2489231 m!2857357))

(assert (=> b!2489225 m!2857057))

(assert (=> b!2489225 m!2857357))

(assert (=> b!2489225 m!2857217))

(assert (=> b!2489225 m!2857357))

(declare-fun m!2857359 () Bool)

(assert (=> b!2489225 m!2857359))

(assert (=> b!2489225 m!2857057))

(assert (=> b!2489225 m!2857349))

(assert (=> b!2489225 m!2857359))

(assert (=> b!2489225 m!2857349))

(declare-fun m!2857361 () Bool)

(assert (=> b!2489225 m!2857361))

(assert (=> b!2489229 m!2857057))

(assert (=> b!2489229 m!2857357))

(assert (=> b!2489028 d!714220))

(declare-fun call!152809 () Regex!7313)

(declare-fun b!2489245 () Bool)

(declare-fun e!1580426 () Regex!7313)

(declare-fun call!152811 () Regex!7313)

(assert (=> b!2489245 (= e!1580426 (Union!7313 (Concat!12009 call!152809 (regTwo!15138 r!26136)) call!152811))))

(declare-fun b!2489246 () Bool)

(declare-fun e!1580427 () Regex!7313)

(declare-fun e!1580429 () Regex!7313)

(assert (=> b!2489246 (= e!1580427 e!1580429)))

(declare-fun c!395639 () Bool)

(assert (=> b!2489246 (= c!395639 ((_ is ElementMatch!7313) r!26136))))

(declare-fun bm!152804 () Bool)

(declare-fun call!152810 () Regex!7313)

(declare-fun call!152812 () Regex!7313)

(assert (=> bm!152804 (= call!152810 call!152812)))

(declare-fun b!2489247 () Bool)

(declare-fun c!395637 () Bool)

(assert (=> b!2489247 (= c!395637 (nullable!2230 (regOne!15138 r!26136)))))

(declare-fun e!1580428 () Regex!7313)

(assert (=> b!2489247 (= e!1580428 e!1580426)))

(declare-fun b!2489248 () Bool)

(assert (=> b!2489248 (= e!1580427 EmptyLang!7313)))

(declare-fun bm!152805 () Bool)

(declare-fun c!395636 () Bool)

(declare-fun c!395638 () Bool)

(assert (=> bm!152805 (= call!152812 (derivativeStep!1882 (ite c!395636 (regTwo!15139 r!26136) (ite c!395638 (reg!7642 r!26136) (ite c!395637 (regTwo!15138 r!26136) (regOne!15138 r!26136)))) (head!5669 s!14955)))))

(declare-fun b!2489249 () Bool)

(declare-fun e!1580430 () Regex!7313)

(assert (=> b!2489249 (= e!1580430 e!1580428)))

(assert (=> b!2489249 (= c!395638 ((_ is Star!7313) r!26136))))

(declare-fun b!2489250 () Bool)

(assert (=> b!2489250 (= c!395636 ((_ is Union!7313) r!26136))))

(assert (=> b!2489250 (= e!1580429 e!1580430)))

(declare-fun b!2489251 () Bool)

(assert (=> b!2489251 (= e!1580426 (Union!7313 (Concat!12009 call!152811 (regTwo!15138 r!26136)) EmptyLang!7313))))

(declare-fun b!2489252 () Bool)

(assert (=> b!2489252 (= e!1580430 (Union!7313 call!152809 call!152812))))

(declare-fun d!714222 () Bool)

(declare-fun lt!893818 () Regex!7313)

(assert (=> d!714222 (validRegex!2939 lt!893818)))

(assert (=> d!714222 (= lt!893818 e!1580427)))

(declare-fun c!395640 () Bool)

(assert (=> d!714222 (= c!395640 (or ((_ is EmptyExpr!7313) r!26136) ((_ is EmptyLang!7313) r!26136)))))

(assert (=> d!714222 (validRegex!2939 r!26136)))

(assert (=> d!714222 (= (derivativeStep!1882 r!26136 (head!5669 s!14955)) lt!893818)))

(declare-fun bm!152806 () Bool)

(assert (=> bm!152806 (= call!152809 (derivativeStep!1882 (ite c!395636 (regOne!15139 r!26136) (regOne!15138 r!26136)) (head!5669 s!14955)))))

(declare-fun b!2489253 () Bool)

(assert (=> b!2489253 (= e!1580429 (ite (= (head!5669 s!14955) (c!395479 r!26136)) EmptyExpr!7313 EmptyLang!7313))))

(declare-fun bm!152807 () Bool)

(assert (=> bm!152807 (= call!152811 call!152810)))

(declare-fun b!2489254 () Bool)

(assert (=> b!2489254 (= e!1580428 (Concat!12009 call!152810 r!26136))))

(assert (= (and d!714222 c!395640) b!2489248))

(assert (= (and d!714222 (not c!395640)) b!2489246))

(assert (= (and b!2489246 c!395639) b!2489253))

(assert (= (and b!2489246 (not c!395639)) b!2489250))

(assert (= (and b!2489250 c!395636) b!2489252))

(assert (= (and b!2489250 (not c!395636)) b!2489249))

(assert (= (and b!2489249 c!395638) b!2489254))

(assert (= (and b!2489249 (not c!395638)) b!2489247))

(assert (= (and b!2489247 c!395637) b!2489245))

(assert (= (and b!2489247 (not c!395637)) b!2489251))

(assert (= (or b!2489245 b!2489251) bm!152807))

(assert (= (or b!2489254 bm!152807) bm!152804))

(assert (= (or b!2489252 b!2489245) bm!152806))

(assert (= (or b!2489252 bm!152804) bm!152805))

(assert (=> b!2489247 m!2857099))

(assert (=> bm!152805 m!2857043))

(declare-fun m!2857363 () Bool)

(assert (=> bm!152805 m!2857363))

(declare-fun m!2857365 () Bool)

(assert (=> d!714222 m!2857365))

(assert (=> d!714222 m!2857045))

(assert (=> bm!152806 m!2857043))

(declare-fun m!2857367 () Bool)

(assert (=> bm!152806 m!2857367))

(assert (=> b!2489028 d!714222))

(assert (=> b!2489028 d!714128))

(assert (=> b!2489028 d!714152))

(declare-fun d!714224 () Bool)

(declare-fun lt!893819 () Regex!7313)

(assert (=> d!714224 (validRegex!2939 lt!893819)))

(declare-fun e!1580431 () Regex!7313)

(assert (=> d!714224 (= lt!893819 e!1580431)))

(declare-fun c!395641 () Bool)

(assert (=> d!714224 (= c!395641 ((_ is Cons!29280) (t!211079 s!14955)))))

(assert (=> d!714224 (validRegex!2939 (derivativeStep!1882 r!26136 (h!34700 s!14955)))))

(assert (=> d!714224 (= (derivative!10 (derivativeStep!1882 r!26136 (h!34700 s!14955)) (t!211079 s!14955)) lt!893819)))

(declare-fun b!2489255 () Bool)

(assert (=> b!2489255 (= e!1580431 (derivative!10 (derivativeStep!1882 (derivativeStep!1882 r!26136 (h!34700 s!14955)) (h!34700 (t!211079 s!14955))) (t!211079 (t!211079 s!14955))))))

(declare-fun b!2489256 () Bool)

(assert (=> b!2489256 (= e!1580431 (derivativeStep!1882 r!26136 (h!34700 s!14955)))))

(assert (= (and d!714224 c!395641) b!2489255))

(assert (= (and d!714224 (not c!395641)) b!2489256))

(declare-fun m!2857369 () Bool)

(assert (=> d!714224 m!2857369))

(assert (=> d!714224 m!2857167))

(declare-fun m!2857371 () Bool)

(assert (=> d!714224 m!2857371))

(assert (=> b!2489255 m!2857167))

(declare-fun m!2857373 () Bool)

(assert (=> b!2489255 m!2857373))

(assert (=> b!2489255 m!2857373))

(declare-fun m!2857375 () Bool)

(assert (=> b!2489255 m!2857375))

(assert (=> b!2488907 d!714224))

(declare-fun e!1580432 () Regex!7313)

(declare-fun call!152815 () Regex!7313)

(declare-fun b!2489257 () Bool)

(declare-fun call!152813 () Regex!7313)

(assert (=> b!2489257 (= e!1580432 (Union!7313 (Concat!12009 call!152813 (regTwo!15138 r!26136)) call!152815))))

(declare-fun b!2489258 () Bool)

(declare-fun e!1580433 () Regex!7313)

(declare-fun e!1580435 () Regex!7313)

(assert (=> b!2489258 (= e!1580433 e!1580435)))

(declare-fun c!395645 () Bool)

(assert (=> b!2489258 (= c!395645 ((_ is ElementMatch!7313) r!26136))))

(declare-fun bm!152808 () Bool)

(declare-fun call!152814 () Regex!7313)

(declare-fun call!152816 () Regex!7313)

(assert (=> bm!152808 (= call!152814 call!152816)))

(declare-fun b!2489259 () Bool)

(declare-fun c!395643 () Bool)

(assert (=> b!2489259 (= c!395643 (nullable!2230 (regOne!15138 r!26136)))))

(declare-fun e!1580434 () Regex!7313)

(assert (=> b!2489259 (= e!1580434 e!1580432)))

(declare-fun b!2489260 () Bool)

(assert (=> b!2489260 (= e!1580433 EmptyLang!7313)))

(declare-fun c!395642 () Bool)

(declare-fun bm!152809 () Bool)

(declare-fun c!395644 () Bool)

(assert (=> bm!152809 (= call!152816 (derivativeStep!1882 (ite c!395642 (regTwo!15139 r!26136) (ite c!395644 (reg!7642 r!26136) (ite c!395643 (regTwo!15138 r!26136) (regOne!15138 r!26136)))) (h!34700 s!14955)))))

(declare-fun b!2489261 () Bool)

(declare-fun e!1580436 () Regex!7313)

(assert (=> b!2489261 (= e!1580436 e!1580434)))

(assert (=> b!2489261 (= c!395644 ((_ is Star!7313) r!26136))))

(declare-fun b!2489262 () Bool)

(assert (=> b!2489262 (= c!395642 ((_ is Union!7313) r!26136))))

(assert (=> b!2489262 (= e!1580435 e!1580436)))

(declare-fun b!2489263 () Bool)

(assert (=> b!2489263 (= e!1580432 (Union!7313 (Concat!12009 call!152815 (regTwo!15138 r!26136)) EmptyLang!7313))))

(declare-fun b!2489264 () Bool)

(assert (=> b!2489264 (= e!1580436 (Union!7313 call!152813 call!152816))))

(declare-fun d!714226 () Bool)

(declare-fun lt!893820 () Regex!7313)

(assert (=> d!714226 (validRegex!2939 lt!893820)))

(assert (=> d!714226 (= lt!893820 e!1580433)))

(declare-fun c!395646 () Bool)

(assert (=> d!714226 (= c!395646 (or ((_ is EmptyExpr!7313) r!26136) ((_ is EmptyLang!7313) r!26136)))))

(assert (=> d!714226 (validRegex!2939 r!26136)))

(assert (=> d!714226 (= (derivativeStep!1882 r!26136 (h!34700 s!14955)) lt!893820)))

(declare-fun bm!152810 () Bool)

(assert (=> bm!152810 (= call!152813 (derivativeStep!1882 (ite c!395642 (regOne!15139 r!26136) (regOne!15138 r!26136)) (h!34700 s!14955)))))

(declare-fun b!2489265 () Bool)

(assert (=> b!2489265 (= e!1580435 (ite (= (h!34700 s!14955) (c!395479 r!26136)) EmptyExpr!7313 EmptyLang!7313))))

(declare-fun bm!152811 () Bool)

(assert (=> bm!152811 (= call!152815 call!152814)))

(declare-fun b!2489266 () Bool)

(assert (=> b!2489266 (= e!1580434 (Concat!12009 call!152814 r!26136))))

(assert (= (and d!714226 c!395646) b!2489260))

(assert (= (and d!714226 (not c!395646)) b!2489258))

(assert (= (and b!2489258 c!395645) b!2489265))

(assert (= (and b!2489258 (not c!395645)) b!2489262))

(assert (= (and b!2489262 c!395642) b!2489264))

(assert (= (and b!2489262 (not c!395642)) b!2489261))

(assert (= (and b!2489261 c!395644) b!2489266))

(assert (= (and b!2489261 (not c!395644)) b!2489259))

(assert (= (and b!2489259 c!395643) b!2489257))

(assert (= (and b!2489259 (not c!395643)) b!2489263))

(assert (= (or b!2489257 b!2489263) bm!152811))

(assert (= (or b!2489266 bm!152811) bm!152808))

(assert (= (or b!2489264 b!2489257) bm!152810))

(assert (= (or b!2489264 bm!152808) bm!152809))

(assert (=> b!2489259 m!2857099))

(declare-fun m!2857381 () Bool)

(assert (=> bm!152809 m!2857381))

(declare-fun m!2857383 () Bool)

(assert (=> d!714226 m!2857383))

(assert (=> d!714226 m!2857045))

(declare-fun m!2857387 () Bool)

(assert (=> bm!152810 m!2857387))

(assert (=> b!2488907 d!714226))

(declare-fun b!2489274 () Bool)

(declare-fun e!1580443 () Bool)

(declare-fun call!152821 () Bool)

(assert (=> b!2489274 (= e!1580443 call!152821)))

(declare-fun b!2489275 () Bool)

(declare-fun e!1580448 () Bool)

(declare-fun e!1580449 () Bool)

(assert (=> b!2489275 (= e!1580448 e!1580449)))

(declare-fun res!1053666 () Bool)

(assert (=> b!2489275 (=> (not res!1053666) (not e!1580449))))

(assert (=> b!2489275 (= res!1053666 call!152821)))

(declare-fun b!2489276 () Bool)

(declare-fun e!1580446 () Bool)

(declare-fun e!1580445 () Bool)

(assert (=> b!2489276 (= e!1580446 e!1580445)))

(declare-fun c!395648 () Bool)

(assert (=> b!2489276 (= c!395648 ((_ is Star!7313) lt!893798))))

(declare-fun b!2489277 () Bool)

(declare-fun e!1580444 () Bool)

(declare-fun call!152819 () Bool)

(assert (=> b!2489277 (= e!1580444 call!152819)))

(declare-fun bm!152814 () Bool)

(assert (=> bm!152814 (= call!152821 call!152819)))

(declare-fun b!2489278 () Bool)

(declare-fun res!1053664 () Bool)

(assert (=> b!2489278 (=> res!1053664 e!1580448)))

(assert (=> b!2489278 (= res!1053664 (not ((_ is Concat!12009) lt!893798)))))

(declare-fun e!1580447 () Bool)

(assert (=> b!2489278 (= e!1580447 e!1580448)))

(declare-fun bm!152815 () Bool)

(declare-fun call!152820 () Bool)

(declare-fun c!395649 () Bool)

(assert (=> bm!152815 (= call!152820 (validRegex!2939 (ite c!395649 (regOne!15139 lt!893798) (regTwo!15138 lt!893798))))))

(declare-fun b!2489279 () Bool)

(declare-fun res!1053665 () Bool)

(assert (=> b!2489279 (=> (not res!1053665) (not e!1580443))))

(assert (=> b!2489279 (= res!1053665 call!152820)))

(assert (=> b!2489279 (= e!1580447 e!1580443)))

(declare-fun b!2489280 () Bool)

(assert (=> b!2489280 (= e!1580445 e!1580447)))

(assert (=> b!2489280 (= c!395649 ((_ is Union!7313) lt!893798))))

(declare-fun d!714230 () Bool)

(declare-fun res!1053667 () Bool)

(assert (=> d!714230 (=> res!1053667 e!1580446)))

(assert (=> d!714230 (= res!1053667 ((_ is ElementMatch!7313) lt!893798))))

(assert (=> d!714230 (= (validRegex!2939 lt!893798) e!1580446)))

(declare-fun bm!152816 () Bool)

(assert (=> bm!152816 (= call!152819 (validRegex!2939 (ite c!395648 (reg!7642 lt!893798) (ite c!395649 (regTwo!15139 lt!893798) (regOne!15138 lt!893798)))))))

(declare-fun b!2489281 () Bool)

(assert (=> b!2489281 (= e!1580449 call!152820)))

(declare-fun b!2489282 () Bool)

(assert (=> b!2489282 (= e!1580445 e!1580444)))

(declare-fun res!1053668 () Bool)

(assert (=> b!2489282 (= res!1053668 (not (nullable!2230 (reg!7642 lt!893798))))))

(assert (=> b!2489282 (=> (not res!1053668) (not e!1580444))))

(assert (= (and d!714230 (not res!1053667)) b!2489276))

(assert (= (and b!2489276 c!395648) b!2489282))

(assert (= (and b!2489276 (not c!395648)) b!2489280))

(assert (= (and b!2489282 res!1053668) b!2489277))

(assert (= (and b!2489280 c!395649) b!2489279))

(assert (= (and b!2489280 (not c!395649)) b!2489278))

(assert (= (and b!2489279 res!1053665) b!2489274))

(assert (= (and b!2489278 (not res!1053664)) b!2489275))

(assert (= (and b!2489275 res!1053666) b!2489281))

(assert (= (or b!2489274 b!2489275) bm!152814))

(assert (= (or b!2489279 b!2489281) bm!152815))

(assert (= (or b!2489277 bm!152814) bm!152816))

(declare-fun m!2857391 () Bool)

(assert (=> bm!152815 m!2857391))

(declare-fun m!2857393 () Bool)

(assert (=> bm!152816 m!2857393))

(declare-fun m!2857395 () Bool)

(assert (=> b!2489282 m!2857395))

(assert (=> d!714148 d!714230))

(assert (=> d!714148 d!714132))

(declare-fun d!714236 () Bool)

(assert (=> d!714236 (= (nullable!2230 (derivative!10 r!26136 s!14955)) (nullableFct!543 (derivative!10 r!26136 s!14955)))))

(declare-fun bs!468333 () Bool)

(assert (= bs!468333 d!714236))

(assert (=> bs!468333 m!2857047))

(declare-fun m!2857403 () Bool)

(assert (=> bs!468333 m!2857403))

(assert (=> b!2489020 d!714236))

(declare-fun d!714238 () Bool)

(assert (not d!714238))

(assert (=> b!2489022 d!714238))

(declare-fun d!714242 () Bool)

(assert (not d!714242))

(assert (=> b!2489022 d!714242))

(declare-fun d!714244 () Bool)

(assert (not d!714244))

(assert (=> b!2489018 d!714244))

(declare-fun bm!152823 () Bool)

(declare-fun call!152829 () List!29380)

(declare-fun call!152832 () List!29380)

(declare-fun c!395655 () Bool)

(declare-fun call!152830 () List!29380)

(declare-fun call!152828 () List!29380)

(assert (=> bm!152823 (= call!152832 (++!7154 (ite c!395655 call!152828 call!152829) (ite c!395655 call!152830 call!152828)))))

(declare-fun bm!152824 () Bool)

(assert (=> bm!152824 (= call!152829 call!152830)))

(declare-fun c!395656 () Bool)

(declare-fun b!2489301 () Bool)

(assert (=> b!2489301 (= c!395656 ((_ is Star!7313) (ite c!395510 (reg!7642 r!26136) (ite c!395509 (regTwo!15139 r!26136) (regOne!15138 r!26136)))))))

(declare-fun e!1580468 () List!29380)

(declare-fun e!1580464 () List!29380)

(assert (=> b!2489301 (= e!1580468 e!1580464)))

(declare-fun b!2489302 () Bool)

(declare-fun e!1580465 () List!29380)

(assert (=> b!2489302 (= e!1580465 e!1580468)))

(declare-fun c!395658 () Bool)

(assert (=> b!2489302 (= c!395658 ((_ is ElementMatch!7313) (ite c!395510 (reg!7642 r!26136) (ite c!395509 (regTwo!15139 r!26136) (regOne!15138 r!26136)))))))

(declare-fun d!714246 () Bool)

(declare-fun c!395657 () Bool)

(assert (=> d!714246 (= c!395657 (or ((_ is EmptyExpr!7313) (ite c!395510 (reg!7642 r!26136) (ite c!395509 (regTwo!15139 r!26136) (regOne!15138 r!26136)))) ((_ is EmptyLang!7313) (ite c!395510 (reg!7642 r!26136) (ite c!395509 (regTwo!15139 r!26136) (regOne!15138 r!26136))))))))

(assert (=> d!714246 (= (firstChars!80 (ite c!395510 (reg!7642 r!26136) (ite c!395509 (regTwo!15139 r!26136) (regOne!15138 r!26136)))) e!1580465)))

(declare-fun b!2489303 () Bool)

(declare-fun e!1580467 () List!29380)

(assert (=> b!2489303 (= e!1580467 call!152832)))

(declare-fun b!2489304 () Bool)

(assert (=> b!2489304 (= e!1580465 Nil!29280)))

(declare-fun c!395654 () Bool)

(declare-fun b!2489305 () Bool)

(assert (=> b!2489305 (= c!395654 (nullable!2230 (regOne!15138 (ite c!395510 (reg!7642 r!26136) (ite c!395509 (regTwo!15139 r!26136) (regOne!15138 r!26136))))))))

(declare-fun e!1580466 () List!29380)

(assert (=> b!2489305 (= e!1580466 e!1580467)))

(declare-fun b!2489306 () Bool)

(assert (=> b!2489306 (= e!1580464 e!1580466)))

(assert (=> b!2489306 (= c!395655 ((_ is Union!7313) (ite c!395510 (reg!7642 r!26136) (ite c!395509 (regTwo!15139 r!26136) (regOne!15138 r!26136)))))))

(declare-fun b!2489307 () Bool)

(assert (=> b!2489307 (= e!1580466 call!152832)))

(declare-fun b!2489308 () Bool)

(declare-fun call!152831 () List!29380)

(assert (=> b!2489308 (= e!1580464 call!152831)))

(declare-fun b!2489309 () Bool)

(assert (=> b!2489309 (= e!1580468 (Cons!29280 (c!395479 (ite c!395510 (reg!7642 r!26136) (ite c!395509 (regTwo!15139 r!26136) (regOne!15138 r!26136)))) Nil!29280))))

(declare-fun bm!152825 () Bool)

(assert (=> bm!152825 (= call!152830 call!152831)))

(declare-fun bm!152826 () Bool)

(assert (=> bm!152826 (= call!152828 (firstChars!80 (ite c!395655 (regOne!15139 (ite c!395510 (reg!7642 r!26136) (ite c!395509 (regTwo!15139 r!26136) (regOne!15138 r!26136)))) (regTwo!15138 (ite c!395510 (reg!7642 r!26136) (ite c!395509 (regTwo!15139 r!26136) (regOne!15138 r!26136)))))))))

(declare-fun bm!152827 () Bool)

(assert (=> bm!152827 (= call!152831 (firstChars!80 (ite c!395656 (reg!7642 (ite c!395510 (reg!7642 r!26136) (ite c!395509 (regTwo!15139 r!26136) (regOne!15138 r!26136)))) (ite c!395655 (regTwo!15139 (ite c!395510 (reg!7642 r!26136) (ite c!395509 (regTwo!15139 r!26136) (regOne!15138 r!26136)))) (regOne!15138 (ite c!395510 (reg!7642 r!26136) (ite c!395509 (regTwo!15139 r!26136) (regOne!15138 r!26136))))))))))

(declare-fun b!2489310 () Bool)

(assert (=> b!2489310 (= e!1580467 call!152829)))

(assert (= (and d!714246 c!395657) b!2489304))

(assert (= (and d!714246 (not c!395657)) b!2489302))

(assert (= (and b!2489302 c!395658) b!2489309))

(assert (= (and b!2489302 (not c!395658)) b!2489301))

(assert (= (and b!2489301 c!395656) b!2489308))

(assert (= (and b!2489301 (not c!395656)) b!2489306))

(assert (= (and b!2489306 c!395655) b!2489307))

(assert (= (and b!2489306 (not c!395655)) b!2489305))

(assert (= (and b!2489305 c!395654) b!2489303))

(assert (= (and b!2489305 (not c!395654)) b!2489310))

(assert (= (or b!2489303 b!2489310) bm!152824))

(assert (= (or b!2489307 bm!152824) bm!152825))

(assert (= (or b!2489307 b!2489303) bm!152826))

(assert (= (or b!2489307 b!2489303) bm!152823))

(assert (= (or b!2489308 bm!152825) bm!152827))

(declare-fun m!2857419 () Bool)

(assert (=> bm!152823 m!2857419))

(declare-fun m!2857421 () Bool)

(assert (=> b!2489305 m!2857421))

(declare-fun m!2857423 () Bool)

(assert (=> bm!152826 m!2857423))

(declare-fun m!2857425 () Bool)

(assert (=> bm!152827 m!2857425))

(assert (=> bm!152705 d!714246))

(declare-fun call!152839 () Regex!7313)

(declare-fun b!2489323 () Bool)

(declare-fun call!152837 () Regex!7313)

(declare-fun e!1580475 () Regex!7313)

(assert (=> b!2489323 (= e!1580475 (Union!7313 (Concat!12009 call!152837 (regTwo!15138 (ite c!395566 (regOne!15139 r!26136) (regOne!15138 r!26136)))) call!152839))))

(declare-fun b!2489324 () Bool)

(declare-fun e!1580476 () Regex!7313)

(declare-fun e!1580478 () Regex!7313)

(assert (=> b!2489324 (= e!1580476 e!1580478)))

(declare-fun c!395668 () Bool)

(assert (=> b!2489324 (= c!395668 ((_ is ElementMatch!7313) (ite c!395566 (regOne!15139 r!26136) (regOne!15138 r!26136))))))

(declare-fun bm!152832 () Bool)

(declare-fun call!152838 () Regex!7313)

(declare-fun call!152840 () Regex!7313)

(assert (=> bm!152832 (= call!152838 call!152840)))

(declare-fun b!2489325 () Bool)

(declare-fun c!395666 () Bool)

(assert (=> b!2489325 (= c!395666 (nullable!2230 (regOne!15138 (ite c!395566 (regOne!15139 r!26136) (regOne!15138 r!26136)))))))

(declare-fun e!1580477 () Regex!7313)

(assert (=> b!2489325 (= e!1580477 e!1580475)))

(declare-fun b!2489326 () Bool)

(assert (=> b!2489326 (= e!1580476 EmptyLang!7313)))

(declare-fun c!395665 () Bool)

(declare-fun bm!152833 () Bool)

(declare-fun c!395667 () Bool)

(assert (=> bm!152833 (= call!152840 (derivativeStep!1882 (ite c!395665 (regTwo!15139 (ite c!395566 (regOne!15139 r!26136) (regOne!15138 r!26136))) (ite c!395667 (reg!7642 (ite c!395566 (regOne!15139 r!26136) (regOne!15138 r!26136))) (ite c!395666 (regTwo!15138 (ite c!395566 (regOne!15139 r!26136) (regOne!15138 r!26136))) (regOne!15138 (ite c!395566 (regOne!15139 r!26136) (regOne!15138 r!26136)))))) c!13476))))

(declare-fun b!2489327 () Bool)

(declare-fun e!1580479 () Regex!7313)

(assert (=> b!2489327 (= e!1580479 e!1580477)))

(assert (=> b!2489327 (= c!395667 ((_ is Star!7313) (ite c!395566 (regOne!15139 r!26136) (regOne!15138 r!26136))))))

(declare-fun b!2489328 () Bool)

(assert (=> b!2489328 (= c!395665 ((_ is Union!7313) (ite c!395566 (regOne!15139 r!26136) (regOne!15138 r!26136))))))

(assert (=> b!2489328 (= e!1580478 e!1580479)))

(declare-fun b!2489329 () Bool)

(assert (=> b!2489329 (= e!1580475 (Union!7313 (Concat!12009 call!152839 (regTwo!15138 (ite c!395566 (regOne!15139 r!26136) (regOne!15138 r!26136)))) EmptyLang!7313))))

(declare-fun b!2489330 () Bool)

(assert (=> b!2489330 (= e!1580479 (Union!7313 call!152837 call!152840))))

(declare-fun d!714252 () Bool)

(declare-fun lt!893823 () Regex!7313)

(assert (=> d!714252 (validRegex!2939 lt!893823)))

(assert (=> d!714252 (= lt!893823 e!1580476)))

(declare-fun c!395669 () Bool)

(assert (=> d!714252 (= c!395669 (or ((_ is EmptyExpr!7313) (ite c!395566 (regOne!15139 r!26136) (regOne!15138 r!26136))) ((_ is EmptyLang!7313) (ite c!395566 (regOne!15139 r!26136) (regOne!15138 r!26136)))))))

(assert (=> d!714252 (validRegex!2939 (ite c!395566 (regOne!15139 r!26136) (regOne!15138 r!26136)))))

(assert (=> d!714252 (= (derivativeStep!1882 (ite c!395566 (regOne!15139 r!26136) (regOne!15138 r!26136)) c!13476) lt!893823)))

(declare-fun bm!152834 () Bool)

(assert (=> bm!152834 (= call!152837 (derivativeStep!1882 (ite c!395665 (regOne!15139 (ite c!395566 (regOne!15139 r!26136) (regOne!15138 r!26136))) (regOne!15138 (ite c!395566 (regOne!15139 r!26136) (regOne!15138 r!26136)))) c!13476))))

(declare-fun b!2489331 () Bool)

(assert (=> b!2489331 (= e!1580478 (ite (= c!13476 (c!395479 (ite c!395566 (regOne!15139 r!26136) (regOne!15138 r!26136)))) EmptyExpr!7313 EmptyLang!7313))))

(declare-fun bm!152835 () Bool)

(assert (=> bm!152835 (= call!152839 call!152838)))

(declare-fun b!2489332 () Bool)

(assert (=> b!2489332 (= e!1580477 (Concat!12009 call!152838 (ite c!395566 (regOne!15139 r!26136) (regOne!15138 r!26136))))))

(assert (= (and d!714252 c!395669) b!2489326))

(assert (= (and d!714252 (not c!395669)) b!2489324))

(assert (= (and b!2489324 c!395668) b!2489331))

(assert (= (and b!2489324 (not c!395668)) b!2489328))

(assert (= (and b!2489328 c!395665) b!2489330))

(assert (= (and b!2489328 (not c!395665)) b!2489327))

(assert (= (and b!2489327 c!395667) b!2489332))

(assert (= (and b!2489327 (not c!395667)) b!2489325))

(assert (= (and b!2489325 c!395666) b!2489323))

(assert (= (and b!2489325 (not c!395666)) b!2489329))

(assert (= (or b!2489323 b!2489329) bm!152835))

(assert (= (or b!2489332 bm!152835) bm!152832))

(assert (= (or b!2489330 b!2489323) bm!152834))

(assert (= (or b!2489330 bm!152832) bm!152833))

(declare-fun m!2857433 () Bool)

(assert (=> b!2489325 m!2857433))

(declare-fun m!2857435 () Bool)

(assert (=> bm!152833 m!2857435))

(declare-fun m!2857437 () Bool)

(assert (=> d!714252 m!2857437))

(declare-fun m!2857441 () Bool)

(assert (=> d!714252 m!2857441))

(declare-fun m!2857445 () Bool)

(assert (=> bm!152834 m!2857445))

(assert (=> bm!152753 d!714252))

(assert (=> bm!152758 d!714218))

(declare-fun call!152846 () List!29380)

(declare-fun call!152845 () List!29380)

(declare-fun c!395673 () Bool)

(declare-fun call!152844 () List!29380)

(declare-fun bm!152839 () Bool)

(declare-fun call!152848 () List!29380)

(assert (=> bm!152839 (= call!152848 (++!7154 (ite c!395673 call!152844 call!152845) (ite c!395673 call!152846 call!152844)))))

(declare-fun bm!152840 () Bool)

(assert (=> bm!152840 (= call!152845 call!152846)))

(declare-fun b!2489342 () Bool)

(declare-fun c!395674 () Bool)

(assert (=> b!2489342 (= c!395674 ((_ is Star!7313) (ite c!395509 (regOne!15139 r!26136) (regTwo!15138 r!26136))))))

(declare-fun e!1580491 () List!29380)

(declare-fun e!1580487 () List!29380)

(assert (=> b!2489342 (= e!1580491 e!1580487)))

(declare-fun b!2489343 () Bool)

(declare-fun e!1580488 () List!29380)

(assert (=> b!2489343 (= e!1580488 e!1580491)))

(declare-fun c!395676 () Bool)

(assert (=> b!2489343 (= c!395676 ((_ is ElementMatch!7313) (ite c!395509 (regOne!15139 r!26136) (regTwo!15138 r!26136))))))

(declare-fun d!714256 () Bool)

(declare-fun c!395675 () Bool)

(assert (=> d!714256 (= c!395675 (or ((_ is EmptyExpr!7313) (ite c!395509 (regOne!15139 r!26136) (regTwo!15138 r!26136))) ((_ is EmptyLang!7313) (ite c!395509 (regOne!15139 r!26136) (regTwo!15138 r!26136)))))))

(assert (=> d!714256 (= (firstChars!80 (ite c!395509 (regOne!15139 r!26136) (regTwo!15138 r!26136))) e!1580488)))

(declare-fun b!2489344 () Bool)

(declare-fun e!1580490 () List!29380)

(assert (=> b!2489344 (= e!1580490 call!152848)))

(declare-fun b!2489345 () Bool)

(assert (=> b!2489345 (= e!1580488 Nil!29280)))

(declare-fun b!2489346 () Bool)

(declare-fun c!395672 () Bool)

(assert (=> b!2489346 (= c!395672 (nullable!2230 (regOne!15138 (ite c!395509 (regOne!15139 r!26136) (regTwo!15138 r!26136)))))))

(declare-fun e!1580489 () List!29380)

(assert (=> b!2489346 (= e!1580489 e!1580490)))

(declare-fun b!2489347 () Bool)

(assert (=> b!2489347 (= e!1580487 e!1580489)))

(assert (=> b!2489347 (= c!395673 ((_ is Union!7313) (ite c!395509 (regOne!15139 r!26136) (regTwo!15138 r!26136))))))

(declare-fun b!2489348 () Bool)

(assert (=> b!2489348 (= e!1580489 call!152848)))

(declare-fun b!2489349 () Bool)

(declare-fun call!152847 () List!29380)

(assert (=> b!2489349 (= e!1580487 call!152847)))

(declare-fun b!2489350 () Bool)

(assert (=> b!2489350 (= e!1580491 (Cons!29280 (c!395479 (ite c!395509 (regOne!15139 r!26136) (regTwo!15138 r!26136))) Nil!29280))))

(declare-fun bm!152841 () Bool)

(assert (=> bm!152841 (= call!152846 call!152847)))

(declare-fun bm!152842 () Bool)

(assert (=> bm!152842 (= call!152844 (firstChars!80 (ite c!395673 (regOne!15139 (ite c!395509 (regOne!15139 r!26136) (regTwo!15138 r!26136))) (regTwo!15138 (ite c!395509 (regOne!15139 r!26136) (regTwo!15138 r!26136))))))))

(declare-fun bm!152843 () Bool)

(assert (=> bm!152843 (= call!152847 (firstChars!80 (ite c!395674 (reg!7642 (ite c!395509 (regOne!15139 r!26136) (regTwo!15138 r!26136))) (ite c!395673 (regTwo!15139 (ite c!395509 (regOne!15139 r!26136) (regTwo!15138 r!26136))) (regOne!15138 (ite c!395509 (regOne!15139 r!26136) (regTwo!15138 r!26136)))))))))

(declare-fun b!2489351 () Bool)

(assert (=> b!2489351 (= e!1580490 call!152845)))

(assert (= (and d!714256 c!395675) b!2489345))

(assert (= (and d!714256 (not c!395675)) b!2489343))

(assert (= (and b!2489343 c!395676) b!2489350))

(assert (= (and b!2489343 (not c!395676)) b!2489342))

(assert (= (and b!2489342 c!395674) b!2489349))

(assert (= (and b!2489342 (not c!395674)) b!2489347))

(assert (= (and b!2489347 c!395673) b!2489348))

(assert (= (and b!2489347 (not c!395673)) b!2489346))

(assert (= (and b!2489346 c!395672) b!2489344))

(assert (= (and b!2489346 (not c!395672)) b!2489351))

(assert (= (or b!2489344 b!2489351) bm!152840))

(assert (= (or b!2489348 bm!152840) bm!152841))

(assert (= (or b!2489348 b!2489344) bm!152842))

(assert (= (or b!2489348 b!2489344) bm!152839))

(assert (= (or b!2489349 bm!152841) bm!152843))

(declare-fun m!2857449 () Bool)

(assert (=> bm!152839 m!2857449))

(declare-fun m!2857451 () Bool)

(assert (=> b!2489346 m!2857451))

(declare-fun m!2857453 () Bool)

(assert (=> bm!152842 m!2857453))

(declare-fun m!2857455 () Bool)

(assert (=> bm!152843 m!2857455))

(assert (=> bm!152704 d!714256))

(declare-fun b!2489383 () Bool)

(declare-fun e!1580516 () Bool)

(declare-fun e!1580518 () Bool)

(assert (=> b!2489383 (= e!1580516 e!1580518)))

(declare-fun res!1053704 () Bool)

(declare-fun call!152856 () Bool)

(assert (=> b!2489383 (= res!1053704 call!152856)))

(assert (=> b!2489383 (=> res!1053704 e!1580518)))

(declare-fun b!2489384 () Bool)

(declare-fun call!152857 () Bool)

(assert (=> b!2489384 (= e!1580518 call!152857)))

(declare-fun b!2489385 () Bool)

(declare-fun e!1580520 () Bool)

(declare-fun e!1580519 () Bool)

(assert (=> b!2489385 (= e!1580520 e!1580519)))

(declare-fun res!1053703 () Bool)

(assert (=> b!2489385 (=> res!1053703 e!1580519)))

(assert (=> b!2489385 (= res!1053703 ((_ is Star!7313) (derivative!10 (derivativeStep!1882 r!26136 c!13476) (tail!3950 s!14955))))))

(declare-fun b!2489386 () Bool)

(declare-fun e!1580517 () Bool)

(assert (=> b!2489386 (= e!1580517 call!152856)))

(declare-fun d!714262 () Bool)

(declare-fun res!1053707 () Bool)

(declare-fun e!1580515 () Bool)

(assert (=> d!714262 (=> res!1053707 e!1580515)))

(assert (=> d!714262 (= res!1053707 ((_ is EmptyExpr!7313) (derivative!10 (derivativeStep!1882 r!26136 c!13476) (tail!3950 s!14955))))))

(assert (=> d!714262 (= (nullableFct!543 (derivative!10 (derivativeStep!1882 r!26136 c!13476) (tail!3950 s!14955))) e!1580515)))

(declare-fun bm!152851 () Bool)

(declare-fun c!395683 () Bool)

(assert (=> bm!152851 (= call!152857 (nullable!2230 (ite c!395683 (regTwo!15139 (derivative!10 (derivativeStep!1882 r!26136 c!13476) (tail!3950 s!14955))) (regOne!15138 (derivative!10 (derivativeStep!1882 r!26136 c!13476) (tail!3950 s!14955))))))))

(declare-fun bm!152852 () Bool)

(assert (=> bm!152852 (= call!152856 (nullable!2230 (ite c!395683 (regOne!15139 (derivative!10 (derivativeStep!1882 r!26136 c!13476) (tail!3950 s!14955))) (regTwo!15138 (derivative!10 (derivativeStep!1882 r!26136 c!13476) (tail!3950 s!14955))))))))

(declare-fun b!2489387 () Bool)

(assert (=> b!2489387 (= e!1580519 e!1580516)))

(assert (=> b!2489387 (= c!395683 ((_ is Union!7313) (derivative!10 (derivativeStep!1882 r!26136 c!13476) (tail!3950 s!14955))))))

(declare-fun b!2489388 () Bool)

(assert (=> b!2489388 (= e!1580515 e!1580520)))

(declare-fun res!1053706 () Bool)

(assert (=> b!2489388 (=> (not res!1053706) (not e!1580520))))

(assert (=> b!2489388 (= res!1053706 (and (not ((_ is EmptyLang!7313) (derivative!10 (derivativeStep!1882 r!26136 c!13476) (tail!3950 s!14955)))) (not ((_ is ElementMatch!7313) (derivative!10 (derivativeStep!1882 r!26136 c!13476) (tail!3950 s!14955))))))))

(declare-fun b!2489389 () Bool)

(assert (=> b!2489389 (= e!1580516 e!1580517)))

(declare-fun res!1053705 () Bool)

(assert (=> b!2489389 (= res!1053705 call!152857)))

(assert (=> b!2489389 (=> (not res!1053705) (not e!1580517))))

(assert (= (and d!714262 (not res!1053707)) b!2489388))

(assert (= (and b!2489388 res!1053706) b!2489385))

(assert (= (and b!2489385 (not res!1053703)) b!2489387))

(assert (= (and b!2489387 c!395683) b!2489383))

(assert (= (and b!2489387 (not c!395683)) b!2489389))

(assert (= (and b!2489383 (not res!1053704)) b!2489384))

(assert (= (and b!2489389 res!1053705) b!2489386))

(assert (= (or b!2489383 b!2489386) bm!152852))

(assert (= (or b!2489384 b!2489389) bm!152851))

(declare-fun m!2857467 () Bool)

(assert (=> bm!152851 m!2857467))

(declare-fun m!2857477 () Bool)

(assert (=> bm!152852 m!2857477))

(assert (=> d!714158 d!714262))

(assert (=> b!2489016 d!714244))

(declare-fun d!714268 () Bool)

(assert (=> d!714268 (= (isEmpty!16785 (tail!3950 s!14955)) ((_ is Nil!29280) (tail!3950 s!14955)))))

(assert (=> b!2489038 d!714268))

(assert (=> b!2489038 d!714152))

(declare-fun d!714270 () Bool)

(assert (not d!714270))

(assert (=> b!2489012 d!714270))

(declare-fun d!714272 () Bool)

(assert (not d!714272))

(assert (=> b!2489012 d!714272))

(assert (=> b!2489012 d!714244))

(assert (=> b!2489012 d!714242))

(assert (=> b!2489014 d!714238))

(assert (=> b!2489014 d!714242))

(declare-fun e!1580523 () Regex!7313)

(declare-fun call!152858 () Regex!7313)

(declare-fun call!152860 () Regex!7313)

(declare-fun b!2489394 () Bool)

(assert (=> b!2489394 (= e!1580523 (Union!7313 (Concat!12009 call!152858 (regTwo!15138 (ite c!395566 (regTwo!15139 r!26136) (ite c!395568 (reg!7642 r!26136) (ite c!395567 (regTwo!15138 r!26136) (regOne!15138 r!26136)))))) call!152860))))

(declare-fun b!2489395 () Bool)

(declare-fun e!1580524 () Regex!7313)

(declare-fun e!1580526 () Regex!7313)

(assert (=> b!2489395 (= e!1580524 e!1580526)))

(declare-fun c!395688 () Bool)

(assert (=> b!2489395 (= c!395688 ((_ is ElementMatch!7313) (ite c!395566 (regTwo!15139 r!26136) (ite c!395568 (reg!7642 r!26136) (ite c!395567 (regTwo!15138 r!26136) (regOne!15138 r!26136))))))))

(declare-fun bm!152853 () Bool)

(declare-fun call!152859 () Regex!7313)

(declare-fun call!152861 () Regex!7313)

(assert (=> bm!152853 (= call!152859 call!152861)))

(declare-fun b!2489396 () Bool)

(declare-fun c!395686 () Bool)

(assert (=> b!2489396 (= c!395686 (nullable!2230 (regOne!15138 (ite c!395566 (regTwo!15139 r!26136) (ite c!395568 (reg!7642 r!26136) (ite c!395567 (regTwo!15138 r!26136) (regOne!15138 r!26136)))))))))

(declare-fun e!1580525 () Regex!7313)

(assert (=> b!2489396 (= e!1580525 e!1580523)))

(declare-fun b!2489397 () Bool)

(assert (=> b!2489397 (= e!1580524 EmptyLang!7313)))

(declare-fun c!395685 () Bool)

(declare-fun bm!152854 () Bool)

(declare-fun c!395687 () Bool)

(assert (=> bm!152854 (= call!152861 (derivativeStep!1882 (ite c!395685 (regTwo!15139 (ite c!395566 (regTwo!15139 r!26136) (ite c!395568 (reg!7642 r!26136) (ite c!395567 (regTwo!15138 r!26136) (regOne!15138 r!26136))))) (ite c!395687 (reg!7642 (ite c!395566 (regTwo!15139 r!26136) (ite c!395568 (reg!7642 r!26136) (ite c!395567 (regTwo!15138 r!26136) (regOne!15138 r!26136))))) (ite c!395686 (regTwo!15138 (ite c!395566 (regTwo!15139 r!26136) (ite c!395568 (reg!7642 r!26136) (ite c!395567 (regTwo!15138 r!26136) (regOne!15138 r!26136))))) (regOne!15138 (ite c!395566 (regTwo!15139 r!26136) (ite c!395568 (reg!7642 r!26136) (ite c!395567 (regTwo!15138 r!26136) (regOne!15138 r!26136)))))))) c!13476))))

(declare-fun b!2489398 () Bool)

(declare-fun e!1580527 () Regex!7313)

(assert (=> b!2489398 (= e!1580527 e!1580525)))

(assert (=> b!2489398 (= c!395687 ((_ is Star!7313) (ite c!395566 (regTwo!15139 r!26136) (ite c!395568 (reg!7642 r!26136) (ite c!395567 (regTwo!15138 r!26136) (regOne!15138 r!26136))))))))

(declare-fun b!2489399 () Bool)

(assert (=> b!2489399 (= c!395685 ((_ is Union!7313) (ite c!395566 (regTwo!15139 r!26136) (ite c!395568 (reg!7642 r!26136) (ite c!395567 (regTwo!15138 r!26136) (regOne!15138 r!26136))))))))

(assert (=> b!2489399 (= e!1580526 e!1580527)))

(declare-fun b!2489400 () Bool)

(assert (=> b!2489400 (= e!1580523 (Union!7313 (Concat!12009 call!152860 (regTwo!15138 (ite c!395566 (regTwo!15139 r!26136) (ite c!395568 (reg!7642 r!26136) (ite c!395567 (regTwo!15138 r!26136) (regOne!15138 r!26136)))))) EmptyLang!7313))))

(declare-fun b!2489401 () Bool)

(assert (=> b!2489401 (= e!1580527 (Union!7313 call!152858 call!152861))))

(declare-fun d!714274 () Bool)

(declare-fun lt!893827 () Regex!7313)

(assert (=> d!714274 (validRegex!2939 lt!893827)))

(assert (=> d!714274 (= lt!893827 e!1580524)))

(declare-fun c!395689 () Bool)

(assert (=> d!714274 (= c!395689 (or ((_ is EmptyExpr!7313) (ite c!395566 (regTwo!15139 r!26136) (ite c!395568 (reg!7642 r!26136) (ite c!395567 (regTwo!15138 r!26136) (regOne!15138 r!26136))))) ((_ is EmptyLang!7313) (ite c!395566 (regTwo!15139 r!26136) (ite c!395568 (reg!7642 r!26136) (ite c!395567 (regTwo!15138 r!26136) (regOne!15138 r!26136)))))))))

(assert (=> d!714274 (validRegex!2939 (ite c!395566 (regTwo!15139 r!26136) (ite c!395568 (reg!7642 r!26136) (ite c!395567 (regTwo!15138 r!26136) (regOne!15138 r!26136)))))))

(assert (=> d!714274 (= (derivativeStep!1882 (ite c!395566 (regTwo!15139 r!26136) (ite c!395568 (reg!7642 r!26136) (ite c!395567 (regTwo!15138 r!26136) (regOne!15138 r!26136)))) c!13476) lt!893827)))

(declare-fun bm!152855 () Bool)

(assert (=> bm!152855 (= call!152858 (derivativeStep!1882 (ite c!395685 (regOne!15139 (ite c!395566 (regTwo!15139 r!26136) (ite c!395568 (reg!7642 r!26136) (ite c!395567 (regTwo!15138 r!26136) (regOne!15138 r!26136))))) (regOne!15138 (ite c!395566 (regTwo!15139 r!26136) (ite c!395568 (reg!7642 r!26136) (ite c!395567 (regTwo!15138 r!26136) (regOne!15138 r!26136)))))) c!13476))))

(declare-fun b!2489402 () Bool)

(assert (=> b!2489402 (= e!1580526 (ite (= c!13476 (c!395479 (ite c!395566 (regTwo!15139 r!26136) (ite c!395568 (reg!7642 r!26136) (ite c!395567 (regTwo!15138 r!26136) (regOne!15138 r!26136)))))) EmptyExpr!7313 EmptyLang!7313))))

(declare-fun bm!152856 () Bool)

(assert (=> bm!152856 (= call!152860 call!152859)))

(declare-fun b!2489403 () Bool)

(assert (=> b!2489403 (= e!1580525 (Concat!12009 call!152859 (ite c!395566 (regTwo!15139 r!26136) (ite c!395568 (reg!7642 r!26136) (ite c!395567 (regTwo!15138 r!26136) (regOne!15138 r!26136))))))))

(assert (= (and d!714274 c!395689) b!2489397))

(assert (= (and d!714274 (not c!395689)) b!2489395))

(assert (= (and b!2489395 c!395688) b!2489402))

(assert (= (and b!2489395 (not c!395688)) b!2489399))

(assert (= (and b!2489399 c!395685) b!2489401))

(assert (= (and b!2489399 (not c!395685)) b!2489398))

(assert (= (and b!2489398 c!395687) b!2489403))

(assert (= (and b!2489398 (not c!395687)) b!2489396))

(assert (= (and b!2489396 c!395686) b!2489394))

(assert (= (and b!2489396 (not c!395686)) b!2489400))

(assert (= (or b!2489394 b!2489400) bm!152856))

(assert (= (or b!2489403 bm!152856) bm!152853))

(assert (= (or b!2489401 b!2489394) bm!152855))

(assert (= (or b!2489401 bm!152853) bm!152854))

(declare-fun m!2857485 () Bool)

(assert (=> b!2489396 m!2857485))

(declare-fun m!2857491 () Bool)

(assert (=> bm!152854 m!2857491))

(declare-fun m!2857493 () Bool)

(assert (=> d!714274 m!2857493))

(declare-fun m!2857495 () Bool)

(assert (=> d!714274 m!2857495))

(declare-fun m!2857497 () Bool)

(assert (=> bm!152855 m!2857497))

(assert (=> bm!152752 d!714274))

(declare-fun d!714280 () Bool)

(assert (=> d!714280 (= (nullable!2230 (reg!7642 r!26136)) (nullableFct!543 (reg!7642 r!26136)))))

(declare-fun bs!468334 () Bool)

(assert (= bs!468334 d!714280))

(declare-fun m!2857499 () Bool)

(assert (=> bs!468334 m!2857499))

(assert (=> b!2488871 d!714280))

(declare-fun d!714282 () Bool)

(assert (=> d!714282 (= (nullable!2230 r!26136) (nullableFct!543 r!26136))))

(declare-fun bs!468335 () Bool)

(assert (= bs!468335 d!714282))

(declare-fun m!2857501 () Bool)

(assert (=> bs!468335 m!2857501))

(assert (=> b!2489036 d!714282))

(declare-fun d!714284 () Bool)

(declare-fun lt!893829 () Bool)

(assert (=> d!714284 (= lt!893829 (select (content!3990 (t!211079 s!14955)) c!13476))))

(declare-fun e!1580539 () Bool)

(assert (=> d!714284 (= lt!893829 e!1580539)))

(declare-fun res!1053713 () Bool)

(assert (=> d!714284 (=> (not res!1053713) (not e!1580539))))

(assert (=> d!714284 (= res!1053713 ((_ is Cons!29280) (t!211079 s!14955)))))

(assert (=> d!714284 (= (contains!5289 (t!211079 s!14955) c!13476) lt!893829)))

(declare-fun b!2489422 () Bool)

(declare-fun e!1580538 () Bool)

(assert (=> b!2489422 (= e!1580539 e!1580538)))

(declare-fun res!1053712 () Bool)

(assert (=> b!2489422 (=> res!1053712 e!1580538)))

(assert (=> b!2489422 (= res!1053712 (= (h!34700 (t!211079 s!14955)) c!13476))))

(declare-fun b!2489423 () Bool)

(assert (=> b!2489423 (= e!1580538 (contains!5289 (t!211079 (t!211079 s!14955)) c!13476))))

(assert (= (and d!714284 res!1053713) b!2489422))

(assert (= (and b!2489422 (not res!1053712)) b!2489423))

(assert (=> d!714284 m!2857329))

(declare-fun m!2857511 () Bool)

(assert (=> d!714284 m!2857511))

(declare-fun m!2857513 () Bool)

(assert (=> b!2489423 m!2857513))

(assert (=> b!2488772 d!714284))

(declare-fun b!2489426 () Bool)

(declare-fun e!1580541 () Bool)

(declare-fun call!152869 () Bool)

(assert (=> b!2489426 (= e!1580541 call!152869)))

(declare-fun b!2489427 () Bool)

(declare-fun e!1580546 () Bool)

(declare-fun e!1580547 () Bool)

(assert (=> b!2489427 (= e!1580546 e!1580547)))

(declare-fun res!1053716 () Bool)

(assert (=> b!2489427 (=> (not res!1053716) (not e!1580547))))

(assert (=> b!2489427 (= res!1053716 call!152869)))

(declare-fun b!2489428 () Bool)

(declare-fun e!1580544 () Bool)

(declare-fun e!1580543 () Bool)

(assert (=> b!2489428 (= e!1580544 e!1580543)))

(declare-fun c!395699 () Bool)

(assert (=> b!2489428 (= c!395699 ((_ is Star!7313) lt!893795))))

(declare-fun b!2489429 () Bool)

(declare-fun e!1580542 () Bool)

(declare-fun call!152867 () Bool)

(assert (=> b!2489429 (= e!1580542 call!152867)))

(declare-fun bm!152862 () Bool)

(assert (=> bm!152862 (= call!152869 call!152867)))

(declare-fun b!2489430 () Bool)

(declare-fun res!1053714 () Bool)

(assert (=> b!2489430 (=> res!1053714 e!1580546)))

(assert (=> b!2489430 (= res!1053714 (not ((_ is Concat!12009) lt!893795)))))

(declare-fun e!1580545 () Bool)

(assert (=> b!2489430 (= e!1580545 e!1580546)))

(declare-fun bm!152863 () Bool)

(declare-fun call!152868 () Bool)

(declare-fun c!395700 () Bool)

(assert (=> bm!152863 (= call!152868 (validRegex!2939 (ite c!395700 (regOne!15139 lt!893795) (regTwo!15138 lt!893795))))))

(declare-fun b!2489431 () Bool)

(declare-fun res!1053715 () Bool)

(assert (=> b!2489431 (=> (not res!1053715) (not e!1580541))))

(assert (=> b!2489431 (= res!1053715 call!152868)))

(assert (=> b!2489431 (= e!1580545 e!1580541)))

(declare-fun b!2489432 () Bool)

(assert (=> b!2489432 (= e!1580543 e!1580545)))

(assert (=> b!2489432 (= c!395700 ((_ is Union!7313) lt!893795))))

(declare-fun d!714288 () Bool)

(declare-fun res!1053717 () Bool)

(assert (=> d!714288 (=> res!1053717 e!1580544)))

(assert (=> d!714288 (= res!1053717 ((_ is ElementMatch!7313) lt!893795))))

(assert (=> d!714288 (= (validRegex!2939 lt!893795) e!1580544)))

(declare-fun bm!152864 () Bool)

(assert (=> bm!152864 (= call!152867 (validRegex!2939 (ite c!395699 (reg!7642 lt!893795) (ite c!395700 (regTwo!15139 lt!893795) (regOne!15138 lt!893795)))))))

(declare-fun b!2489433 () Bool)

(assert (=> b!2489433 (= e!1580547 call!152868)))

(declare-fun b!2489434 () Bool)

(assert (=> b!2489434 (= e!1580543 e!1580542)))

(declare-fun res!1053718 () Bool)

(assert (=> b!2489434 (= res!1053718 (not (nullable!2230 (reg!7642 lt!893795))))))

(assert (=> b!2489434 (=> (not res!1053718) (not e!1580542))))

(assert (= (and d!714288 (not res!1053717)) b!2489428))

(assert (= (and b!2489428 c!395699) b!2489434))

(assert (= (and b!2489428 (not c!395699)) b!2489432))

(assert (= (and b!2489434 res!1053718) b!2489429))

(assert (= (and b!2489432 c!395700) b!2489431))

(assert (= (and b!2489432 (not c!395700)) b!2489430))

(assert (= (and b!2489431 res!1053715) b!2489426))

(assert (= (and b!2489430 (not res!1053714)) b!2489427))

(assert (= (and b!2489427 res!1053716) b!2489433))

(assert (= (or b!2489426 b!2489427) bm!152862))

(assert (= (or b!2489431 b!2489433) bm!152863))

(assert (= (or b!2489429 bm!152862) bm!152864))

(declare-fun m!2857517 () Bool)

(assert (=> bm!152863 m!2857517))

(declare-fun m!2857519 () Bool)

(assert (=> bm!152864 m!2857519))

(declare-fun m!2857521 () Bool)

(assert (=> b!2489434 m!2857521))

(assert (=> d!714146 d!714288))

(assert (=> d!714146 d!714132))

(assert (=> b!2489032 d!714128))

(declare-fun d!714290 () Bool)

(assert (=> d!714290 (= (nullable!2230 (regOne!15138 r!26136)) (nullableFct!543 (regOne!15138 r!26136)))))

(declare-fun bs!468336 () Bool)

(assert (= bs!468336 d!714290))

(declare-fun m!2857523 () Bool)

(assert (=> bs!468336 m!2857523))

(assert (=> b!2488761 d!714290))

(declare-fun b!2489463 () Bool)

(declare-fun e!1580555 () Bool)

(declare-fun call!152872 () Bool)

(assert (=> b!2489463 (= e!1580555 call!152872)))

(declare-fun b!2489464 () Bool)

(declare-fun e!1580560 () Bool)

(declare-fun e!1580561 () Bool)

(assert (=> b!2489464 (= e!1580560 e!1580561)))

(declare-fun res!1053721 () Bool)

(assert (=> b!2489464 (=> (not res!1053721) (not e!1580561))))

(assert (=> b!2489464 (= res!1053721 call!152872)))

(declare-fun b!2489465 () Bool)

(declare-fun e!1580558 () Bool)

(declare-fun e!1580557 () Bool)

(assert (=> b!2489465 (= e!1580558 e!1580557)))

(declare-fun c!395701 () Bool)

(assert (=> b!2489465 (= c!395701 ((_ is Star!7313) (ite c!395534 (reg!7642 r!26136) (ite c!395535 (regTwo!15139 r!26136) (regOne!15138 r!26136)))))))

(declare-fun b!2489466 () Bool)

(declare-fun e!1580556 () Bool)

(declare-fun call!152870 () Bool)

(assert (=> b!2489466 (= e!1580556 call!152870)))

(declare-fun bm!152865 () Bool)

(assert (=> bm!152865 (= call!152872 call!152870)))

(declare-fun b!2489467 () Bool)

(declare-fun res!1053719 () Bool)

(assert (=> b!2489467 (=> res!1053719 e!1580560)))

(assert (=> b!2489467 (= res!1053719 (not ((_ is Concat!12009) (ite c!395534 (reg!7642 r!26136) (ite c!395535 (regTwo!15139 r!26136) (regOne!15138 r!26136))))))))

(declare-fun e!1580559 () Bool)

(assert (=> b!2489467 (= e!1580559 e!1580560)))

(declare-fun bm!152866 () Bool)

(declare-fun call!152871 () Bool)

(declare-fun c!395702 () Bool)

(assert (=> bm!152866 (= call!152871 (validRegex!2939 (ite c!395702 (regOne!15139 (ite c!395534 (reg!7642 r!26136) (ite c!395535 (regTwo!15139 r!26136) (regOne!15138 r!26136)))) (regTwo!15138 (ite c!395534 (reg!7642 r!26136) (ite c!395535 (regTwo!15139 r!26136) (regOne!15138 r!26136)))))))))

(declare-fun b!2489468 () Bool)

(declare-fun res!1053720 () Bool)

(assert (=> b!2489468 (=> (not res!1053720) (not e!1580555))))

(assert (=> b!2489468 (= res!1053720 call!152871)))

(assert (=> b!2489468 (= e!1580559 e!1580555)))

(declare-fun b!2489469 () Bool)

(assert (=> b!2489469 (= e!1580557 e!1580559)))

(assert (=> b!2489469 (= c!395702 ((_ is Union!7313) (ite c!395534 (reg!7642 r!26136) (ite c!395535 (regTwo!15139 r!26136) (regOne!15138 r!26136)))))))

(declare-fun d!714292 () Bool)

(declare-fun res!1053722 () Bool)

(assert (=> d!714292 (=> res!1053722 e!1580558)))

(assert (=> d!714292 (= res!1053722 ((_ is ElementMatch!7313) (ite c!395534 (reg!7642 r!26136) (ite c!395535 (regTwo!15139 r!26136) (regOne!15138 r!26136)))))))

(assert (=> d!714292 (= (validRegex!2939 (ite c!395534 (reg!7642 r!26136) (ite c!395535 (regTwo!15139 r!26136) (regOne!15138 r!26136)))) e!1580558)))

(declare-fun bm!152867 () Bool)

(assert (=> bm!152867 (= call!152870 (validRegex!2939 (ite c!395701 (reg!7642 (ite c!395534 (reg!7642 r!26136) (ite c!395535 (regTwo!15139 r!26136) (regOne!15138 r!26136)))) (ite c!395702 (regTwo!15139 (ite c!395534 (reg!7642 r!26136) (ite c!395535 (regTwo!15139 r!26136) (regOne!15138 r!26136)))) (regOne!15138 (ite c!395534 (reg!7642 r!26136) (ite c!395535 (regTwo!15139 r!26136) (regOne!15138 r!26136))))))))))

(declare-fun b!2489470 () Bool)

(assert (=> b!2489470 (= e!1580561 call!152871)))

(declare-fun b!2489471 () Bool)

(assert (=> b!2489471 (= e!1580557 e!1580556)))

(declare-fun res!1053723 () Bool)

(assert (=> b!2489471 (= res!1053723 (not (nullable!2230 (reg!7642 (ite c!395534 (reg!7642 r!26136) (ite c!395535 (regTwo!15139 r!26136) (regOne!15138 r!26136)))))))))

(assert (=> b!2489471 (=> (not res!1053723) (not e!1580556))))

(assert (= (and d!714292 (not res!1053722)) b!2489465))

(assert (= (and b!2489465 c!395701) b!2489471))

(assert (= (and b!2489465 (not c!395701)) b!2489469))

(assert (= (and b!2489471 res!1053723) b!2489466))

(assert (= (and b!2489469 c!395702) b!2489468))

(assert (= (and b!2489469 (not c!395702)) b!2489467))

(assert (= (and b!2489468 res!1053720) b!2489463))

(assert (= (and b!2489467 (not res!1053719)) b!2489464))

(assert (= (and b!2489464 res!1053721) b!2489470))

(assert (= (or b!2489463 b!2489464) bm!152865))

(assert (= (or b!2489468 b!2489470) bm!152866))

(assert (= (or b!2489466 bm!152865) bm!152867))

(declare-fun m!2857525 () Bool)

(assert (=> bm!152866 m!2857525))

(declare-fun m!2857527 () Bool)

(assert (=> bm!152867 m!2857527))

(declare-fun m!2857529 () Bool)

(assert (=> b!2489471 m!2857529))

(assert (=> bm!152724 d!714292))

(assert (=> b!2489034 d!714128))

(assert (=> b!2488976 d!714290))

(assert (=> bm!152757 d!714214))

(assert (=> d!714150 d!714132))

(assert (=> d!714150 d!714154))

(assert (=> d!714150 d!714160))

(declare-fun d!714294 () Bool)

(assert (=> d!714294 (= (matchR!3364 r!26136 s!14955) (matchR!3364 (derivative!10 r!26136 s!14955) Nil!29280))))

(assert (=> d!714294 true))

(declare-fun _$108!287 () Unit!42979)

(assert (=> d!714294 (= (choose!14731 r!26136 s!14955) _$108!287)))

(declare-fun bs!468337 () Bool)

(assert (= bs!468337 d!714294))

(assert (=> bs!468337 m!2857063))

(assert (=> bs!468337 m!2857047))

(assert (=> bs!468337 m!2857047))

(assert (=> bs!468337 m!2857053))

(assert (=> d!714150 d!714294))

(assert (=> d!714150 d!714146))

(assert (=> b!2489030 d!714268))

(assert (=> b!2489030 d!714152))

(declare-fun d!714296 () Bool)

(declare-fun lt!893830 () Bool)

(assert (=> d!714296 (= lt!893830 (select (content!3990 (t!211079 (firstChars!80 r!26136))) c!13476))))

(declare-fun e!1580582 () Bool)

(assert (=> d!714296 (= lt!893830 e!1580582)))

(declare-fun res!1053725 () Bool)

(assert (=> d!714296 (=> (not res!1053725) (not e!1580582))))

(assert (=> d!714296 (= res!1053725 ((_ is Cons!29280) (t!211079 (firstChars!80 r!26136))))))

(assert (=> d!714296 (= (contains!5289 (t!211079 (firstChars!80 r!26136)) c!13476) lt!893830)))

(declare-fun b!2489545 () Bool)

(declare-fun e!1580581 () Bool)

(assert (=> b!2489545 (= e!1580582 e!1580581)))

(declare-fun res!1053724 () Bool)

(assert (=> b!2489545 (=> res!1053724 e!1580581)))

(assert (=> b!2489545 (= res!1053724 (= (h!34700 (t!211079 (firstChars!80 r!26136))) c!13476))))

(declare-fun b!2489546 () Bool)

(assert (=> b!2489546 (= e!1580581 (contains!5289 (t!211079 (t!211079 (firstChars!80 r!26136))) c!13476))))

(assert (= (and d!714296 res!1053725) b!2489545))

(assert (= (and b!2489545 (not res!1053724)) b!2489546))

(declare-fun m!2857531 () Bool)

(assert (=> d!714296 m!2857531))

(declare-fun m!2857533 () Bool)

(assert (=> d!714296 m!2857533))

(declare-fun m!2857535 () Bool)

(assert (=> b!2489546 m!2857535))

(assert (=> b!2488700 d!714296))

(declare-fun b!2489547 () Bool)

(declare-fun e!1580583 () Bool)

(declare-fun call!152875 () Bool)

(assert (=> b!2489547 (= e!1580583 call!152875)))

(declare-fun b!2489548 () Bool)

(declare-fun e!1580588 () Bool)

(declare-fun e!1580589 () Bool)

(assert (=> b!2489548 (= e!1580588 e!1580589)))

(declare-fun res!1053728 () Bool)

(assert (=> b!2489548 (=> (not res!1053728) (not e!1580589))))

(assert (=> b!2489548 (= res!1053728 call!152875)))

(declare-fun b!2489549 () Bool)

(declare-fun e!1580586 () Bool)

(declare-fun e!1580585 () Bool)

(assert (=> b!2489549 (= e!1580586 e!1580585)))

(declare-fun c!395703 () Bool)

(assert (=> b!2489549 (= c!395703 ((_ is Star!7313) (ite c!395535 (regOne!15139 r!26136) (regTwo!15138 r!26136))))))

(declare-fun b!2489550 () Bool)

(declare-fun e!1580584 () Bool)

(declare-fun call!152873 () Bool)

(assert (=> b!2489550 (= e!1580584 call!152873)))

(declare-fun bm!152868 () Bool)

(assert (=> bm!152868 (= call!152875 call!152873)))

(declare-fun b!2489551 () Bool)

(declare-fun res!1053726 () Bool)

(assert (=> b!2489551 (=> res!1053726 e!1580588)))

(assert (=> b!2489551 (= res!1053726 (not ((_ is Concat!12009) (ite c!395535 (regOne!15139 r!26136) (regTwo!15138 r!26136)))))))

(declare-fun e!1580587 () Bool)

(assert (=> b!2489551 (= e!1580587 e!1580588)))

(declare-fun c!395704 () Bool)

(declare-fun bm!152869 () Bool)

(declare-fun call!152874 () Bool)

(assert (=> bm!152869 (= call!152874 (validRegex!2939 (ite c!395704 (regOne!15139 (ite c!395535 (regOne!15139 r!26136) (regTwo!15138 r!26136))) (regTwo!15138 (ite c!395535 (regOne!15139 r!26136) (regTwo!15138 r!26136))))))))

(declare-fun b!2489552 () Bool)

(declare-fun res!1053727 () Bool)

(assert (=> b!2489552 (=> (not res!1053727) (not e!1580583))))

(assert (=> b!2489552 (= res!1053727 call!152874)))

(assert (=> b!2489552 (= e!1580587 e!1580583)))

(declare-fun b!2489553 () Bool)

(assert (=> b!2489553 (= e!1580585 e!1580587)))

(assert (=> b!2489553 (= c!395704 ((_ is Union!7313) (ite c!395535 (regOne!15139 r!26136) (regTwo!15138 r!26136))))))

(declare-fun d!714298 () Bool)

(declare-fun res!1053729 () Bool)

(assert (=> d!714298 (=> res!1053729 e!1580586)))

(assert (=> d!714298 (= res!1053729 ((_ is ElementMatch!7313) (ite c!395535 (regOne!15139 r!26136) (regTwo!15138 r!26136))))))

(assert (=> d!714298 (= (validRegex!2939 (ite c!395535 (regOne!15139 r!26136) (regTwo!15138 r!26136))) e!1580586)))

(declare-fun bm!152870 () Bool)

(assert (=> bm!152870 (= call!152873 (validRegex!2939 (ite c!395703 (reg!7642 (ite c!395535 (regOne!15139 r!26136) (regTwo!15138 r!26136))) (ite c!395704 (regTwo!15139 (ite c!395535 (regOne!15139 r!26136) (regTwo!15138 r!26136))) (regOne!15138 (ite c!395535 (regOne!15139 r!26136) (regTwo!15138 r!26136)))))))))

(declare-fun b!2489554 () Bool)

(assert (=> b!2489554 (= e!1580589 call!152874)))

(declare-fun b!2489555 () Bool)

(assert (=> b!2489555 (= e!1580585 e!1580584)))

(declare-fun res!1053730 () Bool)

(assert (=> b!2489555 (= res!1053730 (not (nullable!2230 (reg!7642 (ite c!395535 (regOne!15139 r!26136) (regTwo!15138 r!26136))))))))

(assert (=> b!2489555 (=> (not res!1053730) (not e!1580584))))

(assert (= (and d!714298 (not res!1053729)) b!2489549))

(assert (= (and b!2489549 c!395703) b!2489555))

(assert (= (and b!2489549 (not c!395703)) b!2489553))

(assert (= (and b!2489555 res!1053730) b!2489550))

(assert (= (and b!2489553 c!395704) b!2489552))

(assert (= (and b!2489553 (not c!395704)) b!2489551))

(assert (= (and b!2489552 res!1053727) b!2489547))

(assert (= (and b!2489551 (not res!1053726)) b!2489548))

(assert (= (and b!2489548 res!1053728) b!2489554))

(assert (= (or b!2489547 b!2489548) bm!152868))

(assert (= (or b!2489552 b!2489554) bm!152869))

(assert (= (or b!2489550 bm!152868) bm!152870))

(declare-fun m!2857537 () Bool)

(assert (=> bm!152869 m!2857537))

(declare-fun m!2857539 () Bool)

(assert (=> bm!152870 m!2857539))

(declare-fun m!2857541 () Bool)

(assert (=> b!2489555 m!2857541))

(assert (=> bm!152723 d!714298))

(declare-fun d!714300 () Bool)

(declare-fun c!395705 () Bool)

(assert (=> d!714300 (= c!395705 ((_ is Nil!29280) (firstChars!80 r!26136)))))

(declare-fun e!1580590 () (InoxSet C!14784))

(assert (=> d!714300 (= (content!3990 (firstChars!80 r!26136)) e!1580590)))

(declare-fun b!2489556 () Bool)

(assert (=> b!2489556 (= e!1580590 ((as const (Array C!14784 Bool)) false))))

(declare-fun b!2489557 () Bool)

(assert (=> b!2489557 (= e!1580590 ((_ map or) (store ((as const (Array C!14784 Bool)) false) (h!34700 (firstChars!80 r!26136)) true) (content!3990 (t!211079 (firstChars!80 r!26136)))))))

(assert (= (and d!714300 c!395705) b!2489556))

(assert (= (and d!714300 (not c!395705)) b!2489557))

(declare-fun m!2857543 () Bool)

(assert (=> b!2489557 m!2857543))

(assert (=> b!2489557 m!2857531))

(assert (=> d!714110 d!714300))

(declare-fun d!714302 () Bool)

(declare-fun lt!893831 () Regex!7313)

(assert (=> d!714302 (validRegex!2939 lt!893831)))

(declare-fun e!1580591 () Regex!7313)

(assert (=> d!714302 (= lt!893831 e!1580591)))

(declare-fun c!395706 () Bool)

(assert (=> d!714302 (= c!395706 ((_ is Cons!29280) (t!211079 (tail!3950 s!14955))))))

(assert (=> d!714302 (validRegex!2939 (derivativeStep!1882 (derivativeStep!1882 r!26136 c!13476) (h!34700 (tail!3950 s!14955))))))

(assert (=> d!714302 (= (derivative!10 (derivativeStep!1882 (derivativeStep!1882 r!26136 c!13476) (h!34700 (tail!3950 s!14955))) (t!211079 (tail!3950 s!14955))) lt!893831)))

(declare-fun b!2489558 () Bool)

(assert (=> b!2489558 (= e!1580591 (derivative!10 (derivativeStep!1882 (derivativeStep!1882 (derivativeStep!1882 r!26136 c!13476) (h!34700 (tail!3950 s!14955))) (h!34700 (t!211079 (tail!3950 s!14955)))) (t!211079 (t!211079 (tail!3950 s!14955)))))))

(declare-fun b!2489559 () Bool)

(assert (=> b!2489559 (= e!1580591 (derivativeStep!1882 (derivativeStep!1882 r!26136 c!13476) (h!34700 (tail!3950 s!14955))))))

(assert (= (and d!714302 c!395706) b!2489558))

(assert (= (and d!714302 (not c!395706)) b!2489559))

(declare-fun m!2857545 () Bool)

(assert (=> d!714302 m!2857545))

(assert (=> d!714302 m!2857205))

(declare-fun m!2857547 () Bool)

(assert (=> d!714302 m!2857547))

(assert (=> b!2489558 m!2857205))

(declare-fun m!2857549 () Bool)

(assert (=> b!2489558 m!2857549))

(assert (=> b!2489558 m!2857549))

(declare-fun m!2857551 () Bool)

(assert (=> b!2489558 m!2857551))

(assert (=> b!2489026 d!714302))

(declare-fun call!152876 () Regex!7313)

(declare-fun call!152878 () Regex!7313)

(declare-fun e!1580592 () Regex!7313)

(declare-fun b!2489560 () Bool)

(assert (=> b!2489560 (= e!1580592 (Union!7313 (Concat!12009 call!152876 (regTwo!15138 (derivativeStep!1882 r!26136 c!13476))) call!152878))))

(declare-fun b!2489561 () Bool)

(declare-fun e!1580593 () Regex!7313)

(declare-fun e!1580595 () Regex!7313)

(assert (=> b!2489561 (= e!1580593 e!1580595)))

(declare-fun c!395710 () Bool)

(assert (=> b!2489561 (= c!395710 ((_ is ElementMatch!7313) (derivativeStep!1882 r!26136 c!13476)))))

(declare-fun bm!152871 () Bool)

(declare-fun call!152877 () Regex!7313)

(declare-fun call!152879 () Regex!7313)

(assert (=> bm!152871 (= call!152877 call!152879)))

(declare-fun b!2489562 () Bool)

(declare-fun c!395708 () Bool)

(assert (=> b!2489562 (= c!395708 (nullable!2230 (regOne!15138 (derivativeStep!1882 r!26136 c!13476))))))

(declare-fun e!1580594 () Regex!7313)

(assert (=> b!2489562 (= e!1580594 e!1580592)))

(declare-fun b!2489563 () Bool)

(assert (=> b!2489563 (= e!1580593 EmptyLang!7313)))

(declare-fun c!395709 () Bool)

(declare-fun bm!152872 () Bool)

(declare-fun c!395707 () Bool)

(assert (=> bm!152872 (= call!152879 (derivativeStep!1882 (ite c!395707 (regTwo!15139 (derivativeStep!1882 r!26136 c!13476)) (ite c!395709 (reg!7642 (derivativeStep!1882 r!26136 c!13476)) (ite c!395708 (regTwo!15138 (derivativeStep!1882 r!26136 c!13476)) (regOne!15138 (derivativeStep!1882 r!26136 c!13476))))) (h!34700 (tail!3950 s!14955))))))

(declare-fun b!2489564 () Bool)

(declare-fun e!1580596 () Regex!7313)

(assert (=> b!2489564 (= e!1580596 e!1580594)))

(assert (=> b!2489564 (= c!395709 ((_ is Star!7313) (derivativeStep!1882 r!26136 c!13476)))))

(declare-fun b!2489565 () Bool)

(assert (=> b!2489565 (= c!395707 ((_ is Union!7313) (derivativeStep!1882 r!26136 c!13476)))))

(assert (=> b!2489565 (= e!1580595 e!1580596)))

(declare-fun b!2489566 () Bool)

(assert (=> b!2489566 (= e!1580592 (Union!7313 (Concat!12009 call!152878 (regTwo!15138 (derivativeStep!1882 r!26136 c!13476))) EmptyLang!7313))))

(declare-fun b!2489567 () Bool)

(assert (=> b!2489567 (= e!1580596 (Union!7313 call!152876 call!152879))))

(declare-fun d!714304 () Bool)

(declare-fun lt!893832 () Regex!7313)

(assert (=> d!714304 (validRegex!2939 lt!893832)))

(assert (=> d!714304 (= lt!893832 e!1580593)))

(declare-fun c!395711 () Bool)

(assert (=> d!714304 (= c!395711 (or ((_ is EmptyExpr!7313) (derivativeStep!1882 r!26136 c!13476)) ((_ is EmptyLang!7313) (derivativeStep!1882 r!26136 c!13476))))))

(assert (=> d!714304 (validRegex!2939 (derivativeStep!1882 r!26136 c!13476))))

(assert (=> d!714304 (= (derivativeStep!1882 (derivativeStep!1882 r!26136 c!13476) (h!34700 (tail!3950 s!14955))) lt!893832)))

(declare-fun bm!152873 () Bool)

(assert (=> bm!152873 (= call!152876 (derivativeStep!1882 (ite c!395707 (regOne!15139 (derivativeStep!1882 r!26136 c!13476)) (regOne!15138 (derivativeStep!1882 r!26136 c!13476))) (h!34700 (tail!3950 s!14955))))))

(declare-fun b!2489568 () Bool)

(assert (=> b!2489568 (= e!1580595 (ite (= (h!34700 (tail!3950 s!14955)) (c!395479 (derivativeStep!1882 r!26136 c!13476))) EmptyExpr!7313 EmptyLang!7313))))

(declare-fun bm!152874 () Bool)

(assert (=> bm!152874 (= call!152878 call!152877)))

(declare-fun b!2489569 () Bool)

(assert (=> b!2489569 (= e!1580594 (Concat!12009 call!152877 (derivativeStep!1882 r!26136 c!13476)))))

(assert (= (and d!714304 c!395711) b!2489563))

(assert (= (and d!714304 (not c!395711)) b!2489561))

(assert (= (and b!2489561 c!395710) b!2489568))

(assert (= (and b!2489561 (not c!395710)) b!2489565))

(assert (= (and b!2489565 c!395707) b!2489567))

(assert (= (and b!2489565 (not c!395707)) b!2489564))

(assert (= (and b!2489564 c!395709) b!2489569))

(assert (= (and b!2489564 (not c!395709)) b!2489562))

(assert (= (and b!2489562 c!395708) b!2489560))

(assert (= (and b!2489562 (not c!395708)) b!2489566))

(assert (= (or b!2489560 b!2489566) bm!152874))

(assert (= (or b!2489569 bm!152874) bm!152871))

(assert (= (or b!2489567 b!2489560) bm!152873))

(assert (= (or b!2489567 bm!152871) bm!152872))

(declare-fun m!2857553 () Bool)

(assert (=> b!2489562 m!2857553))

(declare-fun m!2857555 () Bool)

(assert (=> bm!152872 m!2857555))

(declare-fun m!2857557 () Bool)

(assert (=> d!714304 m!2857557))

(assert (=> d!714304 m!2857055))

(assert (=> d!714304 m!2857203))

(declare-fun m!2857559 () Bool)

(assert (=> bm!152873 m!2857559))

(assert (=> b!2489026 d!714304))

(declare-fun b!2489573 () Bool)

(declare-fun e!1580597 () Bool)

(declare-fun tp!796913 () Bool)

(declare-fun tp!796912 () Bool)

(assert (=> b!2489573 (= e!1580597 (and tp!796913 tp!796912))))

(declare-fun b!2489570 () Bool)

(assert (=> b!2489570 (= e!1580597 tp_is_empty!12481)))

(declare-fun b!2489572 () Bool)

(declare-fun tp!796910 () Bool)

(assert (=> b!2489572 (= e!1580597 tp!796910)))

(declare-fun b!2489571 () Bool)

(declare-fun tp!796909 () Bool)

(declare-fun tp!796911 () Bool)

(assert (=> b!2489571 (= e!1580597 (and tp!796909 tp!796911))))

(assert (=> b!2489059 (= tp!796759 e!1580597)))

(assert (= (and b!2489059 ((_ is ElementMatch!7313) (reg!7642 (regOne!15139 r!26136)))) b!2489570))

(assert (= (and b!2489059 ((_ is Concat!12009) (reg!7642 (regOne!15139 r!26136)))) b!2489571))

(assert (= (and b!2489059 ((_ is Star!7313) (reg!7642 (regOne!15139 r!26136)))) b!2489572))

(assert (= (and b!2489059 ((_ is Union!7313) (reg!7642 (regOne!15139 r!26136)))) b!2489573))

(declare-fun b!2489577 () Bool)

(declare-fun e!1580598 () Bool)

(declare-fun tp!796918 () Bool)

(declare-fun tp!796917 () Bool)

(assert (=> b!2489577 (= e!1580598 (and tp!796918 tp!796917))))

(declare-fun b!2489574 () Bool)

(assert (=> b!2489574 (= e!1580598 tp_is_empty!12481)))

(declare-fun b!2489576 () Bool)

(declare-fun tp!796915 () Bool)

(assert (=> b!2489576 (= e!1580598 tp!796915)))

(declare-fun b!2489575 () Bool)

(declare-fun tp!796914 () Bool)

(declare-fun tp!796916 () Bool)

(assert (=> b!2489575 (= e!1580598 (and tp!796914 tp!796916))))

(assert (=> b!2489068 (= tp!796772 e!1580598)))

(assert (= (and b!2489068 ((_ is ElementMatch!7313) (regOne!15139 (reg!7642 r!26136)))) b!2489574))

(assert (= (and b!2489068 ((_ is Concat!12009) (regOne!15139 (reg!7642 r!26136)))) b!2489575))

(assert (= (and b!2489068 ((_ is Star!7313) (regOne!15139 (reg!7642 r!26136)))) b!2489576))

(assert (= (and b!2489068 ((_ is Union!7313) (regOne!15139 (reg!7642 r!26136)))) b!2489577))

(declare-fun b!2489581 () Bool)

(declare-fun e!1580599 () Bool)

(declare-fun tp!796923 () Bool)

(declare-fun tp!796922 () Bool)

(assert (=> b!2489581 (= e!1580599 (and tp!796923 tp!796922))))

(declare-fun b!2489578 () Bool)

(assert (=> b!2489578 (= e!1580599 tp_is_empty!12481)))

(declare-fun b!2489580 () Bool)

(declare-fun tp!796920 () Bool)

(assert (=> b!2489580 (= e!1580599 tp!796920)))

(declare-fun b!2489579 () Bool)

(declare-fun tp!796919 () Bool)

(declare-fun tp!796921 () Bool)

(assert (=> b!2489579 (= e!1580599 (and tp!796919 tp!796921))))

(assert (=> b!2489068 (= tp!796771 e!1580599)))

(assert (= (and b!2489068 ((_ is ElementMatch!7313) (regTwo!15139 (reg!7642 r!26136)))) b!2489578))

(assert (= (and b!2489068 ((_ is Concat!12009) (regTwo!15139 (reg!7642 r!26136)))) b!2489579))

(assert (= (and b!2489068 ((_ is Star!7313) (regTwo!15139 (reg!7642 r!26136)))) b!2489580))

(assert (= (and b!2489068 ((_ is Union!7313) (regTwo!15139 (reg!7642 r!26136)))) b!2489581))

(declare-fun b!2489585 () Bool)

(declare-fun e!1580600 () Bool)

(declare-fun tp!796928 () Bool)

(declare-fun tp!796927 () Bool)

(assert (=> b!2489585 (= e!1580600 (and tp!796928 tp!796927))))

(declare-fun b!2489582 () Bool)

(assert (=> b!2489582 (= e!1580600 tp_is_empty!12481)))

(declare-fun b!2489584 () Bool)

(declare-fun tp!796925 () Bool)

(assert (=> b!2489584 (= e!1580600 tp!796925)))

(declare-fun b!2489583 () Bool)

(declare-fun tp!796924 () Bool)

(declare-fun tp!796926 () Bool)

(assert (=> b!2489583 (= e!1580600 (and tp!796924 tp!796926))))

(assert (=> b!2489063 (= tp!796764 e!1580600)))

(assert (= (and b!2489063 ((_ is ElementMatch!7313) (reg!7642 (regTwo!15139 r!26136)))) b!2489582))

(assert (= (and b!2489063 ((_ is Concat!12009) (reg!7642 (regTwo!15139 r!26136)))) b!2489583))

(assert (= (and b!2489063 ((_ is Star!7313) (reg!7642 (regTwo!15139 r!26136)))) b!2489584))

(assert (= (and b!2489063 ((_ is Union!7313) (reg!7642 (regTwo!15139 r!26136)))) b!2489585))

(declare-fun b!2489589 () Bool)

(declare-fun e!1580601 () Bool)

(declare-fun tp!796933 () Bool)

(declare-fun tp!796932 () Bool)

(assert (=> b!2489589 (= e!1580601 (and tp!796933 tp!796932))))

(declare-fun b!2489586 () Bool)

(assert (=> b!2489586 (= e!1580601 tp_is_empty!12481)))

(declare-fun b!2489588 () Bool)

(declare-fun tp!796930 () Bool)

(assert (=> b!2489588 (= e!1580601 tp!796930)))

(declare-fun b!2489587 () Bool)

(declare-fun tp!796929 () Bool)

(declare-fun tp!796931 () Bool)

(assert (=> b!2489587 (= e!1580601 (and tp!796929 tp!796931))))

(assert (=> b!2489058 (= tp!796758 e!1580601)))

(assert (= (and b!2489058 ((_ is ElementMatch!7313) (regOne!15138 (regOne!15139 r!26136)))) b!2489586))

(assert (= (and b!2489058 ((_ is Concat!12009) (regOne!15138 (regOne!15139 r!26136)))) b!2489587))

(assert (= (and b!2489058 ((_ is Star!7313) (regOne!15138 (regOne!15139 r!26136)))) b!2489588))

(assert (= (and b!2489058 ((_ is Union!7313) (regOne!15138 (regOne!15139 r!26136)))) b!2489589))

(declare-fun b!2489593 () Bool)

(declare-fun e!1580602 () Bool)

(declare-fun tp!796938 () Bool)

(declare-fun tp!796937 () Bool)

(assert (=> b!2489593 (= e!1580602 (and tp!796938 tp!796937))))

(declare-fun b!2489590 () Bool)

(assert (=> b!2489590 (= e!1580602 tp_is_empty!12481)))

(declare-fun b!2489592 () Bool)

(declare-fun tp!796935 () Bool)

(assert (=> b!2489592 (= e!1580602 tp!796935)))

(declare-fun b!2489591 () Bool)

(declare-fun tp!796934 () Bool)

(declare-fun tp!796936 () Bool)

(assert (=> b!2489591 (= e!1580602 (and tp!796934 tp!796936))))

(assert (=> b!2489058 (= tp!796760 e!1580602)))

(assert (= (and b!2489058 ((_ is ElementMatch!7313) (regTwo!15138 (regOne!15139 r!26136)))) b!2489590))

(assert (= (and b!2489058 ((_ is Concat!12009) (regTwo!15138 (regOne!15139 r!26136)))) b!2489591))

(assert (= (and b!2489058 ((_ is Star!7313) (regTwo!15138 (regOne!15139 r!26136)))) b!2489592))

(assert (= (and b!2489058 ((_ is Union!7313) (regTwo!15138 (regOne!15139 r!26136)))) b!2489593))

(declare-fun b!2489597 () Bool)

(declare-fun e!1580603 () Bool)

(declare-fun tp!796943 () Bool)

(declare-fun tp!796942 () Bool)

(assert (=> b!2489597 (= e!1580603 (and tp!796943 tp!796942))))

(declare-fun b!2489594 () Bool)

(assert (=> b!2489594 (= e!1580603 tp_is_empty!12481)))

(declare-fun b!2489596 () Bool)

(declare-fun tp!796940 () Bool)

(assert (=> b!2489596 (= e!1580603 tp!796940)))

(declare-fun b!2489595 () Bool)

(declare-fun tp!796939 () Bool)

(declare-fun tp!796941 () Bool)

(assert (=> b!2489595 (= e!1580603 (and tp!796939 tp!796941))))

(assert (=> b!2489072 (= tp!796777 e!1580603)))

(assert (= (and b!2489072 ((_ is ElementMatch!7313) (regOne!15139 (regOne!15138 r!26136)))) b!2489594))

(assert (= (and b!2489072 ((_ is Concat!12009) (regOne!15139 (regOne!15138 r!26136)))) b!2489595))

(assert (= (and b!2489072 ((_ is Star!7313) (regOne!15139 (regOne!15138 r!26136)))) b!2489596))

(assert (= (and b!2489072 ((_ is Union!7313) (regOne!15139 (regOne!15138 r!26136)))) b!2489597))

(declare-fun b!2489601 () Bool)

(declare-fun e!1580604 () Bool)

(declare-fun tp!796948 () Bool)

(declare-fun tp!796947 () Bool)

(assert (=> b!2489601 (= e!1580604 (and tp!796948 tp!796947))))

(declare-fun b!2489598 () Bool)

(assert (=> b!2489598 (= e!1580604 tp_is_empty!12481)))

(declare-fun b!2489600 () Bool)

(declare-fun tp!796945 () Bool)

(assert (=> b!2489600 (= e!1580604 tp!796945)))

(declare-fun b!2489599 () Bool)

(declare-fun tp!796944 () Bool)

(declare-fun tp!796946 () Bool)

(assert (=> b!2489599 (= e!1580604 (and tp!796944 tp!796946))))

(assert (=> b!2489072 (= tp!796776 e!1580604)))

(assert (= (and b!2489072 ((_ is ElementMatch!7313) (regTwo!15139 (regOne!15138 r!26136)))) b!2489598))

(assert (= (and b!2489072 ((_ is Concat!12009) (regTwo!15139 (regOne!15138 r!26136)))) b!2489599))

(assert (= (and b!2489072 ((_ is Star!7313) (regTwo!15139 (regOne!15138 r!26136)))) b!2489600))

(assert (= (and b!2489072 ((_ is Union!7313) (regTwo!15139 (regOne!15138 r!26136)))) b!2489601))

(declare-fun b!2489605 () Bool)

(declare-fun e!1580605 () Bool)

(declare-fun tp!796953 () Bool)

(declare-fun tp!796952 () Bool)

(assert (=> b!2489605 (= e!1580605 (and tp!796953 tp!796952))))

(declare-fun b!2489602 () Bool)

(assert (=> b!2489602 (= e!1580605 tp_is_empty!12481)))

(declare-fun b!2489604 () Bool)

(declare-fun tp!796950 () Bool)

(assert (=> b!2489604 (= e!1580605 tp!796950)))

(declare-fun b!2489603 () Bool)

(declare-fun tp!796949 () Bool)

(declare-fun tp!796951 () Bool)

(assert (=> b!2489603 (= e!1580605 (and tp!796949 tp!796951))))

(assert (=> b!2489060 (= tp!796762 e!1580605)))

(assert (= (and b!2489060 ((_ is ElementMatch!7313) (regOne!15139 (regOne!15139 r!26136)))) b!2489602))

(assert (= (and b!2489060 ((_ is Concat!12009) (regOne!15139 (regOne!15139 r!26136)))) b!2489603))

(assert (= (and b!2489060 ((_ is Star!7313) (regOne!15139 (regOne!15139 r!26136)))) b!2489604))

(assert (= (and b!2489060 ((_ is Union!7313) (regOne!15139 (regOne!15139 r!26136)))) b!2489605))

(declare-fun b!2489609 () Bool)

(declare-fun e!1580606 () Bool)

(declare-fun tp!796958 () Bool)

(declare-fun tp!796957 () Bool)

(assert (=> b!2489609 (= e!1580606 (and tp!796958 tp!796957))))

(declare-fun b!2489606 () Bool)

(assert (=> b!2489606 (= e!1580606 tp_is_empty!12481)))

(declare-fun b!2489608 () Bool)

(declare-fun tp!796955 () Bool)

(assert (=> b!2489608 (= e!1580606 tp!796955)))

(declare-fun b!2489607 () Bool)

(declare-fun tp!796954 () Bool)

(declare-fun tp!796956 () Bool)

(assert (=> b!2489607 (= e!1580606 (and tp!796954 tp!796956))))

(assert (=> b!2489060 (= tp!796761 e!1580606)))

(assert (= (and b!2489060 ((_ is ElementMatch!7313) (regTwo!15139 (regOne!15139 r!26136)))) b!2489606))

(assert (= (and b!2489060 ((_ is Concat!12009) (regTwo!15139 (regOne!15139 r!26136)))) b!2489607))

(assert (= (and b!2489060 ((_ is Star!7313) (regTwo!15139 (regOne!15139 r!26136)))) b!2489608))

(assert (= (and b!2489060 ((_ is Union!7313) (regTwo!15139 (regOne!15139 r!26136)))) b!2489609))

(declare-fun b!2489613 () Bool)

(declare-fun e!1580607 () Bool)

(declare-fun tp!796963 () Bool)

(declare-fun tp!796962 () Bool)

(assert (=> b!2489613 (= e!1580607 (and tp!796963 tp!796962))))

(declare-fun b!2489610 () Bool)

(assert (=> b!2489610 (= e!1580607 tp_is_empty!12481)))

(declare-fun b!2489612 () Bool)

(declare-fun tp!796960 () Bool)

(assert (=> b!2489612 (= e!1580607 tp!796960)))

(declare-fun b!2489611 () Bool)

(declare-fun tp!796959 () Bool)

(declare-fun tp!796961 () Bool)

(assert (=> b!2489611 (= e!1580607 (and tp!796959 tp!796961))))

(assert (=> b!2489064 (= tp!796767 e!1580607)))

(assert (= (and b!2489064 ((_ is ElementMatch!7313) (regOne!15139 (regTwo!15139 r!26136)))) b!2489610))

(assert (= (and b!2489064 ((_ is Concat!12009) (regOne!15139 (regTwo!15139 r!26136)))) b!2489611))

(assert (= (and b!2489064 ((_ is Star!7313) (regOne!15139 (regTwo!15139 r!26136)))) b!2489612))

(assert (= (and b!2489064 ((_ is Union!7313) (regOne!15139 (regTwo!15139 r!26136)))) b!2489613))

(declare-fun b!2489617 () Bool)

(declare-fun e!1580608 () Bool)

(declare-fun tp!796968 () Bool)

(declare-fun tp!796967 () Bool)

(assert (=> b!2489617 (= e!1580608 (and tp!796968 tp!796967))))

(declare-fun b!2489614 () Bool)

(assert (=> b!2489614 (= e!1580608 tp_is_empty!12481)))

(declare-fun b!2489616 () Bool)

(declare-fun tp!796965 () Bool)

(assert (=> b!2489616 (= e!1580608 tp!796965)))

(declare-fun b!2489615 () Bool)

(declare-fun tp!796964 () Bool)

(declare-fun tp!796966 () Bool)

(assert (=> b!2489615 (= e!1580608 (and tp!796964 tp!796966))))

(assert (=> b!2489064 (= tp!796766 e!1580608)))

(assert (= (and b!2489064 ((_ is ElementMatch!7313) (regTwo!15139 (regTwo!15139 r!26136)))) b!2489614))

(assert (= (and b!2489064 ((_ is Concat!12009) (regTwo!15139 (regTwo!15139 r!26136)))) b!2489615))

(assert (= (and b!2489064 ((_ is Star!7313) (regTwo!15139 (regTwo!15139 r!26136)))) b!2489616))

(assert (= (and b!2489064 ((_ is Union!7313) (regTwo!15139 (regTwo!15139 r!26136)))) b!2489617))

(declare-fun b!2489621 () Bool)

(declare-fun e!1580609 () Bool)

(declare-fun tp!796973 () Bool)

(declare-fun tp!796972 () Bool)

(assert (=> b!2489621 (= e!1580609 (and tp!796973 tp!796972))))

(declare-fun b!2489618 () Bool)

(assert (=> b!2489618 (= e!1580609 tp_is_empty!12481)))

(declare-fun b!2489620 () Bool)

(declare-fun tp!796970 () Bool)

(assert (=> b!2489620 (= e!1580609 tp!796970)))

(declare-fun b!2489619 () Bool)

(declare-fun tp!796969 () Bool)

(declare-fun tp!796971 () Bool)

(assert (=> b!2489619 (= e!1580609 (and tp!796969 tp!796971))))

(assert (=> b!2489075 (= tp!796779 e!1580609)))

(assert (= (and b!2489075 ((_ is ElementMatch!7313) (reg!7642 (regTwo!15138 r!26136)))) b!2489618))

(assert (= (and b!2489075 ((_ is Concat!12009) (reg!7642 (regTwo!15138 r!26136)))) b!2489619))

(assert (= (and b!2489075 ((_ is Star!7313) (reg!7642 (regTwo!15138 r!26136)))) b!2489620))

(assert (= (and b!2489075 ((_ is Union!7313) (reg!7642 (regTwo!15138 r!26136)))) b!2489621))

(declare-fun b!2489622 () Bool)

(declare-fun e!1580610 () Bool)

(declare-fun tp!796974 () Bool)

(assert (=> b!2489622 (= e!1580610 (and tp_is_empty!12481 tp!796974))))

(assert (=> b!2489046 (= tp!796747 e!1580610)))

(assert (= (and b!2489046 ((_ is Cons!29280) (t!211079 (t!211079 s!14955)))) b!2489622))

(declare-fun b!2489626 () Bool)

(declare-fun e!1580611 () Bool)

(declare-fun tp!796979 () Bool)

(declare-fun tp!796978 () Bool)

(assert (=> b!2489626 (= e!1580611 (and tp!796979 tp!796978))))

(declare-fun b!2489623 () Bool)

(assert (=> b!2489623 (= e!1580611 tp_is_empty!12481)))

(declare-fun b!2489625 () Bool)

(declare-fun tp!796976 () Bool)

(assert (=> b!2489625 (= e!1580611 tp!796976)))

(declare-fun b!2489624 () Bool)

(declare-fun tp!796975 () Bool)

(declare-fun tp!796977 () Bool)

(assert (=> b!2489624 (= e!1580611 (and tp!796975 tp!796977))))

(assert (=> b!2489070 (= tp!796773 e!1580611)))

(assert (= (and b!2489070 ((_ is ElementMatch!7313) (regOne!15138 (regOne!15138 r!26136)))) b!2489623))

(assert (= (and b!2489070 ((_ is Concat!12009) (regOne!15138 (regOne!15138 r!26136)))) b!2489624))

(assert (= (and b!2489070 ((_ is Star!7313) (regOne!15138 (regOne!15138 r!26136)))) b!2489625))

(assert (= (and b!2489070 ((_ is Union!7313) (regOne!15138 (regOne!15138 r!26136)))) b!2489626))

(declare-fun b!2489630 () Bool)

(declare-fun e!1580612 () Bool)

(declare-fun tp!796984 () Bool)

(declare-fun tp!796983 () Bool)

(assert (=> b!2489630 (= e!1580612 (and tp!796984 tp!796983))))

(declare-fun b!2489627 () Bool)

(assert (=> b!2489627 (= e!1580612 tp_is_empty!12481)))

(declare-fun b!2489629 () Bool)

(declare-fun tp!796981 () Bool)

(assert (=> b!2489629 (= e!1580612 tp!796981)))

(declare-fun b!2489628 () Bool)

(declare-fun tp!796980 () Bool)

(declare-fun tp!796982 () Bool)

(assert (=> b!2489628 (= e!1580612 (and tp!796980 tp!796982))))

(assert (=> b!2489070 (= tp!796775 e!1580612)))

(assert (= (and b!2489070 ((_ is ElementMatch!7313) (regTwo!15138 (regOne!15138 r!26136)))) b!2489627))

(assert (= (and b!2489070 ((_ is Concat!12009) (regTwo!15138 (regOne!15138 r!26136)))) b!2489628))

(assert (= (and b!2489070 ((_ is Star!7313) (regTwo!15138 (regOne!15138 r!26136)))) b!2489629))

(assert (= (and b!2489070 ((_ is Union!7313) (regTwo!15138 (regOne!15138 r!26136)))) b!2489630))

(declare-fun b!2489634 () Bool)

(declare-fun e!1580613 () Bool)

(declare-fun tp!796989 () Bool)

(declare-fun tp!796988 () Bool)

(assert (=> b!2489634 (= e!1580613 (and tp!796989 tp!796988))))

(declare-fun b!2489631 () Bool)

(assert (=> b!2489631 (= e!1580613 tp_is_empty!12481)))

(declare-fun b!2489633 () Bool)

(declare-fun tp!796986 () Bool)

(assert (=> b!2489633 (= e!1580613 tp!796986)))

(declare-fun b!2489632 () Bool)

(declare-fun tp!796985 () Bool)

(declare-fun tp!796987 () Bool)

(assert (=> b!2489632 (= e!1580613 (and tp!796985 tp!796987))))

(assert (=> b!2489074 (= tp!796778 e!1580613)))

(assert (= (and b!2489074 ((_ is ElementMatch!7313) (regOne!15138 (regTwo!15138 r!26136)))) b!2489631))

(assert (= (and b!2489074 ((_ is Concat!12009) (regOne!15138 (regTwo!15138 r!26136)))) b!2489632))

(assert (= (and b!2489074 ((_ is Star!7313) (regOne!15138 (regTwo!15138 r!26136)))) b!2489633))

(assert (= (and b!2489074 ((_ is Union!7313) (regOne!15138 (regTwo!15138 r!26136)))) b!2489634))

(declare-fun b!2489638 () Bool)

(declare-fun e!1580614 () Bool)

(declare-fun tp!796994 () Bool)

(declare-fun tp!796993 () Bool)

(assert (=> b!2489638 (= e!1580614 (and tp!796994 tp!796993))))

(declare-fun b!2489635 () Bool)

(assert (=> b!2489635 (= e!1580614 tp_is_empty!12481)))

(declare-fun b!2489637 () Bool)

(declare-fun tp!796991 () Bool)

(assert (=> b!2489637 (= e!1580614 tp!796991)))

(declare-fun b!2489636 () Bool)

(declare-fun tp!796990 () Bool)

(declare-fun tp!796992 () Bool)

(assert (=> b!2489636 (= e!1580614 (and tp!796990 tp!796992))))

(assert (=> b!2489074 (= tp!796780 e!1580614)))

(assert (= (and b!2489074 ((_ is ElementMatch!7313) (regTwo!15138 (regTwo!15138 r!26136)))) b!2489635))

(assert (= (and b!2489074 ((_ is Concat!12009) (regTwo!15138 (regTwo!15138 r!26136)))) b!2489636))

(assert (= (and b!2489074 ((_ is Star!7313) (regTwo!15138 (regTwo!15138 r!26136)))) b!2489637))

(assert (= (and b!2489074 ((_ is Union!7313) (regTwo!15138 (regTwo!15138 r!26136)))) b!2489638))

(declare-fun b!2489642 () Bool)

(declare-fun e!1580615 () Bool)

(declare-fun tp!796999 () Bool)

(declare-fun tp!796998 () Bool)

(assert (=> b!2489642 (= e!1580615 (and tp!796999 tp!796998))))

(declare-fun b!2489639 () Bool)

(assert (=> b!2489639 (= e!1580615 tp_is_empty!12481)))

(declare-fun b!2489641 () Bool)

(declare-fun tp!796996 () Bool)

(assert (=> b!2489641 (= e!1580615 tp!796996)))

(declare-fun b!2489640 () Bool)

(declare-fun tp!796995 () Bool)

(declare-fun tp!796997 () Bool)

(assert (=> b!2489640 (= e!1580615 (and tp!796995 tp!796997))))

(assert (=> b!2489067 (= tp!796769 e!1580615)))

(assert (= (and b!2489067 ((_ is ElementMatch!7313) (reg!7642 (reg!7642 r!26136)))) b!2489639))

(assert (= (and b!2489067 ((_ is Concat!12009) (reg!7642 (reg!7642 r!26136)))) b!2489640))

(assert (= (and b!2489067 ((_ is Star!7313) (reg!7642 (reg!7642 r!26136)))) b!2489641))

(assert (= (and b!2489067 ((_ is Union!7313) (reg!7642 (reg!7642 r!26136)))) b!2489642))

(declare-fun b!2489646 () Bool)

(declare-fun e!1580616 () Bool)

(declare-fun tp!797004 () Bool)

(declare-fun tp!797003 () Bool)

(assert (=> b!2489646 (= e!1580616 (and tp!797004 tp!797003))))

(declare-fun b!2489643 () Bool)

(assert (=> b!2489643 (= e!1580616 tp_is_empty!12481)))

(declare-fun b!2489645 () Bool)

(declare-fun tp!797001 () Bool)

(assert (=> b!2489645 (= e!1580616 tp!797001)))

(declare-fun b!2489644 () Bool)

(declare-fun tp!797000 () Bool)

(declare-fun tp!797002 () Bool)

(assert (=> b!2489644 (= e!1580616 (and tp!797000 tp!797002))))

(assert (=> b!2489062 (= tp!796763 e!1580616)))

(assert (= (and b!2489062 ((_ is ElementMatch!7313) (regOne!15138 (regTwo!15139 r!26136)))) b!2489643))

(assert (= (and b!2489062 ((_ is Concat!12009) (regOne!15138 (regTwo!15139 r!26136)))) b!2489644))

(assert (= (and b!2489062 ((_ is Star!7313) (regOne!15138 (regTwo!15139 r!26136)))) b!2489645))

(assert (= (and b!2489062 ((_ is Union!7313) (regOne!15138 (regTwo!15139 r!26136)))) b!2489646))

(declare-fun b!2489650 () Bool)

(declare-fun e!1580617 () Bool)

(declare-fun tp!797009 () Bool)

(declare-fun tp!797008 () Bool)

(assert (=> b!2489650 (= e!1580617 (and tp!797009 tp!797008))))

(declare-fun b!2489647 () Bool)

(assert (=> b!2489647 (= e!1580617 tp_is_empty!12481)))

(declare-fun b!2489649 () Bool)

(declare-fun tp!797006 () Bool)

(assert (=> b!2489649 (= e!1580617 tp!797006)))

(declare-fun b!2489648 () Bool)

(declare-fun tp!797005 () Bool)

(declare-fun tp!797007 () Bool)

(assert (=> b!2489648 (= e!1580617 (and tp!797005 tp!797007))))

(assert (=> b!2489062 (= tp!796765 e!1580617)))

(assert (= (and b!2489062 ((_ is ElementMatch!7313) (regTwo!15138 (regTwo!15139 r!26136)))) b!2489647))

(assert (= (and b!2489062 ((_ is Concat!12009) (regTwo!15138 (regTwo!15139 r!26136)))) b!2489648))

(assert (= (and b!2489062 ((_ is Star!7313) (regTwo!15138 (regTwo!15139 r!26136)))) b!2489649))

(assert (= (and b!2489062 ((_ is Union!7313) (regTwo!15138 (regTwo!15139 r!26136)))) b!2489650))

(declare-fun b!2489654 () Bool)

(declare-fun e!1580618 () Bool)

(declare-fun tp!797014 () Bool)

(declare-fun tp!797013 () Bool)

(assert (=> b!2489654 (= e!1580618 (and tp!797014 tp!797013))))

(declare-fun b!2489651 () Bool)

(assert (=> b!2489651 (= e!1580618 tp_is_empty!12481)))

(declare-fun b!2489653 () Bool)

(declare-fun tp!797011 () Bool)

(assert (=> b!2489653 (= e!1580618 tp!797011)))

(declare-fun b!2489652 () Bool)

(declare-fun tp!797010 () Bool)

(declare-fun tp!797012 () Bool)

(assert (=> b!2489652 (= e!1580618 (and tp!797010 tp!797012))))

(assert (=> b!2489076 (= tp!796782 e!1580618)))

(assert (= (and b!2489076 ((_ is ElementMatch!7313) (regOne!15139 (regTwo!15138 r!26136)))) b!2489651))

(assert (= (and b!2489076 ((_ is Concat!12009) (regOne!15139 (regTwo!15138 r!26136)))) b!2489652))

(assert (= (and b!2489076 ((_ is Star!7313) (regOne!15139 (regTwo!15138 r!26136)))) b!2489653))

(assert (= (and b!2489076 ((_ is Union!7313) (regOne!15139 (regTwo!15138 r!26136)))) b!2489654))

(declare-fun b!2489658 () Bool)

(declare-fun e!1580619 () Bool)

(declare-fun tp!797019 () Bool)

(declare-fun tp!797018 () Bool)

(assert (=> b!2489658 (= e!1580619 (and tp!797019 tp!797018))))

(declare-fun b!2489655 () Bool)

(assert (=> b!2489655 (= e!1580619 tp_is_empty!12481)))

(declare-fun b!2489657 () Bool)

(declare-fun tp!797016 () Bool)

(assert (=> b!2489657 (= e!1580619 tp!797016)))

(declare-fun b!2489656 () Bool)

(declare-fun tp!797015 () Bool)

(declare-fun tp!797017 () Bool)

(assert (=> b!2489656 (= e!1580619 (and tp!797015 tp!797017))))

(assert (=> b!2489076 (= tp!796781 e!1580619)))

(assert (= (and b!2489076 ((_ is ElementMatch!7313) (regTwo!15139 (regTwo!15138 r!26136)))) b!2489655))

(assert (= (and b!2489076 ((_ is Concat!12009) (regTwo!15139 (regTwo!15138 r!26136)))) b!2489656))

(assert (= (and b!2489076 ((_ is Star!7313) (regTwo!15139 (regTwo!15138 r!26136)))) b!2489657))

(assert (= (and b!2489076 ((_ is Union!7313) (regTwo!15139 (regTwo!15138 r!26136)))) b!2489658))

(declare-fun b!2489662 () Bool)

(declare-fun e!1580620 () Bool)

(declare-fun tp!797024 () Bool)

(declare-fun tp!797023 () Bool)

(assert (=> b!2489662 (= e!1580620 (and tp!797024 tp!797023))))

(declare-fun b!2489659 () Bool)

(assert (=> b!2489659 (= e!1580620 tp_is_empty!12481)))

(declare-fun b!2489661 () Bool)

(declare-fun tp!797021 () Bool)

(assert (=> b!2489661 (= e!1580620 tp!797021)))

(declare-fun b!2489660 () Bool)

(declare-fun tp!797020 () Bool)

(declare-fun tp!797022 () Bool)

(assert (=> b!2489660 (= e!1580620 (and tp!797020 tp!797022))))

(assert (=> b!2489071 (= tp!796774 e!1580620)))

(assert (= (and b!2489071 ((_ is ElementMatch!7313) (reg!7642 (regOne!15138 r!26136)))) b!2489659))

(assert (= (and b!2489071 ((_ is Concat!12009) (reg!7642 (regOne!15138 r!26136)))) b!2489660))

(assert (= (and b!2489071 ((_ is Star!7313) (reg!7642 (regOne!15138 r!26136)))) b!2489661))

(assert (= (and b!2489071 ((_ is Union!7313) (reg!7642 (regOne!15138 r!26136)))) b!2489662))

(declare-fun b!2489666 () Bool)

(declare-fun e!1580621 () Bool)

(declare-fun tp!797029 () Bool)

(declare-fun tp!797028 () Bool)

(assert (=> b!2489666 (= e!1580621 (and tp!797029 tp!797028))))

(declare-fun b!2489663 () Bool)

(assert (=> b!2489663 (= e!1580621 tp_is_empty!12481)))

(declare-fun b!2489665 () Bool)

(declare-fun tp!797026 () Bool)

(assert (=> b!2489665 (= e!1580621 tp!797026)))

(declare-fun b!2489664 () Bool)

(declare-fun tp!797025 () Bool)

(declare-fun tp!797027 () Bool)

(assert (=> b!2489664 (= e!1580621 (and tp!797025 tp!797027))))

(assert (=> b!2489066 (= tp!796768 e!1580621)))

(assert (= (and b!2489066 ((_ is ElementMatch!7313) (regOne!15138 (reg!7642 r!26136)))) b!2489663))

(assert (= (and b!2489066 ((_ is Concat!12009) (regOne!15138 (reg!7642 r!26136)))) b!2489664))

(assert (= (and b!2489066 ((_ is Star!7313) (regOne!15138 (reg!7642 r!26136)))) b!2489665))

(assert (= (and b!2489066 ((_ is Union!7313) (regOne!15138 (reg!7642 r!26136)))) b!2489666))

(declare-fun b!2489670 () Bool)

(declare-fun e!1580622 () Bool)

(declare-fun tp!797034 () Bool)

(declare-fun tp!797033 () Bool)

(assert (=> b!2489670 (= e!1580622 (and tp!797034 tp!797033))))

(declare-fun b!2489667 () Bool)

(assert (=> b!2489667 (= e!1580622 tp_is_empty!12481)))

(declare-fun b!2489669 () Bool)

(declare-fun tp!797031 () Bool)

(assert (=> b!2489669 (= e!1580622 tp!797031)))

(declare-fun b!2489668 () Bool)

(declare-fun tp!797030 () Bool)

(declare-fun tp!797032 () Bool)

(assert (=> b!2489668 (= e!1580622 (and tp!797030 tp!797032))))

(assert (=> b!2489066 (= tp!796770 e!1580622)))

(assert (= (and b!2489066 ((_ is ElementMatch!7313) (regTwo!15138 (reg!7642 r!26136)))) b!2489667))

(assert (= (and b!2489066 ((_ is Concat!12009) (regTwo!15138 (reg!7642 r!26136)))) b!2489668))

(assert (= (and b!2489066 ((_ is Star!7313) (regTwo!15138 (reg!7642 r!26136)))) b!2489669))

(assert (= (and b!2489066 ((_ is Union!7313) (regTwo!15138 (reg!7642 r!26136)))) b!2489670))

(check-sat (not b!2489669) (not b!2489596) (not b!2489637) (not bm!152873) (not d!714236) (not bm!152863) (not b!2489653) (not b!2489592) (not b!2489664) (not b!2489227) (not b!2489642) (not d!714274) (not b!2489584) (not b!2489282) (not b!2489619) (not b!2489581) (not b!2489593) (not b!2489599) (not b!2489595) (not b!2489591) (not bm!152805) (not d!714296) (not bm!152810) (not b!2489580) (not bm!152826) (not b!2489600) (not b!2489658) (not bm!152815) (not b!2489615) (not bm!152864) (not b!2489624) (not b!2489562) (not d!714222) (not b!2489609) (not b!2489661) (not bm!152806) (not b!2489652) (not b!2489646) (not bm!152843) (not b!2489665) (not b!2489630) (not bm!152842) (not bm!152852) (not b!2489235) (not b!2489571) (not b!2489255) (not b!2489325) (not bm!152869) (not b!2489634) (not b!2489346) (not bm!152866) (not bm!152833) (not b!2489546) (not b!2489577) (not b!2489638) (not b!2489207) (not bm!152867) (not b!2489434) (not b!2489636) (not d!714226) (not bm!152827) (not b!2489612) (not b!2489572) (not b!2489656) (not b!2489670) (not b!2489650) (not b!2489587) (not d!714180) (not b!2489641) (not b!2489604) (not b!2489644) (not d!714224) (not b!2489216) (not bm!152839) (not b!2489666) (not bm!152798) (not bm!152872) (not b!2489616) (not b!2489588) (not b!2489640) (not b!2489660) (not bm!152799) (not bm!152851) (not b!2489617) (not d!714282) (not b!2489247) (not b!2489622) (not d!714280) (not b!2489573) (not bm!152791) (not b!2489613) (not b!2489423) (not bm!152816) (not b!2489625) (not b!2489471) (not b!2489189) (not bm!152797) (not d!714284) (not d!714302) (not b!2489648) (not b!2489607) (not b!2489576) (not bm!152809) (not b!2489259) (not bm!152855) (not b!2489198) (not b!2489305) (not b!2489628) (not b!2489620) (not b!2489668) (not d!714304) (not b!2489231) (not b!2489629) (not d!714252) (not bm!152870) (not b!2489605) (not b!2489632) (not b!2489585) (not b!2489657) (not b!2489621) (not bm!152795) (not b!2489608) (not b!2489626) (not bm!152792) (not b!2489396) (not b!2489597) (not b!2489583) (not bm!152794) (not b!2489575) (not b!2489558) (not b!2489589) (not b!2489229) tp_is_empty!12481 (not b!2489181) (not b!2489555) (not b!2489603) (not b!2489579) (not bm!152854) (not bm!152834) (not bm!152823) (not d!714290) (not b!2489662) (not d!714220) (not b!2489182) (not b!2489601) (not b!2489649) (not b!2489225) (not d!714294) (not b!2489233) (not b!2489654) (not b!2489611) (not b!2489645) (not b!2489633) (not b!2489557))
(check-sat)
