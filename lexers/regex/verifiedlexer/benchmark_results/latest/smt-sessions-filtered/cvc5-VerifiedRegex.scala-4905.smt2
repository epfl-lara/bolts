; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!251154 () Bool)

(assert start!251154)

(declare-fun b!2591855 () Bool)

(assert (=> b!2591855 true))

(declare-fun bs!472281 () Bool)

(declare-fun b!2591850 () Bool)

(assert (= bs!472281 (and b!2591850 b!2591855)))

(declare-datatypes ((B!2039 0))(
  ( (B!2040 (val!9487 Int)) )
))
(declare-datatypes ((List!29920 0))(
  ( (Nil!29820) (Cons!29820 (h!35240 B!2039) (t!212933 List!29920)) )
))
(declare-fun l!3230 () List!29920)

(declare-fun lt!911795 () List!29920)

(declare-fun lambda!96138 () Int)

(declare-fun lambda!96137 () Int)

(assert (=> bs!472281 (= (= l!3230 lt!911795) (= lambda!96138 lambda!96137))))

(assert (=> b!2591850 true))

(declare-fun b!2591848 () Bool)

(declare-fun e!1635091 () Bool)

(declare-fun e!1635092 () Bool)

(assert (=> b!2591848 (= e!1635091 e!1635092)))

(declare-fun res!1089986 () Bool)

(assert (=> b!2591848 (=> res!1089986 e!1635092)))

(declare-fun lt!911791 () Int)

(declare-fun size!23133 (List!29920) Int)

(assert (=> b!2591848 (= res!1089986 (not (= (size!23133 l!3230) lt!911791)))))

(declare-fun lt!911796 () Int)

(assert (=> b!2591848 (= lt!911791 (+ 1 lt!911796))))

(declare-fun b!2591849 () Bool)

(declare-fun e!1635089 () Bool)

(declare-fun e!1635090 () Bool)

(assert (=> b!2591849 (= e!1635089 e!1635090)))

(declare-fun res!1089983 () Bool)

(assert (=> b!2591849 (=> res!1089983 e!1635090)))

(declare-fun lt!911784 () B!2039)

(declare-fun contains!5370 (List!29920 B!2039) Bool)

(assert (=> b!2591849 (= res!1089983 (contains!5370 l!3230 lt!911784))))

(declare-fun getWitness!533 (List!29920 Int) B!2039)

(assert (=> b!2591849 (= lt!911784 (getWitness!533 lt!911795 lambda!96138))))

(declare-fun e!1635087 () Bool)

(assert (=> b!2591850 (= e!1635087 e!1635089)))

(declare-fun res!1089980 () Bool)

(assert (=> b!2591850 (=> res!1089980 e!1635089)))

(declare-fun exists!907 (List!29920 Int) Bool)

(assert (=> b!2591850 (= res!1089980 (not (exists!907 lt!911795 lambda!96138)))))

(assert (=> b!2591850 (exists!907 lt!911795 lambda!96138)))

(declare-datatypes ((Unit!43765 0))(
  ( (Unit!43766) )
))
(declare-fun lt!911797 () Unit!43765)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!23 (List!29920 List!29920) Unit!43765)

(assert (=> b!2591850 (= lt!911797 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!23 lt!911795 l!3230))))

(declare-fun lt!911798 () Unit!43765)

(declare-fun subsetContains!49 (List!29920 List!29920) Unit!43765)

(assert (=> b!2591850 (= lt!911798 (subsetContains!49 l!3230 lt!911795))))

(declare-fun b!2591851 () Bool)

(declare-fun e!1635094 () Bool)

(assert (=> b!2591851 (= e!1635094 (not e!1635091))))

(declare-fun res!1089978 () Bool)

(assert (=> b!2591851 (=> res!1089978 e!1635091)))

(declare-fun lt!911787 () Int)

(assert (=> b!2591851 (= res!1089978 (>= lt!911787 (size!23133 l!3230)))))

(assert (=> b!2591851 (= lt!911787 lt!911796)))

(assert (=> b!2591851 (= lt!911796 (size!23133 (t!212933 l!3230)))))

(declare-fun lt!911789 () (Set B!2039))

(declare-fun toList!1771 ((Set B!2039)) List!29920)

(assert (=> b!2591851 (= lt!911787 (size!23133 (toList!1771 lt!911789)))))

(declare-fun content!4161 (List!29920) (Set B!2039))

(assert (=> b!2591851 (= lt!911789 (content!4161 (t!212933 l!3230)))))

(declare-fun lt!911788 () Unit!43765)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!61 (List!29920) Unit!43765)

(assert (=> b!2591851 (= lt!911788 (lemmaNoDuplicateThenContentToListSameSize!61 (t!212933 l!3230)))))

(declare-fun b!2591852 () Bool)

(declare-fun e!1635093 () Bool)

(declare-fun tp_is_empty!13319 () Bool)

(declare-fun tp!822725 () Bool)

(assert (=> b!2591852 (= e!1635093 (and tp_is_empty!13319 tp!822725))))

(declare-fun b!2591853 () Bool)

(declare-fun res!1089985 () Bool)

(assert (=> b!2591853 (=> res!1089985 e!1635091)))

(assert (=> b!2591853 (= res!1089985 (set.member (h!35240 l!3230) lt!911789))))

(declare-fun res!1089981 () Bool)

(assert (=> start!251154 (=> (not res!1089981) (not e!1635094))))

(declare-fun noDuplicate!368 (List!29920) Bool)

(assert (=> start!251154 (= res!1089981 (noDuplicate!368 l!3230))))

(assert (=> start!251154 e!1635094))

(assert (=> start!251154 e!1635093))

(declare-fun b!2591854 () Bool)

(declare-fun res!1089976 () Bool)

(assert (=> b!2591854 (=> (not res!1089976) (not e!1635094))))

(assert (=> b!2591854 (= res!1089976 (is-Cons!29820 l!3230))))

(declare-fun e!1635088 () Unit!43765)

(declare-fun Unit!43767 () Unit!43765)

(assert (=> b!2591855 (= e!1635088 Unit!43767)))

(declare-fun lt!911790 () Unit!43765)

(assert (=> b!2591855 (= lt!911790 (subsetContains!49 lt!911795 l!3230))))

(declare-fun lt!911785 () Unit!43765)

(assert (=> b!2591855 (= lt!911785 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!23 l!3230 lt!911795))))

(assert (=> b!2591855 (exists!907 l!3230 lambda!96137)))

(declare-fun lt!911786 () B!2039)

(assert (=> b!2591855 (= lt!911786 (getWitness!533 l!3230 lambda!96137))))

(assert (=> b!2591855 false))

(declare-fun b!2591856 () Bool)

(declare-fun e!1635086 () Bool)

(assert (=> b!2591856 (= e!1635086 e!1635087)))

(declare-fun res!1089984 () Bool)

(assert (=> b!2591856 (=> res!1089984 e!1635087)))

(declare-fun lt!911792 () Int)

(assert (=> b!2591856 (= res!1089984 (<= lt!911792 lt!911791))))

(declare-fun lt!911794 () Unit!43765)

(assert (=> b!2591856 (= lt!911794 e!1635088)))

(declare-fun c!417823 () Bool)

(assert (=> b!2591856 (= c!417823 (< lt!911792 lt!911791))))

(assert (=> b!2591856 (= lt!911792 (size!23133 lt!911795))))

(declare-fun lt!911793 () (Set B!2039))

(assert (=> b!2591856 (= lt!911795 (toList!1771 lt!911793))))

(declare-fun b!2591857 () Bool)

(assert (=> b!2591857 (= e!1635092 e!1635086)))

(declare-fun res!1089982 () Bool)

(assert (=> b!2591857 (=> res!1089982 e!1635086)))

(assert (=> b!2591857 (= res!1089982 (not (= (content!4161 l!3230) lt!911793)))))

(assert (=> b!2591857 (= lt!911793 (set.union lt!911789 (set.insert (h!35240 l!3230) (as set.empty (Set B!2039)))))))

(declare-fun b!2591858 () Bool)

(declare-fun res!1089979 () Bool)

(assert (=> b!2591858 (=> res!1089979 e!1635087)))

(assert (=> b!2591858 (= res!1089979 (not (= lt!911793 (content!4161 l!3230))))))

(declare-fun b!2591859 () Bool)

(assert (=> b!2591859 (= e!1635090 (contains!5370 lt!911795 lt!911784))))

(declare-fun b!2591860 () Bool)

(declare-fun Unit!43768 () Unit!43765)

(assert (=> b!2591860 (= e!1635088 Unit!43768)))

(declare-fun b!2591861 () Bool)

(declare-fun res!1089977 () Bool)

(assert (=> b!2591861 (=> res!1089977 e!1635091)))

(assert (=> b!2591861 (= res!1089977 (contains!5370 (t!212933 l!3230) (h!35240 l!3230)))))

(assert (= (and start!251154 res!1089981) b!2591854))

(assert (= (and b!2591854 res!1089976) b!2591851))

(assert (= (and b!2591851 (not res!1089978)) b!2591853))

(assert (= (and b!2591853 (not res!1089985)) b!2591861))

(assert (= (and b!2591861 (not res!1089977)) b!2591848))

(assert (= (and b!2591848 (not res!1089986)) b!2591857))

(assert (= (and b!2591857 (not res!1089982)) b!2591856))

(assert (= (and b!2591856 c!417823) b!2591855))

(assert (= (and b!2591856 (not c!417823)) b!2591860))

(assert (= (and b!2591856 (not res!1089984)) b!2591858))

(assert (= (and b!2591858 (not res!1089979)) b!2591850))

(assert (= (and b!2591850 (not res!1089980)) b!2591849))

(assert (= (and b!2591849 (not res!1089983)) b!2591859))

(assert (= (and start!251154 (is-Cons!29820 l!3230)) b!2591852))

(declare-fun m!2927921 () Bool)

(assert (=> b!2591859 m!2927921))

(declare-fun m!2927923 () Bool)

(assert (=> b!2591848 m!2927923))

(declare-fun m!2927925 () Bool)

(assert (=> b!2591855 m!2927925))

(declare-fun m!2927927 () Bool)

(assert (=> b!2591855 m!2927927))

(declare-fun m!2927929 () Bool)

(assert (=> b!2591855 m!2927929))

(declare-fun m!2927931 () Bool)

(assert (=> b!2591855 m!2927931))

(declare-fun m!2927933 () Bool)

(assert (=> start!251154 m!2927933))

(declare-fun m!2927935 () Bool)

(assert (=> b!2591856 m!2927935))

(declare-fun m!2927937 () Bool)

(assert (=> b!2591856 m!2927937))

(declare-fun m!2927939 () Bool)

(assert (=> b!2591857 m!2927939))

(declare-fun m!2927941 () Bool)

(assert (=> b!2591857 m!2927941))

(declare-fun m!2927943 () Bool)

(assert (=> b!2591861 m!2927943))

(declare-fun m!2927945 () Bool)

(assert (=> b!2591850 m!2927945))

(assert (=> b!2591850 m!2927945))

(declare-fun m!2927947 () Bool)

(assert (=> b!2591850 m!2927947))

(declare-fun m!2927949 () Bool)

(assert (=> b!2591850 m!2927949))

(assert (=> b!2591851 m!2927923))

(declare-fun m!2927951 () Bool)

(assert (=> b!2591851 m!2927951))

(declare-fun m!2927953 () Bool)

(assert (=> b!2591851 m!2927953))

(declare-fun m!2927955 () Bool)

(assert (=> b!2591851 m!2927955))

(declare-fun m!2927957 () Bool)

(assert (=> b!2591851 m!2927957))

(assert (=> b!2591851 m!2927951))

(declare-fun m!2927959 () Bool)

(assert (=> b!2591851 m!2927959))

(assert (=> b!2591858 m!2927939))

(declare-fun m!2927961 () Bool)

(assert (=> b!2591849 m!2927961))

(declare-fun m!2927963 () Bool)

(assert (=> b!2591849 m!2927963))

(declare-fun m!2927965 () Bool)

(assert (=> b!2591853 m!2927965))

(push 1)

(assert (not b!2591850))

(assert (not start!251154))

(assert (not b!2591855))

(assert (not b!2591861))

(assert (not b!2591858))

(assert tp_is_empty!13319)

(assert (not b!2591851))

(assert (not b!2591849))

(assert (not b!2591852))

(assert (not b!2591856))

(assert (not b!2591859))

(assert (not b!2591857))

(assert (not b!2591848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!734242 () Bool)

(declare-fun c!417829 () Bool)

(assert (=> d!734242 (= c!417829 (is-Nil!29820 l!3230))))

(declare-fun e!1635134 () (Set B!2039))

(assert (=> d!734242 (= (content!4161 l!3230) e!1635134)))

(declare-fun b!2591912 () Bool)

(assert (=> b!2591912 (= e!1635134 (as set.empty (Set B!2039)))))

(declare-fun b!2591913 () Bool)

(assert (=> b!2591913 (= e!1635134 (set.union (set.insert (h!35240 l!3230) (as set.empty (Set B!2039))) (content!4161 (t!212933 l!3230))))))

(assert (= (and d!734242 c!417829) b!2591912))

(assert (= (and d!734242 (not c!417829)) b!2591913))

(assert (=> b!2591913 m!2927941))

(assert (=> b!2591913 m!2927955))

(assert (=> b!2591857 d!734242))

(declare-fun d!734246 () Bool)

(declare-fun lt!911846 () Int)

(assert (=> d!734246 (>= lt!911846 0)))

(declare-fun e!1635137 () Int)

(assert (=> d!734246 (= lt!911846 e!1635137)))

(declare-fun c!417832 () Bool)

(assert (=> d!734246 (= c!417832 (is-Nil!29820 l!3230))))

(assert (=> d!734246 (= (size!23133 l!3230) lt!911846)))

(declare-fun b!2591918 () Bool)

(assert (=> b!2591918 (= e!1635137 0)))

(declare-fun b!2591919 () Bool)

(assert (=> b!2591919 (= e!1635137 (+ 1 (size!23133 (t!212933 l!3230))))))

(assert (= (and d!734246 c!417832) b!2591918))

(assert (= (and d!734246 (not c!417832)) b!2591919))

(assert (=> b!2591919 m!2927953))

(assert (=> b!2591851 d!734246))

(declare-fun d!734248 () Bool)

(declare-fun lt!911847 () Int)

(assert (=> d!734248 (>= lt!911847 0)))

(declare-fun e!1635140 () Int)

(assert (=> d!734248 (= lt!911847 e!1635140)))

(declare-fun c!417835 () Bool)

(assert (=> d!734248 (= c!417835 (is-Nil!29820 (toList!1771 lt!911789)))))

(assert (=> d!734248 (= (size!23133 (toList!1771 lt!911789)) lt!911847)))

(declare-fun b!2591924 () Bool)

(assert (=> b!2591924 (= e!1635140 0)))

(declare-fun b!2591925 () Bool)

(assert (=> b!2591925 (= e!1635140 (+ 1 (size!23133 (t!212933 (toList!1771 lt!911789)))))))

(assert (= (and d!734248 c!417835) b!2591924))

(assert (= (and d!734248 (not c!417835)) b!2591925))

(declare-fun m!2928013 () Bool)

(assert (=> b!2591925 m!2928013))

(assert (=> b!2591851 d!734248))

(declare-fun d!734250 () Bool)

(declare-fun lt!911848 () Int)

(assert (=> d!734250 (>= lt!911848 0)))

(declare-fun e!1635141 () Int)

(assert (=> d!734250 (= lt!911848 e!1635141)))

(declare-fun c!417836 () Bool)

(assert (=> d!734250 (= c!417836 (is-Nil!29820 (t!212933 l!3230)))))

(assert (=> d!734250 (= (size!23133 (t!212933 l!3230)) lt!911848)))

(declare-fun b!2591926 () Bool)

(assert (=> b!2591926 (= e!1635141 0)))

(declare-fun b!2591927 () Bool)

(assert (=> b!2591927 (= e!1635141 (+ 1 (size!23133 (t!212933 (t!212933 l!3230)))))))

(assert (= (and d!734250 c!417836) b!2591926))

(assert (= (and d!734250 (not c!417836)) b!2591927))

(declare-fun m!2928015 () Bool)

(assert (=> b!2591927 m!2928015))

(assert (=> b!2591851 d!734250))

(declare-fun d!734252 () Bool)

(declare-fun c!417837 () Bool)

(assert (=> d!734252 (= c!417837 (is-Nil!29820 (t!212933 l!3230)))))

(declare-fun e!1635142 () (Set B!2039))

(assert (=> d!734252 (= (content!4161 (t!212933 l!3230)) e!1635142)))

(declare-fun b!2591928 () Bool)

(assert (=> b!2591928 (= e!1635142 (as set.empty (Set B!2039)))))

(declare-fun b!2591929 () Bool)

(assert (=> b!2591929 (= e!1635142 (set.union (set.insert (h!35240 (t!212933 l!3230)) (as set.empty (Set B!2039))) (content!4161 (t!212933 (t!212933 l!3230)))))))

(assert (= (and d!734252 c!417837) b!2591928))

(assert (= (and d!734252 (not c!417837)) b!2591929))

(declare-fun m!2928017 () Bool)

(assert (=> b!2591929 m!2928017))

(declare-fun m!2928019 () Bool)

(assert (=> b!2591929 m!2928019))

(assert (=> b!2591851 d!734252))

(declare-fun d!734254 () Bool)

(declare-fun e!1635146 () Bool)

(assert (=> d!734254 e!1635146))

(declare-fun res!1090022 () Bool)

(assert (=> d!734254 (=> (not res!1090022) (not e!1635146))))

(declare-fun lt!911851 () List!29920)

(assert (=> d!734254 (= res!1090022 (noDuplicate!368 lt!911851))))

(declare-fun choose!15322 ((Set B!2039)) List!29920)

(assert (=> d!734254 (= lt!911851 (choose!15322 lt!911789))))

(assert (=> d!734254 (= (toList!1771 lt!911789) lt!911851)))

(declare-fun b!2591934 () Bool)

(assert (=> b!2591934 (= e!1635146 (= (content!4161 lt!911851) lt!911789))))

(assert (= (and d!734254 res!1090022) b!2591934))

(declare-fun m!2928021 () Bool)

(assert (=> d!734254 m!2928021))

(declare-fun m!2928023 () Bool)

(assert (=> d!734254 m!2928023))

(declare-fun m!2928025 () Bool)

(assert (=> b!2591934 m!2928025))

(assert (=> b!2591851 d!734254))

(declare-fun d!734256 () Bool)

(assert (=> d!734256 (= (size!23133 (toList!1771 (content!4161 (t!212933 l!3230)))) (size!23133 (t!212933 l!3230)))))

(declare-fun lt!911854 () Unit!43765)

(declare-fun choose!15323 (List!29920) Unit!43765)

(assert (=> d!734256 (= lt!911854 (choose!15323 (t!212933 l!3230)))))

(assert (=> d!734256 (noDuplicate!368 (t!212933 l!3230))))

(assert (=> d!734256 (= (lemmaNoDuplicateThenContentToListSameSize!61 (t!212933 l!3230)) lt!911854)))

(declare-fun bs!472283 () Bool)

(assert (= bs!472283 d!734256))

(declare-fun m!2928027 () Bool)

(assert (=> bs!472283 m!2928027))

(declare-fun m!2928029 () Bool)

(assert (=> bs!472283 m!2928029))

(declare-fun m!2928031 () Bool)

(assert (=> bs!472283 m!2928031))

(declare-fun m!2928033 () Bool)

(assert (=> bs!472283 m!2928033))

(assert (=> bs!472283 m!2927955))

(assert (=> bs!472283 m!2927953))

(assert (=> bs!472283 m!2927955))

(assert (=> bs!472283 m!2928027))

(assert (=> b!2591851 d!734256))

(declare-fun d!734260 () Bool)

(declare-fun res!1090027 () Bool)

(declare-fun e!1635153 () Bool)

(assert (=> d!734260 (=> res!1090027 e!1635153)))

(assert (=> d!734260 (= res!1090027 (is-Nil!29820 l!3230))))

(assert (=> d!734260 (= (noDuplicate!368 l!3230) e!1635153)))

(declare-fun b!2591943 () Bool)

(declare-fun e!1635154 () Bool)

(assert (=> b!2591943 (= e!1635153 e!1635154)))

(declare-fun res!1090028 () Bool)

(assert (=> b!2591943 (=> (not res!1090028) (not e!1635154))))

(assert (=> b!2591943 (= res!1090028 (not (contains!5370 (t!212933 l!3230) (h!35240 l!3230))))))

(declare-fun b!2591944 () Bool)

(assert (=> b!2591944 (= e!1635154 (noDuplicate!368 (t!212933 l!3230)))))

(assert (= (and d!734260 (not res!1090027)) b!2591943))

(assert (= (and b!2591943 res!1090028) b!2591944))

(assert (=> b!2591943 m!2927943))

(assert (=> b!2591944 m!2928033))

(assert (=> start!251154 d!734260))

(declare-fun d!734262 () Bool)

(declare-fun lt!911858 () Int)

(assert (=> d!734262 (>= lt!911858 0)))

(declare-fun e!1635156 () Int)

(assert (=> d!734262 (= lt!911858 e!1635156)))

(declare-fun c!417842 () Bool)

(assert (=> d!734262 (= c!417842 (is-Nil!29820 lt!911795))))

(assert (=> d!734262 (= (size!23133 lt!911795) lt!911858)))

(declare-fun b!2591946 () Bool)

(assert (=> b!2591946 (= e!1635156 0)))

(declare-fun b!2591948 () Bool)

(assert (=> b!2591948 (= e!1635156 (+ 1 (size!23133 (t!212933 lt!911795))))))

(assert (= (and d!734262 c!417842) b!2591946))

(assert (= (and d!734262 (not c!417842)) b!2591948))

(declare-fun m!2928035 () Bool)

(assert (=> b!2591948 m!2928035))

(assert (=> b!2591856 d!734262))

(declare-fun d!734264 () Bool)

(declare-fun e!1635157 () Bool)

(assert (=> d!734264 e!1635157))

(declare-fun res!1090029 () Bool)

(assert (=> d!734264 (=> (not res!1090029) (not e!1635157))))

(declare-fun lt!911859 () List!29920)

(assert (=> d!734264 (= res!1090029 (noDuplicate!368 lt!911859))))

(assert (=> d!734264 (= lt!911859 (choose!15322 lt!911793))))

(assert (=> d!734264 (= (toList!1771 lt!911793) lt!911859)))

(declare-fun b!2591949 () Bool)

(assert (=> b!2591949 (= e!1635157 (= (content!4161 lt!911859) lt!911793))))

(assert (= (and d!734264 res!1090029) b!2591949))

(declare-fun m!2928037 () Bool)

(assert (=> d!734264 m!2928037))

(declare-fun m!2928039 () Bool)

(assert (=> d!734264 m!2928039))

(declare-fun m!2928041 () Bool)

(assert (=> b!2591949 m!2928041))

(assert (=> b!2591856 d!734264))

(declare-fun d!734266 () Bool)

(declare-fun lt!911864 () Bool)

(assert (=> d!734266 (= lt!911864 (set.member (h!35240 l!3230) (content!4161 (t!212933 l!3230))))))

(declare-fun e!1635166 () Bool)

(assert (=> d!734266 (= lt!911864 e!1635166)))

(declare-fun res!1090034 () Bool)

(assert (=> d!734266 (=> (not res!1090034) (not e!1635166))))

(assert (=> d!734266 (= res!1090034 (is-Cons!29820 (t!212933 l!3230)))))

(assert (=> d!734266 (= (contains!5370 (t!212933 l!3230) (h!35240 l!3230)) lt!911864)))

(declare-fun b!2591960 () Bool)

(declare-fun e!1635165 () Bool)

(assert (=> b!2591960 (= e!1635166 e!1635165)))

(declare-fun res!1090035 () Bool)

(assert (=> b!2591960 (=> res!1090035 e!1635165)))

(assert (=> b!2591960 (= res!1090035 (= (h!35240 (t!212933 l!3230)) (h!35240 l!3230)))))

(declare-fun b!2591961 () Bool)

(assert (=> b!2591961 (= e!1635165 (contains!5370 (t!212933 (t!212933 l!3230)) (h!35240 l!3230)))))

(assert (= (and d!734266 res!1090034) b!2591960))

(assert (= (and b!2591960 (not res!1090035)) b!2591961))

(assert (=> d!734266 m!2927955))

(declare-fun m!2928051 () Bool)

(assert (=> d!734266 m!2928051))

(declare-fun m!2928053 () Bool)

(assert (=> b!2591961 m!2928053))

(assert (=> b!2591861 d!734266))

(declare-fun bs!472284 () Bool)

(declare-fun d!734276 () Bool)

(assert (= bs!472284 (and d!734276 b!2591855)))

(declare-fun lambda!96153 () Int)

(assert (=> bs!472284 (not (= lambda!96153 lambda!96137))))

(declare-fun bs!472285 () Bool)

(assert (= bs!472285 (and d!734276 b!2591850)))

(assert (=> bs!472285 (not (= lambda!96153 lambda!96138))))

(assert (=> d!734276 true))

(declare-fun order!15873 () Int)

(declare-fun dynLambda!12614 (Int Int) Int)

(assert (=> d!734276 (< (dynLambda!12614 order!15873 lambda!96138) (dynLambda!12614 order!15873 lambda!96153))))

(declare-fun forall!6079 (List!29920 Int) Bool)

(assert (=> d!734276 (= (exists!907 lt!911795 lambda!96138) (not (forall!6079 lt!911795 lambda!96153)))))

(declare-fun bs!472286 () Bool)

(assert (= bs!472286 d!734276))

(declare-fun m!2928055 () Bool)

(assert (=> bs!472286 m!2928055))

(assert (=> b!2591850 d!734276))

(declare-fun bs!472288 () Bool)

(declare-fun d!734278 () Bool)

(assert (= bs!472288 (and d!734278 b!2591855)))

(declare-fun lambda!96156 () Int)

(assert (=> bs!472288 (= (= l!3230 lt!911795) (= lambda!96156 lambda!96137))))

(declare-fun bs!472289 () Bool)

(assert (= bs!472289 (and d!734278 b!2591850)))

(assert (=> bs!472289 (= lambda!96156 lambda!96138)))

(declare-fun bs!472290 () Bool)

(assert (= bs!472290 (and d!734278 d!734276)))

(assert (=> bs!472290 (not (= lambda!96156 lambda!96153))))

(assert (=> d!734278 true))

(assert (=> d!734278 (exists!907 lt!911795 lambda!96156)))

(declare-fun lt!911870 () Unit!43765)

(declare-fun choose!15324 (List!29920 List!29920) Unit!43765)

(assert (=> d!734278 (= lt!911870 (choose!15324 lt!911795 l!3230))))

(assert (=> d!734278 (noDuplicate!368 lt!911795)))

(assert (=> d!734278 (= (lemmaNoDuplicateSmallerListExistsElmtNotInOther!23 lt!911795 l!3230) lt!911870)))

(declare-fun bs!472291 () Bool)

(assert (= bs!472291 d!734278))

(declare-fun m!2928065 () Bool)

(assert (=> bs!472291 m!2928065))

(declare-fun m!2928067 () Bool)

(assert (=> bs!472291 m!2928067))

(declare-fun m!2928069 () Bool)

(assert (=> bs!472291 m!2928069))

(assert (=> b!2591850 d!734278))

(declare-fun bs!472292 () Bool)

(declare-fun d!734282 () Bool)

(assert (= bs!472292 (and d!734282 b!2591855)))

(declare-fun lambda!96159 () Int)

(assert (=> bs!472292 (not (= lambda!96159 lambda!96137))))

(declare-fun bs!472293 () Bool)

(assert (= bs!472293 (and d!734282 b!2591850)))

(assert (=> bs!472293 (not (= lambda!96159 lambda!96138))))

(declare-fun bs!472294 () Bool)

(assert (= bs!472294 (and d!734282 d!734276)))

(assert (=> bs!472294 (not (= lambda!96159 lambda!96153))))

(declare-fun bs!472295 () Bool)

(assert (= bs!472295 (and d!734282 d!734278)))

(assert (=> bs!472295 (not (= lambda!96159 lambda!96156))))

(assert (=> d!734282 true))

(assert (=> d!734282 (forall!6079 l!3230 lambda!96159)))

(declare-fun lt!911875 () Unit!43765)

(declare-fun choose!15325 (List!29920 List!29920) Unit!43765)

(assert (=> d!734282 (= lt!911875 (choose!15325 l!3230 lt!911795))))

(assert (=> d!734282 (set.subset (content!4161 l!3230) (content!4161 lt!911795))))

(assert (=> d!734282 (= (subsetContains!49 l!3230 lt!911795) lt!911875)))

(declare-fun bs!472296 () Bool)

(assert (= bs!472296 d!734282))

(declare-fun m!2928071 () Bool)

(assert (=> bs!472296 m!2928071))

(declare-fun m!2928073 () Bool)

(assert (=> bs!472296 m!2928073))

(assert (=> bs!472296 m!2927939))

(declare-fun m!2928075 () Bool)

(assert (=> bs!472296 m!2928075))

(assert (=> b!2591850 d!734282))

(declare-fun bs!472297 () Bool)

(declare-fun d!734284 () Bool)

(assert (= bs!472297 (and d!734284 b!2591855)))

(declare-fun lambda!96160 () Int)

(assert (=> bs!472297 (not (= lambda!96160 lambda!96137))))

(declare-fun bs!472298 () Bool)

(assert (= bs!472298 (and d!734284 d!734282)))

(assert (=> bs!472298 (= (= l!3230 lt!911795) (= lambda!96160 lambda!96159))))

(declare-fun bs!472299 () Bool)

(assert (= bs!472299 (and d!734284 d!734278)))

(assert (=> bs!472299 (not (= lambda!96160 lambda!96156))))

(declare-fun bs!472300 () Bool)

(assert (= bs!472300 (and d!734284 d!734276)))

(assert (=> bs!472300 (not (= lambda!96160 lambda!96153))))

(declare-fun bs!472301 () Bool)

(assert (= bs!472301 (and d!734284 b!2591850)))

(assert (=> bs!472301 (not (= lambda!96160 lambda!96138))))

(assert (=> d!734284 true))

(assert (=> d!734284 (forall!6079 lt!911795 lambda!96160)))

(declare-fun lt!911876 () Unit!43765)

(assert (=> d!734284 (= lt!911876 (choose!15325 lt!911795 l!3230))))

(assert (=> d!734284 (set.subset (content!4161 lt!911795) (content!4161 l!3230))))

(assert (=> d!734284 (= (subsetContains!49 lt!911795 l!3230) lt!911876)))

(declare-fun bs!472302 () Bool)

(assert (= bs!472302 d!734284))

(declare-fun m!2928077 () Bool)

(assert (=> bs!472302 m!2928077))

(declare-fun m!2928079 () Bool)

(assert (=> bs!472302 m!2928079))

(assert (=> bs!472302 m!2928075))

(assert (=> bs!472302 m!2927939))

(assert (=> b!2591855 d!734284))

(declare-fun bs!472303 () Bool)

(declare-fun d!734286 () Bool)

(assert (= bs!472303 (and d!734286 b!2591855)))

(declare-fun lambda!96161 () Int)

(assert (=> bs!472303 (= lambda!96161 lambda!96137)))

(declare-fun bs!472304 () Bool)

(assert (= bs!472304 (and d!734286 d!734284)))

(assert (=> bs!472304 (not (= lambda!96161 lambda!96160))))

(declare-fun bs!472305 () Bool)

(assert (= bs!472305 (and d!734286 d!734282)))

(assert (=> bs!472305 (not (= lambda!96161 lambda!96159))))

(declare-fun bs!472306 () Bool)

(assert (= bs!472306 (and d!734286 d!734278)))

(assert (=> bs!472306 (= (= lt!911795 l!3230) (= lambda!96161 lambda!96156))))

(declare-fun bs!472307 () Bool)

(assert (= bs!472307 (and d!734286 d!734276)))

(assert (=> bs!472307 (not (= lambda!96161 lambda!96153))))

(declare-fun bs!472308 () Bool)

(assert (= bs!472308 (and d!734286 b!2591850)))

(assert (=> bs!472308 (= (= lt!911795 l!3230) (= lambda!96161 lambda!96138))))

(assert (=> d!734286 true))

(assert (=> d!734286 (exists!907 l!3230 lambda!96161)))

(declare-fun lt!911878 () Unit!43765)

(assert (=> d!734286 (= lt!911878 (choose!15324 l!3230 lt!911795))))

(assert (=> d!734286 (noDuplicate!368 l!3230)))

(assert (=> d!734286 (= (lemmaNoDuplicateSmallerListExistsElmtNotInOther!23 l!3230 lt!911795) lt!911878)))

(declare-fun bs!472309 () Bool)

(assert (= bs!472309 d!734286))

(declare-fun m!2928087 () Bool)

(assert (=> bs!472309 m!2928087))

(declare-fun m!2928089 () Bool)

(assert (=> bs!472309 m!2928089))

(assert (=> bs!472309 m!2927933))

(assert (=> b!2591855 d!734286))

(declare-fun bs!472310 () Bool)

(declare-fun d!734290 () Bool)

(assert (= bs!472310 (and d!734290 b!2591855)))

(declare-fun lambda!96162 () Int)

(assert (=> bs!472310 (not (= lambda!96162 lambda!96137))))

(declare-fun bs!472311 () Bool)

(assert (= bs!472311 (and d!734290 d!734284)))

(assert (=> bs!472311 (not (= lambda!96162 lambda!96160))))

(declare-fun bs!472312 () Bool)

(assert (= bs!472312 (and d!734290 d!734282)))

(assert (=> bs!472312 (not (= lambda!96162 lambda!96159))))

(declare-fun bs!472313 () Bool)

(assert (= bs!472313 (and d!734290 d!734278)))

(assert (=> bs!472313 (not (= lambda!96162 lambda!96156))))

(declare-fun bs!472314 () Bool)

(assert (= bs!472314 (and d!734290 d!734286)))

(assert (=> bs!472314 (not (= lambda!96162 lambda!96161))))

(declare-fun bs!472315 () Bool)

(assert (= bs!472315 (and d!734290 d!734276)))

(assert (=> bs!472315 (= (= lambda!96137 lambda!96138) (= lambda!96162 lambda!96153))))

(declare-fun bs!472316 () Bool)

(assert (= bs!472316 (and d!734290 b!2591850)))

(assert (=> bs!472316 (not (= lambda!96162 lambda!96138))))

(assert (=> d!734290 true))

(assert (=> d!734290 (< (dynLambda!12614 order!15873 lambda!96137) (dynLambda!12614 order!15873 lambda!96162))))

(assert (=> d!734290 (= (exists!907 l!3230 lambda!96137) (not (forall!6079 l!3230 lambda!96162)))))

(declare-fun bs!472317 () Bool)

(assert (= bs!472317 d!734290))

(declare-fun m!2928091 () Bool)

(assert (=> bs!472317 m!2928091))

(assert (=> b!2591855 d!734290))

(declare-fun b!2591987 () Bool)

(declare-fun e!1635189 () B!2039)

(assert (=> b!2591987 (= e!1635189 (h!35240 l!3230))))

(declare-fun b!2591988 () Bool)

(declare-fun e!1635190 () Bool)

(declare-fun dynLambda!12615 (Int B!2039) Bool)

(assert (=> b!2591988 (= e!1635190 (dynLambda!12615 lambda!96137 (h!35240 l!3230)))))

(declare-fun b!2591989 () Bool)

(declare-fun e!1635188 () B!2039)

(assert (=> b!2591989 (= e!1635189 e!1635188)))

(declare-fun c!417851 () Bool)

(assert (=> b!2591989 (= c!417851 (is-Cons!29820 l!3230))))

(declare-fun b!2591990 () Bool)

(declare-fun e!1635191 () Bool)

(declare-fun lt!911888 () B!2039)

(assert (=> b!2591990 (= e!1635191 (contains!5370 l!3230 lt!911888))))

(declare-fun d!734292 () Bool)

(assert (=> d!734292 e!1635191))

(declare-fun res!1090052 () Bool)

(assert (=> d!734292 (=> (not res!1090052) (not e!1635191))))

(assert (=> d!734292 (= res!1090052 (dynLambda!12615 lambda!96137 lt!911888))))

(assert (=> d!734292 (= lt!911888 e!1635189)))

(declare-fun c!417850 () Bool)

(assert (=> d!734292 (= c!417850 e!1635190)))

(declare-fun res!1090051 () Bool)

(assert (=> d!734292 (=> (not res!1090051) (not e!1635190))))

(assert (=> d!734292 (= res!1090051 (is-Cons!29820 l!3230))))

(assert (=> d!734292 (exists!907 l!3230 lambda!96137)))

(assert (=> d!734292 (= (getWitness!533 l!3230 lambda!96137) lt!911888)))

(declare-fun b!2591991 () Bool)

(declare-fun lt!911887 () Unit!43765)

(declare-fun Unit!43773 () Unit!43765)

(assert (=> b!2591991 (= lt!911887 Unit!43773)))

(assert (=> b!2591991 false))

(declare-fun head!5870 (List!29920) B!2039)

(assert (=> b!2591991 (= e!1635188 (head!5870 l!3230))))

(declare-fun b!2591992 () Bool)

(assert (=> b!2591992 (= e!1635188 (getWitness!533 (t!212933 l!3230) lambda!96137))))

(assert (= (and d!734292 res!1090051) b!2591988))

(assert (= (and d!734292 c!417850) b!2591987))

(assert (= (and d!734292 (not c!417850)) b!2591989))

(assert (= (and b!2591989 c!417851) b!2591992))

(assert (= (and b!2591989 (not c!417851)) b!2591991))

(assert (= (and d!734292 res!1090052) b!2591990))

(declare-fun b_lambda!77163 () Bool)

(assert (=> (not b_lambda!77163) (not b!2591988)))

(declare-fun b_lambda!77165 () Bool)

(assert (=> (not b_lambda!77165) (not d!734292)))

(declare-fun m!2928101 () Bool)

(assert (=> b!2591992 m!2928101))

(declare-fun m!2928103 () Bool)

(assert (=> b!2591991 m!2928103))

(declare-fun m!2928105 () Bool)

(assert (=> b!2591990 m!2928105))

(declare-fun m!2928107 () Bool)

(assert (=> d!734292 m!2928107))

(assert (=> d!734292 m!2927929))

(declare-fun m!2928109 () Bool)

(assert (=> b!2591988 m!2928109))

(assert (=> b!2591855 d!734292))

(declare-fun d!734298 () Bool)

(declare-fun lt!911889 () Bool)

(assert (=> d!734298 (= lt!911889 (set.member lt!911784 (content!4161 l!3230)))))

(declare-fun e!1635193 () Bool)

(assert (=> d!734298 (= lt!911889 e!1635193)))

(declare-fun res!1090053 () Bool)

(assert (=> d!734298 (=> (not res!1090053) (not e!1635193))))

(assert (=> d!734298 (= res!1090053 (is-Cons!29820 l!3230))))

(assert (=> d!734298 (= (contains!5370 l!3230 lt!911784) lt!911889)))

(declare-fun b!2591993 () Bool)

(declare-fun e!1635192 () Bool)

(assert (=> b!2591993 (= e!1635193 e!1635192)))

(declare-fun res!1090054 () Bool)

(assert (=> b!2591993 (=> res!1090054 e!1635192)))

(assert (=> b!2591993 (= res!1090054 (= (h!35240 l!3230) lt!911784))))

(declare-fun b!2591994 () Bool)

(assert (=> b!2591994 (= e!1635192 (contains!5370 (t!212933 l!3230) lt!911784))))

(assert (= (and d!734298 res!1090053) b!2591993))

(assert (= (and b!2591993 (not res!1090054)) b!2591994))

(assert (=> d!734298 m!2927939))

(declare-fun m!2928111 () Bool)

(assert (=> d!734298 m!2928111))

(declare-fun m!2928113 () Bool)

(assert (=> b!2591994 m!2928113))

(assert (=> b!2591849 d!734298))

(declare-fun b!2591995 () Bool)

(declare-fun e!1635195 () B!2039)

(assert (=> b!2591995 (= e!1635195 (h!35240 lt!911795))))

(declare-fun b!2591996 () Bool)

(declare-fun e!1635196 () Bool)

(assert (=> b!2591996 (= e!1635196 (dynLambda!12615 lambda!96138 (h!35240 lt!911795)))))

(declare-fun b!2591997 () Bool)

(declare-fun e!1635194 () B!2039)

(assert (=> b!2591997 (= e!1635195 e!1635194)))

(declare-fun c!417853 () Bool)

(assert (=> b!2591997 (= c!417853 (is-Cons!29820 lt!911795))))

(declare-fun b!2591998 () Bool)

(declare-fun e!1635197 () Bool)

(declare-fun lt!911891 () B!2039)

(assert (=> b!2591998 (= e!1635197 (contains!5370 lt!911795 lt!911891))))

(declare-fun d!734300 () Bool)

(assert (=> d!734300 e!1635197))

(declare-fun res!1090056 () Bool)

(assert (=> d!734300 (=> (not res!1090056) (not e!1635197))))

(assert (=> d!734300 (= res!1090056 (dynLambda!12615 lambda!96138 lt!911891))))

(assert (=> d!734300 (= lt!911891 e!1635195)))

(declare-fun c!417852 () Bool)

(assert (=> d!734300 (= c!417852 e!1635196)))

(declare-fun res!1090055 () Bool)

(assert (=> d!734300 (=> (not res!1090055) (not e!1635196))))

(assert (=> d!734300 (= res!1090055 (is-Cons!29820 lt!911795))))

(assert (=> d!734300 (exists!907 lt!911795 lambda!96138)))

(assert (=> d!734300 (= (getWitness!533 lt!911795 lambda!96138) lt!911891)))

(declare-fun b!2591999 () Bool)

(declare-fun lt!911890 () Unit!43765)

(declare-fun Unit!43774 () Unit!43765)

(assert (=> b!2591999 (= lt!911890 Unit!43774)))

(assert (=> b!2591999 false))

(assert (=> b!2591999 (= e!1635194 (head!5870 lt!911795))))

(declare-fun b!2592000 () Bool)

(assert (=> b!2592000 (= e!1635194 (getWitness!533 (t!212933 lt!911795) lambda!96138))))

(assert (= (and d!734300 res!1090055) b!2591996))

(assert (= (and d!734300 c!417852) b!2591995))

(assert (= (and d!734300 (not c!417852)) b!2591997))

(assert (= (and b!2591997 c!417853) b!2592000))

(assert (= (and b!2591997 (not c!417853)) b!2591999))

(assert (= (and d!734300 res!1090056) b!2591998))

(declare-fun b_lambda!77167 () Bool)

(assert (=> (not b_lambda!77167) (not b!2591996)))

(declare-fun b_lambda!77169 () Bool)

(assert (=> (not b_lambda!77169) (not d!734300)))

(declare-fun m!2928115 () Bool)

(assert (=> b!2592000 m!2928115))

(declare-fun m!2928117 () Bool)

(assert (=> b!2591999 m!2928117))

(declare-fun m!2928119 () Bool)

(assert (=> b!2591998 m!2928119))

(declare-fun m!2928121 () Bool)

(assert (=> d!734300 m!2928121))

(assert (=> d!734300 m!2927945))

(declare-fun m!2928123 () Bool)

(assert (=> b!2591996 m!2928123))

(assert (=> b!2591849 d!734300))

(declare-fun d!734302 () Bool)

(declare-fun lt!911892 () Bool)

(assert (=> d!734302 (= lt!911892 (set.member lt!911784 (content!4161 lt!911795)))))

(declare-fun e!1635199 () Bool)

(assert (=> d!734302 (= lt!911892 e!1635199)))

(declare-fun res!1090057 () Bool)

(assert (=> d!734302 (=> (not res!1090057) (not e!1635199))))

(assert (=> d!734302 (= res!1090057 (is-Cons!29820 lt!911795))))

(assert (=> d!734302 (= (contains!5370 lt!911795 lt!911784) lt!911892)))

(declare-fun b!2592001 () Bool)

(declare-fun e!1635198 () Bool)

(assert (=> b!2592001 (= e!1635199 e!1635198)))

(declare-fun res!1090058 () Bool)

(assert (=> b!2592001 (=> res!1090058 e!1635198)))

(assert (=> b!2592001 (= res!1090058 (= (h!35240 lt!911795) lt!911784))))

(declare-fun b!2592002 () Bool)

(assert (=> b!2592002 (= e!1635198 (contains!5370 (t!212933 lt!911795) lt!911784))))

(assert (= (and d!734302 res!1090057) b!2592001))

(assert (= (and b!2592001 (not res!1090058)) b!2592002))

(assert (=> d!734302 m!2928075))

(declare-fun m!2928125 () Bool)

(assert (=> d!734302 m!2928125))

(declare-fun m!2928127 () Bool)

(assert (=> b!2592002 m!2928127))

(assert (=> b!2591859 d!734302))

(assert (=> b!2591848 d!734246))

(assert (=> b!2591858 d!734242))

(declare-fun b!2592007 () Bool)

(declare-fun e!1635202 () Bool)

(declare-fun tp!822731 () Bool)

(assert (=> b!2592007 (= e!1635202 (and tp_is_empty!13319 tp!822731))))

(assert (=> b!2591852 (= tp!822725 e!1635202)))

(assert (= (and b!2591852 (is-Cons!29820 (t!212933 l!3230))) b!2592007))

(declare-fun b_lambda!77171 () Bool)

(assert (= b_lambda!77167 (or b!2591850 b_lambda!77171)))

(declare-fun bs!472318 () Bool)

(declare-fun d!734304 () Bool)

(assert (= bs!472318 (and d!734304 b!2591850)))

(assert (=> bs!472318 (= (dynLambda!12615 lambda!96138 (h!35240 lt!911795)) (not (contains!5370 l!3230 (h!35240 lt!911795))))))

(declare-fun m!2928129 () Bool)

(assert (=> bs!472318 m!2928129))

(assert (=> b!2591996 d!734304))

(declare-fun b_lambda!77173 () Bool)

(assert (= b_lambda!77163 (or b!2591855 b_lambda!77173)))

(declare-fun bs!472319 () Bool)

(declare-fun d!734306 () Bool)

(assert (= bs!472319 (and d!734306 b!2591855)))

(assert (=> bs!472319 (= (dynLambda!12615 lambda!96137 (h!35240 l!3230)) (not (contains!5370 lt!911795 (h!35240 l!3230))))))

(declare-fun m!2928131 () Bool)

(assert (=> bs!472319 m!2928131))

(assert (=> b!2591988 d!734306))

(declare-fun b_lambda!77175 () Bool)

(assert (= b_lambda!77165 (or b!2591855 b_lambda!77175)))

(declare-fun bs!472320 () Bool)

(declare-fun d!734308 () Bool)

(assert (= bs!472320 (and d!734308 b!2591855)))

(assert (=> bs!472320 (= (dynLambda!12615 lambda!96137 lt!911888) (not (contains!5370 lt!911795 lt!911888)))))

(declare-fun m!2928133 () Bool)

(assert (=> bs!472320 m!2928133))

(assert (=> d!734292 d!734308))

(declare-fun b_lambda!77177 () Bool)

(assert (= b_lambda!77169 (or b!2591850 b_lambda!77177)))

(declare-fun bs!472321 () Bool)

(declare-fun d!734310 () Bool)

(assert (= bs!472321 (and d!734310 b!2591850)))

(assert (=> bs!472321 (= (dynLambda!12615 lambda!96138 lt!911891) (not (contains!5370 l!3230 lt!911891)))))

(declare-fun m!2928135 () Bool)

(assert (=> bs!472321 m!2928135))

(assert (=> d!734300 d!734310))

(push 1)

(assert (not d!734256))

(assert (not b!2591948))

(assert (not d!734276))

(assert (not b!2591998))

(assert (not b!2591944))

(assert (not d!734282))

(assert (not b!2591919))

(assert (not b!2591949))

(assert (not b!2591999))

(assert (not b!2591990))

(assert (not d!734300))

(assert (not d!734278))

(assert (not d!734290))

(assert (not d!734298))

(assert (not b!2591913))

(assert (not bs!472321))

(assert (not b!2591934))

(assert (not b!2591929))

(assert tp_is_empty!13319)

(assert (not d!734302))

(assert (not b_lambda!77173))

(assert (not b!2591994))

(assert (not b!2592000))

(assert (not d!734254))

(assert (not b!2591991))

(assert (not bs!472319))

(assert (not bs!472320))

(assert (not d!734286))

(assert (not b!2591992))

(assert (not b_lambda!77171))

(assert (not b!2591927))

(assert (not b_lambda!77175))

(assert (not b!2592007))

(assert (not bs!472318))

(assert (not b!2591925))

(assert (not b_lambda!77177))

(assert (not d!734264))

(assert (not b!2592002))

(assert (not d!734292))

(assert (not d!734284))

(assert (not b!2591943))

(assert (not b!2591961))

(assert (not d!734266))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

