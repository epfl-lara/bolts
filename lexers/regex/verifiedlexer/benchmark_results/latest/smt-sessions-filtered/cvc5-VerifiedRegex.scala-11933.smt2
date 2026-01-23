; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668212 () Bool)

(assert start!668212)

(declare-fun b!6965648 () Bool)

(declare-fun e!4187721 () Bool)

(declare-datatypes ((C!34494 0))(
  ( (C!34495 (val!26949 Int)) )
))
(declare-datatypes ((Regex!17112 0))(
  ( (ElementMatch!17112 (c!1291486 C!34494)) (Concat!25957 (regOne!34736 Regex!17112) (regTwo!34736 Regex!17112)) (EmptyExpr!17112) (Star!17112 (reg!17441 Regex!17112)) (EmptyLang!17112) (Union!17112 (regOne!34737 Regex!17112) (regTwo!34737 Regex!17112)) )
))
(declare-datatypes ((List!66909 0))(
  ( (Nil!66785) (Cons!66785 (h!73233 Regex!17112) (t!380652 List!66909)) )
))
(declare-fun l!9142 () List!66909)

(declare-fun size!40854 (List!66909) Int)

(assert (=> b!6965648 (= e!4187721 (< (size!40854 l!9142) 0))))

(declare-fun b!6965649 () Bool)

(declare-fun e!4187722 () Bool)

(declare-fun tp!1920978 () Bool)

(assert (=> b!6965649 (= e!4187722 tp!1920978)))

(declare-fun b!6965650 () Bool)

(declare-fun tp!1920976 () Bool)

(declare-fun tp!1920982 () Bool)

(assert (=> b!6965650 (= e!4187722 (and tp!1920976 tp!1920982))))

(declare-fun b!6965652 () Bool)

(declare-fun tp_is_empty!43449 () Bool)

(assert (=> b!6965652 (= e!4187722 tp_is_empty!43449)))

(declare-fun b!6965653 () Bool)

(declare-fun tp!1920979 () Bool)

(declare-fun tp!1920980 () Bool)

(assert (=> b!6965653 (= e!4187722 (and tp!1920979 tp!1920980))))

(declare-fun b!6965654 () Bool)

(declare-fun e!4187723 () Bool)

(declare-fun tp!1920981 () Bool)

(declare-fun tp!1920977 () Bool)

(assert (=> b!6965654 (= e!4187723 (and tp!1920981 tp!1920977))))

(declare-fun b!6965651 () Bool)

(declare-fun res!2841988 () Bool)

(assert (=> b!6965651 (=> (not res!2841988) (not e!4187721))))

(declare-fun r!13765 () Regex!17112)

(declare-fun generalisedUnion!2587 (List!66909) Regex!17112)

(assert (=> b!6965651 (= res!2841988 (= r!13765 (generalisedUnion!2587 l!9142)))))

(declare-fun res!2841987 () Bool)

(assert (=> start!668212 (=> (not res!2841987) (not e!4187721))))

(declare-fun lambda!397473 () Int)

(declare-fun forall!15983 (List!66909 Int) Bool)

(assert (=> start!668212 (= res!2841987 (forall!15983 l!9142 lambda!397473))))

(assert (=> start!668212 e!4187721))

(assert (=> start!668212 e!4187723))

(assert (=> start!668212 e!4187722))

(assert (= (and start!668212 res!2841987) b!6965651))

(assert (= (and b!6965651 res!2841988) b!6965648))

(assert (= (and start!668212 (is-Cons!66785 l!9142)) b!6965654))

(assert (= (and start!668212 (is-ElementMatch!17112 r!13765)) b!6965652))

(assert (= (and start!668212 (is-Concat!25957 r!13765)) b!6965650))

(assert (= (and start!668212 (is-Star!17112 r!13765)) b!6965649))

(assert (= (and start!668212 (is-Union!17112 r!13765)) b!6965653))

(declare-fun m!7657904 () Bool)

(assert (=> b!6965648 m!7657904))

(declare-fun m!7657906 () Bool)

(assert (=> b!6965651 m!7657906))

(declare-fun m!7657908 () Bool)

(assert (=> start!668212 m!7657908))

(push 1)

(assert (not b!6965653))

(assert (not b!6965650))

(assert (not b!6965651))

(assert (not start!668212))

(assert (not b!6965648))

(assert (not b!6965649))

(assert tp_is_empty!43449)

(assert (not b!6965654))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2170506 () Bool)

(declare-fun res!2841999 () Bool)

(declare-fun e!4187737 () Bool)

(assert (=> d!2170506 (=> res!2841999 e!4187737)))

(assert (=> d!2170506 (= res!2841999 (is-Nil!66785 l!9142))))

(assert (=> d!2170506 (= (forall!15983 l!9142 lambda!397473) e!4187737)))

(declare-fun b!6965680 () Bool)

(declare-fun e!4187738 () Bool)

(assert (=> b!6965680 (= e!4187737 e!4187738)))

(declare-fun res!2842000 () Bool)

(assert (=> b!6965680 (=> (not res!2842000) (not e!4187738))))

(declare-fun dynLambda!26626 (Int Regex!17112) Bool)

(assert (=> b!6965680 (= res!2842000 (dynLambda!26626 lambda!397473 (h!73233 l!9142)))))

(declare-fun b!6965681 () Bool)

(assert (=> b!6965681 (= e!4187738 (forall!15983 (t!380652 l!9142) lambda!397473))))

(assert (= (and d!2170506 (not res!2841999)) b!6965680))

(assert (= (and b!6965680 res!2842000) b!6965681))

(declare-fun b_lambda!260641 () Bool)

(assert (=> (not b_lambda!260641) (not b!6965680)))

(declare-fun m!7657916 () Bool)

(assert (=> b!6965680 m!7657916))

(declare-fun m!7657918 () Bool)

(assert (=> b!6965681 m!7657918))

(assert (=> start!668212 d!2170506))

(declare-fun bs!1858650 () Bool)

(declare-fun d!2170508 () Bool)

(assert (= bs!1858650 (and d!2170508 start!668212)))

(declare-fun lambda!397479 () Int)

(assert (=> bs!1858650 (= lambda!397479 lambda!397473)))

(declare-fun b!6965702 () Bool)

(declare-fun e!4187751 () Bool)

(declare-fun isEmpty!38991 (List!66909) Bool)

(assert (=> b!6965702 (= e!4187751 (isEmpty!38991 (t!380652 l!9142)))))

(declare-fun b!6965703 () Bool)

(declare-fun e!4187756 () Regex!17112)

(assert (=> b!6965703 (= e!4187756 (Union!17112 (h!73233 l!9142) (generalisedUnion!2587 (t!380652 l!9142))))))

(declare-fun b!6965704 () Bool)

(declare-fun e!4187753 () Bool)

(declare-fun e!4187752 () Bool)

(assert (=> b!6965704 (= e!4187753 e!4187752)))

(declare-fun c!1291498 () Bool)

(assert (=> b!6965704 (= c!1291498 (isEmpty!38991 l!9142))))

(assert (=> d!2170508 e!4187753))

(declare-fun res!2842006 () Bool)

(assert (=> d!2170508 (=> (not res!2842006) (not e!4187753))))

(declare-fun lt!2479366 () Regex!17112)

(declare-fun validRegex!8796 (Regex!17112) Bool)

(assert (=> d!2170508 (= res!2842006 (validRegex!8796 lt!2479366))))

(declare-fun e!4187755 () Regex!17112)

(assert (=> d!2170508 (= lt!2479366 e!4187755)))

(declare-fun c!1291499 () Bool)

(assert (=> d!2170508 (= c!1291499 e!4187751)))

(declare-fun res!2842005 () Bool)

(assert (=> d!2170508 (=> (not res!2842005) (not e!4187751))))

(assert (=> d!2170508 (= res!2842005 (is-Cons!66785 l!9142))))

(assert (=> d!2170508 (forall!15983 l!9142 lambda!397479)))

(assert (=> d!2170508 (= (generalisedUnion!2587 l!9142) lt!2479366)))

(declare-fun b!6965705 () Bool)

(declare-fun e!4187754 () Bool)

(declare-fun head!14004 (List!66909) Regex!17112)

(assert (=> b!6965705 (= e!4187754 (= lt!2479366 (head!14004 l!9142)))))

(declare-fun b!6965706 () Bool)

(assert (=> b!6965706 (= e!4187755 (h!73233 l!9142))))

(declare-fun b!6965707 () Bool)

(declare-fun isEmptyLang!2053 (Regex!17112) Bool)

(assert (=> b!6965707 (= e!4187752 (isEmptyLang!2053 lt!2479366))))

(declare-fun b!6965708 () Bool)

(assert (=> b!6965708 (= e!4187756 EmptyLang!17112)))

(declare-fun b!6965709 () Bool)

(declare-fun isUnion!1481 (Regex!17112) Bool)

(assert (=> b!6965709 (= e!4187754 (isUnion!1481 lt!2479366))))

(declare-fun b!6965710 () Bool)

(assert (=> b!6965710 (= e!4187752 e!4187754)))

(declare-fun c!1291497 () Bool)

(declare-fun tail!13072 (List!66909) List!66909)

(assert (=> b!6965710 (= c!1291497 (isEmpty!38991 (tail!13072 l!9142)))))

(declare-fun b!6965711 () Bool)

(assert (=> b!6965711 (= e!4187755 e!4187756)))

(declare-fun c!1291496 () Bool)

(assert (=> b!6965711 (= c!1291496 (is-Cons!66785 l!9142))))

(assert (= (and d!2170508 res!2842005) b!6965702))

(assert (= (and d!2170508 c!1291499) b!6965706))

(assert (= (and d!2170508 (not c!1291499)) b!6965711))

(assert (= (and b!6965711 c!1291496) b!6965703))

(assert (= (and b!6965711 (not c!1291496)) b!6965708))

(assert (= (and d!2170508 res!2842006) b!6965704))

(assert (= (and b!6965704 c!1291498) b!6965707))

(assert (= (and b!6965704 (not c!1291498)) b!6965710))

(assert (= (and b!6965710 c!1291497) b!6965705))

(assert (= (and b!6965710 (not c!1291497)) b!6965709))

(declare-fun m!7657920 () Bool)

(assert (=> b!6965709 m!7657920))

(declare-fun m!7657922 () Bool)

(assert (=> b!6965704 m!7657922))

(declare-fun m!7657924 () Bool)

(assert (=> b!6965705 m!7657924))

(declare-fun m!7657926 () Bool)

(assert (=> b!6965703 m!7657926))

(declare-fun m!7657928 () Bool)

(assert (=> b!6965707 m!7657928))

(declare-fun m!7657930 () Bool)

(assert (=> b!6965702 m!7657930))

(declare-fun m!7657932 () Bool)

(assert (=> b!6965710 m!7657932))

(assert (=> b!6965710 m!7657932))

(declare-fun m!7657934 () Bool)

(assert (=> b!6965710 m!7657934))

(declare-fun m!7657936 () Bool)

(assert (=> d!2170508 m!7657936))

(declare-fun m!7657938 () Bool)

(assert (=> d!2170508 m!7657938))

(assert (=> b!6965651 d!2170508))

(declare-fun d!2170512 () Bool)

(declare-fun lt!2479372 () Int)

(assert (=> d!2170512 (>= lt!2479372 0)))

(declare-fun e!4187762 () Int)

(assert (=> d!2170512 (= lt!2479372 e!4187762)))

(declare-fun c!1291505 () Bool)

(assert (=> d!2170512 (= c!1291505 (is-Nil!66785 l!9142))))

(assert (=> d!2170512 (= (size!40854 l!9142) lt!2479372)))

(declare-fun b!6965722 () Bool)

(assert (=> b!6965722 (= e!4187762 0)))

(declare-fun b!6965723 () Bool)

(assert (=> b!6965723 (= e!4187762 (+ 1 (size!40854 (t!380652 l!9142))))))

(assert (= (and d!2170512 c!1291505) b!6965722))

(assert (= (and d!2170512 (not c!1291505)) b!6965723))

(declare-fun m!7657940 () Bool)

(assert (=> b!6965723 m!7657940))

(assert (=> b!6965648 d!2170512))

(declare-fun e!4187765 () Bool)

(assert (=> b!6965650 (= tp!1920976 e!4187765)))

(declare-fun b!6965734 () Bool)

(assert (=> b!6965734 (= e!4187765 tp_is_empty!43449)))

(declare-fun b!6965735 () Bool)

(declare-fun tp!1921016 () Bool)

(declare-fun tp!1921018 () Bool)

(assert (=> b!6965735 (= e!4187765 (and tp!1921016 tp!1921018))))

(declare-fun b!6965737 () Bool)

(declare-fun tp!1921015 () Bool)

(declare-fun tp!1921017 () Bool)

(assert (=> b!6965737 (= e!4187765 (and tp!1921015 tp!1921017))))

(declare-fun b!6965736 () Bool)

(declare-fun tp!1921014 () Bool)

(assert (=> b!6965736 (= e!4187765 tp!1921014)))

(assert (= (and b!6965650 (is-ElementMatch!17112 (regOne!34736 r!13765))) b!6965734))

(assert (= (and b!6965650 (is-Concat!25957 (regOne!34736 r!13765))) b!6965735))

(assert (= (and b!6965650 (is-Star!17112 (regOne!34736 r!13765))) b!6965736))

(assert (= (and b!6965650 (is-Union!17112 (regOne!34736 r!13765))) b!6965737))

(declare-fun e!4187766 () Bool)

(assert (=> b!6965650 (= tp!1920982 e!4187766)))

(declare-fun b!6965738 () Bool)

(assert (=> b!6965738 (= e!4187766 tp_is_empty!43449)))

(declare-fun b!6965739 () Bool)

(declare-fun tp!1921021 () Bool)

(declare-fun tp!1921023 () Bool)

(assert (=> b!6965739 (= e!4187766 (and tp!1921021 tp!1921023))))

(declare-fun b!6965741 () Bool)

(declare-fun tp!1921020 () Bool)

(declare-fun tp!1921022 () Bool)

(assert (=> b!6965741 (= e!4187766 (and tp!1921020 tp!1921022))))

(declare-fun b!6965740 () Bool)

(declare-fun tp!1921019 () Bool)

(assert (=> b!6965740 (= e!4187766 tp!1921019)))

(assert (= (and b!6965650 (is-ElementMatch!17112 (regTwo!34736 r!13765))) b!6965738))

(assert (= (and b!6965650 (is-Concat!25957 (regTwo!34736 r!13765))) b!6965739))

(assert (= (and b!6965650 (is-Star!17112 (regTwo!34736 r!13765))) b!6965740))

(assert (= (and b!6965650 (is-Union!17112 (regTwo!34736 r!13765))) b!6965741))

(declare-fun e!4187767 () Bool)

(assert (=> b!6965649 (= tp!1920978 e!4187767)))

(declare-fun b!6965742 () Bool)

(assert (=> b!6965742 (= e!4187767 tp_is_empty!43449)))

(declare-fun b!6965743 () Bool)

(declare-fun tp!1921026 () Bool)

(declare-fun tp!1921028 () Bool)

(assert (=> b!6965743 (= e!4187767 (and tp!1921026 tp!1921028))))

(declare-fun b!6965745 () Bool)

(declare-fun tp!1921025 () Bool)

(declare-fun tp!1921027 () Bool)

(assert (=> b!6965745 (= e!4187767 (and tp!1921025 tp!1921027))))

(declare-fun b!6965744 () Bool)

(declare-fun tp!1921024 () Bool)

(assert (=> b!6965744 (= e!4187767 tp!1921024)))

(assert (= (and b!6965649 (is-ElementMatch!17112 (reg!17441 r!13765))) b!6965742))

(assert (= (and b!6965649 (is-Concat!25957 (reg!17441 r!13765))) b!6965743))

(assert (= (and b!6965649 (is-Star!17112 (reg!17441 r!13765))) b!6965744))

(assert (= (and b!6965649 (is-Union!17112 (reg!17441 r!13765))) b!6965745))

(declare-fun e!4187768 () Bool)

(assert (=> b!6965654 (= tp!1920981 e!4187768)))

(declare-fun b!6965746 () Bool)

(assert (=> b!6965746 (= e!4187768 tp_is_empty!43449)))

(declare-fun b!6965747 () Bool)

(declare-fun tp!1921031 () Bool)

(declare-fun tp!1921033 () Bool)

(assert (=> b!6965747 (= e!4187768 (and tp!1921031 tp!1921033))))

(declare-fun b!6965749 () Bool)

(declare-fun tp!1921030 () Bool)

(declare-fun tp!1921032 () Bool)

(assert (=> b!6965749 (= e!4187768 (and tp!1921030 tp!1921032))))

(declare-fun b!6965748 () Bool)

(declare-fun tp!1921029 () Bool)

(assert (=> b!6965748 (= e!4187768 tp!1921029)))

(assert (= (and b!6965654 (is-ElementMatch!17112 (h!73233 l!9142))) b!6965746))

(assert (= (and b!6965654 (is-Concat!25957 (h!73233 l!9142))) b!6965747))

(assert (= (and b!6965654 (is-Star!17112 (h!73233 l!9142))) b!6965748))

(assert (= (and b!6965654 (is-Union!17112 (h!73233 l!9142))) b!6965749))

(declare-fun b!6965754 () Bool)

(declare-fun e!4187771 () Bool)

(declare-fun tp!1921038 () Bool)

(declare-fun tp!1921039 () Bool)

(assert (=> b!6965754 (= e!4187771 (and tp!1921038 tp!1921039))))

(assert (=> b!6965654 (= tp!1920977 e!4187771)))

(assert (= (and b!6965654 (is-Cons!66785 (t!380652 l!9142))) b!6965754))

(declare-fun e!4187772 () Bool)

(assert (=> b!6965653 (= tp!1920979 e!4187772)))

(declare-fun b!6965755 () Bool)

(assert (=> b!6965755 (= e!4187772 tp_is_empty!43449)))

(declare-fun b!6965756 () Bool)

(declare-fun tp!1921042 () Bool)

(declare-fun tp!1921044 () Bool)

(assert (=> b!6965756 (= e!4187772 (and tp!1921042 tp!1921044))))

(declare-fun b!6965758 () Bool)

(declare-fun tp!1921041 () Bool)

(declare-fun tp!1921043 () Bool)

(assert (=> b!6965758 (= e!4187772 (and tp!1921041 tp!1921043))))

(declare-fun b!6965757 () Bool)

(declare-fun tp!1921040 () Bool)

(assert (=> b!6965757 (= e!4187772 tp!1921040)))

(assert (= (and b!6965653 (is-ElementMatch!17112 (regOne!34737 r!13765))) b!6965755))

(assert (= (and b!6965653 (is-Concat!25957 (regOne!34737 r!13765))) b!6965756))

(assert (= (and b!6965653 (is-Star!17112 (regOne!34737 r!13765))) b!6965757))

(assert (= (and b!6965653 (is-Union!17112 (regOne!34737 r!13765))) b!6965758))

(declare-fun e!4187777 () Bool)

(assert (=> b!6965653 (= tp!1920980 e!4187777)))

(declare-fun b!6965761 () Bool)

(assert (=> b!6965761 (= e!4187777 tp_is_empty!43449)))

(declare-fun b!6965762 () Bool)

(declare-fun tp!1921047 () Bool)

(declare-fun tp!1921049 () Bool)

(assert (=> b!6965762 (= e!4187777 (and tp!1921047 tp!1921049))))

(declare-fun b!6965764 () Bool)

(declare-fun tp!1921046 () Bool)

(declare-fun tp!1921048 () Bool)

(assert (=> b!6965764 (= e!4187777 (and tp!1921046 tp!1921048))))

(declare-fun b!6965763 () Bool)

(declare-fun tp!1921045 () Bool)

(assert (=> b!6965763 (= e!4187777 tp!1921045)))

(assert (= (and b!6965653 (is-ElementMatch!17112 (regTwo!34737 r!13765))) b!6965761))

(assert (= (and b!6965653 (is-Concat!25957 (regTwo!34737 r!13765))) b!6965762))

(assert (= (and b!6965653 (is-Star!17112 (regTwo!34737 r!13765))) b!6965763))

(assert (= (and b!6965653 (is-Union!17112 (regTwo!34737 r!13765))) b!6965764))

(declare-fun b_lambda!260643 () Bool)

(assert (= b_lambda!260641 (or start!668212 b_lambda!260643)))

(declare-fun bs!1858651 () Bool)

(declare-fun d!2170516 () Bool)

(assert (= bs!1858651 (and d!2170516 start!668212)))

(assert (=> bs!1858651 (= (dynLambda!26626 lambda!397473 (h!73233 l!9142)) (validRegex!8796 (h!73233 l!9142)))))

(declare-fun m!7657944 () Bool)

(assert (=> bs!1858651 m!7657944))

(assert (=> b!6965680 d!2170516))

(push 1)

(assert (not b!6965704))

(assert (not b!6965741))

(assert (not b!6965707))

(assert (not b!6965735))

(assert (not b!6965756))

(assert (not b!6965763))

(assert (not d!2170508))

(assert (not b!6965764))

(assert (not b!6965743))

(assert (not bs!1858651))

(assert (not b!6965740))

(assert (not b!6965758))

(assert (not b!6965703))

(assert (not b!6965710))

(assert (not b!6965709))

(assert (not b!6965744))

(assert (not b!6965745))

(assert (not b!6965739))

(assert (not b!6965748))

(assert (not b!6965747))

(assert tp_is_empty!43449)

(assert (not b!6965737))

(assert (not b!6965754))

(assert (not b_lambda!260643))

(assert (not b!6965757))

(assert (not b!6965723))

(assert (not b!6965705))

(assert (not b!6965762))

(assert (not b!6965702))

(assert (not b!6965736))

(assert (not b!6965749))

(assert (not b!6965681))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

