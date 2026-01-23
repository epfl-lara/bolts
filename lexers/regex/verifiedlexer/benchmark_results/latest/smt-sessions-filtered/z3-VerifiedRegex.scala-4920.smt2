; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!251500 () Bool)

(assert start!251500)

(declare-fun b!2593803 () Bool)

(assert (=> b!2593803 true))

(declare-fun bs!472586 () Bool)

(declare-fun b!2593797 () Bool)

(assert (= bs!472586 (and b!2593797 b!2593803)))

(declare-fun lambda!96397 () Int)

(declare-datatypes ((B!2101 0))(
  ( (B!2102 (val!9518 Int)) )
))
(declare-datatypes ((List!29951 0))(
  ( (Nil!29851) (Cons!29851 (h!35271 B!2101) (t!212964 List!29951)) )
))
(declare-fun l!3230 () List!29951)

(declare-fun lambda!96398 () Int)

(declare-fun lt!913136 () List!29951)

(assert (=> bs!472586 (= (= l!3230 lt!913136) (= lambda!96398 lambda!96397))))

(assert (=> b!2593797 true))

(declare-fun b!2593792 () Bool)

(declare-datatypes ((Unit!43864 0))(
  ( (Unit!43865) )
))
(declare-fun e!1636494 () Unit!43864)

(declare-fun Unit!43866 () Unit!43864)

(assert (=> b!2593792 (= e!1636494 Unit!43866)))

(declare-fun b!2593793 () Bool)

(declare-fun res!1091110 () Bool)

(declare-fun e!1636500 () Bool)

(assert (=> b!2593793 (=> res!1091110 e!1636500)))

(declare-fun contains!5401 (List!29951 B!2101) Bool)

(assert (=> b!2593793 (= res!1091110 (contains!5401 (t!212964 l!3230) (h!35271 l!3230)))))

(declare-fun b!2593794 () Bool)

(declare-fun e!1636496 () Bool)

(declare-fun lt!913137 () Int)

(declare-fun size!23158 (List!29951) Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun toList!1796 ((InoxSet B!2101)) List!29951)

(declare-fun content!4186 (List!29951) (InoxSet B!2101))

(assert (=> b!2593794 (= e!1636496 (= (size!23158 (toList!1796 (content!4186 l!3230))) lt!913137))))

(declare-fun b!2593795 () Bool)

(declare-fun e!1636497 () Unit!43864)

(declare-fun Unit!43867 () Unit!43864)

(assert (=> b!2593795 (= e!1636497 Unit!43867)))

(declare-fun b!2593796 () Bool)

(declare-fun e!1636498 () Bool)

(assert (=> b!2593796 (= e!1636498 (not e!1636500))))

(declare-fun res!1091112 () Bool)

(assert (=> b!2593796 (=> res!1091112 e!1636500)))

(declare-fun lt!913123 () Int)

(declare-fun lt!913126 () (InoxSet B!2101))

(assert (=> b!2593796 (= res!1091112 (or (>= lt!913123 lt!913137) (select lt!913126 (h!35271 l!3230))))))

(assert (=> b!2593796 (= lt!913137 (size!23158 l!3230))))

(declare-fun lt!913125 () Int)

(assert (=> b!2593796 (= lt!913123 lt!913125)))

(assert (=> b!2593796 (= lt!913125 (size!23158 (t!212964 l!3230)))))

(assert (=> b!2593796 (= lt!913123 (size!23158 (toList!1796 lt!913126)))))

(assert (=> b!2593796 (= lt!913126 (content!4186 (t!212964 l!3230)))))

(declare-fun lt!913128 () Unit!43864)

(declare-fun lemmaNoDuplicateThenContentToListSameSize!86 (List!29951) Unit!43864)

(assert (=> b!2593796 (= lt!913128 (lemmaNoDuplicateThenContentToListSameSize!86 (t!212964 l!3230)))))

(declare-fun res!1091109 () Bool)

(assert (=> start!251500 (=> (not res!1091109) (not e!1636498))))

(declare-fun noDuplicate!399 (List!29951) Bool)

(assert (=> start!251500 (= res!1091109 (noDuplicate!399 l!3230))))

(assert (=> start!251500 e!1636498))

(declare-fun e!1636501 () Bool)

(assert (=> start!251500 e!1636501))

(declare-fun Unit!43868 () Unit!43864)

(assert (=> b!2593797 (= e!1636497 Unit!43868)))

(declare-fun lt!913130 () Unit!43864)

(declare-fun subsetContains!74 (List!29951 List!29951) Unit!43864)

(assert (=> b!2593797 (= lt!913130 (subsetContains!74 l!3230 lt!913136))))

(declare-fun lt!913133 () Unit!43864)

(declare-fun lemmaNoDuplicateSmallerListExistsElmtNotInOther!40 (List!29951 List!29951) Unit!43864)

(assert (=> b!2593797 (= lt!913133 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!40 lt!913136 l!3230))))

(declare-fun exists!924 (List!29951 Int) Bool)

(assert (=> b!2593797 (exists!924 lt!913136 lambda!96398)))

(declare-fun lt!913139 () B!2101)

(declare-fun getWitness!550 (List!29951 Int) B!2101)

(assert (=> b!2593797 (= lt!913139 (getWitness!550 lt!913136 lambda!96398))))

(assert (=> b!2593797 false))

(declare-fun b!2593798 () Bool)

(declare-fun e!1636495 () Bool)

(assert (=> b!2593798 (= e!1636495 e!1636496)))

(declare-fun res!1091114 () Bool)

(assert (=> b!2593798 (=> res!1091114 e!1636496)))

(declare-fun lt!913129 () Int)

(declare-fun lt!913124 () Int)

(assert (=> b!2593798 (= res!1091114 (not (= lt!913129 lt!913124)))))

(declare-fun lt!913134 () Unit!43864)

(assert (=> b!2593798 (= lt!913134 e!1636497)))

(declare-fun c!418101 () Bool)

(assert (=> b!2593798 (= c!418101 (> lt!913129 lt!913124))))

(declare-fun lt!913127 () Unit!43864)

(assert (=> b!2593798 (= lt!913127 e!1636494)))

(declare-fun c!418102 () Bool)

(assert (=> b!2593798 (= c!418102 (< lt!913129 lt!913124))))

(assert (=> b!2593798 (= lt!913129 (size!23158 lt!913136))))

(declare-fun lt!913132 () (InoxSet B!2101))

(assert (=> b!2593798 (= lt!913136 (toList!1796 lt!913132))))

(declare-fun b!2593799 () Bool)

(declare-fun tp_is_empty!13381 () Bool)

(declare-fun tp!822878 () Bool)

(assert (=> b!2593799 (= e!1636501 (and tp_is_empty!13381 tp!822878))))

(declare-fun b!2593800 () Bool)

(declare-fun e!1636499 () Bool)

(assert (=> b!2593800 (= e!1636499 e!1636495)))

(declare-fun res!1091111 () Bool)

(assert (=> b!2593800 (=> res!1091111 e!1636495)))

(assert (=> b!2593800 (= res!1091111 (not (= (content!4186 l!3230) lt!913132)))))

(assert (=> b!2593800 (= lt!913132 ((_ map or) lt!913126 (store ((as const (Array B!2101 Bool)) false) (h!35271 l!3230) true)))))

(declare-fun b!2593801 () Bool)

(declare-fun res!1091115 () Bool)

(assert (=> b!2593801 (=> (not res!1091115) (not e!1636498))))

(get-info :version)

(assert (=> b!2593801 (= res!1091115 ((_ is Cons!29851) l!3230))))

(declare-fun b!2593802 () Bool)

(assert (=> b!2593802 (= e!1636500 e!1636499)))

(declare-fun res!1091113 () Bool)

(assert (=> b!2593802 (=> res!1091113 e!1636499)))

(assert (=> b!2593802 (= res!1091113 (not (= (size!23158 l!3230) lt!913124)))))

(assert (=> b!2593802 (= lt!913124 (+ 1 lt!913125))))

(declare-fun Unit!43869 () Unit!43864)

(assert (=> b!2593803 (= e!1636494 Unit!43869)))

(declare-fun lt!913135 () Unit!43864)

(assert (=> b!2593803 (= lt!913135 (subsetContains!74 lt!913136 l!3230))))

(declare-fun lt!913131 () Unit!43864)

(assert (=> b!2593803 (= lt!913131 (lemmaNoDuplicateSmallerListExistsElmtNotInOther!40 l!3230 lt!913136))))

(assert (=> b!2593803 (exists!924 l!3230 lambda!96397)))

(declare-fun lt!913138 () B!2101)

(assert (=> b!2593803 (= lt!913138 (getWitness!550 l!3230 lambda!96397))))

(assert (=> b!2593803 false))

(assert (= (and start!251500 res!1091109) b!2593801))

(assert (= (and b!2593801 res!1091115) b!2593796))

(assert (= (and b!2593796 (not res!1091112)) b!2593793))

(assert (= (and b!2593793 (not res!1091110)) b!2593802))

(assert (= (and b!2593802 (not res!1091113)) b!2593800))

(assert (= (and b!2593800 (not res!1091111)) b!2593798))

(assert (= (and b!2593798 c!418102) b!2593803))

(assert (= (and b!2593798 (not c!418102)) b!2593792))

(assert (= (and b!2593798 c!418101) b!2593797))

(assert (= (and b!2593798 (not c!418101)) b!2593795))

(assert (= (and b!2593798 (not res!1091114)) b!2593794))

(assert (= (and start!251500 ((_ is Cons!29851) l!3230)) b!2593799))

(declare-fun m!2929911 () Bool)

(assert (=> b!2593800 m!2929911))

(declare-fun m!2929913 () Bool)

(assert (=> b!2593800 m!2929913))

(declare-fun m!2929915 () Bool)

(assert (=> b!2593798 m!2929915))

(declare-fun m!2929917 () Bool)

(assert (=> b!2593798 m!2929917))

(declare-fun m!2929919 () Bool)

(assert (=> b!2593803 m!2929919))

(declare-fun m!2929921 () Bool)

(assert (=> b!2593803 m!2929921))

(declare-fun m!2929923 () Bool)

(assert (=> b!2593803 m!2929923))

(declare-fun m!2929925 () Bool)

(assert (=> b!2593803 m!2929925))

(assert (=> b!2593794 m!2929911))

(assert (=> b!2593794 m!2929911))

(declare-fun m!2929927 () Bool)

(assert (=> b!2593794 m!2929927))

(assert (=> b!2593794 m!2929927))

(declare-fun m!2929929 () Bool)

(assert (=> b!2593794 m!2929929))

(declare-fun m!2929931 () Bool)

(assert (=> b!2593793 m!2929931))

(declare-fun m!2929933 () Bool)

(assert (=> start!251500 m!2929933))

(declare-fun m!2929935 () Bool)

(assert (=> b!2593796 m!2929935))

(declare-fun m!2929937 () Bool)

(assert (=> b!2593796 m!2929937))

(declare-fun m!2929939 () Bool)

(assert (=> b!2593796 m!2929939))

(declare-fun m!2929941 () Bool)

(assert (=> b!2593796 m!2929941))

(declare-fun m!2929943 () Bool)

(assert (=> b!2593796 m!2929943))

(declare-fun m!2929945 () Bool)

(assert (=> b!2593796 m!2929945))

(assert (=> b!2593796 m!2929935))

(declare-fun m!2929947 () Bool)

(assert (=> b!2593796 m!2929947))

(declare-fun m!2929949 () Bool)

(assert (=> b!2593797 m!2929949))

(declare-fun m!2929951 () Bool)

(assert (=> b!2593797 m!2929951))

(declare-fun m!2929953 () Bool)

(assert (=> b!2593797 m!2929953))

(declare-fun m!2929955 () Bool)

(assert (=> b!2593797 m!2929955))

(assert (=> b!2593802 m!2929939))

(check-sat (not start!251500) (not b!2593793) (not b!2593802) (not b!2593796) (not b!2593794) (not b!2593797) (not b!2593803) (not b!2593798) (not b!2593799) tp_is_empty!13381 (not b!2593800))
(check-sat)
