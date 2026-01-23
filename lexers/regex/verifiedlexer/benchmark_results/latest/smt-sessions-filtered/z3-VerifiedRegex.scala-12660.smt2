; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!700888 () Bool)

(assert start!700888)

(declare-fun res!2932572 () Bool)

(declare-fun e!4332703 () Bool)

(assert (=> start!700888 (=> (not res!2932572) (not e!4332703))))

(declare-datatypes ((C!37132 0))(
  ( (C!37133 (val!28514 Int)) )
))
(declare-datatypes ((Regex!18429 0))(
  ( (ElementMatch!18429 (c!1340957 C!37132)) (Concat!27274 (regOne!37370 Regex!18429) (regTwo!37370 Regex!18429)) (EmptyExpr!18429) (Star!18429 (reg!18758 Regex!18429)) (EmptyLang!18429) (Union!18429 (regOne!37371 Regex!18429) (regTwo!37371 Regex!18429)) )
))
(declare-datatypes ((List!69967 0))(
  ( (Nil!69843) (Cons!69843 (h!76291 Regex!18429) (t!383998 List!69967)) )
))
(declare-datatypes ((Context!14762 0))(
  ( (Context!14763 (exprs!7881 List!69967)) )
))
(declare-fun c!7037 () Context!14762)

(get-info :version)

(assert (=> start!700888 (= res!2932572 ((_ is Cons!69843) (exprs!7881 c!7037)))))

(assert (=> start!700888 e!4332703))

(declare-fun e!4332702 () Bool)

(declare-fun inv!89094 (Context!14762) Bool)

(assert (=> start!700888 (and (inv!89094 c!7037) e!4332702)))

(declare-fun b!7227764 () Bool)

(declare-fun size!41525 (List!69967) Int)

(assert (=> b!7227764 (= e!4332703 (>= (size!41525 (t!383998 (exprs!7881 c!7037))) (size!41525 (exprs!7881 c!7037))))))

(declare-fun lt!2572320 () Int)

(declare-fun contextDepth!336 (Context!14762) Int)

(assert (=> b!7227764 (= lt!2572320 (contextDepth!336 (Context!14763 (t!383998 (exprs!7881 c!7037)))))))

(declare-fun lt!2572319 () Int)

(declare-fun regexDepth!418 (Regex!18429) Int)

(assert (=> b!7227764 (= lt!2572319 (regexDepth!418 (h!76291 (exprs!7881 c!7037))))))

(declare-fun b!7227765 () Bool)

(declare-fun tp!2032606 () Bool)

(assert (=> b!7227765 (= e!4332702 tp!2032606)))

(assert (= (and start!700888 res!2932572) b!7227764))

(assert (= start!700888 b!7227765))

(declare-fun m!7896640 () Bool)

(assert (=> start!700888 m!7896640))

(declare-fun m!7896642 () Bool)

(assert (=> b!7227764 m!7896642))

(declare-fun m!7896644 () Bool)

(assert (=> b!7227764 m!7896644))

(declare-fun m!7896646 () Bool)

(assert (=> b!7227764 m!7896646))

(declare-fun m!7896648 () Bool)

(assert (=> b!7227764 m!7896648))

(check-sat (not start!700888) (not b!7227764) (not b!7227765))
(check-sat)
(get-model)

(declare-fun d!2244797 () Bool)

(declare-fun lambda!438670 () Int)

(declare-fun forall!17254 (List!69967 Int) Bool)

(assert (=> d!2244797 (= (inv!89094 c!7037) (forall!17254 (exprs!7881 c!7037) lambda!438670))))

(declare-fun bs!1902106 () Bool)

(assert (= bs!1902106 d!2244797))

(declare-fun m!7896650 () Bool)

(assert (=> bs!1902106 m!7896650))

(assert (=> start!700888 d!2244797))

(declare-fun d!2244799 () Bool)

(declare-fun lt!2572323 () Int)

(assert (=> d!2244799 (>= lt!2572323 0)))

(declare-fun e!4332706 () Int)

(assert (=> d!2244799 (= lt!2572323 e!4332706)))

(declare-fun c!1340960 () Bool)

(assert (=> d!2244799 (= c!1340960 ((_ is Nil!69843) (t!383998 (exprs!7881 c!7037))))))

(assert (=> d!2244799 (= (size!41525 (t!383998 (exprs!7881 c!7037))) lt!2572323)))

(declare-fun b!7227770 () Bool)

(assert (=> b!7227770 (= e!4332706 0)))

(declare-fun b!7227771 () Bool)

(assert (=> b!7227771 (= e!4332706 (+ 1 (size!41525 (t!383998 (t!383998 (exprs!7881 c!7037))))))))

(assert (= (and d!2244799 c!1340960) b!7227770))

(assert (= (and d!2244799 (not c!1340960)) b!7227771))

(declare-fun m!7896652 () Bool)

(assert (=> b!7227771 m!7896652))

(assert (=> b!7227764 d!2244799))

(declare-fun d!2244801 () Bool)

(declare-fun lt!2572324 () Int)

(assert (=> d!2244801 (>= lt!2572324 0)))

(declare-fun e!4332707 () Int)

(assert (=> d!2244801 (= lt!2572324 e!4332707)))

(declare-fun c!1340961 () Bool)

(assert (=> d!2244801 (= c!1340961 ((_ is Nil!69843) (exprs!7881 c!7037)))))

(assert (=> d!2244801 (= (size!41525 (exprs!7881 c!7037)) lt!2572324)))

(declare-fun b!7227772 () Bool)

(assert (=> b!7227772 (= e!4332707 0)))

(declare-fun b!7227773 () Bool)

(assert (=> b!7227773 (= e!4332707 (+ 1 (size!41525 (t!383998 (exprs!7881 c!7037)))))))

(assert (= (and d!2244801 c!1340961) b!7227772))

(assert (= (and d!2244801 (not c!1340961)) b!7227773))

(assert (=> b!7227773 m!7896642))

(assert (=> b!7227764 d!2244801))

(declare-fun bs!1902107 () Bool)

(declare-fun b!7227780 () Bool)

(assert (= bs!1902107 (and b!7227780 d!2244797)))

(declare-fun lambda!438675 () Int)

(assert (=> bs!1902107 (not (= lambda!438675 lambda!438670))))

(assert (=> b!7227780 true))

(declare-fun bs!1902108 () Bool)

(declare-fun b!7227782 () Bool)

(assert (= bs!1902108 (and b!7227782 d!2244797)))

(declare-fun lambda!438676 () Int)

(assert (=> bs!1902108 (not (= lambda!438676 lambda!438670))))

(declare-fun bs!1902109 () Bool)

(assert (= bs!1902109 (and b!7227782 b!7227780)))

(declare-fun lt!2572333 () Int)

(declare-fun lt!2572335 () Int)

(assert (=> bs!1902109 (= (= lt!2572333 lt!2572335) (= lambda!438676 lambda!438675))))

(assert (=> b!7227782 true))

(declare-fun d!2244803 () Bool)

(declare-fun e!4332712 () Bool)

(assert (=> d!2244803 e!4332712))

(declare-fun res!2932575 () Bool)

(assert (=> d!2244803 (=> (not res!2932575) (not e!4332712))))

(assert (=> d!2244803 (= res!2932575 (>= lt!2572333 0))))

(declare-fun e!4332713 () Int)

(assert (=> d!2244803 (= lt!2572333 e!4332713)))

(declare-fun c!1340965 () Bool)

(assert (=> d!2244803 (= c!1340965 ((_ is Cons!69843) (exprs!7881 (Context!14763 (t!383998 (exprs!7881 c!7037))))))))

(assert (=> d!2244803 (= (contextDepth!336 (Context!14763 (t!383998 (exprs!7881 c!7037)))) lt!2572333)))

(assert (=> b!7227780 (= e!4332713 lt!2572335)))

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> b!7227780 (= lt!2572335 (maxBigInt!0 (regexDepth!418 (h!76291 (exprs!7881 (Context!14763 (t!383998 (exprs!7881 c!7037)))))) (contextDepth!336 (Context!14763 (t!383998 (exprs!7881 (Context!14763 (t!383998 (exprs!7881 c!7037)))))))))))

(declare-datatypes ((Unit!163445 0))(
  ( (Unit!163446) )
))
(declare-fun lt!2572336 () Unit!163445)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!151 (List!69967 Int Int) Unit!163445)

(assert (=> b!7227780 (= lt!2572336 (lemmaForallRegexDepthBiggerThanTransitive!151 (t!383998 (exprs!7881 (Context!14763 (t!383998 (exprs!7881 c!7037))))) lt!2572335 (contextDepth!336 (Context!14763 (t!383998 (exprs!7881 (Context!14763 (t!383998 (exprs!7881 c!7037)))))))))))

(assert (=> b!7227780 (forall!17254 (t!383998 (exprs!7881 (Context!14763 (t!383998 (exprs!7881 c!7037))))) lambda!438675)))

(declare-fun lt!2572334 () Unit!163445)

(assert (=> b!7227780 (= lt!2572334 lt!2572336)))

(declare-fun b!7227781 () Bool)

(assert (=> b!7227781 (= e!4332713 0)))

(assert (=> b!7227782 (= e!4332712 (forall!17254 (exprs!7881 (Context!14763 (t!383998 (exprs!7881 c!7037)))) lambda!438676))))

(assert (= (and d!2244803 c!1340965) b!7227780))

(assert (= (and d!2244803 (not c!1340965)) b!7227781))

(assert (= (and d!2244803 res!2932575) b!7227782))

(declare-fun m!7896654 () Bool)

(assert (=> b!7227780 m!7896654))

(declare-fun m!7896656 () Bool)

(assert (=> b!7227780 m!7896656))

(assert (=> b!7227780 m!7896656))

(assert (=> b!7227780 m!7896654))

(declare-fun m!7896658 () Bool)

(assert (=> b!7227780 m!7896658))

(declare-fun m!7896660 () Bool)

(assert (=> b!7227780 m!7896660))

(assert (=> b!7227780 m!7896654))

(declare-fun m!7896662 () Bool)

(assert (=> b!7227780 m!7896662))

(declare-fun m!7896664 () Bool)

(assert (=> b!7227782 m!7896664))

(assert (=> b!7227764 d!2244803))

(declare-fun b!7227819 () Bool)

(declare-fun e!4332736 () Int)

(assert (=> b!7227819 (= e!4332736 1)))

(declare-fun bm!657981 () Bool)

(declare-fun call!657990 () Int)

(declare-fun c!1340983 () Bool)

(assert (=> bm!657981 (= call!657990 (regexDepth!418 (ite c!1340983 (regTwo!37371 (h!76291 (exprs!7881 c!7037))) (regTwo!37370 (h!76291 (exprs!7881 c!7037))))))))

(declare-fun d!2244805 () Bool)

(declare-fun e!4332737 () Bool)

(assert (=> d!2244805 e!4332737))

(declare-fun res!2932583 () Bool)

(assert (=> d!2244805 (=> (not res!2932583) (not e!4332737))))

(declare-fun lt!2572339 () Int)

(assert (=> d!2244805 (= res!2932583 (> lt!2572339 0))))

(assert (=> d!2244805 (= lt!2572339 e!4332736)))

(declare-fun c!1340981 () Bool)

(assert (=> d!2244805 (= c!1340981 ((_ is ElementMatch!18429) (h!76291 (exprs!7881 c!7037))))))

(assert (=> d!2244805 (= (regexDepth!418 (h!76291 (exprs!7881 c!7037))) lt!2572339)))

(declare-fun b!7227820 () Bool)

(declare-fun c!1340985 () Bool)

(assert (=> b!7227820 (= c!1340985 ((_ is Star!18429) (h!76291 (exprs!7881 c!7037))))))

(declare-fun e!4332738 () Bool)

(declare-fun e!4332739 () Bool)

(assert (=> b!7227820 (= e!4332738 e!4332739)))

(declare-fun bm!657982 () Bool)

(declare-fun c!1340986 () Bool)

(declare-fun call!657988 () Int)

(assert (=> bm!657982 (= call!657988 (regexDepth!418 (ite c!1340986 (reg!18758 (h!76291 (exprs!7881 c!7037))) (ite c!1340983 (regOne!37371 (h!76291 (exprs!7881 c!7037))) (regOne!37370 (h!76291 (exprs!7881 c!7037)))))))))

(declare-fun bm!657983 () Bool)

(declare-fun call!657987 () Int)

(declare-fun call!657991 () Int)

(assert (=> bm!657983 (= call!657987 (maxBigInt!0 call!657991 call!657990))))

(declare-fun b!7227821 () Bool)

(declare-fun e!4332743 () Int)

(declare-fun e!4332741 () Int)

(assert (=> b!7227821 (= e!4332743 e!4332741)))

(declare-fun c!1340984 () Bool)

(assert (=> b!7227821 (= c!1340984 ((_ is Concat!27274) (h!76291 (exprs!7881 c!7037))))))

(declare-fun b!7227822 () Bool)

(assert (=> b!7227822 (= e!4332743 (+ 1 call!657987))))

(declare-fun b!7227823 () Bool)

(declare-fun call!657989 () Int)

(assert (=> b!7227823 (= e!4332739 (> lt!2572339 call!657989))))

(declare-fun b!7227824 () Bool)

(declare-fun e!4332734 () Bool)

(declare-fun call!657986 () Int)

(assert (=> b!7227824 (= e!4332734 (> lt!2572339 call!657986))))

(declare-fun b!7227825 () Bool)

(assert (=> b!7227825 (= e!4332739 (= lt!2572339 1))))

(declare-fun b!7227826 () Bool)

(declare-fun e!4332742 () Bool)

(assert (=> b!7227826 (= e!4332742 (> lt!2572339 call!657986))))

(declare-fun bm!657984 () Bool)

(assert (=> bm!657984 (= call!657991 call!657988)))

(declare-fun b!7227827 () Bool)

(assert (=> b!7227827 (= e!4332741 1)))

(declare-fun b!7227828 () Bool)

(declare-fun e!4332735 () Bool)

(assert (=> b!7227828 (= e!4332735 e!4332738)))

(declare-fun c!1340980 () Bool)

(assert (=> b!7227828 (= c!1340980 ((_ is Concat!27274) (h!76291 (exprs!7881 c!7037))))))

(declare-fun bm!657985 () Bool)

(declare-fun c!1340982 () Bool)

(assert (=> bm!657985 (= call!657986 (regexDepth!418 (ite c!1340982 (regTwo!37371 (h!76291 (exprs!7881 c!7037))) (regTwo!37370 (h!76291 (exprs!7881 c!7037))))))))

(declare-fun b!7227829 () Bool)

(assert (=> b!7227829 (= c!1340983 ((_ is Union!18429) (h!76291 (exprs!7881 c!7037))))))

(declare-fun e!4332740 () Int)

(assert (=> b!7227829 (= e!4332740 e!4332743)))

(declare-fun b!7227830 () Bool)

(assert (=> b!7227830 (= e!4332736 e!4332740)))

(assert (=> b!7227830 (= c!1340986 ((_ is Star!18429) (h!76291 (exprs!7881 c!7037))))))

(declare-fun b!7227831 () Bool)

(assert (=> b!7227831 (= e!4332735 e!4332742)))

(declare-fun res!2932584 () Bool)

(declare-fun call!657992 () Int)

(assert (=> b!7227831 (= res!2932584 (> lt!2572339 call!657992))))

(assert (=> b!7227831 (=> (not res!2932584) (not e!4332742))))

(declare-fun b!7227832 () Bool)

(assert (=> b!7227832 (= e!4332740 (+ 1 call!657988))))

(declare-fun b!7227833 () Bool)

(assert (=> b!7227833 (= e!4332741 (+ 1 call!657987))))

(declare-fun bm!657986 () Bool)

(assert (=> bm!657986 (= call!657992 (regexDepth!418 (ite c!1340982 (regOne!37371 (h!76291 (exprs!7881 c!7037))) (ite c!1340980 (regOne!37370 (h!76291 (exprs!7881 c!7037))) (reg!18758 (h!76291 (exprs!7881 c!7037)))))))))

(declare-fun bm!657987 () Bool)

(assert (=> bm!657987 (= call!657989 call!657992)))

(declare-fun b!7227834 () Bool)

(declare-fun res!2932582 () Bool)

(assert (=> b!7227834 (=> (not res!2932582) (not e!4332734))))

(assert (=> b!7227834 (= res!2932582 (> lt!2572339 call!657989))))

(assert (=> b!7227834 (= e!4332738 e!4332734)))

(declare-fun b!7227835 () Bool)

(assert (=> b!7227835 (= e!4332737 e!4332735)))

(assert (=> b!7227835 (= c!1340982 ((_ is Union!18429) (h!76291 (exprs!7881 c!7037))))))

(assert (= (and d!2244805 c!1340981) b!7227819))

(assert (= (and d!2244805 (not c!1340981)) b!7227830))

(assert (= (and b!7227830 c!1340986) b!7227832))

(assert (= (and b!7227830 (not c!1340986)) b!7227829))

(assert (= (and b!7227829 c!1340983) b!7227822))

(assert (= (and b!7227829 (not c!1340983)) b!7227821))

(assert (= (and b!7227821 c!1340984) b!7227833))

(assert (= (and b!7227821 (not c!1340984)) b!7227827))

(assert (= (or b!7227822 b!7227833) bm!657984))

(assert (= (or b!7227822 b!7227833) bm!657981))

(assert (= (or b!7227822 b!7227833) bm!657983))

(assert (= (or b!7227832 bm!657984) bm!657982))

(assert (= (and d!2244805 res!2932583) b!7227835))

(assert (= (and b!7227835 c!1340982) b!7227831))

(assert (= (and b!7227835 (not c!1340982)) b!7227828))

(assert (= (and b!7227831 res!2932584) b!7227826))

(assert (= (and b!7227828 c!1340980) b!7227834))

(assert (= (and b!7227828 (not c!1340980)) b!7227820))

(assert (= (and b!7227834 res!2932582) b!7227824))

(assert (= (and b!7227820 c!1340985) b!7227823))

(assert (= (and b!7227820 (not c!1340985)) b!7227825))

(assert (= (or b!7227834 b!7227823) bm!657987))

(assert (= (or b!7227831 bm!657987) bm!657986))

(assert (= (or b!7227826 b!7227824) bm!657985))

(declare-fun m!7896666 () Bool)

(assert (=> bm!657985 m!7896666))

(declare-fun m!7896668 () Bool)

(assert (=> bm!657983 m!7896668))

(declare-fun m!7896670 () Bool)

(assert (=> bm!657986 m!7896670))

(declare-fun m!7896672 () Bool)

(assert (=> bm!657982 m!7896672))

(declare-fun m!7896674 () Bool)

(assert (=> bm!657981 m!7896674))

(assert (=> b!7227764 d!2244805))

(declare-fun b!7227840 () Bool)

(declare-fun e!4332746 () Bool)

(declare-fun tp!2032611 () Bool)

(declare-fun tp!2032612 () Bool)

(assert (=> b!7227840 (= e!4332746 (and tp!2032611 tp!2032612))))

(assert (=> b!7227765 (= tp!2032606 e!4332746)))

(assert (= (and b!7227765 ((_ is Cons!69843) (exprs!7881 c!7037))) b!7227840))

(check-sat (not bm!657983) (not bm!657982) (not b!7227840) (not b!7227782) (not bm!657981) (not b!7227780) (not b!7227773) (not d!2244797) (not b!7227771) (not bm!657985) (not bm!657986))
(check-sat)
