; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756450 () Bool)

(assert start!756450)

(declare-fun b!8030000 () Bool)

(declare-fun e!4730837 () Bool)

(declare-fun tp!2403048 () Bool)

(declare-fun tp!2403045 () Bool)

(assert (=> b!8030000 (= e!4730837 (and tp!2403048 tp!2403045))))

(declare-fun b!8030001 () Bool)

(declare-fun e!4730836 () Bool)

(declare-datatypes ((C!43734 0))(
  ( (C!43735 (val!32643 Int)) )
))
(declare-datatypes ((Regex!21698 0))(
  ( (ElementMatch!21698 (c!1473185 C!43734)) (Concat!30701 (regOne!43908 Regex!21698) (regTwo!43908 Regex!21698)) (EmptyExpr!21698) (Star!21698 (reg!22027 Regex!21698)) (EmptyLang!21698) (Union!21698 (regOne!43909 Regex!21698) (regTwo!43909 Regex!21698)) )
))
(declare-fun r!24836 () Regex!21698)

(declare-datatypes ((List!75163 0))(
  ( (Nil!75037) (Cons!75037 (h!81485 C!43734) (t!390933 List!75163)) )
))
(declare-fun matchR!10773 (Regex!21698 List!75163) Bool)

(assert (=> b!8030001 (= e!4730836 (not (matchR!10773 r!24836 Nil!75037)))))

(declare-fun res!3175701 () Bool)

(assert (=> start!756450 (=> (not res!3175701) (not e!4730836))))

(assert (=> start!756450 (= res!3175701 (is-EmptyExpr!21698 r!24836))))

(assert (=> start!756450 e!4730836))

(assert (=> start!756450 e!4730837))

(declare-fun b!8030002 () Bool)

(declare-fun tp_is_empty!54391 () Bool)

(assert (=> b!8030002 (= e!4730837 tp_is_empty!54391)))

(declare-fun b!8030003 () Bool)

(declare-fun tp!2403044 () Bool)

(declare-fun tp!2403047 () Bool)

(assert (=> b!8030003 (= e!4730837 (and tp!2403044 tp!2403047))))

(declare-fun b!8030004 () Bool)

(declare-fun res!3175700 () Bool)

(assert (=> b!8030004 (=> (not res!3175700) (not e!4730836))))

(declare-fun validRegex!11996 (Regex!21698) Bool)

(assert (=> b!8030004 (= res!3175700 (validRegex!11996 r!24836))))

(declare-fun b!8030005 () Bool)

(declare-fun tp!2403046 () Bool)

(assert (=> b!8030005 (= e!4730837 tp!2403046)))

(assert (= (and start!756450 res!3175701) b!8030004))

(assert (= (and b!8030004 res!3175700) b!8030001))

(assert (= (and start!756450 (is-ElementMatch!21698 r!24836)) b!8030002))

(assert (= (and start!756450 (is-Concat!30701 r!24836)) b!8030000))

(assert (= (and start!756450 (is-Star!21698 r!24836)) b!8030005))

(assert (= (and start!756450 (is-Union!21698 r!24836)) b!8030003))

(declare-fun m!8391974 () Bool)

(assert (=> b!8030001 m!8391974))

(declare-fun m!8391976 () Bool)

(assert (=> b!8030004 m!8391976))

(push 1)

(assert tp_is_empty!54391)

(assert (not b!8030005))

(assert (not b!8030003))

(assert (not b!8030004))

(assert (not b!8030001))

(assert (not b!8030000))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!744838 () Bool)

(declare-fun call!744845 () Bool)

(declare-fun c!1473191 () Bool)

(assert (=> bm!744838 (= call!744845 (validRegex!11996 (ite c!1473191 (regOne!43909 r!24836) (regTwo!43908 r!24836))))))

(declare-fun b!8030042 () Bool)

(declare-fun e!4730858 () Bool)

(assert (=> b!8030042 (= e!4730858 call!744845)))

(declare-fun b!8030043 () Bool)

(declare-fun e!4730862 () Bool)

(declare-fun call!744843 () Bool)

(assert (=> b!8030043 (= e!4730862 call!744843)))

(declare-fun b!8030044 () Bool)

(declare-fun e!4730861 () Bool)

(declare-fun e!4730864 () Bool)

(assert (=> b!8030044 (= e!4730861 e!4730864)))

(assert (=> b!8030044 (= c!1473191 (is-Union!21698 r!24836))))

(declare-fun b!8030045 () Bool)

(declare-fun res!3175718 () Bool)

(declare-fun e!4730860 () Bool)

(assert (=> b!8030045 (=> (not res!3175718) (not e!4730860))))

(assert (=> b!8030045 (= res!3175718 call!744845)))

(assert (=> b!8030045 (= e!4730864 e!4730860)))

(declare-fun b!8030046 () Bool)

(declare-fun call!744844 () Bool)

(assert (=> b!8030046 (= e!4730860 call!744844)))

(declare-fun b!8030047 () Bool)

(assert (=> b!8030047 (= e!4730861 e!4730862)))

(declare-fun res!3175722 () Bool)

(declare-fun nullable!9734 (Regex!21698) Bool)

(assert (=> b!8030047 (= res!3175722 (not (nullable!9734 (reg!22027 r!24836))))))

(assert (=> b!8030047 (=> (not res!3175722) (not e!4730862))))

(declare-fun b!8030048 () Bool)

(declare-fun e!4730859 () Bool)

(assert (=> b!8030048 (= e!4730859 e!4730858)))

(declare-fun res!3175719 () Bool)

(assert (=> b!8030048 (=> (not res!3175719) (not e!4730858))))

(assert (=> b!8030048 (= res!3175719 call!744844)))

(declare-fun d!2394554 () Bool)

(declare-fun res!3175721 () Bool)

(declare-fun e!4730863 () Bool)

(assert (=> d!2394554 (=> res!3175721 e!4730863)))

(assert (=> d!2394554 (= res!3175721 (is-ElementMatch!21698 r!24836))))

(assert (=> d!2394554 (= (validRegex!11996 r!24836) e!4730863)))

(declare-fun b!8030049 () Bool)

(declare-fun res!3175720 () Bool)

(assert (=> b!8030049 (=> res!3175720 e!4730859)))

(assert (=> b!8030049 (= res!3175720 (not (is-Concat!30701 r!24836)))))

(assert (=> b!8030049 (= e!4730864 e!4730859)))

(declare-fun bm!744839 () Bool)

(assert (=> bm!744839 (= call!744844 call!744843)))

(declare-fun b!8030050 () Bool)

(assert (=> b!8030050 (= e!4730863 e!4730861)))

(declare-fun c!1473192 () Bool)

(assert (=> b!8030050 (= c!1473192 (is-Star!21698 r!24836))))

(declare-fun bm!744840 () Bool)

(assert (=> bm!744840 (= call!744843 (validRegex!11996 (ite c!1473192 (reg!22027 r!24836) (ite c!1473191 (regTwo!43909 r!24836) (regOne!43908 r!24836)))))))

(assert (= (and d!2394554 (not res!3175721)) b!8030050))

(assert (= (and b!8030050 c!1473192) b!8030047))

(assert (= (and b!8030050 (not c!1473192)) b!8030044))

(assert (= (and b!8030047 res!3175722) b!8030043))

(assert (= (and b!8030044 c!1473191) b!8030045))

(assert (= (and b!8030044 (not c!1473191)) b!8030049))

(assert (= (and b!8030045 res!3175718) b!8030046))

(assert (= (and b!8030049 (not res!3175720)) b!8030048))

(assert (= (and b!8030048 res!3175719) b!8030042))

(assert (= (or b!8030046 b!8030048) bm!744839))

(assert (= (or b!8030045 b!8030042) bm!744838))

(assert (= (or b!8030043 bm!744839) bm!744840))

(declare-fun m!8391982 () Bool)

(assert (=> bm!744838 m!8391982))

(declare-fun m!8391984 () Bool)

(assert (=> b!8030047 m!8391984))

(declare-fun m!8391986 () Bool)

(assert (=> bm!744840 m!8391986))

(assert (=> b!8030004 d!2394554))

(declare-fun b!8030097 () Bool)

(declare-fun res!3175750 () Bool)

(declare-fun e!4730894 () Bool)

(assert (=> b!8030097 (=> (not res!3175750) (not e!4730894))))

(declare-fun call!744854 () Bool)

(assert (=> b!8030097 (= res!3175750 (not call!744854))))

(declare-fun b!8030098 () Bool)

(declare-fun res!3175755 () Bool)

(assert (=> b!8030098 (=> (not res!3175755) (not e!4730894))))

(declare-fun isEmpty!43018 (List!75163) Bool)

(declare-fun tail!16047 (List!75163) List!75163)

(assert (=> b!8030098 (= res!3175755 (isEmpty!43018 (tail!16047 Nil!75037)))))

(declare-fun b!8030100 () Bool)

(declare-fun e!4730898 () Bool)

(declare-fun e!4730896 () Bool)

(assert (=> b!8030100 (= e!4730898 e!4730896)))

(declare-fun c!1473204 () Bool)

(assert (=> b!8030100 (= c!1473204 (is-EmptyLang!21698 r!24836))))

(declare-fun b!8030101 () Bool)

(declare-fun e!4730893 () Bool)

(declare-fun e!4730899 () Bool)

(assert (=> b!8030101 (= e!4730893 e!4730899)))

(declare-fun res!3175752 () Bool)

(assert (=> b!8030101 (=> (not res!3175752) (not e!4730899))))

(declare-fun lt!2721839 () Bool)

(assert (=> b!8030101 (= res!3175752 (not lt!2721839))))

(declare-fun b!8030102 () Bool)

(assert (=> b!8030102 (= e!4730896 (not lt!2721839))))

(declare-fun b!8030103 () Bool)

(declare-fun e!4730897 () Bool)

(declare-fun head!16506 (List!75163) C!43734)

(assert (=> b!8030103 (= e!4730897 (not (= (head!16506 Nil!75037) (c!1473185 r!24836))))))

(declare-fun b!8030104 () Bool)

(declare-fun e!4730895 () Bool)

(assert (=> b!8030104 (= e!4730895 (nullable!9734 r!24836))))

(declare-fun b!8030105 () Bool)

(declare-fun res!3175749 () Bool)

(assert (=> b!8030105 (=> res!3175749 e!4730893)))

(assert (=> b!8030105 (= res!3175749 (not (is-ElementMatch!21698 r!24836)))))

(assert (=> b!8030105 (= e!4730896 e!4730893)))

(declare-fun b!8030106 () Bool)

(declare-fun res!3175756 () Bool)

(assert (=> b!8030106 (=> res!3175756 e!4730893)))

(assert (=> b!8030106 (= res!3175756 e!4730894)))

(declare-fun res!3175754 () Bool)

(assert (=> b!8030106 (=> (not res!3175754) (not e!4730894))))

(assert (=> b!8030106 (= res!3175754 lt!2721839)))

(declare-fun bm!744849 () Bool)

(assert (=> bm!744849 (= call!744854 (isEmpty!43018 Nil!75037))))

(declare-fun b!8030107 () Bool)

(assert (=> b!8030107 (= e!4730898 (= lt!2721839 call!744854))))

(declare-fun b!8030108 () Bool)

(declare-fun derivativeStep!6643 (Regex!21698 C!43734) Regex!21698)

(assert (=> b!8030108 (= e!4730895 (matchR!10773 (derivativeStep!6643 r!24836 (head!16506 Nil!75037)) (tail!16047 Nil!75037)))))

(declare-fun b!8030109 () Bool)

(assert (=> b!8030109 (= e!4730899 e!4730897)))

(declare-fun res!3175753 () Bool)

(assert (=> b!8030109 (=> res!3175753 e!4730897)))

(assert (=> b!8030109 (= res!3175753 call!744854)))

(declare-fun b!8030110 () Bool)

(assert (=> b!8030110 (= e!4730894 (= (head!16506 Nil!75037) (c!1473185 r!24836)))))

(declare-fun d!2394558 () Bool)

(assert (=> d!2394558 e!4730898))

(declare-fun c!1473205 () Bool)

(assert (=> d!2394558 (= c!1473205 (is-EmptyExpr!21698 r!24836))))

(assert (=> d!2394558 (= lt!2721839 e!4730895)))

(declare-fun c!1473203 () Bool)

(assert (=> d!2394558 (= c!1473203 (isEmpty!43018 Nil!75037))))

(assert (=> d!2394558 (validRegex!11996 r!24836)))

(assert (=> d!2394558 (= (matchR!10773 r!24836 Nil!75037) lt!2721839)))

(declare-fun b!8030099 () Bool)

(declare-fun res!3175751 () Bool)

(assert (=> b!8030099 (=> res!3175751 e!4730897)))

(assert (=> b!8030099 (= res!3175751 (not (isEmpty!43018 (tail!16047 Nil!75037))))))

(assert (= (and d!2394558 c!1473203) b!8030104))

(assert (= (and d!2394558 (not c!1473203)) b!8030108))

(assert (= (and d!2394558 c!1473205) b!8030107))

(assert (= (and d!2394558 (not c!1473205)) b!8030100))

(assert (= (and b!8030100 c!1473204) b!8030102))

(assert (= (and b!8030100 (not c!1473204)) b!8030105))

(assert (= (and b!8030105 (not res!3175749)) b!8030106))

(assert (= (and b!8030106 res!3175754) b!8030097))

(assert (= (and b!8030097 res!3175750) b!8030098))

(assert (= (and b!8030098 res!3175755) b!8030110))

(assert (= (and b!8030106 (not res!3175756)) b!8030101))

(assert (= (and b!8030101 res!3175752) b!8030109))

(assert (= (and b!8030109 (not res!3175753)) b!8030099))

(assert (= (and b!8030099 (not res!3175751)) b!8030103))

(assert (= (or b!8030107 b!8030097 b!8030109) bm!744849))

(declare-fun m!8391988 () Bool)

(assert (=> d!2394558 m!8391988))

(assert (=> d!2394558 m!8391976))

(declare-fun m!8391990 () Bool)

(assert (=> b!8030110 m!8391990))

(assert (=> b!8030108 m!8391990))

(assert (=> b!8030108 m!8391990))

(declare-fun m!8391992 () Bool)

(assert (=> b!8030108 m!8391992))

(declare-fun m!8391994 () Bool)

(assert (=> b!8030108 m!8391994))

(assert (=> b!8030108 m!8391992))

(assert (=> b!8030108 m!8391994))

(declare-fun m!8391996 () Bool)

(assert (=> b!8030108 m!8391996))

(assert (=> b!8030099 m!8391994))

(assert (=> b!8030099 m!8391994))

(declare-fun m!8391998 () Bool)

(assert (=> b!8030099 m!8391998))

(assert (=> bm!744849 m!8391988))

(assert (=> b!8030098 m!8391994))

(assert (=> b!8030098 m!8391994))

(assert (=> b!8030098 m!8391998))

(assert (=> b!8030103 m!8391990))

(declare-fun m!8392000 () Bool)

(assert (=> b!8030104 m!8392000))

(assert (=> b!8030001 d!2394558))

(declare-fun b!8030124 () Bool)

(declare-fun e!4730902 () Bool)

(declare-fun tp!2403075 () Bool)

(declare-fun tp!2403078 () Bool)

(assert (=> b!8030124 (= e!4730902 (and tp!2403075 tp!2403078))))

(declare-fun b!8030123 () Bool)

(declare-fun tp!2403074 () Bool)

(assert (=> b!8030123 (= e!4730902 tp!2403074)))

(declare-fun b!8030121 () Bool)

(assert (=> b!8030121 (= e!4730902 tp_is_empty!54391)))

(declare-fun b!8030122 () Bool)

(declare-fun tp!2403076 () Bool)

(declare-fun tp!2403077 () Bool)

(assert (=> b!8030122 (= e!4730902 (and tp!2403076 tp!2403077))))

(assert (=> b!8030005 (= tp!2403046 e!4730902)))

(assert (= (and b!8030005 (is-ElementMatch!21698 (reg!22027 r!24836))) b!8030121))

(assert (= (and b!8030005 (is-Concat!30701 (reg!22027 r!24836))) b!8030122))

(assert (= (and b!8030005 (is-Star!21698 (reg!22027 r!24836))) b!8030123))

(assert (= (and b!8030005 (is-Union!21698 (reg!22027 r!24836))) b!8030124))

(declare-fun b!8030128 () Bool)

(declare-fun e!4730903 () Bool)

(declare-fun tp!2403080 () Bool)

(declare-fun tp!2403083 () Bool)

(assert (=> b!8030128 (= e!4730903 (and tp!2403080 tp!2403083))))

(declare-fun b!8030127 () Bool)

(declare-fun tp!2403079 () Bool)

(assert (=> b!8030127 (= e!4730903 tp!2403079)))

(declare-fun b!8030125 () Bool)

(assert (=> b!8030125 (= e!4730903 tp_is_empty!54391)))

(declare-fun b!8030126 () Bool)

(declare-fun tp!2403081 () Bool)

(declare-fun tp!2403082 () Bool)

(assert (=> b!8030126 (= e!4730903 (and tp!2403081 tp!2403082))))

(assert (=> b!8030000 (= tp!2403048 e!4730903)))

(assert (= (and b!8030000 (is-ElementMatch!21698 (regOne!43908 r!24836))) b!8030125))

(assert (= (and b!8030000 (is-Concat!30701 (regOne!43908 r!24836))) b!8030126))

(assert (= (and b!8030000 (is-Star!21698 (regOne!43908 r!24836))) b!8030127))

(assert (= (and b!8030000 (is-Union!21698 (regOne!43908 r!24836))) b!8030128))

(declare-fun b!8030132 () Bool)

(declare-fun e!4730904 () Bool)

(declare-fun tp!2403085 () Bool)

(declare-fun tp!2403088 () Bool)

(assert (=> b!8030132 (= e!4730904 (and tp!2403085 tp!2403088))))

(declare-fun b!8030131 () Bool)

(declare-fun tp!2403084 () Bool)

(assert (=> b!8030131 (= e!4730904 tp!2403084)))

(declare-fun b!8030129 () Bool)

(assert (=> b!8030129 (= e!4730904 tp_is_empty!54391)))

(declare-fun b!8030130 () Bool)

(declare-fun tp!2403086 () Bool)

(declare-fun tp!2403087 () Bool)

(assert (=> b!8030130 (= e!4730904 (and tp!2403086 tp!2403087))))

(assert (=> b!8030000 (= tp!2403045 e!4730904)))

(assert (= (and b!8030000 (is-ElementMatch!21698 (regTwo!43908 r!24836))) b!8030129))

(assert (= (and b!8030000 (is-Concat!30701 (regTwo!43908 r!24836))) b!8030130))

(assert (= (and b!8030000 (is-Star!21698 (regTwo!43908 r!24836))) b!8030131))

(assert (= (and b!8030000 (is-Union!21698 (regTwo!43908 r!24836))) b!8030132))

(declare-fun b!8030136 () Bool)

(declare-fun e!4730905 () Bool)

(declare-fun tp!2403090 () Bool)

(declare-fun tp!2403093 () Bool)

(assert (=> b!8030136 (= e!4730905 (and tp!2403090 tp!2403093))))

(declare-fun b!8030135 () Bool)

(declare-fun tp!2403089 () Bool)

(assert (=> b!8030135 (= e!4730905 tp!2403089)))

(declare-fun b!8030133 () Bool)

(assert (=> b!8030133 (= e!4730905 tp_is_empty!54391)))

(declare-fun b!8030134 () Bool)

(declare-fun tp!2403091 () Bool)

(declare-fun tp!2403092 () Bool)

(assert (=> b!8030134 (= e!4730905 (and tp!2403091 tp!2403092))))

(assert (=> b!8030003 (= tp!2403044 e!4730905)))

(assert (= (and b!8030003 (is-ElementMatch!21698 (regOne!43909 r!24836))) b!8030133))

(assert (= (and b!8030003 (is-Concat!30701 (regOne!43909 r!24836))) b!8030134))

(assert (= (and b!8030003 (is-Star!21698 (regOne!43909 r!24836))) b!8030135))

(assert (= (and b!8030003 (is-Union!21698 (regOne!43909 r!24836))) b!8030136))

(declare-fun b!8030140 () Bool)

(declare-fun e!4730909 () Bool)

(declare-fun tp!2403095 () Bool)

(declare-fun tp!2403098 () Bool)

(assert (=> b!8030140 (= e!4730909 (and tp!2403095 tp!2403098))))

(declare-fun b!8030139 () Bool)

(declare-fun tp!2403094 () Bool)

(assert (=> b!8030139 (= e!4730909 tp!2403094)))

(declare-fun b!8030137 () Bool)

(assert (=> b!8030137 (= e!4730909 tp_is_empty!54391)))

(declare-fun b!8030138 () Bool)

(declare-fun tp!2403096 () Bool)

(declare-fun tp!2403097 () Bool)

(assert (=> b!8030138 (= e!4730909 (and tp!2403096 tp!2403097))))

(assert (=> b!8030003 (= tp!2403047 e!4730909)))

(assert (= (and b!8030003 (is-ElementMatch!21698 (regTwo!43909 r!24836))) b!8030137))

(assert (= (and b!8030003 (is-Concat!30701 (regTwo!43909 r!24836))) b!8030138))

(assert (= (and b!8030003 (is-Star!21698 (regTwo!43909 r!24836))) b!8030139))

(assert (= (and b!8030003 (is-Union!21698 (regTwo!43909 r!24836))) b!8030140))

(push 1)

(assert (not b!8030132))

(assert (not b!8030136))

(assert tp_is_empty!54391)

(assert (not b!8030134))

(assert (not b!8030131))

(assert (not b!8030138))

(assert (not bm!744838))

(assert (not b!8030128))

(assert (not b!8030124))

(assert (not bm!744849))

(assert (not b!8030127))

(assert (not b!8030047))

(assert (not b!8030122))

(assert (not bm!744840))

(assert (not b!8030126))

(assert (not b!8030104))

(assert (not b!8030135))

(assert (not b!8030130))

(assert (not b!8030099))

(assert (not b!8030140))

(assert (not d!2394558))

(assert (not b!8030139))

(assert (not b!8030098))

(assert (not b!8030108))

(assert (not b!8030103))

(assert (not b!8030110))

(assert (not b!8030123))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!744863 () Bool)

(declare-fun bm!744856 () Bool)

(declare-fun c!1473217 () Bool)

(assert (=> bm!744856 (= call!744863 (validRegex!11996 (ite c!1473217 (regOne!43909 (ite c!1473191 (regOne!43909 r!24836) (regTwo!43908 r!24836))) (regTwo!43908 (ite c!1473191 (regOne!43909 r!24836) (regTwo!43908 r!24836))))))))

(declare-fun b!8030222 () Bool)

(declare-fun e!4730942 () Bool)

(assert (=> b!8030222 (= e!4730942 call!744863)))

(declare-fun b!8030223 () Bool)

(declare-fun e!4730946 () Bool)

(declare-fun call!744861 () Bool)

(assert (=> b!8030223 (= e!4730946 call!744861)))

(declare-fun b!8030224 () Bool)

(declare-fun e!4730945 () Bool)

(declare-fun e!4730948 () Bool)

(assert (=> b!8030224 (= e!4730945 e!4730948)))

(assert (=> b!8030224 (= c!1473217 (is-Union!21698 (ite c!1473191 (regOne!43909 r!24836) (regTwo!43908 r!24836))))))

(declare-fun b!8030225 () Bool)

(declare-fun res!3175786 () Bool)

(declare-fun e!4730944 () Bool)

(assert (=> b!8030225 (=> (not res!3175786) (not e!4730944))))

(assert (=> b!8030225 (= res!3175786 call!744863)))

(assert (=> b!8030225 (= e!4730948 e!4730944)))

(declare-fun b!8030226 () Bool)

(declare-fun call!744862 () Bool)

(assert (=> b!8030226 (= e!4730944 call!744862)))

(declare-fun b!8030227 () Bool)

(assert (=> b!8030227 (= e!4730945 e!4730946)))

(declare-fun res!3175790 () Bool)

(assert (=> b!8030227 (= res!3175790 (not (nullable!9734 (reg!22027 (ite c!1473191 (regOne!43909 r!24836) (regTwo!43908 r!24836))))))))

(assert (=> b!8030227 (=> (not res!3175790) (not e!4730946))))

(declare-fun b!8030228 () Bool)

(declare-fun e!4730943 () Bool)

(assert (=> b!8030228 (= e!4730943 e!4730942)))

(declare-fun res!3175787 () Bool)

(assert (=> b!8030228 (=> (not res!3175787) (not e!4730942))))

(assert (=> b!8030228 (= res!3175787 call!744862)))

(declare-fun d!2394562 () Bool)

(declare-fun res!3175789 () Bool)

(declare-fun e!4730947 () Bool)

(assert (=> d!2394562 (=> res!3175789 e!4730947)))

(assert (=> d!2394562 (= res!3175789 (is-ElementMatch!21698 (ite c!1473191 (regOne!43909 r!24836) (regTwo!43908 r!24836))))))

(assert (=> d!2394562 (= (validRegex!11996 (ite c!1473191 (regOne!43909 r!24836) (regTwo!43908 r!24836))) e!4730947)))

(declare-fun b!8030229 () Bool)

(declare-fun res!3175788 () Bool)

(assert (=> b!8030229 (=> res!3175788 e!4730943)))

(assert (=> b!8030229 (= res!3175788 (not (is-Concat!30701 (ite c!1473191 (regOne!43909 r!24836) (regTwo!43908 r!24836)))))))

(assert (=> b!8030229 (= e!4730948 e!4730943)))

(declare-fun bm!744857 () Bool)

(assert (=> bm!744857 (= call!744862 call!744861)))

(declare-fun b!8030230 () Bool)

(assert (=> b!8030230 (= e!4730947 e!4730945)))

(declare-fun c!1473218 () Bool)

(assert (=> b!8030230 (= c!1473218 (is-Star!21698 (ite c!1473191 (regOne!43909 r!24836) (regTwo!43908 r!24836))))))

(declare-fun bm!744858 () Bool)

(assert (=> bm!744858 (= call!744861 (validRegex!11996 (ite c!1473218 (reg!22027 (ite c!1473191 (regOne!43909 r!24836) (regTwo!43908 r!24836))) (ite c!1473217 (regTwo!43909 (ite c!1473191 (regOne!43909 r!24836) (regTwo!43908 r!24836))) (regOne!43908 (ite c!1473191 (regOne!43909 r!24836) (regTwo!43908 r!24836)))))))))

(assert (= (and d!2394562 (not res!3175789)) b!8030230))

(assert (= (and b!8030230 c!1473218) b!8030227))

(assert (= (and b!8030230 (not c!1473218)) b!8030224))

(assert (= (and b!8030227 res!3175790) b!8030223))

(assert (= (and b!8030224 c!1473217) b!8030225))

(assert (= (and b!8030224 (not c!1473217)) b!8030229))

(assert (= (and b!8030225 res!3175786) b!8030226))

(assert (= (and b!8030229 (not res!3175788)) b!8030228))

(assert (= (and b!8030228 res!3175787) b!8030222))

(assert (= (or b!8030226 b!8030228) bm!744857))

(assert (= (or b!8030225 b!8030222) bm!744856))

(assert (= (or b!8030223 bm!744857) bm!744858))

(declare-fun m!8392022 () Bool)

(assert (=> bm!744856 m!8392022))

(declare-fun m!8392024 () Bool)

(assert (=> b!8030227 m!8392024))

(declare-fun m!8392026 () Bool)

(assert (=> bm!744858 m!8392026))

(assert (=> bm!744838 d!2394562))

(declare-fun d!2394564 () Bool)

(assert (not d!2394564))

(assert (=> b!8030103 d!2394564))

(declare-fun c!1473219 () Bool)

(declare-fun call!744866 () Bool)

(declare-fun bm!744859 () Bool)

(assert (=> bm!744859 (= call!744866 (validRegex!11996 (ite c!1473219 (regOne!43909 (ite c!1473192 (reg!22027 r!24836) (ite c!1473191 (regTwo!43909 r!24836) (regOne!43908 r!24836)))) (regTwo!43908 (ite c!1473192 (reg!22027 r!24836) (ite c!1473191 (regTwo!43909 r!24836) (regOne!43908 r!24836)))))))))

(declare-fun b!8030231 () Bool)

(declare-fun e!4730949 () Bool)

(assert (=> b!8030231 (= e!4730949 call!744866)))

(declare-fun b!8030232 () Bool)

(declare-fun e!4730953 () Bool)

(declare-fun call!744864 () Bool)

(assert (=> b!8030232 (= e!4730953 call!744864)))

(declare-fun b!8030233 () Bool)

(declare-fun e!4730952 () Bool)

(declare-fun e!4730955 () Bool)

(assert (=> b!8030233 (= e!4730952 e!4730955)))

(assert (=> b!8030233 (= c!1473219 (is-Union!21698 (ite c!1473192 (reg!22027 r!24836) (ite c!1473191 (regTwo!43909 r!24836) (regOne!43908 r!24836)))))))

(declare-fun b!8030234 () Bool)

(declare-fun res!3175791 () Bool)

(declare-fun e!4730951 () Bool)

(assert (=> b!8030234 (=> (not res!3175791) (not e!4730951))))

(assert (=> b!8030234 (= res!3175791 call!744866)))

(assert (=> b!8030234 (= e!4730955 e!4730951)))

(declare-fun b!8030235 () Bool)

(declare-fun call!744865 () Bool)

(assert (=> b!8030235 (= e!4730951 call!744865)))

(declare-fun b!8030236 () Bool)

(assert (=> b!8030236 (= e!4730952 e!4730953)))

(declare-fun res!3175795 () Bool)

(assert (=> b!8030236 (= res!3175795 (not (nullable!9734 (reg!22027 (ite c!1473192 (reg!22027 r!24836) (ite c!1473191 (regTwo!43909 r!24836) (regOne!43908 r!24836)))))))))

(assert (=> b!8030236 (=> (not res!3175795) (not e!4730953))))

(declare-fun b!8030237 () Bool)

(declare-fun e!4730950 () Bool)

(assert (=> b!8030237 (= e!4730950 e!4730949)))

(declare-fun res!3175792 () Bool)

(assert (=> b!8030237 (=> (not res!3175792) (not e!4730949))))

(assert (=> b!8030237 (= res!3175792 call!744865)))

(declare-fun d!2394566 () Bool)

(declare-fun res!3175794 () Bool)

(declare-fun e!4730954 () Bool)

(assert (=> d!2394566 (=> res!3175794 e!4730954)))

(assert (=> d!2394566 (= res!3175794 (is-ElementMatch!21698 (ite c!1473192 (reg!22027 r!24836) (ite c!1473191 (regTwo!43909 r!24836) (regOne!43908 r!24836)))))))

(assert (=> d!2394566 (= (validRegex!11996 (ite c!1473192 (reg!22027 r!24836) (ite c!1473191 (regTwo!43909 r!24836) (regOne!43908 r!24836)))) e!4730954)))

(declare-fun b!8030238 () Bool)

(declare-fun res!3175793 () Bool)

(assert (=> b!8030238 (=> res!3175793 e!4730950)))

(assert (=> b!8030238 (= res!3175793 (not (is-Concat!30701 (ite c!1473192 (reg!22027 r!24836) (ite c!1473191 (regTwo!43909 r!24836) (regOne!43908 r!24836))))))))

(assert (=> b!8030238 (= e!4730955 e!4730950)))

(declare-fun bm!744860 () Bool)

(assert (=> bm!744860 (= call!744865 call!744864)))

(declare-fun b!8030239 () Bool)

(assert (=> b!8030239 (= e!4730954 e!4730952)))

(declare-fun c!1473220 () Bool)

(assert (=> b!8030239 (= c!1473220 (is-Star!21698 (ite c!1473192 (reg!22027 r!24836) (ite c!1473191 (regTwo!43909 r!24836) (regOne!43908 r!24836)))))))

(declare-fun bm!744861 () Bool)

(assert (=> bm!744861 (= call!744864 (validRegex!11996 (ite c!1473220 (reg!22027 (ite c!1473192 (reg!22027 r!24836) (ite c!1473191 (regTwo!43909 r!24836) (regOne!43908 r!24836)))) (ite c!1473219 (regTwo!43909 (ite c!1473192 (reg!22027 r!24836) (ite c!1473191 (regTwo!43909 r!24836) (regOne!43908 r!24836)))) (regOne!43908 (ite c!1473192 (reg!22027 r!24836) (ite c!1473191 (regTwo!43909 r!24836) (regOne!43908 r!24836))))))))))

(assert (= (and d!2394566 (not res!3175794)) b!8030239))

(assert (= (and b!8030239 c!1473220) b!8030236))

(assert (= (and b!8030239 (not c!1473220)) b!8030233))

(assert (= (and b!8030236 res!3175795) b!8030232))

(assert (= (and b!8030233 c!1473219) b!8030234))

(assert (= (and b!8030233 (not c!1473219)) b!8030238))

(assert (= (and b!8030234 res!3175791) b!8030235))

(assert (= (and b!8030238 (not res!3175793)) b!8030237))

(assert (= (and b!8030237 res!3175792) b!8030231))

(assert (= (or b!8030235 b!8030237) bm!744860))

(assert (= (or b!8030234 b!8030231) bm!744859))

(assert (= (or b!8030232 bm!744860) bm!744861))

(declare-fun m!8392028 () Bool)

(assert (=> bm!744859 m!8392028))

(declare-fun m!8392030 () Bool)

(assert (=> b!8030236 m!8392030))

(declare-fun m!8392032 () Bool)

(assert (=> bm!744861 m!8392032))

(assert (=> bm!744840 d!2394566))

(declare-fun d!2394568 () Bool)

(assert (not d!2394568))

(assert (=> b!8030108 d!2394568))

(declare-fun d!2394570 () Bool)

(assert (not d!2394570))

(assert (=> b!8030108 d!2394570))

(assert (=> b!8030108 d!2394564))

(declare-fun d!2394572 () Bool)

(assert (not d!2394572))

(assert (=> b!8030108 d!2394572))

(declare-fun d!2394574 () Bool)

(assert (not d!2394574))

(assert (=> b!8030098 d!2394574))

(assert (=> b!8030098 d!2394572))

(assert (=> b!8030099 d!2394574))

(assert (=> b!8030099 d!2394572))

(declare-fun d!2394576 () Bool)

(declare-fun nullableFct!3850 (Regex!21698) Bool)

(assert (=> d!2394576 (= (nullable!9734 r!24836) (nullableFct!3850 r!24836))))

(declare-fun bs!1971439 () Bool)

(assert (= bs!1971439 d!2394576))

(declare-fun m!8392034 () Bool)

(assert (=> bs!1971439 m!8392034))

(assert (=> b!8030104 d!2394576))

(declare-fun d!2394578 () Bool)

(assert (=> d!2394578 (= (nullable!9734 (reg!22027 r!24836)) (nullableFct!3850 (reg!22027 r!24836)))))

(declare-fun bs!1971440 () Bool)

(assert (= bs!1971440 d!2394578))

(declare-fun m!8392036 () Bool)

(assert (=> bs!1971440 m!8392036))

(assert (=> b!8030047 d!2394578))

(assert (=> b!8030110 d!2394564))

(declare-fun d!2394580 () Bool)

(assert (=> d!2394580 (= (isEmpty!43018 Nil!75037) true)))

(assert (=> d!2394558 d!2394580))

(assert (=> d!2394558 d!2394554))

(assert (=> bm!744849 d!2394580))

(declare-fun b!8030243 () Bool)

(declare-fun e!4730956 () Bool)

(declare-fun tp!2403135 () Bool)

(declare-fun tp!2403138 () Bool)

(assert (=> b!8030243 (= e!4730956 (and tp!2403135 tp!2403138))))

(declare-fun b!8030242 () Bool)

(declare-fun tp!2403134 () Bool)

(assert (=> b!8030242 (= e!4730956 tp!2403134)))

(declare-fun b!8030240 () Bool)

(assert (=> b!8030240 (= e!4730956 tp_is_empty!54391)))

(declare-fun b!8030241 () Bool)

(declare-fun tp!2403136 () Bool)

(declare-fun tp!2403137 () Bool)

(assert (=> b!8030241 (= e!4730956 (and tp!2403136 tp!2403137))))

(assert (=> b!8030134 (= tp!2403091 e!4730956)))

(assert (= (and b!8030134 (is-ElementMatch!21698 (regOne!43908 (regOne!43909 r!24836)))) b!8030240))

(assert (= (and b!8030134 (is-Concat!30701 (regOne!43908 (regOne!43909 r!24836)))) b!8030241))

(assert (= (and b!8030134 (is-Star!21698 (regOne!43908 (regOne!43909 r!24836)))) b!8030242))

(assert (= (and b!8030134 (is-Union!21698 (regOne!43908 (regOne!43909 r!24836)))) b!8030243))

(declare-fun b!8030247 () Bool)

(declare-fun e!4730957 () Bool)

(declare-fun tp!2403140 () Bool)

(declare-fun tp!2403143 () Bool)

(assert (=> b!8030247 (= e!4730957 (and tp!2403140 tp!2403143))))

(declare-fun b!8030246 () Bool)

(declare-fun tp!2403139 () Bool)

(assert (=> b!8030246 (= e!4730957 tp!2403139)))

(declare-fun b!8030244 () Bool)

(assert (=> b!8030244 (= e!4730957 tp_is_empty!54391)))

(declare-fun b!8030245 () Bool)

(declare-fun tp!2403141 () Bool)

(declare-fun tp!2403142 () Bool)

(assert (=> b!8030245 (= e!4730957 (and tp!2403141 tp!2403142))))

(assert (=> b!8030134 (= tp!2403092 e!4730957)))

(assert (= (and b!8030134 (is-ElementMatch!21698 (regTwo!43908 (regOne!43909 r!24836)))) b!8030244))

(assert (= (and b!8030134 (is-Concat!30701 (regTwo!43908 (regOne!43909 r!24836)))) b!8030245))

(assert (= (and b!8030134 (is-Star!21698 (regTwo!43908 (regOne!43909 r!24836)))) b!8030246))

(assert (= (and b!8030134 (is-Union!21698 (regTwo!43908 (regOne!43909 r!24836)))) b!8030247))

(declare-fun b!8030251 () Bool)

(declare-fun e!4730958 () Bool)

(declare-fun tp!2403145 () Bool)

(declare-fun tp!2403148 () Bool)

(assert (=> b!8030251 (= e!4730958 (and tp!2403145 tp!2403148))))

(declare-fun b!8030250 () Bool)

(declare-fun tp!2403144 () Bool)

(assert (=> b!8030250 (= e!4730958 tp!2403144)))

(declare-fun b!8030248 () Bool)

(assert (=> b!8030248 (= e!4730958 tp_is_empty!54391)))

(declare-fun b!8030249 () Bool)

(declare-fun tp!2403146 () Bool)

(declare-fun tp!2403147 () Bool)

(assert (=> b!8030249 (= e!4730958 (and tp!2403146 tp!2403147))))

(assert (=> b!8030140 (= tp!2403095 e!4730958)))

(assert (= (and b!8030140 (is-ElementMatch!21698 (regOne!43909 (regTwo!43909 r!24836)))) b!8030248))

(assert (= (and b!8030140 (is-Concat!30701 (regOne!43909 (regTwo!43909 r!24836)))) b!8030249))

(assert (= (and b!8030140 (is-Star!21698 (regOne!43909 (regTwo!43909 r!24836)))) b!8030250))

(assert (= (and b!8030140 (is-Union!21698 (regOne!43909 (regTwo!43909 r!24836)))) b!8030251))

(declare-fun b!8030255 () Bool)

(declare-fun e!4730959 () Bool)

(declare-fun tp!2403150 () Bool)

(declare-fun tp!2403153 () Bool)

(assert (=> b!8030255 (= e!4730959 (and tp!2403150 tp!2403153))))

(declare-fun b!8030254 () Bool)

(declare-fun tp!2403149 () Bool)

(assert (=> b!8030254 (= e!4730959 tp!2403149)))

(declare-fun b!8030252 () Bool)

(assert (=> b!8030252 (= e!4730959 tp_is_empty!54391)))

(declare-fun b!8030253 () Bool)

(declare-fun tp!2403151 () Bool)

(declare-fun tp!2403152 () Bool)

(assert (=> b!8030253 (= e!4730959 (and tp!2403151 tp!2403152))))

(assert (=> b!8030140 (= tp!2403098 e!4730959)))

(assert (= (and b!8030140 (is-ElementMatch!21698 (regTwo!43909 (regTwo!43909 r!24836)))) b!8030252))

(assert (= (and b!8030140 (is-Concat!30701 (regTwo!43909 (regTwo!43909 r!24836)))) b!8030253))

(assert (= (and b!8030140 (is-Star!21698 (regTwo!43909 (regTwo!43909 r!24836)))) b!8030254))

(assert (= (and b!8030140 (is-Union!21698 (regTwo!43909 (regTwo!43909 r!24836)))) b!8030255))

(declare-fun b!8030259 () Bool)

(declare-fun e!4730960 () Bool)

(declare-fun tp!2403155 () Bool)

(declare-fun tp!2403158 () Bool)

(assert (=> b!8030259 (= e!4730960 (and tp!2403155 tp!2403158))))

(declare-fun b!8030258 () Bool)

(declare-fun tp!2403154 () Bool)

(assert (=> b!8030258 (= e!4730960 tp!2403154)))

(declare-fun b!8030256 () Bool)

(assert (=> b!8030256 (= e!4730960 tp_is_empty!54391)))

(declare-fun b!8030257 () Bool)

(declare-fun tp!2403156 () Bool)

(declare-fun tp!2403157 () Bool)

(assert (=> b!8030257 (= e!4730960 (and tp!2403156 tp!2403157))))

(assert (=> b!8030130 (= tp!2403086 e!4730960)))

(assert (= (and b!8030130 (is-ElementMatch!21698 (regOne!43908 (regTwo!43908 r!24836)))) b!8030256))

(assert (= (and b!8030130 (is-Concat!30701 (regOne!43908 (regTwo!43908 r!24836)))) b!8030257))

(assert (= (and b!8030130 (is-Star!21698 (regOne!43908 (regTwo!43908 r!24836)))) b!8030258))

(assert (= (and b!8030130 (is-Union!21698 (regOne!43908 (regTwo!43908 r!24836)))) b!8030259))

(declare-fun b!8030263 () Bool)

(declare-fun e!4730961 () Bool)

(declare-fun tp!2403160 () Bool)

(declare-fun tp!2403163 () Bool)

(assert (=> b!8030263 (= e!4730961 (and tp!2403160 tp!2403163))))

(declare-fun b!8030262 () Bool)

(declare-fun tp!2403159 () Bool)

(assert (=> b!8030262 (= e!4730961 tp!2403159)))

(declare-fun b!8030260 () Bool)

(assert (=> b!8030260 (= e!4730961 tp_is_empty!54391)))

(declare-fun b!8030261 () Bool)

(declare-fun tp!2403161 () Bool)

(declare-fun tp!2403162 () Bool)

(assert (=> b!8030261 (= e!4730961 (and tp!2403161 tp!2403162))))

(assert (=> b!8030130 (= tp!2403087 e!4730961)))

(assert (= (and b!8030130 (is-ElementMatch!21698 (regTwo!43908 (regTwo!43908 r!24836)))) b!8030260))

(assert (= (and b!8030130 (is-Concat!30701 (regTwo!43908 (regTwo!43908 r!24836)))) b!8030261))

(assert (= (and b!8030130 (is-Star!21698 (regTwo!43908 (regTwo!43908 r!24836)))) b!8030262))

(assert (= (and b!8030130 (is-Union!21698 (regTwo!43908 (regTwo!43908 r!24836)))) b!8030263))

(declare-fun b!8030267 () Bool)

(declare-fun e!4730962 () Bool)

(declare-fun tp!2403165 () Bool)

(declare-fun tp!2403168 () Bool)

(assert (=> b!8030267 (= e!4730962 (and tp!2403165 tp!2403168))))

(declare-fun b!8030266 () Bool)

(declare-fun tp!2403164 () Bool)

(assert (=> b!8030266 (= e!4730962 tp!2403164)))

(declare-fun b!8030264 () Bool)

(assert (=> b!8030264 (= e!4730962 tp_is_empty!54391)))

(declare-fun b!8030265 () Bool)

(declare-fun tp!2403166 () Bool)

(declare-fun tp!2403167 () Bool)

(assert (=> b!8030265 (= e!4730962 (and tp!2403166 tp!2403167))))

(assert (=> b!8030126 (= tp!2403081 e!4730962)))

(assert (= (and b!8030126 (is-ElementMatch!21698 (regOne!43908 (regOne!43908 r!24836)))) b!8030264))

(assert (= (and b!8030126 (is-Concat!30701 (regOne!43908 (regOne!43908 r!24836)))) b!8030265))

(assert (= (and b!8030126 (is-Star!21698 (regOne!43908 (regOne!43908 r!24836)))) b!8030266))

(assert (= (and b!8030126 (is-Union!21698 (regOne!43908 (regOne!43908 r!24836)))) b!8030267))

(declare-fun b!8030271 () Bool)

(declare-fun e!4730963 () Bool)

(declare-fun tp!2403170 () Bool)

(declare-fun tp!2403173 () Bool)

(assert (=> b!8030271 (= e!4730963 (and tp!2403170 tp!2403173))))

(declare-fun b!8030270 () Bool)

(declare-fun tp!2403169 () Bool)

(assert (=> b!8030270 (= e!4730963 tp!2403169)))

(declare-fun b!8030268 () Bool)

(assert (=> b!8030268 (= e!4730963 tp_is_empty!54391)))

(declare-fun b!8030269 () Bool)

(declare-fun tp!2403171 () Bool)

(declare-fun tp!2403172 () Bool)

(assert (=> b!8030269 (= e!4730963 (and tp!2403171 tp!2403172))))

(assert (=> b!8030126 (= tp!2403082 e!4730963)))

(assert (= (and b!8030126 (is-ElementMatch!21698 (regTwo!43908 (regOne!43908 r!24836)))) b!8030268))

(assert (= (and b!8030126 (is-Concat!30701 (regTwo!43908 (regOne!43908 r!24836)))) b!8030269))

(assert (= (and b!8030126 (is-Star!21698 (regTwo!43908 (regOne!43908 r!24836)))) b!8030270))

(assert (= (and b!8030126 (is-Union!21698 (regTwo!43908 (regOne!43908 r!24836)))) b!8030271))

(declare-fun b!8030275 () Bool)

(declare-fun e!4730964 () Bool)

(declare-fun tp!2403175 () Bool)

(declare-fun tp!2403178 () Bool)

(assert (=> b!8030275 (= e!4730964 (and tp!2403175 tp!2403178))))

(declare-fun b!8030274 () Bool)

(declare-fun tp!2403174 () Bool)

(assert (=> b!8030274 (= e!4730964 tp!2403174)))

(declare-fun b!8030272 () Bool)

(assert (=> b!8030272 (= e!4730964 tp_is_empty!54391)))

(declare-fun b!8030273 () Bool)

(declare-fun tp!2403176 () Bool)

(declare-fun tp!2403177 () Bool)

(assert (=> b!8030273 (= e!4730964 (and tp!2403176 tp!2403177))))

(assert (=> b!8030135 (= tp!2403089 e!4730964)))

(assert (= (and b!8030135 (is-ElementMatch!21698 (reg!22027 (regOne!43909 r!24836)))) b!8030272))

(assert (= (and b!8030135 (is-Concat!30701 (reg!22027 (regOne!43909 r!24836)))) b!8030273))

(assert (= (and b!8030135 (is-Star!21698 (reg!22027 (regOne!43909 r!24836)))) b!8030274))

(assert (= (and b!8030135 (is-Union!21698 (reg!22027 (regOne!43909 r!24836)))) b!8030275))

(declare-fun b!8030279 () Bool)

(declare-fun e!4730965 () Bool)

(declare-fun tp!2403180 () Bool)

(declare-fun tp!2403183 () Bool)

(assert (=> b!8030279 (= e!4730965 (and tp!2403180 tp!2403183))))

(declare-fun b!8030278 () Bool)

(declare-fun tp!2403179 () Bool)

(assert (=> b!8030278 (= e!4730965 tp!2403179)))

(declare-fun b!8030276 () Bool)

(assert (=> b!8030276 (= e!4730965 tp_is_empty!54391)))

(declare-fun b!8030277 () Bool)

(declare-fun tp!2403181 () Bool)

(declare-fun tp!2403182 () Bool)

(assert (=> b!8030277 (= e!4730965 (and tp!2403181 tp!2403182))))

(assert (=> b!8030138 (= tp!2403096 e!4730965)))

(assert (= (and b!8030138 (is-ElementMatch!21698 (regOne!43908 (regTwo!43909 r!24836)))) b!8030276))

(assert (= (and b!8030138 (is-Concat!30701 (regOne!43908 (regTwo!43909 r!24836)))) b!8030277))

(assert (= (and b!8030138 (is-Star!21698 (regOne!43908 (regTwo!43909 r!24836)))) b!8030278))

(assert (= (and b!8030138 (is-Union!21698 (regOne!43908 (regTwo!43909 r!24836)))) b!8030279))

(declare-fun b!8030283 () Bool)

(declare-fun e!4730966 () Bool)

(declare-fun tp!2403185 () Bool)

(declare-fun tp!2403188 () Bool)

(assert (=> b!8030283 (= e!4730966 (and tp!2403185 tp!2403188))))

(declare-fun b!8030282 () Bool)

(declare-fun tp!2403184 () Bool)

(assert (=> b!8030282 (= e!4730966 tp!2403184)))

(declare-fun b!8030280 () Bool)

(assert (=> b!8030280 (= e!4730966 tp_is_empty!54391)))

(declare-fun b!8030281 () Bool)

(declare-fun tp!2403186 () Bool)

(declare-fun tp!2403187 () Bool)

(assert (=> b!8030281 (= e!4730966 (and tp!2403186 tp!2403187))))

(assert (=> b!8030138 (= tp!2403097 e!4730966)))

(assert (= (and b!8030138 (is-ElementMatch!21698 (regTwo!43908 (regTwo!43909 r!24836)))) b!8030280))

(assert (= (and b!8030138 (is-Concat!30701 (regTwo!43908 (regTwo!43909 r!24836)))) b!8030281))

(assert (= (and b!8030138 (is-Star!21698 (regTwo!43908 (regTwo!43909 r!24836)))) b!8030282))

(assert (= (and b!8030138 (is-Union!21698 (regTwo!43908 (regTwo!43909 r!24836)))) b!8030283))

(declare-fun b!8030287 () Bool)

(declare-fun e!4730967 () Bool)

(declare-fun tp!2403190 () Bool)

(declare-fun tp!2403193 () Bool)

(assert (=> b!8030287 (= e!4730967 (and tp!2403190 tp!2403193))))

(declare-fun b!8030286 () Bool)

(declare-fun tp!2403189 () Bool)

(assert (=> b!8030286 (= e!4730967 tp!2403189)))

(declare-fun b!8030284 () Bool)

(assert (=> b!8030284 (= e!4730967 tp_is_empty!54391)))

(declare-fun b!8030285 () Bool)

(declare-fun tp!2403191 () Bool)

(declare-fun tp!2403192 () Bool)

(assert (=> b!8030285 (= e!4730967 (and tp!2403191 tp!2403192))))

(assert (=> b!8030139 (= tp!2403094 e!4730967)))

(assert (= (and b!8030139 (is-ElementMatch!21698 (reg!22027 (regTwo!43909 r!24836)))) b!8030284))

(assert (= (and b!8030139 (is-Concat!30701 (reg!22027 (regTwo!43909 r!24836)))) b!8030285))

(assert (= (and b!8030139 (is-Star!21698 (reg!22027 (regTwo!43909 r!24836)))) b!8030286))

(assert (= (and b!8030139 (is-Union!21698 (reg!22027 (regTwo!43909 r!24836)))) b!8030287))

(declare-fun b!8030291 () Bool)

(declare-fun e!4730968 () Bool)

(declare-fun tp!2403195 () Bool)

(declare-fun tp!2403198 () Bool)

(assert (=> b!8030291 (= e!4730968 (and tp!2403195 tp!2403198))))

(declare-fun b!8030290 () Bool)

(declare-fun tp!2403194 () Bool)

(assert (=> b!8030290 (= e!4730968 tp!2403194)))

(declare-fun b!8030288 () Bool)

(assert (=> b!8030288 (= e!4730968 tp_is_empty!54391)))

(declare-fun b!8030289 () Bool)

(declare-fun tp!2403196 () Bool)

(declare-fun tp!2403197 () Bool)

(assert (=> b!8030289 (= e!4730968 (and tp!2403196 tp!2403197))))

(assert (=> b!8030136 (= tp!2403090 e!4730968)))

(assert (= (and b!8030136 (is-ElementMatch!21698 (regOne!43909 (regOne!43909 r!24836)))) b!8030288))

(assert (= (and b!8030136 (is-Concat!30701 (regOne!43909 (regOne!43909 r!24836)))) b!8030289))

(assert (= (and b!8030136 (is-Star!21698 (regOne!43909 (regOne!43909 r!24836)))) b!8030290))

(assert (= (and b!8030136 (is-Union!21698 (regOne!43909 (regOne!43909 r!24836)))) b!8030291))

(declare-fun b!8030295 () Bool)

(declare-fun e!4730969 () Bool)

(declare-fun tp!2403200 () Bool)

(declare-fun tp!2403203 () Bool)

(assert (=> b!8030295 (= e!4730969 (and tp!2403200 tp!2403203))))

(declare-fun b!8030294 () Bool)

(declare-fun tp!2403199 () Bool)

(assert (=> b!8030294 (= e!4730969 tp!2403199)))

(declare-fun b!8030292 () Bool)

(assert (=> b!8030292 (= e!4730969 tp_is_empty!54391)))

(declare-fun b!8030293 () Bool)

(declare-fun tp!2403201 () Bool)

(declare-fun tp!2403202 () Bool)

(assert (=> b!8030293 (= e!4730969 (and tp!2403201 tp!2403202))))

(assert (=> b!8030136 (= tp!2403093 e!4730969)))

(assert (= (and b!8030136 (is-ElementMatch!21698 (regTwo!43909 (regOne!43909 r!24836)))) b!8030292))

(assert (= (and b!8030136 (is-Concat!30701 (regTwo!43909 (regOne!43909 r!24836)))) b!8030293))

(assert (= (and b!8030136 (is-Star!21698 (regTwo!43909 (regOne!43909 r!24836)))) b!8030294))

(assert (= (and b!8030136 (is-Union!21698 (regTwo!43909 (regOne!43909 r!24836)))) b!8030295))

(declare-fun b!8030299 () Bool)

(declare-fun e!4730970 () Bool)

(declare-fun tp!2403205 () Bool)

(declare-fun tp!2403208 () Bool)

(assert (=> b!8030299 (= e!4730970 (and tp!2403205 tp!2403208))))

(declare-fun b!8030298 () Bool)

(declare-fun tp!2403204 () Bool)

(assert (=> b!8030298 (= e!4730970 tp!2403204)))

(declare-fun b!8030296 () Bool)

(assert (=> b!8030296 (= e!4730970 tp_is_empty!54391)))

(declare-fun b!8030297 () Bool)

(declare-fun tp!2403206 () Bool)

(declare-fun tp!2403207 () Bool)

(assert (=> b!8030297 (= e!4730970 (and tp!2403206 tp!2403207))))

(assert (=> b!8030122 (= tp!2403076 e!4730970)))

(assert (= (and b!8030122 (is-ElementMatch!21698 (regOne!43908 (reg!22027 r!24836)))) b!8030296))

(assert (= (and b!8030122 (is-Concat!30701 (regOne!43908 (reg!22027 r!24836)))) b!8030297))

(assert (= (and b!8030122 (is-Star!21698 (regOne!43908 (reg!22027 r!24836)))) b!8030298))

(assert (= (and b!8030122 (is-Union!21698 (regOne!43908 (reg!22027 r!24836)))) b!8030299))

(declare-fun b!8030303 () Bool)

(declare-fun e!4730971 () Bool)

(declare-fun tp!2403210 () Bool)

(declare-fun tp!2403213 () Bool)

(assert (=> b!8030303 (= e!4730971 (and tp!2403210 tp!2403213))))

(declare-fun b!8030302 () Bool)

(declare-fun tp!2403209 () Bool)

(assert (=> b!8030302 (= e!4730971 tp!2403209)))

(declare-fun b!8030300 () Bool)

(assert (=> b!8030300 (= e!4730971 tp_is_empty!54391)))

(declare-fun b!8030301 () Bool)

(declare-fun tp!2403211 () Bool)

(declare-fun tp!2403212 () Bool)

(assert (=> b!8030301 (= e!4730971 (and tp!2403211 tp!2403212))))

(assert (=> b!8030122 (= tp!2403077 e!4730971)))

(assert (= (and b!8030122 (is-ElementMatch!21698 (regTwo!43908 (reg!22027 r!24836)))) b!8030300))

(assert (= (and b!8030122 (is-Concat!30701 (regTwo!43908 (reg!22027 r!24836)))) b!8030301))

(assert (= (and b!8030122 (is-Star!21698 (regTwo!43908 (reg!22027 r!24836)))) b!8030302))

(assert (= (and b!8030122 (is-Union!21698 (regTwo!43908 (reg!22027 r!24836)))) b!8030303))

(declare-fun b!8030307 () Bool)

(declare-fun e!4730972 () Bool)

(declare-fun tp!2403215 () Bool)

(declare-fun tp!2403218 () Bool)

(assert (=> b!8030307 (= e!4730972 (and tp!2403215 tp!2403218))))

(declare-fun b!8030306 () Bool)

(declare-fun tp!2403214 () Bool)

(assert (=> b!8030306 (= e!4730972 tp!2403214)))

(declare-fun b!8030304 () Bool)

(assert (=> b!8030304 (= e!4730972 tp_is_empty!54391)))

(declare-fun b!8030305 () Bool)

(declare-fun tp!2403216 () Bool)

(declare-fun tp!2403217 () Bool)

(assert (=> b!8030305 (= e!4730972 (and tp!2403216 tp!2403217))))

(assert (=> b!8030131 (= tp!2403084 e!4730972)))

(assert (= (and b!8030131 (is-ElementMatch!21698 (reg!22027 (regTwo!43908 r!24836)))) b!8030304))

(assert (= (and b!8030131 (is-Concat!30701 (reg!22027 (regTwo!43908 r!24836)))) b!8030305))

(assert (= (and b!8030131 (is-Star!21698 (reg!22027 (regTwo!43908 r!24836)))) b!8030306))

(assert (= (and b!8030131 (is-Union!21698 (reg!22027 (regTwo!43908 r!24836)))) b!8030307))

(declare-fun b!8030311 () Bool)

(declare-fun e!4730973 () Bool)

(declare-fun tp!2403220 () Bool)

(declare-fun tp!2403223 () Bool)

(assert (=> b!8030311 (= e!4730973 (and tp!2403220 tp!2403223))))

(declare-fun b!8030310 () Bool)

(declare-fun tp!2403219 () Bool)

(assert (=> b!8030310 (= e!4730973 tp!2403219)))

(declare-fun b!8030308 () Bool)

(assert (=> b!8030308 (= e!4730973 tp_is_empty!54391)))

(declare-fun b!8030309 () Bool)

(declare-fun tp!2403221 () Bool)

(declare-fun tp!2403222 () Bool)

(assert (=> b!8030309 (= e!4730973 (and tp!2403221 tp!2403222))))

(assert (=> b!8030132 (= tp!2403085 e!4730973)))

(assert (= (and b!8030132 (is-ElementMatch!21698 (regOne!43909 (regTwo!43908 r!24836)))) b!8030308))

(assert (= (and b!8030132 (is-Concat!30701 (regOne!43909 (regTwo!43908 r!24836)))) b!8030309))

(assert (= (and b!8030132 (is-Star!21698 (regOne!43909 (regTwo!43908 r!24836)))) b!8030310))

(assert (= (and b!8030132 (is-Union!21698 (regOne!43909 (regTwo!43908 r!24836)))) b!8030311))

(declare-fun b!8030315 () Bool)

(declare-fun e!4730974 () Bool)

(declare-fun tp!2403225 () Bool)

(declare-fun tp!2403228 () Bool)

(assert (=> b!8030315 (= e!4730974 (and tp!2403225 tp!2403228))))

(declare-fun b!8030314 () Bool)

(declare-fun tp!2403224 () Bool)

(assert (=> b!8030314 (= e!4730974 tp!2403224)))

(declare-fun b!8030312 () Bool)

(assert (=> b!8030312 (= e!4730974 tp_is_empty!54391)))

(declare-fun b!8030313 () Bool)

(declare-fun tp!2403226 () Bool)

(declare-fun tp!2403227 () Bool)

(assert (=> b!8030313 (= e!4730974 (and tp!2403226 tp!2403227))))

(assert (=> b!8030132 (= tp!2403088 e!4730974)))

(assert (= (and b!8030132 (is-ElementMatch!21698 (regTwo!43909 (regTwo!43908 r!24836)))) b!8030312))

(assert (= (and b!8030132 (is-Concat!30701 (regTwo!43909 (regTwo!43908 r!24836)))) b!8030313))

(assert (= (and b!8030132 (is-Star!21698 (regTwo!43909 (regTwo!43908 r!24836)))) b!8030314))

(assert (= (and b!8030132 (is-Union!21698 (regTwo!43909 (regTwo!43908 r!24836)))) b!8030315))

(declare-fun b!8030319 () Bool)

(declare-fun e!4730975 () Bool)

(declare-fun tp!2403230 () Bool)

(declare-fun tp!2403233 () Bool)

(assert (=> b!8030319 (= e!4730975 (and tp!2403230 tp!2403233))))

(declare-fun b!8030318 () Bool)

(declare-fun tp!2403229 () Bool)

(assert (=> b!8030318 (= e!4730975 tp!2403229)))

(declare-fun b!8030316 () Bool)

(assert (=> b!8030316 (= e!4730975 tp_is_empty!54391)))

(declare-fun b!8030317 () Bool)

(declare-fun tp!2403231 () Bool)

(declare-fun tp!2403232 () Bool)

(assert (=> b!8030317 (= e!4730975 (and tp!2403231 tp!2403232))))

(assert (=> b!8030127 (= tp!2403079 e!4730975)))

(assert (= (and b!8030127 (is-ElementMatch!21698 (reg!22027 (regOne!43908 r!24836)))) b!8030316))

(assert (= (and b!8030127 (is-Concat!30701 (reg!22027 (regOne!43908 r!24836)))) b!8030317))

(assert (= (and b!8030127 (is-Star!21698 (reg!22027 (regOne!43908 r!24836)))) b!8030318))

(assert (= (and b!8030127 (is-Union!21698 (reg!22027 (regOne!43908 r!24836)))) b!8030319))

(declare-fun b!8030323 () Bool)

(declare-fun e!4730976 () Bool)

(declare-fun tp!2403235 () Bool)

(declare-fun tp!2403238 () Bool)

(assert (=> b!8030323 (= e!4730976 (and tp!2403235 tp!2403238))))

(declare-fun b!8030322 () Bool)

(declare-fun tp!2403234 () Bool)

(assert (=> b!8030322 (= e!4730976 tp!2403234)))

(declare-fun b!8030320 () Bool)

(assert (=> b!8030320 (= e!4730976 tp_is_empty!54391)))

(declare-fun b!8030321 () Bool)

(declare-fun tp!2403236 () Bool)

(declare-fun tp!2403237 () Bool)

(assert (=> b!8030321 (= e!4730976 (and tp!2403236 tp!2403237))))

(assert (=> b!8030128 (= tp!2403080 e!4730976)))

(assert (= (and b!8030128 (is-ElementMatch!21698 (regOne!43909 (regOne!43908 r!24836)))) b!8030320))

(assert (= (and b!8030128 (is-Concat!30701 (regOne!43909 (regOne!43908 r!24836)))) b!8030321))

(assert (= (and b!8030128 (is-Star!21698 (regOne!43909 (regOne!43908 r!24836)))) b!8030322))

(assert (= (and b!8030128 (is-Union!21698 (regOne!43909 (regOne!43908 r!24836)))) b!8030323))

(declare-fun b!8030327 () Bool)

(declare-fun e!4730977 () Bool)

(declare-fun tp!2403240 () Bool)

(declare-fun tp!2403243 () Bool)

(assert (=> b!8030327 (= e!4730977 (and tp!2403240 tp!2403243))))

(declare-fun b!8030326 () Bool)

(declare-fun tp!2403239 () Bool)

(assert (=> b!8030326 (= e!4730977 tp!2403239)))

(declare-fun b!8030324 () Bool)

(assert (=> b!8030324 (= e!4730977 tp_is_empty!54391)))

(declare-fun b!8030325 () Bool)

(declare-fun tp!2403241 () Bool)

(declare-fun tp!2403242 () Bool)

(assert (=> b!8030325 (= e!4730977 (and tp!2403241 tp!2403242))))

(assert (=> b!8030128 (= tp!2403083 e!4730977)))

(assert (= (and b!8030128 (is-ElementMatch!21698 (regTwo!43909 (regOne!43908 r!24836)))) b!8030324))

(assert (= (and b!8030128 (is-Concat!30701 (regTwo!43909 (regOne!43908 r!24836)))) b!8030325))

(assert (= (and b!8030128 (is-Star!21698 (regTwo!43909 (regOne!43908 r!24836)))) b!8030326))

(assert (= (and b!8030128 (is-Union!21698 (regTwo!43909 (regOne!43908 r!24836)))) b!8030327))

(declare-fun b!8030331 () Bool)

(declare-fun e!4730978 () Bool)

(declare-fun tp!2403245 () Bool)

(declare-fun tp!2403248 () Bool)

(assert (=> b!8030331 (= e!4730978 (and tp!2403245 tp!2403248))))

(declare-fun b!8030330 () Bool)

(declare-fun tp!2403244 () Bool)

(assert (=> b!8030330 (= e!4730978 tp!2403244)))

(declare-fun b!8030328 () Bool)

(assert (=> b!8030328 (= e!4730978 tp_is_empty!54391)))

(declare-fun b!8030329 () Bool)

(declare-fun tp!2403246 () Bool)

(declare-fun tp!2403247 () Bool)

(assert (=> b!8030329 (= e!4730978 (and tp!2403246 tp!2403247))))

(assert (=> b!8030123 (= tp!2403074 e!4730978)))

(assert (= (and b!8030123 (is-ElementMatch!21698 (reg!22027 (reg!22027 r!24836)))) b!8030328))

(assert (= (and b!8030123 (is-Concat!30701 (reg!22027 (reg!22027 r!24836)))) b!8030329))

(assert (= (and b!8030123 (is-Star!21698 (reg!22027 (reg!22027 r!24836)))) b!8030330))

(assert (= (and b!8030123 (is-Union!21698 (reg!22027 (reg!22027 r!24836)))) b!8030331))

(declare-fun b!8030335 () Bool)

(declare-fun e!4730979 () Bool)

(declare-fun tp!2403250 () Bool)

(declare-fun tp!2403253 () Bool)

(assert (=> b!8030335 (= e!4730979 (and tp!2403250 tp!2403253))))

(declare-fun b!8030334 () Bool)

(declare-fun tp!2403249 () Bool)

(assert (=> b!8030334 (= e!4730979 tp!2403249)))

(declare-fun b!8030332 () Bool)

(assert (=> b!8030332 (= e!4730979 tp_is_empty!54391)))

(declare-fun b!8030333 () Bool)

(declare-fun tp!2403251 () Bool)

(declare-fun tp!2403252 () Bool)

(assert (=> b!8030333 (= e!4730979 (and tp!2403251 tp!2403252))))

(assert (=> b!8030124 (= tp!2403075 e!4730979)))

(assert (= (and b!8030124 (is-ElementMatch!21698 (regOne!43909 (reg!22027 r!24836)))) b!8030332))

(assert (= (and b!8030124 (is-Concat!30701 (regOne!43909 (reg!22027 r!24836)))) b!8030333))

(assert (= (and b!8030124 (is-Star!21698 (regOne!43909 (reg!22027 r!24836)))) b!8030334))

(assert (= (and b!8030124 (is-Union!21698 (regOne!43909 (reg!22027 r!24836)))) b!8030335))

(declare-fun b!8030339 () Bool)

(declare-fun e!4730980 () Bool)

(declare-fun tp!2403255 () Bool)

(declare-fun tp!2403258 () Bool)

(assert (=> b!8030339 (= e!4730980 (and tp!2403255 tp!2403258))))

(declare-fun b!8030338 () Bool)

(declare-fun tp!2403254 () Bool)

(assert (=> b!8030338 (= e!4730980 tp!2403254)))

(declare-fun b!8030336 () Bool)

(assert (=> b!8030336 (= e!4730980 tp_is_empty!54391)))

(declare-fun b!8030337 () Bool)

(declare-fun tp!2403256 () Bool)

(declare-fun tp!2403257 () Bool)

(assert (=> b!8030337 (= e!4730980 (and tp!2403256 tp!2403257))))

(assert (=> b!8030124 (= tp!2403078 e!4730980)))

(assert (= (and b!8030124 (is-ElementMatch!21698 (regTwo!43909 (reg!22027 r!24836)))) b!8030336))

(assert (= (and b!8030124 (is-Concat!30701 (regTwo!43909 (reg!22027 r!24836)))) b!8030337))

(assert (= (and b!8030124 (is-Star!21698 (regTwo!43909 (reg!22027 r!24836)))) b!8030338))

(assert (= (and b!8030124 (is-Union!21698 (regTwo!43909 (reg!22027 r!24836)))) b!8030339))

(push 1)

(assert (not b!8030283))

(assert (not b!8030295))

(assert (not b!8030242))

(assert (not b!8030269))

(assert (not b!8030290))

(assert (not b!8030322))

(assert (not b!8030257))

(assert (not b!8030289))

(assert (not b!8030319))

(assert (not b!8030321))

(assert (not b!8030333))

(assert (not b!8030301))

(assert (not b!8030261))

(assert (not b!8030337))

(assert (not b!8030311))

(assert (not b!8030317))

(assert (not bm!744856))

(assert tp_is_empty!54391)

(assert (not b!8030335))

(assert (not b!8030338))

(assert (not d!2394578))

(assert (not b!8030299))

(assert (not b!8030236))

(assert (not b!8030271))

(assert (not b!8030291))

(assert (not b!8030309))

(assert (not b!8030249))

(assert (not b!8030327))

(assert (not b!8030250))

(assert (not b!8030298))

(assert (not b!8030281))

(assert (not b!8030278))

(assert (not b!8030313))

(assert (not bm!744861))

(assert (not b!8030306))

(assert (not b!8030339))

(assert (not b!8030287))

(assert (not b!8030246))

(assert (not b!8030326))

(assert (not b!8030315))

(assert (not b!8030277))

(assert (not b!8030259))

(assert (not bm!744859))

(assert (not b!8030323))

(assert (not b!8030334))

(assert (not b!8030262))

(assert (not b!8030241))

(assert (not b!8030282))

(assert (not b!8030267))

(assert (not b!8030273))

(assert (not b!8030247))

(assert (not b!8030318))

(assert (not b!8030325))

(assert (not b!8030330))

(assert (not b!8030275))

(assert (not b!8030314))

(assert (not b!8030255))

(assert (not d!2394576))

(assert (not b!8030285))

(assert (not b!8030303))

(assert (not b!8030227))

(assert (not b!8030286))

(assert (not b!8030297))

(assert (not b!8030258))

(assert (not b!8030310))

(assert (not b!8030266))

(assert (not b!8030279))

(assert (not b!8030329))

(assert (not b!8030305))

(assert (not b!8030245))

(assert (not b!8030331))

(assert (not b!8030253))

(assert (not b!8030254))

(assert (not b!8030251))

(assert (not b!8030302))

(assert (not b!8030293))

(assert (not b!8030274))

(assert (not b!8030307))

(assert (not b!8030265))

(assert (not b!8030263))

(assert (not b!8030294))

(assert (not b!8030243))

(assert (not bm!744858))

(assert (not b!8030270))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

