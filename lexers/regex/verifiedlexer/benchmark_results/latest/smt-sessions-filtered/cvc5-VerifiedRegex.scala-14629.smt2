; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756582 () Bool)

(assert start!756582)

(declare-fun res!3176243 () Bool)

(declare-fun e!4731678 () Bool)

(assert (=> start!756582 (=> (not res!3176243) (not e!4731678))))

(declare-datatypes ((C!43758 0))(
  ( (C!43759 (val!32655 Int)) )
))
(declare-datatypes ((Regex!21710 0))(
  ( (ElementMatch!21710 (c!1473475 C!43758)) (Concat!30713 (regOne!43932 Regex!21710) (regTwo!43932 Regex!21710)) (EmptyExpr!21710) (Star!21710 (reg!22039 Regex!21710)) (EmptyLang!21710) (Union!21710 (regOne!43933 Regex!21710) (regTwo!43933 Regex!21710)) )
))
(declare-fun r!13230 () Regex!21710)

(declare-fun validRegex!12006 (Regex!21710) Bool)

(assert (=> start!756582 (= res!3176243 (validRegex!12006 r!13230))))

(assert (=> start!756582 e!4731678))

(declare-fun e!4731677 () Bool)

(assert (=> start!756582 e!4731677))

(declare-fun e!4731676 () Bool)

(assert (=> start!756582 e!4731676))

(declare-fun b!8031814 () Bool)

(declare-fun tp_is_empty!54415 () Bool)

(declare-fun tp!2403883 () Bool)

(assert (=> b!8031814 (= e!4731676 (and tp_is_empty!54415 tp!2403883))))

(declare-fun b!8031815 () Bool)

(declare-fun tp!2403881 () Bool)

(assert (=> b!8031815 (= e!4731677 tp!2403881)))

(declare-fun b!8031816 () Bool)

(assert (=> b!8031816 (= e!4731677 tp_is_empty!54415)))

(declare-fun b!8031817 () Bool)

(declare-fun lt!2721947 () Bool)

(assert (=> b!8031817 (= e!4731678 (ite (is-EmptyExpr!21710 r!13230) (not lt!2721947) (ite (is-EmptyLang!21710 r!13230) lt!2721947 (and (is-ElementMatch!21710 r!13230) lt!2721947))))))

(declare-fun nullable!9743 (Regex!21710) Bool)

(assert (=> b!8031817 (= lt!2721947 (nullable!9743 r!13230))))

(declare-fun b!8031818 () Bool)

(declare-fun res!3176242 () Bool)

(assert (=> b!8031818 (=> (not res!3176242) (not e!4731678))))

(declare-datatypes ((List!75175 0))(
  ( (Nil!75049) (Cons!75049 (h!81497 C!43758) (t!390945 List!75175)) )
))
(declare-fun input!5983 () List!75175)

(declare-fun isEmpty!43028 (List!75175) Bool)

(assert (=> b!8031818 (= res!3176242 (isEmpty!43028 input!5983))))

(declare-fun b!8031819 () Bool)

(declare-fun tp!2403882 () Bool)

(declare-fun tp!2403884 () Bool)

(assert (=> b!8031819 (= e!4731677 (and tp!2403882 tp!2403884))))

(declare-fun b!8031820 () Bool)

(declare-fun tp!2403885 () Bool)

(declare-fun tp!2403880 () Bool)

(assert (=> b!8031820 (= e!4731677 (and tp!2403885 tp!2403880))))

(assert (= (and start!756582 res!3176243) b!8031818))

(assert (= (and b!8031818 res!3176242) b!8031817))

(assert (= (and start!756582 (is-ElementMatch!21710 r!13230)) b!8031816))

(assert (= (and start!756582 (is-Concat!30713 r!13230)) b!8031819))

(assert (= (and start!756582 (is-Star!21710 r!13230)) b!8031815))

(assert (= (and start!756582 (is-Union!21710 r!13230)) b!8031820))

(assert (= (and start!756582 (is-Cons!75049 input!5983)) b!8031814))

(declare-fun m!8392390 () Bool)

(assert (=> start!756582 m!8392390))

(declare-fun m!8392392 () Bool)

(assert (=> b!8031817 m!8392392))

(declare-fun m!8392394 () Bool)

(assert (=> b!8031818 m!8392394))

(push 1)

(assert tp_is_empty!54415)

(assert (not b!8031817))

(assert (not start!756582))

(assert (not b!8031818))

(assert (not b!8031819))

(assert (not b!8031815))

(assert (not b!8031814))

(assert (not b!8031820))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8031860 () Bool)

(declare-fun res!3176262 () Bool)

(declare-fun e!4731704 () Bool)

(assert (=> b!8031860 (=> (not res!3176262) (not e!4731704))))

(declare-fun call!745073 () Bool)

(assert (=> b!8031860 (= res!3176262 call!745073)))

(declare-fun e!4731706 () Bool)

(assert (=> b!8031860 (= e!4731706 e!4731704)))

(declare-fun b!8031861 () Bool)

(declare-fun call!745071 () Bool)

(assert (=> b!8031861 (= e!4731704 call!745071)))

(declare-fun b!8031862 () Bool)

(declare-fun e!4731708 () Bool)

(assert (=> b!8031862 (= e!4731708 e!4731706)))

(declare-fun c!1473481 () Bool)

(assert (=> b!8031862 (= c!1473481 (is-Union!21710 r!13230))))

(declare-fun b!8031863 () Bool)

(declare-fun e!4731703 () Bool)

(assert (=> b!8031863 (= e!4731703 e!4731708)))

(declare-fun c!1473482 () Bool)

(assert (=> b!8031863 (= c!1473482 (is-Star!21710 r!13230))))

(declare-fun b!8031864 () Bool)

(declare-fun e!4731707 () Bool)

(assert (=> b!8031864 (= e!4731707 call!745071)))

(declare-fun b!8031865 () Bool)

(declare-fun e!4731705 () Bool)

(assert (=> b!8031865 (= e!4731705 e!4731707)))

(declare-fun res!3176264 () Bool)

(assert (=> b!8031865 (=> (not res!3176264) (not e!4731707))))

(assert (=> b!8031865 (= res!3176264 call!745073)))

(declare-fun d!2394716 () Bool)

(declare-fun res!3176261 () Bool)

(assert (=> d!2394716 (=> res!3176261 e!4731703)))

(assert (=> d!2394716 (= res!3176261 (is-ElementMatch!21710 r!13230))))

(assert (=> d!2394716 (= (validRegex!12006 r!13230) e!4731703)))

(declare-fun b!8031866 () Bool)

(declare-fun e!4731702 () Bool)

(assert (=> b!8031866 (= e!4731708 e!4731702)))

(declare-fun res!3176260 () Bool)

(assert (=> b!8031866 (= res!3176260 (not (nullable!9743 (reg!22039 r!13230))))))

(assert (=> b!8031866 (=> (not res!3176260) (not e!4731702))))

(declare-fun bm!745066 () Bool)

(declare-fun call!745072 () Bool)

(assert (=> bm!745066 (= call!745072 (validRegex!12006 (ite c!1473482 (reg!22039 r!13230) (ite c!1473481 (regTwo!43933 r!13230) (regTwo!43932 r!13230)))))))

(declare-fun bm!745067 () Bool)

(assert (=> bm!745067 (= call!745073 (validRegex!12006 (ite c!1473481 (regOne!43933 r!13230) (regOne!43932 r!13230))))))

(declare-fun b!8031867 () Bool)

(assert (=> b!8031867 (= e!4731702 call!745072)))

(declare-fun b!8031868 () Bool)

(declare-fun res!3176263 () Bool)

(assert (=> b!8031868 (=> res!3176263 e!4731705)))

(assert (=> b!8031868 (= res!3176263 (not (is-Concat!30713 r!13230)))))

(assert (=> b!8031868 (= e!4731706 e!4731705)))

(declare-fun bm!745068 () Bool)

(assert (=> bm!745068 (= call!745071 call!745072)))

(assert (= (and d!2394716 (not res!3176261)) b!8031863))

(assert (= (and b!8031863 c!1473482) b!8031866))

(assert (= (and b!8031863 (not c!1473482)) b!8031862))

(assert (= (and b!8031866 res!3176260) b!8031867))

(assert (= (and b!8031862 c!1473481) b!8031860))

(assert (= (and b!8031862 (not c!1473481)) b!8031868))

(assert (= (and b!8031860 res!3176262) b!8031861))

(assert (= (and b!8031868 (not res!3176263)) b!8031865))

(assert (= (and b!8031865 res!3176264) b!8031864))

(assert (= (or b!8031860 b!8031865) bm!745067))

(assert (= (or b!8031861 b!8031864) bm!745068))

(assert (= (or b!8031867 bm!745068) bm!745066))

(declare-fun m!8392402 () Bool)

(assert (=> b!8031866 m!8392402))

(declare-fun m!8392404 () Bool)

(assert (=> bm!745066 m!8392404))

(declare-fun m!8392406 () Bool)

(assert (=> bm!745067 m!8392406))

(assert (=> start!756582 d!2394716))

(declare-fun d!2394720 () Bool)

(declare-fun nullableFct!3852 (Regex!21710) Bool)

(assert (=> d!2394720 (= (nullable!9743 r!13230) (nullableFct!3852 r!13230))))

(declare-fun bs!1971455 () Bool)

(assert (= bs!1971455 d!2394720))

(declare-fun m!8392408 () Bool)

(assert (=> bs!1971455 m!8392408))

(assert (=> b!8031817 d!2394720))

(declare-fun d!2394722 () Bool)

(assert (=> d!2394722 (= (isEmpty!43028 input!5983) (is-Nil!75049 input!5983))))

(assert (=> b!8031818 d!2394722))

(declare-fun b!8031881 () Bool)

(declare-fun e!4731711 () Bool)

(declare-fun tp!2403918 () Bool)

(assert (=> b!8031881 (= e!4731711 tp!2403918)))

(declare-fun b!8031879 () Bool)

(assert (=> b!8031879 (= e!4731711 tp_is_empty!54415)))

(declare-fun b!8031880 () Bool)

(declare-fun tp!2403917 () Bool)

(declare-fun tp!2403914 () Bool)

(assert (=> b!8031880 (= e!4731711 (and tp!2403917 tp!2403914))))

(declare-fun b!8031882 () Bool)

(declare-fun tp!2403915 () Bool)

(declare-fun tp!2403916 () Bool)

(assert (=> b!8031882 (= e!4731711 (and tp!2403915 tp!2403916))))

(assert (=> b!8031820 (= tp!2403885 e!4731711)))

(assert (= (and b!8031820 (is-ElementMatch!21710 (regOne!43933 r!13230))) b!8031879))

(assert (= (and b!8031820 (is-Concat!30713 (regOne!43933 r!13230))) b!8031880))

(assert (= (and b!8031820 (is-Star!21710 (regOne!43933 r!13230))) b!8031881))

(assert (= (and b!8031820 (is-Union!21710 (regOne!43933 r!13230))) b!8031882))

(declare-fun b!8031885 () Bool)

(declare-fun e!4731712 () Bool)

(declare-fun tp!2403923 () Bool)

(assert (=> b!8031885 (= e!4731712 tp!2403923)))

(declare-fun b!8031883 () Bool)

(assert (=> b!8031883 (= e!4731712 tp_is_empty!54415)))

(declare-fun b!8031884 () Bool)

(declare-fun tp!2403922 () Bool)

(declare-fun tp!2403919 () Bool)

(assert (=> b!8031884 (= e!4731712 (and tp!2403922 tp!2403919))))

(declare-fun b!8031886 () Bool)

(declare-fun tp!2403920 () Bool)

(declare-fun tp!2403921 () Bool)

(assert (=> b!8031886 (= e!4731712 (and tp!2403920 tp!2403921))))

(assert (=> b!8031820 (= tp!2403880 e!4731712)))

(assert (= (and b!8031820 (is-ElementMatch!21710 (regTwo!43933 r!13230))) b!8031883))

(assert (= (and b!8031820 (is-Concat!30713 (regTwo!43933 r!13230))) b!8031884))

(assert (= (and b!8031820 (is-Star!21710 (regTwo!43933 r!13230))) b!8031885))

(assert (= (and b!8031820 (is-Union!21710 (regTwo!43933 r!13230))) b!8031886))

(declare-fun b!8031889 () Bool)

(declare-fun e!4731713 () Bool)

(declare-fun tp!2403928 () Bool)

(assert (=> b!8031889 (= e!4731713 tp!2403928)))

(declare-fun b!8031887 () Bool)

(assert (=> b!8031887 (= e!4731713 tp_is_empty!54415)))

(declare-fun b!8031888 () Bool)

(declare-fun tp!2403927 () Bool)

(declare-fun tp!2403924 () Bool)

(assert (=> b!8031888 (= e!4731713 (and tp!2403927 tp!2403924))))

(declare-fun b!8031890 () Bool)

(declare-fun tp!2403925 () Bool)

(declare-fun tp!2403926 () Bool)

(assert (=> b!8031890 (= e!4731713 (and tp!2403925 tp!2403926))))

(assert (=> b!8031815 (= tp!2403881 e!4731713)))

(assert (= (and b!8031815 (is-ElementMatch!21710 (reg!22039 r!13230))) b!8031887))

(assert (= (and b!8031815 (is-Concat!30713 (reg!22039 r!13230))) b!8031888))

(assert (= (and b!8031815 (is-Star!21710 (reg!22039 r!13230))) b!8031889))

(assert (= (and b!8031815 (is-Union!21710 (reg!22039 r!13230))) b!8031890))

(declare-fun b!8031893 () Bool)

(declare-fun e!4731714 () Bool)

(declare-fun tp!2403933 () Bool)

(assert (=> b!8031893 (= e!4731714 tp!2403933)))

(declare-fun b!8031891 () Bool)

(assert (=> b!8031891 (= e!4731714 tp_is_empty!54415)))

(declare-fun b!8031892 () Bool)

(declare-fun tp!2403932 () Bool)

(declare-fun tp!2403929 () Bool)

(assert (=> b!8031892 (= e!4731714 (and tp!2403932 tp!2403929))))

(declare-fun b!8031894 () Bool)

(declare-fun tp!2403930 () Bool)

(declare-fun tp!2403931 () Bool)

(assert (=> b!8031894 (= e!4731714 (and tp!2403930 tp!2403931))))

(assert (=> b!8031819 (= tp!2403882 e!4731714)))

(assert (= (and b!8031819 (is-ElementMatch!21710 (regOne!43932 r!13230))) b!8031891))

(assert (= (and b!8031819 (is-Concat!30713 (regOne!43932 r!13230))) b!8031892))

(assert (= (and b!8031819 (is-Star!21710 (regOne!43932 r!13230))) b!8031893))

(assert (= (and b!8031819 (is-Union!21710 (regOne!43932 r!13230))) b!8031894))

(declare-fun b!8031897 () Bool)

(declare-fun e!4731715 () Bool)

(declare-fun tp!2403938 () Bool)

(assert (=> b!8031897 (= e!4731715 tp!2403938)))

(declare-fun b!8031895 () Bool)

(assert (=> b!8031895 (= e!4731715 tp_is_empty!54415)))

(declare-fun b!8031896 () Bool)

(declare-fun tp!2403937 () Bool)

(declare-fun tp!2403934 () Bool)

(assert (=> b!8031896 (= e!4731715 (and tp!2403937 tp!2403934))))

(declare-fun b!8031898 () Bool)

(declare-fun tp!2403935 () Bool)

(declare-fun tp!2403936 () Bool)

(assert (=> b!8031898 (= e!4731715 (and tp!2403935 tp!2403936))))

(assert (=> b!8031819 (= tp!2403884 e!4731715)))

(assert (= (and b!8031819 (is-ElementMatch!21710 (regTwo!43932 r!13230))) b!8031895))

(assert (= (and b!8031819 (is-Concat!30713 (regTwo!43932 r!13230))) b!8031896))

(assert (= (and b!8031819 (is-Star!21710 (regTwo!43932 r!13230))) b!8031897))

(assert (= (and b!8031819 (is-Union!21710 (regTwo!43932 r!13230))) b!8031898))

(declare-fun b!8031903 () Bool)

(declare-fun e!4731718 () Bool)

(declare-fun tp!2403941 () Bool)

(assert (=> b!8031903 (= e!4731718 (and tp_is_empty!54415 tp!2403941))))

(assert (=> b!8031814 (= tp!2403883 e!4731718)))

(assert (= (and b!8031814 (is-Cons!75049 (t!390945 input!5983))) b!8031903))

(push 1)

(assert (not b!8031889))

(assert (not b!8031884))

(assert (not b!8031882))

(assert (not b!8031892))

(assert (not b!8031897))

(assert (not b!8031896))

(assert (not b!8031880))

(assert (not b!8031885))

(assert (not b!8031898))

(assert tp_is_empty!54415)

(assert (not b!8031881))

(assert (not bm!745067))

(assert (not b!8031888))

(assert (not b!8031893))

(assert (not b!8031866))

(assert (not b!8031894))

(assert (not d!2394720))

(assert (not b!8031903))

(assert (not bm!745066))

(assert (not b!8031886))

(assert (not b!8031890))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8031966 () Bool)

(declare-fun res!3176282 () Bool)

(declare-fun e!4731752 () Bool)

(assert (=> b!8031966 (=> (not res!3176282) (not e!4731752))))

(declare-fun call!745085 () Bool)

(assert (=> b!8031966 (= res!3176282 call!745085)))

(declare-fun e!4731754 () Bool)

(assert (=> b!8031966 (= e!4731754 e!4731752)))

(declare-fun b!8031967 () Bool)

(declare-fun call!745083 () Bool)

(assert (=> b!8031967 (= e!4731752 call!745083)))

(declare-fun b!8031968 () Bool)

(declare-fun e!4731756 () Bool)

(assert (=> b!8031968 (= e!4731756 e!4731754)))

(declare-fun c!1473489 () Bool)

(assert (=> b!8031968 (= c!1473489 (is-Union!21710 (ite c!1473482 (reg!22039 r!13230) (ite c!1473481 (regTwo!43933 r!13230) (regTwo!43932 r!13230)))))))

(declare-fun b!8031969 () Bool)

(declare-fun e!4731751 () Bool)

(assert (=> b!8031969 (= e!4731751 e!4731756)))

(declare-fun c!1473490 () Bool)

(assert (=> b!8031969 (= c!1473490 (is-Star!21710 (ite c!1473482 (reg!22039 r!13230) (ite c!1473481 (regTwo!43933 r!13230) (regTwo!43932 r!13230)))))))

(declare-fun b!8031970 () Bool)

(declare-fun e!4731755 () Bool)

(assert (=> b!8031970 (= e!4731755 call!745083)))

(declare-fun b!8031971 () Bool)

(declare-fun e!4731753 () Bool)

(assert (=> b!8031971 (= e!4731753 e!4731755)))

(declare-fun res!3176284 () Bool)

(assert (=> b!8031971 (=> (not res!3176284) (not e!4731755))))

(assert (=> b!8031971 (= res!3176284 call!745085)))

(declare-fun d!2394728 () Bool)

(declare-fun res!3176281 () Bool)

(assert (=> d!2394728 (=> res!3176281 e!4731751)))

(assert (=> d!2394728 (= res!3176281 (is-ElementMatch!21710 (ite c!1473482 (reg!22039 r!13230) (ite c!1473481 (regTwo!43933 r!13230) (regTwo!43932 r!13230)))))))

(assert (=> d!2394728 (= (validRegex!12006 (ite c!1473482 (reg!22039 r!13230) (ite c!1473481 (regTwo!43933 r!13230) (regTwo!43932 r!13230)))) e!4731751)))

(declare-fun b!8031972 () Bool)

(declare-fun e!4731750 () Bool)

(assert (=> b!8031972 (= e!4731756 e!4731750)))

(declare-fun res!3176280 () Bool)

(assert (=> b!8031972 (= res!3176280 (not (nullable!9743 (reg!22039 (ite c!1473482 (reg!22039 r!13230) (ite c!1473481 (regTwo!43933 r!13230) (regTwo!43932 r!13230)))))))))

(assert (=> b!8031972 (=> (not res!3176280) (not e!4731750))))

(declare-fun bm!745078 () Bool)

(declare-fun call!745084 () Bool)

(assert (=> bm!745078 (= call!745084 (validRegex!12006 (ite c!1473490 (reg!22039 (ite c!1473482 (reg!22039 r!13230) (ite c!1473481 (regTwo!43933 r!13230) (regTwo!43932 r!13230)))) (ite c!1473489 (regTwo!43933 (ite c!1473482 (reg!22039 r!13230) (ite c!1473481 (regTwo!43933 r!13230) (regTwo!43932 r!13230)))) (regTwo!43932 (ite c!1473482 (reg!22039 r!13230) (ite c!1473481 (regTwo!43933 r!13230) (regTwo!43932 r!13230))))))))))

(declare-fun bm!745079 () Bool)

(assert (=> bm!745079 (= call!745085 (validRegex!12006 (ite c!1473489 (regOne!43933 (ite c!1473482 (reg!22039 r!13230) (ite c!1473481 (regTwo!43933 r!13230) (regTwo!43932 r!13230)))) (regOne!43932 (ite c!1473482 (reg!22039 r!13230) (ite c!1473481 (regTwo!43933 r!13230) (regTwo!43932 r!13230)))))))))

(declare-fun b!8031973 () Bool)

(assert (=> b!8031973 (= e!4731750 call!745084)))

(declare-fun b!8031974 () Bool)

(declare-fun res!3176283 () Bool)

(assert (=> b!8031974 (=> res!3176283 e!4731753)))

(assert (=> b!8031974 (= res!3176283 (not (is-Concat!30713 (ite c!1473482 (reg!22039 r!13230) (ite c!1473481 (regTwo!43933 r!13230) (regTwo!43932 r!13230))))))))

(assert (=> b!8031974 (= e!4731754 e!4731753)))

(declare-fun bm!745080 () Bool)

(assert (=> bm!745080 (= call!745083 call!745084)))

(assert (= (and d!2394728 (not res!3176281)) b!8031969))

(assert (= (and b!8031969 c!1473490) b!8031972))

(assert (= (and b!8031969 (not c!1473490)) b!8031968))

(assert (= (and b!8031972 res!3176280) b!8031973))

(assert (= (and b!8031968 c!1473489) b!8031966))

(assert (= (and b!8031968 (not c!1473489)) b!8031974))

(assert (= (and b!8031966 res!3176282) b!8031967))

(assert (= (and b!8031974 (not res!3176283)) b!8031971))

(assert (= (and b!8031971 res!3176284) b!8031970))

(assert (= (or b!8031966 b!8031971) bm!745079))

(assert (= (or b!8031967 b!8031970) bm!745080))

(assert (= (or b!8031973 bm!745080) bm!745078))

(declare-fun m!8392418 () Bool)

(assert (=> b!8031972 m!8392418))

(declare-fun m!8392420 () Bool)

(assert (=> bm!745078 m!8392420))

(declare-fun m!8392422 () Bool)

(assert (=> bm!745079 m!8392422))

(assert (=> bm!745066 d!2394728))

(declare-fun b!8031975 () Bool)

(declare-fun res!3176287 () Bool)

(declare-fun e!4731759 () Bool)

(assert (=> b!8031975 (=> (not res!3176287) (not e!4731759))))

(declare-fun call!745088 () Bool)

(assert (=> b!8031975 (= res!3176287 call!745088)))

(declare-fun e!4731761 () Bool)

(assert (=> b!8031975 (= e!4731761 e!4731759)))

(declare-fun b!8031976 () Bool)

(declare-fun call!745086 () Bool)

(assert (=> b!8031976 (= e!4731759 call!745086)))

(declare-fun b!8031977 () Bool)

(declare-fun e!4731763 () Bool)

(assert (=> b!8031977 (= e!4731763 e!4731761)))

(declare-fun c!1473491 () Bool)

(assert (=> b!8031977 (= c!1473491 (is-Union!21710 (ite c!1473481 (regOne!43933 r!13230) (regOne!43932 r!13230))))))

(declare-fun b!8031978 () Bool)

(declare-fun e!4731758 () Bool)

(assert (=> b!8031978 (= e!4731758 e!4731763)))

(declare-fun c!1473492 () Bool)

(assert (=> b!8031978 (= c!1473492 (is-Star!21710 (ite c!1473481 (regOne!43933 r!13230) (regOne!43932 r!13230))))))

(declare-fun b!8031979 () Bool)

(declare-fun e!4731762 () Bool)

(assert (=> b!8031979 (= e!4731762 call!745086)))

(declare-fun b!8031980 () Bool)

(declare-fun e!4731760 () Bool)

(assert (=> b!8031980 (= e!4731760 e!4731762)))

(declare-fun res!3176289 () Bool)

(assert (=> b!8031980 (=> (not res!3176289) (not e!4731762))))

(assert (=> b!8031980 (= res!3176289 call!745088)))

(declare-fun d!2394730 () Bool)

(declare-fun res!3176286 () Bool)

(assert (=> d!2394730 (=> res!3176286 e!4731758)))

(assert (=> d!2394730 (= res!3176286 (is-ElementMatch!21710 (ite c!1473481 (regOne!43933 r!13230) (regOne!43932 r!13230))))))

(assert (=> d!2394730 (= (validRegex!12006 (ite c!1473481 (regOne!43933 r!13230) (regOne!43932 r!13230))) e!4731758)))

(declare-fun b!8031981 () Bool)

(declare-fun e!4731757 () Bool)

(assert (=> b!8031981 (= e!4731763 e!4731757)))

(declare-fun res!3176285 () Bool)

(assert (=> b!8031981 (= res!3176285 (not (nullable!9743 (reg!22039 (ite c!1473481 (regOne!43933 r!13230) (regOne!43932 r!13230))))))))

(assert (=> b!8031981 (=> (not res!3176285) (not e!4731757))))

(declare-fun call!745087 () Bool)

(declare-fun bm!745081 () Bool)

(assert (=> bm!745081 (= call!745087 (validRegex!12006 (ite c!1473492 (reg!22039 (ite c!1473481 (regOne!43933 r!13230) (regOne!43932 r!13230))) (ite c!1473491 (regTwo!43933 (ite c!1473481 (regOne!43933 r!13230) (regOne!43932 r!13230))) (regTwo!43932 (ite c!1473481 (regOne!43933 r!13230) (regOne!43932 r!13230)))))))))

(declare-fun bm!745082 () Bool)

(assert (=> bm!745082 (= call!745088 (validRegex!12006 (ite c!1473491 (regOne!43933 (ite c!1473481 (regOne!43933 r!13230) (regOne!43932 r!13230))) (regOne!43932 (ite c!1473481 (regOne!43933 r!13230) (regOne!43932 r!13230))))))))

(declare-fun b!8031982 () Bool)

(assert (=> b!8031982 (= e!4731757 call!745087)))

(declare-fun b!8031983 () Bool)

(declare-fun res!3176288 () Bool)

(assert (=> b!8031983 (=> res!3176288 e!4731760)))

(assert (=> b!8031983 (= res!3176288 (not (is-Concat!30713 (ite c!1473481 (regOne!43933 r!13230) (regOne!43932 r!13230)))))))

(assert (=> b!8031983 (= e!4731761 e!4731760)))

(declare-fun bm!745083 () Bool)

(assert (=> bm!745083 (= call!745086 call!745087)))

(assert (= (and d!2394730 (not res!3176286)) b!8031978))

(assert (= (and b!8031978 c!1473492) b!8031981))

(assert (= (and b!8031978 (not c!1473492)) b!8031977))

(assert (= (and b!8031981 res!3176285) b!8031982))

(assert (= (and b!8031977 c!1473491) b!8031975))

(assert (= (and b!8031977 (not c!1473491)) b!8031983))

(assert (= (and b!8031975 res!3176287) b!8031976))

(assert (= (and b!8031983 (not res!3176288)) b!8031980))

(assert (= (and b!8031980 res!3176289) b!8031979))

(assert (= (or b!8031975 b!8031980) bm!745082))

(assert (= (or b!8031976 b!8031979) bm!745083))

(assert (= (or b!8031982 bm!745083) bm!745081))

(declare-fun m!8392424 () Bool)

(assert (=> b!8031981 m!8392424))

(declare-fun m!8392426 () Bool)

(assert (=> bm!745081 m!8392426))

(declare-fun m!8392428 () Bool)

(assert (=> bm!745082 m!8392428))

(assert (=> bm!745067 d!2394730))

(declare-fun d!2394732 () Bool)

(assert (=> d!2394732 (= (nullable!9743 (reg!22039 r!13230)) (nullableFct!3852 (reg!22039 r!13230)))))

(declare-fun bs!1971457 () Bool)

(assert (= bs!1971457 d!2394732))

(declare-fun m!8392430 () Bool)

(assert (=> bs!1971457 m!8392430))

(assert (=> b!8031866 d!2394732))

(declare-fun bm!745088 () Bool)

(declare-fun call!745093 () Bool)

(declare-fun c!1473495 () Bool)

(assert (=> bm!745088 (= call!745093 (nullable!9743 (ite c!1473495 (regTwo!43933 r!13230) (regOne!43932 r!13230))))))

(declare-fun b!8031998 () Bool)

(declare-fun e!4731781 () Bool)

(declare-fun call!745094 () Bool)

(assert (=> b!8031998 (= e!4731781 call!745094)))

(declare-fun b!8031999 () Bool)

(declare-fun e!4731778 () Bool)

(declare-fun e!4731777 () Bool)

(assert (=> b!8031999 (= e!4731778 e!4731777)))

(declare-fun res!3176302 () Bool)

(assert (=> b!8031999 (=> (not res!3176302) (not e!4731777))))

(assert (=> b!8031999 (= res!3176302 (and (not (is-EmptyLang!21710 r!13230)) (not (is-ElementMatch!21710 r!13230))))))

(declare-fun b!8032000 () Bool)

(declare-fun e!4731780 () Bool)

(declare-fun e!4731776 () Bool)

(assert (=> b!8032000 (= e!4731780 e!4731776)))

(assert (=> b!8032000 (= c!1473495 (is-Union!21710 r!13230))))

(declare-fun b!8032001 () Bool)

(assert (=> b!8032001 (= e!4731777 e!4731780)))

(declare-fun res!3176303 () Bool)

(assert (=> b!8032001 (=> res!3176303 e!4731780)))

(assert (=> b!8032001 (= res!3176303 (is-Star!21710 r!13230))))

(declare-fun b!8032002 () Bool)

(assert (=> b!8032002 (= e!4731776 e!4731781)))

(declare-fun res!3176301 () Bool)

(assert (=> b!8032002 (= res!3176301 call!745093)))

(assert (=> b!8032002 (=> (not res!3176301) (not e!4731781))))

(declare-fun d!2394734 () Bool)

(declare-fun res!3176300 () Bool)

(assert (=> d!2394734 (=> res!3176300 e!4731778)))

(assert (=> d!2394734 (= res!3176300 (is-EmptyExpr!21710 r!13230))))

(assert (=> d!2394734 (= (nullableFct!3852 r!13230) e!4731778)))

(declare-fun b!8032003 () Bool)

(declare-fun e!4731779 () Bool)

(assert (=> b!8032003 (= e!4731776 e!4731779)))

(declare-fun res!3176304 () Bool)

(assert (=> b!8032003 (= res!3176304 call!745094)))

(assert (=> b!8032003 (=> res!3176304 e!4731779)))

(declare-fun bm!745089 () Bool)

(assert (=> bm!745089 (= call!745094 (nullable!9743 (ite c!1473495 (regOne!43933 r!13230) (regTwo!43932 r!13230))))))

(declare-fun b!8032004 () Bool)

(assert (=> b!8032004 (= e!4731779 call!745093)))

(assert (= (and d!2394734 (not res!3176300)) b!8031999))

(assert (= (and b!8031999 res!3176302) b!8032001))

(assert (= (and b!8032001 (not res!3176303)) b!8032000))

(assert (= (and b!8032000 c!1473495) b!8032003))

(assert (= (and b!8032000 (not c!1473495)) b!8032002))

(assert (= (and b!8032003 (not res!3176304)) b!8032004))

(assert (= (and b!8032002 res!3176301) b!8031998))

(assert (= (or b!8032004 b!8032002) bm!745088))

(assert (= (or b!8032003 b!8031998) bm!745089))

(declare-fun m!8392432 () Bool)

(assert (=> bm!745088 m!8392432))

(declare-fun m!8392434 () Bool)

(assert (=> bm!745089 m!8392434))

(assert (=> d!2394720 d!2394734))

(declare-fun b!8032007 () Bool)

(declare-fun e!4731782 () Bool)

(declare-fun tp!2403984 () Bool)

(assert (=> b!8032007 (= e!4731782 tp!2403984)))

(declare-fun b!8032005 () Bool)

(assert (=> b!8032005 (= e!4731782 tp_is_empty!54415)))

(declare-fun b!8032006 () Bool)

(declare-fun tp!2403983 () Bool)

(declare-fun tp!2403980 () Bool)

(assert (=> b!8032006 (= e!4731782 (and tp!2403983 tp!2403980))))

(declare-fun b!8032008 () Bool)

(declare-fun tp!2403981 () Bool)

(declare-fun tp!2403982 () Bool)

(assert (=> b!8032008 (= e!4731782 (and tp!2403981 tp!2403982))))

(assert (=> b!8031882 (= tp!2403915 e!4731782)))

(assert (= (and b!8031882 (is-ElementMatch!21710 (regOne!43933 (regOne!43933 r!13230)))) b!8032005))

(assert (= (and b!8031882 (is-Concat!30713 (regOne!43933 (regOne!43933 r!13230)))) b!8032006))

(assert (= (and b!8031882 (is-Star!21710 (regOne!43933 (regOne!43933 r!13230)))) b!8032007))

(assert (= (and b!8031882 (is-Union!21710 (regOne!43933 (regOne!43933 r!13230)))) b!8032008))

(declare-fun b!8032011 () Bool)

(declare-fun e!4731783 () Bool)

(declare-fun tp!2403989 () Bool)

(assert (=> b!8032011 (= e!4731783 tp!2403989)))

(declare-fun b!8032009 () Bool)

(assert (=> b!8032009 (= e!4731783 tp_is_empty!54415)))

(declare-fun b!8032010 () Bool)

(declare-fun tp!2403988 () Bool)

(declare-fun tp!2403985 () Bool)

(assert (=> b!8032010 (= e!4731783 (and tp!2403988 tp!2403985))))

(declare-fun b!8032012 () Bool)

(declare-fun tp!2403986 () Bool)

(declare-fun tp!2403987 () Bool)

(assert (=> b!8032012 (= e!4731783 (and tp!2403986 tp!2403987))))

(assert (=> b!8031882 (= tp!2403916 e!4731783)))

(assert (= (and b!8031882 (is-ElementMatch!21710 (regTwo!43933 (regOne!43933 r!13230)))) b!8032009))

(assert (= (and b!8031882 (is-Concat!30713 (regTwo!43933 (regOne!43933 r!13230)))) b!8032010))

(assert (= (and b!8031882 (is-Star!21710 (regTwo!43933 (regOne!43933 r!13230)))) b!8032011))

(assert (= (and b!8031882 (is-Union!21710 (regTwo!43933 (regOne!43933 r!13230)))) b!8032012))

(declare-fun b!8032013 () Bool)

(declare-fun e!4731784 () Bool)

(declare-fun tp!2403990 () Bool)

(assert (=> b!8032013 (= e!4731784 (and tp_is_empty!54415 tp!2403990))))

(assert (=> b!8031903 (= tp!2403941 e!4731784)))

(assert (= (and b!8031903 (is-Cons!75049 (t!390945 (t!390945 input!5983)))) b!8032013))

(declare-fun b!8032016 () Bool)

(declare-fun e!4731785 () Bool)

(declare-fun tp!2403995 () Bool)

(assert (=> b!8032016 (= e!4731785 tp!2403995)))

(declare-fun b!8032014 () Bool)

(assert (=> b!8032014 (= e!4731785 tp_is_empty!54415)))

(declare-fun b!8032015 () Bool)

(declare-fun tp!2403994 () Bool)

(declare-fun tp!2403991 () Bool)

(assert (=> b!8032015 (= e!4731785 (and tp!2403994 tp!2403991))))

(declare-fun b!8032017 () Bool)

(declare-fun tp!2403992 () Bool)

(declare-fun tp!2403993 () Bool)

(assert (=> b!8032017 (= e!4731785 (and tp!2403992 tp!2403993))))

(assert (=> b!8031896 (= tp!2403937 e!4731785)))

(assert (= (and b!8031896 (is-ElementMatch!21710 (regOne!43932 (regTwo!43932 r!13230)))) b!8032014))

(assert (= (and b!8031896 (is-Concat!30713 (regOne!43932 (regTwo!43932 r!13230)))) b!8032015))

(assert (= (and b!8031896 (is-Star!21710 (regOne!43932 (regTwo!43932 r!13230)))) b!8032016))

(assert (= (and b!8031896 (is-Union!21710 (regOne!43932 (regTwo!43932 r!13230)))) b!8032017))

(declare-fun b!8032020 () Bool)

(declare-fun e!4731786 () Bool)

(declare-fun tp!2404000 () Bool)

(assert (=> b!8032020 (= e!4731786 tp!2404000)))

(declare-fun b!8032018 () Bool)

(assert (=> b!8032018 (= e!4731786 tp_is_empty!54415)))

(declare-fun b!8032019 () Bool)

(declare-fun tp!2403999 () Bool)

(declare-fun tp!2403996 () Bool)

(assert (=> b!8032019 (= e!4731786 (and tp!2403999 tp!2403996))))

(declare-fun b!8032021 () Bool)

(declare-fun tp!2403997 () Bool)

(declare-fun tp!2403998 () Bool)

(assert (=> b!8032021 (= e!4731786 (and tp!2403997 tp!2403998))))

(assert (=> b!8031896 (= tp!2403934 e!4731786)))

(assert (= (and b!8031896 (is-ElementMatch!21710 (regTwo!43932 (regTwo!43932 r!13230)))) b!8032018))

(assert (= (and b!8031896 (is-Concat!30713 (regTwo!43932 (regTwo!43932 r!13230)))) b!8032019))

(assert (= (and b!8031896 (is-Star!21710 (regTwo!43932 (regTwo!43932 r!13230)))) b!8032020))

(assert (= (and b!8031896 (is-Union!21710 (regTwo!43932 (regTwo!43932 r!13230)))) b!8032021))

(declare-fun b!8032024 () Bool)

(declare-fun e!4731787 () Bool)

(declare-fun tp!2404005 () Bool)

(assert (=> b!8032024 (= e!4731787 tp!2404005)))

(declare-fun b!8032022 () Bool)

(assert (=> b!8032022 (= e!4731787 tp_is_empty!54415)))

(declare-fun b!8032023 () Bool)

(declare-fun tp!2404004 () Bool)

(declare-fun tp!2404001 () Bool)

(assert (=> b!8032023 (= e!4731787 (and tp!2404004 tp!2404001))))

(declare-fun b!8032025 () Bool)

(declare-fun tp!2404002 () Bool)

(declare-fun tp!2404003 () Bool)

(assert (=> b!8032025 (= e!4731787 (and tp!2404002 tp!2404003))))

(assert (=> b!8031888 (= tp!2403927 e!4731787)))

(assert (= (and b!8031888 (is-ElementMatch!21710 (regOne!43932 (reg!22039 r!13230)))) b!8032022))

(assert (= (and b!8031888 (is-Concat!30713 (regOne!43932 (reg!22039 r!13230)))) b!8032023))

(assert (= (and b!8031888 (is-Star!21710 (regOne!43932 (reg!22039 r!13230)))) b!8032024))

(assert (= (and b!8031888 (is-Union!21710 (regOne!43932 (reg!22039 r!13230)))) b!8032025))

(declare-fun b!8032028 () Bool)

(declare-fun e!4731788 () Bool)

(declare-fun tp!2404010 () Bool)

(assert (=> b!8032028 (= e!4731788 tp!2404010)))

(declare-fun b!8032026 () Bool)

(assert (=> b!8032026 (= e!4731788 tp_is_empty!54415)))

(declare-fun b!8032027 () Bool)

(declare-fun tp!2404009 () Bool)

(declare-fun tp!2404006 () Bool)

(assert (=> b!8032027 (= e!4731788 (and tp!2404009 tp!2404006))))

(declare-fun b!8032029 () Bool)

(declare-fun tp!2404007 () Bool)

(declare-fun tp!2404008 () Bool)

(assert (=> b!8032029 (= e!4731788 (and tp!2404007 tp!2404008))))

(assert (=> b!8031888 (= tp!2403924 e!4731788)))

(assert (= (and b!8031888 (is-ElementMatch!21710 (regTwo!43932 (reg!22039 r!13230)))) b!8032026))

(assert (= (and b!8031888 (is-Concat!30713 (regTwo!43932 (reg!22039 r!13230)))) b!8032027))

(assert (= (and b!8031888 (is-Star!21710 (regTwo!43932 (reg!22039 r!13230)))) b!8032028))

(assert (= (and b!8031888 (is-Union!21710 (regTwo!43932 (reg!22039 r!13230)))) b!8032029))

(declare-fun b!8032032 () Bool)

(declare-fun e!4731789 () Bool)

(declare-fun tp!2404015 () Bool)

(assert (=> b!8032032 (= e!4731789 tp!2404015)))

(declare-fun b!8032030 () Bool)

(assert (=> b!8032030 (= e!4731789 tp_is_empty!54415)))

(declare-fun b!8032031 () Bool)

(declare-fun tp!2404014 () Bool)

(declare-fun tp!2404011 () Bool)

(assert (=> b!8032031 (= e!4731789 (and tp!2404014 tp!2404011))))

(declare-fun b!8032033 () Bool)

(declare-fun tp!2404012 () Bool)

(declare-fun tp!2404013 () Bool)

(assert (=> b!8032033 (= e!4731789 (and tp!2404012 tp!2404013))))

(assert (=> b!8031897 (= tp!2403938 e!4731789)))

(assert (= (and b!8031897 (is-ElementMatch!21710 (reg!22039 (regTwo!43932 r!13230)))) b!8032030))

(assert (= (and b!8031897 (is-Concat!30713 (reg!22039 (regTwo!43932 r!13230)))) b!8032031))

(assert (= (and b!8031897 (is-Star!21710 (reg!22039 (regTwo!43932 r!13230)))) b!8032032))

(assert (= (and b!8031897 (is-Union!21710 (reg!22039 (regTwo!43932 r!13230)))) b!8032033))

(declare-fun b!8032036 () Bool)

(declare-fun e!4731790 () Bool)

(declare-fun tp!2404020 () Bool)

(assert (=> b!8032036 (= e!4731790 tp!2404020)))

(declare-fun b!8032034 () Bool)

(assert (=> b!8032034 (= e!4731790 tp_is_empty!54415)))

(declare-fun b!8032035 () Bool)

(declare-fun tp!2404019 () Bool)

(declare-fun tp!2404016 () Bool)

(assert (=> b!8032035 (= e!4731790 (and tp!2404019 tp!2404016))))

(declare-fun b!8032037 () Bool)

(declare-fun tp!2404017 () Bool)

(declare-fun tp!2404018 () Bool)

(assert (=> b!8032037 (= e!4731790 (and tp!2404017 tp!2404018))))

(assert (=> b!8031892 (= tp!2403932 e!4731790)))

(assert (= (and b!8031892 (is-ElementMatch!21710 (regOne!43932 (regOne!43932 r!13230)))) b!8032034))

(assert (= (and b!8031892 (is-Concat!30713 (regOne!43932 (regOne!43932 r!13230)))) b!8032035))

(assert (= (and b!8031892 (is-Star!21710 (regOne!43932 (regOne!43932 r!13230)))) b!8032036))

(assert (= (and b!8031892 (is-Union!21710 (regOne!43932 (regOne!43932 r!13230)))) b!8032037))

(declare-fun b!8032040 () Bool)

(declare-fun e!4731791 () Bool)

(declare-fun tp!2404025 () Bool)

(assert (=> b!8032040 (= e!4731791 tp!2404025)))

(declare-fun b!8032038 () Bool)

(assert (=> b!8032038 (= e!4731791 tp_is_empty!54415)))

(declare-fun b!8032039 () Bool)

(declare-fun tp!2404024 () Bool)

(declare-fun tp!2404021 () Bool)

(assert (=> b!8032039 (= e!4731791 (and tp!2404024 tp!2404021))))

(declare-fun b!8032041 () Bool)

(declare-fun tp!2404022 () Bool)

(declare-fun tp!2404023 () Bool)

(assert (=> b!8032041 (= e!4731791 (and tp!2404022 tp!2404023))))

(assert (=> b!8031892 (= tp!2403929 e!4731791)))

(assert (= (and b!8031892 (is-ElementMatch!21710 (regTwo!43932 (regOne!43932 r!13230)))) b!8032038))

(assert (= (and b!8031892 (is-Concat!30713 (regTwo!43932 (regOne!43932 r!13230)))) b!8032039))

(assert (= (and b!8031892 (is-Star!21710 (regTwo!43932 (regOne!43932 r!13230)))) b!8032040))

(assert (= (and b!8031892 (is-Union!21710 (regTwo!43932 (regOne!43932 r!13230)))) b!8032041))

(declare-fun b!8032044 () Bool)

(declare-fun e!4731792 () Bool)

(declare-fun tp!2404030 () Bool)

(assert (=> b!8032044 (= e!4731792 tp!2404030)))

(declare-fun b!8032042 () Bool)

(assert (=> b!8032042 (= e!4731792 tp_is_empty!54415)))

(declare-fun b!8032043 () Bool)

(declare-fun tp!2404029 () Bool)

(declare-fun tp!2404026 () Bool)

(assert (=> b!8032043 (= e!4731792 (and tp!2404029 tp!2404026))))

(declare-fun b!8032045 () Bool)

(declare-fun tp!2404027 () Bool)

(declare-fun tp!2404028 () Bool)

(assert (=> b!8032045 (= e!4731792 (and tp!2404027 tp!2404028))))

(assert (=> b!8031894 (= tp!2403930 e!4731792)))

(assert (= (and b!8031894 (is-ElementMatch!21710 (regOne!43933 (regOne!43932 r!13230)))) b!8032042))

(assert (= (and b!8031894 (is-Concat!30713 (regOne!43933 (regOne!43932 r!13230)))) b!8032043))

(assert (= (and b!8031894 (is-Star!21710 (regOne!43933 (regOne!43932 r!13230)))) b!8032044))

(assert (= (and b!8031894 (is-Union!21710 (regOne!43933 (regOne!43932 r!13230)))) b!8032045))

(declare-fun b!8032048 () Bool)

(declare-fun e!4731793 () Bool)

(declare-fun tp!2404035 () Bool)

(assert (=> b!8032048 (= e!4731793 tp!2404035)))

(declare-fun b!8032046 () Bool)

(assert (=> b!8032046 (= e!4731793 tp_is_empty!54415)))

(declare-fun b!8032047 () Bool)

(declare-fun tp!2404034 () Bool)

(declare-fun tp!2404031 () Bool)

(assert (=> b!8032047 (= e!4731793 (and tp!2404034 tp!2404031))))

(declare-fun b!8032049 () Bool)

(declare-fun tp!2404032 () Bool)

(declare-fun tp!2404033 () Bool)

(assert (=> b!8032049 (= e!4731793 (and tp!2404032 tp!2404033))))

(assert (=> b!8031894 (= tp!2403931 e!4731793)))

(assert (= (and b!8031894 (is-ElementMatch!21710 (regTwo!43933 (regOne!43932 r!13230)))) b!8032046))

(assert (= (and b!8031894 (is-Concat!30713 (regTwo!43933 (regOne!43932 r!13230)))) b!8032047))

(assert (= (and b!8031894 (is-Star!21710 (regTwo!43933 (regOne!43932 r!13230)))) b!8032048))

(assert (= (and b!8031894 (is-Union!21710 (regTwo!43933 (regOne!43932 r!13230)))) b!8032049))

(declare-fun b!8032052 () Bool)

(declare-fun e!4731794 () Bool)

(declare-fun tp!2404040 () Bool)

(assert (=> b!8032052 (= e!4731794 tp!2404040)))

(declare-fun b!8032050 () Bool)

(assert (=> b!8032050 (= e!4731794 tp_is_empty!54415)))

(declare-fun b!8032051 () Bool)

(declare-fun tp!2404039 () Bool)

(declare-fun tp!2404036 () Bool)

(assert (=> b!8032051 (= e!4731794 (and tp!2404039 tp!2404036))))

(declare-fun b!8032053 () Bool)

(declare-fun tp!2404037 () Bool)

(declare-fun tp!2404038 () Bool)

(assert (=> b!8032053 (= e!4731794 (and tp!2404037 tp!2404038))))

(assert (=> b!8031880 (= tp!2403917 e!4731794)))

(assert (= (and b!8031880 (is-ElementMatch!21710 (regOne!43932 (regOne!43933 r!13230)))) b!8032050))

(assert (= (and b!8031880 (is-Concat!30713 (regOne!43932 (regOne!43933 r!13230)))) b!8032051))

(assert (= (and b!8031880 (is-Star!21710 (regOne!43932 (regOne!43933 r!13230)))) b!8032052))

(assert (= (and b!8031880 (is-Union!21710 (regOne!43932 (regOne!43933 r!13230)))) b!8032053))

(declare-fun b!8032056 () Bool)

(declare-fun e!4731795 () Bool)

(declare-fun tp!2404045 () Bool)

(assert (=> b!8032056 (= e!4731795 tp!2404045)))

(declare-fun b!8032054 () Bool)

(assert (=> b!8032054 (= e!4731795 tp_is_empty!54415)))

(declare-fun b!8032055 () Bool)

(declare-fun tp!2404044 () Bool)

(declare-fun tp!2404041 () Bool)

(assert (=> b!8032055 (= e!4731795 (and tp!2404044 tp!2404041))))

(declare-fun b!8032057 () Bool)

(declare-fun tp!2404042 () Bool)

(declare-fun tp!2404043 () Bool)

(assert (=> b!8032057 (= e!4731795 (and tp!2404042 tp!2404043))))

(assert (=> b!8031880 (= tp!2403914 e!4731795)))

(assert (= (and b!8031880 (is-ElementMatch!21710 (regTwo!43932 (regOne!43933 r!13230)))) b!8032054))

(assert (= (and b!8031880 (is-Concat!30713 (regTwo!43932 (regOne!43933 r!13230)))) b!8032055))

(assert (= (and b!8031880 (is-Star!21710 (regTwo!43932 (regOne!43933 r!13230)))) b!8032056))

(assert (= (and b!8031880 (is-Union!21710 (regTwo!43932 (regOne!43933 r!13230)))) b!8032057))

(declare-fun b!8032060 () Bool)

(declare-fun e!4731796 () Bool)

(declare-fun tp!2404050 () Bool)

(assert (=> b!8032060 (= e!4731796 tp!2404050)))

(declare-fun b!8032058 () Bool)

(assert (=> b!8032058 (= e!4731796 tp_is_empty!54415)))

(declare-fun b!8032059 () Bool)

(declare-fun tp!2404049 () Bool)

(declare-fun tp!2404046 () Bool)

(assert (=> b!8032059 (= e!4731796 (and tp!2404049 tp!2404046))))

(declare-fun b!8032061 () Bool)

(declare-fun tp!2404047 () Bool)

(declare-fun tp!2404048 () Bool)

(assert (=> b!8032061 (= e!4731796 (and tp!2404047 tp!2404048))))

(assert (=> b!8031889 (= tp!2403928 e!4731796)))

(assert (= (and b!8031889 (is-ElementMatch!21710 (reg!22039 (reg!22039 r!13230)))) b!8032058))

(assert (= (and b!8031889 (is-Concat!30713 (reg!22039 (reg!22039 r!13230)))) b!8032059))

(assert (= (and b!8031889 (is-Star!21710 (reg!22039 (reg!22039 r!13230)))) b!8032060))

(assert (= (and b!8031889 (is-Union!21710 (reg!22039 (reg!22039 r!13230)))) b!8032061))

(declare-fun b!8032064 () Bool)

(declare-fun e!4731797 () Bool)

(declare-fun tp!2404055 () Bool)

(assert (=> b!8032064 (= e!4731797 tp!2404055)))

(declare-fun b!8032062 () Bool)

(assert (=> b!8032062 (= e!4731797 tp_is_empty!54415)))

(declare-fun b!8032063 () Bool)

(declare-fun tp!2404054 () Bool)

(declare-fun tp!2404051 () Bool)

(assert (=> b!8032063 (= e!4731797 (and tp!2404054 tp!2404051))))

(declare-fun b!8032065 () Bool)

(declare-fun tp!2404052 () Bool)

(declare-fun tp!2404053 () Bool)

(assert (=> b!8032065 (= e!4731797 (and tp!2404052 tp!2404053))))

(assert (=> b!8031898 (= tp!2403935 e!4731797)))

(assert (= (and b!8031898 (is-ElementMatch!21710 (regOne!43933 (regTwo!43932 r!13230)))) b!8032062))

(assert (= (and b!8031898 (is-Concat!30713 (regOne!43933 (regTwo!43932 r!13230)))) b!8032063))

(assert (= (and b!8031898 (is-Star!21710 (regOne!43933 (regTwo!43932 r!13230)))) b!8032064))

(assert (= (and b!8031898 (is-Union!21710 (regOne!43933 (regTwo!43932 r!13230)))) b!8032065))

(declare-fun b!8032068 () Bool)

(declare-fun e!4731798 () Bool)

(declare-fun tp!2404060 () Bool)

(assert (=> b!8032068 (= e!4731798 tp!2404060)))

(declare-fun b!8032066 () Bool)

(assert (=> b!8032066 (= e!4731798 tp_is_empty!54415)))

(declare-fun b!8032067 () Bool)

(declare-fun tp!2404059 () Bool)

(declare-fun tp!2404056 () Bool)

(assert (=> b!8032067 (= e!4731798 (and tp!2404059 tp!2404056))))

(declare-fun b!8032069 () Bool)

(declare-fun tp!2404057 () Bool)

(declare-fun tp!2404058 () Bool)

(assert (=> b!8032069 (= e!4731798 (and tp!2404057 tp!2404058))))

(assert (=> b!8031898 (= tp!2403936 e!4731798)))

(assert (= (and b!8031898 (is-ElementMatch!21710 (regTwo!43933 (regTwo!43932 r!13230)))) b!8032066))

(assert (= (and b!8031898 (is-Concat!30713 (regTwo!43933 (regTwo!43932 r!13230)))) b!8032067))

(assert (= (and b!8031898 (is-Star!21710 (regTwo!43933 (regTwo!43932 r!13230)))) b!8032068))

(assert (= (and b!8031898 (is-Union!21710 (regTwo!43933 (regTwo!43932 r!13230)))) b!8032069))

(declare-fun b!8032072 () Bool)

(declare-fun e!4731799 () Bool)

(declare-fun tp!2404065 () Bool)

(assert (=> b!8032072 (= e!4731799 tp!2404065)))

(declare-fun b!8032070 () Bool)

(assert (=> b!8032070 (= e!4731799 tp_is_empty!54415)))

(declare-fun b!8032071 () Bool)

(declare-fun tp!2404064 () Bool)

(declare-fun tp!2404061 () Bool)

(assert (=> b!8032071 (= e!4731799 (and tp!2404064 tp!2404061))))

(declare-fun b!8032073 () Bool)

(declare-fun tp!2404062 () Bool)

(declare-fun tp!2404063 () Bool)

(assert (=> b!8032073 (= e!4731799 (and tp!2404062 tp!2404063))))

(assert (=> b!8031884 (= tp!2403922 e!4731799)))

(assert (= (and b!8031884 (is-ElementMatch!21710 (regOne!43932 (regTwo!43933 r!13230)))) b!8032070))

(assert (= (and b!8031884 (is-Concat!30713 (regOne!43932 (regTwo!43933 r!13230)))) b!8032071))

(assert (= (and b!8031884 (is-Star!21710 (regOne!43932 (regTwo!43933 r!13230)))) b!8032072))

(assert (= (and b!8031884 (is-Union!21710 (regOne!43932 (regTwo!43933 r!13230)))) b!8032073))

(declare-fun b!8032076 () Bool)

(declare-fun e!4731800 () Bool)

(declare-fun tp!2404070 () Bool)

(assert (=> b!8032076 (= e!4731800 tp!2404070)))

(declare-fun b!8032074 () Bool)

(assert (=> b!8032074 (= e!4731800 tp_is_empty!54415)))

(declare-fun b!8032075 () Bool)

(declare-fun tp!2404069 () Bool)

(declare-fun tp!2404066 () Bool)

(assert (=> b!8032075 (= e!4731800 (and tp!2404069 tp!2404066))))

(declare-fun b!8032077 () Bool)

(declare-fun tp!2404067 () Bool)

(declare-fun tp!2404068 () Bool)

(assert (=> b!8032077 (= e!4731800 (and tp!2404067 tp!2404068))))

(assert (=> b!8031884 (= tp!2403919 e!4731800)))

(assert (= (and b!8031884 (is-ElementMatch!21710 (regTwo!43932 (regTwo!43933 r!13230)))) b!8032074))

(assert (= (and b!8031884 (is-Concat!30713 (regTwo!43932 (regTwo!43933 r!13230)))) b!8032075))

(assert (= (and b!8031884 (is-Star!21710 (regTwo!43932 (regTwo!43933 r!13230)))) b!8032076))

(assert (= (and b!8031884 (is-Union!21710 (regTwo!43932 (regTwo!43933 r!13230)))) b!8032077))

(declare-fun b!8032080 () Bool)

(declare-fun e!4731801 () Bool)

(declare-fun tp!2404075 () Bool)

(assert (=> b!8032080 (= e!4731801 tp!2404075)))

(declare-fun b!8032078 () Bool)

(assert (=> b!8032078 (= e!4731801 tp_is_empty!54415)))

(declare-fun b!8032079 () Bool)

(declare-fun tp!2404074 () Bool)

(declare-fun tp!2404071 () Bool)

(assert (=> b!8032079 (= e!4731801 (and tp!2404074 tp!2404071))))

(declare-fun b!8032081 () Bool)

(declare-fun tp!2404072 () Bool)

(declare-fun tp!2404073 () Bool)

(assert (=> b!8032081 (= e!4731801 (and tp!2404072 tp!2404073))))

(assert (=> b!8031893 (= tp!2403933 e!4731801)))

(assert (= (and b!8031893 (is-ElementMatch!21710 (reg!22039 (regOne!43932 r!13230)))) b!8032078))

(assert (= (and b!8031893 (is-Concat!30713 (reg!22039 (regOne!43932 r!13230)))) b!8032079))

(assert (= (and b!8031893 (is-Star!21710 (reg!22039 (regOne!43932 r!13230)))) b!8032080))

(assert (= (and b!8031893 (is-Union!21710 (reg!22039 (regOne!43932 r!13230)))) b!8032081))

(declare-fun b!8032084 () Bool)

(declare-fun e!4731802 () Bool)

(declare-fun tp!2404080 () Bool)

(assert (=> b!8032084 (= e!4731802 tp!2404080)))

(declare-fun b!8032082 () Bool)

(assert (=> b!8032082 (= e!4731802 tp_is_empty!54415)))

(declare-fun b!8032083 () Bool)

(declare-fun tp!2404079 () Bool)

(declare-fun tp!2404076 () Bool)

(assert (=> b!8032083 (= e!4731802 (and tp!2404079 tp!2404076))))

(declare-fun b!8032085 () Bool)

(declare-fun tp!2404077 () Bool)

(declare-fun tp!2404078 () Bool)

(assert (=> b!8032085 (= e!4731802 (and tp!2404077 tp!2404078))))

(assert (=> b!8031886 (= tp!2403920 e!4731802)))

(assert (= (and b!8031886 (is-ElementMatch!21710 (regOne!43933 (regTwo!43933 r!13230)))) b!8032082))

(assert (= (and b!8031886 (is-Concat!30713 (regOne!43933 (regTwo!43933 r!13230)))) b!8032083))

(assert (= (and b!8031886 (is-Star!21710 (regOne!43933 (regTwo!43933 r!13230)))) b!8032084))

(assert (= (and b!8031886 (is-Union!21710 (regOne!43933 (regTwo!43933 r!13230)))) b!8032085))

(declare-fun b!8032088 () Bool)

(declare-fun e!4731803 () Bool)

(declare-fun tp!2404085 () Bool)

(assert (=> b!8032088 (= e!4731803 tp!2404085)))

(declare-fun b!8032086 () Bool)

(assert (=> b!8032086 (= e!4731803 tp_is_empty!54415)))

(declare-fun b!8032087 () Bool)

(declare-fun tp!2404084 () Bool)

(declare-fun tp!2404081 () Bool)

(assert (=> b!8032087 (= e!4731803 (and tp!2404084 tp!2404081))))

(declare-fun b!8032089 () Bool)

(declare-fun tp!2404082 () Bool)

(declare-fun tp!2404083 () Bool)

(assert (=> b!8032089 (= e!4731803 (and tp!2404082 tp!2404083))))

(assert (=> b!8031886 (= tp!2403921 e!4731803)))

(assert (= (and b!8031886 (is-ElementMatch!21710 (regTwo!43933 (regTwo!43933 r!13230)))) b!8032086))

(assert (= (and b!8031886 (is-Concat!30713 (regTwo!43933 (regTwo!43933 r!13230)))) b!8032087))

(assert (= (and b!8031886 (is-Star!21710 (regTwo!43933 (regTwo!43933 r!13230)))) b!8032088))

(assert (= (and b!8031886 (is-Union!21710 (regTwo!43933 (regTwo!43933 r!13230)))) b!8032089))

(declare-fun b!8032092 () Bool)

(declare-fun e!4731804 () Bool)

(declare-fun tp!2404090 () Bool)

(assert (=> b!8032092 (= e!4731804 tp!2404090)))

(declare-fun b!8032090 () Bool)

(assert (=> b!8032090 (= e!4731804 tp_is_empty!54415)))

(declare-fun b!8032091 () Bool)

(declare-fun tp!2404089 () Bool)

(declare-fun tp!2404086 () Bool)

(assert (=> b!8032091 (= e!4731804 (and tp!2404089 tp!2404086))))

(declare-fun b!8032093 () Bool)

(declare-fun tp!2404087 () Bool)

(declare-fun tp!2404088 () Bool)

(assert (=> b!8032093 (= e!4731804 (and tp!2404087 tp!2404088))))

(assert (=> b!8031881 (= tp!2403918 e!4731804)))

(assert (= (and b!8031881 (is-ElementMatch!21710 (reg!22039 (regOne!43933 r!13230)))) b!8032090))

(assert (= (and b!8031881 (is-Concat!30713 (reg!22039 (regOne!43933 r!13230)))) b!8032091))

(assert (= (and b!8031881 (is-Star!21710 (reg!22039 (regOne!43933 r!13230)))) b!8032092))

(assert (= (and b!8031881 (is-Union!21710 (reg!22039 (regOne!43933 r!13230)))) b!8032093))

(declare-fun b!8032096 () Bool)

(declare-fun e!4731805 () Bool)

(declare-fun tp!2404095 () Bool)

(assert (=> b!8032096 (= e!4731805 tp!2404095)))

(declare-fun b!8032094 () Bool)

(assert (=> b!8032094 (= e!4731805 tp_is_empty!54415)))

(declare-fun b!8032095 () Bool)

(declare-fun tp!2404094 () Bool)

(declare-fun tp!2404091 () Bool)

(assert (=> b!8032095 (= e!4731805 (and tp!2404094 tp!2404091))))

(declare-fun b!8032097 () Bool)

(declare-fun tp!2404092 () Bool)

(declare-fun tp!2404093 () Bool)

(assert (=> b!8032097 (= e!4731805 (and tp!2404092 tp!2404093))))

(assert (=> b!8031890 (= tp!2403925 e!4731805)))

(assert (= (and b!8031890 (is-ElementMatch!21710 (regOne!43933 (reg!22039 r!13230)))) b!8032094))

(assert (= (and b!8031890 (is-Concat!30713 (regOne!43933 (reg!22039 r!13230)))) b!8032095))

(assert (= (and b!8031890 (is-Star!21710 (regOne!43933 (reg!22039 r!13230)))) b!8032096))

(assert (= (and b!8031890 (is-Union!21710 (regOne!43933 (reg!22039 r!13230)))) b!8032097))

(declare-fun b!8032100 () Bool)

(declare-fun e!4731806 () Bool)

(declare-fun tp!2404100 () Bool)

(assert (=> b!8032100 (= e!4731806 tp!2404100)))

(declare-fun b!8032098 () Bool)

(assert (=> b!8032098 (= e!4731806 tp_is_empty!54415)))

(declare-fun b!8032099 () Bool)

(declare-fun tp!2404099 () Bool)

(declare-fun tp!2404096 () Bool)

(assert (=> b!8032099 (= e!4731806 (and tp!2404099 tp!2404096))))

(declare-fun b!8032101 () Bool)

(declare-fun tp!2404097 () Bool)

(declare-fun tp!2404098 () Bool)

(assert (=> b!8032101 (= e!4731806 (and tp!2404097 tp!2404098))))

(assert (=> b!8031890 (= tp!2403926 e!4731806)))

(assert (= (and b!8031890 (is-ElementMatch!21710 (regTwo!43933 (reg!22039 r!13230)))) b!8032098))

(assert (= (and b!8031890 (is-Concat!30713 (regTwo!43933 (reg!22039 r!13230)))) b!8032099))

(assert (= (and b!8031890 (is-Star!21710 (regTwo!43933 (reg!22039 r!13230)))) b!8032100))

(assert (= (and b!8031890 (is-Union!21710 (regTwo!43933 (reg!22039 r!13230)))) b!8032101))

(declare-fun b!8032104 () Bool)

(declare-fun e!4731807 () Bool)

(declare-fun tp!2404105 () Bool)

(assert (=> b!8032104 (= e!4731807 tp!2404105)))

(declare-fun b!8032102 () Bool)

(assert (=> b!8032102 (= e!4731807 tp_is_empty!54415)))

(declare-fun b!8032103 () Bool)

(declare-fun tp!2404104 () Bool)

(declare-fun tp!2404101 () Bool)

(assert (=> b!8032103 (= e!4731807 (and tp!2404104 tp!2404101))))

(declare-fun b!8032105 () Bool)

(declare-fun tp!2404102 () Bool)

(declare-fun tp!2404103 () Bool)

(assert (=> b!8032105 (= e!4731807 (and tp!2404102 tp!2404103))))

(assert (=> b!8031885 (= tp!2403923 e!4731807)))

(assert (= (and b!8031885 (is-ElementMatch!21710 (reg!22039 (regTwo!43933 r!13230)))) b!8032102))

(assert (= (and b!8031885 (is-Concat!30713 (reg!22039 (regTwo!43933 r!13230)))) b!8032103))

(assert (= (and b!8031885 (is-Star!21710 (reg!22039 (regTwo!43933 r!13230)))) b!8032104))

(assert (= (and b!8031885 (is-Union!21710 (reg!22039 (regTwo!43933 r!13230)))) b!8032105))

(push 1)

(assert (not b!8032027))

(assert (not b!8032036))

(assert (not b!8032071))

(assert (not b!8032076))

(assert (not bm!745082))

(assert (not b!8032105))

(assert (not b!8032051))

(assert (not b!8032039))

(assert (not b!8032047))

(assert (not b!8032040))

(assert (not b!8032104))

(assert tp_is_empty!54415)

(assert (not b!8032092))

(assert (not bm!745081))

(assert (not b!8032037))

(assert (not b!8031981))

(assert (not b!8032049))

(assert (not b!8032101))

(assert (not b!8032065))

(assert (not b!8032079))

(assert (not b!8032085))

(assert (not b!8032064))

(assert (not b!8032089))

(assert (not b!8032023))

(assert (not b!8032016))

(assert (not bm!745079))

(assert (not b!8032088))

(assert (not b!8032044))

(assert (not b!8032060))

(assert (not b!8032010))

(assert (not b!8032015))

(assert (not b!8032043))

(assert (not b!8032032))

(assert (not d!2394732))

(assert (not b!8032053))

(assert (not bm!745088))

(assert (not b!8032100))

(assert (not b!8032012))

(assert (not b!8032056))

(assert (not b!8032057))

(assert (not b!8032019))

(assert (not b!8032084))

(assert (not b!8032048))

(assert (not b!8032061))

(assert (not b!8032081))

(assert (not b!8032017))

(assert (not b!8032080))

(assert (not b!8032059))

(assert (not b!8032072))

(assert (not b!8032045))

(assert (not b!8032011))

(assert (not b!8032095))

(assert (not b!8032024))

(assert (not b!8032008))

(assert (not b!8031972))

(assert (not b!8032099))

(assert (not b!8032068))

(assert (not b!8032028))

(assert (not b!8032083))

(assert (not b!8032006))

(assert (not b!8032097))

(assert (not b!8032069))

(assert (not b!8032087))

(assert (not b!8032052))

(assert (not b!8032013))

(assert (not b!8032035))

(assert (not b!8032021))

(assert (not b!8032041))

(assert (not b!8032091))

(assert (not b!8032025))

(assert (not b!8032055))

(assert (not b!8032063))

(assert (not bm!745078))

(assert (not b!8032029))

(assert (not b!8032093))

(assert (not b!8032031))

(assert (not b!8032007))

(assert (not b!8032033))

(assert (not b!8032067))

(assert (not b!8032020))

(assert (not b!8032096))

(assert (not b!8032073))

(assert (not b!8032103))

(assert (not bm!745089))

(assert (not b!8032075))

(assert (not b!8032077))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

