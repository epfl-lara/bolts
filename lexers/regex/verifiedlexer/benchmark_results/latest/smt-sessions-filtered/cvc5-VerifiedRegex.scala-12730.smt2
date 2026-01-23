; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!703808 () Bool)

(assert start!703808)

(declare-fun b!7242102 () Bool)

(declare-fun e!4342063 () Bool)

(declare-fun tp!2035524 () Bool)

(assert (=> b!7242102 (= e!4342063 tp!2035524)))

(declare-fun b!7242103 () Bool)

(declare-fun e!4342064 () Bool)

(declare-fun tp_is_empty!46601 () Bool)

(declare-fun tp!2035521 () Bool)

(assert (=> b!7242103 (= e!4342064 (and tp_is_empty!46601 tp!2035521))))

(declare-fun res!2937850 () Bool)

(declare-fun e!4342061 () Bool)

(assert (=> start!703808 (=> (not res!2937850) (not e!4342061))))

(declare-datatypes ((C!37410 0))(
  ( (C!37411 (val!28653 Int)) )
))
(declare-datatypes ((Regex!18568 0))(
  ( (ElementMatch!18568 (c!1344950 C!37410)) (Concat!27413 (regOne!37648 Regex!18568) (regTwo!37648 Regex!18568)) (EmptyExpr!18568) (Star!18568 (reg!18897 Regex!18568)) (EmptyLang!18568) (Union!18568 (regOne!37649 Regex!18568) (regTwo!37649 Regex!18568)) )
))
(declare-datatypes ((List!70305 0))(
  ( (Nil!70181) (Cons!70181 (h!76629 Regex!18568) (t!384356 List!70305)) )
))
(declare-datatypes ((Context!15016 0))(
  ( (Context!15017 (exprs!8008 List!70305)) )
))
(declare-fun lt!2580412 () (Set Context!15016))

(declare-datatypes ((List!70306 0))(
  ( (Nil!70182) (Cons!70182 (h!76630 C!37410) (t!384357 List!70306)) )
))
(declare-fun s1!1971 () List!70306)

(declare-fun matchZipper!3478 ((Set Context!15016) List!70306) Bool)

(assert (=> start!703808 (= res!2937850 (matchZipper!3478 lt!2580412 s1!1971))))

(declare-fun ct1!232 () Context!15016)

(assert (=> start!703808 (= lt!2580412 (set.insert ct1!232 (as set.empty (Set Context!15016))))))

(assert (=> start!703808 e!4342061))

(declare-fun inv!89431 (Context!15016) Bool)

(assert (=> start!703808 (and (inv!89431 ct1!232) e!4342063)))

(assert (=> start!703808 e!4342064))

(declare-fun e!4342059 () Bool)

(assert (=> start!703808 e!4342059))

(declare-fun ct2!328 () Context!15016)

(declare-fun e!4342060 () Bool)

(assert (=> start!703808 (and (inv!89431 ct2!328) e!4342060)))

(declare-fun b!7242104 () Bool)

(declare-fun e!4342062 () Bool)

(declare-fun s2!1849 () List!70306)

(declare-fun ++!16424 (List!70306 List!70306) List!70306)

(assert (=> b!7242104 (= e!4342062 (= (++!16424 s1!1971 s2!1849) s2!1849))))

(declare-fun b!7242105 () Bool)

(declare-fun e!4342058 () Bool)

(assert (=> b!7242105 (= e!4342061 e!4342058)))

(declare-fun res!2937849 () Bool)

(assert (=> b!7242105 (=> (not res!2937849) (not e!4342058))))

(assert (=> b!7242105 (= res!2937849 (is-Nil!70181 (exprs!8008 ct1!232)))))

(declare-fun lt!2580411 () List!70305)

(declare-fun ++!16425 (List!70305 List!70305) List!70305)

(assert (=> b!7242105 (= lt!2580411 (++!16425 (exprs!8008 ct1!232) (exprs!8008 ct2!328)))))

(declare-datatypes ((Unit!163722 0))(
  ( (Unit!163723) )
))
(declare-fun lt!2580413 () Unit!163722)

(declare-fun lambda!442169 () Int)

(declare-fun lemmaConcatPreservesForall!1377 (List!70305 List!70305 Int) Unit!163722)

(assert (=> b!7242105 (= lt!2580413 (lemmaConcatPreservesForall!1377 (exprs!8008 ct1!232) (exprs!8008 ct2!328) lambda!442169))))

(declare-fun b!7242106 () Bool)

(assert (=> b!7242106 (= e!4342058 (not e!4342062))))

(declare-fun res!2937847 () Bool)

(assert (=> b!7242106 (=> res!2937847 e!4342062)))

(assert (=> b!7242106 (= res!2937847 (not (= (Context!15017 lt!2580411) ct2!328)))))

(declare-fun lt!2580414 () Unit!163722)

(assert (=> b!7242106 (= lt!2580414 (lemmaConcatPreservesForall!1377 (exprs!8008 ct1!232) (exprs!8008 ct2!328) lambda!442169))))

(declare-fun isEmpty!40437 (List!70306) Bool)

(assert (=> b!7242106 (isEmpty!40437 s1!1971)))

(declare-fun lt!2580415 () Unit!163722)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!51 ((Set Context!15016) List!70306) Unit!163722)

(assert (=> b!7242106 (= lt!2580415 (lemmaZipperOfEmptyContextMatchesEmptyString!51 lt!2580412 s1!1971))))

(declare-fun b!7242107 () Bool)

(declare-fun res!2937848 () Bool)

(assert (=> b!7242107 (=> (not res!2937848) (not e!4342061))))

(assert (=> b!7242107 (= res!2937848 (matchZipper!3478 (set.insert ct2!328 (as set.empty (Set Context!15016))) s2!1849))))

(declare-fun b!7242108 () Bool)

(declare-fun tp!2035523 () Bool)

(assert (=> b!7242108 (= e!4342059 (and tp_is_empty!46601 tp!2035523))))

(declare-fun b!7242109 () Bool)

(declare-fun tp!2035522 () Bool)

(assert (=> b!7242109 (= e!4342060 tp!2035522)))

(assert (= (and start!703808 res!2937850) b!7242107))

(assert (= (and b!7242107 res!2937848) b!7242105))

(assert (= (and b!7242105 res!2937849) b!7242106))

(assert (= (and b!7242106 (not res!2937847)) b!7242104))

(assert (= start!703808 b!7242102))

(assert (= (and start!703808 (is-Cons!70182 s1!1971)) b!7242103))

(assert (= (and start!703808 (is-Cons!70182 s2!1849)) b!7242108))

(assert (= start!703808 b!7242109))

(declare-fun m!7916836 () Bool)

(assert (=> b!7242104 m!7916836))

(declare-fun m!7916838 () Bool)

(assert (=> b!7242105 m!7916838))

(declare-fun m!7916840 () Bool)

(assert (=> b!7242105 m!7916840))

(declare-fun m!7916842 () Bool)

(assert (=> b!7242107 m!7916842))

(assert (=> b!7242107 m!7916842))

(declare-fun m!7916844 () Bool)

(assert (=> b!7242107 m!7916844))

(declare-fun m!7916846 () Bool)

(assert (=> start!703808 m!7916846))

(declare-fun m!7916848 () Bool)

(assert (=> start!703808 m!7916848))

(declare-fun m!7916850 () Bool)

(assert (=> start!703808 m!7916850))

(declare-fun m!7916852 () Bool)

(assert (=> start!703808 m!7916852))

(assert (=> b!7242106 m!7916840))

(declare-fun m!7916854 () Bool)

(assert (=> b!7242106 m!7916854))

(declare-fun m!7916856 () Bool)

(assert (=> b!7242106 m!7916856))

(push 1)

(assert (not b!7242102))

(assert (not b!7242105))

(assert (not b!7242108))

(assert (not b!7242109))

(assert tp_is_empty!46601)

(assert (not b!7242104))

(assert (not b!7242106))

(assert (not b!7242103))

(assert (not start!703808))

(assert (not b!7242107))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2250113 () Bool)

(declare-fun c!1344954 () Bool)

(assert (=> d!2250113 (= c!1344954 (isEmpty!40437 s1!1971))))

(declare-fun e!4342088 () Bool)

(assert (=> d!2250113 (= (matchZipper!3478 lt!2580412 s1!1971) e!4342088)))

(declare-fun b!7242138 () Bool)

(declare-fun nullableZipper!2860 ((Set Context!15016)) Bool)

(assert (=> b!7242138 (= e!4342088 (nullableZipper!2860 lt!2580412))))

(declare-fun b!7242139 () Bool)

(declare-fun derivationStepZipper!3356 ((Set Context!15016) C!37410) (Set Context!15016))

(declare-fun head!14847 (List!70306) C!37410)

(declare-fun tail!14230 (List!70306) List!70306)

(assert (=> b!7242139 (= e!4342088 (matchZipper!3478 (derivationStepZipper!3356 lt!2580412 (head!14847 s1!1971)) (tail!14230 s1!1971)))))

(assert (= (and d!2250113 c!1344954) b!7242138))

(assert (= (and d!2250113 (not c!1344954)) b!7242139))

(assert (=> d!2250113 m!7916854))

(declare-fun m!7916880 () Bool)

(assert (=> b!7242138 m!7916880))

(declare-fun m!7916882 () Bool)

(assert (=> b!7242139 m!7916882))

(assert (=> b!7242139 m!7916882))

(declare-fun m!7916884 () Bool)

(assert (=> b!7242139 m!7916884))

(declare-fun m!7916886 () Bool)

(assert (=> b!7242139 m!7916886))

(assert (=> b!7242139 m!7916884))

(assert (=> b!7242139 m!7916886))

(declare-fun m!7916888 () Bool)

(assert (=> b!7242139 m!7916888))

(assert (=> start!703808 d!2250113))

(declare-fun bs!1904358 () Bool)

(declare-fun d!2250115 () Bool)

(assert (= bs!1904358 (and d!2250115 b!7242105)))

(declare-fun lambda!442177 () Int)

(assert (=> bs!1904358 (= lambda!442177 lambda!442169)))

(declare-fun forall!17407 (List!70305 Int) Bool)

(assert (=> d!2250115 (= (inv!89431 ct1!232) (forall!17407 (exprs!8008 ct1!232) lambda!442177))))

(declare-fun bs!1904359 () Bool)

(assert (= bs!1904359 d!2250115))

(declare-fun m!7916890 () Bool)

(assert (=> bs!1904359 m!7916890))

(assert (=> start!703808 d!2250115))

(declare-fun bs!1904360 () Bool)

(declare-fun d!2250117 () Bool)

(assert (= bs!1904360 (and d!2250117 b!7242105)))

(declare-fun lambda!442178 () Int)

(assert (=> bs!1904360 (= lambda!442178 lambda!442169)))

(declare-fun bs!1904361 () Bool)

(assert (= bs!1904361 (and d!2250117 d!2250115)))

(assert (=> bs!1904361 (= lambda!442178 lambda!442177)))

(assert (=> d!2250117 (= (inv!89431 ct2!328) (forall!17407 (exprs!8008 ct2!328) lambda!442178))))

(declare-fun bs!1904362 () Bool)

(assert (= bs!1904362 d!2250117))

(declare-fun m!7916892 () Bool)

(assert (=> bs!1904362 m!7916892))

(assert (=> start!703808 d!2250117))

(declare-fun d!2250119 () Bool)

(declare-fun c!1344955 () Bool)

(assert (=> d!2250119 (= c!1344955 (isEmpty!40437 s2!1849))))

(declare-fun e!4342089 () Bool)

(assert (=> d!2250119 (= (matchZipper!3478 (set.insert ct2!328 (as set.empty (Set Context!15016))) s2!1849) e!4342089)))

(declare-fun b!7242140 () Bool)

(assert (=> b!7242140 (= e!4342089 (nullableZipper!2860 (set.insert ct2!328 (as set.empty (Set Context!15016)))))))

(declare-fun b!7242141 () Bool)

(assert (=> b!7242141 (= e!4342089 (matchZipper!3478 (derivationStepZipper!3356 (set.insert ct2!328 (as set.empty (Set Context!15016))) (head!14847 s2!1849)) (tail!14230 s2!1849)))))

(assert (= (and d!2250119 c!1344955) b!7242140))

(assert (= (and d!2250119 (not c!1344955)) b!7242141))

(declare-fun m!7916894 () Bool)

(assert (=> d!2250119 m!7916894))

(assert (=> b!7242140 m!7916842))

(declare-fun m!7916896 () Bool)

(assert (=> b!7242140 m!7916896))

(declare-fun m!7916898 () Bool)

(assert (=> b!7242141 m!7916898))

(assert (=> b!7242141 m!7916842))

(assert (=> b!7242141 m!7916898))

(declare-fun m!7916900 () Bool)

(assert (=> b!7242141 m!7916900))

(declare-fun m!7916902 () Bool)

(assert (=> b!7242141 m!7916902))

(assert (=> b!7242141 m!7916900))

(assert (=> b!7242141 m!7916902))

(declare-fun m!7916904 () Bool)

(assert (=> b!7242141 m!7916904))

(assert (=> b!7242107 d!2250119))

(declare-fun d!2250121 () Bool)

(assert (=> d!2250121 (forall!17407 (++!16425 (exprs!8008 ct1!232) (exprs!8008 ct2!328)) lambda!442169)))

(declare-fun lt!2580433 () Unit!163722)

(declare-fun choose!55801 (List!70305 List!70305 Int) Unit!163722)

(assert (=> d!2250121 (= lt!2580433 (choose!55801 (exprs!8008 ct1!232) (exprs!8008 ct2!328) lambda!442169))))

(assert (=> d!2250121 (forall!17407 (exprs!8008 ct1!232) lambda!442169)))

(assert (=> d!2250121 (= (lemmaConcatPreservesForall!1377 (exprs!8008 ct1!232) (exprs!8008 ct2!328) lambda!442169) lt!2580433)))

(declare-fun bs!1904363 () Bool)

(assert (= bs!1904363 d!2250121))

(assert (=> bs!1904363 m!7916838))

(assert (=> bs!1904363 m!7916838))

(declare-fun m!7916906 () Bool)

(assert (=> bs!1904363 m!7916906))

(declare-fun m!7916908 () Bool)

(assert (=> bs!1904363 m!7916908))

(declare-fun m!7916910 () Bool)

(assert (=> bs!1904363 m!7916910))

(assert (=> b!7242106 d!2250121))

(declare-fun d!2250123 () Bool)

(assert (=> d!2250123 (= (isEmpty!40437 s1!1971) (is-Nil!70182 s1!1971))))

(assert (=> b!7242106 d!2250123))

(declare-fun d!2250125 () Bool)

(assert (=> d!2250125 (= (matchZipper!3478 lt!2580412 s1!1971) (isEmpty!40437 s1!1971))))

(declare-fun lt!2580436 () Unit!163722)

(declare-fun choose!55802 ((Set Context!15016) List!70306) Unit!163722)

(assert (=> d!2250125 (= lt!2580436 (choose!55802 lt!2580412 s1!1971))))

(assert (=> d!2250125 (= lt!2580412 (set.singleton (Context!15017 Nil!70181)))))

(assert (=> d!2250125 (= (lemmaZipperOfEmptyContextMatchesEmptyString!51 lt!2580412 s1!1971) lt!2580436)))

(declare-fun bs!1904364 () Bool)

(assert (= bs!1904364 d!2250125))

(assert (=> bs!1904364 m!7916846))

(assert (=> bs!1904364 m!7916854))

(declare-fun m!7916912 () Bool)

(assert (=> bs!1904364 m!7916912))

(assert (=> b!7242106 d!2250125))

(declare-fun d!2250129 () Bool)

(declare-fun e!4342096 () Bool)

(assert (=> d!2250129 e!4342096))

(declare-fun res!2937867 () Bool)

(assert (=> d!2250129 (=> (not res!2937867) (not e!4342096))))

(declare-fun lt!2580439 () List!70305)

(declare-fun content!14499 (List!70305) (Set Regex!18568))

(assert (=> d!2250129 (= res!2937867 (= (content!14499 lt!2580439) (set.union (content!14499 (exprs!8008 ct1!232)) (content!14499 (exprs!8008 ct2!328)))))))

(declare-fun e!4342097 () List!70305)

(assert (=> d!2250129 (= lt!2580439 e!4342097)))

(declare-fun c!1344960 () Bool)

(assert (=> d!2250129 (= c!1344960 (is-Nil!70181 (exprs!8008 ct1!232)))))

(assert (=> d!2250129 (= (++!16425 (exprs!8008 ct1!232) (exprs!8008 ct2!328)) lt!2580439)))

(declare-fun b!7242155 () Bool)

(assert (=> b!7242155 (= e!4342097 (Cons!70181 (h!76629 (exprs!8008 ct1!232)) (++!16425 (t!384356 (exprs!8008 ct1!232)) (exprs!8008 ct2!328))))))

(declare-fun b!7242156 () Bool)

(declare-fun res!2937868 () Bool)

(assert (=> b!7242156 (=> (not res!2937868) (not e!4342096))))

(declare-fun size!41635 (List!70305) Int)

(assert (=> b!7242156 (= res!2937868 (= (size!41635 lt!2580439) (+ (size!41635 (exprs!8008 ct1!232)) (size!41635 (exprs!8008 ct2!328)))))))

(declare-fun b!7242157 () Bool)

(assert (=> b!7242157 (= e!4342096 (or (not (= (exprs!8008 ct2!328) Nil!70181)) (= lt!2580439 (exprs!8008 ct1!232))))))

(declare-fun b!7242154 () Bool)

(assert (=> b!7242154 (= e!4342097 (exprs!8008 ct2!328))))

(assert (= (and d!2250129 c!1344960) b!7242154))

(assert (= (and d!2250129 (not c!1344960)) b!7242155))

(assert (= (and d!2250129 res!2937867) b!7242156))

(assert (= (and b!7242156 res!2937868) b!7242157))

(declare-fun m!7916914 () Bool)

(assert (=> d!2250129 m!7916914))

(declare-fun m!7916916 () Bool)

(assert (=> d!2250129 m!7916916))

(declare-fun m!7916918 () Bool)

(assert (=> d!2250129 m!7916918))

(declare-fun m!7916920 () Bool)

(assert (=> b!7242155 m!7916920))

(declare-fun m!7916922 () Bool)

(assert (=> b!7242156 m!7916922))

(declare-fun m!7916924 () Bool)

(assert (=> b!7242156 m!7916924))

(declare-fun m!7916926 () Bool)

(assert (=> b!7242156 m!7916926))

(assert (=> b!7242105 d!2250129))

(assert (=> b!7242105 d!2250121))

(declare-fun d!2250131 () Bool)

(declare-fun e!4342104 () Bool)

(assert (=> d!2250131 e!4342104))

(declare-fun res!2937874 () Bool)

(assert (=> d!2250131 (=> (not res!2937874) (not e!4342104))))

(declare-fun lt!2580442 () List!70306)

(declare-fun content!14500 (List!70306) (Set C!37410))

(assert (=> d!2250131 (= res!2937874 (= (content!14500 lt!2580442) (set.union (content!14500 s1!1971) (content!14500 s2!1849))))))

(declare-fun e!4342103 () List!70306)

(assert (=> d!2250131 (= lt!2580442 e!4342103)))

(declare-fun c!1344964 () Bool)

(assert (=> d!2250131 (= c!1344964 (is-Nil!70182 s1!1971))))

(assert (=> d!2250131 (= (++!16424 s1!1971 s2!1849) lt!2580442)))

(declare-fun b!7242168 () Bool)

(assert (=> b!7242168 (= e!4342103 s2!1849)))

(declare-fun b!7242169 () Bool)

(assert (=> b!7242169 (= e!4342103 (Cons!70182 (h!76630 s1!1971) (++!16424 (t!384357 s1!1971) s2!1849)))))

(declare-fun b!7242171 () Bool)

(assert (=> b!7242171 (= e!4342104 (or (not (= s2!1849 Nil!70182)) (= lt!2580442 s1!1971)))))

(declare-fun b!7242170 () Bool)

(declare-fun res!2937873 () Bool)

(assert (=> b!7242170 (=> (not res!2937873) (not e!4342104))))

(declare-fun size!41636 (List!70306) Int)

(assert (=> b!7242170 (= res!2937873 (= (size!41636 lt!2580442) (+ (size!41636 s1!1971) (size!41636 s2!1849))))))

(assert (= (and d!2250131 c!1344964) b!7242168))

(assert (= (and d!2250131 (not c!1344964)) b!7242169))

(assert (= (and d!2250131 res!2937874) b!7242170))

(assert (= (and b!7242170 res!2937873) b!7242171))

(declare-fun m!7916938 () Bool)

(assert (=> d!2250131 m!7916938))

(declare-fun m!7916940 () Bool)

(assert (=> d!2250131 m!7916940))

(declare-fun m!7916942 () Bool)

(assert (=> d!2250131 m!7916942))

(declare-fun m!7916944 () Bool)

(assert (=> b!7242169 m!7916944))

(declare-fun m!7916946 () Bool)

(assert (=> b!7242170 m!7916946))

(declare-fun m!7916948 () Bool)

(assert (=> b!7242170 m!7916948))

(declare-fun m!7916950 () Bool)

(assert (=> b!7242170 m!7916950))

(assert (=> b!7242104 d!2250131))

(declare-fun b!7242176 () Bool)

(declare-fun e!4342107 () Bool)

(declare-fun tp!2035539 () Bool)

(assert (=> b!7242176 (= e!4342107 (and tp_is_empty!46601 tp!2035539))))

(assert (=> b!7242108 (= tp!2035523 e!4342107)))

(assert (= (and b!7242108 (is-Cons!70182 (t!384357 s2!1849))) b!7242176))

(declare-fun b!7242181 () Bool)

(declare-fun e!4342110 () Bool)

(declare-fun tp!2035544 () Bool)

(declare-fun tp!2035545 () Bool)

(assert (=> b!7242181 (= e!4342110 (and tp!2035544 tp!2035545))))

(assert (=> b!7242102 (= tp!2035524 e!4342110)))

(assert (= (and b!7242102 (is-Cons!70181 (exprs!8008 ct1!232))) b!7242181))

(declare-fun b!7242182 () Bool)

(declare-fun e!4342111 () Bool)

(declare-fun tp!2035546 () Bool)

(declare-fun tp!2035547 () Bool)

(assert (=> b!7242182 (= e!4342111 (and tp!2035546 tp!2035547))))

(assert (=> b!7242109 (= tp!2035522 e!4342111)))

(assert (= (and b!7242109 (is-Cons!70181 (exprs!8008 ct2!328))) b!7242182))

(declare-fun b!7242183 () Bool)

(declare-fun e!4342112 () Bool)

(declare-fun tp!2035548 () Bool)

(assert (=> b!7242183 (= e!4342112 (and tp_is_empty!46601 tp!2035548))))

(assert (=> b!7242103 (= tp!2035521 e!4342112)))

(assert (= (and b!7242103 (is-Cons!70182 (t!384357 s1!1971))) b!7242183))

(push 1)

(assert (not d!2250117))

(assert (not b!7242140))

(assert (not d!2250125))

(assert (not d!2250121))

(assert (not b!7242141))

(assert (not d!2250115))

(assert tp_is_empty!46601)

(assert (not d!2250129))

(assert (not b!7242182))

(assert (not b!7242139))

(assert (not b!7242138))

(assert (not b!7242176))

(assert (not d!2250119))

(assert (not b!7242181))

(assert (not d!2250113))

(assert (not b!7242170))

(assert (not d!2250131))

(assert (not b!7242155))

(assert (not b!7242169))

(assert (not b!7242183))

(assert (not b!7242156))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

