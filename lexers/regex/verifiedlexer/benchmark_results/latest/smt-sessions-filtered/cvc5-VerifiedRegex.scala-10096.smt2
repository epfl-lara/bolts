; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!528248 () Bool)

(assert start!528248)

(declare-fun b!4998969 () Bool)

(declare-fun e!3123838 () Bool)

(declare-fun tp!1402070 () Bool)

(assert (=> b!4998969 (= e!3123838 tp!1402070)))

(declare-fun b!4998970 () Bool)

(declare-fun e!3123837 () Bool)

(declare-datatypes ((C!27802 0))(
  ( (C!27803 (val!23267 Int)) )
))
(declare-datatypes ((List!57932 0))(
  ( (Nil!57808) (Cons!57808 (h!64256 C!27802) (t!370272 List!57932)) )
))
(declare-datatypes ((IArray!30651 0))(
  ( (IArray!30652 (innerList!15383 List!57932)) )
))
(declare-datatypes ((Conc!15295 0))(
  ( (Node!15295 (left!42277 Conc!15295) (right!42607 Conc!15295) (csize!30820 Int) (cheight!15506 Int)) (Leaf!25392 (xs!18621 IArray!30651) (csize!30821 Int)) (Empty!15295) )
))
(declare-datatypes ((BalanceConc!30020 0))(
  ( (BalanceConc!30021 (c!853101 Conc!15295)) )
))
(declare-fun totalInput!1012 () BalanceConc!30020)

(declare-fun tp!1402075 () Bool)

(declare-fun inv!75916 (Conc!15295) Bool)

(assert (=> b!4998970 (= e!3123837 (and (inv!75916 (c!853101 totalInput!1012)) tp!1402075))))

(declare-fun b!4998971 () Bool)

(declare-fun e!3123836 () Bool)

(declare-fun e!3123833 () Bool)

(assert (=> b!4998971 (= e!3123836 e!3123833)))

(declare-fun res!2133187 () Bool)

(assert (=> b!4998971 (=> (not res!2133187) (not e!3123833))))

(declare-fun lt!2067716 () List!57932)

(declare-fun lt!2067714 () List!57932)

(assert (=> b!4998971 (= res!2133187 (= lt!2067716 lt!2067714))))

(declare-fun lt!2067708 () List!57932)

(declare-fun lt!2067706 () List!57932)

(declare-fun ++!12622 (List!57932 List!57932) List!57932)

(assert (=> b!4998971 (= lt!2067716 (++!12622 lt!2067708 lt!2067706))))

(declare-datatypes ((tuple2!62936 0))(
  ( (tuple2!62937 (_1!34771 BalanceConc!30020) (_2!34771 BalanceConc!30020)) )
))
(declare-fun lt!2067710 () tuple2!62936)

(declare-fun list!18593 (BalanceConc!30020) List!57932)

(assert (=> b!4998971 (= lt!2067706 (list!18593 (_2!34771 lt!2067710)))))

(assert (=> b!4998971 (= lt!2067708 (list!18593 (_1!34771 lt!2067710)))))

(declare-datatypes ((tuple2!62938 0))(
  ( (tuple2!62939 (_1!34772 List!57932) (_2!34772 List!57932)) )
))
(declare-fun lt!2067709 () tuple2!62938)

(declare-datatypes ((Regex!13776 0))(
  ( (ElementMatch!13776 (c!853102 C!27802)) (Concat!22569 (regOne!28064 Regex!13776) (regTwo!28064 Regex!13776)) (EmptyExpr!13776) (Star!13776 (reg!14105 Regex!13776)) (EmptyLang!13776) (Union!13776 (regOne!28065 Regex!13776) (regTwo!28065 Regex!13776)) )
))
(declare-fun r!12727 () Regex!13776)

(declare-fun findLongestMatch!1789 (Regex!13776 List!57932) tuple2!62938)

(assert (=> b!4998971 (= lt!2067709 (findLongestMatch!1789 r!12727 lt!2067714))))

(declare-fun lt!2067711 () Int)

(declare-fun lt!2067707 () Int)

(declare-fun input!5597 () BalanceConc!30020)

(declare-fun size!38416 (BalanceConc!30020) Int)

(assert (=> b!4998971 (= lt!2067711 (- lt!2067707 (size!38416 input!5597)))))

(assert (=> b!4998971 (= lt!2067707 (size!38416 totalInput!1012))))

(declare-datatypes ((List!57933 0))(
  ( (Nil!57809) (Cons!57809 (h!64257 Regex!13776) (t!370273 List!57933)) )
))
(declare-datatypes ((Context!6402 0))(
  ( (Context!6403 (exprs!3701 List!57933)) )
))
(declare-fun z!4183 () (Set Context!6402))

(declare-fun findLongestMatchZipperFastV2!78 ((Set Context!6402) BalanceConc!30020 BalanceConc!30020) tuple2!62936)

(assert (=> b!4998971 (= lt!2067710 (findLongestMatchZipperFastV2!78 z!4183 input!5597 totalInput!1012))))

(declare-fun b!4998972 () Bool)

(declare-fun e!3123839 () Bool)

(assert (=> b!4998972 (= e!3123839 e!3123836)))

(declare-fun res!2133185 () Bool)

(assert (=> b!4998972 (=> (not res!2133185) (not e!3123836))))

(declare-fun lt!2067705 () List!57932)

(declare-fun isSuffix!1342 (List!57932 List!57932) Bool)

(assert (=> b!4998972 (= res!2133185 (isSuffix!1342 lt!2067714 lt!2067705))))

(assert (=> b!4998972 (= lt!2067705 (list!18593 totalInput!1012))))

(assert (=> b!4998972 (= lt!2067714 (list!18593 input!5597))))

(declare-fun b!4998973 () Bool)

(declare-fun tp_is_empty!36549 () Bool)

(assert (=> b!4998973 (= e!3123838 tp_is_empty!36549)))

(declare-fun b!4998974 () Bool)

(declare-fun tp!1402073 () Bool)

(declare-fun tp!1402072 () Bool)

(assert (=> b!4998974 (= e!3123838 (and tp!1402073 tp!1402072))))

(declare-fun res!2133186 () Bool)

(assert (=> start!528248 (=> (not res!2133186) (not e!3123839))))

(declare-fun validRegex!6073 (Regex!13776) Bool)

(assert (=> start!528248 (= res!2133186 (validRegex!6073 r!12727))))

(assert (=> start!528248 e!3123839))

(assert (=> start!528248 e!3123838))

(declare-fun condSetEmpty!28323 () Bool)

(assert (=> start!528248 (= condSetEmpty!28323 (= z!4183 (as set.empty (Set Context!6402))))))

(declare-fun setRes!28323 () Bool)

(assert (=> start!528248 setRes!28323))

(declare-fun e!3123832 () Bool)

(declare-fun inv!75917 (BalanceConc!30020) Bool)

(assert (=> start!528248 (and (inv!75917 input!5597) e!3123832)))

(assert (=> start!528248 (and (inv!75917 totalInput!1012) e!3123837)))

(declare-fun b!4998975 () Bool)

(declare-fun res!2133184 () Bool)

(assert (=> b!4998975 (=> (not res!2133184) (not e!3123839))))

(declare-datatypes ((List!57934 0))(
  ( (Nil!57810) (Cons!57810 (h!64258 Context!6402) (t!370274 List!57934)) )
))
(declare-fun unfocusZipper!303 (List!57934) Regex!13776)

(declare-fun toList!8061 ((Set Context!6402)) List!57934)

(assert (=> b!4998975 (= res!2133184 (= (unfocusZipper!303 (toList!8061 z!4183)) r!12727))))

(declare-fun b!4998976 () Bool)

(declare-fun tp!1402076 () Bool)

(assert (=> b!4998976 (= e!3123832 (and (inv!75916 (c!853101 input!5597)) tp!1402076))))

(declare-fun b!4998977 () Bool)

(declare-fun e!3123834 () Bool)

(declare-fun tp!1402074 () Bool)

(assert (=> b!4998977 (= e!3123834 tp!1402074)))

(declare-fun b!4998978 () Bool)

(declare-fun e!3123835 () Bool)

(assert (=> b!4998978 (= e!3123835 (not (and (>= lt!2067711 0) (<= lt!2067711 lt!2067707))))))

(declare-fun isPrefix!5329 (List!57932 List!57932) Bool)

(declare-fun take!635 (List!57932 Int) List!57932)

(assert (=> b!4998978 (isPrefix!5329 (take!635 lt!2067705 lt!2067711) lt!2067705)))

(declare-datatypes ((Unit!148967 0))(
  ( (Unit!148968) )
))
(declare-fun lt!2067713 () Unit!148967)

(declare-fun lemmaTakeIsPrefix!129 (List!57932 Int) Unit!148967)

(assert (=> b!4998978 (= lt!2067713 (lemmaTakeIsPrefix!129 lt!2067705 lt!2067711))))

(declare-fun lt!2067712 () List!57932)

(assert (=> b!4998978 (isPrefix!5329 (_1!34772 lt!2067709) lt!2067712)))

(declare-fun lt!2067715 () Unit!148967)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3427 (List!57932 List!57932) Unit!148967)

(assert (=> b!4998978 (= lt!2067715 (lemmaConcatTwoListThenFirstIsPrefix!3427 (_1!34772 lt!2067709) (_2!34772 lt!2067709)))))

(assert (=> b!4998978 (isPrefix!5329 lt!2067708 lt!2067716)))

(declare-fun lt!2067717 () Unit!148967)

(assert (=> b!4998978 (= lt!2067717 (lemmaConcatTwoListThenFirstIsPrefix!3427 lt!2067708 lt!2067706))))

(declare-fun b!4998979 () Bool)

(assert (=> b!4998979 (= e!3123833 e!3123835)))

(declare-fun res!2133188 () Bool)

(assert (=> b!4998979 (=> (not res!2133188) (not e!3123835))))

(assert (=> b!4998979 (= res!2133188 (= lt!2067712 lt!2067714))))

(assert (=> b!4998979 (= lt!2067712 (++!12622 (_1!34772 lt!2067709) (_2!34772 lt!2067709)))))

(declare-fun b!4998980 () Bool)

(declare-fun tp!1402077 () Bool)

(declare-fun tp!1402069 () Bool)

(assert (=> b!4998980 (= e!3123838 (and tp!1402077 tp!1402069))))

(declare-fun setIsEmpty!28323 () Bool)

(assert (=> setIsEmpty!28323 setRes!28323))

(declare-fun setElem!28323 () Context!6402)

(declare-fun tp!1402071 () Bool)

(declare-fun setNonEmpty!28323 () Bool)

(declare-fun inv!75918 (Context!6402) Bool)

(assert (=> setNonEmpty!28323 (= setRes!28323 (and tp!1402071 (inv!75918 setElem!28323) e!3123834))))

(declare-fun setRest!28323 () (Set Context!6402))

(assert (=> setNonEmpty!28323 (= z!4183 (set.union (set.insert setElem!28323 (as set.empty (Set Context!6402))) setRest!28323))))

(assert (= (and start!528248 res!2133186) b!4998975))

(assert (= (and b!4998975 res!2133184) b!4998972))

(assert (= (and b!4998972 res!2133185) b!4998971))

(assert (= (and b!4998971 res!2133187) b!4998979))

(assert (= (and b!4998979 res!2133188) b!4998978))

(assert (= (and start!528248 (is-ElementMatch!13776 r!12727)) b!4998973))

(assert (= (and start!528248 (is-Concat!22569 r!12727)) b!4998980))

(assert (= (and start!528248 (is-Star!13776 r!12727)) b!4998969))

(assert (= (and start!528248 (is-Union!13776 r!12727)) b!4998974))

(assert (= (and start!528248 condSetEmpty!28323) setIsEmpty!28323))

(assert (= (and start!528248 (not condSetEmpty!28323)) setNonEmpty!28323))

(assert (= setNonEmpty!28323 b!4998977))

(assert (= start!528248 b!4998976))

(assert (= start!528248 b!4998970))

(declare-fun m!6032362 () Bool)

(assert (=> b!4998972 m!6032362))

(declare-fun m!6032364 () Bool)

(assert (=> b!4998972 m!6032364))

(declare-fun m!6032366 () Bool)

(assert (=> b!4998972 m!6032366))

(declare-fun m!6032368 () Bool)

(assert (=> start!528248 m!6032368))

(declare-fun m!6032370 () Bool)

(assert (=> start!528248 m!6032370))

(declare-fun m!6032372 () Bool)

(assert (=> start!528248 m!6032372))

(declare-fun m!6032374 () Bool)

(assert (=> b!4998978 m!6032374))

(declare-fun m!6032376 () Bool)

(assert (=> b!4998978 m!6032376))

(declare-fun m!6032378 () Bool)

(assert (=> b!4998978 m!6032378))

(assert (=> b!4998978 m!6032374))

(declare-fun m!6032380 () Bool)

(assert (=> b!4998978 m!6032380))

(declare-fun m!6032382 () Bool)

(assert (=> b!4998978 m!6032382))

(declare-fun m!6032384 () Bool)

(assert (=> b!4998978 m!6032384))

(declare-fun m!6032386 () Bool)

(assert (=> b!4998978 m!6032386))

(declare-fun m!6032388 () Bool)

(assert (=> b!4998976 m!6032388))

(declare-fun m!6032390 () Bool)

(assert (=> b!4998979 m!6032390))

(declare-fun m!6032392 () Bool)

(assert (=> b!4998971 m!6032392))

(declare-fun m!6032394 () Bool)

(assert (=> b!4998971 m!6032394))

(declare-fun m!6032396 () Bool)

(assert (=> b!4998971 m!6032396))

(declare-fun m!6032398 () Bool)

(assert (=> b!4998971 m!6032398))

(declare-fun m!6032400 () Bool)

(assert (=> b!4998971 m!6032400))

(declare-fun m!6032402 () Bool)

(assert (=> b!4998971 m!6032402))

(declare-fun m!6032404 () Bool)

(assert (=> b!4998971 m!6032404))

(declare-fun m!6032406 () Bool)

(assert (=> b!4998970 m!6032406))

(declare-fun m!6032408 () Bool)

(assert (=> b!4998975 m!6032408))

(assert (=> b!4998975 m!6032408))

(declare-fun m!6032410 () Bool)

(assert (=> b!4998975 m!6032410))

(declare-fun m!6032412 () Bool)

(assert (=> setNonEmpty!28323 m!6032412))

(push 1)

(assert (not b!4998977))

(assert (not setNonEmpty!28323))

(assert (not b!4998970))

(assert (not b!4998976))

(assert (not b!4998979))

(assert (not b!4998971))

(assert (not b!4998980))

(assert (not b!4998974))

(assert tp_is_empty!36549)

(assert (not start!528248))

(assert (not b!4998969))

(assert (not b!4998975))

(assert (not b!4998972))

(assert (not b!4998978))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1609325 () Bool)

(declare-fun e!3123866 () Bool)

(assert (=> d!1609325 e!3123866))

(declare-fun res!2133206 () Bool)

(assert (=> d!1609325 (=> res!2133206 e!3123866)))

(declare-fun lt!2067759 () Bool)

(assert (=> d!1609325 (= res!2133206 (not lt!2067759))))

(declare-fun drop!2439 (List!57932 Int) List!57932)

(declare-fun size!38418 (List!57932) Int)

(assert (=> d!1609325 (= lt!2067759 (= lt!2067714 (drop!2439 lt!2067705 (- (size!38418 lt!2067705) (size!38418 lt!2067714)))))))

(assert (=> d!1609325 (= (isSuffix!1342 lt!2067714 lt!2067705) lt!2067759)))

(declare-fun b!4999019 () Bool)

(assert (=> b!4999019 (= e!3123866 (>= (size!38418 lt!2067705) (size!38418 lt!2067714)))))

(assert (= (and d!1609325 (not res!2133206)) b!4999019))

(declare-fun m!6032466 () Bool)

(assert (=> d!1609325 m!6032466))

(declare-fun m!6032468 () Bool)

(assert (=> d!1609325 m!6032468))

(declare-fun m!6032470 () Bool)

(assert (=> d!1609325 m!6032470))

(assert (=> b!4999019 m!6032466))

(assert (=> b!4999019 m!6032468))

(assert (=> b!4998972 d!1609325))

(declare-fun d!1609327 () Bool)

(declare-fun list!18595 (Conc!15295) List!57932)

(assert (=> d!1609327 (= (list!18593 totalInput!1012) (list!18595 (c!853101 totalInput!1012)))))

(declare-fun bs!1185661 () Bool)

(assert (= bs!1185661 d!1609327))

(declare-fun m!6032472 () Bool)

(assert (=> bs!1185661 m!6032472))

(assert (=> b!4998972 d!1609327))

(declare-fun d!1609329 () Bool)

(assert (=> d!1609329 (= (list!18593 input!5597) (list!18595 (c!853101 input!5597)))))

(declare-fun bs!1185662 () Bool)

(assert (= bs!1185662 d!1609329))

(declare-fun m!6032474 () Bool)

(assert (=> bs!1185662 m!6032474))

(assert (=> b!4998972 d!1609329))

(declare-fun b!4999034 () Bool)

(declare-fun e!3123876 () List!57932)

(assert (=> b!4999034 (= e!3123876 Nil!57808)))

(declare-fun d!1609331 () Bool)

(declare-fun e!3123878 () Bool)

(assert (=> d!1609331 e!3123878))

(declare-fun res!2133209 () Bool)

(assert (=> d!1609331 (=> (not res!2133209) (not e!3123878))))

(declare-fun lt!2067764 () List!57932)

(declare-fun content!10231 (List!57932) (Set C!27802))

(assert (=> d!1609331 (= res!2133209 (set.subset (content!10231 lt!2067764) (content!10231 lt!2067705)))))

(assert (=> d!1609331 (= lt!2067764 e!3123876)))

(declare-fun c!853112 () Bool)

(assert (=> d!1609331 (= c!853112 (or (is-Nil!57808 lt!2067705) (<= lt!2067711 0)))))

(assert (=> d!1609331 (= (take!635 lt!2067705 lt!2067711) lt!2067764)))

(declare-fun b!4999035 () Bool)

(declare-fun e!3123877 () Int)

(assert (=> b!4999035 (= e!3123878 (= (size!38418 lt!2067764) e!3123877))))

(declare-fun c!853113 () Bool)

(assert (=> b!4999035 (= c!853113 (<= lt!2067711 0))))

(declare-fun b!4999036 () Bool)

(assert (=> b!4999036 (= e!3123877 0)))

(declare-fun b!4999037 () Bool)

(assert (=> b!4999037 (= e!3123876 (Cons!57808 (h!64256 lt!2067705) (take!635 (t!370272 lt!2067705) (- lt!2067711 1))))))

(declare-fun b!4999038 () Bool)

(declare-fun e!3123875 () Int)

(assert (=> b!4999038 (= e!3123875 lt!2067711)))

(declare-fun b!4999039 () Bool)

(assert (=> b!4999039 (= e!3123875 (size!38418 lt!2067705))))

(declare-fun b!4999040 () Bool)

(assert (=> b!4999040 (= e!3123877 e!3123875)))

(declare-fun c!853111 () Bool)

(assert (=> b!4999040 (= c!853111 (>= lt!2067711 (size!38418 lt!2067705)))))

(assert (= (and d!1609331 c!853112) b!4999034))

(assert (= (and d!1609331 (not c!853112)) b!4999037))

(assert (= (and d!1609331 res!2133209) b!4999035))

(assert (= (and b!4999035 c!853113) b!4999036))

(assert (= (and b!4999035 (not c!853113)) b!4999040))

(assert (= (and b!4999040 c!853111) b!4999039))

(assert (= (and b!4999040 (not c!853111)) b!4999038))

(declare-fun m!6032476 () Bool)

(assert (=> b!4999035 m!6032476))

(assert (=> b!4999040 m!6032466))

(assert (=> b!4999039 m!6032466))

(declare-fun m!6032478 () Bool)

(assert (=> b!4999037 m!6032478))

(declare-fun m!6032480 () Bool)

(assert (=> d!1609331 m!6032480))

(declare-fun m!6032482 () Bool)

(assert (=> d!1609331 m!6032482))

(assert (=> b!4998978 d!1609331))

(declare-fun d!1609335 () Bool)

(assert (=> d!1609335 (isPrefix!5329 (_1!34772 lt!2067709) (++!12622 (_1!34772 lt!2067709) (_2!34772 lt!2067709)))))

(declare-fun lt!2067768 () Unit!148967)

(declare-fun choose!36953 (List!57932 List!57932) Unit!148967)

(assert (=> d!1609335 (= lt!2067768 (choose!36953 (_1!34772 lt!2067709) (_2!34772 lt!2067709)))))

(assert (=> d!1609335 (= (lemmaConcatTwoListThenFirstIsPrefix!3427 (_1!34772 lt!2067709) (_2!34772 lt!2067709)) lt!2067768)))

(declare-fun bs!1185664 () Bool)

(assert (= bs!1185664 d!1609335))

(assert (=> bs!1185664 m!6032390))

(assert (=> bs!1185664 m!6032390))

(declare-fun m!6032488 () Bool)

(assert (=> bs!1185664 m!6032488))

(declare-fun m!6032490 () Bool)

(assert (=> bs!1185664 m!6032490))

(assert (=> b!4998978 d!1609335))

(declare-fun b!4999052 () Bool)

(declare-fun e!3123885 () Bool)

(assert (=> b!4999052 (= e!3123885 (>= (size!38418 lt!2067716) (size!38418 lt!2067708)))))

(declare-fun b!4999051 () Bool)

(declare-fun e!3123886 () Bool)

(declare-fun tail!9853 (List!57932) List!57932)

(assert (=> b!4999051 (= e!3123886 (isPrefix!5329 (tail!9853 lt!2067708) (tail!9853 lt!2067716)))))

(declare-fun b!4999050 () Bool)

(declare-fun res!2133221 () Bool)

(assert (=> b!4999050 (=> (not res!2133221) (not e!3123886))))

(declare-fun head!10720 (List!57932) C!27802)

(assert (=> b!4999050 (= res!2133221 (= (head!10720 lt!2067708) (head!10720 lt!2067716)))))

(declare-fun b!4999049 () Bool)

(declare-fun e!3123887 () Bool)

(assert (=> b!4999049 (= e!3123887 e!3123886)))

(declare-fun res!2133219 () Bool)

(assert (=> b!4999049 (=> (not res!2133219) (not e!3123886))))

(assert (=> b!4999049 (= res!2133219 (not (is-Nil!57808 lt!2067716)))))

(declare-fun d!1609339 () Bool)

(assert (=> d!1609339 e!3123885))

(declare-fun res!2133218 () Bool)

(assert (=> d!1609339 (=> res!2133218 e!3123885)))

(declare-fun lt!2067771 () Bool)

(assert (=> d!1609339 (= res!2133218 (not lt!2067771))))

(assert (=> d!1609339 (= lt!2067771 e!3123887)))

(declare-fun res!2133220 () Bool)

(assert (=> d!1609339 (=> res!2133220 e!3123887)))

(assert (=> d!1609339 (= res!2133220 (is-Nil!57808 lt!2067708))))

(assert (=> d!1609339 (= (isPrefix!5329 lt!2067708 lt!2067716) lt!2067771)))

(assert (= (and d!1609339 (not res!2133220)) b!4999049))

(assert (= (and b!4999049 res!2133219) b!4999050))

(assert (= (and b!4999050 res!2133221) b!4999051))

(assert (= (and d!1609339 (not res!2133218)) b!4999052))

(declare-fun m!6032492 () Bool)

(assert (=> b!4999052 m!6032492))

(declare-fun m!6032494 () Bool)

(assert (=> b!4999052 m!6032494))

(declare-fun m!6032496 () Bool)

(assert (=> b!4999051 m!6032496))

(declare-fun m!6032498 () Bool)

(assert (=> b!4999051 m!6032498))

(assert (=> b!4999051 m!6032496))

(assert (=> b!4999051 m!6032498))

(declare-fun m!6032500 () Bool)

(assert (=> b!4999051 m!6032500))

(declare-fun m!6032502 () Bool)

(assert (=> b!4999050 m!6032502))

(declare-fun m!6032504 () Bool)

(assert (=> b!4999050 m!6032504))

(assert (=> b!4998978 d!1609339))

(declare-fun b!4999056 () Bool)

(declare-fun e!3123890 () Bool)

(assert (=> b!4999056 (= e!3123890 (>= (size!38418 lt!2067705) (size!38418 (take!635 lt!2067705 lt!2067711))))))

(declare-fun b!4999055 () Bool)

(declare-fun e!3123891 () Bool)

(assert (=> b!4999055 (= e!3123891 (isPrefix!5329 (tail!9853 (take!635 lt!2067705 lt!2067711)) (tail!9853 lt!2067705)))))

(declare-fun b!4999054 () Bool)

(declare-fun res!2133227 () Bool)

(assert (=> b!4999054 (=> (not res!2133227) (not e!3123891))))

(assert (=> b!4999054 (= res!2133227 (= (head!10720 (take!635 lt!2067705 lt!2067711)) (head!10720 lt!2067705)))))

(declare-fun b!4999053 () Bool)

(declare-fun e!3123892 () Bool)

(assert (=> b!4999053 (= e!3123892 e!3123891)))

(declare-fun res!2133223 () Bool)

(assert (=> b!4999053 (=> (not res!2133223) (not e!3123891))))

(assert (=> b!4999053 (= res!2133223 (not (is-Nil!57808 lt!2067705)))))

(declare-fun d!1609341 () Bool)

(assert (=> d!1609341 e!3123890))

(declare-fun res!2133222 () Bool)

(assert (=> d!1609341 (=> res!2133222 e!3123890)))

(declare-fun lt!2067774 () Bool)

(assert (=> d!1609341 (= res!2133222 (not lt!2067774))))

(assert (=> d!1609341 (= lt!2067774 e!3123892)))

(declare-fun res!2133224 () Bool)

(assert (=> d!1609341 (=> res!2133224 e!3123892)))

(assert (=> d!1609341 (= res!2133224 (is-Nil!57808 (take!635 lt!2067705 lt!2067711)))))

(assert (=> d!1609341 (= (isPrefix!5329 (take!635 lt!2067705 lt!2067711) lt!2067705) lt!2067774)))

(assert (= (and d!1609341 (not res!2133224)) b!4999053))

(assert (= (and b!4999053 res!2133223) b!4999054))

(assert (= (and b!4999054 res!2133227) b!4999055))

(assert (= (and d!1609341 (not res!2133222)) b!4999056))

(assert (=> b!4999056 m!6032466))

(assert (=> b!4999056 m!6032374))

(declare-fun m!6032506 () Bool)

(assert (=> b!4999056 m!6032506))

(assert (=> b!4999055 m!6032374))

(declare-fun m!6032508 () Bool)

(assert (=> b!4999055 m!6032508))

(declare-fun m!6032510 () Bool)

(assert (=> b!4999055 m!6032510))

(assert (=> b!4999055 m!6032508))

(assert (=> b!4999055 m!6032510))

(declare-fun m!6032512 () Bool)

(assert (=> b!4999055 m!6032512))

(assert (=> b!4999054 m!6032374))

(declare-fun m!6032514 () Bool)

(assert (=> b!4999054 m!6032514))

(declare-fun m!6032516 () Bool)

(assert (=> b!4999054 m!6032516))

(assert (=> b!4998978 d!1609341))

(declare-fun d!1609343 () Bool)

(assert (=> d!1609343 (isPrefix!5329 (take!635 lt!2067705 lt!2067711) lt!2067705)))

(declare-fun lt!2067777 () Unit!148967)

(declare-fun choose!36954 (List!57932 Int) Unit!148967)

(assert (=> d!1609343 (= lt!2067777 (choose!36954 lt!2067705 lt!2067711))))

(assert (=> d!1609343 (>= lt!2067711 0)))

(assert (=> d!1609343 (= (lemmaTakeIsPrefix!129 lt!2067705 lt!2067711) lt!2067777)))

(declare-fun bs!1185665 () Bool)

(assert (= bs!1185665 d!1609343))

(assert (=> bs!1185665 m!6032374))

(assert (=> bs!1185665 m!6032374))

(assert (=> bs!1185665 m!6032380))

(declare-fun m!6032518 () Bool)

(assert (=> bs!1185665 m!6032518))

(assert (=> b!4998978 d!1609343))

(declare-fun d!1609345 () Bool)

(assert (=> d!1609345 (isPrefix!5329 lt!2067708 (++!12622 lt!2067708 lt!2067706))))

(declare-fun lt!2067778 () Unit!148967)

(assert (=> d!1609345 (= lt!2067778 (choose!36953 lt!2067708 lt!2067706))))

(assert (=> d!1609345 (= (lemmaConcatTwoListThenFirstIsPrefix!3427 lt!2067708 lt!2067706) lt!2067778)))

(declare-fun bs!1185666 () Bool)

(assert (= bs!1185666 d!1609345))

(assert (=> bs!1185666 m!6032402))

(assert (=> bs!1185666 m!6032402))

(declare-fun m!6032520 () Bool)

(assert (=> bs!1185666 m!6032520))

(declare-fun m!6032522 () Bool)

(assert (=> bs!1185666 m!6032522))

(assert (=> b!4998978 d!1609345))

(declare-fun b!4999068 () Bool)

(declare-fun e!3123897 () Bool)

(assert (=> b!4999068 (= e!3123897 (>= (size!38418 lt!2067712) (size!38418 (_1!34772 lt!2067709))))))

(declare-fun b!4999067 () Bool)

(declare-fun e!3123898 () Bool)

(assert (=> b!4999067 (= e!3123898 (isPrefix!5329 (tail!9853 (_1!34772 lt!2067709)) (tail!9853 lt!2067712)))))

(declare-fun b!4999066 () Bool)

(declare-fun res!2133237 () Bool)

(assert (=> b!4999066 (=> (not res!2133237) (not e!3123898))))

(assert (=> b!4999066 (= res!2133237 (= (head!10720 (_1!34772 lt!2067709)) (head!10720 lt!2067712)))))

(declare-fun b!4999065 () Bool)

(declare-fun e!3123899 () Bool)

(assert (=> b!4999065 (= e!3123899 e!3123898)))

(declare-fun res!2133235 () Bool)

(assert (=> b!4999065 (=> (not res!2133235) (not e!3123898))))

(assert (=> b!4999065 (= res!2133235 (not (is-Nil!57808 lt!2067712)))))

(declare-fun d!1609347 () Bool)

(assert (=> d!1609347 e!3123897))

(declare-fun res!2133234 () Bool)

(assert (=> d!1609347 (=> res!2133234 e!3123897)))

(declare-fun lt!2067779 () Bool)

(assert (=> d!1609347 (= res!2133234 (not lt!2067779))))

(assert (=> d!1609347 (= lt!2067779 e!3123899)))

(declare-fun res!2133236 () Bool)

(assert (=> d!1609347 (=> res!2133236 e!3123899)))

(assert (=> d!1609347 (= res!2133236 (is-Nil!57808 (_1!34772 lt!2067709)))))

(assert (=> d!1609347 (= (isPrefix!5329 (_1!34772 lt!2067709) lt!2067712) lt!2067779)))

(assert (= (and d!1609347 (not res!2133236)) b!4999065))

(assert (= (and b!4999065 res!2133235) b!4999066))

(assert (= (and b!4999066 res!2133237) b!4999067))

(assert (= (and d!1609347 (not res!2133234)) b!4999068))

(declare-fun m!6032524 () Bool)

(assert (=> b!4999068 m!6032524))

(declare-fun m!6032526 () Bool)

(assert (=> b!4999068 m!6032526))

(declare-fun m!6032528 () Bool)

(assert (=> b!4999067 m!6032528))

(declare-fun m!6032530 () Bool)

(assert (=> b!4999067 m!6032530))

(assert (=> b!4999067 m!6032528))

(assert (=> b!4999067 m!6032530))

(declare-fun m!6032532 () Bool)

(assert (=> b!4999067 m!6032532))

(declare-fun m!6032534 () Bool)

(assert (=> b!4999066 m!6032534))

(declare-fun m!6032536 () Bool)

(assert (=> b!4999066 m!6032536))

(assert (=> b!4998978 d!1609347))

(declare-fun d!1609349 () Bool)

(declare-fun c!853116 () Bool)

(assert (=> d!1609349 (= c!853116 (is-Node!15295 (c!853101 input!5597)))))

(declare-fun e!3123910 () Bool)

(assert (=> d!1609349 (= (inv!75916 (c!853101 input!5597)) e!3123910)))

(declare-fun b!4999083 () Bool)

(declare-fun inv!75922 (Conc!15295) Bool)

(assert (=> b!4999083 (= e!3123910 (inv!75922 (c!853101 input!5597)))))

(declare-fun b!4999084 () Bool)

(declare-fun e!3123911 () Bool)

(assert (=> b!4999084 (= e!3123910 e!3123911)))

(declare-fun res!2133248 () Bool)

(assert (=> b!4999084 (= res!2133248 (not (is-Leaf!25392 (c!853101 input!5597))))))

(assert (=> b!4999084 (=> res!2133248 e!3123911)))

(declare-fun b!4999085 () Bool)

(declare-fun inv!75923 (Conc!15295) Bool)

(assert (=> b!4999085 (= e!3123911 (inv!75923 (c!853101 input!5597)))))

(assert (= (and d!1609349 c!853116) b!4999083))

(assert (= (and d!1609349 (not c!853116)) b!4999084))

(assert (= (and b!4999084 (not res!2133248)) b!4999085))

(declare-fun m!6032566 () Bool)

(assert (=> b!4999083 m!6032566))

(declare-fun m!6032568 () Bool)

(assert (=> b!4999085 m!6032568))

(assert (=> b!4998976 d!1609349))

(declare-fun d!1609355 () Bool)

(declare-fun lt!2067805 () tuple2!62938)

(assert (=> d!1609355 (= (++!12622 (_1!34772 lt!2067805) (_2!34772 lt!2067805)) lt!2067714)))

(declare-fun findLongestMatchInner!1965 (Regex!13776 List!57932 Int List!57932 List!57932 Int) tuple2!62938)

(declare-fun sizeTr!389 (List!57932 Int) Int)

(assert (=> d!1609355 (= lt!2067805 (findLongestMatchInner!1965 r!12727 Nil!57808 0 lt!2067714 lt!2067714 (sizeTr!389 lt!2067714 0)))))

(declare-fun lt!2067802 () Unit!148967)

(declare-fun lt!2067809 () Unit!148967)

(assert (=> d!1609355 (= lt!2067802 lt!2067809)))

(declare-fun lt!2067804 () List!57932)

(declare-fun lt!2067803 () Int)

(assert (=> d!1609355 (= (sizeTr!389 lt!2067804 lt!2067803) (+ (size!38418 lt!2067804) lt!2067803))))

(declare-fun lemmaSizeTrEqualsSize!388 (List!57932 Int) Unit!148967)

(assert (=> d!1609355 (= lt!2067809 (lemmaSizeTrEqualsSize!388 lt!2067804 lt!2067803))))

(assert (=> d!1609355 (= lt!2067803 0)))

(assert (=> d!1609355 (= lt!2067804 Nil!57808)))

(declare-fun lt!2067807 () Unit!148967)

(declare-fun lt!2067806 () Unit!148967)

(assert (=> d!1609355 (= lt!2067807 lt!2067806)))

(declare-fun lt!2067808 () Int)

(assert (=> d!1609355 (= (sizeTr!389 lt!2067714 lt!2067808) (+ (size!38418 lt!2067714) lt!2067808))))

(assert (=> d!1609355 (= lt!2067806 (lemmaSizeTrEqualsSize!388 lt!2067714 lt!2067808))))

(assert (=> d!1609355 (= lt!2067808 0)))

(assert (=> d!1609355 (validRegex!6073 r!12727)))

(assert (=> d!1609355 (= (findLongestMatch!1789 r!12727 lt!2067714) lt!2067805)))

(declare-fun bs!1185669 () Bool)

(assert (= bs!1185669 d!1609355))

(declare-fun m!6032576 () Bool)

(assert (=> bs!1185669 m!6032576))

(assert (=> bs!1185669 m!6032576))

(declare-fun m!6032578 () Bool)

(assert (=> bs!1185669 m!6032578))

(declare-fun m!6032580 () Bool)

(assert (=> bs!1185669 m!6032580))

(assert (=> bs!1185669 m!6032468))

(declare-fun m!6032582 () Bool)

(assert (=> bs!1185669 m!6032582))

(declare-fun m!6032584 () Bool)

(assert (=> bs!1185669 m!6032584))

(declare-fun m!6032586 () Bool)

(assert (=> bs!1185669 m!6032586))

(declare-fun m!6032588 () Bool)

(assert (=> bs!1185669 m!6032588))

(assert (=> bs!1185669 m!6032368))

(declare-fun m!6032590 () Bool)

(assert (=> bs!1185669 m!6032590))

(assert (=> b!4998971 d!1609355))

(declare-fun d!1609361 () Bool)

(declare-fun lt!2067814 () Int)

(assert (=> d!1609361 (= lt!2067814 (size!38418 (list!18593 input!5597)))))

(declare-fun size!38419 (Conc!15295) Int)

(assert (=> d!1609361 (= lt!2067814 (size!38419 (c!853101 input!5597)))))

(assert (=> d!1609361 (= (size!38416 input!5597) lt!2067814)))

(declare-fun bs!1185670 () Bool)

(assert (= bs!1185670 d!1609361))

(assert (=> bs!1185670 m!6032366))

(assert (=> bs!1185670 m!6032366))

(declare-fun m!6032592 () Bool)

(assert (=> bs!1185670 m!6032592))

(declare-fun m!6032594 () Bool)

(assert (=> bs!1185670 m!6032594))

(assert (=> b!4998971 d!1609361))

(declare-fun d!1609363 () Bool)

(declare-fun lt!2067815 () Int)

(assert (=> d!1609363 (= lt!2067815 (size!38418 (list!18593 totalInput!1012)))))

(assert (=> d!1609363 (= lt!2067815 (size!38419 (c!853101 totalInput!1012)))))

(assert (=> d!1609363 (= (size!38416 totalInput!1012) lt!2067815)))

(declare-fun bs!1185671 () Bool)

(assert (= bs!1185671 d!1609363))

(assert (=> bs!1185671 m!6032364))

(assert (=> bs!1185671 m!6032364))

(declare-fun m!6032596 () Bool)

(assert (=> bs!1185671 m!6032596))

(declare-fun m!6032598 () Bool)

(assert (=> bs!1185671 m!6032598))

(assert (=> b!4998971 d!1609363))

(declare-fun d!1609365 () Bool)

(declare-fun lt!2067827 () tuple2!62936)

(assert (=> d!1609365 (= (++!12622 (list!18593 (_1!34771 lt!2067827)) (list!18593 (_2!34771 lt!2067827))) (list!18593 input!5597))))

(declare-fun lt!2067828 () Int)

(declare-fun splitAt!436 (BalanceConc!30020 Int) tuple2!62936)

(declare-fun findLongestMatchInnerZipperFastV2!116 ((Set Context!6402) Int BalanceConc!30020 Int) Int)

(assert (=> d!1609365 (= lt!2067827 (splitAt!436 input!5597 (findLongestMatchInnerZipperFastV2!116 z!4183 (- lt!2067828 (size!38416 input!5597)) totalInput!1012 lt!2067828)))))

(assert (=> d!1609365 (= lt!2067828 (size!38416 totalInput!1012))))

(assert (=> d!1609365 (isSuffix!1342 (list!18593 input!5597) (list!18593 totalInput!1012))))

(assert (=> d!1609365 (= (findLongestMatchZipperFastV2!78 z!4183 input!5597 totalInput!1012) lt!2067827)))

(declare-fun bs!1185673 () Bool)

(assert (= bs!1185673 d!1609365))

(assert (=> bs!1185673 m!6032404))

(assert (=> bs!1185673 m!6032394))

(declare-fun m!6032628 () Bool)

(assert (=> bs!1185673 m!6032628))

(declare-fun m!6032630 () Bool)

(assert (=> bs!1185673 m!6032630))

(declare-fun m!6032632 () Bool)

(assert (=> bs!1185673 m!6032632))

(assert (=> bs!1185673 m!6032630))

(assert (=> bs!1185673 m!6032364))

(assert (=> bs!1185673 m!6032366))

(assert (=> bs!1185673 m!6032364))

(declare-fun m!6032634 () Bool)

(assert (=> bs!1185673 m!6032634))

(declare-fun m!6032636 () Bool)

(assert (=> bs!1185673 m!6032636))

(assert (=> bs!1185673 m!6032628))

(assert (=> bs!1185673 m!6032636))

(declare-fun m!6032638 () Bool)

(assert (=> bs!1185673 m!6032638))

(assert (=> bs!1185673 m!6032366))

(assert (=> b!4998971 d!1609365))

(declare-fun d!1609373 () Bool)

(assert (=> d!1609373 (= (list!18593 (_2!34771 lt!2067710)) (list!18595 (c!853101 (_2!34771 lt!2067710))))))

(declare-fun bs!1185674 () Bool)

(assert (= bs!1185674 d!1609373))

(declare-fun m!6032640 () Bool)

(assert (=> bs!1185674 m!6032640))

(assert (=> b!4998971 d!1609373))

(declare-fun b!4999125 () Bool)

(declare-fun e!3123935 () Bool)

(declare-fun lt!2067832 () List!57932)

(assert (=> b!4999125 (= e!3123935 (or (not (= lt!2067706 Nil!57808)) (= lt!2067832 lt!2067708)))))

(declare-fun d!1609375 () Bool)

(assert (=> d!1609375 e!3123935))

(declare-fun res!2133264 () Bool)

(assert (=> d!1609375 (=> (not res!2133264) (not e!3123935))))

(assert (=> d!1609375 (= res!2133264 (= (content!10231 lt!2067832) (set.union (content!10231 lt!2067708) (content!10231 lt!2067706))))))

(declare-fun e!3123934 () List!57932)

(assert (=> d!1609375 (= lt!2067832 e!3123934)))

(declare-fun c!853128 () Bool)

(assert (=> d!1609375 (= c!853128 (is-Nil!57808 lt!2067708))))

(assert (=> d!1609375 (= (++!12622 lt!2067708 lt!2067706) lt!2067832)))

(declare-fun b!4999122 () Bool)

(assert (=> b!4999122 (= e!3123934 lt!2067706)))

(declare-fun b!4999123 () Bool)

(assert (=> b!4999123 (= e!3123934 (Cons!57808 (h!64256 lt!2067708) (++!12622 (t!370272 lt!2067708) lt!2067706)))))

(declare-fun b!4999124 () Bool)

(declare-fun res!2133263 () Bool)

(assert (=> b!4999124 (=> (not res!2133263) (not e!3123935))))

(assert (=> b!4999124 (= res!2133263 (= (size!38418 lt!2067832) (+ (size!38418 lt!2067708) (size!38418 lt!2067706))))))

(assert (= (and d!1609375 c!853128) b!4999122))

(assert (= (and d!1609375 (not c!853128)) b!4999123))

(assert (= (and d!1609375 res!2133264) b!4999124))

(assert (= (and b!4999124 res!2133263) b!4999125))

(declare-fun m!6032648 () Bool)

(assert (=> d!1609375 m!6032648))

(declare-fun m!6032650 () Bool)

(assert (=> d!1609375 m!6032650))

(declare-fun m!6032652 () Bool)

(assert (=> d!1609375 m!6032652))

(declare-fun m!6032654 () Bool)

(assert (=> b!4999123 m!6032654))

(declare-fun m!6032656 () Bool)

(assert (=> b!4999124 m!6032656))

(assert (=> b!4999124 m!6032494))

(declare-fun m!6032658 () Bool)

(assert (=> b!4999124 m!6032658))

(assert (=> b!4998971 d!1609375))

(declare-fun d!1609379 () Bool)

(assert (=> d!1609379 (= (list!18593 (_1!34771 lt!2067710)) (list!18595 (c!853101 (_1!34771 lt!2067710))))))

(declare-fun bs!1185675 () Bool)

(assert (= bs!1185675 d!1609379))

(declare-fun m!6032660 () Bool)

(assert (=> bs!1185675 m!6032660))

(assert (=> b!4998971 d!1609379))

(declare-fun d!1609381 () Bool)

(declare-fun lambda!248325 () Int)

(declare-fun forall!13355 (List!57933 Int) Bool)

(assert (=> d!1609381 (= (inv!75918 setElem!28323) (forall!13355 (exprs!3701 setElem!28323) lambda!248325))))

(declare-fun bs!1185676 () Bool)

(assert (= bs!1185676 d!1609381))

(declare-fun m!6032666 () Bool)

(assert (=> bs!1185676 m!6032666))

(assert (=> setNonEmpty!28323 d!1609381))

(declare-fun d!1609385 () Bool)

(declare-fun lt!2067835 () Regex!13776)

(assert (=> d!1609385 (validRegex!6073 lt!2067835)))

(declare-fun generalisedUnion!572 (List!57933) Regex!13776)

(declare-fun unfocusZipperList!85 (List!57934) List!57933)

(assert (=> d!1609385 (= lt!2067835 (generalisedUnion!572 (unfocusZipperList!85 (toList!8061 z!4183))))))

(assert (=> d!1609385 (= (unfocusZipper!303 (toList!8061 z!4183)) lt!2067835)))

(declare-fun bs!1185677 () Bool)

(assert (= bs!1185677 d!1609385))

(declare-fun m!6032668 () Bool)

(assert (=> bs!1185677 m!6032668))

(assert (=> bs!1185677 m!6032408))

(declare-fun m!6032670 () Bool)

(assert (=> bs!1185677 m!6032670))

(assert (=> bs!1185677 m!6032670))

(declare-fun m!6032672 () Bool)

(assert (=> bs!1185677 m!6032672))

(assert (=> b!4998975 d!1609385))

(declare-fun d!1609387 () Bool)

(declare-fun e!3123944 () Bool)

(assert (=> d!1609387 e!3123944))

(declare-fun res!2133270 () Bool)

(assert (=> d!1609387 (=> (not res!2133270) (not e!3123944))))

(declare-fun lt!2067838 () List!57934)

(declare-fun noDuplicate!1021 (List!57934) Bool)

(assert (=> d!1609387 (= res!2133270 (noDuplicate!1021 lt!2067838))))

(declare-fun choose!36955 ((Set Context!6402)) List!57934)

(assert (=> d!1609387 (= lt!2067838 (choose!36955 z!4183))))

(assert (=> d!1609387 (= (toList!8061 z!4183) lt!2067838)))

(declare-fun b!4999137 () Bool)

(declare-fun content!10232 (List!57934) (Set Context!6402))

(assert (=> b!4999137 (= e!3123944 (= (content!10232 lt!2067838) z!4183))))

(assert (= (and d!1609387 res!2133270) b!4999137))

(declare-fun m!6032674 () Bool)

(assert (=> d!1609387 m!6032674))

(declare-fun m!6032676 () Bool)

(assert (=> d!1609387 m!6032676))

(declare-fun m!6032678 () Bool)

(assert (=> b!4999137 m!6032678))

(assert (=> b!4998975 d!1609387))

(declare-fun d!1609389 () Bool)

(declare-fun c!853132 () Bool)

(assert (=> d!1609389 (= c!853132 (is-Node!15295 (c!853101 totalInput!1012)))))

(declare-fun e!3123945 () Bool)

(assert (=> d!1609389 (= (inv!75916 (c!853101 totalInput!1012)) e!3123945)))

(declare-fun b!4999138 () Bool)

(assert (=> b!4999138 (= e!3123945 (inv!75922 (c!853101 totalInput!1012)))))

(declare-fun b!4999139 () Bool)

(declare-fun e!3123946 () Bool)

(assert (=> b!4999139 (= e!3123945 e!3123946)))

(declare-fun res!2133271 () Bool)

(assert (=> b!4999139 (= res!2133271 (not (is-Leaf!25392 (c!853101 totalInput!1012))))))

(assert (=> b!4999139 (=> res!2133271 e!3123946)))

(declare-fun b!4999140 () Bool)

(assert (=> b!4999140 (= e!3123946 (inv!75923 (c!853101 totalInput!1012)))))

(assert (= (and d!1609389 c!853132) b!4999138))

(assert (= (and d!1609389 (not c!853132)) b!4999139))

(assert (= (and b!4999139 (not res!2133271)) b!4999140))

(declare-fun m!6032680 () Bool)

(assert (=> b!4999138 m!6032680))

(declare-fun m!6032682 () Bool)

(assert (=> b!4999140 m!6032682))

(assert (=> b!4998970 d!1609389))

(declare-fun d!1609391 () Bool)

(declare-fun res!2133284 () Bool)

(declare-fun e!3123962 () Bool)

(assert (=> d!1609391 (=> res!2133284 e!3123962)))

(assert (=> d!1609391 (= res!2133284 (is-ElementMatch!13776 r!12727))))

(assert (=> d!1609391 (= (validRegex!6073 r!12727) e!3123962)))

(declare-fun b!4999159 () Bool)

(declare-fun e!3123964 () Bool)

(declare-fun call!348903 () Bool)

(assert (=> b!4999159 (= e!3123964 call!348903)))

(declare-fun b!4999160 () Bool)

(declare-fun e!3123965 () Bool)

(assert (=> b!4999160 (= e!3123965 e!3123964)))

(declare-fun res!2133282 () Bool)

(assert (=> b!4999160 (=> (not res!2133282) (not e!3123964))))

(declare-fun call!348904 () Bool)

(assert (=> b!4999160 (= res!2133282 call!348904)))

(declare-fun b!4999161 () Bool)

(declare-fun e!3123963 () Bool)

(assert (=> b!4999161 (= e!3123962 e!3123963)))

(declare-fun c!853137 () Bool)

(assert (=> b!4999161 (= c!853137 (is-Star!13776 r!12727))))

(declare-fun b!4999162 () Bool)

(declare-fun res!2133285 () Bool)

(assert (=> b!4999162 (=> res!2133285 e!3123965)))

(assert (=> b!4999162 (= res!2133285 (not (is-Concat!22569 r!12727)))))

(declare-fun e!3123967 () Bool)

(assert (=> b!4999162 (= e!3123967 e!3123965)))

(declare-fun bm!348897 () Bool)

(declare-fun c!853138 () Bool)

(assert (=> bm!348897 (= call!348904 (validRegex!6073 (ite c!853138 (regTwo!28065 r!12727) (regOne!28064 r!12727))))))

(declare-fun b!4999163 () Bool)

(assert (=> b!4999163 (= e!3123963 e!3123967)))

(assert (=> b!4999163 (= c!853138 (is-Union!13776 r!12727))))

(declare-fun b!4999164 () Bool)

(declare-fun e!3123961 () Bool)

(assert (=> b!4999164 (= e!3123963 e!3123961)))

(declare-fun res!2133286 () Bool)

(declare-fun nullable!4678 (Regex!13776) Bool)

(assert (=> b!4999164 (= res!2133286 (not (nullable!4678 (reg!14105 r!12727))))))

(assert (=> b!4999164 (=> (not res!2133286) (not e!3123961))))

(declare-fun bm!348898 () Bool)

(declare-fun call!348902 () Bool)

(assert (=> bm!348898 (= call!348903 call!348902)))

(declare-fun b!4999165 () Bool)

(declare-fun res!2133283 () Bool)

(declare-fun e!3123966 () Bool)

(assert (=> b!4999165 (=> (not res!2133283) (not e!3123966))))

(assert (=> b!4999165 (= res!2133283 call!348903)))

(assert (=> b!4999165 (= e!3123967 e!3123966)))

(declare-fun bm!348899 () Bool)

(assert (=> bm!348899 (= call!348902 (validRegex!6073 (ite c!853137 (reg!14105 r!12727) (ite c!853138 (regOne!28065 r!12727) (regTwo!28064 r!12727)))))))

(declare-fun b!4999166 () Bool)

(assert (=> b!4999166 (= e!3123966 call!348904)))

(declare-fun b!4999167 () Bool)

(assert (=> b!4999167 (= e!3123961 call!348902)))

(assert (= (and d!1609391 (not res!2133284)) b!4999161))

(assert (= (and b!4999161 c!853137) b!4999164))

(assert (= (and b!4999161 (not c!853137)) b!4999163))

(assert (= (and b!4999164 res!2133286) b!4999167))

(assert (= (and b!4999163 c!853138) b!4999165))

(assert (= (and b!4999163 (not c!853138)) b!4999162))

(assert (= (and b!4999165 res!2133283) b!4999166))

(assert (= (and b!4999162 (not res!2133285)) b!4999160))

(assert (= (and b!4999160 res!2133282) b!4999159))

(assert (= (or b!4999166 b!4999160) bm!348897))

(assert (= (or b!4999165 b!4999159) bm!348898))

(assert (= (or b!4999167 bm!348898) bm!348899))

(declare-fun m!6032684 () Bool)

(assert (=> bm!348897 m!6032684))

(declare-fun m!6032686 () Bool)

(assert (=> b!4999164 m!6032686))

(declare-fun m!6032688 () Bool)

(assert (=> bm!348899 m!6032688))

(assert (=> start!528248 d!1609391))

(declare-fun d!1609393 () Bool)

(declare-fun isBalanced!4261 (Conc!15295) Bool)

(assert (=> d!1609393 (= (inv!75917 input!5597) (isBalanced!4261 (c!853101 input!5597)))))

(declare-fun bs!1185678 () Bool)

(assert (= bs!1185678 d!1609393))

(declare-fun m!6032690 () Bool)

(assert (=> bs!1185678 m!6032690))

(assert (=> start!528248 d!1609393))

(declare-fun d!1609395 () Bool)

(assert (=> d!1609395 (= (inv!75917 totalInput!1012) (isBalanced!4261 (c!853101 totalInput!1012)))))

(declare-fun bs!1185679 () Bool)

(assert (= bs!1185679 d!1609395))

(declare-fun m!6032692 () Bool)

(assert (=> bs!1185679 m!6032692))

(assert (=> start!528248 d!1609395))

(declare-fun b!4999171 () Bool)

(declare-fun e!3123969 () Bool)

(declare-fun lt!2067839 () List!57932)

(assert (=> b!4999171 (= e!3123969 (or (not (= (_2!34772 lt!2067709) Nil!57808)) (= lt!2067839 (_1!34772 lt!2067709))))))

(declare-fun d!1609397 () Bool)

(assert (=> d!1609397 e!3123969))

(declare-fun res!2133288 () Bool)

(assert (=> d!1609397 (=> (not res!2133288) (not e!3123969))))

(assert (=> d!1609397 (= res!2133288 (= (content!10231 lt!2067839) (set.union (content!10231 (_1!34772 lt!2067709)) (content!10231 (_2!34772 lt!2067709)))))))

(declare-fun e!3123968 () List!57932)

(assert (=> d!1609397 (= lt!2067839 e!3123968)))

(declare-fun c!853139 () Bool)

(assert (=> d!1609397 (= c!853139 (is-Nil!57808 (_1!34772 lt!2067709)))))

(assert (=> d!1609397 (= (++!12622 (_1!34772 lt!2067709) (_2!34772 lt!2067709)) lt!2067839)))

(declare-fun b!4999168 () Bool)

(assert (=> b!4999168 (= e!3123968 (_2!34772 lt!2067709))))

(declare-fun b!4999169 () Bool)

(assert (=> b!4999169 (= e!3123968 (Cons!57808 (h!64256 (_1!34772 lt!2067709)) (++!12622 (t!370272 (_1!34772 lt!2067709)) (_2!34772 lt!2067709))))))

(declare-fun b!4999170 () Bool)

(declare-fun res!2133287 () Bool)

(assert (=> b!4999170 (=> (not res!2133287) (not e!3123969))))

(assert (=> b!4999170 (= res!2133287 (= (size!38418 lt!2067839) (+ (size!38418 (_1!34772 lt!2067709)) (size!38418 (_2!34772 lt!2067709)))))))

(assert (= (and d!1609397 c!853139) b!4999168))

(assert (= (and d!1609397 (not c!853139)) b!4999169))

(assert (= (and d!1609397 res!2133288) b!4999170))

(assert (= (and b!4999170 res!2133287) b!4999171))

(declare-fun m!6032694 () Bool)

(assert (=> d!1609397 m!6032694))

(declare-fun m!6032696 () Bool)

(assert (=> d!1609397 m!6032696))

(declare-fun m!6032698 () Bool)

(assert (=> d!1609397 m!6032698))

(declare-fun m!6032700 () Bool)

(assert (=> b!4999169 m!6032700))

(declare-fun m!6032702 () Bool)

(assert (=> b!4999170 m!6032702))

(assert (=> b!4999170 m!6032526))

(declare-fun m!6032704 () Bool)

(assert (=> b!4999170 m!6032704))

(assert (=> b!4998979 d!1609397))

(declare-fun e!3123975 () Bool)

(declare-fun tp!1402111 () Bool)

(declare-fun tp!1402112 () Bool)

(declare-fun b!4999180 () Bool)

(assert (=> b!4999180 (= e!3123975 (and (inv!75916 (left!42277 (c!853101 input!5597))) tp!1402112 (inv!75916 (right!42607 (c!853101 input!5597))) tp!1402111))))

(declare-fun b!4999182 () Bool)

(declare-fun e!3123974 () Bool)

(declare-fun tp!1402113 () Bool)

(assert (=> b!4999182 (= e!3123974 tp!1402113)))

(declare-fun b!4999181 () Bool)

(declare-fun inv!75924 (IArray!30651) Bool)

(assert (=> b!4999181 (= e!3123975 (and (inv!75924 (xs!18621 (c!853101 input!5597))) e!3123974))))

(assert (=> b!4998976 (= tp!1402076 (and (inv!75916 (c!853101 input!5597)) e!3123975))))

(assert (= (and b!4998976 (is-Node!15295 (c!853101 input!5597))) b!4999180))

(assert (= b!4999181 b!4999182))

(assert (= (and b!4998976 (is-Leaf!25392 (c!853101 input!5597))) b!4999181))

(declare-fun m!6032706 () Bool)

(assert (=> b!4999180 m!6032706))

(declare-fun m!6032708 () Bool)

(assert (=> b!4999180 m!6032708))

(declare-fun m!6032710 () Bool)

(assert (=> b!4999181 m!6032710))

(assert (=> b!4998976 m!6032388))

(declare-fun condSetEmpty!28329 () Bool)

(assert (=> setNonEmpty!28323 (= condSetEmpty!28329 (= setRest!28323 (as set.empty (Set Context!6402))))))

(declare-fun setRes!28329 () Bool)

(assert (=> setNonEmpty!28323 (= tp!1402071 setRes!28329)))

(declare-fun setIsEmpty!28329 () Bool)

(assert (=> setIsEmpty!28329 setRes!28329))

(declare-fun setElem!28329 () Context!6402)

(declare-fun setNonEmpty!28329 () Bool)

(declare-fun e!3123978 () Bool)

(declare-fun tp!1402118 () Bool)

(assert (=> setNonEmpty!28329 (= setRes!28329 (and tp!1402118 (inv!75918 setElem!28329) e!3123978))))

(declare-fun setRest!28329 () (Set Context!6402))

(assert (=> setNonEmpty!28329 (= setRest!28323 (set.union (set.insert setElem!28329 (as set.empty (Set Context!6402))) setRest!28329))))

(declare-fun b!4999187 () Bool)

(declare-fun tp!1402119 () Bool)

(assert (=> b!4999187 (= e!3123978 tp!1402119)))

(assert (= (and setNonEmpty!28323 condSetEmpty!28329) setIsEmpty!28329))

(assert (= (and setNonEmpty!28323 (not condSetEmpty!28329)) setNonEmpty!28329))

(assert (= setNonEmpty!28329 b!4999187))

(declare-fun m!6032712 () Bool)

(assert (=> setNonEmpty!28329 m!6032712))

(declare-fun b!4999192 () Bool)

(declare-fun e!3123981 () Bool)

(declare-fun tp!1402124 () Bool)

(declare-fun tp!1402125 () Bool)

(assert (=> b!4999192 (= e!3123981 (and tp!1402124 tp!1402125))))

(assert (=> b!4998977 (= tp!1402074 e!3123981)))

(assert (= (and b!4998977 (is-Cons!57809 (exprs!3701 setElem!28323))) b!4999192))

(declare-fun b!4999205 () Bool)

(declare-fun e!3123984 () Bool)

(declare-fun tp!1402139 () Bool)

(assert (=> b!4999205 (= e!3123984 tp!1402139)))

(declare-fun b!4999204 () Bool)

(declare-fun tp!1402137 () Bool)

(declare-fun tp!1402136 () Bool)

(assert (=> b!4999204 (= e!3123984 (and tp!1402137 tp!1402136))))

(assert (=> b!4998980 (= tp!1402077 e!3123984)))

(declare-fun b!4999203 () Bool)

(assert (=> b!4999203 (= e!3123984 tp_is_empty!36549)))

(declare-fun b!4999206 () Bool)

(declare-fun tp!1402138 () Bool)

(declare-fun tp!1402140 () Bool)

(assert (=> b!4999206 (= e!3123984 (and tp!1402138 tp!1402140))))

(assert (= (and b!4998980 (is-ElementMatch!13776 (regOne!28064 r!12727))) b!4999203))

(assert (= (and b!4998980 (is-Concat!22569 (regOne!28064 r!12727))) b!4999204))

(assert (= (and b!4998980 (is-Star!13776 (regOne!28064 r!12727))) b!4999205))

(assert (= (and b!4998980 (is-Union!13776 (regOne!28064 r!12727))) b!4999206))

(declare-fun b!4999209 () Bool)

(declare-fun e!3123985 () Bool)

(declare-fun tp!1402144 () Bool)

(assert (=> b!4999209 (= e!3123985 tp!1402144)))

(declare-fun b!4999208 () Bool)

(declare-fun tp!1402142 () Bool)

(declare-fun tp!1402141 () Bool)

(assert (=> b!4999208 (= e!3123985 (and tp!1402142 tp!1402141))))

(assert (=> b!4998980 (= tp!1402069 e!3123985)))

(declare-fun b!4999207 () Bool)

(assert (=> b!4999207 (= e!3123985 tp_is_empty!36549)))

(declare-fun b!4999210 () Bool)

(declare-fun tp!1402143 () Bool)

(declare-fun tp!1402145 () Bool)

(assert (=> b!4999210 (= e!3123985 (and tp!1402143 tp!1402145))))

(assert (= (and b!4998980 (is-ElementMatch!13776 (regTwo!28064 r!12727))) b!4999207))

(assert (= (and b!4998980 (is-Concat!22569 (regTwo!28064 r!12727))) b!4999208))

(assert (= (and b!4998980 (is-Star!13776 (regTwo!28064 r!12727))) b!4999209))

(assert (= (and b!4998980 (is-Union!13776 (regTwo!28064 r!12727))) b!4999210))

(declare-fun b!4999211 () Bool)

(declare-fun e!3123987 () Bool)

(declare-fun tp!1402147 () Bool)

(declare-fun tp!1402146 () Bool)

(assert (=> b!4999211 (= e!3123987 (and (inv!75916 (left!42277 (c!853101 totalInput!1012))) tp!1402147 (inv!75916 (right!42607 (c!853101 totalInput!1012))) tp!1402146))))

(declare-fun b!4999213 () Bool)

(declare-fun e!3123986 () Bool)

(declare-fun tp!1402148 () Bool)

(assert (=> b!4999213 (= e!3123986 tp!1402148)))

(declare-fun b!4999212 () Bool)

(assert (=> b!4999212 (= e!3123987 (and (inv!75924 (xs!18621 (c!853101 totalInput!1012))) e!3123986))))

(assert (=> b!4998970 (= tp!1402075 (and (inv!75916 (c!853101 totalInput!1012)) e!3123987))))

(assert (= (and b!4998970 (is-Node!15295 (c!853101 totalInput!1012))) b!4999211))

(assert (= b!4999212 b!4999213))

(assert (= (and b!4998970 (is-Leaf!25392 (c!853101 totalInput!1012))) b!4999212))

(declare-fun m!6032714 () Bool)

(assert (=> b!4999211 m!6032714))

(declare-fun m!6032716 () Bool)

(assert (=> b!4999211 m!6032716))

(declare-fun m!6032718 () Bool)

(assert (=> b!4999212 m!6032718))

(assert (=> b!4998970 m!6032406))

(declare-fun b!4999216 () Bool)

(declare-fun e!3123988 () Bool)

(declare-fun tp!1402152 () Bool)

(assert (=> b!4999216 (= e!3123988 tp!1402152)))

(declare-fun b!4999215 () Bool)

(declare-fun tp!1402150 () Bool)

(declare-fun tp!1402149 () Bool)

(assert (=> b!4999215 (= e!3123988 (and tp!1402150 tp!1402149))))

(assert (=> b!4998974 (= tp!1402073 e!3123988)))

(declare-fun b!4999214 () Bool)

(assert (=> b!4999214 (= e!3123988 tp_is_empty!36549)))

(declare-fun b!4999217 () Bool)

(declare-fun tp!1402151 () Bool)

(declare-fun tp!1402153 () Bool)

(assert (=> b!4999217 (= e!3123988 (and tp!1402151 tp!1402153))))

(assert (= (and b!4998974 (is-ElementMatch!13776 (regOne!28065 r!12727))) b!4999214))

(assert (= (and b!4998974 (is-Concat!22569 (regOne!28065 r!12727))) b!4999215))

(assert (= (and b!4998974 (is-Star!13776 (regOne!28065 r!12727))) b!4999216))

(assert (= (and b!4998974 (is-Union!13776 (regOne!28065 r!12727))) b!4999217))

(declare-fun b!4999220 () Bool)

(declare-fun e!3123989 () Bool)

(declare-fun tp!1402157 () Bool)

(assert (=> b!4999220 (= e!3123989 tp!1402157)))

(declare-fun b!4999219 () Bool)

(declare-fun tp!1402155 () Bool)

(declare-fun tp!1402154 () Bool)

(assert (=> b!4999219 (= e!3123989 (and tp!1402155 tp!1402154))))

(assert (=> b!4998974 (= tp!1402072 e!3123989)))

(declare-fun b!4999218 () Bool)

(assert (=> b!4999218 (= e!3123989 tp_is_empty!36549)))

(declare-fun b!4999221 () Bool)

(declare-fun tp!1402156 () Bool)

(declare-fun tp!1402158 () Bool)

(assert (=> b!4999221 (= e!3123989 (and tp!1402156 tp!1402158))))

(assert (= (and b!4998974 (is-ElementMatch!13776 (regTwo!28065 r!12727))) b!4999218))

(assert (= (and b!4998974 (is-Concat!22569 (regTwo!28065 r!12727))) b!4999219))

(assert (= (and b!4998974 (is-Star!13776 (regTwo!28065 r!12727))) b!4999220))

(assert (= (and b!4998974 (is-Union!13776 (regTwo!28065 r!12727))) b!4999221))

(declare-fun b!4999224 () Bool)

(declare-fun e!3123990 () Bool)

(declare-fun tp!1402162 () Bool)

(assert (=> b!4999224 (= e!3123990 tp!1402162)))

(declare-fun b!4999223 () Bool)

(declare-fun tp!1402160 () Bool)

(declare-fun tp!1402159 () Bool)

(assert (=> b!4999223 (= e!3123990 (and tp!1402160 tp!1402159))))

(assert (=> b!4998969 (= tp!1402070 e!3123990)))

(declare-fun b!4999222 () Bool)

(assert (=> b!4999222 (= e!3123990 tp_is_empty!36549)))

(declare-fun b!4999225 () Bool)

(declare-fun tp!1402161 () Bool)

(declare-fun tp!1402163 () Bool)

(assert (=> b!4999225 (= e!3123990 (and tp!1402161 tp!1402163))))

(assert (= (and b!4998969 (is-ElementMatch!13776 (reg!14105 r!12727))) b!4999222))

(assert (= (and b!4998969 (is-Concat!22569 (reg!14105 r!12727))) b!4999223))

(assert (= (and b!4998969 (is-Star!13776 (reg!14105 r!12727))) b!4999224))

(assert (= (and b!4998969 (is-Union!13776 (reg!14105 r!12727))) b!4999225))

(push 1)

(assert (not b!4999124))

(assert (not b!4999037))

(assert (not b!4999051))

(assert (not b!4999083))

(assert (not b!4998976))

(assert (not b!4999181))

(assert (not d!1609385))

(assert (not b!4999213))

(assert (not b!4999169))

(assert (not b!4999040))

(assert (not b!4999208))

(assert (not b!4999066))

(assert (not b!4999140))

(assert (not b!4999067))

(assert (not d!1609363))

(assert (not b!4999210))

(assert (not b!4999085))

(assert (not d!1609355))

(assert (not b!4999170))

(assert (not d!1609373))

(assert (not b!4999068))

(assert (not b!4999039))

(assert (not b!4999219))

(assert (not b!4999217))

(assert (not b!4999223))

(assert (not b!4999221))

(assert (not b!4999187))

(assert (not b!4999050))

(assert (not b!4999180))

(assert (not d!1609331))

(assert (not b!4999220))

(assert (not b!4999216))

(assert (not d!1609375))

(assert (not b!4999056))

(assert (not d!1609329))

(assert (not d!1609325))

(assert (not d!1609343))

(assert (not d!1609387))

(assert tp_is_empty!36549)

(assert (not b!4999205))

(assert (not b!4999225))

(assert (not b!4999212))

(assert (not b!4999209))

(assert (not b!4999206))

(assert (not b!4999123))

(assert (not d!1609327))

(assert (not d!1609335))

(assert (not d!1609397))

(assert (not b!4999215))

(assert (not b!4999035))

(assert (not b!4999137))

(assert (not bm!348899))

(assert (not b!4999211))

(assert (not b!4999224))

(assert (not b!4999054))

(assert (not b!4999055))

(assert (not d!1609365))

(assert (not d!1609395))

(assert (not d!1609361))

(assert (not d!1609345))

(assert (not b!4999052))

(assert (not d!1609379))

(assert (not b!4999182))

(assert (not b!4999164))

(assert (not b!4998970))

(assert (not setNonEmpty!28329))

(assert (not bm!348897))

(assert (not b!4999138))

(assert (not d!1609381))

(assert (not b!4999204))

(assert (not d!1609393))

(assert (not b!4999192))

(assert (not b!4999019))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1609429 () Bool)

(declare-fun res!2133318 () Bool)

(declare-fun e!3124047 () Bool)

(assert (=> d!1609429 (=> res!2133318 e!3124047)))

(assert (=> d!1609429 (= res!2133318 (is-ElementMatch!13776 lt!2067835))))

(assert (=> d!1609429 (= (validRegex!6073 lt!2067835) e!3124047)))

(declare-fun b!4999329 () Bool)

(declare-fun e!3124049 () Bool)

(declare-fun call!348915 () Bool)

(assert (=> b!4999329 (= e!3124049 call!348915)))

(declare-fun b!4999330 () Bool)

(declare-fun e!3124050 () Bool)

(assert (=> b!4999330 (= e!3124050 e!3124049)))

(declare-fun res!2133316 () Bool)

(assert (=> b!4999330 (=> (not res!2133316) (not e!3124049))))

(declare-fun call!348916 () Bool)

(assert (=> b!4999330 (= res!2133316 call!348916)))

(declare-fun b!4999331 () Bool)

(declare-fun e!3124048 () Bool)

(assert (=> b!4999331 (= e!3124047 e!3124048)))

(declare-fun c!853151 () Bool)

(assert (=> b!4999331 (= c!853151 (is-Star!13776 lt!2067835))))

(declare-fun b!4999332 () Bool)

(declare-fun res!2133319 () Bool)

(assert (=> b!4999332 (=> res!2133319 e!3124050)))

(assert (=> b!4999332 (= res!2133319 (not (is-Concat!22569 lt!2067835)))))

(declare-fun e!3124052 () Bool)

(assert (=> b!4999332 (= e!3124052 e!3124050)))

(declare-fun bm!348909 () Bool)

(declare-fun c!853152 () Bool)

(assert (=> bm!348909 (= call!348916 (validRegex!6073 (ite c!853152 (regTwo!28065 lt!2067835) (regOne!28064 lt!2067835))))))

(declare-fun b!4999333 () Bool)

(assert (=> b!4999333 (= e!3124048 e!3124052)))

(assert (=> b!4999333 (= c!853152 (is-Union!13776 lt!2067835))))

(declare-fun b!4999334 () Bool)

(declare-fun e!3124046 () Bool)

(assert (=> b!4999334 (= e!3124048 e!3124046)))

(declare-fun res!2133320 () Bool)

(assert (=> b!4999334 (= res!2133320 (not (nullable!4678 (reg!14105 lt!2067835))))))

(assert (=> b!4999334 (=> (not res!2133320) (not e!3124046))))

(declare-fun bm!348910 () Bool)

(declare-fun call!348914 () Bool)

(assert (=> bm!348910 (= call!348915 call!348914)))

(declare-fun b!4999335 () Bool)

(declare-fun res!2133317 () Bool)

(declare-fun e!3124051 () Bool)

(assert (=> b!4999335 (=> (not res!2133317) (not e!3124051))))

(assert (=> b!4999335 (= res!2133317 call!348915)))

(assert (=> b!4999335 (= e!3124052 e!3124051)))

(declare-fun bm!348911 () Bool)

(assert (=> bm!348911 (= call!348914 (validRegex!6073 (ite c!853151 (reg!14105 lt!2067835) (ite c!853152 (regOne!28065 lt!2067835) (regTwo!28064 lt!2067835)))))))

(declare-fun b!4999336 () Bool)

(assert (=> b!4999336 (= e!3124051 call!348916)))

(declare-fun b!4999337 () Bool)

(assert (=> b!4999337 (= e!3124046 call!348914)))

(assert (= (and d!1609429 (not res!2133318)) b!4999331))

(assert (= (and b!4999331 c!853151) b!4999334))

(assert (= (and b!4999331 (not c!853151)) b!4999333))

(assert (= (and b!4999334 res!2133320) b!4999337))

(assert (= (and b!4999333 c!853152) b!4999335))

(assert (= (and b!4999333 (not c!853152)) b!4999332))

(assert (= (and b!4999335 res!2133317) b!4999336))

(assert (= (and b!4999332 (not res!2133319)) b!4999330))

(assert (= (and b!4999330 res!2133316) b!4999329))

(assert (= (or b!4999336 b!4999330) bm!348909))

(assert (= (or b!4999335 b!4999329) bm!348910))

(assert (= (or b!4999337 bm!348910) bm!348911))

(declare-fun m!6032822 () Bool)

(assert (=> bm!348909 m!6032822))

(declare-fun m!6032824 () Bool)

(assert (=> b!4999334 m!6032824))

(declare-fun m!6032826 () Bool)

(assert (=> bm!348911 m!6032826))

(assert (=> d!1609385 d!1609429))

(declare-fun bs!1185691 () Bool)

(declare-fun d!1609431 () Bool)

(assert (= bs!1185691 (and d!1609431 d!1609381)))

(declare-fun lambda!248331 () Int)

(assert (=> bs!1185691 (= lambda!248331 lambda!248325)))

(declare-fun b!4999358 () Bool)

(declare-fun e!3124070 () Bool)

(declare-fun e!3124069 () Bool)

(assert (=> b!4999358 (= e!3124070 e!3124069)))

(declare-fun c!853161 () Bool)

(declare-fun isEmpty!31284 (List!57933) Bool)

(assert (=> b!4999358 (= c!853161 (isEmpty!31284 (unfocusZipperList!85 (toList!8061 z!4183))))))

(declare-fun b!4999359 () Bool)

(declare-fun e!3124067 () Bool)

(assert (=> b!4999359 (= e!3124067 (isEmpty!31284 (t!370273 (unfocusZipperList!85 (toList!8061 z!4183)))))))

(declare-fun b!4999360 () Bool)

(declare-fun e!3124066 () Regex!13776)

(assert (=> b!4999360 (= e!3124066 (Union!13776 (h!64257 (unfocusZipperList!85 (toList!8061 z!4183))) (generalisedUnion!572 (t!370273 (unfocusZipperList!85 (toList!8061 z!4183))))))))

(declare-fun b!4999361 () Bool)

(declare-fun e!3124068 () Regex!13776)

(assert (=> b!4999361 (= e!3124068 e!3124066)))

(declare-fun c!853162 () Bool)

(assert (=> b!4999361 (= c!853162 (is-Cons!57809 (unfocusZipperList!85 (toList!8061 z!4183))))))

(declare-fun b!4999362 () Bool)

(assert (=> b!4999362 (= e!3124066 EmptyLang!13776)))

(declare-fun b!4999363 () Bool)

(declare-fun lt!2067883 () Regex!13776)

(declare-fun isEmptyLang!725 (Regex!13776) Bool)

(assert (=> b!4999363 (= e!3124069 (isEmptyLang!725 lt!2067883))))

(declare-fun b!4999364 () Bool)

(declare-fun e!3124065 () Bool)

(declare-fun head!10722 (List!57933) Regex!13776)

(assert (=> b!4999364 (= e!3124065 (= lt!2067883 (head!10722 (unfocusZipperList!85 (toList!8061 z!4183)))))))

(declare-fun b!4999365 () Bool)

(declare-fun isUnion!157 (Regex!13776) Bool)

(assert (=> b!4999365 (= e!3124065 (isUnion!157 lt!2067883))))

(assert (=> d!1609431 e!3124070))

(declare-fun res!2133325 () Bool)

(assert (=> d!1609431 (=> (not res!2133325) (not e!3124070))))

(assert (=> d!1609431 (= res!2133325 (validRegex!6073 lt!2067883))))

(assert (=> d!1609431 (= lt!2067883 e!3124068)))

(declare-fun c!853163 () Bool)

(assert (=> d!1609431 (= c!853163 e!3124067)))

(declare-fun res!2133326 () Bool)

(assert (=> d!1609431 (=> (not res!2133326) (not e!3124067))))

(assert (=> d!1609431 (= res!2133326 (is-Cons!57809 (unfocusZipperList!85 (toList!8061 z!4183))))))

(assert (=> d!1609431 (forall!13355 (unfocusZipperList!85 (toList!8061 z!4183)) lambda!248331)))

(assert (=> d!1609431 (= (generalisedUnion!572 (unfocusZipperList!85 (toList!8061 z!4183))) lt!2067883)))

(declare-fun b!4999366 () Bool)

(assert (=> b!4999366 (= e!3124069 e!3124065)))

(declare-fun c!853164 () Bool)

(declare-fun tail!9855 (List!57933) List!57933)

(assert (=> b!4999366 (= c!853164 (isEmpty!31284 (tail!9855 (unfocusZipperList!85 (toList!8061 z!4183)))))))

(declare-fun b!4999367 () Bool)

(assert (=> b!4999367 (= e!3124068 (h!64257 (unfocusZipperList!85 (toList!8061 z!4183))))))

(assert (= (and d!1609431 res!2133326) b!4999359))

(assert (= (and d!1609431 c!853163) b!4999367))

(assert (= (and d!1609431 (not c!853163)) b!4999361))

(assert (= (and b!4999361 c!853162) b!4999360))

(assert (= (and b!4999361 (not c!853162)) b!4999362))

(assert (= (and d!1609431 res!2133325) b!4999358))

(assert (= (and b!4999358 c!853161) b!4999363))

(assert (= (and b!4999358 (not c!853161)) b!4999366))

(assert (= (and b!4999366 c!853164) b!4999364))

(assert (= (and b!4999366 (not c!853164)) b!4999365))

(assert (=> b!4999358 m!6032670))

(declare-fun m!6032828 () Bool)

(assert (=> b!4999358 m!6032828))

(assert (=> b!4999364 m!6032670))

(declare-fun m!6032830 () Bool)

(assert (=> b!4999364 m!6032830))

(declare-fun m!6032832 () Bool)

(assert (=> b!4999365 m!6032832))

(declare-fun m!6032834 () Bool)

(assert (=> b!4999360 m!6032834))

(declare-fun m!6032836 () Bool)

(assert (=> d!1609431 m!6032836))

(assert (=> d!1609431 m!6032670))

(declare-fun m!6032838 () Bool)

(assert (=> d!1609431 m!6032838))

(declare-fun m!6032840 () Bool)

(assert (=> b!4999359 m!6032840))

(assert (=> b!4999366 m!6032670))

(declare-fun m!6032842 () Bool)

(assert (=> b!4999366 m!6032842))

(assert (=> b!4999366 m!6032842))

(declare-fun m!6032844 () Bool)

(assert (=> b!4999366 m!6032844))

(declare-fun m!6032846 () Bool)

(assert (=> b!4999363 m!6032846))

(assert (=> d!1609385 d!1609431))

(declare-fun bs!1185692 () Bool)

(declare-fun d!1609433 () Bool)

(assert (= bs!1185692 (and d!1609433 d!1609381)))

(declare-fun lambda!248334 () Int)

(assert (=> bs!1185692 (= lambda!248334 lambda!248325)))

(declare-fun bs!1185693 () Bool)

(assert (= bs!1185693 (and d!1609433 d!1609431)))

(assert (=> bs!1185693 (= lambda!248334 lambda!248331)))

(declare-fun lt!2067886 () List!57933)

(assert (=> d!1609433 (forall!13355 lt!2067886 lambda!248334)))

(declare-fun e!3124073 () List!57933)

(assert (=> d!1609433 (= lt!2067886 e!3124073)))

(declare-fun c!853167 () Bool)

(assert (=> d!1609433 (= c!853167 (is-Cons!57810 (toList!8061 z!4183)))))

(assert (=> d!1609433 (= (unfocusZipperList!85 (toList!8061 z!4183)) lt!2067886)))

(declare-fun b!4999372 () Bool)

(declare-fun generalisedConcat!343 (List!57933) Regex!13776)

(assert (=> b!4999372 (= e!3124073 (Cons!57809 (generalisedConcat!343 (exprs!3701 (h!64258 (toList!8061 z!4183)))) (unfocusZipperList!85 (t!370274 (toList!8061 z!4183)))))))

(declare-fun b!4999373 () Bool)

(assert (=> b!4999373 (= e!3124073 Nil!57809)))

(assert (= (and d!1609433 c!853167) b!4999372))

(assert (= (and d!1609433 (not c!853167)) b!4999373))

(declare-fun m!6032848 () Bool)

(assert (=> d!1609433 m!6032848))

(declare-fun m!6032850 () Bool)

(assert (=> b!4999372 m!6032850))

(declare-fun m!6032852 () Bool)

(assert (=> b!4999372 m!6032852))

(assert (=> d!1609385 d!1609433))

(assert (=> b!4998976 d!1609349))

(assert (=> d!1609343 d!1609341))

(assert (=> d!1609343 d!1609331))

(declare-fun d!1609435 () Bool)

(assert (=> d!1609435 (isPrefix!5329 (take!635 lt!2067705 lt!2067711) lt!2067705)))

(assert (=> d!1609435 true))

(declare-fun _$48!735 () Unit!148967)

(assert (=> d!1609435 (= (choose!36954 lt!2067705 lt!2067711) _$48!735)))

(declare-fun bs!1185694 () Bool)

(assert (= bs!1185694 d!1609435))

(assert (=> bs!1185694 m!6032374))

(assert (=> bs!1185694 m!6032374))

(assert (=> bs!1185694 m!6032380))

(assert (=> d!1609343 d!1609435))

(declare-fun b!4999384 () Bool)

(declare-fun e!3124079 () List!57932)

(declare-fun list!18597 (IArray!30651) List!57932)

(assert (=> b!4999384 (= e!3124079 (list!18597 (xs!18621 (c!853101 totalInput!1012))))))

(declare-fun b!4999383 () Bool)

(declare-fun e!3124078 () List!57932)

(assert (=> b!4999383 (= e!3124078 e!3124079)))

(declare-fun c!853173 () Bool)

(assert (=> b!4999383 (= c!853173 (is-Leaf!25392 (c!853101 totalInput!1012)))))

(declare-fun b!4999385 () Bool)

(assert (=> b!4999385 (= e!3124079 (++!12622 (list!18595 (left!42277 (c!853101 totalInput!1012))) (list!18595 (right!42607 (c!853101 totalInput!1012)))))))

(declare-fun d!1609437 () Bool)

(declare-fun c!853172 () Bool)

(assert (=> d!1609437 (= c!853172 (is-Empty!15295 (c!853101 totalInput!1012)))))

(assert (=> d!1609437 (= (list!18595 (c!853101 totalInput!1012)) e!3124078)))

(declare-fun b!4999382 () Bool)

(assert (=> b!4999382 (= e!3124078 Nil!57808)))

(assert (= (and d!1609437 c!853172) b!4999382))

(assert (= (and d!1609437 (not c!853172)) b!4999383))

(assert (= (and b!4999383 c!853173) b!4999384))

(assert (= (and b!4999383 (not c!853173)) b!4999385))

(declare-fun m!6032854 () Bool)

(assert (=> b!4999384 m!6032854))

(declare-fun m!6032856 () Bool)

(assert (=> b!4999385 m!6032856))

(declare-fun m!6032858 () Bool)

(assert (=> b!4999385 m!6032858))

(assert (=> b!4999385 m!6032856))

(assert (=> b!4999385 m!6032858))

(declare-fun m!6032860 () Bool)

(assert (=> b!4999385 m!6032860))

(assert (=> d!1609327 d!1609437))

(declare-fun d!1609439 () Bool)

(declare-fun res!2133329 () Bool)

(declare-fun e!3124081 () Bool)

(assert (=> d!1609439 (=> res!2133329 e!3124081)))

(assert (=> d!1609439 (= res!2133329 (is-ElementMatch!13776 (ite c!853138 (regTwo!28065 r!12727) (regOne!28064 r!12727))))))

(assert (=> d!1609439 (= (validRegex!6073 (ite c!853138 (regTwo!28065 r!12727) (regOne!28064 r!12727))) e!3124081)))

(declare-fun b!4999386 () Bool)

(declare-fun e!3124083 () Bool)

(declare-fun call!348918 () Bool)

(assert (=> b!4999386 (= e!3124083 call!348918)))

(declare-fun b!4999387 () Bool)

(declare-fun e!3124084 () Bool)

(assert (=> b!4999387 (= e!3124084 e!3124083)))

(declare-fun res!2133327 () Bool)

(assert (=> b!4999387 (=> (not res!2133327) (not e!3124083))))

(declare-fun call!348919 () Bool)

(assert (=> b!4999387 (= res!2133327 call!348919)))

(declare-fun b!4999388 () Bool)

(declare-fun e!3124082 () Bool)

(assert (=> b!4999388 (= e!3124081 e!3124082)))

(declare-fun c!853174 () Bool)

(assert (=> b!4999388 (= c!853174 (is-Star!13776 (ite c!853138 (regTwo!28065 r!12727) (regOne!28064 r!12727))))))

(declare-fun b!4999389 () Bool)

(declare-fun res!2133330 () Bool)

(assert (=> b!4999389 (=> res!2133330 e!3124084)))

(assert (=> b!4999389 (= res!2133330 (not (is-Concat!22569 (ite c!853138 (regTwo!28065 r!12727) (regOne!28064 r!12727)))))))

(declare-fun e!3124086 () Bool)

(assert (=> b!4999389 (= e!3124086 e!3124084)))

(declare-fun bm!348912 () Bool)

(declare-fun c!853175 () Bool)

(assert (=> bm!348912 (= call!348919 (validRegex!6073 (ite c!853175 (regTwo!28065 (ite c!853138 (regTwo!28065 r!12727) (regOne!28064 r!12727))) (regOne!28064 (ite c!853138 (regTwo!28065 r!12727) (regOne!28064 r!12727))))))))

(declare-fun b!4999390 () Bool)

(assert (=> b!4999390 (= e!3124082 e!3124086)))

(assert (=> b!4999390 (= c!853175 (is-Union!13776 (ite c!853138 (regTwo!28065 r!12727) (regOne!28064 r!12727))))))

(declare-fun b!4999391 () Bool)

(declare-fun e!3124080 () Bool)

(assert (=> b!4999391 (= e!3124082 e!3124080)))

(declare-fun res!2133331 () Bool)

(assert (=> b!4999391 (= res!2133331 (not (nullable!4678 (reg!14105 (ite c!853138 (regTwo!28065 r!12727) (regOne!28064 r!12727))))))))

(assert (=> b!4999391 (=> (not res!2133331) (not e!3124080))))

(declare-fun bm!348913 () Bool)

(declare-fun call!348917 () Bool)

(assert (=> bm!348913 (= call!348918 call!348917)))

(declare-fun b!4999392 () Bool)

(declare-fun res!2133328 () Bool)

(declare-fun e!3124085 () Bool)

(assert (=> b!4999392 (=> (not res!2133328) (not e!3124085))))

(assert (=> b!4999392 (= res!2133328 call!348918)))

(assert (=> b!4999392 (= e!3124086 e!3124085)))

(declare-fun bm!348914 () Bool)

(assert (=> bm!348914 (= call!348917 (validRegex!6073 (ite c!853174 (reg!14105 (ite c!853138 (regTwo!28065 r!12727) (regOne!28064 r!12727))) (ite c!853175 (regOne!28065 (ite c!853138 (regTwo!28065 r!12727) (regOne!28064 r!12727))) (regTwo!28064 (ite c!853138 (regTwo!28065 r!12727) (regOne!28064 r!12727)))))))))

(declare-fun b!4999393 () Bool)

(assert (=> b!4999393 (= e!3124085 call!348919)))

(declare-fun b!4999394 () Bool)

(assert (=> b!4999394 (= e!3124080 call!348917)))

(assert (= (and d!1609439 (not res!2133329)) b!4999388))

(assert (= (and b!4999388 c!853174) b!4999391))

(assert (= (and b!4999388 (not c!853174)) b!4999390))

(assert (= (and b!4999391 res!2133331) b!4999394))

(assert (= (and b!4999390 c!853175) b!4999392))

(assert (= (and b!4999390 (not c!853175)) b!4999389))

(assert (= (and b!4999392 res!2133328) b!4999393))

(assert (= (and b!4999389 (not res!2133330)) b!4999387))

(assert (= (and b!4999387 res!2133327) b!4999386))

(assert (= (or b!4999393 b!4999387) bm!348912))

(assert (= (or b!4999392 b!4999386) bm!348913))

(assert (= (or b!4999394 bm!348913) bm!348914))

(declare-fun m!6032862 () Bool)

(assert (=> bm!348912 m!6032862))

(declare-fun m!6032864 () Bool)

(assert (=> b!4999391 m!6032864))

(declare-fun m!6032866 () Bool)

(assert (=> bm!348914 m!6032866))

(assert (=> bm!348897 d!1609439))

(declare-fun b!4999397 () Bool)

(declare-fun e!3124088 () List!57932)

(assert (=> b!4999397 (= e!3124088 (list!18597 (xs!18621 (c!853101 (_2!34771 lt!2067710)))))))

(declare-fun b!4999396 () Bool)

(declare-fun e!3124087 () List!57932)

(assert (=> b!4999396 (= e!3124087 e!3124088)))

(declare-fun c!853177 () Bool)

(assert (=> b!4999396 (= c!853177 (is-Leaf!25392 (c!853101 (_2!34771 lt!2067710))))))

(declare-fun b!4999398 () Bool)

(assert (=> b!4999398 (= e!3124088 (++!12622 (list!18595 (left!42277 (c!853101 (_2!34771 lt!2067710)))) (list!18595 (right!42607 (c!853101 (_2!34771 lt!2067710))))))))

(declare-fun d!1609441 () Bool)

(declare-fun c!853176 () Bool)

(assert (=> d!1609441 (= c!853176 (is-Empty!15295 (c!853101 (_2!34771 lt!2067710))))))

(assert (=> d!1609441 (= (list!18595 (c!853101 (_2!34771 lt!2067710))) e!3124087)))

(declare-fun b!4999395 () Bool)

(assert (=> b!4999395 (= e!3124087 Nil!57808)))

(assert (= (and d!1609441 c!853176) b!4999395))

(assert (= (and d!1609441 (not c!853176)) b!4999396))

(assert (= (and b!4999396 c!853177) b!4999397))

(assert (= (and b!4999396 (not c!853177)) b!4999398))

(declare-fun m!6032868 () Bool)

(assert (=> b!4999397 m!6032868))

(declare-fun m!6032870 () Bool)

(assert (=> b!4999398 m!6032870))

(declare-fun m!6032872 () Bool)

(assert (=> b!4999398 m!6032872))

(assert (=> b!4999398 m!6032870))

(assert (=> b!4999398 m!6032872))

(declare-fun m!6032874 () Bool)

(assert (=> b!4999398 m!6032874))

(assert (=> d!1609373 d!1609441))

(declare-fun b!4999411 () Bool)

(declare-fun res!2133348 () Bool)

(declare-fun e!3124094 () Bool)

(assert (=> b!4999411 (=> (not res!2133348) (not e!3124094))))

(declare-fun height!2031 (Conc!15295) Int)

(assert (=> b!4999411 (= res!2133348 (<= (- (height!2031 (left!42277 (c!853101 totalInput!1012))) (height!2031 (right!42607 (c!853101 totalInput!1012)))) 1))))

(declare-fun b!4999412 () Bool)

(declare-fun res!2133349 () Bool)

(assert (=> b!4999412 (=> (not res!2133349) (not e!3124094))))

(declare-fun isEmpty!31285 (Conc!15295) Bool)

(assert (=> b!4999412 (= res!2133349 (not (isEmpty!31285 (left!42277 (c!853101 totalInput!1012)))))))

(declare-fun b!4999413 () Bool)

(assert (=> b!4999413 (= e!3124094 (not (isEmpty!31285 (right!42607 (c!853101 totalInput!1012)))))))

(declare-fun b!4999414 () Bool)

(declare-fun res!2133346 () Bool)

(assert (=> b!4999414 (=> (not res!2133346) (not e!3124094))))

(assert (=> b!4999414 (= res!2133346 (isBalanced!4261 (right!42607 (c!853101 totalInput!1012))))))

(declare-fun b!4999415 () Bool)

(declare-fun res!2133347 () Bool)

(assert (=> b!4999415 (=> (not res!2133347) (not e!3124094))))

(assert (=> b!4999415 (= res!2133347 (isBalanced!4261 (left!42277 (c!853101 totalInput!1012))))))

(declare-fun d!1609443 () Bool)

(declare-fun res!2133344 () Bool)

(declare-fun e!3124093 () Bool)

(assert (=> d!1609443 (=> res!2133344 e!3124093)))

(assert (=> d!1609443 (= res!2133344 (not (is-Node!15295 (c!853101 totalInput!1012))))))

(assert (=> d!1609443 (= (isBalanced!4261 (c!853101 totalInput!1012)) e!3124093)))

(declare-fun b!4999416 () Bool)

(assert (=> b!4999416 (= e!3124093 e!3124094)))

(declare-fun res!2133345 () Bool)

(assert (=> b!4999416 (=> (not res!2133345) (not e!3124094))))

(assert (=> b!4999416 (= res!2133345 (<= (- 1) (- (height!2031 (left!42277 (c!853101 totalInput!1012))) (height!2031 (right!42607 (c!853101 totalInput!1012))))))))

(assert (= (and d!1609443 (not res!2133344)) b!4999416))

(assert (= (and b!4999416 res!2133345) b!4999411))

(assert (= (and b!4999411 res!2133348) b!4999415))

(assert (= (and b!4999415 res!2133347) b!4999414))

(assert (= (and b!4999414 res!2133346) b!4999412))

(assert (= (and b!4999412 res!2133349) b!4999413))

(declare-fun m!6032876 () Bool)

(assert (=> b!4999412 m!6032876))

(declare-fun m!6032878 () Bool)

(assert (=> b!4999416 m!6032878))

(declare-fun m!6032880 () Bool)

(assert (=> b!4999416 m!6032880))

(declare-fun m!6032882 () Bool)

(assert (=> b!4999415 m!6032882))

(assert (=> b!4999411 m!6032878))

(assert (=> b!4999411 m!6032880))

(declare-fun m!6032884 () Bool)

(assert (=> b!4999413 m!6032884))

(declare-fun m!6032886 () Bool)

(assert (=> b!4999414 m!6032886))

(assert (=> d!1609395 d!1609443))

(declare-fun b!4999419 () Bool)

(declare-fun e!3124096 () List!57932)

(assert (=> b!4999419 (= e!3124096 (list!18597 (xs!18621 (c!853101 (_1!34771 lt!2067710)))))))

(declare-fun b!4999418 () Bool)

(declare-fun e!3124095 () List!57932)

(assert (=> b!4999418 (= e!3124095 e!3124096)))

(declare-fun c!853179 () Bool)

(assert (=> b!4999418 (= c!853179 (is-Leaf!25392 (c!853101 (_1!34771 lt!2067710))))))

(declare-fun b!4999420 () Bool)

(assert (=> b!4999420 (= e!3124096 (++!12622 (list!18595 (left!42277 (c!853101 (_1!34771 lt!2067710)))) (list!18595 (right!42607 (c!853101 (_1!34771 lt!2067710))))))))

(declare-fun d!1609445 () Bool)

(declare-fun c!853178 () Bool)

(assert (=> d!1609445 (= c!853178 (is-Empty!15295 (c!853101 (_1!34771 lt!2067710))))))

(assert (=> d!1609445 (= (list!18595 (c!853101 (_1!34771 lt!2067710))) e!3124095)))

(declare-fun b!4999417 () Bool)

(assert (=> b!4999417 (= e!3124095 Nil!57808)))

(assert (= (and d!1609445 c!853178) b!4999417))

(assert (= (and d!1609445 (not c!853178)) b!4999418))

(assert (= (and b!4999418 c!853179) b!4999419))

(assert (= (and b!4999418 (not c!853179)) b!4999420))

(declare-fun m!6032888 () Bool)

(assert (=> b!4999419 m!6032888))

(declare-fun m!6032890 () Bool)

(assert (=> b!4999420 m!6032890))

(declare-fun m!6032892 () Bool)

(assert (=> b!4999420 m!6032892))

(assert (=> b!4999420 m!6032890))

(assert (=> b!4999420 m!6032892))

(declare-fun m!6032894 () Bool)

(assert (=> b!4999420 m!6032894))

(assert (=> d!1609379 d!1609445))

(declare-fun d!1609447 () Bool)

(assert (=> d!1609447 (= (inv!75924 (xs!18621 (c!853101 totalInput!1012))) (<= (size!38418 (innerList!15383 (xs!18621 (c!853101 totalInput!1012)))) 2147483647))))

(declare-fun bs!1185695 () Bool)

(assert (= bs!1185695 d!1609447))

(declare-fun m!6032896 () Bool)

(assert (=> bs!1185695 m!6032896))

(assert (=> b!4999212 d!1609447))

(declare-fun d!1609449 () Bool)

(declare-fun nullableFct!1267 (Regex!13776) Bool)

(assert (=> d!1609449 (= (nullable!4678 (reg!14105 r!12727)) (nullableFct!1267 (reg!14105 r!12727)))))

(declare-fun bs!1185696 () Bool)

(assert (= bs!1185696 d!1609449))

(declare-fun m!6032898 () Bool)

(assert (=> bs!1185696 m!6032898))

(assert (=> b!4999164 d!1609449))

(declare-fun b!4999423 () Bool)

(declare-fun e!3124098 () List!57932)

(assert (=> b!4999423 (= e!3124098 (list!18597 (xs!18621 (c!853101 input!5597))))))

(declare-fun b!4999422 () Bool)

(declare-fun e!3124097 () List!57932)

(assert (=> b!4999422 (= e!3124097 e!3124098)))

(declare-fun c!853181 () Bool)

(assert (=> b!4999422 (= c!853181 (is-Leaf!25392 (c!853101 input!5597)))))

(declare-fun b!4999424 () Bool)

(assert (=> b!4999424 (= e!3124098 (++!12622 (list!18595 (left!42277 (c!853101 input!5597))) (list!18595 (right!42607 (c!853101 input!5597)))))))

(declare-fun d!1609451 () Bool)

(declare-fun c!853180 () Bool)

(assert (=> d!1609451 (= c!853180 (is-Empty!15295 (c!853101 input!5597)))))

(assert (=> d!1609451 (= (list!18595 (c!853101 input!5597)) e!3124097)))

(declare-fun b!4999421 () Bool)

(assert (=> b!4999421 (= e!3124097 Nil!57808)))

(assert (= (and d!1609451 c!853180) b!4999421))

(assert (= (and d!1609451 (not c!853180)) b!4999422))

(assert (= (and b!4999422 c!853181) b!4999423))

(assert (= (and b!4999422 (not c!853181)) b!4999424))

(declare-fun m!6032900 () Bool)

(assert (=> b!4999423 m!6032900))

(declare-fun m!6032902 () Bool)

(assert (=> b!4999424 m!6032902))

(declare-fun m!6032904 () Bool)

(assert (=> b!4999424 m!6032904))

(assert (=> b!4999424 m!6032902))

(assert (=> b!4999424 m!6032904))

(declare-fun m!6032906 () Bool)

(assert (=> b!4999424 m!6032906))

(assert (=> d!1609329 d!1609451))

(declare-fun d!1609453 () Bool)

(declare-fun lt!2067889 () Int)

(assert (=> d!1609453 (>= lt!2067889 0)))

(declare-fun e!3124101 () Int)

(assert (=> d!1609453 (= lt!2067889 e!3124101)))

(declare-fun c!853184 () Bool)

(assert (=> d!1609453 (= c!853184 (is-Nil!57808 lt!2067705))))

(assert (=> d!1609453 (= (size!38418 lt!2067705) lt!2067889)))

(declare-fun b!4999429 () Bool)

(assert (=> b!4999429 (= e!3124101 0)))

(declare-fun b!4999430 () Bool)

(assert (=> b!4999430 (= e!3124101 (+ 1 (size!38418 (t!370272 lt!2067705))))))

(assert (= (and d!1609453 c!853184) b!4999429))

(assert (= (and d!1609453 (not c!853184)) b!4999430))

(declare-fun m!6032908 () Bool)

(assert (=> b!4999430 m!6032908))

(assert (=> b!4999040 d!1609453))

(declare-fun b!4999434 () Bool)

(declare-fun e!3124102 () Bool)

(assert (=> b!4999434 (= e!3124102 (>= (size!38418 (tail!9853 lt!2067705)) (size!38418 (tail!9853 (take!635 lt!2067705 lt!2067711)))))))

(declare-fun b!4999433 () Bool)

(declare-fun e!3124103 () Bool)

(assert (=> b!4999433 (= e!3124103 (isPrefix!5329 (tail!9853 (tail!9853 (take!635 lt!2067705 lt!2067711))) (tail!9853 (tail!9853 lt!2067705))))))

(declare-fun b!4999432 () Bool)

(declare-fun res!2133353 () Bool)

(assert (=> b!4999432 (=> (not res!2133353) (not e!3124103))))

(assert (=> b!4999432 (= res!2133353 (= (head!10720 (tail!9853 (take!635 lt!2067705 lt!2067711))) (head!10720 (tail!9853 lt!2067705))))))

(declare-fun b!4999431 () Bool)

(declare-fun e!3124104 () Bool)

(assert (=> b!4999431 (= e!3124104 e!3124103)))

(declare-fun res!2133351 () Bool)

(assert (=> b!4999431 (=> (not res!2133351) (not e!3124103))))

(assert (=> b!4999431 (= res!2133351 (not (is-Nil!57808 (tail!9853 lt!2067705))))))

(declare-fun d!1609455 () Bool)

(assert (=> d!1609455 e!3124102))

(declare-fun res!2133350 () Bool)

(assert (=> d!1609455 (=> res!2133350 e!3124102)))

(declare-fun lt!2067890 () Bool)

(assert (=> d!1609455 (= res!2133350 (not lt!2067890))))

(assert (=> d!1609455 (= lt!2067890 e!3124104)))

(declare-fun res!2133352 () Bool)

(assert (=> d!1609455 (=> res!2133352 e!3124104)))

(assert (=> d!1609455 (= res!2133352 (is-Nil!57808 (tail!9853 (take!635 lt!2067705 lt!2067711))))))

(assert (=> d!1609455 (= (isPrefix!5329 (tail!9853 (take!635 lt!2067705 lt!2067711)) (tail!9853 lt!2067705)) lt!2067890)))

(assert (= (and d!1609455 (not res!2133352)) b!4999431))

(assert (= (and b!4999431 res!2133351) b!4999432))

(assert (= (and b!4999432 res!2133353) b!4999433))

(assert (= (and d!1609455 (not res!2133350)) b!4999434))

(assert (=> b!4999434 m!6032510))

(declare-fun m!6032910 () Bool)

(assert (=> b!4999434 m!6032910))

(assert (=> b!4999434 m!6032508))

(declare-fun m!6032912 () Bool)

(assert (=> b!4999434 m!6032912))

(assert (=> b!4999433 m!6032508))

(declare-fun m!6032914 () Bool)

(assert (=> b!4999433 m!6032914))

(assert (=> b!4999433 m!6032510))

(declare-fun m!6032916 () Bool)

(assert (=> b!4999433 m!6032916))

(assert (=> b!4999433 m!6032914))

(assert (=> b!4999433 m!6032916))

(declare-fun m!6032918 () Bool)

(assert (=> b!4999433 m!6032918))

(assert (=> b!4999432 m!6032508))

(declare-fun m!6032920 () Bool)

(assert (=> b!4999432 m!6032920))

(assert (=> b!4999432 m!6032510))

(declare-fun m!6032922 () Bool)

(assert (=> b!4999432 m!6032922))

(assert (=> b!4999055 d!1609455))

(declare-fun d!1609457 () Bool)

(assert (=> d!1609457 (= (tail!9853 (take!635 lt!2067705 lt!2067711)) (t!370272 (take!635 lt!2067705 lt!2067711)))))

(assert (=> b!4999055 d!1609457))

(declare-fun d!1609459 () Bool)

(assert (=> d!1609459 (= (tail!9853 lt!2067705) (t!370272 lt!2067705))))

(assert (=> b!4999055 d!1609459))

(declare-fun d!1609461 () Bool)

(declare-fun lt!2067891 () Int)

(assert (=> d!1609461 (>= lt!2067891 0)))

(declare-fun e!3124105 () Int)

(assert (=> d!1609461 (= lt!2067891 e!3124105)))

(declare-fun c!853185 () Bool)

(assert (=> d!1609461 (= c!853185 (is-Nil!57808 lt!2067832))))

(assert (=> d!1609461 (= (size!38418 lt!2067832) lt!2067891)))

(declare-fun b!4999435 () Bool)

(assert (=> b!4999435 (= e!3124105 0)))

(declare-fun b!4999436 () Bool)

(assert (=> b!4999436 (= e!3124105 (+ 1 (size!38418 (t!370272 lt!2067832))))))

(assert (= (and d!1609461 c!853185) b!4999435))

(assert (= (and d!1609461 (not c!853185)) b!4999436))

(declare-fun m!6032924 () Bool)

(assert (=> b!4999436 m!6032924))

(assert (=> b!4999124 d!1609461))

(declare-fun d!1609463 () Bool)

(declare-fun lt!2067892 () Int)

(assert (=> d!1609463 (>= lt!2067892 0)))

(declare-fun e!3124106 () Int)

(assert (=> d!1609463 (= lt!2067892 e!3124106)))

(declare-fun c!853186 () Bool)

(assert (=> d!1609463 (= c!853186 (is-Nil!57808 lt!2067708))))

(assert (=> d!1609463 (= (size!38418 lt!2067708) lt!2067892)))

(declare-fun b!4999437 () Bool)

(assert (=> b!4999437 (= e!3124106 0)))

(declare-fun b!4999438 () Bool)

(assert (=> b!4999438 (= e!3124106 (+ 1 (size!38418 (t!370272 lt!2067708))))))

(assert (= (and d!1609463 c!853186) b!4999437))

(assert (= (and d!1609463 (not c!853186)) b!4999438))

(declare-fun m!6032926 () Bool)

(assert (=> b!4999438 m!6032926))

(assert (=> b!4999124 d!1609463))

(declare-fun d!1609465 () Bool)

(declare-fun lt!2067893 () Int)

(assert (=> d!1609465 (>= lt!2067893 0)))

(declare-fun e!3124107 () Int)

(assert (=> d!1609465 (= lt!2067893 e!3124107)))

(declare-fun c!853187 () Bool)

(assert (=> d!1609465 (= c!853187 (is-Nil!57808 lt!2067706))))

(assert (=> d!1609465 (= (size!38418 lt!2067706) lt!2067893)))

(declare-fun b!4999439 () Bool)

(assert (=> b!4999439 (= e!3124107 0)))

(declare-fun b!4999440 () Bool)

(assert (=> b!4999440 (= e!3124107 (+ 1 (size!38418 (t!370272 lt!2067706))))))

(assert (= (and d!1609465 c!853187) b!4999439))

(assert (= (and d!1609465 (not c!853187)) b!4999440))

(declare-fun m!6032928 () Bool)

(assert (=> b!4999440 m!6032928))

(assert (=> b!4999124 d!1609465))

(declare-fun d!1609467 () Bool)

(assert (=> d!1609467 (= (head!10720 (_1!34772 lt!2067709)) (h!64256 (_1!34772 lt!2067709)))))

(assert (=> b!4999066 d!1609467))

(declare-fun d!1609469 () Bool)

(assert (=> d!1609469 (= (head!10720 lt!2067712) (h!64256 lt!2067712))))

(assert (=> b!4999066 d!1609469))

(declare-fun d!1609471 () Bool)

(declare-fun lt!2067894 () Int)

(assert (=> d!1609471 (>= lt!2067894 0)))

(declare-fun e!3124108 () Int)

(assert (=> d!1609471 (= lt!2067894 e!3124108)))

(declare-fun c!853188 () Bool)

(assert (=> d!1609471 (= c!853188 (is-Nil!57808 lt!2067712))))

(assert (=> d!1609471 (= (size!38418 lt!2067712) lt!2067894)))

(declare-fun b!4999441 () Bool)

(assert (=> b!4999441 (= e!3124108 0)))

(declare-fun b!4999442 () Bool)

(assert (=> b!4999442 (= e!3124108 (+ 1 (size!38418 (t!370272 lt!2067712))))))

(assert (= (and d!1609471 c!853188) b!4999441))

(assert (= (and d!1609471 (not c!853188)) b!4999442))

(declare-fun m!6032930 () Bool)

(assert (=> b!4999442 m!6032930))

(assert (=> b!4999068 d!1609471))

(declare-fun d!1609473 () Bool)

(declare-fun lt!2067895 () Int)

(assert (=> d!1609473 (>= lt!2067895 0)))

(declare-fun e!3124109 () Int)

(assert (=> d!1609473 (= lt!2067895 e!3124109)))

(declare-fun c!853189 () Bool)

(assert (=> d!1609473 (= c!853189 (is-Nil!57808 (_1!34772 lt!2067709)))))

(assert (=> d!1609473 (= (size!38418 (_1!34772 lt!2067709)) lt!2067895)))

(declare-fun b!4999443 () Bool)

(assert (=> b!4999443 (= e!3124109 0)))

(declare-fun b!4999444 () Bool)

(assert (=> b!4999444 (= e!3124109 (+ 1 (size!38418 (t!370272 (_1!34772 lt!2067709)))))))

(assert (= (and d!1609473 c!853189) b!4999443))

(assert (= (and d!1609473 (not c!853189)) b!4999444))

(declare-fun m!6032932 () Bool)

(assert (=> b!4999444 m!6032932))

(assert (=> b!4999068 d!1609473))

(declare-fun b!4999448 () Bool)

(declare-fun e!3124110 () Bool)

(assert (=> b!4999448 (= e!3124110 (>= (size!38418 (tail!9853 lt!2067716)) (size!38418 (tail!9853 lt!2067708))))))

(declare-fun b!4999447 () Bool)

(declare-fun e!3124111 () Bool)

(assert (=> b!4999447 (= e!3124111 (isPrefix!5329 (tail!9853 (tail!9853 lt!2067708)) (tail!9853 (tail!9853 lt!2067716))))))

(declare-fun b!4999446 () Bool)

(declare-fun res!2133357 () Bool)

(assert (=> b!4999446 (=> (not res!2133357) (not e!3124111))))

(assert (=> b!4999446 (= res!2133357 (= (head!10720 (tail!9853 lt!2067708)) (head!10720 (tail!9853 lt!2067716))))))

(declare-fun b!4999445 () Bool)

(declare-fun e!3124112 () Bool)

(assert (=> b!4999445 (= e!3124112 e!3124111)))

(declare-fun res!2133355 () Bool)

(assert (=> b!4999445 (=> (not res!2133355) (not e!3124111))))

(assert (=> b!4999445 (= res!2133355 (not (is-Nil!57808 (tail!9853 lt!2067716))))))

(declare-fun d!1609475 () Bool)

(assert (=> d!1609475 e!3124110))

(declare-fun res!2133354 () Bool)

(assert (=> d!1609475 (=> res!2133354 e!3124110)))

(declare-fun lt!2067896 () Bool)

(assert (=> d!1609475 (= res!2133354 (not lt!2067896))))

(assert (=> d!1609475 (= lt!2067896 e!3124112)))

(declare-fun res!2133356 () Bool)

(assert (=> d!1609475 (=> res!2133356 e!3124112)))

(assert (=> d!1609475 (= res!2133356 (is-Nil!57808 (tail!9853 lt!2067708)))))

(assert (=> d!1609475 (= (isPrefix!5329 (tail!9853 lt!2067708) (tail!9853 lt!2067716)) lt!2067896)))

(assert (= (and d!1609475 (not res!2133356)) b!4999445))

(assert (= (and b!4999445 res!2133355) b!4999446))

(assert (= (and b!4999446 res!2133357) b!4999447))

(assert (= (and d!1609475 (not res!2133354)) b!4999448))

(assert (=> b!4999448 m!6032498))

(declare-fun m!6032934 () Bool)

(assert (=> b!4999448 m!6032934))

(assert (=> b!4999448 m!6032496))

(declare-fun m!6032936 () Bool)

(assert (=> b!4999448 m!6032936))

(assert (=> b!4999447 m!6032496))

(declare-fun m!6032938 () Bool)

(assert (=> b!4999447 m!6032938))

(assert (=> b!4999447 m!6032498))

(declare-fun m!6032940 () Bool)

(assert (=> b!4999447 m!6032940))

(assert (=> b!4999447 m!6032938))

(assert (=> b!4999447 m!6032940))

(declare-fun m!6032942 () Bool)

(assert (=> b!4999447 m!6032942))

(assert (=> b!4999446 m!6032496))

(declare-fun m!6032944 () Bool)

(assert (=> b!4999446 m!6032944))

(assert (=> b!4999446 m!6032498))

(declare-fun m!6032946 () Bool)

(assert (=> b!4999446 m!6032946))

(assert (=> b!4999051 d!1609475))

(declare-fun d!1609477 () Bool)

(assert (=> d!1609477 (= (tail!9853 lt!2067708) (t!370272 lt!2067708))))

(assert (=> b!4999051 d!1609477))

(declare-fun d!1609479 () Bool)

(assert (=> d!1609479 (= (tail!9853 lt!2067716) (t!370272 lt!2067716))))

(assert (=> b!4999051 d!1609479))

(declare-fun d!1609481 () Bool)

(assert (=> d!1609481 (= (inv!75924 (xs!18621 (c!853101 input!5597))) (<= (size!38418 (innerList!15383 (xs!18621 (c!853101 input!5597)))) 2147483647))))

(declare-fun bs!1185697 () Bool)

(assert (= bs!1185697 d!1609481))

(declare-fun m!6032948 () Bool)

(assert (=> bs!1185697 m!6032948))

(assert (=> b!4999181 d!1609481))

(declare-fun d!1609483 () Bool)

(declare-fun lt!2067897 () Int)

(assert (=> d!1609483 (>= lt!2067897 0)))

(declare-fun e!3124113 () Int)

(assert (=> d!1609483 (= lt!2067897 e!3124113)))

(declare-fun c!853190 () Bool)

(assert (=> d!1609483 (= c!853190 (is-Nil!57808 (list!18593 totalInput!1012)))))

(assert (=> d!1609483 (= (size!38418 (list!18593 totalInput!1012)) lt!2067897)))

(declare-fun b!4999449 () Bool)

(assert (=> b!4999449 (= e!3124113 0)))

(declare-fun b!4999450 () Bool)

(assert (=> b!4999450 (= e!3124113 (+ 1 (size!38418 (t!370272 (list!18593 totalInput!1012)))))))

(assert (= (and d!1609483 c!853190) b!4999449))

(assert (= (and d!1609483 (not c!853190)) b!4999450))

(declare-fun m!6032950 () Bool)

(assert (=> b!4999450 m!6032950))

(assert (=> d!1609363 d!1609483))

(assert (=> d!1609363 d!1609327))

(declare-fun d!1609485 () Bool)

(declare-fun lt!2067900 () Int)

(assert (=> d!1609485 (= lt!2067900 (size!38418 (list!18595 (c!853101 totalInput!1012))))))

(assert (=> d!1609485 (= lt!2067900 (ite (is-Empty!15295 (c!853101 totalInput!1012)) 0 (ite (is-Leaf!25392 (c!853101 totalInput!1012)) (csize!30821 (c!853101 totalInput!1012)) (csize!30820 (c!853101 totalInput!1012)))))))

(assert (=> d!1609485 (= (size!38419 (c!853101 totalInput!1012)) lt!2067900)))

(declare-fun bs!1185698 () Bool)

(assert (= bs!1185698 d!1609485))

(assert (=> bs!1185698 m!6032472))

(assert (=> bs!1185698 m!6032472))

(declare-fun m!6032952 () Bool)

(assert (=> bs!1185698 m!6032952))

(assert (=> d!1609363 d!1609485))

(declare-fun bs!1185699 () Bool)

(declare-fun d!1609487 () Bool)

(assert (= bs!1185699 (and d!1609487 d!1609381)))

(declare-fun lambda!248335 () Int)

(assert (=> bs!1185699 (= lambda!248335 lambda!248325)))

(declare-fun bs!1185700 () Bool)

(assert (= bs!1185700 (and d!1609487 d!1609431)))

(assert (=> bs!1185700 (= lambda!248335 lambda!248331)))

(declare-fun bs!1185701 () Bool)

(assert (= bs!1185701 (and d!1609487 d!1609433)))

(assert (=> bs!1185701 (= lambda!248335 lambda!248334)))

(assert (=> d!1609487 (= (inv!75918 setElem!28329) (forall!13355 (exprs!3701 setElem!28329) lambda!248335))))

(declare-fun bs!1185702 () Bool)

(assert (= bs!1185702 d!1609487))

(declare-fun m!6032954 () Bool)

(assert (=> bs!1185702 m!6032954))

(assert (=> setNonEmpty!28329 d!1609487))

(declare-fun b!4999454 () Bool)

(declare-fun e!3124114 () Bool)

(assert (=> b!4999454 (= e!3124114 (>= (size!38418 (++!12622 (_1!34772 lt!2067709) (_2!34772 lt!2067709))) (size!38418 (_1!34772 lt!2067709))))))

(declare-fun b!4999453 () Bool)

(declare-fun e!3124115 () Bool)

(assert (=> b!4999453 (= e!3124115 (isPrefix!5329 (tail!9853 (_1!34772 lt!2067709)) (tail!9853 (++!12622 (_1!34772 lt!2067709) (_2!34772 lt!2067709)))))))

(declare-fun b!4999452 () Bool)

(declare-fun res!2133361 () Bool)

(assert (=> b!4999452 (=> (not res!2133361) (not e!3124115))))

(assert (=> b!4999452 (= res!2133361 (= (head!10720 (_1!34772 lt!2067709)) (head!10720 (++!12622 (_1!34772 lt!2067709) (_2!34772 lt!2067709)))))))

(declare-fun b!4999451 () Bool)

(declare-fun e!3124116 () Bool)

(assert (=> b!4999451 (= e!3124116 e!3124115)))

(declare-fun res!2133359 () Bool)

(assert (=> b!4999451 (=> (not res!2133359) (not e!3124115))))

(assert (=> b!4999451 (= res!2133359 (not (is-Nil!57808 (++!12622 (_1!34772 lt!2067709) (_2!34772 lt!2067709)))))))

(declare-fun d!1609489 () Bool)

(assert (=> d!1609489 e!3124114))

(declare-fun res!2133358 () Bool)

(assert (=> d!1609489 (=> res!2133358 e!3124114)))

(declare-fun lt!2067901 () Bool)

(assert (=> d!1609489 (= res!2133358 (not lt!2067901))))

(assert (=> d!1609489 (= lt!2067901 e!3124116)))

(declare-fun res!2133360 () Bool)

(assert (=> d!1609489 (=> res!2133360 e!3124116)))

(assert (=> d!1609489 (= res!2133360 (is-Nil!57808 (_1!34772 lt!2067709)))))

(assert (=> d!1609489 (= (isPrefix!5329 (_1!34772 lt!2067709) (++!12622 (_1!34772 lt!2067709) (_2!34772 lt!2067709))) lt!2067901)))

(assert (= (and d!1609489 (not res!2133360)) b!4999451))

(assert (= (and b!4999451 res!2133359) b!4999452))

(assert (= (and b!4999452 res!2133361) b!4999453))

(assert (= (and d!1609489 (not res!2133358)) b!4999454))

(assert (=> b!4999454 m!6032390))

(declare-fun m!6032956 () Bool)

(assert (=> b!4999454 m!6032956))

(assert (=> b!4999454 m!6032526))

(assert (=> b!4999453 m!6032528))

(assert (=> b!4999453 m!6032390))

(declare-fun m!6032958 () Bool)

(assert (=> b!4999453 m!6032958))

(assert (=> b!4999453 m!6032528))

(assert (=> b!4999453 m!6032958))

(declare-fun m!6032960 () Bool)

(assert (=> b!4999453 m!6032960))

(assert (=> b!4999452 m!6032534))

(assert (=> b!4999452 m!6032390))

(declare-fun m!6032962 () Bool)

(assert (=> b!4999452 m!6032962))

(assert (=> d!1609335 d!1609489))

(assert (=> d!1609335 d!1609397))

(declare-fun d!1609491 () Bool)

(assert (=> d!1609491 (isPrefix!5329 (_1!34772 lt!2067709) (++!12622 (_1!34772 lt!2067709) (_2!34772 lt!2067709)))))

(assert (=> d!1609491 true))

(declare-fun _$46!1946 () Unit!148967)

(assert (=> d!1609491 (= (choose!36953 (_1!34772 lt!2067709) (_2!34772 lt!2067709)) _$46!1946)))

(declare-fun bs!1185703 () Bool)

(assert (= bs!1185703 d!1609491))

(assert (=> bs!1185703 m!6032390))

(assert (=> bs!1185703 m!6032390))

(assert (=> bs!1185703 m!6032488))

(assert (=> d!1609335 d!1609491))

(declare-fun bm!348917 () Bool)

(declare-fun call!348922 () Int)

(assert (=> bm!348917 (= call!348922 (size!38418 lt!2067705))))

(declare-fun b!4999473 () Bool)

(declare-fun e!3124127 () Int)

(assert (=> b!4999473 (= e!3124127 0)))

(declare-fun b!4999474 () Bool)

(assert (=> b!4999474 (= e!3124127 (- call!348922 (- (size!38418 lt!2067705) (size!38418 lt!2067714))))))

(declare-fun b!4999475 () Bool)

(declare-fun e!3124129 () Int)

(assert (=> b!4999475 (= e!3124129 e!3124127)))

(declare-fun c!853202 () Bool)

(assert (=> b!4999475 (= c!853202 (>= (- (size!38418 lt!2067705) (size!38418 lt!2067714)) call!348922))))

(declare-fun d!1609493 () Bool)

(declare-fun e!3124131 () Bool)

(assert (=> d!1609493 e!3124131))

(declare-fun res!2133364 () Bool)

(assert (=> d!1609493 (=> (not res!2133364) (not e!3124131))))

(declare-fun lt!2067904 () List!57932)

(assert (=> d!1609493 (= res!2133364 (set.subset (content!10231 lt!2067904) (content!10231 lt!2067705)))))

(declare-fun e!3124128 () List!57932)

(assert (=> d!1609493 (= lt!2067904 e!3124128)))

(declare-fun c!853199 () Bool)

(assert (=> d!1609493 (= c!853199 (is-Nil!57808 lt!2067705))))

(assert (=> d!1609493 (= (drop!2439 lt!2067705 (- (size!38418 lt!2067705) (size!38418 lt!2067714))) lt!2067904)))

(declare-fun b!4999476 () Bool)

(assert (=> b!4999476 (= e!3124129 call!348922)))

(declare-fun b!4999477 () Bool)

(assert (=> b!4999477 (= e!3124128 Nil!57808)))

(declare-fun b!4999478 () Bool)

(declare-fun e!3124130 () List!57932)

(assert (=> b!4999478 (= e!3124130 lt!2067705)))

(declare-fun b!4999479 () Bool)

(assert (=> b!4999479 (= e!3124130 (drop!2439 (t!370272 lt!2067705) (- (- (size!38418 lt!2067705) (size!38418 lt!2067714)) 1)))))

(declare-fun b!4999480 () Bool)

(assert (=> b!4999480 (= e!3124131 (= (size!38418 lt!2067904) e!3124129))))

(declare-fun c!853201 () Bool)

(assert (=> b!4999480 (= c!853201 (<= (- (size!38418 lt!2067705) (size!38418 lt!2067714)) 0))))

(declare-fun b!4999481 () Bool)

(assert (=> b!4999481 (= e!3124128 e!3124130)))

(declare-fun c!853200 () Bool)

(assert (=> b!4999481 (= c!853200 (<= (- (size!38418 lt!2067705) (size!38418 lt!2067714)) 0))))

(assert (= (and d!1609493 c!853199) b!4999477))

(assert (= (and d!1609493 (not c!853199)) b!4999481))

(assert (= (and b!4999481 c!853200) b!4999478))

(assert (= (and b!4999481 (not c!853200)) b!4999479))

(assert (= (and d!1609493 res!2133364) b!4999480))

(assert (= (and b!4999480 c!853201) b!4999476))

(assert (= (and b!4999480 (not c!853201)) b!4999475))

(assert (= (and b!4999475 c!853202) b!4999473))

(assert (= (and b!4999475 (not c!853202)) b!4999474))

(assert (= (or b!4999476 b!4999475 b!4999474) bm!348917))

(assert (=> bm!348917 m!6032466))

(declare-fun m!6032964 () Bool)

(assert (=> d!1609493 m!6032964))

(assert (=> d!1609493 m!6032482))

(declare-fun m!6032966 () Bool)

(assert (=> b!4999479 m!6032966))

(declare-fun m!6032968 () Bool)

(assert (=> b!4999480 m!6032968))

(assert (=> d!1609325 d!1609493))

(assert (=> d!1609325 d!1609453))

(declare-fun d!1609495 () Bool)

(declare-fun lt!2067905 () Int)

(assert (=> d!1609495 (>= lt!2067905 0)))

(declare-fun e!3124132 () Int)

(assert (=> d!1609495 (= lt!2067905 e!3124132)))

(declare-fun c!853203 () Bool)

(assert (=> d!1609495 (= c!853203 (is-Nil!57808 lt!2067714))))

(assert (=> d!1609495 (= (size!38418 lt!2067714) lt!2067905)))

(declare-fun b!4999482 () Bool)

(assert (=> b!4999482 (= e!3124132 0)))

(declare-fun b!4999483 () Bool)

(assert (=> b!4999483 (= e!3124132 (+ 1 (size!38418 (t!370272 lt!2067714))))))

(assert (= (and d!1609495 c!853203) b!4999482))

(assert (= (and d!1609495 (not c!853203)) b!4999483))

(declare-fun m!6032970 () Bool)

(assert (=> b!4999483 m!6032970))

(assert (=> d!1609325 d!1609495))

(declare-fun d!1609497 () Bool)

(declare-fun lt!2067906 () Int)

(assert (=> d!1609497 (>= lt!2067906 0)))

(declare-fun e!3124133 () Int)

(assert (=> d!1609497 (= lt!2067906 e!3124133)))

(declare-fun c!853204 () Bool)

(assert (=> d!1609497 (= c!853204 (is-Nil!57808 lt!2067839))))

(assert (=> d!1609497 (= (size!38418 lt!2067839) lt!2067906)))

(declare-fun b!4999484 () Bool)

(assert (=> b!4999484 (= e!3124133 0)))

(declare-fun b!4999485 () Bool)

(assert (=> b!4999485 (= e!3124133 (+ 1 (size!38418 (t!370272 lt!2067839))))))

(assert (= (and d!1609497 c!853204) b!4999484))

(assert (= (and d!1609497 (not c!853204)) b!4999485))

(declare-fun m!6032972 () Bool)

(assert (=> b!4999485 m!6032972))

(assert (=> b!4999170 d!1609497))

(assert (=> b!4999170 d!1609473))

(declare-fun d!1609499 () Bool)

(declare-fun lt!2067907 () Int)

(assert (=> d!1609499 (>= lt!2067907 0)))

(declare-fun e!3124134 () Int)

(assert (=> d!1609499 (= lt!2067907 e!3124134)))

(declare-fun c!853205 () Bool)

(assert (=> d!1609499 (= c!853205 (is-Nil!57808 (_2!34772 lt!2067709)))))

(assert (=> d!1609499 (= (size!38418 (_2!34772 lt!2067709)) lt!2067907)))

(declare-fun b!4999486 () Bool)

(assert (=> b!4999486 (= e!3124134 0)))

(declare-fun b!4999487 () Bool)

(assert (=> b!4999487 (= e!3124134 (+ 1 (size!38418 (t!370272 (_2!34772 lt!2067709)))))))

(assert (= (and d!1609499 c!853205) b!4999486))

(assert (= (and d!1609499 (not c!853205)) b!4999487))

(declare-fun m!6032974 () Bool)

(assert (=> b!4999487 m!6032974))

(assert (=> b!4999170 d!1609499))

(declare-fun d!1609501 () Bool)

(declare-fun res!2133371 () Bool)

(declare-fun e!3124137 () Bool)

(assert (=> d!1609501 (=> (not res!2133371) (not e!3124137))))

(assert (=> d!1609501 (= res!2133371 (= (csize!30820 (c!853101 totalInput!1012)) (+ (size!38419 (left!42277 (c!853101 totalInput!1012))) (size!38419 (right!42607 (c!853101 totalInput!1012))))))))

(assert (=> d!1609501 (= (inv!75922 (c!853101 totalInput!1012)) e!3124137)))

(declare-fun b!4999494 () Bool)

(declare-fun res!2133372 () Bool)

(assert (=> b!4999494 (=> (not res!2133372) (not e!3124137))))

(assert (=> b!4999494 (= res!2133372 (and (not (= (left!42277 (c!853101 totalInput!1012)) Empty!15295)) (not (= (right!42607 (c!853101 totalInput!1012)) Empty!15295))))))

(declare-fun b!4999495 () Bool)

(declare-fun res!2133373 () Bool)

(assert (=> b!4999495 (=> (not res!2133373) (not e!3124137))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4999495 (= res!2133373 (= (cheight!15506 (c!853101 totalInput!1012)) (+ (max!0 (height!2031 (left!42277 (c!853101 totalInput!1012))) (height!2031 (right!42607 (c!853101 totalInput!1012)))) 1)))))

(declare-fun b!4999496 () Bool)

(assert (=> b!4999496 (= e!3124137 (<= 0 (cheight!15506 (c!853101 totalInput!1012))))))

(assert (= (and d!1609501 res!2133371) b!4999494))

(assert (= (and b!4999494 res!2133372) b!4999495))

(assert (= (and b!4999495 res!2133373) b!4999496))

(declare-fun m!6032976 () Bool)

(assert (=> d!1609501 m!6032976))

(declare-fun m!6032978 () Bool)

(assert (=> d!1609501 m!6032978))

(assert (=> b!4999495 m!6032878))

(assert (=> b!4999495 m!6032880))

(assert (=> b!4999495 m!6032878))

(assert (=> b!4999495 m!6032880))

(declare-fun m!6032980 () Bool)

(assert (=> b!4999495 m!6032980))

(assert (=> b!4999138 d!1609501))

(declare-fun d!1609503 () Bool)

(declare-fun res!2133378 () Bool)

(declare-fun e!3124140 () Bool)

(assert (=> d!1609503 (=> (not res!2133378) (not e!3124140))))

(assert (=> d!1609503 (= res!2133378 (<= (size!38418 (list!18597 (xs!18621 (c!853101 totalInput!1012)))) 512))))

(assert (=> d!1609503 (= (inv!75923 (c!853101 totalInput!1012)) e!3124140)))

(declare-fun b!4999501 () Bool)

(declare-fun res!2133379 () Bool)

(assert (=> b!4999501 (=> (not res!2133379) (not e!3124140))))

(assert (=> b!4999501 (= res!2133379 (= (csize!30821 (c!853101 totalInput!1012)) (size!38418 (list!18597 (xs!18621 (c!853101 totalInput!1012))))))))

(declare-fun b!4999502 () Bool)

(assert (=> b!4999502 (= e!3124140 (and (> (csize!30821 (c!853101 totalInput!1012)) 0) (<= (csize!30821 (c!853101 totalInput!1012)) 512)))))

(assert (= (and d!1609503 res!2133378) b!4999501))

(assert (= (and b!4999501 res!2133379) b!4999502))

(assert (=> d!1609503 m!6032854))

(assert (=> d!1609503 m!6032854))

(declare-fun m!6032982 () Bool)

(assert (=> d!1609503 m!6032982))

(assert (=> b!4999501 m!6032854))

(assert (=> b!4999501 m!6032854))

(assert (=> b!4999501 m!6032982))

(assert (=> b!4999140 d!1609503))

(declare-fun d!1609505 () Bool)

(declare-fun res!2133380 () Bool)

(declare-fun e!3124141 () Bool)

(assert (=> d!1609505 (=> (not res!2133380) (not e!3124141))))

(assert (=> d!1609505 (= res!2133380 (= (csize!30820 (c!853101 input!5597)) (+ (size!38419 (left!42277 (c!853101 input!5597))) (size!38419 (right!42607 (c!853101 input!5597))))))))

(assert (=> d!1609505 (= (inv!75922 (c!853101 input!5597)) e!3124141)))

(declare-fun b!4999503 () Bool)

(declare-fun res!2133381 () Bool)

(assert (=> b!4999503 (=> (not res!2133381) (not e!3124141))))

(assert (=> b!4999503 (= res!2133381 (and (not (= (left!42277 (c!853101 input!5597)) Empty!15295)) (not (= (right!42607 (c!853101 input!5597)) Empty!15295))))))

(declare-fun b!4999504 () Bool)

(declare-fun res!2133382 () Bool)

(assert (=> b!4999504 (=> (not res!2133382) (not e!3124141))))

(assert (=> b!4999504 (= res!2133382 (= (cheight!15506 (c!853101 input!5597)) (+ (max!0 (height!2031 (left!42277 (c!853101 input!5597))) (height!2031 (right!42607 (c!853101 input!5597)))) 1)))))

(declare-fun b!4999505 () Bool)

(assert (=> b!4999505 (= e!3124141 (<= 0 (cheight!15506 (c!853101 input!5597))))))

(assert (= (and d!1609505 res!2133380) b!4999503))

(assert (= (and b!4999503 res!2133381) b!4999504))

(assert (= (and b!4999504 res!2133382) b!4999505))

(declare-fun m!6032984 () Bool)

(assert (=> d!1609505 m!6032984))

(declare-fun m!6032986 () Bool)

(assert (=> d!1609505 m!6032986))

(declare-fun m!6032988 () Bool)

(assert (=> b!4999504 m!6032988))

(declare-fun m!6032990 () Bool)

(assert (=> b!4999504 m!6032990))

(assert (=> b!4999504 m!6032988))

(assert (=> b!4999504 m!6032990))

(declare-fun m!6032992 () Bool)

(assert (=> b!4999504 m!6032992))

(assert (=> b!4999083 d!1609505))

(declare-fun d!1609507 () Bool)

(declare-fun res!2133383 () Bool)

(declare-fun e!3124142 () Bool)

(assert (=> d!1609507 (=> (not res!2133383) (not e!3124142))))

(assert (=> d!1609507 (= res!2133383 (<= (size!38418 (list!18597 (xs!18621 (c!853101 input!5597)))) 512))))

(assert (=> d!1609507 (= (inv!75923 (c!853101 input!5597)) e!3124142)))

(declare-fun b!4999506 () Bool)

(declare-fun res!2133384 () Bool)

(assert (=> b!4999506 (=> (not res!2133384) (not e!3124142))))

(assert (=> b!4999506 (= res!2133384 (= (csize!30821 (c!853101 input!5597)) (size!38418 (list!18597 (xs!18621 (c!853101 input!5597))))))))

(declare-fun b!4999507 () Bool)

(assert (=> b!4999507 (= e!3124142 (and (> (csize!30821 (c!853101 input!5597)) 0) (<= (csize!30821 (c!853101 input!5597)) 512)))))

(assert (= (and d!1609507 res!2133383) b!4999506))

(assert (= (and b!4999506 res!2133384) b!4999507))

(assert (=> d!1609507 m!6032900))

(assert (=> d!1609507 m!6032900))

(declare-fun m!6032994 () Bool)

(assert (=> d!1609507 m!6032994))

(assert (=> b!4999506 m!6032900))

(assert (=> b!4999506 m!6032900))

(assert (=> b!4999506 m!6032994))

(assert (=> b!4999085 d!1609507))

(declare-fun d!1609509 () Bool)

(declare-fun lt!2067908 () Int)

(assert (=> d!1609509 (>= lt!2067908 0)))

(declare-fun e!3124143 () Int)

(assert (=> d!1609509 (= lt!2067908 e!3124143)))

(declare-fun c!853206 () Bool)

(assert (=> d!1609509 (= c!853206 (is-Nil!57808 lt!2067764))))

(assert (=> d!1609509 (= (size!38418 lt!2067764) lt!2067908)))

(declare-fun b!4999508 () Bool)

(assert (=> b!4999508 (= e!3124143 0)))

(declare-fun b!4999509 () Bool)

(assert (=> b!4999509 (= e!3124143 (+ 1 (size!38418 (t!370272 lt!2067764))))))

(assert (= (and d!1609509 c!853206) b!4999508))

(assert (= (and d!1609509 (not c!853206)) b!4999509))

(declare-fun m!6032996 () Bool)

(assert (=> b!4999509 m!6032996))

(assert (=> b!4999035 d!1609509))

(declare-fun d!1609511 () Bool)

(declare-fun e!3124146 () Bool)

(assert (=> d!1609511 e!3124146))

(declare-fun res!2133390 () Bool)

(assert (=> d!1609511 (=> (not res!2133390) (not e!3124146))))

(declare-fun lt!2067914 () tuple2!62936)

(assert (=> d!1609511 (= res!2133390 (isBalanced!4261 (c!853101 (_1!34771 lt!2067914))))))

(declare-datatypes ((tuple2!62944 0))(
  ( (tuple2!62945 (_1!34775 Conc!15295) (_2!34775 Conc!15295)) )
))
(declare-fun lt!2067913 () tuple2!62944)

(assert (=> d!1609511 (= lt!2067914 (tuple2!62937 (BalanceConc!30021 (_1!34775 lt!2067913)) (BalanceConc!30021 (_2!34775 lt!2067913))))))

(declare-fun splitAt!438 (Conc!15295 Int) tuple2!62944)

(assert (=> d!1609511 (= lt!2067913 (splitAt!438 (c!853101 input!5597) (findLongestMatchInnerZipperFastV2!116 z!4183 (- lt!2067828 (size!38416 input!5597)) totalInput!1012 lt!2067828)))))

(assert (=> d!1609511 (isBalanced!4261 (c!853101 input!5597))))

(assert (=> d!1609511 (= (splitAt!436 input!5597 (findLongestMatchInnerZipperFastV2!116 z!4183 (- lt!2067828 (size!38416 input!5597)) totalInput!1012 lt!2067828)) lt!2067914)))

(declare-fun b!4999514 () Bool)

(declare-fun res!2133389 () Bool)

(assert (=> b!4999514 (=> (not res!2133389) (not e!3124146))))

(assert (=> b!4999514 (= res!2133389 (isBalanced!4261 (c!853101 (_2!34771 lt!2067914))))))

(declare-fun b!4999515 () Bool)

(declare-fun splitAtIndex!160 (List!57932 Int) tuple2!62938)

(assert (=> b!4999515 (= e!3124146 (= (tuple2!62939 (list!18593 (_1!34771 lt!2067914)) (list!18593 (_2!34771 lt!2067914))) (splitAtIndex!160 (list!18593 input!5597) (findLongestMatchInnerZipperFastV2!116 z!4183 (- lt!2067828 (size!38416 input!5597)) totalInput!1012 lt!2067828))))))

(assert (= (and d!1609511 res!2133390) b!4999514))

(assert (= (and b!4999514 res!2133389) b!4999515))

(declare-fun m!6032998 () Bool)

(assert (=> d!1609511 m!6032998))

(assert (=> d!1609511 m!6032630))

(declare-fun m!6033000 () Bool)

(assert (=> d!1609511 m!6033000))

(assert (=> d!1609511 m!6032690))

(declare-fun m!6033002 () Bool)

(assert (=> b!4999514 m!6033002))

(declare-fun m!6033004 () Bool)

(assert (=> b!4999515 m!6033004))

(declare-fun m!6033006 () Bool)

(assert (=> b!4999515 m!6033006))

(assert (=> b!4999515 m!6032366))

(assert (=> b!4999515 m!6032366))

(assert (=> b!4999515 m!6032630))

(declare-fun m!6033008 () Bool)

(assert (=> b!4999515 m!6033008))

(assert (=> d!1609365 d!1609511))

(assert (=> d!1609365 d!1609327))

(declare-fun b!4999532 () Bool)

(declare-fun e!3124161 () Int)

(declare-fun lt!2067923 () Int)

(assert (=> b!4999532 (= e!3124161 (+ 1 lt!2067923))))

(declare-fun b!4999533 () Bool)

(declare-fun e!3124160 () Int)

(assert (=> b!4999533 (= e!3124160 0)))

(declare-fun b!4999535 () Bool)

(declare-fun e!3124157 () Bool)

(declare-fun lostCauseZipper!820 ((Set Context!6402)) Bool)

(assert (=> b!4999535 (= e!3124157 (lostCauseZipper!820 z!4183))))

(declare-fun b!4999536 () Bool)

(declare-fun c!853215 () Bool)

(declare-fun lt!2067921 () (Set Context!6402))

(declare-fun nullableZipper!873 ((Set Context!6402)) Bool)

(assert (=> b!4999536 (= c!853215 (nullableZipper!873 lt!2067921))))

(assert (=> b!4999536 (= e!3124161 e!3124160)))

(declare-fun b!4999537 () Bool)

(assert (=> b!4999537 (= e!3124160 1)))

(declare-fun b!4999534 () Bool)

(declare-fun e!3124159 () Int)

(assert (=> b!4999534 (= e!3124159 e!3124161)))

(declare-fun derivationStepZipper!622 ((Set Context!6402) C!27802) (Set Context!6402))

(declare-fun apply!13980 (BalanceConc!30020 Int) C!27802)

(assert (=> b!4999534 (= lt!2067921 (derivationStepZipper!622 z!4183 (apply!13980 totalInput!1012 (- lt!2067828 (size!38416 input!5597)))))))

(assert (=> b!4999534 (= lt!2067923 (findLongestMatchInnerZipperFastV2!116 lt!2067921 (+ (- lt!2067828 (size!38416 input!5597)) 1) totalInput!1012 lt!2067828))))

(declare-fun c!853214 () Bool)

(assert (=> b!4999534 (= c!853214 (> lt!2067923 0))))

(declare-fun d!1609513 () Bool)

(declare-fun lt!2067922 () Int)

(assert (=> d!1609513 (and (>= lt!2067922 0) (<= lt!2067922 (- lt!2067828 (- lt!2067828 (size!38416 input!5597)))))))

(assert (=> d!1609513 (= lt!2067922 e!3124159)))

(declare-fun c!853213 () Bool)

(assert (=> d!1609513 (= c!853213 e!3124157)))

(declare-fun res!2133396 () Bool)

(assert (=> d!1609513 (=> res!2133396 e!3124157)))

(assert (=> d!1609513 (= res!2133396 (= (- lt!2067828 (size!38416 input!5597)) lt!2067828))))

(declare-fun e!3124158 () Bool)

(assert (=> d!1609513 e!3124158))

(declare-fun res!2133395 () Bool)

(assert (=> d!1609513 (=> (not res!2133395) (not e!3124158))))

(assert (=> d!1609513 (= res!2133395 (>= (- lt!2067828 (size!38416 input!5597)) 0))))

(assert (=> d!1609513 (= (findLongestMatchInnerZipperFastV2!116 z!4183 (- lt!2067828 (size!38416 input!5597)) totalInput!1012 lt!2067828) lt!2067922)))

(declare-fun b!4999538 () Bool)

(assert (=> b!4999538 (= e!3124159 0)))

(declare-fun b!4999539 () Bool)

(assert (=> b!4999539 (= e!3124158 (<= (- lt!2067828 (size!38416 input!5597)) (size!38416 totalInput!1012)))))

(assert (= (and d!1609513 res!2133395) b!4999539))

(assert (= (and d!1609513 (not res!2133396)) b!4999535))

(assert (= (and d!1609513 c!853213) b!4999538))

(assert (= (and d!1609513 (not c!853213)) b!4999534))

(assert (= (and b!4999534 c!853214) b!4999532))

(assert (= (and b!4999534 (not c!853214)) b!4999536))

(assert (= (and b!4999536 c!853215) b!4999537))

(assert (= (and b!4999536 (not c!853215)) b!4999533))

(declare-fun m!6033010 () Bool)

(assert (=> b!4999535 m!6033010))

(declare-fun m!6033012 () Bool)

(assert (=> b!4999536 m!6033012))

(declare-fun m!6033014 () Bool)

(assert (=> b!4999534 m!6033014))

(assert (=> b!4999534 m!6033014))

(declare-fun m!6033016 () Bool)

(assert (=> b!4999534 m!6033016))

(declare-fun m!6033018 () Bool)

(assert (=> b!4999534 m!6033018))

(assert (=> b!4999539 m!6032404))

(assert (=> d!1609365 d!1609513))

(assert (=> d!1609365 d!1609329))

(declare-fun d!1609515 () Bool)

(assert (=> d!1609515 (= (list!18593 (_2!34771 lt!2067827)) (list!18595 (c!853101 (_2!34771 lt!2067827))))))

(declare-fun bs!1185704 () Bool)

(assert (= bs!1185704 d!1609515))

(declare-fun m!6033020 () Bool)

(assert (=> bs!1185704 m!6033020))

(assert (=> d!1609365 d!1609515))

(declare-fun d!1609517 () Bool)

(assert (=> d!1609517 (= (list!18593 (_1!34771 lt!2067827)) (list!18595 (c!853101 (_1!34771 lt!2067827))))))

(declare-fun bs!1185705 () Bool)

(assert (= bs!1185705 d!1609517))

(declare-fun m!6033022 () Bool)

(assert (=> bs!1185705 m!6033022))

(assert (=> d!1609365 d!1609517))

(declare-fun b!4999543 () Bool)

(declare-fun e!3124163 () Bool)

(declare-fun lt!2067924 () List!57932)

(assert (=> b!4999543 (= e!3124163 (or (not (= (list!18593 (_2!34771 lt!2067827)) Nil!57808)) (= lt!2067924 (list!18593 (_1!34771 lt!2067827)))))))

(declare-fun d!1609519 () Bool)

(assert (=> d!1609519 e!3124163))

(declare-fun res!2133398 () Bool)

(assert (=> d!1609519 (=> (not res!2133398) (not e!3124163))))

(assert (=> d!1609519 (= res!2133398 (= (content!10231 lt!2067924) (set.union (content!10231 (list!18593 (_1!34771 lt!2067827))) (content!10231 (list!18593 (_2!34771 lt!2067827))))))))

(declare-fun e!3124162 () List!57932)

(assert (=> d!1609519 (= lt!2067924 e!3124162)))

(declare-fun c!853216 () Bool)

(assert (=> d!1609519 (= c!853216 (is-Nil!57808 (list!18593 (_1!34771 lt!2067827))))))

(assert (=> d!1609519 (= (++!12622 (list!18593 (_1!34771 lt!2067827)) (list!18593 (_2!34771 lt!2067827))) lt!2067924)))

(declare-fun b!4999540 () Bool)

(assert (=> b!4999540 (= e!3124162 (list!18593 (_2!34771 lt!2067827)))))

(declare-fun b!4999541 () Bool)

(assert (=> b!4999541 (= e!3124162 (Cons!57808 (h!64256 (list!18593 (_1!34771 lt!2067827))) (++!12622 (t!370272 (list!18593 (_1!34771 lt!2067827))) (list!18593 (_2!34771 lt!2067827)))))))

(declare-fun b!4999542 () Bool)

(declare-fun res!2133397 () Bool)

(assert (=> b!4999542 (=> (not res!2133397) (not e!3124163))))

(assert (=> b!4999542 (= res!2133397 (= (size!38418 lt!2067924) (+ (size!38418 (list!18593 (_1!34771 lt!2067827))) (size!38418 (list!18593 (_2!34771 lt!2067827))))))))

(assert (= (and d!1609519 c!853216) b!4999540))

(assert (= (and d!1609519 (not c!853216)) b!4999541))

(assert (= (and d!1609519 res!2133398) b!4999542))

(assert (= (and b!4999542 res!2133397) b!4999543))

(declare-fun m!6033024 () Bool)

(assert (=> d!1609519 m!6033024))

(assert (=> d!1609519 m!6032628))

(declare-fun m!6033026 () Bool)

(assert (=> d!1609519 m!6033026))

(assert (=> d!1609519 m!6032636))

(declare-fun m!6033028 () Bool)

(assert (=> d!1609519 m!6033028))

(assert (=> b!4999541 m!6032636))

(declare-fun m!6033030 () Bool)

(assert (=> b!4999541 m!6033030))

(declare-fun m!6033032 () Bool)

(assert (=> b!4999542 m!6033032))

(assert (=> b!4999542 m!6032628))

(declare-fun m!6033034 () Bool)

(assert (=> b!4999542 m!6033034))

(assert (=> b!4999542 m!6032636))

(declare-fun m!6033036 () Bool)

(assert (=> b!4999542 m!6033036))

(assert (=> d!1609365 d!1609519))

(assert (=> d!1609365 d!1609361))

(assert (=> d!1609365 d!1609363))

(declare-fun d!1609521 () Bool)

(declare-fun e!3124164 () Bool)

(assert (=> d!1609521 e!3124164))

(declare-fun res!2133399 () Bool)

(assert (=> d!1609521 (=> res!2133399 e!3124164)))

(declare-fun lt!2067925 () Bool)

(assert (=> d!1609521 (= res!2133399 (not lt!2067925))))

(assert (=> d!1609521 (= lt!2067925 (= (list!18593 input!5597) (drop!2439 (list!18593 totalInput!1012) (- (size!38418 (list!18593 totalInput!1012)) (size!38418 (list!18593 input!5597))))))))

(assert (=> d!1609521 (= (isSuffix!1342 (list!18593 input!5597) (list!18593 totalInput!1012)) lt!2067925)))

(declare-fun b!4999544 () Bool)

(assert (=> b!4999544 (= e!3124164 (>= (size!38418 (list!18593 totalInput!1012)) (size!38418 (list!18593 input!5597))))))

(assert (= (and d!1609521 (not res!2133399)) b!4999544))

(assert (=> d!1609521 m!6032364))

(assert (=> d!1609521 m!6032596))

(assert (=> d!1609521 m!6032366))

(assert (=> d!1609521 m!6032592))

(assert (=> d!1609521 m!6032364))

(declare-fun m!6033038 () Bool)

(assert (=> d!1609521 m!6033038))

(assert (=> b!4999544 m!6032364))

(assert (=> b!4999544 m!6032596))

(assert (=> b!4999544 m!6032366))

(assert (=> b!4999544 m!6032592))

(assert (=> d!1609365 d!1609521))

(declare-fun b!4999545 () Bool)

(declare-fun e!3124166 () List!57932)

(assert (=> b!4999545 (= e!3124166 Nil!57808)))

(declare-fun d!1609523 () Bool)

(declare-fun e!3124168 () Bool)

(assert (=> d!1609523 e!3124168))

(declare-fun res!2133400 () Bool)

(assert (=> d!1609523 (=> (not res!2133400) (not e!3124168))))

(declare-fun lt!2067926 () List!57932)

(assert (=> d!1609523 (= res!2133400 (set.subset (content!10231 lt!2067926) (content!10231 (t!370272 lt!2067705))))))

(assert (=> d!1609523 (= lt!2067926 e!3124166)))

(declare-fun c!853218 () Bool)

(assert (=> d!1609523 (= c!853218 (or (is-Nil!57808 (t!370272 lt!2067705)) (<= (- lt!2067711 1) 0)))))

(assert (=> d!1609523 (= (take!635 (t!370272 lt!2067705) (- lt!2067711 1)) lt!2067926)))

(declare-fun b!4999546 () Bool)

(declare-fun e!3124167 () Int)

(assert (=> b!4999546 (= e!3124168 (= (size!38418 lt!2067926) e!3124167))))

(declare-fun c!853219 () Bool)

(assert (=> b!4999546 (= c!853219 (<= (- lt!2067711 1) 0))))

(declare-fun b!4999547 () Bool)

(assert (=> b!4999547 (= e!3124167 0)))

(declare-fun b!4999548 () Bool)

(assert (=> b!4999548 (= e!3124166 (Cons!57808 (h!64256 (t!370272 lt!2067705)) (take!635 (t!370272 (t!370272 lt!2067705)) (- (- lt!2067711 1) 1))))))

(declare-fun b!4999549 () Bool)

(declare-fun e!3124165 () Int)

(assert (=> b!4999549 (= e!3124165 (- lt!2067711 1))))

(declare-fun b!4999550 () Bool)

(assert (=> b!4999550 (= e!3124165 (size!38418 (t!370272 lt!2067705)))))

(declare-fun b!4999551 () Bool)

(assert (=> b!4999551 (= e!3124167 e!3124165)))

(declare-fun c!853217 () Bool)

(assert (=> b!4999551 (= c!853217 (>= (- lt!2067711 1) (size!38418 (t!370272 lt!2067705))))))

(assert (= (and d!1609523 c!853218) b!4999545))

(assert (= (and d!1609523 (not c!853218)) b!4999548))

(assert (= (and d!1609523 res!2133400) b!4999546))

(assert (= (and b!4999546 c!853219) b!4999547))

(assert (= (and b!4999546 (not c!853219)) b!4999551))

(assert (= (and b!4999551 c!853217) b!4999550))

(assert (= (and b!4999551 (not c!853217)) b!4999549))

(declare-fun m!6033040 () Bool)

(assert (=> b!4999546 m!6033040))

(assert (=> b!4999551 m!6032908))

(assert (=> b!4999550 m!6032908))

(declare-fun m!6033042 () Bool)

(assert (=> b!4999548 m!6033042))

(declare-fun m!6033044 () Bool)

(assert (=> d!1609523 m!6033044))

(declare-fun m!6033046 () Bool)

(assert (=> d!1609523 m!6033046))

(assert (=> b!4999037 d!1609523))

(declare-fun d!1609525 () Bool)

(declare-fun c!853222 () Bool)

(assert (=> d!1609525 (= c!853222 (is-Nil!57810 lt!2067838))))

(declare-fun e!3124171 () (Set Context!6402))

(assert (=> d!1609525 (= (content!10232 lt!2067838) e!3124171)))

(declare-fun b!4999556 () Bool)

(assert (=> b!4999556 (= e!3124171 (as set.empty (Set Context!6402)))))

(declare-fun b!4999557 () Bool)

(assert (=> b!4999557 (= e!3124171 (set.union (set.insert (h!64258 lt!2067838) (as set.empty (Set Context!6402))) (content!10232 (t!370274 lt!2067838))))))

(assert (= (and d!1609525 c!853222) b!4999556))

(assert (= (and d!1609525 (not c!853222)) b!4999557))

(declare-fun m!6033048 () Bool)

(assert (=> b!4999557 m!6033048))

(declare-fun m!6033050 () Bool)

(assert (=> b!4999557 m!6033050))

(assert (=> b!4999137 d!1609525))

(declare-fun d!1609527 () Bool)

(declare-fun c!853223 () Bool)

(assert (=> d!1609527 (= c!853223 (is-Node!15295 (left!42277 (c!853101 totalInput!1012))))))

(declare-fun e!3124172 () Bool)

(assert (=> d!1609527 (= (inv!75916 (left!42277 (c!853101 totalInput!1012))) e!3124172)))

(declare-fun b!4999558 () Bool)

(assert (=> b!4999558 (= e!3124172 (inv!75922 (left!42277 (c!853101 totalInput!1012))))))

(declare-fun b!4999559 () Bool)

(declare-fun e!3124173 () Bool)

(assert (=> b!4999559 (= e!3124172 e!3124173)))

(declare-fun res!2133401 () Bool)

(assert (=> b!4999559 (= res!2133401 (not (is-Leaf!25392 (left!42277 (c!853101 totalInput!1012)))))))

(assert (=> b!4999559 (=> res!2133401 e!3124173)))

(declare-fun b!4999560 () Bool)

(assert (=> b!4999560 (= e!3124173 (inv!75923 (left!42277 (c!853101 totalInput!1012))))))

(assert (= (and d!1609527 c!853223) b!4999558))

(assert (= (and d!1609527 (not c!853223)) b!4999559))

(assert (= (and b!4999559 (not res!2133401)) b!4999560))

(declare-fun m!6033052 () Bool)

(assert (=> b!4999558 m!6033052))

(declare-fun m!6033054 () Bool)

(assert (=> b!4999560 m!6033054))

(assert (=> b!4999211 d!1609527))

(declare-fun d!1609529 () Bool)

(declare-fun c!853224 () Bool)

(assert (=> d!1609529 (= c!853224 (is-Node!15295 (right!42607 (c!853101 totalInput!1012))))))

(declare-fun e!3124174 () Bool)

(assert (=> d!1609529 (= (inv!75916 (right!42607 (c!853101 totalInput!1012))) e!3124174)))

(declare-fun b!4999561 () Bool)

(assert (=> b!4999561 (= e!3124174 (inv!75922 (right!42607 (c!853101 totalInput!1012))))))

(declare-fun b!4999562 () Bool)

(declare-fun e!3124175 () Bool)

(assert (=> b!4999562 (= e!3124174 e!3124175)))

(declare-fun res!2133402 () Bool)

(assert (=> b!4999562 (= res!2133402 (not (is-Leaf!25392 (right!42607 (c!853101 totalInput!1012)))))))

(assert (=> b!4999562 (=> res!2133402 e!3124175)))

(declare-fun b!4999563 () Bool)

(assert (=> b!4999563 (= e!3124175 (inv!75923 (right!42607 (c!853101 totalInput!1012))))))

(assert (= (and d!1609529 c!853224) b!4999561))

(assert (= (and d!1609529 (not c!853224)) b!4999562))

(assert (= (and b!4999562 (not res!2133402)) b!4999563))

(declare-fun m!6033056 () Bool)

(assert (=> b!4999561 m!6033056))

(declare-fun m!6033058 () Bool)

(assert (=> b!4999563 m!6033058))

(assert (=> b!4999211 d!1609529))

(assert (=> b!4999039 d!1609453))

(declare-fun d!1609531 () Bool)

(declare-fun c!853227 () Bool)

(assert (=> d!1609531 (= c!853227 (is-Nil!57808 lt!2067832))))

(declare-fun e!3124178 () (Set C!27802))

(assert (=> d!1609531 (= (content!10231 lt!2067832) e!3124178)))

(declare-fun b!4999568 () Bool)

(assert (=> b!4999568 (= e!3124178 (as set.empty (Set C!27802)))))

(declare-fun b!4999569 () Bool)

(assert (=> b!4999569 (= e!3124178 (set.union (set.insert (h!64256 lt!2067832) (as set.empty (Set C!27802))) (content!10231 (t!370272 lt!2067832))))))

(assert (= (and d!1609531 c!853227) b!4999568))

(assert (= (and d!1609531 (not c!853227)) b!4999569))

(declare-fun m!6033060 () Bool)

(assert (=> b!4999569 m!6033060))

(declare-fun m!6033062 () Bool)

(assert (=> b!4999569 m!6033062))

(assert (=> d!1609375 d!1609531))

(declare-fun d!1609533 () Bool)

(declare-fun c!853228 () Bool)

(assert (=> d!1609533 (= c!853228 (is-Nil!57808 lt!2067708))))

(declare-fun e!3124179 () (Set C!27802))

(assert (=> d!1609533 (= (content!10231 lt!2067708) e!3124179)))

(declare-fun b!4999570 () Bool)

(assert (=> b!4999570 (= e!3124179 (as set.empty (Set C!27802)))))

(declare-fun b!4999571 () Bool)

(assert (=> b!4999571 (= e!3124179 (set.union (set.insert (h!64256 lt!2067708) (as set.empty (Set C!27802))) (content!10231 (t!370272 lt!2067708))))))

(assert (= (and d!1609533 c!853228) b!4999570))

(assert (= (and d!1609533 (not c!853228)) b!4999571))

(declare-fun m!6033064 () Bool)

(assert (=> b!4999571 m!6033064))

(declare-fun m!6033066 () Bool)

(assert (=> b!4999571 m!6033066))

(assert (=> d!1609375 d!1609533))

(declare-fun d!1609535 () Bool)

(declare-fun c!853229 () Bool)

(assert (=> d!1609535 (= c!853229 (is-Nil!57808 lt!2067706))))

(declare-fun e!3124180 () (Set C!27802))

(assert (=> d!1609535 (= (content!10231 lt!2067706) e!3124180)))

(declare-fun b!4999572 () Bool)

(assert (=> b!4999572 (= e!3124180 (as set.empty (Set C!27802)))))

(declare-fun b!4999573 () Bool)

(assert (=> b!4999573 (= e!3124180 (set.union (set.insert (h!64256 lt!2067706) (as set.empty (Set C!27802))) (content!10231 (t!370272 lt!2067706))))))

(assert (= (and d!1609535 c!853229) b!4999572))

(assert (= (and d!1609535 (not c!853229)) b!4999573))

(declare-fun m!6033068 () Bool)

(assert (=> b!4999573 m!6033068))

(declare-fun m!6033070 () Bool)

(assert (=> b!4999573 m!6033070))

(assert (=> d!1609375 d!1609535))

(declare-fun d!1609537 () Bool)

(assert (=> d!1609537 (= (sizeTr!389 lt!2067714 lt!2067808) (+ (size!38418 lt!2067714) lt!2067808))))

(declare-fun lt!2067929 () Unit!148967)

(declare-fun choose!36959 (List!57932 Int) Unit!148967)

(assert (=> d!1609537 (= lt!2067929 (choose!36959 lt!2067714 lt!2067808))))

(assert (=> d!1609537 (= (lemmaSizeTrEqualsSize!388 lt!2067714 lt!2067808) lt!2067929)))

(declare-fun bs!1185706 () Bool)

(assert (= bs!1185706 d!1609537))

(assert (=> bs!1185706 m!6032584))

(assert (=> bs!1185706 m!6032468))

(declare-fun m!6033072 () Bool)

(assert (=> bs!1185706 m!6033072))

(assert (=> d!1609355 d!1609537))

(declare-fun d!1609539 () Bool)

(declare-fun c!853232 () Bool)

(assert (=> d!1609539 (= c!853232 (is-Nil!57808 lt!2067714))))

(declare-fun e!3124183 () Int)

(assert (=> d!1609539 (= (sizeTr!389 lt!2067714 lt!2067808) e!3124183)))

(declare-fun b!4999578 () Bool)

(assert (=> b!4999578 (= e!3124183 lt!2067808)))

(declare-fun b!4999579 () Bool)

(assert (=> b!4999579 (= e!3124183 (sizeTr!389 (t!370272 lt!2067714) (+ lt!2067808 1)))))

(assert (= (and d!1609539 c!853232) b!4999578))

(assert (= (and d!1609539 (not c!853232)) b!4999579))

(declare-fun m!6033074 () Bool)

(assert (=> b!4999579 m!6033074))

(assert (=> d!1609355 d!1609539))

(declare-fun b!4999583 () Bool)

(declare-fun e!3124185 () Bool)

(declare-fun lt!2067930 () List!57932)

(assert (=> b!4999583 (= e!3124185 (or (not (= (_2!34772 lt!2067805) Nil!57808)) (= lt!2067930 (_1!34772 lt!2067805))))))

(declare-fun d!1609541 () Bool)

(assert (=> d!1609541 e!3124185))

(declare-fun res!2133404 () Bool)

(assert (=> d!1609541 (=> (not res!2133404) (not e!3124185))))

(assert (=> d!1609541 (= res!2133404 (= (content!10231 lt!2067930) (set.union (content!10231 (_1!34772 lt!2067805)) (content!10231 (_2!34772 lt!2067805)))))))

(declare-fun e!3124184 () List!57932)

(assert (=> d!1609541 (= lt!2067930 e!3124184)))

(declare-fun c!853233 () Bool)

(assert (=> d!1609541 (= c!853233 (is-Nil!57808 (_1!34772 lt!2067805)))))

(assert (=> d!1609541 (= (++!12622 (_1!34772 lt!2067805) (_2!34772 lt!2067805)) lt!2067930)))

(declare-fun b!4999580 () Bool)

(assert (=> b!4999580 (= e!3124184 (_2!34772 lt!2067805))))

(declare-fun b!4999581 () Bool)

(assert (=> b!4999581 (= e!3124184 (Cons!57808 (h!64256 (_1!34772 lt!2067805)) (++!12622 (t!370272 (_1!34772 lt!2067805)) (_2!34772 lt!2067805))))))

(declare-fun b!4999582 () Bool)

(declare-fun res!2133403 () Bool)

(assert (=> b!4999582 (=> (not res!2133403) (not e!3124185))))

(assert (=> b!4999582 (= res!2133403 (= (size!38418 lt!2067930) (+ (size!38418 (_1!34772 lt!2067805)) (size!38418 (_2!34772 lt!2067805)))))))

(assert (= (and d!1609541 c!853233) b!4999580))

(assert (= (and d!1609541 (not c!853233)) b!4999581))

(assert (= (and d!1609541 res!2133404) b!4999582))

(assert (= (and b!4999582 res!2133403) b!4999583))

(declare-fun m!6033076 () Bool)

(assert (=> d!1609541 m!6033076))

(declare-fun m!6033078 () Bool)

(assert (=> d!1609541 m!6033078))

(declare-fun m!6033080 () Bool)

(assert (=> d!1609541 m!6033080))

(declare-fun m!6033082 () Bool)

(assert (=> b!4999581 m!6033082))

(declare-fun m!6033084 () Bool)

(assert (=> b!4999582 m!6033084))

(declare-fun m!6033086 () Bool)

(assert (=> b!4999582 m!6033086))

(declare-fun m!6033088 () Bool)

(assert (=> b!4999582 m!6033088))

(assert (=> d!1609355 d!1609541))

(assert (=> d!1609355 d!1609391))

(declare-fun d!1609543 () Bool)

(declare-fun c!853234 () Bool)

(assert (=> d!1609543 (= c!853234 (is-Nil!57808 lt!2067804))))

(declare-fun e!3124186 () Int)

(assert (=> d!1609543 (= (sizeTr!389 lt!2067804 lt!2067803) e!3124186)))

(declare-fun b!4999584 () Bool)

(assert (=> b!4999584 (= e!3124186 lt!2067803)))

(declare-fun b!4999585 () Bool)

(assert (=> b!4999585 (= e!3124186 (sizeTr!389 (t!370272 lt!2067804) (+ lt!2067803 1)))))

(assert (= (and d!1609543 c!853234) b!4999584))

(assert (= (and d!1609543 (not c!853234)) b!4999585))

(declare-fun m!6033090 () Bool)

(assert (=> b!4999585 m!6033090))

(assert (=> d!1609355 d!1609543))

(declare-fun d!1609545 () Bool)

(declare-fun lt!2067931 () Int)

(assert (=> d!1609545 (>= lt!2067931 0)))

(declare-fun e!3124187 () Int)

(assert (=> d!1609545 (= lt!2067931 e!3124187)))

(declare-fun c!853235 () Bool)

(assert (=> d!1609545 (= c!853235 (is-Nil!57808 lt!2067804))))

(assert (=> d!1609545 (= (size!38418 lt!2067804) lt!2067931)))

(declare-fun b!4999586 () Bool)

(assert (=> b!4999586 (= e!3124187 0)))

(declare-fun b!4999587 () Bool)

(assert (=> b!4999587 (= e!3124187 (+ 1 (size!38418 (t!370272 lt!2067804))))))

(assert (= (and d!1609545 c!853235) b!4999586))

(assert (= (and d!1609545 (not c!853235)) b!4999587))

(declare-fun m!6033092 () Bool)

(assert (=> b!4999587 m!6033092))

(assert (=> d!1609355 d!1609545))

(declare-fun d!1609547 () Bool)

(assert (=> d!1609547 (= (sizeTr!389 lt!2067804 lt!2067803) (+ (size!38418 lt!2067804) lt!2067803))))

(declare-fun lt!2067932 () Unit!148967)

(assert (=> d!1609547 (= lt!2067932 (choose!36959 lt!2067804 lt!2067803))))

(assert (=> d!1609547 (= (lemmaSizeTrEqualsSize!388 lt!2067804 lt!2067803) lt!2067932)))

(declare-fun bs!1185707 () Bool)

(assert (= bs!1185707 d!1609547))

(assert (=> bs!1185707 m!6032590))

(assert (=> bs!1185707 m!6032580))

(declare-fun m!6033094 () Bool)

(assert (=> bs!1185707 m!6033094))

(assert (=> d!1609355 d!1609547))

(declare-fun bm!348943 () Bool)

(declare-fun call!348955 () List!57932)

(assert (=> bm!348943 (= call!348955 (tail!9853 lt!2067714))))

(declare-fun bm!348944 () Bool)

(declare-fun call!348949 () Unit!148967)

(declare-fun lemmaIsPrefixRefl!3616 (List!57932 List!57932) Unit!148967)

(assert (=> bm!348944 (= call!348949 (lemmaIsPrefixRefl!3616 lt!2067714 lt!2067714))))

(declare-fun b!4999852 () Bool)

(declare-fun e!3124347 () Unit!148967)

(declare-fun Unit!148971 () Unit!148967)

(assert (=> b!4999852 (= e!3124347 Unit!148971)))

(declare-fun d!1609549 () Bool)

(declare-fun e!3124349 () Bool)

(assert (=> d!1609549 e!3124349))

(declare-fun res!2133514 () Bool)

(assert (=> d!1609549 (=> (not res!2133514) (not e!3124349))))

(declare-fun lt!2068019 () tuple2!62938)

(assert (=> d!1609549 (= res!2133514 (= (++!12622 (_1!34772 lt!2068019) (_2!34772 lt!2068019)) lt!2067714))))

(declare-fun e!3124350 () tuple2!62938)

(assert (=> d!1609549 (= lt!2068019 e!3124350)))

(declare-fun c!853315 () Bool)

(declare-fun lostCause!1177 (Regex!13776) Bool)

(assert (=> d!1609549 (= c!853315 (lostCause!1177 r!12727))))

(declare-fun lt!2068045 () Unit!148967)

(declare-fun Unit!148972 () Unit!148967)

(assert (=> d!1609549 (= lt!2068045 Unit!148972)))

(declare-fun getSuffix!3133 (List!57932 List!57932) List!57932)

(assert (=> d!1609549 (= (getSuffix!3133 lt!2067714 Nil!57808) lt!2067714)))

(declare-fun lt!2068022 () Unit!148967)

(declare-fun lt!2068020 () Unit!148967)

(assert (=> d!1609549 (= lt!2068022 lt!2068020)))

(declare-fun lt!2068023 () List!57932)

(assert (=> d!1609549 (= lt!2067714 lt!2068023)))

(declare-fun lemmaSamePrefixThenSameSuffix!2547 (List!57932 List!57932 List!57932 List!57932 List!57932) Unit!148967)

(assert (=> d!1609549 (= lt!2068020 (lemmaSamePrefixThenSameSuffix!2547 Nil!57808 lt!2067714 Nil!57808 lt!2068023 lt!2067714))))

(assert (=> d!1609549 (= lt!2068023 (getSuffix!3133 lt!2067714 Nil!57808))))

(declare-fun lt!2068035 () Unit!148967)

(declare-fun lt!2068027 () Unit!148967)

(assert (=> d!1609549 (= lt!2068035 lt!2068027)))

(assert (=> d!1609549 (isPrefix!5329 Nil!57808 (++!12622 Nil!57808 lt!2067714))))

(assert (=> d!1609549 (= lt!2068027 (lemmaConcatTwoListThenFirstIsPrefix!3427 Nil!57808 lt!2067714))))

(assert (=> d!1609549 (validRegex!6073 r!12727)))

(assert (=> d!1609549 (= (findLongestMatchInner!1965 r!12727 Nil!57808 0 lt!2067714 lt!2067714 (sizeTr!389 lt!2067714 0)) lt!2068019)))

(declare-fun bm!348945 () Bool)

(declare-fun call!348952 () C!27802)

(assert (=> bm!348945 (= call!348952 (head!10720 lt!2067714))))

(declare-fun bm!348946 () Bool)

(declare-fun call!348953 () Bool)

(assert (=> bm!348946 (= call!348953 (nullable!4678 r!12727))))

(declare-fun b!4999853 () Bool)

(declare-fun e!3124348 () tuple2!62938)

(declare-fun call!348950 () tuple2!62938)

(assert (=> b!4999853 (= e!3124348 call!348950)))

(declare-fun b!4999854 () Bool)

(declare-fun e!3124345 () tuple2!62938)

(assert (=> b!4999854 (= e!3124345 (tuple2!62939 Nil!57808 lt!2067714))))

(declare-fun b!4999855 () Bool)

(declare-fun c!853317 () Bool)

(assert (=> b!4999855 (= c!853317 call!348953)))

(declare-fun lt!2068036 () Unit!148967)

(declare-fun lt!2068032 () Unit!148967)

(assert (=> b!4999855 (= lt!2068036 lt!2068032)))

(declare-fun lt!2068038 () C!27802)

(declare-fun lt!2068033 () List!57932)

(assert (=> b!4999855 (= (++!12622 (++!12622 Nil!57808 (Cons!57808 lt!2068038 Nil!57808)) lt!2068033) lt!2067714)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1489 (List!57932 C!27802 List!57932 List!57932) Unit!148967)

(assert (=> b!4999855 (= lt!2068032 (lemmaMoveElementToOtherListKeepsConcatEq!1489 Nil!57808 lt!2068038 lt!2068033 lt!2067714))))

(assert (=> b!4999855 (= lt!2068033 (tail!9853 lt!2067714))))

(assert (=> b!4999855 (= lt!2068038 (head!10720 lt!2067714))))

(declare-fun lt!2068031 () Unit!148967)

(declare-fun lt!2068030 () Unit!148967)

(assert (=> b!4999855 (= lt!2068031 lt!2068030)))

(assert (=> b!4999855 (isPrefix!5329 (++!12622 Nil!57808 (Cons!57808 (head!10720 (getSuffix!3133 lt!2067714 Nil!57808)) Nil!57808)) lt!2067714)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!878 (List!57932 List!57932) Unit!148967)

(assert (=> b!4999855 (= lt!2068030 (lemmaAddHeadSuffixToPrefixStillPrefix!878 Nil!57808 lt!2067714))))

(declare-fun lt!2068028 () Unit!148967)

(declare-fun lt!2068024 () Unit!148967)

(assert (=> b!4999855 (= lt!2068028 lt!2068024)))

(assert (=> b!4999855 (= lt!2068024 (lemmaAddHeadSuffixToPrefixStillPrefix!878 Nil!57808 lt!2067714))))

(declare-fun lt!2068029 () List!57932)

(assert (=> b!4999855 (= lt!2068029 (++!12622 Nil!57808 (Cons!57808 (head!10720 lt!2067714) Nil!57808)))))

(declare-fun lt!2068034 () Unit!148967)

(assert (=> b!4999855 (= lt!2068034 e!3124347)))

(declare-fun c!853316 () Bool)

(assert (=> b!4999855 (= c!853316 (= (size!38418 Nil!57808) (size!38418 lt!2067714)))))

(declare-fun lt!2068041 () Unit!148967)

(declare-fun lt!2068037 () Unit!148967)

(assert (=> b!4999855 (= lt!2068041 lt!2068037)))

(assert (=> b!4999855 (<= (size!38418 Nil!57808) (size!38418 lt!2067714))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!804 (List!57932 List!57932) Unit!148967)

(assert (=> b!4999855 (= lt!2068037 (lemmaIsPrefixThenSmallerEqSize!804 Nil!57808 lt!2067714))))

(declare-fun e!3124346 () tuple2!62938)

(assert (=> b!4999855 (= e!3124346 e!3124348)))

(declare-fun b!4999856 () Bool)

(assert (=> b!4999856 (= e!3124350 (tuple2!62939 Nil!57808 lt!2067714))))

(declare-fun b!4999857 () Bool)

(assert (=> b!4999857 (= e!3124345 (tuple2!62939 Nil!57808 Nil!57808))))

(declare-fun b!4999858 () Bool)

(declare-fun Unit!148973 () Unit!148967)

(assert (=> b!4999858 (= e!3124347 Unit!148973)))

(declare-fun lt!2068021 () Unit!148967)

(assert (=> b!4999858 (= lt!2068021 call!348949)))

(declare-fun call!348951 () Bool)

(assert (=> b!4999858 call!348951))

(declare-fun lt!2068046 () Unit!148967)

(assert (=> b!4999858 (= lt!2068046 lt!2068021)))

(declare-fun lt!2068042 () Unit!148967)

(declare-fun call!348954 () Unit!148967)

(assert (=> b!4999858 (= lt!2068042 call!348954)))

(assert (=> b!4999858 (= lt!2067714 Nil!57808)))

(declare-fun lt!2068040 () Unit!148967)

(assert (=> b!4999858 (= lt!2068040 lt!2068042)))

(assert (=> b!4999858 false))

(declare-fun b!4999859 () Bool)

(declare-fun e!3124342 () tuple2!62938)

(assert (=> b!4999859 (= e!3124348 e!3124342)))

(declare-fun lt!2068043 () tuple2!62938)

(assert (=> b!4999859 (= lt!2068043 call!348950)))

(declare-fun c!853312 () Bool)

(declare-fun isEmpty!31287 (List!57932) Bool)

(assert (=> b!4999859 (= c!853312 (isEmpty!31287 (_1!34772 lt!2068043)))))

(declare-fun bm!348947 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1264 (List!57932 List!57932 List!57932) Unit!148967)

(assert (=> bm!348947 (= call!348954 (lemmaIsPrefixSameLengthThenSameList!1264 lt!2067714 Nil!57808 lt!2067714))))

(declare-fun bm!348948 () Bool)

(declare-fun call!348948 () Regex!13776)

(declare-fun derivativeStep!3968 (Regex!13776 C!27802) Regex!13776)

(assert (=> bm!348948 (= call!348948 (derivativeStep!3968 r!12727 call!348952))))

(declare-fun b!4999860 () Bool)

(assert (=> b!4999860 (= e!3124350 e!3124346)))

(declare-fun c!853310 () Bool)

(assert (=> b!4999860 (= c!853310 (= 0 (sizeTr!389 lt!2067714 0)))))

(declare-fun b!4999861 () Bool)

(assert (=> b!4999861 (= e!3124342 (tuple2!62939 Nil!57808 lt!2067714))))

(declare-fun b!4999862 () Bool)

(declare-fun e!3124351 () Bool)

(assert (=> b!4999862 (= e!3124351 (>= (size!38418 (_1!34772 lt!2068019)) (size!38418 Nil!57808)))))

(declare-fun b!4999863 () Bool)

(declare-fun c!853311 () Bool)

(assert (=> b!4999863 (= c!853311 call!348953)))

(declare-fun lt!2068044 () Unit!148967)

(declare-fun lt!2068025 () Unit!148967)

(assert (=> b!4999863 (= lt!2068044 lt!2068025)))

(assert (=> b!4999863 (= lt!2067714 Nil!57808)))

(assert (=> b!4999863 (= lt!2068025 call!348954)))

(declare-fun lt!2068026 () Unit!148967)

(declare-fun lt!2068039 () Unit!148967)

(assert (=> b!4999863 (= lt!2068026 lt!2068039)))

(assert (=> b!4999863 call!348951))

(assert (=> b!4999863 (= lt!2068039 call!348949)))

(assert (=> b!4999863 (= e!3124346 e!3124345)))

(declare-fun bm!348949 () Bool)

(assert (=> bm!348949 (= call!348950 (findLongestMatchInner!1965 call!348948 lt!2068029 (+ 0 1) call!348955 lt!2067714 (sizeTr!389 lt!2067714 0)))))

(declare-fun b!4999864 () Bool)

(assert (=> b!4999864 (= e!3124349 e!3124351)))

(declare-fun res!2133515 () Bool)

(assert (=> b!4999864 (=> res!2133515 e!3124351)))

(assert (=> b!4999864 (= res!2133515 (isEmpty!31287 (_1!34772 lt!2068019)))))

(declare-fun bm!348950 () Bool)

(assert (=> bm!348950 (= call!348951 (isPrefix!5329 lt!2067714 lt!2067714))))

(declare-fun b!4999865 () Bool)

(assert (=> b!4999865 (= e!3124342 lt!2068043)))

(assert (= (and d!1609549 c!853315) b!4999856))

(assert (= (and d!1609549 (not c!853315)) b!4999860))

(assert (= (and b!4999860 c!853310) b!4999863))

(assert (= (and b!4999860 (not c!853310)) b!4999855))

(assert (= (and b!4999863 c!853311) b!4999857))

(assert (= (and b!4999863 (not c!853311)) b!4999854))

(assert (= (and b!4999855 c!853316) b!4999858))

(assert (= (and b!4999855 (not c!853316)) b!4999852))

(assert (= (and b!4999855 c!853317) b!4999859))

(assert (= (and b!4999855 (not c!853317)) b!4999853))

(assert (= (and b!4999859 c!853312) b!4999861))

(assert (= (and b!4999859 (not c!853312)) b!4999865))

(assert (= (or b!4999859 b!4999853) bm!348945))

(assert (= (or b!4999859 b!4999853) bm!348943))

(assert (= (or b!4999859 b!4999853) bm!348948))

(assert (= (or b!4999859 b!4999853) bm!348949))

(assert (= (or b!4999863 b!4999855) bm!348946))

(assert (= (or b!4999863 b!4999858) bm!348950))

(assert (= (or b!4999863 b!4999858) bm!348947))

(assert (= (or b!4999863 b!4999858) bm!348944))

(assert (= (and d!1609549 res!2133514) b!4999864))

(assert (= (and b!4999864 (not res!2133515)) b!4999862))

(declare-fun m!6033360 () Bool)

(assert (=> b!4999859 m!6033360))

(declare-fun m!6033362 () Bool)

(assert (=> bm!348944 m!6033362))

(declare-fun m!6033364 () Bool)

(assert (=> bm!348943 m!6033364))

(declare-fun m!6033366 () Bool)

(assert (=> bm!348948 m!6033366))

(assert (=> bm!348949 m!6032576))

(declare-fun m!6033368 () Bool)

(assert (=> bm!348949 m!6033368))

(declare-fun m!6033370 () Bool)

(assert (=> bm!348950 m!6033370))

(declare-fun m!6033372 () Bool)

(assert (=> bm!348947 m!6033372))

(declare-fun m!6033374 () Bool)

(assert (=> bm!348945 m!6033374))

(declare-fun m!6033376 () Bool)

(assert (=> b!4999864 m!6033376))

(declare-fun m!6033378 () Bool)

(assert (=> bm!348946 m!6033378))

(declare-fun m!6033380 () Bool)

(assert (=> b!4999862 m!6033380))

(declare-fun m!6033382 () Bool)

(assert (=> b!4999862 m!6033382))

(assert (=> b!4999855 m!6033382))

(declare-fun m!6033384 () Bool)

(assert (=> b!4999855 m!6033384))

(declare-fun m!6033386 () Bool)

(assert (=> b!4999855 m!6033386))

(assert (=> b!4999855 m!6032468))

(assert (=> b!4999855 m!6033374))

(declare-fun m!6033388 () Bool)

(assert (=> b!4999855 m!6033388))

(declare-fun m!6033390 () Bool)

(assert (=> b!4999855 m!6033390))

(assert (=> b!4999855 m!6033388))

(declare-fun m!6033392 () Bool)

(assert (=> b!4999855 m!6033392))

(declare-fun m!6033394 () Bool)

(assert (=> b!4999855 m!6033394))

(declare-fun m!6033396 () Bool)

(assert (=> b!4999855 m!6033396))

(assert (=> b!4999855 m!6033364))

(declare-fun m!6033398 () Bool)

(assert (=> b!4999855 m!6033398))

(declare-fun m!6033400 () Bool)

(assert (=> b!4999855 m!6033400))

(declare-fun m!6033402 () Bool)

(assert (=> b!4999855 m!6033402))

(assert (=> b!4999855 m!6033394))

(assert (=> b!4999855 m!6033398))

(assert (=> d!1609549 m!6032368))

(declare-fun m!6033404 () Bool)

(assert (=> d!1609549 m!6033404))

(declare-fun m!6033406 () Bool)

(assert (=> d!1609549 m!6033406))

(declare-fun m!6033408 () Bool)

(assert (=> d!1609549 m!6033408))

(declare-fun m!6033410 () Bool)

(assert (=> d!1609549 m!6033410))

(declare-fun m!6033412 () Bool)

(assert (=> d!1609549 m!6033412))

(assert (=> d!1609549 m!6033406))

(declare-fun m!6033414 () Bool)

(assert (=> d!1609549 m!6033414))

(assert (=> d!1609549 m!6033388))

(assert (=> d!1609355 d!1609549))

(assert (=> d!1609355 d!1609495))

(declare-fun d!1609687 () Bool)

(declare-fun c!853322 () Bool)

(assert (=> d!1609687 (= c!853322 (is-Nil!57808 lt!2067714))))

(declare-fun e!3124358 () Int)

(assert (=> d!1609687 (= (sizeTr!389 lt!2067714 0) e!3124358)))

(declare-fun b!4999876 () Bool)

(assert (=> b!4999876 (= e!3124358 0)))

(declare-fun b!4999877 () Bool)

(assert (=> b!4999877 (= e!3124358 (sizeTr!389 (t!370272 lt!2067714) (+ 0 1)))))

(assert (= (and d!1609687 c!853322) b!4999876))

(assert (= (and d!1609687 (not c!853322)) b!4999877))

(declare-fun m!6033416 () Bool)

(assert (=> b!4999877 m!6033416))

(assert (=> d!1609355 d!1609687))

(declare-fun d!1609689 () Bool)

(declare-fun res!2133520 () Bool)

(declare-fun e!3124360 () Bool)

(assert (=> d!1609689 (=> res!2133520 e!3124360)))

(assert (=> d!1609689 (= res!2133520 (is-ElementMatch!13776 (ite c!853137 (reg!14105 r!12727) (ite c!853138 (regOne!28065 r!12727) (regTwo!28064 r!12727)))))))

(assert (=> d!1609689 (= (validRegex!6073 (ite c!853137 (reg!14105 r!12727) (ite c!853138 (regOne!28065 r!12727) (regTwo!28064 r!12727)))) e!3124360)))

(declare-fun b!4999878 () Bool)

(declare-fun e!3124362 () Bool)

(declare-fun call!348957 () Bool)

(assert (=> b!4999878 (= e!3124362 call!348957)))

(declare-fun b!4999879 () Bool)

(declare-fun e!3124363 () Bool)

(assert (=> b!4999879 (= e!3124363 e!3124362)))

(declare-fun res!2133518 () Bool)

(assert (=> b!4999879 (=> (not res!2133518) (not e!3124362))))

(declare-fun call!348958 () Bool)

(assert (=> b!4999879 (= res!2133518 call!348958)))

(declare-fun b!4999880 () Bool)

(declare-fun e!3124361 () Bool)

(assert (=> b!4999880 (= e!3124360 e!3124361)))

(declare-fun c!853323 () Bool)

(assert (=> b!4999880 (= c!853323 (is-Star!13776 (ite c!853137 (reg!14105 r!12727) (ite c!853138 (regOne!28065 r!12727) (regTwo!28064 r!12727)))))))

(declare-fun b!4999881 () Bool)

(declare-fun res!2133521 () Bool)

(assert (=> b!4999881 (=> res!2133521 e!3124363)))

(assert (=> b!4999881 (= res!2133521 (not (is-Concat!22569 (ite c!853137 (reg!14105 r!12727) (ite c!853138 (regOne!28065 r!12727) (regTwo!28064 r!12727))))))))

(declare-fun e!3124365 () Bool)

(assert (=> b!4999881 (= e!3124365 e!3124363)))

(declare-fun c!853324 () Bool)

(declare-fun bm!348951 () Bool)

(assert (=> bm!348951 (= call!348958 (validRegex!6073 (ite c!853324 (regTwo!28065 (ite c!853137 (reg!14105 r!12727) (ite c!853138 (regOne!28065 r!12727) (regTwo!28064 r!12727)))) (regOne!28064 (ite c!853137 (reg!14105 r!12727) (ite c!853138 (regOne!28065 r!12727) (regTwo!28064 r!12727)))))))))

(declare-fun b!4999882 () Bool)

(assert (=> b!4999882 (= e!3124361 e!3124365)))

(assert (=> b!4999882 (= c!853324 (is-Union!13776 (ite c!853137 (reg!14105 r!12727) (ite c!853138 (regOne!28065 r!12727) (regTwo!28064 r!12727)))))))

(declare-fun b!4999883 () Bool)

(declare-fun e!3124359 () Bool)

(assert (=> b!4999883 (= e!3124361 e!3124359)))

(declare-fun res!2133522 () Bool)

(assert (=> b!4999883 (= res!2133522 (not (nullable!4678 (reg!14105 (ite c!853137 (reg!14105 r!12727) (ite c!853138 (regOne!28065 r!12727) (regTwo!28064 r!12727)))))))))

(assert (=> b!4999883 (=> (not res!2133522) (not e!3124359))))

(declare-fun bm!348952 () Bool)

(declare-fun call!348956 () Bool)

(assert (=> bm!348952 (= call!348957 call!348956)))

(declare-fun b!4999884 () Bool)

(declare-fun res!2133519 () Bool)

(declare-fun e!3124364 () Bool)

(assert (=> b!4999884 (=> (not res!2133519) (not e!3124364))))

(assert (=> b!4999884 (= res!2133519 call!348957)))

(assert (=> b!4999884 (= e!3124365 e!3124364)))

(declare-fun bm!348953 () Bool)

(assert (=> bm!348953 (= call!348956 (validRegex!6073 (ite c!853323 (reg!14105 (ite c!853137 (reg!14105 r!12727) (ite c!853138 (regOne!28065 r!12727) (regTwo!28064 r!12727)))) (ite c!853324 (regOne!28065 (ite c!853137 (reg!14105 r!12727) (ite c!853138 (regOne!28065 r!12727) (regTwo!28064 r!12727)))) (regTwo!28064 (ite c!853137 (reg!14105 r!12727) (ite c!853138 (regOne!28065 r!12727) (regTwo!28064 r!12727))))))))))

(declare-fun b!4999885 () Bool)

(assert (=> b!4999885 (= e!3124364 call!348958)))

(declare-fun b!4999886 () Bool)

(assert (=> b!4999886 (= e!3124359 call!348956)))

(assert (= (and d!1609689 (not res!2133520)) b!4999880))

(assert (= (and b!4999880 c!853323) b!4999883))

(assert (= (and b!4999880 (not c!853323)) b!4999882))

(assert (= (and b!4999883 res!2133522) b!4999886))

(assert (= (and b!4999882 c!853324) b!4999884))

(assert (= (and b!4999882 (not c!853324)) b!4999881))

(assert (= (and b!4999884 res!2133519) b!4999885))

(assert (= (and b!4999881 (not res!2133521)) b!4999879))

(assert (= (and b!4999879 res!2133518) b!4999878))

(assert (= (or b!4999885 b!4999879) bm!348951))

(assert (= (or b!4999884 b!4999878) bm!348952))

(assert (= (or b!4999886 bm!348952) bm!348953))

(declare-fun m!6033438 () Bool)

(assert (=> bm!348951 m!6033438))

(declare-fun m!6033440 () Bool)

(assert (=> b!4999883 m!6033440))

(declare-fun m!6033442 () Bool)

(assert (=> bm!348953 m!6033442))

(assert (=> bm!348899 d!1609689))

(declare-fun d!1609693 () Bool)

(declare-fun c!853325 () Bool)

(assert (=> d!1609693 (= c!853325 (is-Nil!57808 lt!2067839))))

(declare-fun e!3124366 () (Set C!27802))

(assert (=> d!1609693 (= (content!10231 lt!2067839) e!3124366)))

(declare-fun b!4999887 () Bool)

(assert (=> b!4999887 (= e!3124366 (as set.empty (Set C!27802)))))

(declare-fun b!4999888 () Bool)

(assert (=> b!4999888 (= e!3124366 (set.union (set.insert (h!64256 lt!2067839) (as set.empty (Set C!27802))) (content!10231 (t!370272 lt!2067839))))))

(assert (= (and d!1609693 c!853325) b!4999887))

(assert (= (and d!1609693 (not c!853325)) b!4999888))

(declare-fun m!6033444 () Bool)

(assert (=> b!4999888 m!6033444))

(declare-fun m!6033446 () Bool)

(assert (=> b!4999888 m!6033446))

(assert (=> d!1609397 d!1609693))

(declare-fun d!1609695 () Bool)

(declare-fun c!853326 () Bool)

(assert (=> d!1609695 (= c!853326 (is-Nil!57808 (_1!34772 lt!2067709)))))

(declare-fun e!3124367 () (Set C!27802))

(assert (=> d!1609695 (= (content!10231 (_1!34772 lt!2067709)) e!3124367)))

(declare-fun b!4999889 () Bool)

(assert (=> b!4999889 (= e!3124367 (as set.empty (Set C!27802)))))

(declare-fun b!4999890 () Bool)

(assert (=> b!4999890 (= e!3124367 (set.union (set.insert (h!64256 (_1!34772 lt!2067709)) (as set.empty (Set C!27802))) (content!10231 (t!370272 (_1!34772 lt!2067709)))))))

(assert (= (and d!1609695 c!853326) b!4999889))

(assert (= (and d!1609695 (not c!853326)) b!4999890))

(declare-fun m!6033448 () Bool)

(assert (=> b!4999890 m!6033448))

(declare-fun m!6033450 () Bool)

(assert (=> b!4999890 m!6033450))

(assert (=> d!1609397 d!1609695))

(declare-fun d!1609697 () Bool)

(declare-fun c!853327 () Bool)

(assert (=> d!1609697 (= c!853327 (is-Nil!57808 (_2!34772 lt!2067709)))))

(declare-fun e!3124368 () (Set C!27802))

(assert (=> d!1609697 (= (content!10231 (_2!34772 lt!2067709)) e!3124368)))

(declare-fun b!4999891 () Bool)

(assert (=> b!4999891 (= e!3124368 (as set.empty (Set C!27802)))))

(declare-fun b!4999892 () Bool)

(assert (=> b!4999892 (= e!3124368 (set.union (set.insert (h!64256 (_2!34772 lt!2067709)) (as set.empty (Set C!27802))) (content!10231 (t!370272 (_2!34772 lt!2067709)))))))

(assert (= (and d!1609697 c!853327) b!4999891))

(assert (= (and d!1609697 (not c!853327)) b!4999892))

(declare-fun m!6033452 () Bool)

(assert (=> b!4999892 m!6033452))

(declare-fun m!6033454 () Bool)

(assert (=> b!4999892 m!6033454))

(assert (=> d!1609397 d!1609697))

(declare-fun e!3124370 () Bool)

(declare-fun lt!2068048 () List!57932)

(declare-fun b!4999896 () Bool)

(assert (=> b!4999896 (= e!3124370 (or (not (= lt!2067706 Nil!57808)) (= lt!2068048 (t!370272 lt!2067708))))))

(declare-fun d!1609699 () Bool)

(assert (=> d!1609699 e!3124370))

(declare-fun res!2133524 () Bool)

(assert (=> d!1609699 (=> (not res!2133524) (not e!3124370))))

(assert (=> d!1609699 (= res!2133524 (= (content!10231 lt!2068048) (set.union (content!10231 (t!370272 lt!2067708)) (content!10231 lt!2067706))))))

(declare-fun e!3124369 () List!57932)

(assert (=> d!1609699 (= lt!2068048 e!3124369)))

(declare-fun c!853328 () Bool)

(assert (=> d!1609699 (= c!853328 (is-Nil!57808 (t!370272 lt!2067708)))))

(assert (=> d!1609699 (= (++!12622 (t!370272 lt!2067708) lt!2067706) lt!2068048)))

(declare-fun b!4999893 () Bool)

(assert (=> b!4999893 (= e!3124369 lt!2067706)))

(declare-fun b!4999894 () Bool)

(assert (=> b!4999894 (= e!3124369 (Cons!57808 (h!64256 (t!370272 lt!2067708)) (++!12622 (t!370272 (t!370272 lt!2067708)) lt!2067706)))))

(declare-fun b!4999895 () Bool)

(declare-fun res!2133523 () Bool)

(assert (=> b!4999895 (=> (not res!2133523) (not e!3124370))))

(assert (=> b!4999895 (= res!2133523 (= (size!38418 lt!2068048) (+ (size!38418 (t!370272 lt!2067708)) (size!38418 lt!2067706))))))

(assert (= (and d!1609699 c!853328) b!4999893))

(assert (= (and d!1609699 (not c!853328)) b!4999894))

(assert (= (and d!1609699 res!2133524) b!4999895))

(assert (= (and b!4999895 res!2133523) b!4999896))

(declare-fun m!6033456 () Bool)

(assert (=> d!1609699 m!6033456))

(assert (=> d!1609699 m!6033066))

(assert (=> d!1609699 m!6032652))

(declare-fun m!6033458 () Bool)

(assert (=> b!4999894 m!6033458))

(declare-fun m!6033460 () Bool)

(assert (=> b!4999895 m!6033460))

(assert (=> b!4999895 m!6032926))

(assert (=> b!4999895 m!6032658))

(assert (=> b!4999123 d!1609699))

(declare-fun d!1609701 () Bool)

(declare-fun res!2133529 () Bool)

(declare-fun e!3124378 () Bool)

(assert (=> d!1609701 (=> res!2133529 e!3124378)))

(assert (=> d!1609701 (= res!2133529 (is-Nil!57809 (exprs!3701 setElem!28323)))))

(assert (=> d!1609701 (= (forall!13355 (exprs!3701 setElem!28323) lambda!248325) e!3124378)))

(declare-fun b!4999907 () Bool)

(declare-fun e!3124379 () Bool)

(assert (=> b!4999907 (= e!3124378 e!3124379)))

(declare-fun res!2133530 () Bool)

(assert (=> b!4999907 (=> (not res!2133530) (not e!3124379))))

(declare-fun dynLambda!23515 (Int Regex!13776) Bool)

(assert (=> b!4999907 (= res!2133530 (dynLambda!23515 lambda!248325 (h!64257 (exprs!3701 setElem!28323))))))

(declare-fun b!4999908 () Bool)

(assert (=> b!4999908 (= e!3124379 (forall!13355 (t!370273 (exprs!3701 setElem!28323)) lambda!248325))))

(assert (= (and d!1609701 (not res!2133529)) b!4999907))

(assert (= (and b!4999907 res!2133530) b!4999908))

(declare-fun b_lambda!198611 () Bool)

(assert (=> (not b_lambda!198611) (not b!4999907)))

(declare-fun m!6033462 () Bool)

(assert (=> b!4999907 m!6033462))

(declare-fun m!6033464 () Bool)

(assert (=> b!4999908 m!6033464))

(assert (=> d!1609381 d!1609701))

(declare-fun b!4999912 () Bool)

(declare-fun e!3124380 () Bool)

(assert (=> b!4999912 (= e!3124380 (>= (size!38418 (tail!9853 lt!2067712)) (size!38418 (tail!9853 (_1!34772 lt!2067709)))))))

(declare-fun b!4999911 () Bool)

(declare-fun e!3124381 () Bool)

(assert (=> b!4999911 (= e!3124381 (isPrefix!5329 (tail!9853 (tail!9853 (_1!34772 lt!2067709))) (tail!9853 (tail!9853 lt!2067712))))))

(declare-fun b!4999910 () Bool)

(declare-fun res!2133534 () Bool)

(assert (=> b!4999910 (=> (not res!2133534) (not e!3124381))))

(assert (=> b!4999910 (= res!2133534 (= (head!10720 (tail!9853 (_1!34772 lt!2067709))) (head!10720 (tail!9853 lt!2067712))))))

(declare-fun b!4999909 () Bool)

(declare-fun e!3124382 () Bool)

(assert (=> b!4999909 (= e!3124382 e!3124381)))

(declare-fun res!2133532 () Bool)

(assert (=> b!4999909 (=> (not res!2133532) (not e!3124381))))

(assert (=> b!4999909 (= res!2133532 (not (is-Nil!57808 (tail!9853 lt!2067712))))))

(declare-fun d!1609703 () Bool)

(assert (=> d!1609703 e!3124380))

(declare-fun res!2133531 () Bool)

(assert (=> d!1609703 (=> res!2133531 e!3124380)))

(declare-fun lt!2068052 () Bool)

(assert (=> d!1609703 (= res!2133531 (not lt!2068052))))

(assert (=> d!1609703 (= lt!2068052 e!3124382)))

(declare-fun res!2133533 () Bool)

(assert (=> d!1609703 (=> res!2133533 e!3124382)))

(assert (=> d!1609703 (= res!2133533 (is-Nil!57808 (tail!9853 (_1!34772 lt!2067709))))))

(assert (=> d!1609703 (= (isPrefix!5329 (tail!9853 (_1!34772 lt!2067709)) (tail!9853 lt!2067712)) lt!2068052)))

(assert (= (and d!1609703 (not res!2133533)) b!4999909))

(assert (= (and b!4999909 res!2133532) b!4999910))

(assert (= (and b!4999910 res!2133534) b!4999911))

(assert (= (and d!1609703 (not res!2133531)) b!4999912))

(assert (=> b!4999912 m!6032530))

(declare-fun m!6033472 () Bool)

(assert (=> b!4999912 m!6033472))

(assert (=> b!4999912 m!6032528))

(declare-fun m!6033474 () Bool)

(assert (=> b!4999912 m!6033474))

(assert (=> b!4999911 m!6032528))

(declare-fun m!6033476 () Bool)

(assert (=> b!4999911 m!6033476))

(assert (=> b!4999911 m!6032530))

(declare-fun m!6033478 () Bool)

(assert (=> b!4999911 m!6033478))

(assert (=> b!4999911 m!6033476))

(assert (=> b!4999911 m!6033478))

(declare-fun m!6033480 () Bool)

(assert (=> b!4999911 m!6033480))

(assert (=> b!4999910 m!6032528))

(declare-fun m!6033486 () Bool)

(assert (=> b!4999910 m!6033486))

(assert (=> b!4999910 m!6032530))

(declare-fun m!6033488 () Bool)

(assert (=> b!4999910 m!6033488))

(assert (=> b!4999067 d!1609703))

(declare-fun d!1609707 () Bool)

(assert (=> d!1609707 (= (tail!9853 (_1!34772 lt!2067709)) (t!370272 (_1!34772 lt!2067709)))))

(assert (=> b!4999067 d!1609707))

(declare-fun d!1609711 () Bool)

(assert (=> d!1609711 (= (tail!9853 lt!2067712) (t!370272 lt!2067712))))

(assert (=> b!4999067 d!1609711))

(assert (=> b!4998970 d!1609389))

(declare-fun d!1609713 () Bool)

(declare-fun lt!2068053 () Int)

(assert (=> d!1609713 (>= lt!2068053 0)))

(declare-fun e!3124385 () Int)

(assert (=> d!1609713 (= lt!2068053 e!3124385)))

(declare-fun c!853332 () Bool)

(assert (=> d!1609713 (= c!853332 (is-Nil!57808 (list!18593 input!5597)))))

(assert (=> d!1609713 (= (size!38418 (list!18593 input!5597)) lt!2068053)))

(declare-fun b!4999918 () Bool)

(assert (=> b!4999918 (= e!3124385 0)))

(declare-fun b!4999919 () Bool)

(assert (=> b!4999919 (= e!3124385 (+ 1 (size!38418 (t!370272 (list!18593 input!5597)))))))

(assert (= (and d!1609713 c!853332) b!4999918))

(assert (= (and d!1609713 (not c!853332)) b!4999919))

(declare-fun m!6033492 () Bool)

(assert (=> b!4999919 m!6033492))

(assert (=> d!1609361 d!1609713))

(assert (=> d!1609361 d!1609329))

(declare-fun d!1609715 () Bool)

(declare-fun lt!2068054 () Int)

(assert (=> d!1609715 (= lt!2068054 (size!38418 (list!18595 (c!853101 input!5597))))))

(assert (=> d!1609715 (= lt!2068054 (ite (is-Empty!15295 (c!853101 input!5597)) 0 (ite (is-Leaf!25392 (c!853101 input!5597)) (csize!30821 (c!853101 input!5597)) (csize!30820 (c!853101 input!5597)))))))

(assert (=> d!1609715 (= (size!38419 (c!853101 input!5597)) lt!2068054)))

(declare-fun bs!1185722 () Bool)

(assert (= bs!1185722 d!1609715))

(assert (=> bs!1185722 m!6032474))

(assert (=> bs!1185722 m!6032474))

(declare-fun m!6033496 () Bool)

(assert (=> bs!1185722 m!6033496))

(assert (=> d!1609361 d!1609715))

(declare-fun d!1609719 () Bool)

(assert (=> d!1609719 (= (head!10720 (take!635 lt!2067705 lt!2067711)) (h!64256 (take!635 lt!2067705 lt!2067711)))))

(assert (=> b!4999054 d!1609719))

(declare-fun d!1609721 () Bool)

(assert (=> d!1609721 (= (head!10720 lt!2067705) (h!64256 lt!2067705))))

(assert (=> b!4999054 d!1609721))

(assert (=> b!4999056 d!1609453))

(declare-fun d!1609723 () Bool)

(declare-fun lt!2068056 () Int)

(assert (=> d!1609723 (>= lt!2068056 0)))

(declare-fun e!3124388 () Int)

(assert (=> d!1609723 (= lt!2068056 e!3124388)))

(declare-fun c!853334 () Bool)

(assert (=> d!1609723 (= c!853334 (is-Nil!57808 (take!635 lt!2067705 lt!2067711)))))

(assert (=> d!1609723 (= (size!38418 (take!635 lt!2067705 lt!2067711)) lt!2068056)))

(declare-fun b!4999924 () Bool)

(assert (=> b!4999924 (= e!3124388 0)))

(declare-fun b!4999925 () Bool)

(assert (=> b!4999925 (= e!3124388 (+ 1 (size!38418 (t!370272 (take!635 lt!2067705 lt!2067711)))))))

(assert (= (and d!1609723 c!853334) b!4999924))

(assert (= (and d!1609723 (not c!853334)) b!4999925))

(declare-fun m!6033502 () Bool)

(assert (=> b!4999925 m!6033502))

(assert (=> b!4999056 d!1609723))

(declare-fun d!1609725 () Bool)

(declare-fun res!2133546 () Bool)

(declare-fun e!3124397 () Bool)

(assert (=> d!1609725 (=> res!2133546 e!3124397)))

(assert (=> d!1609725 (= res!2133546 (is-Nil!57810 lt!2067838))))

(assert (=> d!1609725 (= (noDuplicate!1021 lt!2067838) e!3124397)))

(declare-fun b!4999938 () Bool)

(declare-fun e!3124398 () Bool)

(assert (=> b!4999938 (= e!3124397 e!3124398)))

(declare-fun res!2133547 () Bool)

(assert (=> b!4999938 (=> (not res!2133547) (not e!3124398))))

(declare-fun contains!19552 (List!57934 Context!6402) Bool)

(assert (=> b!4999938 (= res!2133547 (not (contains!19552 (t!370274 lt!2067838) (h!64258 lt!2067838))))))

(declare-fun b!4999939 () Bool)

(assert (=> b!4999939 (= e!3124398 (noDuplicate!1021 (t!370274 lt!2067838)))))

(assert (= (and d!1609725 (not res!2133546)) b!4999938))

(assert (= (and b!4999938 res!2133547) b!4999939))

(declare-fun m!6033518 () Bool)

(assert (=> b!4999938 m!6033518))

(declare-fun m!6033520 () Bool)

(assert (=> b!4999939 m!6033520))

(assert (=> d!1609387 d!1609725))

(declare-fun d!1609733 () Bool)

(declare-fun e!3124408 () Bool)

(assert (=> d!1609733 e!3124408))

(declare-fun res!2133553 () Bool)

(assert (=> d!1609733 (=> (not res!2133553) (not e!3124408))))

(declare-fun res!2133552 () List!57934)

(assert (=> d!1609733 (= res!2133553 (noDuplicate!1021 res!2133552))))

(declare-fun e!3124407 () Bool)

(assert (=> d!1609733 e!3124407))

(assert (=> d!1609733 (= (choose!36955 z!4183) res!2133552)))

(declare-fun b!4999949 () Bool)

(declare-fun e!3124406 () Bool)

(declare-fun tp!1402234 () Bool)

(assert (=> b!4999949 (= e!3124406 tp!1402234)))

(declare-fun tp!1402233 () Bool)

(declare-fun b!4999948 () Bool)

(assert (=> b!4999948 (= e!3124407 (and (inv!75918 (h!64258 res!2133552)) e!3124406 tp!1402233))))

(declare-fun b!4999950 () Bool)

(assert (=> b!4999950 (= e!3124408 (= (content!10232 res!2133552) z!4183))))

(assert (= b!4999948 b!4999949))

(assert (= (and d!1609733 (is-Cons!57810 res!2133552)) b!4999948))

(assert (= (and d!1609733 res!2133553) b!4999950))

(declare-fun m!6033528 () Bool)

(assert (=> d!1609733 m!6033528))

(declare-fun m!6033530 () Bool)

(assert (=> b!4999948 m!6033530))

(declare-fun m!6033532 () Bool)

(assert (=> b!4999950 m!6033532))

(assert (=> d!1609387 d!1609733))

(declare-fun b!4999954 () Bool)

(declare-fun e!3124409 () Bool)

(assert (=> b!4999954 (= e!3124409 (>= (size!38418 (++!12622 lt!2067708 lt!2067706)) (size!38418 lt!2067708)))))

(declare-fun b!4999953 () Bool)

(declare-fun e!3124410 () Bool)

(assert (=> b!4999953 (= e!3124410 (isPrefix!5329 (tail!9853 lt!2067708) (tail!9853 (++!12622 lt!2067708 lt!2067706))))))

(declare-fun b!4999952 () Bool)

(declare-fun res!2133557 () Bool)

(assert (=> b!4999952 (=> (not res!2133557) (not e!3124410))))

(assert (=> b!4999952 (= res!2133557 (= (head!10720 lt!2067708) (head!10720 (++!12622 lt!2067708 lt!2067706))))))

(declare-fun b!4999951 () Bool)

(declare-fun e!3124411 () Bool)

(assert (=> b!4999951 (= e!3124411 e!3124410)))

(declare-fun res!2133555 () Bool)

(assert (=> b!4999951 (=> (not res!2133555) (not e!3124410))))

(assert (=> b!4999951 (= res!2133555 (not (is-Nil!57808 (++!12622 lt!2067708 lt!2067706))))))

(declare-fun d!1609741 () Bool)

(assert (=> d!1609741 e!3124409))

(declare-fun res!2133554 () Bool)

(assert (=> d!1609741 (=> res!2133554 e!3124409)))

(declare-fun lt!2068061 () Bool)

(assert (=> d!1609741 (= res!2133554 (not lt!2068061))))

(assert (=> d!1609741 (= lt!2068061 e!3124411)))

(declare-fun res!2133556 () Bool)

(assert (=> d!1609741 (=> res!2133556 e!3124411)))

(assert (=> d!1609741 (= res!2133556 (is-Nil!57808 lt!2067708))))

(assert (=> d!1609741 (= (isPrefix!5329 lt!2067708 (++!12622 lt!2067708 lt!2067706)) lt!2068061)))

(assert (= (and d!1609741 (not res!2133556)) b!4999951))

(assert (= (and b!4999951 res!2133555) b!4999952))

(assert (= (and b!4999952 res!2133557) b!4999953))

(assert (= (and d!1609741 (not res!2133554)) b!4999954))

(assert (=> b!4999954 m!6032402))

(declare-fun m!6033534 () Bool)

(assert (=> b!4999954 m!6033534))

(assert (=> b!4999954 m!6032494))

(assert (=> b!4999953 m!6032496))

(assert (=> b!4999953 m!6032402))

(declare-fun m!6033536 () Bool)

(assert (=> b!4999953 m!6033536))

(assert (=> b!4999953 m!6032496))

(assert (=> b!4999953 m!6033536))

(declare-fun m!6033538 () Bool)

(assert (=> b!4999953 m!6033538))

(assert (=> b!4999952 m!6032502))

(assert (=> b!4999952 m!6032402))

(declare-fun m!6033540 () Bool)

(assert (=> b!4999952 m!6033540))

(assert (=> d!1609345 d!1609741))

(assert (=> d!1609345 d!1609375))

(declare-fun d!1609743 () Bool)

(assert (=> d!1609743 (isPrefix!5329 lt!2067708 (++!12622 lt!2067708 lt!2067706))))

(assert (=> d!1609743 true))

(declare-fun _$46!1951 () Unit!148967)

(assert (=> d!1609743 (= (choose!36953 lt!2067708 lt!2067706) _$46!1951)))

(declare-fun bs!1185725 () Bool)

(assert (= bs!1185725 d!1609743))

(assert (=> bs!1185725 m!6032402))

(assert (=> bs!1185725 m!6032402))

(assert (=> bs!1185725 m!6032520))

(assert (=> d!1609345 d!1609743))

(assert (=> b!4999019 d!1609453))

(assert (=> b!4999019 d!1609495))

(declare-fun d!1609745 () Bool)

(declare-fun c!853340 () Bool)

(assert (=> d!1609745 (= c!853340 (is-Nil!57808 lt!2067764))))

(declare-fun e!3124412 () (Set C!27802))

(assert (=> d!1609745 (= (content!10231 lt!2067764) e!3124412)))

(declare-fun b!4999955 () Bool)

(assert (=> b!4999955 (= e!3124412 (as set.empty (Set C!27802)))))

(declare-fun b!4999956 () Bool)

(assert (=> b!4999956 (= e!3124412 (set.union (set.insert (h!64256 lt!2067764) (as set.empty (Set C!27802))) (content!10231 (t!370272 lt!2067764))))))

(assert (= (and d!1609745 c!853340) b!4999955))

(assert (= (and d!1609745 (not c!853340)) b!4999956))

(declare-fun m!6033542 () Bool)

(assert (=> b!4999956 m!6033542))

(declare-fun m!6033544 () Bool)

(assert (=> b!4999956 m!6033544))

(assert (=> d!1609331 d!1609745))

(declare-fun d!1609747 () Bool)

(declare-fun c!853341 () Bool)

(assert (=> d!1609747 (= c!853341 (is-Nil!57808 lt!2067705))))

(declare-fun e!3124413 () (Set C!27802))

(assert (=> d!1609747 (= (content!10231 lt!2067705) e!3124413)))

(declare-fun b!4999957 () Bool)

(assert (=> b!4999957 (= e!3124413 (as set.empty (Set C!27802)))))

(declare-fun b!4999958 () Bool)

(assert (=> b!4999958 (= e!3124413 (set.union (set.insert (h!64256 lt!2067705) (as set.empty (Set C!27802))) (content!10231 (t!370272 lt!2067705))))))

(assert (= (and d!1609747 c!853341) b!4999957))

(assert (= (and d!1609747 (not c!853341)) b!4999958))

(declare-fun m!6033546 () Bool)

(assert (=> b!4999958 m!6033546))

(assert (=> b!4999958 m!6033046))

(assert (=> d!1609331 d!1609747))

(declare-fun d!1609749 () Bool)

(assert (=> d!1609749 (= (head!10720 lt!2067708) (h!64256 lt!2067708))))

(assert (=> b!4999050 d!1609749))

(declare-fun d!1609751 () Bool)

(assert (=> d!1609751 (= (head!10720 lt!2067716) (h!64256 lt!2067716))))

(assert (=> b!4999050 d!1609751))

(declare-fun b!4999962 () Bool)

(declare-fun e!3124415 () Bool)

(declare-fun lt!2068062 () List!57932)

(assert (=> b!4999962 (= e!3124415 (or (not (= (_2!34772 lt!2067709) Nil!57808)) (= lt!2068062 (t!370272 (_1!34772 lt!2067709)))))))

(declare-fun d!1609753 () Bool)

(assert (=> d!1609753 e!3124415))

(declare-fun res!2133559 () Bool)

(assert (=> d!1609753 (=> (not res!2133559) (not e!3124415))))

(assert (=> d!1609753 (= res!2133559 (= (content!10231 lt!2068062) (set.union (content!10231 (t!370272 (_1!34772 lt!2067709))) (content!10231 (_2!34772 lt!2067709)))))))

(declare-fun e!3124414 () List!57932)

(assert (=> d!1609753 (= lt!2068062 e!3124414)))

(declare-fun c!853342 () Bool)

(assert (=> d!1609753 (= c!853342 (is-Nil!57808 (t!370272 (_1!34772 lt!2067709))))))

(assert (=> d!1609753 (= (++!12622 (t!370272 (_1!34772 lt!2067709)) (_2!34772 lt!2067709)) lt!2068062)))

(declare-fun b!4999959 () Bool)

(assert (=> b!4999959 (= e!3124414 (_2!34772 lt!2067709))))

(declare-fun b!4999960 () Bool)

(assert (=> b!4999960 (= e!3124414 (Cons!57808 (h!64256 (t!370272 (_1!34772 lt!2067709))) (++!12622 (t!370272 (t!370272 (_1!34772 lt!2067709))) (_2!34772 lt!2067709))))))

(declare-fun b!4999961 () Bool)

(declare-fun res!2133558 () Bool)

(assert (=> b!4999961 (=> (not res!2133558) (not e!3124415))))

(assert (=> b!4999961 (= res!2133558 (= (size!38418 lt!2068062) (+ (size!38418 (t!370272 (_1!34772 lt!2067709))) (size!38418 (_2!34772 lt!2067709)))))))

(assert (= (and d!1609753 c!853342) b!4999959))

(assert (= (and d!1609753 (not c!853342)) b!4999960))

(assert (= (and d!1609753 res!2133559) b!4999961))

(assert (= (and b!4999961 res!2133558) b!4999962))

(declare-fun m!6033548 () Bool)

(assert (=> d!1609753 m!6033548))

(assert (=> d!1609753 m!6033450))

(assert (=> d!1609753 m!6032698))

(declare-fun m!6033550 () Bool)

(assert (=> b!4999960 m!6033550))

(declare-fun m!6033552 () Bool)

(assert (=> b!4999961 m!6033552))

(assert (=> b!4999961 m!6032932))

(assert (=> b!4999961 m!6032704))

(assert (=> b!4999169 d!1609753))

(declare-fun b!4999963 () Bool)

(declare-fun res!2133564 () Bool)

(declare-fun e!3124417 () Bool)

(assert (=> b!4999963 (=> (not res!2133564) (not e!3124417))))

(assert (=> b!4999963 (= res!2133564 (<= (- (height!2031 (left!42277 (c!853101 input!5597))) (height!2031 (right!42607 (c!853101 input!5597)))) 1))))

(declare-fun b!4999964 () Bool)

(declare-fun res!2133565 () Bool)

(assert (=> b!4999964 (=> (not res!2133565) (not e!3124417))))

(assert (=> b!4999964 (= res!2133565 (not (isEmpty!31285 (left!42277 (c!853101 input!5597)))))))

(declare-fun b!4999965 () Bool)

(assert (=> b!4999965 (= e!3124417 (not (isEmpty!31285 (right!42607 (c!853101 input!5597)))))))

(declare-fun b!4999966 () Bool)

(declare-fun res!2133562 () Bool)

(assert (=> b!4999966 (=> (not res!2133562) (not e!3124417))))

(assert (=> b!4999966 (= res!2133562 (isBalanced!4261 (right!42607 (c!853101 input!5597))))))

(declare-fun b!4999967 () Bool)

(declare-fun res!2133563 () Bool)

(assert (=> b!4999967 (=> (not res!2133563) (not e!3124417))))

(assert (=> b!4999967 (= res!2133563 (isBalanced!4261 (left!42277 (c!853101 input!5597))))))

(declare-fun d!1609755 () Bool)

(declare-fun res!2133560 () Bool)

(declare-fun e!3124416 () Bool)

(assert (=> d!1609755 (=> res!2133560 e!3124416)))

(assert (=> d!1609755 (= res!2133560 (not (is-Node!15295 (c!853101 input!5597))))))

(assert (=> d!1609755 (= (isBalanced!4261 (c!853101 input!5597)) e!3124416)))

(declare-fun b!4999968 () Bool)

(assert (=> b!4999968 (= e!3124416 e!3124417)))

(declare-fun res!2133561 () Bool)

(assert (=> b!4999968 (=> (not res!2133561) (not e!3124417))))

(assert (=> b!4999968 (= res!2133561 (<= (- 1) (- (height!2031 (left!42277 (c!853101 input!5597))) (height!2031 (right!42607 (c!853101 input!5597))))))))

(assert (= (and d!1609755 (not res!2133560)) b!4999968))

(assert (= (and b!4999968 res!2133561) b!4999963))

(assert (= (and b!4999963 res!2133564) b!4999967))

(assert (= (and b!4999967 res!2133563) b!4999966))

(assert (= (and b!4999966 res!2133562) b!4999964))

(assert (= (and b!4999964 res!2133565) b!4999965))

(declare-fun m!6033554 () Bool)

(assert (=> b!4999964 m!6033554))

(assert (=> b!4999968 m!6032988))

(assert (=> b!4999968 m!6032990))

(declare-fun m!6033556 () Bool)

(assert (=> b!4999967 m!6033556))

(assert (=> b!4999963 m!6032988))

(assert (=> b!4999963 m!6032990))

(declare-fun m!6033558 () Bool)

(assert (=> b!4999965 m!6033558))

(declare-fun m!6033560 () Bool)

(assert (=> b!4999966 m!6033560))

(assert (=> d!1609393 d!1609755))

(declare-fun d!1609757 () Bool)

(declare-fun c!853343 () Bool)

(assert (=> d!1609757 (= c!853343 (is-Node!15295 (left!42277 (c!853101 input!5597))))))

(declare-fun e!3124418 () Bool)

(assert (=> d!1609757 (= (inv!75916 (left!42277 (c!853101 input!5597))) e!3124418)))

(declare-fun b!4999969 () Bool)

(assert (=> b!4999969 (= e!3124418 (inv!75922 (left!42277 (c!853101 input!5597))))))

(declare-fun b!4999970 () Bool)

(declare-fun e!3124419 () Bool)

(assert (=> b!4999970 (= e!3124418 e!3124419)))

(declare-fun res!2133566 () Bool)

(assert (=> b!4999970 (= res!2133566 (not (is-Leaf!25392 (left!42277 (c!853101 input!5597)))))))

(assert (=> b!4999970 (=> res!2133566 e!3124419)))

(declare-fun b!4999971 () Bool)

(assert (=> b!4999971 (= e!3124419 (inv!75923 (left!42277 (c!853101 input!5597))))))

(assert (= (and d!1609757 c!853343) b!4999969))

(assert (= (and d!1609757 (not c!853343)) b!4999970))

(assert (= (and b!4999970 (not res!2133566)) b!4999971))

(declare-fun m!6033562 () Bool)

(assert (=> b!4999969 m!6033562))

(declare-fun m!6033564 () Bool)

(assert (=> b!4999971 m!6033564))

(assert (=> b!4999180 d!1609757))

(declare-fun d!1609759 () Bool)

(declare-fun c!853344 () Bool)

(assert (=> d!1609759 (= c!853344 (is-Node!15295 (right!42607 (c!853101 input!5597))))))

(declare-fun e!3124420 () Bool)

(assert (=> d!1609759 (= (inv!75916 (right!42607 (c!853101 input!5597))) e!3124420)))

(declare-fun b!4999972 () Bool)

(assert (=> b!4999972 (= e!3124420 (inv!75922 (right!42607 (c!853101 input!5597))))))

(declare-fun b!4999973 () Bool)

(declare-fun e!3124421 () Bool)

(assert (=> b!4999973 (= e!3124420 e!3124421)))

(declare-fun res!2133567 () Bool)

(assert (=> b!4999973 (= res!2133567 (not (is-Leaf!25392 (right!42607 (c!853101 input!5597)))))))

(assert (=> b!4999973 (=> res!2133567 e!3124421)))

(declare-fun b!4999974 () Bool)

(assert (=> b!4999974 (= e!3124421 (inv!75923 (right!42607 (c!853101 input!5597))))))

(assert (= (and d!1609759 c!853344) b!4999972))

(assert (= (and d!1609759 (not c!853344)) b!4999973))

(assert (= (and b!4999973 (not res!2133567)) b!4999974))

(declare-fun m!6033566 () Bool)

(assert (=> b!4999972 m!6033566))

(declare-fun m!6033568 () Bool)

(assert (=> b!4999974 m!6033568))

(assert (=> b!4999180 d!1609759))

(declare-fun d!1609761 () Bool)

(declare-fun lt!2068063 () Int)

(assert (=> d!1609761 (>= lt!2068063 0)))

(declare-fun e!3124422 () Int)

(assert (=> d!1609761 (= lt!2068063 e!3124422)))

(declare-fun c!853345 () Bool)

(assert (=> d!1609761 (= c!853345 (is-Nil!57808 lt!2067716))))

(assert (=> d!1609761 (= (size!38418 lt!2067716) lt!2068063)))

(declare-fun b!4999975 () Bool)

(assert (=> b!4999975 (= e!3124422 0)))

(declare-fun b!4999976 () Bool)

(assert (=> b!4999976 (= e!3124422 (+ 1 (size!38418 (t!370272 lt!2067716))))))

(assert (= (and d!1609761 c!853345) b!4999975))

(assert (= (and d!1609761 (not c!853345)) b!4999976))

(declare-fun m!6033570 () Bool)

(assert (=> b!4999976 m!6033570))

(assert (=> b!4999052 d!1609761))

(assert (=> b!4999052 d!1609463))

(declare-fun b!4999981 () Bool)

(declare-fun e!3124425 () Bool)

(declare-fun tp!1402237 () Bool)

(assert (=> b!4999981 (= e!3124425 (and tp_is_empty!36549 tp!1402237))))

(assert (=> b!4999182 (= tp!1402113 e!3124425)))

(assert (= (and b!4999182 (is-Cons!57808 (innerList!15383 (xs!18621 (c!853101 input!5597))))) b!4999981))

(declare-fun b!4999984 () Bool)

(declare-fun e!3124426 () Bool)

(declare-fun tp!1402241 () Bool)

(assert (=> b!4999984 (= e!3124426 tp!1402241)))

(declare-fun b!4999983 () Bool)

(declare-fun tp!1402239 () Bool)

(declare-fun tp!1402238 () Bool)

(assert (=> b!4999983 (= e!3124426 (and tp!1402239 tp!1402238))))

(assert (=> b!4999209 (= tp!1402144 e!3124426)))

(declare-fun b!4999982 () Bool)

(assert (=> b!4999982 (= e!3124426 tp_is_empty!36549)))

(declare-fun b!4999985 () Bool)

(declare-fun tp!1402240 () Bool)

(declare-fun tp!1402242 () Bool)

(assert (=> b!4999985 (= e!3124426 (and tp!1402240 tp!1402242))))

(assert (= (and b!4999209 (is-ElementMatch!13776 (reg!14105 (regTwo!28064 r!12727)))) b!4999982))

(assert (= (and b!4999209 (is-Concat!22569 (reg!14105 (regTwo!28064 r!12727)))) b!4999983))

(assert (= (and b!4999209 (is-Star!13776 (reg!14105 (regTwo!28064 r!12727)))) b!4999984))

(assert (= (and b!4999209 (is-Union!13776 (reg!14105 (regTwo!28064 r!12727)))) b!4999985))

(declare-fun b!4999988 () Bool)

(declare-fun e!3124427 () Bool)

(declare-fun tp!1402246 () Bool)

(assert (=> b!4999988 (= e!3124427 tp!1402246)))

(declare-fun b!4999987 () Bool)

(declare-fun tp!1402244 () Bool)

(declare-fun tp!1402243 () Bool)

(assert (=> b!4999987 (= e!3124427 (and tp!1402244 tp!1402243))))

(assert (=> b!4999208 (= tp!1402142 e!3124427)))

(declare-fun b!4999986 () Bool)

(assert (=> b!4999986 (= e!3124427 tp_is_empty!36549)))

(declare-fun b!4999989 () Bool)

(declare-fun tp!1402245 () Bool)

(declare-fun tp!1402247 () Bool)

(assert (=> b!4999989 (= e!3124427 (and tp!1402245 tp!1402247))))

(assert (= (and b!4999208 (is-ElementMatch!13776 (regOne!28064 (regTwo!28064 r!12727)))) b!4999986))

(assert (= (and b!4999208 (is-Concat!22569 (regOne!28064 (regTwo!28064 r!12727)))) b!4999987))

(assert (= (and b!4999208 (is-Star!13776 (regOne!28064 (regTwo!28064 r!12727)))) b!4999988))

(assert (= (and b!4999208 (is-Union!13776 (regOne!28064 (regTwo!28064 r!12727)))) b!4999989))

(declare-fun b!4999992 () Bool)

(declare-fun e!3124428 () Bool)

(declare-fun tp!1402251 () Bool)

(assert (=> b!4999992 (= e!3124428 tp!1402251)))

(declare-fun b!4999991 () Bool)

(declare-fun tp!1402249 () Bool)

(declare-fun tp!1402248 () Bool)

(assert (=> b!4999991 (= e!3124428 (and tp!1402249 tp!1402248))))

(assert (=> b!4999208 (= tp!1402141 e!3124428)))

(declare-fun b!4999990 () Bool)

(assert (=> b!4999990 (= e!3124428 tp_is_empty!36549)))

(declare-fun b!4999993 () Bool)

(declare-fun tp!1402250 () Bool)

(declare-fun tp!1402252 () Bool)

(assert (=> b!4999993 (= e!3124428 (and tp!1402250 tp!1402252))))

(assert (= (and b!4999208 (is-ElementMatch!13776 (regTwo!28064 (regTwo!28064 r!12727)))) b!4999990))

(assert (= (and b!4999208 (is-Concat!22569 (regTwo!28064 (regTwo!28064 r!12727)))) b!4999991))

(assert (= (and b!4999208 (is-Star!13776 (regTwo!28064 (regTwo!28064 r!12727)))) b!4999992))

(assert (= (and b!4999208 (is-Union!13776 (regTwo!28064 (regTwo!28064 r!12727)))) b!4999993))

(declare-fun b!4999994 () Bool)

(declare-fun e!3124429 () Bool)

(declare-fun tp!1402253 () Bool)

(declare-fun tp!1402254 () Bool)

(assert (=> b!4999994 (= e!3124429 (and tp!1402253 tp!1402254))))

(assert (=> b!4999187 (= tp!1402119 e!3124429)))

(assert (= (and b!4999187 (is-Cons!57809 (exprs!3701 setElem!28329))) b!4999994))

(declare-fun b!4999997 () Bool)

(declare-fun e!3124430 () Bool)

(declare-fun tp!1402258 () Bool)

(assert (=> b!4999997 (= e!3124430 tp!1402258)))

(declare-fun b!4999996 () Bool)

(declare-fun tp!1402256 () Bool)

(declare-fun tp!1402255 () Bool)

(assert (=> b!4999996 (= e!3124430 (and tp!1402256 tp!1402255))))

(assert (=> b!4999210 (= tp!1402143 e!3124430)))

(declare-fun b!4999995 () Bool)

(assert (=> b!4999995 (= e!3124430 tp_is_empty!36549)))

(declare-fun b!4999998 () Bool)

(declare-fun tp!1402257 () Bool)

(declare-fun tp!1402259 () Bool)

(assert (=> b!4999998 (= e!3124430 (and tp!1402257 tp!1402259))))

(assert (= (and b!4999210 (is-ElementMatch!13776 (regOne!28065 (regTwo!28064 r!12727)))) b!4999995))

(assert (= (and b!4999210 (is-Concat!22569 (regOne!28065 (regTwo!28064 r!12727)))) b!4999996))

(assert (= (and b!4999210 (is-Star!13776 (regOne!28065 (regTwo!28064 r!12727)))) b!4999997))

(assert (= (and b!4999210 (is-Union!13776 (regOne!28065 (regTwo!28064 r!12727)))) b!4999998))

(declare-fun b!5000001 () Bool)

(declare-fun e!3124431 () Bool)

(declare-fun tp!1402263 () Bool)

(assert (=> b!5000001 (= e!3124431 tp!1402263)))

(declare-fun b!5000000 () Bool)

(declare-fun tp!1402261 () Bool)

(declare-fun tp!1402260 () Bool)

(assert (=> b!5000000 (= e!3124431 (and tp!1402261 tp!1402260))))

(assert (=> b!4999210 (= tp!1402145 e!3124431)))

(declare-fun b!4999999 () Bool)

(assert (=> b!4999999 (= e!3124431 tp_is_empty!36549)))

(declare-fun b!5000002 () Bool)

(declare-fun tp!1402262 () Bool)

(declare-fun tp!1402264 () Bool)

(assert (=> b!5000002 (= e!3124431 (and tp!1402262 tp!1402264))))

(assert (= (and b!4999210 (is-ElementMatch!13776 (regTwo!28065 (regTwo!28064 r!12727)))) b!4999999))

(assert (= (and b!4999210 (is-Concat!22569 (regTwo!28065 (regTwo!28064 r!12727)))) b!5000000))

(assert (= (and b!4999210 (is-Star!13776 (regTwo!28065 (regTwo!28064 r!12727)))) b!5000001))

(assert (= (and b!4999210 (is-Union!13776 (regTwo!28065 (regTwo!28064 r!12727)))) b!5000002))

(declare-fun b!5000005 () Bool)

(declare-fun e!3124432 () Bool)

(declare-fun tp!1402268 () Bool)

(assert (=> b!5000005 (= e!3124432 tp!1402268)))

(declare-fun b!5000004 () Bool)

(declare-fun tp!1402266 () Bool)

(declare-fun tp!1402265 () Bool)

(assert (=> b!5000004 (= e!3124432 (and tp!1402266 tp!1402265))))

(assert (=> b!4999224 (= tp!1402162 e!3124432)))

(declare-fun b!5000003 () Bool)

(assert (=> b!5000003 (= e!3124432 tp_is_empty!36549)))

(declare-fun b!5000006 () Bool)

(declare-fun tp!1402267 () Bool)

(declare-fun tp!1402269 () Bool)

(assert (=> b!5000006 (= e!3124432 (and tp!1402267 tp!1402269))))

(assert (= (and b!4999224 (is-ElementMatch!13776 (reg!14105 (reg!14105 r!12727)))) b!5000003))

(assert (= (and b!4999224 (is-Concat!22569 (reg!14105 (reg!14105 r!12727)))) b!5000004))

(assert (= (and b!4999224 (is-Star!13776 (reg!14105 (reg!14105 r!12727)))) b!5000005))

(assert (= (and b!4999224 (is-Union!13776 (reg!14105 (reg!14105 r!12727)))) b!5000006))

(declare-fun b!5000009 () Bool)

(declare-fun e!3124433 () Bool)

(declare-fun tp!1402273 () Bool)

(assert (=> b!5000009 (= e!3124433 tp!1402273)))

(declare-fun b!5000008 () Bool)

(declare-fun tp!1402271 () Bool)

(declare-fun tp!1402270 () Bool)

(assert (=> b!5000008 (= e!3124433 (and tp!1402271 tp!1402270))))

(assert (=> b!4999223 (= tp!1402160 e!3124433)))

(declare-fun b!5000007 () Bool)

(assert (=> b!5000007 (= e!3124433 tp_is_empty!36549)))

(declare-fun b!5000010 () Bool)

(declare-fun tp!1402272 () Bool)

(declare-fun tp!1402274 () Bool)

(assert (=> b!5000010 (= e!3124433 (and tp!1402272 tp!1402274))))

(assert (= (and b!4999223 (is-ElementMatch!13776 (regOne!28064 (reg!14105 r!12727)))) b!5000007))

(assert (= (and b!4999223 (is-Concat!22569 (regOne!28064 (reg!14105 r!12727)))) b!5000008))

(assert (= (and b!4999223 (is-Star!13776 (regOne!28064 (reg!14105 r!12727)))) b!5000009))

(assert (= (and b!4999223 (is-Union!13776 (regOne!28064 (reg!14105 r!12727)))) b!5000010))

(declare-fun b!5000013 () Bool)

(declare-fun e!3124434 () Bool)

(declare-fun tp!1402278 () Bool)

(assert (=> b!5000013 (= e!3124434 tp!1402278)))

(declare-fun b!5000012 () Bool)

(declare-fun tp!1402276 () Bool)

(declare-fun tp!1402275 () Bool)

(assert (=> b!5000012 (= e!3124434 (and tp!1402276 tp!1402275))))

(assert (=> b!4999223 (= tp!1402159 e!3124434)))

(declare-fun b!5000011 () Bool)

(assert (=> b!5000011 (= e!3124434 tp_is_empty!36549)))

(declare-fun b!5000014 () Bool)

(declare-fun tp!1402277 () Bool)

(declare-fun tp!1402279 () Bool)

(assert (=> b!5000014 (= e!3124434 (and tp!1402277 tp!1402279))))

(assert (= (and b!4999223 (is-ElementMatch!13776 (regTwo!28064 (reg!14105 r!12727)))) b!5000011))

(assert (= (and b!4999223 (is-Concat!22569 (regTwo!28064 (reg!14105 r!12727)))) b!5000012))

(assert (= (and b!4999223 (is-Star!13776 (regTwo!28064 (reg!14105 r!12727)))) b!5000013))

(assert (= (and b!4999223 (is-Union!13776 (regTwo!28064 (reg!14105 r!12727)))) b!5000014))

(declare-fun b!5000017 () Bool)

(declare-fun e!3124435 () Bool)

(declare-fun tp!1402283 () Bool)

(assert (=> b!5000017 (= e!3124435 tp!1402283)))

(declare-fun b!5000016 () Bool)

(declare-fun tp!1402281 () Bool)

(declare-fun tp!1402280 () Bool)

(assert (=> b!5000016 (= e!3124435 (and tp!1402281 tp!1402280))))

(assert (=> b!4999225 (= tp!1402161 e!3124435)))

(declare-fun b!5000015 () Bool)

(assert (=> b!5000015 (= e!3124435 tp_is_empty!36549)))

(declare-fun b!5000018 () Bool)

(declare-fun tp!1402282 () Bool)

(declare-fun tp!1402284 () Bool)

(assert (=> b!5000018 (= e!3124435 (and tp!1402282 tp!1402284))))

(assert (= (and b!4999225 (is-ElementMatch!13776 (regOne!28065 (reg!14105 r!12727)))) b!5000015))

(assert (= (and b!4999225 (is-Concat!22569 (regOne!28065 (reg!14105 r!12727)))) b!5000016))

(assert (= (and b!4999225 (is-Star!13776 (regOne!28065 (reg!14105 r!12727)))) b!5000017))

(assert (= (and b!4999225 (is-Union!13776 (regOne!28065 (reg!14105 r!12727)))) b!5000018))

(declare-fun b!5000021 () Bool)

(declare-fun e!3124436 () Bool)

(declare-fun tp!1402288 () Bool)

(assert (=> b!5000021 (= e!3124436 tp!1402288)))

(declare-fun b!5000020 () Bool)

(declare-fun tp!1402286 () Bool)

(declare-fun tp!1402285 () Bool)

(assert (=> b!5000020 (= e!3124436 (and tp!1402286 tp!1402285))))

(assert (=> b!4999225 (= tp!1402163 e!3124436)))

(declare-fun b!5000019 () Bool)

(assert (=> b!5000019 (= e!3124436 tp_is_empty!36549)))

(declare-fun b!5000022 () Bool)

(declare-fun tp!1402287 () Bool)

(declare-fun tp!1402289 () Bool)

(assert (=> b!5000022 (= e!3124436 (and tp!1402287 tp!1402289))))

(assert (= (and b!4999225 (is-ElementMatch!13776 (regTwo!28065 (reg!14105 r!12727)))) b!5000019))

(assert (= (and b!4999225 (is-Concat!22569 (regTwo!28065 (reg!14105 r!12727)))) b!5000020))

(assert (= (and b!4999225 (is-Star!13776 (regTwo!28065 (reg!14105 r!12727)))) b!5000021))

(assert (= (and b!4999225 (is-Union!13776 (regTwo!28065 (reg!14105 r!12727)))) b!5000022))

(declare-fun b!5000025 () Bool)

(declare-fun e!3124437 () Bool)

(declare-fun tp!1402293 () Bool)

(assert (=> b!5000025 (= e!3124437 tp!1402293)))

(declare-fun b!5000024 () Bool)

(declare-fun tp!1402291 () Bool)

(declare-fun tp!1402290 () Bool)

(assert (=> b!5000024 (= e!3124437 (and tp!1402291 tp!1402290))))

(assert (=> b!4999216 (= tp!1402152 e!3124437)))

(declare-fun b!5000023 () Bool)

(assert (=> b!5000023 (= e!3124437 tp_is_empty!36549)))

(declare-fun b!5000026 () Bool)

(declare-fun tp!1402292 () Bool)

(declare-fun tp!1402294 () Bool)

(assert (=> b!5000026 (= e!3124437 (and tp!1402292 tp!1402294))))

(assert (= (and b!4999216 (is-ElementMatch!13776 (reg!14105 (regOne!28065 r!12727)))) b!5000023))

(assert (= (and b!4999216 (is-Concat!22569 (reg!14105 (regOne!28065 r!12727)))) b!5000024))

(assert (= (and b!4999216 (is-Star!13776 (reg!14105 (regOne!28065 r!12727)))) b!5000025))

(assert (= (and b!4999216 (is-Union!13776 (reg!14105 (regOne!28065 r!12727)))) b!5000026))

(declare-fun b!5000029 () Bool)

(declare-fun e!3124438 () Bool)

(declare-fun tp!1402298 () Bool)

(assert (=> b!5000029 (= e!3124438 tp!1402298)))

(declare-fun b!5000028 () Bool)

(declare-fun tp!1402296 () Bool)

(declare-fun tp!1402295 () Bool)

(assert (=> b!5000028 (= e!3124438 (and tp!1402296 tp!1402295))))

(assert (=> b!4999215 (= tp!1402150 e!3124438)))

(declare-fun b!5000027 () Bool)

(assert (=> b!5000027 (= e!3124438 tp_is_empty!36549)))

(declare-fun b!5000030 () Bool)

(declare-fun tp!1402297 () Bool)

(declare-fun tp!1402299 () Bool)

(assert (=> b!5000030 (= e!3124438 (and tp!1402297 tp!1402299))))

(assert (= (and b!4999215 (is-ElementMatch!13776 (regOne!28064 (regOne!28065 r!12727)))) b!5000027))

(assert (= (and b!4999215 (is-Concat!22569 (regOne!28064 (regOne!28065 r!12727)))) b!5000028))

(assert (= (and b!4999215 (is-Star!13776 (regOne!28064 (regOne!28065 r!12727)))) b!5000029))

(assert (= (and b!4999215 (is-Union!13776 (regOne!28064 (regOne!28065 r!12727)))) b!5000030))

(declare-fun b!5000033 () Bool)

(declare-fun e!3124439 () Bool)

(declare-fun tp!1402303 () Bool)

(assert (=> b!5000033 (= e!3124439 tp!1402303)))

(declare-fun b!5000032 () Bool)

(declare-fun tp!1402301 () Bool)

(declare-fun tp!1402300 () Bool)

(assert (=> b!5000032 (= e!3124439 (and tp!1402301 tp!1402300))))

(assert (=> b!4999215 (= tp!1402149 e!3124439)))

(declare-fun b!5000031 () Bool)

(assert (=> b!5000031 (= e!3124439 tp_is_empty!36549)))

(declare-fun b!5000034 () Bool)

(declare-fun tp!1402302 () Bool)

(declare-fun tp!1402304 () Bool)

(assert (=> b!5000034 (= e!3124439 (and tp!1402302 tp!1402304))))

(assert (= (and b!4999215 (is-ElementMatch!13776 (regTwo!28064 (regOne!28065 r!12727)))) b!5000031))

(assert (= (and b!4999215 (is-Concat!22569 (regTwo!28064 (regOne!28065 r!12727)))) b!5000032))

(assert (= (and b!4999215 (is-Star!13776 (regTwo!28064 (regOne!28065 r!12727)))) b!5000033))

(assert (= (and b!4999215 (is-Union!13776 (regTwo!28064 (regOne!28065 r!12727)))) b!5000034))

(declare-fun b!5000037 () Bool)

(declare-fun e!3124440 () Bool)

(declare-fun tp!1402308 () Bool)

(assert (=> b!5000037 (= e!3124440 tp!1402308)))

(declare-fun b!5000036 () Bool)

(declare-fun tp!1402306 () Bool)

(declare-fun tp!1402305 () Bool)

(assert (=> b!5000036 (= e!3124440 (and tp!1402306 tp!1402305))))

(assert (=> b!4999217 (= tp!1402151 e!3124440)))

(declare-fun b!5000035 () Bool)

(assert (=> b!5000035 (= e!3124440 tp_is_empty!36549)))

(declare-fun b!5000038 () Bool)

(declare-fun tp!1402307 () Bool)

(declare-fun tp!1402309 () Bool)

(assert (=> b!5000038 (= e!3124440 (and tp!1402307 tp!1402309))))

(assert (= (and b!4999217 (is-ElementMatch!13776 (regOne!28065 (regOne!28065 r!12727)))) b!5000035))

(assert (= (and b!4999217 (is-Concat!22569 (regOne!28065 (regOne!28065 r!12727)))) b!5000036))

(assert (= (and b!4999217 (is-Star!13776 (regOne!28065 (regOne!28065 r!12727)))) b!5000037))

(assert (= (and b!4999217 (is-Union!13776 (regOne!28065 (regOne!28065 r!12727)))) b!5000038))

(declare-fun b!5000041 () Bool)

(declare-fun e!3124441 () Bool)

(declare-fun tp!1402313 () Bool)

(assert (=> b!5000041 (= e!3124441 tp!1402313)))

(declare-fun b!5000040 () Bool)

(declare-fun tp!1402311 () Bool)

(declare-fun tp!1402310 () Bool)

(assert (=> b!5000040 (= e!3124441 (and tp!1402311 tp!1402310))))

(assert (=> b!4999217 (= tp!1402153 e!3124441)))

(declare-fun b!5000039 () Bool)

(assert (=> b!5000039 (= e!3124441 tp_is_empty!36549)))

(declare-fun b!5000042 () Bool)

(declare-fun tp!1402312 () Bool)

(declare-fun tp!1402314 () Bool)

(assert (=> b!5000042 (= e!3124441 (and tp!1402312 tp!1402314))))

(assert (= (and b!4999217 (is-ElementMatch!13776 (regTwo!28065 (regOne!28065 r!12727)))) b!5000039))

(assert (= (and b!4999217 (is-Concat!22569 (regTwo!28065 (regOne!28065 r!12727)))) b!5000040))

(assert (= (and b!4999217 (is-Star!13776 (regTwo!28065 (regOne!28065 r!12727)))) b!5000041))

(assert (= (and b!4999217 (is-Union!13776 (regTwo!28065 (regOne!28065 r!12727)))) b!5000042))

(declare-fun tp!1402316 () Bool)

(declare-fun e!3124443 () Bool)

(declare-fun tp!1402315 () Bool)

(declare-fun b!5000043 () Bool)

(assert (=> b!5000043 (= e!3124443 (and (inv!75916 (left!42277 (left!42277 (c!853101 totalInput!1012)))) tp!1402316 (inv!75916 (right!42607 (left!42277 (c!853101 totalInput!1012)))) tp!1402315))))

(declare-fun b!5000045 () Bool)

(declare-fun e!3124442 () Bool)

(declare-fun tp!1402317 () Bool)

(assert (=> b!5000045 (= e!3124442 tp!1402317)))

(declare-fun b!5000044 () Bool)

(assert (=> b!5000044 (= e!3124443 (and (inv!75924 (xs!18621 (left!42277 (c!853101 totalInput!1012)))) e!3124442))))

(assert (=> b!4999211 (= tp!1402147 (and (inv!75916 (left!42277 (c!853101 totalInput!1012))) e!3124443))))

(assert (= (and b!4999211 (is-Node!15295 (left!42277 (c!853101 totalInput!1012)))) b!5000043))

(assert (= b!5000044 b!5000045))

(assert (= (and b!4999211 (is-Leaf!25392 (left!42277 (c!853101 totalInput!1012)))) b!5000044))

(declare-fun m!6033572 () Bool)

(assert (=> b!5000043 m!6033572))

(declare-fun m!6033574 () Bool)

(assert (=> b!5000043 m!6033574))

(declare-fun m!6033576 () Bool)

(assert (=> b!5000044 m!6033576))

(assert (=> b!4999211 m!6032714))

(declare-fun tp!1402318 () Bool)

(declare-fun e!3124445 () Bool)

(declare-fun b!5000046 () Bool)

(declare-fun tp!1402319 () Bool)

(assert (=> b!5000046 (= e!3124445 (and (inv!75916 (left!42277 (right!42607 (c!853101 totalInput!1012)))) tp!1402319 (inv!75916 (right!42607 (right!42607 (c!853101 totalInput!1012)))) tp!1402318))))

(declare-fun b!5000048 () Bool)

(declare-fun e!3124444 () Bool)

(declare-fun tp!1402320 () Bool)

(assert (=> b!5000048 (= e!3124444 tp!1402320)))

(declare-fun b!5000047 () Bool)

(assert (=> b!5000047 (= e!3124445 (and (inv!75924 (xs!18621 (right!42607 (c!853101 totalInput!1012)))) e!3124444))))

(assert (=> b!4999211 (= tp!1402146 (and (inv!75916 (right!42607 (c!853101 totalInput!1012))) e!3124445))))

(assert (= (and b!4999211 (is-Node!15295 (right!42607 (c!853101 totalInput!1012)))) b!5000046))

(assert (= b!5000047 b!5000048))

(assert (= (and b!4999211 (is-Leaf!25392 (right!42607 (c!853101 totalInput!1012)))) b!5000047))

(declare-fun m!6033578 () Bool)

(assert (=> b!5000046 m!6033578))

(declare-fun m!6033580 () Bool)

(assert (=> b!5000046 m!6033580))

(declare-fun m!6033582 () Bool)

(assert (=> b!5000047 m!6033582))

(assert (=> b!4999211 m!6032716))

(declare-fun b!5000049 () Bool)

(declare-fun e!3124446 () Bool)

(declare-fun tp!1402321 () Bool)

(assert (=> b!5000049 (= e!3124446 (and tp_is_empty!36549 tp!1402321))))

(assert (=> b!4999213 (= tp!1402148 e!3124446)))

(assert (= (and b!4999213 (is-Cons!57808 (innerList!15383 (xs!18621 (c!853101 totalInput!1012))))) b!5000049))

(declare-fun b!5000052 () Bool)

(declare-fun e!3124447 () Bool)

(declare-fun tp!1402325 () Bool)

(assert (=> b!5000052 (= e!3124447 tp!1402325)))

(declare-fun b!5000051 () Bool)

(declare-fun tp!1402323 () Bool)

(declare-fun tp!1402322 () Bool)

(assert (=> b!5000051 (= e!3124447 (and tp!1402323 tp!1402322))))

(assert (=> b!4999204 (= tp!1402137 e!3124447)))

(declare-fun b!5000050 () Bool)

(assert (=> b!5000050 (= e!3124447 tp_is_empty!36549)))

(declare-fun b!5000053 () Bool)

(declare-fun tp!1402324 () Bool)

(declare-fun tp!1402326 () Bool)

(assert (=> b!5000053 (= e!3124447 (and tp!1402324 tp!1402326))))

(assert (= (and b!4999204 (is-ElementMatch!13776 (regOne!28064 (regOne!28064 r!12727)))) b!5000050))

(assert (= (and b!4999204 (is-Concat!22569 (regOne!28064 (regOne!28064 r!12727)))) b!5000051))

(assert (= (and b!4999204 (is-Star!13776 (regOne!28064 (regOne!28064 r!12727)))) b!5000052))

(assert (= (and b!4999204 (is-Union!13776 (regOne!28064 (regOne!28064 r!12727)))) b!5000053))

(declare-fun b!5000056 () Bool)

(declare-fun e!3124448 () Bool)

(declare-fun tp!1402330 () Bool)

(assert (=> b!5000056 (= e!3124448 tp!1402330)))

(declare-fun b!5000055 () Bool)

(declare-fun tp!1402328 () Bool)

(declare-fun tp!1402327 () Bool)

(assert (=> b!5000055 (= e!3124448 (and tp!1402328 tp!1402327))))

(assert (=> b!4999204 (= tp!1402136 e!3124448)))

(declare-fun b!5000054 () Bool)

(assert (=> b!5000054 (= e!3124448 tp_is_empty!36549)))

(declare-fun b!5000057 () Bool)

(declare-fun tp!1402329 () Bool)

(declare-fun tp!1402331 () Bool)

(assert (=> b!5000057 (= e!3124448 (and tp!1402329 tp!1402331))))

(assert (= (and b!4999204 (is-ElementMatch!13776 (regTwo!28064 (regOne!28064 r!12727)))) b!5000054))

(assert (= (and b!4999204 (is-Concat!22569 (regTwo!28064 (regOne!28064 r!12727)))) b!5000055))

(assert (= (and b!4999204 (is-Star!13776 (regTwo!28064 (regOne!28064 r!12727)))) b!5000056))

(assert (= (and b!4999204 (is-Union!13776 (regTwo!28064 (regOne!28064 r!12727)))) b!5000057))

(declare-fun b!5000060 () Bool)

(declare-fun e!3124449 () Bool)

(declare-fun tp!1402335 () Bool)

(assert (=> b!5000060 (= e!3124449 tp!1402335)))

(declare-fun b!5000059 () Bool)

(declare-fun tp!1402333 () Bool)

(declare-fun tp!1402332 () Bool)

(assert (=> b!5000059 (= e!3124449 (and tp!1402333 tp!1402332))))

(assert (=> b!4999219 (= tp!1402155 e!3124449)))

(declare-fun b!5000058 () Bool)

(assert (=> b!5000058 (= e!3124449 tp_is_empty!36549)))

(declare-fun b!5000061 () Bool)

(declare-fun tp!1402334 () Bool)

(declare-fun tp!1402336 () Bool)

(assert (=> b!5000061 (= e!3124449 (and tp!1402334 tp!1402336))))

(assert (= (and b!4999219 (is-ElementMatch!13776 (regOne!28064 (regTwo!28065 r!12727)))) b!5000058))

(assert (= (and b!4999219 (is-Concat!22569 (regOne!28064 (regTwo!28065 r!12727)))) b!5000059))

(assert (= (and b!4999219 (is-Star!13776 (regOne!28064 (regTwo!28065 r!12727)))) b!5000060))

(assert (= (and b!4999219 (is-Union!13776 (regOne!28064 (regTwo!28065 r!12727)))) b!5000061))

(declare-fun b!5000064 () Bool)

(declare-fun e!3124450 () Bool)

(declare-fun tp!1402340 () Bool)

(assert (=> b!5000064 (= e!3124450 tp!1402340)))

(declare-fun b!5000063 () Bool)

(declare-fun tp!1402338 () Bool)

(declare-fun tp!1402337 () Bool)

(assert (=> b!5000063 (= e!3124450 (and tp!1402338 tp!1402337))))

(assert (=> b!4999219 (= tp!1402154 e!3124450)))

(declare-fun b!5000062 () Bool)

(assert (=> b!5000062 (= e!3124450 tp_is_empty!36549)))

(declare-fun b!5000065 () Bool)

(declare-fun tp!1402339 () Bool)

(declare-fun tp!1402341 () Bool)

(assert (=> b!5000065 (= e!3124450 (and tp!1402339 tp!1402341))))

(assert (= (and b!4999219 (is-ElementMatch!13776 (regTwo!28064 (regTwo!28065 r!12727)))) b!5000062))

(assert (= (and b!4999219 (is-Concat!22569 (regTwo!28064 (regTwo!28065 r!12727)))) b!5000063))

(assert (= (and b!4999219 (is-Star!13776 (regTwo!28064 (regTwo!28065 r!12727)))) b!5000064))

(assert (= (and b!4999219 (is-Union!13776 (regTwo!28064 (regTwo!28065 r!12727)))) b!5000065))

(declare-fun b!5000068 () Bool)

(declare-fun e!3124451 () Bool)

(declare-fun tp!1402345 () Bool)

(assert (=> b!5000068 (= e!3124451 tp!1402345)))

(declare-fun b!5000067 () Bool)

(declare-fun tp!1402343 () Bool)

(declare-fun tp!1402342 () Bool)

(assert (=> b!5000067 (= e!3124451 (and tp!1402343 tp!1402342))))

(assert (=> b!4999205 (= tp!1402139 e!3124451)))

(declare-fun b!5000066 () Bool)

(assert (=> b!5000066 (= e!3124451 tp_is_empty!36549)))

(declare-fun b!5000069 () Bool)

(declare-fun tp!1402344 () Bool)

(declare-fun tp!1402346 () Bool)

(assert (=> b!5000069 (= e!3124451 (and tp!1402344 tp!1402346))))

(assert (= (and b!4999205 (is-ElementMatch!13776 (reg!14105 (regOne!28064 r!12727)))) b!5000066))

(assert (= (and b!4999205 (is-Concat!22569 (reg!14105 (regOne!28064 r!12727)))) b!5000067))

(assert (= (and b!4999205 (is-Star!13776 (reg!14105 (regOne!28064 r!12727)))) b!5000068))

(assert (= (and b!4999205 (is-Union!13776 (reg!14105 (regOne!28064 r!12727)))) b!5000069))

(declare-fun b!5000072 () Bool)

(declare-fun e!3124452 () Bool)

(declare-fun tp!1402350 () Bool)

(assert (=> b!5000072 (= e!3124452 tp!1402350)))

(declare-fun b!5000071 () Bool)

(declare-fun tp!1402348 () Bool)

(declare-fun tp!1402347 () Bool)

(assert (=> b!5000071 (= e!3124452 (and tp!1402348 tp!1402347))))

(assert (=> b!4999206 (= tp!1402138 e!3124452)))

(declare-fun b!5000070 () Bool)

(assert (=> b!5000070 (= e!3124452 tp_is_empty!36549)))

(declare-fun b!5000073 () Bool)

(declare-fun tp!1402349 () Bool)

(declare-fun tp!1402351 () Bool)

(assert (=> b!5000073 (= e!3124452 (and tp!1402349 tp!1402351))))

(assert (= (and b!4999206 (is-ElementMatch!13776 (regOne!28065 (regOne!28064 r!12727)))) b!5000070))

(assert (= (and b!4999206 (is-Concat!22569 (regOne!28065 (regOne!28064 r!12727)))) b!5000071))

(assert (= (and b!4999206 (is-Star!13776 (regOne!28065 (regOne!28064 r!12727)))) b!5000072))

(assert (= (and b!4999206 (is-Union!13776 (regOne!28065 (regOne!28064 r!12727)))) b!5000073))

(declare-fun b!5000076 () Bool)

(declare-fun e!3124453 () Bool)

(declare-fun tp!1402355 () Bool)

(assert (=> b!5000076 (= e!3124453 tp!1402355)))

(declare-fun b!5000075 () Bool)

(declare-fun tp!1402353 () Bool)

(declare-fun tp!1402352 () Bool)

(assert (=> b!5000075 (= e!3124453 (and tp!1402353 tp!1402352))))

(assert (=> b!4999206 (= tp!1402140 e!3124453)))

(declare-fun b!5000074 () Bool)

(assert (=> b!5000074 (= e!3124453 tp_is_empty!36549)))

(declare-fun b!5000077 () Bool)

(declare-fun tp!1402354 () Bool)

(declare-fun tp!1402356 () Bool)

(assert (=> b!5000077 (= e!3124453 (and tp!1402354 tp!1402356))))

(assert (= (and b!4999206 (is-ElementMatch!13776 (regTwo!28065 (regOne!28064 r!12727)))) b!5000074))

(assert (= (and b!4999206 (is-Concat!22569 (regTwo!28065 (regOne!28064 r!12727)))) b!5000075))

(assert (= (and b!4999206 (is-Star!13776 (regTwo!28065 (regOne!28064 r!12727)))) b!5000076))

(assert (= (and b!4999206 (is-Union!13776 (regTwo!28065 (regOne!28064 r!12727)))) b!5000077))

(declare-fun b!5000080 () Bool)

(declare-fun e!3124454 () Bool)

(declare-fun tp!1402360 () Bool)

(assert (=> b!5000080 (= e!3124454 tp!1402360)))

(declare-fun b!5000079 () Bool)

(declare-fun tp!1402358 () Bool)

(declare-fun tp!1402357 () Bool)

(assert (=> b!5000079 (= e!3124454 (and tp!1402358 tp!1402357))))

(assert (=> b!4999220 (= tp!1402157 e!3124454)))

(declare-fun b!5000078 () Bool)

(assert (=> b!5000078 (= e!3124454 tp_is_empty!36549)))

(declare-fun b!5000081 () Bool)

(declare-fun tp!1402359 () Bool)

(declare-fun tp!1402361 () Bool)

(assert (=> b!5000081 (= e!3124454 (and tp!1402359 tp!1402361))))

(assert (= (and b!4999220 (is-ElementMatch!13776 (reg!14105 (regTwo!28065 r!12727)))) b!5000078))

(assert (= (and b!4999220 (is-Concat!22569 (reg!14105 (regTwo!28065 r!12727)))) b!5000079))

(assert (= (and b!4999220 (is-Star!13776 (reg!14105 (regTwo!28065 r!12727)))) b!5000080))

(assert (= (and b!4999220 (is-Union!13776 (reg!14105 (regTwo!28065 r!12727)))) b!5000081))

(declare-fun b!5000084 () Bool)

(declare-fun e!3124455 () Bool)

(declare-fun tp!1402365 () Bool)

(assert (=> b!5000084 (= e!3124455 tp!1402365)))

(declare-fun b!5000083 () Bool)

(declare-fun tp!1402363 () Bool)

(declare-fun tp!1402362 () Bool)

(assert (=> b!5000083 (= e!3124455 (and tp!1402363 tp!1402362))))

(assert (=> b!4999221 (= tp!1402156 e!3124455)))

(declare-fun b!5000082 () Bool)

(assert (=> b!5000082 (= e!3124455 tp_is_empty!36549)))

(declare-fun b!5000085 () Bool)

(declare-fun tp!1402364 () Bool)

(declare-fun tp!1402366 () Bool)

(assert (=> b!5000085 (= e!3124455 (and tp!1402364 tp!1402366))))

(assert (= (and b!4999221 (is-ElementMatch!13776 (regOne!28065 (regTwo!28065 r!12727)))) b!5000082))

(assert (= (and b!4999221 (is-Concat!22569 (regOne!28065 (regTwo!28065 r!12727)))) b!5000083))

(assert (= (and b!4999221 (is-Star!13776 (regOne!28065 (regTwo!28065 r!12727)))) b!5000084))

(assert (= (and b!4999221 (is-Union!13776 (regOne!28065 (regTwo!28065 r!12727)))) b!5000085))

(declare-fun b!5000088 () Bool)

(declare-fun e!3124456 () Bool)

(declare-fun tp!1402370 () Bool)

(assert (=> b!5000088 (= e!3124456 tp!1402370)))

(declare-fun b!5000087 () Bool)

(declare-fun tp!1402368 () Bool)

(declare-fun tp!1402367 () Bool)

(assert (=> b!5000087 (= e!3124456 (and tp!1402368 tp!1402367))))

(assert (=> b!4999221 (= tp!1402158 e!3124456)))

(declare-fun b!5000086 () Bool)

(assert (=> b!5000086 (= e!3124456 tp_is_empty!36549)))

(declare-fun b!5000089 () Bool)

(declare-fun tp!1402369 () Bool)

(declare-fun tp!1402371 () Bool)

(assert (=> b!5000089 (= e!3124456 (and tp!1402369 tp!1402371))))

(assert (= (and b!4999221 (is-ElementMatch!13776 (regTwo!28065 (regTwo!28065 r!12727)))) b!5000086))

(assert (= (and b!4999221 (is-Concat!22569 (regTwo!28065 (regTwo!28065 r!12727)))) b!5000087))

(assert (= (and b!4999221 (is-Star!13776 (regTwo!28065 (regTwo!28065 r!12727)))) b!5000088))

(assert (= (and b!4999221 (is-Union!13776 (regTwo!28065 (regTwo!28065 r!12727)))) b!5000089))

(declare-fun tp!1402372 () Bool)

(declare-fun tp!1402373 () Bool)

(declare-fun b!5000090 () Bool)

(declare-fun e!3124458 () Bool)

(assert (=> b!5000090 (= e!3124458 (and (inv!75916 (left!42277 (left!42277 (c!853101 input!5597)))) tp!1402373 (inv!75916 (right!42607 (left!42277 (c!853101 input!5597)))) tp!1402372))))

(declare-fun b!5000092 () Bool)

(declare-fun e!3124457 () Bool)

(declare-fun tp!1402374 () Bool)

(assert (=> b!5000092 (= e!3124457 tp!1402374)))

(declare-fun b!5000091 () Bool)

(assert (=> b!5000091 (= e!3124458 (and (inv!75924 (xs!18621 (left!42277 (c!853101 input!5597)))) e!3124457))))

(assert (=> b!4999180 (= tp!1402112 (and (inv!75916 (left!42277 (c!853101 input!5597))) e!3124458))))

(assert (= (and b!4999180 (is-Node!15295 (left!42277 (c!853101 input!5597)))) b!5000090))

(assert (= b!5000091 b!5000092))

(assert (= (and b!4999180 (is-Leaf!25392 (left!42277 (c!853101 input!5597)))) b!5000091))

(declare-fun m!6033584 () Bool)

(assert (=> b!5000090 m!6033584))

(declare-fun m!6033586 () Bool)

(assert (=> b!5000090 m!6033586))

(declare-fun m!6033588 () Bool)

(assert (=> b!5000091 m!6033588))

(assert (=> b!4999180 m!6032706))

(declare-fun e!3124460 () Bool)

(declare-fun b!5000093 () Bool)

(declare-fun tp!1402376 () Bool)

(declare-fun tp!1402375 () Bool)

(assert (=> b!5000093 (= e!3124460 (and (inv!75916 (left!42277 (right!42607 (c!853101 input!5597)))) tp!1402376 (inv!75916 (right!42607 (right!42607 (c!853101 input!5597)))) tp!1402375))))

(declare-fun b!5000095 () Bool)

(declare-fun e!3124459 () Bool)

(declare-fun tp!1402377 () Bool)

(assert (=> b!5000095 (= e!3124459 tp!1402377)))

(declare-fun b!5000094 () Bool)

(assert (=> b!5000094 (= e!3124460 (and (inv!75924 (xs!18621 (right!42607 (c!853101 input!5597)))) e!3124459))))

(assert (=> b!4999180 (= tp!1402111 (and (inv!75916 (right!42607 (c!853101 input!5597))) e!3124460))))

(assert (= (and b!4999180 (is-Node!15295 (right!42607 (c!853101 input!5597)))) b!5000093))

(assert (= b!5000094 b!5000095))

(assert (= (and b!4999180 (is-Leaf!25392 (right!42607 (c!853101 input!5597)))) b!5000094))

(declare-fun m!6033590 () Bool)

(assert (=> b!5000093 m!6033590))

(declare-fun m!6033592 () Bool)

(assert (=> b!5000093 m!6033592))

(declare-fun m!6033594 () Bool)

(assert (=> b!5000094 m!6033594))

(assert (=> b!4999180 m!6032708))

(declare-fun b!5000098 () Bool)

(declare-fun e!3124461 () Bool)

(declare-fun tp!1402381 () Bool)

(assert (=> b!5000098 (= e!3124461 tp!1402381)))

(declare-fun b!5000097 () Bool)

(declare-fun tp!1402379 () Bool)

(declare-fun tp!1402378 () Bool)

(assert (=> b!5000097 (= e!3124461 (and tp!1402379 tp!1402378))))

(assert (=> b!4999192 (= tp!1402124 e!3124461)))

(declare-fun b!5000096 () Bool)

(assert (=> b!5000096 (= e!3124461 tp_is_empty!36549)))

(declare-fun b!5000099 () Bool)

(declare-fun tp!1402380 () Bool)

(declare-fun tp!1402382 () Bool)

(assert (=> b!5000099 (= e!3124461 (and tp!1402380 tp!1402382))))

(assert (= (and b!4999192 (is-ElementMatch!13776 (h!64257 (exprs!3701 setElem!28323)))) b!5000096))

(assert (= (and b!4999192 (is-Concat!22569 (h!64257 (exprs!3701 setElem!28323)))) b!5000097))

(assert (= (and b!4999192 (is-Star!13776 (h!64257 (exprs!3701 setElem!28323)))) b!5000098))

(assert (= (and b!4999192 (is-Union!13776 (h!64257 (exprs!3701 setElem!28323)))) b!5000099))

(declare-fun b!5000100 () Bool)

(declare-fun e!3124462 () Bool)

(declare-fun tp!1402383 () Bool)

(declare-fun tp!1402384 () Bool)

(assert (=> b!5000100 (= e!3124462 (and tp!1402383 tp!1402384))))

(assert (=> b!4999192 (= tp!1402125 e!3124462)))

(assert (= (and b!4999192 (is-Cons!57809 (t!370273 (exprs!3701 setElem!28323)))) b!5000100))

(declare-fun condSetEmpty!28333 () Bool)

(assert (=> setNonEmpty!28329 (= condSetEmpty!28333 (= setRest!28329 (as set.empty (Set Context!6402))))))

(declare-fun setRes!28333 () Bool)

(assert (=> setNonEmpty!28329 (= tp!1402118 setRes!28333)))

(declare-fun setIsEmpty!28333 () Bool)

(assert (=> setIsEmpty!28333 setRes!28333))

(declare-fun tp!1402385 () Bool)

(declare-fun setElem!28333 () Context!6402)

(declare-fun setNonEmpty!28333 () Bool)

(declare-fun e!3124463 () Bool)

(assert (=> setNonEmpty!28333 (= setRes!28333 (and tp!1402385 (inv!75918 setElem!28333) e!3124463))))

(declare-fun setRest!28333 () (Set Context!6402))

(assert (=> setNonEmpty!28333 (= setRest!28329 (set.union (set.insert setElem!28333 (as set.empty (Set Context!6402))) setRest!28333))))

(declare-fun b!5000101 () Bool)

(declare-fun tp!1402386 () Bool)

(assert (=> b!5000101 (= e!3124463 tp!1402386)))

(assert (= (and setNonEmpty!28329 condSetEmpty!28333) setIsEmpty!28333))

(assert (= (and setNonEmpty!28329 (not condSetEmpty!28333)) setNonEmpty!28333))

(assert (= setNonEmpty!28333 b!5000101))

(declare-fun m!6033596 () Bool)

(assert (=> setNonEmpty!28333 m!6033596))

(declare-fun b_lambda!198613 () Bool)

(assert (= b_lambda!198611 (or d!1609381 b_lambda!198613)))

(declare-fun bs!1185726 () Bool)

(declare-fun d!1609763 () Bool)

(assert (= bs!1185726 (and d!1609763 d!1609381)))

(assert (=> bs!1185726 (= (dynLambda!23515 lambda!248325 (h!64257 (exprs!3701 setElem!28323))) (validRegex!6073 (h!64257 (exprs!3701 setElem!28323))))))

(declare-fun m!6033598 () Bool)

(assert (=> bs!1185726 m!6033598))

(assert (=> b!4999907 d!1609763))

(push 1)

(assert (not b!5000018))

(assert (not d!1609547))

(assert (not b!4999411))

(assert (not b!4999483))

(assert (not b!4999983))

(assert (not b!5000047))

(assert (not b!5000081))

(assert (not setNonEmpty!28333))

(assert (not d!1609537))

(assert (not b!5000069))

(assert (not b!4999953))

(assert (not d!1609715))

(assert (not b!4999969))

(assert (not b!5000037))

(assert (not d!1609699))

(assert (not b!5000099))

(assert (not b!4999546))

(assert (not b!5000014))

(assert (not b!4999888))

(assert (not b!5000043))

(assert (not d!1609487))

(assert (not b!4999996))

(assert (not b!4999334))

(assert (not b!4999557))

(assert (not d!1609501))

(assert (not b!4999551))

(assert (not b!4999976))

(assert (not b!4999424))

(assert (not b!5000051))

(assert (not b!5000092))

(assert (not b!4999919))

(assert (not b!4999398))

(assert (not b!5000046))

(assert (not b!4999430))

(assert (not b!4999965))

(assert (not b!5000026))

(assert (not b!5000000))

(assert (not b!4999416))

(assert (not b!4999948))

(assert (not b!4999560))

(assert (not b!4999495))

(assert (not b!4999855))

(assert (not b!5000008))

(assert (not d!1609505))

(assert (not d!1609511))

(assert (not b!5000010))

(assert (not b!4999444))

(assert (not b!5000084))

(assert (not b!5000028))

(assert (not b!4999939))

(assert (not bm!348911))

(assert (not b!4999563))

(assert (not b!4999952))

(assert (not b!4999358))

(assert (not d!1609549))

(assert (not b!4999485))

(assert (not b!5000056))

(assert (not b!4999542))

(assert (not b!4999949))

(assert (not b!5000075))

(assert (not b!4999180))

(assert (not b!4999434))

(assert (not b!4999582))

(assert (not b!5000038))

(assert (not b!4999961))

(assert (not b!5000049))

(assert (not b!5000030))

(assert (not b!4999985))

(assert (not b!4999453))

(assert (not b!4999579))

(assert (not b!4999862))

(assert (not b!4999433))

(assert (not b!4999504))

(assert (not b!5000057))

(assert (not b!4999958))

(assert (not d!1609449))

(assert (not b!4999968))

(assert (not b!4999550))

(assert (not b!5000073))

(assert (not b!5000090))

(assert (not b!4999966))

(assert (not b!5000002))

(assert (not b!4999974))

(assert (not b!5000068))

(assert (not b!5000061))

(assert (not d!1609493))

(assert (not b!5000097))

(assert (not b!4999364))

(assert (not d!1609733))

(assert (not b!4999571))

(assert (not b!5000005))

(assert (not b!4999391))

(assert (not b!4999384))

(assert (not b!4999447))

(assert (not bm!348943))

(assert (not d!1609435))

(assert (not b!5000004))

(assert (not b!5000060))

(assert (not d!1609743))

(assert (not b!5000045))

(assert (not b!5000042))

(assert (not b!4999964))

(assert (not b!5000040))

(assert (not b!5000055))

(assert (not b!5000053))

(assert (not b!4999509))

(assert (not b!4999454))

(assert (not b!4999544))

(assert (not b!4999536))

(assert (not bm!348912))

(assert (not bm!348945))

(assert (not b!4999515))

(assert (not b!4999541))

(assert (not d!1609447))

(assert tp_is_empty!36549)

(assert (not b!4999971))

(assert (not b!4999420))

(assert (not bm!348948))

(assert (not b!4999581))

(assert (not b!5000065))

(assert (not b!4999938))

(assert (not b!4999414))

(assert (not b!4999514))

(assert (not b!4999988))

(assert (not b!4999894))

(assert (not d!1609503))

(assert (not d!1609431))

(assert (not b!4999994))

(assert (not b!4999954))

(assert (not b!5000048))

(assert (not b!4999864))

(assert (not b!5000094))

(assert (not d!1609521))

(assert (not b!4999910))

(assert (not bm!348951))

(assert (not b!4999987))

(assert (not b!5000067))

(assert (not b!4999548))

(assert (not b!4999859))

(assert (not b!4999908))

(assert (not b!5000001))

(assert (not b!5000100))

(assert (not d!1609481))

(assert (not b!5000080))

(assert (not d!1609523))

(assert (not b!4999366))

(assert (not b!4999363))

(assert (not b!4999561))

(assert (not b!4999911))

(assert (not b!5000063))

(assert (not b!4999442))

(assert (not bm!348950))

(assert (not b!4999890))

(assert (not b!4999423))

(assert (not b!5000012))

(assert (not b!4999950))

(assert (not b!4999912))

(assert (not bm!348944))

(assert (not b!4999372))

(assert (not b!4999925))

(assert (not b!4999211))

(assert (not b!5000077))

(assert (not b!4999997))

(assert (not b!5000020))

(assert (not b!4999432))

(assert (not b!4999998))

(assert (not b!5000076))

(assert (not b!4999991))

(assert (not b!5000013))

(assert (not b!4999963))

(assert (not b!5000022))

(assert (not b!5000088))

(assert (not b!4999981))

(assert (not b!4999446))

(assert (not d!1609485))

(assert (not b!4999360))

(assert (not b!4999972))

(assert (not bm!348949))

(assert (not d!1609519))

(assert (not b!5000034))

(assert (not bm!348914))

(assert (not b!5000087))

(assert (not b!4999877))

(assert (not b!5000016))

(assert (not b!5000071))

(assert (not d!1609433))

(assert (not b!4999558))

(assert (not d!1609491))

(assert (not b!4999440))

(assert (not b!4999895))

(assert (not b!4999956))

(assert (not b!4999585))

(assert (not d!1609515))

(assert (not d!1609753))

(assert (not b!4999479))

(assert (not b!5000006))

(assert (not b!4999892))

(assert (not b!4999535))

(assert (not b!5000021))

(assert (not b!4999989))

(assert (not b!4999501))

(assert (not b!4999993))

(assert (not b!4999569))

(assert (not b!5000095))

(assert (not b!4999448))

(assert (not b!4999436))

(assert (not b!4999539))

(assert (not b!5000036))

(assert (not b!4999452))

(assert (not b!5000009))

(assert (not b!4999960))

(assert (not b!4999412))

(assert (not bm!348909))

(assert (not d!1609541))

(assert (not bm!348947))

(assert (not b!4999506))

(assert (not b!5000101))

(assert (not b!5000017))

(assert (not b!5000024))

(assert (not b!4999967))

(assert (not d!1609507))

(assert (not b!5000064))

(assert (not b!4999992))

(assert (not b!5000098))

(assert (not b!4999359))

(assert (not b!5000072))

(assert (not b!5000052))

(assert (not b!4999573))

(assert (not b!4999883))

(assert (not b!4999587))

(assert (not b!4999487))

(assert (not b!4999397))

(assert (not bm!348946))

(assert (not bm!348917))

(assert (not b!5000059))

(assert (not b!5000041))

(assert (not b!4999450))

(assert (not b!4999385))

(assert (not b!5000025))

(assert (not b!4999413))

(assert (not b!4999365))

(assert (not b!5000093))

(assert (not b!4999984))

(assert (not d!1609517))

(assert (not b_lambda!198613))

(assert (not b!4999419))

(assert (not b!5000033))

(assert (not b!5000029))

(assert (not b!4999480))

(assert (not b!5000032))

(assert (not b!5000089))

(assert (not bs!1185726))

(assert (not b!4999438))

(assert (not b!5000079))

(assert (not b!5000085))

(assert (not b!5000083))

(assert (not b!5000091))

(assert (not bm!348953))

(assert (not b!5000044))

(assert (not b!4999415))

(assert (not b!4999534))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

