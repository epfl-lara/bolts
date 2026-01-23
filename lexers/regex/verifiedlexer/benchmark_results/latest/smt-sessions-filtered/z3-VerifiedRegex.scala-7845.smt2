; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411428 () Bool)

(assert start!411428)

(declare-fun b!4281852 () Bool)

(declare-fun res!1757437 () Bool)

(declare-fun e!2658178 () Bool)

(assert (=> b!4281852 (=> (not res!1757437) (not e!2658178))))

(declare-fun i!813 () Int)

(declare-datatypes ((B!2889 0))(
  ( (B!2890 (val!15314 Int)) )
))
(declare-datatypes ((List!47523 0))(
  ( (Nil!47399) (Cons!47399 (h!52819 B!2889) (t!354112 List!47523)) )
))
(declare-fun l!2982 () List!47523)

(declare-fun size!34735 (List!47523) Int)

(assert (=> b!4281852 (= res!1757437 (< i!813 (size!34735 l!2982)))))

(declare-fun b!4281854 () Bool)

(declare-fun tail!6884 (List!47523) List!47523)

(declare-fun drop!2177 (List!47523 Int) List!47523)

(assert (=> b!4281854 (= e!2658178 (not (= (tail!6884 (drop!2177 l!2982 i!813)) (drop!2177 l!2982 (+ 1 i!813)))))))

(declare-fun b!4281853 () Bool)

(declare-fun res!1757435 () Bool)

(assert (=> b!4281853 (=> (not res!1757435) (not e!2658178))))

(get-info :version)

(assert (=> b!4281853 (= res!1757435 ((_ is Nil!47399) l!2982))))

(declare-fun b!4281855 () Bool)

(declare-fun e!2658179 () Bool)

(declare-fun tp_is_empty!23037 () Bool)

(declare-fun tp!1309490 () Bool)

(assert (=> b!4281855 (= e!2658179 (and tp_is_empty!23037 tp!1309490))))

(declare-fun res!1757436 () Bool)

(assert (=> start!411428 (=> (not res!1757436) (not e!2658178))))

(assert (=> start!411428 (= res!1757436 (>= i!813 0))))

(assert (=> start!411428 e!2658178))

(assert (=> start!411428 true))

(assert (=> start!411428 e!2658179))

(assert (= (and start!411428 res!1757436) b!4281852))

(assert (= (and b!4281852 res!1757437) b!4281853))

(assert (= (and b!4281853 res!1757435) b!4281854))

(assert (= (and start!411428 ((_ is Cons!47399) l!2982)) b!4281855))

(declare-fun m!4879159 () Bool)

(assert (=> b!4281852 m!4879159))

(declare-fun m!4879161 () Bool)

(assert (=> b!4281854 m!4879161))

(assert (=> b!4281854 m!4879161))

(declare-fun m!4879163 () Bool)

(assert (=> b!4281854 m!4879163))

(declare-fun m!4879165 () Bool)

(assert (=> b!4281854 m!4879165))

(check-sat (not b!4281852) (not b!4281854) (not b!4281855) tp_is_empty!23037)
(check-sat)
(get-model)

(declare-fun d!1264814 () Bool)

(declare-fun lt!1515290 () Int)

(assert (=> d!1264814 (>= lt!1515290 0)))

(declare-fun e!2658182 () Int)

(assert (=> d!1264814 (= lt!1515290 e!2658182)))

(declare-fun c!729793 () Bool)

(assert (=> d!1264814 (= c!729793 ((_ is Nil!47399) l!2982))))

(assert (=> d!1264814 (= (size!34735 l!2982) lt!1515290)))

(declare-fun b!4281860 () Bool)

(assert (=> b!4281860 (= e!2658182 0)))

(declare-fun b!4281861 () Bool)

(assert (=> b!4281861 (= e!2658182 (+ 1 (size!34735 (t!354112 l!2982))))))

(assert (= (and d!1264814 c!729793) b!4281860))

(assert (= (and d!1264814 (not c!729793)) b!4281861))

(declare-fun m!4879167 () Bool)

(assert (=> b!4281861 m!4879167))

(assert (=> b!4281852 d!1264814))

(declare-fun d!1264818 () Bool)

(assert (=> d!1264818 (= (tail!6884 (drop!2177 l!2982 i!813)) (t!354112 (drop!2177 l!2982 i!813)))))

(assert (=> b!4281854 d!1264818))

(declare-fun b!4281904 () Bool)

(declare-fun e!2658208 () Int)

(declare-fun call!294386 () Int)

(assert (=> b!4281904 (= e!2658208 (- call!294386 i!813))))

(declare-fun b!4281905 () Bool)

(declare-fun e!2658210 () Int)

(assert (=> b!4281905 (= e!2658210 call!294386)))

(declare-fun d!1264820 () Bool)

(declare-fun e!2658209 () Bool)

(assert (=> d!1264820 e!2658209))

(declare-fun res!1757442 () Bool)

(assert (=> d!1264820 (=> (not res!1757442) (not e!2658209))))

(declare-fun lt!1515298 () List!47523)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7512 (List!47523) (InoxSet B!2889))

(assert (=> d!1264820 (= res!1757442 (= ((_ map implies) (content!7512 lt!1515298) (content!7512 l!2982)) ((as const (InoxSet B!2889)) true)))))

(declare-fun e!2658207 () List!47523)

(assert (=> d!1264820 (= lt!1515298 e!2658207)))

(declare-fun c!729816 () Bool)

(assert (=> d!1264820 (= c!729816 ((_ is Nil!47399) l!2982))))

(assert (=> d!1264820 (= (drop!2177 l!2982 i!813) lt!1515298)))

(declare-fun b!4281906 () Bool)

(assert (=> b!4281906 (= e!2658210 e!2658208)))

(declare-fun c!729814 () Bool)

(assert (=> b!4281906 (= c!729814 (>= i!813 call!294386))))

(declare-fun b!4281907 () Bool)

(assert (=> b!4281907 (= e!2658209 (= (size!34735 lt!1515298) e!2658210))))

(declare-fun c!729813 () Bool)

(assert (=> b!4281907 (= c!729813 (<= i!813 0))))

(declare-fun b!4281908 () Bool)

(declare-fun e!2658206 () List!47523)

(assert (=> b!4281908 (= e!2658206 l!2982)))

(declare-fun b!4281909 () Bool)

(assert (=> b!4281909 (= e!2658207 e!2658206)))

(declare-fun c!729815 () Bool)

(assert (=> b!4281909 (= c!729815 (<= i!813 0))))

(declare-fun b!4281910 () Bool)

(assert (=> b!4281910 (= e!2658206 (drop!2177 (t!354112 l!2982) (- i!813 1)))))

(declare-fun bm!294381 () Bool)

(assert (=> bm!294381 (= call!294386 (size!34735 l!2982))))

(declare-fun b!4281911 () Bool)

(assert (=> b!4281911 (= e!2658207 Nil!47399)))

(declare-fun b!4281912 () Bool)

(assert (=> b!4281912 (= e!2658208 0)))

(assert (= (and d!1264820 c!729816) b!4281911))

(assert (= (and d!1264820 (not c!729816)) b!4281909))

(assert (= (and b!4281909 c!729815) b!4281908))

(assert (= (and b!4281909 (not c!729815)) b!4281910))

(assert (= (and d!1264820 res!1757442) b!4281907))

(assert (= (and b!4281907 c!729813) b!4281905))

(assert (= (and b!4281907 (not c!729813)) b!4281906))

(assert (= (and b!4281906 c!729814) b!4281912))

(assert (= (and b!4281906 (not c!729814)) b!4281904))

(assert (= (or b!4281905 b!4281906 b!4281904) bm!294381))

(declare-fun m!4879171 () Bool)

(assert (=> d!1264820 m!4879171))

(declare-fun m!4879173 () Bool)

(assert (=> d!1264820 m!4879173))

(declare-fun m!4879175 () Bool)

(assert (=> b!4281907 m!4879175))

(declare-fun m!4879177 () Bool)

(assert (=> b!4281910 m!4879177))

(assert (=> bm!294381 m!4879159))

(assert (=> b!4281854 d!1264820))

(declare-fun b!4281913 () Bool)

(declare-fun e!2658213 () Int)

(declare-fun call!294387 () Int)

(assert (=> b!4281913 (= e!2658213 (- call!294387 (+ 1 i!813)))))

(declare-fun b!4281914 () Bool)

(declare-fun e!2658215 () Int)

(assert (=> b!4281914 (= e!2658215 call!294387)))

(declare-fun d!1264826 () Bool)

(declare-fun e!2658214 () Bool)

(assert (=> d!1264826 e!2658214))

(declare-fun res!1757443 () Bool)

(assert (=> d!1264826 (=> (not res!1757443) (not e!2658214))))

(declare-fun lt!1515299 () List!47523)

(assert (=> d!1264826 (= res!1757443 (= ((_ map implies) (content!7512 lt!1515299) (content!7512 l!2982)) ((as const (InoxSet B!2889)) true)))))

(declare-fun e!2658212 () List!47523)

(assert (=> d!1264826 (= lt!1515299 e!2658212)))

(declare-fun c!729820 () Bool)

(assert (=> d!1264826 (= c!729820 ((_ is Nil!47399) l!2982))))

(assert (=> d!1264826 (= (drop!2177 l!2982 (+ 1 i!813)) lt!1515299)))

(declare-fun b!4281915 () Bool)

(assert (=> b!4281915 (= e!2658215 e!2658213)))

(declare-fun c!729818 () Bool)

(assert (=> b!4281915 (= c!729818 (>= (+ 1 i!813) call!294387))))

(declare-fun b!4281916 () Bool)

(assert (=> b!4281916 (= e!2658214 (= (size!34735 lt!1515299) e!2658215))))

(declare-fun c!729817 () Bool)

(assert (=> b!4281916 (= c!729817 (<= (+ 1 i!813) 0))))

(declare-fun b!4281917 () Bool)

(declare-fun e!2658211 () List!47523)

(assert (=> b!4281917 (= e!2658211 l!2982)))

(declare-fun b!4281918 () Bool)

(assert (=> b!4281918 (= e!2658212 e!2658211)))

(declare-fun c!729819 () Bool)

(assert (=> b!4281918 (= c!729819 (<= (+ 1 i!813) 0))))

(declare-fun b!4281919 () Bool)

(assert (=> b!4281919 (= e!2658211 (drop!2177 (t!354112 l!2982) (- (+ 1 i!813) 1)))))

(declare-fun bm!294382 () Bool)

(assert (=> bm!294382 (= call!294387 (size!34735 l!2982))))

(declare-fun b!4281920 () Bool)

(assert (=> b!4281920 (= e!2658212 Nil!47399)))

(declare-fun b!4281921 () Bool)

(assert (=> b!4281921 (= e!2658213 0)))

(assert (= (and d!1264826 c!729820) b!4281920))

(assert (= (and d!1264826 (not c!729820)) b!4281918))

(assert (= (and b!4281918 c!729819) b!4281917))

(assert (= (and b!4281918 (not c!729819)) b!4281919))

(assert (= (and d!1264826 res!1757443) b!4281916))

(assert (= (and b!4281916 c!729817) b!4281914))

(assert (= (and b!4281916 (not c!729817)) b!4281915))

(assert (= (and b!4281915 c!729818) b!4281921))

(assert (= (and b!4281915 (not c!729818)) b!4281913))

(assert (= (or b!4281914 b!4281915 b!4281913) bm!294382))

(declare-fun m!4879179 () Bool)

(assert (=> d!1264826 m!4879179))

(assert (=> d!1264826 m!4879173))

(declare-fun m!4879181 () Bool)

(assert (=> b!4281916 m!4879181))

(declare-fun m!4879183 () Bool)

(assert (=> b!4281919 m!4879183))

(assert (=> bm!294382 m!4879159))

(assert (=> b!4281854 d!1264826))

(declare-fun b!4281944 () Bool)

(declare-fun e!2658228 () Bool)

(declare-fun tp!1309493 () Bool)

(assert (=> b!4281944 (= e!2658228 (and tp_is_empty!23037 tp!1309493))))

(assert (=> b!4281855 (= tp!1309490 e!2658228)))

(assert (= (and b!4281855 ((_ is Cons!47399) (t!354112 l!2982))) b!4281944))

(check-sat (not b!4281910) (not b!4281944) (not b!4281919) (not d!1264826) tp_is_empty!23037 (not bm!294381) (not bm!294382) (not b!4281861) (not d!1264820) (not b!4281916) (not b!4281907))
(check-sat)
