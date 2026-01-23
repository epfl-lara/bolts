; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!755014 () Bool)

(assert start!755014)

(declare-fun b!8020929 () Bool)

(declare-fun e!4724965 () Bool)

(declare-fun tp_is_empty!54063 () Bool)

(declare-fun tp!2400617 () Bool)

(assert (=> b!8020929 (= e!4724965 (and tp_is_empty!54063 tp!2400617))))

(declare-fun b!8020930 () Bool)

(declare-fun e!4724962 () Bool)

(declare-fun tp!2400615 () Bool)

(assert (=> b!8020930 (= e!4724962 (and tp_is_empty!54063 tp!2400615))))

(declare-fun b!8020931 () Bool)

(declare-fun e!4724963 () Bool)

(declare-fun e!4724966 () Bool)

(assert (=> b!8020931 (= e!4724963 e!4724966)))

(declare-fun res!3171479 () Bool)

(assert (=> b!8020931 (=> (not res!3171479) (not e!4724966))))

(declare-datatypes ((B!4175 0))(
  ( (B!4176 (val!32477 Int)) )
))
(declare-datatypes ((List!74989 0))(
  ( (Nil!74865) (Cons!74865 (h!81313 B!4175) (t!390732 List!74989)) )
))
(declare-fun p1!173 () List!74989)

(declare-fun lt!2719910 () List!74989)

(declare-fun isPrefix!6796 (List!74989 List!74989) Bool)

(assert (=> b!8020931 (= res!3171479 (isPrefix!6796 (t!390732 p1!173) lt!2719910))))

(declare-fun l!3353 () List!74989)

(declare-fun tail!15939 (List!74989) List!74989)

(assert (=> b!8020931 (= lt!2719910 (tail!15939 l!3353))))

(declare-fun b!8020932 () Bool)

(declare-fun res!3171482 () Bool)

(assert (=> b!8020932 (=> (not res!3171482) (not e!4724963))))

(declare-fun p2!173 () List!74989)

(assert (=> b!8020932 (= res!3171482 (isPrefix!6796 p2!173 l!3353))))

(declare-fun b!8020933 () Bool)

(declare-fun res!3171480 () Bool)

(assert (=> b!8020933 (=> (not res!3171480) (not e!4724963))))

(declare-fun size!43650 (List!74989) Int)

(assert (=> b!8020933 (= res!3171480 (= (size!43650 p1!173) (size!43650 p2!173)))))

(declare-fun res!3171481 () Bool)

(assert (=> start!755014 (=> (not res!3171481) (not e!4724963))))

(assert (=> start!755014 (= res!3171481 (isPrefix!6796 p1!173 l!3353))))

(assert (=> start!755014 e!4724963))

(assert (=> start!755014 e!4724962))

(declare-fun e!4724964 () Bool)

(assert (=> start!755014 e!4724964))

(assert (=> start!755014 e!4724965))

(declare-fun b!8020934 () Bool)

(declare-fun tp!2400616 () Bool)

(assert (=> b!8020934 (= e!4724964 (and tp_is_empty!54063 tp!2400616))))

(declare-fun b!8020935 () Bool)

(declare-fun res!3171483 () Bool)

(assert (=> b!8020935 (=> (not res!3171483) (not e!4724963))))

(assert (=> b!8020935 (= res!3171483 (is-Cons!74865 p1!173))))

(declare-fun b!8020936 () Bool)

(assert (=> b!8020936 (= e!4724966 (not (isPrefix!6796 (tail!15939 p2!173) lt!2719910)))))

(assert (= (and start!755014 res!3171481) b!8020932))

(assert (= (and b!8020932 res!3171482) b!8020933))

(assert (= (and b!8020933 res!3171480) b!8020935))

(assert (= (and b!8020935 res!3171483) b!8020931))

(assert (= (and b!8020931 res!3171479) b!8020936))

(assert (= (and start!755014 (is-Cons!74865 p1!173)) b!8020930))

(assert (= (and start!755014 (is-Cons!74865 l!3353)) b!8020934))

(assert (= (and start!755014 (is-Cons!74865 p2!173)) b!8020929))

(declare-fun m!8383830 () Bool)

(assert (=> start!755014 m!8383830))

(declare-fun m!8383832 () Bool)

(assert (=> b!8020931 m!8383832))

(declare-fun m!8383834 () Bool)

(assert (=> b!8020931 m!8383834))

(declare-fun m!8383836 () Bool)

(assert (=> b!8020933 m!8383836))

(declare-fun m!8383838 () Bool)

(assert (=> b!8020933 m!8383838))

(declare-fun m!8383840 () Bool)

(assert (=> b!8020932 m!8383840))

(declare-fun m!8383842 () Bool)

(assert (=> b!8020936 m!8383842))

(assert (=> b!8020936 m!8383842))

(declare-fun m!8383844 () Bool)

(assert (=> b!8020936 m!8383844))

(push 1)

(assert tp_is_empty!54063)

(assert (not b!8020930))

(assert (not start!755014))

(assert (not b!8020934))

(assert (not b!8020933))

(assert (not b!8020929))

(assert (not b!8020936))

(assert (not b!8020931))

(assert (not b!8020932))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2391741 () Bool)

(declare-fun e!4724989 () Bool)

(assert (=> d!2391741 e!4724989))

(declare-fun res!3171509 () Bool)

(assert (=> d!2391741 (=> res!3171509 e!4724989)))

(declare-fun lt!2719916 () Bool)

(assert (=> d!2391741 (= res!3171509 (not lt!2719916))))

(declare-fun e!4724988 () Bool)

(assert (=> d!2391741 (= lt!2719916 e!4724988)))

(declare-fun res!3171510 () Bool)

(assert (=> d!2391741 (=> res!3171510 e!4724988)))

(assert (=> d!2391741 (= res!3171510 (is-Nil!74865 (t!390732 p1!173)))))

(assert (=> d!2391741 (= (isPrefix!6796 (t!390732 p1!173) lt!2719910) lt!2719916)))

(declare-fun b!8020972 () Bool)

(assert (=> b!8020972 (= e!4724989 (>= (size!43650 lt!2719910) (size!43650 (t!390732 p1!173))))))

(declare-fun b!8020970 () Bool)

(declare-fun res!3171508 () Bool)

(declare-fun e!4724990 () Bool)

(assert (=> b!8020970 (=> (not res!3171508) (not e!4724990))))

(declare-fun head!16404 (List!74989) B!4175)

(assert (=> b!8020970 (= res!3171508 (= (head!16404 (t!390732 p1!173)) (head!16404 lt!2719910)))))

(declare-fun b!8020969 () Bool)

(assert (=> b!8020969 (= e!4724988 e!4724990)))

(declare-fun res!3171507 () Bool)

(assert (=> b!8020969 (=> (not res!3171507) (not e!4724990))))

(assert (=> b!8020969 (= res!3171507 (not (is-Nil!74865 lt!2719910)))))

(declare-fun b!8020971 () Bool)

(assert (=> b!8020971 (= e!4724990 (isPrefix!6796 (tail!15939 (t!390732 p1!173)) (tail!15939 lt!2719910)))))

(assert (= (and d!2391741 (not res!3171510)) b!8020969))

(assert (= (and b!8020969 res!3171507) b!8020970))

(assert (= (and b!8020970 res!3171508) b!8020971))

(assert (= (and d!2391741 (not res!3171509)) b!8020972))

(declare-fun m!8383862 () Bool)

(assert (=> b!8020972 m!8383862))

(declare-fun m!8383864 () Bool)

(assert (=> b!8020972 m!8383864))

(declare-fun m!8383866 () Bool)

(assert (=> b!8020970 m!8383866))

(declare-fun m!8383868 () Bool)

(assert (=> b!8020970 m!8383868))

(declare-fun m!8383870 () Bool)

(assert (=> b!8020971 m!8383870))

(declare-fun m!8383872 () Bool)

(assert (=> b!8020971 m!8383872))

(assert (=> b!8020971 m!8383870))

(assert (=> b!8020971 m!8383872))

(declare-fun m!8383874 () Bool)

(assert (=> b!8020971 m!8383874))

(assert (=> b!8020931 d!2391741))

(declare-fun d!2391745 () Bool)

(assert (=> d!2391745 (= (tail!15939 l!3353) (t!390732 l!3353))))

(assert (=> b!8020931 d!2391745))

(declare-fun d!2391747 () Bool)

(declare-fun e!4724992 () Bool)

(assert (=> d!2391747 e!4724992))

(declare-fun res!3171513 () Bool)

(assert (=> d!2391747 (=> res!3171513 e!4724992)))

(declare-fun lt!2719917 () Bool)

(assert (=> d!2391747 (= res!3171513 (not lt!2719917))))

(declare-fun e!4724991 () Bool)

(assert (=> d!2391747 (= lt!2719917 e!4724991)))

(declare-fun res!3171514 () Bool)

(assert (=> d!2391747 (=> res!3171514 e!4724991)))

(assert (=> d!2391747 (= res!3171514 (is-Nil!74865 (tail!15939 p2!173)))))

(assert (=> d!2391747 (= (isPrefix!6796 (tail!15939 p2!173) lt!2719910) lt!2719917)))

(declare-fun b!8020976 () Bool)

(assert (=> b!8020976 (= e!4724992 (>= (size!43650 lt!2719910) (size!43650 (tail!15939 p2!173))))))

(declare-fun b!8020974 () Bool)

(declare-fun res!3171512 () Bool)

(declare-fun e!4724993 () Bool)

(assert (=> b!8020974 (=> (not res!3171512) (not e!4724993))))

(assert (=> b!8020974 (= res!3171512 (= (head!16404 (tail!15939 p2!173)) (head!16404 lt!2719910)))))

(declare-fun b!8020973 () Bool)

(assert (=> b!8020973 (= e!4724991 e!4724993)))

(declare-fun res!3171511 () Bool)

(assert (=> b!8020973 (=> (not res!3171511) (not e!4724993))))

(assert (=> b!8020973 (= res!3171511 (not (is-Nil!74865 lt!2719910)))))

(declare-fun b!8020975 () Bool)

(assert (=> b!8020975 (= e!4724993 (isPrefix!6796 (tail!15939 (tail!15939 p2!173)) (tail!15939 lt!2719910)))))

(assert (= (and d!2391747 (not res!3171514)) b!8020973))

(assert (= (and b!8020973 res!3171511) b!8020974))

(assert (= (and b!8020974 res!3171512) b!8020975))

(assert (= (and d!2391747 (not res!3171513)) b!8020976))

(assert (=> b!8020976 m!8383862))

(assert (=> b!8020976 m!8383842))

(declare-fun m!8383876 () Bool)

(assert (=> b!8020976 m!8383876))

(assert (=> b!8020974 m!8383842))

(declare-fun m!8383878 () Bool)

(assert (=> b!8020974 m!8383878))

(assert (=> b!8020974 m!8383868))

(assert (=> b!8020975 m!8383842))

(declare-fun m!8383880 () Bool)

(assert (=> b!8020975 m!8383880))

(assert (=> b!8020975 m!8383872))

(assert (=> b!8020975 m!8383880))

(assert (=> b!8020975 m!8383872))

(declare-fun m!8383882 () Bool)

(assert (=> b!8020975 m!8383882))

(assert (=> b!8020936 d!2391747))

(declare-fun d!2391749 () Bool)

(assert (=> d!2391749 (= (tail!15939 p2!173) (t!390732 p2!173))))

(assert (=> b!8020936 d!2391749))

(declare-fun d!2391751 () Bool)

(declare-fun lt!2719922 () Int)

(assert (=> d!2391751 (>= lt!2719922 0)))

(declare-fun e!4724998 () Int)

(assert (=> d!2391751 (= lt!2719922 e!4724998)))

(declare-fun c!1472087 () Bool)

(assert (=> d!2391751 (= c!1472087 (is-Nil!74865 p1!173))))

(assert (=> d!2391751 (= (size!43650 p1!173) lt!2719922)))

(declare-fun b!8020983 () Bool)

(assert (=> b!8020983 (= e!4724998 0)))

(declare-fun b!8020984 () Bool)

(assert (=> b!8020984 (= e!4724998 (+ 1 (size!43650 (t!390732 p1!173))))))

(assert (= (and d!2391751 c!1472087) b!8020983))

(assert (= (and d!2391751 (not c!1472087)) b!8020984))

(assert (=> b!8020984 m!8383864))

(assert (=> b!8020933 d!2391751))

(declare-fun d!2391753 () Bool)

(declare-fun lt!2719923 () Int)

(assert (=> d!2391753 (>= lt!2719923 0)))

(declare-fun e!4725001 () Int)

(assert (=> d!2391753 (= lt!2719923 e!4725001)))

(declare-fun c!1472088 () Bool)

(assert (=> d!2391753 (= c!1472088 (is-Nil!74865 p2!173))))

(assert (=> d!2391753 (= (size!43650 p2!173) lt!2719923)))

(declare-fun b!8020989 () Bool)

(assert (=> b!8020989 (= e!4725001 0)))

(declare-fun b!8020990 () Bool)

(assert (=> b!8020990 (= e!4725001 (+ 1 (size!43650 (t!390732 p2!173))))))

(assert (= (and d!2391753 c!1472088) b!8020989))

(assert (= (and d!2391753 (not c!1472088)) b!8020990))

(declare-fun m!8383884 () Bool)

(assert (=> b!8020990 m!8383884))

(assert (=> b!8020933 d!2391753))

(declare-fun d!2391755 () Bool)

(declare-fun e!4725005 () Bool)

(assert (=> d!2391755 e!4725005))

(declare-fun res!3171525 () Bool)

(assert (=> d!2391755 (=> res!3171525 e!4725005)))

(declare-fun lt!2719924 () Bool)

(assert (=> d!2391755 (= res!3171525 (not lt!2719924))))

(declare-fun e!4725004 () Bool)

(assert (=> d!2391755 (= lt!2719924 e!4725004)))

(declare-fun res!3171526 () Bool)

(assert (=> d!2391755 (=> res!3171526 e!4725004)))

(assert (=> d!2391755 (= res!3171526 (is-Nil!74865 p2!173))))

(assert (=> d!2391755 (= (isPrefix!6796 p2!173 l!3353) lt!2719924)))

(declare-fun b!8020996 () Bool)

(assert (=> b!8020996 (= e!4725005 (>= (size!43650 l!3353) (size!43650 p2!173)))))

(declare-fun b!8020994 () Bool)

(declare-fun res!3171524 () Bool)

(declare-fun e!4725006 () Bool)

(assert (=> b!8020994 (=> (not res!3171524) (not e!4725006))))

(assert (=> b!8020994 (= res!3171524 (= (head!16404 p2!173) (head!16404 l!3353)))))

(declare-fun b!8020993 () Bool)

(assert (=> b!8020993 (= e!4725004 e!4725006)))

(declare-fun res!3171523 () Bool)

(assert (=> b!8020993 (=> (not res!3171523) (not e!4725006))))

(assert (=> b!8020993 (= res!3171523 (not (is-Nil!74865 l!3353)))))

(declare-fun b!8020995 () Bool)

(assert (=> b!8020995 (= e!4725006 (isPrefix!6796 (tail!15939 p2!173) (tail!15939 l!3353)))))

(assert (= (and d!2391755 (not res!3171526)) b!8020993))

(assert (= (and b!8020993 res!3171523) b!8020994))

(assert (= (and b!8020994 res!3171524) b!8020995))

(assert (= (and d!2391755 (not res!3171525)) b!8020996))

(declare-fun m!8383886 () Bool)

(assert (=> b!8020996 m!8383886))

(assert (=> b!8020996 m!8383838))

(declare-fun m!8383888 () Bool)

(assert (=> b!8020994 m!8383888))

(declare-fun m!8383890 () Bool)

(assert (=> b!8020994 m!8383890))

(assert (=> b!8020995 m!8383842))

(assert (=> b!8020995 m!8383834))

(assert (=> b!8020995 m!8383842))

(assert (=> b!8020995 m!8383834))

(declare-fun m!8383892 () Bool)

(assert (=> b!8020995 m!8383892))

(assert (=> b!8020932 d!2391755))

(declare-fun d!2391757 () Bool)

(declare-fun e!4725008 () Bool)

(assert (=> d!2391757 e!4725008))

(declare-fun res!3171529 () Bool)

(assert (=> d!2391757 (=> res!3171529 e!4725008)))

(declare-fun lt!2719925 () Bool)

(assert (=> d!2391757 (= res!3171529 (not lt!2719925))))

(declare-fun e!4725007 () Bool)

(assert (=> d!2391757 (= lt!2719925 e!4725007)))

(declare-fun res!3171530 () Bool)

(assert (=> d!2391757 (=> res!3171530 e!4725007)))

(assert (=> d!2391757 (= res!3171530 (is-Nil!74865 p1!173))))

(assert (=> d!2391757 (= (isPrefix!6796 p1!173 l!3353) lt!2719925)))

(declare-fun b!8021000 () Bool)

(assert (=> b!8021000 (= e!4725008 (>= (size!43650 l!3353) (size!43650 p1!173)))))

(declare-fun b!8020998 () Bool)

(declare-fun res!3171528 () Bool)

(declare-fun e!4725009 () Bool)

(assert (=> b!8020998 (=> (not res!3171528) (not e!4725009))))

(assert (=> b!8020998 (= res!3171528 (= (head!16404 p1!173) (head!16404 l!3353)))))

(declare-fun b!8020997 () Bool)

(assert (=> b!8020997 (= e!4725007 e!4725009)))

(declare-fun res!3171527 () Bool)

(assert (=> b!8020997 (=> (not res!3171527) (not e!4725009))))

(assert (=> b!8020997 (= res!3171527 (not (is-Nil!74865 l!3353)))))

(declare-fun b!8020999 () Bool)

(assert (=> b!8020999 (= e!4725009 (isPrefix!6796 (tail!15939 p1!173) (tail!15939 l!3353)))))

(assert (= (and d!2391757 (not res!3171530)) b!8020997))

(assert (= (and b!8020997 res!3171527) b!8020998))

(assert (= (and b!8020998 res!3171528) b!8020999))

(assert (= (and d!2391757 (not res!3171529)) b!8021000))

(assert (=> b!8021000 m!8383886))

(assert (=> b!8021000 m!8383836))

(declare-fun m!8383894 () Bool)

(assert (=> b!8020998 m!8383894))

(assert (=> b!8020998 m!8383890))

(declare-fun m!8383896 () Bool)

(assert (=> b!8020999 m!8383896))

(assert (=> b!8020999 m!8383834))

(assert (=> b!8020999 m!8383896))

(assert (=> b!8020999 m!8383834))

(declare-fun m!8383898 () Bool)

(assert (=> b!8020999 m!8383898))

(assert (=> start!755014 d!2391757))

(declare-fun b!8021005 () Bool)

(declare-fun e!4725012 () Bool)

(declare-fun tp!2400629 () Bool)

(assert (=> b!8021005 (= e!4725012 (and tp_is_empty!54063 tp!2400629))))

(assert (=> b!8020930 (= tp!2400615 e!4725012)))

(assert (= (and b!8020930 (is-Cons!74865 (t!390732 p1!173))) b!8021005))

(declare-fun b!8021006 () Bool)

(declare-fun e!4725013 () Bool)

(declare-fun tp!2400630 () Bool)

(assert (=> b!8021006 (= e!4725013 (and tp_is_empty!54063 tp!2400630))))

(assert (=> b!8020929 (= tp!2400617 e!4725013)))

(assert (= (and b!8020929 (is-Cons!74865 (t!390732 p2!173))) b!8021006))

(declare-fun b!8021007 () Bool)

(declare-fun e!4725014 () Bool)

(declare-fun tp!2400631 () Bool)

(assert (=> b!8021007 (= e!4725014 (and tp_is_empty!54063 tp!2400631))))

(assert (=> b!8020934 (= tp!2400616 e!4725014)))

(assert (= (and b!8020934 (is-Cons!74865 (t!390732 l!3353))) b!8021007))

(push 1)

(assert (not b!8020970))

(assert (not b!8020990))

(assert (not b!8020971))

(assert (not b!8021006))

(assert (not b!8020974))

(assert (not b!8021007))

(assert (not b!8020995))

(assert (not b!8020976))

(assert (not b!8021000))

(assert tp_is_empty!54063)

(assert (not b!8020994))

(assert (not b!8020972))

(assert (not b!8020998))

(assert (not b!8020984))

(assert (not b!8021005))

(assert (not b!8020999))

(assert (not b!8020975))

(assert (not b!8020996))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2391773 () Bool)

(declare-fun lt!2719934 () Int)

(assert (=> d!2391773 (>= lt!2719934 0)))

(declare-fun e!4725036 () Int)

(assert (=> d!2391773 (= lt!2719934 e!4725036)))

(declare-fun c!1472093 () Bool)

(assert (=> d!2391773 (= c!1472093 (is-Nil!74865 lt!2719910))))

(assert (=> d!2391773 (= (size!43650 lt!2719910) lt!2719934)))

(declare-fun b!8021039 () Bool)

(assert (=> b!8021039 (= e!4725036 0)))

(declare-fun b!8021040 () Bool)

(assert (=> b!8021040 (= e!4725036 (+ 1 (size!43650 (t!390732 lt!2719910))))))

(assert (= (and d!2391773 c!1472093) b!8021039))

(assert (= (and d!2391773 (not c!1472093)) b!8021040))

(declare-fun m!8383938 () Bool)

(assert (=> b!8021040 m!8383938))

(assert (=> b!8020976 d!2391773))

(declare-fun d!2391775 () Bool)

(declare-fun lt!2719935 () Int)

(assert (=> d!2391775 (>= lt!2719935 0)))

(declare-fun e!4725037 () Int)

(assert (=> d!2391775 (= lt!2719935 e!4725037)))

(declare-fun c!1472094 () Bool)

(assert (=> d!2391775 (= c!1472094 (is-Nil!74865 (tail!15939 p2!173)))))

(assert (=> d!2391775 (= (size!43650 (tail!15939 p2!173)) lt!2719935)))

(declare-fun b!8021041 () Bool)

(assert (=> b!8021041 (= e!4725037 0)))

(declare-fun b!8021042 () Bool)

(assert (=> b!8021042 (= e!4725037 (+ 1 (size!43650 (t!390732 (tail!15939 p2!173)))))))

(assert (= (and d!2391775 c!1472094) b!8021041))

(assert (= (and d!2391775 (not c!1472094)) b!8021042))

(declare-fun m!8383940 () Bool)

(assert (=> b!8021042 m!8383940))

(assert (=> b!8020976 d!2391775))

(declare-fun d!2391777 () Bool)

(assert (=> d!2391777 (= (head!16404 p1!173) (h!81313 p1!173))))

(assert (=> b!8020998 d!2391777))

(declare-fun d!2391779 () Bool)

(assert (=> d!2391779 (= (head!16404 l!3353) (h!81313 l!3353))))

(assert (=> b!8020998 d!2391779))

(declare-fun d!2391781 () Bool)

(assert (=> d!2391781 (= (head!16404 p2!173) (h!81313 p2!173))))

(assert (=> b!8020994 d!2391781))

(assert (=> b!8020994 d!2391779))

(declare-fun d!2391783 () Bool)

(assert (=> d!2391783 (= (head!16404 (t!390732 p1!173)) (h!81313 (t!390732 p1!173)))))

(assert (=> b!8020970 d!2391783))

(declare-fun d!2391785 () Bool)

(assert (=> d!2391785 (= (head!16404 lt!2719910) (h!81313 lt!2719910))))

(assert (=> b!8020970 d!2391785))

(declare-fun d!2391787 () Bool)

(declare-fun lt!2719936 () Int)

(assert (=> d!2391787 (>= lt!2719936 0)))

(declare-fun e!4725038 () Int)

(assert (=> d!2391787 (= lt!2719936 e!4725038)))

(declare-fun c!1472095 () Bool)

(assert (=> d!2391787 (= c!1472095 (is-Nil!74865 l!3353))))

(assert (=> d!2391787 (= (size!43650 l!3353) lt!2719936)))

(declare-fun b!8021043 () Bool)

(assert (=> b!8021043 (= e!4725038 0)))

(declare-fun b!8021044 () Bool)

(assert (=> b!8021044 (= e!4725038 (+ 1 (size!43650 (t!390732 l!3353))))))

(assert (= (and d!2391787 c!1472095) b!8021043))

(assert (= (and d!2391787 (not c!1472095)) b!8021044))

(declare-fun m!8383942 () Bool)

(assert (=> b!8021044 m!8383942))

(assert (=> b!8021000 d!2391787))

(assert (=> b!8021000 d!2391751))

(declare-fun d!2391789 () Bool)

(declare-fun e!4725040 () Bool)

(assert (=> d!2391789 e!4725040))

(declare-fun res!3171549 () Bool)

(assert (=> d!2391789 (=> res!3171549 e!4725040)))

(declare-fun lt!2719937 () Bool)

(assert (=> d!2391789 (= res!3171549 (not lt!2719937))))

(declare-fun e!4725039 () Bool)

(assert (=> d!2391789 (= lt!2719937 e!4725039)))

(declare-fun res!3171550 () Bool)

(assert (=> d!2391789 (=> res!3171550 e!4725039)))

(assert (=> d!2391789 (= res!3171550 (is-Nil!74865 (tail!15939 p1!173)))))

(assert (=> d!2391789 (= (isPrefix!6796 (tail!15939 p1!173) (tail!15939 l!3353)) lt!2719937)))

(declare-fun b!8021048 () Bool)

(assert (=> b!8021048 (= e!4725040 (>= (size!43650 (tail!15939 l!3353)) (size!43650 (tail!15939 p1!173))))))

(declare-fun b!8021046 () Bool)

(declare-fun res!3171548 () Bool)

(declare-fun e!4725041 () Bool)

(assert (=> b!8021046 (=> (not res!3171548) (not e!4725041))))

(assert (=> b!8021046 (= res!3171548 (= (head!16404 (tail!15939 p1!173)) (head!16404 (tail!15939 l!3353))))))

(declare-fun b!8021045 () Bool)

(assert (=> b!8021045 (= e!4725039 e!4725041)))

(declare-fun res!3171547 () Bool)

(assert (=> b!8021045 (=> (not res!3171547) (not e!4725041))))

(assert (=> b!8021045 (= res!3171547 (not (is-Nil!74865 (tail!15939 l!3353))))))

(declare-fun b!8021047 () Bool)

(assert (=> b!8021047 (= e!4725041 (isPrefix!6796 (tail!15939 (tail!15939 p1!173)) (tail!15939 (tail!15939 l!3353))))))

(assert (= (and d!2391789 (not res!3171550)) b!8021045))

(assert (= (and b!8021045 res!3171547) b!8021046))

(assert (= (and b!8021046 res!3171548) b!8021047))

(assert (= (and d!2391789 (not res!3171549)) b!8021048))

(assert (=> b!8021048 m!8383834))

(declare-fun m!8383944 () Bool)

(assert (=> b!8021048 m!8383944))

(assert (=> b!8021048 m!8383896))

(declare-fun m!8383946 () Bool)

(assert (=> b!8021048 m!8383946))

(assert (=> b!8021046 m!8383896))

(declare-fun m!8383948 () Bool)

(assert (=> b!8021046 m!8383948))

(assert (=> b!8021046 m!8383834))

(declare-fun m!8383950 () Bool)

(assert (=> b!8021046 m!8383950))

(assert (=> b!8021047 m!8383896))

(declare-fun m!8383952 () Bool)

(assert (=> b!8021047 m!8383952))

(assert (=> b!8021047 m!8383834))

(declare-fun m!8383954 () Bool)

(assert (=> b!8021047 m!8383954))

(assert (=> b!8021047 m!8383952))

(assert (=> b!8021047 m!8383954))

(declare-fun m!8383956 () Bool)

(assert (=> b!8021047 m!8383956))

(assert (=> b!8020999 d!2391789))

(declare-fun d!2391791 () Bool)

(assert (=> d!2391791 (= (tail!15939 p1!173) (t!390732 p1!173))))

(assert (=> b!8020999 d!2391791))

(assert (=> b!8020999 d!2391745))

(assert (=> b!8020996 d!2391787))

(assert (=> b!8020996 d!2391753))

(declare-fun d!2391793 () Bool)

(declare-fun e!4725043 () Bool)

(assert (=> d!2391793 e!4725043))

(declare-fun res!3171553 () Bool)

(assert (=> d!2391793 (=> res!3171553 e!4725043)))

(declare-fun lt!2719938 () Bool)

(assert (=> d!2391793 (= res!3171553 (not lt!2719938))))

(declare-fun e!4725042 () Bool)

(assert (=> d!2391793 (= lt!2719938 e!4725042)))

(declare-fun res!3171554 () Bool)

(assert (=> d!2391793 (=> res!3171554 e!4725042)))

(assert (=> d!2391793 (= res!3171554 (is-Nil!74865 (tail!15939 p2!173)))))

(assert (=> d!2391793 (= (isPrefix!6796 (tail!15939 p2!173) (tail!15939 l!3353)) lt!2719938)))

(declare-fun b!8021052 () Bool)

(assert (=> b!8021052 (= e!4725043 (>= (size!43650 (tail!15939 l!3353)) (size!43650 (tail!15939 p2!173))))))

(declare-fun b!8021050 () Bool)

(declare-fun res!3171552 () Bool)

(declare-fun e!4725044 () Bool)

(assert (=> b!8021050 (=> (not res!3171552) (not e!4725044))))

(assert (=> b!8021050 (= res!3171552 (= (head!16404 (tail!15939 p2!173)) (head!16404 (tail!15939 l!3353))))))

(declare-fun b!8021049 () Bool)

(assert (=> b!8021049 (= e!4725042 e!4725044)))

(declare-fun res!3171551 () Bool)

(assert (=> b!8021049 (=> (not res!3171551) (not e!4725044))))

(assert (=> b!8021049 (= res!3171551 (not (is-Nil!74865 (tail!15939 l!3353))))))

(declare-fun b!8021051 () Bool)

(assert (=> b!8021051 (= e!4725044 (isPrefix!6796 (tail!15939 (tail!15939 p2!173)) (tail!15939 (tail!15939 l!3353))))))

(assert (= (and d!2391793 (not res!3171554)) b!8021049))

(assert (= (and b!8021049 res!3171551) b!8021050))

(assert (= (and b!8021050 res!3171552) b!8021051))

(assert (= (and d!2391793 (not res!3171553)) b!8021052))

(assert (=> b!8021052 m!8383834))

(assert (=> b!8021052 m!8383944))

(assert (=> b!8021052 m!8383842))

(assert (=> b!8021052 m!8383876))

(assert (=> b!8021050 m!8383842))

(assert (=> b!8021050 m!8383878))

(assert (=> b!8021050 m!8383834))

(assert (=> b!8021050 m!8383950))

(assert (=> b!8021051 m!8383842))

(assert (=> b!8021051 m!8383880))

(assert (=> b!8021051 m!8383834))

(assert (=> b!8021051 m!8383954))

(assert (=> b!8021051 m!8383880))

(assert (=> b!8021051 m!8383954))

(declare-fun m!8383958 () Bool)

(assert (=> b!8021051 m!8383958))

(assert (=> b!8020995 d!2391793))

(assert (=> b!8020995 d!2391749))

(assert (=> b!8020995 d!2391745))

(declare-fun d!2391795 () Bool)

(declare-fun lt!2719939 () Int)

(assert (=> d!2391795 (>= lt!2719939 0)))

(declare-fun e!4725045 () Int)

(assert (=> d!2391795 (= lt!2719939 e!4725045)))

(declare-fun c!1472096 () Bool)

(assert (=> d!2391795 (= c!1472096 (is-Nil!74865 (t!390732 p2!173)))))

(assert (=> d!2391795 (= (size!43650 (t!390732 p2!173)) lt!2719939)))

(declare-fun b!8021053 () Bool)

(assert (=> b!8021053 (= e!4725045 0)))

(declare-fun b!8021054 () Bool)

(assert (=> b!8021054 (= e!4725045 (+ 1 (size!43650 (t!390732 (t!390732 p2!173)))))))

(assert (= (and d!2391795 c!1472096) b!8021053))

(assert (= (and d!2391795 (not c!1472096)) b!8021054))

(declare-fun m!8383960 () Bool)

(assert (=> b!8021054 m!8383960))

(assert (=> b!8020990 d!2391795))

(declare-fun d!2391797 () Bool)

(declare-fun lt!2719940 () Int)

(assert (=> d!2391797 (>= lt!2719940 0)))

(declare-fun e!4725046 () Int)

(assert (=> d!2391797 (= lt!2719940 e!4725046)))

(declare-fun c!1472097 () Bool)

(assert (=> d!2391797 (= c!1472097 (is-Nil!74865 (t!390732 p1!173)))))

(assert (=> d!2391797 (= (size!43650 (t!390732 p1!173)) lt!2719940)))

(declare-fun b!8021055 () Bool)

(assert (=> b!8021055 (= e!4725046 0)))

(declare-fun b!8021056 () Bool)

(assert (=> b!8021056 (= e!4725046 (+ 1 (size!43650 (t!390732 (t!390732 p1!173)))))))

(assert (= (and d!2391797 c!1472097) b!8021055))

(assert (= (and d!2391797 (not c!1472097)) b!8021056))

(declare-fun m!8383962 () Bool)

(assert (=> b!8021056 m!8383962))

(assert (=> b!8020984 d!2391797))

(assert (=> b!8020972 d!2391773))

(assert (=> b!8020972 d!2391797))

(declare-fun d!2391799 () Bool)

(declare-fun e!4725048 () Bool)

(assert (=> d!2391799 e!4725048))

(declare-fun res!3171557 () Bool)

(assert (=> d!2391799 (=> res!3171557 e!4725048)))

(declare-fun lt!2719941 () Bool)

(assert (=> d!2391799 (= res!3171557 (not lt!2719941))))

(declare-fun e!4725047 () Bool)

(assert (=> d!2391799 (= lt!2719941 e!4725047)))

(declare-fun res!3171558 () Bool)

(assert (=> d!2391799 (=> res!3171558 e!4725047)))

(assert (=> d!2391799 (= res!3171558 (is-Nil!74865 (tail!15939 (tail!15939 p2!173))))))

(assert (=> d!2391799 (= (isPrefix!6796 (tail!15939 (tail!15939 p2!173)) (tail!15939 lt!2719910)) lt!2719941)))

(declare-fun b!8021060 () Bool)

(assert (=> b!8021060 (= e!4725048 (>= (size!43650 (tail!15939 lt!2719910)) (size!43650 (tail!15939 (tail!15939 p2!173)))))))

(declare-fun b!8021058 () Bool)

(declare-fun res!3171556 () Bool)

(declare-fun e!4725049 () Bool)

(assert (=> b!8021058 (=> (not res!3171556) (not e!4725049))))

(assert (=> b!8021058 (= res!3171556 (= (head!16404 (tail!15939 (tail!15939 p2!173))) (head!16404 (tail!15939 lt!2719910))))))

(declare-fun b!8021057 () Bool)

(assert (=> b!8021057 (= e!4725047 e!4725049)))

(declare-fun res!3171555 () Bool)

(assert (=> b!8021057 (=> (not res!3171555) (not e!4725049))))

(assert (=> b!8021057 (= res!3171555 (not (is-Nil!74865 (tail!15939 lt!2719910))))))

(declare-fun b!8021059 () Bool)

(assert (=> b!8021059 (= e!4725049 (isPrefix!6796 (tail!15939 (tail!15939 (tail!15939 p2!173))) (tail!15939 (tail!15939 lt!2719910))))))

(assert (= (and d!2391799 (not res!3171558)) b!8021057))

(assert (= (and b!8021057 res!3171555) b!8021058))

(assert (= (and b!8021058 res!3171556) b!8021059))

(assert (= (and d!2391799 (not res!3171557)) b!8021060))

(assert (=> b!8021060 m!8383872))

(declare-fun m!8383964 () Bool)

(assert (=> b!8021060 m!8383964))

(assert (=> b!8021060 m!8383880))

(declare-fun m!8383966 () Bool)

(assert (=> b!8021060 m!8383966))

(assert (=> b!8021058 m!8383880))

(declare-fun m!8383968 () Bool)

(assert (=> b!8021058 m!8383968))

(assert (=> b!8021058 m!8383872))

(declare-fun m!8383970 () Bool)

(assert (=> b!8021058 m!8383970))

(assert (=> b!8021059 m!8383880))

(declare-fun m!8383972 () Bool)

(assert (=> b!8021059 m!8383972))

(assert (=> b!8021059 m!8383872))

(declare-fun m!8383974 () Bool)

(assert (=> b!8021059 m!8383974))

(assert (=> b!8021059 m!8383972))

(assert (=> b!8021059 m!8383974))

(declare-fun m!8383976 () Bool)

(assert (=> b!8021059 m!8383976))

(assert (=> b!8020975 d!2391799))

(declare-fun d!2391801 () Bool)

(assert (=> d!2391801 (= (tail!15939 (tail!15939 p2!173)) (t!390732 (tail!15939 p2!173)))))

(assert (=> b!8020975 d!2391801))

(declare-fun d!2391803 () Bool)

(assert (=> d!2391803 (= (tail!15939 lt!2719910) (t!390732 lt!2719910))))

(assert (=> b!8020975 d!2391803))

(declare-fun d!2391805 () Bool)

(assert (=> d!2391805 (= (head!16404 (tail!15939 p2!173)) (h!81313 (tail!15939 p2!173)))))

(assert (=> b!8020974 d!2391805))

(assert (=> b!8020974 d!2391785))

(declare-fun d!2391807 () Bool)

(declare-fun e!4725051 () Bool)

(assert (=> d!2391807 e!4725051))

(declare-fun res!3171561 () Bool)

(assert (=> d!2391807 (=> res!3171561 e!4725051)))

(declare-fun lt!2719942 () Bool)

(assert (=> d!2391807 (= res!3171561 (not lt!2719942))))

(declare-fun e!4725050 () Bool)

(assert (=> d!2391807 (= lt!2719942 e!4725050)))

(declare-fun res!3171562 () Bool)

(assert (=> d!2391807 (=> res!3171562 e!4725050)))

(assert (=> d!2391807 (= res!3171562 (is-Nil!74865 (tail!15939 (t!390732 p1!173))))))

(assert (=> d!2391807 (= (isPrefix!6796 (tail!15939 (t!390732 p1!173)) (tail!15939 lt!2719910)) lt!2719942)))

(declare-fun b!8021064 () Bool)

(assert (=> b!8021064 (= e!4725051 (>= (size!43650 (tail!15939 lt!2719910)) (size!43650 (tail!15939 (t!390732 p1!173)))))))

(declare-fun b!8021062 () Bool)

(declare-fun res!3171560 () Bool)

(declare-fun e!4725052 () Bool)

(assert (=> b!8021062 (=> (not res!3171560) (not e!4725052))))

(assert (=> b!8021062 (= res!3171560 (= (head!16404 (tail!15939 (t!390732 p1!173))) (head!16404 (tail!15939 lt!2719910))))))

(declare-fun b!8021061 () Bool)

(assert (=> b!8021061 (= e!4725050 e!4725052)))

(declare-fun res!3171559 () Bool)

(assert (=> b!8021061 (=> (not res!3171559) (not e!4725052))))

(assert (=> b!8021061 (= res!3171559 (not (is-Nil!74865 (tail!15939 lt!2719910))))))

(declare-fun b!8021063 () Bool)

(assert (=> b!8021063 (= e!4725052 (isPrefix!6796 (tail!15939 (tail!15939 (t!390732 p1!173))) (tail!15939 (tail!15939 lt!2719910))))))

(assert (= (and d!2391807 (not res!3171562)) b!8021061))

(assert (= (and b!8021061 res!3171559) b!8021062))

(assert (= (and b!8021062 res!3171560) b!8021063))

(assert (= (and d!2391807 (not res!3171561)) b!8021064))

(assert (=> b!8021064 m!8383872))

(assert (=> b!8021064 m!8383964))

(assert (=> b!8021064 m!8383870))

(declare-fun m!8383978 () Bool)

(assert (=> b!8021064 m!8383978))

(assert (=> b!8021062 m!8383870))

(declare-fun m!8383980 () Bool)

(assert (=> b!8021062 m!8383980))

(assert (=> b!8021062 m!8383872))

(assert (=> b!8021062 m!8383970))

(assert (=> b!8021063 m!8383870))

(declare-fun m!8383982 () Bool)

(assert (=> b!8021063 m!8383982))

(assert (=> b!8021063 m!8383872))

(assert (=> b!8021063 m!8383974))

(assert (=> b!8021063 m!8383982))

(assert (=> b!8021063 m!8383974))

(declare-fun m!8383984 () Bool)

(assert (=> b!8021063 m!8383984))

(assert (=> b!8020971 d!2391807))

(declare-fun d!2391809 () Bool)

(assert (=> d!2391809 (= (tail!15939 (t!390732 p1!173)) (t!390732 (t!390732 p1!173)))))

(assert (=> b!8020971 d!2391809))

(assert (=> b!8020971 d!2391803))

(declare-fun b!8021065 () Bool)

(declare-fun e!4725053 () Bool)

(declare-fun tp!2400637 () Bool)

(assert (=> b!8021065 (= e!4725053 (and tp_is_empty!54063 tp!2400637))))

(assert (=> b!8021007 (= tp!2400631 e!4725053)))

(assert (= (and b!8021007 (is-Cons!74865 (t!390732 (t!390732 l!3353)))) b!8021065))

(declare-fun b!8021066 () Bool)

(declare-fun e!4725054 () Bool)

(declare-fun tp!2400638 () Bool)

(assert (=> b!8021066 (= e!4725054 (and tp_is_empty!54063 tp!2400638))))

(assert (=> b!8021005 (= tp!2400629 e!4725054)))

(assert (= (and b!8021005 (is-Cons!74865 (t!390732 (t!390732 p1!173)))) b!8021066))

(declare-fun b!8021067 () Bool)

(declare-fun e!4725055 () Bool)

(declare-fun tp!2400639 () Bool)

(assert (=> b!8021067 (= e!4725055 (and tp_is_empty!54063 tp!2400639))))

(assert (=> b!8021006 (= tp!2400630 e!4725055)))

(assert (= (and b!8021006 (is-Cons!74865 (t!390732 (t!390732 p2!173)))) b!8021067))

(push 1)

(assert tp_is_empty!54063)

(assert (not b!8021056))

(assert (not b!8021050))

(assert (not b!8021054))

(assert (not b!8021067))

(assert (not b!8021058))

(assert (not b!8021060))

(assert (not b!8021042))

(assert (not b!8021062))

(assert (not b!8021047))

(assert (not b!8021065))

(assert (not b!8021048))

(assert (not b!8021046))

(assert (not b!8021059))

(assert (not b!8021066))

(assert (not b!8021063))

(assert (not b!8021064))

(assert (not b!8021044))

(assert (not b!8021040))

(assert (not b!8021051))

(assert (not b!8021052))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

