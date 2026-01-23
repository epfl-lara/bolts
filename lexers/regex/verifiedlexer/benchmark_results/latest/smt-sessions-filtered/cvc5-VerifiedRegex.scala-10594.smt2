; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!544634 () Bool)

(assert start!544634)

(declare-fun b!5145101 () Bool)

(declare-fun e!3208274 () Bool)

(declare-fun tp!1436954 () Bool)

(assert (=> b!5145101 (= e!3208274 tp!1436954)))

(declare-fun b!5145102 () Bool)

(declare-fun e!3208272 () Bool)

(declare-datatypes ((C!29222 0))(
  ( (C!29223 (val!24263 Int)) )
))
(declare-datatypes ((Regex!14478 0))(
  ( (ElementMatch!14478 (c!885849 C!29222)) (Concat!23323 (regOne!29468 Regex!14478) (regTwo!29468 Regex!14478)) (EmptyExpr!14478) (Star!14478 (reg!14807 Regex!14478)) (EmptyLang!14478) (Union!14478 (regOne!29469 Regex!14478) (regTwo!29469 Regex!14478)) )
))
(declare-datatypes ((List!59874 0))(
  ( (Nil!59750) (Cons!59750 (h!66198 Regex!14478) (t!372911 List!59874)) )
))
(declare-datatypes ((Context!7724 0))(
  ( (Context!7725 (exprs!4362 List!59874)) )
))
(declare-fun ctx!100 () Context!7724)

(declare-fun lostCause!1508 (Context!7724) Bool)

(assert (=> b!5145102 (= e!3208272 (lostCause!1508 ctx!100))))

(declare-fun b!5145103 () Bool)

(declare-fun res!2190310 () Bool)

(declare-fun e!3208273 () Bool)

(assert (=> b!5145103 (=> (not res!2190310) (not e!3208273))))

(declare-fun expr!117 () Regex!14478)

(declare-fun a!1296 () C!29222)

(assert (=> b!5145103 (= res!2190310 (and (or (not (is-ElementMatch!14478 expr!117)) (not (= (c!885849 expr!117) a!1296))) (is-Union!14478 expr!117)))))

(declare-fun b!5145104 () Bool)

(declare-fun e!3208270 () Bool)

(declare-fun lt!2120840 () (Set Context!7724))

(declare-fun lambda!256749 () Int)

(declare-fun forall!13947 ((Set Context!7724) Int) Bool)

(assert (=> b!5145104 (= e!3208270 (forall!13947 lt!2120840 lambda!256749))))

(declare-fun b!5145105 () Bool)

(declare-fun e!3208271 () Bool)

(declare-fun tp!1436950 () Bool)

(declare-fun tp!1436951 () Bool)

(assert (=> b!5145105 (= e!3208271 (and tp!1436950 tp!1436951))))

(declare-fun res!2190312 () Bool)

(assert (=> start!544634 (=> (not res!2190312) (not e!3208273))))

(declare-fun validRegex!6333 (Regex!14478) Bool)

(assert (=> start!544634 (= res!2190312 (validRegex!6333 expr!117))))

(assert (=> start!544634 e!3208273))

(assert (=> start!544634 e!3208271))

(declare-fun inv!79377 (Context!7724) Bool)

(assert (=> start!544634 (and (inv!79377 ctx!100) e!3208274)))

(declare-fun tp_is_empty!38105 () Bool)

(assert (=> start!544634 tp_is_empty!38105))

(declare-fun b!5145106 () Bool)

(declare-fun res!2190313 () Bool)

(assert (=> b!5145106 (=> (not res!2190313) (not e!3208273))))

(assert (=> b!5145106 (= res!2190313 e!3208272)))

(declare-fun res!2190311 () Bool)

(assert (=> b!5145106 (=> res!2190311 e!3208272)))

(declare-fun lostCause!1509 (Regex!14478) Bool)

(assert (=> b!5145106 (= res!2190311 (lostCause!1509 expr!117))))

(declare-fun b!5145107 () Bool)

(declare-fun tp!1436953 () Bool)

(declare-fun tp!1436952 () Bool)

(assert (=> b!5145107 (= e!3208271 (and tp!1436953 tp!1436952))))

(declare-fun b!5145108 () Bool)

(assert (=> b!5145108 (= e!3208273 (not e!3208270))))

(declare-fun res!2190314 () Bool)

(assert (=> b!5145108 (=> res!2190314 e!3208270)))

(declare-fun lt!2120841 () (Set Context!7724))

(assert (=> b!5145108 (= res!2190314 (not (forall!13947 lt!2120841 lambda!256749)))))

(declare-fun lostCauseZipper!1276 ((Set Context!7724)) Bool)

(assert (=> b!5145108 (lostCauseZipper!1276 lt!2120840)))

(declare-fun derivationStepZipperDown!157 (Regex!14478 Context!7724 C!29222) (Set Context!7724))

(assert (=> b!5145108 (= lt!2120840 (derivationStepZipperDown!157 (regTwo!29469 expr!117) ctx!100 a!1296))))

(declare-datatypes ((Unit!151143 0))(
  ( (Unit!151144) )
))
(declare-fun lt!2120842 () Unit!151143)

(declare-fun lemmaLostCauseFixPointDerivDown!47 (Regex!14478 Context!7724 C!29222) Unit!151143)

(assert (=> b!5145108 (= lt!2120842 (lemmaLostCauseFixPointDerivDown!47 (regTwo!29469 expr!117) ctx!100 a!1296))))

(assert (=> b!5145108 (lostCauseZipper!1276 lt!2120841)))

(assert (=> b!5145108 (= lt!2120841 (derivationStepZipperDown!157 (regOne!29469 expr!117) ctx!100 a!1296))))

(declare-fun lt!2120843 () Unit!151143)

(assert (=> b!5145108 (= lt!2120843 (lemmaLostCauseFixPointDerivDown!47 (regOne!29469 expr!117) ctx!100 a!1296))))

(declare-fun b!5145109 () Bool)

(declare-fun tp!1436955 () Bool)

(assert (=> b!5145109 (= e!3208271 tp!1436955)))

(declare-fun b!5145110 () Bool)

(assert (=> b!5145110 (= e!3208271 tp_is_empty!38105)))

(assert (= (and start!544634 res!2190312) b!5145106))

(assert (= (and b!5145106 (not res!2190311)) b!5145102))

(assert (= (and b!5145106 res!2190313) b!5145103))

(assert (= (and b!5145103 res!2190310) b!5145108))

(assert (= (and b!5145108 (not res!2190314)) b!5145104))

(assert (= (and start!544634 (is-ElementMatch!14478 expr!117)) b!5145110))

(assert (= (and start!544634 (is-Concat!23323 expr!117)) b!5145105))

(assert (= (and start!544634 (is-Star!14478 expr!117)) b!5145109))

(assert (= (and start!544634 (is-Union!14478 expr!117)) b!5145107))

(assert (= start!544634 b!5145101))

(declare-fun m!6206082 () Bool)

(assert (=> b!5145108 m!6206082))

(declare-fun m!6206084 () Bool)

(assert (=> b!5145108 m!6206084))

(declare-fun m!6206086 () Bool)

(assert (=> b!5145108 m!6206086))

(declare-fun m!6206088 () Bool)

(assert (=> b!5145108 m!6206088))

(declare-fun m!6206090 () Bool)

(assert (=> b!5145108 m!6206090))

(declare-fun m!6206092 () Bool)

(assert (=> b!5145108 m!6206092))

(declare-fun m!6206094 () Bool)

(assert (=> b!5145108 m!6206094))

(declare-fun m!6206096 () Bool)

(assert (=> b!5145104 m!6206096))

(declare-fun m!6206098 () Bool)

(assert (=> b!5145102 m!6206098))

(declare-fun m!6206100 () Bool)

(assert (=> b!5145106 m!6206100))

(declare-fun m!6206102 () Bool)

(assert (=> start!544634 m!6206102))

(declare-fun m!6206104 () Bool)

(assert (=> start!544634 m!6206104))

(push 1)

(assert tp_is_empty!38105)

(assert (not b!5145107))

(assert (not start!544634))

(assert (not b!5145106))

(assert (not b!5145109))

(assert (not b!5145105))

(assert (not b!5145108))

(assert (not b!5145104))

(assert (not b!5145102))

(assert (not b!5145101))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1663297 () Bool)

(declare-fun lt!2120858 () Bool)

(declare-datatypes ((List!59876 0))(
  ( (Nil!59752) (Cons!59752 (h!66200 Context!7724) (t!372913 List!59876)) )
))
(declare-fun forall!13949 (List!59876 Int) Bool)

(declare-fun toList!8392 ((Set Context!7724)) List!59876)

(assert (=> d!1663297 (= lt!2120858 (forall!13949 (toList!8392 lt!2120840) lambda!256749))))

(declare-fun choose!38067 ((Set Context!7724) Int) Bool)

(assert (=> d!1663297 (= lt!2120858 (choose!38067 lt!2120840 lambda!256749))))

(assert (=> d!1663297 (= (forall!13947 lt!2120840 lambda!256749) lt!2120858)))

(declare-fun bs!1201075 () Bool)

(assert (= bs!1201075 d!1663297))

(declare-fun m!6206130 () Bool)

(assert (=> bs!1201075 m!6206130))

(assert (=> bs!1201075 m!6206130))

(declare-fun m!6206132 () Bool)

(assert (=> bs!1201075 m!6206132))

(declare-fun m!6206134 () Bool)

(assert (=> bs!1201075 m!6206134))

(assert (=> b!5145104 d!1663297))

(declare-fun d!1663299 () Bool)

(assert (=> d!1663299 (lostCauseZipper!1276 (derivationStepZipperDown!157 (regTwo!29469 expr!117) ctx!100 a!1296))))

(declare-fun lt!2120861 () Unit!151143)

(declare-fun choose!38068 (Regex!14478 Context!7724 C!29222) Unit!151143)

(assert (=> d!1663299 (= lt!2120861 (choose!38068 (regTwo!29469 expr!117) ctx!100 a!1296))))

(assert (=> d!1663299 (validRegex!6333 (regTwo!29469 expr!117))))

(assert (=> d!1663299 (= (lemmaLostCauseFixPointDerivDown!47 (regTwo!29469 expr!117) ctx!100 a!1296) lt!2120861)))

(declare-fun bs!1201076 () Bool)

(assert (= bs!1201076 d!1663299))

(assert (=> bs!1201076 m!6206082))

(assert (=> bs!1201076 m!6206082))

(declare-fun m!6206136 () Bool)

(assert (=> bs!1201076 m!6206136))

(declare-fun m!6206138 () Bool)

(assert (=> bs!1201076 m!6206138))

(declare-fun m!6206140 () Bool)

(assert (=> bs!1201076 m!6206140))

(assert (=> b!5145108 d!1663299))

(declare-fun bs!1201079 () Bool)

(declare-fun d!1663303 () Bool)

(assert (= bs!1201079 (and d!1663303 b!5145108)))

(declare-fun lambda!256768 () Int)

(assert (=> bs!1201079 (= lambda!256768 lambda!256749)))

(declare-fun bs!1201080 () Bool)

(declare-fun b!5145145 () Bool)

(assert (= bs!1201080 (and b!5145145 b!5145108)))

(declare-fun lambda!256769 () Int)

(assert (=> bs!1201080 (not (= lambda!256769 lambda!256749))))

(declare-fun bs!1201081 () Bool)

(assert (= bs!1201081 (and b!5145145 d!1663303)))

(assert (=> bs!1201081 (not (= lambda!256769 lambda!256768))))

(declare-fun bs!1201082 () Bool)

(declare-fun b!5145146 () Bool)

(assert (= bs!1201082 (and b!5145146 b!5145108)))

(declare-fun lambda!256770 () Int)

(assert (=> bs!1201082 (not (= lambda!256770 lambda!256749))))

(declare-fun bs!1201083 () Bool)

(assert (= bs!1201083 (and b!5145146 d!1663303)))

(assert (=> bs!1201083 (not (= lambda!256770 lambda!256768))))

(declare-fun bs!1201084 () Bool)

(assert (= bs!1201084 (and b!5145146 b!5145145)))

(assert (=> bs!1201084 (= lambda!256770 lambda!256769)))

(declare-fun lt!2120885 () Bool)

(declare-datatypes ((List!59877 0))(
  ( (Nil!59753) (Cons!59753 (h!66201 C!29222) (t!372914 List!59877)) )
))
(declare-datatypes ((Option!14792 0))(
  ( (None!14791) (Some!14791 (v!50820 List!59877)) )
))
(declare-fun isEmpty!32053 (Option!14792) Bool)

(declare-fun getLanguageWitness!949 ((Set Context!7724)) Option!14792)

(assert (=> d!1663303 (= lt!2120885 (isEmpty!32053 (getLanguageWitness!949 lt!2120840)))))

(assert (=> d!1663303 (= lt!2120885 (forall!13947 lt!2120840 lambda!256768))))

(declare-fun lt!2120878 () Unit!151143)

(declare-fun e!3208296 () Unit!151143)

(assert (=> d!1663303 (= lt!2120878 e!3208296)))

(declare-fun c!885863 () Bool)

(assert (=> d!1663303 (= c!885863 (not (forall!13947 lt!2120840 lambda!256768)))))

(assert (=> d!1663303 (= (lostCauseZipper!1276 lt!2120840) lt!2120885)))

(declare-fun Unit!151147 () Unit!151143)

(assert (=> b!5145146 (= e!3208296 Unit!151147)))

(declare-fun lt!2120880 () List!59876)

(declare-fun call!359525 () List!59876)

(assert (=> b!5145146 (= lt!2120880 call!359525)))

(declare-fun lt!2120884 () Unit!151143)

(declare-fun lemmaForallThenNotExists!406 (List!59876 Int) Unit!151143)

(assert (=> b!5145146 (= lt!2120884 (lemmaForallThenNotExists!406 lt!2120880 lambda!256768))))

(declare-fun call!359526 () Bool)

(assert (=> b!5145146 (not call!359526)))

(declare-fun lt!2120879 () Unit!151143)

(assert (=> b!5145146 (= lt!2120879 lt!2120884)))

(declare-fun Unit!151148 () Unit!151143)

(assert (=> b!5145145 (= e!3208296 Unit!151148)))

(declare-fun lt!2120881 () List!59876)

(assert (=> b!5145145 (= lt!2120881 call!359525)))

(declare-fun lt!2120883 () Unit!151143)

(declare-fun lemmaNotForallThenExists!439 (List!59876 Int) Unit!151143)

(assert (=> b!5145145 (= lt!2120883 (lemmaNotForallThenExists!439 lt!2120881 lambda!256768))))

(assert (=> b!5145145 call!359526))

(declare-fun lt!2120882 () Unit!151143)

(assert (=> b!5145145 (= lt!2120882 lt!2120883)))

(declare-fun bm!359521 () Bool)

(assert (=> bm!359521 (= call!359525 (toList!8392 lt!2120840))))

(declare-fun bm!359520 () Bool)

(declare-fun exists!1806 (List!59876 Int) Bool)

(assert (=> bm!359520 (= call!359526 (exists!1806 (ite c!885863 lt!2120881 lt!2120880) (ite c!885863 lambda!256769 lambda!256770)))))

(assert (= (and d!1663303 c!885863) b!5145145))

(assert (= (and d!1663303 (not c!885863)) b!5145146))

(assert (= (or b!5145145 b!5145146) bm!359520))

(assert (= (or b!5145145 b!5145146) bm!359521))

(declare-fun m!6206146 () Bool)

(assert (=> bm!359520 m!6206146))

(declare-fun m!6206148 () Bool)

(assert (=> b!5145145 m!6206148))

(declare-fun m!6206150 () Bool)

(assert (=> b!5145146 m!6206150))

(declare-fun m!6206152 () Bool)

(assert (=> d!1663303 m!6206152))

(assert (=> d!1663303 m!6206152))

(declare-fun m!6206154 () Bool)

(assert (=> d!1663303 m!6206154))

(declare-fun m!6206156 () Bool)

(assert (=> d!1663303 m!6206156))

(assert (=> d!1663303 m!6206156))

(assert (=> bm!359521 m!6206130))

(assert (=> b!5145108 d!1663303))

(declare-fun d!1663309 () Bool)

(declare-fun lt!2120886 () Bool)

(assert (=> d!1663309 (= lt!2120886 (forall!13949 (toList!8392 lt!2120841) lambda!256749))))

(assert (=> d!1663309 (= lt!2120886 (choose!38067 lt!2120841 lambda!256749))))

(assert (=> d!1663309 (= (forall!13947 lt!2120841 lambda!256749) lt!2120886)))

(declare-fun bs!1201085 () Bool)

(assert (= bs!1201085 d!1663309))

(declare-fun m!6206158 () Bool)

(assert (=> bs!1201085 m!6206158))

(assert (=> bs!1201085 m!6206158))

(declare-fun m!6206160 () Bool)

(assert (=> bs!1201085 m!6206160))

(declare-fun m!6206162 () Bool)

(assert (=> bs!1201085 m!6206162))

(assert (=> b!5145108 d!1663309))

(declare-fun bs!1201086 () Bool)

(declare-fun d!1663311 () Bool)

(assert (= bs!1201086 (and d!1663311 b!5145108)))

(declare-fun lambda!256771 () Int)

(assert (=> bs!1201086 (= lambda!256771 lambda!256749)))

(declare-fun bs!1201087 () Bool)

(assert (= bs!1201087 (and d!1663311 d!1663303)))

(assert (=> bs!1201087 (= lambda!256771 lambda!256768)))

(declare-fun bs!1201088 () Bool)

(assert (= bs!1201088 (and d!1663311 b!5145145)))

(assert (=> bs!1201088 (not (= lambda!256771 lambda!256769))))

(declare-fun bs!1201089 () Bool)

(assert (= bs!1201089 (and d!1663311 b!5145146)))

(assert (=> bs!1201089 (not (= lambda!256771 lambda!256770))))

(declare-fun bs!1201090 () Bool)

(declare-fun b!5145147 () Bool)

(assert (= bs!1201090 (and b!5145147 b!5145108)))

(declare-fun lambda!256772 () Int)

(assert (=> bs!1201090 (not (= lambda!256772 lambda!256749))))

(declare-fun bs!1201091 () Bool)

(assert (= bs!1201091 (and b!5145147 d!1663303)))

(assert (=> bs!1201091 (not (= lambda!256772 lambda!256768))))

(declare-fun bs!1201092 () Bool)

(assert (= bs!1201092 (and b!5145147 d!1663311)))

(assert (=> bs!1201092 (not (= lambda!256772 lambda!256771))))

(declare-fun bs!1201093 () Bool)

(assert (= bs!1201093 (and b!5145147 b!5145145)))

(assert (=> bs!1201093 (= lambda!256772 lambda!256769)))

(declare-fun bs!1201094 () Bool)

(assert (= bs!1201094 (and b!5145147 b!5145146)))

(assert (=> bs!1201094 (= lambda!256772 lambda!256770)))

(declare-fun bs!1201095 () Bool)

(declare-fun b!5145148 () Bool)

(assert (= bs!1201095 (and b!5145148 b!5145108)))

(declare-fun lambda!256773 () Int)

(assert (=> bs!1201095 (not (= lambda!256773 lambda!256749))))

(declare-fun bs!1201096 () Bool)

(assert (= bs!1201096 (and b!5145148 d!1663311)))

(assert (=> bs!1201096 (not (= lambda!256773 lambda!256771))))

(declare-fun bs!1201097 () Bool)

(assert (= bs!1201097 (and b!5145148 b!5145145)))

(assert (=> bs!1201097 (= lambda!256773 lambda!256769)))

(declare-fun bs!1201098 () Bool)

(assert (= bs!1201098 (and b!5145148 b!5145146)))

(assert (=> bs!1201098 (= lambda!256773 lambda!256770)))

(declare-fun bs!1201099 () Bool)

(assert (= bs!1201099 (and b!5145148 d!1663303)))

(assert (=> bs!1201099 (not (= lambda!256773 lambda!256768))))

(declare-fun bs!1201100 () Bool)

(assert (= bs!1201100 (and b!5145148 b!5145147)))

(assert (=> bs!1201100 (= lambda!256773 lambda!256772)))

(declare-fun lt!2120894 () Bool)

(assert (=> d!1663311 (= lt!2120894 (isEmpty!32053 (getLanguageWitness!949 lt!2120841)))))

(assert (=> d!1663311 (= lt!2120894 (forall!13947 lt!2120841 lambda!256771))))

(declare-fun lt!2120887 () Unit!151143)

(declare-fun e!3208297 () Unit!151143)

(assert (=> d!1663311 (= lt!2120887 e!3208297)))

(declare-fun c!885864 () Bool)

(assert (=> d!1663311 (= c!885864 (not (forall!13947 lt!2120841 lambda!256771)))))

(assert (=> d!1663311 (= (lostCauseZipper!1276 lt!2120841) lt!2120894)))

(declare-fun Unit!151149 () Unit!151143)

(assert (=> b!5145148 (= e!3208297 Unit!151149)))

(declare-fun lt!2120889 () List!59876)

(declare-fun call!359527 () List!59876)

(assert (=> b!5145148 (= lt!2120889 call!359527)))

(declare-fun lt!2120893 () Unit!151143)

(assert (=> b!5145148 (= lt!2120893 (lemmaForallThenNotExists!406 lt!2120889 lambda!256771))))

(declare-fun call!359528 () Bool)

(assert (=> b!5145148 (not call!359528)))

(declare-fun lt!2120888 () Unit!151143)

(assert (=> b!5145148 (= lt!2120888 lt!2120893)))

(declare-fun Unit!151150 () Unit!151143)

(assert (=> b!5145147 (= e!3208297 Unit!151150)))

(declare-fun lt!2120890 () List!59876)

(assert (=> b!5145147 (= lt!2120890 call!359527)))

(declare-fun lt!2120892 () Unit!151143)

(assert (=> b!5145147 (= lt!2120892 (lemmaNotForallThenExists!439 lt!2120890 lambda!256771))))

(assert (=> b!5145147 call!359528))

(declare-fun lt!2120891 () Unit!151143)

(assert (=> b!5145147 (= lt!2120891 lt!2120892)))

(declare-fun bm!359523 () Bool)

(assert (=> bm!359523 (= call!359527 (toList!8392 lt!2120841))))

(declare-fun bm!359522 () Bool)

(assert (=> bm!359522 (= call!359528 (exists!1806 (ite c!885864 lt!2120890 lt!2120889) (ite c!885864 lambda!256772 lambda!256773)))))

(assert (= (and d!1663311 c!885864) b!5145147))

(assert (= (and d!1663311 (not c!885864)) b!5145148))

(assert (= (or b!5145147 b!5145148) bm!359522))

(assert (= (or b!5145147 b!5145148) bm!359523))

(declare-fun m!6206164 () Bool)

(assert (=> bm!359522 m!6206164))

(declare-fun m!6206166 () Bool)

(assert (=> b!5145147 m!6206166))

(declare-fun m!6206168 () Bool)

(assert (=> b!5145148 m!6206168))

(declare-fun m!6206170 () Bool)

(assert (=> d!1663311 m!6206170))

(assert (=> d!1663311 m!6206170))

(declare-fun m!6206172 () Bool)

(assert (=> d!1663311 m!6206172))

(declare-fun m!6206174 () Bool)

(assert (=> d!1663311 m!6206174))

(assert (=> d!1663311 m!6206174))

(assert (=> bm!359523 m!6206158))

(assert (=> b!5145108 d!1663311))

(declare-fun d!1663313 () Bool)

(assert (=> d!1663313 (lostCauseZipper!1276 (derivationStepZipperDown!157 (regOne!29469 expr!117) ctx!100 a!1296))))

(declare-fun lt!2120895 () Unit!151143)

(assert (=> d!1663313 (= lt!2120895 (choose!38068 (regOne!29469 expr!117) ctx!100 a!1296))))

(assert (=> d!1663313 (validRegex!6333 (regOne!29469 expr!117))))

(assert (=> d!1663313 (= (lemmaLostCauseFixPointDerivDown!47 (regOne!29469 expr!117) ctx!100 a!1296) lt!2120895)))

(declare-fun bs!1201101 () Bool)

(assert (= bs!1201101 d!1663313))

(assert (=> bs!1201101 m!6206084))

(assert (=> bs!1201101 m!6206084))

(declare-fun m!6206176 () Bool)

(assert (=> bs!1201101 m!6206176))

(declare-fun m!6206178 () Bool)

(assert (=> bs!1201101 m!6206178))

(declare-fun m!6206180 () Bool)

(assert (=> bs!1201101 m!6206180))

(assert (=> b!5145108 d!1663313))

(declare-fun b!5145171 () Bool)

(declare-fun e!3208314 () Bool)

(declare-fun nullable!4834 (Regex!14478) Bool)

(assert (=> b!5145171 (= e!3208314 (nullable!4834 (regOne!29468 (regTwo!29469 expr!117))))))

(declare-fun bm!359536 () Bool)

(declare-fun call!359541 () (Set Context!7724))

(declare-fun call!359545 () (Set Context!7724))

(assert (=> bm!359536 (= call!359541 call!359545)))

(declare-fun c!885876 () Bool)

(declare-fun c!885879 () Bool)

(declare-fun call!359546 () List!59874)

(declare-fun bm!359537 () Bool)

(declare-fun $colon$colon!1206 (List!59874 Regex!14478) List!59874)

(assert (=> bm!359537 (= call!359546 ($colon$colon!1206 (exprs!4362 ctx!100) (ite (or c!885879 c!885876) (regTwo!29468 (regTwo!29469 expr!117)) (regTwo!29469 expr!117))))))

(declare-fun call!359544 () (Set Context!7724))

(declare-fun bm!359538 () Bool)

(declare-fun c!885878 () Bool)

(assert (=> bm!359538 (= call!359544 (derivationStepZipperDown!157 (ite c!885878 (regTwo!29469 (regTwo!29469 expr!117)) (regOne!29468 (regTwo!29469 expr!117))) (ite c!885878 ctx!100 (Context!7725 call!359546)) a!1296))))

(declare-fun b!5145172 () Bool)

(declare-fun e!3208311 () (Set Context!7724))

(assert (=> b!5145172 (= e!3208311 (set.union call!359545 call!359544))))

(declare-fun d!1663315 () Bool)

(declare-fun c!885877 () Bool)

(assert (=> d!1663315 (= c!885877 (and (is-ElementMatch!14478 (regTwo!29469 expr!117)) (= (c!885849 (regTwo!29469 expr!117)) a!1296)))))

(declare-fun e!3208313 () (Set Context!7724))

(assert (=> d!1663315 (= (derivationStepZipperDown!157 (regTwo!29469 expr!117) ctx!100 a!1296) e!3208313)))

(declare-fun b!5145173 () Bool)

(declare-fun c!885875 () Bool)

(assert (=> b!5145173 (= c!885875 (is-Star!14478 (regTwo!29469 expr!117)))))

(declare-fun e!3208312 () (Set Context!7724))

(declare-fun e!3208310 () (Set Context!7724))

(assert (=> b!5145173 (= e!3208312 e!3208310)))

(declare-fun b!5145174 () Bool)

(assert (=> b!5145174 (= c!885879 e!3208314)))

(declare-fun res!2190332 () Bool)

(assert (=> b!5145174 (=> (not res!2190332) (not e!3208314))))

(assert (=> b!5145174 (= res!2190332 (is-Concat!23323 (regTwo!29469 expr!117)))))

(declare-fun e!3208315 () (Set Context!7724))

(assert (=> b!5145174 (= e!3208311 e!3208315)))

(declare-fun b!5145175 () Bool)

(assert (=> b!5145175 (= e!3208313 e!3208311)))

(assert (=> b!5145175 (= c!885878 (is-Union!14478 (regTwo!29469 expr!117)))))

(declare-fun bm!359539 () Bool)

(declare-fun call!359542 () (Set Context!7724))

(assert (=> bm!359539 (= call!359542 call!359541)))

(declare-fun b!5145176 () Bool)

(assert (=> b!5145176 (= e!3208313 (set.insert ctx!100 (as set.empty (Set Context!7724))))))

(declare-fun b!5145177 () Bool)

(assert (=> b!5145177 (= e!3208310 call!359542)))

(declare-fun call!359543 () List!59874)

(declare-fun bm!359540 () Bool)

(assert (=> bm!359540 (= call!359545 (derivationStepZipperDown!157 (ite c!885878 (regOne!29469 (regTwo!29469 expr!117)) (ite c!885879 (regTwo!29468 (regTwo!29469 expr!117)) (ite c!885876 (regOne!29468 (regTwo!29469 expr!117)) (reg!14807 (regTwo!29469 expr!117))))) (ite (or c!885878 c!885879) ctx!100 (Context!7725 call!359543)) a!1296))))

(declare-fun bm!359541 () Bool)

(assert (=> bm!359541 (= call!359543 call!359546)))

(declare-fun b!5145178 () Bool)

(assert (=> b!5145178 (= e!3208315 (set.union call!359544 call!359541))))

(declare-fun b!5145179 () Bool)

(assert (=> b!5145179 (= e!3208310 (as set.empty (Set Context!7724)))))

(declare-fun b!5145180 () Bool)

(assert (=> b!5145180 (= e!3208312 call!359542)))

(declare-fun b!5145181 () Bool)

(assert (=> b!5145181 (= e!3208315 e!3208312)))

(assert (=> b!5145181 (= c!885876 (is-Concat!23323 (regTwo!29469 expr!117)))))

(assert (= (and d!1663315 c!885877) b!5145176))

(assert (= (and d!1663315 (not c!885877)) b!5145175))

(assert (= (and b!5145175 c!885878) b!5145172))

(assert (= (and b!5145175 (not c!885878)) b!5145174))

(assert (= (and b!5145174 res!2190332) b!5145171))

(assert (= (and b!5145174 c!885879) b!5145178))

(assert (= (and b!5145174 (not c!885879)) b!5145181))

(assert (= (and b!5145181 c!885876) b!5145180))

(assert (= (and b!5145181 (not c!885876)) b!5145173))

(assert (= (and b!5145173 c!885875) b!5145177))

(assert (= (and b!5145173 (not c!885875)) b!5145179))

(assert (= (or b!5145180 b!5145177) bm!359541))

(assert (= (or b!5145180 b!5145177) bm!359539))

(assert (= (or b!5145178 bm!359541) bm!359537))

(assert (= (or b!5145178 bm!359539) bm!359536))

(assert (= (or b!5145172 b!5145178) bm!359538))

(assert (= (or b!5145172 bm!359536) bm!359540))

(declare-fun m!6206188 () Bool)

(assert (=> bm!359538 m!6206188))

(declare-fun m!6206190 () Bool)

(assert (=> bm!359540 m!6206190))

(declare-fun m!6206192 () Bool)

(assert (=> b!5145176 m!6206192))

(declare-fun m!6206194 () Bool)

(assert (=> b!5145171 m!6206194))

(declare-fun m!6206196 () Bool)

(assert (=> bm!359537 m!6206196))

(assert (=> b!5145108 d!1663315))

(declare-fun b!5145182 () Bool)

(declare-fun e!3208320 () Bool)

(assert (=> b!5145182 (= e!3208320 (nullable!4834 (regOne!29468 (regOne!29469 expr!117))))))

(declare-fun bm!359542 () Bool)

(declare-fun call!359547 () (Set Context!7724))

(declare-fun call!359551 () (Set Context!7724))

(assert (=> bm!359542 (= call!359547 call!359551)))

(declare-fun call!359552 () List!59874)

(declare-fun c!885884 () Bool)

(declare-fun c!885881 () Bool)

(declare-fun bm!359543 () Bool)

(assert (=> bm!359543 (= call!359552 ($colon$colon!1206 (exprs!4362 ctx!100) (ite (or c!885884 c!885881) (regTwo!29468 (regOne!29469 expr!117)) (regOne!29469 expr!117))))))

(declare-fun bm!359544 () Bool)

(declare-fun call!359550 () (Set Context!7724))

(declare-fun c!885883 () Bool)

(assert (=> bm!359544 (= call!359550 (derivationStepZipperDown!157 (ite c!885883 (regTwo!29469 (regOne!29469 expr!117)) (regOne!29468 (regOne!29469 expr!117))) (ite c!885883 ctx!100 (Context!7725 call!359552)) a!1296))))

(declare-fun b!5145183 () Bool)

(declare-fun e!3208317 () (Set Context!7724))

(assert (=> b!5145183 (= e!3208317 (set.union call!359551 call!359550))))

(declare-fun d!1663319 () Bool)

(declare-fun c!885882 () Bool)

(assert (=> d!1663319 (= c!885882 (and (is-ElementMatch!14478 (regOne!29469 expr!117)) (= (c!885849 (regOne!29469 expr!117)) a!1296)))))

(declare-fun e!3208319 () (Set Context!7724))

(assert (=> d!1663319 (= (derivationStepZipperDown!157 (regOne!29469 expr!117) ctx!100 a!1296) e!3208319)))

(declare-fun b!5145184 () Bool)

(declare-fun c!885880 () Bool)

(assert (=> b!5145184 (= c!885880 (is-Star!14478 (regOne!29469 expr!117)))))

(declare-fun e!3208318 () (Set Context!7724))

(declare-fun e!3208316 () (Set Context!7724))

(assert (=> b!5145184 (= e!3208318 e!3208316)))

(declare-fun b!5145185 () Bool)

(assert (=> b!5145185 (= c!885884 e!3208320)))

(declare-fun res!2190333 () Bool)

(assert (=> b!5145185 (=> (not res!2190333) (not e!3208320))))

(assert (=> b!5145185 (= res!2190333 (is-Concat!23323 (regOne!29469 expr!117)))))

(declare-fun e!3208321 () (Set Context!7724))

(assert (=> b!5145185 (= e!3208317 e!3208321)))

(declare-fun b!5145186 () Bool)

(assert (=> b!5145186 (= e!3208319 e!3208317)))

(assert (=> b!5145186 (= c!885883 (is-Union!14478 (regOne!29469 expr!117)))))

(declare-fun bm!359545 () Bool)

(declare-fun call!359548 () (Set Context!7724))

(assert (=> bm!359545 (= call!359548 call!359547)))

(declare-fun b!5145187 () Bool)

(assert (=> b!5145187 (= e!3208319 (set.insert ctx!100 (as set.empty (Set Context!7724))))))

(declare-fun b!5145188 () Bool)

(assert (=> b!5145188 (= e!3208316 call!359548)))

(declare-fun call!359549 () List!59874)

(declare-fun bm!359546 () Bool)

(assert (=> bm!359546 (= call!359551 (derivationStepZipperDown!157 (ite c!885883 (regOne!29469 (regOne!29469 expr!117)) (ite c!885884 (regTwo!29468 (regOne!29469 expr!117)) (ite c!885881 (regOne!29468 (regOne!29469 expr!117)) (reg!14807 (regOne!29469 expr!117))))) (ite (or c!885883 c!885884) ctx!100 (Context!7725 call!359549)) a!1296))))

(declare-fun bm!359547 () Bool)

(assert (=> bm!359547 (= call!359549 call!359552)))

(declare-fun b!5145189 () Bool)

(assert (=> b!5145189 (= e!3208321 (set.union call!359550 call!359547))))

(declare-fun b!5145190 () Bool)

(assert (=> b!5145190 (= e!3208316 (as set.empty (Set Context!7724)))))

(declare-fun b!5145191 () Bool)

(assert (=> b!5145191 (= e!3208318 call!359548)))

(declare-fun b!5145192 () Bool)

(assert (=> b!5145192 (= e!3208321 e!3208318)))

(assert (=> b!5145192 (= c!885881 (is-Concat!23323 (regOne!29469 expr!117)))))

(assert (= (and d!1663319 c!885882) b!5145187))

(assert (= (and d!1663319 (not c!885882)) b!5145186))

(assert (= (and b!5145186 c!885883) b!5145183))

(assert (= (and b!5145186 (not c!885883)) b!5145185))

(assert (= (and b!5145185 res!2190333) b!5145182))

(assert (= (and b!5145185 c!885884) b!5145189))

(assert (= (and b!5145185 (not c!885884)) b!5145192))

(assert (= (and b!5145192 c!885881) b!5145191))

(assert (= (and b!5145192 (not c!885881)) b!5145184))

(assert (= (and b!5145184 c!885880) b!5145188))

(assert (= (and b!5145184 (not c!885880)) b!5145190))

(assert (= (or b!5145191 b!5145188) bm!359547))

(assert (= (or b!5145191 b!5145188) bm!359545))

(assert (= (or b!5145189 bm!359547) bm!359543))

(assert (= (or b!5145189 bm!359545) bm!359542))

(assert (= (or b!5145183 b!5145189) bm!359544))

(assert (= (or b!5145183 bm!359542) bm!359546))

(declare-fun m!6206198 () Bool)

(assert (=> bm!359544 m!6206198))

(declare-fun m!6206200 () Bool)

(assert (=> bm!359546 m!6206200))

(assert (=> b!5145187 m!6206192))

(declare-fun m!6206202 () Bool)

(assert (=> b!5145182 m!6206202))

(declare-fun m!6206204 () Bool)

(assert (=> bm!359543 m!6206204))

(assert (=> b!5145108 d!1663319))

(declare-fun d!1663321 () Bool)

(declare-fun lambda!256776 () Int)

(declare-fun exists!1807 (List!59874 Int) Bool)

(assert (=> d!1663321 (= (lostCause!1508 ctx!100) (exists!1807 (exprs!4362 ctx!100) lambda!256776))))

(declare-fun bs!1201103 () Bool)

(assert (= bs!1201103 d!1663321))

(declare-fun m!6206206 () Bool)

(assert (=> bs!1201103 m!6206206))

(assert (=> b!5145102 d!1663321))

(declare-fun b!5145215 () Bool)

(declare-fun e!3208346 () Bool)

(declare-fun call!359559 () Bool)

(assert (=> b!5145215 (= e!3208346 call!359559)))

(declare-fun b!5145216 () Bool)

(declare-fun e!3208340 () Bool)

(declare-fun e!3208341 () Bool)

(assert (=> b!5145216 (= e!3208340 e!3208341)))

(declare-fun res!2190348 () Bool)

(assert (=> b!5145216 (=> (not res!2190348) (not e!3208341))))

(declare-fun call!359561 () Bool)

(assert (=> b!5145216 (= res!2190348 call!359561)))

(declare-fun bm!359554 () Bool)

(declare-fun c!885896 () Bool)

(assert (=> bm!359554 (= call!359559 (validRegex!6333 (ite c!885896 (regTwo!29469 expr!117) (regTwo!29468 expr!117))))))

(declare-fun b!5145217 () Bool)

(declare-fun e!3208343 () Bool)

(declare-fun call!359560 () Bool)

(assert (=> b!5145217 (= e!3208343 call!359560)))

(declare-fun b!5145218 () Bool)

(declare-fun res!2190347 () Bool)

(assert (=> b!5145218 (=> (not res!2190347) (not e!3208346))))

(assert (=> b!5145218 (= res!2190347 call!359561)))

(declare-fun e!3208345 () Bool)

(assert (=> b!5145218 (= e!3208345 e!3208346)))

(declare-fun b!5145219 () Bool)

(declare-fun e!3208344 () Bool)

(declare-fun e!3208342 () Bool)

(assert (=> b!5145219 (= e!3208344 e!3208342)))

(declare-fun c!885895 () Bool)

(assert (=> b!5145219 (= c!885895 (is-Star!14478 expr!117))))

(declare-fun b!5145220 () Bool)

(assert (=> b!5145220 (= e!3208342 e!3208345)))

(assert (=> b!5145220 (= c!885896 (is-Union!14478 expr!117))))

(declare-fun d!1663323 () Bool)

(declare-fun res!2190344 () Bool)

(assert (=> d!1663323 (=> res!2190344 e!3208344)))

(assert (=> d!1663323 (= res!2190344 (is-ElementMatch!14478 expr!117))))

(assert (=> d!1663323 (= (validRegex!6333 expr!117) e!3208344)))

(declare-fun bm!359555 () Bool)

(assert (=> bm!359555 (= call!359561 call!359560)))

(declare-fun bm!359556 () Bool)

(assert (=> bm!359556 (= call!359560 (validRegex!6333 (ite c!885895 (reg!14807 expr!117) (ite c!885896 (regOne!29469 expr!117) (regOne!29468 expr!117)))))))

(declare-fun b!5145221 () Bool)

(declare-fun res!2190345 () Bool)

(assert (=> b!5145221 (=> res!2190345 e!3208340)))

(assert (=> b!5145221 (= res!2190345 (not (is-Concat!23323 expr!117)))))

(assert (=> b!5145221 (= e!3208345 e!3208340)))

(declare-fun b!5145222 () Bool)

(assert (=> b!5145222 (= e!3208342 e!3208343)))

(declare-fun res!2190346 () Bool)

(assert (=> b!5145222 (= res!2190346 (not (nullable!4834 (reg!14807 expr!117))))))

(assert (=> b!5145222 (=> (not res!2190346) (not e!3208343))))

(declare-fun b!5145223 () Bool)

(assert (=> b!5145223 (= e!3208341 call!359559)))

(assert (= (and d!1663323 (not res!2190344)) b!5145219))

(assert (= (and b!5145219 c!885895) b!5145222))

(assert (= (and b!5145219 (not c!885895)) b!5145220))

(assert (= (and b!5145222 res!2190346) b!5145217))

(assert (= (and b!5145220 c!885896) b!5145218))

(assert (= (and b!5145220 (not c!885896)) b!5145221))

(assert (= (and b!5145218 res!2190347) b!5145215))

(assert (= (and b!5145221 (not res!2190345)) b!5145216))

(assert (= (and b!5145216 res!2190348) b!5145223))

(assert (= (or b!5145215 b!5145223) bm!359554))

(assert (= (or b!5145218 b!5145216) bm!359555))

(assert (= (or b!5145217 bm!359555) bm!359556))

(declare-fun m!6206208 () Bool)

(assert (=> bm!359554 m!6206208))

(declare-fun m!6206210 () Bool)

(assert (=> bm!359556 m!6206210))

(declare-fun m!6206212 () Bool)

(assert (=> b!5145222 m!6206212))

(assert (=> start!544634 d!1663323))

(declare-fun bs!1201104 () Bool)

(declare-fun d!1663325 () Bool)

(assert (= bs!1201104 (and d!1663325 d!1663321)))

(declare-fun lambda!256789 () Int)

(assert (=> bs!1201104 (not (= lambda!256789 lambda!256776))))

(declare-fun forall!13950 (List!59874 Int) Bool)

(assert (=> d!1663325 (= (inv!79377 ctx!100) (forall!13950 (exprs!4362 ctx!100) lambda!256789))))

(declare-fun bs!1201105 () Bool)

(assert (= bs!1201105 d!1663325))

(declare-fun m!6206214 () Bool)

(assert (=> bs!1201105 m!6206214))

(assert (=> start!544634 d!1663325))

(declare-fun d!1663327 () Bool)

(declare-fun lostCauseFct!360 (Regex!14478) Bool)

(assert (=> d!1663327 (= (lostCause!1509 expr!117) (lostCauseFct!360 expr!117))))

(declare-fun bs!1201106 () Bool)

(assert (= bs!1201106 d!1663327))

(declare-fun m!6206216 () Bool)

(assert (=> bs!1201106 m!6206216))

(assert (=> b!5145106 d!1663327))

(declare-fun b!5145237 () Bool)

(declare-fun e!3208351 () Bool)

(declare-fun tp!1436986 () Bool)

(declare-fun tp!1436985 () Bool)

(assert (=> b!5145237 (= e!3208351 (and tp!1436986 tp!1436985))))

(declare-fun b!5145235 () Bool)

(declare-fun tp!1436987 () Bool)

(declare-fun tp!1436984 () Bool)

(assert (=> b!5145235 (= e!3208351 (and tp!1436987 tp!1436984))))

(declare-fun b!5145234 () Bool)

(assert (=> b!5145234 (= e!3208351 tp_is_empty!38105)))

(assert (=> b!5145105 (= tp!1436950 e!3208351)))

(declare-fun b!5145236 () Bool)

(declare-fun tp!1436988 () Bool)

(assert (=> b!5145236 (= e!3208351 tp!1436988)))

(assert (= (and b!5145105 (is-ElementMatch!14478 (regOne!29468 expr!117))) b!5145234))

(assert (= (and b!5145105 (is-Concat!23323 (regOne!29468 expr!117))) b!5145235))

(assert (= (and b!5145105 (is-Star!14478 (regOne!29468 expr!117))) b!5145236))

(assert (= (and b!5145105 (is-Union!14478 (regOne!29468 expr!117))) b!5145237))

(declare-fun b!5145241 () Bool)

(declare-fun e!3208352 () Bool)

(declare-fun tp!1436991 () Bool)

(declare-fun tp!1436990 () Bool)

(assert (=> b!5145241 (= e!3208352 (and tp!1436991 tp!1436990))))

(declare-fun b!5145239 () Bool)

(declare-fun tp!1436992 () Bool)

(declare-fun tp!1436989 () Bool)

(assert (=> b!5145239 (= e!3208352 (and tp!1436992 tp!1436989))))

(declare-fun b!5145238 () Bool)

(assert (=> b!5145238 (= e!3208352 tp_is_empty!38105)))

(assert (=> b!5145105 (= tp!1436951 e!3208352)))

(declare-fun b!5145240 () Bool)

(declare-fun tp!1436993 () Bool)

(assert (=> b!5145240 (= e!3208352 tp!1436993)))

(assert (= (and b!5145105 (is-ElementMatch!14478 (regTwo!29468 expr!117))) b!5145238))

(assert (= (and b!5145105 (is-Concat!23323 (regTwo!29468 expr!117))) b!5145239))

(assert (= (and b!5145105 (is-Star!14478 (regTwo!29468 expr!117))) b!5145240))

(assert (= (and b!5145105 (is-Union!14478 (regTwo!29468 expr!117))) b!5145241))

(declare-fun b!5145245 () Bool)

(declare-fun e!3208353 () Bool)

(declare-fun tp!1436996 () Bool)

(declare-fun tp!1436995 () Bool)

(assert (=> b!5145245 (= e!3208353 (and tp!1436996 tp!1436995))))

(declare-fun b!5145243 () Bool)

(declare-fun tp!1436997 () Bool)

(declare-fun tp!1436994 () Bool)

(assert (=> b!5145243 (= e!3208353 (and tp!1436997 tp!1436994))))

(declare-fun b!5145242 () Bool)

(assert (=> b!5145242 (= e!3208353 tp_is_empty!38105)))

(assert (=> b!5145109 (= tp!1436955 e!3208353)))

(declare-fun b!5145244 () Bool)

(declare-fun tp!1436998 () Bool)

(assert (=> b!5145244 (= e!3208353 tp!1436998)))

(assert (= (and b!5145109 (is-ElementMatch!14478 (reg!14807 expr!117))) b!5145242))

(assert (= (and b!5145109 (is-Concat!23323 (reg!14807 expr!117))) b!5145243))

(assert (= (and b!5145109 (is-Star!14478 (reg!14807 expr!117))) b!5145244))

(assert (= (and b!5145109 (is-Union!14478 (reg!14807 expr!117))) b!5145245))

(declare-fun b!5145249 () Bool)

(declare-fun e!3208354 () Bool)

(declare-fun tp!1437001 () Bool)

(declare-fun tp!1437000 () Bool)

(assert (=> b!5145249 (= e!3208354 (and tp!1437001 tp!1437000))))

(declare-fun b!5145247 () Bool)

(declare-fun tp!1437002 () Bool)

(declare-fun tp!1436999 () Bool)

(assert (=> b!5145247 (= e!3208354 (and tp!1437002 tp!1436999))))

(declare-fun b!5145246 () Bool)

(assert (=> b!5145246 (= e!3208354 tp_is_empty!38105)))

(assert (=> b!5145107 (= tp!1436953 e!3208354)))

(declare-fun b!5145248 () Bool)

(declare-fun tp!1437003 () Bool)

(assert (=> b!5145248 (= e!3208354 tp!1437003)))

(assert (= (and b!5145107 (is-ElementMatch!14478 (regOne!29469 expr!117))) b!5145246))

(assert (= (and b!5145107 (is-Concat!23323 (regOne!29469 expr!117))) b!5145247))

(assert (= (and b!5145107 (is-Star!14478 (regOne!29469 expr!117))) b!5145248))

(assert (= (and b!5145107 (is-Union!14478 (regOne!29469 expr!117))) b!5145249))

(declare-fun b!5145253 () Bool)

(declare-fun e!3208355 () Bool)

(declare-fun tp!1437006 () Bool)

(declare-fun tp!1437005 () Bool)

(assert (=> b!5145253 (= e!3208355 (and tp!1437006 tp!1437005))))

(declare-fun b!5145251 () Bool)

(declare-fun tp!1437007 () Bool)

(declare-fun tp!1437004 () Bool)

(assert (=> b!5145251 (= e!3208355 (and tp!1437007 tp!1437004))))

(declare-fun b!5145250 () Bool)

(assert (=> b!5145250 (= e!3208355 tp_is_empty!38105)))

(assert (=> b!5145107 (= tp!1436952 e!3208355)))

(declare-fun b!5145252 () Bool)

(declare-fun tp!1437008 () Bool)

(assert (=> b!5145252 (= e!3208355 tp!1437008)))

(assert (= (and b!5145107 (is-ElementMatch!14478 (regTwo!29469 expr!117))) b!5145250))

(assert (= (and b!5145107 (is-Concat!23323 (regTwo!29469 expr!117))) b!5145251))

(assert (= (and b!5145107 (is-Star!14478 (regTwo!29469 expr!117))) b!5145252))

(assert (= (and b!5145107 (is-Union!14478 (regTwo!29469 expr!117))) b!5145253))

(declare-fun b!5145258 () Bool)

(declare-fun e!3208358 () Bool)

(declare-fun tp!1437013 () Bool)

(declare-fun tp!1437014 () Bool)

(assert (=> b!5145258 (= e!3208358 (and tp!1437013 tp!1437014))))

(assert (=> b!5145101 (= tp!1436954 e!3208358)))

(assert (= (and b!5145101 (is-Cons!59750 (exprs!4362 ctx!100))) b!5145258))

(push 1)

(assert (not b!5145247))

(assert (not d!1663313))

(assert (not d!1663303))

(assert (not b!5145235))

(assert (not b!5145251))

(assert (not b!5145249))

(assert (not b!5145252))

(assert (not b!5145145))

(assert (not b!5145171))

(assert (not bm!359537))

(assert (not bm!359521))

(assert (not b!5145222))

(assert (not d!1663327))

(assert (not bm!359540))

(assert (not bm!359544))

(assert (not b!5145253))

(assert (not b!5145241))

(assert (not d!1663299))

(assert (not bm!359538))

(assert tp_is_empty!38105)

(assert (not b!5145243))

(assert (not b!5145244))

(assert (not d!1663325))

(assert (not b!5145236))

(assert (not b!5145240))

(assert (not bm!359543))

(assert (not b!5145147))

(assert (not d!1663309))

(assert (not b!5145148))

(assert (not b!5145258))

(assert (not d!1663311))

(assert (not b!5145182))

(assert (not b!5145239))

(assert (not b!5145248))

(assert (not b!5145245))

(assert (not bm!359556))

(assert (not bm!359523))

(assert (not b!5145146))

(assert (not b!5145237))

(assert (not bm!359554))

(assert (not bm!359520))

(assert (not bm!359522))

(assert (not d!1663321))

(assert (not bm!359546))

(assert (not d!1663297))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

