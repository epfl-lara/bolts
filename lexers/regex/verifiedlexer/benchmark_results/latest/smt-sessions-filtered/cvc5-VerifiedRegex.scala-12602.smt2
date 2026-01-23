; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!698092 () Bool)

(assert start!698092)

(declare-fun b!7159070 () Bool)

(assert (=> b!7159070 true))

(declare-datatypes ((Unit!163331 0))(
  ( (Unit!163332) )
))
(declare-fun e!4300913 () Unit!163331)

(declare-fun Unit!163333 () Unit!163331)

(assert (=> b!7159070 (= e!4300913 Unit!163333)))

(declare-datatypes ((C!36898 0))(
  ( (C!36899 (val!28397 Int)) )
))
(declare-datatypes ((Regex!18312 0))(
  ( (ElementMatch!18312 (c!1334131 C!36898)) (Concat!27157 (regOne!37136 Regex!18312) (regTwo!37136 Regex!18312)) (EmptyExpr!18312) (Star!18312 (reg!18641 Regex!18312)) (EmptyLang!18312) (Union!18312 (regOne!37137 Regex!18312) (regTwo!37137 Regex!18312)) )
))
(declare-datatypes ((List!69676 0))(
  ( (Nil!69552) (Cons!69552 (h!76000 Regex!18312) (t!383693 List!69676)) )
))
(declare-datatypes ((Context!14528 0))(
  ( (Context!14529 (exprs!7764 List!69676)) )
))
(declare-fun empty!2915 () Context!14528)

(declare-fun e!4300912 () Bool)

(declare-fun inv!88803 (Context!14528) Bool)

(assert (=> b!7159070 (and (inv!88803 empty!2915) e!4300912)))

(assert (=> b!7159070 true))

(declare-fun z!3530 () (Set Context!14528))

(declare-fun lambda!436748 () Int)

(declare-fun lt!2569803 () (Set Context!14528))

(declare-fun res!2919016 () Bool)

(declare-fun flatMapPost!49 ((Set Context!14528) Int Context!14528) Context!14528)

(declare-datatypes ((List!69677 0))(
  ( (Nil!69553) (Cons!69553 (h!76001 Context!14528) (t!383694 List!69677)) )
))
(declare-fun head!14598 (List!69677) Context!14528)

(declare-fun toList!11255 ((Set Context!14528)) List!69677)

(assert (=> b!7159070 (= res!2919016 (= (flatMapPost!49 z!3530 lambda!436748 (head!14598 (toList!11255 lt!2569803))) empty!2915))))

(declare-fun e!4300916 () Bool)

(assert (=> b!7159070 (=> (not res!2919016) (not e!4300916))))

(assert (=> b!7159070 e!4300916))

(declare-fun b!7159071 () Bool)

(declare-fun tp!1979814 () Bool)

(assert (=> b!7159071 (= e!4300912 tp!1979814)))

(declare-fun setElem!52832 () Context!14528)

(declare-fun e!4300910 () Bool)

(declare-fun setRes!52832 () Bool)

(declare-fun setNonEmpty!52832 () Bool)

(declare-fun tp!1979817 () Bool)

(assert (=> setNonEmpty!52832 (= setRes!52832 (and tp!1979817 (inv!88803 setElem!52832) e!4300910))))

(declare-fun setRest!52832 () (Set Context!14528))

(assert (=> setNonEmpty!52832 (= z!3530 (set.union (set.insert setElem!52832 (as set.empty (Set Context!14528))) setRest!52832))))

(declare-fun b!7159072 () Bool)

(assert (=> b!7159072 (= e!4300916 false)))

(declare-fun b!7159073 () Bool)

(declare-fun e!4300911 () Bool)

(declare-fun tp_is_empty!46197 () Bool)

(declare-fun tp!1979816 () Bool)

(assert (=> b!7159073 (= e!4300911 (and tp_is_empty!46197 tp!1979816))))

(declare-fun b!7159074 () Bool)

(declare-fun res!2919019 () Bool)

(declare-fun e!4300909 () Bool)

(assert (=> b!7159074 (=> (not res!2919019) (not e!4300909))))

(declare-fun focus!387 (Regex!18312) (Set Context!14528))

(assert (=> b!7159074 (= res!2919019 (not (= z!3530 (focus!387 EmptyExpr!18312))))))

(declare-fun b!7159075 () Bool)

(declare-fun tp!1979815 () Bool)

(assert (=> b!7159075 (= e!4300910 tp!1979815)))

(declare-fun res!2919015 () Bool)

(assert (=> start!698092 (=> (not res!2919015) (not e!4300909))))

(declare-fun unfocusZipper!2572 (List!69677) Regex!18312)

(assert (=> start!698092 (= res!2919015 (= (unfocusZipper!2572 (toList!11255 z!3530)) EmptyExpr!18312))))

(assert (=> start!698092 e!4300909))

(declare-fun condSetEmpty!52832 () Bool)

(assert (=> start!698092 (= condSetEmpty!52832 (= z!3530 (as set.empty (Set Context!14528))))))

(assert (=> start!698092 setRes!52832))

(assert (=> start!698092 e!4300911))

(declare-fun b!7159076 () Bool)

(declare-fun e!4300914 () Bool)

(declare-fun e!4300915 () Bool)

(assert (=> b!7159076 (= e!4300914 e!4300915)))

(declare-fun res!2919018 () Bool)

(assert (=> b!7159076 (=> (not res!2919018) (not e!4300915))))

(declare-fun lt!2569806 () Context!14528)

(declare-fun lt!2569805 () C!36898)

(declare-fun derivationStepZipperUp!2300 (Context!14528 C!36898) (Set Context!14528))

(assert (=> b!7159076 (= res!2919018 (= (derivationStepZipperUp!2300 lt!2569806 lt!2569805) (as set.empty (Set Context!14528))))))

(declare-fun derivationStepZipper!3195 ((Set Context!14528) C!36898) (Set Context!14528))

(assert (=> b!7159076 (= lt!2569803 (derivationStepZipper!3195 z!3530 lt!2569805))))

(declare-datatypes ((List!69678 0))(
  ( (Nil!69554) (Cons!69554 (h!76002 C!36898) (t!383695 List!69678)) )
))
(declare-fun s!7967 () List!69678)

(declare-fun head!14599 (List!69678) C!36898)

(assert (=> b!7159076 (= lt!2569805 (head!14599 s!7967))))

(declare-fun b!7159077 () Bool)

(declare-fun Unit!163334 () Unit!163331)

(assert (=> b!7159077 (= e!4300913 Unit!163334)))

(declare-fun setIsEmpty!52832 () Bool)

(assert (=> setIsEmpty!52832 setRes!52832))

(declare-fun b!7159078 () Bool)

(assert (=> b!7159078 (= e!4300915 (= s!7967 Nil!69554))))

(declare-fun lt!2569804 () Unit!163331)

(assert (=> b!7159078 (= lt!2569804 e!4300913)))

(declare-fun c!1334130 () Bool)

(assert (=> b!7159078 (= c!1334130 (not (= lt!2569803 (as set.empty (Set Context!14528)))))))

(declare-fun b!7159079 () Bool)

(assert (=> b!7159079 (= e!4300909 e!4300914)))

(declare-fun res!2919017 () Bool)

(assert (=> b!7159079 (=> (not res!2919017) (not e!4300914))))

(assert (=> b!7159079 (= res!2919017 (= z!3530 (set.insert lt!2569806 (as set.empty (Set Context!14528)))))))

(assert (=> b!7159079 (= lt!2569806 (Context!14529 Nil!69552))))

(declare-fun b!7159080 () Bool)

(declare-fun res!2919014 () Bool)

(assert (=> b!7159080 (=> (not res!2919014) (not e!4300914))))

(declare-fun isEmpty!40166 (List!69678) Bool)

(assert (=> b!7159080 (= res!2919014 (not (isEmpty!40166 s!7967)))))

(assert (= (and start!698092 res!2919015) b!7159074))

(assert (= (and b!7159074 res!2919019) b!7159079))

(assert (= (and b!7159079 res!2919017) b!7159080))

(assert (= (and b!7159080 res!2919014) b!7159076))

(assert (= (and b!7159076 res!2919018) b!7159078))

(assert (= (and b!7159078 c!1334130) b!7159070))

(assert (= (and b!7159078 (not c!1334130)) b!7159077))

(assert (= b!7159070 b!7159071))

(assert (= (and b!7159070 res!2919016) b!7159072))

(assert (= (and start!698092 condSetEmpty!52832) setIsEmpty!52832))

(assert (= (and start!698092 (not condSetEmpty!52832)) setNonEmpty!52832))

(assert (= setNonEmpty!52832 b!7159075))

(assert (= (and start!698092 (is-Cons!69554 s!7967)) b!7159073))

(declare-fun m!7865210 () Bool)

(assert (=> b!7159070 m!7865210))

(declare-fun m!7865212 () Bool)

(assert (=> b!7159070 m!7865212))

(assert (=> b!7159070 m!7865212))

(declare-fun m!7865214 () Bool)

(assert (=> b!7159070 m!7865214))

(assert (=> b!7159070 m!7865214))

(declare-fun m!7865216 () Bool)

(assert (=> b!7159070 m!7865216))

(declare-fun m!7865218 () Bool)

(assert (=> start!698092 m!7865218))

(assert (=> start!698092 m!7865218))

(declare-fun m!7865220 () Bool)

(assert (=> start!698092 m!7865220))

(declare-fun m!7865222 () Bool)

(assert (=> setNonEmpty!52832 m!7865222))

(declare-fun m!7865224 () Bool)

(assert (=> b!7159080 m!7865224))

(declare-fun m!7865226 () Bool)

(assert (=> b!7159074 m!7865226))

(declare-fun m!7865228 () Bool)

(assert (=> b!7159076 m!7865228))

(declare-fun m!7865230 () Bool)

(assert (=> b!7159076 m!7865230))

(declare-fun m!7865232 () Bool)

(assert (=> b!7159076 m!7865232))

(declare-fun m!7865234 () Bool)

(assert (=> b!7159079 m!7865234))

(push 1)

(assert (not b!7159071))

(assert (not b!7159070))

(assert (not b!7159073))

(assert (not b!7159080))

(assert (not b!7159074))

(assert (not start!698092))

(assert (not b!7159076))

(assert (not setNonEmpty!52832))

(assert tp_is_empty!46197)

(assert (not b!7159075))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2230377 () Bool)

(declare-fun lt!2569821 () Regex!18312)

(declare-fun validRegex!9440 (Regex!18312) Bool)

(assert (=> d!2230377 (validRegex!9440 lt!2569821)))

(declare-fun generalisedUnion!2743 (List!69676) Regex!18312)

(declare-fun unfocusZipperList!2299 (List!69677) List!69676)

(assert (=> d!2230377 (= lt!2569821 (generalisedUnion!2743 (unfocusZipperList!2299 (toList!11255 z!3530))))))

(assert (=> d!2230377 (= (unfocusZipper!2572 (toList!11255 z!3530)) lt!2569821)))

(declare-fun bs!1890241 () Bool)

(assert (= bs!1890241 d!2230377))

(declare-fun m!7865264 () Bool)

(assert (=> bs!1890241 m!7865264))

(assert (=> bs!1890241 m!7865218))

(declare-fun m!7865266 () Bool)

(assert (=> bs!1890241 m!7865266))

(assert (=> bs!1890241 m!7865266))

(declare-fun m!7865268 () Bool)

(assert (=> bs!1890241 m!7865268))

(assert (=> start!698092 d!2230377))

(declare-fun d!2230379 () Bool)

(declare-fun e!4300946 () Bool)

(assert (=> d!2230379 e!4300946))

(declare-fun res!2919044 () Bool)

(assert (=> d!2230379 (=> (not res!2919044) (not e!4300946))))

(declare-fun lt!2569824 () List!69677)

(declare-fun noDuplicate!2859 (List!69677) Bool)

(assert (=> d!2230379 (= res!2919044 (noDuplicate!2859 lt!2569824))))

(declare-fun choose!55328 ((Set Context!14528)) List!69677)

(assert (=> d!2230379 (= lt!2569824 (choose!55328 z!3530))))

(assert (=> d!2230379 (= (toList!11255 z!3530) lt!2569824)))

(declare-fun b!7159123 () Bool)

(declare-fun content!14288 (List!69677) (Set Context!14528))

(assert (=> b!7159123 (= e!4300946 (= (content!14288 lt!2569824) z!3530))))

(assert (= (and d!2230379 res!2919044) b!7159123))

(declare-fun m!7865278 () Bool)

(assert (=> d!2230379 m!7865278))

(declare-fun m!7865280 () Bool)

(assert (=> d!2230379 m!7865280))

(declare-fun m!7865282 () Bool)

(assert (=> b!7159123 m!7865282))

(assert (=> start!698092 d!2230379))

(declare-fun d!2230383 () Bool)

(assert (=> d!2230383 (= (isEmpty!40166 s!7967) (is-Nil!69554 s!7967))))

(assert (=> b!7159080 d!2230383))

(declare-fun d!2230385 () Bool)

(declare-fun e!4300951 () Bool)

(assert (=> d!2230385 e!4300951))

(declare-fun res!2919050 () Bool)

(assert (=> d!2230385 (=> (not res!2919050) (not e!4300951))))

(assert (=> d!2230385 (= res!2919050 (validRegex!9440 EmptyExpr!18312))))

(assert (=> d!2230385 (= (focus!387 EmptyExpr!18312) (set.insert (Context!14529 (Cons!69552 EmptyExpr!18312 Nil!69552)) (as set.empty (Set Context!14528))))))

(declare-fun b!7159128 () Bool)

(assert (=> b!7159128 (= e!4300951 (= (unfocusZipper!2572 (toList!11255 (set.insert (Context!14529 (Cons!69552 EmptyExpr!18312 Nil!69552)) (as set.empty (Set Context!14528))))) EmptyExpr!18312))))

(assert (= (and d!2230385 res!2919050) b!7159128))

(declare-fun m!7865290 () Bool)

(assert (=> d!2230385 m!7865290))

(declare-fun m!7865292 () Bool)

(assert (=> d!2230385 m!7865292))

(assert (=> b!7159128 m!7865292))

(assert (=> b!7159128 m!7865292))

(declare-fun m!7865294 () Bool)

(assert (=> b!7159128 m!7865294))

(assert (=> b!7159128 m!7865294))

(declare-fun m!7865296 () Bool)

(assert (=> b!7159128 m!7865296))

(assert (=> b!7159074 d!2230385))

(declare-fun d!2230389 () Bool)

(declare-fun lambda!436757 () Int)

(declare-fun forall!17143 (List!69676 Int) Bool)

(assert (=> d!2230389 (= (inv!88803 empty!2915) (forall!17143 (exprs!7764 empty!2915) lambda!436757))))

(declare-fun bs!1890243 () Bool)

(assert (= bs!1890243 d!2230389))

(declare-fun m!7865304 () Bool)

(assert (=> bs!1890243 m!7865304))

(assert (=> b!7159070 d!2230389))

(declare-fun d!2230393 () Bool)

(assert (=> d!2230393 true))

(assert (=> d!2230393 true))

(declare-fun order!28649 () Int)

(declare-fun lambda!436760 () Int)

(declare-fun order!28647 () Int)

(declare-fun dynLambda!28321 (Int Int) Int)

(declare-fun dynLambda!28322 (Int Int) Int)

(assert (=> d!2230393 (< (dynLambda!28321 order!28647 lambda!436748) (dynLambda!28322 order!28649 lambda!436760))))

(declare-fun flatMap!2648 ((Set Context!14528) Int) (Set Context!14528))

(declare-fun exists!4055 ((Set Context!14528) Int) Bool)

(assert (=> d!2230393 (= (set.member (head!14598 (toList!11255 lt!2569803)) (flatMap!2648 z!3530 lambda!436748)) (exists!4055 z!3530 lambda!436760))))

(declare-fun lt!2569833 () Context!14528)

(declare-fun choose!55329 ((Set Context!14528) Int Context!14528) Context!14528)

(assert (=> d!2230393 (= lt!2569833 (choose!55329 z!3530 lambda!436748 (head!14598 (toList!11255 lt!2569803))))))

(assert (=> d!2230393 (= (flatMapPost!49 z!3530 lambda!436748 (head!14598 (toList!11255 lt!2569803))) lt!2569833)))

(declare-fun bs!1890244 () Bool)

(assert (= bs!1890244 d!2230393))

(declare-fun m!7865306 () Bool)

(assert (=> bs!1890244 m!7865306))

(assert (=> bs!1890244 m!7865214))

(declare-fun m!7865308 () Bool)

(assert (=> bs!1890244 m!7865308))

(declare-fun m!7865310 () Bool)

(assert (=> bs!1890244 m!7865310))

(assert (=> bs!1890244 m!7865214))

(declare-fun m!7865312 () Bool)

(assert (=> bs!1890244 m!7865312))

(assert (=> b!7159070 d!2230393))

(declare-fun d!2230395 () Bool)

(assert (=> d!2230395 (= (head!14598 (toList!11255 lt!2569803)) (h!76001 (toList!11255 lt!2569803)))))

(assert (=> b!7159070 d!2230395))

(declare-fun d!2230397 () Bool)

(declare-fun e!4300959 () Bool)

(assert (=> d!2230397 e!4300959))

(declare-fun res!2919054 () Bool)

(assert (=> d!2230397 (=> (not res!2919054) (not e!4300959))))

(declare-fun lt!2569834 () List!69677)

(assert (=> d!2230397 (= res!2919054 (noDuplicate!2859 lt!2569834))))

(assert (=> d!2230397 (= lt!2569834 (choose!55328 lt!2569803))))

(assert (=> d!2230397 (= (toList!11255 lt!2569803) lt!2569834)))

(declare-fun b!7159145 () Bool)

(assert (=> b!7159145 (= e!4300959 (= (content!14288 lt!2569834) lt!2569803))))

(assert (= (and d!2230397 res!2919054) b!7159145))

(declare-fun m!7865314 () Bool)

(assert (=> d!2230397 m!7865314))

(declare-fun m!7865316 () Bool)

(assert (=> d!2230397 m!7865316))

(declare-fun m!7865318 () Bool)

(assert (=> b!7159145 m!7865318))

(assert (=> b!7159070 d!2230397))

(declare-fun bm!651875 () Bool)

(declare-fun call!651880 () (Set Context!14528))

(declare-fun derivationStepZipperDown!2493 (Regex!18312 Context!14528 C!36898) (Set Context!14528))

(assert (=> bm!651875 (= call!651880 (derivationStepZipperDown!2493 (h!76000 (exprs!7764 lt!2569806)) (Context!14529 (t!383693 (exprs!7764 lt!2569806))) lt!2569805))))

(declare-fun d!2230399 () Bool)

(declare-fun c!1334149 () Bool)

(declare-fun e!4300969 () Bool)

(assert (=> d!2230399 (= c!1334149 e!4300969)))

(declare-fun res!2919058 () Bool)

(assert (=> d!2230399 (=> (not res!2919058) (not e!4300969))))

(assert (=> d!2230399 (= res!2919058 (is-Cons!69552 (exprs!7764 lt!2569806)))))

(declare-fun e!4300971 () (Set Context!14528))

(assert (=> d!2230399 (= (derivationStepZipperUp!2300 lt!2569806 lt!2569805) e!4300971)))

(declare-fun b!7159161 () Bool)

(declare-fun e!4300970 () (Set Context!14528))

(assert (=> b!7159161 (= e!4300970 (as set.empty (Set Context!14528)))))

(declare-fun b!7159162 () Bool)

(assert (=> b!7159162 (= e!4300971 e!4300970)))

(declare-fun c!1334148 () Bool)

(assert (=> b!7159162 (= c!1334148 (is-Cons!69552 (exprs!7764 lt!2569806)))))

(declare-fun b!7159163 () Bool)

(assert (=> b!7159163 (= e!4300971 (set.union call!651880 (derivationStepZipperUp!2300 (Context!14529 (t!383693 (exprs!7764 lt!2569806))) lt!2569805)))))

(declare-fun b!7159164 () Bool)

(assert (=> b!7159164 (= e!4300970 call!651880)))

(declare-fun b!7159165 () Bool)

(declare-fun nullable!7751 (Regex!18312) Bool)

(assert (=> b!7159165 (= e!4300969 (nullable!7751 (h!76000 (exprs!7764 lt!2569806))))))

(assert (= (and d!2230399 res!2919058) b!7159165))

(assert (= (and d!2230399 c!1334149) b!7159163))

(assert (= (and d!2230399 (not c!1334149)) b!7159162))

(assert (= (and b!7159162 c!1334148) b!7159164))

(assert (= (and b!7159162 (not c!1334148)) b!7159161))

(assert (= (or b!7159163 b!7159164) bm!651875))

(declare-fun m!7865326 () Bool)

(assert (=> bm!651875 m!7865326))

(declare-fun m!7865328 () Bool)

(assert (=> b!7159163 m!7865328))

(declare-fun m!7865330 () Bool)

(assert (=> b!7159165 m!7865330))

(assert (=> b!7159076 d!2230399))

(declare-fun bs!1890247 () Bool)

(declare-fun d!2230403 () Bool)

(assert (= bs!1890247 (and d!2230403 b!7159070)))

(declare-fun lambda!436766 () Int)

(assert (=> bs!1890247 (= lambda!436766 lambda!436748)))

(assert (=> d!2230403 true))

(assert (=> d!2230403 (= (derivationStepZipper!3195 z!3530 lt!2569805) (flatMap!2648 z!3530 lambda!436766))))

(declare-fun bs!1890248 () Bool)

(assert (= bs!1890248 d!2230403))

(declare-fun m!7865334 () Bool)

(assert (=> bs!1890248 m!7865334))

(assert (=> b!7159076 d!2230403))

(declare-fun d!2230409 () Bool)

(assert (=> d!2230409 (= (head!14599 s!7967) (h!76002 s!7967))))

(assert (=> b!7159076 d!2230409))

(declare-fun bs!1890250 () Bool)

(declare-fun d!2230413 () Bool)

(assert (= bs!1890250 (and d!2230413 d!2230389)))

(declare-fun lambda!436768 () Int)

(assert (=> bs!1890250 (= lambda!436768 lambda!436757)))

(assert (=> d!2230413 (= (inv!88803 setElem!52832) (forall!17143 (exprs!7764 setElem!52832) lambda!436768))))

(declare-fun bs!1890251 () Bool)

(assert (= bs!1890251 d!2230413))

(declare-fun m!7865336 () Bool)

(assert (=> bs!1890251 m!7865336))

(assert (=> setNonEmpty!52832 d!2230413))

(declare-fun b!7159170 () Bool)

(declare-fun e!4300974 () Bool)

(declare-fun tp!1979834 () Bool)

(declare-fun tp!1979835 () Bool)

(assert (=> b!7159170 (= e!4300974 (and tp!1979834 tp!1979835))))

(assert (=> b!7159075 (= tp!1979815 e!4300974)))

(assert (= (and b!7159075 (is-Cons!69552 (exprs!7764 setElem!52832))) b!7159170))

(declare-fun b!7159171 () Bool)

(declare-fun e!4300975 () Bool)

(declare-fun tp!1979836 () Bool)

(declare-fun tp!1979837 () Bool)

(assert (=> b!7159171 (= e!4300975 (and tp!1979836 tp!1979837))))

(assert (=> b!7159071 (= tp!1979814 e!4300975)))

(assert (= (and b!7159071 (is-Cons!69552 (exprs!7764 empty!2915))) b!7159171))

(declare-fun b!7159176 () Bool)

(declare-fun e!4300978 () Bool)

(declare-fun tp!1979840 () Bool)

(assert (=> b!7159176 (= e!4300978 (and tp_is_empty!46197 tp!1979840))))

(assert (=> b!7159073 (= tp!1979816 e!4300978)))

(assert (= (and b!7159073 (is-Cons!69554 (t!383695 s!7967))) b!7159176))

(declare-fun condSetEmpty!52838 () Bool)

(assert (=> setNonEmpty!52832 (= condSetEmpty!52838 (= setRest!52832 (as set.empty (Set Context!14528))))))

(declare-fun setRes!52838 () Bool)

(assert (=> setNonEmpty!52832 (= tp!1979817 setRes!52838)))

(declare-fun setIsEmpty!52838 () Bool)

(assert (=> setIsEmpty!52838 setRes!52838))

(declare-fun setElem!52838 () Context!14528)

(declare-fun setNonEmpty!52838 () Bool)

(declare-fun e!4300981 () Bool)

(declare-fun tp!1979846 () Bool)

(assert (=> setNonEmpty!52838 (= setRes!52838 (and tp!1979846 (inv!88803 setElem!52838) e!4300981))))

(declare-fun setRest!52838 () (Set Context!14528))

(assert (=> setNonEmpty!52838 (= setRest!52832 (set.union (set.insert setElem!52838 (as set.empty (Set Context!14528))) setRest!52838))))

(declare-fun b!7159181 () Bool)

(declare-fun tp!1979845 () Bool)

(assert (=> b!7159181 (= e!4300981 tp!1979845)))

(assert (= (and setNonEmpty!52832 condSetEmpty!52838) setIsEmpty!52838))

(assert (= (and setNonEmpty!52832 (not condSetEmpty!52838)) setNonEmpty!52838))

(assert (= setNonEmpty!52838 b!7159181))

(declare-fun m!7865340 () Bool)

(assert (=> setNonEmpty!52838 m!7865340))

(push 1)

(assert (not d!2230379))

(assert (not bm!651875))

(assert (not setNonEmpty!52838))

(assert (not d!2230389))

(assert (not d!2230403))

(assert (not b!7159165))

(assert (not b!7159128))

(assert (not d!2230393))

(assert (not b!7159171))

(assert (not b!7159181))

(assert (not d!2230397))

(assert (not b!7159145))

(assert (not d!2230377))

(assert (not b!7159163))

(assert (not d!2230385))

(assert (not b!7159123))

(assert (not b!7159170))

(assert (not d!2230413))

(assert tp_is_empty!46197)

(assert (not b!7159176))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

