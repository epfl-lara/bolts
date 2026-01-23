; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!12958 () Bool)

(assert start!12958)

(declare-fun b!126727 () Bool)

(declare-fun e!72862 () Bool)

(declare-fun tp!69269 () Bool)

(assert (=> b!126727 (= e!72862 tp!69269)))

(declare-fun res!58638 () Bool)

(declare-fun e!72861 () Bool)

(assert (=> start!12958 (=> (not res!58638) (not e!72861))))

(declare-datatypes ((C!2092 0))(
  ( (C!2093 (val!772 Int)) )
))
(declare-datatypes ((Regex!585 0))(
  ( (ElementMatch!585 (c!27787 C!2092)) (Concat!979 (regOne!1682 Regex!585) (regTwo!1682 Regex!585)) (EmptyExpr!585) (Star!585 (reg!914 Regex!585)) (EmptyLang!585) (Union!585 (regOne!1683 Regex!585) (regTwo!1683 Regex!585)) )
))
(declare-fun r!13481 () Regex!585)

(declare-fun validRegex!177 (Regex!585) Bool)

(assert (=> start!12958 (= res!58638 (validRegex!177 r!13481))))

(assert (=> start!12958 e!72861))

(assert (=> start!12958 e!72862))

(declare-datatypes ((List!2101 0))(
  ( (Nil!2095) (Cons!2095 (h!7492 C!2092) (t!22673 List!2101)) )
))
(declare-datatypes ((IArray!1183 0))(
  ( (IArray!1184 (innerList!649 List!2101)) )
))
(declare-datatypes ((Conc!591 0))(
  ( (Node!591 (left!1667 Conc!591) (right!1997 Conc!591) (csize!1412 Int) (cheight!802 Int)) (Leaf!1032 (xs!3186 IArray!1183) (csize!1413 Int)) (Empty!591) )
))
(declare-datatypes ((BalanceConc!1186 0))(
  ( (BalanceConc!1187 (c!27788 Conc!591)) )
))
(declare-fun input!6028 () BalanceConc!1186)

(declare-fun e!72863 () Bool)

(declare-fun inv!2702 (BalanceConc!1186) Bool)

(assert (=> start!12958 (and (inv!2702 input!6028) e!72863)))

(declare-fun b!126728 () Bool)

(declare-fun tp_is_empty!1225 () Bool)

(assert (=> b!126728 (= e!72862 tp_is_empty!1225)))

(declare-fun b!126729 () Bool)

(declare-fun tp!69268 () Bool)

(declare-fun tp!69264 () Bool)

(assert (=> b!126729 (= e!72862 (and tp!69268 tp!69264))))

(declare-fun lt!38180 () Bool)

(declare-fun b!126730 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!2102 0))(
  ( (Nil!2096) (Cons!2096 (h!7493 Regex!585) (t!22674 List!2102)) )
))
(declare-datatypes ((Context!250 0))(
  ( (Context!251 (exprs!625 List!2102)) )
))
(declare-fun lt!38177 () (InoxSet Context!250))

(declare-fun matchZipperSequence!17 ((InoxSet Context!250) BalanceConc!1186 Int) Bool)

(assert (=> b!126730 (= e!72861 (not (= (matchZipperSequence!17 lt!38177 input!6028 0) lt!38180)))))

(declare-fun lt!38176 () List!2101)

(declare-fun matchZipper!17 ((InoxSet Context!250) List!2101) Bool)

(assert (=> b!126730 (= lt!38180 (matchZipper!17 lt!38177 lt!38176))))

(declare-fun matchR!57 (Regex!585 List!2101) Bool)

(assert (=> b!126730 (= lt!38180 (matchR!57 r!13481 lt!38176))))

(declare-datatypes ((List!2103 0))(
  ( (Nil!2097) (Cons!2097 (h!7494 Context!250) (t!22675 List!2103)) )
))
(declare-fun lt!38178 () List!2103)

(declare-datatypes ((Unit!1637 0))(
  ( (Unit!1638) )
))
(declare-fun lt!38181 () Unit!1637)

(declare-fun theoremZipperRegexEquiv!8 ((InoxSet Context!250) List!2103 Regex!585 List!2101) Unit!1637)

(assert (=> b!126730 (= lt!38181 (theoremZipperRegexEquiv!8 lt!38177 lt!38178 r!13481 lt!38176))))

(declare-fun list!815 (BalanceConc!1186) List!2101)

(assert (=> b!126730 (= lt!38176 (list!815 input!6028))))

(declare-fun toList!285 ((InoxSet Context!250)) List!2103)

(assert (=> b!126730 (= lt!38178 (toList!285 lt!38177))))

(declare-fun dropList!52 (BalanceConc!1186 Int) List!2101)

(assert (=> b!126730 (= (matchZipper!17 lt!38177 (dropList!52 input!6028 0)) (matchZipperSequence!17 lt!38177 input!6028 0))))

(declare-fun lt!38179 () Unit!1637)

(declare-fun lemmaMatchZipperSequenceEquivalent!16 ((InoxSet Context!250) BalanceConc!1186 Int) Unit!1637)

(assert (=> b!126730 (= lt!38179 (lemmaMatchZipperSequenceEquivalent!16 lt!38177 input!6028 0))))

(declare-fun focus!20 (Regex!585) (InoxSet Context!250))

(assert (=> b!126730 (= lt!38177 (focus!20 r!13481))))

(declare-fun b!126731 () Bool)

(declare-fun tp!69267 () Bool)

(declare-fun inv!2703 (Conc!591) Bool)

(assert (=> b!126731 (= e!72863 (and (inv!2703 (c!27788 input!6028)) tp!69267))))

(declare-fun b!126732 () Bool)

(declare-fun tp!69266 () Bool)

(declare-fun tp!69265 () Bool)

(assert (=> b!126732 (= e!72862 (and tp!69266 tp!69265))))

(assert (= (and start!12958 res!58638) b!126730))

(get-info :version)

(assert (= (and start!12958 ((_ is ElementMatch!585) r!13481)) b!126728))

(assert (= (and start!12958 ((_ is Concat!979) r!13481)) b!126732))

(assert (= (and start!12958 ((_ is Star!585) r!13481)) b!126727))

(assert (= (and start!12958 ((_ is Union!585) r!13481)) b!126729))

(assert (= start!12958 b!126731))

(declare-fun m!111929 () Bool)

(assert (=> start!12958 m!111929))

(declare-fun m!111931 () Bool)

(assert (=> start!12958 m!111931))

(declare-fun m!111933 () Bool)

(assert (=> b!126730 m!111933))

(declare-fun m!111935 () Bool)

(assert (=> b!126730 m!111935))

(declare-fun m!111937 () Bool)

(assert (=> b!126730 m!111937))

(declare-fun m!111939 () Bool)

(assert (=> b!126730 m!111939))

(declare-fun m!111941 () Bool)

(assert (=> b!126730 m!111941))

(assert (=> b!126730 m!111941))

(declare-fun m!111943 () Bool)

(assert (=> b!126730 m!111943))

(declare-fun m!111945 () Bool)

(assert (=> b!126730 m!111945))

(declare-fun m!111947 () Bool)

(assert (=> b!126730 m!111947))

(declare-fun m!111949 () Bool)

(assert (=> b!126730 m!111949))

(declare-fun m!111951 () Bool)

(assert (=> b!126730 m!111951))

(declare-fun m!111953 () Bool)

(assert (=> b!126731 m!111953))

(check-sat (not b!126727) tp_is_empty!1225 (not b!126732) (not b!126731) (not b!126729) (not start!12958) (not b!126730))
(check-sat)
(get-model)

(declare-fun d!29937 () Bool)

(declare-fun e!72868 () Bool)

(assert (=> d!29937 e!72868))

(declare-fun res!58642 () Bool)

(assert (=> d!29937 (=> (not res!58642) (not e!72868))))

(assert (=> d!29937 (= res!58642 (validRegex!177 r!13481))))

(assert (=> d!29937 (= (focus!20 r!13481) (store ((as const (Array Context!250 Bool)) false) (Context!251 (Cons!2096 r!13481 Nil!2096)) true))))

(declare-fun b!126739 () Bool)

(declare-fun unfocusZipper!9 (List!2103) Regex!585)

(assert (=> b!126739 (= e!72868 (= (unfocusZipper!9 (toList!285 (store ((as const (Array Context!250 Bool)) false) (Context!251 (Cons!2096 r!13481 Nil!2096)) true))) r!13481))))

(assert (= (and d!29937 res!58642) b!126739))

(assert (=> d!29937 m!111929))

(declare-fun m!111959 () Bool)

(assert (=> d!29937 m!111959))

(assert (=> b!126739 m!111959))

(assert (=> b!126739 m!111959))

(declare-fun m!111961 () Bool)

(assert (=> b!126739 m!111961))

(assert (=> b!126739 m!111961))

(declare-fun m!111963 () Bool)

(assert (=> b!126739 m!111963))

(assert (=> b!126730 d!29937))

(declare-fun d!29941 () Bool)

(declare-fun list!817 (Conc!591) List!2101)

(assert (=> d!29941 (= (list!815 input!6028) (list!817 (c!27788 input!6028)))))

(declare-fun bs!12469 () Bool)

(assert (= bs!12469 d!29941))

(declare-fun m!111965 () Bool)

(assert (=> bs!12469 m!111965))

(assert (=> b!126730 d!29941))

(declare-fun d!29943 () Bool)

(assert (=> d!29943 (= (matchZipper!17 lt!38177 (dropList!52 input!6028 0)) (matchZipperSequence!17 lt!38177 input!6028 0))))

(declare-fun lt!38187 () Unit!1637)

(declare-fun choose!1638 ((InoxSet Context!250) BalanceConc!1186 Int) Unit!1637)

(assert (=> d!29943 (= lt!38187 (choose!1638 lt!38177 input!6028 0))))

(declare-fun e!72893 () Bool)

(assert (=> d!29943 e!72893))

(declare-fun res!58669 () Bool)

(assert (=> d!29943 (=> (not res!58669) (not e!72893))))

(assert (=> d!29943 (= res!58669 (>= 0 0))))

(assert (=> d!29943 (= (lemmaMatchZipperSequenceEquivalent!16 lt!38177 input!6028 0) lt!38187)))

(declare-fun b!126786 () Bool)

(declare-fun size!1919 (BalanceConc!1186) Int)

(assert (=> b!126786 (= e!72893 (<= 0 (size!1919 input!6028)))))

(assert (= (and d!29943 res!58669) b!126786))

(assert (=> d!29943 m!111941))

(assert (=> d!29943 m!111941))

(assert (=> d!29943 m!111943))

(assert (=> d!29943 m!111937))

(declare-fun m!111987 () Bool)

(assert (=> d!29943 m!111987))

(declare-fun m!111989 () Bool)

(assert (=> b!126786 m!111989))

(assert (=> b!126730 d!29943))

(declare-fun d!29949 () Bool)

(declare-fun c!27803 () Bool)

(assert (=> d!29949 (= c!27803 (= 0 (size!1919 input!6028)))))

(declare-fun e!72898 () Bool)

(assert (=> d!29949 (= (matchZipperSequence!17 lt!38177 input!6028 0) e!72898)))

(declare-fun b!126793 () Bool)

(declare-fun nullableZipper!6 ((InoxSet Context!250)) Bool)

(assert (=> b!126793 (= e!72898 (nullableZipper!6 lt!38177))))

(declare-fun b!126794 () Bool)

(declare-fun derivationStepZipper!6 ((InoxSet Context!250) C!2092) (InoxSet Context!250))

(declare-fun apply!275 (BalanceConc!1186 Int) C!2092)

(assert (=> b!126794 (= e!72898 (matchZipperSequence!17 (derivationStepZipper!6 lt!38177 (apply!275 input!6028 0)) input!6028 (+ 0 1)))))

(assert (= (and d!29949 c!27803) b!126793))

(assert (= (and d!29949 (not c!27803)) b!126794))

(assert (=> d!29949 m!111989))

(declare-fun m!111993 () Bool)

(assert (=> b!126793 m!111993))

(declare-fun m!111995 () Bool)

(assert (=> b!126794 m!111995))

(assert (=> b!126794 m!111995))

(declare-fun m!111997 () Bool)

(assert (=> b!126794 m!111997))

(assert (=> b!126794 m!111997))

(declare-fun m!111999 () Bool)

(assert (=> b!126794 m!111999))

(assert (=> b!126730 d!29949))

(declare-fun d!29953 () Bool)

(declare-fun c!27807 () Bool)

(declare-fun isEmpty!827 (List!2101) Bool)

(assert (=> d!29953 (= c!27807 (isEmpty!827 (dropList!52 input!6028 0)))))

(declare-fun e!72903 () Bool)

(assert (=> d!29953 (= (matchZipper!17 lt!38177 (dropList!52 input!6028 0)) e!72903)))

(declare-fun b!126802 () Bool)

(assert (=> b!126802 (= e!72903 (nullableZipper!6 lt!38177))))

(declare-fun b!126803 () Bool)

(declare-fun head!516 (List!2101) C!2092)

(declare-fun tail!252 (List!2101) List!2101)

(assert (=> b!126803 (= e!72903 (matchZipper!17 (derivationStepZipper!6 lt!38177 (head!516 (dropList!52 input!6028 0))) (tail!252 (dropList!52 input!6028 0))))))

(assert (= (and d!29953 c!27807) b!126802))

(assert (= (and d!29953 (not c!27807)) b!126803))

(assert (=> d!29953 m!111941))

(declare-fun m!112017 () Bool)

(assert (=> d!29953 m!112017))

(assert (=> b!126802 m!111993))

(assert (=> b!126803 m!111941))

(declare-fun m!112019 () Bool)

(assert (=> b!126803 m!112019))

(assert (=> b!126803 m!112019))

(declare-fun m!112021 () Bool)

(assert (=> b!126803 m!112021))

(assert (=> b!126803 m!111941))

(declare-fun m!112023 () Bool)

(assert (=> b!126803 m!112023))

(assert (=> b!126803 m!112021))

(assert (=> b!126803 m!112023))

(declare-fun m!112025 () Bool)

(assert (=> b!126803 m!112025))

(assert (=> b!126730 d!29953))

(declare-fun d!29961 () Bool)

(declare-fun drop!103 (List!2101 Int) List!2101)

(assert (=> d!29961 (= (dropList!52 input!6028 0) (drop!103 (list!817 (c!27788 input!6028)) 0))))

(declare-fun bs!12472 () Bool)

(assert (= bs!12472 d!29961))

(assert (=> bs!12472 m!111965))

(assert (=> bs!12472 m!111965))

(declare-fun m!112035 () Bool)

(assert (=> bs!12472 m!112035))

(assert (=> b!126730 d!29961))

(declare-fun d!29965 () Bool)

(assert (=> d!29965 (= (matchR!57 r!13481 lt!38176) (matchZipper!17 lt!38177 lt!38176))))

(declare-fun lt!38196 () Unit!1637)

(declare-fun choose!1639 ((InoxSet Context!250) List!2103 Regex!585 List!2101) Unit!1637)

(assert (=> d!29965 (= lt!38196 (choose!1639 lt!38177 lt!38178 r!13481 lt!38176))))

(assert (=> d!29965 (validRegex!177 r!13481)))

(assert (=> d!29965 (= (theoremZipperRegexEquiv!8 lt!38177 lt!38178 r!13481 lt!38176) lt!38196)))

(declare-fun bs!12473 () Bool)

(assert (= bs!12473 d!29965))

(assert (=> bs!12473 m!111935))

(assert (=> bs!12473 m!111947))

(declare-fun m!112039 () Bool)

(assert (=> bs!12473 m!112039))

(assert (=> bs!12473 m!111929))

(assert (=> b!126730 d!29965))

(declare-fun d!29969 () Bool)

(declare-fun e!72915 () Bool)

(assert (=> d!29969 e!72915))

(declare-fun res!58682 () Bool)

(assert (=> d!29969 (=> (not res!58682) (not e!72915))))

(declare-fun lt!38202 () List!2103)

(declare-fun noDuplicate!30 (List!2103) Bool)

(assert (=> d!29969 (= res!58682 (noDuplicate!30 lt!38202))))

(declare-fun choose!1640 ((InoxSet Context!250)) List!2103)

(assert (=> d!29969 (= lt!38202 (choose!1640 lt!38177))))

(assert (=> d!29969 (= (toList!285 lt!38177) lt!38202)))

(declare-fun b!126818 () Bool)

(declare-fun content!239 (List!2103) (InoxSet Context!250))

(assert (=> b!126818 (= e!72915 (= (content!239 lt!38202) lt!38177))))

(assert (= (and d!29969 res!58682) b!126818))

(declare-fun m!112047 () Bool)

(assert (=> d!29969 m!112047))

(declare-fun m!112049 () Bool)

(assert (=> d!29969 m!112049))

(declare-fun m!112051 () Bool)

(assert (=> b!126818 m!112051))

(assert (=> b!126730 d!29969))

(declare-fun b!126924 () Bool)

(declare-fun e!72970 () Bool)

(declare-fun lt!38205 () Bool)

(assert (=> b!126924 (= e!72970 (not lt!38205))))

(declare-fun b!126925 () Bool)

(declare-fun e!72975 () Bool)

(assert (=> b!126925 (= e!72975 (not (= (head!516 lt!38176) (c!27787 r!13481))))))

(declare-fun b!126926 () Bool)

(declare-fun e!72974 () Bool)

(declare-fun nullable!104 (Regex!585) Bool)

(assert (=> b!126926 (= e!72974 (nullable!104 r!13481))))

(declare-fun d!29973 () Bool)

(declare-fun e!72976 () Bool)

(assert (=> d!29973 e!72976))

(declare-fun c!27827 () Bool)

(assert (=> d!29973 (= c!27827 ((_ is EmptyExpr!585) r!13481))))

(assert (=> d!29973 (= lt!38205 e!72974)))

(declare-fun c!27828 () Bool)

(assert (=> d!29973 (= c!27828 (isEmpty!827 lt!38176))))

(assert (=> d!29973 (validRegex!177 r!13481)))

(assert (=> d!29973 (= (matchR!57 r!13481 lt!38176) lt!38205)))

(declare-fun b!126927 () Bool)

(declare-fun derivativeStep!72 (Regex!585 C!2092) Regex!585)

(assert (=> b!126927 (= e!72974 (matchR!57 (derivativeStep!72 r!13481 (head!516 lt!38176)) (tail!252 lt!38176)))))

(declare-fun b!126928 () Bool)

(declare-fun e!72971 () Bool)

(assert (=> b!126928 (= e!72971 e!72975)))

(declare-fun res!58724 () Bool)

(assert (=> b!126928 (=> res!58724 e!72975)))

(declare-fun call!5509 () Bool)

(assert (=> b!126928 (= res!58724 call!5509)))

(declare-fun b!126929 () Bool)

(assert (=> b!126929 (= e!72976 (= lt!38205 call!5509))))

(declare-fun b!126930 () Bool)

(declare-fun res!58719 () Bool)

(declare-fun e!72972 () Bool)

(assert (=> b!126930 (=> (not res!58719) (not e!72972))))

(assert (=> b!126930 (= res!58719 (isEmpty!827 (tail!252 lt!38176)))))

(declare-fun b!126931 () Bool)

(declare-fun res!58720 () Bool)

(declare-fun e!72973 () Bool)

(assert (=> b!126931 (=> res!58720 e!72973)))

(assert (=> b!126931 (= res!58720 (not ((_ is ElementMatch!585) r!13481)))))

(assert (=> b!126931 (= e!72970 e!72973)))

(declare-fun b!126932 () Bool)

(declare-fun res!58717 () Bool)

(assert (=> b!126932 (=> res!58717 e!72973)))

(assert (=> b!126932 (= res!58717 e!72972)))

(declare-fun res!58723 () Bool)

(assert (=> b!126932 (=> (not res!58723) (not e!72972))))

(assert (=> b!126932 (= res!58723 lt!38205)))

(declare-fun bm!5504 () Bool)

(assert (=> bm!5504 (= call!5509 (isEmpty!827 lt!38176))))

(declare-fun b!126933 () Bool)

(assert (=> b!126933 (= e!72972 (= (head!516 lt!38176) (c!27787 r!13481)))))

(declare-fun b!126934 () Bool)

(assert (=> b!126934 (= e!72976 e!72970)))

(declare-fun c!27826 () Bool)

(assert (=> b!126934 (= c!27826 ((_ is EmptyLang!585) r!13481))))

(declare-fun b!126935 () Bool)

(assert (=> b!126935 (= e!72973 e!72971)))

(declare-fun res!58721 () Bool)

(assert (=> b!126935 (=> (not res!58721) (not e!72971))))

(assert (=> b!126935 (= res!58721 (not lt!38205))))

(declare-fun b!126936 () Bool)

(declare-fun res!58718 () Bool)

(assert (=> b!126936 (=> (not res!58718) (not e!72972))))

(assert (=> b!126936 (= res!58718 (not call!5509))))

(declare-fun b!126937 () Bool)

(declare-fun res!58722 () Bool)

(assert (=> b!126937 (=> res!58722 e!72975)))

(assert (=> b!126937 (= res!58722 (not (isEmpty!827 (tail!252 lt!38176))))))

(assert (= (and d!29973 c!27828) b!126926))

(assert (= (and d!29973 (not c!27828)) b!126927))

(assert (= (and d!29973 c!27827) b!126929))

(assert (= (and d!29973 (not c!27827)) b!126934))

(assert (= (and b!126934 c!27826) b!126924))

(assert (= (and b!126934 (not c!27826)) b!126931))

(assert (= (and b!126931 (not res!58720)) b!126932))

(assert (= (and b!126932 res!58723) b!126936))

(assert (= (and b!126936 res!58718) b!126930))

(assert (= (and b!126930 res!58719) b!126933))

(assert (= (and b!126932 (not res!58717)) b!126935))

(assert (= (and b!126935 res!58721) b!126928))

(assert (= (and b!126928 (not res!58724)) b!126937))

(assert (= (and b!126937 (not res!58722)) b!126925))

(assert (= (or b!126929 b!126928 b!126936) bm!5504))

(declare-fun m!112071 () Bool)

(assert (=> b!126930 m!112071))

(assert (=> b!126930 m!112071))

(declare-fun m!112073 () Bool)

(assert (=> b!126930 m!112073))

(declare-fun m!112075 () Bool)

(assert (=> bm!5504 m!112075))

(assert (=> b!126937 m!112071))

(assert (=> b!126937 m!112071))

(assert (=> b!126937 m!112073))

(assert (=> d!29973 m!112075))

(assert (=> d!29973 m!111929))

(declare-fun m!112077 () Bool)

(assert (=> b!126925 m!112077))

(assert (=> b!126933 m!112077))

(assert (=> b!126927 m!112077))

(assert (=> b!126927 m!112077))

(declare-fun m!112079 () Bool)

(assert (=> b!126927 m!112079))

(assert (=> b!126927 m!112071))

(assert (=> b!126927 m!112079))

(assert (=> b!126927 m!112071))

(declare-fun m!112081 () Bool)

(assert (=> b!126927 m!112081))

(declare-fun m!112083 () Bool)

(assert (=> b!126926 m!112083))

(assert (=> b!126730 d!29973))

(declare-fun d!29979 () Bool)

(declare-fun c!27829 () Bool)

(assert (=> d!29979 (= c!27829 (isEmpty!827 lt!38176))))

(declare-fun e!72977 () Bool)

(assert (=> d!29979 (= (matchZipper!17 lt!38177 lt!38176) e!72977)))

(declare-fun b!126938 () Bool)

(assert (=> b!126938 (= e!72977 (nullableZipper!6 lt!38177))))

(declare-fun b!126939 () Bool)

(assert (=> b!126939 (= e!72977 (matchZipper!17 (derivationStepZipper!6 lt!38177 (head!516 lt!38176)) (tail!252 lt!38176)))))

(assert (= (and d!29979 c!27829) b!126938))

(assert (= (and d!29979 (not c!27829)) b!126939))

(assert (=> d!29979 m!112075))

(assert (=> b!126938 m!111993))

(assert (=> b!126939 m!112077))

(assert (=> b!126939 m!112077))

(declare-fun m!112085 () Bool)

(assert (=> b!126939 m!112085))

(assert (=> b!126939 m!112071))

(assert (=> b!126939 m!112085))

(assert (=> b!126939 m!112071))

(declare-fun m!112087 () Bool)

(assert (=> b!126939 m!112087))

(assert (=> b!126730 d!29979))

(declare-fun d!29981 () Bool)

(declare-fun c!27832 () Bool)

(assert (=> d!29981 (= c!27832 ((_ is Node!591) (c!27788 input!6028)))))

(declare-fun e!72982 () Bool)

(assert (=> d!29981 (= (inv!2703 (c!27788 input!6028)) e!72982)))

(declare-fun b!126946 () Bool)

(declare-fun inv!2707 (Conc!591) Bool)

(assert (=> b!126946 (= e!72982 (inv!2707 (c!27788 input!6028)))))

(declare-fun b!126947 () Bool)

(declare-fun e!72983 () Bool)

(assert (=> b!126947 (= e!72982 e!72983)))

(declare-fun res!58727 () Bool)

(assert (=> b!126947 (= res!58727 (not ((_ is Leaf!1032) (c!27788 input!6028))))))

(assert (=> b!126947 (=> res!58727 e!72983)))

(declare-fun b!126948 () Bool)

(declare-fun inv!2708 (Conc!591) Bool)

(assert (=> b!126948 (= e!72983 (inv!2708 (c!27788 input!6028)))))

(assert (= (and d!29981 c!27832) b!126946))

(assert (= (and d!29981 (not c!27832)) b!126947))

(assert (= (and b!126947 (not res!58727)) b!126948))

(declare-fun m!112089 () Bool)

(assert (=> b!126946 m!112089))

(declare-fun m!112091 () Bool)

(assert (=> b!126948 m!112091))

(assert (=> b!126731 d!29981))

(declare-fun c!27838 () Bool)

(declare-fun c!27837 () Bool)

(declare-fun call!5518 () Bool)

(declare-fun bm!5511 () Bool)

(assert (=> bm!5511 (= call!5518 (validRegex!177 (ite c!27838 (reg!914 r!13481) (ite c!27837 (regTwo!1683 r!13481) (regTwo!1682 r!13481)))))))

(declare-fun d!29983 () Bool)

(declare-fun res!58742 () Bool)

(declare-fun e!73002 () Bool)

(assert (=> d!29983 (=> res!58742 e!73002)))

(assert (=> d!29983 (= res!58742 ((_ is ElementMatch!585) r!13481))))

(assert (=> d!29983 (= (validRegex!177 r!13481) e!73002)))

(declare-fun b!126967 () Bool)

(declare-fun e!73000 () Bool)

(declare-fun call!5516 () Bool)

(assert (=> b!126967 (= e!73000 call!5516)))

(declare-fun b!126968 () Bool)

(declare-fun e!73004 () Bool)

(assert (=> b!126968 (= e!73002 e!73004)))

(assert (=> b!126968 (= c!27838 ((_ is Star!585) r!13481))))

(declare-fun b!126969 () Bool)

(declare-fun e!73001 () Bool)

(assert (=> b!126969 (= e!73004 e!73001)))

(declare-fun res!58739 () Bool)

(assert (=> b!126969 (= res!58739 (not (nullable!104 (reg!914 r!13481))))))

(assert (=> b!126969 (=> (not res!58739) (not e!73001))))

(declare-fun bm!5512 () Bool)

(assert (=> bm!5512 (= call!5516 call!5518)))

(declare-fun b!126970 () Bool)

(declare-fun res!58741 () Bool)

(declare-fun e!72999 () Bool)

(assert (=> b!126970 (=> res!58741 e!72999)))

(assert (=> b!126970 (= res!58741 (not ((_ is Concat!979) r!13481)))))

(declare-fun e!73003 () Bool)

(assert (=> b!126970 (= e!73003 e!72999)))

(declare-fun b!126971 () Bool)

(declare-fun e!72998 () Bool)

(assert (=> b!126971 (= e!72998 call!5516)))

(declare-fun b!126972 () Bool)

(assert (=> b!126972 (= e!73001 call!5518)))

(declare-fun b!126973 () Bool)

(assert (=> b!126973 (= e!72999 e!73000)))

(declare-fun res!58738 () Bool)

(assert (=> b!126973 (=> (not res!58738) (not e!73000))))

(declare-fun call!5517 () Bool)

(assert (=> b!126973 (= res!58738 call!5517)))

(declare-fun b!126974 () Bool)

(declare-fun res!58740 () Bool)

(assert (=> b!126974 (=> (not res!58740) (not e!72998))))

(assert (=> b!126974 (= res!58740 call!5517)))

(assert (=> b!126974 (= e!73003 e!72998)))

(declare-fun bm!5513 () Bool)

(assert (=> bm!5513 (= call!5517 (validRegex!177 (ite c!27837 (regOne!1683 r!13481) (regOne!1682 r!13481))))))

(declare-fun b!126975 () Bool)

(assert (=> b!126975 (= e!73004 e!73003)))

(assert (=> b!126975 (= c!27837 ((_ is Union!585) r!13481))))

(assert (= (and d!29983 (not res!58742)) b!126968))

(assert (= (and b!126968 c!27838) b!126969))

(assert (= (and b!126968 (not c!27838)) b!126975))

(assert (= (and b!126969 res!58739) b!126972))

(assert (= (and b!126975 c!27837) b!126974))

(assert (= (and b!126975 (not c!27837)) b!126970))

(assert (= (and b!126974 res!58740) b!126971))

(assert (= (and b!126970 (not res!58741)) b!126973))

(assert (= (and b!126973 res!58738) b!126967))

(assert (= (or b!126974 b!126973) bm!5513))

(assert (= (or b!126971 b!126967) bm!5512))

(assert (= (or b!126972 bm!5512) bm!5511))

(declare-fun m!112093 () Bool)

(assert (=> bm!5511 m!112093))

(declare-fun m!112095 () Bool)

(assert (=> b!126969 m!112095))

(declare-fun m!112097 () Bool)

(assert (=> bm!5513 m!112097))

(assert (=> start!12958 d!29983))

(declare-fun d!29985 () Bool)

(declare-fun isBalanced!173 (Conc!591) Bool)

(assert (=> d!29985 (= (inv!2702 input!6028) (isBalanced!173 (c!27788 input!6028)))))

(declare-fun bs!12475 () Bool)

(assert (= bs!12475 d!29985))

(declare-fun m!112099 () Bool)

(assert (=> bs!12475 m!112099))

(assert (=> start!12958 d!29985))

(declare-fun b!126986 () Bool)

(declare-fun e!73007 () Bool)

(assert (=> b!126986 (= e!73007 tp_is_empty!1225)))

(declare-fun b!126989 () Bool)

(declare-fun tp!69327 () Bool)

(declare-fun tp!69324 () Bool)

(assert (=> b!126989 (= e!73007 (and tp!69327 tp!69324))))

(assert (=> b!126729 (= tp!69268 e!73007)))

(declare-fun b!126988 () Bool)

(declare-fun tp!69328 () Bool)

(assert (=> b!126988 (= e!73007 tp!69328)))

(declare-fun b!126987 () Bool)

(declare-fun tp!69325 () Bool)

(declare-fun tp!69326 () Bool)

(assert (=> b!126987 (= e!73007 (and tp!69325 tp!69326))))

(assert (= (and b!126729 ((_ is ElementMatch!585) (regOne!1683 r!13481))) b!126986))

(assert (= (and b!126729 ((_ is Concat!979) (regOne!1683 r!13481))) b!126987))

(assert (= (and b!126729 ((_ is Star!585) (regOne!1683 r!13481))) b!126988))

(assert (= (and b!126729 ((_ is Union!585) (regOne!1683 r!13481))) b!126989))

(declare-fun b!126990 () Bool)

(declare-fun e!73008 () Bool)

(assert (=> b!126990 (= e!73008 tp_is_empty!1225)))

(declare-fun b!126993 () Bool)

(declare-fun tp!69332 () Bool)

(declare-fun tp!69329 () Bool)

(assert (=> b!126993 (= e!73008 (and tp!69332 tp!69329))))

(assert (=> b!126729 (= tp!69264 e!73008)))

(declare-fun b!126992 () Bool)

(declare-fun tp!69333 () Bool)

(assert (=> b!126992 (= e!73008 tp!69333)))

(declare-fun b!126991 () Bool)

(declare-fun tp!69330 () Bool)

(declare-fun tp!69331 () Bool)

(assert (=> b!126991 (= e!73008 (and tp!69330 tp!69331))))

(assert (= (and b!126729 ((_ is ElementMatch!585) (regTwo!1683 r!13481))) b!126990))

(assert (= (and b!126729 ((_ is Concat!979) (regTwo!1683 r!13481))) b!126991))

(assert (= (and b!126729 ((_ is Star!585) (regTwo!1683 r!13481))) b!126992))

(assert (= (and b!126729 ((_ is Union!585) (regTwo!1683 r!13481))) b!126993))

(declare-fun b!127002 () Bool)

(declare-fun tp!69342 () Bool)

(declare-fun e!73013 () Bool)

(declare-fun tp!69341 () Bool)

(assert (=> b!127002 (= e!73013 (and (inv!2703 (left!1667 (c!27788 input!6028))) tp!69341 (inv!2703 (right!1997 (c!27788 input!6028))) tp!69342))))

(declare-fun b!127004 () Bool)

(declare-fun e!73014 () Bool)

(declare-fun tp!69340 () Bool)

(assert (=> b!127004 (= e!73014 tp!69340)))

(declare-fun b!127003 () Bool)

(declare-fun inv!2709 (IArray!1183) Bool)

(assert (=> b!127003 (= e!73013 (and (inv!2709 (xs!3186 (c!27788 input!6028))) e!73014))))

(assert (=> b!126731 (= tp!69267 (and (inv!2703 (c!27788 input!6028)) e!73013))))

(assert (= (and b!126731 ((_ is Node!591) (c!27788 input!6028))) b!127002))

(assert (= b!127003 b!127004))

(assert (= (and b!126731 ((_ is Leaf!1032) (c!27788 input!6028))) b!127003))

(declare-fun m!112101 () Bool)

(assert (=> b!127002 m!112101))

(declare-fun m!112103 () Bool)

(assert (=> b!127002 m!112103))

(declare-fun m!112105 () Bool)

(assert (=> b!127003 m!112105))

(assert (=> b!126731 m!111953))

(declare-fun b!127005 () Bool)

(declare-fun e!73015 () Bool)

(assert (=> b!127005 (= e!73015 tp_is_empty!1225)))

(declare-fun b!127008 () Bool)

(declare-fun tp!69346 () Bool)

(declare-fun tp!69343 () Bool)

(assert (=> b!127008 (= e!73015 (and tp!69346 tp!69343))))

(assert (=> b!126732 (= tp!69266 e!73015)))

(declare-fun b!127007 () Bool)

(declare-fun tp!69347 () Bool)

(assert (=> b!127007 (= e!73015 tp!69347)))

(declare-fun b!127006 () Bool)

(declare-fun tp!69344 () Bool)

(declare-fun tp!69345 () Bool)

(assert (=> b!127006 (= e!73015 (and tp!69344 tp!69345))))

(assert (= (and b!126732 ((_ is ElementMatch!585) (regOne!1682 r!13481))) b!127005))

(assert (= (and b!126732 ((_ is Concat!979) (regOne!1682 r!13481))) b!127006))

(assert (= (and b!126732 ((_ is Star!585) (regOne!1682 r!13481))) b!127007))

(assert (= (and b!126732 ((_ is Union!585) (regOne!1682 r!13481))) b!127008))

(declare-fun b!127009 () Bool)

(declare-fun e!73016 () Bool)

(assert (=> b!127009 (= e!73016 tp_is_empty!1225)))

(declare-fun b!127012 () Bool)

(declare-fun tp!69351 () Bool)

(declare-fun tp!69348 () Bool)

(assert (=> b!127012 (= e!73016 (and tp!69351 tp!69348))))

(assert (=> b!126732 (= tp!69265 e!73016)))

(declare-fun b!127011 () Bool)

(declare-fun tp!69352 () Bool)

(assert (=> b!127011 (= e!73016 tp!69352)))

(declare-fun b!127010 () Bool)

(declare-fun tp!69349 () Bool)

(declare-fun tp!69350 () Bool)

(assert (=> b!127010 (= e!73016 (and tp!69349 tp!69350))))

(assert (= (and b!126732 ((_ is ElementMatch!585) (regTwo!1682 r!13481))) b!127009))

(assert (= (and b!126732 ((_ is Concat!979) (regTwo!1682 r!13481))) b!127010))

(assert (= (and b!126732 ((_ is Star!585) (regTwo!1682 r!13481))) b!127011))

(assert (= (and b!126732 ((_ is Union!585) (regTwo!1682 r!13481))) b!127012))

(declare-fun b!127013 () Bool)

(declare-fun e!73017 () Bool)

(assert (=> b!127013 (= e!73017 tp_is_empty!1225)))

(declare-fun b!127016 () Bool)

(declare-fun tp!69356 () Bool)

(declare-fun tp!69353 () Bool)

(assert (=> b!127016 (= e!73017 (and tp!69356 tp!69353))))

(assert (=> b!126727 (= tp!69269 e!73017)))

(declare-fun b!127015 () Bool)

(declare-fun tp!69357 () Bool)

(assert (=> b!127015 (= e!73017 tp!69357)))

(declare-fun b!127014 () Bool)

(declare-fun tp!69354 () Bool)

(declare-fun tp!69355 () Bool)

(assert (=> b!127014 (= e!73017 (and tp!69354 tp!69355))))

(assert (= (and b!126727 ((_ is ElementMatch!585) (reg!914 r!13481))) b!127013))

(assert (= (and b!126727 ((_ is Concat!979) (reg!914 r!13481))) b!127014))

(assert (= (and b!126727 ((_ is Star!585) (reg!914 r!13481))) b!127015))

(assert (= (and b!126727 ((_ is Union!585) (reg!914 r!13481))) b!127016))

(check-sat (not b!126925) (not b!126938) (not b!126993) (not b!126930) (not d!29949) (not b!127008) (not bm!5513) (not b!126933) (not b!126818) (not b!126739) (not d!29943) (not b!126939) (not d!29985) (not b!127010) (not b!126926) (not b!127011) (not d!29941) (not b!126937) (not b!127006) tp_is_empty!1225 (not b!127002) (not b!127016) (not b!126948) (not b!126794) (not d!29973) (not b!126989) (not b!126786) (not bm!5511) (not b!126991) (not b!127012) (not d!29965) (not b!127015) (not b!126988) (not b!126992) (not b!127007) (not b!126731) (not d!29937) (not b!127003) (not b!126927) (not b!127014) (not d!29961) (not d!29979) (not bm!5504) (not d!29953) (not d!29969) (not b!127004) (not b!126946) (not b!126802) (not b!126803) (not b!126969) (not b!126987) (not b!126793))
(check-sat)
(get-model)

(declare-fun d!30011 () Bool)

(declare-fun res!58756 () Bool)

(declare-fun e!73051 () Bool)

(assert (=> d!30011 (=> res!58756 e!73051)))

(assert (=> d!30011 (= res!58756 ((_ is Nil!2097) lt!38202))))

(assert (=> d!30011 (= (noDuplicate!30 lt!38202) e!73051)))

(declare-fun b!127078 () Bool)

(declare-fun e!73052 () Bool)

(assert (=> b!127078 (= e!73051 e!73052)))

(declare-fun res!58757 () Bool)

(assert (=> b!127078 (=> (not res!58757) (not e!73052))))

(declare-fun contains!296 (List!2103 Context!250) Bool)

(assert (=> b!127078 (= res!58757 (not (contains!296 (t!22675 lt!38202) (h!7494 lt!38202))))))

(declare-fun b!127079 () Bool)

(assert (=> b!127079 (= e!73052 (noDuplicate!30 (t!22675 lt!38202)))))

(assert (= (and d!30011 (not res!58756)) b!127078))

(assert (= (and b!127078 res!58757) b!127079))

(declare-fun m!112145 () Bool)

(assert (=> b!127078 m!112145))

(declare-fun m!112149 () Bool)

(assert (=> b!127079 m!112149))

(assert (=> d!29969 d!30011))

(declare-fun d!30013 () Bool)

(declare-fun e!73068 () Bool)

(assert (=> d!30013 e!73068))

(declare-fun res!58768 () Bool)

(assert (=> d!30013 (=> (not res!58768) (not e!73068))))

(declare-fun res!58767 () List!2103)

(assert (=> d!30013 (= res!58768 (noDuplicate!30 res!58767))))

(declare-fun e!73067 () Bool)

(assert (=> d!30013 e!73067))

(assert (=> d!30013 (= (choose!1640 lt!38177) res!58767)))

(declare-fun b!127096 () Bool)

(declare-fun e!73066 () Bool)

(declare-fun tp!69362 () Bool)

(assert (=> b!127096 (= e!73066 tp!69362)))

(declare-fun tp!69363 () Bool)

(declare-fun b!127095 () Bool)

(declare-fun inv!2710 (Context!250) Bool)

(assert (=> b!127095 (= e!73067 (and (inv!2710 (h!7494 res!58767)) e!73066 tp!69363))))

(declare-fun b!127097 () Bool)

(assert (=> b!127097 (= e!73068 (= (content!239 res!58767) lt!38177))))

(assert (= b!127095 b!127096))

(assert (= (and d!30013 ((_ is Cons!2097) res!58767)) b!127095))

(assert (= (and d!30013 res!58768) b!127097))

(declare-fun m!112165 () Bool)

(assert (=> d!30013 m!112165))

(declare-fun m!112167 () Bool)

(assert (=> b!127095 m!112167))

(declare-fun m!112169 () Bool)

(assert (=> b!127097 m!112169))

(assert (=> d!29969 d!30013))

(assert (=> b!126731 d!29981))

(declare-fun d!30021 () Bool)

(declare-fun lambda!3291 () Int)

(declare-fun exists!40 ((InoxSet Context!250) Int) Bool)

(assert (=> d!30021 (= (nullableZipper!6 lt!38177) (exists!40 lt!38177 lambda!3291))))

(declare-fun bs!12489 () Bool)

(assert (= bs!12489 d!30021))

(declare-fun m!112237 () Bool)

(assert (=> bs!12489 m!112237))

(assert (=> b!126802 d!30021))

(declare-fun d!30053 () Bool)

(declare-fun c!27888 () Bool)

(assert (=> d!30053 (= c!27888 (isEmpty!827 (tail!252 (dropList!52 input!6028 0))))))

(declare-fun e!73103 () Bool)

(assert (=> d!30053 (= (matchZipper!17 (derivationStepZipper!6 lt!38177 (head!516 (dropList!52 input!6028 0))) (tail!252 (dropList!52 input!6028 0))) e!73103)))

(declare-fun b!127160 () Bool)

(assert (=> b!127160 (= e!73103 (nullableZipper!6 (derivationStepZipper!6 lt!38177 (head!516 (dropList!52 input!6028 0)))))))

(declare-fun b!127161 () Bool)

(assert (=> b!127161 (= e!73103 (matchZipper!17 (derivationStepZipper!6 (derivationStepZipper!6 lt!38177 (head!516 (dropList!52 input!6028 0))) (head!516 (tail!252 (dropList!52 input!6028 0)))) (tail!252 (tail!252 (dropList!52 input!6028 0)))))))

(assert (= (and d!30053 c!27888) b!127160))

(assert (= (and d!30053 (not c!27888)) b!127161))

(assert (=> d!30053 m!112023))

(declare-fun m!112241 () Bool)

(assert (=> d!30053 m!112241))

(assert (=> b!127160 m!112021))

(declare-fun m!112243 () Bool)

(assert (=> b!127160 m!112243))

(assert (=> b!127161 m!112023))

(declare-fun m!112245 () Bool)

(assert (=> b!127161 m!112245))

(assert (=> b!127161 m!112021))

(assert (=> b!127161 m!112245))

(declare-fun m!112247 () Bool)

(assert (=> b!127161 m!112247))

(assert (=> b!127161 m!112023))

(declare-fun m!112249 () Bool)

(assert (=> b!127161 m!112249))

(assert (=> b!127161 m!112247))

(assert (=> b!127161 m!112249))

(declare-fun m!112251 () Bool)

(assert (=> b!127161 m!112251))

(assert (=> b!126803 d!30053))

(declare-fun d!30057 () Bool)

(assert (=> d!30057 true))

(declare-fun lambda!3294 () Int)

(declare-fun flatMap!65 ((InoxSet Context!250) Int) (InoxSet Context!250))

(assert (=> d!30057 (= (derivationStepZipper!6 lt!38177 (head!516 (dropList!52 input!6028 0))) (flatMap!65 lt!38177 lambda!3294))))

(declare-fun bs!12490 () Bool)

(assert (= bs!12490 d!30057))

(declare-fun m!112257 () Bool)

(assert (=> bs!12490 m!112257))

(assert (=> b!126803 d!30057))

(declare-fun d!30061 () Bool)

(assert (=> d!30061 (= (head!516 (dropList!52 input!6028 0)) (h!7492 (dropList!52 input!6028 0)))))

(assert (=> b!126803 d!30061))

(declare-fun d!30065 () Bool)

(assert (=> d!30065 (= (tail!252 (dropList!52 input!6028 0)) (t!22673 (dropList!52 input!6028 0)))))

(assert (=> b!126803 d!30065))

(declare-fun d!30067 () Bool)

(declare-fun lt!38225 () Int)

(declare-fun size!1922 (List!2101) Int)

(assert (=> d!30067 (= lt!38225 (size!1922 (list!815 input!6028)))))

(declare-fun size!1923 (Conc!591) Int)

(assert (=> d!30067 (= lt!38225 (size!1923 (c!27788 input!6028)))))

(assert (=> d!30067 (= (size!1919 input!6028) lt!38225)))

(declare-fun bs!12491 () Bool)

(assert (= bs!12491 d!30067))

(assert (=> bs!12491 m!111951))

(assert (=> bs!12491 m!111951))

(declare-fun m!112269 () Bool)

(assert (=> bs!12491 m!112269))

(declare-fun m!112271 () Bool)

(assert (=> bs!12491 m!112271))

(assert (=> b!126786 d!30067))

(declare-fun bm!5536 () Bool)

(declare-fun c!27894 () Bool)

(declare-fun c!27895 () Bool)

(declare-fun call!5543 () Bool)

(assert (=> bm!5536 (= call!5543 (validRegex!177 (ite c!27895 (reg!914 (ite c!27837 (regOne!1683 r!13481) (regOne!1682 r!13481))) (ite c!27894 (regTwo!1683 (ite c!27837 (regOne!1683 r!13481) (regOne!1682 r!13481))) (regTwo!1682 (ite c!27837 (regOne!1683 r!13481) (regOne!1682 r!13481)))))))))

(declare-fun d!30071 () Bool)

(declare-fun res!58811 () Bool)

(declare-fun e!73126 () Bool)

(assert (=> d!30071 (=> res!58811 e!73126)))

(assert (=> d!30071 (= res!58811 ((_ is ElementMatch!585) (ite c!27837 (regOne!1683 r!13481) (regOne!1682 r!13481))))))

(assert (=> d!30071 (= (validRegex!177 (ite c!27837 (regOne!1683 r!13481) (regOne!1682 r!13481))) e!73126)))

(declare-fun b!127185 () Bool)

(declare-fun e!73124 () Bool)

(declare-fun call!5541 () Bool)

(assert (=> b!127185 (= e!73124 call!5541)))

(declare-fun b!127186 () Bool)

(declare-fun e!73128 () Bool)

(assert (=> b!127186 (= e!73126 e!73128)))

(assert (=> b!127186 (= c!27895 ((_ is Star!585) (ite c!27837 (regOne!1683 r!13481) (regOne!1682 r!13481))))))

(declare-fun b!127187 () Bool)

(declare-fun e!73125 () Bool)

(assert (=> b!127187 (= e!73128 e!73125)))

(declare-fun res!58808 () Bool)

(assert (=> b!127187 (= res!58808 (not (nullable!104 (reg!914 (ite c!27837 (regOne!1683 r!13481) (regOne!1682 r!13481))))))))

(assert (=> b!127187 (=> (not res!58808) (not e!73125))))

(declare-fun bm!5537 () Bool)

(assert (=> bm!5537 (= call!5541 call!5543)))

(declare-fun b!127188 () Bool)

(declare-fun res!58810 () Bool)

(declare-fun e!73123 () Bool)

(assert (=> b!127188 (=> res!58810 e!73123)))

(assert (=> b!127188 (= res!58810 (not ((_ is Concat!979) (ite c!27837 (regOne!1683 r!13481) (regOne!1682 r!13481)))))))

(declare-fun e!73127 () Bool)

(assert (=> b!127188 (= e!73127 e!73123)))

(declare-fun b!127189 () Bool)

(declare-fun e!73122 () Bool)

(assert (=> b!127189 (= e!73122 call!5541)))

(declare-fun b!127190 () Bool)

(assert (=> b!127190 (= e!73125 call!5543)))

(declare-fun b!127191 () Bool)

(assert (=> b!127191 (= e!73123 e!73124)))

(declare-fun res!58807 () Bool)

(assert (=> b!127191 (=> (not res!58807) (not e!73124))))

(declare-fun call!5542 () Bool)

(assert (=> b!127191 (= res!58807 call!5542)))

(declare-fun b!127192 () Bool)

(declare-fun res!58809 () Bool)

(assert (=> b!127192 (=> (not res!58809) (not e!73122))))

(assert (=> b!127192 (= res!58809 call!5542)))

(assert (=> b!127192 (= e!73127 e!73122)))

(declare-fun bm!5538 () Bool)

(assert (=> bm!5538 (= call!5542 (validRegex!177 (ite c!27894 (regOne!1683 (ite c!27837 (regOne!1683 r!13481) (regOne!1682 r!13481))) (regOne!1682 (ite c!27837 (regOne!1683 r!13481) (regOne!1682 r!13481))))))))

(declare-fun b!127193 () Bool)

(assert (=> b!127193 (= e!73128 e!73127)))

(assert (=> b!127193 (= c!27894 ((_ is Union!585) (ite c!27837 (regOne!1683 r!13481) (regOne!1682 r!13481))))))

(assert (= (and d!30071 (not res!58811)) b!127186))

(assert (= (and b!127186 c!27895) b!127187))

(assert (= (and b!127186 (not c!27895)) b!127193))

(assert (= (and b!127187 res!58808) b!127190))

(assert (= (and b!127193 c!27894) b!127192))

(assert (= (and b!127193 (not c!27894)) b!127188))

(assert (= (and b!127192 res!58809) b!127189))

(assert (= (and b!127188 (not res!58810)) b!127191))

(assert (= (and b!127191 res!58807) b!127185))

(assert (= (or b!127192 b!127191) bm!5538))

(assert (= (or b!127189 b!127185) bm!5537))

(assert (= (or b!127190 bm!5537) bm!5536))

(declare-fun m!112273 () Bool)

(assert (=> bm!5536 m!112273))

(declare-fun m!112275 () Bool)

(assert (=> b!127187 m!112275))

(declare-fun m!112277 () Bool)

(assert (=> bm!5538 m!112277))

(assert (=> bm!5513 d!30071))

(declare-fun d!30073 () Bool)

(assert (=> d!30073 (= (isEmpty!827 lt!38176) ((_ is Nil!2095) lt!38176))))

(assert (=> d!29973 d!30073))

(assert (=> d!29973 d!29983))

(declare-fun b!127223 () Bool)

(declare-fun e!73140 () List!2101)

(declare-fun ++!394 (List!2101 List!2101) List!2101)

(assert (=> b!127223 (= e!73140 (++!394 (list!817 (left!1667 (c!27788 input!6028))) (list!817 (right!1997 (c!27788 input!6028)))))))

(declare-fun b!127220 () Bool)

(declare-fun e!73139 () List!2101)

(assert (=> b!127220 (= e!73139 Nil!2095)))

(declare-fun b!127222 () Bool)

(declare-fun list!819 (IArray!1183) List!2101)

(assert (=> b!127222 (= e!73140 (list!819 (xs!3186 (c!27788 input!6028))))))

(declare-fun b!127221 () Bool)

(assert (=> b!127221 (= e!73139 e!73140)))

(declare-fun c!27901 () Bool)

(assert (=> b!127221 (= c!27901 ((_ is Leaf!1032) (c!27788 input!6028)))))

(declare-fun d!30075 () Bool)

(declare-fun c!27900 () Bool)

(assert (=> d!30075 (= c!27900 ((_ is Empty!591) (c!27788 input!6028)))))

(assert (=> d!30075 (= (list!817 (c!27788 input!6028)) e!73139)))

(assert (= (and d!30075 c!27900) b!127220))

(assert (= (and d!30075 (not c!27900)) b!127221))

(assert (= (and b!127221 c!27901) b!127222))

(assert (= (and b!127221 (not c!27901)) b!127223))

(declare-fun m!112291 () Bool)

(assert (=> b!127223 m!112291))

(declare-fun m!112293 () Bool)

(assert (=> b!127223 m!112293))

(assert (=> b!127223 m!112291))

(assert (=> b!127223 m!112293))

(declare-fun m!112295 () Bool)

(assert (=> b!127223 m!112295))

(declare-fun m!112297 () Bool)

(assert (=> b!127222 m!112297))

(assert (=> d!29941 d!30075))

(declare-fun d!30081 () Bool)

(declare-fun lt!38228 () Regex!585)

(assert (=> d!30081 (validRegex!177 lt!38228)))

(declare-fun generalisedUnion!6 (List!2102) Regex!585)

(declare-fun unfocusZipperList!6 (List!2103) List!2102)

(assert (=> d!30081 (= lt!38228 (generalisedUnion!6 (unfocusZipperList!6 (toList!285 (store ((as const (Array Context!250 Bool)) false) (Context!251 (Cons!2096 r!13481 Nil!2096)) true)))))))

(assert (=> d!30081 (= (unfocusZipper!9 (toList!285 (store ((as const (Array Context!250 Bool)) false) (Context!251 (Cons!2096 r!13481 Nil!2096)) true))) lt!38228)))

(declare-fun bs!12493 () Bool)

(assert (= bs!12493 d!30081))

(declare-fun m!112305 () Bool)

(assert (=> bs!12493 m!112305))

(assert (=> bs!12493 m!111961))

(declare-fun m!112307 () Bool)

(assert (=> bs!12493 m!112307))

(assert (=> bs!12493 m!112307))

(declare-fun m!112309 () Bool)

(assert (=> bs!12493 m!112309))

(assert (=> b!126739 d!30081))

(declare-fun d!30085 () Bool)

(declare-fun e!73154 () Bool)

(assert (=> d!30085 e!73154))

(declare-fun res!58832 () Bool)

(assert (=> d!30085 (=> (not res!58832) (not e!73154))))

(declare-fun lt!38229 () List!2103)

(assert (=> d!30085 (= res!58832 (noDuplicate!30 lt!38229))))

(assert (=> d!30085 (= lt!38229 (choose!1640 (store ((as const (Array Context!250 Bool)) false) (Context!251 (Cons!2096 r!13481 Nil!2096)) true)))))

(assert (=> d!30085 (= (toList!285 (store ((as const (Array Context!250 Bool)) false) (Context!251 (Cons!2096 r!13481 Nil!2096)) true)) lt!38229)))

(declare-fun b!127266 () Bool)

(assert (=> b!127266 (= e!73154 (= (content!239 lt!38229) (store ((as const (Array Context!250 Bool)) false) (Context!251 (Cons!2096 r!13481 Nil!2096)) true)))))

(assert (= (and d!30085 res!58832) b!127266))

(declare-fun m!112311 () Bool)

(assert (=> d!30085 m!112311))

(assert (=> d!30085 m!111959))

(declare-fun m!112313 () Bool)

(assert (=> d!30085 m!112313))

(declare-fun m!112315 () Bool)

(assert (=> b!127266 m!112315))

(assert (=> b!126739 d!30085))

(assert (=> b!126793 d!30021))

(declare-fun d!30087 () Bool)

(assert (=> d!30087 (= (head!516 lt!38176) (h!7492 lt!38176))))

(assert (=> b!126925 d!30087))

(declare-fun d!30089 () Bool)

(declare-fun nullableFct!29 (Regex!585) Bool)

(assert (=> d!30089 (= (nullable!104 r!13481) (nullableFct!29 r!13481))))

(declare-fun bs!12494 () Bool)

(assert (= bs!12494 d!30089))

(declare-fun m!112317 () Bool)

(assert (=> bs!12494 m!112317))

(assert (=> b!126926 d!30089))

(assert (=> d!29965 d!29973))

(assert (=> d!29965 d!29979))

(declare-fun d!30091 () Bool)

(assert (=> d!30091 (= (matchR!57 r!13481 lt!38176) (matchZipper!17 lt!38177 lt!38176))))

(assert (=> d!30091 true))

(declare-fun _$44!1263 () Unit!1637)

(assert (=> d!30091 (= (choose!1639 lt!38177 lt!38178 r!13481 lt!38176) _$44!1263)))

(declare-fun bs!12495 () Bool)

(assert (= bs!12495 d!30091))

(assert (=> bs!12495 m!111935))

(assert (=> bs!12495 m!111947))

(assert (=> d!29965 d!30091))

(assert (=> d!29965 d!29983))

(declare-fun d!30093 () Bool)

(declare-fun c!27904 () Bool)

(assert (=> d!30093 (= c!27904 (= (+ 0 1) (size!1919 input!6028)))))

(declare-fun e!73178 () Bool)

(assert (=> d!30093 (= (matchZipperSequence!17 (derivationStepZipper!6 lt!38177 (apply!275 input!6028 0)) input!6028 (+ 0 1)) e!73178)))

(declare-fun b!127342 () Bool)

(assert (=> b!127342 (= e!73178 (nullableZipper!6 (derivationStepZipper!6 lt!38177 (apply!275 input!6028 0))))))

(declare-fun b!127343 () Bool)

(assert (=> b!127343 (= e!73178 (matchZipperSequence!17 (derivationStepZipper!6 (derivationStepZipper!6 lt!38177 (apply!275 input!6028 0)) (apply!275 input!6028 (+ 0 1))) input!6028 (+ 0 1 1)))))

(assert (= (and d!30093 c!27904) b!127342))

(assert (= (and d!30093 (not c!27904)) b!127343))

(assert (=> d!30093 m!111989))

(assert (=> b!127342 m!111997))

(declare-fun m!112331 () Bool)

(assert (=> b!127342 m!112331))

(declare-fun m!112333 () Bool)

(assert (=> b!127343 m!112333))

(assert (=> b!127343 m!111997))

(assert (=> b!127343 m!112333))

(declare-fun m!112335 () Bool)

(assert (=> b!127343 m!112335))

(assert (=> b!127343 m!112335))

(declare-fun m!112337 () Bool)

(assert (=> b!127343 m!112337))

(assert (=> b!126794 d!30093))

(declare-fun bs!12496 () Bool)

(declare-fun d!30095 () Bool)

(assert (= bs!12496 (and d!30095 d!30057)))

(declare-fun lambda!3295 () Int)

(assert (=> bs!12496 (= (= (apply!275 input!6028 0) (head!516 (dropList!52 input!6028 0))) (= lambda!3295 lambda!3294))))

(assert (=> d!30095 true))

(assert (=> d!30095 (= (derivationStepZipper!6 lt!38177 (apply!275 input!6028 0)) (flatMap!65 lt!38177 lambda!3295))))

(declare-fun bs!12497 () Bool)

(assert (= bs!12497 d!30095))

(declare-fun m!112339 () Bool)

(assert (=> bs!12497 m!112339))

(assert (=> b!126794 d!30095))

(declare-fun d!30097 () Bool)

(declare-fun lt!38232 () C!2092)

(declare-fun apply!278 (List!2101 Int) C!2092)

(assert (=> d!30097 (= lt!38232 (apply!278 (list!815 input!6028) 0))))

(declare-fun apply!279 (Conc!591 Int) C!2092)

(assert (=> d!30097 (= lt!38232 (apply!279 (c!27788 input!6028) 0))))

(declare-fun e!73181 () Bool)

(assert (=> d!30097 e!73181))

(declare-fun res!58835 () Bool)

(assert (=> d!30097 (=> (not res!58835) (not e!73181))))

(assert (=> d!30097 (= res!58835 (<= 0 0))))

(assert (=> d!30097 (= (apply!275 input!6028 0) lt!38232)))

(declare-fun b!127346 () Bool)

(assert (=> b!127346 (= e!73181 (< 0 (size!1919 input!6028)))))

(assert (= (and d!30097 res!58835) b!127346))

(assert (=> d!30097 m!111951))

(assert (=> d!30097 m!111951))

(declare-fun m!112341 () Bool)

(assert (=> d!30097 m!112341))

(declare-fun m!112343 () Bool)

(assert (=> d!30097 m!112343))

(assert (=> b!127346 m!111989))

(assert (=> b!126794 d!30097))

(declare-fun d!30099 () Bool)

(declare-fun res!58842 () Bool)

(declare-fun e!73184 () Bool)

(assert (=> d!30099 (=> (not res!58842) (not e!73184))))

(assert (=> d!30099 (= res!58842 (= (csize!1412 (c!27788 input!6028)) (+ (size!1923 (left!1667 (c!27788 input!6028))) (size!1923 (right!1997 (c!27788 input!6028))))))))

(assert (=> d!30099 (= (inv!2707 (c!27788 input!6028)) e!73184)))

(declare-fun b!127353 () Bool)

(declare-fun res!58843 () Bool)

(assert (=> b!127353 (=> (not res!58843) (not e!73184))))

(assert (=> b!127353 (= res!58843 (and (not (= (left!1667 (c!27788 input!6028)) Empty!591)) (not (= (right!1997 (c!27788 input!6028)) Empty!591))))))

(declare-fun b!127354 () Bool)

(declare-fun res!58844 () Bool)

(assert (=> b!127354 (=> (not res!58844) (not e!73184))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!70 (Conc!591) Int)

(assert (=> b!127354 (= res!58844 (= (cheight!802 (c!27788 input!6028)) (+ (max!0 (height!70 (left!1667 (c!27788 input!6028))) (height!70 (right!1997 (c!27788 input!6028)))) 1)))))

(declare-fun b!127355 () Bool)

(assert (=> b!127355 (= e!73184 (<= 0 (cheight!802 (c!27788 input!6028))))))

(assert (= (and d!30099 res!58842) b!127353))

(assert (= (and b!127353 res!58843) b!127354))

(assert (= (and b!127354 res!58844) b!127355))

(declare-fun m!112345 () Bool)

(assert (=> d!30099 m!112345))

(declare-fun m!112347 () Bool)

(assert (=> d!30099 m!112347))

(declare-fun m!112349 () Bool)

(assert (=> b!127354 m!112349))

(declare-fun m!112351 () Bool)

(assert (=> b!127354 m!112351))

(assert (=> b!127354 m!112349))

(assert (=> b!127354 m!112351))

(declare-fun m!112353 () Bool)

(assert (=> b!127354 m!112353))

(assert (=> b!126946 d!30099))

(declare-fun b!127356 () Bool)

(declare-fun e!73185 () Bool)

(declare-fun lt!38233 () Bool)

(assert (=> b!127356 (= e!73185 (not lt!38233))))

(declare-fun b!127357 () Bool)

(declare-fun e!73190 () Bool)

(assert (=> b!127357 (= e!73190 (not (= (head!516 (tail!252 lt!38176)) (c!27787 (derivativeStep!72 r!13481 (head!516 lt!38176))))))))

(declare-fun b!127358 () Bool)

(declare-fun e!73189 () Bool)

(assert (=> b!127358 (= e!73189 (nullable!104 (derivativeStep!72 r!13481 (head!516 lt!38176))))))

(declare-fun d!30101 () Bool)

(declare-fun e!73191 () Bool)

(assert (=> d!30101 e!73191))

(declare-fun c!27906 () Bool)

(assert (=> d!30101 (= c!27906 ((_ is EmptyExpr!585) (derivativeStep!72 r!13481 (head!516 lt!38176))))))

(assert (=> d!30101 (= lt!38233 e!73189)))

(declare-fun c!27907 () Bool)

(assert (=> d!30101 (= c!27907 (isEmpty!827 (tail!252 lt!38176)))))

(assert (=> d!30101 (validRegex!177 (derivativeStep!72 r!13481 (head!516 lt!38176)))))

(assert (=> d!30101 (= (matchR!57 (derivativeStep!72 r!13481 (head!516 lt!38176)) (tail!252 lt!38176)) lt!38233)))

(declare-fun b!127359 () Bool)

(assert (=> b!127359 (= e!73189 (matchR!57 (derivativeStep!72 (derivativeStep!72 r!13481 (head!516 lt!38176)) (head!516 (tail!252 lt!38176))) (tail!252 (tail!252 lt!38176))))))

(declare-fun b!127360 () Bool)

(declare-fun e!73186 () Bool)

(assert (=> b!127360 (= e!73186 e!73190)))

(declare-fun res!58852 () Bool)

(assert (=> b!127360 (=> res!58852 e!73190)))

(declare-fun call!5544 () Bool)

(assert (=> b!127360 (= res!58852 call!5544)))

(declare-fun b!127361 () Bool)

(assert (=> b!127361 (= e!73191 (= lt!38233 call!5544))))

(declare-fun b!127362 () Bool)

(declare-fun res!58847 () Bool)

(declare-fun e!73187 () Bool)

(assert (=> b!127362 (=> (not res!58847) (not e!73187))))

(assert (=> b!127362 (= res!58847 (isEmpty!827 (tail!252 (tail!252 lt!38176))))))

(declare-fun b!127363 () Bool)

(declare-fun res!58848 () Bool)

(declare-fun e!73188 () Bool)

(assert (=> b!127363 (=> res!58848 e!73188)))

(assert (=> b!127363 (= res!58848 (not ((_ is ElementMatch!585) (derivativeStep!72 r!13481 (head!516 lt!38176)))))))

(assert (=> b!127363 (= e!73185 e!73188)))

(declare-fun b!127364 () Bool)

(declare-fun res!58845 () Bool)

(assert (=> b!127364 (=> res!58845 e!73188)))

(assert (=> b!127364 (= res!58845 e!73187)))

(declare-fun res!58851 () Bool)

(assert (=> b!127364 (=> (not res!58851) (not e!73187))))

(assert (=> b!127364 (= res!58851 lt!38233)))

(declare-fun bm!5539 () Bool)

(assert (=> bm!5539 (= call!5544 (isEmpty!827 (tail!252 lt!38176)))))

(declare-fun b!127365 () Bool)

(assert (=> b!127365 (= e!73187 (= (head!516 (tail!252 lt!38176)) (c!27787 (derivativeStep!72 r!13481 (head!516 lt!38176)))))))

(declare-fun b!127366 () Bool)

(assert (=> b!127366 (= e!73191 e!73185)))

(declare-fun c!27905 () Bool)

(assert (=> b!127366 (= c!27905 ((_ is EmptyLang!585) (derivativeStep!72 r!13481 (head!516 lt!38176))))))

(declare-fun b!127367 () Bool)

(assert (=> b!127367 (= e!73188 e!73186)))

(declare-fun res!58849 () Bool)

(assert (=> b!127367 (=> (not res!58849) (not e!73186))))

(assert (=> b!127367 (= res!58849 (not lt!38233))))

(declare-fun b!127368 () Bool)

(declare-fun res!58846 () Bool)

(assert (=> b!127368 (=> (not res!58846) (not e!73187))))

(assert (=> b!127368 (= res!58846 (not call!5544))))

(declare-fun b!127369 () Bool)

(declare-fun res!58850 () Bool)

(assert (=> b!127369 (=> res!58850 e!73190)))

(assert (=> b!127369 (= res!58850 (not (isEmpty!827 (tail!252 (tail!252 lt!38176)))))))

(assert (= (and d!30101 c!27907) b!127358))

(assert (= (and d!30101 (not c!27907)) b!127359))

(assert (= (and d!30101 c!27906) b!127361))

(assert (= (and d!30101 (not c!27906)) b!127366))

(assert (= (and b!127366 c!27905) b!127356))

(assert (= (and b!127366 (not c!27905)) b!127363))

(assert (= (and b!127363 (not res!58848)) b!127364))

(assert (= (and b!127364 res!58851) b!127368))

(assert (= (and b!127368 res!58846) b!127362))

(assert (= (and b!127362 res!58847) b!127365))

(assert (= (and b!127364 (not res!58845)) b!127367))

(assert (= (and b!127367 res!58849) b!127360))

(assert (= (and b!127360 (not res!58852)) b!127369))

(assert (= (and b!127369 (not res!58850)) b!127357))

(assert (= (or b!127361 b!127360 b!127368) bm!5539))

(assert (=> b!127362 m!112071))

(declare-fun m!112355 () Bool)

(assert (=> b!127362 m!112355))

(assert (=> b!127362 m!112355))

(declare-fun m!112357 () Bool)

(assert (=> b!127362 m!112357))

(assert (=> bm!5539 m!112071))

(assert (=> bm!5539 m!112073))

(assert (=> b!127369 m!112071))

(assert (=> b!127369 m!112355))

(assert (=> b!127369 m!112355))

(assert (=> b!127369 m!112357))

(assert (=> d!30101 m!112071))

(assert (=> d!30101 m!112073))

(assert (=> d!30101 m!112079))

(declare-fun m!112359 () Bool)

(assert (=> d!30101 m!112359))

(assert (=> b!127357 m!112071))

(declare-fun m!112361 () Bool)

(assert (=> b!127357 m!112361))

(assert (=> b!127365 m!112071))

(assert (=> b!127365 m!112361))

(assert (=> b!127359 m!112071))

(assert (=> b!127359 m!112361))

(assert (=> b!127359 m!112079))

(assert (=> b!127359 m!112361))

(declare-fun m!112363 () Bool)

(assert (=> b!127359 m!112363))

(assert (=> b!127359 m!112071))

(assert (=> b!127359 m!112355))

(assert (=> b!127359 m!112363))

(assert (=> b!127359 m!112355))

(declare-fun m!112365 () Bool)

(assert (=> b!127359 m!112365))

(assert (=> b!127358 m!112079))

(declare-fun m!112367 () Bool)

(assert (=> b!127358 m!112367))

(assert (=> b!126927 d!30101))

(declare-fun b!127390 () Bool)

(declare-fun e!73202 () Regex!585)

(declare-fun call!5556 () Regex!585)

(assert (=> b!127390 (= e!73202 (Concat!979 call!5556 r!13481))))

(declare-fun e!73203 () Regex!585)

(declare-fun b!127391 () Bool)

(declare-fun call!5555 () Regex!585)

(declare-fun call!5553 () Regex!585)

(assert (=> b!127391 (= e!73203 (Union!585 (Concat!979 call!5555 (regTwo!1682 r!13481)) call!5553))))

(declare-fun bm!5548 () Bool)

(assert (=> bm!5548 (= call!5555 call!5556)))

(declare-fun b!127392 () Bool)

(declare-fun c!27922 () Bool)

(assert (=> b!127392 (= c!27922 (nullable!104 (regOne!1682 r!13481)))))

(assert (=> b!127392 (= e!73202 e!73203)))

(declare-fun b!127393 () Bool)

(declare-fun e!73206 () Regex!585)

(assert (=> b!127393 (= e!73206 e!73202)))

(declare-fun c!27919 () Bool)

(assert (=> b!127393 (= c!27919 ((_ is Star!585) r!13481))))

(declare-fun b!127394 () Bool)

(declare-fun e!73204 () Regex!585)

(assert (=> b!127394 (= e!73204 EmptyLang!585)))

(declare-fun bm!5549 () Bool)

(declare-fun c!27921 () Bool)

(assert (=> bm!5549 (= call!5553 (derivativeStep!72 (ite c!27921 (regOne!1683 r!13481) (regTwo!1682 r!13481)) (head!516 lt!38176)))))

(declare-fun bm!5550 () Bool)

(declare-fun call!5554 () Regex!585)

(assert (=> bm!5550 (= call!5556 call!5554)))

(declare-fun b!127395 () Bool)

(declare-fun e!73205 () Regex!585)

(assert (=> b!127395 (= e!73205 (ite (= (head!516 lt!38176) (c!27787 r!13481)) EmptyExpr!585 EmptyLang!585))))

(declare-fun b!127396 () Bool)

(assert (=> b!127396 (= e!73206 (Union!585 call!5553 call!5554))))

(declare-fun b!127397 () Bool)

(assert (=> b!127397 (= e!73204 e!73205)))

(declare-fun c!27920 () Bool)

(assert (=> b!127397 (= c!27920 ((_ is ElementMatch!585) r!13481))))

(declare-fun d!30103 () Bool)

(declare-fun lt!38236 () Regex!585)

(assert (=> d!30103 (validRegex!177 lt!38236)))

(assert (=> d!30103 (= lt!38236 e!73204)))

(declare-fun c!27918 () Bool)

(assert (=> d!30103 (= c!27918 (or ((_ is EmptyExpr!585) r!13481) ((_ is EmptyLang!585) r!13481)))))

(assert (=> d!30103 (validRegex!177 r!13481)))

(assert (=> d!30103 (= (derivativeStep!72 r!13481 (head!516 lt!38176)) lt!38236)))

(declare-fun b!127398 () Bool)

(assert (=> b!127398 (= e!73203 (Union!585 (Concat!979 call!5555 (regTwo!1682 r!13481)) EmptyLang!585))))

(declare-fun b!127399 () Bool)

(assert (=> b!127399 (= c!27921 ((_ is Union!585) r!13481))))

(assert (=> b!127399 (= e!73205 e!73206)))

(declare-fun bm!5551 () Bool)

(assert (=> bm!5551 (= call!5554 (derivativeStep!72 (ite c!27921 (regTwo!1683 r!13481) (ite c!27919 (reg!914 r!13481) (regOne!1682 r!13481))) (head!516 lt!38176)))))

(assert (= (and d!30103 c!27918) b!127394))

(assert (= (and d!30103 (not c!27918)) b!127397))

(assert (= (and b!127397 c!27920) b!127395))

(assert (= (and b!127397 (not c!27920)) b!127399))

(assert (= (and b!127399 c!27921) b!127396))

(assert (= (and b!127399 (not c!27921)) b!127393))

(assert (= (and b!127393 c!27919) b!127390))

(assert (= (and b!127393 (not c!27919)) b!127392))

(assert (= (and b!127392 c!27922) b!127391))

(assert (= (and b!127392 (not c!27922)) b!127398))

(assert (= (or b!127391 b!127398) bm!5548))

(assert (= (or b!127390 bm!5548) bm!5550))

(assert (= (or b!127396 bm!5550) bm!5551))

(assert (= (or b!127396 b!127391) bm!5549))

(declare-fun m!112369 () Bool)

(assert (=> b!127392 m!112369))

(assert (=> bm!5549 m!112077))

(declare-fun m!112371 () Bool)

(assert (=> bm!5549 m!112371))

(declare-fun m!112373 () Bool)

(assert (=> d!30103 m!112373))

(assert (=> d!30103 m!111929))

(assert (=> bm!5551 m!112077))

(declare-fun m!112375 () Bool)

(assert (=> bm!5551 m!112375))

(assert (=> b!126927 d!30103))

(assert (=> b!126927 d!30087))

(declare-fun d!30105 () Bool)

(assert (=> d!30105 (= (tail!252 lt!38176) (t!22673 lt!38176))))

(assert (=> b!126927 d!30105))

(assert (=> d!29949 d!30067))

(declare-fun d!30107 () Bool)

(declare-fun res!58857 () Bool)

(declare-fun e!73209 () Bool)

(assert (=> d!30107 (=> (not res!58857) (not e!73209))))

(assert (=> d!30107 (= res!58857 (<= (size!1922 (list!819 (xs!3186 (c!27788 input!6028)))) 512))))

(assert (=> d!30107 (= (inv!2708 (c!27788 input!6028)) e!73209)))

(declare-fun b!127404 () Bool)

(declare-fun res!58858 () Bool)

(assert (=> b!127404 (=> (not res!58858) (not e!73209))))

(assert (=> b!127404 (= res!58858 (= (csize!1413 (c!27788 input!6028)) (size!1922 (list!819 (xs!3186 (c!27788 input!6028))))))))

(declare-fun b!127405 () Bool)

(assert (=> b!127405 (= e!73209 (and (> (csize!1413 (c!27788 input!6028)) 0) (<= (csize!1413 (c!27788 input!6028)) 512)))))

(assert (= (and d!30107 res!58857) b!127404))

(assert (= (and b!127404 res!58858) b!127405))

(assert (=> d!30107 m!112297))

(assert (=> d!30107 m!112297))

(declare-fun m!112377 () Bool)

(assert (=> d!30107 m!112377))

(assert (=> b!127404 m!112297))

(assert (=> b!127404 m!112297))

(assert (=> b!127404 m!112377))

(assert (=> b!126948 d!30107))

(declare-fun d!30109 () Bool)

(assert (=> d!30109 (= (isEmpty!827 (tail!252 lt!38176)) ((_ is Nil!2095) (tail!252 lt!38176)))))

(assert (=> b!126930 d!30109))

(assert (=> b!126930 d!30105))

(declare-fun d!30111 () Bool)

(declare-fun c!27923 () Bool)

(assert (=> d!30111 (= c!27923 ((_ is Node!591) (left!1667 (c!27788 input!6028))))))

(declare-fun e!73210 () Bool)

(assert (=> d!30111 (= (inv!2703 (left!1667 (c!27788 input!6028))) e!73210)))

(declare-fun b!127406 () Bool)

(assert (=> b!127406 (= e!73210 (inv!2707 (left!1667 (c!27788 input!6028))))))

(declare-fun b!127407 () Bool)

(declare-fun e!73211 () Bool)

(assert (=> b!127407 (= e!73210 e!73211)))

(declare-fun res!58859 () Bool)

(assert (=> b!127407 (= res!58859 (not ((_ is Leaf!1032) (left!1667 (c!27788 input!6028)))))))

(assert (=> b!127407 (=> res!58859 e!73211)))

(declare-fun b!127408 () Bool)

(assert (=> b!127408 (= e!73211 (inv!2708 (left!1667 (c!27788 input!6028))))))

(assert (= (and d!30111 c!27923) b!127406))

(assert (= (and d!30111 (not c!27923)) b!127407))

(assert (= (and b!127407 (not res!58859)) b!127408))

(declare-fun m!112379 () Bool)

(assert (=> b!127406 m!112379))

(declare-fun m!112381 () Bool)

(assert (=> b!127408 m!112381))

(assert (=> b!127002 d!30111))

(declare-fun d!30113 () Bool)

(declare-fun c!27924 () Bool)

(assert (=> d!30113 (= c!27924 ((_ is Node!591) (right!1997 (c!27788 input!6028))))))

(declare-fun e!73212 () Bool)

(assert (=> d!30113 (= (inv!2703 (right!1997 (c!27788 input!6028))) e!73212)))

(declare-fun b!127409 () Bool)

(assert (=> b!127409 (= e!73212 (inv!2707 (right!1997 (c!27788 input!6028))))))

(declare-fun b!127410 () Bool)

(declare-fun e!73213 () Bool)

(assert (=> b!127410 (= e!73212 e!73213)))

(declare-fun res!58860 () Bool)

(assert (=> b!127410 (= res!58860 (not ((_ is Leaf!1032) (right!1997 (c!27788 input!6028)))))))

(assert (=> b!127410 (=> res!58860 e!73213)))

(declare-fun b!127411 () Bool)

(assert (=> b!127411 (= e!73213 (inv!2708 (right!1997 (c!27788 input!6028))))))

(assert (= (and d!30113 c!27924) b!127409))

(assert (= (and d!30113 (not c!27924)) b!127410))

(assert (= (and b!127410 (not res!58860)) b!127411))

(declare-fun m!112383 () Bool)

(assert (=> b!127409 m!112383))

(declare-fun m!112385 () Bool)

(assert (=> b!127411 m!112385))

(assert (=> b!127002 d!30113))

(declare-fun d!30115 () Bool)

(assert (=> d!30115 (= (inv!2709 (xs!3186 (c!27788 input!6028))) (<= (size!1922 (innerList!649 (xs!3186 (c!27788 input!6028)))) 2147483647))))

(declare-fun bs!12498 () Bool)

(assert (= bs!12498 d!30115))

(declare-fun m!112387 () Bool)

(assert (=> bs!12498 m!112387))

(assert (=> b!127003 d!30115))

(declare-fun b!127424 () Bool)

(declare-fun res!58873 () Bool)

(declare-fun e!73218 () Bool)

(assert (=> b!127424 (=> (not res!58873) (not e!73218))))

(assert (=> b!127424 (= res!58873 (isBalanced!173 (right!1997 (c!27788 input!6028))))))

(declare-fun b!127425 () Bool)

(declare-fun res!58876 () Bool)

(assert (=> b!127425 (=> (not res!58876) (not e!73218))))

(assert (=> b!127425 (= res!58876 (isBalanced!173 (left!1667 (c!27788 input!6028))))))

(declare-fun d!30117 () Bool)

(declare-fun res!58875 () Bool)

(declare-fun e!73219 () Bool)

(assert (=> d!30117 (=> res!58875 e!73219)))

(assert (=> d!30117 (= res!58875 (not ((_ is Node!591) (c!27788 input!6028))))))

(assert (=> d!30117 (= (isBalanced!173 (c!27788 input!6028)) e!73219)))

(declare-fun b!127426 () Bool)

(assert (=> b!127426 (= e!73219 e!73218)))

(declare-fun res!58874 () Bool)

(assert (=> b!127426 (=> (not res!58874) (not e!73218))))

(assert (=> b!127426 (= res!58874 (<= (- 1) (- (height!70 (left!1667 (c!27788 input!6028))) (height!70 (right!1997 (c!27788 input!6028))))))))

(declare-fun b!127427 () Bool)

(declare-fun isEmpty!829 (Conc!591) Bool)

(assert (=> b!127427 (= e!73218 (not (isEmpty!829 (right!1997 (c!27788 input!6028)))))))

(declare-fun b!127428 () Bool)

(declare-fun res!58877 () Bool)

(assert (=> b!127428 (=> (not res!58877) (not e!73218))))

(assert (=> b!127428 (= res!58877 (<= (- (height!70 (left!1667 (c!27788 input!6028))) (height!70 (right!1997 (c!27788 input!6028)))) 1))))

(declare-fun b!127429 () Bool)

(declare-fun res!58878 () Bool)

(assert (=> b!127429 (=> (not res!58878) (not e!73218))))

(assert (=> b!127429 (= res!58878 (not (isEmpty!829 (left!1667 (c!27788 input!6028)))))))

(assert (= (and d!30117 (not res!58875)) b!127426))

(assert (= (and b!127426 res!58874) b!127428))

(assert (= (and b!127428 res!58877) b!127425))

(assert (= (and b!127425 res!58876) b!127424))

(assert (= (and b!127424 res!58873) b!127429))

(assert (= (and b!127429 res!58878) b!127427))

(declare-fun m!112389 () Bool)

(assert (=> b!127424 m!112389))

(declare-fun m!112391 () Bool)

(assert (=> b!127429 m!112391))

(assert (=> b!127428 m!112349))

(assert (=> b!127428 m!112351))

(declare-fun m!112393 () Bool)

(assert (=> b!127427 m!112393))

(declare-fun m!112395 () Bool)

(assert (=> b!127425 m!112395))

(assert (=> b!127426 m!112349))

(assert (=> b!127426 m!112351))

(assert (=> d!29985 d!30117))

(declare-fun b!127448 () Bool)

(declare-fun e!73233 () Int)

(declare-fun e!73230 () Int)

(assert (=> b!127448 (= e!73233 e!73230)))

(declare-fun c!27935 () Bool)

(declare-fun call!5559 () Int)

(assert (=> b!127448 (= c!27935 (>= 0 call!5559))))

(declare-fun b!127449 () Bool)

(declare-fun e!73234 () List!2101)

(assert (=> b!127449 (= e!73234 (drop!103 (t!22673 (list!817 (c!27788 input!6028))) (- 0 1)))))

(declare-fun b!127450 () Bool)

(assert (=> b!127450 (= e!73233 call!5559)))

(declare-fun b!127451 () Bool)

(declare-fun e!73231 () Bool)

(declare-fun lt!38239 () List!2101)

(assert (=> b!127451 (= e!73231 (= (size!1922 lt!38239) e!73233))))

(declare-fun c!27934 () Bool)

(assert (=> b!127451 (= c!27934 (<= 0 0))))

(declare-fun b!127452 () Bool)

(assert (=> b!127452 (= e!73230 0)))

(declare-fun b!127453 () Bool)

(declare-fun e!73232 () List!2101)

(assert (=> b!127453 (= e!73232 Nil!2095)))

(declare-fun d!30119 () Bool)

(assert (=> d!30119 e!73231))

(declare-fun res!58881 () Bool)

(assert (=> d!30119 (=> (not res!58881) (not e!73231))))

(declare-fun content!241 (List!2101) (InoxSet C!2092))

(assert (=> d!30119 (= res!58881 (= ((_ map implies) (content!241 lt!38239) (content!241 (list!817 (c!27788 input!6028)))) ((as const (InoxSet C!2092)) true)))))

(assert (=> d!30119 (= lt!38239 e!73232)))

(declare-fun c!27933 () Bool)

(assert (=> d!30119 (= c!27933 ((_ is Nil!2095) (list!817 (c!27788 input!6028))))))

(assert (=> d!30119 (= (drop!103 (list!817 (c!27788 input!6028)) 0) lt!38239)))

(declare-fun b!127454 () Bool)

(assert (=> b!127454 (= e!73232 e!73234)))

(declare-fun c!27936 () Bool)

(assert (=> b!127454 (= c!27936 (<= 0 0))))

(declare-fun b!127455 () Bool)

(assert (=> b!127455 (= e!73234 (list!817 (c!27788 input!6028)))))

(declare-fun b!127456 () Bool)

(assert (=> b!127456 (= e!73230 (- call!5559 0))))

(declare-fun bm!5554 () Bool)

(assert (=> bm!5554 (= call!5559 (size!1922 (list!817 (c!27788 input!6028))))))

(assert (= (and d!30119 c!27933) b!127453))

(assert (= (and d!30119 (not c!27933)) b!127454))

(assert (= (and b!127454 c!27936) b!127455))

(assert (= (and b!127454 (not c!27936)) b!127449))

(assert (= (and d!30119 res!58881) b!127451))

(assert (= (and b!127451 c!27934) b!127450))

(assert (= (and b!127451 (not c!27934)) b!127448))

(assert (= (and b!127448 c!27935) b!127452))

(assert (= (and b!127448 (not c!27935)) b!127456))

(assert (= (or b!127450 b!127448 b!127456) bm!5554))

(declare-fun m!112397 () Bool)

(assert (=> b!127449 m!112397))

(declare-fun m!112399 () Bool)

(assert (=> b!127451 m!112399))

(declare-fun m!112401 () Bool)

(assert (=> d!30119 m!112401))

(assert (=> d!30119 m!111965))

(declare-fun m!112403 () Bool)

(assert (=> d!30119 m!112403))

(assert (=> bm!5554 m!111965))

(declare-fun m!112405 () Bool)

(assert (=> bm!5554 m!112405))

(assert (=> d!29961 d!30119))

(assert (=> d!29961 d!30075))

(assert (=> bm!5504 d!30073))

(assert (=> b!126933 d!30087))

(declare-fun bm!5555 () Bool)

(declare-fun call!5562 () Bool)

(declare-fun c!27938 () Bool)

(declare-fun c!27937 () Bool)

(assert (=> bm!5555 (= call!5562 (validRegex!177 (ite c!27938 (reg!914 (ite c!27838 (reg!914 r!13481) (ite c!27837 (regTwo!1683 r!13481) (regTwo!1682 r!13481)))) (ite c!27937 (regTwo!1683 (ite c!27838 (reg!914 r!13481) (ite c!27837 (regTwo!1683 r!13481) (regTwo!1682 r!13481)))) (regTwo!1682 (ite c!27838 (reg!914 r!13481) (ite c!27837 (regTwo!1683 r!13481) (regTwo!1682 r!13481))))))))))

(declare-fun d!30121 () Bool)

(declare-fun res!58886 () Bool)

(declare-fun e!73239 () Bool)

(assert (=> d!30121 (=> res!58886 e!73239)))

(assert (=> d!30121 (= res!58886 ((_ is ElementMatch!585) (ite c!27838 (reg!914 r!13481) (ite c!27837 (regTwo!1683 r!13481) (regTwo!1682 r!13481)))))))

(assert (=> d!30121 (= (validRegex!177 (ite c!27838 (reg!914 r!13481) (ite c!27837 (regTwo!1683 r!13481) (regTwo!1682 r!13481)))) e!73239)))

(declare-fun b!127457 () Bool)

(declare-fun e!73237 () Bool)

(declare-fun call!5560 () Bool)

(assert (=> b!127457 (= e!73237 call!5560)))

(declare-fun b!127458 () Bool)

(declare-fun e!73241 () Bool)

(assert (=> b!127458 (= e!73239 e!73241)))

(assert (=> b!127458 (= c!27938 ((_ is Star!585) (ite c!27838 (reg!914 r!13481) (ite c!27837 (regTwo!1683 r!13481) (regTwo!1682 r!13481)))))))

(declare-fun b!127459 () Bool)

(declare-fun e!73238 () Bool)

(assert (=> b!127459 (= e!73241 e!73238)))

(declare-fun res!58883 () Bool)

(assert (=> b!127459 (= res!58883 (not (nullable!104 (reg!914 (ite c!27838 (reg!914 r!13481) (ite c!27837 (regTwo!1683 r!13481) (regTwo!1682 r!13481)))))))))

(assert (=> b!127459 (=> (not res!58883) (not e!73238))))

(declare-fun bm!5556 () Bool)

(assert (=> bm!5556 (= call!5560 call!5562)))

(declare-fun b!127460 () Bool)

(declare-fun res!58885 () Bool)

(declare-fun e!73236 () Bool)

(assert (=> b!127460 (=> res!58885 e!73236)))

(assert (=> b!127460 (= res!58885 (not ((_ is Concat!979) (ite c!27838 (reg!914 r!13481) (ite c!27837 (regTwo!1683 r!13481) (regTwo!1682 r!13481))))))))

(declare-fun e!73240 () Bool)

(assert (=> b!127460 (= e!73240 e!73236)))

(declare-fun b!127461 () Bool)

(declare-fun e!73235 () Bool)

(assert (=> b!127461 (= e!73235 call!5560)))

(declare-fun b!127462 () Bool)

(assert (=> b!127462 (= e!73238 call!5562)))

(declare-fun b!127463 () Bool)

(assert (=> b!127463 (= e!73236 e!73237)))

(declare-fun res!58882 () Bool)

(assert (=> b!127463 (=> (not res!58882) (not e!73237))))

(declare-fun call!5561 () Bool)

(assert (=> b!127463 (= res!58882 call!5561)))

(declare-fun b!127464 () Bool)

(declare-fun res!58884 () Bool)

(assert (=> b!127464 (=> (not res!58884) (not e!73235))))

(assert (=> b!127464 (= res!58884 call!5561)))

(assert (=> b!127464 (= e!73240 e!73235)))

(declare-fun bm!5557 () Bool)

(assert (=> bm!5557 (= call!5561 (validRegex!177 (ite c!27937 (regOne!1683 (ite c!27838 (reg!914 r!13481) (ite c!27837 (regTwo!1683 r!13481) (regTwo!1682 r!13481)))) (regOne!1682 (ite c!27838 (reg!914 r!13481) (ite c!27837 (regTwo!1683 r!13481) (regTwo!1682 r!13481)))))))))

(declare-fun b!127465 () Bool)

(assert (=> b!127465 (= e!73241 e!73240)))

(assert (=> b!127465 (= c!27937 ((_ is Union!585) (ite c!27838 (reg!914 r!13481) (ite c!27837 (regTwo!1683 r!13481) (regTwo!1682 r!13481)))))))

(assert (= (and d!30121 (not res!58886)) b!127458))

(assert (= (and b!127458 c!27938) b!127459))

(assert (= (and b!127458 (not c!27938)) b!127465))

(assert (= (and b!127459 res!58883) b!127462))

(assert (= (and b!127465 c!27937) b!127464))

(assert (= (and b!127465 (not c!27937)) b!127460))

(assert (= (and b!127464 res!58884) b!127461))

(assert (= (and b!127460 (not res!58885)) b!127463))

(assert (= (and b!127463 res!58882) b!127457))

(assert (= (or b!127464 b!127463) bm!5557))

(assert (= (or b!127461 b!127457) bm!5556))

(assert (= (or b!127462 bm!5556) bm!5555))

(declare-fun m!112407 () Bool)

(assert (=> bm!5555 m!112407))

(declare-fun m!112409 () Bool)

(assert (=> b!127459 m!112409))

(declare-fun m!112411 () Bool)

(assert (=> bm!5557 m!112411))

(assert (=> bm!5511 d!30121))

(assert (=> d!29979 d!30073))

(declare-fun d!30123 () Bool)

(declare-fun c!27941 () Bool)

(assert (=> d!30123 (= c!27941 ((_ is Nil!2097) lt!38202))))

(declare-fun e!73244 () (InoxSet Context!250))

(assert (=> d!30123 (= (content!239 lt!38202) e!73244)))

(declare-fun b!127470 () Bool)

(assert (=> b!127470 (= e!73244 ((as const (Array Context!250 Bool)) false))))

(declare-fun b!127471 () Bool)

(assert (=> b!127471 (= e!73244 ((_ map or) (store ((as const (Array Context!250 Bool)) false) (h!7494 lt!38202) true) (content!239 (t!22675 lt!38202))))))

(assert (= (and d!30123 c!27941) b!127470))

(assert (= (and d!30123 (not c!27941)) b!127471))

(declare-fun m!112413 () Bool)

(assert (=> b!127471 m!112413))

(declare-fun m!112415 () Bool)

(assert (=> b!127471 m!112415))

(assert (=> b!126818 d!30123))

(assert (=> d!29943 d!29953))

(assert (=> d!29943 d!29961))

(assert (=> d!29943 d!29949))

(declare-fun d!30125 () Bool)

(assert (=> d!30125 (= (matchZipper!17 lt!38177 (dropList!52 input!6028 0)) (matchZipperSequence!17 lt!38177 input!6028 0))))

(assert (=> d!30125 true))

(declare-fun _$28!272 () Unit!1637)

(assert (=> d!30125 (= (choose!1638 lt!38177 input!6028 0) _$28!272)))

(declare-fun bs!12499 () Bool)

(assert (= bs!12499 d!30125))

(assert (=> bs!12499 m!111941))

(assert (=> bs!12499 m!111941))

(assert (=> bs!12499 m!111943))

(assert (=> bs!12499 m!111937))

(assert (=> d!29943 d!30125))

(declare-fun d!30127 () Bool)

(assert (=> d!30127 (= (isEmpty!827 (dropList!52 input!6028 0)) ((_ is Nil!2095) (dropList!52 input!6028 0)))))

(assert (=> d!29953 d!30127))

(declare-fun d!30129 () Bool)

(assert (=> d!30129 (= (nullable!104 (reg!914 r!13481)) (nullableFct!29 (reg!914 r!13481)))))

(declare-fun bs!12500 () Bool)

(assert (= bs!12500 d!30129))

(declare-fun m!112417 () Bool)

(assert (=> bs!12500 m!112417))

(assert (=> b!126969 d!30129))

(assert (=> b!126938 d!30021))

(assert (=> b!126937 d!30109))

(assert (=> b!126937 d!30105))

(assert (=> d!29937 d!29983))

(declare-fun d!30131 () Bool)

(declare-fun c!27942 () Bool)

(assert (=> d!30131 (= c!27942 (isEmpty!827 (tail!252 lt!38176)))))

(declare-fun e!73245 () Bool)

(assert (=> d!30131 (= (matchZipper!17 (derivationStepZipper!6 lt!38177 (head!516 lt!38176)) (tail!252 lt!38176)) e!73245)))

(declare-fun b!127472 () Bool)

(assert (=> b!127472 (= e!73245 (nullableZipper!6 (derivationStepZipper!6 lt!38177 (head!516 lt!38176))))))

(declare-fun b!127473 () Bool)

(assert (=> b!127473 (= e!73245 (matchZipper!17 (derivationStepZipper!6 (derivationStepZipper!6 lt!38177 (head!516 lt!38176)) (head!516 (tail!252 lt!38176))) (tail!252 (tail!252 lt!38176))))))

(assert (= (and d!30131 c!27942) b!127472))

(assert (= (and d!30131 (not c!27942)) b!127473))

(assert (=> d!30131 m!112071))

(assert (=> d!30131 m!112073))

(assert (=> b!127472 m!112085))

(declare-fun m!112419 () Bool)

(assert (=> b!127472 m!112419))

(assert (=> b!127473 m!112071))

(assert (=> b!127473 m!112361))

(assert (=> b!127473 m!112085))

(assert (=> b!127473 m!112361))

(declare-fun m!112421 () Bool)

(assert (=> b!127473 m!112421))

(assert (=> b!127473 m!112071))

(assert (=> b!127473 m!112355))

(assert (=> b!127473 m!112421))

(assert (=> b!127473 m!112355))

(declare-fun m!112423 () Bool)

(assert (=> b!127473 m!112423))

(assert (=> b!126939 d!30131))

(declare-fun bs!12501 () Bool)

(declare-fun d!30133 () Bool)

(assert (= bs!12501 (and d!30133 d!30057)))

(declare-fun lambda!3296 () Int)

(assert (=> bs!12501 (= (= (head!516 lt!38176) (head!516 (dropList!52 input!6028 0))) (= lambda!3296 lambda!3294))))

(declare-fun bs!12502 () Bool)

(assert (= bs!12502 (and d!30133 d!30095)))

(assert (=> bs!12502 (= (= (head!516 lt!38176) (apply!275 input!6028 0)) (= lambda!3296 lambda!3295))))

(assert (=> d!30133 true))

(assert (=> d!30133 (= (derivationStepZipper!6 lt!38177 (head!516 lt!38176)) (flatMap!65 lt!38177 lambda!3296))))

(declare-fun bs!12503 () Bool)

(assert (= bs!12503 d!30133))

(declare-fun m!112425 () Bool)

(assert (=> bs!12503 m!112425))

(assert (=> b!126939 d!30133))

(assert (=> b!126939 d!30087))

(assert (=> b!126939 d!30105))

(declare-fun b!127474 () Bool)

(declare-fun tp!69505 () Bool)

(declare-fun e!73246 () Bool)

(declare-fun tp!69506 () Bool)

(assert (=> b!127474 (= e!73246 (and (inv!2703 (left!1667 (left!1667 (c!27788 input!6028)))) tp!69505 (inv!2703 (right!1997 (left!1667 (c!27788 input!6028)))) tp!69506))))

(declare-fun b!127476 () Bool)

(declare-fun e!73247 () Bool)

(declare-fun tp!69504 () Bool)

(assert (=> b!127476 (= e!73247 tp!69504)))

(declare-fun b!127475 () Bool)

(assert (=> b!127475 (= e!73246 (and (inv!2709 (xs!3186 (left!1667 (c!27788 input!6028)))) e!73247))))

(assert (=> b!127002 (= tp!69341 (and (inv!2703 (left!1667 (c!27788 input!6028))) e!73246))))

(assert (= (and b!127002 ((_ is Node!591) (left!1667 (c!27788 input!6028)))) b!127474))

(assert (= b!127475 b!127476))

(assert (= (and b!127002 ((_ is Leaf!1032) (left!1667 (c!27788 input!6028)))) b!127475))

(declare-fun m!112427 () Bool)

(assert (=> b!127474 m!112427))

(declare-fun m!112429 () Bool)

(assert (=> b!127474 m!112429))

(declare-fun m!112431 () Bool)

(assert (=> b!127475 m!112431))

(assert (=> b!127002 m!112101))

(declare-fun b!127477 () Bool)

(declare-fun tp!69509 () Bool)

(declare-fun e!73248 () Bool)

(declare-fun tp!69508 () Bool)

(assert (=> b!127477 (= e!73248 (and (inv!2703 (left!1667 (right!1997 (c!27788 input!6028)))) tp!69508 (inv!2703 (right!1997 (right!1997 (c!27788 input!6028)))) tp!69509))))

(declare-fun b!127479 () Bool)

(declare-fun e!73249 () Bool)

(declare-fun tp!69507 () Bool)

(assert (=> b!127479 (= e!73249 tp!69507)))

(declare-fun b!127478 () Bool)

(assert (=> b!127478 (= e!73248 (and (inv!2709 (xs!3186 (right!1997 (c!27788 input!6028)))) e!73249))))

(assert (=> b!127002 (= tp!69342 (and (inv!2703 (right!1997 (c!27788 input!6028))) e!73248))))

(assert (= (and b!127002 ((_ is Node!591) (right!1997 (c!27788 input!6028)))) b!127477))

(assert (= b!127478 b!127479))

(assert (= (and b!127002 ((_ is Leaf!1032) (right!1997 (c!27788 input!6028)))) b!127478))

(declare-fun m!112433 () Bool)

(assert (=> b!127477 m!112433))

(declare-fun m!112435 () Bool)

(assert (=> b!127477 m!112435))

(declare-fun m!112437 () Bool)

(assert (=> b!127478 m!112437))

(assert (=> b!127002 m!112103))

(declare-fun b!127480 () Bool)

(declare-fun e!73250 () Bool)

(assert (=> b!127480 (= e!73250 tp_is_empty!1225)))

(declare-fun b!127483 () Bool)

(declare-fun tp!69513 () Bool)

(declare-fun tp!69510 () Bool)

(assert (=> b!127483 (= e!73250 (and tp!69513 tp!69510))))

(assert (=> b!126991 (= tp!69330 e!73250)))

(declare-fun b!127482 () Bool)

(declare-fun tp!69514 () Bool)

(assert (=> b!127482 (= e!73250 tp!69514)))

(declare-fun b!127481 () Bool)

(declare-fun tp!69511 () Bool)

(declare-fun tp!69512 () Bool)

(assert (=> b!127481 (= e!73250 (and tp!69511 tp!69512))))

(assert (= (and b!126991 ((_ is ElementMatch!585) (regOne!1682 (regTwo!1683 r!13481)))) b!127480))

(assert (= (and b!126991 ((_ is Concat!979) (regOne!1682 (regTwo!1683 r!13481)))) b!127481))

(assert (= (and b!126991 ((_ is Star!585) (regOne!1682 (regTwo!1683 r!13481)))) b!127482))

(assert (= (and b!126991 ((_ is Union!585) (regOne!1682 (regTwo!1683 r!13481)))) b!127483))

(declare-fun b!127484 () Bool)

(declare-fun e!73251 () Bool)

(assert (=> b!127484 (= e!73251 tp_is_empty!1225)))

(declare-fun b!127487 () Bool)

(declare-fun tp!69518 () Bool)

(declare-fun tp!69515 () Bool)

(assert (=> b!127487 (= e!73251 (and tp!69518 tp!69515))))

(assert (=> b!126991 (= tp!69331 e!73251)))

(declare-fun b!127486 () Bool)

(declare-fun tp!69519 () Bool)

(assert (=> b!127486 (= e!73251 tp!69519)))

(declare-fun b!127485 () Bool)

(declare-fun tp!69516 () Bool)

(declare-fun tp!69517 () Bool)

(assert (=> b!127485 (= e!73251 (and tp!69516 tp!69517))))

(assert (= (and b!126991 ((_ is ElementMatch!585) (regTwo!1682 (regTwo!1683 r!13481)))) b!127484))

(assert (= (and b!126991 ((_ is Concat!979) (regTwo!1682 (regTwo!1683 r!13481)))) b!127485))

(assert (= (and b!126991 ((_ is Star!585) (regTwo!1682 (regTwo!1683 r!13481)))) b!127486))

(assert (= (and b!126991 ((_ is Union!585) (regTwo!1682 (regTwo!1683 r!13481)))) b!127487))

(declare-fun b!127492 () Bool)

(declare-fun e!73254 () Bool)

(declare-fun tp!69522 () Bool)

(assert (=> b!127492 (= e!73254 (and tp_is_empty!1225 tp!69522))))

(assert (=> b!127004 (= tp!69340 e!73254)))

(assert (= (and b!127004 ((_ is Cons!2095) (innerList!649 (xs!3186 (c!27788 input!6028))))) b!127492))

(declare-fun b!127493 () Bool)

(declare-fun e!73255 () Bool)

(assert (=> b!127493 (= e!73255 tp_is_empty!1225)))

(declare-fun b!127496 () Bool)

(declare-fun tp!69526 () Bool)

(declare-fun tp!69523 () Bool)

(assert (=> b!127496 (= e!73255 (and tp!69526 tp!69523))))

(assert (=> b!126987 (= tp!69325 e!73255)))

(declare-fun b!127495 () Bool)

(declare-fun tp!69527 () Bool)

(assert (=> b!127495 (= e!73255 tp!69527)))

(declare-fun b!127494 () Bool)

(declare-fun tp!69524 () Bool)

(declare-fun tp!69525 () Bool)

(assert (=> b!127494 (= e!73255 (and tp!69524 tp!69525))))

(assert (= (and b!126987 ((_ is ElementMatch!585) (regOne!1682 (regOne!1683 r!13481)))) b!127493))

(assert (= (and b!126987 ((_ is Concat!979) (regOne!1682 (regOne!1683 r!13481)))) b!127494))

(assert (= (and b!126987 ((_ is Star!585) (regOne!1682 (regOne!1683 r!13481)))) b!127495))

(assert (= (and b!126987 ((_ is Union!585) (regOne!1682 (regOne!1683 r!13481)))) b!127496))

(declare-fun b!127497 () Bool)

(declare-fun e!73256 () Bool)

(assert (=> b!127497 (= e!73256 tp_is_empty!1225)))

(declare-fun b!127500 () Bool)

(declare-fun tp!69531 () Bool)

(declare-fun tp!69528 () Bool)

(assert (=> b!127500 (= e!73256 (and tp!69531 tp!69528))))

(assert (=> b!126987 (= tp!69326 e!73256)))

(declare-fun b!127499 () Bool)

(declare-fun tp!69532 () Bool)

(assert (=> b!127499 (= e!73256 tp!69532)))

(declare-fun b!127498 () Bool)

(declare-fun tp!69529 () Bool)

(declare-fun tp!69530 () Bool)

(assert (=> b!127498 (= e!73256 (and tp!69529 tp!69530))))

(assert (= (and b!126987 ((_ is ElementMatch!585) (regTwo!1682 (regOne!1683 r!13481)))) b!127497))

(assert (= (and b!126987 ((_ is Concat!979) (regTwo!1682 (regOne!1683 r!13481)))) b!127498))

(assert (= (and b!126987 ((_ is Star!585) (regTwo!1682 (regOne!1683 r!13481)))) b!127499))

(assert (= (and b!126987 ((_ is Union!585) (regTwo!1682 (regOne!1683 r!13481)))) b!127500))

(declare-fun b!127501 () Bool)

(declare-fun e!73257 () Bool)

(assert (=> b!127501 (= e!73257 tp_is_empty!1225)))

(declare-fun b!127504 () Bool)

(declare-fun tp!69536 () Bool)

(declare-fun tp!69533 () Bool)

(assert (=> b!127504 (= e!73257 (and tp!69536 tp!69533))))

(assert (=> b!126992 (= tp!69333 e!73257)))

(declare-fun b!127503 () Bool)

(declare-fun tp!69537 () Bool)

(assert (=> b!127503 (= e!73257 tp!69537)))

(declare-fun b!127502 () Bool)

(declare-fun tp!69534 () Bool)

(declare-fun tp!69535 () Bool)

(assert (=> b!127502 (= e!73257 (and tp!69534 tp!69535))))

(assert (= (and b!126992 ((_ is ElementMatch!585) (reg!914 (regTwo!1683 r!13481)))) b!127501))

(assert (= (and b!126992 ((_ is Concat!979) (reg!914 (regTwo!1683 r!13481)))) b!127502))

(assert (= (and b!126992 ((_ is Star!585) (reg!914 (regTwo!1683 r!13481)))) b!127503))

(assert (= (and b!126992 ((_ is Union!585) (reg!914 (regTwo!1683 r!13481)))) b!127504))

(declare-fun b!127505 () Bool)

(declare-fun e!73258 () Bool)

(assert (=> b!127505 (= e!73258 tp_is_empty!1225)))

(declare-fun b!127508 () Bool)

(declare-fun tp!69541 () Bool)

(declare-fun tp!69538 () Bool)

(assert (=> b!127508 (= e!73258 (and tp!69541 tp!69538))))

(assert (=> b!126988 (= tp!69328 e!73258)))

(declare-fun b!127507 () Bool)

(declare-fun tp!69542 () Bool)

(assert (=> b!127507 (= e!73258 tp!69542)))

(declare-fun b!127506 () Bool)

(declare-fun tp!69539 () Bool)

(declare-fun tp!69540 () Bool)

(assert (=> b!127506 (= e!73258 (and tp!69539 tp!69540))))

(assert (= (and b!126988 ((_ is ElementMatch!585) (reg!914 (regOne!1683 r!13481)))) b!127505))

(assert (= (and b!126988 ((_ is Concat!979) (reg!914 (regOne!1683 r!13481)))) b!127506))

(assert (= (and b!126988 ((_ is Star!585) (reg!914 (regOne!1683 r!13481)))) b!127507))

(assert (= (and b!126988 ((_ is Union!585) (reg!914 (regOne!1683 r!13481)))) b!127508))

(declare-fun b!127509 () Bool)

(declare-fun e!73259 () Bool)

(assert (=> b!127509 (= e!73259 tp_is_empty!1225)))

(declare-fun b!127512 () Bool)

(declare-fun tp!69546 () Bool)

(declare-fun tp!69543 () Bool)

(assert (=> b!127512 (= e!73259 (and tp!69546 tp!69543))))

(assert (=> b!126993 (= tp!69332 e!73259)))

(declare-fun b!127511 () Bool)

(declare-fun tp!69547 () Bool)

(assert (=> b!127511 (= e!73259 tp!69547)))

(declare-fun b!127510 () Bool)

(declare-fun tp!69544 () Bool)

(declare-fun tp!69545 () Bool)

(assert (=> b!127510 (= e!73259 (and tp!69544 tp!69545))))

(assert (= (and b!126993 ((_ is ElementMatch!585) (regOne!1683 (regTwo!1683 r!13481)))) b!127509))

(assert (= (and b!126993 ((_ is Concat!979) (regOne!1683 (regTwo!1683 r!13481)))) b!127510))

(assert (= (and b!126993 ((_ is Star!585) (regOne!1683 (regTwo!1683 r!13481)))) b!127511))

(assert (= (and b!126993 ((_ is Union!585) (regOne!1683 (regTwo!1683 r!13481)))) b!127512))

(declare-fun b!127513 () Bool)

(declare-fun e!73260 () Bool)

(assert (=> b!127513 (= e!73260 tp_is_empty!1225)))

(declare-fun b!127516 () Bool)

(declare-fun tp!69551 () Bool)

(declare-fun tp!69548 () Bool)

(assert (=> b!127516 (= e!73260 (and tp!69551 tp!69548))))

(assert (=> b!126993 (= tp!69329 e!73260)))

(declare-fun b!127515 () Bool)

(declare-fun tp!69552 () Bool)

(assert (=> b!127515 (= e!73260 tp!69552)))

(declare-fun b!127514 () Bool)

(declare-fun tp!69549 () Bool)

(declare-fun tp!69550 () Bool)

(assert (=> b!127514 (= e!73260 (and tp!69549 tp!69550))))

(assert (= (and b!126993 ((_ is ElementMatch!585) (regTwo!1683 (regTwo!1683 r!13481)))) b!127513))

(assert (= (and b!126993 ((_ is Concat!979) (regTwo!1683 (regTwo!1683 r!13481)))) b!127514))

(assert (= (and b!126993 ((_ is Star!585) (regTwo!1683 (regTwo!1683 r!13481)))) b!127515))

(assert (= (and b!126993 ((_ is Union!585) (regTwo!1683 (regTwo!1683 r!13481)))) b!127516))

(declare-fun b!127517 () Bool)

(declare-fun e!73261 () Bool)

(assert (=> b!127517 (= e!73261 tp_is_empty!1225)))

(declare-fun b!127520 () Bool)

(declare-fun tp!69556 () Bool)

(declare-fun tp!69553 () Bool)

(assert (=> b!127520 (= e!73261 (and tp!69556 tp!69553))))

(assert (=> b!127014 (= tp!69354 e!73261)))

(declare-fun b!127519 () Bool)

(declare-fun tp!69557 () Bool)

(assert (=> b!127519 (= e!73261 tp!69557)))

(declare-fun b!127518 () Bool)

(declare-fun tp!69554 () Bool)

(declare-fun tp!69555 () Bool)

(assert (=> b!127518 (= e!73261 (and tp!69554 tp!69555))))

(assert (= (and b!127014 ((_ is ElementMatch!585) (regOne!1682 (reg!914 r!13481)))) b!127517))

(assert (= (and b!127014 ((_ is Concat!979) (regOne!1682 (reg!914 r!13481)))) b!127518))

(assert (= (and b!127014 ((_ is Star!585) (regOne!1682 (reg!914 r!13481)))) b!127519))

(assert (= (and b!127014 ((_ is Union!585) (regOne!1682 (reg!914 r!13481)))) b!127520))

(declare-fun b!127521 () Bool)

(declare-fun e!73262 () Bool)

(assert (=> b!127521 (= e!73262 tp_is_empty!1225)))

(declare-fun b!127524 () Bool)

(declare-fun tp!69561 () Bool)

(declare-fun tp!69558 () Bool)

(assert (=> b!127524 (= e!73262 (and tp!69561 tp!69558))))

(assert (=> b!127014 (= tp!69355 e!73262)))

(declare-fun b!127523 () Bool)

(declare-fun tp!69562 () Bool)

(assert (=> b!127523 (= e!73262 tp!69562)))

(declare-fun b!127522 () Bool)

(declare-fun tp!69559 () Bool)

(declare-fun tp!69560 () Bool)

(assert (=> b!127522 (= e!73262 (and tp!69559 tp!69560))))

(assert (= (and b!127014 ((_ is ElementMatch!585) (regTwo!1682 (reg!914 r!13481)))) b!127521))

(assert (= (and b!127014 ((_ is Concat!979) (regTwo!1682 (reg!914 r!13481)))) b!127522))

(assert (= (and b!127014 ((_ is Star!585) (regTwo!1682 (reg!914 r!13481)))) b!127523))

(assert (= (and b!127014 ((_ is Union!585) (regTwo!1682 (reg!914 r!13481)))) b!127524))

(declare-fun b!127525 () Bool)

(declare-fun e!73263 () Bool)

(assert (=> b!127525 (= e!73263 tp_is_empty!1225)))

(declare-fun b!127528 () Bool)

(declare-fun tp!69566 () Bool)

(declare-fun tp!69563 () Bool)

(assert (=> b!127528 (= e!73263 (and tp!69566 tp!69563))))

(assert (=> b!126989 (= tp!69327 e!73263)))

(declare-fun b!127527 () Bool)

(declare-fun tp!69567 () Bool)

(assert (=> b!127527 (= e!73263 tp!69567)))

(declare-fun b!127526 () Bool)

(declare-fun tp!69564 () Bool)

(declare-fun tp!69565 () Bool)

(assert (=> b!127526 (= e!73263 (and tp!69564 tp!69565))))

(assert (= (and b!126989 ((_ is ElementMatch!585) (regOne!1683 (regOne!1683 r!13481)))) b!127525))

(assert (= (and b!126989 ((_ is Concat!979) (regOne!1683 (regOne!1683 r!13481)))) b!127526))

(assert (= (and b!126989 ((_ is Star!585) (regOne!1683 (regOne!1683 r!13481)))) b!127527))

(assert (= (and b!126989 ((_ is Union!585) (regOne!1683 (regOne!1683 r!13481)))) b!127528))

(declare-fun b!127529 () Bool)

(declare-fun e!73264 () Bool)

(assert (=> b!127529 (= e!73264 tp_is_empty!1225)))

(declare-fun b!127532 () Bool)

(declare-fun tp!69571 () Bool)

(declare-fun tp!69568 () Bool)

(assert (=> b!127532 (= e!73264 (and tp!69571 tp!69568))))

(assert (=> b!126989 (= tp!69324 e!73264)))

(declare-fun b!127531 () Bool)

(declare-fun tp!69572 () Bool)

(assert (=> b!127531 (= e!73264 tp!69572)))

(declare-fun b!127530 () Bool)

(declare-fun tp!69569 () Bool)

(declare-fun tp!69570 () Bool)

(assert (=> b!127530 (= e!73264 (and tp!69569 tp!69570))))

(assert (= (and b!126989 ((_ is ElementMatch!585) (regTwo!1683 (regOne!1683 r!13481)))) b!127529))

(assert (= (and b!126989 ((_ is Concat!979) (regTwo!1683 (regOne!1683 r!13481)))) b!127530))

(assert (= (and b!126989 ((_ is Star!585) (regTwo!1683 (regOne!1683 r!13481)))) b!127531))

(assert (= (and b!126989 ((_ is Union!585) (regTwo!1683 (regOne!1683 r!13481)))) b!127532))

(declare-fun b!127533 () Bool)

(declare-fun e!73265 () Bool)

(assert (=> b!127533 (= e!73265 tp_is_empty!1225)))

(declare-fun b!127536 () Bool)

(declare-fun tp!69576 () Bool)

(declare-fun tp!69573 () Bool)

(assert (=> b!127536 (= e!73265 (and tp!69576 tp!69573))))

(assert (=> b!127010 (= tp!69349 e!73265)))

(declare-fun b!127535 () Bool)

(declare-fun tp!69577 () Bool)

(assert (=> b!127535 (= e!73265 tp!69577)))

(declare-fun b!127534 () Bool)

(declare-fun tp!69574 () Bool)

(declare-fun tp!69575 () Bool)

(assert (=> b!127534 (= e!73265 (and tp!69574 tp!69575))))

(assert (= (and b!127010 ((_ is ElementMatch!585) (regOne!1682 (regTwo!1682 r!13481)))) b!127533))

(assert (= (and b!127010 ((_ is Concat!979) (regOne!1682 (regTwo!1682 r!13481)))) b!127534))

(assert (= (and b!127010 ((_ is Star!585) (regOne!1682 (regTwo!1682 r!13481)))) b!127535))

(assert (= (and b!127010 ((_ is Union!585) (regOne!1682 (regTwo!1682 r!13481)))) b!127536))

(declare-fun b!127537 () Bool)

(declare-fun e!73266 () Bool)

(assert (=> b!127537 (= e!73266 tp_is_empty!1225)))

(declare-fun b!127540 () Bool)

(declare-fun tp!69581 () Bool)

(declare-fun tp!69578 () Bool)

(assert (=> b!127540 (= e!73266 (and tp!69581 tp!69578))))

(assert (=> b!127010 (= tp!69350 e!73266)))

(declare-fun b!127539 () Bool)

(declare-fun tp!69582 () Bool)

(assert (=> b!127539 (= e!73266 tp!69582)))

(declare-fun b!127538 () Bool)

(declare-fun tp!69579 () Bool)

(declare-fun tp!69580 () Bool)

(assert (=> b!127538 (= e!73266 (and tp!69579 tp!69580))))

(assert (= (and b!127010 ((_ is ElementMatch!585) (regTwo!1682 (regTwo!1682 r!13481)))) b!127537))

(assert (= (and b!127010 ((_ is Concat!979) (regTwo!1682 (regTwo!1682 r!13481)))) b!127538))

(assert (= (and b!127010 ((_ is Star!585) (regTwo!1682 (regTwo!1682 r!13481)))) b!127539))

(assert (= (and b!127010 ((_ is Union!585) (regTwo!1682 (regTwo!1682 r!13481)))) b!127540))

(declare-fun b!127541 () Bool)

(declare-fun e!73267 () Bool)

(assert (=> b!127541 (= e!73267 tp_is_empty!1225)))

(declare-fun b!127544 () Bool)

(declare-fun tp!69586 () Bool)

(declare-fun tp!69583 () Bool)

(assert (=> b!127544 (= e!73267 (and tp!69586 tp!69583))))

(assert (=> b!127015 (= tp!69357 e!73267)))

(declare-fun b!127543 () Bool)

(declare-fun tp!69587 () Bool)

(assert (=> b!127543 (= e!73267 tp!69587)))

(declare-fun b!127542 () Bool)

(declare-fun tp!69584 () Bool)

(declare-fun tp!69585 () Bool)

(assert (=> b!127542 (= e!73267 (and tp!69584 tp!69585))))

(assert (= (and b!127015 ((_ is ElementMatch!585) (reg!914 (reg!914 r!13481)))) b!127541))

(assert (= (and b!127015 ((_ is Concat!979) (reg!914 (reg!914 r!13481)))) b!127542))

(assert (= (and b!127015 ((_ is Star!585) (reg!914 (reg!914 r!13481)))) b!127543))

(assert (= (and b!127015 ((_ is Union!585) (reg!914 (reg!914 r!13481)))) b!127544))

(declare-fun b!127545 () Bool)

(declare-fun e!73268 () Bool)

(assert (=> b!127545 (= e!73268 tp_is_empty!1225)))

(declare-fun b!127548 () Bool)

(declare-fun tp!69591 () Bool)

(declare-fun tp!69588 () Bool)

(assert (=> b!127548 (= e!73268 (and tp!69591 tp!69588))))

(assert (=> b!127006 (= tp!69344 e!73268)))

(declare-fun b!127547 () Bool)

(declare-fun tp!69592 () Bool)

(assert (=> b!127547 (= e!73268 tp!69592)))

(declare-fun b!127546 () Bool)

(declare-fun tp!69589 () Bool)

(declare-fun tp!69590 () Bool)

(assert (=> b!127546 (= e!73268 (and tp!69589 tp!69590))))

(assert (= (and b!127006 ((_ is ElementMatch!585) (regOne!1682 (regOne!1682 r!13481)))) b!127545))

(assert (= (and b!127006 ((_ is Concat!979) (regOne!1682 (regOne!1682 r!13481)))) b!127546))

(assert (= (and b!127006 ((_ is Star!585) (regOne!1682 (regOne!1682 r!13481)))) b!127547))

(assert (= (and b!127006 ((_ is Union!585) (regOne!1682 (regOne!1682 r!13481)))) b!127548))

(declare-fun b!127549 () Bool)

(declare-fun e!73269 () Bool)

(assert (=> b!127549 (= e!73269 tp_is_empty!1225)))

(declare-fun b!127552 () Bool)

(declare-fun tp!69596 () Bool)

(declare-fun tp!69593 () Bool)

(assert (=> b!127552 (= e!73269 (and tp!69596 tp!69593))))

(assert (=> b!127006 (= tp!69345 e!73269)))

(declare-fun b!127551 () Bool)

(declare-fun tp!69597 () Bool)

(assert (=> b!127551 (= e!73269 tp!69597)))

(declare-fun b!127550 () Bool)

(declare-fun tp!69594 () Bool)

(declare-fun tp!69595 () Bool)

(assert (=> b!127550 (= e!73269 (and tp!69594 tp!69595))))

(assert (= (and b!127006 ((_ is ElementMatch!585) (regTwo!1682 (regOne!1682 r!13481)))) b!127549))

(assert (= (and b!127006 ((_ is Concat!979) (regTwo!1682 (regOne!1682 r!13481)))) b!127550))

(assert (= (and b!127006 ((_ is Star!585) (regTwo!1682 (regOne!1682 r!13481)))) b!127551))

(assert (= (and b!127006 ((_ is Union!585) (regTwo!1682 (regOne!1682 r!13481)))) b!127552))

(declare-fun b!127553 () Bool)

(declare-fun e!73270 () Bool)

(assert (=> b!127553 (= e!73270 tp_is_empty!1225)))

(declare-fun b!127556 () Bool)

(declare-fun tp!69601 () Bool)

(declare-fun tp!69598 () Bool)

(assert (=> b!127556 (= e!73270 (and tp!69601 tp!69598))))

(assert (=> b!127011 (= tp!69352 e!73270)))

(declare-fun b!127555 () Bool)

(declare-fun tp!69602 () Bool)

(assert (=> b!127555 (= e!73270 tp!69602)))

(declare-fun b!127554 () Bool)

(declare-fun tp!69599 () Bool)

(declare-fun tp!69600 () Bool)

(assert (=> b!127554 (= e!73270 (and tp!69599 tp!69600))))

(assert (= (and b!127011 ((_ is ElementMatch!585) (reg!914 (regTwo!1682 r!13481)))) b!127553))

(assert (= (and b!127011 ((_ is Concat!979) (reg!914 (regTwo!1682 r!13481)))) b!127554))

(assert (= (and b!127011 ((_ is Star!585) (reg!914 (regTwo!1682 r!13481)))) b!127555))

(assert (= (and b!127011 ((_ is Union!585) (reg!914 (regTwo!1682 r!13481)))) b!127556))

(declare-fun b!127557 () Bool)

(declare-fun e!73271 () Bool)

(assert (=> b!127557 (= e!73271 tp_is_empty!1225)))

(declare-fun b!127560 () Bool)

(declare-fun tp!69606 () Bool)

(declare-fun tp!69603 () Bool)

(assert (=> b!127560 (= e!73271 (and tp!69606 tp!69603))))

(assert (=> b!127016 (= tp!69356 e!73271)))

(declare-fun b!127559 () Bool)

(declare-fun tp!69607 () Bool)

(assert (=> b!127559 (= e!73271 tp!69607)))

(declare-fun b!127558 () Bool)

(declare-fun tp!69604 () Bool)

(declare-fun tp!69605 () Bool)

(assert (=> b!127558 (= e!73271 (and tp!69604 tp!69605))))

(assert (= (and b!127016 ((_ is ElementMatch!585) (regOne!1683 (reg!914 r!13481)))) b!127557))

(assert (= (and b!127016 ((_ is Concat!979) (regOne!1683 (reg!914 r!13481)))) b!127558))

(assert (= (and b!127016 ((_ is Star!585) (regOne!1683 (reg!914 r!13481)))) b!127559))

(assert (= (and b!127016 ((_ is Union!585) (regOne!1683 (reg!914 r!13481)))) b!127560))

(declare-fun b!127561 () Bool)

(declare-fun e!73272 () Bool)

(assert (=> b!127561 (= e!73272 tp_is_empty!1225)))

(declare-fun b!127564 () Bool)

(declare-fun tp!69611 () Bool)

(declare-fun tp!69608 () Bool)

(assert (=> b!127564 (= e!73272 (and tp!69611 tp!69608))))

(assert (=> b!127016 (= tp!69353 e!73272)))

(declare-fun b!127563 () Bool)

(declare-fun tp!69612 () Bool)

(assert (=> b!127563 (= e!73272 tp!69612)))

(declare-fun b!127562 () Bool)

(declare-fun tp!69609 () Bool)

(declare-fun tp!69610 () Bool)

(assert (=> b!127562 (= e!73272 (and tp!69609 tp!69610))))

(assert (= (and b!127016 ((_ is ElementMatch!585) (regTwo!1683 (reg!914 r!13481)))) b!127561))

(assert (= (and b!127016 ((_ is Concat!979) (regTwo!1683 (reg!914 r!13481)))) b!127562))

(assert (= (and b!127016 ((_ is Star!585) (regTwo!1683 (reg!914 r!13481)))) b!127563))

(assert (= (and b!127016 ((_ is Union!585) (regTwo!1683 (reg!914 r!13481)))) b!127564))

(declare-fun b!127565 () Bool)

(declare-fun e!73273 () Bool)

(assert (=> b!127565 (= e!73273 tp_is_empty!1225)))

(declare-fun b!127568 () Bool)

(declare-fun tp!69616 () Bool)

(declare-fun tp!69613 () Bool)

(assert (=> b!127568 (= e!73273 (and tp!69616 tp!69613))))

(assert (=> b!127007 (= tp!69347 e!73273)))

(declare-fun b!127567 () Bool)

(declare-fun tp!69617 () Bool)

(assert (=> b!127567 (= e!73273 tp!69617)))

(declare-fun b!127566 () Bool)

(declare-fun tp!69614 () Bool)

(declare-fun tp!69615 () Bool)

(assert (=> b!127566 (= e!73273 (and tp!69614 tp!69615))))

(assert (= (and b!127007 ((_ is ElementMatch!585) (reg!914 (regOne!1682 r!13481)))) b!127565))

(assert (= (and b!127007 ((_ is Concat!979) (reg!914 (regOne!1682 r!13481)))) b!127566))

(assert (= (and b!127007 ((_ is Star!585) (reg!914 (regOne!1682 r!13481)))) b!127567))

(assert (= (and b!127007 ((_ is Union!585) (reg!914 (regOne!1682 r!13481)))) b!127568))

(declare-fun b!127569 () Bool)

(declare-fun e!73274 () Bool)

(assert (=> b!127569 (= e!73274 tp_is_empty!1225)))

(declare-fun b!127572 () Bool)

(declare-fun tp!69621 () Bool)

(declare-fun tp!69618 () Bool)

(assert (=> b!127572 (= e!73274 (and tp!69621 tp!69618))))

(assert (=> b!127012 (= tp!69351 e!73274)))

(declare-fun b!127571 () Bool)

(declare-fun tp!69622 () Bool)

(assert (=> b!127571 (= e!73274 tp!69622)))

(declare-fun b!127570 () Bool)

(declare-fun tp!69619 () Bool)

(declare-fun tp!69620 () Bool)

(assert (=> b!127570 (= e!73274 (and tp!69619 tp!69620))))

(assert (= (and b!127012 ((_ is ElementMatch!585) (regOne!1683 (regTwo!1682 r!13481)))) b!127569))

(assert (= (and b!127012 ((_ is Concat!979) (regOne!1683 (regTwo!1682 r!13481)))) b!127570))

(assert (= (and b!127012 ((_ is Star!585) (regOne!1683 (regTwo!1682 r!13481)))) b!127571))

(assert (= (and b!127012 ((_ is Union!585) (regOne!1683 (regTwo!1682 r!13481)))) b!127572))

(declare-fun b!127573 () Bool)

(declare-fun e!73275 () Bool)

(assert (=> b!127573 (= e!73275 tp_is_empty!1225)))

(declare-fun b!127576 () Bool)

(declare-fun tp!69626 () Bool)

(declare-fun tp!69623 () Bool)

(assert (=> b!127576 (= e!73275 (and tp!69626 tp!69623))))

(assert (=> b!127012 (= tp!69348 e!73275)))

(declare-fun b!127575 () Bool)

(declare-fun tp!69627 () Bool)

(assert (=> b!127575 (= e!73275 tp!69627)))

(declare-fun b!127574 () Bool)

(declare-fun tp!69624 () Bool)

(declare-fun tp!69625 () Bool)

(assert (=> b!127574 (= e!73275 (and tp!69624 tp!69625))))

(assert (= (and b!127012 ((_ is ElementMatch!585) (regTwo!1683 (regTwo!1682 r!13481)))) b!127573))

(assert (= (and b!127012 ((_ is Concat!979) (regTwo!1683 (regTwo!1682 r!13481)))) b!127574))

(assert (= (and b!127012 ((_ is Star!585) (regTwo!1683 (regTwo!1682 r!13481)))) b!127575))

(assert (= (and b!127012 ((_ is Union!585) (regTwo!1683 (regTwo!1682 r!13481)))) b!127576))

(declare-fun b!127577 () Bool)

(declare-fun e!73276 () Bool)

(assert (=> b!127577 (= e!73276 tp_is_empty!1225)))

(declare-fun b!127580 () Bool)

(declare-fun tp!69631 () Bool)

(declare-fun tp!69628 () Bool)

(assert (=> b!127580 (= e!73276 (and tp!69631 tp!69628))))

(assert (=> b!127008 (= tp!69346 e!73276)))

(declare-fun b!127579 () Bool)

(declare-fun tp!69632 () Bool)

(assert (=> b!127579 (= e!73276 tp!69632)))

(declare-fun b!127578 () Bool)

(declare-fun tp!69629 () Bool)

(declare-fun tp!69630 () Bool)

(assert (=> b!127578 (= e!73276 (and tp!69629 tp!69630))))

(assert (= (and b!127008 ((_ is ElementMatch!585) (regOne!1683 (regOne!1682 r!13481)))) b!127577))

(assert (= (and b!127008 ((_ is Concat!979) (regOne!1683 (regOne!1682 r!13481)))) b!127578))

(assert (= (and b!127008 ((_ is Star!585) (regOne!1683 (regOne!1682 r!13481)))) b!127579))

(assert (= (and b!127008 ((_ is Union!585) (regOne!1683 (regOne!1682 r!13481)))) b!127580))

(declare-fun b!127581 () Bool)

(declare-fun e!73277 () Bool)

(assert (=> b!127581 (= e!73277 tp_is_empty!1225)))

(declare-fun b!127584 () Bool)

(declare-fun tp!69636 () Bool)

(declare-fun tp!69633 () Bool)

(assert (=> b!127584 (= e!73277 (and tp!69636 tp!69633))))

(assert (=> b!127008 (= tp!69343 e!73277)))

(declare-fun b!127583 () Bool)

(declare-fun tp!69637 () Bool)

(assert (=> b!127583 (= e!73277 tp!69637)))

(declare-fun b!127582 () Bool)

(declare-fun tp!69634 () Bool)

(declare-fun tp!69635 () Bool)

(assert (=> b!127582 (= e!73277 (and tp!69634 tp!69635))))

(assert (= (and b!127008 ((_ is ElementMatch!585) (regTwo!1683 (regOne!1682 r!13481)))) b!127581))

(assert (= (and b!127008 ((_ is Concat!979) (regTwo!1683 (regOne!1682 r!13481)))) b!127582))

(assert (= (and b!127008 ((_ is Star!585) (regTwo!1683 (regOne!1682 r!13481)))) b!127583))

(assert (= (and b!127008 ((_ is Union!585) (regTwo!1683 (regOne!1682 r!13481)))) b!127584))

(check-sat (not b!127514) (not b!127494) (not b!127498) (not d!30085) (not d!30091) (not b!127343) (not b!127512) (not b!127504) (not b!127478) (not d!30021) (not b!127566) (not b!127558) tp_is_empty!1225 (not b!127002) (not b!127530) (not b!127408) (not b!127524) (not b!127485) (not b!127482) (not b!127542) (not b!127522) (not b!127481) (not b!127574) (not b!127187) (not b!127563) (not d!30119) (not b!127556) (not b!127579) (not d!30115) (not b!127534) (not b!127160) (not b!127472) (not b!127508) (not b!127411) (not b!127510) (not b!127096) (not b!127516) (not d!30097) (not b!127479) (not b!127424) (not d!30129) (not b!127503) (not b!127543) (not b!127392) (not b!127523) (not b!127544) (not d!30081) (not b!127266) (not d!30093) (not b!127584) (not b!127483) (not b!127078) (not b!127572) (not b!127499) (not b!127559) (not b!127519) (not b!127531) (not d!30067) (not b!127346) (not bm!5555) (not b!127536) (not b!127486) (not d!30101) (not b!127459) (not b!127427) (not bm!5554) (not b!127369) (not b!127535) (not b!127518) (not b!127578) (not b!127506) (not b!127354) (not d!30131) (not bm!5536) (not b!127342) (not b!127546) (not b!127477) (not b!127476) (not b!127409) (not b!127539) (not b!127562) (not bm!5557) (not b!127404) (not bm!5539) (not b!127451) (not b!127222) (not b!127097) (not b!127532) (not b!127496) (not b!127475) (not d!30125) (not b!127552) (not b!127500) (not b!127357) (not b!127223) (not b!127426) (not b!127079) (not b!127582) (not d!30095) (not b!127555) (not b!127527) (not b!127560) (not b!127554) (not b!127502) (not b!127507) (not b!127538) (not b!127449) (not b!127568) (not d!30133) (not b!127095) (not b!127564) (not b!127551) (not b!127575) (not b!127515) (not b!127365) (not b!127528) (not b!127161) (not b!127548) (not b!127471) (not b!127492) (not b!127406) (not bm!5538) (not d!30053) (not b!127580) (not d!30099) (not d!30107) (not b!127487) (not bm!5549) (not b!127540) (not b!127550) (not d!30089) (not b!127359) (not b!127511) (not b!127362) (not b!127570) (not b!127571) (not b!127428) (not b!127425) (not b!127547) (not b!127473) (not b!127474) (not d!30103) (not d!30013) (not b!127358) (not b!127495) (not b!127526) (not b!127567) (not b!127520) (not b!127583) (not bm!5551) (not d!30057) (not b!127576) (not b!127429))
(check-sat)
