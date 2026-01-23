; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!649154 () Bool)

(assert start!649154)

(declare-fun b!6652194 () Bool)

(assert (=> b!6652194 true))

(assert (=> b!6652194 true))

(declare-fun lambda!372737 () Int)

(declare-fun lambda!372736 () Int)

(assert (=> b!6652194 (not (= lambda!372737 lambda!372736))))

(assert (=> b!6652194 true))

(assert (=> b!6652194 true))

(declare-fun b!6652224 () Bool)

(assert (=> b!6652224 true))

(declare-fun bs!1712822 () Bool)

(declare-fun b!6652250 () Bool)

(assert (= bs!1712822 (and b!6652250 b!6652194)))

(declare-datatypes ((C!33300 0))(
  ( (C!33301 (val!26352 Int)) )
))
(declare-datatypes ((Regex!16515 0))(
  ( (ElementMatch!16515 (c!1227945 C!33300)) (Concat!25360 (regOne!33542 Regex!16515) (regTwo!33542 Regex!16515)) (EmptyExpr!16515) (Star!16515 (reg!16844 Regex!16515)) (EmptyLang!16515) (Union!16515 (regOne!33543 Regex!16515) (regTwo!33543 Regex!16515)) )
))
(declare-fun lt!2425943 () Regex!16515)

(declare-fun r!7292 () Regex!16515)

(declare-fun lambda!372739 () Int)

(assert (=> bs!1712822 (= (and (= (regOne!33542 (regOne!33542 r!7292)) (regOne!33542 r!7292)) (= lt!2425943 (regTwo!33542 r!7292))) (= lambda!372739 lambda!372736))))

(assert (=> bs!1712822 (not (= lambda!372739 lambda!372737))))

(assert (=> b!6652250 true))

(assert (=> b!6652250 true))

(assert (=> b!6652250 true))

(declare-fun lambda!372740 () Int)

(assert (=> bs!1712822 (not (= lambda!372740 lambda!372736))))

(assert (=> bs!1712822 (= (and (= (regOne!33542 (regOne!33542 r!7292)) (regOne!33542 r!7292)) (= lt!2425943 (regTwo!33542 r!7292))) (= lambda!372740 lambda!372737))))

(assert (=> b!6652250 (not (= lambda!372740 lambda!372739))))

(assert (=> b!6652250 true))

(assert (=> b!6652250 true))

(assert (=> b!6652250 true))

(declare-fun lt!2426072 () Regex!16515)

(declare-fun lambda!372741 () Int)

(assert (=> bs!1712822 (= (and (= (regTwo!33542 (regOne!33542 r!7292)) (regOne!33542 r!7292)) (= lt!2426072 (regTwo!33542 r!7292))) (= lambda!372741 lambda!372736))))

(assert (=> bs!1712822 (not (= lambda!372741 lambda!372737))))

(assert (=> b!6652250 (= (and (= (regTwo!33542 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= lt!2426072 lt!2425943)) (= lambda!372741 lambda!372739))))

(assert (=> b!6652250 (not (= lambda!372741 lambda!372740))))

(assert (=> b!6652250 true))

(assert (=> b!6652250 true))

(assert (=> b!6652250 true))

(declare-fun lambda!372742 () Int)

(assert (=> bs!1712822 (= (and (= (regTwo!33542 (regOne!33542 r!7292)) (regOne!33542 r!7292)) (= lt!2426072 (regTwo!33542 r!7292))) (= lambda!372742 lambda!372737))))

(assert (=> b!6652250 (not (= lambda!372742 lambda!372739))))

(assert (=> b!6652250 (= (and (= (regTwo!33542 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= lt!2426072 lt!2425943)) (= lambda!372742 lambda!372740))))

(assert (=> b!6652250 (not (= lambda!372742 lambda!372741))))

(assert (=> bs!1712822 (not (= lambda!372742 lambda!372736))))

(assert (=> b!6652250 true))

(assert (=> b!6652250 true))

(assert (=> b!6652250 true))

(declare-fun bs!1712823 () Bool)

(declare-fun b!6652251 () Bool)

(assert (= bs!1712823 (and b!6652251 b!6652250)))

(declare-fun lambda!372743 () Int)

(assert (=> bs!1712823 (not (= lambda!372743 lambda!372742))))

(declare-fun bs!1712824 () Bool)

(assert (= bs!1712824 (and b!6652251 b!6652194)))

(assert (=> bs!1712824 (not (= lambda!372743 lambda!372737))))

(declare-fun lt!2425950 () Regex!16515)

(assert (=> bs!1712823 (= (= lt!2425950 lt!2425943) (= lambda!372743 lambda!372739))))

(assert (=> bs!1712823 (not (= lambda!372743 lambda!372740))))

(assert (=> bs!1712823 (= (and (= (regOne!33542 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) (= lt!2425950 lt!2426072)) (= lambda!372743 lambda!372741))))

(assert (=> bs!1712824 (= (and (= (regOne!33542 (regOne!33542 r!7292)) (regOne!33542 r!7292)) (= lt!2425950 (regTwo!33542 r!7292))) (= lambda!372743 lambda!372736))))

(assert (=> b!6652251 true))

(assert (=> b!6652251 true))

(assert (=> b!6652251 true))

(declare-fun lambda!372744 () Int)

(assert (=> bs!1712824 (= (and (= (regOne!33542 (regOne!33542 r!7292)) (regOne!33542 r!7292)) (= lt!2425950 (regTwo!33542 r!7292))) (= lambda!372744 lambda!372737))))

(assert (=> bs!1712823 (not (= lambda!372744 lambda!372739))))

(assert (=> bs!1712823 (= (= lt!2425950 lt!2425943) (= lambda!372744 lambda!372740))))

(assert (=> bs!1712823 (= (and (= (regOne!33542 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) (= lt!2425950 lt!2426072)) (= lambda!372744 lambda!372742))))

(assert (=> b!6652251 (not (= lambda!372744 lambda!372743))))

(assert (=> bs!1712823 (not (= lambda!372744 lambda!372741))))

(assert (=> bs!1712824 (not (= lambda!372744 lambda!372736))))

(assert (=> b!6652251 true))

(assert (=> b!6652251 true))

(assert (=> b!6652251 true))

(declare-fun lambda!372745 () Int)

(assert (=> b!6652251 (not (= lambda!372745 lambda!372744))))

(assert (=> bs!1712824 (not (= lambda!372745 lambda!372737))))

(declare-fun lt!2425898 () Regex!16515)

(assert (=> bs!1712823 (= (and (= (regTwo!33542 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= lt!2425898 lt!2425943)) (= lambda!372745 lambda!372739))))

(assert (=> bs!1712823 (not (= lambda!372745 lambda!372740))))

(assert (=> bs!1712823 (not (= lambda!372745 lambda!372742))))

(assert (=> b!6652251 (= (and (= (regTwo!33542 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= lt!2425898 lt!2425950)) (= lambda!372745 lambda!372743))))

(assert (=> bs!1712823 (= (= lt!2425898 lt!2426072) (= lambda!372745 lambda!372741))))

(assert (=> bs!1712824 (= (and (= (regTwo!33542 (regOne!33542 r!7292)) (regOne!33542 r!7292)) (= lt!2425898 (regTwo!33542 r!7292))) (= lambda!372745 lambda!372736))))

(assert (=> b!6652251 true))

(assert (=> b!6652251 true))

(assert (=> b!6652251 true))

(declare-fun lambda!372746 () Int)

(assert (=> b!6652251 (= (and (= (regTwo!33542 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= lt!2425898 lt!2425950)) (= lambda!372746 lambda!372744))))

(assert (=> b!6652251 (not (= lambda!372746 lambda!372745))))

(assert (=> bs!1712824 (= (and (= (regTwo!33542 (regOne!33542 r!7292)) (regOne!33542 r!7292)) (= lt!2425898 (regTwo!33542 r!7292))) (= lambda!372746 lambda!372737))))

(assert (=> bs!1712823 (not (= lambda!372746 lambda!372739))))

(assert (=> bs!1712823 (= (and (= (regTwo!33542 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= lt!2425898 lt!2425943)) (= lambda!372746 lambda!372740))))

(assert (=> bs!1712823 (= (= lt!2425898 lt!2426072) (= lambda!372746 lambda!372742))))

(assert (=> b!6652251 (not (= lambda!372746 lambda!372743))))

(assert (=> bs!1712823 (not (= lambda!372746 lambda!372741))))

(assert (=> bs!1712824 (not (= lambda!372746 lambda!372736))))

(assert (=> b!6652251 true))

(assert (=> b!6652251 true))

(assert (=> b!6652251 true))

(declare-fun bs!1712825 () Bool)

(declare-fun b!6652196 () Bool)

(assert (= bs!1712825 (and b!6652196 b!6652251)))

(declare-fun lambda!372747 () Int)

(assert (=> bs!1712825 (not (= lambda!372747 lambda!372744))))

(assert (=> bs!1712825 (not (= lambda!372747 lambda!372746))))

(declare-fun lt!2425900 () Regex!16515)

(assert (=> bs!1712825 (= (and (= lt!2425900 (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425898)) (= lambda!372747 lambda!372745))))

(declare-fun bs!1712826 () Bool)

(assert (= bs!1712826 (and b!6652196 b!6652194)))

(assert (=> bs!1712826 (not (= lambda!372747 lambda!372737))))

(declare-fun bs!1712827 () Bool)

(assert (= bs!1712827 (and b!6652196 b!6652250)))

(assert (=> bs!1712827 (= (and (= lt!2425900 (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425943)) (= lambda!372747 lambda!372739))))

(assert (=> bs!1712827 (not (= lambda!372747 lambda!372740))))

(assert (=> bs!1712827 (not (= lambda!372747 lambda!372742))))

(assert (=> bs!1712825 (= (and (= lt!2425900 (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425950)) (= lambda!372747 lambda!372743))))

(assert (=> bs!1712827 (= (and (= lt!2425900 (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2426072)) (= lambda!372747 lambda!372741))))

(assert (=> bs!1712826 (= (= lt!2425900 (regOne!33542 r!7292)) (= lambda!372747 lambda!372736))))

(assert (=> b!6652196 true))

(assert (=> b!6652196 true))

(assert (=> b!6652196 true))

(declare-fun lambda!372748 () Int)

(assert (=> bs!1712825 (= (and (= lt!2425900 (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425950)) (= lambda!372748 lambda!372744))))

(assert (=> bs!1712825 (= (and (= lt!2425900 (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425898)) (= lambda!372748 lambda!372746))))

(assert (=> bs!1712825 (not (= lambda!372748 lambda!372745))))

(assert (=> bs!1712826 (= (= lt!2425900 (regOne!33542 r!7292)) (= lambda!372748 lambda!372737))))

(assert (=> b!6652196 (not (= lambda!372748 lambda!372747))))

(assert (=> bs!1712827 (not (= lambda!372748 lambda!372739))))

(assert (=> bs!1712827 (= (and (= lt!2425900 (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425943)) (= lambda!372748 lambda!372740))))

(assert (=> bs!1712827 (= (and (= lt!2425900 (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2426072)) (= lambda!372748 lambda!372742))))

(assert (=> bs!1712825 (not (= lambda!372748 lambda!372743))))

(assert (=> bs!1712827 (not (= lambda!372748 lambda!372741))))

(assert (=> bs!1712826 (not (= lambda!372748 lambda!372736))))

(assert (=> b!6652196 true))

(assert (=> b!6652196 true))

(assert (=> b!6652196 true))

(declare-fun bs!1712828 () Bool)

(declare-fun b!6652192 () Bool)

(assert (= bs!1712828 (and b!6652192 b!6652251)))

(declare-fun lambda!372749 () Int)

(assert (=> bs!1712828 (not (= lambda!372749 lambda!372744))))

(assert (=> bs!1712828 (not (= lambda!372749 lambda!372746))))

(declare-datatypes ((List!65844 0))(
  ( (Nil!65720) (Cons!65720 (h!72168 C!33300) (t!379513 List!65844)) )
))
(declare-fun s!2326 () List!65844)

(declare-datatypes ((tuple2!66988 0))(
  ( (tuple2!66989 (_1!36797 List!65844) (_2!36797 List!65844)) )
))
(declare-fun lt!2425896 () tuple2!66988)

(assert (=> bs!1712828 (= (and (= (_1!36797 lt!2425896) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2425898)) (= lambda!372749 lambda!372745))))

(declare-fun bs!1712829 () Bool)

(assert (= bs!1712829 (and b!6652192 b!6652196)))

(assert (=> bs!1712829 (= (and (= (_1!36797 lt!2425896) s!2326) (= (reg!16844 (regOne!33542 r!7292)) lt!2425900) (= lt!2425900 (regTwo!33542 r!7292))) (= lambda!372749 lambda!372747))))

(declare-fun bs!1712830 () Bool)

(assert (= bs!1712830 (and b!6652192 b!6652250)))

(assert (=> bs!1712830 (= (and (= (_1!36797 lt!2425896) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2425943)) (= lambda!372749 lambda!372739))))

(assert (=> bs!1712830 (not (= lambda!372749 lambda!372740))))

(assert (=> bs!1712830 (not (= lambda!372749 lambda!372742))))

(assert (=> bs!1712828 (= (and (= (_1!36797 lt!2425896) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2425950)) (= lambda!372749 lambda!372743))))

(declare-fun bs!1712831 () Bool)

(assert (= bs!1712831 (and b!6652192 b!6652194)))

(assert (=> bs!1712831 (not (= lambda!372749 lambda!372737))))

(assert (=> bs!1712829 (not (= lambda!372749 lambda!372748))))

(assert (=> bs!1712830 (= (and (= (_1!36797 lt!2425896) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2426072)) (= lambda!372749 lambda!372741))))

(assert (=> bs!1712831 (= (and (= (_1!36797 lt!2425896) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 r!7292)) (= lt!2425900 (regTwo!33542 r!7292))) (= lambda!372749 lambda!372736))))

(assert (=> b!6652192 true))

(assert (=> b!6652192 true))

(assert (=> b!6652192 true))

(declare-fun lambda!372750 () Int)

(assert (=> bs!1712828 (not (= lambda!372750 lambda!372744))))

(assert (=> bs!1712828 (not (= lambda!372750 lambda!372746))))

(assert (=> bs!1712828 (not (= lambda!372750 lambda!372745))))

(assert (=> bs!1712829 (not (= lambda!372750 lambda!372747))))

(assert (=> bs!1712830 (not (= lambda!372750 lambda!372739))))

(assert (=> bs!1712830 (not (= lambda!372750 lambda!372742))))

(assert (=> bs!1712828 (not (= lambda!372750 lambda!372743))))

(assert (=> bs!1712831 (not (= lambda!372750 lambda!372737))))

(assert (=> bs!1712829 (not (= lambda!372750 lambda!372748))))

(assert (=> bs!1712830 (not (= lambda!372750 lambda!372740))))

(assert (=> b!6652192 (not (= lambda!372750 lambda!372749))))

(assert (=> bs!1712830 (not (= lambda!372750 lambda!372741))))

(assert (=> bs!1712831 (not (= lambda!372750 lambda!372736))))

(assert (=> b!6652192 true))

(assert (=> b!6652192 true))

(assert (=> b!6652192 true))

(declare-fun lambda!372751 () Int)

(assert (=> bs!1712828 (= (and (= (_1!36797 lt!2425896) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2425950)) (= lambda!372751 lambda!372744))))

(assert (=> b!6652192 (not (= lambda!372751 lambda!372750))))

(assert (=> bs!1712828 (= (and (= (_1!36797 lt!2425896) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2425898)) (= lambda!372751 lambda!372746))))

(assert (=> bs!1712828 (not (= lambda!372751 lambda!372745))))

(assert (=> bs!1712829 (not (= lambda!372751 lambda!372747))))

(assert (=> bs!1712830 (not (= lambda!372751 lambda!372739))))

(assert (=> bs!1712830 (= (and (= (_1!36797 lt!2425896) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2426072)) (= lambda!372751 lambda!372742))))

(assert (=> bs!1712828 (not (= lambda!372751 lambda!372743))))

(assert (=> bs!1712831 (= (and (= (_1!36797 lt!2425896) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 r!7292)) (= lt!2425900 (regTwo!33542 r!7292))) (= lambda!372751 lambda!372737))))

(assert (=> bs!1712829 (= (and (= (_1!36797 lt!2425896) s!2326) (= (reg!16844 (regOne!33542 r!7292)) lt!2425900) (= lt!2425900 (regTwo!33542 r!7292))) (= lambda!372751 lambda!372748))))

(assert (=> bs!1712830 (= (and (= (_1!36797 lt!2425896) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2425943)) (= lambda!372751 lambda!372740))))

(assert (=> b!6652192 (not (= lambda!372751 lambda!372749))))

(assert (=> bs!1712830 (not (= lambda!372751 lambda!372741))))

(assert (=> bs!1712831 (not (= lambda!372751 lambda!372736))))

(assert (=> b!6652192 true))

(assert (=> b!6652192 true))

(assert (=> b!6652192 true))

(declare-fun b!6652222 () Bool)

(assert (=> b!6652222 true))

(declare-fun bs!1712832 () Bool)

(assert (= bs!1712832 (and b!6652222 b!6652192)))

(declare-fun lambda!372754 () Int)

(declare-fun lambda!372752 () Int)

(assert (=> bs!1712832 (= lambda!372754 lambda!372752)))

(declare-fun bs!1712833 () Bool)

(assert (= bs!1712833 (and b!6652222 b!6652251)))

(declare-fun lambda!372755 () Int)

(assert (=> bs!1712833 (not (= lambda!372755 lambda!372744))))

(assert (=> bs!1712832 (not (= lambda!372755 lambda!372750))))

(assert (=> bs!1712833 (not (= lambda!372755 lambda!372746))))

(declare-fun lt!2426074 () Regex!16515)

(assert (=> bs!1712833 (= (and (= lt!2426074 (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425898)) (= lambda!372755 lambda!372745))))

(assert (=> bs!1712832 (not (= lambda!372755 lambda!372751))))

(declare-fun bs!1712834 () Bool)

(assert (= bs!1712834 (and b!6652222 b!6652196)))

(assert (=> bs!1712834 (= (= lt!2426074 lt!2425900) (= lambda!372755 lambda!372747))))

(declare-fun bs!1712835 () Bool)

(assert (= bs!1712835 (and b!6652222 b!6652250)))

(assert (=> bs!1712835 (= (and (= lt!2426074 (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425943)) (= lambda!372755 lambda!372739))))

(assert (=> bs!1712835 (not (= lambda!372755 lambda!372742))))

(assert (=> bs!1712833 (= (and (= lt!2426074 (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425950)) (= lambda!372755 lambda!372743))))

(declare-fun bs!1712836 () Bool)

(assert (= bs!1712836 (and b!6652222 b!6652194)))

(assert (=> bs!1712836 (not (= lambda!372755 lambda!372737))))

(assert (=> bs!1712834 (not (= lambda!372755 lambda!372748))))

(assert (=> bs!1712835 (not (= lambda!372755 lambda!372740))))

(assert (=> bs!1712832 (= (and (= s!2326 (_1!36797 lt!2425896)) (= lt!2426074 (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425900)) (= lambda!372755 lambda!372749))))

(assert (=> bs!1712835 (= (and (= lt!2426074 (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2426072)) (= lambda!372755 lambda!372741))))

(assert (=> bs!1712836 (= (= lt!2426074 (regOne!33542 r!7292)) (= lambda!372755 lambda!372736))))

(assert (=> b!6652222 true))

(assert (=> b!6652222 true))

(assert (=> b!6652222 true))

(declare-fun lambda!372756 () Int)

(assert (=> bs!1712833 (= (and (= lt!2426074 (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425950)) (= lambda!372756 lambda!372744))))

(assert (=> bs!1712832 (not (= lambda!372756 lambda!372750))))

(assert (=> bs!1712833 (= (and (= lt!2426074 (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425898)) (= lambda!372756 lambda!372746))))

(assert (=> bs!1712833 (not (= lambda!372756 lambda!372745))))

(assert (=> bs!1712832 (= (and (= s!2326 (_1!36797 lt!2425896)) (= lt!2426074 (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425900)) (= lambda!372756 lambda!372751))))

(assert (=> bs!1712834 (not (= lambda!372756 lambda!372747))))

(assert (=> bs!1712835 (not (= lambda!372756 lambda!372739))))

(assert (=> bs!1712835 (= (and (= lt!2426074 (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2426072)) (= lambda!372756 lambda!372742))))

(assert (=> bs!1712833 (not (= lambda!372756 lambda!372743))))

(assert (=> bs!1712836 (= (= lt!2426074 (regOne!33542 r!7292)) (= lambda!372756 lambda!372737))))

(assert (=> bs!1712834 (= (= lt!2426074 lt!2425900) (= lambda!372756 lambda!372748))))

(assert (=> bs!1712835 (= (and (= lt!2426074 (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425943)) (= lambda!372756 lambda!372740))))

(assert (=> bs!1712832 (not (= lambda!372756 lambda!372749))))

(assert (=> bs!1712835 (not (= lambda!372756 lambda!372741))))

(assert (=> b!6652222 (not (= lambda!372756 lambda!372755))))

(assert (=> bs!1712836 (not (= lambda!372756 lambda!372736))))

(assert (=> b!6652222 true))

(assert (=> b!6652222 true))

(assert (=> b!6652222 true))

(declare-fun lambda!372757 () Int)

(assert (=> bs!1712833 (not (= lambda!372757 lambda!372744))))

(assert (=> bs!1712832 (not (= lambda!372757 lambda!372750))))

(assert (=> bs!1712833 (not (= lambda!372757 lambda!372746))))

(declare-fun lt!2425939 () tuple2!66988)

(assert (=> bs!1712833 (= (and (= (_1!36797 lt!2425939) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2425898)) (= lambda!372757 lambda!372745))))

(assert (=> b!6652222 (not (= lambda!372757 lambda!372756))))

(assert (=> bs!1712832 (not (= lambda!372757 lambda!372751))))

(assert (=> bs!1712834 (= (and (= (_1!36797 lt!2425939) s!2326) (= (reg!16844 (regOne!33542 r!7292)) lt!2425900) (= lt!2425900 (regTwo!33542 r!7292))) (= lambda!372757 lambda!372747))))

(assert (=> bs!1712835 (= (and (= (_1!36797 lt!2425939) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2425943)) (= lambda!372757 lambda!372739))))

(assert (=> bs!1712835 (not (= lambda!372757 lambda!372742))))

(assert (=> bs!1712833 (= (and (= (_1!36797 lt!2425939) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2425950)) (= lambda!372757 lambda!372743))))

(assert (=> bs!1712836 (not (= lambda!372757 lambda!372737))))

(assert (=> bs!1712834 (not (= lambda!372757 lambda!372748))))

(assert (=> bs!1712835 (not (= lambda!372757 lambda!372740))))

(assert (=> bs!1712832 (= (= (_1!36797 lt!2425939) (_1!36797 lt!2425896)) (= lambda!372757 lambda!372749))))

(assert (=> bs!1712835 (= (and (= (_1!36797 lt!2425939) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2426072)) (= lambda!372757 lambda!372741))))

(assert (=> b!6652222 (= (and (= (_1!36797 lt!2425939) s!2326) (= (reg!16844 (regOne!33542 r!7292)) lt!2426074) (= lt!2425900 (regTwo!33542 r!7292))) (= lambda!372757 lambda!372755))))

(assert (=> bs!1712836 (= (and (= (_1!36797 lt!2425939) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 r!7292)) (= lt!2425900 (regTwo!33542 r!7292))) (= lambda!372757 lambda!372736))))

(assert (=> b!6652222 true))

(assert (=> b!6652222 true))

(assert (=> b!6652222 true))

(declare-fun lambda!372758 () Int)

(assert (=> bs!1712833 (= (and (= (_1!36797 lt!2425939) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2425950)) (= lambda!372758 lambda!372744))))

(assert (=> bs!1712833 (= (and (= (_1!36797 lt!2425939) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2425898)) (= lambda!372758 lambda!372746))))

(assert (=> bs!1712833 (not (= lambda!372758 lambda!372745))))

(assert (=> b!6652222 (= (and (= (_1!36797 lt!2425939) s!2326) (= (reg!16844 (regOne!33542 r!7292)) lt!2426074) (= lt!2425900 (regTwo!33542 r!7292))) (= lambda!372758 lambda!372756))))

(assert (=> bs!1712832 (= (= (_1!36797 lt!2425939) (_1!36797 lt!2425896)) (= lambda!372758 lambda!372751))))

(assert (=> bs!1712834 (not (= lambda!372758 lambda!372747))))

(assert (=> bs!1712835 (not (= lambda!372758 lambda!372739))))

(assert (=> b!6652222 (not (= lambda!372758 lambda!372757))))

(assert (=> bs!1712832 (not (= lambda!372758 lambda!372750))))

(assert (=> bs!1712835 (= (and (= (_1!36797 lt!2425939) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2426072)) (= lambda!372758 lambda!372742))))

(assert (=> bs!1712833 (not (= lambda!372758 lambda!372743))))

(assert (=> bs!1712836 (= (and (= (_1!36797 lt!2425939) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 r!7292)) (= lt!2425900 (regTwo!33542 r!7292))) (= lambda!372758 lambda!372737))))

(assert (=> bs!1712834 (= (and (= (_1!36797 lt!2425939) s!2326) (= (reg!16844 (regOne!33542 r!7292)) lt!2425900) (= lt!2425900 (regTwo!33542 r!7292))) (= lambda!372758 lambda!372748))))

(assert (=> bs!1712835 (= (and (= (_1!36797 lt!2425939) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2425943)) (= lambda!372758 lambda!372740))))

(assert (=> bs!1712832 (not (= lambda!372758 lambda!372749))))

(assert (=> bs!1712835 (not (= lambda!372758 lambda!372741))))

(assert (=> b!6652222 (not (= lambda!372758 lambda!372755))))

(assert (=> bs!1712836 (not (= lambda!372758 lambda!372736))))

(assert (=> b!6652222 true))

(assert (=> b!6652222 true))

(assert (=> b!6652222 true))

(declare-fun lambda!372759 () Int)

(assert (=> b!6652222 (not (= lambda!372759 lambda!372758))))

(assert (=> bs!1712833 (not (= lambda!372759 lambda!372744))))

(assert (=> bs!1712833 (not (= lambda!372759 lambda!372746))))

(assert (=> bs!1712833 (not (= lambda!372759 lambda!372745))))

(assert (=> b!6652222 (not (= lambda!372759 lambda!372756))))

(assert (=> bs!1712832 (not (= lambda!372759 lambda!372751))))

(assert (=> bs!1712834 (not (= lambda!372759 lambda!372747))))

(assert (=> bs!1712835 (not (= lambda!372759 lambda!372739))))

(assert (=> b!6652222 (not (= lambda!372759 lambda!372757))))

(assert (=> bs!1712832 (= (= (_1!36797 lt!2425939) (_1!36797 lt!2425896)) (= lambda!372759 lambda!372750))))

(assert (=> bs!1712835 (not (= lambda!372759 lambda!372742))))

(assert (=> bs!1712833 (not (= lambda!372759 lambda!372743))))

(assert (=> bs!1712836 (not (= lambda!372759 lambda!372737))))

(assert (=> bs!1712834 (not (= lambda!372759 lambda!372748))))

(assert (=> bs!1712835 (not (= lambda!372759 lambda!372740))))

(assert (=> bs!1712832 (not (= lambda!372759 lambda!372749))))

(assert (=> bs!1712835 (not (= lambda!372759 lambda!372741))))

(assert (=> b!6652222 (not (= lambda!372759 lambda!372755))))

(assert (=> bs!1712836 (not (= lambda!372759 lambda!372736))))

(assert (=> b!6652222 true))

(assert (=> b!6652222 true))

(assert (=> b!6652222 true))

(declare-fun bs!1712837 () Bool)

(declare-fun b!6652208 () Bool)

(assert (= bs!1712837 (and b!6652208 b!6652222)))

(declare-fun lambda!372760 () Int)

(assert (=> bs!1712837 (not (= lambda!372760 lambda!372758))))

(declare-fun bs!1712838 () Bool)

(assert (= bs!1712838 (and b!6652208 b!6652251)))

(assert (=> bs!1712838 (not (= lambda!372760 lambda!372744))))

(assert (=> bs!1712838 (not (= lambda!372760 lambda!372746))))

(assert (=> bs!1712838 (= (and (= Nil!65720 s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2425898)) (= lambda!372760 lambda!372745))))

(assert (=> bs!1712837 (not (= lambda!372760 lambda!372756))))

(declare-fun bs!1712839 () Bool)

(assert (= bs!1712839 (and b!6652208 b!6652192)))

(assert (=> bs!1712839 (not (= lambda!372760 lambda!372751))))

(declare-fun bs!1712840 () Bool)

(assert (= bs!1712840 (and b!6652208 b!6652196)))

(assert (=> bs!1712840 (= (and (= Nil!65720 s!2326) (= (reg!16844 (regOne!33542 r!7292)) lt!2425900) (= lt!2425900 (regTwo!33542 r!7292))) (= lambda!372760 lambda!372747))))

(declare-fun bs!1712841 () Bool)

(assert (= bs!1712841 (and b!6652208 b!6652250)))

(assert (=> bs!1712841 (= (and (= Nil!65720 s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2425943)) (= lambda!372760 lambda!372739))))

(assert (=> bs!1712837 (= (= Nil!65720 (_1!36797 lt!2425939)) (= lambda!372760 lambda!372757))))

(assert (=> bs!1712839 (not (= lambda!372760 lambda!372750))))

(assert (=> bs!1712841 (not (= lambda!372760 lambda!372742))))

(assert (=> bs!1712838 (= (and (= Nil!65720 s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2425950)) (= lambda!372760 lambda!372743))))

(declare-fun bs!1712842 () Bool)

(assert (= bs!1712842 (and b!6652208 b!6652194)))

(assert (=> bs!1712842 (not (= lambda!372760 lambda!372737))))

(assert (=> bs!1712840 (not (= lambda!372760 lambda!372748))))

(assert (=> bs!1712837 (not (= lambda!372760 lambda!372759))))

(assert (=> bs!1712841 (not (= lambda!372760 lambda!372740))))

(assert (=> bs!1712839 (= (= Nil!65720 (_1!36797 lt!2425896)) (= lambda!372760 lambda!372749))))

(assert (=> bs!1712841 (= (and (= Nil!65720 s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2426072)) (= lambda!372760 lambda!372741))))

(assert (=> bs!1712837 (= (and (= Nil!65720 s!2326) (= (reg!16844 (regOne!33542 r!7292)) lt!2426074) (= lt!2425900 (regTwo!33542 r!7292))) (= lambda!372760 lambda!372755))))

(assert (=> bs!1712842 (= (and (= Nil!65720 s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 r!7292)) (= lt!2425900 (regTwo!33542 r!7292))) (= lambda!372760 lambda!372736))))

(assert (=> b!6652208 true))

(assert (=> b!6652208 true))

(declare-fun lambda!372761 () Int)

(assert (=> bs!1712837 (= (= Nil!65720 (_1!36797 lt!2425939)) (= lambda!372761 lambda!372758))))

(assert (=> bs!1712838 (= (and (= Nil!65720 s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2425950)) (= lambda!372761 lambda!372744))))

(assert (=> bs!1712838 (= (and (= Nil!65720 s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2425898)) (= lambda!372761 lambda!372746))))

(assert (=> b!6652208 (not (= lambda!372761 lambda!372760))))

(assert (=> bs!1712838 (not (= lambda!372761 lambda!372745))))

(assert (=> bs!1712837 (= (and (= Nil!65720 s!2326) (= (reg!16844 (regOne!33542 r!7292)) lt!2426074) (= lt!2425900 (regTwo!33542 r!7292))) (= lambda!372761 lambda!372756))))

(assert (=> bs!1712839 (= (= Nil!65720 (_1!36797 lt!2425896)) (= lambda!372761 lambda!372751))))

(assert (=> bs!1712840 (not (= lambda!372761 lambda!372747))))

(assert (=> bs!1712841 (not (= lambda!372761 lambda!372739))))

(assert (=> bs!1712837 (not (= lambda!372761 lambda!372757))))

(assert (=> bs!1712839 (not (= lambda!372761 lambda!372750))))

(assert (=> bs!1712841 (= (and (= Nil!65720 s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2426072)) (= lambda!372761 lambda!372742))))

(assert (=> bs!1712838 (not (= lambda!372761 lambda!372743))))

(assert (=> bs!1712842 (= (and (= Nil!65720 s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 r!7292)) (= lt!2425900 (regTwo!33542 r!7292))) (= lambda!372761 lambda!372737))))

(assert (=> bs!1712840 (= (and (= Nil!65720 s!2326) (= (reg!16844 (regOne!33542 r!7292)) lt!2425900) (= lt!2425900 (regTwo!33542 r!7292))) (= lambda!372761 lambda!372748))))

(assert (=> bs!1712837 (not (= lambda!372761 lambda!372759))))

(assert (=> bs!1712841 (= (and (= Nil!65720 s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= lt!2425900 lt!2425943)) (= lambda!372761 lambda!372740))))

(assert (=> bs!1712839 (not (= lambda!372761 lambda!372749))))

(assert (=> bs!1712841 (not (= lambda!372761 lambda!372741))))

(assert (=> bs!1712837 (not (= lambda!372761 lambda!372755))))

(assert (=> bs!1712842 (not (= lambda!372761 lambda!372736))))

(assert (=> b!6652208 true))

(assert (=> b!6652208 true))

(declare-fun lambda!372762 () Int)

(assert (=> bs!1712837 (not (= lambda!372762 lambda!372758))))

(assert (=> bs!1712838 (not (= lambda!372762 lambda!372744))))

(assert (=> b!6652208 (not (= lambda!372762 lambda!372761))))

(assert (=> bs!1712838 (not (= lambda!372762 lambda!372746))))

(assert (=> b!6652208 (not (= lambda!372762 lambda!372760))))

(assert (=> bs!1712838 (not (= lambda!372762 lambda!372745))))

(assert (=> bs!1712837 (not (= lambda!372762 lambda!372756))))

(assert (=> bs!1712839 (not (= lambda!372762 lambda!372751))))

(assert (=> bs!1712840 (not (= lambda!372762 lambda!372747))))

(assert (=> bs!1712841 (not (= lambda!372762 lambda!372739))))

(assert (=> bs!1712837 (not (= lambda!372762 lambda!372757))))

(assert (=> bs!1712839 (= (= Nil!65720 (_1!36797 lt!2425896)) (= lambda!372762 lambda!372750))))

(assert (=> bs!1712841 (not (= lambda!372762 lambda!372742))))

(assert (=> bs!1712838 (not (= lambda!372762 lambda!372743))))

(assert (=> bs!1712842 (not (= lambda!372762 lambda!372737))))

(assert (=> bs!1712840 (not (= lambda!372762 lambda!372748))))

(assert (=> bs!1712837 (= (= Nil!65720 (_1!36797 lt!2425939)) (= lambda!372762 lambda!372759))))

(assert (=> bs!1712841 (not (= lambda!372762 lambda!372740))))

(assert (=> bs!1712839 (not (= lambda!372762 lambda!372749))))

(assert (=> bs!1712841 (not (= lambda!372762 lambda!372741))))

(assert (=> bs!1712837 (not (= lambda!372762 lambda!372755))))

(assert (=> bs!1712842 (not (= lambda!372762 lambda!372736))))

(assert (=> b!6652208 true))

(assert (=> b!6652208 true))

(declare-datatypes ((Unit!159541 0))(
  ( (Unit!159542) )
))
(declare-fun e!4022253 () Unit!159541)

(declare-fun Unit!159543 () Unit!159541)

(assert (=> b!6652192 (= e!4022253 Unit!159543)))

(declare-fun lt!2426086 () Unit!159541)

(declare-fun call!589239 () Unit!159541)

(assert (=> b!6652192 (= lt!2426086 call!589239)))

(declare-fun call!589379 () Bool)

(declare-fun call!589309 () Bool)

(assert (=> b!6652192 (= call!589379 call!589309)))

(declare-fun lt!2426006 () Unit!159541)

(declare-fun call!589365 () Unit!159541)

(assert (=> b!6652192 (= lt!2426006 call!589365)))

(declare-datatypes ((Option!16406 0))(
  ( (None!16405) (Some!16405 (v!52600 tuple2!66988)) )
))
(declare-fun lt!2426049 () Option!16406)

(declare-fun call!589265 () Option!16406)

(assert (=> b!6652192 (= lt!2426049 call!589265)))

(declare-fun call!589337 () Bool)

(declare-fun call!589356 () Bool)

(assert (=> b!6652192 (= call!589337 call!589356)))

(declare-fun lt!2426025 () Unit!159541)

(declare-fun call!589322 () Unit!159541)

(assert (=> b!6652192 (= lt!2426025 call!589322)))

(declare-fun call!589345 () Bool)

(declare-fun call!589299 () Bool)

(assert (=> b!6652192 (= call!589345 call!589299)))

(declare-fun lt!2425995 () Unit!159541)

(declare-fun call!589236 () Unit!159541)

(assert (=> b!6652192 (= lt!2425995 call!589236)))

(declare-fun call!589331 () Bool)

(declare-fun call!589376 () Bool)

(assert (=> b!6652192 (= call!589331 call!589376)))

(declare-fun lt!2426051 () tuple2!66988)

(declare-fun call!589316 () tuple2!66988)

(assert (=> b!6652192 (= lt!2426051 call!589316)))

(declare-fun lt!2426061 () Unit!159541)

(declare-fun call!589204 () Unit!159541)

(assert (=> b!6652192 (= lt!2426061 call!589204)))

(declare-fun lt!2426048 () List!65844)

(declare-fun call!589178 () List!65844)

(assert (=> b!6652192 (= lt!2426048 call!589178)))

(declare-fun lt!2425940 () List!65844)

(declare-fun call!589242 () List!65844)

(assert (=> b!6652192 (= lt!2425940 call!589242)))

(declare-fun lt!2426044 () List!65844)

(declare-fun call!589216 () List!65844)

(assert (=> b!6652192 (= lt!2426044 call!589216)))

(declare-fun lt!2426090 () List!65844)

(declare-fun call!589287 () List!65844)

(assert (=> b!6652192 (= lt!2426090 call!589287)))

(assert (=> b!6652192 (= lt!2426044 lt!2426090)))

(declare-fun lt!2426088 () Unit!159541)

(declare-fun call!589352 () Unit!159541)

(assert (=> b!6652192 (= lt!2426088 call!589352)))

(declare-fun call!589381 () Bool)

(assert (=> b!6652192 call!589381))

(declare-fun lt!2426038 () Unit!159541)

(declare-fun call!589278 () Unit!159541)

(assert (=> b!6652192 (= lt!2426038 call!589278)))

(declare-fun call!589285 () Bool)

(assert (=> b!6652192 call!589285))

(declare-fun lt!2426047 () Unit!159541)

(declare-fun call!589362 () Unit!159541)

(assert (=> b!6652192 (= lt!2426047 call!589362)))

(declare-fun call!589221 () Bool)

(declare-fun call!589223 () Bool)

(assert (=> b!6652192 (= call!589221 call!589223)))

(declare-fun lt!2426076 () Unit!159541)

(declare-fun call!589368 () Unit!159541)

(assert (=> b!6652192 (= lt!2426076 call!589368)))

(declare-fun call!589266 () Bool)

(assert (=> b!6652192 call!589266))

(declare-fun lt!2425931 () Unit!159541)

(declare-fun call!589247 () Unit!159541)

(assert (=> b!6652192 (= lt!2425931 call!589247)))

(declare-fun lt!2425891 () Unit!159541)

(declare-fun call!589329 () Unit!159541)

(assert (=> b!6652192 (= lt!2425891 call!589329)))

(declare-fun call!589212 () Bool)

(assert (=> b!6652192 call!589212))

(declare-fun lt!2425970 () Unit!159541)

(declare-fun call!589271 () Unit!159541)

(assert (=> b!6652192 (= lt!2425970 call!589271)))

(declare-fun res!2726026 () Bool)

(declare-fun call!589183 () Bool)

(assert (=> b!6652192 (= res!2726026 call!589183)))

(declare-fun e!4022262 () Bool)

(assert (=> b!6652192 (=> (not res!2726026) (not e!4022262))))

(assert (=> b!6652192 e!4022262))

(declare-fun lt!2426068 () Unit!159541)

(declare-fun call!589327 () Unit!159541)

(assert (=> b!6652192 (= lt!2426068 call!589327)))

(declare-fun call!589293 () Bool)

(assert (=> b!6652192 call!589293))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65845 0))(
  ( (Nil!65721) (Cons!65721 (h!72169 Regex!16515) (t!379514 List!65845)) )
))
(declare-datatypes ((Context!11798 0))(
  ( (Context!11799 (exprs!6399 List!65845)) )
))
(declare-fun lt!2425997 () (InoxSet Context!11798))

(declare-fun lt!2426055 () (InoxSet Context!11798))

(declare-fun c!1227937 () Bool)

(declare-fun bm!589169 () Bool)

(declare-fun lt!2426083 () (InoxSet Context!11798))

(declare-fun call!589256 () Unit!159541)

(declare-fun lt!2426007 () (InoxSet Context!11798))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1346 ((InoxSet Context!11798) (InoxSet Context!11798) List!65844) Unit!159541)

(assert (=> bm!589169 (= call!589256 (lemmaZipperConcatMatchesSameAsBothZippers!1346 (ite c!1227937 lt!2426007 lt!2426083) (ite c!1227937 lt!2425997 lt!2426055) (t!379513 s!2326)))))

(declare-fun bm!589170 () Bool)

(declare-fun call!589267 () Bool)

(declare-fun call!589263 () Bool)

(assert (=> bm!589170 (= call!589267 call!589263)))

(declare-fun call!589237 () Unit!159541)

(declare-fun lt!2425907 () (InoxSet Context!11798))

(declare-fun lt!2425981 () (InoxSet Context!11798))

(declare-fun lt!2425966 () Context!11798)

(declare-fun c!1227934 () Bool)

(declare-fun lt!2426039 () (InoxSet Context!11798))

(declare-fun c!1227941 () Bool)

(declare-fun lambda!372738 () Int)

(declare-fun lt!2426021 () Context!11798)

(declare-fun bm!589171 () Bool)

(declare-fun lemmaFlatMapOnSingletonSet!1546 ((InoxSet Context!11798) Context!11798 Int) Unit!159541)

(assert (=> bm!589171 (= call!589237 (lemmaFlatMapOnSingletonSet!1546 (ite c!1227934 lt!2425907 (ite c!1227941 lt!2426039 lt!2425981)) (ite c!1227934 lt!2426021 lt!2425966) (ite c!1227934 lambda!372738 (ite c!1227941 lambda!372738 lambda!372738))))))

(declare-fun bm!589172 () Bool)

(declare-fun call!589374 () Unit!159541)

(assert (=> bm!589172 (= call!589374 call!589236)))

(declare-fun bm!589173 () Bool)

(declare-fun call!589196 () Bool)

(declare-fun call!589246 () Bool)

(assert (=> bm!589173 (= call!589196 call!589246)))

(declare-fun c!1227938 () Bool)

(declare-fun bm!589174 () Bool)

(declare-fun c!1227939 () Bool)

(declare-fun call!589339 () Unit!159541)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2122 (Regex!16515 Regex!16515 List!65844) Unit!159541)

(assert (=> bm!589174 (= call!589339 (lemmaExistCutMatchRandMatchRSpecEquivalent!2122 (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)))))))

(declare-fun b!6652193 () Bool)

(declare-fun lt!2426081 () Bool)

(assert (=> b!6652193 (= e!4022262 lt!2426081)))

(declare-fun bm!589175 () Bool)

(declare-fun call!589197 () Bool)

(declare-fun call!589355 () Bool)

(assert (=> bm!589175 (= call!589197 call!589355)))

(declare-fun e!4022231 () Bool)

(declare-fun e!4022235 () Bool)

(assert (=> b!6652194 (= e!4022231 e!4022235)))

(declare-fun res!2726029 () Bool)

(assert (=> b!6652194 (=> res!2726029 e!4022235)))

(declare-fun lt!2426073 () Bool)

(declare-fun lt!2426043 () Bool)

(get-info :version)

(assert (=> b!6652194 (= res!2726029 (or (not (= lt!2426043 lt!2426073)) ((_ is Nil!65720) s!2326)))))

(declare-fun Exists!3585 (Int) Bool)

(assert (=> b!6652194 (= (Exists!3585 lambda!372736) (Exists!3585 lambda!372737))))

(declare-fun lt!2426016 () Unit!159541)

(assert (=> b!6652194 (= lt!2426016 (lemmaExistCutMatchRandMatchRSpecEquivalent!2122 (regOne!33542 r!7292) (regTwo!33542 r!7292) s!2326))))

(assert (=> b!6652194 (= lt!2426073 (Exists!3585 lambda!372736))))

(declare-fun isDefined!13109 (Option!16406) Bool)

(declare-fun findConcatSeparation!2820 (Regex!16515 Regex!16515 List!65844 List!65844 List!65844) Option!16406)

(assert (=> b!6652194 (= lt!2426073 (isDefined!13109 (findConcatSeparation!2820 (regOne!33542 r!7292) (regTwo!33542 r!7292) Nil!65720 s!2326 s!2326)))))

(declare-fun lt!2426062 () Unit!159541)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2584 (Regex!16515 Regex!16515 List!65844) Unit!159541)

(assert (=> b!6652194 (= lt!2426062 (lemmaFindConcatSeparationEquivalentToExists!2584 (regOne!33542 r!7292) (regTwo!33542 r!7292) s!2326))))

(declare-fun bm!589176 () Bool)

(declare-fun call!589225 () Regex!16515)

(declare-fun call!589375 () Regex!16515)

(assert (=> bm!589176 (= call!589225 call!589375)))

(declare-fun bm!589177 () Bool)

(declare-fun call!589343 () (InoxSet Context!11798))

(declare-fun call!589209 () (InoxSet Context!11798))

(assert (=> bm!589177 (= call!589343 call!589209)))

(declare-fun bm!589178 () Bool)

(declare-fun call!589226 () Unit!159541)

(declare-fun call!589234 () Unit!159541)

(assert (=> bm!589178 (= call!589226 call!589234)))

(declare-fun b!6652195 () Bool)

(declare-fun res!2726043 () Bool)

(assert (=> b!6652195 (=> res!2726043 e!4022231)))

(declare-datatypes ((List!65846 0))(
  ( (Nil!65722) (Cons!65722 (h!72170 Context!11798) (t!379515 List!65846)) )
))
(declare-fun zl!343 () List!65846)

(assert (=> b!6652195 (= res!2726043 (not ((_ is Cons!65721) (exprs!6399 (h!72170 zl!343)))))))

(declare-fun bm!589179 () Bool)

(declare-fun call!589230 () Bool)

(declare-fun call!589275 () Bool)

(assert (=> bm!589179 (= call!589230 call!589275)))

(declare-fun bm!589180 () Bool)

(declare-fun call!589220 () (InoxSet Context!11798))

(declare-fun lt!2426009 () Context!11798)

(declare-fun lt!2426071 () Context!11798)

(declare-fun lt!2426056 () Context!11798)

(declare-fun derivationStepZipperUp!1689 (Context!11798 C!33300) (InoxSet Context!11798))

(assert (=> bm!589180 (= call!589220 (derivationStepZipperUp!1689 (ite c!1227937 lt!2426071 (ite c!1227939 lt!2426009 (ite c!1227934 lt!2426021 lt!2426056))) (h!72168 s!2326)))))

(declare-fun bm!589181 () Bool)

(declare-fun call!589342 () Option!16406)

(declare-fun call!589205 () Option!16406)

(assert (=> bm!589181 (= call!589342 call!589205)))

(declare-fun bm!589182 () Bool)

(declare-fun call!589258 () Bool)

(declare-fun call!589310 () Bool)

(assert (=> bm!589182 (= call!589258 call!589310)))

(declare-fun bm!589183 () Bool)

(declare-fun call!589371 () Unit!159541)

(assert (=> bm!589183 (= call!589236 call!589371)))

(declare-fun bm!589184 () Bool)

(declare-fun call!589294 () Bool)

(assert (=> bm!589184 (= call!589223 call!589294)))

(declare-fun call!589306 () Bool)

(assert (=> b!6652196 call!589306))

(declare-fun lt!2426065 () Unit!159541)

(assert (=> b!6652196 (= lt!2426065 e!4022253)))

(declare-fun c!1227935 () Bool)

(declare-fun isEmpty!38032 (List!65844) Bool)

(assert (=> b!6652196 (= c!1227935 (isEmpty!38032 (_1!36797 lt!2425896)))))

(declare-fun call!589350 () tuple2!66988)

(assert (=> b!6652196 (= lt!2425896 call!589350)))

(declare-fun call!589176 () Bool)

(declare-fun call!589315 () Bool)

(assert (=> b!6652196 (= call!589176 call!589315)))

(declare-fun lt!2425948 () Unit!159541)

(declare-fun call!589253 () Unit!159541)

(assert (=> b!6652196 (= lt!2425948 call!589253)))

(declare-fun call!589280 () Bool)

(assert (=> b!6652196 (= call!589267 call!589280)))

(declare-fun lt!2425990 () Option!16406)

(assert (=> b!6652196 (= lt!2425990 call!589342)))

(declare-fun lt!2425957 () Unit!159541)

(declare-fun call!589319 () Unit!159541)

(assert (=> b!6652196 (= lt!2425957 call!589319)))

(declare-fun e!4022256 () Unit!159541)

(declare-fun Unit!159544 () Unit!159541)

(assert (=> b!6652196 (= e!4022256 Unit!159544)))

(declare-fun bm!589185 () Bool)

(declare-fun call!589185 () Bool)

(declare-fun call!589295 () Bool)

(assert (=> bm!589185 (= call!589185 call!589295)))

(declare-fun bm!589186 () Bool)

(declare-fun call!589215 () Bool)

(declare-fun call!589334 () Bool)

(assert (=> bm!589186 (= call!589215 call!589334)))

(declare-fun bm!589187 () Bool)

(declare-fun call!589378 () Unit!159541)

(assert (=> bm!589187 (= call!589362 call!589378)))

(declare-fun bm!589188 () Bool)

(declare-fun call!589224 () (InoxSet Context!11798))

(declare-fun call!589348 () (InoxSet Context!11798))

(assert (=> bm!589188 (= call!589224 call!589348)))

(declare-fun bm!589189 () Bool)

(declare-fun call!589283 () (InoxSet Context!11798))

(declare-fun call!589340 () (InoxSet Context!11798))

(assert (=> bm!589189 (= call!589283 call!589340)))

(declare-fun bm!589190 () Bool)

(declare-fun call!589175 () Unit!159541)

(declare-fun call!589318 () Unit!159541)

(assert (=> bm!589190 (= call!589175 call!589318)))

(declare-fun bm!589191 () Bool)

(declare-fun call!589297 () Unit!159541)

(assert (=> bm!589191 (= call!589368 call!589297)))

(declare-fun b!6652197 () Bool)

(declare-fun e!4022267 () Bool)

(assert (=> b!6652197 (= e!4022267 call!589223)))

(declare-fun e!4022233 () Bool)

(declare-fun tp!1830917 () Bool)

(declare-fun e!4022269 () Bool)

(declare-fun b!6652198 () Bool)

(declare-fun inv!84534 (Context!11798) Bool)

(assert (=> b!6652198 (= e!4022233 (and (inv!84534 (h!72170 zl!343)) e!4022269 tp!1830917))))

(declare-fun lt!2426008 () List!65845)

(declare-fun lt!2425951 () List!65845)

(declare-fun lt!2426004 () List!65845)

(declare-fun bm!589192 () Bool)

(declare-fun call!589187 () Regex!16515)

(declare-fun generalisedConcat!2112 (List!65845) Regex!16515)

(assert (=> bm!589192 (= call!589187 (generalisedConcat!2112 (ite c!1227937 lt!2425951 (ite c!1227939 lt!2426008 lt!2426004))))))

(declare-fun bm!589193 () Bool)

(declare-fun call!589338 () Bool)

(assert (=> bm!589193 (= call!589379 call!589338)))

(declare-fun b!6652199 () Bool)

(declare-fun res!2726034 () Bool)

(declare-fun e!4022237 () Bool)

(assert (=> b!6652199 (=> (not res!2726034) (not e!4022237))))

(declare-fun unfocusZipper!2257 (List!65846) Regex!16515)

(assert (=> b!6652199 (= res!2726034 (= r!7292 (unfocusZipper!2257 zl!343)))))

(declare-fun bm!589194 () Bool)

(declare-fun call!589210 () Unit!159541)

(declare-fun call!589270 () Unit!159541)

(assert (=> bm!589194 (= call!589210 call!589270)))

(declare-fun bm!589195 () Bool)

(declare-fun call!589254 () Bool)

(declare-fun call!589284 () Bool)

(assert (=> bm!589195 (= call!589254 call!589284)))

(declare-fun bm!589196 () Bool)

(declare-fun call!589207 () (InoxSet Context!11798))

(declare-fun call!589201 () (InoxSet Context!11798))

(assert (=> bm!589196 (= call!589207 call!589201)))

(declare-fun lt!2425949 () Regex!16515)

(declare-fun bm!589197 () Bool)

(declare-fun matchRSpec!3616 (Regex!16515 List!65844) Bool)

(assert (=> bm!589197 (= call!589334 (matchRSpec!3616 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074)) (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939))))))

(declare-fun bm!589198 () Bool)

(declare-fun call!589341 () Bool)

(declare-fun call!589277 () Bool)

(assert (=> bm!589198 (= call!589341 call!589277)))

(declare-fun call!589303 () Bool)

(declare-fun lt!2425935 () (InoxSet Context!11798))

(declare-fun z!1189 () (InoxSet Context!11798))

(declare-fun bm!589199 () Bool)

(declare-fun lt!2426050 () (InoxSet Context!11798))

(declare-fun lt!2426064 () tuple2!66988)

(declare-fun matchZipper!2527 ((InoxSet Context!11798) List!65844) Bool)

(assert (=> bm!589199 (= call!589303 (matchZipper!2527 (ite c!1227937 lt!2425997 (ite c!1227939 z!1189 (ite c!1227941 (ite c!1227935 z!1189 lt!2425935) lt!2426050))) (ite c!1227937 (t!379513 s!2326) (ite c!1227939 s!2326 (ite c!1227941 (ite c!1227935 s!2326 (_1!36797 lt!2426051)) (_2!36797 lt!2426064))))))))

(declare-fun bm!589200 () Bool)

(declare-fun call!589305 () Bool)

(declare-fun call!589366 () Bool)

(assert (=> bm!589200 (= call!589305 call!589366)))

(declare-fun b!6652200 () Bool)

(declare-fun tp!1830916 () Bool)

(assert (=> b!6652200 (= e!4022269 tp!1830916)))

(declare-fun bm!589201 () Bool)

(declare-fun call!589344 () Option!16406)

(assert (=> bm!589201 (= call!589344 call!589342)))

(declare-fun b!6652201 () Bool)

(declare-fun e!4022260 () Bool)

(assert (=> b!6652201 (= c!1227939 e!4022260)))

(declare-fun res!2726041 () Bool)

(assert (=> b!6652201 (=> (not res!2726041) (not e!4022260))))

(assert (=> b!6652201 (= res!2726041 ((_ is Concat!25360) (regOne!33542 r!7292)))))

(declare-fun e!4022240 () Unit!159541)

(declare-fun e!4022243 () Unit!159541)

(assert (=> b!6652201 (= e!4022240 e!4022243)))

(declare-fun bm!589202 () Bool)

(declare-fun call!589276 () Unit!159541)

(assert (=> bm!589202 (= call!589276 call!589210)))

(declare-fun bm!589203 () Bool)

(declare-fun call!589261 () Bool)

(assert (=> bm!589203 (= call!589285 call!589261)))

(declare-fun bm!589204 () Bool)

(declare-fun call!589262 () Bool)

(declare-fun call!589281 () Bool)

(assert (=> bm!589204 (= call!589262 call!589281)))

(declare-fun bm!589205 () Bool)

(declare-fun call!589377 () Bool)

(declare-fun call!589292 () Bool)

(assert (=> bm!589205 (= call!589377 call!589292)))

(declare-fun b!6652202 () Bool)

(declare-fun e!4022261 () Bool)

(declare-fun tp_is_empty!42283 () Bool)

(declare-fun tp!1830925 () Bool)

(assert (=> b!6652202 (= e!4022261 (and tp_is_empty!42283 tp!1830925))))

(declare-fun bm!589206 () Bool)

(declare-fun call!589217 () Bool)

(assert (=> bm!589206 (= call!589337 call!589217)))

(declare-fun b!6652203 () Bool)

(declare-fun res!2726022 () Bool)

(assert (=> b!6652203 (=> res!2726022 e!4022231)))

(assert (=> b!6652203 (= res!2726022 (or ((_ is EmptyExpr!16515) r!7292) ((_ is EmptyLang!16515) r!7292) ((_ is ElementMatch!16515) r!7292) ((_ is Union!16515) r!7292) (not ((_ is Concat!25360) r!7292))))))

(declare-fun bm!589207 () Bool)

(declare-fun call!589198 () Regex!16515)

(declare-fun call!589177 () Regex!16515)

(assert (=> bm!589207 (= call!589198 call!589177)))

(declare-fun call!589222 () Unit!159541)

(declare-fun bm!589208 () Bool)

(assert (=> bm!589208 (= call!589222 (lemmaFindConcatSeparationEquivalentToExists!2584 (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074)) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326))))))

(declare-fun b!6652204 () Bool)

(declare-fun e!4022232 () Unit!159541)

(declare-fun Unit!159545 () Unit!159541)

(assert (=> b!6652204 (= e!4022232 Unit!159545)))

(declare-fun bm!589209 () Bool)

(declare-fun call!589248 () Bool)

(assert (=> bm!589209 (= call!589315 call!589248)))

(declare-fun bm!589210 () Bool)

(declare-fun call!589312 () Bool)

(assert (=> bm!589210 (= call!589212 call!589312)))

(declare-fun call!589257 () Unit!159541)

(declare-fun lt!2426042 () (InoxSet Context!11798))

(declare-fun lt!2425989 () (InoxSet Context!11798))

(declare-fun lt!2425952 () (InoxSet Context!11798))

(declare-fun bm!589211 () Bool)

(assert (=> bm!589211 (= call!589257 (lemmaZipperConcatMatchesSameAsBothZippers!1346 (ite c!1227937 lt!2426007 (ite c!1227939 lt!2426083 lt!2426042)) (ite c!1227937 lt!2425952 (ite c!1227939 lt!2425989 lt!2425952)) (t!379513 s!2326)))))

(declare-fun bm!589212 () Bool)

(declare-fun call!589233 () Bool)

(assert (=> bm!589212 (= call!589217 call!589233)))

(declare-fun bm!589213 () Bool)

(declare-fun lt!2425946 () tuple2!66988)

(declare-fun lemmaConcatAssociativity!2958 (List!65844 List!65844 List!65844) Unit!159541)

(assert (=> bm!589213 (= call!589204 (lemmaConcatAssociativity!2958 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946)) (ite c!1227941 (_2!36797 lt!2426051) (_2!36797 lt!2425946)) (ite c!1227941 (_2!36797 lt!2425896) (_2!36797 lt!2425939))))))

(declare-fun bm!589214 () Bool)

(declare-fun lt!2426002 () Option!16406)

(declare-fun call!589193 () Option!16406)

(assert (=> bm!589214 (= call!589233 (isDefined!13109 (ite c!1227939 call!589193 (ite c!1227934 call!589205 (ite c!1227941 lt!2426049 lt!2426002)))))))

(declare-fun b!6652205 () Bool)

(declare-fun e!4022263 () Bool)

(assert (=> b!6652205 (= e!4022263 call!589275)))

(declare-fun bm!589215 () Bool)

(declare-fun call!589232 () Unit!159541)

(assert (=> bm!589215 (= call!589232 call!589175)))

(declare-fun bm!589216 () Bool)

(declare-fun call!589308 () Bool)

(assert (=> bm!589216 (= call!589308 call!589230)))

(declare-fun lt!2426092 () (InoxSet Context!11798))

(declare-fun lt!2425969 () Context!11798)

(declare-fun lt!2425901 () Context!11798)

(declare-fun call!589180 () Unit!159541)

(declare-fun lt!2425910 () (InoxSet Context!11798))

(declare-fun bm!589217 () Bool)

(assert (=> bm!589217 (= call!589180 (lemmaFlatMapOnSingletonSet!1546 (ite c!1227939 lt!2425910 lt!2426092) (ite c!1227939 lt!2425969 lt!2425901) (ite c!1227939 lambda!372738 lambda!372738)))))

(declare-fun bm!589218 () Bool)

(declare-fun call!589300 () Bool)

(assert (=> bm!589218 (= call!589300 call!589261)))

(declare-fun bm!589219 () Bool)

(declare-fun call!589249 () Bool)

(assert (=> bm!589219 (= call!589249 call!589305)))

(declare-fun bm!589220 () Bool)

(declare-fun call!589264 () Bool)

(assert (=> bm!589220 (= call!589293 call!589264)))

(declare-fun lt!2426033 () Regex!16515)

(declare-fun lt!2425892 () List!65844)

(declare-fun lt!2425959 () Regex!16515)

(declare-fun bm!589221 () Bool)

(declare-fun c!1227933 () Bool)

(declare-fun matchR!8698 (Regex!16515 List!65844) Bool)

(assert (=> bm!589221 (= call!589295 (matchR!8698 (ite c!1227933 lt!2425959 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 (ite c!1227934 (Concat!25360 (regOne!33542 r!7292) lt!2425898) (ite (or c!1227941 c!1227938) lt!2425900 lt!2426033))))) (ite c!1227933 (t!379513 s!2326) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 lt!2425892 s!2326))))))))

(declare-fun bm!589222 () Bool)

(declare-fun call!589330 () Bool)

(assert (=> bm!589222 (= call!589330 call!589197)))

(declare-fun bm!589223 () Bool)

(declare-fun call!589360 () Bool)

(assert (=> bm!589223 (= call!589360 call!589381)))

(declare-fun b!6652206 () Bool)

(declare-fun e!4022246 () Bool)

(assert (=> b!6652206 (= e!4022246 call!589230)))

(declare-fun bm!589224 () Bool)

(declare-fun call!589255 () Bool)

(declare-fun call!589373 () Bool)

(assert (=> bm!589224 (= call!589255 call!589373)))

(declare-fun bm!589225 () Bool)

(declare-fun call!589347 () Bool)

(assert (=> bm!589225 (= call!589347 call!589212)))

(declare-fun b!6652207 () Bool)

(declare-fun e!4022236 () Bool)

(assert (=> b!6652207 (= e!4022236 (matchZipper!2527 lt!2425952 (t!379513 s!2326)))))

(declare-fun bm!589226 () Bool)

(declare-fun call!589250 () Bool)

(assert (=> bm!589226 (= call!589250 (Exists!3585 (ite c!1227939 lambda!372741 (ite c!1227934 lambda!372743 (ite c!1227941 lambda!372749 lambda!372755)))))))

(declare-fun lt!2425893 () List!65844)

(declare-fun bm!589227 () Bool)

(declare-fun ++!14672 (List!65844 List!65844) List!65844)

(assert (=> bm!589227 (= call!589287 (++!14672 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946)) (ite c!1227941 lt!2425940 lt!2425893)))))

(declare-fun bm!589228 () Bool)

(declare-fun call!589288 () (InoxSet Context!11798))

(assert (=> bm!589228 (= call!589288 call!589220)))

(declare-fun bm!589229 () Bool)

(declare-fun lt!2426011 () Regex!16515)

(declare-fun lt!2425927 () Regex!16515)

(declare-fun c!1227943 () Bool)

(declare-fun call!589320 () Unit!159541)

(declare-fun mainMatchTheorem!3616 (Regex!16515 List!65844) Unit!159541)

(assert (=> bm!589229 (= call!589320 (mainMatchTheorem!3616 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425927 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2426074 lt!2425900)) (regTwo!33542 r!7292))))) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326))))))

(declare-fun lt!2425929 () Option!16406)

(declare-fun call!589289 () Bool)

(declare-fun bm!589230 () Bool)

(declare-fun call!589311 () Option!16406)

(declare-fun call!589214 () Option!16406)

(assert (=> bm!589230 (= call!589289 (isDefined!13109 (ite c!1227939 call!589311 (ite c!1227934 call!589214 (ite c!1227941 lt!2425990 lt!2425929)))))))

(declare-fun e!4022265 () Bool)

(assert (=> b!6652208 e!4022265))

(declare-fun res!2726035 () Bool)

(assert (=> b!6652208 (=> (not res!2726035) (not e!4022265))))

(assert (=> b!6652208 (= res!2726035 call!589360)))

(declare-fun lt!2425984 () Unit!159541)

(declare-fun call!589206 () Unit!159541)

(assert (=> b!6652208 (= lt!2425984 call!589206)))

(declare-fun call!589332 () Bool)

(declare-fun call!589252 () Bool)

(assert (=> b!6652208 (= call!589332 call!589252)))

(declare-fun lt!2425926 () Unit!159541)

(declare-fun call!589357 () Unit!159541)

(assert (=> b!6652208 (= lt!2425926 call!589357)))

(declare-fun call!589279 () Bool)

(declare-fun call!589189 () Bool)

(assert (=> b!6652208 (= call!589279 call!589189)))

(declare-fun lt!2425936 () Unit!159541)

(assert (=> b!6652208 (= lt!2425936 call!589374)))

(declare-fun call!589195 () Bool)

(declare-fun call!589208 () Bool)

(assert (=> b!6652208 (= call!589195 call!589208)))

(declare-fun lt!2425979 () Unit!159541)

(declare-fun call!589219 () Unit!159541)

(assert (=> b!6652208 (= lt!2425979 call!589219)))

(declare-fun call!589227 () Bool)

(declare-fun call!589351 () Bool)

(assert (=> b!6652208 (= call!589227 call!589351)))

(declare-fun lt!2426030 () Unit!159541)

(declare-fun call!589326 () Unit!159541)

(assert (=> b!6652208 (= lt!2426030 call!589326)))

(declare-fun call!589272 () Bool)

(assert (=> b!6652208 (= call!589272 call!589347)))

(declare-fun lt!2426078 () Unit!159541)

(declare-fun call!589191 () Unit!159541)

(assert (=> b!6652208 (= lt!2426078 call!589191)))

(declare-fun call!589349 () Regex!16515)

(assert (=> b!6652208 (= lt!2426033 call!589349)))

(declare-fun call!589301 () (InoxSet Context!11798))

(assert (=> b!6652208 (= call!589207 call!589301)))

(declare-fun lt!2425894 () Unit!159541)

(declare-fun call!589372 () Unit!159541)

(assert (=> b!6652208 (= lt!2425894 call!589372)))

(assert (=> b!6652208 (= lt!2425981 (store ((as const (Array Context!11798 Bool)) false) lt!2425966 true))))

(declare-fun e!4022257 () Unit!159541)

(declare-fun Unit!159546 () Unit!159541)

(assert (=> b!6652208 (= e!4022257 Unit!159546)))

(declare-fun bm!589231 () Bool)

(declare-fun call!589273 () (InoxSet Context!11798))

(declare-fun flatMap!2020 ((InoxSet Context!11798) Int) (InoxSet Context!11798))

(assert (=> bm!589231 (= call!589273 (flatMap!2020 (ite c!1227934 lt!2425907 lt!2425935) (ite c!1227934 lambda!372738 lambda!372738)))))

(declare-fun call!589188 () (InoxSet Context!11798))

(declare-fun bm!589232 () Bool)

(assert (=> bm!589232 (= call!589188 (derivationStepZipperUp!1689 (ite c!1227943 lt!2425901 lt!2425966) (h!72168 s!2326)))))

(declare-fun b!6652209 () Bool)

(declare-fun e!4022230 () Bool)

(assert (=> b!6652209 (= e!4022230 call!589303)))

(declare-fun bm!589233 () Bool)

(declare-fun call!589333 () Bool)

(declare-fun call!589218 () Bool)

(assert (=> bm!589233 (= call!589333 call!589218)))

(declare-fun b!6652210 () Bool)

(declare-fun e!4022248 () Unit!159541)

(declare-fun Unit!159547 () Unit!159541)

(assert (=> b!6652210 (= e!4022248 Unit!159547)))

(assert (=> b!6652210 (= lt!2425900 (regOne!33542 r!7292))))

(declare-fun lt!2425993 () List!65845)

(assert (=> b!6652210 (= lt!2425993 (Cons!65721 lt!2425900 (t!379514 (exprs!6399 (h!72170 zl!343)))))))

(assert (=> b!6652210 (= lt!2425901 (Context!11799 (Cons!65721 (reg!16844 (regOne!33542 r!7292)) lt!2425993)))))

(assert (=> b!6652210 (= lt!2426092 (store ((as const (Array Context!11798 Bool)) false) lt!2425901 true))))

(declare-fun lt!2426054 () (InoxSet Context!11798))

(assert (=> b!6652210 (= lt!2426054 call!589188)))

(declare-fun lt!2425978 () Unit!159541)

(assert (=> b!6652210 (= lt!2425978 call!589180)))

(assert (=> b!6652210 (= call!589224 call!589188)))

(declare-fun lt!2425930 () Context!11798)

(assert (=> b!6652210 (= lt!2425930 (Context!11799 lt!2425993))))

(declare-fun lt!2425986 () (InoxSet Context!11798))

(declare-fun call!589359 () (InoxSet Context!11798))

(assert (=> b!6652210 (= lt!2425986 call!589359)))

(declare-fun lt!2425941 () Regex!16515)

(assert (=> b!6652210 (= lt!2425941 (Concat!25360 lt!2425900 (regTwo!33542 r!7292)))))

(declare-fun lt!2426028 () Regex!16515)

(assert (=> b!6652210 (= lt!2426028 (Concat!25360 (reg!16844 (regOne!33542 r!7292)) lt!2425941))))

(declare-fun lt!2426032 () List!65845)

(assert (=> b!6652210 (= lt!2426032 (Cons!65721 (reg!16844 (regOne!33542 r!7292)) Nil!65721))))

(assert (=> b!6652210 (= lt!2426056 (Context!11799 lt!2426032))))

(assert (=> b!6652210 (= lt!2425935 (store ((as const (Array Context!11798 Bool)) false) lt!2426056 true))))

(assert (=> b!6652210 (= lt!2426050 (store ((as const (Array Context!11798 Bool)) false) lt!2425930 true))))

(declare-fun lt!2425971 () (InoxSet Context!11798))

(declare-fun call!589358 () (InoxSet Context!11798))

(assert (=> b!6652210 (= lt!2425971 call!589358)))

(declare-fun lt!2425918 () (InoxSet Context!11798))

(assert (=> b!6652210 (= lt!2425918 call!589283)))

(declare-fun lt!2425994 () Unit!159541)

(declare-fun call!589203 () Unit!159541)

(assert (=> b!6652210 (= lt!2425994 call!589203)))

(assert (=> b!6652210 (= call!589273 call!589358)))

(declare-fun lt!2425932 () Unit!159541)

(declare-fun call!589211 () Unit!159541)

(assert (=> b!6652210 (= lt!2425932 call!589211)))

(assert (=> b!6652210 (= (flatMap!2020 lt!2426050 lambda!372738) call!589283)))

(declare-fun lt!2426026 () Unit!159541)

(declare-fun call!589240 () Unit!159541)

(assert (=> b!6652210 (= lt!2426026 call!589240)))

(assert (=> b!6652210 (= lt!2426081 call!589246)))

(declare-fun res!2726039 () Bool)

(assert (=> b!6652210 (= res!2726039 (= lt!2426081 call!589218))))

(declare-fun e!4022264 () Bool)

(assert (=> b!6652210 (=> (not res!2726039) (not e!4022264))))

(assert (=> b!6652210 e!4022264))

(assert (=> b!6652210 (= c!1227941 lt!2426043)))

(declare-fun lt!2425967 () Unit!159541)

(assert (=> b!6652210 (= lt!2425967 e!4022256)))

(assert (=> b!6652210 (= lt!2426043 call!589292)))

(declare-fun bm!589234 () Bool)

(declare-fun call!589268 () Unit!159541)

(declare-fun call!589363 () Unit!159541)

(assert (=> bm!589234 (= call!589268 call!589363)))

(declare-fun bm!589235 () Bool)

(assert (=> bm!589235 (= call!589309 call!589373)))

(declare-fun bm!589236 () Bool)

(declare-fun lemmaConcatPreservesForall!428 (List!65845 List!65845 Int) Unit!159541)

(assert (=> bm!589236 (= call!589329 (lemmaConcatPreservesForall!428 lt!2426032 lt!2425993 (ite c!1227941 lambda!372752 lambda!372754)))))

(declare-fun b!6652211 () Bool)

(declare-fun call!589302 () Bool)

(assert (=> b!6652211 (= e!4022260 call!589302)))

(declare-fun b!6652212 () Bool)

(declare-fun res!2726019 () Bool)

(declare-fun e!4022252 () Bool)

(assert (=> b!6652212 (=> res!2726019 e!4022252)))

(declare-fun zipperDepth!416 (List!65846) Int)

(assert (=> b!6652212 (= res!2726019 (< (zipperDepth!416 zl!343) (zipperDepth!416 (Cons!65722 lt!2425966 Nil!65722))))))

(declare-fun bm!589237 () Bool)

(declare-fun lt!2425972 () (InoxSet Context!11798))

(declare-fun lt!2426013 () (InoxSet Context!11798))

(declare-fun lt!2426058 () Regex!16515)

(declare-fun lt!2426001 () Context!11798)

(declare-fun lt!2426024 () Regex!16515)

(declare-fun theoremZipperRegexEquiv!911 ((InoxSet Context!11798) List!65846 Regex!16515 List!65844) Unit!159541)

(assert (=> bm!589237 (= call!589270 (theoremZipperRegexEquiv!911 (ite c!1227937 lt!2426013 (ite c!1227939 lt!2425972 (ite c!1227934 lt!2425907 (ite c!1227941 (ite c!1227935 lt!2426039 lt!2426050) (ite c!1227938 lt!2426050 lt!2425981))))) (ite c!1227937 (Cons!65722 lt!2426001 Nil!65722) (ite c!1227939 (Cons!65722 lt!2426009 Nil!65722) (ite c!1227934 (Cons!65722 lt!2426021 Nil!65722) (ite c!1227941 (ite c!1227935 (Cons!65722 lt!2425966 Nil!65722) (Cons!65722 lt!2425930 Nil!65722)) (ite c!1227938 (Cons!65722 lt!2425930 Nil!65722) (Cons!65722 lt!2425966 Nil!65722)))))) (ite c!1227937 lt!2426024 (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425927 (ite c!1227941 (ite c!1227935 lt!2426058 lt!2425941) (ite c!1227938 lt!2425941 lt!2426033))))) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227941 (ite c!1227935 s!2326 lt!2425940) (ite c!1227938 (_2!36797 lt!2426064) s!2326)))))))

(declare-fun b!6652213 () Bool)

(declare-fun e!4022241 () Bool)

(assert (=> b!6652213 (= e!4022241 call!589275)))

(declare-fun bm!589238 () Bool)

(assert (=> bm!589238 (= call!589208 call!589345)))

(declare-fun b!6652214 () Bool)

(declare-fun lt!2425983 () Bool)

(assert (=> b!6652214 (not lt!2425983)))

(declare-fun lt!2425962 () Unit!159541)

(declare-fun e!4022251 () Unit!159541)

(assert (=> b!6652214 (= lt!2425962 e!4022251)))

(declare-fun c!1227932 () Bool)

(assert (=> b!6652214 (= c!1227932 lt!2425983)))

(assert (=> b!6652214 (= lt!2425983 call!589266)))

(declare-fun Unit!159548 () Unit!159541)

(assert (=> b!6652214 (= e!4022256 Unit!159548)))

(declare-fun bm!589239 () Bool)

(declare-fun call!589231 () Unit!159541)

(declare-fun call!589369 () Unit!159541)

(assert (=> bm!589239 (= call!589231 call!589369)))

(declare-fun lt!2425988 () Regex!16515)

(declare-fun lt!2426003 () Regex!16515)

(declare-fun lt!2425917 () (InoxSet Context!11798))

(declare-fun lt!2425960 () (InoxSet Context!11798))

(declare-fun lt!2425942 () (InoxSet Context!11798))

(declare-fun bm!589240 () Bool)

(declare-fun call!589353 () Unit!159541)

(declare-fun lt!2425903 () Regex!16515)

(assert (=> bm!589240 (= call!589353 (theoremZipperRegexEquiv!911 (ite c!1227933 lt!2425960 (ite c!1227937 lt!2425942 (ite c!1227939 lt!2425910 (ite c!1227943 lt!2425935 lt!2425917)))) (ite c!1227933 (Cons!65722 lt!2425966 Nil!65722) (ite c!1227937 (Cons!65722 lt!2426071 Nil!65722) (ite c!1227939 (Cons!65722 lt!2425969 Nil!65722) (ite c!1227943 (Cons!65722 lt!2426056 Nil!65722) (Cons!65722 lt!2425966 Nil!65722))))) (ite c!1227933 lt!2425959 (ite c!1227937 lt!2425903 (ite c!1227939 lt!2425988 (ite c!1227943 (reg!16844 (regOne!33542 r!7292)) lt!2426003)))) (ite c!1227933 (t!379513 s!2326) (ite (or c!1227937 c!1227939) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2426064)) s!2326)))))))

(declare-fun bm!589241 () Bool)

(declare-fun call!589179 () Bool)

(declare-fun call!589317 () Bool)

(assert (=> bm!589241 (= call!589179 call!589317)))

(declare-fun bm!589242 () Bool)

(assert (=> bm!589242 (= call!589358 call!589288)))

(declare-fun b!6652215 () Bool)

(declare-fun e!4022242 () Bool)

(assert (=> b!6652215 (= e!4022242 tp_is_empty!42283)))

(declare-fun setIsEmpty!45465 () Bool)

(declare-fun setRes!45465 () Bool)

(assert (=> setIsEmpty!45465 setRes!45465))

(declare-fun lt!2425963 () Option!16406)

(declare-fun bm!589243 () Bool)

(assert (=> bm!589243 (= call!589195 (isDefined!13109 (ite c!1227938 lt!2425963 call!589344)))))

(declare-fun bm!589244 () Bool)

(assert (=> bm!589244 (= call!589371 call!589339)))

(declare-fun b!6652216 () Bool)

(declare-fun e!4022234 () Bool)

(assert (=> b!6652216 (= e!4022234 (= lt!2426043 call!589249))))

(declare-fun b!6652217 () Bool)

(assert (=> b!6652217 (= c!1227943 ((_ is Star!16515) (regOne!33542 r!7292)))))

(declare-fun e!4022266 () Unit!159541)

(assert (=> b!6652217 (= e!4022266 e!4022248)))

(declare-fun bm!589245 () Bool)

(assert (=> bm!589245 (= call!589280 call!589179)))

(declare-fun bm!589246 () Bool)

(declare-fun call!589290 () Unit!159541)

(assert (=> bm!589246 (= call!589290 call!589353)))

(declare-fun bm!589247 () Bool)

(declare-fun call!589174 () Bool)

(assert (=> bm!589247 (= call!589310 call!589174)))

(declare-fun b!6652218 () Bool)

(declare-fun lt!2425909 () Bool)

(assert (=> b!6652218 (= e!4022264 (or (not lt!2426043) lt!2425909))))

(declare-fun bm!589248 () Bool)

(declare-fun lemmaConcatAssociative!152 (Regex!16515 Regex!16515 Regex!16515 List!65844) Unit!159541)

(assert (=> bm!589248 (= call!589369 (lemmaConcatAssociative!152 (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292))) (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) lt!2425900) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (regTwo!33542 r!7292))) s!2326))))

(declare-fun bm!589249 () Bool)

(assert (=> bm!589249 (= call!589292 call!589249)))

(declare-fun bm!589250 () Bool)

(assert (=> bm!589250 (= call!589340 (derivationStepZipperUp!1689 (ite c!1227937 lt!2426001 (ite c!1227939 lt!2425969 lt!2425930)) (h!72168 s!2326)))))

(declare-fun b!6652219 () Bool)

(declare-fun e!4022245 () Bool)

(assert (=> b!6652219 e!4022245))

(declare-fun res!2726021 () Bool)

(assert (=> b!6652219 (=> (not res!2726021) (not e!4022245))))

(assert (=> b!6652219 (= res!2726021 (= call!589300 call!589255))))

(declare-fun lt!2426020 () Unit!159541)

(assert (=> b!6652219 (= lt!2426020 call!589232)))

(assert (=> b!6652219 (= call!589196 call!589333)))

(declare-fun lt!2425924 () Unit!159541)

(declare-fun call!589335 () Unit!159541)

(assert (=> b!6652219 (= lt!2425924 call!589335)))

(assert (=> b!6652219 (not call!589377)))

(declare-fun lt!2426010 () Unit!159541)

(declare-fun call!589186 () Unit!159541)

(assert (=> b!6652219 (= lt!2426010 call!589186)))

(declare-fun e!4022268 () Unit!159541)

(declare-fun Unit!159549 () Unit!159541)

(assert (=> b!6652219 (= e!4022268 Unit!159549)))

(declare-fun b!6652220 () Bool)

(declare-fun e!4022258 () Bool)

(assert (=> b!6652220 (= e!4022258 e!4022252)))

(declare-fun res!2726024 () Bool)

(assert (=> b!6652220 (=> res!2726024 e!4022252)))

(declare-fun lt!2425905 () Regex!16515)

(declare-fun regexDepth!378 (Regex!16515) Int)

(assert (=> b!6652220 (= res!2726024 (< (regexDepth!378 r!7292) (regexDepth!378 lt!2425905)))))

(assert (=> b!6652220 (= lt!2425905 (generalisedConcat!2112 (t!379514 (exprs!6399 (h!72170 zl!343)))))))

(declare-fun b!6652221 () Bool)

(declare-fun res!2726033 () Bool)

(assert (=> b!6652221 (=> res!2726033 e!4022231)))

(assert (=> b!6652221 (= res!2726033 (not (= r!7292 (generalisedConcat!2112 (exprs!6399 (h!72170 zl!343))))))))

(declare-fun c!1227944 () Bool)

(declare-fun bm!589251 () Bool)

(declare-fun lt!2425954 () Regex!16515)

(assert (=> bm!589251 (= call!589277 (matchRSpec!3616 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292))))) (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326))))))

(declare-fun bm!589252 () Bool)

(declare-fun call!589321 () Bool)

(assert (=> bm!589252 (= call!589321 (Exists!3585 (ite c!1227934 lambda!372744 (ite c!1227941 lambda!372750 (ite c!1227938 lambda!372758 lambda!372760)))))))

(declare-fun bm!589253 () Bool)

(assert (=> bm!589253 (= call!589193 (findConcatSeparation!2820 (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292))))) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite (or c!1227941 c!1227938) (regTwo!33542 r!7292) lt!2425900))) Nil!65720 (ite (or c!1227939 c!1227934 c!1227941 c!1227938) s!2326 Nil!65720) (ite (or c!1227939 c!1227934 c!1227941 c!1227938) s!2326 Nil!65720)))))

(declare-fun bm!589254 () Bool)

(assert (=> bm!589254 (= call!589263 call!589289)))

(declare-fun bm!589255 () Bool)

(declare-fun call!589194 () Unit!159541)

(assert (=> bm!589255 (= call!589211 call!589194)))

(declare-fun bm!589256 () Bool)

(declare-fun call!589244 () Bool)

(assert (=> bm!589256 (= call!589221 call!589244)))

(declare-fun bm!589257 () Bool)

(assert (=> bm!589257 (= call!589201 call!589343)))

(declare-fun bm!589258 () Bool)

(declare-fun call!589328 () Unit!159541)

(assert (=> bm!589258 (= call!589328 call!589222)))

(declare-fun e!4022244 () Bool)

(assert (=> b!6652222 e!4022244))

(declare-fun res!2726040 () Bool)

(assert (=> b!6652222 (=> (not res!2726040) (not e!4022244))))

(assert (=> b!6652222 (= res!2726040 call!589285)))

(declare-fun lt!2425968 () Unit!159541)

(assert (=> b!6652222 (= lt!2425968 call!589271)))

(assert (=> b!6652222 call!589272))

(declare-fun lt!2425961 () Unit!159541)

(assert (=> b!6652222 (= lt!2425961 call!589352)))

(declare-fun lt!2425919 () List!65844)

(assert (=> b!6652222 (= lt!2425919 call!589287)))

(declare-fun call!589241 () List!65844)

(assert (=> b!6652222 (= lt!2425919 call!589241)))

(assert (=> b!6652222 (= lt!2425893 call!589216)))

(assert (=> b!6652222 (= lt!2425892 call!589178)))

(declare-fun lt!2426080 () Unit!159541)

(assert (=> b!6652222 (= lt!2426080 call!589204)))

(declare-fun get!22854 (Option!16406) tuple2!66988)

(assert (=> b!6652222 (= lt!2425946 (get!22854 lt!2425963))))

(assert (=> b!6652222 (= call!589189 call!589208)))

(declare-fun lt!2426070 () Unit!159541)

(assert (=> b!6652222 (= lt!2426070 call!589357)))

(assert (=> b!6652222 (= call!589280 call!589279)))

(declare-fun lt!2426037 () Unit!159541)

(assert (=> b!6652222 (= lt!2426037 call!589253)))

(assert (=> b!6652222 (= call!589195 call!589252)))

(assert (=> b!6652222 (= lt!2425963 call!589265)))

(declare-fun lt!2426019 () Unit!159541)

(assert (=> b!6652222 (= lt!2426019 call!589219)))

(assert (=> b!6652222 (= call!589183 call!589215)))

(declare-fun lt!2426093 () Unit!159541)

(assert (=> b!6652222 (= lt!2426093 call!589326)))

(assert (=> b!6652222 (= lt!2425939 call!589350)))

(assert (=> b!6652222 (= call!589315 call!589332)))

(declare-fun lt!2425911 () Unit!159541)

(assert (=> b!6652222 (= lt!2425911 call!589374)))

(assert (=> b!6652222 (= call!589267 call!589331)))

(assert (=> b!6652222 (= lt!2425929 call!589344)))

(declare-fun lt!2425974 () Unit!159541)

(assert (=> b!6652222 (= lt!2425974 call!589365)))

(assert (=> b!6652222 call!589351))

(declare-fun lt!2426067 () Unit!159541)

(declare-fun call!589286 () Unit!159541)

(assert (=> b!6652222 (= lt!2426067 call!589286)))

(assert (=> b!6652222 (matchR!8698 lt!2425954 s!2326)))

(assert (=> b!6652222 (= lt!2425954 (Concat!25360 lt!2426074 (regTwo!33542 r!7292)))))

(assert (=> b!6652222 (= lt!2426074 (Concat!25360 (reg!16844 (regOne!33542 r!7292)) lt!2425900))))

(declare-fun lt!2426089 () Unit!159541)

(assert (=> b!6652222 (= lt!2426089 call!589231)))

(declare-fun e!4022249 () Bool)

(assert (=> b!6652222 e!4022249))

(declare-fun res!2726018 () Bool)

(assert (=> b!6652222 (=> (not res!2726018) (not e!4022249))))

(assert (=> b!6652222 (= res!2726018 call!589244)))

(declare-fun lt!2425958 () Unit!159541)

(assert (=> b!6652222 (= lt!2425958 call!589206)))

(assert (=> b!6652222 (= call!589227 call!589294)))

(declare-fun lt!2425992 () Unit!159541)

(assert (=> b!6652222 (= lt!2425992 call!589191)))

(assert (=> b!6652222 (= call!589360 call!589264)))

(declare-fun lt!2426034 () Unit!159541)

(assert (=> b!6652222 (= lt!2426034 call!589362)))

(assert (=> b!6652222 call!589347))

(declare-fun lt!2425975 () List!65844)

(assert (=> b!6652222 (= lt!2425975 (++!14672 (_1!36797 lt!2426064) (_2!36797 lt!2426064)))))

(declare-fun lt!2425944 () List!65845)

(declare-fun call!589182 () List!65845)

(assert (=> b!6652222 (= lt!2425944 call!589182)))

(declare-fun lt!2426036 () Unit!159541)

(assert (=> b!6652222 (= lt!2426036 call!589327)))

(declare-fun lt!2425914 () Unit!159541)

(assert (=> b!6652222 (= lt!2425914 call!589247)))

(assert (=> b!6652222 (= lt!2426064 call!589316)))

(assert (=> b!6652222 call!589337))

(declare-fun findConcatSeparationZippers!220 ((InoxSet Context!11798) (InoxSet Context!11798) List!65844 List!65844 List!65844) Option!16406)

(assert (=> b!6652222 (= lt!2426002 (findConcatSeparationZippers!220 lt!2425935 lt!2426050 Nil!65720 s!2326 s!2326))))

(declare-fun lt!2425982 () Unit!159541)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!220 ((InoxSet Context!11798) Context!11798 List!65844) Unit!159541)

(assert (=> b!6652222 (= lt!2425982 (lemmaConcatZipperMatchesStringThenFindConcatDefined!220 lt!2425935 lt!2425930 s!2326))))

(declare-fun lambda!372753 () Int)

(declare-fun map!15021 ((InoxSet Context!11798) Int) (InoxSet Context!11798))

(assert (=> b!6652222 (= (map!15021 lt!2425935 lambda!372753) (store ((as const (Array Context!11798 Bool)) false) (Context!11799 call!589182) true))))

(declare-fun lt!2425933 () Unit!159541)

(assert (=> b!6652222 (= lt!2425933 call!589329)))

(declare-fun lt!2425912 () Unit!159541)

(declare-fun lemmaMapOnSingletonSet!238 ((InoxSet Context!11798) Context!11798 Int) Unit!159541)

(assert (=> b!6652222 (= lt!2425912 (lemmaMapOnSingletonSet!238 lt!2425935 lt!2426056 lambda!372753))))

(declare-fun Unit!159550 () Unit!159541)

(assert (=> b!6652222 (= e!4022257 Unit!159550)))

(declare-fun b!6652223 () Bool)

(declare-fun e!4022255 () Unit!159541)

(declare-fun Unit!159551 () Unit!159541)

(assert (=> b!6652223 (= e!4022255 Unit!159551)))

(declare-fun lt!2425964 () Unit!159541)

(assert (=> b!6652223 (= lt!2425964 call!589257)))

(declare-fun res!2726038 () Bool)

(declare-fun lt!2426052 () Bool)

(assert (=> b!6652223 (= res!2726038 lt!2426052)))

(assert (=> b!6652223 (=> res!2726038 e!4022263)))

(declare-fun call!589228 () Bool)

(assert (=> b!6652223 (= call!589228 e!4022263)))

(declare-fun bm!589259 () Bool)

(assert (=> bm!589259 (= call!589286 (mainMatchTheorem!3616 (ite c!1227937 lt!2425903 lt!2425954) s!2326))))

(declare-fun bm!589260 () Bool)

(declare-fun call!589238 () Regex!16515)

(assert (=> bm!589260 (= call!589238 call!589198)))

(assert (=> b!6652224 (= e!4022235 e!4022258)))

(declare-fun res!2726013 () Bool)

(assert (=> b!6652224 (=> res!2726013 e!4022258)))

(declare-fun lt!2425980 () (InoxSet Context!11798))

(declare-fun derivationStepZipper!2481 ((InoxSet Context!11798) C!33300) (InoxSet Context!11798))

(assert (=> b!6652224 (= res!2726013 (not (= lt!2425952 (derivationStepZipper!2481 lt!2425980 (h!72168 s!2326)))))))

(assert (=> b!6652224 (= (flatMap!2020 lt!2425980 lambda!372738) (derivationStepZipperUp!1689 lt!2425966 (h!72168 s!2326)))))

(declare-fun lt!2426087 () Unit!159541)

(assert (=> b!6652224 (= lt!2426087 (lemmaFlatMapOnSingletonSet!1546 lt!2425980 lt!2425966 lambda!372738))))

(assert (=> b!6652224 (= lt!2425980 (store ((as const (Array Context!11798 Bool)) false) lt!2425966 true))))

(declare-fun lt!2425953 () Unit!159541)

(declare-fun e!4022259 () Unit!159541)

(assert (=> b!6652224 (= lt!2425953 e!4022259)))

(assert (=> b!6652224 (= c!1227933 (and ((_ is ElementMatch!16515) (regOne!33542 r!7292)) (= (c!1227945 (regOne!33542 r!7292)) (h!72168 s!2326))))))

(declare-fun lt!2426053 () Unit!159541)

(assert (=> b!6652224 (= lt!2426053 e!4022232)))

(declare-fun c!1227936 () Bool)

(declare-fun nullable!6508 (Regex!16515) Bool)

(assert (=> b!6652224 (= c!1227936 (nullable!6508 (h!72169 (exprs!6399 (h!72170 zl!343)))))))

(assert (=> b!6652224 (= (flatMap!2020 z!1189 lambda!372738) (derivationStepZipperUp!1689 (h!72170 zl!343) (h!72168 s!2326)))))

(declare-fun lt!2426084 () Unit!159541)

(assert (=> b!6652224 (= lt!2426084 (lemmaFlatMapOnSingletonSet!1546 z!1189 (h!72170 zl!343) lambda!372738))))

(assert (=> b!6652224 (= lt!2425952 (derivationStepZipperUp!1689 lt!2425966 (h!72168 s!2326)))))

(declare-fun derivationStepZipperDown!1763 (Regex!16515 Context!11798 C!33300) (InoxSet Context!11798))

(assert (=> b!6652224 (= lt!2426042 (derivationStepZipperDown!1763 (h!72169 (exprs!6399 (h!72170 zl!343))) lt!2425966 (h!72168 s!2326)))))

(assert (=> b!6652224 (= lt!2425966 (Context!11799 (t!379514 (exprs!6399 (h!72170 zl!343)))))))

(declare-fun lt!2426015 () (InoxSet Context!11798))

(assert (=> b!6652224 (= lt!2426015 (derivationStepZipperUp!1689 (Context!11799 (Cons!65721 (h!72169 (exprs!6399 (h!72170 zl!343))) (t!379514 (exprs!6399 (h!72170 zl!343))))) (h!72168 s!2326)))))

(declare-fun bm!589261 () Bool)

(declare-fun call!589367 () Bool)

(declare-fun call!589245 () Bool)

(assert (=> bm!589261 (= call!589367 call!589245)))

(declare-fun b!6652225 () Bool)

(declare-fun res!2726031 () Bool)

(assert (=> b!6652225 (=> res!2726031 e!4022231)))

(declare-fun isEmpty!38033 (List!65846) Bool)

(assert (=> b!6652225 (= res!2726031 (not (isEmpty!38033 (t!379515 zl!343))))))

(declare-fun b!6652226 () Bool)

(declare-fun Unit!159552 () Unit!159541)

(assert (=> b!6652226 (= e!4022251 Unit!159552)))

(declare-fun call!589243 () Bool)

(declare-fun bm!589262 () Bool)

(assert (=> bm!589262 (= call!589243 (Exists!3585 (ite c!1227939 lambda!372741 (ite c!1227934 lambda!372745 (ite c!1227941 lambda!372749 (ite c!1227938 lambda!372757 lambda!372762))))))))

(declare-fun bm!589263 () Bool)

(assert (=> bm!589263 (= call!589311 (findConcatSeparation!2820 (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292))) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 lt!2425900)) Nil!65720 (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (_1!36797 lt!2425939))) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (_1!36797 lt!2425939)))))))

(declare-fun bm!589264 () Bool)

(assert (=> bm!589264 (= call!589178 (++!14672 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946)) (ite c!1227941 (_2!36797 lt!2426051) (_2!36797 lt!2425946))))))

(declare-fun bm!589265 () Bool)

(assert (=> bm!589265 (= call!589372 call!589237)))

(declare-fun bm!589266 () Bool)

(assert (=> bm!589266 (= call!589355 (matchZipper!2527 (ite c!1227937 lt!2426007 (ite c!1227939 lt!2426055 (ite c!1227943 (ite c!1227941 lt!2426050 z!1189) lt!2426042))) (ite (or c!1227937 c!1227939) (t!379513 s!2326) (ite c!1227943 (ite c!1227941 lt!2425940 s!2326) (t!379513 s!2326)))))))

(declare-fun b!6652227 () Bool)

(declare-fun e!4022229 () Bool)

(assert (=> b!6652227 (= e!4022229 call!589197)))

(declare-fun bm!589267 () Bool)

(assert (=> bm!589267 (= call!589299 call!589321)))

(declare-fun bm!589268 () Bool)

(declare-fun call!589192 () Bool)

(assert (=> bm!589268 (= call!589338 call!589192)))

(declare-fun bm!589269 () Bool)

(declare-fun call!589282 () Bool)

(declare-fun call!589199 () Bool)

(assert (=> bm!589269 (= call!589282 call!589199)))

(declare-fun bm!589270 () Bool)

(assert (=> bm!589270 (= call!589375 call!589238)))

(declare-fun bm!589271 () Bool)

(declare-fun call!589314 () Regex!16515)

(assert (=> bm!589271 (= call!589314 call!589187)))

(declare-fun bm!589272 () Bool)

(assert (=> bm!589272 (= call!589312 call!589254)))

(declare-fun bm!589273 () Bool)

(assert (=> bm!589273 (= call!589216 (++!14672 (ite c!1227941 lt!2426048 (_2!36797 lt!2425946)) (ite c!1227941 (_2!36797 lt!2425896) (_2!36797 lt!2425939))))))

(declare-fun b!6652228 () Bool)

(declare-fun Unit!159553 () Unit!159541)

(assert (=> b!6652228 (= e!4022232 Unit!159553)))

(declare-fun lt!2425922 () Unit!159541)

(assert (=> b!6652228 (= lt!2425922 (lemmaZipperConcatMatchesSameAsBothZippers!1346 lt!2426042 lt!2425952 (t!379513 s!2326)))))

(declare-fun res!2726020 () Bool)

(assert (=> b!6652228 (= res!2726020 (matchZipper!2527 lt!2426042 (t!379513 s!2326)))))

(assert (=> b!6652228 (=> res!2726020 e!4022236)))

(assert (=> b!6652228 (= (matchZipper!2527 ((_ map or) lt!2426042 lt!2425952) (t!379513 s!2326)) e!4022236)))

(declare-fun bm!589274 () Bool)

(assert (=> bm!589274 (= call!589252 call!589356)))

(declare-fun bm!589275 () Bool)

(assert (=> bm!589275 (= call!589351 call!589309)))

(declare-fun bm!589276 () Bool)

(assert (=> bm!589276 (= call!589335 call!589240)))

(declare-fun bm!589277 () Bool)

(assert (=> bm!589277 (= call!589205 call!589193)))

(declare-fun bm!589278 () Bool)

(declare-fun call!589213 () Bool)

(assert (=> bm!589278 (= call!589356 call!589213)))

(declare-fun bm!589279 () Bool)

(declare-fun lt!2426017 () List!65845)

(declare-fun lt!2426059 () List!65845)

(assert (=> bm!589279 (= call!589177 (generalisedConcat!2112 (ite c!1227933 (t!379514 (exprs!6399 (h!72170 zl!343))) (ite c!1227937 lt!2426059 (ite c!1227939 lt!2426017 (t!379514 (exprs!6399 (h!72170 zl!343))))))))))

(declare-fun bm!589280 () Bool)

(assert (=> bm!589280 (= call!589279 call!589299)))

(declare-fun b!6652229 () Bool)

(assert (=> b!6652229 (= e!4022249 lt!2426081)))

(declare-fun bm!589281 () Bool)

(declare-fun call!589274 () Bool)

(assert (=> bm!589281 (= call!589274 (matchZipper!2527 (ite c!1227937 ((_ map or) lt!2426007 lt!2425997) ((_ map or) lt!2426083 lt!2426055)) (t!379513 s!2326)))))

(declare-fun bm!589282 () Bool)

(declare-fun call!589364 () Bool)

(assert (=> bm!589282 (= call!589364 (Exists!3585 (ite c!1227939 lambda!372740 (ite c!1227934 lambda!372746 (ite c!1227941 lambda!372748 lambda!372755)))))))

(declare-fun bm!589283 () Bool)

(assert (=> bm!589283 (= call!589218 call!589282)))

(declare-fun call!589304 () Bool)

(declare-fun bm!589284 () Bool)

(assert (=> bm!589284 (= call!589304 (Exists!3585 (ite c!1227939 lambda!372739 (ite c!1227941 lambda!372749 (ite c!1227938 lambda!372759 lambda!372760)))))))

(declare-fun b!6652230 () Bool)

(declare-fun e!4022239 () Unit!159541)

(declare-fun Unit!159554 () Unit!159541)

(assert (=> b!6652230 (= e!4022239 Unit!159554)))

(declare-fun lt!2426075 () Unit!159541)

(assert (=> b!6652230 (= lt!2426075 (lemmaZipperConcatMatchesSameAsBothZippers!1346 lt!2425997 lt!2425952 (t!379513 s!2326)))))

(declare-fun res!2726044 () Bool)

(assert (=> b!6652230 (= res!2726044 call!589303)))

(assert (=> b!6652230 (=> res!2726044 e!4022241)))

(declare-fun call!589235 () Bool)

(assert (=> b!6652230 (= call!589235 e!4022241)))

(declare-fun bm!589285 () Bool)

(declare-fun call!589361 () Unit!159541)

(assert (=> bm!589285 (= call!589203 call!589361)))

(declare-fun bm!589286 () Bool)

(assert (=> bm!589286 (= call!589219 call!589319)))

(declare-fun bm!589287 () Bool)

(assert (=> bm!589287 (= call!589241 call!589242)))

(declare-fun bm!589288 () Bool)

(declare-fun call!589325 () (InoxSet Context!11798))

(declare-fun call!589323 () (InoxSet Context!11798))

(assert (=> bm!589288 (= call!589325 call!589323)))

(declare-fun bm!589289 () Bool)

(assert (=> bm!589289 (= call!589316 (get!22854 (ite c!1227941 lt!2426049 lt!2426002)))))

(declare-fun bm!589290 () Bool)

(assert (=> bm!589290 (= call!589345 call!589304)))

(declare-fun bm!589291 () Bool)

(assert (=> bm!589291 (= call!589363 (lemmaExistCutMatchRandMatchRSpecEquivalent!2122 (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939))))))

(declare-fun bm!589292 () Bool)

(assert (=> bm!589292 (= call!589349 call!589225)))

(declare-fun bm!589293 () Bool)

(assert (=> bm!589293 (= call!589357 call!589322)))

(declare-fun bm!589294 () Bool)

(declare-fun call!589370 () Unit!159541)

(declare-fun call!589313 () Unit!159541)

(assert (=> bm!589294 (= call!589370 call!589313)))

(declare-fun bm!589295 () Bool)

(assert (=> bm!589295 (= call!589261 call!589258)))

(declare-fun bm!589296 () Bool)

(declare-fun call!589251 () Bool)

(assert (=> bm!589296 (= call!589281 call!589251)))

(declare-fun call!589229 () (InoxSet Context!11798))

(declare-fun bm!589297 () Bool)

(assert (=> bm!589297 (= call!589229 (derivationStepZipperDown!1763 (ite c!1227937 (regOne!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (ite c!1227937 lt!2425966 lt!2426009) (h!72168 s!2326)))))

(declare-fun bm!589298 () Bool)

(declare-fun lemmaEmptyZipperMatchesNothing!108 ((InoxSet Context!11798) List!65844) Unit!159541)

(assert (=> bm!589298 (= call!589186 (lemmaEmptyZipperMatchesNothing!108 lt!2426042 (t!379513 s!2326)))))

(declare-fun bm!589299 () Bool)

(declare-fun call!589380 () Bool)

(assert (=> bm!589299 (= call!589380 call!589367)))

(declare-fun bm!589300 () Bool)

(assert (=> bm!589300 (= call!589246 call!589262)))

(declare-fun bm!589301 () Bool)

(declare-fun call!589336 () Bool)

(assert (=> bm!589301 (= call!589244 call!589336)))

(declare-fun bm!589302 () Bool)

(assert (=> bm!589302 (= call!589365 call!589328)))

(declare-fun bm!589303 () Bool)

(assert (=> bm!589303 (= call!589266 call!589330)))

(declare-fun b!6652231 () Bool)

(declare-fun Unit!159555 () Unit!159541)

(assert (=> b!6652231 (= e!4022259 Unit!159555)))

(assert (=> b!6652231 (= lt!2425960 (store ((as const (Array Context!11798 Bool)) false) lt!2425966 true))))

(assert (=> b!6652231 (= lt!2425959 call!589177)))

(declare-fun lt!2425925 () Unit!159541)

(assert (=> b!6652231 (= lt!2425925 call!589353)))

(declare-fun call!589190 () Bool)

(assert (=> b!6652231 (= call!589295 call!589190)))

(declare-fun bm!589304 () Bool)

(assert (=> bm!589304 (= call!589317 (Exists!3585 (ite c!1227939 lambda!372739 (ite c!1227934 lambda!372743 (ite c!1227941 lambda!372747 lambda!372757)))))))

(declare-fun b!6652232 () Bool)

(declare-fun tp!1830919 () Bool)

(declare-fun tp!1830924 () Bool)

(assert (=> b!6652232 (= e!4022242 (and tp!1830919 tp!1830924))))

(declare-fun b!6652233 () Bool)

(declare-fun res!2726036 () Bool)

(assert (=> b!6652233 (=> (not res!2726036) (not e!4022237))))

(declare-fun toList!10299 ((InoxSet Context!11798)) List!65846)

(assert (=> b!6652233 (= res!2726036 (= (toList!10299 z!1189) zl!343))))

(declare-fun bm!589305 () Bool)

(declare-fun lemmaStarApp!162 (Regex!16515 List!65844 List!65844) Unit!159541)

(assert (=> bm!589305 (= call!589352 (lemmaStarApp!162 (reg!16844 (regOne!33542 r!7292)) (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946)) (ite c!1227941 (_2!36797 lt!2426051) (_2!36797 lt!2425946))))))

(declare-fun bm!589306 () Bool)

(declare-fun call!589260 () Bool)

(declare-fun call!589181 () Bool)

(assert (=> bm!589306 (= call!589260 call!589181)))

(declare-fun bm!589307 () Bool)

(declare-fun ++!14673 (List!65845 List!65845) List!65845)

(assert (=> bm!589307 (= call!589182 (++!14673 lt!2426032 lt!2425993))))

(declare-fun b!6652234 () Bool)

(assert (=> b!6652234 (= e!4022237 (not e!4022231))))

(declare-fun res!2726032 () Bool)

(assert (=> b!6652234 (=> res!2726032 e!4022231)))

(assert (=> b!6652234 (= res!2726032 (not ((_ is Cons!65722) zl!343)))))

(assert (=> b!6652234 (= lt!2426043 lt!2425909)))

(assert (=> b!6652234 (= lt!2425909 (matchRSpec!3616 r!7292 s!2326))))

(assert (=> b!6652234 (= lt!2426043 (matchR!8698 r!7292 s!2326))))

(declare-fun lt!2426066 () Unit!159541)

(assert (=> b!6652234 (= lt!2426066 (mainMatchTheorem!3616 r!7292 s!2326))))

(declare-fun bm!589308 () Bool)

(assert (=> bm!589308 (= call!589348 (flatMap!2020 (ite c!1227937 lt!2425942 (ite c!1227939 lt!2425972 lt!2426092)) (ite c!1227937 lambda!372738 (ite c!1227939 lambda!372738 lambda!372738))))))

(declare-fun bm!589309 () Bool)

(assert (=> bm!589309 (= call!589191 call!589297)))

(declare-fun bm!589310 () Bool)

(declare-fun call!589324 () Unit!159541)

(assert (=> bm!589310 (= call!589324 call!589320)))

(declare-fun b!6652235 () Bool)

(assert (=> b!6652235 (= e!4022248 e!4022268)))

(assert (=> b!6652235 (= c!1227944 ((_ is EmptyExpr!16515) (regOne!33542 r!7292)))))

(declare-fun bm!589311 () Bool)

(assert (=> bm!589311 (= call!589253 call!589268)))

(declare-fun b!6652236 () Bool)

(declare-fun Unit!159556 () Unit!159541)

(assert (=> b!6652236 (= e!4022255 Unit!159556)))

(declare-fun bm!589312 () Bool)

(declare-fun call!589200 () Bool)

(assert (=> bm!589312 (= call!589181 call!589200)))

(declare-fun b!6652237 () Bool)

(declare-fun e!4022254 () Bool)

(assert (=> b!6652237 (= e!4022254 (= lt!2426043 call!589377))))

(declare-fun bm!589313 () Bool)

(assert (=> bm!589313 (= call!589327 (lemmaConcatPreservesForall!428 lt!2426032 lt!2425993 (ite c!1227941 lambda!372752 lambda!372754)))))

(declare-fun bm!589314 () Bool)

(assert (=> bm!589314 (= call!589189 call!589176)))

(declare-fun b!6652238 () Bool)

(assert (=> b!6652238 e!4022254))

(declare-fun res!2726016 () Bool)

(assert (=> b!6652238 (=> (not res!2726016) (not e!4022254))))

(declare-fun call!589346 () Bool)

(assert (=> b!6652238 (= res!2726016 (= call!589196 call!589346))))

(declare-fun lt!2425906 () Unit!159541)

(assert (=> b!6652238 (= lt!2425906 call!589378)))

(assert (=> b!6652238 (= lt!2426003 call!589225)))

(assert (=> b!6652238 (= call!589312 call!589308)))

(declare-fun lt!2425991 () Unit!159541)

(declare-fun call!589296 () Unit!159541)

(assert (=> b!6652238 (= lt!2425991 call!589296)))

(assert (=> b!6652238 (= call!589201 call!589188)))

(declare-fun lt!2425945 () Unit!159541)

(assert (=> b!6652238 (= lt!2425945 call!589211)))

(assert (=> b!6652238 (= lt!2425917 (store ((as const (Array Context!11798 Bool)) false) lt!2425966 true))))

(assert (=> b!6652238 (= call!589300 call!589333)))

(declare-fun lt!2426035 () Unit!159541)

(assert (=> b!6652238 (= lt!2426035 call!589232)))

(assert (=> b!6652238 (= call!589336 call!589255)))

(declare-fun lt!2426040 () Unit!159541)

(assert (=> b!6652238 (= lt!2426040 call!589335)))

(assert (=> b!6652238 (not call!589330)))

(declare-fun lt!2426063 () Unit!159541)

(assert (=> b!6652238 (= lt!2426063 call!589186)))

(declare-fun Unit!159557 () Unit!159541)

(assert (=> b!6652238 (= e!4022268 Unit!159557)))

(declare-fun bm!589315 () Bool)

(assert (=> bm!589315 (= call!589373 call!589341)))

(declare-fun bm!589316 () Bool)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!376 (Regex!16515 Regex!16515 List!65844 List!65844) Unit!159541)

(assert (=> bm!589316 (= call!589271 (lemmaTwoRegexMatchThenConcatMatchesConcatString!376 (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2425900) (ite c!1227941 lt!2425941 (regTwo!33542 r!7292)) (ite c!1227941 (_1!36797 lt!2426051) lt!2425892) (ite c!1227941 lt!2425940 (_2!36797 lt!2425939))))))

(declare-fun b!6652239 () Bool)

(declare-fun e!4022247 () Bool)

(assert (=> b!6652239 e!4022247))

(declare-fun res!2726030 () Bool)

(assert (=> b!6652239 (=> (not res!2726030) (not e!4022247))))

(declare-fun lt!2425965 () Bool)

(assert (=> b!6652239 (= res!2726030 (= lt!2425965 call!589334))))

(declare-fun lt!2425915 () Unit!159541)

(assert (=> b!6652239 (= lt!2425915 (mainMatchTheorem!3616 lt!2425949 s!2326))))

(declare-fun lt!2426012 () Bool)

(declare-fun call!589291 () Bool)

(assert (=> b!6652239 (= lt!2426012 call!589291)))

(declare-fun lt!2426031 () Unit!159541)

(assert (=> b!6652239 (= lt!2426031 call!589320)))

(assert (=> b!6652239 (= lt!2425965 lt!2426012)))

(assert (=> b!6652239 (= lt!2426012 call!589245)))

(assert (=> b!6652239 (= lt!2425965 call!589185)))

(assert (=> b!6652239 (= lt!2426011 (Union!16515 (Concat!25360 (regOne!33543 (regOne!33542 r!7292)) (regTwo!33542 r!7292)) (Concat!25360 (regTwo!33543 (regOne!33542 r!7292)) (regTwo!33542 r!7292))))))

(assert (=> b!6652239 (= lt!2425949 (Concat!25360 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))

(declare-fun lt!2425987 () Unit!159541)

(declare-fun lemmaConcatDistributesInUnion!62 (Regex!16515 Regex!16515 Regex!16515 List!65844) Unit!159541)

(assert (=> b!6652239 (= lt!2425987 (lemmaConcatDistributesInUnion!62 (regOne!33543 (regOne!33542 r!7292)) (regTwo!33543 (regOne!33542 r!7292)) (regTwo!33542 r!7292) s!2326))))

(declare-fun lt!2426018 () Bool)

(assert (=> b!6652239 (= lt!2426018 call!589277)))

(declare-fun lt!2425955 () Unit!159541)

(declare-fun call!589298 () Unit!159541)

(assert (=> b!6652239 (= lt!2425955 call!589298)))

(declare-fun lt!2425928 () Bool)

(assert (=> b!6652239 (= lt!2425928 (matchRSpec!3616 lt!2425903 s!2326))))

(declare-fun lt!2426046 () Unit!159541)

(assert (=> b!6652239 (= lt!2426046 call!589286)))

(assert (=> b!6652239 (= lt!2426018 (matchZipper!2527 lt!2426013 s!2326))))

(assert (=> b!6652239 (= lt!2426018 call!589251)))

(declare-fun lt!2425916 () Unit!159541)

(assert (=> b!6652239 (= lt!2425916 call!589270)))

(assert (=> b!6652239 (= lt!2426024 call!589198)))

(assert (=> b!6652239 (= lt!2425928 call!589366)))

(assert (=> b!6652239 (= lt!2425928 call!589174)))

(declare-fun lt!2426079 () Unit!159541)

(assert (=> b!6652239 (= lt!2426079 call!589290)))

(assert (=> b!6652239 (= lt!2425903 call!589187)))

(declare-fun lt!2426027 () Unit!159541)

(assert (=> b!6652239 (= lt!2426027 e!4022239)))

(declare-fun c!1227942 () Bool)

(assert (=> b!6652239 (= c!1227942 call!589302)))

(assert (=> b!6652239 (= call!589209 call!589340)))

(declare-fun lt!2426045 () Unit!159541)

(assert (=> b!6652239 (= lt!2426045 call!589194)))

(declare-fun lt!2425899 () (InoxSet Context!11798))

(assert (=> b!6652239 (= lt!2425899 call!589340)))

(declare-fun lt!2426060 () Unit!159541)

(assert (=> b!6652239 (= lt!2426060 e!4022255)))

(declare-fun c!1227940 () Bool)

(assert (=> b!6652239 (= c!1227940 (nullable!6508 (regOne!33543 (regOne!33542 r!7292))))))

(assert (=> b!6652239 (= call!589348 call!589220)))

(declare-fun lt!2426085 () Unit!159541)

(assert (=> b!6652239 (= lt!2426085 call!589361)))

(declare-fun lt!2425908 () (InoxSet Context!11798))

(assert (=> b!6652239 (= lt!2425908 call!589220)))

(assert (=> b!6652239 (= lt!2426013 (store ((as const (Array Context!11798 Bool)) false) lt!2426001 true))))

(assert (=> b!6652239 (= lt!2426001 (Context!11799 lt!2426059))))

(assert (=> b!6652239 (= lt!2426059 (Cons!65721 (regTwo!33543 (regOne!33542 r!7292)) (t!379514 (exprs!6399 (h!72170 zl!343)))))))

(assert (=> b!6652239 (= lt!2425942 (store ((as const (Array Context!11798 Bool)) false) lt!2426071 true))))

(assert (=> b!6652239 (= lt!2426071 (Context!11799 lt!2425951))))

(assert (=> b!6652239 (= lt!2425951 (Cons!65721 (regOne!33543 (regOne!33542 r!7292)) (t!379514 (exprs!6399 (h!72170 zl!343)))))))

(assert (=> b!6652239 (= call!589274 e!4022230)))

(declare-fun res!2726025 () Bool)

(assert (=> b!6652239 (=> res!2726025 e!4022230)))

(assert (=> b!6652239 (= res!2726025 lt!2426052)))

(assert (=> b!6652239 (= lt!2426052 call!589355)))

(declare-fun lt!2425973 () Unit!159541)

(assert (=> b!6652239 (= lt!2425973 call!589256)))

(assert (=> b!6652239 (= lt!2425997 call!589323)))

(assert (=> b!6652239 (= lt!2426007 call!589229)))

(declare-fun Unit!159558 () Unit!159541)

(assert (=> b!6652239 (= e!4022240 Unit!159558)))

(declare-fun b!6652240 () Bool)

(declare-fun Unit!159559 () Unit!159541)

(assert (=> b!6652240 (= e!4022239 Unit!159559)))

(declare-fun b!6652241 () Bool)

(declare-fun res!2726037 () Bool)

(assert (=> b!6652241 (=> res!2726037 e!4022231)))

(declare-fun generalisedUnion!2359 (List!65845) Regex!16515)

(declare-fun unfocusZipperList!1936 (List!65846) List!65845)

(assert (=> b!6652241 (= res!2726037 (not (= r!7292 (generalisedUnion!2359 (unfocusZipperList!1936 zl!343)))))))

(declare-fun b!6652242 () Bool)

(declare-fun e!4022238 () Bool)

(declare-fun call!589202 () Bool)

(assert (=> b!6652242 (= e!4022238 (= lt!2426043 call!589202))))

(declare-fun bm!589317 () Bool)

(assert (=> bm!589317 (= call!589302 (nullable!6508 (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292)))))))

(declare-fun bm!589318 () Bool)

(assert (=> bm!589318 (= call!589199 call!589291)))

(declare-fun bm!589319 () Bool)

(assert (=> bm!589319 (= call!589234 (lemmaFindConcatSeparationEquivalentToExists!2584 (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720))))))

(declare-fun bm!589320 () Bool)

(assert (=> bm!589320 (= call!589183 (matchR!8698 (ite c!1227941 lt!2426028 lt!2426074) (ite c!1227941 lt!2426090 (_1!36797 lt!2425939))))))

(declare-fun b!6652243 () Bool)

(assert (=> b!6652243 (= e!4022245 (= lt!2426043 call!589346))))

(declare-fun b!6652244 () Bool)

(declare-fun res!2726023 () Bool)

(assert (=> b!6652244 (=> res!2726023 e!4022235)))

(declare-fun isEmpty!38034 (List!65845) Bool)

(assert (=> b!6652244 (= res!2726023 (isEmpty!38034 (t!379514 (exprs!6399 (h!72170 zl!343)))))))

(declare-fun bm!589321 () Bool)

(assert (=> bm!589321 (= call!589381 (matchR!8698 (ite c!1227941 lt!2425900 (ite c!1227938 (reg!16844 (regOne!33542 r!7292)) lt!2425941)) (ite c!1227941 lt!2426048 (ite c!1227938 (_1!36797 lt!2426064) call!589241))))))

(declare-fun bm!589322 () Bool)

(assert (=> bm!589322 (= call!589200 call!589235)))

(declare-fun bm!589323 () Bool)

(declare-fun call!589354 () Bool)

(assert (=> bm!589323 (= call!589176 call!589354)))

(declare-fun bm!589324 () Bool)

(assert (=> bm!589324 (= call!589297 call!589276)))

(declare-fun bm!589325 () Bool)

(assert (=> bm!589325 (= call!589264 call!589260)))

(declare-fun bm!589326 () Bool)

(assert (=> bm!589326 (= call!589336 call!589380)))

(declare-fun bm!589327 () Bool)

(assert (=> bm!589327 (= call!589294 call!589202)))

(declare-fun b!6652245 () Bool)

(assert (=> b!6652245 (= e!4022265 false)))

(declare-fun e!4022250 () Bool)

(declare-fun tp!1830923 () Bool)

(declare-fun setNonEmpty!45465 () Bool)

(declare-fun setElem!45465 () Context!11798)

(assert (=> setNonEmpty!45465 (= setRes!45465 (and tp!1830923 (inv!84534 setElem!45465) e!4022250))))

(declare-fun setRest!45465 () (InoxSet Context!11798))

(assert (=> setNonEmpty!45465 (= z!1189 ((_ map or) (store ((as const (Array Context!11798 Bool)) false) setElem!45465 true) setRest!45465))))

(declare-fun bm!589328 () Bool)

(assert (=> bm!589328 (= call!589235 (matchZipper!2527 (ite c!1227937 ((_ map or) lt!2425997 lt!2425952) (ite c!1227939 lt!2426083 (ite c!1227934 lt!2425907 (ite c!1227943 (ite c!1227941 (ite c!1227935 lt!2426039 z!1189) lt!2425935) (ite c!1227944 lt!2425917 z!1189))))) (ite (or c!1227937 c!1227939) (t!379513 s!2326) (ite c!1227934 s!2326 (ite c!1227943 (ite c!1227941 s!2326 (_1!36797 lt!2426064)) s!2326)))))))

(declare-fun b!6652246 () Bool)

(declare-fun tp!1830921 () Bool)

(assert (=> b!6652246 (= e!4022242 tp!1830921)))

(declare-fun bm!589329 () Bool)

(assert (=> bm!589329 (= call!589350 (get!22854 (ite c!1227941 lt!2425990 lt!2425929)))))

(declare-fun bm!589330 () Bool)

(assert (=> bm!589330 (= call!589227 (matchR!8698 (ite c!1227938 lt!2425941 lt!2425900) (ite c!1227938 (_2!36797 lt!2426064) Nil!65720)))))

(declare-fun b!6652247 () Bool)

(assert (=> b!6652247 (= e!4022243 e!4022266)))

(assert (=> b!6652247 (= c!1227934 ((_ is Concat!25360) (regOne!33542 r!7292)))))

(declare-fun b!6652248 () Bool)

(declare-fun tp!1830918 () Bool)

(assert (=> b!6652248 (= e!4022250 tp!1830918)))

(declare-fun bm!589331 () Bool)

(assert (=> bm!589331 (= call!589242 (++!14672 (ite c!1227941 (_2!36797 lt!2426051) (ite c!1227938 lt!2425892 Nil!65720)) (ite c!1227941 (_2!36797 lt!2425896) (ite c!1227938 (_2!36797 lt!2425939) s!2326))))))

(declare-fun bm!589332 () Bool)

(assert (=> bm!589332 (= call!589323 (derivationStepZipperDown!1763 (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292))))) (ite (or c!1227937 c!1227939) lt!2425966 (ite c!1227934 (Context!11799 lt!2426004) lt!2425930)) (h!72168 s!2326)))))

(declare-fun bm!589333 () Bool)

(assert (=> bm!589333 (= call!589318 call!589324)))

(declare-fun bm!589334 () Bool)

(assert (=> bm!589334 (= call!589194 (lemmaFlatMapOnSingletonSet!1546 (ite c!1227937 lt!2426013 (ite c!1227943 lt!2426050 lt!2425917)) (ite c!1227937 lt!2426001 (ite c!1227943 lt!2425930 lt!2425966)) (ite c!1227937 lambda!372738 (ite c!1227943 lambda!372738 lambda!372738))))))

(declare-fun bm!589335 () Bool)

(assert (=> bm!589335 (= call!589239 call!589175)))

(declare-fun b!6652249 () Bool)

(declare-fun validRegex!8251 (Regex!16515) Bool)

(assert (=> b!6652249 (= e!4022252 (validRegex!8251 lt!2425905))))

(declare-fun bm!589336 () Bool)

(assert (=> bm!589336 (= call!589192 call!589185)))

(declare-fun bm!589337 () Bool)

(assert (=> bm!589337 (= call!589206 call!589278)))

(declare-fun bm!589338 () Bool)

(assert (=> bm!589338 (= call!589213 call!589243)))

(declare-fun bm!589339 () Bool)

(assert (=> bm!589339 (= call!589306 call!589308)))

(declare-fun bm!589340 () Bool)

(assert (=> bm!589340 (= call!589228 call!589190)))

(declare-fun bm!589341 () Bool)

(assert (=> bm!589341 (= call!589298 (mainMatchTheorem!3616 (ite c!1227937 lt!2426024 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425950 (ite c!1227943 lt!2426028 (regOne!33542 r!7292))))) s!2326))))

(declare-fun bm!589342 () Bool)

(assert (=> bm!589342 (= call!589174 (matchR!8698 (ite c!1227937 lt!2425903 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425950 (ite c!1227943 lt!2425941 (regTwo!33542 r!7292))))) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 lt!2425940 lt!2425919) s!2326))))))

(declare-fun Unit!159560 () Unit!159541)

(assert (=> b!6652250 (= e!4022243 Unit!159560)))

(assert (=> b!6652250 (= lt!2426008 (Cons!65721 (regTwo!33542 (regOne!33542 r!7292)) (t!379514 (exprs!6399 (h!72170 zl!343)))))))

(assert (=> b!6652250 (= lt!2426009 (Context!11799 lt!2426008))))

(assert (=> b!6652250 (= lt!2426083 call!589229)))

(assert (=> b!6652250 (= lt!2425989 call!589325)))

(declare-fun lt!2426014 () Unit!159541)

(assert (=> b!6652250 (= lt!2426014 call!589296)))

(declare-fun lt!2426041 () Bool)

(assert (=> b!6652250 (= lt!2426041 call!589200)))

(declare-fun res!2726014 () Bool)

(assert (=> b!6652250 (= res!2726014 lt!2426041)))

(assert (=> b!6652250 (=> res!2726014 e!4022246)))

(assert (=> b!6652250 (= call!589254 e!4022246)))

(assert (=> b!6652250 (= lt!2426017 (Cons!65721 (regOne!33542 (regOne!33542 r!7292)) lt!2426008))))

(assert (=> b!6652250 (= lt!2425969 (Context!11799 lt!2426017))))

(assert (=> b!6652250 (= lt!2425910 (store ((as const (Array Context!11798 Bool)) false) lt!2425969 true))))

(assert (=> b!6652250 (= lt!2425972 (store ((as const (Array Context!11798 Bool)) false) lt!2426009 true))))

(declare-fun lt!2426057 () (InoxSet Context!11798))

(assert (=> b!6652250 (= lt!2426057 call!589283)))

(declare-fun lt!2425938 () Unit!159541)

(assert (=> b!6652250 (= lt!2425938 call!589180)))

(assert (=> b!6652250 (= call!589343 call!589283)))

(assert (=> b!6652250 (= lt!2426055 call!589288)))

(declare-fun lt!2426023 () Unit!159541)

(assert (=> b!6652250 (= lt!2426023 call!589203)))

(assert (=> b!6652250 (= call!589224 call!589288)))

(declare-fun lt!2425934 () Unit!159541)

(assert (=> b!6652250 (= lt!2425934 call!589256)))

(declare-fun res!2726017 () Bool)

(assert (=> b!6652250 (= res!2726017 lt!2426041)))

(assert (=> b!6652250 (=> res!2726017 e!4022229)))

(assert (=> b!6652250 (= call!589274 e!4022229)))

(assert (=> b!6652250 (= lt!2425988 call!589238)))

(declare-fun lt!2425902 () Unit!159541)

(declare-fun call!589269 () Unit!159541)

(assert (=> b!6652250 (= lt!2425902 call!589269)))

(declare-fun lt!2425897 () Bool)

(assert (=> b!6652250 (= lt!2425897 call!589310)))

(assert (=> b!6652250 (= lt!2425897 call!589228)))

(assert (=> b!6652250 (= lt!2425943 call!589314)))

(declare-fun lt!2425890 () Unit!159541)

(assert (=> b!6652250 (= lt!2425890 call!589210)))

(declare-fun lt!2426005 () Bool)

(assert (=> b!6652250 (= lt!2426005 call!589192)))

(assert (=> b!6652250 (= lt!2426005 call!589305)))

(declare-fun lt!2426091 () Unit!159541)

(assert (=> b!6652250 (= lt!2426091 call!589313)))

(assert (=> b!6652250 (= lt!2425897 call!589199)))

(declare-fun lt!2426000 () Unit!159541)

(assert (=> b!6652250 (= lt!2426000 call!589222)))

(assert (=> b!6652250 (= call!589289 call!589304)))

(declare-fun lt!2426029 () Unit!159541)

(assert (=> b!6652250 (= lt!2426029 call!589363)))

(assert (=> b!6652250 (= call!589317 call!589364)))

(declare-fun lt!2425996 () Unit!159541)

(assert (=> b!6652250 (= lt!2425996 call!589324)))

(assert (=> b!6652250 (= lt!2426005 call!589215)))

(declare-fun call!589307 () Regex!16515)

(assert (=> b!6652250 (= lt!2426072 call!589307)))

(declare-fun lt!2425947 () Unit!159541)

(assert (=> b!6652250 (= lt!2425947 call!589234)))

(assert (=> b!6652250 (= call!589233 call!589243)))

(declare-fun lt!2425977 () Unit!159541)

(assert (=> b!6652250 (= lt!2425977 call!589339)))

(declare-fun call!589184 () Bool)

(assert (=> b!6652250 (= call!589250 call!589184)))

(declare-fun lt!2425913 () Unit!159541)

(assert (=> b!6652250 (= lt!2425913 call!589369)))

(declare-fun res!2726042 () Bool)

(assert (=> b!6652250 (= res!2726042 (= call!589281 call!589367))))

(assert (=> b!6652250 (=> (not res!2726042) (not e!4022238))))

(assert (=> b!6652250 e!4022238))

(declare-fun bm!589343 () Bool)

(assert (=> bm!589343 (= call!589319 call!589226)))

(declare-fun bm!589344 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!682 (Regex!16515 List!65844) Unit!159541)

(assert (=> bm!589344 (= call!589322 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!682 (reg!16844 (regOne!33542 r!7292)) (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720))))))

(declare-fun bm!589345 () Bool)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!236 (Context!11798 Context!11798 List!65844 List!65844) Unit!159541)

(assert (=> bm!589345 (= call!589247 (lemmaConcatenateContextMatchesConcatOfStrings!236 lt!2426056 lt!2425930 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2426064)) (ite c!1227941 lt!2425940 (_2!36797 lt!2426064))))))

(declare-fun bm!589346 () Bool)

(assert (=> bm!589346 (= call!589269 call!589290)))

(assert (=> b!6652251 e!4022234))

(declare-fun res!2726027 () Bool)

(assert (=> b!6652251 (=> (not res!2726027) (not e!4022234))))

(assert (=> b!6652251 (= res!2726027 (= call!589338 call!589380))))

(declare-fun lt!2425895 () Unit!159541)

(assert (=> b!6652251 (= lt!2425895 call!589231)))

(assert (=> b!6652251 (= call!589354 call!589248)))

(declare-fun lt!2425923 () Unit!159541)

(assert (=> b!6652251 (= lt!2425923 call!589268)))

(assert (=> b!6652251 (= call!589217 call!589213)))

(declare-fun lt!2425998 () Unit!159541)

(assert (=> b!6652251 (= lt!2425998 call!589226)))

(assert (=> b!6652251 (= lt!2425898 call!589375)))

(assert (=> b!6652251 (= call!589258 call!589341)))

(declare-fun lt!2425937 () Unit!159541)

(assert (=> b!6652251 (= lt!2425937 call!589370)))

(declare-fun call!589259 () Bool)

(assert (=> b!6652251 (= call!589259 call!589321)))

(declare-fun lt!2425921 () Unit!159541)

(assert (=> b!6652251 (= lt!2425921 call!589371)))

(assert (=> b!6652251 (= call!589263 call!589179)))

(declare-fun lt!2426082 () Unit!159541)

(assert (=> b!6652251 (= lt!2426082 call!589328)))

(assert (=> b!6652251 (= lt!2425950 call!589314)))

(declare-fun lt!2425956 () Bool)

(assert (=> b!6652251 (= lt!2425956 call!589282)))

(declare-fun lt!2426069 () Unit!159541)

(assert (=> b!6652251 (= lt!2426069 call!589318)))

(assert (=> b!6652251 (= lt!2425956 call!589181)))

(assert (=> b!6652251 (= lt!2425956 call!589262)))

(declare-fun lt!2425920 () Unit!159541)

(assert (=> b!6652251 (= lt!2425920 call!589276)))

(assert (=> b!6652251 (= lt!2425927 call!589307)))

(assert (=> b!6652251 (= call!589273 call!589358)))

(declare-fun lt!2426077 () Unit!159541)

(assert (=> b!6652251 (= lt!2426077 call!589237)))

(declare-fun lt!2425985 () (InoxSet Context!11798))

(assert (=> b!6652251 (= lt!2425985 call!589358)))

(assert (=> b!6652251 (= lt!2425907 (store ((as const (Array Context!11798 Bool)) false) lt!2426021 true))))

(declare-fun lt!2425999 () List!65845)

(assert (=> b!6652251 (= lt!2426021 (Context!11799 lt!2425999))))

(assert (=> b!6652251 (= lt!2425999 (Cons!65721 (regOne!33542 (regOne!33542 r!7292)) lt!2426004))))

(declare-fun lt!2425976 () (InoxSet Context!11798))

(assert (=> b!6652251 (= lt!2425976 call!589359)))

(assert (=> b!6652251 (= lt!2426004 (Cons!65721 (regTwo!33542 (regOne!33542 r!7292)) (t!379514 (exprs!6399 (h!72170 zl!343)))))))

(declare-fun Unit!159561 () Unit!159541)

(assert (=> b!6652251 (= e!4022266 Unit!159561)))

(declare-fun bm!589347 () Bool)

(assert (=> bm!589347 (= call!589354 (Exists!3585 (ite c!1227934 lambda!372745 (ite c!1227941 lambda!372747 (ite c!1227938 lambda!372757 lambda!372761)))))))

(declare-fun bm!589348 () Bool)

(assert (=> bm!589348 (= call!589272 call!589379)))

(declare-fun res!2726028 () Bool)

(assert (=> start!649154 (=> (not res!2726028) (not e!4022237))))

(assert (=> start!649154 (= res!2726028 (validRegex!8251 r!7292))))

(assert (=> start!649154 e!4022237))

(assert (=> start!649154 e!4022242))

(declare-fun condSetEmpty!45465 () Bool)

(assert (=> start!649154 (= condSetEmpty!45465 (= z!1189 ((as const (Array Context!11798 Bool)) false)))))

(assert (=> start!649154 setRes!45465))

(assert (=> start!649154 e!4022233))

(assert (=> start!649154 e!4022261))

(declare-fun bm!589349 () Bool)

(assert (=> bm!589349 (= call!589331 call!589259)))

(declare-fun bm!589350 () Bool)

(assert (=> bm!589350 (= call!589209 (flatMap!2020 (ite c!1227937 lt!2426013 (ite c!1227939 lt!2425910 (ite c!1227943 (ite c!1227941 lt!2426039 lt!2425981) lt!2425917))) (ite c!1227937 lambda!372738 (ite c!1227939 lambda!372738 (ite c!1227943 (ite c!1227941 lambda!372738 lambda!372738) lambda!372738)))))))

(declare-fun bm!589351 () Bool)

(assert (=> bm!589351 (= call!589307 (generalisedConcat!2112 (ite c!1227939 (t!379514 (exprs!6399 (h!72170 zl!343))) lt!2425999)))))

(declare-fun bm!589352 () Bool)

(assert (=> bm!589352 (= call!589332 call!589376)))

(declare-fun b!6652252 () Bool)

(assert (=> b!6652252 (= e!4022247 (= lt!2426043 call!589284))))

(declare-fun bm!589353 () Bool)

(assert (=> bm!589353 (= call!589251 (matchR!8698 (ite c!1227937 lt!2426024 (ite c!1227939 (Concat!25360 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) lt!2426072) (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 lt!2426003 (regOne!33542 r!7292)))))) s!2326))))

(declare-fun bm!589354 () Bool)

(assert (=> bm!589354 (= call!589366 (matchZipper!2527 (ite c!1227937 lt!2425942 (ite c!1227939 lt!2425972 (ite (or c!1227934 c!1227943 c!1227944) z!1189 lt!2426042))) (ite (or c!1227937 c!1227939 c!1227934 c!1227943 c!1227944) s!2326 (t!379513 s!2326))))))

(declare-fun bm!589355 () Bool)

(assert (=> bm!589355 (= call!589259 call!589250)))

(declare-fun b!6652253 () Bool)

(assert (=> b!6652253 (= e!4022251 e!4022257)))

(assert (=> b!6652253 (= c!1227938 call!589306)))

(declare-fun bm!589356 () Bool)

(assert (=> bm!589356 (= call!589361 (lemmaFlatMapOnSingletonSet!1546 (ite c!1227937 lt!2425942 (ite c!1227939 lt!2425972 lt!2425935)) (ite c!1227937 lt!2426071 (ite c!1227939 lt!2426009 lt!2426056)) (ite c!1227937 lambda!372738 (ite c!1227939 lambda!372738 lambda!372738))))))

(declare-fun bm!589357 () Bool)

(assert (=> bm!589357 (= call!589275 (matchZipper!2527 (ite c!1227937 lt!2425952 (ite c!1227939 lt!2425989 (ite c!1227943 (ite c!1227941 z!1189 lt!2426042) lt!2425952))) (ite (or c!1227937 c!1227939) (t!379513 s!2326) (ite (and c!1227943 c!1227941) s!2326 (t!379513 s!2326)))))))

(declare-fun bm!589358 () Bool)

(assert (=> bm!589358 (= call!589359 call!589325)))

(declare-fun bm!589359 () Bool)

(assert (=> bm!589359 (= call!589265 call!589214)))

(declare-fun bm!589360 () Bool)

(assert (=> bm!589360 (= call!589240 call!589370)))

(declare-fun bm!589361 () Bool)

(assert (=> bm!589361 (= call!589214 call!589311)))

(declare-fun bm!589362 () Bool)

(assert (=> bm!589362 (= call!589313 call!589298)))

(declare-fun bm!589363 () Bool)

(assert (=> bm!589363 (= call!589284 (matchZipper!2527 (ite c!1227937 z!1189 (ite c!1227939 ((_ map or) lt!2426083 lt!2425989) (ite c!1227943 (ite c!1227941 (store ((as const (Array Context!11798 Bool)) false) (Context!11799 call!589182) true) (ite c!1227938 (store ((as const (Array Context!11798 Bool)) false) (Context!11799 lt!2425944) true) lt!2425981)) ((_ map or) lt!2426042 lt!2425952)))) (ite c!1227937 s!2326 (ite c!1227939 (t!379513 s!2326) (ite c!1227943 (ite c!1227941 lt!2426090 (ite c!1227938 lt!2425975 s!2326)) (t!379513 s!2326))))))))

(declare-fun b!6652254 () Bool)

(declare-fun Unit!159562 () Unit!159541)

(assert (=> b!6652254 (= e!4022253 Unit!159562)))

(assert (=> b!6652254 (= lt!2426039 (store ((as const (Array Context!11798 Bool)) false) lt!2425966 true))))

(declare-fun lt!2426022 () Unit!159541)

(assert (=> b!6652254 (= lt!2426022 call!589372)))

(assert (=> b!6652254 (= call!589207 call!589301)))

(assert (=> b!6652254 (= lt!2426058 call!589349)))

(declare-fun lt!2425904 () Unit!159541)

(assert (=> b!6652254 (= lt!2425904 call!589368)))

(declare-fun res!2726015 () Bool)

(assert (=> b!6652254 (= res!2726015 (= call!589221 call!589293))))

(assert (=> b!6652254 (=> (not res!2726015) (not e!4022267))))

(assert (=> b!6652254 e!4022267))

(declare-fun bm!589364 () Bool)

(assert (=> bm!589364 (= call!589346 call!589260)))

(declare-fun bm!589365 () Bool)

(assert (=> bm!589365 (= call!589296 call!589257)))

(declare-fun bm!589366 () Bool)

(assert (=> bm!589366 (= call!589301 (derivationStepZipperUp!1689 lt!2425966 (h!72168 s!2326)))))

(declare-fun bm!589367 () Bool)

(assert (=> bm!589367 (= call!589248 call!589364)))

(declare-fun b!6652255 () Bool)

(assert (=> b!6652255 (= e!4022244 false)))

(declare-fun bm!589368 () Bool)

(assert (=> bm!589368 (= call!589376 call!589184)))

(declare-fun bm!589369 () Bool)

(assert (=> bm!589369 (= call!589190 (matchZipper!2527 (ite c!1227933 lt!2425960 (ite c!1227937 ((_ map or) lt!2426007 lt!2425952) lt!2425910)) (ite (or c!1227933 c!1227937) (t!379513 s!2326) s!2326)))))

(declare-fun bm!589370 () Bool)

(assert (=> bm!589370 (= call!589202 call!589303)))

(declare-fun bm!589371 () Bool)

(assert (=> bm!589371 (= call!589291 (matchRSpec!3616 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292)))))) s!2326))))

(declare-fun bm!589372 () Bool)

(assert (=> bm!589372 (= call!589278 (lemmaTwoRegexMatchThenConcatMatchesConcatString!376 (ite c!1227941 lt!2425900 (ite c!1227938 (reg!16844 (regOne!33542 r!7292)) lt!2425900)) (ite c!1227941 (regTwo!33542 r!7292) (ite c!1227938 lt!2425941 (regTwo!33542 r!7292))) (ite c!1227941 (_2!36797 lt!2426051) (ite c!1227938 (_1!36797 lt!2426064) Nil!65720)) (ite c!1227941 (_2!36797 lt!2425896) (ite c!1227938 (_2!36797 lt!2426064) s!2326))))))

(declare-fun bm!589373 () Bool)

(assert (=> bm!589373 (= call!589184 (Exists!3585 (ite c!1227939 lambda!372742 (ite c!1227941 lambda!372751 (ite c!1227938 lambda!372756 lambda!372760)))))))

(declare-fun bm!589374 () Bool)

(assert (=> bm!589374 (= call!589245 (matchR!8698 (ite c!1227937 lt!2426011 (ite c!1227939 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2426072)) (ite c!1227934 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2425898)) (ite c!1227943 (ite c!1227941 (ite c!1227935 lt!2426058 (reg!16844 (regOne!33542 r!7292))) lt!2426028) (regOne!33542 r!7292))))) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (ite c!1227935 s!2326 (_1!36797 lt!2426051)) lt!2425975) s!2326))))))

(declare-fun bm!589375 () Bool)

(assert (=> bm!589375 (= call!589326 call!589239)))

(declare-fun bm!589376 () Bool)

(assert (=> bm!589376 (= call!589378 call!589269)))

(declare-fun b!6652256 () Bool)

(declare-fun tp!1830922 () Bool)

(declare-fun tp!1830920 () Bool)

(assert (=> b!6652256 (= e!4022242 (and tp!1830922 tp!1830920))))

(declare-fun b!6652257 () Bool)

(assert (=> b!6652257 (= e!4022259 e!4022240)))

(assert (=> b!6652257 (= c!1227937 ((_ is Union!16515) (regOne!33542 r!7292)))))

(assert (= (and start!649154 res!2726028) b!6652233))

(assert (= (and b!6652233 res!2726036) b!6652199))

(assert (= (and b!6652199 res!2726034) b!6652234))

(assert (= (and b!6652234 (not res!2726032)) b!6652225))

(assert (= (and b!6652225 (not res!2726031)) b!6652221))

(assert (= (and b!6652221 (not res!2726033)) b!6652195))

(assert (= (and b!6652195 (not res!2726043)) b!6652241))

(assert (= (and b!6652241 (not res!2726037)) b!6652203))

(assert (= (and b!6652203 (not res!2726022)) b!6652194))

(assert (= (and b!6652194 (not res!2726029)) b!6652244))

(assert (= (and b!6652244 (not res!2726023)) b!6652224))

(assert (= (and b!6652224 c!1227936) b!6652228))

(assert (= (and b!6652224 (not c!1227936)) b!6652204))

(assert (= (and b!6652228 (not res!2726020)) b!6652207))

(assert (= (and b!6652224 c!1227933) b!6652231))

(assert (= (and b!6652224 (not c!1227933)) b!6652257))

(assert (= (and b!6652257 c!1227937) b!6652239))

(assert (= (and b!6652257 (not c!1227937)) b!6652201))

(assert (= (and b!6652239 (not res!2726025)) b!6652209))

(assert (= (and b!6652239 c!1227940) b!6652223))

(assert (= (and b!6652239 (not c!1227940)) b!6652236))

(assert (= (and b!6652223 (not res!2726038)) b!6652205))

(assert (= (and b!6652239 c!1227942) b!6652230))

(assert (= (and b!6652239 (not c!1227942)) b!6652240))

(assert (= (and b!6652230 (not res!2726044)) b!6652213))

(assert (= (and b!6652239 res!2726030) b!6652252))

(assert (= (and b!6652201 res!2726041) b!6652211))

(assert (= (and b!6652201 c!1227939) b!6652250))

(assert (= (and b!6652201 (not c!1227939)) b!6652247))

(assert (= (and b!6652250 (not res!2726014)) b!6652206))

(assert (= (and b!6652250 (not res!2726017)) b!6652227))

(assert (= (and b!6652250 res!2726042) b!6652242))

(assert (= (and b!6652247 c!1227934) b!6652251))

(assert (= (and b!6652247 (not c!1227934)) b!6652217))

(assert (= (and b!6652251 res!2726027) b!6652216))

(assert (= (and b!6652217 c!1227943) b!6652210))

(assert (= (and b!6652217 (not c!1227943)) b!6652235))

(assert (= (and b!6652210 res!2726039) b!6652218))

(assert (= (and b!6652210 c!1227941) b!6652196))

(assert (= (and b!6652210 (not c!1227941)) b!6652214))

(assert (= (and b!6652196 c!1227935) b!6652254))

(assert (= (and b!6652196 (not c!1227935)) b!6652192))

(assert (= (and b!6652254 res!2726015) b!6652197))

(assert (= (and b!6652192 res!2726026) b!6652193))

(assert (= (or b!6652254 b!6652192) bm!589256))

(assert (= (or b!6652254 b!6652192) bm!589191))

(assert (= (or b!6652197 b!6652192) bm!589184))

(assert (= (or b!6652254 b!6652192) bm!589220))

(assert (= (and b!6652214 c!1227932) b!6652253))

(assert (= (and b!6652214 (not c!1227932)) b!6652226))

(assert (= (and b!6652253 c!1227938) b!6652222))

(assert (= (and b!6652253 (not c!1227938)) b!6652208))

(assert (= (and b!6652222 res!2726018) b!6652229))

(assert (= (and b!6652222 res!2726040) b!6652255))

(assert (= (and b!6652208 res!2726035) b!6652245))

(assert (= (or b!6652222 b!6652208) bm!589287))

(assert (= (or b!6652222 b!6652208) bm!589286))

(assert (= (or b!6652222 b!6652208) bm!589275))

(assert (= (or b!6652222 b!6652208) bm!589309))

(assert (= (or b!6652222 b!6652208) bm!589348))

(assert (= (or b!6652222 b!6652208) bm!589352))

(assert (= (or b!6652222 b!6652208) bm!589225))

(assert (= (or b!6652222 b!6652208) bm!589375))

(assert (= (or b!6652222 b!6652208) bm!589280))

(assert (= (or b!6652222 b!6652208) bm!589293))

(assert (= (or b!6652222 b!6652208) bm!589274))

(assert (= (or b!6652222 b!6652208) bm!589172))

(assert (= (or b!6652222 b!6652208) bm!589337))

(assert (= (or b!6652222 b!6652208) bm!589238))

(assert (= (or b!6652222 b!6652208) bm!589330))

(assert (= (or b!6652222 b!6652208) bm!589314))

(assert (= (or b!6652222 b!6652208) bm!589201))

(assert (= (or b!6652222 b!6652208) bm!589223))

(assert (= (or b!6652222 b!6652208) bm!589243))

(assert (= (or b!6652192 b!6652222) bm!589305))

(assert (= (or b!6652196 b!6652222) bm!589209))

(assert (= (or b!6652196 b!6652222) bm!589170))

(assert (= (or b!6652192 b!6652222) bm!589345))

(assert (= (or b!6652196 bm!589286) bm!589343))

(assert (= (or b!6652192 bm!589223) bm!589321))

(assert (= (or b!6652192 b!6652222) bm!589206))

(assert (= (or bm!589256 b!6652222) bm!589301))

(assert (= (or b!6652192 bm!589352) bm!589368))

(assert (= (or b!6652192 b!6652222) bm!589203))

(assert (= (or b!6652192 bm!589280) bm!589267))

(assert (= (or b!6652192 b!6652222) bm!589289))

(assert (= (or b!6652192 bm!589287) bm!589331))

(assert (= (or b!6652254 b!6652208) bm!589196))

(assert (= (or b!6652192 bm!589238) bm!589290))

(assert (= (or b!6652192 bm!589274) bm!589278))

(assert (= (or b!6652254 b!6652208) bm!589265))

(assert (= (or b!6652192 b!6652222) bm!589187))

(assert (= (or b!6652192 b!6652222) bm!589236))

(assert (= (or b!6652196 b!6652253) bm!589339))

(assert (= (or b!6652192 bm!589293) bm!589344))

(assert (= (or b!6652192 bm!589348) bm!589193))

(assert (= (or b!6652192 bm!589337) bm!589372))

(assert (= (or bm!589184 b!6652222) bm!589327))

(assert (= (or b!6652192 b!6652222) bm!589349))

(assert (= (or b!6652192 b!6652222) bm!589213))

(assert (= (or b!6652192 b!6652222) bm!589302))

(assert (= (or b!6652192 bm!589172) bm!589183))

(assert (= (or b!6652192 b!6652222) bm!589227))

(assert (= (or b!6652192 b!6652222) bm!589264))

(assert (= (or b!6652196 b!6652222) bm!589329))

(assert (= (or b!6652196 bm!589201) bm!589181))

(assert (= (or b!6652192 b!6652222) bm!589359))

(assert (= (or b!6652196 b!6652222) bm!589245))

(assert (= (or b!6652192 b!6652222) bm!589316))

(assert (= (or b!6652196 b!6652222) bm!589311))

(assert (= (or b!6652192 bm!589275) bm!589235))

(assert (= (or bm!589191 bm!589309) bm!589324))

(assert (= (or b!6652192 b!6652222) bm!589320))

(assert (= (or b!6652254 b!6652208) bm!589366))

(assert (= (or b!6652192 b!6652222) bm!589313))

(assert (= (or b!6652192 b!6652222) bm!589273))

(assert (= (or b!6652192 b!6652214) bm!589303))

(assert (= (or b!6652254 b!6652208) bm!589292))

(assert (= (or b!6652196 bm!589314) bm!589323))

(assert (= (or bm!589220 b!6652222) bm!589325))

(assert (= (or b!6652192 bm!589375) bm!589335))

(assert (= (or b!6652192 b!6652222) bm!589307))

(assert (= (or b!6652192 bm!589225) bm!589210))

(assert (= (and b!6652235 c!1227944) b!6652238))

(assert (= (and b!6652235 (not c!1227944)) b!6652219))

(assert (= (and b!6652238 res!2726016) b!6652237))

(assert (= (and b!6652219 res!2726021) b!6652243))

(assert (= (or b!6652238 b!6652219) bm!589218))

(assert (= (or b!6652238 b!6652219) bm!589233))

(assert (= (or b!6652238 b!6652219) bm!589298))

(assert (= (or b!6652238 b!6652243) bm!589364))

(assert (= (or b!6652238 b!6652219) bm!589276))

(assert (= (or b!6652238 b!6652219) bm!589173))

(assert (= (or b!6652238 b!6652219) bm!589224))

(assert (= (or b!6652238 b!6652219) bm!589215))

(assert (= (or b!6652237 b!6652219) bm!589205))

(assert (= (or b!6652210 b!6652238) bm!589255))

(assert (= (or bm!589325 bm!589364) bm!589306))

(assert (= (or bm!589196 b!6652238) bm!589257))

(assert (= (or b!6652210 bm!589276) bm!589360))

(assert (= (or bm!589303 b!6652238) bm!589222))

(assert (= (or b!6652210 bm!589233) bm!589283))

(assert (= (or bm!589292 b!6652238) bm!589176))

(assert (= (or b!6652210 bm!589205) bm!589249))

(assert (= (or bm!589203 bm!589218) bm!589295))

(assert (= (or b!6652210 b!6652238) bm!589232))

(assert (= (or bm!589187 b!6652238) bm!589376))

(assert (= (or bm!589301 b!6652238) bm!589326))

(assert (= (or bm!589335 bm!589215) bm!589190))

(assert (= (or b!6652210 bm!589173) bm!589300))

(assert (= (or bm!589235 bm!589224) bm!589315))

(assert (= (or bm!589210 b!6652238) bm!589272))

(assert (= (or bm!589339 b!6652238) bm!589216))

(assert (= (or b!6652251 bm!589306) bm!589312))

(assert (= (or b!6652251 bm!589323) bm!589347))

(assert (= (or b!6652251 bm!589181) bm!589277))

(assert (= (or b!6652251 bm!589359) bm!589361))

(assert (= (or b!6652251 bm!589343) bm!589178))

(assert (= (or b!6652251 bm!589183) bm!589244))

(assert (= (or b!6652251 bm!589278) bm!589338))

(assert (= (or b!6652251 bm!589360) bm!589294))

(assert (= (or b!6652251 bm!589209) bm!589367))

(assert (= (or b!6652251 bm!589311) bm!589234))

(assert (= (or b!6652251 bm!589176) bm!589270))

(assert (= (or b!6652251 bm!589300) bm!589204))

(assert (= (or b!6652251 bm!589324) bm!589202))

(assert (= (or b!6652251 bm!589302) bm!589258))

(assert (= (or b!6652251 bm!589245) bm!589241))

(assert (= (or b!6652251 bm!589349) bm!589355))

(assert (= (or b!6652216 bm!589249) bm!589219))

(assert (= (or b!6652251 bm!589283) bm!589269))

(assert (= (or b!6652251 b!6652222) bm!589239))

(assert (= (or b!6652251 bm!589190) bm!589333))

(assert (= (or b!6652251 bm!589326) bm!589299))

(assert (= (or b!6652251 bm!589267) bm!589252))

(assert (= (or b!6652251 bm!589193) bm!589268))

(assert (= (or b!6652251 bm!589315) bm!589198))

(assert (= (or b!6652251 bm!589295) bm!589182))

(assert (= (or b!6652251 b!6652210) bm!589358))

(assert (= (or b!6652251 bm!589265) bm!589171))

(assert (= (or b!6652251 b!6652210) bm!589242))

(assert (= (or b!6652251 b!6652210) bm!589231))

(assert (= (or b!6652251 bm!589206) bm!589212))

(assert (= (or b!6652251 bm!589170) bm!589254))

(assert (= (or b!6652250 b!6652210) bm!589189))

(assert (= (or b!6652250 b!6652251) bm!589271))

(assert (= (or b!6652250 bm!589178) bm!589319))

(assert (= (or b!6652250 bm!589376) bm!589346))

(assert (= (or b!6652250 b!6652238) bm!589365))

(assert (= (or b!6652250 bm!589312) bm!589322))

(assert (= (or b!6652250 bm!589367) bm!589282))

(assert (= (or b!6652250 bm!589257) bm!589177))

(assert (= (or b!6652250 bm!589333) bm!589310))

(assert (= (or b!6652250 bm!589234) bm!589291))

(assert (= (or b!6652250 bm!589242) bm!589228))

(assert (= (or b!6652242 bm!589327) bm!589370))

(assert (= (or b!6652250 bm!589241) bm!589304))

(assert (= (or b!6652250 bm!589268) bm!589336))

(assert (= (or b!6652250 bm!589204) bm!589296))

(assert (= (or b!6652250 bm!589182) bm!589247))

(assert (= (or b!6652250 bm!589299) bm!589261))

(assert (= (or b!6652250 b!6652210) bm!589188))

(assert (= (or b!6652250 bm!589277) bm!589253))

(assert (= (or b!6652227 bm!589222) bm!589175))

(assert (= (or b!6652250 bm!589258) bm!589208))

(assert (= (or b!6652250 bm!589358) bm!589288))

(assert (= (or b!6652250 b!6652210) bm!589285))

(assert (= (or b!6652250 bm!589355) bm!589226))

(assert (= (or b!6652250 bm!589361) bm!589263))

(assert (= (or b!6652206 bm!589216) bm!589179))

(assert (= (or b!6652250 bm!589239) bm!589248))

(assert (= (or b!6652250 bm!589294) bm!589362))

(assert (= (or b!6652250 bm!589270) bm!589260))

(assert (= (or b!6652250 bm!589269) bm!589318))

(assert (= (or b!6652250 bm!589338) bm!589262))

(assert (= (or b!6652250 bm!589219) bm!589200))

(assert (= (or b!6652250 bm!589272) bm!589195))

(assert (= (or b!6652250 b!6652222) bm!589186))

(assert (= (or b!6652250 b!6652210) bm!589217))

(assert (= (or b!6652250 b!6652251) bm!589351))

(assert (= (or b!6652250 bm!589202) bm!589194))

(assert (= (or b!6652250 bm!589368) bm!589373))

(assert (= (or b!6652250 bm!589244) bm!589174))

(assert (= (or b!6652250 bm!589290) bm!589284))

(assert (= (or b!6652250 bm!589254) bm!589230))

(assert (= (or b!6652250 bm!589212) bm!589214))

(assert (= (or b!6652239 bm!589260) bm!589207))

(assert (= (or b!6652239 bm!589362) bm!589341))

(assert (= (or b!6652239 bm!589255) bm!589334))

(assert (= (or b!6652239 bm!589188) bm!589308))

(assert (= (or b!6652209 b!6652230 bm!589370) bm!589199))

(assert (= (or b!6652239 bm!589175) bm!589266))

(assert (= (or b!6652239 bm!589194) bm!589237))

(assert (= (or b!6652223 b!6652250) bm!589340))

(assert (= (or b!6652239 bm!589177) bm!589350))

(assert (= (or b!6652239 bm!589186) bm!589197))

(assert (= (or b!6652239 bm!589336) bm!589185))

(assert (= (or b!6652239 bm!589288) bm!589332))

(assert (= (or b!6652239 b!6652211) bm!589317))

(assert (= (or b!6652239 bm!589310) bm!589229))

(assert (= (or b!6652239 b!6652250) bm!589297))

(assert (= (or b!6652239 bm!589189) bm!589250))

(assert (= (or b!6652239 bm!589346) bm!589246))

(assert (= (or b!6652239 bm!589271) bm!589192))

(assert (= (or b!6652252 bm!589195) bm!589363))

(assert (= (or b!6652239 bm!589285) bm!589356))

(assert (= (or b!6652239 b!6652250) bm!589169))

(assert (= (or b!6652239 bm!589261) bm!589374))

(assert (= (or b!6652239 bm!589296) bm!589353))

(assert (= (or b!6652239 b!6652250) bm!589281))

(assert (= (or b!6652239 b!6652222) bm!589259))

(assert (= (or b!6652239 bm!589228) bm!589180))

(assert (= (or b!6652239 bm!589200) bm!589354))

(assert (= (or b!6652239 bm!589318) bm!589371))

(assert (= (or b!6652223 bm!589365) bm!589211))

(assert (= (or b!6652205 b!6652213 bm!589179) bm!589357))

(assert (= (or b!6652239 bm!589247) bm!589342))

(assert (= (or b!6652230 bm!589322) bm!589328))

(assert (= (or b!6652239 bm!589198) bm!589251))

(assert (= (or b!6652231 bm!589185) bm!589221))

(assert (= (or b!6652231 bm!589207) bm!589279))

(assert (= (or b!6652231 bm!589246) bm!589240))

(assert (= (or b!6652231 bm!589340) bm!589369))

(assert (= (and b!6652224 (not res!2726013)) b!6652220))

(assert (= (and b!6652220 (not res!2726024)) b!6652212))

(assert (= (and b!6652212 (not res!2726019)) b!6652249))

(assert (= (and start!649154 ((_ is ElementMatch!16515) r!7292)) b!6652215))

(assert (= (and start!649154 ((_ is Concat!25360) r!7292)) b!6652232))

(assert (= (and start!649154 ((_ is Star!16515) r!7292)) b!6652246))

(assert (= (and start!649154 ((_ is Union!16515) r!7292)) b!6652256))

(assert (= (and start!649154 condSetEmpty!45465) setIsEmpty!45465))

(assert (= (and start!649154 (not condSetEmpty!45465)) setNonEmpty!45465))

(assert (= setNonEmpty!45465 b!6652248))

(assert (= b!6652198 b!6652200))

(assert (= (and start!649154 ((_ is Cons!65722) zl!343)) b!6652198))

(assert (= (and start!649154 ((_ is Cons!65720) s!2326)) b!6652202))

(declare-fun m!7418318 () Bool)

(assert (=> bm!589221 m!7418318))

(declare-fun m!7418320 () Bool)

(assert (=> b!6652212 m!7418320))

(declare-fun m!7418322 () Bool)

(assert (=> b!6652212 m!7418322))

(declare-fun m!7418324 () Bool)

(assert (=> b!6652249 m!7418324))

(declare-fun m!7418326 () Bool)

(assert (=> bm!589308 m!7418326))

(declare-fun m!7418328 () Bool)

(assert (=> b!6652230 m!7418328))

(declare-fun m!7418330 () Bool)

(assert (=> bm!589354 m!7418330))

(declare-fun m!7418332 () Bool)

(assert (=> bm!589282 m!7418332))

(declare-fun m!7418334 () Bool)

(assert (=> bm!589213 m!7418334))

(declare-fun m!7418336 () Bool)

(assert (=> bm!589192 m!7418336))

(declare-fun m!7418338 () Bool)

(assert (=> bm!589284 m!7418338))

(declare-fun m!7418340 () Bool)

(assert (=> bm!589251 m!7418340))

(declare-fun m!7418342 () Bool)

(assert (=> b!6652208 m!7418342))

(declare-fun m!7418344 () Bool)

(assert (=> b!6652225 m!7418344))

(declare-fun m!7418346 () Bool)

(assert (=> b!6652196 m!7418346))

(declare-fun m!7418348 () Bool)

(assert (=> b!6652221 m!7418348))

(declare-fun m!7418350 () Bool)

(assert (=> bm!589253 m!7418350))

(declare-fun m!7418352 () Bool)

(assert (=> bm!589252 m!7418352))

(declare-fun m!7418354 () Bool)

(assert (=> setNonEmpty!45465 m!7418354))

(declare-fun m!7418356 () Bool)

(assert (=> bm!589347 m!7418356))

(declare-fun m!7418358 () Bool)

(assert (=> bm!589227 m!7418358))

(declare-fun m!7418360 () Bool)

(assert (=> bm!589298 m!7418360))

(declare-fun m!7418362 () Bool)

(assert (=> bm!589369 m!7418362))

(declare-fun m!7418364 () Bool)

(assert (=> b!6652194 m!7418364))

(declare-fun m!7418366 () Bool)

(assert (=> b!6652194 m!7418366))

(declare-fun m!7418368 () Bool)

(assert (=> b!6652194 m!7418368))

(assert (=> b!6652194 m!7418368))

(declare-fun m!7418370 () Bool)

(assert (=> b!6652194 m!7418370))

(declare-fun m!7418372 () Bool)

(assert (=> b!6652194 m!7418372))

(assert (=> b!6652194 m!7418364))

(declare-fun m!7418374 () Bool)

(assert (=> b!6652194 m!7418374))

(declare-fun m!7418376 () Bool)

(assert (=> bm!589319 m!7418376))

(declare-fun m!7418378 () Bool)

(assert (=> bm!589169 m!7418378))

(declare-fun m!7418380 () Bool)

(assert (=> bm!589279 m!7418380))

(declare-fun m!7418382 () Bool)

(assert (=> bm!589174 m!7418382))

(declare-fun m!7418384 () Bool)

(assert (=> b!6652210 m!7418384))

(declare-fun m!7418386 () Bool)

(assert (=> b!6652210 m!7418386))

(declare-fun m!7418388 () Bool)

(assert (=> b!6652210 m!7418388))

(declare-fun m!7418390 () Bool)

(assert (=> b!6652210 m!7418390))

(declare-fun m!7418392 () Bool)

(assert (=> start!649154 m!7418392))

(declare-fun m!7418394 () Bool)

(assert (=> bm!589345 m!7418394))

(declare-fun m!7418396 () Bool)

(assert (=> b!6652250 m!7418396))

(declare-fun m!7418398 () Bool)

(assert (=> b!6652250 m!7418398))

(declare-fun m!7418400 () Bool)

(assert (=> bm!589232 m!7418400))

(declare-fun m!7418402 () Bool)

(assert (=> bm!589331 m!7418402))

(declare-fun m!7418404 () Bool)

(assert (=> bm!589291 m!7418404))

(declare-fun m!7418406 () Bool)

(assert (=> bm!589304 m!7418406))

(declare-fun m!7418408 () Bool)

(assert (=> bm!589243 m!7418408))

(declare-fun m!7418410 () Bool)

(assert (=> bm!589281 m!7418410))

(declare-fun m!7418412 () Bool)

(assert (=> bm!589350 m!7418412))

(declare-fun m!7418414 () Bool)

(assert (=> bm!589341 m!7418414))

(declare-fun m!7418416 () Bool)

(assert (=> bm!589372 m!7418416))

(declare-fun m!7418418 () Bool)

(assert (=> bm!589217 m!7418418))

(declare-fun m!7418420 () Bool)

(assert (=> bm!589266 m!7418420))

(declare-fun m!7418422 () Bool)

(assert (=> b!6652251 m!7418422))

(assert (=> b!6652231 m!7418342))

(declare-fun m!7418424 () Bool)

(assert (=> bm!589344 m!7418424))

(declare-fun m!7418426 () Bool)

(assert (=> bm!589356 m!7418426))

(declare-fun m!7418428 () Bool)

(assert (=> bm!589328 m!7418428))

(declare-fun m!7418430 () Bool)

(assert (=> b!6652199 m!7418430))

(declare-fun m!7418432 () Bool)

(assert (=> b!6652241 m!7418432))

(assert (=> b!6652241 m!7418432))

(declare-fun m!7418434 () Bool)

(assert (=> b!6652241 m!7418434))

(declare-fun m!7418436 () Bool)

(assert (=> bm!589329 m!7418436))

(declare-fun m!7418438 () Bool)

(assert (=> bm!589297 m!7418438))

(assert (=> b!6652238 m!7418342))

(declare-fun m!7418440 () Bool)

(assert (=> bm!589236 m!7418440))

(declare-fun m!7418442 () Bool)

(assert (=> b!6652220 m!7418442))

(declare-fun m!7418444 () Bool)

(assert (=> b!6652220 m!7418444))

(declare-fun m!7418446 () Bool)

(assert (=> b!6652220 m!7418446))

(declare-fun m!7418448 () Bool)

(assert (=> b!6652234 m!7418448))

(declare-fun m!7418450 () Bool)

(assert (=> b!6652234 m!7418450))

(declare-fun m!7418452 () Bool)

(assert (=> b!6652234 m!7418452))

(declare-fun m!7418454 () Bool)

(assert (=> bm!589321 m!7418454))

(declare-fun m!7418456 () Bool)

(assert (=> bm!589211 m!7418456))

(declare-fun m!7418458 () Bool)

(assert (=> bm!589307 m!7418458))

(declare-fun m!7418460 () Bool)

(assert (=> bm!589240 m!7418460))

(declare-fun m!7418462 () Bool)

(assert (=> bm!589342 m!7418462))

(declare-fun m!7418464 () Bool)

(assert (=> bm!589264 m!7418464))

(declare-fun m!7418466 () Bool)

(assert (=> b!6652228 m!7418466))

(declare-fun m!7418468 () Bool)

(assert (=> b!6652228 m!7418468))

(declare-fun m!7418470 () Bool)

(assert (=> b!6652228 m!7418470))

(declare-fun m!7418472 () Bool)

(assert (=> bm!589363 m!7418472))

(declare-fun m!7418474 () Bool)

(assert (=> bm!589363 m!7418474))

(declare-fun m!7418476 () Bool)

(assert (=> bm!589363 m!7418476))

(declare-fun m!7418478 () Bool)

(assert (=> bm!589197 m!7418478))

(declare-fun m!7418480 () Bool)

(assert (=> bm!589273 m!7418480))

(declare-fun m!7418482 () Bool)

(assert (=> b!6652233 m!7418482))

(declare-fun m!7418484 () Bool)

(assert (=> bm!589262 m!7418484))

(assert (=> b!6652254 m!7418342))

(declare-fun m!7418486 () Bool)

(assert (=> b!6652224 m!7418486))

(declare-fun m!7418488 () Bool)

(assert (=> b!6652224 m!7418488))

(assert (=> b!6652224 m!7418342))

(declare-fun m!7418490 () Bool)

(assert (=> b!6652224 m!7418490))

(declare-fun m!7418492 () Bool)

(assert (=> b!6652224 m!7418492))

(declare-fun m!7418494 () Bool)

(assert (=> b!6652224 m!7418494))

(declare-fun m!7418496 () Bool)

(assert (=> b!6652224 m!7418496))

(declare-fun m!7418498 () Bool)

(assert (=> b!6652224 m!7418498))

(declare-fun m!7418500 () Bool)

(assert (=> b!6652224 m!7418500))

(declare-fun m!7418502 () Bool)

(assert (=> b!6652224 m!7418502))

(declare-fun m!7418504 () Bool)

(assert (=> b!6652224 m!7418504))

(declare-fun m!7418506 () Bool)

(assert (=> bm!589208 m!7418506))

(declare-fun m!7418508 () Bool)

(assert (=> bm!589353 m!7418508))

(declare-fun m!7418510 () Bool)

(assert (=> bm!589226 m!7418510))

(declare-fun m!7418512 () Bool)

(assert (=> bm!589317 m!7418512))

(declare-fun m!7418514 () Bool)

(assert (=> bm!589320 m!7418514))

(declare-fun m!7418516 () Bool)

(assert (=> bm!589316 m!7418516))

(declare-fun m!7418518 () Bool)

(assert (=> bm!589250 m!7418518))

(declare-fun m!7418520 () Bool)

(assert (=> bm!589371 m!7418520))

(assert (=> bm!589313 m!7418440))

(declare-fun m!7418522 () Bool)

(assert (=> bm!589259 m!7418522))

(declare-fun m!7418524 () Bool)

(assert (=> b!6652244 m!7418524))

(declare-fun m!7418526 () Bool)

(assert (=> bm!589357 m!7418526))

(declare-fun m!7418528 () Bool)

(assert (=> bm!589374 m!7418528))

(declare-fun m!7418530 () Bool)

(assert (=> bm!589199 m!7418530))

(declare-fun m!7418532 () Bool)

(assert (=> bm!589214 m!7418532))

(declare-fun m!7418534 () Bool)

(assert (=> b!6652222 m!7418534))

(declare-fun m!7418536 () Bool)

(assert (=> b!6652222 m!7418536))

(declare-fun m!7418538 () Bool)

(assert (=> b!6652222 m!7418538))

(declare-fun m!7418540 () Bool)

(assert (=> b!6652222 m!7418540))

(assert (=> b!6652222 m!7418472))

(declare-fun m!7418542 () Bool)

(assert (=> b!6652222 m!7418542))

(declare-fun m!7418544 () Bool)

(assert (=> b!6652222 m!7418544))

(declare-fun m!7418546 () Bool)

(assert (=> b!6652222 m!7418546))

(declare-fun m!7418548 () Bool)

(assert (=> bm!589171 m!7418548))

(declare-fun m!7418550 () Bool)

(assert (=> bm!589330 m!7418550))

(declare-fun m!7418552 () Bool)

(assert (=> bm!589230 m!7418552))

(declare-fun m!7418554 () Bool)

(assert (=> bm!589334 m!7418554))

(declare-fun m!7418556 () Bool)

(assert (=> b!6652207 m!7418556))

(declare-fun m!7418558 () Bool)

(assert (=> bm!589373 m!7418558))

(declare-fun m!7418560 () Bool)

(assert (=> bm!589229 m!7418560))

(assert (=> bm!589366 m!7418504))

(declare-fun m!7418562 () Bool)

(assert (=> bm!589351 m!7418562))

(declare-fun m!7418564 () Bool)

(assert (=> bm!589305 m!7418564))

(declare-fun m!7418566 () Bool)

(assert (=> bm!589237 m!7418566))

(declare-fun m!7418568 () Bool)

(assert (=> bm!589231 m!7418568))

(declare-fun m!7418570 () Bool)

(assert (=> bm!589263 m!7418570))

(declare-fun m!7418572 () Bool)

(assert (=> b!6652239 m!7418572))

(declare-fun m!7418574 () Bool)

(assert (=> b!6652239 m!7418574))

(declare-fun m!7418576 () Bool)

(assert (=> b!6652239 m!7418576))

(declare-fun m!7418578 () Bool)

(assert (=> b!6652239 m!7418578))

(declare-fun m!7418580 () Bool)

(assert (=> b!6652239 m!7418580))

(declare-fun m!7418582 () Bool)

(assert (=> b!6652239 m!7418582))

(declare-fun m!7418584 () Bool)

(assert (=> b!6652239 m!7418584))

(declare-fun m!7418586 () Bool)

(assert (=> bm!589248 m!7418586))

(declare-fun m!7418588 () Bool)

(assert (=> bm!589289 m!7418588))

(declare-fun m!7418590 () Bool)

(assert (=> bm!589180 m!7418590))

(declare-fun m!7418592 () Bool)

(assert (=> b!6652198 m!7418592))

(declare-fun m!7418594 () Bool)

(assert (=> bm!589332 m!7418594))

(check-sat (not b!6652220) (not bm!589282) (not bm!589305) (not bm!589264) (not bm!589330) (not b!6652194) (not bm!589237) (not setNonEmpty!45465) (not bm!589227) (not bm!589231) (not bm!589253) (not bm!589199) (not bm!589262) (not bm!589373) (not bm!589263) (not bm!589307) (not bm!589232) (not bm!589313) (not bm!589217) (not bm!589226) (not bm!589308) (not bm!589319) (not b!6652196) (not bm!589243) (not b!6652202) (not bm!589214) (not b!6652248) (not bm!589171) (not bm!589297) (not bm!589344) (not bm!589229) (not b!6652230) (not b!6652239) (not bm!589353) (not bm!589371) (not bm!589279) (not b!6652246) (not bm!589221) (not bm!589211) (not bm!589366) (not b!6652228) (not bm!589321) (not bm!589316) (not bm!589174) (not bm!589192) (not b!6652200) (not bm!589252) (not bm!589354) (not bm!589372) (not bm!589240) (not bm!589304) (not b!6652234) (not b!6652256) (not bm!589320) (not bm!589331) (not bm!589266) (not bm!589342) (not bm!589347) (not b!6652210) (not bm!589374) (not b!6652221) (not bm!589298) (not bm!589180) (not bm!589213) (not bm!589251) (not b!6652198) (not bm!589363) (not bm!589357) (not b!6652249) (not b!6652212) (not bm!589334) (not b!6652199) (not bm!589281) (not bm!589250) (not bm!589369) (not b!6652244) (not b!6652224) (not bm!589329) (not b!6652232) (not bm!589259) (not bm!589197) (not bm!589248) (not b!6652233) (not bm!589341) (not b!6652222) (not bm!589345) (not bm!589356) (not bm!589273) (not bm!589284) tp_is_empty!42283 (not bm!589236) (not start!649154) (not b!6652207) (not bm!589291) (not bm!589289) (not bm!589317) (not bm!589351) (not bm!589208) (not b!6652225) (not bm!589328) (not bm!589350) (not b!6652241) (not bm!589332) (not bm!589169) (not bm!589230))
(check-sat)
(get-model)

(declare-fun b!6652368 () Bool)

(declare-fun e!4022324 () Bool)

(declare-fun derivativeStep!5195 (Regex!16515 C!33300) Regex!16515)

(declare-fun head!13473 (List!65844) C!33300)

(declare-fun tail!12558 (List!65844) List!65844)

(assert (=> b!6652368 (= e!4022324 (matchR!8698 (derivativeStep!5195 (ite c!1227937 lt!2426011 (ite c!1227939 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2426072)) (ite c!1227934 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2425898)) (ite c!1227943 (ite c!1227941 (ite c!1227935 lt!2426058 (reg!16844 (regOne!33542 r!7292))) lt!2426028) (regOne!33542 r!7292))))) (head!13473 (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (ite c!1227935 s!2326 (_1!36797 lt!2426051)) lt!2425975) s!2326)))) (tail!12558 (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (ite c!1227935 s!2326 (_1!36797 lt!2426051)) lt!2425975) s!2326)))))))

(declare-fun b!6652369 () Bool)

(declare-fun e!4022326 () Bool)

(assert (=> b!6652369 (= e!4022326 (not (= (head!13473 (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (ite c!1227935 s!2326 (_1!36797 lt!2426051)) lt!2425975) s!2326))) (c!1227945 (ite c!1227937 lt!2426011 (ite c!1227939 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2426072)) (ite c!1227934 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2425898)) (ite c!1227943 (ite c!1227941 (ite c!1227935 lt!2426058 (reg!16844 (regOne!33542 r!7292))) lt!2426028) (regOne!33542 r!7292)))))))))))

(declare-fun b!6652370 () Bool)

(declare-fun e!4022323 () Bool)

(declare-fun lt!2426105 () Bool)

(assert (=> b!6652370 (= e!4022323 (not lt!2426105))))

(declare-fun b!6652371 () Bool)

(declare-fun e!4022328 () Bool)

(declare-fun call!589387 () Bool)

(assert (=> b!6652371 (= e!4022328 (= lt!2426105 call!589387))))

(declare-fun b!6652372 () Bool)

(assert (=> b!6652372 (= e!4022328 e!4022323)))

(declare-fun c!1227973 () Bool)

(assert (=> b!6652372 (= c!1227973 ((_ is EmptyLang!16515) (ite c!1227937 lt!2426011 (ite c!1227939 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2426072)) (ite c!1227934 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2425898)) (ite c!1227943 (ite c!1227941 (ite c!1227935 lt!2426058 (reg!16844 (regOne!33542 r!7292))) lt!2426028) (regOne!33542 r!7292)))))))))

(declare-fun d!2084583 () Bool)

(assert (=> d!2084583 e!4022328))

(declare-fun c!1227975 () Bool)

(assert (=> d!2084583 (= c!1227975 ((_ is EmptyExpr!16515) (ite c!1227937 lt!2426011 (ite c!1227939 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2426072)) (ite c!1227934 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2425898)) (ite c!1227943 (ite c!1227941 (ite c!1227935 lt!2426058 (reg!16844 (regOne!33542 r!7292))) lt!2426028) (regOne!33542 r!7292)))))))))

(assert (=> d!2084583 (= lt!2426105 e!4022324)))

(declare-fun c!1227974 () Bool)

(assert (=> d!2084583 (= c!1227974 (isEmpty!38032 (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (ite c!1227935 s!2326 (_1!36797 lt!2426051)) lt!2425975) s!2326))))))

(assert (=> d!2084583 (validRegex!8251 (ite c!1227937 lt!2426011 (ite c!1227939 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2426072)) (ite c!1227934 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2425898)) (ite c!1227943 (ite c!1227941 (ite c!1227935 lt!2426058 (reg!16844 (regOne!33542 r!7292))) lt!2426028) (regOne!33542 r!7292))))))))

(assert (=> d!2084583 (= (matchR!8698 (ite c!1227937 lt!2426011 (ite c!1227939 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2426072)) (ite c!1227934 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2425898)) (ite c!1227943 (ite c!1227941 (ite c!1227935 lt!2426058 (reg!16844 (regOne!33542 r!7292))) lt!2426028) (regOne!33542 r!7292))))) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (ite c!1227935 s!2326 (_1!36797 lt!2426051)) lt!2425975) s!2326))) lt!2426105)))

(declare-fun b!6652373 () Bool)

(declare-fun res!2726095 () Bool)

(declare-fun e!4022325 () Bool)

(assert (=> b!6652373 (=> res!2726095 e!4022325)))

(assert (=> b!6652373 (= res!2726095 (not ((_ is ElementMatch!16515) (ite c!1227937 lt!2426011 (ite c!1227939 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2426072)) (ite c!1227934 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2425898)) (ite c!1227943 (ite c!1227941 (ite c!1227935 lt!2426058 (reg!16844 (regOne!33542 r!7292))) lt!2426028) (regOne!33542 r!7292))))))))))

(assert (=> b!6652373 (= e!4022323 e!4022325)))

(declare-fun b!6652374 () Bool)

(assert (=> b!6652374 (= e!4022324 (nullable!6508 (ite c!1227937 lt!2426011 (ite c!1227939 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2426072)) (ite c!1227934 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2425898)) (ite c!1227943 (ite c!1227941 (ite c!1227935 lt!2426058 (reg!16844 (regOne!33542 r!7292))) lt!2426028) (regOne!33542 r!7292)))))))))

(declare-fun bm!589382 () Bool)

(assert (=> bm!589382 (= call!589387 (isEmpty!38032 (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (ite c!1227935 s!2326 (_1!36797 lt!2426051)) lt!2425975) s!2326))))))

(declare-fun b!6652375 () Bool)

(declare-fun res!2726094 () Bool)

(assert (=> b!6652375 (=> res!2726094 e!4022325)))

(declare-fun e!4022327 () Bool)

(assert (=> b!6652375 (= res!2726094 e!4022327)))

(declare-fun res!2726097 () Bool)

(assert (=> b!6652375 (=> (not res!2726097) (not e!4022327))))

(assert (=> b!6652375 (= res!2726097 lt!2426105)))

(declare-fun b!6652376 () Bool)

(declare-fun e!4022329 () Bool)

(assert (=> b!6652376 (= e!4022325 e!4022329)))

(declare-fun res!2726093 () Bool)

(assert (=> b!6652376 (=> (not res!2726093) (not e!4022329))))

(assert (=> b!6652376 (= res!2726093 (not lt!2426105))))

(declare-fun b!6652377 () Bool)

(assert (=> b!6652377 (= e!4022329 e!4022326)))

(declare-fun res!2726100 () Bool)

(assert (=> b!6652377 (=> res!2726100 e!4022326)))

(assert (=> b!6652377 (= res!2726100 call!589387)))

(declare-fun b!6652378 () Bool)

(declare-fun res!2726099 () Bool)

(assert (=> b!6652378 (=> (not res!2726099) (not e!4022327))))

(assert (=> b!6652378 (= res!2726099 (isEmpty!38032 (tail!12558 (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (ite c!1227935 s!2326 (_1!36797 lt!2426051)) lt!2425975) s!2326)))))))

(declare-fun b!6652379 () Bool)

(assert (=> b!6652379 (= e!4022327 (= (head!13473 (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (ite c!1227935 s!2326 (_1!36797 lt!2426051)) lt!2425975) s!2326))) (c!1227945 (ite c!1227937 lt!2426011 (ite c!1227939 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2426072)) (ite c!1227934 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (Concat!25360 (regTwo!33542 (regOne!33542 r!7292)) lt!2425898)) (ite c!1227943 (ite c!1227941 (ite c!1227935 lt!2426058 (reg!16844 (regOne!33542 r!7292))) lt!2426028) (regOne!33542 r!7292))))))))))

(declare-fun b!6652380 () Bool)

(declare-fun res!2726096 () Bool)

(assert (=> b!6652380 (=> (not res!2726096) (not e!4022327))))

(assert (=> b!6652380 (= res!2726096 (not call!589387))))

(declare-fun b!6652381 () Bool)

(declare-fun res!2726098 () Bool)

(assert (=> b!6652381 (=> res!2726098 e!4022326)))

(assert (=> b!6652381 (= res!2726098 (not (isEmpty!38032 (tail!12558 (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (ite c!1227935 s!2326 (_1!36797 lt!2426051)) lt!2425975) s!2326))))))))

(assert (= (and d!2084583 c!1227974) b!6652374))

(assert (= (and d!2084583 (not c!1227974)) b!6652368))

(assert (= (and d!2084583 c!1227975) b!6652371))

(assert (= (and d!2084583 (not c!1227975)) b!6652372))

(assert (= (and b!6652372 c!1227973) b!6652370))

(assert (= (and b!6652372 (not c!1227973)) b!6652373))

(assert (= (and b!6652373 (not res!2726095)) b!6652375))

(assert (= (and b!6652375 res!2726097) b!6652380))

(assert (= (and b!6652380 res!2726096) b!6652378))

(assert (= (and b!6652378 res!2726099) b!6652379))

(assert (= (and b!6652375 (not res!2726094)) b!6652376))

(assert (= (and b!6652376 res!2726093) b!6652377))

(assert (= (and b!6652377 (not res!2726100)) b!6652381))

(assert (= (and b!6652381 (not res!2726098)) b!6652369))

(assert (= (or b!6652371 b!6652377 b!6652380) bm!589382))

(declare-fun m!7418642 () Bool)

(assert (=> d!2084583 m!7418642))

(declare-fun m!7418644 () Bool)

(assert (=> d!2084583 m!7418644))

(declare-fun m!7418646 () Bool)

(assert (=> b!6652374 m!7418646))

(declare-fun m!7418648 () Bool)

(assert (=> b!6652368 m!7418648))

(assert (=> b!6652368 m!7418648))

(declare-fun m!7418650 () Bool)

(assert (=> b!6652368 m!7418650))

(declare-fun m!7418652 () Bool)

(assert (=> b!6652368 m!7418652))

(assert (=> b!6652368 m!7418650))

(assert (=> b!6652368 m!7418652))

(declare-fun m!7418654 () Bool)

(assert (=> b!6652368 m!7418654))

(assert (=> b!6652379 m!7418648))

(assert (=> b!6652381 m!7418652))

(assert (=> b!6652381 m!7418652))

(declare-fun m!7418656 () Bool)

(assert (=> b!6652381 m!7418656))

(assert (=> b!6652369 m!7418648))

(assert (=> b!6652378 m!7418652))

(assert (=> b!6652378 m!7418652))

(assert (=> b!6652378 m!7418656))

(assert (=> bm!589382 m!7418642))

(assert (=> bm!589374 d!2084583))

(declare-fun b!6652382 () Bool)

(declare-fun e!4022331 () Bool)

(assert (=> b!6652382 (= e!4022331 (matchR!8698 (derivativeStep!5195 (ite c!1227937 lt!2425903 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425950 (ite c!1227943 lt!2425941 (regTwo!33542 r!7292))))) (head!13473 (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 lt!2425940 lt!2425919) s!2326)))) (tail!12558 (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 lt!2425940 lt!2425919) s!2326)))))))

(declare-fun b!6652383 () Bool)

(declare-fun e!4022333 () Bool)

(assert (=> b!6652383 (= e!4022333 (not (= (head!13473 (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 lt!2425940 lt!2425919) s!2326))) (c!1227945 (ite c!1227937 lt!2425903 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425950 (ite c!1227943 lt!2425941 (regTwo!33542 r!7292)))))))))))

(declare-fun b!6652384 () Bool)

(declare-fun e!4022330 () Bool)

(declare-fun lt!2426106 () Bool)

(assert (=> b!6652384 (= e!4022330 (not lt!2426106))))

(declare-fun b!6652385 () Bool)

(declare-fun e!4022335 () Bool)

(declare-fun call!589388 () Bool)

(assert (=> b!6652385 (= e!4022335 (= lt!2426106 call!589388))))

(declare-fun b!6652386 () Bool)

(assert (=> b!6652386 (= e!4022335 e!4022330)))

(declare-fun c!1227976 () Bool)

(assert (=> b!6652386 (= c!1227976 ((_ is EmptyLang!16515) (ite c!1227937 lt!2425903 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425950 (ite c!1227943 lt!2425941 (regTwo!33542 r!7292)))))))))

(declare-fun d!2084587 () Bool)

(assert (=> d!2084587 e!4022335))

(declare-fun c!1227978 () Bool)

(assert (=> d!2084587 (= c!1227978 ((_ is EmptyExpr!16515) (ite c!1227937 lt!2425903 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425950 (ite c!1227943 lt!2425941 (regTwo!33542 r!7292)))))))))

(assert (=> d!2084587 (= lt!2426106 e!4022331)))

(declare-fun c!1227977 () Bool)

(assert (=> d!2084587 (= c!1227977 (isEmpty!38032 (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 lt!2425940 lt!2425919) s!2326))))))

(assert (=> d!2084587 (validRegex!8251 (ite c!1227937 lt!2425903 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425950 (ite c!1227943 lt!2425941 (regTwo!33542 r!7292))))))))

(assert (=> d!2084587 (= (matchR!8698 (ite c!1227937 lt!2425903 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425950 (ite c!1227943 lt!2425941 (regTwo!33542 r!7292))))) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 lt!2425940 lt!2425919) s!2326))) lt!2426106)))

(declare-fun b!6652387 () Bool)

(declare-fun res!2726103 () Bool)

(declare-fun e!4022332 () Bool)

(assert (=> b!6652387 (=> res!2726103 e!4022332)))

(assert (=> b!6652387 (= res!2726103 (not ((_ is ElementMatch!16515) (ite c!1227937 lt!2425903 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425950 (ite c!1227943 lt!2425941 (regTwo!33542 r!7292))))))))))

(assert (=> b!6652387 (= e!4022330 e!4022332)))

(declare-fun b!6652388 () Bool)

(assert (=> b!6652388 (= e!4022331 (nullable!6508 (ite c!1227937 lt!2425903 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425950 (ite c!1227943 lt!2425941 (regTwo!33542 r!7292)))))))))

(declare-fun bm!589383 () Bool)

(assert (=> bm!589383 (= call!589388 (isEmpty!38032 (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 lt!2425940 lt!2425919) s!2326))))))

(declare-fun b!6652389 () Bool)

(declare-fun res!2726102 () Bool)

(assert (=> b!6652389 (=> res!2726102 e!4022332)))

(declare-fun e!4022334 () Bool)

(assert (=> b!6652389 (= res!2726102 e!4022334)))

(declare-fun res!2726105 () Bool)

(assert (=> b!6652389 (=> (not res!2726105) (not e!4022334))))

(assert (=> b!6652389 (= res!2726105 lt!2426106)))

(declare-fun b!6652390 () Bool)

(declare-fun e!4022336 () Bool)

(assert (=> b!6652390 (= e!4022332 e!4022336)))

(declare-fun res!2726101 () Bool)

(assert (=> b!6652390 (=> (not res!2726101) (not e!4022336))))

(assert (=> b!6652390 (= res!2726101 (not lt!2426106))))

(declare-fun b!6652391 () Bool)

(assert (=> b!6652391 (= e!4022336 e!4022333)))

(declare-fun res!2726108 () Bool)

(assert (=> b!6652391 (=> res!2726108 e!4022333)))

(assert (=> b!6652391 (= res!2726108 call!589388)))

(declare-fun b!6652392 () Bool)

(declare-fun res!2726107 () Bool)

(assert (=> b!6652392 (=> (not res!2726107) (not e!4022334))))

(assert (=> b!6652392 (= res!2726107 (isEmpty!38032 (tail!12558 (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 lt!2425940 lt!2425919) s!2326)))))))

(declare-fun b!6652393 () Bool)

(assert (=> b!6652393 (= e!4022334 (= (head!13473 (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 lt!2425940 lt!2425919) s!2326))) (c!1227945 (ite c!1227937 lt!2425903 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425950 (ite c!1227943 lt!2425941 (regTwo!33542 r!7292))))))))))

(declare-fun b!6652394 () Bool)

(declare-fun res!2726104 () Bool)

(assert (=> b!6652394 (=> (not res!2726104) (not e!4022334))))

(assert (=> b!6652394 (= res!2726104 (not call!589388))))

(declare-fun b!6652395 () Bool)

(declare-fun res!2726106 () Bool)

(assert (=> b!6652395 (=> res!2726106 e!4022333)))

(assert (=> b!6652395 (= res!2726106 (not (isEmpty!38032 (tail!12558 (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 lt!2425940 lt!2425919) s!2326))))))))

(assert (= (and d!2084587 c!1227977) b!6652388))

(assert (= (and d!2084587 (not c!1227977)) b!6652382))

(assert (= (and d!2084587 c!1227978) b!6652385))

(assert (= (and d!2084587 (not c!1227978)) b!6652386))

(assert (= (and b!6652386 c!1227976) b!6652384))

(assert (= (and b!6652386 (not c!1227976)) b!6652387))

(assert (= (and b!6652387 (not res!2726103)) b!6652389))

(assert (= (and b!6652389 res!2726105) b!6652394))

(assert (= (and b!6652394 res!2726104) b!6652392))

(assert (= (and b!6652392 res!2726107) b!6652393))

(assert (= (and b!6652389 (not res!2726102)) b!6652390))

(assert (= (and b!6652390 res!2726101) b!6652391))

(assert (= (and b!6652391 (not res!2726108)) b!6652395))

(assert (= (and b!6652395 (not res!2726106)) b!6652383))

(assert (= (or b!6652385 b!6652391 b!6652394) bm!589383))

(declare-fun m!7418658 () Bool)

(assert (=> d!2084587 m!7418658))

(declare-fun m!7418660 () Bool)

(assert (=> d!2084587 m!7418660))

(declare-fun m!7418662 () Bool)

(assert (=> b!6652388 m!7418662))

(declare-fun m!7418664 () Bool)

(assert (=> b!6652382 m!7418664))

(assert (=> b!6652382 m!7418664))

(declare-fun m!7418666 () Bool)

(assert (=> b!6652382 m!7418666))

(declare-fun m!7418668 () Bool)

(assert (=> b!6652382 m!7418668))

(assert (=> b!6652382 m!7418666))

(assert (=> b!6652382 m!7418668))

(declare-fun m!7418670 () Bool)

(assert (=> b!6652382 m!7418670))

(assert (=> b!6652393 m!7418664))

(assert (=> b!6652395 m!7418668))

(assert (=> b!6652395 m!7418668))

(declare-fun m!7418672 () Bool)

(assert (=> b!6652395 m!7418672))

(assert (=> b!6652383 m!7418664))

(assert (=> b!6652392 m!7418668))

(assert (=> b!6652392 m!7418668))

(assert (=> b!6652392 m!7418672))

(assert (=> bm!589383 m!7418658))

(assert (=> bm!589342 d!2084587))

(declare-fun d!2084589 () Bool)

(declare-fun forall!15713 (List!65845 Int) Bool)

(assert (=> d!2084589 (forall!15713 (++!14673 lt!2426032 lt!2425993) (ite c!1227941 lambda!372752 lambda!372754))))

(declare-fun lt!2426111 () Unit!159541)

(declare-fun choose!49761 (List!65845 List!65845 Int) Unit!159541)

(assert (=> d!2084589 (= lt!2426111 (choose!49761 lt!2426032 lt!2425993 (ite c!1227941 lambda!372752 lambda!372754)))))

(assert (=> d!2084589 (forall!15713 lt!2426032 (ite c!1227941 lambda!372752 lambda!372754))))

(assert (=> d!2084589 (= (lemmaConcatPreservesForall!428 lt!2426032 lt!2425993 (ite c!1227941 lambda!372752 lambda!372754)) lt!2426111)))

(declare-fun bs!1712848 () Bool)

(assert (= bs!1712848 d!2084589))

(assert (=> bs!1712848 m!7418458))

(assert (=> bs!1712848 m!7418458))

(declare-fun m!7418674 () Bool)

(assert (=> bs!1712848 m!7418674))

(declare-fun m!7418676 () Bool)

(assert (=> bs!1712848 m!7418676))

(declare-fun m!7418678 () Bool)

(assert (=> bs!1712848 m!7418678))

(assert (=> bm!589313 d!2084589))

(declare-fun d!2084591 () Bool)

(assert (=> d!2084591 (= (matchR!8698 (Concat!25360 (Concat!25360 (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292))) (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) lt!2425900)) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (regTwo!33542 r!7292)))) s!2326) (matchR!8698 (Concat!25360 (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292))) (Concat!25360 (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) lt!2425900) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (regTwo!33542 r!7292))))) s!2326))))

(declare-fun lt!2426115 () Unit!159541)

(declare-fun choose!49762 (Regex!16515 Regex!16515 Regex!16515 List!65844) Unit!159541)

(assert (=> d!2084591 (= lt!2426115 (choose!49762 (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292))) (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) lt!2425900) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (regTwo!33542 r!7292))) s!2326))))

(declare-fun e!4022345 () Bool)

(assert (=> d!2084591 e!4022345))

(declare-fun res!2726119 () Bool)

(assert (=> d!2084591 (=> (not res!2726119) (not e!4022345))))

(assert (=> d!2084591 (= res!2726119 (validRegex!8251 (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292)))))))

(assert (=> d!2084591 (= (lemmaConcatAssociative!152 (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292))) (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) lt!2425900) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (regTwo!33542 r!7292))) s!2326) lt!2426115)))

(declare-fun b!6652412 () Bool)

(declare-fun res!2726120 () Bool)

(assert (=> b!6652412 (=> (not res!2726120) (not e!4022345))))

(assert (=> b!6652412 (= res!2726120 (validRegex!8251 (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) lt!2425900)))))

(declare-fun b!6652413 () Bool)

(assert (=> b!6652413 (= e!4022345 (validRegex!8251 (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (regTwo!33542 r!7292)))))))

(assert (= (and d!2084591 res!2726119) b!6652412))

(assert (= (and b!6652412 res!2726120) b!6652413))

(declare-fun m!7418696 () Bool)

(assert (=> d!2084591 m!7418696))

(declare-fun m!7418698 () Bool)

(assert (=> d!2084591 m!7418698))

(declare-fun m!7418700 () Bool)

(assert (=> d!2084591 m!7418700))

(declare-fun m!7418702 () Bool)

(assert (=> d!2084591 m!7418702))

(declare-fun m!7418704 () Bool)

(assert (=> b!6652412 m!7418704))

(declare-fun m!7418706 () Bool)

(assert (=> b!6652413 m!7418706))

(assert (=> bm!589248 d!2084591))

(assert (=> bm!589236 d!2084589))

(declare-fun d!2084597 () Bool)

(declare-fun c!1227988 () Bool)

(assert (=> d!2084597 (= c!1227988 (isEmpty!38032 (ite c!1227937 s!2326 (ite c!1227939 (t!379513 s!2326) (ite c!1227943 (ite c!1227941 lt!2426090 (ite c!1227938 lt!2425975 s!2326)) (t!379513 s!2326))))))))

(declare-fun e!4022362 () Bool)

(assert (=> d!2084597 (= (matchZipper!2527 (ite c!1227937 z!1189 (ite c!1227939 ((_ map or) lt!2426083 lt!2425989) (ite c!1227943 (ite c!1227941 (store ((as const (Array Context!11798 Bool)) false) (Context!11799 call!589182) true) (ite c!1227938 (store ((as const (Array Context!11798 Bool)) false) (Context!11799 lt!2425944) true) lt!2425981)) ((_ map or) lt!2426042 lt!2425952)))) (ite c!1227937 s!2326 (ite c!1227939 (t!379513 s!2326) (ite c!1227943 (ite c!1227941 lt!2426090 (ite c!1227938 lt!2425975 s!2326)) (t!379513 s!2326))))) e!4022362)))

(declare-fun b!6652436 () Bool)

(declare-fun nullableZipper!2255 ((InoxSet Context!11798)) Bool)

(assert (=> b!6652436 (= e!4022362 (nullableZipper!2255 (ite c!1227937 z!1189 (ite c!1227939 ((_ map or) lt!2426083 lt!2425989) (ite c!1227943 (ite c!1227941 (store ((as const (Array Context!11798 Bool)) false) (Context!11799 call!589182) true) (ite c!1227938 (store ((as const (Array Context!11798 Bool)) false) (Context!11799 lt!2425944) true) lt!2425981)) ((_ map or) lt!2426042 lt!2425952))))))))

(declare-fun b!6652437 () Bool)

(assert (=> b!6652437 (= e!4022362 (matchZipper!2527 (derivationStepZipper!2481 (ite c!1227937 z!1189 (ite c!1227939 ((_ map or) lt!2426083 lt!2425989) (ite c!1227943 (ite c!1227941 (store ((as const (Array Context!11798 Bool)) false) (Context!11799 call!589182) true) (ite c!1227938 (store ((as const (Array Context!11798 Bool)) false) (Context!11799 lt!2425944) true) lt!2425981)) ((_ map or) lt!2426042 lt!2425952)))) (head!13473 (ite c!1227937 s!2326 (ite c!1227939 (t!379513 s!2326) (ite c!1227943 (ite c!1227941 lt!2426090 (ite c!1227938 lt!2425975 s!2326)) (t!379513 s!2326)))))) (tail!12558 (ite c!1227937 s!2326 (ite c!1227939 (t!379513 s!2326) (ite c!1227943 (ite c!1227941 lt!2426090 (ite c!1227938 lt!2425975 s!2326)) (t!379513 s!2326)))))))))

(assert (= (and d!2084597 c!1227988) b!6652436))

(assert (= (and d!2084597 (not c!1227988)) b!6652437))

(declare-fun m!7418708 () Bool)

(assert (=> d!2084597 m!7418708))

(declare-fun m!7418710 () Bool)

(assert (=> b!6652436 m!7418710))

(declare-fun m!7418712 () Bool)

(assert (=> b!6652437 m!7418712))

(assert (=> b!6652437 m!7418712))

(declare-fun m!7418714 () Bool)

(assert (=> b!6652437 m!7418714))

(declare-fun m!7418716 () Bool)

(assert (=> b!6652437 m!7418716))

(assert (=> b!6652437 m!7418714))

(assert (=> b!6652437 m!7418716))

(declare-fun m!7418718 () Bool)

(assert (=> b!6652437 m!7418718))

(assert (=> bm!589363 d!2084597))

(declare-fun bs!1712850 () Bool)

(declare-fun d!2084599 () Bool)

(assert (= bs!1712850 (and d!2084599 b!6652192)))

(declare-fun lambda!372768 () Int)

(assert (=> bs!1712850 (= lambda!372768 lambda!372752)))

(declare-fun bs!1712851 () Bool)

(assert (= bs!1712851 (and d!2084599 b!6652222)))

(assert (=> bs!1712851 (= lambda!372768 lambda!372754)))

(assert (=> d!2084599 (matchZipper!2527 (store ((as const (Array Context!11798 Bool)) false) (Context!11799 (++!14673 (exprs!6399 lt!2426056) (exprs!6399 lt!2425930))) true) (++!14672 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2426064)) (ite c!1227941 lt!2425940 (_2!36797 lt!2426064))))))

(declare-fun lt!2426121 () Unit!159541)

(assert (=> d!2084599 (= lt!2426121 (lemmaConcatPreservesForall!428 (exprs!6399 lt!2426056) (exprs!6399 lt!2425930) lambda!372768))))

(declare-fun lt!2426120 () Unit!159541)

(declare-fun choose!49763 (Context!11798 Context!11798 List!65844 List!65844) Unit!159541)

(assert (=> d!2084599 (= lt!2426120 (choose!49763 lt!2426056 lt!2425930 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2426064)) (ite c!1227941 lt!2425940 (_2!36797 lt!2426064))))))

(assert (=> d!2084599 (matchZipper!2527 (store ((as const (Array Context!11798 Bool)) false) lt!2426056 true) (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2426064)))))

(assert (=> d!2084599 (= (lemmaConcatenateContextMatchesConcatOfStrings!236 lt!2426056 lt!2425930 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2426064)) (ite c!1227941 lt!2425940 (_2!36797 lt!2426064))) lt!2426120)))

(declare-fun bs!1712852 () Bool)

(assert (= bs!1712852 d!2084599))

(declare-fun m!7418726 () Bool)

(assert (=> bs!1712852 m!7418726))

(declare-fun m!7418728 () Bool)

(assert (=> bs!1712852 m!7418728))

(declare-fun m!7418730 () Bool)

(assert (=> bs!1712852 m!7418730))

(declare-fun m!7418732 () Bool)

(assert (=> bs!1712852 m!7418732))

(declare-fun m!7418734 () Bool)

(assert (=> bs!1712852 m!7418734))

(declare-fun m!7418736 () Bool)

(assert (=> bs!1712852 m!7418736))

(assert (=> bs!1712852 m!7418386))

(assert (=> bs!1712852 m!7418386))

(declare-fun m!7418738 () Bool)

(assert (=> bs!1712852 m!7418738))

(assert (=> bs!1712852 m!7418734))

(assert (=> bs!1712852 m!7418732))

(assert (=> bm!589345 d!2084599))

(declare-fun d!2084603 () Bool)

(assert (=> d!2084603 (matchR!8698 (Concat!25360 (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2425900) (ite c!1227941 lt!2425941 (regTwo!33542 r!7292))) (++!14672 (ite c!1227941 (_1!36797 lt!2426051) lt!2425892) (ite c!1227941 lt!2425940 (_2!36797 lt!2425939))))))

(declare-fun lt!2426128 () Unit!159541)

(declare-fun choose!49765 (Regex!16515 Regex!16515 List!65844 List!65844) Unit!159541)

(assert (=> d!2084603 (= lt!2426128 (choose!49765 (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2425900) (ite c!1227941 lt!2425941 (regTwo!33542 r!7292)) (ite c!1227941 (_1!36797 lt!2426051) lt!2425892) (ite c!1227941 lt!2425940 (_2!36797 lt!2425939))))))

(declare-fun e!4022372 () Bool)

(assert (=> d!2084603 e!4022372))

(declare-fun res!2726138 () Bool)

(assert (=> d!2084603 (=> (not res!2726138) (not e!4022372))))

(assert (=> d!2084603 (= res!2726138 (validRegex!8251 (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2425900)))))

(assert (=> d!2084603 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!376 (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2425900) (ite c!1227941 lt!2425941 (regTwo!33542 r!7292)) (ite c!1227941 (_1!36797 lt!2426051) lt!2425892) (ite c!1227941 lt!2425940 (_2!36797 lt!2425939))) lt!2426128)))

(declare-fun b!6652449 () Bool)

(assert (=> b!6652449 (= e!4022372 (validRegex!8251 (ite c!1227941 lt!2425941 (regTwo!33542 r!7292))))))

(assert (= (and d!2084603 res!2726138) b!6652449))

(declare-fun m!7418740 () Bool)

(assert (=> d!2084603 m!7418740))

(assert (=> d!2084603 m!7418740))

(declare-fun m!7418742 () Bool)

(assert (=> d!2084603 m!7418742))

(declare-fun m!7418744 () Bool)

(assert (=> d!2084603 m!7418744))

(declare-fun m!7418746 () Bool)

(assert (=> d!2084603 m!7418746))

(declare-fun m!7418748 () Bool)

(assert (=> b!6652449 m!7418748))

(assert (=> bm!589316 d!2084603))

(declare-fun b!6652514 () Bool)

(declare-fun e!4022417 () Int)

(declare-fun e!4022420 () Int)

(assert (=> b!6652514 (= e!4022417 e!4022420)))

(declare-fun c!1228019 () Bool)

(assert (=> b!6652514 (= c!1228019 ((_ is Star!16515) r!7292))))

(declare-fun b!6652515 () Bool)

(declare-fun e!4022415 () Bool)

(declare-fun e!4022416 () Bool)

(assert (=> b!6652515 (= e!4022415 e!4022416)))

(declare-fun c!1228022 () Bool)

(assert (=> b!6652515 (= c!1228022 ((_ is Union!16515) r!7292))))

(declare-fun b!6652516 () Bool)

(declare-fun call!589416 () Int)

(assert (=> b!6652516 (= e!4022420 (+ 1 call!589416))))

(declare-fun b!6652517 () Bool)

(declare-fun e!4022418 () Int)

(declare-fun e!4022413 () Int)

(assert (=> b!6652517 (= e!4022418 e!4022413)))

(declare-fun c!1228021 () Bool)

(assert (=> b!6652517 (= c!1228021 ((_ is Concat!25360) r!7292))))

(declare-fun b!6652518 () Bool)

(declare-fun e!4022412 () Bool)

(declare-fun lt!2426136 () Int)

(declare-fun call!589412 () Int)

(assert (=> b!6652518 (= e!4022412 (> lt!2426136 call!589412))))

(declare-fun b!6652519 () Bool)

(declare-fun call!589413 () Int)

(assert (=> b!6652519 (= e!4022413 (+ 1 call!589413))))

(declare-fun b!6652520 () Bool)

(assert (=> b!6652520 (= e!4022418 (+ 1 call!589413))))

(declare-fun b!6652521 () Bool)

(declare-fun e!4022411 () Bool)

(declare-fun call!589414 () Int)

(assert (=> b!6652521 (= e!4022411 (> lt!2426136 call!589414))))

(declare-fun bm!589407 () Bool)

(declare-fun call!589415 () Int)

(assert (=> bm!589407 (= call!589415 call!589416)))

(declare-fun bm!589408 () Bool)

(declare-fun call!589417 () Int)

(declare-fun c!1228020 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!589408 (= call!589413 (maxBigInt!0 (ite c!1228020 call!589417 call!589415) (ite c!1228020 call!589415 call!589417)))))

(declare-fun bm!589409 () Bool)

(declare-fun call!589418 () Int)

(declare-fun c!1228018 () Bool)

(assert (=> bm!589409 (= call!589418 (regexDepth!378 (ite c!1228022 (regOne!33543 r!7292) (ite c!1228018 (regOne!33542 r!7292) (reg!16844 r!7292)))))))

(declare-fun b!6652523 () Bool)

(assert (=> b!6652523 (= e!4022413 1)))

(declare-fun bm!589410 () Bool)

(assert (=> bm!589410 (= call!589416 (regexDepth!378 (ite c!1228019 (reg!16844 r!7292) (ite c!1228020 (regTwo!33543 r!7292) (regOne!33542 r!7292)))))))

(declare-fun bm!589411 () Bool)

(assert (=> bm!589411 (= call!589412 call!589418)))

(declare-fun b!6652524 () Bool)

(declare-fun e!4022419 () Bool)

(assert (=> b!6652524 (= e!4022419 (> lt!2426136 call!589414))))

(declare-fun b!6652525 () Bool)

(declare-fun e!4022414 () Bool)

(assert (=> b!6652525 (= e!4022416 e!4022414)))

(assert (=> b!6652525 (= c!1228018 ((_ is Concat!25360) r!7292))))

(declare-fun b!6652526 () Bool)

(assert (=> b!6652526 (= e!4022412 (= lt!2426136 1))))

(declare-fun b!6652527 () Bool)

(declare-fun c!1228017 () Bool)

(assert (=> b!6652527 (= c!1228017 ((_ is Star!16515) r!7292))))

(assert (=> b!6652527 (= e!4022414 e!4022412)))

(declare-fun b!6652528 () Bool)

(assert (=> b!6652528 (= c!1228020 ((_ is Union!16515) r!7292))))

(assert (=> b!6652528 (= e!4022420 e!4022418)))

(declare-fun bm!589412 () Bool)

(assert (=> bm!589412 (= call!589414 (regexDepth!378 (ite c!1228022 (regTwo!33543 r!7292) (regTwo!33542 r!7292))))))

(declare-fun bm!589413 () Bool)

(assert (=> bm!589413 (= call!589417 (regexDepth!378 (ite c!1228020 (regOne!33543 r!7292) (regTwo!33542 r!7292))))))

(declare-fun b!6652529 () Bool)

(assert (=> b!6652529 (= e!4022417 1)))

(declare-fun b!6652530 () Bool)

(declare-fun res!2726151 () Bool)

(assert (=> b!6652530 (=> (not res!2726151) (not e!4022419))))

(assert (=> b!6652530 (= res!2726151 (> lt!2426136 call!589412))))

(assert (=> b!6652530 (= e!4022414 e!4022419)))

(declare-fun b!6652522 () Bool)

(assert (=> b!6652522 (= e!4022416 e!4022411)))

(declare-fun res!2726153 () Bool)

(assert (=> b!6652522 (= res!2726153 (> lt!2426136 call!589418))))

(assert (=> b!6652522 (=> (not res!2726153) (not e!4022411))))

(declare-fun d!2084605 () Bool)

(assert (=> d!2084605 e!4022415))

(declare-fun res!2726152 () Bool)

(assert (=> d!2084605 (=> (not res!2726152) (not e!4022415))))

(assert (=> d!2084605 (= res!2726152 (> lt!2426136 0))))

(assert (=> d!2084605 (= lt!2426136 e!4022417)))

(declare-fun c!1228023 () Bool)

(assert (=> d!2084605 (= c!1228023 ((_ is ElementMatch!16515) r!7292))))

(assert (=> d!2084605 (= (regexDepth!378 r!7292) lt!2426136)))

(assert (= (and d!2084605 c!1228023) b!6652529))

(assert (= (and d!2084605 (not c!1228023)) b!6652514))

(assert (= (and b!6652514 c!1228019) b!6652516))

(assert (= (and b!6652514 (not c!1228019)) b!6652528))

(assert (= (and b!6652528 c!1228020) b!6652520))

(assert (= (and b!6652528 (not c!1228020)) b!6652517))

(assert (= (and b!6652517 c!1228021) b!6652519))

(assert (= (and b!6652517 (not c!1228021)) b!6652523))

(assert (= (or b!6652520 b!6652519) bm!589407))

(assert (= (or b!6652520 b!6652519) bm!589413))

(assert (= (or b!6652520 b!6652519) bm!589408))

(assert (= (or b!6652516 bm!589407) bm!589410))

(assert (= (and d!2084605 res!2726152) b!6652515))

(assert (= (and b!6652515 c!1228022) b!6652522))

(assert (= (and b!6652515 (not c!1228022)) b!6652525))

(assert (= (and b!6652522 res!2726153) b!6652521))

(assert (= (and b!6652525 c!1228018) b!6652530))

(assert (= (and b!6652525 (not c!1228018)) b!6652527))

(assert (= (and b!6652530 res!2726151) b!6652524))

(assert (= (and b!6652527 c!1228017) b!6652518))

(assert (= (and b!6652527 (not c!1228017)) b!6652526))

(assert (= (or b!6652530 b!6652518) bm!589411))

(assert (= (or b!6652521 b!6652524) bm!589412))

(assert (= (or b!6652522 bm!589411) bm!589409))

(declare-fun m!7418784 () Bool)

(assert (=> bm!589409 m!7418784))

(declare-fun m!7418786 () Bool)

(assert (=> bm!589408 m!7418786))

(declare-fun m!7418788 () Bool)

(assert (=> bm!589413 m!7418788))

(declare-fun m!7418790 () Bool)

(assert (=> bm!589412 m!7418790))

(declare-fun m!7418792 () Bool)

(assert (=> bm!589410 m!7418792))

(assert (=> b!6652220 d!2084605))

(declare-fun b!6652531 () Bool)

(declare-fun e!4022427 () Int)

(declare-fun e!4022430 () Int)

(assert (=> b!6652531 (= e!4022427 e!4022430)))

(declare-fun c!1228026 () Bool)

(assert (=> b!6652531 (= c!1228026 ((_ is Star!16515) lt!2425905))))

(declare-fun b!6652532 () Bool)

(declare-fun e!4022425 () Bool)

(declare-fun e!4022426 () Bool)

(assert (=> b!6652532 (= e!4022425 e!4022426)))

(declare-fun c!1228029 () Bool)

(assert (=> b!6652532 (= c!1228029 ((_ is Union!16515) lt!2425905))))

(declare-fun b!6652533 () Bool)

(declare-fun call!589423 () Int)

(assert (=> b!6652533 (= e!4022430 (+ 1 call!589423))))

(declare-fun b!6652534 () Bool)

(declare-fun e!4022428 () Int)

(declare-fun e!4022423 () Int)

(assert (=> b!6652534 (= e!4022428 e!4022423)))

(declare-fun c!1228028 () Bool)

(assert (=> b!6652534 (= c!1228028 ((_ is Concat!25360) lt!2425905))))

(declare-fun b!6652535 () Bool)

(declare-fun e!4022422 () Bool)

(declare-fun lt!2426137 () Int)

(declare-fun call!589419 () Int)

(assert (=> b!6652535 (= e!4022422 (> lt!2426137 call!589419))))

(declare-fun b!6652536 () Bool)

(declare-fun call!589420 () Int)

(assert (=> b!6652536 (= e!4022423 (+ 1 call!589420))))

(declare-fun b!6652537 () Bool)

(assert (=> b!6652537 (= e!4022428 (+ 1 call!589420))))

(declare-fun b!6652538 () Bool)

(declare-fun e!4022421 () Bool)

(declare-fun call!589421 () Int)

(assert (=> b!6652538 (= e!4022421 (> lt!2426137 call!589421))))

(declare-fun bm!589414 () Bool)

(declare-fun call!589422 () Int)

(assert (=> bm!589414 (= call!589422 call!589423)))

(declare-fun bm!589415 () Bool)

(declare-fun c!1228027 () Bool)

(declare-fun call!589424 () Int)

(assert (=> bm!589415 (= call!589420 (maxBigInt!0 (ite c!1228027 call!589424 call!589422) (ite c!1228027 call!589422 call!589424)))))

(declare-fun c!1228025 () Bool)

(declare-fun bm!589416 () Bool)

(declare-fun call!589425 () Int)

(assert (=> bm!589416 (= call!589425 (regexDepth!378 (ite c!1228029 (regOne!33543 lt!2425905) (ite c!1228025 (regOne!33542 lt!2425905) (reg!16844 lt!2425905)))))))

(declare-fun b!6652540 () Bool)

(assert (=> b!6652540 (= e!4022423 1)))

(declare-fun bm!589417 () Bool)

(assert (=> bm!589417 (= call!589423 (regexDepth!378 (ite c!1228026 (reg!16844 lt!2425905) (ite c!1228027 (regTwo!33543 lt!2425905) (regOne!33542 lt!2425905)))))))

(declare-fun bm!589418 () Bool)

(assert (=> bm!589418 (= call!589419 call!589425)))

(declare-fun b!6652541 () Bool)

(declare-fun e!4022429 () Bool)

(assert (=> b!6652541 (= e!4022429 (> lt!2426137 call!589421))))

(declare-fun b!6652542 () Bool)

(declare-fun e!4022424 () Bool)

(assert (=> b!6652542 (= e!4022426 e!4022424)))

(assert (=> b!6652542 (= c!1228025 ((_ is Concat!25360) lt!2425905))))

(declare-fun b!6652543 () Bool)

(assert (=> b!6652543 (= e!4022422 (= lt!2426137 1))))

(declare-fun b!6652544 () Bool)

(declare-fun c!1228024 () Bool)

(assert (=> b!6652544 (= c!1228024 ((_ is Star!16515) lt!2425905))))

(assert (=> b!6652544 (= e!4022424 e!4022422)))

(declare-fun b!6652545 () Bool)

(assert (=> b!6652545 (= c!1228027 ((_ is Union!16515) lt!2425905))))

(assert (=> b!6652545 (= e!4022430 e!4022428)))

(declare-fun bm!589419 () Bool)

(assert (=> bm!589419 (= call!589421 (regexDepth!378 (ite c!1228029 (regTwo!33543 lt!2425905) (regTwo!33542 lt!2425905))))))

(declare-fun bm!589420 () Bool)

(assert (=> bm!589420 (= call!589424 (regexDepth!378 (ite c!1228027 (regOne!33543 lt!2425905) (regTwo!33542 lt!2425905))))))

(declare-fun b!6652546 () Bool)

(assert (=> b!6652546 (= e!4022427 1)))

(declare-fun b!6652547 () Bool)

(declare-fun res!2726154 () Bool)

(assert (=> b!6652547 (=> (not res!2726154) (not e!4022429))))

(assert (=> b!6652547 (= res!2726154 (> lt!2426137 call!589419))))

(assert (=> b!6652547 (= e!4022424 e!4022429)))

(declare-fun b!6652539 () Bool)

(assert (=> b!6652539 (= e!4022426 e!4022421)))

(declare-fun res!2726156 () Bool)

(assert (=> b!6652539 (= res!2726156 (> lt!2426137 call!589425))))

(assert (=> b!6652539 (=> (not res!2726156) (not e!4022421))))

(declare-fun d!2084611 () Bool)

(assert (=> d!2084611 e!4022425))

(declare-fun res!2726155 () Bool)

(assert (=> d!2084611 (=> (not res!2726155) (not e!4022425))))

(assert (=> d!2084611 (= res!2726155 (> lt!2426137 0))))

(assert (=> d!2084611 (= lt!2426137 e!4022427)))

(declare-fun c!1228030 () Bool)

(assert (=> d!2084611 (= c!1228030 ((_ is ElementMatch!16515) lt!2425905))))

(assert (=> d!2084611 (= (regexDepth!378 lt!2425905) lt!2426137)))

(assert (= (and d!2084611 c!1228030) b!6652546))

(assert (= (and d!2084611 (not c!1228030)) b!6652531))

(assert (= (and b!6652531 c!1228026) b!6652533))

(assert (= (and b!6652531 (not c!1228026)) b!6652545))

(assert (= (and b!6652545 c!1228027) b!6652537))

(assert (= (and b!6652545 (not c!1228027)) b!6652534))

(assert (= (and b!6652534 c!1228028) b!6652536))

(assert (= (and b!6652534 (not c!1228028)) b!6652540))

(assert (= (or b!6652537 b!6652536) bm!589414))

(assert (= (or b!6652537 b!6652536) bm!589420))

(assert (= (or b!6652537 b!6652536) bm!589415))

(assert (= (or b!6652533 bm!589414) bm!589417))

(assert (= (and d!2084611 res!2726155) b!6652532))

(assert (= (and b!6652532 c!1228029) b!6652539))

(assert (= (and b!6652532 (not c!1228029)) b!6652542))

(assert (= (and b!6652539 res!2726156) b!6652538))

(assert (= (and b!6652542 c!1228025) b!6652547))

(assert (= (and b!6652542 (not c!1228025)) b!6652544))

(assert (= (and b!6652547 res!2726154) b!6652541))

(assert (= (and b!6652544 c!1228024) b!6652535))

(assert (= (and b!6652544 (not c!1228024)) b!6652543))

(assert (= (or b!6652547 b!6652535) bm!589418))

(assert (= (or b!6652538 b!6652541) bm!589419))

(assert (= (or b!6652539 bm!589418) bm!589416))

(declare-fun m!7418794 () Bool)

(assert (=> bm!589416 m!7418794))

(declare-fun m!7418796 () Bool)

(assert (=> bm!589415 m!7418796))

(declare-fun m!7418798 () Bool)

(assert (=> bm!589420 m!7418798))

(declare-fun m!7418800 () Bool)

(assert (=> bm!589419 m!7418800))

(declare-fun m!7418802 () Bool)

(assert (=> bm!589417 m!7418802))

(assert (=> b!6652220 d!2084611))

(declare-fun bs!1712868 () Bool)

(declare-fun d!2084613 () Bool)

(assert (= bs!1712868 (and d!2084613 b!6652192)))

(declare-fun lambda!372780 () Int)

(assert (=> bs!1712868 (= lambda!372780 lambda!372752)))

(declare-fun bs!1712869 () Bool)

(assert (= bs!1712869 (and d!2084613 b!6652222)))

(assert (=> bs!1712869 (= lambda!372780 lambda!372754)))

(declare-fun bs!1712870 () Bool)

(assert (= bs!1712870 (and d!2084613 d!2084599)))

(assert (=> bs!1712870 (= lambda!372780 lambda!372768)))

(declare-fun b!6652574 () Bool)

(declare-fun e!4022446 () Regex!16515)

(assert (=> b!6652574 (= e!4022446 EmptyExpr!16515)))

(declare-fun b!6652575 () Bool)

(declare-fun e!4022450 () Bool)

(assert (=> b!6652575 (= e!4022450 (isEmpty!38034 (t!379514 (t!379514 (exprs!6399 (h!72170 zl!343))))))))

(declare-fun b!6652576 () Bool)

(declare-fun e!4022451 () Bool)

(declare-fun e!4022448 () Bool)

(assert (=> b!6652576 (= e!4022451 e!4022448)))

(declare-fun c!1228045 () Bool)

(declare-fun tail!12559 (List!65845) List!65845)

(assert (=> b!6652576 (= c!1228045 (isEmpty!38034 (tail!12559 (t!379514 (exprs!6399 (h!72170 zl!343))))))))

(declare-fun b!6652577 () Bool)

(declare-fun lt!2426146 () Regex!16515)

(declare-fun head!13474 (List!65845) Regex!16515)

(assert (=> b!6652577 (= e!4022448 (= lt!2426146 (head!13474 (t!379514 (exprs!6399 (h!72170 zl!343))))))))

(declare-fun b!6652578 () Bool)

(declare-fun e!4022447 () Regex!16515)

(assert (=> b!6652578 (= e!4022447 (h!72169 (t!379514 (exprs!6399 (h!72170 zl!343)))))))

(declare-fun b!6652579 () Bool)

(assert (=> b!6652579 (= e!4022447 e!4022446)))

(declare-fun c!1228042 () Bool)

(assert (=> b!6652579 (= c!1228042 ((_ is Cons!65721) (t!379514 (exprs!6399 (h!72170 zl!343)))))))

(declare-fun b!6652580 () Bool)

(assert (=> b!6652580 (= e!4022446 (Concat!25360 (h!72169 (t!379514 (exprs!6399 (h!72170 zl!343)))) (generalisedConcat!2112 (t!379514 (t!379514 (exprs!6399 (h!72170 zl!343)))))))))

(declare-fun b!6652581 () Bool)

(declare-fun e!4022449 () Bool)

(assert (=> b!6652581 (= e!4022449 e!4022451)))

(declare-fun c!1228043 () Bool)

(assert (=> b!6652581 (= c!1228043 (isEmpty!38034 (t!379514 (exprs!6399 (h!72170 zl!343)))))))

(declare-fun b!6652582 () Bool)

(declare-fun isConcat!1412 (Regex!16515) Bool)

(assert (=> b!6652582 (= e!4022448 (isConcat!1412 lt!2426146))))

(assert (=> d!2084613 e!4022449))

(declare-fun res!2726161 () Bool)

(assert (=> d!2084613 (=> (not res!2726161) (not e!4022449))))

(assert (=> d!2084613 (= res!2726161 (validRegex!8251 lt!2426146))))

(assert (=> d!2084613 (= lt!2426146 e!4022447)))

(declare-fun c!1228044 () Bool)

(assert (=> d!2084613 (= c!1228044 e!4022450)))

(declare-fun res!2726162 () Bool)

(assert (=> d!2084613 (=> (not res!2726162) (not e!4022450))))

(assert (=> d!2084613 (= res!2726162 ((_ is Cons!65721) (t!379514 (exprs!6399 (h!72170 zl!343)))))))

(assert (=> d!2084613 (forall!15713 (t!379514 (exprs!6399 (h!72170 zl!343))) lambda!372780)))

(assert (=> d!2084613 (= (generalisedConcat!2112 (t!379514 (exprs!6399 (h!72170 zl!343)))) lt!2426146)))

(declare-fun b!6652583 () Bool)

(declare-fun isEmptyExpr!1889 (Regex!16515) Bool)

(assert (=> b!6652583 (= e!4022451 (isEmptyExpr!1889 lt!2426146))))

(assert (= (and d!2084613 res!2726162) b!6652575))

(assert (= (and d!2084613 c!1228044) b!6652578))

(assert (= (and d!2084613 (not c!1228044)) b!6652579))

(assert (= (and b!6652579 c!1228042) b!6652580))

(assert (= (and b!6652579 (not c!1228042)) b!6652574))

(assert (= (and d!2084613 res!2726161) b!6652581))

(assert (= (and b!6652581 c!1228043) b!6652583))

(assert (= (and b!6652581 (not c!1228043)) b!6652576))

(assert (= (and b!6652576 c!1228045) b!6652577))

(assert (= (and b!6652576 (not c!1228045)) b!6652582))

(declare-fun m!7418818 () Bool)

(assert (=> d!2084613 m!7418818))

(declare-fun m!7418820 () Bool)

(assert (=> d!2084613 m!7418820))

(declare-fun m!7418822 () Bool)

(assert (=> b!6652583 m!7418822))

(declare-fun m!7418824 () Bool)

(assert (=> b!6652577 m!7418824))

(declare-fun m!7418826 () Bool)

(assert (=> b!6652580 m!7418826))

(assert (=> b!6652581 m!7418524))

(declare-fun m!7418828 () Bool)

(assert (=> b!6652575 m!7418828))

(declare-fun m!7418830 () Bool)

(assert (=> b!6652582 m!7418830))

(declare-fun m!7418832 () Bool)

(assert (=> b!6652576 m!7418832))

(assert (=> b!6652576 m!7418832))

(declare-fun m!7418834 () Bool)

(assert (=> b!6652576 m!7418834))

(assert (=> b!6652220 d!2084613))

(declare-fun bs!1712871 () Bool)

(declare-fun d!2084621 () Bool)

(assert (= bs!1712871 (and d!2084621 b!6652222)))

(declare-fun lambda!372789 () Int)

(assert (=> bs!1712871 (not (= lambda!372789 lambda!372758))))

(declare-fun bs!1712873 () Bool)

(assert (= bs!1712873 (and d!2084621 b!6652251)))

(assert (=> bs!1712873 (not (= lambda!372789 lambda!372744))))

(declare-fun bs!1712874 () Bool)

(assert (= bs!1712874 (and d!2084621 b!6652208)))

(assert (=> bs!1712874 (not (= lambda!372789 lambda!372761))))

(assert (=> bs!1712873 (not (= lambda!372789 lambda!372746))))

(assert (=> bs!1712873 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) s!2326) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) (regTwo!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) lt!2425898)) (= lambda!372789 lambda!372745))))

(assert (=> bs!1712871 (not (= lambda!372789 lambda!372756))))

(declare-fun bs!1712878 () Bool)

(assert (= bs!1712878 (and d!2084621 b!6652192)))

(assert (=> bs!1712878 (not (= lambda!372789 lambda!372751))))

(declare-fun bs!1712880 () Bool)

(assert (= bs!1712880 (and d!2084621 b!6652196)))

(assert (=> bs!1712880 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) s!2326) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) lt!2425900) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) (regTwo!33542 r!7292))) (= lambda!372789 lambda!372747))))

(declare-fun bs!1712882 () Bool)

(assert (= bs!1712882 (and d!2084621 b!6652250)))

(assert (=> bs!1712882 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) s!2326) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) (regOne!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) lt!2425943)) (= lambda!372789 lambda!372739))))

(assert (=> bs!1712871 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) (_1!36797 lt!2425939)) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) lt!2425900)) (= lambda!372789 lambda!372757))))

(assert (=> bs!1712878 (not (= lambda!372789 lambda!372750))))

(assert (=> bs!1712882 (not (= lambda!372789 lambda!372742))))

(assert (=> bs!1712873 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) s!2326) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) (regOne!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) lt!2425950)) (= lambda!372789 lambda!372743))))

(assert (=> bs!1712874 (not (= lambda!372789 lambda!372762))))

(assert (=> bs!1712874 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) Nil!65720) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) lt!2425900)) (= lambda!372789 lambda!372760))))

(declare-fun bs!1712884 () Bool)

(assert (= bs!1712884 (and d!2084621 b!6652194)))

(assert (=> bs!1712884 (not (= lambda!372789 lambda!372737))))

(assert (=> bs!1712880 (not (= lambda!372789 lambda!372748))))

(assert (=> bs!1712871 (not (= lambda!372789 lambda!372759))))

(assert (=> bs!1712882 (not (= lambda!372789 lambda!372740))))

(assert (=> bs!1712878 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) (_1!36797 lt!2425896)) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) lt!2425900)) (= lambda!372789 lambda!372749))))

(assert (=> bs!1712882 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) s!2326) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) (regTwo!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) lt!2426072)) (= lambda!372789 lambda!372741))))

(assert (=> bs!1712871 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) s!2326) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) lt!2426074) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) (regTwo!33542 r!7292))) (= lambda!372789 lambda!372755))))

(assert (=> bs!1712884 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) s!2326) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) (regOne!33542 r!7292)) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) (regTwo!33542 r!7292))) (= lambda!372789 lambda!372736))))

(assert (=> d!2084621 true))

(assert (=> d!2084621 true))

(assert (=> d!2084621 true))

(declare-fun bs!1712885 () Bool)

(assert (= bs!1712885 d!2084621))

(declare-fun lambda!372791 () Int)

(assert (=> bs!1712885 (not (= lambda!372791 lambda!372789))))

(assert (=> bs!1712871 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) (_1!36797 lt!2425939)) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) lt!2425900)) (= lambda!372791 lambda!372758))))

(assert (=> bs!1712873 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) s!2326) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) (regOne!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) lt!2425950)) (= lambda!372791 lambda!372744))))

(assert (=> bs!1712874 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) Nil!65720) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) lt!2425900)) (= lambda!372791 lambda!372761))))

(assert (=> bs!1712873 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) s!2326) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) (regTwo!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) lt!2425898)) (= lambda!372791 lambda!372746))))

(assert (=> bs!1712873 (not (= lambda!372791 lambda!372745))))

(assert (=> bs!1712871 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) s!2326) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) lt!2426074) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) (regTwo!33542 r!7292))) (= lambda!372791 lambda!372756))))

(assert (=> bs!1712878 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) (_1!36797 lt!2425896)) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) lt!2425900)) (= lambda!372791 lambda!372751))))

(assert (=> bs!1712880 (not (= lambda!372791 lambda!372747))))

(assert (=> bs!1712882 (not (= lambda!372791 lambda!372739))))

(assert (=> bs!1712871 (not (= lambda!372791 lambda!372757))))

(assert (=> bs!1712878 (not (= lambda!372791 lambda!372750))))

(assert (=> bs!1712882 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) s!2326) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) (regTwo!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) lt!2426072)) (= lambda!372791 lambda!372742))))

(assert (=> bs!1712873 (not (= lambda!372791 lambda!372743))))

(assert (=> bs!1712874 (not (= lambda!372791 lambda!372762))))

(assert (=> bs!1712874 (not (= lambda!372791 lambda!372760))))

(assert (=> bs!1712884 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) s!2326) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) (regOne!33542 r!7292)) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) (regTwo!33542 r!7292))) (= lambda!372791 lambda!372737))))

(assert (=> bs!1712880 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) s!2326) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) lt!2425900) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) (regTwo!33542 r!7292))) (= lambda!372791 lambda!372748))))

(assert (=> bs!1712871 (not (= lambda!372791 lambda!372759))))

(assert (=> bs!1712882 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720))) s!2326) (= (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) (regOne!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) lt!2425943)) (= lambda!372791 lambda!372740))))

(assert (=> bs!1712878 (not (= lambda!372791 lambda!372749))))

(assert (=> bs!1712882 (not (= lambda!372791 lambda!372741))))

(assert (=> bs!1712871 (not (= lambda!372791 lambda!372755))))

(assert (=> bs!1712884 (not (= lambda!372791 lambda!372736))))

(assert (=> d!2084621 true))

(assert (=> d!2084621 true))

(assert (=> d!2084621 true))

(assert (=> d!2084621 (= (Exists!3585 lambda!372789) (Exists!3585 lambda!372791))))

(declare-fun lt!2426149 () Unit!159541)

(declare-fun choose!49769 (Regex!16515 Regex!16515 List!65844) Unit!159541)

(assert (=> d!2084621 (= lt!2426149 (choose!49769 (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)))))))

(assert (=> d!2084621 (validRegex!8251 (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))))))

(assert (=> d!2084621 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2122 (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292)))))) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)))) lt!2426149)))

(declare-fun m!7418836 () Bool)

(assert (=> bs!1712885 m!7418836))

(declare-fun m!7418838 () Bool)

(assert (=> bs!1712885 m!7418838))

(declare-fun m!7418840 () Bool)

(assert (=> bs!1712885 m!7418840))

(declare-fun m!7418842 () Bool)

(assert (=> bs!1712885 m!7418842))

(assert (=> bm!589174 d!2084621))

(declare-fun d!2084623 () Bool)

(declare-fun e!4022483 () Bool)

(assert (=> d!2084623 e!4022483))

(declare-fun res!2726192 () Bool)

(assert (=> d!2084623 (=> (not res!2726192) (not e!4022483))))

(declare-fun lt!2426152 () List!65846)

(declare-fun noDuplicate!2316 (List!65846) Bool)

(assert (=> d!2084623 (= res!2726192 (noDuplicate!2316 lt!2426152))))

(declare-fun choose!49770 ((InoxSet Context!11798)) List!65846)

(assert (=> d!2084623 (= lt!2426152 (choose!49770 z!1189))))

(assert (=> d!2084623 (= (toList!10299 z!1189) lt!2426152)))

(declare-fun b!6652637 () Bool)

(declare-fun content!12716 (List!65846) (InoxSet Context!11798))

(assert (=> b!6652637 (= e!4022483 (= (content!12716 lt!2426152) z!1189))))

(assert (= (and d!2084623 res!2726192) b!6652637))

(declare-fun m!7418850 () Bool)

(assert (=> d!2084623 m!7418850))

(declare-fun m!7418852 () Bool)

(assert (=> d!2084623 m!7418852))

(declare-fun m!7418854 () Bool)

(assert (=> b!6652637 m!7418854))

(assert (=> b!6652233 d!2084623))

(declare-fun b!6652670 () Bool)

(declare-fun e!4022508 () Option!16406)

(declare-fun e!4022505 () Option!16406)

(assert (=> b!6652670 (= e!4022508 e!4022505)))

(declare-fun c!1228067 () Bool)

(assert (=> b!6652670 (= c!1228067 ((_ is Nil!65720) (ite (or c!1227939 c!1227934 c!1227941 c!1227938) s!2326 Nil!65720)))))

(declare-fun b!6652671 () Bool)

(declare-fun lt!2426167 () Unit!159541)

(declare-fun lt!2426169 () Unit!159541)

(assert (=> b!6652671 (= lt!2426167 lt!2426169)))

(assert (=> b!6652671 (= (++!14672 (++!14672 Nil!65720 (Cons!65720 (h!72168 (ite (or c!1227939 c!1227934 c!1227941 c!1227938) s!2326 Nil!65720)) Nil!65720)) (t!379513 (ite (or c!1227939 c!1227934 c!1227941 c!1227938) s!2326 Nil!65720))) (ite (or c!1227939 c!1227934 c!1227941 c!1227938) s!2326 Nil!65720))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2653 (List!65844 C!33300 List!65844 List!65844) Unit!159541)

(assert (=> b!6652671 (= lt!2426169 (lemmaMoveElementToOtherListKeepsConcatEq!2653 Nil!65720 (h!72168 (ite (or c!1227939 c!1227934 c!1227941 c!1227938) s!2326 Nil!65720)) (t!379513 (ite (or c!1227939 c!1227934 c!1227941 c!1227938) s!2326 Nil!65720)) (ite (or c!1227939 c!1227934 c!1227941 c!1227938) s!2326 Nil!65720)))))

(assert (=> b!6652671 (= e!4022505 (findConcatSeparation!2820 (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292))))) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite (or c!1227941 c!1227938) (regTwo!33542 r!7292) lt!2425900))) (++!14672 Nil!65720 (Cons!65720 (h!72168 (ite (or c!1227939 c!1227934 c!1227941 c!1227938) s!2326 Nil!65720)) Nil!65720)) (t!379513 (ite (or c!1227939 c!1227934 c!1227941 c!1227938) s!2326 Nil!65720)) (ite (or c!1227939 c!1227934 c!1227941 c!1227938) s!2326 Nil!65720)))))

(declare-fun b!6652672 () Bool)

(declare-fun res!2726211 () Bool)

(declare-fun e!4022504 () Bool)

(assert (=> b!6652672 (=> (not res!2726211) (not e!4022504))))

(declare-fun lt!2426168 () Option!16406)

(assert (=> b!6652672 (= res!2726211 (matchR!8698 (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite (or c!1227941 c!1227938) (regTwo!33542 r!7292) lt!2425900))) (_2!36797 (get!22854 lt!2426168))))))

(declare-fun b!6652673 () Bool)

(assert (=> b!6652673 (= e!4022508 (Some!16405 (tuple2!66989 Nil!65720 (ite (or c!1227939 c!1227934 c!1227941 c!1227938) s!2326 Nil!65720))))))

(declare-fun b!6652675 () Bool)

(assert (=> b!6652675 (= e!4022504 (= (++!14672 (_1!36797 (get!22854 lt!2426168)) (_2!36797 (get!22854 lt!2426168))) (ite (or c!1227939 c!1227934 c!1227941 c!1227938) s!2326 Nil!65720)))))

(declare-fun b!6652676 () Bool)

(declare-fun e!4022506 () Bool)

(assert (=> b!6652676 (= e!4022506 (matchR!8698 (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite (or c!1227941 c!1227938) (regTwo!33542 r!7292) lt!2425900))) (ite (or c!1227939 c!1227934 c!1227941 c!1227938) s!2326 Nil!65720)))))

(declare-fun b!6652677 () Bool)

(declare-fun res!2726213 () Bool)

(assert (=> b!6652677 (=> (not res!2726213) (not e!4022504))))

(assert (=> b!6652677 (= res!2726213 (matchR!8698 (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292))))) (_1!36797 (get!22854 lt!2426168))))))

(declare-fun b!6652678 () Bool)

(declare-fun e!4022507 () Bool)

(assert (=> b!6652678 (= e!4022507 (not (isDefined!13109 lt!2426168)))))

(declare-fun d!2084627 () Bool)

(assert (=> d!2084627 e!4022507))

(declare-fun res!2726209 () Bool)

(assert (=> d!2084627 (=> res!2726209 e!4022507)))

(assert (=> d!2084627 (= res!2726209 e!4022504)))

(declare-fun res!2726212 () Bool)

(assert (=> d!2084627 (=> (not res!2726212) (not e!4022504))))

(assert (=> d!2084627 (= res!2726212 (isDefined!13109 lt!2426168))))

(assert (=> d!2084627 (= lt!2426168 e!4022508)))

(declare-fun c!1228066 () Bool)

(assert (=> d!2084627 (= c!1228066 e!4022506)))

(declare-fun res!2726210 () Bool)

(assert (=> d!2084627 (=> (not res!2726210) (not e!4022506))))

(assert (=> d!2084627 (= res!2726210 (matchR!8698 (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292))))) Nil!65720))))

(assert (=> d!2084627 (validRegex!8251 (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292))))))))

(assert (=> d!2084627 (= (findConcatSeparation!2820 (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292))))) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite (or c!1227941 c!1227938) (regTwo!33542 r!7292) lt!2425900))) Nil!65720 (ite (or c!1227939 c!1227934 c!1227941 c!1227938) s!2326 Nil!65720) (ite (or c!1227939 c!1227934 c!1227941 c!1227938) s!2326 Nil!65720)) lt!2426168)))

(declare-fun b!6652674 () Bool)

(assert (=> b!6652674 (= e!4022505 None!16405)))

(assert (= (and d!2084627 res!2726210) b!6652676))

(assert (= (and d!2084627 c!1228066) b!6652673))

(assert (= (and d!2084627 (not c!1228066)) b!6652670))

(assert (= (and b!6652670 c!1228067) b!6652674))

(assert (= (and b!6652670 (not c!1228067)) b!6652671))

(assert (= (and d!2084627 res!2726212) b!6652677))

(assert (= (and b!6652677 res!2726213) b!6652672))

(assert (= (and b!6652672 res!2726211) b!6652675))

(assert (= (and d!2084627 (not res!2726209)) b!6652678))

(declare-fun m!7418896 () Bool)

(assert (=> b!6652676 m!7418896))

(declare-fun m!7418898 () Bool)

(assert (=> d!2084627 m!7418898))

(declare-fun m!7418900 () Bool)

(assert (=> d!2084627 m!7418900))

(declare-fun m!7418902 () Bool)

(assert (=> d!2084627 m!7418902))

(declare-fun m!7418904 () Bool)

(assert (=> b!6652675 m!7418904))

(declare-fun m!7418906 () Bool)

(assert (=> b!6652675 m!7418906))

(assert (=> b!6652672 m!7418904))

(declare-fun m!7418908 () Bool)

(assert (=> b!6652672 m!7418908))

(assert (=> b!6652678 m!7418898))

(declare-fun m!7418910 () Bool)

(assert (=> b!6652671 m!7418910))

(assert (=> b!6652671 m!7418910))

(declare-fun m!7418912 () Bool)

(assert (=> b!6652671 m!7418912))

(declare-fun m!7418914 () Bool)

(assert (=> b!6652671 m!7418914))

(assert (=> b!6652671 m!7418910))

(declare-fun m!7418916 () Bool)

(assert (=> b!6652671 m!7418916))

(assert (=> b!6652677 m!7418904))

(declare-fun m!7418918 () Bool)

(assert (=> b!6652677 m!7418918))

(assert (=> bm!589253 d!2084627))

(declare-fun d!2084639 () Bool)

(assert (=> d!2084639 (= (matchR!8698 (ite c!1227933 lt!2425959 (ite c!1227937 lt!2425903 (ite c!1227939 lt!2425988 (ite c!1227943 (reg!16844 (regOne!33542 r!7292)) lt!2426003)))) (ite c!1227933 (t!379513 s!2326) (ite (or c!1227937 c!1227939) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2426064)) s!2326)))) (matchZipper!2527 (ite c!1227933 lt!2425960 (ite c!1227937 lt!2425942 (ite c!1227939 lt!2425910 (ite c!1227943 lt!2425935 lt!2425917)))) (ite c!1227933 (t!379513 s!2326) (ite (or c!1227937 c!1227939) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2426064)) s!2326)))))))

(declare-fun lt!2426173 () Unit!159541)

(declare-fun choose!49771 ((InoxSet Context!11798) List!65846 Regex!16515 List!65844) Unit!159541)

(assert (=> d!2084639 (= lt!2426173 (choose!49771 (ite c!1227933 lt!2425960 (ite c!1227937 lt!2425942 (ite c!1227939 lt!2425910 (ite c!1227943 lt!2425935 lt!2425917)))) (ite c!1227933 (Cons!65722 lt!2425966 Nil!65722) (ite c!1227937 (Cons!65722 lt!2426071 Nil!65722) (ite c!1227939 (Cons!65722 lt!2425969 Nil!65722) (ite c!1227943 (Cons!65722 lt!2426056 Nil!65722) (Cons!65722 lt!2425966 Nil!65722))))) (ite c!1227933 lt!2425959 (ite c!1227937 lt!2425903 (ite c!1227939 lt!2425988 (ite c!1227943 (reg!16844 (regOne!33542 r!7292)) lt!2426003)))) (ite c!1227933 (t!379513 s!2326) (ite (or c!1227937 c!1227939) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2426064)) s!2326)))))))

(assert (=> d!2084639 (validRegex!8251 (ite c!1227933 lt!2425959 (ite c!1227937 lt!2425903 (ite c!1227939 lt!2425988 (ite c!1227943 (reg!16844 (regOne!33542 r!7292)) lt!2426003)))))))

(assert (=> d!2084639 (= (theoremZipperRegexEquiv!911 (ite c!1227933 lt!2425960 (ite c!1227937 lt!2425942 (ite c!1227939 lt!2425910 (ite c!1227943 lt!2425935 lt!2425917)))) (ite c!1227933 (Cons!65722 lt!2425966 Nil!65722) (ite c!1227937 (Cons!65722 lt!2426071 Nil!65722) (ite c!1227939 (Cons!65722 lt!2425969 Nil!65722) (ite c!1227943 (Cons!65722 lt!2426056 Nil!65722) (Cons!65722 lt!2425966 Nil!65722))))) (ite c!1227933 lt!2425959 (ite c!1227937 lt!2425903 (ite c!1227939 lt!2425988 (ite c!1227943 (reg!16844 (regOne!33542 r!7292)) lt!2426003)))) (ite c!1227933 (t!379513 s!2326) (ite (or c!1227937 c!1227939) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2426064)) s!2326)))) lt!2426173)))

(declare-fun bs!1712904 () Bool)

(assert (= bs!1712904 d!2084639))

(declare-fun m!7418930 () Bool)

(assert (=> bs!1712904 m!7418930))

(declare-fun m!7418932 () Bool)

(assert (=> bs!1712904 m!7418932))

(declare-fun m!7418934 () Bool)

(assert (=> bs!1712904 m!7418934))

(declare-fun m!7418936 () Bool)

(assert (=> bs!1712904 m!7418936))

(assert (=> bm!589240 d!2084639))

(declare-fun d!2084643 () Bool)

(declare-fun choose!49772 (Int) Bool)

(assert (=> d!2084643 (= (Exists!3585 (ite c!1227939 lambda!372741 (ite c!1227934 lambda!372743 (ite c!1227941 lambda!372749 lambda!372755)))) (choose!49772 (ite c!1227939 lambda!372741 (ite c!1227934 lambda!372743 (ite c!1227941 lambda!372749 lambda!372755)))))))

(declare-fun bs!1712905 () Bool)

(assert (= bs!1712905 d!2084643))

(declare-fun m!7418938 () Bool)

(assert (=> bs!1712905 m!7418938))

(assert (=> bm!589226 d!2084643))

(declare-fun d!2084645 () Bool)

(declare-fun dynLambda!26187 (Int Context!11798) (InoxSet Context!11798))

(assert (=> d!2084645 (= (flatMap!2020 (ite c!1227937 lt!2426013 (ite c!1227943 lt!2426050 lt!2425917)) (ite c!1227937 lambda!372738 (ite c!1227943 lambda!372738 lambda!372738))) (dynLambda!26187 (ite c!1227937 lambda!372738 (ite c!1227943 lambda!372738 lambda!372738)) (ite c!1227937 lt!2426001 (ite c!1227943 lt!2425930 lt!2425966))))))

(declare-fun lt!2426179 () Unit!159541)

(declare-fun choose!49773 ((InoxSet Context!11798) Context!11798 Int) Unit!159541)

(assert (=> d!2084645 (= lt!2426179 (choose!49773 (ite c!1227937 lt!2426013 (ite c!1227943 lt!2426050 lt!2425917)) (ite c!1227937 lt!2426001 (ite c!1227943 lt!2425930 lt!2425966)) (ite c!1227937 lambda!372738 (ite c!1227943 lambda!372738 lambda!372738))))))

(assert (=> d!2084645 (= (ite c!1227937 lt!2426013 (ite c!1227943 lt!2426050 lt!2425917)) (store ((as const (Array Context!11798 Bool)) false) (ite c!1227937 lt!2426001 (ite c!1227943 lt!2425930 lt!2425966)) true))))

(assert (=> d!2084645 (= (lemmaFlatMapOnSingletonSet!1546 (ite c!1227937 lt!2426013 (ite c!1227943 lt!2426050 lt!2425917)) (ite c!1227937 lt!2426001 (ite c!1227943 lt!2425930 lt!2425966)) (ite c!1227937 lambda!372738 (ite c!1227943 lambda!372738 lambda!372738))) lt!2426179)))

(declare-fun b_lambda!251181 () Bool)

(assert (=> (not b_lambda!251181) (not d!2084645)))

(declare-fun bs!1712907 () Bool)

(assert (= bs!1712907 d!2084645))

(declare-fun m!7418946 () Bool)

(assert (=> bs!1712907 m!7418946))

(declare-fun m!7418948 () Bool)

(assert (=> bs!1712907 m!7418948))

(declare-fun m!7418950 () Bool)

(assert (=> bs!1712907 m!7418950))

(declare-fun m!7418952 () Bool)

(assert (=> bs!1712907 m!7418952))

(assert (=> bm!589334 d!2084645))

(declare-fun b!6652718 () Bool)

(declare-fun e!4022535 () Bool)

(declare-fun e!4022541 () Bool)

(assert (=> b!6652718 (= e!4022535 e!4022541)))

(declare-fun c!1228080 () Bool)

(assert (=> b!6652718 (= c!1228080 ((_ is Union!16515) r!7292))))

(declare-fun b!6652719 () Bool)

(declare-fun res!2726232 () Bool)

(declare-fun e!4022540 () Bool)

(assert (=> b!6652719 (=> res!2726232 e!4022540)))

(assert (=> b!6652719 (= res!2726232 (not ((_ is Concat!25360) r!7292)))))

(assert (=> b!6652719 (= e!4022541 e!4022540)))

(declare-fun b!6652720 () Bool)

(declare-fun e!4022539 () Bool)

(declare-fun call!589443 () Bool)

(assert (=> b!6652720 (= e!4022539 call!589443)))

(declare-fun b!6652721 () Bool)

(declare-fun e!4022536 () Bool)

(assert (=> b!6652721 (= e!4022536 e!4022535)))

(declare-fun c!1228079 () Bool)

(assert (=> b!6652721 (= c!1228079 ((_ is Star!16515) r!7292))))

(declare-fun b!6652722 () Bool)

(declare-fun e!4022538 () Bool)

(assert (=> b!6652722 (= e!4022535 e!4022538)))

(declare-fun res!2726234 () Bool)

(assert (=> b!6652722 (= res!2726234 (not (nullable!6508 (reg!16844 r!7292))))))

(assert (=> b!6652722 (=> (not res!2726234) (not e!4022538))))

(declare-fun d!2084649 () Bool)

(declare-fun res!2726235 () Bool)

(assert (=> d!2084649 (=> res!2726235 e!4022536)))

(assert (=> d!2084649 (= res!2726235 ((_ is ElementMatch!16515) r!7292))))

(assert (=> d!2084649 (= (validRegex!8251 r!7292) e!4022536)))

(declare-fun bm!589436 () Bool)

(declare-fun call!589442 () Bool)

(assert (=> bm!589436 (= call!589442 (validRegex!8251 (ite c!1228080 (regOne!33543 r!7292) (regOne!33542 r!7292))))))

(declare-fun b!6652723 () Bool)

(assert (=> b!6652723 (= e!4022540 e!4022539)))

(declare-fun res!2726233 () Bool)

(assert (=> b!6652723 (=> (not res!2726233) (not e!4022539))))

(assert (=> b!6652723 (= res!2726233 call!589442)))

(declare-fun b!6652724 () Bool)

(declare-fun res!2726231 () Bool)

(declare-fun e!4022537 () Bool)

(assert (=> b!6652724 (=> (not res!2726231) (not e!4022537))))

(assert (=> b!6652724 (= res!2726231 call!589442)))

(assert (=> b!6652724 (= e!4022541 e!4022537)))

(declare-fun bm!589437 () Bool)

(declare-fun call!589441 () Bool)

(assert (=> bm!589437 (= call!589443 call!589441)))

(declare-fun b!6652725 () Bool)

(assert (=> b!6652725 (= e!4022537 call!589443)))

(declare-fun b!6652726 () Bool)

(assert (=> b!6652726 (= e!4022538 call!589441)))

(declare-fun bm!589438 () Bool)

(assert (=> bm!589438 (= call!589441 (validRegex!8251 (ite c!1228079 (reg!16844 r!7292) (ite c!1228080 (regTwo!33543 r!7292) (regTwo!33542 r!7292)))))))

(assert (= (and d!2084649 (not res!2726235)) b!6652721))

(assert (= (and b!6652721 c!1228079) b!6652722))

(assert (= (and b!6652721 (not c!1228079)) b!6652718))

(assert (= (and b!6652722 res!2726234) b!6652726))

(assert (= (and b!6652718 c!1228080) b!6652724))

(assert (= (and b!6652718 (not c!1228080)) b!6652719))

(assert (= (and b!6652724 res!2726231) b!6652725))

(assert (= (and b!6652719 (not res!2726232)) b!6652723))

(assert (= (and b!6652723 res!2726233) b!6652720))

(assert (= (or b!6652725 b!6652720) bm!589437))

(assert (= (or b!6652724 b!6652723) bm!589436))

(assert (= (or b!6652726 bm!589437) bm!589438))

(declare-fun m!7418974 () Bool)

(assert (=> b!6652722 m!7418974))

(declare-fun m!7418976 () Bool)

(assert (=> bm!589436 m!7418976))

(declare-fun m!7418978 () Bool)

(assert (=> bm!589438 m!7418978))

(assert (=> start!649154 d!2084649))

(declare-fun b!6652727 () Bool)

(declare-fun e!4022543 () Bool)

(assert (=> b!6652727 (= e!4022543 (matchR!8698 (derivativeStep!5195 (ite c!1227941 lt!2426028 lt!2426074) (head!13473 (ite c!1227941 lt!2426090 (_1!36797 lt!2425939)))) (tail!12558 (ite c!1227941 lt!2426090 (_1!36797 lt!2425939)))))))

(declare-fun b!6652728 () Bool)

(declare-fun e!4022545 () Bool)

(assert (=> b!6652728 (= e!4022545 (not (= (head!13473 (ite c!1227941 lt!2426090 (_1!36797 lt!2425939))) (c!1227945 (ite c!1227941 lt!2426028 lt!2426074)))))))

(declare-fun b!6652729 () Bool)

(declare-fun e!4022542 () Bool)

(declare-fun lt!2426180 () Bool)

(assert (=> b!6652729 (= e!4022542 (not lt!2426180))))

(declare-fun b!6652730 () Bool)

(declare-fun e!4022547 () Bool)

(declare-fun call!589444 () Bool)

(assert (=> b!6652730 (= e!4022547 (= lt!2426180 call!589444))))

(declare-fun b!6652731 () Bool)

(assert (=> b!6652731 (= e!4022547 e!4022542)))

(declare-fun c!1228081 () Bool)

(assert (=> b!6652731 (= c!1228081 ((_ is EmptyLang!16515) (ite c!1227941 lt!2426028 lt!2426074)))))

(declare-fun d!2084657 () Bool)

(assert (=> d!2084657 e!4022547))

(declare-fun c!1228083 () Bool)

(assert (=> d!2084657 (= c!1228083 ((_ is EmptyExpr!16515) (ite c!1227941 lt!2426028 lt!2426074)))))

(assert (=> d!2084657 (= lt!2426180 e!4022543)))

(declare-fun c!1228082 () Bool)

(assert (=> d!2084657 (= c!1228082 (isEmpty!38032 (ite c!1227941 lt!2426090 (_1!36797 lt!2425939))))))

(assert (=> d!2084657 (validRegex!8251 (ite c!1227941 lt!2426028 lt!2426074))))

(assert (=> d!2084657 (= (matchR!8698 (ite c!1227941 lt!2426028 lt!2426074) (ite c!1227941 lt!2426090 (_1!36797 lt!2425939))) lt!2426180)))

(declare-fun b!6652732 () Bool)

(declare-fun res!2726238 () Bool)

(declare-fun e!4022544 () Bool)

(assert (=> b!6652732 (=> res!2726238 e!4022544)))

(assert (=> b!6652732 (= res!2726238 (not ((_ is ElementMatch!16515) (ite c!1227941 lt!2426028 lt!2426074))))))

(assert (=> b!6652732 (= e!4022542 e!4022544)))

(declare-fun b!6652733 () Bool)

(assert (=> b!6652733 (= e!4022543 (nullable!6508 (ite c!1227941 lt!2426028 lt!2426074)))))

(declare-fun bm!589439 () Bool)

(assert (=> bm!589439 (= call!589444 (isEmpty!38032 (ite c!1227941 lt!2426090 (_1!36797 lt!2425939))))))

(declare-fun b!6652734 () Bool)

(declare-fun res!2726237 () Bool)

(assert (=> b!6652734 (=> res!2726237 e!4022544)))

(declare-fun e!4022546 () Bool)

(assert (=> b!6652734 (= res!2726237 e!4022546)))

(declare-fun res!2726240 () Bool)

(assert (=> b!6652734 (=> (not res!2726240) (not e!4022546))))

(assert (=> b!6652734 (= res!2726240 lt!2426180)))

(declare-fun b!6652735 () Bool)

(declare-fun e!4022548 () Bool)

(assert (=> b!6652735 (= e!4022544 e!4022548)))

(declare-fun res!2726236 () Bool)

(assert (=> b!6652735 (=> (not res!2726236) (not e!4022548))))

(assert (=> b!6652735 (= res!2726236 (not lt!2426180))))

(declare-fun b!6652736 () Bool)

(assert (=> b!6652736 (= e!4022548 e!4022545)))

(declare-fun res!2726243 () Bool)

(assert (=> b!6652736 (=> res!2726243 e!4022545)))

(assert (=> b!6652736 (= res!2726243 call!589444)))

(declare-fun b!6652737 () Bool)

(declare-fun res!2726242 () Bool)

(assert (=> b!6652737 (=> (not res!2726242) (not e!4022546))))

(assert (=> b!6652737 (= res!2726242 (isEmpty!38032 (tail!12558 (ite c!1227941 lt!2426090 (_1!36797 lt!2425939)))))))

(declare-fun b!6652738 () Bool)

(assert (=> b!6652738 (= e!4022546 (= (head!13473 (ite c!1227941 lt!2426090 (_1!36797 lt!2425939))) (c!1227945 (ite c!1227941 lt!2426028 lt!2426074))))))

(declare-fun b!6652739 () Bool)

(declare-fun res!2726239 () Bool)

(assert (=> b!6652739 (=> (not res!2726239) (not e!4022546))))

(assert (=> b!6652739 (= res!2726239 (not call!589444))))

(declare-fun b!6652740 () Bool)

(declare-fun res!2726241 () Bool)

(assert (=> b!6652740 (=> res!2726241 e!4022545)))

(assert (=> b!6652740 (= res!2726241 (not (isEmpty!38032 (tail!12558 (ite c!1227941 lt!2426090 (_1!36797 lt!2425939))))))))

(assert (= (and d!2084657 c!1228082) b!6652733))

(assert (= (and d!2084657 (not c!1228082)) b!6652727))

(assert (= (and d!2084657 c!1228083) b!6652730))

(assert (= (and d!2084657 (not c!1228083)) b!6652731))

(assert (= (and b!6652731 c!1228081) b!6652729))

(assert (= (and b!6652731 (not c!1228081)) b!6652732))

(assert (= (and b!6652732 (not res!2726238)) b!6652734))

(assert (= (and b!6652734 res!2726240) b!6652739))

(assert (= (and b!6652739 res!2726239) b!6652737))

(assert (= (and b!6652737 res!2726242) b!6652738))

(assert (= (and b!6652734 (not res!2726237)) b!6652735))

(assert (= (and b!6652735 res!2726236) b!6652736))

(assert (= (and b!6652736 (not res!2726243)) b!6652740))

(assert (= (and b!6652740 (not res!2726241)) b!6652728))

(assert (= (or b!6652730 b!6652736 b!6652739) bm!589439))

(declare-fun m!7418980 () Bool)

(assert (=> d!2084657 m!7418980))

(declare-fun m!7418982 () Bool)

(assert (=> d!2084657 m!7418982))

(declare-fun m!7418984 () Bool)

(assert (=> b!6652733 m!7418984))

(declare-fun m!7418986 () Bool)

(assert (=> b!6652727 m!7418986))

(assert (=> b!6652727 m!7418986))

(declare-fun m!7418988 () Bool)

(assert (=> b!6652727 m!7418988))

(declare-fun m!7418990 () Bool)

(assert (=> b!6652727 m!7418990))

(assert (=> b!6652727 m!7418988))

(assert (=> b!6652727 m!7418990))

(declare-fun m!7418992 () Bool)

(assert (=> b!6652727 m!7418992))

(assert (=> b!6652738 m!7418986))

(assert (=> b!6652740 m!7418990))

(assert (=> b!6652740 m!7418990))

(declare-fun m!7418994 () Bool)

(assert (=> b!6652740 m!7418994))

(assert (=> b!6652728 m!7418986))

(assert (=> b!6652737 m!7418990))

(assert (=> b!6652737 m!7418990))

(assert (=> b!6652737 m!7418994))

(assert (=> bm!589439 m!7418980))

(assert (=> bm!589320 d!2084657))

(declare-fun bs!1712917 () Bool)

(declare-fun b!6652829 () Bool)

(assert (= bs!1712917 (and b!6652829 d!2084621)))

(declare-fun lambda!372803 () Int)

(assert (=> bs!1712917 (not (= lambda!372803 lambda!372789))))

(declare-fun bs!1712918 () Bool)

(assert (= bs!1712918 (and b!6652829 b!6652222)))

(assert (=> bs!1712918 (not (= lambda!372803 lambda!372758))))

(declare-fun bs!1712919 () Bool)

(assert (= bs!1712919 (and b!6652829 b!6652251)))

(assert (=> bs!1712919 (not (= lambda!372803 lambda!372744))))

(declare-fun bs!1712920 () Bool)

(assert (= bs!1712920 (and b!6652829 b!6652208)))

(assert (=> bs!1712920 (not (= lambda!372803 lambda!372761))))

(assert (=> bs!1712919 (not (= lambda!372803 lambda!372746))))

(assert (=> bs!1712919 (not (= lambda!372803 lambda!372745))))

(declare-fun bs!1712922 () Bool)

(assert (= bs!1712922 (and b!6652829 b!6652192)))

(assert (=> bs!1712922 (not (= lambda!372803 lambda!372751))))

(declare-fun bs!1712924 () Bool)

(assert (= bs!1712924 (and b!6652829 b!6652196)))

(assert (=> bs!1712924 (not (= lambda!372803 lambda!372747))))

(declare-fun bs!1712926 () Bool)

(assert (= bs!1712926 (and b!6652829 b!6652250)))

(assert (=> bs!1712926 (not (= lambda!372803 lambda!372739))))

(assert (=> bs!1712918 (not (= lambda!372803 lambda!372757))))

(assert (=> bs!1712922 (= (and (= s!2326 (_1!36797 lt!2425896)) (= (reg!16844 r!7292) (reg!16844 (regOne!33542 r!7292))) (= r!7292 lt!2425900)) (= lambda!372803 lambda!372750))))

(assert (=> bs!1712926 (not (= lambda!372803 lambda!372742))))

(assert (=> bs!1712919 (not (= lambda!372803 lambda!372743))))

(assert (=> bs!1712920 (= (and (= s!2326 Nil!65720) (= (reg!16844 r!7292) (reg!16844 (regOne!33542 r!7292))) (= r!7292 lt!2425900)) (= lambda!372803 lambda!372762))))

(assert (=> bs!1712920 (not (= lambda!372803 lambda!372760))))

(assert (=> bs!1712917 (not (= lambda!372803 lambda!372791))))

(assert (=> bs!1712918 (not (= lambda!372803 lambda!372756))))

(declare-fun bs!1712932 () Bool)

(assert (= bs!1712932 (and b!6652829 b!6652194)))

(assert (=> bs!1712932 (not (= lambda!372803 lambda!372737))))

(assert (=> bs!1712924 (not (= lambda!372803 lambda!372748))))

(assert (=> bs!1712918 (= (and (= s!2326 (_1!36797 lt!2425939)) (= (reg!16844 r!7292) (reg!16844 (regOne!33542 r!7292))) (= r!7292 lt!2425900)) (= lambda!372803 lambda!372759))))

(assert (=> bs!1712926 (not (= lambda!372803 lambda!372740))))

(assert (=> bs!1712922 (not (= lambda!372803 lambda!372749))))

(assert (=> bs!1712926 (not (= lambda!372803 lambda!372741))))

(assert (=> bs!1712918 (not (= lambda!372803 lambda!372755))))

(assert (=> bs!1712932 (not (= lambda!372803 lambda!372736))))

(assert (=> b!6652829 true))

(assert (=> b!6652829 true))

(declare-fun bs!1712935 () Bool)

(declare-fun b!6652830 () Bool)

(assert (= bs!1712935 (and b!6652830 d!2084621)))

(declare-fun lambda!372805 () Int)

(assert (=> bs!1712935 (not (= lambda!372805 lambda!372789))))

(declare-fun bs!1712936 () Bool)

(assert (= bs!1712936 (and b!6652830 b!6652222)))

(assert (=> bs!1712936 (= (and (= s!2326 (_1!36797 lt!2425939)) (= (regOne!33542 r!7292) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425900)) (= lambda!372805 lambda!372758))))

(declare-fun bs!1712937 () Bool)

(assert (= bs!1712937 (and b!6652830 b!6652251)))

(assert (=> bs!1712937 (= (and (= (regOne!33542 r!7292) (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425950)) (= lambda!372805 lambda!372744))))

(declare-fun bs!1712938 () Bool)

(assert (= bs!1712938 (and b!6652830 b!6652208)))

(assert (=> bs!1712938 (= (and (= s!2326 Nil!65720) (= (regOne!33542 r!7292) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425900)) (= lambda!372805 lambda!372761))))

(assert (=> bs!1712937 (= (and (= (regOne!33542 r!7292) (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425898)) (= lambda!372805 lambda!372746))))

(declare-fun bs!1712939 () Bool)

(assert (= bs!1712939 (and b!6652830 b!6652829)))

(assert (=> bs!1712939 (not (= lambda!372805 lambda!372803))))

(assert (=> bs!1712937 (not (= lambda!372805 lambda!372745))))

(declare-fun bs!1712942 () Bool)

(assert (= bs!1712942 (and b!6652830 b!6652192)))

(assert (=> bs!1712942 (= (and (= s!2326 (_1!36797 lt!2425896)) (= (regOne!33542 r!7292) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425900)) (= lambda!372805 lambda!372751))))

(declare-fun bs!1712944 () Bool)

(assert (= bs!1712944 (and b!6652830 b!6652196)))

(assert (=> bs!1712944 (not (= lambda!372805 lambda!372747))))

(declare-fun bs!1712945 () Bool)

(assert (= bs!1712945 (and b!6652830 b!6652250)))

(assert (=> bs!1712945 (not (= lambda!372805 lambda!372739))))

(assert (=> bs!1712936 (not (= lambda!372805 lambda!372757))))

(assert (=> bs!1712942 (not (= lambda!372805 lambda!372750))))

(assert (=> bs!1712945 (= (and (= (regOne!33542 r!7292) (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2426072)) (= lambda!372805 lambda!372742))))

(assert (=> bs!1712937 (not (= lambda!372805 lambda!372743))))

(assert (=> bs!1712938 (not (= lambda!372805 lambda!372762))))

(assert (=> bs!1712938 (not (= lambda!372805 lambda!372760))))

(assert (=> bs!1712935 (= (and (= s!2326 (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)))) (= (regOne!33542 r!7292) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292))))))) (= (regTwo!33542 r!7292) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))))) (= lambda!372805 lambda!372791))))

(assert (=> bs!1712936 (= (= (regOne!33542 r!7292) lt!2426074) (= lambda!372805 lambda!372756))))

(declare-fun bs!1712952 () Bool)

(assert (= bs!1712952 (and b!6652830 b!6652194)))

(assert (=> bs!1712952 (= lambda!372805 lambda!372737)))

(assert (=> bs!1712944 (= (= (regOne!33542 r!7292) lt!2425900) (= lambda!372805 lambda!372748))))

(assert (=> bs!1712936 (not (= lambda!372805 lambda!372759))))

(assert (=> bs!1712945 (= (and (= (regOne!33542 r!7292) (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425943)) (= lambda!372805 lambda!372740))))

(assert (=> bs!1712942 (not (= lambda!372805 lambda!372749))))

(assert (=> bs!1712945 (not (= lambda!372805 lambda!372741))))

(assert (=> bs!1712936 (not (= lambda!372805 lambda!372755))))

(assert (=> bs!1712952 (not (= lambda!372805 lambda!372736))))

(assert (=> b!6652830 true))

(assert (=> b!6652830 true))

(declare-fun bm!589465 () Bool)

(declare-fun call!589471 () Bool)

(assert (=> bm!589465 (= call!589471 (isEmpty!38032 s!2326))))

(declare-fun b!6652823 () Bool)

(declare-fun c!1228118 () Bool)

(assert (=> b!6652823 (= c!1228118 ((_ is ElementMatch!16515) r!7292))))

(declare-fun e!4022600 () Bool)

(declare-fun e!4022598 () Bool)

(assert (=> b!6652823 (= e!4022600 e!4022598)))

(declare-fun call!589470 () Bool)

(declare-fun c!1228117 () Bool)

(declare-fun bm!589466 () Bool)

(assert (=> bm!589466 (= call!589470 (Exists!3585 (ite c!1228117 lambda!372803 lambda!372805)))))

(declare-fun b!6652824 () Bool)

(declare-fun e!4022596 () Bool)

(assert (=> b!6652824 (= e!4022596 call!589471)))

(declare-fun b!6652825 () Bool)

(declare-fun e!4022595 () Bool)

(assert (=> b!6652825 (= e!4022595 (matchRSpec!3616 (regTwo!33543 r!7292) s!2326))))

(declare-fun b!6652826 () Bool)

(assert (=> b!6652826 (= e!4022598 (= s!2326 (Cons!65720 (c!1227945 r!7292) Nil!65720)))))

(declare-fun b!6652827 () Bool)

(assert (=> b!6652827 (= e!4022596 e!4022600)))

(declare-fun res!2726267 () Bool)

(assert (=> b!6652827 (= res!2726267 (not ((_ is EmptyLang!16515) r!7292)))))

(assert (=> b!6652827 (=> (not res!2726267) (not e!4022600))))

(declare-fun b!6652828 () Bool)

(declare-fun c!1228115 () Bool)

(assert (=> b!6652828 (= c!1228115 ((_ is Union!16515) r!7292))))

(declare-fun e!4022597 () Bool)

(assert (=> b!6652828 (= e!4022598 e!4022597)))

(declare-fun e!4022599 () Bool)

(assert (=> b!6652829 (= e!4022599 call!589470)))

(declare-fun d!2084659 () Bool)

(declare-fun c!1228116 () Bool)

(assert (=> d!2084659 (= c!1228116 ((_ is EmptyExpr!16515) r!7292))))

(assert (=> d!2084659 (= (matchRSpec!3616 r!7292 s!2326) e!4022596)))

(declare-fun e!4022594 () Bool)

(assert (=> b!6652830 (= e!4022594 call!589470)))

(declare-fun b!6652831 () Bool)

(assert (=> b!6652831 (= e!4022597 e!4022595)))

(declare-fun res!2726268 () Bool)

(assert (=> b!6652831 (= res!2726268 (matchRSpec!3616 (regOne!33543 r!7292) s!2326))))

(assert (=> b!6652831 (=> res!2726268 e!4022595)))

(declare-fun b!6652832 () Bool)

(declare-fun res!2726266 () Bool)

(assert (=> b!6652832 (=> res!2726266 e!4022599)))

(assert (=> b!6652832 (= res!2726266 call!589471)))

(assert (=> b!6652832 (= e!4022594 e!4022599)))

(declare-fun b!6652833 () Bool)

(assert (=> b!6652833 (= e!4022597 e!4022594)))

(assert (=> b!6652833 (= c!1228117 ((_ is Star!16515) r!7292))))

(assert (= (and d!2084659 c!1228116) b!6652824))

(assert (= (and d!2084659 (not c!1228116)) b!6652827))

(assert (= (and b!6652827 res!2726267) b!6652823))

(assert (= (and b!6652823 c!1228118) b!6652826))

(assert (= (and b!6652823 (not c!1228118)) b!6652828))

(assert (= (and b!6652828 c!1228115) b!6652831))

(assert (= (and b!6652828 (not c!1228115)) b!6652833))

(assert (= (and b!6652831 (not res!2726268)) b!6652825))

(assert (= (and b!6652833 c!1228117) b!6652832))

(assert (= (and b!6652833 (not c!1228117)) b!6652830))

(assert (= (and b!6652832 (not res!2726266)) b!6652829))

(assert (= (or b!6652829 b!6652830) bm!589466))

(assert (= (or b!6652824 b!6652832) bm!589465))

(declare-fun m!7419040 () Bool)

(assert (=> bm!589465 m!7419040))

(declare-fun m!7419042 () Bool)

(assert (=> bm!589466 m!7419042))

(declare-fun m!7419044 () Bool)

(assert (=> b!6652825 m!7419044))

(declare-fun m!7419046 () Bool)

(assert (=> b!6652831 m!7419046))

(assert (=> b!6652234 d!2084659))

(declare-fun b!6652845 () Bool)

(declare-fun e!4022609 () Bool)

(assert (=> b!6652845 (= e!4022609 (matchR!8698 (derivativeStep!5195 r!7292 (head!13473 s!2326)) (tail!12558 s!2326)))))

(declare-fun b!6652846 () Bool)

(declare-fun e!4022611 () Bool)

(assert (=> b!6652846 (= e!4022611 (not (= (head!13473 s!2326) (c!1227945 r!7292))))))

(declare-fun b!6652847 () Bool)

(declare-fun e!4022608 () Bool)

(declare-fun lt!2426183 () Bool)

(assert (=> b!6652847 (= e!4022608 (not lt!2426183))))

(declare-fun b!6652848 () Bool)

(declare-fun e!4022613 () Bool)

(declare-fun call!589474 () Bool)

(assert (=> b!6652848 (= e!4022613 (= lt!2426183 call!589474))))

(declare-fun b!6652849 () Bool)

(assert (=> b!6652849 (= e!4022613 e!4022608)))

(declare-fun c!1228123 () Bool)

(assert (=> b!6652849 (= c!1228123 ((_ is EmptyLang!16515) r!7292))))

(declare-fun d!2084683 () Bool)

(assert (=> d!2084683 e!4022613))

(declare-fun c!1228125 () Bool)

(assert (=> d!2084683 (= c!1228125 ((_ is EmptyExpr!16515) r!7292))))

(assert (=> d!2084683 (= lt!2426183 e!4022609)))

(declare-fun c!1228124 () Bool)

(assert (=> d!2084683 (= c!1228124 (isEmpty!38032 s!2326))))

(assert (=> d!2084683 (validRegex!8251 r!7292)))

(assert (=> d!2084683 (= (matchR!8698 r!7292 s!2326) lt!2426183)))

(declare-fun b!6652850 () Bool)

(declare-fun res!2726274 () Bool)

(declare-fun e!4022610 () Bool)

(assert (=> b!6652850 (=> res!2726274 e!4022610)))

(assert (=> b!6652850 (= res!2726274 (not ((_ is ElementMatch!16515) r!7292)))))

(assert (=> b!6652850 (= e!4022608 e!4022610)))

(declare-fun b!6652851 () Bool)

(assert (=> b!6652851 (= e!4022609 (nullable!6508 r!7292))))

(declare-fun bm!589469 () Bool)

(assert (=> bm!589469 (= call!589474 (isEmpty!38032 s!2326))))

(declare-fun b!6652852 () Bool)

(declare-fun res!2726273 () Bool)

(assert (=> b!6652852 (=> res!2726273 e!4022610)))

(declare-fun e!4022612 () Bool)

(assert (=> b!6652852 (= res!2726273 e!4022612)))

(declare-fun res!2726276 () Bool)

(assert (=> b!6652852 (=> (not res!2726276) (not e!4022612))))

(assert (=> b!6652852 (= res!2726276 lt!2426183)))

(declare-fun b!6652853 () Bool)

(declare-fun e!4022614 () Bool)

(assert (=> b!6652853 (= e!4022610 e!4022614)))

(declare-fun res!2726272 () Bool)

(assert (=> b!6652853 (=> (not res!2726272) (not e!4022614))))

(assert (=> b!6652853 (= res!2726272 (not lt!2426183))))

(declare-fun b!6652854 () Bool)

(assert (=> b!6652854 (= e!4022614 e!4022611)))

(declare-fun res!2726279 () Bool)

(assert (=> b!6652854 (=> res!2726279 e!4022611)))

(assert (=> b!6652854 (= res!2726279 call!589474)))

(declare-fun b!6652855 () Bool)

(declare-fun res!2726278 () Bool)

(assert (=> b!6652855 (=> (not res!2726278) (not e!4022612))))

(assert (=> b!6652855 (= res!2726278 (isEmpty!38032 (tail!12558 s!2326)))))

(declare-fun b!6652856 () Bool)

(assert (=> b!6652856 (= e!4022612 (= (head!13473 s!2326) (c!1227945 r!7292)))))

(declare-fun b!6652857 () Bool)

(declare-fun res!2726275 () Bool)

(assert (=> b!6652857 (=> (not res!2726275) (not e!4022612))))

(assert (=> b!6652857 (= res!2726275 (not call!589474))))

(declare-fun b!6652858 () Bool)

(declare-fun res!2726277 () Bool)

(assert (=> b!6652858 (=> res!2726277 e!4022611)))

(assert (=> b!6652858 (= res!2726277 (not (isEmpty!38032 (tail!12558 s!2326))))))

(assert (= (and d!2084683 c!1228124) b!6652851))

(assert (= (and d!2084683 (not c!1228124)) b!6652845))

(assert (= (and d!2084683 c!1228125) b!6652848))

(assert (= (and d!2084683 (not c!1228125)) b!6652849))

(assert (= (and b!6652849 c!1228123) b!6652847))

(assert (= (and b!6652849 (not c!1228123)) b!6652850))

(assert (= (and b!6652850 (not res!2726274)) b!6652852))

(assert (= (and b!6652852 res!2726276) b!6652857))

(assert (= (and b!6652857 res!2726275) b!6652855))

(assert (= (and b!6652855 res!2726278) b!6652856))

(assert (= (and b!6652852 (not res!2726273)) b!6652853))

(assert (= (and b!6652853 res!2726272) b!6652854))

(assert (= (and b!6652854 (not res!2726279)) b!6652858))

(assert (= (and b!6652858 (not res!2726277)) b!6652846))

(assert (= (or b!6652848 b!6652854 b!6652857) bm!589469))

(assert (=> d!2084683 m!7419040))

(assert (=> d!2084683 m!7418392))

(declare-fun m!7419054 () Bool)

(assert (=> b!6652851 m!7419054))

(declare-fun m!7419056 () Bool)

(assert (=> b!6652845 m!7419056))

(assert (=> b!6652845 m!7419056))

(declare-fun m!7419058 () Bool)

(assert (=> b!6652845 m!7419058))

(declare-fun m!7419060 () Bool)

(assert (=> b!6652845 m!7419060))

(assert (=> b!6652845 m!7419058))

(assert (=> b!6652845 m!7419060))

(declare-fun m!7419062 () Bool)

(assert (=> b!6652845 m!7419062))

(assert (=> b!6652856 m!7419056))

(assert (=> b!6652858 m!7419060))

(assert (=> b!6652858 m!7419060))

(declare-fun m!7419064 () Bool)

(assert (=> b!6652858 m!7419064))

(assert (=> b!6652846 m!7419056))

(assert (=> b!6652855 m!7419060))

(assert (=> b!6652855 m!7419060))

(assert (=> b!6652855 m!7419064))

(assert (=> bm!589469 m!7419040))

(assert (=> b!6652234 d!2084683))

(declare-fun d!2084687 () Bool)

(assert (=> d!2084687 (= (matchR!8698 r!7292 s!2326) (matchRSpec!3616 r!7292 s!2326))))

(declare-fun lt!2426187 () Unit!159541)

(declare-fun choose!49777 (Regex!16515 List!65844) Unit!159541)

(assert (=> d!2084687 (= lt!2426187 (choose!49777 r!7292 s!2326))))

(assert (=> d!2084687 (validRegex!8251 r!7292)))

(assert (=> d!2084687 (= (mainMatchTheorem!3616 r!7292 s!2326) lt!2426187)))

(declare-fun bs!1712955 () Bool)

(assert (= bs!1712955 d!2084687))

(assert (=> bs!1712955 m!7418450))

(assert (=> bs!1712955 m!7418448))

(declare-fun m!7419072 () Bool)

(assert (=> bs!1712955 m!7419072))

(assert (=> bs!1712955 m!7418392))

(assert (=> b!6652234 d!2084687))

(declare-fun d!2084691 () Bool)

(declare-fun isEmpty!38036 (Option!16406) Bool)

(assert (=> d!2084691 (= (isDefined!13109 (ite c!1227939 call!589311 (ite c!1227934 call!589214 (ite c!1227941 lt!2425990 lt!2425929)))) (not (isEmpty!38036 (ite c!1227939 call!589311 (ite c!1227934 call!589214 (ite c!1227941 lt!2425990 lt!2425929))))))))

(declare-fun bs!1712956 () Bool)

(assert (= bs!1712956 d!2084691))

(declare-fun m!7419074 () Bool)

(assert (=> bs!1712956 m!7419074))

(assert (=> bm!589230 d!2084691))

(declare-fun d!2084693 () Bool)

(assert (=> d!2084693 (= (flatMap!2020 (ite c!1227937 lt!2425942 (ite c!1227939 lt!2425972 lt!2425935)) (ite c!1227937 lambda!372738 (ite c!1227939 lambda!372738 lambda!372738))) (dynLambda!26187 (ite c!1227937 lambda!372738 (ite c!1227939 lambda!372738 lambda!372738)) (ite c!1227937 lt!2426071 (ite c!1227939 lt!2426009 lt!2426056))))))

(declare-fun lt!2426191 () Unit!159541)

(assert (=> d!2084693 (= lt!2426191 (choose!49773 (ite c!1227937 lt!2425942 (ite c!1227939 lt!2425972 lt!2425935)) (ite c!1227937 lt!2426071 (ite c!1227939 lt!2426009 lt!2426056)) (ite c!1227937 lambda!372738 (ite c!1227939 lambda!372738 lambda!372738))))))

(assert (=> d!2084693 (= (ite c!1227937 lt!2425942 (ite c!1227939 lt!2425972 lt!2425935)) (store ((as const (Array Context!11798 Bool)) false) (ite c!1227937 lt!2426071 (ite c!1227939 lt!2426009 lt!2426056)) true))))

(assert (=> d!2084693 (= (lemmaFlatMapOnSingletonSet!1546 (ite c!1227937 lt!2425942 (ite c!1227939 lt!2425972 lt!2425935)) (ite c!1227937 lt!2426071 (ite c!1227939 lt!2426009 lt!2426056)) (ite c!1227937 lambda!372738 (ite c!1227939 lambda!372738 lambda!372738))) lt!2426191)))

(declare-fun b_lambda!251187 () Bool)

(assert (=> (not b_lambda!251187) (not d!2084693)))

(declare-fun bs!1712958 () Bool)

(assert (= bs!1712958 d!2084693))

(declare-fun m!7419078 () Bool)

(assert (=> bs!1712958 m!7419078))

(declare-fun m!7419080 () Bool)

(assert (=> bs!1712958 m!7419080))

(declare-fun m!7419082 () Bool)

(assert (=> bs!1712958 m!7419082))

(declare-fun m!7419084 () Bool)

(assert (=> bs!1712958 m!7419084))

(assert (=> bm!589356 d!2084693))

(declare-fun d!2084697 () Bool)

(assert (=> d!2084697 (= (Exists!3585 (ite c!1227939 lambda!372742 (ite c!1227941 lambda!372751 (ite c!1227938 lambda!372756 lambda!372760)))) (choose!49772 (ite c!1227939 lambda!372742 (ite c!1227941 lambda!372751 (ite c!1227938 lambda!372756 lambda!372760)))))))

(declare-fun bs!1712959 () Bool)

(assert (= bs!1712959 d!2084697))

(declare-fun m!7419086 () Bool)

(assert (=> bs!1712959 m!7419086))

(assert (=> bm!589373 d!2084697))

(declare-fun d!2084699 () Bool)

(declare-fun choose!49778 ((InoxSet Context!11798) Int) (InoxSet Context!11798))

(assert (=> d!2084699 (= (flatMap!2020 z!1189 lambda!372738) (choose!49778 z!1189 lambda!372738))))

(declare-fun bs!1712960 () Bool)

(assert (= bs!1712960 d!2084699))

(declare-fun m!7419088 () Bool)

(assert (=> bs!1712960 m!7419088))

(assert (=> b!6652224 d!2084699))

(declare-fun b!6652883 () Bool)

(declare-fun e!4022629 () (InoxSet Context!11798))

(declare-fun call!589478 () (InoxSet Context!11798))

(assert (=> b!6652883 (= e!4022629 call!589478)))

(declare-fun bm!589473 () Bool)

(assert (=> bm!589473 (= call!589478 (derivationStepZipperDown!1763 (h!72169 (exprs!6399 (Context!11799 (Cons!65721 (h!72169 (exprs!6399 (h!72170 zl!343))) (t!379514 (exprs!6399 (h!72170 zl!343))))))) (Context!11799 (t!379514 (exprs!6399 (Context!11799 (Cons!65721 (h!72169 (exprs!6399 (h!72170 zl!343))) (t!379514 (exprs!6399 (h!72170 zl!343)))))))) (h!72168 s!2326)))))

(declare-fun d!2084701 () Bool)

(declare-fun c!1228133 () Bool)

(declare-fun e!4022628 () Bool)

(assert (=> d!2084701 (= c!1228133 e!4022628)))

(declare-fun res!2726290 () Bool)

(assert (=> d!2084701 (=> (not res!2726290) (not e!4022628))))

(assert (=> d!2084701 (= res!2726290 ((_ is Cons!65721) (exprs!6399 (Context!11799 (Cons!65721 (h!72169 (exprs!6399 (h!72170 zl!343))) (t!379514 (exprs!6399 (h!72170 zl!343))))))))))

(declare-fun e!4022630 () (InoxSet Context!11798))

(assert (=> d!2084701 (= (derivationStepZipperUp!1689 (Context!11799 (Cons!65721 (h!72169 (exprs!6399 (h!72170 zl!343))) (t!379514 (exprs!6399 (h!72170 zl!343))))) (h!72168 s!2326)) e!4022630)))

(declare-fun b!6652884 () Bool)

(assert (=> b!6652884 (= e!4022630 ((_ map or) call!589478 (derivationStepZipperUp!1689 (Context!11799 (t!379514 (exprs!6399 (Context!11799 (Cons!65721 (h!72169 (exprs!6399 (h!72170 zl!343))) (t!379514 (exprs!6399 (h!72170 zl!343)))))))) (h!72168 s!2326))))))

(declare-fun b!6652885 () Bool)

(assert (=> b!6652885 (= e!4022628 (nullable!6508 (h!72169 (exprs!6399 (Context!11799 (Cons!65721 (h!72169 (exprs!6399 (h!72170 zl!343))) (t!379514 (exprs!6399 (h!72170 zl!343)))))))))))

(declare-fun b!6652886 () Bool)

(assert (=> b!6652886 (= e!4022630 e!4022629)))

(declare-fun c!1228134 () Bool)

(assert (=> b!6652886 (= c!1228134 ((_ is Cons!65721) (exprs!6399 (Context!11799 (Cons!65721 (h!72169 (exprs!6399 (h!72170 zl!343))) (t!379514 (exprs!6399 (h!72170 zl!343))))))))))

(declare-fun b!6652887 () Bool)

(assert (=> b!6652887 (= e!4022629 ((as const (Array Context!11798 Bool)) false))))

(assert (= (and d!2084701 res!2726290) b!6652885))

(assert (= (and d!2084701 c!1228133) b!6652884))

(assert (= (and d!2084701 (not c!1228133)) b!6652886))

(assert (= (and b!6652886 c!1228134) b!6652883))

(assert (= (and b!6652886 (not c!1228134)) b!6652887))

(assert (= (or b!6652884 b!6652883) bm!589473))

(declare-fun m!7419092 () Bool)

(assert (=> bm!589473 m!7419092))

(declare-fun m!7419094 () Bool)

(assert (=> b!6652884 m!7419094))

(declare-fun m!7419096 () Bool)

(assert (=> b!6652885 m!7419096))

(assert (=> b!6652224 d!2084701))

(declare-fun b!6652994 () Bool)

(declare-fun e!4022694 () (InoxSet Context!11798))

(declare-fun call!589507 () (InoxSet Context!11798))

(assert (=> b!6652994 (= e!4022694 call!589507)))

(declare-fun b!6652995 () Bool)

(declare-fun c!1228169 () Bool)

(assert (=> b!6652995 (= c!1228169 ((_ is Star!16515) (h!72169 (exprs!6399 (h!72170 zl!343)))))))

(declare-fun e!4022697 () (InoxSet Context!11798))

(assert (=> b!6652995 (= e!4022697 e!4022694)))

(declare-fun b!6652996 () Bool)

(declare-fun e!4022695 () (InoxSet Context!11798))

(declare-fun e!4022692 () (InoxSet Context!11798))

(assert (=> b!6652996 (= e!4022695 e!4022692)))

(declare-fun c!1228173 () Bool)

(assert (=> b!6652996 (= c!1228173 ((_ is Union!16515) (h!72169 (exprs!6399 (h!72170 zl!343)))))))

(declare-fun b!6652997 () Bool)

(assert (=> b!6652997 (= e!4022694 ((as const (Array Context!11798 Bool)) false))))

(declare-fun b!6652998 () Bool)

(declare-fun c!1228171 () Bool)

(declare-fun e!4022696 () Bool)

(assert (=> b!6652998 (= c!1228171 e!4022696)))

(declare-fun res!2726329 () Bool)

(assert (=> b!6652998 (=> (not res!2726329) (not e!4022696))))

(assert (=> b!6652998 (= res!2726329 ((_ is Concat!25360) (h!72169 (exprs!6399 (h!72170 zl!343)))))))

(declare-fun e!4022693 () (InoxSet Context!11798))

(assert (=> b!6652998 (= e!4022692 e!4022693)))

(declare-fun b!6652999 () Bool)

(assert (=> b!6652999 (= e!4022695 (store ((as const (Array Context!11798 Bool)) false) lt!2425966 true))))

(declare-fun bm!589500 () Bool)

(declare-fun call!589509 () List!65845)

(declare-fun call!589506 () List!65845)

(assert (=> bm!589500 (= call!589509 call!589506)))

(declare-fun b!6653000 () Bool)

(declare-fun call!589505 () (InoxSet Context!11798))

(declare-fun call!589508 () (InoxSet Context!11798))

(assert (=> b!6653000 (= e!4022692 ((_ map or) call!589505 call!589508))))

(declare-fun b!6653001 () Bool)

(declare-fun call!589510 () (InoxSet Context!11798))

(assert (=> b!6653001 (= e!4022693 ((_ map or) call!589508 call!589510))))

(declare-fun b!6653002 () Bool)

(assert (=> b!6653002 (= e!4022696 (nullable!6508 (regOne!33542 (h!72169 (exprs!6399 (h!72170 zl!343))))))))

(declare-fun bm!589501 () Bool)

(assert (=> bm!589501 (= call!589508 (derivationStepZipperDown!1763 (ite c!1228173 (regTwo!33543 (h!72169 (exprs!6399 (h!72170 zl!343)))) (regOne!33542 (h!72169 (exprs!6399 (h!72170 zl!343))))) (ite c!1228173 lt!2425966 (Context!11799 call!589506)) (h!72168 s!2326)))))

(declare-fun d!2084705 () Bool)

(declare-fun c!1228172 () Bool)

(assert (=> d!2084705 (= c!1228172 (and ((_ is ElementMatch!16515) (h!72169 (exprs!6399 (h!72170 zl!343)))) (= (c!1227945 (h!72169 (exprs!6399 (h!72170 zl!343)))) (h!72168 s!2326))))))

(assert (=> d!2084705 (= (derivationStepZipperDown!1763 (h!72169 (exprs!6399 (h!72170 zl!343))) lt!2425966 (h!72168 s!2326)) e!4022695)))

(declare-fun bm!589502 () Bool)

(assert (=> bm!589502 (= call!589510 call!589505)))

(declare-fun b!6653003 () Bool)

(assert (=> b!6653003 (= e!4022693 e!4022697)))

(declare-fun c!1228170 () Bool)

(assert (=> b!6653003 (= c!1228170 ((_ is Concat!25360) (h!72169 (exprs!6399 (h!72170 zl!343)))))))

(declare-fun bm!589503 () Bool)

(assert (=> bm!589503 (= call!589505 (derivationStepZipperDown!1763 (ite c!1228173 (regOne!33543 (h!72169 (exprs!6399 (h!72170 zl!343)))) (ite c!1228171 (regTwo!33542 (h!72169 (exprs!6399 (h!72170 zl!343)))) (ite c!1228170 (regOne!33542 (h!72169 (exprs!6399 (h!72170 zl!343)))) (reg!16844 (h!72169 (exprs!6399 (h!72170 zl!343))))))) (ite (or c!1228173 c!1228171) lt!2425966 (Context!11799 call!589509)) (h!72168 s!2326)))))

(declare-fun bm!589504 () Bool)

(declare-fun $colon$colon!2352 (List!65845 Regex!16515) List!65845)

(assert (=> bm!589504 (= call!589506 ($colon$colon!2352 (exprs!6399 lt!2425966) (ite (or c!1228171 c!1228170) (regTwo!33542 (h!72169 (exprs!6399 (h!72170 zl!343)))) (h!72169 (exprs!6399 (h!72170 zl!343))))))))

(declare-fun bm!589505 () Bool)

(assert (=> bm!589505 (= call!589507 call!589510)))

(declare-fun b!6653004 () Bool)

(assert (=> b!6653004 (= e!4022697 call!589507)))

(assert (= (and d!2084705 c!1228172) b!6652999))

(assert (= (and d!2084705 (not c!1228172)) b!6652996))

(assert (= (and b!6652996 c!1228173) b!6653000))

(assert (= (and b!6652996 (not c!1228173)) b!6652998))

(assert (= (and b!6652998 res!2726329) b!6653002))

(assert (= (and b!6652998 c!1228171) b!6653001))

(assert (= (and b!6652998 (not c!1228171)) b!6653003))

(assert (= (and b!6653003 c!1228170) b!6653004))

(assert (= (and b!6653003 (not c!1228170)) b!6652995))

(assert (= (and b!6652995 c!1228169) b!6652994))

(assert (= (and b!6652995 (not c!1228169)) b!6652997))

(assert (= (or b!6653004 b!6652994) bm!589500))

(assert (= (or b!6653004 b!6652994) bm!589505))

(assert (= (or b!6653001 bm!589500) bm!589504))

(assert (= (or b!6653001 bm!589505) bm!589502))

(assert (= (or b!6653000 b!6653001) bm!589501))

(assert (= (or b!6653000 bm!589502) bm!589503))

(declare-fun m!7419254 () Bool)

(assert (=> bm!589504 m!7419254))

(declare-fun m!7419256 () Bool)

(assert (=> bm!589501 m!7419256))

(declare-fun m!7419258 () Bool)

(assert (=> b!6653002 m!7419258))

(assert (=> b!6652999 m!7418342))

(declare-fun m!7419260 () Bool)

(assert (=> bm!589503 m!7419260))

(assert (=> b!6652224 d!2084705))

(declare-fun bs!1713018 () Bool)

(declare-fun d!2084753 () Bool)

(assert (= bs!1713018 (and d!2084753 b!6652224)))

(declare-fun lambda!372819 () Int)

(assert (=> bs!1713018 (= lambda!372819 lambda!372738)))

(assert (=> d!2084753 true))

(assert (=> d!2084753 (= (derivationStepZipper!2481 lt!2425980 (h!72168 s!2326)) (flatMap!2020 lt!2425980 lambda!372819))))

(declare-fun bs!1713019 () Bool)

(assert (= bs!1713019 d!2084753))

(declare-fun m!7419262 () Bool)

(assert (=> bs!1713019 m!7419262))

(assert (=> b!6652224 d!2084753))

(declare-fun b!6653017 () Bool)

(declare-fun e!4022703 () (InoxSet Context!11798))

(declare-fun call!589511 () (InoxSet Context!11798))

(assert (=> b!6653017 (= e!4022703 call!589511)))

(declare-fun bm!589506 () Bool)

(assert (=> bm!589506 (= call!589511 (derivationStepZipperDown!1763 (h!72169 (exprs!6399 (h!72170 zl!343))) (Context!11799 (t!379514 (exprs!6399 (h!72170 zl!343)))) (h!72168 s!2326)))))

(declare-fun d!2084755 () Bool)

(declare-fun c!1228176 () Bool)

(declare-fun e!4022702 () Bool)

(assert (=> d!2084755 (= c!1228176 e!4022702)))

(declare-fun res!2726340 () Bool)

(assert (=> d!2084755 (=> (not res!2726340) (not e!4022702))))

(assert (=> d!2084755 (= res!2726340 ((_ is Cons!65721) (exprs!6399 (h!72170 zl!343))))))

(declare-fun e!4022704 () (InoxSet Context!11798))

(assert (=> d!2084755 (= (derivationStepZipperUp!1689 (h!72170 zl!343) (h!72168 s!2326)) e!4022704)))

(declare-fun b!6653018 () Bool)

(assert (=> b!6653018 (= e!4022704 ((_ map or) call!589511 (derivationStepZipperUp!1689 (Context!11799 (t!379514 (exprs!6399 (h!72170 zl!343)))) (h!72168 s!2326))))))

(declare-fun b!6653019 () Bool)

(assert (=> b!6653019 (= e!4022702 (nullable!6508 (h!72169 (exprs!6399 (h!72170 zl!343)))))))

(declare-fun b!6653020 () Bool)

(assert (=> b!6653020 (= e!4022704 e!4022703)))

(declare-fun c!1228177 () Bool)

(assert (=> b!6653020 (= c!1228177 ((_ is Cons!65721) (exprs!6399 (h!72170 zl!343))))))

(declare-fun b!6653021 () Bool)

(assert (=> b!6653021 (= e!4022703 ((as const (Array Context!11798 Bool)) false))))

(assert (= (and d!2084755 res!2726340) b!6653019))

(assert (= (and d!2084755 c!1228176) b!6653018))

(assert (= (and d!2084755 (not c!1228176)) b!6653020))

(assert (= (and b!6653020 c!1228177) b!6653017))

(assert (= (and b!6653020 (not c!1228177)) b!6653021))

(assert (= (or b!6653018 b!6653017) bm!589506))

(declare-fun m!7419264 () Bool)

(assert (=> bm!589506 m!7419264))

(declare-fun m!7419266 () Bool)

(assert (=> b!6653018 m!7419266))

(assert (=> b!6653019 m!7418500))

(assert (=> b!6652224 d!2084755))

(declare-fun d!2084757 () Bool)

(assert (=> d!2084757 (= (flatMap!2020 z!1189 lambda!372738) (dynLambda!26187 lambda!372738 (h!72170 zl!343)))))

(declare-fun lt!2426212 () Unit!159541)

(assert (=> d!2084757 (= lt!2426212 (choose!49773 z!1189 (h!72170 zl!343) lambda!372738))))

(assert (=> d!2084757 (= z!1189 (store ((as const (Array Context!11798 Bool)) false) (h!72170 zl!343) true))))

(assert (=> d!2084757 (= (lemmaFlatMapOnSingletonSet!1546 z!1189 (h!72170 zl!343) lambda!372738) lt!2426212)))

(declare-fun b_lambda!251191 () Bool)

(assert (=> (not b_lambda!251191) (not d!2084757)))

(declare-fun bs!1713020 () Bool)

(assert (= bs!1713020 d!2084757))

(assert (=> bs!1713020 m!7418496))

(declare-fun m!7419268 () Bool)

(assert (=> bs!1713020 m!7419268))

(declare-fun m!7419270 () Bool)

(assert (=> bs!1713020 m!7419270))

(declare-fun m!7419272 () Bool)

(assert (=> bs!1713020 m!7419272))

(assert (=> b!6652224 d!2084757))

(declare-fun d!2084759 () Bool)

(declare-fun nullableFct!2430 (Regex!16515) Bool)

(assert (=> d!2084759 (= (nullable!6508 (h!72169 (exprs!6399 (h!72170 zl!343)))) (nullableFct!2430 (h!72169 (exprs!6399 (h!72170 zl!343)))))))

(declare-fun bs!1713022 () Bool)

(assert (= bs!1713022 d!2084759))

(declare-fun m!7419274 () Bool)

(assert (=> bs!1713022 m!7419274))

(assert (=> b!6652224 d!2084759))

(declare-fun b!6653022 () Bool)

(declare-fun e!4022706 () (InoxSet Context!11798))

(declare-fun call!589512 () (InoxSet Context!11798))

(assert (=> b!6653022 (= e!4022706 call!589512)))

(declare-fun bm!589507 () Bool)

(assert (=> bm!589507 (= call!589512 (derivationStepZipperDown!1763 (h!72169 (exprs!6399 lt!2425966)) (Context!11799 (t!379514 (exprs!6399 lt!2425966))) (h!72168 s!2326)))))

(declare-fun d!2084761 () Bool)

(declare-fun c!1228178 () Bool)

(declare-fun e!4022705 () Bool)

(assert (=> d!2084761 (= c!1228178 e!4022705)))

(declare-fun res!2726341 () Bool)

(assert (=> d!2084761 (=> (not res!2726341) (not e!4022705))))

(assert (=> d!2084761 (= res!2726341 ((_ is Cons!65721) (exprs!6399 lt!2425966)))))

(declare-fun e!4022707 () (InoxSet Context!11798))

(assert (=> d!2084761 (= (derivationStepZipperUp!1689 lt!2425966 (h!72168 s!2326)) e!4022707)))

(declare-fun b!6653023 () Bool)

(assert (=> b!6653023 (= e!4022707 ((_ map or) call!589512 (derivationStepZipperUp!1689 (Context!11799 (t!379514 (exprs!6399 lt!2425966))) (h!72168 s!2326))))))

(declare-fun b!6653024 () Bool)

(assert (=> b!6653024 (= e!4022705 (nullable!6508 (h!72169 (exprs!6399 lt!2425966))))))

(declare-fun b!6653025 () Bool)

(assert (=> b!6653025 (= e!4022707 e!4022706)))

(declare-fun c!1228179 () Bool)

(assert (=> b!6653025 (= c!1228179 ((_ is Cons!65721) (exprs!6399 lt!2425966)))))

(declare-fun b!6653026 () Bool)

(assert (=> b!6653026 (= e!4022706 ((as const (Array Context!11798 Bool)) false))))

(assert (= (and d!2084761 res!2726341) b!6653024))

(assert (= (and d!2084761 c!1228178) b!6653023))

(assert (= (and d!2084761 (not c!1228178)) b!6653025))

(assert (= (and b!6653025 c!1228179) b!6653022))

(assert (= (and b!6653025 (not c!1228179)) b!6653026))

(assert (= (or b!6653023 b!6653022) bm!589507))

(declare-fun m!7419276 () Bool)

(assert (=> bm!589507 m!7419276))

(declare-fun m!7419278 () Bool)

(assert (=> b!6653023 m!7419278))

(declare-fun m!7419280 () Bool)

(assert (=> b!6653024 m!7419280))

(assert (=> b!6652224 d!2084761))

(declare-fun d!2084763 () Bool)

(assert (=> d!2084763 (= (flatMap!2020 lt!2425980 lambda!372738) (choose!49778 lt!2425980 lambda!372738))))

(declare-fun bs!1713027 () Bool)

(assert (= bs!1713027 d!2084763))

(declare-fun m!7419282 () Bool)

(assert (=> bs!1713027 m!7419282))

(assert (=> b!6652224 d!2084763))

(declare-fun d!2084765 () Bool)

(assert (=> d!2084765 (= (flatMap!2020 lt!2425980 lambda!372738) (dynLambda!26187 lambda!372738 lt!2425966))))

(declare-fun lt!2426214 () Unit!159541)

(assert (=> d!2084765 (= lt!2426214 (choose!49773 lt!2425980 lt!2425966 lambda!372738))))

(assert (=> d!2084765 (= lt!2425980 (store ((as const (Array Context!11798 Bool)) false) lt!2425966 true))))

(assert (=> d!2084765 (= (lemmaFlatMapOnSingletonSet!1546 lt!2425980 lt!2425966 lambda!372738) lt!2426214)))

(declare-fun b_lambda!251193 () Bool)

(assert (=> (not b_lambda!251193) (not d!2084765)))

(declare-fun bs!1713030 () Bool)

(assert (= bs!1713030 d!2084765))

(assert (=> bs!1713030 m!7418492))

(declare-fun m!7419284 () Bool)

(assert (=> bs!1713030 m!7419284))

(declare-fun m!7419286 () Bool)

(assert (=> bs!1713030 m!7419286))

(assert (=> bs!1713030 m!7418342))

(assert (=> b!6652224 d!2084765))

(declare-fun d!2084767 () Bool)

(assert (=> d!2084767 (= (flatMap!2020 lt!2426050 lambda!372738) (choose!49778 lt!2426050 lambda!372738))))

(declare-fun bs!1713032 () Bool)

(assert (= bs!1713032 d!2084767))

(declare-fun m!7419288 () Bool)

(assert (=> bs!1713032 m!7419288))

(assert (=> b!6652210 d!2084767))

(declare-fun d!2084769 () Bool)

(assert (=> d!2084769 (= (flatMap!2020 (ite c!1227939 lt!2425910 lt!2426092) (ite c!1227939 lambda!372738 lambda!372738)) (dynLambda!26187 (ite c!1227939 lambda!372738 lambda!372738) (ite c!1227939 lt!2425969 lt!2425901)))))

(declare-fun lt!2426215 () Unit!159541)

(assert (=> d!2084769 (= lt!2426215 (choose!49773 (ite c!1227939 lt!2425910 lt!2426092) (ite c!1227939 lt!2425969 lt!2425901) (ite c!1227939 lambda!372738 lambda!372738)))))

(assert (=> d!2084769 (= (ite c!1227939 lt!2425910 lt!2426092) (store ((as const (Array Context!11798 Bool)) false) (ite c!1227939 lt!2425969 lt!2425901) true))))

(assert (=> d!2084769 (= (lemmaFlatMapOnSingletonSet!1546 (ite c!1227939 lt!2425910 lt!2426092) (ite c!1227939 lt!2425969 lt!2425901) (ite c!1227939 lambda!372738 lambda!372738)) lt!2426215)))

(declare-fun b_lambda!251195 () Bool)

(assert (=> (not b_lambda!251195) (not d!2084769)))

(declare-fun bs!1713036 () Bool)

(assert (= bs!1713036 d!2084769))

(declare-fun m!7419290 () Bool)

(assert (=> bs!1713036 m!7419290))

(declare-fun m!7419292 () Bool)

(assert (=> bs!1713036 m!7419292))

(declare-fun m!7419294 () Bool)

(assert (=> bs!1713036 m!7419294))

(declare-fun m!7419296 () Bool)

(assert (=> bs!1713036 m!7419296))

(assert (=> bm!589217 d!2084769))

(declare-fun d!2084771 () Bool)

(assert (=> d!2084771 (= (isEmpty!38032 (_1!36797 lt!2425896)) ((_ is Nil!65720) (_1!36797 lt!2425896)))))

(assert (=> b!6652196 d!2084771))

(declare-fun c!1228180 () Bool)

(declare-fun d!2084773 () Bool)

(assert (=> d!2084773 (= c!1228180 (isEmpty!38032 (ite (or c!1227933 c!1227937) (t!379513 s!2326) s!2326)))))

(declare-fun e!4022708 () Bool)

(assert (=> d!2084773 (= (matchZipper!2527 (ite c!1227933 lt!2425960 (ite c!1227937 ((_ map or) lt!2426007 lt!2425952) lt!2425910)) (ite (or c!1227933 c!1227937) (t!379513 s!2326) s!2326)) e!4022708)))

(declare-fun b!6653027 () Bool)

(assert (=> b!6653027 (= e!4022708 (nullableZipper!2255 (ite c!1227933 lt!2425960 (ite c!1227937 ((_ map or) lt!2426007 lt!2425952) lt!2425910))))))

(declare-fun b!6653028 () Bool)

(assert (=> b!6653028 (= e!4022708 (matchZipper!2527 (derivationStepZipper!2481 (ite c!1227933 lt!2425960 (ite c!1227937 ((_ map or) lt!2426007 lt!2425952) lt!2425910)) (head!13473 (ite (or c!1227933 c!1227937) (t!379513 s!2326) s!2326))) (tail!12558 (ite (or c!1227933 c!1227937) (t!379513 s!2326) s!2326))))))

(assert (= (and d!2084773 c!1228180) b!6653027))

(assert (= (and d!2084773 (not c!1228180)) b!6653028))

(declare-fun m!7419298 () Bool)

(assert (=> d!2084773 m!7419298))

(declare-fun m!7419300 () Bool)

(assert (=> b!6653027 m!7419300))

(declare-fun m!7419302 () Bool)

(assert (=> b!6653028 m!7419302))

(assert (=> b!6653028 m!7419302))

(declare-fun m!7419304 () Bool)

(assert (=> b!6653028 m!7419304))

(declare-fun m!7419306 () Bool)

(assert (=> b!6653028 m!7419306))

(assert (=> b!6653028 m!7419304))

(assert (=> b!6653028 m!7419306))

(declare-fun m!7419308 () Bool)

(assert (=> b!6653028 m!7419308))

(assert (=> bm!589369 d!2084773))

(declare-fun d!2084775 () Bool)

(assert (=> d!2084775 (= (Exists!3585 (ite c!1227939 lambda!372741 (ite c!1227934 lambda!372745 (ite c!1227941 lambda!372749 (ite c!1227938 lambda!372757 lambda!372762))))) (choose!49772 (ite c!1227939 lambda!372741 (ite c!1227934 lambda!372745 (ite c!1227941 lambda!372749 (ite c!1227938 lambda!372757 lambda!372762))))))))

(declare-fun bs!1713040 () Bool)

(assert (= bs!1713040 d!2084775))

(declare-fun m!7419310 () Bool)

(assert (=> bs!1713040 m!7419310))

(assert (=> bm!589262 d!2084775))

(declare-fun b!6653029 () Bool)

(declare-fun e!4022710 () Bool)

(assert (=> b!6653029 (= e!4022710 (matchR!8698 (derivativeStep!5195 (ite c!1227933 lt!2425959 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 (ite c!1227934 (Concat!25360 (regOne!33542 r!7292) lt!2425898) (ite (or c!1227941 c!1227938) lt!2425900 lt!2426033))))) (head!13473 (ite c!1227933 (t!379513 s!2326) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 lt!2425892 s!2326)))))) (tail!12558 (ite c!1227933 (t!379513 s!2326) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 lt!2425892 s!2326)))))))))

(declare-fun b!6653030 () Bool)

(declare-fun e!4022712 () Bool)

(assert (=> b!6653030 (= e!4022712 (not (= (head!13473 (ite c!1227933 (t!379513 s!2326) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 lt!2425892 s!2326))))) (c!1227945 (ite c!1227933 lt!2425959 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 (ite c!1227934 (Concat!25360 (regOne!33542 r!7292) lt!2425898) (ite (or c!1227941 c!1227938) lt!2425900 lt!2426033)))))))))))

(declare-fun b!6653031 () Bool)

(declare-fun e!4022709 () Bool)

(declare-fun lt!2426216 () Bool)

(assert (=> b!6653031 (= e!4022709 (not lt!2426216))))

(declare-fun b!6653032 () Bool)

(declare-fun e!4022714 () Bool)

(declare-fun call!589513 () Bool)

(assert (=> b!6653032 (= e!4022714 (= lt!2426216 call!589513))))

(declare-fun b!6653033 () Bool)

(assert (=> b!6653033 (= e!4022714 e!4022709)))

(declare-fun c!1228181 () Bool)

(assert (=> b!6653033 (= c!1228181 ((_ is EmptyLang!16515) (ite c!1227933 lt!2425959 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 (ite c!1227934 (Concat!25360 (regOne!33542 r!7292) lt!2425898) (ite (or c!1227941 c!1227938) lt!2425900 lt!2426033)))))))))

(declare-fun d!2084777 () Bool)

(assert (=> d!2084777 e!4022714))

(declare-fun c!1228183 () Bool)

(assert (=> d!2084777 (= c!1228183 ((_ is EmptyExpr!16515) (ite c!1227933 lt!2425959 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 (ite c!1227934 (Concat!25360 (regOne!33542 r!7292) lt!2425898) (ite (or c!1227941 c!1227938) lt!2425900 lt!2426033)))))))))

(assert (=> d!2084777 (= lt!2426216 e!4022710)))

(declare-fun c!1228182 () Bool)

(assert (=> d!2084777 (= c!1228182 (isEmpty!38032 (ite c!1227933 (t!379513 s!2326) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 lt!2425892 s!2326))))))))

(assert (=> d!2084777 (validRegex!8251 (ite c!1227933 lt!2425959 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 (ite c!1227934 (Concat!25360 (regOne!33542 r!7292) lt!2425898) (ite (or c!1227941 c!1227938) lt!2425900 lt!2426033))))))))

(assert (=> d!2084777 (= (matchR!8698 (ite c!1227933 lt!2425959 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 (ite c!1227934 (Concat!25360 (regOne!33542 r!7292) lt!2425898) (ite (or c!1227941 c!1227938) lt!2425900 lt!2426033))))) (ite c!1227933 (t!379513 s!2326) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 lt!2425892 s!2326))))) lt!2426216)))

(declare-fun b!6653034 () Bool)

(declare-fun res!2726344 () Bool)

(declare-fun e!4022711 () Bool)

(assert (=> b!6653034 (=> res!2726344 e!4022711)))

(assert (=> b!6653034 (= res!2726344 (not ((_ is ElementMatch!16515) (ite c!1227933 lt!2425959 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 (ite c!1227934 (Concat!25360 (regOne!33542 r!7292) lt!2425898) (ite (or c!1227941 c!1227938) lt!2425900 lt!2426033))))))))))

(assert (=> b!6653034 (= e!4022709 e!4022711)))

(declare-fun b!6653035 () Bool)

(assert (=> b!6653035 (= e!4022710 (nullable!6508 (ite c!1227933 lt!2425959 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 (ite c!1227934 (Concat!25360 (regOne!33542 r!7292) lt!2425898) (ite (or c!1227941 c!1227938) lt!2425900 lt!2426033)))))))))

(declare-fun bm!589508 () Bool)

(assert (=> bm!589508 (= call!589513 (isEmpty!38032 (ite c!1227933 (t!379513 s!2326) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 lt!2425892 s!2326))))))))

(declare-fun b!6653036 () Bool)

(declare-fun res!2726343 () Bool)

(assert (=> b!6653036 (=> res!2726343 e!4022711)))

(declare-fun e!4022713 () Bool)

(assert (=> b!6653036 (= res!2726343 e!4022713)))

(declare-fun res!2726346 () Bool)

(assert (=> b!6653036 (=> (not res!2726346) (not e!4022713))))

(assert (=> b!6653036 (= res!2726346 lt!2426216)))

(declare-fun b!6653037 () Bool)

(declare-fun e!4022715 () Bool)

(assert (=> b!6653037 (= e!4022711 e!4022715)))

(declare-fun res!2726342 () Bool)

(assert (=> b!6653037 (=> (not res!2726342) (not e!4022715))))

(assert (=> b!6653037 (= res!2726342 (not lt!2426216))))

(declare-fun b!6653038 () Bool)

(assert (=> b!6653038 (= e!4022715 e!4022712)))

(declare-fun res!2726349 () Bool)

(assert (=> b!6653038 (=> res!2726349 e!4022712)))

(assert (=> b!6653038 (= res!2726349 call!589513)))

(declare-fun b!6653039 () Bool)

(declare-fun res!2726348 () Bool)

(assert (=> b!6653039 (=> (not res!2726348) (not e!4022713))))

(assert (=> b!6653039 (= res!2726348 (isEmpty!38032 (tail!12558 (ite c!1227933 (t!379513 s!2326) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 lt!2425892 s!2326)))))))))

(declare-fun b!6653040 () Bool)

(assert (=> b!6653040 (= e!4022713 (= (head!13473 (ite c!1227933 (t!379513 s!2326) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 lt!2425892 s!2326))))) (c!1227945 (ite c!1227933 lt!2425959 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 (ite c!1227934 (Concat!25360 (regOne!33542 r!7292) lt!2425898) (ite (or c!1227941 c!1227938) lt!2425900 lt!2426033))))))))))

(declare-fun b!6653041 () Bool)

(declare-fun res!2726345 () Bool)

(assert (=> b!6653041 (=> (not res!2726345) (not e!4022713))))

(assert (=> b!6653041 (= res!2726345 (not call!589513))))

(declare-fun b!6653042 () Bool)

(declare-fun res!2726347 () Bool)

(assert (=> b!6653042 (=> res!2726347 e!4022712)))

(assert (=> b!6653042 (= res!2726347 (not (isEmpty!38032 (tail!12558 (ite c!1227933 (t!379513 s!2326) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 lt!2425892 s!2326))))))))))

(assert (= (and d!2084777 c!1228182) b!6653035))

(assert (= (and d!2084777 (not c!1228182)) b!6653029))

(assert (= (and d!2084777 c!1228183) b!6653032))

(assert (= (and d!2084777 (not c!1228183)) b!6653033))

(assert (= (and b!6653033 c!1228181) b!6653031))

(assert (= (and b!6653033 (not c!1228181)) b!6653034))

(assert (= (and b!6653034 (not res!2726344)) b!6653036))

(assert (= (and b!6653036 res!2726346) b!6653041))

(assert (= (and b!6653041 res!2726345) b!6653039))

(assert (= (and b!6653039 res!2726348) b!6653040))

(assert (= (and b!6653036 (not res!2726343)) b!6653037))

(assert (= (and b!6653037 res!2726342) b!6653038))

(assert (= (and b!6653038 (not res!2726349)) b!6653042))

(assert (= (and b!6653042 (not res!2726347)) b!6653030))

(assert (= (or b!6653032 b!6653038 b!6653041) bm!589508))

(declare-fun m!7419312 () Bool)

(assert (=> d!2084777 m!7419312))

(declare-fun m!7419314 () Bool)

(assert (=> d!2084777 m!7419314))

(declare-fun m!7419316 () Bool)

(assert (=> b!6653035 m!7419316))

(declare-fun m!7419318 () Bool)

(assert (=> b!6653029 m!7419318))

(assert (=> b!6653029 m!7419318))

(declare-fun m!7419320 () Bool)

(assert (=> b!6653029 m!7419320))

(declare-fun m!7419322 () Bool)

(assert (=> b!6653029 m!7419322))

(assert (=> b!6653029 m!7419320))

(assert (=> b!6653029 m!7419322))

(declare-fun m!7419324 () Bool)

(assert (=> b!6653029 m!7419324))

(assert (=> b!6653040 m!7419318))

(assert (=> b!6653042 m!7419322))

(assert (=> b!6653042 m!7419322))

(declare-fun m!7419326 () Bool)

(assert (=> b!6653042 m!7419326))

(assert (=> b!6653030 m!7419318))

(assert (=> b!6653039 m!7419322))

(assert (=> b!6653039 m!7419322))

(assert (=> b!6653039 m!7419326))

(assert (=> bm!589508 m!7419312))

(assert (=> bm!589221 d!2084777))

(declare-fun d!2084779 () Bool)

(assert (=> d!2084779 (= (flatMap!2020 (ite c!1227934 lt!2425907 (ite c!1227941 lt!2426039 lt!2425981)) (ite c!1227934 lambda!372738 (ite c!1227941 lambda!372738 lambda!372738))) (dynLambda!26187 (ite c!1227934 lambda!372738 (ite c!1227941 lambda!372738 lambda!372738)) (ite c!1227934 lt!2426021 lt!2425966)))))

(declare-fun lt!2426217 () Unit!159541)

(assert (=> d!2084779 (= lt!2426217 (choose!49773 (ite c!1227934 lt!2425907 (ite c!1227941 lt!2426039 lt!2425981)) (ite c!1227934 lt!2426021 lt!2425966) (ite c!1227934 lambda!372738 (ite c!1227941 lambda!372738 lambda!372738))))))

(assert (=> d!2084779 (= (ite c!1227934 lt!2425907 (ite c!1227941 lt!2426039 lt!2425981)) (store ((as const (Array Context!11798 Bool)) false) (ite c!1227934 lt!2426021 lt!2425966) true))))

(assert (=> d!2084779 (= (lemmaFlatMapOnSingletonSet!1546 (ite c!1227934 lt!2425907 (ite c!1227941 lt!2426039 lt!2425981)) (ite c!1227934 lt!2426021 lt!2425966) (ite c!1227934 lambda!372738 (ite c!1227941 lambda!372738 lambda!372738))) lt!2426217)))

(declare-fun b_lambda!251197 () Bool)

(assert (=> (not b_lambda!251197) (not d!2084779)))

(declare-fun bs!1713042 () Bool)

(assert (= bs!1713042 d!2084779))

(declare-fun m!7419328 () Bool)

(assert (=> bs!1713042 m!7419328))

(declare-fun m!7419330 () Bool)

(assert (=> bs!1713042 m!7419330))

(declare-fun m!7419332 () Bool)

(assert (=> bs!1713042 m!7419332))

(declare-fun m!7419334 () Bool)

(assert (=> bs!1713042 m!7419334))

(assert (=> bm!589171 d!2084779))

(declare-fun d!2084781 () Bool)

(assert (=> d!2084781 (= (get!22854 (ite c!1227941 lt!2425990 lt!2425929)) (v!52600 (ite c!1227941 lt!2425990 lt!2425929)))))

(assert (=> bm!589329 d!2084781))

(assert (=> bm!589366 d!2084761))

(declare-fun d!2084783 () Bool)

(assert (=> d!2084783 (= (matchR!8698 (Concat!25360 (Union!16515 (regOne!33543 (regOne!33542 r!7292)) (regTwo!33543 (regOne!33542 r!7292))) (regTwo!33542 r!7292)) s!2326) (matchR!8698 (Union!16515 (Concat!25360 (regOne!33543 (regOne!33542 r!7292)) (regTwo!33542 r!7292)) (Concat!25360 (regTwo!33543 (regOne!33542 r!7292)) (regTwo!33542 r!7292))) s!2326))))

(declare-fun lt!2426221 () Unit!159541)

(declare-fun choose!49780 (Regex!16515 Regex!16515 Regex!16515 List!65844) Unit!159541)

(assert (=> d!2084783 (= lt!2426221 (choose!49780 (regOne!33543 (regOne!33542 r!7292)) (regTwo!33543 (regOne!33542 r!7292)) (regTwo!33542 r!7292) s!2326))))

(assert (=> d!2084783 (validRegex!8251 (regOne!33543 (regOne!33542 r!7292)))))

(assert (=> d!2084783 (= (lemmaConcatDistributesInUnion!62 (regOne!33543 (regOne!33542 r!7292)) (regTwo!33543 (regOne!33542 r!7292)) (regTwo!33542 r!7292) s!2326) lt!2426221)))

(declare-fun bs!1713045 () Bool)

(assert (= bs!1713045 d!2084783))

(declare-fun m!7419352 () Bool)

(assert (=> bs!1713045 m!7419352))

(declare-fun m!7419354 () Bool)

(assert (=> bs!1713045 m!7419354))

(declare-fun m!7419356 () Bool)

(assert (=> bs!1713045 m!7419356))

(declare-fun m!7419358 () Bool)

(assert (=> bs!1713045 m!7419358))

(assert (=> b!6652239 d!2084783))

(declare-fun d!2084789 () Bool)

(assert (=> d!2084789 (= (matchR!8698 lt!2425949 s!2326) (matchRSpec!3616 lt!2425949 s!2326))))

(declare-fun lt!2426222 () Unit!159541)

(assert (=> d!2084789 (= lt!2426222 (choose!49777 lt!2425949 s!2326))))

(assert (=> d!2084789 (validRegex!8251 lt!2425949)))

(assert (=> d!2084789 (= (mainMatchTheorem!3616 lt!2425949 s!2326) lt!2426222)))

(declare-fun bs!1713046 () Bool)

(assert (= bs!1713046 d!2084789))

(declare-fun m!7419360 () Bool)

(assert (=> bs!1713046 m!7419360))

(declare-fun m!7419362 () Bool)

(assert (=> bs!1713046 m!7419362))

(declare-fun m!7419364 () Bool)

(assert (=> bs!1713046 m!7419364))

(declare-fun m!7419366 () Bool)

(assert (=> bs!1713046 m!7419366))

(assert (=> b!6652239 d!2084789))

(declare-fun d!2084791 () Bool)

(declare-fun c!1228184 () Bool)

(assert (=> d!2084791 (= c!1228184 (isEmpty!38032 s!2326))))

(declare-fun e!4022716 () Bool)

(assert (=> d!2084791 (= (matchZipper!2527 lt!2426013 s!2326) e!4022716)))

(declare-fun b!6653043 () Bool)

(assert (=> b!6653043 (= e!4022716 (nullableZipper!2255 lt!2426013))))

(declare-fun b!6653044 () Bool)

(assert (=> b!6653044 (= e!4022716 (matchZipper!2527 (derivationStepZipper!2481 lt!2426013 (head!13473 s!2326)) (tail!12558 s!2326)))))

(assert (= (and d!2084791 c!1228184) b!6653043))

(assert (= (and d!2084791 (not c!1228184)) b!6653044))

(assert (=> d!2084791 m!7419040))

(declare-fun m!7419368 () Bool)

(assert (=> b!6653043 m!7419368))

(assert (=> b!6653044 m!7419056))

(assert (=> b!6653044 m!7419056))

(declare-fun m!7419370 () Bool)

(assert (=> b!6653044 m!7419370))

(assert (=> b!6653044 m!7419060))

(assert (=> b!6653044 m!7419370))

(assert (=> b!6653044 m!7419060))

(declare-fun m!7419372 () Bool)

(assert (=> b!6653044 m!7419372))

(assert (=> b!6652239 d!2084791))

(declare-fun bs!1713047 () Bool)

(declare-fun b!6653051 () Bool)

(assert (= bs!1713047 (and b!6653051 d!2084621)))

(declare-fun lambda!372822 () Int)

(assert (=> bs!1713047 (not (= lambda!372822 lambda!372789))))

(declare-fun bs!1713048 () Bool)

(assert (= bs!1713048 (and b!6653051 b!6652222)))

(assert (=> bs!1713048 (not (= lambda!372822 lambda!372758))))

(declare-fun bs!1713049 () Bool)

(assert (= bs!1713049 (and b!6653051 b!6652208)))

(assert (=> bs!1713049 (not (= lambda!372822 lambda!372761))))

(declare-fun bs!1713050 () Bool)

(assert (= bs!1713050 (and b!6653051 b!6652251)))

(assert (=> bs!1713050 (not (= lambda!372822 lambda!372746))))

(declare-fun bs!1713051 () Bool)

(assert (= bs!1713051 (and b!6653051 b!6652829)))

(assert (=> bs!1713051 (= (and (= (reg!16844 lt!2425903) (reg!16844 r!7292)) (= lt!2425903 r!7292)) (= lambda!372822 lambda!372803))))

(assert (=> bs!1713050 (not (= lambda!372822 lambda!372745))))

(declare-fun bs!1713052 () Bool)

(assert (= bs!1713052 (and b!6653051 b!6652192)))

(assert (=> bs!1713052 (not (= lambda!372822 lambda!372751))))

(declare-fun bs!1713053 () Bool)

(assert (= bs!1713053 (and b!6653051 b!6652196)))

(assert (=> bs!1713053 (not (= lambda!372822 lambda!372747))))

(declare-fun bs!1713054 () Bool)

(assert (= bs!1713054 (and b!6653051 b!6652250)))

(assert (=> bs!1713054 (not (= lambda!372822 lambda!372739))))

(declare-fun bs!1713055 () Bool)

(assert (= bs!1713055 (and b!6653051 b!6652830)))

(assert (=> bs!1713055 (not (= lambda!372822 lambda!372805))))

(assert (=> bs!1713050 (not (= lambda!372822 lambda!372744))))

(assert (=> bs!1713048 (not (= lambda!372822 lambda!372757))))

(assert (=> bs!1713052 (= (and (= s!2326 (_1!36797 lt!2425896)) (= (reg!16844 lt!2425903) (reg!16844 (regOne!33542 r!7292))) (= lt!2425903 lt!2425900)) (= lambda!372822 lambda!372750))))

(assert (=> bs!1713054 (not (= lambda!372822 lambda!372742))))

(assert (=> bs!1713050 (not (= lambda!372822 lambda!372743))))

(assert (=> bs!1713049 (= (and (= s!2326 Nil!65720) (= (reg!16844 lt!2425903) (reg!16844 (regOne!33542 r!7292))) (= lt!2425903 lt!2425900)) (= lambda!372822 lambda!372762))))

(assert (=> bs!1713049 (not (= lambda!372822 lambda!372760))))

(assert (=> bs!1713047 (not (= lambda!372822 lambda!372791))))

(assert (=> bs!1713048 (not (= lambda!372822 lambda!372756))))

(declare-fun bs!1713056 () Bool)

(assert (= bs!1713056 (and b!6653051 b!6652194)))

(assert (=> bs!1713056 (not (= lambda!372822 lambda!372737))))

(assert (=> bs!1713053 (not (= lambda!372822 lambda!372748))))

(assert (=> bs!1713048 (= (and (= s!2326 (_1!36797 lt!2425939)) (= (reg!16844 lt!2425903) (reg!16844 (regOne!33542 r!7292))) (= lt!2425903 lt!2425900)) (= lambda!372822 lambda!372759))))

(assert (=> bs!1713054 (not (= lambda!372822 lambda!372740))))

(assert (=> bs!1713052 (not (= lambda!372822 lambda!372749))))

(assert (=> bs!1713054 (not (= lambda!372822 lambda!372741))))

(assert (=> bs!1713048 (not (= lambda!372822 lambda!372755))))

(assert (=> bs!1713056 (not (= lambda!372822 lambda!372736))))

(assert (=> b!6653051 true))

(assert (=> b!6653051 true))

(declare-fun bs!1713057 () Bool)

(declare-fun b!6653052 () Bool)

(assert (= bs!1713057 (and b!6653052 d!2084621)))

(declare-fun lambda!372823 () Int)

(assert (=> bs!1713057 (not (= lambda!372823 lambda!372789))))

(declare-fun bs!1713058 () Bool)

(assert (= bs!1713058 (and b!6653052 b!6652222)))

(assert (=> bs!1713058 (= (and (= s!2326 (_1!36797 lt!2425939)) (= (regOne!33542 lt!2425903) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 lt!2425903) lt!2425900)) (= lambda!372823 lambda!372758))))

(declare-fun bs!1713059 () Bool)

(assert (= bs!1713059 (and b!6653052 b!6652208)))

(assert (=> bs!1713059 (= (and (= s!2326 Nil!65720) (= (regOne!33542 lt!2425903) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 lt!2425903) lt!2425900)) (= lambda!372823 lambda!372761))))

(declare-fun bs!1713060 () Bool)

(assert (= bs!1713060 (and b!6653052 b!6652251)))

(assert (=> bs!1713060 (= (and (= (regOne!33542 lt!2425903) (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 lt!2425903) lt!2425898)) (= lambda!372823 lambda!372746))))

(declare-fun bs!1713061 () Bool)

(assert (= bs!1713061 (and b!6653052 b!6652829)))

(assert (=> bs!1713061 (not (= lambda!372823 lambda!372803))))

(assert (=> bs!1713060 (not (= lambda!372823 lambda!372745))))

(declare-fun bs!1713062 () Bool)

(assert (= bs!1713062 (and b!6653052 b!6652192)))

(assert (=> bs!1713062 (= (and (= s!2326 (_1!36797 lt!2425896)) (= (regOne!33542 lt!2425903) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 lt!2425903) lt!2425900)) (= lambda!372823 lambda!372751))))

(declare-fun bs!1713063 () Bool)

(assert (= bs!1713063 (and b!6653052 b!6652196)))

(assert (=> bs!1713063 (not (= lambda!372823 lambda!372747))))

(declare-fun bs!1713064 () Bool)

(assert (= bs!1713064 (and b!6653052 b!6652250)))

(assert (=> bs!1713064 (not (= lambda!372823 lambda!372739))))

(declare-fun bs!1713065 () Bool)

(assert (= bs!1713065 (and b!6653052 b!6652830)))

(assert (=> bs!1713065 (= (and (= (regOne!33542 lt!2425903) (regOne!33542 r!7292)) (= (regTwo!33542 lt!2425903) (regTwo!33542 r!7292))) (= lambda!372823 lambda!372805))))

(assert (=> bs!1713060 (= (and (= (regOne!33542 lt!2425903) (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 lt!2425903) lt!2425950)) (= lambda!372823 lambda!372744))))

(assert (=> bs!1713058 (not (= lambda!372823 lambda!372757))))

(assert (=> bs!1713062 (not (= lambda!372823 lambda!372750))))

(assert (=> bs!1713064 (= (and (= (regOne!33542 lt!2425903) (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 lt!2425903) lt!2426072)) (= lambda!372823 lambda!372742))))

(assert (=> bs!1713060 (not (= lambda!372823 lambda!372743))))

(assert (=> bs!1713059 (not (= lambda!372823 lambda!372762))))

(assert (=> bs!1713059 (not (= lambda!372823 lambda!372760))))

(assert (=> bs!1713057 (= (and (= s!2326 (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)))) (= (regOne!33542 lt!2425903) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292))))))) (= (regTwo!33542 lt!2425903) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))))) (= lambda!372823 lambda!372791))))

(declare-fun bs!1713066 () Bool)

(assert (= bs!1713066 (and b!6653052 b!6653051)))

(assert (=> bs!1713066 (not (= lambda!372823 lambda!372822))))

(assert (=> bs!1713058 (= (and (= (regOne!33542 lt!2425903) lt!2426074) (= (regTwo!33542 lt!2425903) (regTwo!33542 r!7292))) (= lambda!372823 lambda!372756))))

(declare-fun bs!1713067 () Bool)

(assert (= bs!1713067 (and b!6653052 b!6652194)))

(assert (=> bs!1713067 (= (and (= (regOne!33542 lt!2425903) (regOne!33542 r!7292)) (= (regTwo!33542 lt!2425903) (regTwo!33542 r!7292))) (= lambda!372823 lambda!372737))))

(assert (=> bs!1713063 (= (and (= (regOne!33542 lt!2425903) lt!2425900) (= (regTwo!33542 lt!2425903) (regTwo!33542 r!7292))) (= lambda!372823 lambda!372748))))

(assert (=> bs!1713058 (not (= lambda!372823 lambda!372759))))

(assert (=> bs!1713064 (= (and (= (regOne!33542 lt!2425903) (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 lt!2425903) lt!2425943)) (= lambda!372823 lambda!372740))))

(assert (=> bs!1713062 (not (= lambda!372823 lambda!372749))))

(assert (=> bs!1713064 (not (= lambda!372823 lambda!372741))))

(assert (=> bs!1713058 (not (= lambda!372823 lambda!372755))))

(assert (=> bs!1713067 (not (= lambda!372823 lambda!372736))))

(assert (=> b!6653052 true))

(assert (=> b!6653052 true))

(declare-fun bm!589509 () Bool)

(declare-fun call!589515 () Bool)

(assert (=> bm!589509 (= call!589515 (isEmpty!38032 s!2326))))

(declare-fun b!6653045 () Bool)

(declare-fun c!1228188 () Bool)

(assert (=> b!6653045 (= c!1228188 ((_ is ElementMatch!16515) lt!2425903))))

(declare-fun e!4022723 () Bool)

(declare-fun e!4022721 () Bool)

(assert (=> b!6653045 (= e!4022723 e!4022721)))

(declare-fun c!1228187 () Bool)

(declare-fun call!589514 () Bool)

(declare-fun bm!589510 () Bool)

(assert (=> bm!589510 (= call!589514 (Exists!3585 (ite c!1228187 lambda!372822 lambda!372823)))))

(declare-fun b!6653046 () Bool)

(declare-fun e!4022719 () Bool)

(assert (=> b!6653046 (= e!4022719 call!589515)))

(declare-fun b!6653047 () Bool)

(declare-fun e!4022718 () Bool)

(assert (=> b!6653047 (= e!4022718 (matchRSpec!3616 (regTwo!33543 lt!2425903) s!2326))))

(declare-fun b!6653048 () Bool)

(assert (=> b!6653048 (= e!4022721 (= s!2326 (Cons!65720 (c!1227945 lt!2425903) Nil!65720)))))

(declare-fun b!6653049 () Bool)

(assert (=> b!6653049 (= e!4022719 e!4022723)))

(declare-fun res!2726351 () Bool)

(assert (=> b!6653049 (= res!2726351 (not ((_ is EmptyLang!16515) lt!2425903)))))

(assert (=> b!6653049 (=> (not res!2726351) (not e!4022723))))

(declare-fun b!6653050 () Bool)

(declare-fun c!1228185 () Bool)

(assert (=> b!6653050 (= c!1228185 ((_ is Union!16515) lt!2425903))))

(declare-fun e!4022720 () Bool)

(assert (=> b!6653050 (= e!4022721 e!4022720)))

(declare-fun e!4022722 () Bool)

(assert (=> b!6653051 (= e!4022722 call!589514)))

(declare-fun d!2084793 () Bool)

(declare-fun c!1228186 () Bool)

(assert (=> d!2084793 (= c!1228186 ((_ is EmptyExpr!16515) lt!2425903))))

(assert (=> d!2084793 (= (matchRSpec!3616 lt!2425903 s!2326) e!4022719)))

(declare-fun e!4022717 () Bool)

(assert (=> b!6653052 (= e!4022717 call!589514)))

(declare-fun b!6653053 () Bool)

(assert (=> b!6653053 (= e!4022720 e!4022718)))

(declare-fun res!2726352 () Bool)

(assert (=> b!6653053 (= res!2726352 (matchRSpec!3616 (regOne!33543 lt!2425903) s!2326))))

(assert (=> b!6653053 (=> res!2726352 e!4022718)))

(declare-fun b!6653054 () Bool)

(declare-fun res!2726350 () Bool)

(assert (=> b!6653054 (=> res!2726350 e!4022722)))

(assert (=> b!6653054 (= res!2726350 call!589515)))

(assert (=> b!6653054 (= e!4022717 e!4022722)))

(declare-fun b!6653055 () Bool)

(assert (=> b!6653055 (= e!4022720 e!4022717)))

(assert (=> b!6653055 (= c!1228187 ((_ is Star!16515) lt!2425903))))

(assert (= (and d!2084793 c!1228186) b!6653046))

(assert (= (and d!2084793 (not c!1228186)) b!6653049))

(assert (= (and b!6653049 res!2726351) b!6653045))

(assert (= (and b!6653045 c!1228188) b!6653048))

(assert (= (and b!6653045 (not c!1228188)) b!6653050))

(assert (= (and b!6653050 c!1228185) b!6653053))

(assert (= (and b!6653050 (not c!1228185)) b!6653055))

(assert (= (and b!6653053 (not res!2726352)) b!6653047))

(assert (= (and b!6653055 c!1228187) b!6653054))

(assert (= (and b!6653055 (not c!1228187)) b!6653052))

(assert (= (and b!6653054 (not res!2726350)) b!6653051))

(assert (= (or b!6653051 b!6653052) bm!589510))

(assert (= (or b!6653046 b!6653054) bm!589509))

(assert (=> bm!589509 m!7419040))

(declare-fun m!7419374 () Bool)

(assert (=> bm!589510 m!7419374))

(declare-fun m!7419376 () Bool)

(assert (=> b!6653047 m!7419376))

(declare-fun m!7419378 () Bool)

(assert (=> b!6653053 m!7419378))

(assert (=> b!6652239 d!2084793))

(declare-fun d!2084795 () Bool)

(assert (=> d!2084795 (= (nullable!6508 (regOne!33543 (regOne!33542 r!7292))) (nullableFct!2430 (regOne!33543 (regOne!33542 r!7292))))))

(declare-fun bs!1713068 () Bool)

(assert (= bs!1713068 d!2084795))

(declare-fun m!7419380 () Bool)

(assert (=> bs!1713068 m!7419380))

(assert (=> b!6652239 d!2084795))

(declare-fun d!2084797 () Bool)

(assert (=> d!2084797 (= (Exists!3585 (ite c!1227939 lambda!372739 (ite c!1227941 lambda!372749 (ite c!1227938 lambda!372759 lambda!372760)))) (choose!49772 (ite c!1227939 lambda!372739 (ite c!1227941 lambda!372749 (ite c!1227938 lambda!372759 lambda!372760)))))))

(declare-fun bs!1713069 () Bool)

(assert (= bs!1713069 d!2084797))

(declare-fun m!7419382 () Bool)

(assert (=> bs!1713069 m!7419382))

(assert (=> bm!589284 d!2084797))

(declare-fun d!2084799 () Bool)

(declare-fun c!1228203 () Bool)

(assert (=> d!2084799 (= c!1228203 (isEmpty!38032 (ite (or c!1227937 c!1227939) (t!379513 s!2326) (ite c!1227943 (ite c!1227941 lt!2425940 s!2326) (t!379513 s!2326)))))))

(declare-fun e!4022744 () Bool)

(assert (=> d!2084799 (= (matchZipper!2527 (ite c!1227937 lt!2426007 (ite c!1227939 lt!2426055 (ite c!1227943 (ite c!1227941 lt!2426050 z!1189) lt!2426042))) (ite (or c!1227937 c!1227939) (t!379513 s!2326) (ite c!1227943 (ite c!1227941 lt!2425940 s!2326) (t!379513 s!2326)))) e!4022744)))

(declare-fun b!6653090 () Bool)

(assert (=> b!6653090 (= e!4022744 (nullableZipper!2255 (ite c!1227937 lt!2426007 (ite c!1227939 lt!2426055 (ite c!1227943 (ite c!1227941 lt!2426050 z!1189) lt!2426042)))))))

(declare-fun b!6653091 () Bool)

(assert (=> b!6653091 (= e!4022744 (matchZipper!2527 (derivationStepZipper!2481 (ite c!1227937 lt!2426007 (ite c!1227939 lt!2426055 (ite c!1227943 (ite c!1227941 lt!2426050 z!1189) lt!2426042))) (head!13473 (ite (or c!1227937 c!1227939) (t!379513 s!2326) (ite c!1227943 (ite c!1227941 lt!2425940 s!2326) (t!379513 s!2326))))) (tail!12558 (ite (or c!1227937 c!1227939) (t!379513 s!2326) (ite c!1227943 (ite c!1227941 lt!2425940 s!2326) (t!379513 s!2326))))))))

(assert (= (and d!2084799 c!1228203) b!6653090))

(assert (= (and d!2084799 (not c!1228203)) b!6653091))

(declare-fun m!7419384 () Bool)

(assert (=> d!2084799 m!7419384))

(declare-fun m!7419386 () Bool)

(assert (=> b!6653090 m!7419386))

(declare-fun m!7419388 () Bool)

(assert (=> b!6653091 m!7419388))

(assert (=> b!6653091 m!7419388))

(declare-fun m!7419390 () Bool)

(assert (=> b!6653091 m!7419390))

(declare-fun m!7419392 () Bool)

(assert (=> b!6653091 m!7419392))

(assert (=> b!6653091 m!7419390))

(assert (=> b!6653091 m!7419392))

(declare-fun m!7419394 () Bool)

(assert (=> b!6653091 m!7419394))

(assert (=> bm!589266 d!2084799))

(declare-fun bs!1713070 () Bool)

(declare-fun d!2084801 () Bool)

(assert (= bs!1713070 (and d!2084801 b!6652192)))

(declare-fun lambda!372824 () Int)

(assert (=> bs!1713070 (= lambda!372824 lambda!372752)))

(declare-fun bs!1713071 () Bool)

(assert (= bs!1713071 (and d!2084801 b!6652222)))

(assert (=> bs!1713071 (= lambda!372824 lambda!372754)))

(declare-fun bs!1713072 () Bool)

(assert (= bs!1713072 (and d!2084801 d!2084599)))

(assert (=> bs!1713072 (= lambda!372824 lambda!372768)))

(declare-fun bs!1713073 () Bool)

(assert (= bs!1713073 (and d!2084801 d!2084613)))

(assert (=> bs!1713073 (= lambda!372824 lambda!372780)))

(declare-fun b!6653092 () Bool)

(declare-fun e!4022745 () Regex!16515)

(assert (=> b!6653092 (= e!4022745 EmptyExpr!16515)))

(declare-fun b!6653093 () Bool)

(declare-fun e!4022749 () Bool)

(assert (=> b!6653093 (= e!4022749 (isEmpty!38034 (t!379514 (exprs!6399 (h!72170 zl!343)))))))

(declare-fun b!6653094 () Bool)

(declare-fun e!4022750 () Bool)

(declare-fun e!4022747 () Bool)

(assert (=> b!6653094 (= e!4022750 e!4022747)))

(declare-fun c!1228207 () Bool)

(assert (=> b!6653094 (= c!1228207 (isEmpty!38034 (tail!12559 (exprs!6399 (h!72170 zl!343)))))))

(declare-fun b!6653095 () Bool)

(declare-fun lt!2426225 () Regex!16515)

(assert (=> b!6653095 (= e!4022747 (= lt!2426225 (head!13474 (exprs!6399 (h!72170 zl!343)))))))

(declare-fun b!6653096 () Bool)

(declare-fun e!4022746 () Regex!16515)

(assert (=> b!6653096 (= e!4022746 (h!72169 (exprs!6399 (h!72170 zl!343))))))

(declare-fun b!6653097 () Bool)

(assert (=> b!6653097 (= e!4022746 e!4022745)))

(declare-fun c!1228204 () Bool)

(assert (=> b!6653097 (= c!1228204 ((_ is Cons!65721) (exprs!6399 (h!72170 zl!343))))))

(declare-fun b!6653098 () Bool)

(assert (=> b!6653098 (= e!4022745 (Concat!25360 (h!72169 (exprs!6399 (h!72170 zl!343))) (generalisedConcat!2112 (t!379514 (exprs!6399 (h!72170 zl!343))))))))

(declare-fun b!6653099 () Bool)

(declare-fun e!4022748 () Bool)

(assert (=> b!6653099 (= e!4022748 e!4022750)))

(declare-fun c!1228205 () Bool)

(assert (=> b!6653099 (= c!1228205 (isEmpty!38034 (exprs!6399 (h!72170 zl!343))))))

(declare-fun b!6653100 () Bool)

(assert (=> b!6653100 (= e!4022747 (isConcat!1412 lt!2426225))))

(assert (=> d!2084801 e!4022748))

(declare-fun res!2726359 () Bool)

(assert (=> d!2084801 (=> (not res!2726359) (not e!4022748))))

(assert (=> d!2084801 (= res!2726359 (validRegex!8251 lt!2426225))))

(assert (=> d!2084801 (= lt!2426225 e!4022746)))

(declare-fun c!1228206 () Bool)

(assert (=> d!2084801 (= c!1228206 e!4022749)))

(declare-fun res!2726360 () Bool)

(assert (=> d!2084801 (=> (not res!2726360) (not e!4022749))))

(assert (=> d!2084801 (= res!2726360 ((_ is Cons!65721) (exprs!6399 (h!72170 zl!343))))))

(assert (=> d!2084801 (forall!15713 (exprs!6399 (h!72170 zl!343)) lambda!372824)))

(assert (=> d!2084801 (= (generalisedConcat!2112 (exprs!6399 (h!72170 zl!343))) lt!2426225)))

(declare-fun b!6653101 () Bool)

(assert (=> b!6653101 (= e!4022750 (isEmptyExpr!1889 lt!2426225))))

(assert (= (and d!2084801 res!2726360) b!6653093))

(assert (= (and d!2084801 c!1228206) b!6653096))

(assert (= (and d!2084801 (not c!1228206)) b!6653097))

(assert (= (and b!6653097 c!1228204) b!6653098))

(assert (= (and b!6653097 (not c!1228204)) b!6653092))

(assert (= (and d!2084801 res!2726359) b!6653099))

(assert (= (and b!6653099 c!1228205) b!6653101))

(assert (= (and b!6653099 (not c!1228205)) b!6653094))

(assert (= (and b!6653094 c!1228207) b!6653095))

(assert (= (and b!6653094 (not c!1228207)) b!6653100))

(declare-fun m!7419396 () Bool)

(assert (=> d!2084801 m!7419396))

(declare-fun m!7419398 () Bool)

(assert (=> d!2084801 m!7419398))

(declare-fun m!7419400 () Bool)

(assert (=> b!6653101 m!7419400))

(declare-fun m!7419402 () Bool)

(assert (=> b!6653095 m!7419402))

(assert (=> b!6653098 m!7418446))

(declare-fun m!7419406 () Bool)

(assert (=> b!6653099 m!7419406))

(assert (=> b!6653093 m!7418524))

(declare-fun m!7419410 () Bool)

(assert (=> b!6653100 m!7419410))

(declare-fun m!7419412 () Bool)

(assert (=> b!6653094 m!7419412))

(assert (=> b!6653094 m!7419412))

(declare-fun m!7419416 () Bool)

(assert (=> b!6653094 m!7419416))

(assert (=> b!6652221 d!2084801))

(declare-fun e!4022782 () Bool)

(declare-fun b!6653159 () Bool)

(declare-fun lt!2426231 () List!65844)

(assert (=> b!6653159 (= e!4022782 (or (not (= (ite c!1227941 (_2!36797 lt!2425896) (ite c!1227938 (_2!36797 lt!2425939) s!2326)) Nil!65720)) (= lt!2426231 (ite c!1227941 (_2!36797 lt!2426051) (ite c!1227938 lt!2425892 Nil!65720)))))))

(declare-fun e!4022783 () List!65844)

(declare-fun b!6653156 () Bool)

(assert (=> b!6653156 (= e!4022783 (ite c!1227941 (_2!36797 lt!2425896) (ite c!1227938 (_2!36797 lt!2425939) s!2326)))))

(declare-fun b!6653158 () Bool)

(declare-fun res!2726374 () Bool)

(assert (=> b!6653158 (=> (not res!2726374) (not e!4022782))))

(declare-fun size!40574 (List!65844) Int)

(assert (=> b!6653158 (= res!2726374 (= (size!40574 lt!2426231) (+ (size!40574 (ite c!1227941 (_2!36797 lt!2426051) (ite c!1227938 lt!2425892 Nil!65720))) (size!40574 (ite c!1227941 (_2!36797 lt!2425896) (ite c!1227938 (_2!36797 lt!2425939) s!2326))))))))

(declare-fun b!6653157 () Bool)

(assert (=> b!6653157 (= e!4022783 (Cons!65720 (h!72168 (ite c!1227941 (_2!36797 lt!2426051) (ite c!1227938 lt!2425892 Nil!65720))) (++!14672 (t!379513 (ite c!1227941 (_2!36797 lt!2426051) (ite c!1227938 lt!2425892 Nil!65720))) (ite c!1227941 (_2!36797 lt!2425896) (ite c!1227938 (_2!36797 lt!2425939) s!2326)))))))

(declare-fun d!2084803 () Bool)

(assert (=> d!2084803 e!4022782))

(declare-fun res!2726373 () Bool)

(assert (=> d!2084803 (=> (not res!2726373) (not e!4022782))))

(declare-fun content!12718 (List!65844) (InoxSet C!33300))

(assert (=> d!2084803 (= res!2726373 (= (content!12718 lt!2426231) ((_ map or) (content!12718 (ite c!1227941 (_2!36797 lt!2426051) (ite c!1227938 lt!2425892 Nil!65720))) (content!12718 (ite c!1227941 (_2!36797 lt!2425896) (ite c!1227938 (_2!36797 lt!2425939) s!2326))))))))

(assert (=> d!2084803 (= lt!2426231 e!4022783)))

(declare-fun c!1228229 () Bool)

(assert (=> d!2084803 (= c!1228229 ((_ is Nil!65720) (ite c!1227941 (_2!36797 lt!2426051) (ite c!1227938 lt!2425892 Nil!65720))))))

(assert (=> d!2084803 (= (++!14672 (ite c!1227941 (_2!36797 lt!2426051) (ite c!1227938 lt!2425892 Nil!65720)) (ite c!1227941 (_2!36797 lt!2425896) (ite c!1227938 (_2!36797 lt!2425939) s!2326))) lt!2426231)))

(assert (= (and d!2084803 c!1228229) b!6653156))

(assert (= (and d!2084803 (not c!1228229)) b!6653157))

(assert (= (and d!2084803 res!2726373) b!6653158))

(assert (= (and b!6653158 res!2726374) b!6653159))

(declare-fun m!7419464 () Bool)

(assert (=> b!6653158 m!7419464))

(declare-fun m!7419466 () Bool)

(assert (=> b!6653158 m!7419466))

(declare-fun m!7419468 () Bool)

(assert (=> b!6653158 m!7419468))

(declare-fun m!7419470 () Bool)

(assert (=> b!6653157 m!7419470))

(declare-fun m!7419472 () Bool)

(assert (=> d!2084803 m!7419472))

(declare-fun m!7419474 () Bool)

(assert (=> d!2084803 m!7419474))

(declare-fun m!7419476 () Bool)

(assert (=> d!2084803 m!7419476))

(assert (=> bm!589331 d!2084803))

(declare-fun d!2084819 () Bool)

(assert (=> d!2084819 (= (nullable!6508 (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292)))) (nullableFct!2430 (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292)))))))

(declare-fun bs!1713082 () Bool)

(assert (= bs!1713082 d!2084819))

(declare-fun m!7419478 () Bool)

(assert (=> bs!1713082 m!7419478))

(assert (=> bm!589317 d!2084819))

(declare-fun d!2084821 () Bool)

(assert (=> d!2084821 (matchR!8698 (Star!16515 (reg!16844 (regOne!33542 r!7292))) (++!14672 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946)) (ite c!1227941 (_2!36797 lt!2426051) (_2!36797 lt!2425946))))))

(declare-fun lt!2426236 () Unit!159541)

(declare-fun choose!49782 (Regex!16515 List!65844 List!65844) Unit!159541)

(assert (=> d!2084821 (= lt!2426236 (choose!49782 (reg!16844 (regOne!33542 r!7292)) (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946)) (ite c!1227941 (_2!36797 lt!2426051) (_2!36797 lt!2425946))))))

(assert (=> d!2084821 (validRegex!8251 (Star!16515 (reg!16844 (regOne!33542 r!7292))))))

(assert (=> d!2084821 (= (lemmaStarApp!162 (reg!16844 (regOne!33542 r!7292)) (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946)) (ite c!1227941 (_2!36797 lt!2426051) (_2!36797 lt!2425946))) lt!2426236)))

(declare-fun bs!1713084 () Bool)

(assert (= bs!1713084 d!2084821))

(assert (=> bs!1713084 m!7418464))

(assert (=> bs!1713084 m!7418464))

(declare-fun m!7419530 () Bool)

(assert (=> bs!1713084 m!7419530))

(declare-fun m!7419532 () Bool)

(assert (=> bs!1713084 m!7419532))

(declare-fun m!7419534 () Bool)

(assert (=> bs!1713084 m!7419534))

(assert (=> bm!589305 d!2084821))

(declare-fun b!6653188 () Bool)

(declare-fun e!4022797 () Bool)

(declare-fun lt!2426237 () List!65844)

(assert (=> b!6653188 (= e!4022797 (or (not (= (ite c!1227941 lt!2425940 lt!2425893) Nil!65720)) (= lt!2426237 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946)))))))

(declare-fun e!4022798 () List!65844)

(declare-fun b!6653185 () Bool)

(assert (=> b!6653185 (= e!4022798 (ite c!1227941 lt!2425940 lt!2425893))))

(declare-fun b!6653187 () Bool)

(declare-fun res!2726387 () Bool)

(assert (=> b!6653187 (=> (not res!2726387) (not e!4022797))))

(assert (=> b!6653187 (= res!2726387 (= (size!40574 lt!2426237) (+ (size!40574 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946))) (size!40574 (ite c!1227941 lt!2425940 lt!2425893)))))))

(declare-fun b!6653186 () Bool)

(assert (=> b!6653186 (= e!4022798 (Cons!65720 (h!72168 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946))) (++!14672 (t!379513 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946))) (ite c!1227941 lt!2425940 lt!2425893))))))

(declare-fun d!2084833 () Bool)

(assert (=> d!2084833 e!4022797))

(declare-fun res!2726386 () Bool)

(assert (=> d!2084833 (=> (not res!2726386) (not e!4022797))))

(assert (=> d!2084833 (= res!2726386 (= (content!12718 lt!2426237) ((_ map or) (content!12718 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946))) (content!12718 (ite c!1227941 lt!2425940 lt!2425893)))))))

(assert (=> d!2084833 (= lt!2426237 e!4022798)))

(declare-fun c!1228237 () Bool)

(assert (=> d!2084833 (= c!1228237 ((_ is Nil!65720) (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946))))))

(assert (=> d!2084833 (= (++!14672 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946)) (ite c!1227941 lt!2425940 lt!2425893)) lt!2426237)))

(assert (= (and d!2084833 c!1228237) b!6653185))

(assert (= (and d!2084833 (not c!1228237)) b!6653186))

(assert (= (and d!2084833 res!2726386) b!6653187))

(assert (= (and b!6653187 res!2726387) b!6653188))

(declare-fun m!7419536 () Bool)

(assert (=> b!6653187 m!7419536))

(declare-fun m!7419538 () Bool)

(assert (=> b!6653187 m!7419538))

(declare-fun m!7419540 () Bool)

(assert (=> b!6653187 m!7419540))

(declare-fun m!7419542 () Bool)

(assert (=> b!6653186 m!7419542))

(declare-fun m!7419544 () Bool)

(assert (=> d!2084833 m!7419544))

(declare-fun m!7419546 () Bool)

(assert (=> d!2084833 m!7419546))

(declare-fun m!7419548 () Bool)

(assert (=> d!2084833 m!7419548))

(assert (=> bm!589227 d!2084833))

(declare-fun d!2084835 () Bool)

(declare-fun lt!2426240 () Regex!16515)

(assert (=> d!2084835 (validRegex!8251 lt!2426240)))

(assert (=> d!2084835 (= lt!2426240 (generalisedUnion!2359 (unfocusZipperList!1936 zl!343)))))

(assert (=> d!2084835 (= (unfocusZipper!2257 zl!343) lt!2426240)))

(declare-fun bs!1713085 () Bool)

(assert (= bs!1713085 d!2084835))

(declare-fun m!7419550 () Bool)

(assert (=> bs!1713085 m!7419550))

(assert (=> bs!1713085 m!7418432))

(assert (=> bs!1713085 m!7418432))

(assert (=> bs!1713085 m!7418434))

(assert (=> b!6652199 d!2084835))

(declare-fun d!2084837 () Bool)

(assert (=> d!2084837 (= (flatMap!2020 (ite c!1227937 lt!2425942 (ite c!1227939 lt!2425972 lt!2426092)) (ite c!1227937 lambda!372738 (ite c!1227939 lambda!372738 lambda!372738))) (choose!49778 (ite c!1227937 lt!2425942 (ite c!1227939 lt!2425972 lt!2426092)) (ite c!1227937 lambda!372738 (ite c!1227939 lambda!372738 lambda!372738))))))

(declare-fun bs!1713086 () Bool)

(assert (= bs!1713086 d!2084837))

(declare-fun m!7419552 () Bool)

(assert (=> bs!1713086 m!7419552))

(assert (=> bm!589308 d!2084837))

(declare-fun bs!1713087 () Bool)

(declare-fun d!2084839 () Bool)

(assert (= bs!1713087 (and d!2084839 d!2084621)))

(declare-fun lambda!372826 () Int)

(assert (=> bs!1713087 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)))) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292))))))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))))) (= lambda!372826 lambda!372789))))

(declare-fun bs!1713088 () Bool)

(assert (= bs!1713088 (and d!2084839 b!6652222)))

(assert (=> bs!1713088 (not (= lambda!372826 lambda!372758))))

(declare-fun bs!1713089 () Bool)

(assert (= bs!1713089 (and d!2084839 b!6652208)))

(assert (=> bs!1713089 (not (= lambda!372826 lambda!372761))))

(declare-fun bs!1713090 () Bool)

(assert (= bs!1713090 (and d!2084839 b!6652251)))

(assert (=> bs!1713090 (not (= lambda!372826 lambda!372746))))

(declare-fun bs!1713091 () Bool)

(assert (= bs!1713091 (and d!2084839 b!6652829)))

(assert (=> bs!1713091 (not (= lambda!372826 lambda!372803))))

(assert (=> bs!1713090 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) s!2326) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (regTwo!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2425898)) (= lambda!372826 lambda!372745))))

(declare-fun bs!1713092 () Bool)

(assert (= bs!1713092 (and d!2084839 b!6652192)))

(assert (=> bs!1713092 (not (= lambda!372826 lambda!372751))))

(declare-fun bs!1713093 () Bool)

(assert (= bs!1713093 (and d!2084839 b!6652196)))

(assert (=> bs!1713093 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) s!2326) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) lt!2425900) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (regTwo!33542 r!7292))) (= lambda!372826 lambda!372747))))

(declare-fun bs!1713094 () Bool)

(assert (= bs!1713094 (and d!2084839 b!6652250)))

(assert (=> bs!1713094 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) s!2326) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (regOne!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2425943)) (= lambda!372826 lambda!372739))))

(declare-fun bs!1713095 () Bool)

(assert (= bs!1713095 (and d!2084839 b!6652830)))

(assert (=> bs!1713095 (not (= lambda!372826 lambda!372805))))

(assert (=> bs!1713090 (not (= lambda!372826 lambda!372744))))

(assert (=> bs!1713088 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) (_1!36797 lt!2425939)) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2425900)) (= lambda!372826 lambda!372757))))

(assert (=> bs!1713092 (not (= lambda!372826 lambda!372750))))

(assert (=> bs!1713094 (not (= lambda!372826 lambda!372742))))

(assert (=> bs!1713090 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) s!2326) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (regOne!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2425950)) (= lambda!372826 lambda!372743))))

(assert (=> bs!1713089 (not (= lambda!372826 lambda!372762))))

(assert (=> bs!1713089 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) Nil!65720) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2425900)) (= lambda!372826 lambda!372760))))

(assert (=> bs!1713087 (not (= lambda!372826 lambda!372791))))

(declare-fun bs!1713096 () Bool)

(assert (= bs!1713096 (and d!2084839 b!6653051)))

(assert (=> bs!1713096 (not (= lambda!372826 lambda!372822))))

(assert (=> bs!1713088 (not (= lambda!372826 lambda!372756))))

(declare-fun bs!1713097 () Bool)

(assert (= bs!1713097 (and d!2084839 b!6652194)))

(assert (=> bs!1713097 (not (= lambda!372826 lambda!372737))))

(assert (=> bs!1713093 (not (= lambda!372826 lambda!372748))))

(assert (=> bs!1713088 (not (= lambda!372826 lambda!372759))))

(assert (=> bs!1713094 (not (= lambda!372826 lambda!372740))))

(assert (=> bs!1713092 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) (_1!36797 lt!2425896)) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2425900)) (= lambda!372826 lambda!372749))))

(assert (=> bs!1713094 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) s!2326) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (regTwo!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2426072)) (= lambda!372826 lambda!372741))))

(declare-fun bs!1713098 () Bool)

(assert (= bs!1713098 (and d!2084839 b!6653052)))

(assert (=> bs!1713098 (not (= lambda!372826 lambda!372823))))

(assert (=> bs!1713088 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) s!2326) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) lt!2426074) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (regTwo!33542 r!7292))) (= lambda!372826 lambda!372755))))

(assert (=> bs!1713097 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) s!2326) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (regOne!33542 r!7292)) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (regTwo!33542 r!7292))) (= lambda!372826 lambda!372736))))

(assert (=> d!2084839 true))

(assert (=> d!2084839 true))

(assert (=> d!2084839 true))

(declare-fun lambda!372831 () Int)

(assert (=> bs!1713087 (not (= lambda!372831 lambda!372789))))

(assert (=> bs!1713088 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) (_1!36797 lt!2425939)) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2425900)) (= lambda!372831 lambda!372758))))

(declare-fun bs!1713099 () Bool)

(assert (= bs!1713099 d!2084839))

(assert (=> bs!1713099 (not (= lambda!372831 lambda!372826))))

(assert (=> bs!1713089 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) Nil!65720) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2425900)) (= lambda!372831 lambda!372761))))

(assert (=> bs!1713090 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) s!2326) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (regTwo!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2425898)) (= lambda!372831 lambda!372746))))

(assert (=> bs!1713091 (not (= lambda!372831 lambda!372803))))

(assert (=> bs!1713090 (not (= lambda!372831 lambda!372745))))

(assert (=> bs!1713092 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) (_1!36797 lt!2425896)) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2425900)) (= lambda!372831 lambda!372751))))

(assert (=> bs!1713093 (not (= lambda!372831 lambda!372747))))

(assert (=> bs!1713094 (not (= lambda!372831 lambda!372739))))

(assert (=> bs!1713095 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) s!2326) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (regOne!33542 r!7292)) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (regTwo!33542 r!7292))) (= lambda!372831 lambda!372805))))

(assert (=> bs!1713090 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) s!2326) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (regOne!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2425950)) (= lambda!372831 lambda!372744))))

(assert (=> bs!1713088 (not (= lambda!372831 lambda!372757))))

(assert (=> bs!1713092 (not (= lambda!372831 lambda!372750))))

(assert (=> bs!1713094 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) s!2326) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (regTwo!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2426072)) (= lambda!372831 lambda!372742))))

(assert (=> bs!1713090 (not (= lambda!372831 lambda!372743))))

(assert (=> bs!1713089 (not (= lambda!372831 lambda!372762))))

(assert (=> bs!1713089 (not (= lambda!372831 lambda!372760))))

(assert (=> bs!1713087 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)))) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292))))))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))))) (= lambda!372831 lambda!372791))))

(assert (=> bs!1713096 (not (= lambda!372831 lambda!372822))))

(assert (=> bs!1713088 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) s!2326) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) lt!2426074) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (regTwo!33542 r!7292))) (= lambda!372831 lambda!372756))))

(assert (=> bs!1713097 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) s!2326) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (regOne!33542 r!7292)) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (regTwo!33542 r!7292))) (= lambda!372831 lambda!372737))))

(assert (=> bs!1713093 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) s!2326) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) lt!2425900) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (regTwo!33542 r!7292))) (= lambda!372831 lambda!372748))))

(assert (=> bs!1713088 (not (= lambda!372831 lambda!372759))))

(assert (=> bs!1713094 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) s!2326) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (regOne!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2425943)) (= lambda!372831 lambda!372740))))

(assert (=> bs!1713092 (not (= lambda!372831 lambda!372749))))

(assert (=> bs!1713094 (not (= lambda!372831 lambda!372741))))

(assert (=> bs!1713098 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939)) s!2326) (= (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (regOne!33542 lt!2425903)) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (regTwo!33542 lt!2425903))) (= lambda!372831 lambda!372823))))

(assert (=> bs!1713088 (not (= lambda!372831 lambda!372755))))

(assert (=> bs!1713097 (not (= lambda!372831 lambda!372736))))

(assert (=> d!2084839 true))

(assert (=> d!2084839 true))

(assert (=> d!2084839 true))

(assert (=> d!2084839 (= (Exists!3585 lambda!372826) (Exists!3585 lambda!372831))))

(declare-fun lt!2426241 () Unit!159541)

(assert (=> d!2084839 (= lt!2426241 (choose!49769 (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939))))))

(assert (=> d!2084839 (validRegex!8251 (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))))))

(assert (=> d!2084839 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2122 (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292))))) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939))) lt!2426241)))

(declare-fun m!7419554 () Bool)

(assert (=> bs!1713099 m!7419554))

(declare-fun m!7419556 () Bool)

(assert (=> bs!1713099 m!7419556))

(declare-fun m!7419558 () Bool)

(assert (=> bs!1713099 m!7419558))

(declare-fun m!7419560 () Bool)

(assert (=> bs!1713099 m!7419560))

(assert (=> bm!589291 d!2084839))

(declare-fun lt!2426245 () List!65844)

(declare-fun b!6653200 () Bool)

(declare-fun e!4022803 () Bool)

(assert (=> b!6653200 (= e!4022803 (or (not (= (ite c!1227941 (_2!36797 lt!2425896) (_2!36797 lt!2425939)) Nil!65720)) (= lt!2426245 (ite c!1227941 lt!2426048 (_2!36797 lt!2425946)))))))

(declare-fun b!6653197 () Bool)

(declare-fun e!4022804 () List!65844)

(assert (=> b!6653197 (= e!4022804 (ite c!1227941 (_2!36797 lt!2425896) (_2!36797 lt!2425939)))))

(declare-fun b!6653199 () Bool)

(declare-fun res!2726397 () Bool)

(assert (=> b!6653199 (=> (not res!2726397) (not e!4022803))))

(assert (=> b!6653199 (= res!2726397 (= (size!40574 lt!2426245) (+ (size!40574 (ite c!1227941 lt!2426048 (_2!36797 lt!2425946))) (size!40574 (ite c!1227941 (_2!36797 lt!2425896) (_2!36797 lt!2425939))))))))

(declare-fun b!6653198 () Bool)

(assert (=> b!6653198 (= e!4022804 (Cons!65720 (h!72168 (ite c!1227941 lt!2426048 (_2!36797 lt!2425946))) (++!14672 (t!379513 (ite c!1227941 lt!2426048 (_2!36797 lt!2425946))) (ite c!1227941 (_2!36797 lt!2425896) (_2!36797 lt!2425939)))))))

(declare-fun d!2084841 () Bool)

(assert (=> d!2084841 e!4022803))

(declare-fun res!2726396 () Bool)

(assert (=> d!2084841 (=> (not res!2726396) (not e!4022803))))

(assert (=> d!2084841 (= res!2726396 (= (content!12718 lt!2426245) ((_ map or) (content!12718 (ite c!1227941 lt!2426048 (_2!36797 lt!2425946))) (content!12718 (ite c!1227941 (_2!36797 lt!2425896) (_2!36797 lt!2425939))))))))

(assert (=> d!2084841 (= lt!2426245 e!4022804)))

(declare-fun c!1228238 () Bool)

(assert (=> d!2084841 (= c!1228238 ((_ is Nil!65720) (ite c!1227941 lt!2426048 (_2!36797 lt!2425946))))))

(assert (=> d!2084841 (= (++!14672 (ite c!1227941 lt!2426048 (_2!36797 lt!2425946)) (ite c!1227941 (_2!36797 lt!2425896) (_2!36797 lt!2425939))) lt!2426245)))

(assert (= (and d!2084841 c!1228238) b!6653197))

(assert (= (and d!2084841 (not c!1228238)) b!6653198))

(assert (= (and d!2084841 res!2726396) b!6653199))

(assert (= (and b!6653199 res!2726397) b!6653200))

(declare-fun m!7419562 () Bool)

(assert (=> b!6653199 m!7419562))

(declare-fun m!7419564 () Bool)

(assert (=> b!6653199 m!7419564))

(declare-fun m!7419566 () Bool)

(assert (=> b!6653199 m!7419566))

(declare-fun m!7419568 () Bool)

(assert (=> b!6653198 m!7419568))

(declare-fun m!7419570 () Bool)

(assert (=> d!2084841 m!7419570))

(declare-fun m!7419572 () Bool)

(assert (=> d!2084841 m!7419572))

(declare-fun m!7419574 () Bool)

(assert (=> d!2084841 m!7419574))

(assert (=> bm!589273 d!2084841))

(declare-fun d!2084843 () Bool)

(assert (=> d!2084843 (= (isDefined!13109 (ite c!1227938 lt!2425963 call!589344)) (not (isEmpty!38036 (ite c!1227938 lt!2425963 call!589344))))))

(declare-fun bs!1713113 () Bool)

(assert (= bs!1713113 d!2084843))

(declare-fun m!7419576 () Bool)

(assert (=> bs!1713113 m!7419576))

(assert (=> bm!589243 d!2084843))

(declare-fun d!2084845 () Bool)

(assert (=> d!2084845 (= (++!14672 (++!14672 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946)) (ite c!1227941 (_2!36797 lt!2426051) (_2!36797 lt!2425946))) (ite c!1227941 (_2!36797 lt!2425896) (_2!36797 lt!2425939))) (++!14672 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946)) (++!14672 (ite c!1227941 (_2!36797 lt!2426051) (_2!36797 lt!2425946)) (ite c!1227941 (_2!36797 lt!2425896) (_2!36797 lt!2425939)))))))

(declare-fun lt!2426248 () Unit!159541)

(declare-fun choose!49783 (List!65844 List!65844 List!65844) Unit!159541)

(assert (=> d!2084845 (= lt!2426248 (choose!49783 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946)) (ite c!1227941 (_2!36797 lt!2426051) (_2!36797 lt!2425946)) (ite c!1227941 (_2!36797 lt!2425896) (_2!36797 lt!2425939))))))

(assert (=> d!2084845 (= (lemmaConcatAssociativity!2958 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946)) (ite c!1227941 (_2!36797 lt!2426051) (_2!36797 lt!2425946)) (ite c!1227941 (_2!36797 lt!2425896) (_2!36797 lt!2425939))) lt!2426248)))

(declare-fun bs!1713118 () Bool)

(assert (= bs!1713118 d!2084845))

(declare-fun m!7419578 () Bool)

(assert (=> bs!1713118 m!7419578))

(declare-fun m!7419580 () Bool)

(assert (=> bs!1713118 m!7419580))

(declare-fun m!7419582 () Bool)

(assert (=> bs!1713118 m!7419582))

(assert (=> bs!1713118 m!7419578))

(assert (=> bs!1713118 m!7418464))

(assert (=> bs!1713118 m!7418464))

(declare-fun m!7419584 () Bool)

(assert (=> bs!1713118 m!7419584))

(assert (=> bm!589213 d!2084845))

(declare-fun bs!1713119 () Bool)

(declare-fun b!6653207 () Bool)

(assert (= bs!1713119 (and b!6653207 d!2084621)))

(declare-fun lambda!372834 () Int)

(assert (=> bs!1713119 (not (= lambda!372834 lambda!372789))))

(declare-fun bs!1713120 () Bool)

(assert (= bs!1713120 (and b!6653207 b!6652222)))

(assert (=> bs!1713120 (not (= lambda!372834 lambda!372758))))

(declare-fun bs!1713121 () Bool)

(assert (= bs!1713121 (and b!6653207 d!2084839)))

(assert (=> bs!1713121 (not (= lambda!372834 lambda!372826))))

(declare-fun bs!1713122 () Bool)

(assert (= bs!1713122 (and b!6653207 b!6652208)))

(assert (=> bs!1713122 (not (= lambda!372834 lambda!372761))))

(declare-fun bs!1713123 () Bool)

(assert (= bs!1713123 (and b!6653207 b!6652251)))

(assert (=> bs!1713123 (not (= lambda!372834 lambda!372746))))

(declare-fun bs!1713124 () Bool)

(assert (= bs!1713124 (and b!6653207 b!6652829)))

(assert (=> bs!1713124 (= (and (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) s!2326) (= (reg!16844 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (reg!16844 r!7292)) (= (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074)) r!7292)) (= lambda!372834 lambda!372803))))

(assert (=> bs!1713123 (not (= lambda!372834 lambda!372745))))

(declare-fun bs!1713125 () Bool)

(assert (= bs!1713125 (and b!6653207 b!6652192)))

(assert (=> bs!1713125 (not (= lambda!372834 lambda!372751))))

(declare-fun bs!1713126 () Bool)

(assert (= bs!1713126 (and b!6653207 b!6652196)))

(assert (=> bs!1713126 (not (= lambda!372834 lambda!372747))))

(declare-fun bs!1713127 () Bool)

(assert (= bs!1713127 (and b!6653207 b!6652830)))

(assert (=> bs!1713127 (not (= lambda!372834 lambda!372805))))

(assert (=> bs!1713123 (not (= lambda!372834 lambda!372744))))

(assert (=> bs!1713120 (not (= lambda!372834 lambda!372757))))

(assert (=> bs!1713125 (= (and (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) (_1!36797 lt!2425896)) (= (reg!16844 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074)) lt!2425900)) (= lambda!372834 lambda!372750))))

(declare-fun bs!1713128 () Bool)

(assert (= bs!1713128 (and b!6653207 b!6652250)))

(assert (=> bs!1713128 (not (= lambda!372834 lambda!372742))))

(assert (=> bs!1713123 (not (= lambda!372834 lambda!372743))))

(assert (=> bs!1713122 (= (and (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) Nil!65720) (= (reg!16844 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074)) lt!2425900)) (= lambda!372834 lambda!372762))))

(assert (=> bs!1713122 (not (= lambda!372834 lambda!372760))))

(assert (=> bs!1713119 (not (= lambda!372834 lambda!372791))))

(declare-fun bs!1713129 () Bool)

(assert (= bs!1713129 (and b!6653207 b!6653051)))

(assert (=> bs!1713129 (= (and (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) s!2326) (= (reg!16844 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (reg!16844 lt!2425903)) (= (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074)) lt!2425903)) (= lambda!372834 lambda!372822))))

(assert (=> bs!1713120 (not (= lambda!372834 lambda!372756))))

(declare-fun bs!1713130 () Bool)

(assert (= bs!1713130 (and b!6653207 b!6652194)))

(assert (=> bs!1713130 (not (= lambda!372834 lambda!372737))))

(assert (=> bs!1713126 (not (= lambda!372834 lambda!372748))))

(assert (=> bs!1713120 (= (and (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) (_1!36797 lt!2425939)) (= (reg!16844 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074)) lt!2425900)) (= lambda!372834 lambda!372759))))

(assert (=> bs!1713128 (not (= lambda!372834 lambda!372739))))

(assert (=> bs!1713121 (not (= lambda!372834 lambda!372831))))

(assert (=> bs!1713128 (not (= lambda!372834 lambda!372740))))

(assert (=> bs!1713125 (not (= lambda!372834 lambda!372749))))

(assert (=> bs!1713128 (not (= lambda!372834 lambda!372741))))

(declare-fun bs!1713131 () Bool)

(assert (= bs!1713131 (and b!6653207 b!6653052)))

(assert (=> bs!1713131 (not (= lambda!372834 lambda!372823))))

(assert (=> bs!1713120 (not (= lambda!372834 lambda!372755))))

(assert (=> bs!1713130 (not (= lambda!372834 lambda!372736))))

(assert (=> b!6653207 true))

(assert (=> b!6653207 true))

(declare-fun bs!1713132 () Bool)

(declare-fun b!6653208 () Bool)

(assert (= bs!1713132 (and b!6653208 d!2084621)))

(declare-fun lambda!372835 () Int)

(assert (=> bs!1713132 (not (= lambda!372835 lambda!372789))))

(declare-fun bs!1713133 () Bool)

(assert (= bs!1713133 (and b!6653208 b!6652222)))

(assert (=> bs!1713133 (= (and (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) (_1!36797 lt!2425939)) (= (regOne!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) lt!2425900)) (= lambda!372835 lambda!372758))))

(declare-fun bs!1713134 () Bool)

(assert (= bs!1713134 (and b!6653208 d!2084839)))

(assert (=> bs!1713134 (not (= lambda!372835 lambda!372826))))

(declare-fun bs!1713135 () Bool)

(assert (= bs!1713135 (and b!6653208 b!6652208)))

(assert (=> bs!1713135 (= (and (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) Nil!65720) (= (regOne!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) lt!2425900)) (= lambda!372835 lambda!372761))))

(declare-fun bs!1713136 () Bool)

(assert (= bs!1713136 (and b!6653208 b!6652251)))

(assert (=> bs!1713136 (= (and (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) s!2326) (= (regOne!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) lt!2425898)) (= lambda!372835 lambda!372746))))

(declare-fun bs!1713137 () Bool)

(assert (= bs!1713137 (and b!6653208 b!6652829)))

(assert (=> bs!1713137 (not (= lambda!372835 lambda!372803))))

(assert (=> bs!1713136 (not (= lambda!372835 lambda!372745))))

(declare-fun bs!1713138 () Bool)

(assert (= bs!1713138 (and b!6653208 b!6652192)))

(assert (=> bs!1713138 (= (and (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) (_1!36797 lt!2425896)) (= (regOne!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) lt!2425900)) (= lambda!372835 lambda!372751))))

(declare-fun bs!1713139 () Bool)

(assert (= bs!1713139 (and b!6653208 b!6652830)))

(assert (=> bs!1713139 (= (and (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) s!2326) (= (regOne!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (regOne!33542 r!7292)) (= (regTwo!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (regTwo!33542 r!7292))) (= lambda!372835 lambda!372805))))

(assert (=> bs!1713136 (= (and (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) s!2326) (= (regOne!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) lt!2425950)) (= lambda!372835 lambda!372744))))

(assert (=> bs!1713133 (not (= lambda!372835 lambda!372757))))

(assert (=> bs!1713138 (not (= lambda!372835 lambda!372750))))

(declare-fun bs!1713140 () Bool)

(assert (= bs!1713140 (and b!6653208 b!6652250)))

(assert (=> bs!1713140 (= (and (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) s!2326) (= (regOne!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) lt!2426072)) (= lambda!372835 lambda!372742))))

(assert (=> bs!1713136 (not (= lambda!372835 lambda!372743))))

(assert (=> bs!1713135 (not (= lambda!372835 lambda!372762))))

(assert (=> bs!1713135 (not (= lambda!372835 lambda!372760))))

(assert (=> bs!1713132 (= (and (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)))) (= (regOne!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292))))))) (= (regTwo!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))))) (= lambda!372835 lambda!372791))))

(declare-fun bs!1713141 () Bool)

(assert (= bs!1713141 (and b!6653208 b!6653051)))

(assert (=> bs!1713141 (not (= lambda!372835 lambda!372822))))

(assert (=> bs!1713133 (= (and (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) s!2326) (= (regOne!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) lt!2426074) (= (regTwo!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (regTwo!33542 r!7292))) (= lambda!372835 lambda!372756))))

(declare-fun bs!1713142 () Bool)

(assert (= bs!1713142 (and b!6653208 b!6652194)))

(assert (=> bs!1713142 (= (and (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) s!2326) (= (regOne!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (regOne!33542 r!7292)) (= (regTwo!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (regTwo!33542 r!7292))) (= lambda!372835 lambda!372737))))

(declare-fun bs!1713143 () Bool)

(assert (= bs!1713143 (and b!6653208 b!6652196)))

(assert (=> bs!1713143 (= (and (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) s!2326) (= (regOne!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) lt!2425900) (= (regTwo!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (regTwo!33542 r!7292))) (= lambda!372835 lambda!372748))))

(assert (=> bs!1713133 (not (= lambda!372835 lambda!372759))))

(assert (=> bs!1713143 (not (= lambda!372835 lambda!372747))))

(declare-fun bs!1713144 () Bool)

(assert (= bs!1713144 (and b!6653208 b!6653207)))

(assert (=> bs!1713144 (not (= lambda!372835 lambda!372834))))

(assert (=> bs!1713140 (not (= lambda!372835 lambda!372739))))

(assert (=> bs!1713134 (= (and (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939))) (= (regOne!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))))) (= (regTwo!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))))) (= lambda!372835 lambda!372831))))

(assert (=> bs!1713140 (= (and (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) s!2326) (= (regOne!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) lt!2425943)) (= lambda!372835 lambda!372740))))

(assert (=> bs!1713138 (not (= lambda!372835 lambda!372749))))

(assert (=> bs!1713140 (not (= lambda!372835 lambda!372741))))

(declare-fun bs!1713145 () Bool)

(assert (= bs!1713145 (and b!6653208 b!6653052)))

(assert (=> bs!1713145 (= (and (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) s!2326) (= (regOne!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (regOne!33542 lt!2425903)) (= (regTwo!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (regTwo!33542 lt!2425903))) (= lambda!372835 lambda!372823))))

(assert (=> bs!1713133 (not (= lambda!372835 lambda!372755))))

(assert (=> bs!1713142 (not (= lambda!372835 lambda!372736))))

(assert (=> b!6653208 true))

(assert (=> b!6653208 true))

(declare-fun call!589547 () Bool)

(declare-fun bm!589541 () Bool)

(assert (=> bm!589541 (= call!589547 (isEmpty!38032 (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939))))))

(declare-fun c!1228242 () Bool)

(declare-fun b!6653201 () Bool)

(assert (=> b!6653201 (= c!1228242 ((_ is ElementMatch!16515) (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))))))

(declare-fun e!4022811 () Bool)

(declare-fun e!4022809 () Bool)

(assert (=> b!6653201 (= e!4022811 e!4022809)))

(declare-fun c!1228241 () Bool)

(declare-fun bm!589542 () Bool)

(declare-fun call!589546 () Bool)

(assert (=> bm!589542 (= call!589546 (Exists!3585 (ite c!1228241 lambda!372834 lambda!372835)))))

(declare-fun b!6653202 () Bool)

(declare-fun e!4022807 () Bool)

(assert (=> b!6653202 (= e!4022807 call!589547)))

(declare-fun b!6653203 () Bool)

(declare-fun e!4022806 () Bool)

(assert (=> b!6653203 (= e!4022806 (matchRSpec!3616 (regTwo!33543 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939))))))

(declare-fun b!6653204 () Bool)

(assert (=> b!6653204 (= e!4022809 (= (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939)) (Cons!65720 (c!1227945 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) Nil!65720)))))

(declare-fun b!6653205 () Bool)

(assert (=> b!6653205 (= e!4022807 e!4022811)))

(declare-fun res!2726399 () Bool)

(assert (=> b!6653205 (= res!2726399 (not ((_ is EmptyLang!16515) (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074)))))))

(assert (=> b!6653205 (=> (not res!2726399) (not e!4022811))))

(declare-fun c!1228239 () Bool)

(declare-fun b!6653206 () Bool)

(assert (=> b!6653206 (= c!1228239 ((_ is Union!16515) (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))))))

(declare-fun e!4022808 () Bool)

(assert (=> b!6653206 (= e!4022809 e!4022808)))

(declare-fun e!4022810 () Bool)

(assert (=> b!6653207 (= e!4022810 call!589546)))

(declare-fun d!2084847 () Bool)

(declare-fun c!1228240 () Bool)

(assert (=> d!2084847 (= c!1228240 ((_ is EmptyExpr!16515) (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))))))

(assert (=> d!2084847 (= (matchRSpec!3616 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074)) (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939))) e!4022807)))

(declare-fun e!4022805 () Bool)

(assert (=> b!6653208 (= e!4022805 call!589546)))

(declare-fun b!6653209 () Bool)

(assert (=> b!6653209 (= e!4022808 e!4022806)))

(declare-fun res!2726400 () Bool)

(assert (=> b!6653209 (= res!2726400 (matchRSpec!3616 (regOne!33543 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))) (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939))))))

(assert (=> b!6653209 (=> res!2726400 e!4022806)))

(declare-fun b!6653210 () Bool)

(declare-fun res!2726398 () Bool)

(assert (=> b!6653210 (=> res!2726398 e!4022810)))

(assert (=> b!6653210 (= res!2726398 call!589547)))

(assert (=> b!6653210 (= e!4022805 e!4022810)))

(declare-fun b!6653211 () Bool)

(assert (=> b!6653211 (= e!4022808 e!4022805)))

(assert (=> b!6653211 (= c!1228241 ((_ is Star!16515) (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))))))

(assert (= (and d!2084847 c!1228240) b!6653202))

(assert (= (and d!2084847 (not c!1228240)) b!6653205))

(assert (= (and b!6653205 res!2726399) b!6653201))

(assert (= (and b!6653201 c!1228242) b!6653204))

(assert (= (and b!6653201 (not c!1228242)) b!6653206))

(assert (= (and b!6653206 c!1228239) b!6653209))

(assert (= (and b!6653206 (not c!1228239)) b!6653211))

(assert (= (and b!6653209 (not res!2726400)) b!6653203))

(assert (= (and b!6653211 c!1228241) b!6653210))

(assert (= (and b!6653211 (not c!1228241)) b!6653208))

(assert (= (and b!6653210 (not res!2726398)) b!6653207))

(assert (= (or b!6653207 b!6653208) bm!589542))

(assert (= (or b!6653202 b!6653210) bm!589541))

(declare-fun m!7419594 () Bool)

(assert (=> bm!589541 m!7419594))

(declare-fun m!7419596 () Bool)

(assert (=> bm!589542 m!7419596))

(declare-fun m!7419598 () Bool)

(assert (=> b!6653203 m!7419598))

(declare-fun m!7419600 () Bool)

(assert (=> b!6653209 m!7419600))

(assert (=> bm!589197 d!2084847))

(declare-fun b!6653216 () Bool)

(declare-fun e!4022815 () (InoxSet Context!11798))

(declare-fun call!589548 () (InoxSet Context!11798))

(assert (=> b!6653216 (= e!4022815 call!589548)))

(declare-fun bm!589543 () Bool)

(assert (=> bm!589543 (= call!589548 (derivationStepZipperDown!1763 (h!72169 (exprs!6399 (ite c!1227937 lt!2426071 (ite c!1227939 lt!2426009 (ite c!1227934 lt!2426021 lt!2426056))))) (Context!11799 (t!379514 (exprs!6399 (ite c!1227937 lt!2426071 (ite c!1227939 lt!2426009 (ite c!1227934 lt!2426021 lt!2426056)))))) (h!72168 s!2326)))))

(declare-fun d!2084851 () Bool)

(declare-fun c!1228249 () Bool)

(declare-fun e!4022814 () Bool)

(assert (=> d!2084851 (= c!1228249 e!4022814)))

(declare-fun res!2726401 () Bool)

(assert (=> d!2084851 (=> (not res!2726401) (not e!4022814))))

(assert (=> d!2084851 (= res!2726401 ((_ is Cons!65721) (exprs!6399 (ite c!1227937 lt!2426071 (ite c!1227939 lt!2426009 (ite c!1227934 lt!2426021 lt!2426056))))))))

(declare-fun e!4022816 () (InoxSet Context!11798))

(assert (=> d!2084851 (= (derivationStepZipperUp!1689 (ite c!1227937 lt!2426071 (ite c!1227939 lt!2426009 (ite c!1227934 lt!2426021 lt!2426056))) (h!72168 s!2326)) e!4022816)))

(declare-fun b!6653217 () Bool)

(assert (=> b!6653217 (= e!4022816 ((_ map or) call!589548 (derivationStepZipperUp!1689 (Context!11799 (t!379514 (exprs!6399 (ite c!1227937 lt!2426071 (ite c!1227939 lt!2426009 (ite c!1227934 lt!2426021 lt!2426056)))))) (h!72168 s!2326))))))

(declare-fun b!6653218 () Bool)

(assert (=> b!6653218 (= e!4022814 (nullable!6508 (h!72169 (exprs!6399 (ite c!1227937 lt!2426071 (ite c!1227939 lt!2426009 (ite c!1227934 lt!2426021 lt!2426056)))))))))

(declare-fun b!6653219 () Bool)

(assert (=> b!6653219 (= e!4022816 e!4022815)))

(declare-fun c!1228250 () Bool)

(assert (=> b!6653219 (= c!1228250 ((_ is Cons!65721) (exprs!6399 (ite c!1227937 lt!2426071 (ite c!1227939 lt!2426009 (ite c!1227934 lt!2426021 lt!2426056))))))))

(declare-fun b!6653220 () Bool)

(assert (=> b!6653220 (= e!4022815 ((as const (Array Context!11798 Bool)) false))))

(assert (= (and d!2084851 res!2726401) b!6653218))

(assert (= (and d!2084851 c!1228249) b!6653217))

(assert (= (and d!2084851 (not c!1228249)) b!6653219))

(assert (= (and b!6653219 c!1228250) b!6653216))

(assert (= (and b!6653219 (not c!1228250)) b!6653220))

(assert (= (or b!6653217 b!6653216) bm!589543))

(declare-fun m!7419602 () Bool)

(assert (=> bm!589543 m!7419602))

(declare-fun m!7419604 () Bool)

(assert (=> b!6653217 m!7419604))

(declare-fun m!7419606 () Bool)

(assert (=> b!6653218 m!7419606))

(assert (=> bm!589180 d!2084851))

(declare-fun b!6653223 () Bool)

(declare-fun e!4022820 () (InoxSet Context!11798))

(declare-fun call!589549 () (InoxSet Context!11798))

(assert (=> b!6653223 (= e!4022820 call!589549)))

(declare-fun bm!589544 () Bool)

(assert (=> bm!589544 (= call!589549 (derivationStepZipperDown!1763 (h!72169 (exprs!6399 (ite c!1227943 lt!2425901 lt!2425966))) (Context!11799 (t!379514 (exprs!6399 (ite c!1227943 lt!2425901 lt!2425966)))) (h!72168 s!2326)))))

(declare-fun d!2084853 () Bool)

(declare-fun c!1228251 () Bool)

(declare-fun e!4022819 () Bool)

(assert (=> d!2084853 (= c!1228251 e!4022819)))

(declare-fun res!2726404 () Bool)

(assert (=> d!2084853 (=> (not res!2726404) (not e!4022819))))

(assert (=> d!2084853 (= res!2726404 ((_ is Cons!65721) (exprs!6399 (ite c!1227943 lt!2425901 lt!2425966))))))

(declare-fun e!4022821 () (InoxSet Context!11798))

(assert (=> d!2084853 (= (derivationStepZipperUp!1689 (ite c!1227943 lt!2425901 lt!2425966) (h!72168 s!2326)) e!4022821)))

(declare-fun b!6653224 () Bool)

(assert (=> b!6653224 (= e!4022821 ((_ map or) call!589549 (derivationStepZipperUp!1689 (Context!11799 (t!379514 (exprs!6399 (ite c!1227943 lt!2425901 lt!2425966)))) (h!72168 s!2326))))))

(declare-fun b!6653225 () Bool)

(assert (=> b!6653225 (= e!4022819 (nullable!6508 (h!72169 (exprs!6399 (ite c!1227943 lt!2425901 lt!2425966)))))))

(declare-fun b!6653226 () Bool)

(assert (=> b!6653226 (= e!4022821 e!4022820)))

(declare-fun c!1228254 () Bool)

(assert (=> b!6653226 (= c!1228254 ((_ is Cons!65721) (exprs!6399 (ite c!1227943 lt!2425901 lt!2425966))))))

(declare-fun b!6653227 () Bool)

(assert (=> b!6653227 (= e!4022820 ((as const (Array Context!11798 Bool)) false))))

(assert (= (and d!2084853 res!2726404) b!6653225))

(assert (= (and d!2084853 c!1228251) b!6653224))

(assert (= (and d!2084853 (not c!1228251)) b!6653226))

(assert (= (and b!6653226 c!1228254) b!6653223))

(assert (= (and b!6653226 (not c!1228254)) b!6653227))

(assert (= (or b!6653224 b!6653223) bm!589544))

(declare-fun m!7419608 () Bool)

(assert (=> bm!589544 m!7419608))

(declare-fun m!7419610 () Bool)

(assert (=> b!6653224 m!7419610))

(declare-fun m!7419612 () Bool)

(assert (=> b!6653225 m!7419612))

(assert (=> bm!589232 d!2084853))

(declare-fun c!1228255 () Bool)

(declare-fun d!2084855 () Bool)

(assert (=> d!2084855 (= c!1228255 (isEmpty!38032 (ite c!1227937 (t!379513 s!2326) (ite c!1227939 s!2326 (ite c!1227941 (ite c!1227935 s!2326 (_1!36797 lt!2426051)) (_2!36797 lt!2426064))))))))

(declare-fun e!4022822 () Bool)

(assert (=> d!2084855 (= (matchZipper!2527 (ite c!1227937 lt!2425997 (ite c!1227939 z!1189 (ite c!1227941 (ite c!1227935 z!1189 lt!2425935) lt!2426050))) (ite c!1227937 (t!379513 s!2326) (ite c!1227939 s!2326 (ite c!1227941 (ite c!1227935 s!2326 (_1!36797 lt!2426051)) (_2!36797 lt!2426064))))) e!4022822)))

(declare-fun b!6653228 () Bool)

(assert (=> b!6653228 (= e!4022822 (nullableZipper!2255 (ite c!1227937 lt!2425997 (ite c!1227939 z!1189 (ite c!1227941 (ite c!1227935 z!1189 lt!2425935) lt!2426050)))))))

(declare-fun b!6653229 () Bool)

(assert (=> b!6653229 (= e!4022822 (matchZipper!2527 (derivationStepZipper!2481 (ite c!1227937 lt!2425997 (ite c!1227939 z!1189 (ite c!1227941 (ite c!1227935 z!1189 lt!2425935) lt!2426050))) (head!13473 (ite c!1227937 (t!379513 s!2326) (ite c!1227939 s!2326 (ite c!1227941 (ite c!1227935 s!2326 (_1!36797 lt!2426051)) (_2!36797 lt!2426064)))))) (tail!12558 (ite c!1227937 (t!379513 s!2326) (ite c!1227939 s!2326 (ite c!1227941 (ite c!1227935 s!2326 (_1!36797 lt!2426051)) (_2!36797 lt!2426064)))))))))

(assert (= (and d!2084855 c!1228255) b!6653228))

(assert (= (and d!2084855 (not c!1228255)) b!6653229))

(declare-fun m!7419614 () Bool)

(assert (=> d!2084855 m!7419614))

(declare-fun m!7419616 () Bool)

(assert (=> b!6653228 m!7419616))

(declare-fun m!7419618 () Bool)

(assert (=> b!6653229 m!7419618))

(assert (=> b!6653229 m!7419618))

(declare-fun m!7419620 () Bool)

(assert (=> b!6653229 m!7419620))

(declare-fun m!7419622 () Bool)

(assert (=> b!6653229 m!7419622))

(assert (=> b!6653229 m!7419620))

(assert (=> b!6653229 m!7419622))

(declare-fun m!7419624 () Bool)

(assert (=> b!6653229 m!7419624))

(assert (=> bm!589199 d!2084855))

(declare-fun c!1228256 () Bool)

(declare-fun d!2084857 () Bool)

(assert (=> d!2084857 (= c!1228256 (isEmpty!38032 (ite (or c!1227937 c!1227939) (t!379513 s!2326) (ite (and c!1227943 c!1227941) s!2326 (t!379513 s!2326)))))))

(declare-fun e!4022823 () Bool)

(assert (=> d!2084857 (= (matchZipper!2527 (ite c!1227937 lt!2425952 (ite c!1227939 lt!2425989 (ite c!1227943 (ite c!1227941 z!1189 lt!2426042) lt!2425952))) (ite (or c!1227937 c!1227939) (t!379513 s!2326) (ite (and c!1227943 c!1227941) s!2326 (t!379513 s!2326)))) e!4022823)))

(declare-fun b!6653230 () Bool)

(assert (=> b!6653230 (= e!4022823 (nullableZipper!2255 (ite c!1227937 lt!2425952 (ite c!1227939 lt!2425989 (ite c!1227943 (ite c!1227941 z!1189 lt!2426042) lt!2425952)))))))

(declare-fun b!6653231 () Bool)

(assert (=> b!6653231 (= e!4022823 (matchZipper!2527 (derivationStepZipper!2481 (ite c!1227937 lt!2425952 (ite c!1227939 lt!2425989 (ite c!1227943 (ite c!1227941 z!1189 lt!2426042) lt!2425952))) (head!13473 (ite (or c!1227937 c!1227939) (t!379513 s!2326) (ite (and c!1227943 c!1227941) s!2326 (t!379513 s!2326))))) (tail!12558 (ite (or c!1227937 c!1227939) (t!379513 s!2326) (ite (and c!1227943 c!1227941) s!2326 (t!379513 s!2326))))))))

(assert (= (and d!2084857 c!1228256) b!6653230))

(assert (= (and d!2084857 (not c!1228256)) b!6653231))

(declare-fun m!7419626 () Bool)

(assert (=> d!2084857 m!7419626))

(declare-fun m!7419628 () Bool)

(assert (=> b!6653230 m!7419628))

(declare-fun m!7419630 () Bool)

(assert (=> b!6653231 m!7419630))

(assert (=> b!6653231 m!7419630))

(declare-fun m!7419632 () Bool)

(assert (=> b!6653231 m!7419632))

(declare-fun m!7419634 () Bool)

(assert (=> b!6653231 m!7419634))

(assert (=> b!6653231 m!7419632))

(assert (=> b!6653231 m!7419634))

(declare-fun m!7419636 () Bool)

(assert (=> b!6653231 m!7419636))

(assert (=> bm!589357 d!2084857))

(declare-fun d!2084859 () Bool)

(assert (=> d!2084859 (matchR!8698 (Concat!25360 (ite c!1227941 lt!2425900 (ite c!1227938 (reg!16844 (regOne!33542 r!7292)) lt!2425900)) (ite c!1227941 (regTwo!33542 r!7292) (ite c!1227938 lt!2425941 (regTwo!33542 r!7292)))) (++!14672 (ite c!1227941 (_2!36797 lt!2426051) (ite c!1227938 (_1!36797 lt!2426064) Nil!65720)) (ite c!1227941 (_2!36797 lt!2425896) (ite c!1227938 (_2!36797 lt!2426064) s!2326))))))

(declare-fun lt!2426257 () Unit!159541)

(assert (=> d!2084859 (= lt!2426257 (choose!49765 (ite c!1227941 lt!2425900 (ite c!1227938 (reg!16844 (regOne!33542 r!7292)) lt!2425900)) (ite c!1227941 (regTwo!33542 r!7292) (ite c!1227938 lt!2425941 (regTwo!33542 r!7292))) (ite c!1227941 (_2!36797 lt!2426051) (ite c!1227938 (_1!36797 lt!2426064) Nil!65720)) (ite c!1227941 (_2!36797 lt!2425896) (ite c!1227938 (_2!36797 lt!2426064) s!2326))))))

(declare-fun e!4022824 () Bool)

(assert (=> d!2084859 e!4022824))

(declare-fun res!2726405 () Bool)

(assert (=> d!2084859 (=> (not res!2726405) (not e!4022824))))

(assert (=> d!2084859 (= res!2726405 (validRegex!8251 (ite c!1227941 lt!2425900 (ite c!1227938 (reg!16844 (regOne!33542 r!7292)) lt!2425900))))))

(assert (=> d!2084859 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!376 (ite c!1227941 lt!2425900 (ite c!1227938 (reg!16844 (regOne!33542 r!7292)) lt!2425900)) (ite c!1227941 (regTwo!33542 r!7292) (ite c!1227938 lt!2425941 (regTwo!33542 r!7292))) (ite c!1227941 (_2!36797 lt!2426051) (ite c!1227938 (_1!36797 lt!2426064) Nil!65720)) (ite c!1227941 (_2!36797 lt!2425896) (ite c!1227938 (_2!36797 lt!2426064) s!2326))) lt!2426257)))

(declare-fun b!6653232 () Bool)

(assert (=> b!6653232 (= e!4022824 (validRegex!8251 (ite c!1227941 (regTwo!33542 r!7292) (ite c!1227938 lt!2425941 (regTwo!33542 r!7292)))))))

(assert (= (and d!2084859 res!2726405) b!6653232))

(declare-fun m!7419638 () Bool)

(assert (=> d!2084859 m!7419638))

(assert (=> d!2084859 m!7419638))

(declare-fun m!7419640 () Bool)

(assert (=> d!2084859 m!7419640))

(declare-fun m!7419642 () Bool)

(assert (=> d!2084859 m!7419642))

(declare-fun m!7419644 () Bool)

(assert (=> d!2084859 m!7419644))

(declare-fun m!7419646 () Bool)

(assert (=> b!6653232 m!7419646))

(assert (=> bm!589372 d!2084859))

(declare-fun b!6653238 () Bool)

(declare-fun e!4022829 () (InoxSet Context!11798))

(declare-fun call!589552 () (InoxSet Context!11798))

(assert (=> b!6653238 (= e!4022829 call!589552)))

(declare-fun b!6653239 () Bool)

(declare-fun c!1228258 () Bool)

(assert (=> b!6653239 (= c!1228258 ((_ is Star!16515) (ite c!1227937 (regOne!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292)))))))

(declare-fun e!4022832 () (InoxSet Context!11798))

(assert (=> b!6653239 (= e!4022832 e!4022829)))

(declare-fun b!6653240 () Bool)

(declare-fun e!4022830 () (InoxSet Context!11798))

(declare-fun e!4022827 () (InoxSet Context!11798))

(assert (=> b!6653240 (= e!4022830 e!4022827)))

(declare-fun c!1228262 () Bool)

(assert (=> b!6653240 (= c!1228262 ((_ is Union!16515) (ite c!1227937 (regOne!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292)))))))

(declare-fun b!6653241 () Bool)

(assert (=> b!6653241 (= e!4022829 ((as const (Array Context!11798 Bool)) false))))

(declare-fun b!6653242 () Bool)

(declare-fun c!1228260 () Bool)

(declare-fun e!4022831 () Bool)

(assert (=> b!6653242 (= c!1228260 e!4022831)))

(declare-fun res!2726407 () Bool)

(assert (=> b!6653242 (=> (not res!2726407) (not e!4022831))))

(assert (=> b!6653242 (= res!2726407 ((_ is Concat!25360) (ite c!1227937 (regOne!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292)))))))

(declare-fun e!4022828 () (InoxSet Context!11798))

(assert (=> b!6653242 (= e!4022827 e!4022828)))

(declare-fun b!6653243 () Bool)

(assert (=> b!6653243 (= e!4022830 (store ((as const (Array Context!11798 Bool)) false) (ite c!1227937 lt!2425966 lt!2426009) true))))

(declare-fun bm!589545 () Bool)

(declare-fun call!589554 () List!65845)

(declare-fun call!589551 () List!65845)

(assert (=> bm!589545 (= call!589554 call!589551)))

(declare-fun b!6653244 () Bool)

(declare-fun call!589550 () (InoxSet Context!11798))

(declare-fun call!589553 () (InoxSet Context!11798))

(assert (=> b!6653244 (= e!4022827 ((_ map or) call!589550 call!589553))))

(declare-fun b!6653245 () Bool)

(declare-fun call!589555 () (InoxSet Context!11798))

(assert (=> b!6653245 (= e!4022828 ((_ map or) call!589553 call!589555))))

(declare-fun b!6653246 () Bool)

(assert (=> b!6653246 (= e!4022831 (nullable!6508 (regOne!33542 (ite c!1227937 (regOne!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))))))))

(declare-fun bm!589546 () Bool)

(assert (=> bm!589546 (= call!589553 (derivationStepZipperDown!1763 (ite c!1228262 (regTwo!33543 (ite c!1227937 (regOne!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292)))) (regOne!33542 (ite c!1227937 (regOne!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))))) (ite c!1228262 (ite c!1227937 lt!2425966 lt!2426009) (Context!11799 call!589551)) (h!72168 s!2326)))))

(declare-fun c!1228261 () Bool)

(declare-fun d!2084861 () Bool)

(assert (=> d!2084861 (= c!1228261 (and ((_ is ElementMatch!16515) (ite c!1227937 (regOne!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292)))) (= (c!1227945 (ite c!1227937 (regOne!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292)))) (h!72168 s!2326))))))

(assert (=> d!2084861 (= (derivationStepZipperDown!1763 (ite c!1227937 (regOne!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (ite c!1227937 lt!2425966 lt!2426009) (h!72168 s!2326)) e!4022830)))

(declare-fun bm!589547 () Bool)

(assert (=> bm!589547 (= call!589555 call!589550)))

(declare-fun b!6653247 () Bool)

(assert (=> b!6653247 (= e!4022828 e!4022832)))

(declare-fun c!1228259 () Bool)

(assert (=> b!6653247 (= c!1228259 ((_ is Concat!25360) (ite c!1227937 (regOne!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292)))))))

(declare-fun bm!589548 () Bool)

(assert (=> bm!589548 (= call!589550 (derivationStepZipperDown!1763 (ite c!1228262 (regOne!33543 (ite c!1227937 (regOne!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292)))) (ite c!1228260 (regTwo!33542 (ite c!1227937 (regOne!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292)))) (ite c!1228259 (regOne!33542 (ite c!1227937 (regOne!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292)))) (reg!16844 (ite c!1227937 (regOne!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))))))) (ite (or c!1228262 c!1228260) (ite c!1227937 lt!2425966 lt!2426009) (Context!11799 call!589554)) (h!72168 s!2326)))))

(declare-fun bm!589549 () Bool)

(assert (=> bm!589549 (= call!589551 ($colon$colon!2352 (exprs!6399 (ite c!1227937 lt!2425966 lt!2426009)) (ite (or c!1228260 c!1228259) (regTwo!33542 (ite c!1227937 (regOne!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292)))) (ite c!1227937 (regOne!33543 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))))))))

(declare-fun bm!589550 () Bool)

(assert (=> bm!589550 (= call!589552 call!589555)))

(declare-fun b!6653248 () Bool)

(assert (=> b!6653248 (= e!4022832 call!589552)))

(assert (= (and d!2084861 c!1228261) b!6653243))

(assert (= (and d!2084861 (not c!1228261)) b!6653240))

(assert (= (and b!6653240 c!1228262) b!6653244))

(assert (= (and b!6653240 (not c!1228262)) b!6653242))

(assert (= (and b!6653242 res!2726407) b!6653246))

(assert (= (and b!6653242 c!1228260) b!6653245))

(assert (= (and b!6653242 (not c!1228260)) b!6653247))

(assert (= (and b!6653247 c!1228259) b!6653248))

(assert (= (and b!6653247 (not c!1228259)) b!6653239))

(assert (= (and b!6653239 c!1228258) b!6653238))

(assert (= (and b!6653239 (not c!1228258)) b!6653241))

(assert (= (or b!6653248 b!6653238) bm!589545))

(assert (= (or b!6653248 b!6653238) bm!589550))

(assert (= (or b!6653245 bm!589545) bm!589549))

(assert (= (or b!6653245 bm!589550) bm!589547))

(assert (= (or b!6653244 b!6653245) bm!589546))

(assert (= (or b!6653244 bm!589547) bm!589548))

(declare-fun m!7419660 () Bool)

(assert (=> bm!589549 m!7419660))

(declare-fun m!7419662 () Bool)

(assert (=> bm!589546 m!7419662))

(declare-fun m!7419664 () Bool)

(assert (=> b!6653246 m!7419664))

(declare-fun m!7419666 () Bool)

(assert (=> b!6653243 m!7419666))

(declare-fun m!7419668 () Bool)

(assert (=> bm!589548 m!7419668))

(assert (=> bm!589297 d!2084861))

(declare-fun bs!1713152 () Bool)

(declare-fun d!2084865 () Bool)

(assert (= bs!1713152 (and d!2084865 b!6652222)))

(declare-fun lambda!372850 () Int)

(assert (=> bs!1713152 (= lambda!372850 lambda!372754)))

(declare-fun bs!1713153 () Bool)

(assert (= bs!1713153 (and d!2084865 d!2084801)))

(assert (=> bs!1713153 (= lambda!372850 lambda!372824)))

(declare-fun bs!1713154 () Bool)

(assert (= bs!1713154 (and d!2084865 d!2084613)))

(assert (=> bs!1713154 (= lambda!372850 lambda!372780)))

(declare-fun bs!1713155 () Bool)

(assert (= bs!1713155 (and d!2084865 b!6652192)))

(assert (=> bs!1713155 (= lambda!372850 lambda!372752)))

(declare-fun bs!1713156 () Bool)

(assert (= bs!1713156 (and d!2084865 d!2084599)))

(assert (=> bs!1713156 (= lambda!372850 lambda!372768)))

(assert (=> d!2084865 (= (inv!84534 setElem!45465) (forall!15713 (exprs!6399 setElem!45465) lambda!372850))))

(declare-fun bs!1713157 () Bool)

(assert (= bs!1713157 d!2084865))

(declare-fun m!7419696 () Bool)

(assert (=> bs!1713157 m!7419696))

(assert (=> setNonEmpty!45465 d!2084865))

(declare-fun d!2084871 () Bool)

(declare-fun c!1228269 () Bool)

(assert (=> d!2084871 (= c!1228269 (isEmpty!38032 (t!379513 s!2326)))))

(declare-fun e!4022844 () Bool)

(assert (=> d!2084871 (= (matchZipper!2527 (ite c!1227937 ((_ map or) lt!2426007 lt!2425997) ((_ map or) lt!2426083 lt!2426055)) (t!379513 s!2326)) e!4022844)))

(declare-fun b!6653267 () Bool)

(assert (=> b!6653267 (= e!4022844 (nullableZipper!2255 (ite c!1227937 ((_ map or) lt!2426007 lt!2425997) ((_ map or) lt!2426083 lt!2426055))))))

(declare-fun b!6653268 () Bool)

(assert (=> b!6653268 (= e!4022844 (matchZipper!2527 (derivationStepZipper!2481 (ite c!1227937 ((_ map or) lt!2426007 lt!2425997) ((_ map or) lt!2426083 lt!2426055)) (head!13473 (t!379513 s!2326))) (tail!12558 (t!379513 s!2326))))))

(assert (= (and d!2084871 c!1228269) b!6653267))

(assert (= (and d!2084871 (not c!1228269)) b!6653268))

(declare-fun m!7419698 () Bool)

(assert (=> d!2084871 m!7419698))

(declare-fun m!7419700 () Bool)

(assert (=> b!6653267 m!7419700))

(declare-fun m!7419702 () Bool)

(assert (=> b!6653268 m!7419702))

(assert (=> b!6653268 m!7419702))

(declare-fun m!7419704 () Bool)

(assert (=> b!6653268 m!7419704))

(declare-fun m!7419706 () Bool)

(assert (=> b!6653268 m!7419706))

(assert (=> b!6653268 m!7419704))

(assert (=> b!6653268 m!7419706))

(declare-fun m!7419708 () Bool)

(assert (=> b!6653268 m!7419708))

(assert (=> bm!589281 d!2084871))

(declare-fun b!6653269 () Bool)

(declare-fun e!4022849 () Option!16406)

(declare-fun e!4022846 () Option!16406)

(assert (=> b!6653269 (= e!4022849 e!4022846)))

(declare-fun c!1228271 () Bool)

(assert (=> b!6653269 (= c!1228271 ((_ is Nil!65720) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (_1!36797 lt!2425939)))))))

(declare-fun b!6653270 () Bool)

(declare-fun lt!2426267 () Unit!159541)

(declare-fun lt!2426269 () Unit!159541)

(assert (=> b!6653270 (= lt!2426267 lt!2426269)))

(assert (=> b!6653270 (= (++!14672 (++!14672 Nil!65720 (Cons!65720 (h!72168 (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (_1!36797 lt!2425939)))) Nil!65720)) (t!379513 (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (_1!36797 lt!2425939))))) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (_1!36797 lt!2425939))))))

(assert (=> b!6653270 (= lt!2426269 (lemmaMoveElementToOtherListKeepsConcatEq!2653 Nil!65720 (h!72168 (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (_1!36797 lt!2425939)))) (t!379513 (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (_1!36797 lt!2425939)))) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (_1!36797 lt!2425939)))))))

(assert (=> b!6653270 (= e!4022846 (findConcatSeparation!2820 (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292))) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 lt!2425900)) (++!14672 Nil!65720 (Cons!65720 (h!72168 (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (_1!36797 lt!2425939)))) Nil!65720)) (t!379513 (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (_1!36797 lt!2425939)))) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (_1!36797 lt!2425939)))))))

(declare-fun b!6653271 () Bool)

(declare-fun res!2726416 () Bool)

(declare-fun e!4022845 () Bool)

(assert (=> b!6653271 (=> (not res!2726416) (not e!4022845))))

(declare-fun lt!2426268 () Option!16406)

(assert (=> b!6653271 (= res!2726416 (matchR!8698 (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 lt!2425900)) (_2!36797 (get!22854 lt!2426268))))))

(declare-fun b!6653272 () Bool)

(assert (=> b!6653272 (= e!4022849 (Some!16405 (tuple2!66989 Nil!65720 (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (_1!36797 lt!2425939))))))))

(declare-fun b!6653274 () Bool)

(assert (=> b!6653274 (= e!4022845 (= (++!14672 (_1!36797 (get!22854 lt!2426268)) (_2!36797 (get!22854 lt!2426268))) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (_1!36797 lt!2425939)))))))

(declare-fun e!4022847 () Bool)

(declare-fun b!6653275 () Bool)

(assert (=> b!6653275 (= e!4022847 (matchR!8698 (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 lt!2425900)) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (_1!36797 lt!2425939)))))))

(declare-fun b!6653276 () Bool)

(declare-fun res!2726418 () Bool)

(assert (=> b!6653276 (=> (not res!2726418) (not e!4022845))))

(assert (=> b!6653276 (= res!2726418 (matchR!8698 (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292))) (_1!36797 (get!22854 lt!2426268))))))

(declare-fun b!6653277 () Bool)

(declare-fun e!4022848 () Bool)

(assert (=> b!6653277 (= e!4022848 (not (isDefined!13109 lt!2426268)))))

(declare-fun d!2084873 () Bool)

(assert (=> d!2084873 e!4022848))

(declare-fun res!2726414 () Bool)

(assert (=> d!2084873 (=> res!2726414 e!4022848)))

(assert (=> d!2084873 (= res!2726414 e!4022845)))

(declare-fun res!2726417 () Bool)

(assert (=> d!2084873 (=> (not res!2726417) (not e!4022845))))

(assert (=> d!2084873 (= res!2726417 (isDefined!13109 lt!2426268))))

(assert (=> d!2084873 (= lt!2426268 e!4022849)))

(declare-fun c!1228270 () Bool)

(assert (=> d!2084873 (= c!1228270 e!4022847)))

(declare-fun res!2726415 () Bool)

(assert (=> d!2084873 (=> (not res!2726415) (not e!4022847))))

(assert (=> d!2084873 (= res!2726415 (matchR!8698 (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292))) Nil!65720))))

(assert (=> d!2084873 (validRegex!8251 (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292))))))

(assert (=> d!2084873 (= (findConcatSeparation!2820 (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292))) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 lt!2425900)) Nil!65720 (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (_1!36797 lt!2425939))) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (_1!36797 lt!2425939)))) lt!2426268)))

(declare-fun b!6653273 () Bool)

(assert (=> b!6653273 (= e!4022846 None!16405)))

(assert (= (and d!2084873 res!2726415) b!6653275))

(assert (= (and d!2084873 c!1228270) b!6653272))

(assert (= (and d!2084873 (not c!1228270)) b!6653269))

(assert (= (and b!6653269 c!1228271) b!6653273))

(assert (= (and b!6653269 (not c!1228271)) b!6653270))

(assert (= (and d!2084873 res!2726417) b!6653276))

(assert (= (and b!6653276 res!2726418) b!6653271))

(assert (= (and b!6653271 res!2726416) b!6653274))

(assert (= (and d!2084873 (not res!2726414)) b!6653277))

(declare-fun m!7419710 () Bool)

(assert (=> b!6653275 m!7419710))

(declare-fun m!7419712 () Bool)

(assert (=> d!2084873 m!7419712))

(declare-fun m!7419714 () Bool)

(assert (=> d!2084873 m!7419714))

(assert (=> d!2084873 m!7418702))

(declare-fun m!7419716 () Bool)

(assert (=> b!6653274 m!7419716))

(declare-fun m!7419718 () Bool)

(assert (=> b!6653274 m!7419718))

(assert (=> b!6653271 m!7419716))

(declare-fun m!7419720 () Bool)

(assert (=> b!6653271 m!7419720))

(assert (=> b!6653277 m!7419712))

(declare-fun m!7419722 () Bool)

(assert (=> b!6653270 m!7419722))

(assert (=> b!6653270 m!7419722))

(declare-fun m!7419724 () Bool)

(assert (=> b!6653270 m!7419724))

(declare-fun m!7419726 () Bool)

(assert (=> b!6653270 m!7419726))

(assert (=> b!6653270 m!7419722))

(declare-fun m!7419728 () Bool)

(assert (=> b!6653270 m!7419728))

(assert (=> b!6653276 m!7419716))

(declare-fun m!7419730 () Bool)

(assert (=> b!6653276 m!7419730))

(assert (=> bm!589263 d!2084873))

(declare-fun b!6653278 () Bool)

(declare-fun e!4022851 () (InoxSet Context!11798))

(declare-fun call!589558 () (InoxSet Context!11798))

(assert (=> b!6653278 (= e!4022851 call!589558)))

(declare-fun bm!589553 () Bool)

(assert (=> bm!589553 (= call!589558 (derivationStepZipperDown!1763 (h!72169 (exprs!6399 (ite c!1227937 lt!2426001 (ite c!1227939 lt!2425969 lt!2425930)))) (Context!11799 (t!379514 (exprs!6399 (ite c!1227937 lt!2426001 (ite c!1227939 lt!2425969 lt!2425930))))) (h!72168 s!2326)))))

(declare-fun d!2084875 () Bool)

(declare-fun c!1228272 () Bool)

(declare-fun e!4022850 () Bool)

(assert (=> d!2084875 (= c!1228272 e!4022850)))

(declare-fun res!2726419 () Bool)

(assert (=> d!2084875 (=> (not res!2726419) (not e!4022850))))

(assert (=> d!2084875 (= res!2726419 ((_ is Cons!65721) (exprs!6399 (ite c!1227937 lt!2426001 (ite c!1227939 lt!2425969 lt!2425930)))))))

(declare-fun e!4022852 () (InoxSet Context!11798))

(assert (=> d!2084875 (= (derivationStepZipperUp!1689 (ite c!1227937 lt!2426001 (ite c!1227939 lt!2425969 lt!2425930)) (h!72168 s!2326)) e!4022852)))

(declare-fun b!6653279 () Bool)

(assert (=> b!6653279 (= e!4022852 ((_ map or) call!589558 (derivationStepZipperUp!1689 (Context!11799 (t!379514 (exprs!6399 (ite c!1227937 lt!2426001 (ite c!1227939 lt!2425969 lt!2425930))))) (h!72168 s!2326))))))

(declare-fun b!6653280 () Bool)

(assert (=> b!6653280 (= e!4022850 (nullable!6508 (h!72169 (exprs!6399 (ite c!1227937 lt!2426001 (ite c!1227939 lt!2425969 lt!2425930))))))))

(declare-fun b!6653281 () Bool)

(assert (=> b!6653281 (= e!4022852 e!4022851)))

(declare-fun c!1228273 () Bool)

(assert (=> b!6653281 (= c!1228273 ((_ is Cons!65721) (exprs!6399 (ite c!1227937 lt!2426001 (ite c!1227939 lt!2425969 lt!2425930)))))))

(declare-fun b!6653282 () Bool)

(assert (=> b!6653282 (= e!4022851 ((as const (Array Context!11798 Bool)) false))))

(assert (= (and d!2084875 res!2726419) b!6653280))

(assert (= (and d!2084875 c!1228272) b!6653279))

(assert (= (and d!2084875 (not c!1228272)) b!6653281))

(assert (= (and b!6653281 c!1228273) b!6653278))

(assert (= (and b!6653281 (not c!1228273)) b!6653282))

(assert (= (or b!6653279 b!6653278) bm!589553))

(declare-fun m!7419732 () Bool)

(assert (=> bm!589553 m!7419732))

(declare-fun m!7419734 () Bool)

(assert (=> b!6653279 m!7419734))

(declare-fun m!7419736 () Bool)

(assert (=> b!6653280 m!7419736))

(assert (=> bm!589250 d!2084875))

(declare-fun b!6653289 () Bool)

(assert (=> b!6653289 true))

(declare-fun bs!1713193 () Bool)

(declare-fun b!6653291 () Bool)

(assert (= bs!1713193 (and b!6653291 b!6653289)))

(declare-fun lt!2426280 () Int)

(declare-fun lambda!372861 () Int)

(declare-fun lt!2426281 () Int)

(declare-fun lambda!372860 () Int)

(assert (=> bs!1713193 (= (= lt!2426280 lt!2426281) (= lambda!372861 lambda!372860))))

(assert (=> b!6653291 true))

(declare-fun d!2084877 () Bool)

(declare-fun e!4022857 () Bool)

(assert (=> d!2084877 e!4022857))

(declare-fun res!2726422 () Bool)

(assert (=> d!2084877 (=> (not res!2726422) (not e!4022857))))

(assert (=> d!2084877 (= res!2726422 (>= lt!2426280 0))))

(declare-fun e!4022858 () Int)

(assert (=> d!2084877 (= lt!2426280 e!4022858)))

(declare-fun c!1228282 () Bool)

(assert (=> d!2084877 (= c!1228282 ((_ is Cons!65722) zl!343))))

(assert (=> d!2084877 (= (zipperDepth!416 zl!343) lt!2426280)))

(assert (=> b!6653289 (= e!4022858 lt!2426281)))

(declare-fun contextDepth!305 (Context!11798) Int)

(assert (=> b!6653289 (= lt!2426281 (maxBigInt!0 (contextDepth!305 (h!72170 zl!343)) (zipperDepth!416 (t!379515 zl!343))))))

(declare-fun lambda!372859 () Int)

(declare-fun lt!2426279 () Unit!159541)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!289 (List!65846 Int Int Int) Unit!159541)

(assert (=> b!6653289 (= lt!2426279 (lemmaForallContextDepthBiggerThanTransitive!289 (t!379515 zl!343) lt!2426281 (zipperDepth!416 (t!379515 zl!343)) lambda!372859))))

(declare-fun forall!15715 (List!65846 Int) Bool)

(assert (=> b!6653289 (forall!15715 (t!379515 zl!343) lambda!372860)))

(declare-fun lt!2426278 () Unit!159541)

(assert (=> b!6653289 (= lt!2426278 lt!2426279)))

(declare-fun b!6653290 () Bool)

(assert (=> b!6653290 (= e!4022858 0)))

(assert (=> b!6653291 (= e!4022857 (forall!15715 zl!343 lambda!372861))))

(assert (= (and d!2084877 c!1228282) b!6653289))

(assert (= (and d!2084877 (not c!1228282)) b!6653290))

(assert (= (and d!2084877 res!2726422) b!6653291))

(declare-fun m!7419746 () Bool)

(assert (=> b!6653289 m!7419746))

(declare-fun m!7419748 () Bool)

(assert (=> b!6653289 m!7419748))

(declare-fun m!7419750 () Bool)

(assert (=> b!6653289 m!7419750))

(declare-fun m!7419752 () Bool)

(assert (=> b!6653289 m!7419752))

(assert (=> b!6653289 m!7419748))

(declare-fun m!7419754 () Bool)

(assert (=> b!6653289 m!7419754))

(assert (=> b!6653289 m!7419748))

(assert (=> b!6653289 m!7419752))

(declare-fun m!7419756 () Bool)

(assert (=> b!6653291 m!7419756))

(assert (=> b!6652212 d!2084877))

(declare-fun bs!1713194 () Bool)

(declare-fun b!6653294 () Bool)

(assert (= bs!1713194 (and b!6653294 b!6653289)))

(declare-fun lambda!372862 () Int)

(assert (=> bs!1713194 (= lambda!372862 lambda!372859)))

(declare-fun lambda!372863 () Int)

(declare-fun lt!2426285 () Int)

(assert (=> bs!1713194 (= (= lt!2426285 lt!2426281) (= lambda!372863 lambda!372860))))

(declare-fun bs!1713195 () Bool)

(assert (= bs!1713195 (and b!6653294 b!6653291)))

(assert (=> bs!1713195 (= (= lt!2426285 lt!2426280) (= lambda!372863 lambda!372861))))

(assert (=> b!6653294 true))

(declare-fun bs!1713196 () Bool)

(declare-fun b!6653296 () Bool)

(assert (= bs!1713196 (and b!6653296 b!6653289)))

(declare-fun lt!2426284 () Int)

(declare-fun lambda!372864 () Int)

(assert (=> bs!1713196 (= (= lt!2426284 lt!2426281) (= lambda!372864 lambda!372860))))

(declare-fun bs!1713197 () Bool)

(assert (= bs!1713197 (and b!6653296 b!6653291)))

(assert (=> bs!1713197 (= (= lt!2426284 lt!2426280) (= lambda!372864 lambda!372861))))

(declare-fun bs!1713198 () Bool)

(assert (= bs!1713198 (and b!6653296 b!6653294)))

(assert (=> bs!1713198 (= (= lt!2426284 lt!2426285) (= lambda!372864 lambda!372863))))

(assert (=> b!6653296 true))

(declare-fun d!2084881 () Bool)

(declare-fun e!4022859 () Bool)

(assert (=> d!2084881 e!4022859))

(declare-fun res!2726423 () Bool)

(assert (=> d!2084881 (=> (not res!2726423) (not e!4022859))))

(assert (=> d!2084881 (= res!2726423 (>= lt!2426284 0))))

(declare-fun e!4022860 () Int)

(assert (=> d!2084881 (= lt!2426284 e!4022860)))

(declare-fun c!1228283 () Bool)

(assert (=> d!2084881 (= c!1228283 ((_ is Cons!65722) (Cons!65722 lt!2425966 Nil!65722)))))

(assert (=> d!2084881 (= (zipperDepth!416 (Cons!65722 lt!2425966 Nil!65722)) lt!2426284)))

(assert (=> b!6653294 (= e!4022860 lt!2426285)))

(assert (=> b!6653294 (= lt!2426285 (maxBigInt!0 (contextDepth!305 (h!72170 (Cons!65722 lt!2425966 Nil!65722))) (zipperDepth!416 (t!379515 (Cons!65722 lt!2425966 Nil!65722)))))))

(declare-fun lt!2426283 () Unit!159541)

(assert (=> b!6653294 (= lt!2426283 (lemmaForallContextDepthBiggerThanTransitive!289 (t!379515 (Cons!65722 lt!2425966 Nil!65722)) lt!2426285 (zipperDepth!416 (t!379515 (Cons!65722 lt!2425966 Nil!65722))) lambda!372862))))

(assert (=> b!6653294 (forall!15715 (t!379515 (Cons!65722 lt!2425966 Nil!65722)) lambda!372863)))

(declare-fun lt!2426282 () Unit!159541)

(assert (=> b!6653294 (= lt!2426282 lt!2426283)))

(declare-fun b!6653295 () Bool)

(assert (=> b!6653295 (= e!4022860 0)))

(assert (=> b!6653296 (= e!4022859 (forall!15715 (Cons!65722 lt!2425966 Nil!65722) lambda!372864))))

(assert (= (and d!2084881 c!1228283) b!6653294))

(assert (= (and d!2084881 (not c!1228283)) b!6653295))

(assert (= (and d!2084881 res!2726423) b!6653296))

(declare-fun m!7419758 () Bool)

(assert (=> b!6653294 m!7419758))

(declare-fun m!7419760 () Bool)

(assert (=> b!6653294 m!7419760))

(declare-fun m!7419762 () Bool)

(assert (=> b!6653294 m!7419762))

(declare-fun m!7419764 () Bool)

(assert (=> b!6653294 m!7419764))

(assert (=> b!6653294 m!7419760))

(declare-fun m!7419766 () Bool)

(assert (=> b!6653294 m!7419766))

(assert (=> b!6653294 m!7419760))

(assert (=> b!6653294 m!7419764))

(declare-fun m!7419768 () Bool)

(assert (=> b!6653296 m!7419768))

(assert (=> b!6652212 d!2084881))

(declare-fun b!6653297 () Bool)

(declare-fun e!4022862 () Bool)

(assert (=> b!6653297 (= e!4022862 (matchR!8698 (derivativeStep!5195 (ite c!1227938 lt!2425941 lt!2425900) (head!13473 (ite c!1227938 (_2!36797 lt!2426064) Nil!65720))) (tail!12558 (ite c!1227938 (_2!36797 lt!2426064) Nil!65720))))))

(declare-fun b!6653298 () Bool)

(declare-fun e!4022864 () Bool)

(assert (=> b!6653298 (= e!4022864 (not (= (head!13473 (ite c!1227938 (_2!36797 lt!2426064) Nil!65720)) (c!1227945 (ite c!1227938 lt!2425941 lt!2425900)))))))

(declare-fun b!6653299 () Bool)

(declare-fun e!4022861 () Bool)

(declare-fun lt!2426286 () Bool)

(assert (=> b!6653299 (= e!4022861 (not lt!2426286))))

(declare-fun b!6653300 () Bool)

(declare-fun e!4022866 () Bool)

(declare-fun call!589559 () Bool)

(assert (=> b!6653300 (= e!4022866 (= lt!2426286 call!589559))))

(declare-fun b!6653301 () Bool)

(assert (=> b!6653301 (= e!4022866 e!4022861)))

(declare-fun c!1228284 () Bool)

(assert (=> b!6653301 (= c!1228284 ((_ is EmptyLang!16515) (ite c!1227938 lt!2425941 lt!2425900)))))

(declare-fun d!2084883 () Bool)

(assert (=> d!2084883 e!4022866))

(declare-fun c!1228286 () Bool)

(assert (=> d!2084883 (= c!1228286 ((_ is EmptyExpr!16515) (ite c!1227938 lt!2425941 lt!2425900)))))

(assert (=> d!2084883 (= lt!2426286 e!4022862)))

(declare-fun c!1228285 () Bool)

(assert (=> d!2084883 (= c!1228285 (isEmpty!38032 (ite c!1227938 (_2!36797 lt!2426064) Nil!65720)))))

(assert (=> d!2084883 (validRegex!8251 (ite c!1227938 lt!2425941 lt!2425900))))

(assert (=> d!2084883 (= (matchR!8698 (ite c!1227938 lt!2425941 lt!2425900) (ite c!1227938 (_2!36797 lt!2426064) Nil!65720)) lt!2426286)))

(declare-fun b!6653302 () Bool)

(declare-fun res!2726426 () Bool)

(declare-fun e!4022863 () Bool)

(assert (=> b!6653302 (=> res!2726426 e!4022863)))

(assert (=> b!6653302 (= res!2726426 (not ((_ is ElementMatch!16515) (ite c!1227938 lt!2425941 lt!2425900))))))

(assert (=> b!6653302 (= e!4022861 e!4022863)))

(declare-fun b!6653303 () Bool)

(assert (=> b!6653303 (= e!4022862 (nullable!6508 (ite c!1227938 lt!2425941 lt!2425900)))))

(declare-fun bm!589554 () Bool)

(assert (=> bm!589554 (= call!589559 (isEmpty!38032 (ite c!1227938 (_2!36797 lt!2426064) Nil!65720)))))

(declare-fun b!6653304 () Bool)

(declare-fun res!2726425 () Bool)

(assert (=> b!6653304 (=> res!2726425 e!4022863)))

(declare-fun e!4022865 () Bool)

(assert (=> b!6653304 (= res!2726425 e!4022865)))

(declare-fun res!2726428 () Bool)

(assert (=> b!6653304 (=> (not res!2726428) (not e!4022865))))

(assert (=> b!6653304 (= res!2726428 lt!2426286)))

(declare-fun b!6653305 () Bool)

(declare-fun e!4022867 () Bool)

(assert (=> b!6653305 (= e!4022863 e!4022867)))

(declare-fun res!2726424 () Bool)

(assert (=> b!6653305 (=> (not res!2726424) (not e!4022867))))

(assert (=> b!6653305 (= res!2726424 (not lt!2426286))))

(declare-fun b!6653306 () Bool)

(assert (=> b!6653306 (= e!4022867 e!4022864)))

(declare-fun res!2726431 () Bool)

(assert (=> b!6653306 (=> res!2726431 e!4022864)))

(assert (=> b!6653306 (= res!2726431 call!589559)))

(declare-fun b!6653307 () Bool)

(declare-fun res!2726430 () Bool)

(assert (=> b!6653307 (=> (not res!2726430) (not e!4022865))))

(assert (=> b!6653307 (= res!2726430 (isEmpty!38032 (tail!12558 (ite c!1227938 (_2!36797 lt!2426064) Nil!65720))))))

(declare-fun b!6653308 () Bool)

(assert (=> b!6653308 (= e!4022865 (= (head!13473 (ite c!1227938 (_2!36797 lt!2426064) Nil!65720)) (c!1227945 (ite c!1227938 lt!2425941 lt!2425900))))))

(declare-fun b!6653309 () Bool)

(declare-fun res!2726427 () Bool)

(assert (=> b!6653309 (=> (not res!2726427) (not e!4022865))))

(assert (=> b!6653309 (= res!2726427 (not call!589559))))

(declare-fun b!6653310 () Bool)

(declare-fun res!2726429 () Bool)

(assert (=> b!6653310 (=> res!2726429 e!4022864)))

(assert (=> b!6653310 (= res!2726429 (not (isEmpty!38032 (tail!12558 (ite c!1227938 (_2!36797 lt!2426064) Nil!65720)))))))

(assert (= (and d!2084883 c!1228285) b!6653303))

(assert (= (and d!2084883 (not c!1228285)) b!6653297))

(assert (= (and d!2084883 c!1228286) b!6653300))

(assert (= (and d!2084883 (not c!1228286)) b!6653301))

(assert (= (and b!6653301 c!1228284) b!6653299))

(assert (= (and b!6653301 (not c!1228284)) b!6653302))

(assert (= (and b!6653302 (not res!2726426)) b!6653304))

(assert (= (and b!6653304 res!2726428) b!6653309))

(assert (= (and b!6653309 res!2726427) b!6653307))

(assert (= (and b!6653307 res!2726430) b!6653308))

(assert (= (and b!6653304 (not res!2726425)) b!6653305))

(assert (= (and b!6653305 res!2726424) b!6653306))

(assert (= (and b!6653306 (not res!2726431)) b!6653310))

(assert (= (and b!6653310 (not res!2726429)) b!6653298))

(assert (= (or b!6653300 b!6653306 b!6653309) bm!589554))

(declare-fun m!7419770 () Bool)

(assert (=> d!2084883 m!7419770))

(declare-fun m!7419772 () Bool)

(assert (=> d!2084883 m!7419772))

(declare-fun m!7419774 () Bool)

(assert (=> b!6653303 m!7419774))

(declare-fun m!7419776 () Bool)

(assert (=> b!6653297 m!7419776))

(assert (=> b!6653297 m!7419776))

(declare-fun m!7419778 () Bool)

(assert (=> b!6653297 m!7419778))

(declare-fun m!7419780 () Bool)

(assert (=> b!6653297 m!7419780))

(assert (=> b!6653297 m!7419778))

(assert (=> b!6653297 m!7419780))

(declare-fun m!7419782 () Bool)

(assert (=> b!6653297 m!7419782))

(assert (=> b!6653308 m!7419776))

(assert (=> b!6653310 m!7419780))

(assert (=> b!6653310 m!7419780))

(declare-fun m!7419784 () Bool)

(assert (=> b!6653310 m!7419784))

(assert (=> b!6653298 m!7419776))

(assert (=> b!6653307 m!7419780))

(assert (=> b!6653307 m!7419780))

(assert (=> b!6653307 m!7419784))

(assert (=> bm!589554 m!7419770))

(assert (=> bm!589330 d!2084883))

(declare-fun d!2084885 () Bool)

(assert (=> d!2084885 (= (Exists!3585 (ite c!1227939 lambda!372739 (ite c!1227934 lambda!372743 (ite c!1227941 lambda!372747 lambda!372757)))) (choose!49772 (ite c!1227939 lambda!372739 (ite c!1227934 lambda!372743 (ite c!1227941 lambda!372747 lambda!372757)))))))

(declare-fun bs!1713199 () Bool)

(assert (= bs!1713199 d!2084885))

(declare-fun m!7419786 () Bool)

(assert (=> bs!1713199 m!7419786))

(assert (=> bm!589304 d!2084885))

(declare-fun d!2084887 () Bool)

(declare-fun e!4022880 () Bool)

(assert (=> d!2084887 (= (matchZipper!2527 ((_ map or) lt!2425997 lt!2425952) (t!379513 s!2326)) e!4022880)))

(declare-fun res!2726444 () Bool)

(assert (=> d!2084887 (=> res!2726444 e!4022880)))

(assert (=> d!2084887 (= res!2726444 (matchZipper!2527 lt!2425997 (t!379513 s!2326)))))

(declare-fun lt!2426295 () Unit!159541)

(declare-fun choose!49785 ((InoxSet Context!11798) (InoxSet Context!11798) List!65844) Unit!159541)

(assert (=> d!2084887 (= lt!2426295 (choose!49785 lt!2425997 lt!2425952 (t!379513 s!2326)))))

(assert (=> d!2084887 (= (lemmaZipperConcatMatchesSameAsBothZippers!1346 lt!2425997 lt!2425952 (t!379513 s!2326)) lt!2426295)))

(declare-fun b!6653331 () Bool)

(assert (=> b!6653331 (= e!4022880 (matchZipper!2527 lt!2425952 (t!379513 s!2326)))))

(assert (= (and d!2084887 (not res!2726444)) b!6653331))

(declare-fun m!7419788 () Bool)

(assert (=> d!2084887 m!7419788))

(declare-fun m!7419790 () Bool)

(assert (=> d!2084887 m!7419790))

(declare-fun m!7419792 () Bool)

(assert (=> d!2084887 m!7419792))

(assert (=> b!6653331 m!7418556))

(assert (=> b!6652230 d!2084887))

(declare-fun bs!1713200 () Bool)

(declare-fun b!6653338 () Bool)

(assert (= bs!1713200 (and b!6653338 d!2084621)))

(declare-fun lambda!372865 () Int)

(assert (=> bs!1713200 (not (= lambda!372865 lambda!372789))))

(declare-fun bs!1713201 () Bool)

(assert (= bs!1713201 (and b!6653338 b!6652222)))

(assert (=> bs!1713201 (not (= lambda!372865 lambda!372758))))

(declare-fun bs!1713202 () Bool)

(assert (= bs!1713202 (and b!6653338 d!2084839)))

(assert (=> bs!1713202 (not (= lambda!372865 lambda!372826))))

(declare-fun bs!1713203 () Bool)

(assert (= bs!1713203 (and b!6653338 b!6652208)))

(assert (=> bs!1713203 (not (= lambda!372865 lambda!372761))))

(declare-fun bs!1713204 () Bool)

(assert (= bs!1713204 (and b!6653338 b!6652251)))

(assert (=> bs!1713204 (not (= lambda!372865 lambda!372746))))

(declare-fun bs!1713205 () Bool)

(assert (= bs!1713205 (and b!6653338 b!6652829)))

(assert (=> bs!1713205 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) s!2326) (= (reg!16844 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (reg!16844 r!7292)) (= (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292))))) r!7292)) (= lambda!372865 lambda!372803))))

(assert (=> bs!1713204 (not (= lambda!372865 lambda!372745))))

(declare-fun bs!1713206 () Bool)

(assert (= bs!1713206 (and b!6653338 b!6652830)))

(assert (=> bs!1713206 (not (= lambda!372865 lambda!372805))))

(assert (=> bs!1713204 (not (= lambda!372865 lambda!372744))))

(assert (=> bs!1713201 (not (= lambda!372865 lambda!372757))))

(declare-fun bs!1713207 () Bool)

(assert (= bs!1713207 (and b!6653338 b!6652192)))

(assert (=> bs!1713207 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) (_1!36797 lt!2425896)) (= (reg!16844 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292))))) lt!2425900)) (= lambda!372865 lambda!372750))))

(declare-fun bs!1713208 () Bool)

(assert (= bs!1713208 (and b!6653338 b!6652250)))

(assert (=> bs!1713208 (not (= lambda!372865 lambda!372742))))

(assert (=> bs!1713204 (not (= lambda!372865 lambda!372743))))

(assert (=> bs!1713203 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) Nil!65720) (= (reg!16844 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292))))) lt!2425900)) (= lambda!372865 lambda!372762))))

(assert (=> bs!1713203 (not (= lambda!372865 lambda!372760))))

(assert (=> bs!1713200 (not (= lambda!372865 lambda!372791))))

(declare-fun bs!1713209 () Bool)

(assert (= bs!1713209 (and b!6653338 b!6653051)))

(assert (=> bs!1713209 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) s!2326) (= (reg!16844 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (reg!16844 lt!2425903)) (= (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292))))) lt!2425903)) (= lambda!372865 lambda!372822))))

(assert (=> bs!1713201 (not (= lambda!372865 lambda!372756))))

(assert (=> bs!1713207 (not (= lambda!372865 lambda!372751))))

(declare-fun bs!1713210 () Bool)

(assert (= bs!1713210 (and b!6653338 b!6653208)))

(assert (=> bs!1713210 (not (= lambda!372865 lambda!372835))))

(declare-fun bs!1713211 () Bool)

(assert (= bs!1713211 (and b!6653338 b!6652194)))

(assert (=> bs!1713211 (not (= lambda!372865 lambda!372737))))

(declare-fun bs!1713212 () Bool)

(assert (= bs!1713212 (and b!6653338 b!6652196)))

(assert (=> bs!1713212 (not (= lambda!372865 lambda!372748))))

(assert (=> bs!1713201 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) (_1!36797 lt!2425939)) (= (reg!16844 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292))))) lt!2425900)) (= lambda!372865 lambda!372759))))

(assert (=> bs!1713212 (not (= lambda!372865 lambda!372747))))

(declare-fun bs!1713213 () Bool)

(assert (= bs!1713213 (and b!6653338 b!6653207)))

(assert (=> bs!1713213 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939))) (= (reg!16844 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (reg!16844 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074)))) (= (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292))))) (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074)))) (= lambda!372865 lambda!372834))))

(assert (=> bs!1713208 (not (= lambda!372865 lambda!372739))))

(assert (=> bs!1713202 (not (= lambda!372865 lambda!372831))))

(assert (=> bs!1713208 (not (= lambda!372865 lambda!372740))))

(assert (=> bs!1713207 (not (= lambda!372865 lambda!372749))))

(assert (=> bs!1713208 (not (= lambda!372865 lambda!372741))))

(declare-fun bs!1713214 () Bool)

(assert (= bs!1713214 (and b!6653338 b!6653052)))

(assert (=> bs!1713214 (not (= lambda!372865 lambda!372823))))

(assert (=> bs!1713201 (not (= lambda!372865 lambda!372755))))

(assert (=> bs!1713211 (not (= lambda!372865 lambda!372736))))

(assert (=> b!6653338 true))

(assert (=> b!6653338 true))

(declare-fun bs!1713215 () Bool)

(declare-fun b!6653339 () Bool)

(assert (= bs!1713215 (and b!6653339 d!2084621)))

(declare-fun lambda!372866 () Int)

(assert (=> bs!1713215 (not (= lambda!372866 lambda!372789))))

(declare-fun bs!1713216 () Bool)

(assert (= bs!1713216 (and b!6653339 b!6652222)))

(assert (=> bs!1713216 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) (_1!36797 lt!2425939)) (= (regOne!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) lt!2425900)) (= lambda!372866 lambda!372758))))

(declare-fun bs!1713217 () Bool)

(assert (= bs!1713217 (and b!6653339 d!2084839)))

(assert (=> bs!1713217 (not (= lambda!372866 lambda!372826))))

(declare-fun bs!1713218 () Bool)

(assert (= bs!1713218 (and b!6653339 b!6652208)))

(assert (=> bs!1713218 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) Nil!65720) (= (regOne!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) lt!2425900)) (= lambda!372866 lambda!372761))))

(declare-fun bs!1713219 () Bool)

(assert (= bs!1713219 (and b!6653339 b!6652251)))

(assert (=> bs!1713219 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) s!2326) (= (regOne!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) lt!2425898)) (= lambda!372866 lambda!372746))))

(declare-fun bs!1713220 () Bool)

(assert (= bs!1713220 (and b!6653339 b!6652829)))

(assert (=> bs!1713220 (not (= lambda!372866 lambda!372803))))

(assert (=> bs!1713219 (not (= lambda!372866 lambda!372745))))

(declare-fun bs!1713221 () Bool)

(assert (= bs!1713221 (and b!6653339 b!6652830)))

(assert (=> bs!1713221 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) s!2326) (= (regOne!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (regOne!33542 r!7292)) (= (regTwo!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (regTwo!33542 r!7292))) (= lambda!372866 lambda!372805))))

(assert (=> bs!1713219 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) s!2326) (= (regOne!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) lt!2425950)) (= lambda!372866 lambda!372744))))

(assert (=> bs!1713216 (not (= lambda!372866 lambda!372757))))

(declare-fun bs!1713222 () Bool)

(assert (= bs!1713222 (and b!6653339 b!6652192)))

(assert (=> bs!1713222 (not (= lambda!372866 lambda!372750))))

(declare-fun bs!1713223 () Bool)

(assert (= bs!1713223 (and b!6653339 b!6652250)))

(assert (=> bs!1713223 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) s!2326) (= (regOne!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) lt!2426072)) (= lambda!372866 lambda!372742))))

(assert (=> bs!1713219 (not (= lambda!372866 lambda!372743))))

(assert (=> bs!1713218 (not (= lambda!372866 lambda!372762))))

(assert (=> bs!1713218 (not (= lambda!372866 lambda!372760))))

(assert (=> bs!1713215 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)))) (= (regOne!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292))))))) (= (regTwo!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))))) (= lambda!372866 lambda!372791))))

(declare-fun bs!1713224 () Bool)

(assert (= bs!1713224 (and b!6653339 b!6653051)))

(assert (=> bs!1713224 (not (= lambda!372866 lambda!372822))))

(assert (=> bs!1713216 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) s!2326) (= (regOne!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) lt!2426074) (= (regTwo!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (regTwo!33542 r!7292))) (= lambda!372866 lambda!372756))))

(assert (=> bs!1713222 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) (_1!36797 lt!2425896)) (= (regOne!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) lt!2425900)) (= lambda!372866 lambda!372751))))

(declare-fun bs!1713225 () Bool)

(assert (= bs!1713225 (and b!6653339 b!6653338)))

(assert (=> bs!1713225 (not (= lambda!372866 lambda!372865))))

(declare-fun bs!1713226 () Bool)

(assert (= bs!1713226 (and b!6653339 b!6653208)))

(assert (=> bs!1713226 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939))) (= (regOne!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (regOne!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074)))) (= (regTwo!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (regTwo!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))))) (= lambda!372866 lambda!372835))))

(declare-fun bs!1713227 () Bool)

(assert (= bs!1713227 (and b!6653339 b!6652194)))

(assert (=> bs!1713227 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) s!2326) (= (regOne!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (regOne!33542 r!7292)) (= (regTwo!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (regTwo!33542 r!7292))) (= lambda!372866 lambda!372737))))

(declare-fun bs!1713228 () Bool)

(assert (= bs!1713228 (and b!6653339 b!6652196)))

(assert (=> bs!1713228 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) s!2326) (= (regOne!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) lt!2425900) (= (regTwo!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (regTwo!33542 r!7292))) (= lambda!372866 lambda!372748))))

(assert (=> bs!1713216 (not (= lambda!372866 lambda!372759))))

(assert (=> bs!1713228 (not (= lambda!372866 lambda!372747))))

(declare-fun bs!1713229 () Bool)

(assert (= bs!1713229 (and b!6653339 b!6653207)))

(assert (=> bs!1713229 (not (= lambda!372866 lambda!372834))))

(assert (=> bs!1713223 (not (= lambda!372866 lambda!372739))))

(assert (=> bs!1713217 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939))) (= (regOne!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))))) (= (regTwo!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))))) (= lambda!372866 lambda!372831))))

(assert (=> bs!1713223 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) s!2326) (= (regOne!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) lt!2425943)) (= lambda!372866 lambda!372740))))

(assert (=> bs!1713222 (not (= lambda!372866 lambda!372749))))

(assert (=> bs!1713223 (not (= lambda!372866 lambda!372741))))

(declare-fun bs!1713230 () Bool)

(assert (= bs!1713230 (and b!6653339 b!6653052)))

(assert (=> bs!1713230 (= (and (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) s!2326) (= (regOne!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (regOne!33542 lt!2425903)) (= (regTwo!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (regTwo!33542 lt!2425903))) (= lambda!372866 lambda!372823))))

(assert (=> bs!1713216 (not (= lambda!372866 lambda!372755))))

(assert (=> bs!1713227 (not (= lambda!372866 lambda!372736))))

(assert (=> b!6653339 true))

(assert (=> b!6653339 true))

(declare-fun call!589561 () Bool)

(declare-fun bm!589555 () Bool)

(assert (=> bm!589555 (= call!589561 (isEmpty!38032 (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326))))))

(declare-fun c!1228294 () Bool)

(declare-fun b!6653332 () Bool)

(assert (=> b!6653332 (= c!1228294 ((_ is ElementMatch!16515) (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))))))

(declare-fun e!4022887 () Bool)

(declare-fun e!4022885 () Bool)

(assert (=> b!6653332 (= e!4022887 e!4022885)))

(declare-fun call!589560 () Bool)

(declare-fun bm!589556 () Bool)

(declare-fun c!1228293 () Bool)

(assert (=> bm!589556 (= call!589560 (Exists!3585 (ite c!1228293 lambda!372865 lambda!372866)))))

(declare-fun b!6653333 () Bool)

(declare-fun e!4022883 () Bool)

(assert (=> b!6653333 (= e!4022883 call!589561)))

(declare-fun b!6653334 () Bool)

(declare-fun e!4022882 () Bool)

(assert (=> b!6653334 (= e!4022882 (matchRSpec!3616 (regTwo!33543 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326))))))

(declare-fun b!6653335 () Bool)

(assert (=> b!6653335 (= e!4022885 (= (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326)) (Cons!65720 (c!1227945 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) Nil!65720)))))

(declare-fun b!6653336 () Bool)

(assert (=> b!6653336 (= e!4022883 e!4022887)))

(declare-fun res!2726446 () Bool)

(assert (=> b!6653336 (= res!2726446 (not ((_ is EmptyLang!16515) (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292))))))))))

(assert (=> b!6653336 (=> (not res!2726446) (not e!4022887))))

(declare-fun b!6653337 () Bool)

(declare-fun c!1228291 () Bool)

(assert (=> b!6653337 (= c!1228291 ((_ is Union!16515) (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))))))

(declare-fun e!4022884 () Bool)

(assert (=> b!6653337 (= e!4022885 e!4022884)))

(declare-fun e!4022886 () Bool)

(assert (=> b!6653338 (= e!4022886 call!589560)))

(declare-fun d!2084889 () Bool)

(declare-fun c!1228292 () Bool)

(assert (=> d!2084889 (= c!1228292 ((_ is EmptyExpr!16515) (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))))))

(assert (=> d!2084889 (= (matchRSpec!3616 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292))))) (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326))) e!4022883)))

(declare-fun e!4022881 () Bool)

(assert (=> b!6653339 (= e!4022881 call!589560)))

(declare-fun b!6653340 () Bool)

(assert (=> b!6653340 (= e!4022884 e!4022882)))

(declare-fun res!2726447 () Bool)

(assert (=> b!6653340 (= res!2726447 (matchRSpec!3616 (regOne!33543 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))) (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326))))))

(assert (=> b!6653340 (=> res!2726447 e!4022882)))

(declare-fun b!6653341 () Bool)

(declare-fun res!2726445 () Bool)

(assert (=> b!6653341 (=> res!2726445 e!4022886)))

(assert (=> b!6653341 (= res!2726445 call!589561)))

(assert (=> b!6653341 (= e!4022881 e!4022886)))

(declare-fun b!6653342 () Bool)

(assert (=> b!6653342 (= e!4022884 e!4022881)))

(assert (=> b!6653342 (= c!1228293 ((_ is Star!16515) (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))))))

(assert (= (and d!2084889 c!1228292) b!6653333))

(assert (= (and d!2084889 (not c!1228292)) b!6653336))

(assert (= (and b!6653336 res!2726446) b!6653332))

(assert (= (and b!6653332 c!1228294) b!6653335))

(assert (= (and b!6653332 (not c!1228294)) b!6653337))

(assert (= (and b!6653337 c!1228291) b!6653340))

(assert (= (and b!6653337 (not c!1228291)) b!6653342))

(assert (= (and b!6653340 (not res!2726447)) b!6653334))

(assert (= (and b!6653342 c!1228293) b!6653341))

(assert (= (and b!6653342 (not c!1228293)) b!6653339))

(assert (= (and b!6653341 (not res!2726445)) b!6653338))

(assert (= (or b!6653338 b!6653339) bm!589556))

(assert (= (or b!6653333 b!6653341) bm!589555))

(declare-fun m!7419876 () Bool)

(assert (=> bm!589555 m!7419876))

(declare-fun m!7419878 () Bool)

(assert (=> bm!589556 m!7419878))

(declare-fun m!7419880 () Bool)

(assert (=> b!6653334 m!7419880))

(declare-fun m!7419882 () Bool)

(assert (=> b!6653340 m!7419882))

(assert (=> bm!589251 d!2084889))

(declare-fun bs!1713231 () Bool)

(declare-fun d!2084901 () Bool)

(assert (= bs!1713231 (and d!2084901 b!6652222)))

(declare-fun lambda!372867 () Int)

(assert (=> bs!1713231 (= lambda!372867 lambda!372754)))

(declare-fun bs!1713232 () Bool)

(assert (= bs!1713232 (and d!2084901 d!2084801)))

(assert (=> bs!1713232 (= lambda!372867 lambda!372824)))

(declare-fun bs!1713233 () Bool)

(assert (= bs!1713233 (and d!2084901 d!2084613)))

(assert (=> bs!1713233 (= lambda!372867 lambda!372780)))

(declare-fun bs!1713234 () Bool)

(assert (= bs!1713234 (and d!2084901 b!6652192)))

(assert (=> bs!1713234 (= lambda!372867 lambda!372752)))

(declare-fun bs!1713235 () Bool)

(assert (= bs!1713235 (and d!2084901 d!2084599)))

(assert (=> bs!1713235 (= lambda!372867 lambda!372768)))

(declare-fun bs!1713236 () Bool)

(assert (= bs!1713236 (and d!2084901 d!2084865)))

(assert (=> bs!1713236 (= lambda!372867 lambda!372850)))

(assert (=> d!2084901 (= (inv!84534 (h!72170 zl!343)) (forall!15713 (exprs!6399 (h!72170 zl!343)) lambda!372867))))

(declare-fun bs!1713237 () Bool)

(assert (= bs!1713237 d!2084901))

(declare-fun m!7419884 () Bool)

(assert (=> bs!1713237 m!7419884))

(assert (=> b!6652198 d!2084901))

(declare-fun d!2084903 () Bool)

(assert (=> d!2084903 (= (flatMap!2020 (ite c!1227937 lt!2426013 (ite c!1227939 lt!2425910 (ite c!1227943 (ite c!1227941 lt!2426039 lt!2425981) lt!2425917))) (ite c!1227937 lambda!372738 (ite c!1227939 lambda!372738 (ite c!1227943 (ite c!1227941 lambda!372738 lambda!372738) lambda!372738)))) (choose!49778 (ite c!1227937 lt!2426013 (ite c!1227939 lt!2425910 (ite c!1227943 (ite c!1227941 lt!2426039 lt!2425981) lt!2425917))) (ite c!1227937 lambda!372738 (ite c!1227939 lambda!372738 (ite c!1227943 (ite c!1227941 lambda!372738 lambda!372738) lambda!372738)))))))

(declare-fun bs!1713238 () Bool)

(assert (= bs!1713238 d!2084903))

(declare-fun m!7419886 () Bool)

(assert (=> bs!1713238 m!7419886))

(assert (=> bm!589350 d!2084903))

(declare-fun b!6653387 () Bool)

(declare-fun e!4022914 () (InoxSet Context!11798))

(declare-fun call!589571 () (InoxSet Context!11798))

(assert (=> b!6653387 (= e!4022914 call!589571)))

(declare-fun b!6653388 () Bool)

(declare-fun c!1228307 () Bool)

(assert (=> b!6653388 (= c!1228307 ((_ is Star!16515) (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292)))))))))

(declare-fun e!4022917 () (InoxSet Context!11798))

(assert (=> b!6653388 (= e!4022917 e!4022914)))

(declare-fun b!6653389 () Bool)

(declare-fun e!4022915 () (InoxSet Context!11798))

(declare-fun e!4022912 () (InoxSet Context!11798))

(assert (=> b!6653389 (= e!4022915 e!4022912)))

(declare-fun c!1228311 () Bool)

(assert (=> b!6653389 (= c!1228311 ((_ is Union!16515) (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292)))))))))

(declare-fun b!6653390 () Bool)

(assert (=> b!6653390 (= e!4022914 ((as const (Array Context!11798 Bool)) false))))

(declare-fun b!6653391 () Bool)

(declare-fun c!1228309 () Bool)

(declare-fun e!4022916 () Bool)

(assert (=> b!6653391 (= c!1228309 e!4022916)))

(declare-fun res!2726468 () Bool)

(assert (=> b!6653391 (=> (not res!2726468) (not e!4022916))))

(assert (=> b!6653391 (= res!2726468 ((_ is Concat!25360) (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292)))))))))

(declare-fun e!4022913 () (InoxSet Context!11798))

(assert (=> b!6653391 (= e!4022912 e!4022913)))

(declare-fun b!6653392 () Bool)

(assert (=> b!6653392 (= e!4022915 (store ((as const (Array Context!11798 Bool)) false) (ite (or c!1227937 c!1227939) lt!2425966 (ite c!1227934 (Context!11799 lt!2426004) lt!2425930)) true))))

(declare-fun bm!589564 () Bool)

(declare-fun call!589573 () List!65845)

(declare-fun call!589570 () List!65845)

(assert (=> bm!589564 (= call!589573 call!589570)))

(declare-fun b!6653393 () Bool)

(declare-fun call!589569 () (InoxSet Context!11798))

(declare-fun call!589572 () (InoxSet Context!11798))

(assert (=> b!6653393 (= e!4022912 ((_ map or) call!589569 call!589572))))

(declare-fun b!6653394 () Bool)

(declare-fun call!589574 () (InoxSet Context!11798))

(assert (=> b!6653394 (= e!4022913 ((_ map or) call!589572 call!589574))))

(declare-fun b!6653395 () Bool)

(assert (=> b!6653395 (= e!4022916 (nullable!6508 (regOne!33542 (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292))))))))))

(declare-fun bm!589565 () Bool)

(assert (=> bm!589565 (= call!589572 (derivationStepZipperDown!1763 (ite c!1228311 (regTwo!33543 (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292)))))) (regOne!33542 (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292))))))) (ite c!1228311 (ite (or c!1227937 c!1227939) lt!2425966 (ite c!1227934 (Context!11799 lt!2426004) lt!2425930)) (Context!11799 call!589570)) (h!72168 s!2326)))))

(declare-fun d!2084905 () Bool)

(declare-fun c!1228310 () Bool)

(assert (=> d!2084905 (= c!1228310 (and ((_ is ElementMatch!16515) (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292)))))) (= (c!1227945 (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292)))))) (h!72168 s!2326))))))

(assert (=> d!2084905 (= (derivationStepZipperDown!1763 (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292))))) (ite (or c!1227937 c!1227939) lt!2425966 (ite c!1227934 (Context!11799 lt!2426004) lt!2425930)) (h!72168 s!2326)) e!4022915)))

(declare-fun bm!589566 () Bool)

(assert (=> bm!589566 (= call!589574 call!589569)))

(declare-fun b!6653396 () Bool)

(assert (=> b!6653396 (= e!4022913 e!4022917)))

(declare-fun c!1228308 () Bool)

(assert (=> b!6653396 (= c!1228308 ((_ is Concat!25360) (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292)))))))))

(declare-fun bm!589567 () Bool)

(assert (=> bm!589567 (= call!589569 (derivationStepZipperDown!1763 (ite c!1228311 (regOne!33543 (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292)))))) (ite c!1228309 (regTwo!33542 (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292)))))) (ite c!1228308 (regOne!33542 (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292)))))) (reg!16844 (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292))))))))) (ite (or c!1228311 c!1228309) (ite (or c!1227937 c!1227939) lt!2425966 (ite c!1227934 (Context!11799 lt!2426004) lt!2425930)) (Context!11799 call!589573)) (h!72168 s!2326)))))

(declare-fun bm!589568 () Bool)

(assert (=> bm!589568 (= call!589570 ($colon$colon!2352 (exprs!6399 (ite (or c!1227937 c!1227939) lt!2425966 (ite c!1227934 (Context!11799 lt!2426004) lt!2425930))) (ite (or c!1228309 c!1228308) (regTwo!33542 (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292)))))) (ite c!1227937 (regTwo!33543 (regOne!33542 r!7292)) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (reg!16844 (regOne!33542 r!7292))))))))))

(declare-fun bm!589569 () Bool)

(assert (=> bm!589569 (= call!589571 call!589574)))

(declare-fun b!6653397 () Bool)

(assert (=> b!6653397 (= e!4022917 call!589571)))

(assert (= (and d!2084905 c!1228310) b!6653392))

(assert (= (and d!2084905 (not c!1228310)) b!6653389))

(assert (= (and b!6653389 c!1228311) b!6653393))

(assert (= (and b!6653389 (not c!1228311)) b!6653391))

(assert (= (and b!6653391 res!2726468) b!6653395))

(assert (= (and b!6653391 c!1228309) b!6653394))

(assert (= (and b!6653391 (not c!1228309)) b!6653396))

(assert (= (and b!6653396 c!1228308) b!6653397))

(assert (= (and b!6653396 (not c!1228308)) b!6653388))

(assert (= (and b!6653388 c!1228307) b!6653387))

(assert (= (and b!6653388 (not c!1228307)) b!6653390))

(assert (= (or b!6653397 b!6653387) bm!589564))

(assert (= (or b!6653397 b!6653387) bm!589569))

(assert (= (or b!6653394 bm!589564) bm!589568))

(assert (= (or b!6653394 bm!589569) bm!589566))

(assert (= (or b!6653393 b!6653394) bm!589565))

(assert (= (or b!6653393 bm!589566) bm!589567))

(declare-fun m!7419892 () Bool)

(assert (=> bm!589568 m!7419892))

(declare-fun m!7419898 () Bool)

(assert (=> bm!589565 m!7419898))

(declare-fun m!7419900 () Bool)

(assert (=> b!6653395 m!7419900))

(declare-fun m!7419904 () Bool)

(assert (=> b!6653392 m!7419904))

(declare-fun m!7419906 () Bool)

(assert (=> bm!589567 m!7419906))

(assert (=> bm!589332 d!2084905))

(declare-fun e!4022922 () Bool)

(declare-fun b!6653403 () Bool)

(assert (=> b!6653403 (= e!4022922 (matchR!8698 (derivativeStep!5195 (ite c!1227937 lt!2426024 (ite c!1227939 (Concat!25360 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) lt!2426072) (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 lt!2426003 (regOne!33542 r!7292)))))) (head!13473 s!2326)) (tail!12558 s!2326)))))

(declare-fun b!6653404 () Bool)

(declare-fun e!4022924 () Bool)

(assert (=> b!6653404 (= e!4022924 (not (= (head!13473 s!2326) (c!1227945 (ite c!1227937 lt!2426024 (ite c!1227939 (Concat!25360 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) lt!2426072) (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 lt!2426003 (regOne!33542 r!7292))))))))))))

(declare-fun b!6653405 () Bool)

(declare-fun e!4022921 () Bool)

(declare-fun lt!2426308 () Bool)

(assert (=> b!6653405 (= e!4022921 (not lt!2426308))))

(declare-fun b!6653406 () Bool)

(declare-fun e!4022926 () Bool)

(declare-fun call!589575 () Bool)

(assert (=> b!6653406 (= e!4022926 (= lt!2426308 call!589575))))

(declare-fun b!6653407 () Bool)

(assert (=> b!6653407 (= e!4022926 e!4022921)))

(declare-fun c!1228314 () Bool)

(assert (=> b!6653407 (= c!1228314 ((_ is EmptyLang!16515) (ite c!1227937 lt!2426024 (ite c!1227939 (Concat!25360 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) lt!2426072) (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 lt!2426003 (regOne!33542 r!7292))))))))))

(declare-fun d!2084913 () Bool)

(assert (=> d!2084913 e!4022926))

(declare-fun c!1228316 () Bool)

(assert (=> d!2084913 (= c!1228316 ((_ is EmptyExpr!16515) (ite c!1227937 lt!2426024 (ite c!1227939 (Concat!25360 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) lt!2426072) (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 lt!2426003 (regOne!33542 r!7292))))))))))

(assert (=> d!2084913 (= lt!2426308 e!4022922)))

(declare-fun c!1228315 () Bool)

(assert (=> d!2084913 (= c!1228315 (isEmpty!38032 s!2326))))

(assert (=> d!2084913 (validRegex!8251 (ite c!1227937 lt!2426024 (ite c!1227939 (Concat!25360 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) lt!2426072) (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 lt!2426003 (regOne!33542 r!7292)))))))))

(assert (=> d!2084913 (= (matchR!8698 (ite c!1227937 lt!2426024 (ite c!1227939 (Concat!25360 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) lt!2426072) (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 lt!2426003 (regOne!33542 r!7292)))))) s!2326) lt!2426308)))

(declare-fun b!6653408 () Bool)

(declare-fun res!2726472 () Bool)

(declare-fun e!4022923 () Bool)

(assert (=> b!6653408 (=> res!2726472 e!4022923)))

(assert (=> b!6653408 (= res!2726472 (not ((_ is ElementMatch!16515) (ite c!1227937 lt!2426024 (ite c!1227939 (Concat!25360 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) lt!2426072) (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 lt!2426003 (regOne!33542 r!7292)))))))))))

(assert (=> b!6653408 (= e!4022921 e!4022923)))

(declare-fun b!6653409 () Bool)

(assert (=> b!6653409 (= e!4022922 (nullable!6508 (ite c!1227937 lt!2426024 (ite c!1227939 (Concat!25360 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) lt!2426072) (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 lt!2426003 (regOne!33542 r!7292))))))))))

(declare-fun bm!589570 () Bool)

(assert (=> bm!589570 (= call!589575 (isEmpty!38032 s!2326))))

(declare-fun b!6653410 () Bool)

(declare-fun res!2726471 () Bool)

(assert (=> b!6653410 (=> res!2726471 e!4022923)))

(declare-fun e!4022925 () Bool)

(assert (=> b!6653410 (= res!2726471 e!4022925)))

(declare-fun res!2726474 () Bool)

(assert (=> b!6653410 (=> (not res!2726474) (not e!4022925))))

(assert (=> b!6653410 (= res!2726474 lt!2426308)))

(declare-fun b!6653411 () Bool)

(declare-fun e!4022927 () Bool)

(assert (=> b!6653411 (= e!4022923 e!4022927)))

(declare-fun res!2726470 () Bool)

(assert (=> b!6653411 (=> (not res!2726470) (not e!4022927))))

(assert (=> b!6653411 (= res!2726470 (not lt!2426308))))

(declare-fun b!6653412 () Bool)

(assert (=> b!6653412 (= e!4022927 e!4022924)))

(declare-fun res!2726477 () Bool)

(assert (=> b!6653412 (=> res!2726477 e!4022924)))

(assert (=> b!6653412 (= res!2726477 call!589575)))

(declare-fun b!6653413 () Bool)

(declare-fun res!2726476 () Bool)

(assert (=> b!6653413 (=> (not res!2726476) (not e!4022925))))

(assert (=> b!6653413 (= res!2726476 (isEmpty!38032 (tail!12558 s!2326)))))

(declare-fun b!6653414 () Bool)

(assert (=> b!6653414 (= e!4022925 (= (head!13473 s!2326) (c!1227945 (ite c!1227937 lt!2426024 (ite c!1227939 (Concat!25360 (Concat!25360 (regOne!33542 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) lt!2426072) (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 lt!2426003 (regOne!33542 r!7292)))))))))))

(declare-fun b!6653415 () Bool)

(declare-fun res!2726473 () Bool)

(assert (=> b!6653415 (=> (not res!2726473) (not e!4022925))))

(assert (=> b!6653415 (= res!2726473 (not call!589575))))

(declare-fun b!6653416 () Bool)

(declare-fun res!2726475 () Bool)

(assert (=> b!6653416 (=> res!2726475 e!4022924)))

(assert (=> b!6653416 (= res!2726475 (not (isEmpty!38032 (tail!12558 s!2326))))))

(assert (= (and d!2084913 c!1228315) b!6653409))

(assert (= (and d!2084913 (not c!1228315)) b!6653403))

(assert (= (and d!2084913 c!1228316) b!6653406))

(assert (= (and d!2084913 (not c!1228316)) b!6653407))

(assert (= (and b!6653407 c!1228314) b!6653405))

(assert (= (and b!6653407 (not c!1228314)) b!6653408))

(assert (= (and b!6653408 (not res!2726472)) b!6653410))

(assert (= (and b!6653410 res!2726474) b!6653415))

(assert (= (and b!6653415 res!2726473) b!6653413))

(assert (= (and b!6653413 res!2726476) b!6653414))

(assert (= (and b!6653410 (not res!2726471)) b!6653411))

(assert (= (and b!6653411 res!2726470) b!6653412))

(assert (= (and b!6653412 (not res!2726477)) b!6653416))

(assert (= (and b!6653416 (not res!2726475)) b!6653404))

(assert (= (or b!6653406 b!6653412 b!6653415) bm!589570))

(assert (=> d!2084913 m!7419040))

(declare-fun m!7419914 () Bool)

(assert (=> d!2084913 m!7419914))

(declare-fun m!7419916 () Bool)

(assert (=> b!6653409 m!7419916))

(assert (=> b!6653403 m!7419056))

(assert (=> b!6653403 m!7419056))

(declare-fun m!7419918 () Bool)

(assert (=> b!6653403 m!7419918))

(assert (=> b!6653403 m!7419060))

(assert (=> b!6653403 m!7419918))

(assert (=> b!6653403 m!7419060))

(declare-fun m!7419920 () Bool)

(assert (=> b!6653403 m!7419920))

(assert (=> b!6653414 m!7419056))

(assert (=> b!6653416 m!7419060))

(assert (=> b!6653416 m!7419060))

(assert (=> b!6653416 m!7419064))

(assert (=> b!6653404 m!7419056))

(assert (=> b!6653413 m!7419060))

(assert (=> b!6653413 m!7419060))

(assert (=> b!6653413 m!7419064))

(assert (=> bm!589570 m!7419040))

(assert (=> bm!589353 d!2084913))

(declare-fun b!6653427 () Bool)

(declare-fun e!4022934 () Bool)

(declare-fun e!4022940 () Bool)

(assert (=> b!6653427 (= e!4022934 e!4022940)))

(declare-fun c!1228322 () Bool)

(assert (=> b!6653427 (= c!1228322 ((_ is Union!16515) lt!2425905))))

(declare-fun b!6653428 () Bool)

(declare-fun res!2726481 () Bool)

(declare-fun e!4022939 () Bool)

(assert (=> b!6653428 (=> res!2726481 e!4022939)))

(assert (=> b!6653428 (= res!2726481 (not ((_ is Concat!25360) lt!2425905)))))

(assert (=> b!6653428 (= e!4022940 e!4022939)))

(declare-fun b!6653429 () Bool)

(declare-fun e!4022938 () Bool)

(declare-fun call!589578 () Bool)

(assert (=> b!6653429 (= e!4022938 call!589578)))

(declare-fun b!6653430 () Bool)

(declare-fun e!4022935 () Bool)

(assert (=> b!6653430 (= e!4022935 e!4022934)))

(declare-fun c!1228321 () Bool)

(assert (=> b!6653430 (= c!1228321 ((_ is Star!16515) lt!2425905))))

(declare-fun b!6653431 () Bool)

(declare-fun e!4022937 () Bool)

(assert (=> b!6653431 (= e!4022934 e!4022937)))

(declare-fun res!2726483 () Bool)

(assert (=> b!6653431 (= res!2726483 (not (nullable!6508 (reg!16844 lt!2425905))))))

(assert (=> b!6653431 (=> (not res!2726483) (not e!4022937))))

(declare-fun d!2084917 () Bool)

(declare-fun res!2726484 () Bool)

(assert (=> d!2084917 (=> res!2726484 e!4022935)))

(assert (=> d!2084917 (= res!2726484 ((_ is ElementMatch!16515) lt!2425905))))

(assert (=> d!2084917 (= (validRegex!8251 lt!2425905) e!4022935)))

(declare-fun bm!589571 () Bool)

(declare-fun call!589577 () Bool)

(assert (=> bm!589571 (= call!589577 (validRegex!8251 (ite c!1228322 (regOne!33543 lt!2425905) (regOne!33542 lt!2425905))))))

(declare-fun b!6653432 () Bool)

(assert (=> b!6653432 (= e!4022939 e!4022938)))

(declare-fun res!2726482 () Bool)

(assert (=> b!6653432 (=> (not res!2726482) (not e!4022938))))

(assert (=> b!6653432 (= res!2726482 call!589577)))

(declare-fun b!6653433 () Bool)

(declare-fun res!2726480 () Bool)

(declare-fun e!4022936 () Bool)

(assert (=> b!6653433 (=> (not res!2726480) (not e!4022936))))

(assert (=> b!6653433 (= res!2726480 call!589577)))

(assert (=> b!6653433 (= e!4022940 e!4022936)))

(declare-fun bm!589572 () Bool)

(declare-fun call!589576 () Bool)

(assert (=> bm!589572 (= call!589578 call!589576)))

(declare-fun b!6653434 () Bool)

(assert (=> b!6653434 (= e!4022936 call!589578)))

(declare-fun b!6653435 () Bool)

(assert (=> b!6653435 (= e!4022937 call!589576)))

(declare-fun bm!589573 () Bool)

(assert (=> bm!589573 (= call!589576 (validRegex!8251 (ite c!1228321 (reg!16844 lt!2425905) (ite c!1228322 (regTwo!33543 lt!2425905) (regTwo!33542 lt!2425905)))))))

(assert (= (and d!2084917 (not res!2726484)) b!6653430))

(assert (= (and b!6653430 c!1228321) b!6653431))

(assert (= (and b!6653430 (not c!1228321)) b!6653427))

(assert (= (and b!6653431 res!2726483) b!6653435))

(assert (= (and b!6653427 c!1228322) b!6653433))

(assert (= (and b!6653427 (not c!1228322)) b!6653428))

(assert (= (and b!6653433 res!2726480) b!6653434))

(assert (= (and b!6653428 (not res!2726481)) b!6653432))

(assert (= (and b!6653432 res!2726482) b!6653429))

(assert (= (or b!6653434 b!6653429) bm!589572))

(assert (= (or b!6653433 b!6653432) bm!589571))

(assert (= (or b!6653435 bm!589572) bm!589573))

(declare-fun m!7419942 () Bool)

(assert (=> b!6653431 m!7419942))

(declare-fun m!7419944 () Bool)

(assert (=> bm!589571 m!7419944))

(declare-fun m!7419946 () Bool)

(assert (=> bm!589573 m!7419946))

(assert (=> b!6652249 d!2084917))

(declare-fun d!2084921 () Bool)

(assert (=> d!2084921 (= (isEmpty!38034 (t!379514 (exprs!6399 (h!72170 zl!343)))) ((_ is Nil!65721) (t!379514 (exprs!6399 (h!72170 zl!343)))))))

(assert (=> b!6652244 d!2084921))

(declare-fun d!2084925 () Bool)

(declare-fun e!4022948 () Bool)

(assert (=> d!2084925 (= (matchZipper!2527 ((_ map or) lt!2426042 lt!2425952) (t!379513 s!2326)) e!4022948)))

(declare-fun res!2726488 () Bool)

(assert (=> d!2084925 (=> res!2726488 e!4022948)))

(assert (=> d!2084925 (= res!2726488 (matchZipper!2527 lt!2426042 (t!379513 s!2326)))))

(declare-fun lt!2426312 () Unit!159541)

(assert (=> d!2084925 (= lt!2426312 (choose!49785 lt!2426042 lt!2425952 (t!379513 s!2326)))))

(assert (=> d!2084925 (= (lemmaZipperConcatMatchesSameAsBothZippers!1346 lt!2426042 lt!2425952 (t!379513 s!2326)) lt!2426312)))

(declare-fun b!6653447 () Bool)

(assert (=> b!6653447 (= e!4022948 (matchZipper!2527 lt!2425952 (t!379513 s!2326)))))

(assert (= (and d!2084925 (not res!2726488)) b!6653447))

(assert (=> d!2084925 m!7418470))

(assert (=> d!2084925 m!7418468))

(declare-fun m!7419954 () Bool)

(assert (=> d!2084925 m!7419954))

(assert (=> b!6653447 m!7418556))

(assert (=> b!6652228 d!2084925))

(declare-fun d!2084927 () Bool)

(declare-fun c!1228327 () Bool)

(assert (=> d!2084927 (= c!1228327 (isEmpty!38032 (t!379513 s!2326)))))

(declare-fun e!4022949 () Bool)

(assert (=> d!2084927 (= (matchZipper!2527 lt!2426042 (t!379513 s!2326)) e!4022949)))

(declare-fun b!6653448 () Bool)

(assert (=> b!6653448 (= e!4022949 (nullableZipper!2255 lt!2426042))))

(declare-fun b!6653449 () Bool)

(assert (=> b!6653449 (= e!4022949 (matchZipper!2527 (derivationStepZipper!2481 lt!2426042 (head!13473 (t!379513 s!2326))) (tail!12558 (t!379513 s!2326))))))

(assert (= (and d!2084927 c!1228327) b!6653448))

(assert (= (and d!2084927 (not c!1228327)) b!6653449))

(assert (=> d!2084927 m!7419698))

(declare-fun m!7419956 () Bool)

(assert (=> b!6653448 m!7419956))

(assert (=> b!6653449 m!7419702))

(assert (=> b!6653449 m!7419702))

(declare-fun m!7419958 () Bool)

(assert (=> b!6653449 m!7419958))

(assert (=> b!6653449 m!7419706))

(assert (=> b!6653449 m!7419958))

(assert (=> b!6653449 m!7419706))

(declare-fun m!7419960 () Bool)

(assert (=> b!6653449 m!7419960))

(assert (=> b!6652228 d!2084927))

(declare-fun d!2084929 () Bool)

(declare-fun c!1228328 () Bool)

(assert (=> d!2084929 (= c!1228328 (isEmpty!38032 (t!379513 s!2326)))))

(declare-fun e!4022950 () Bool)

(assert (=> d!2084929 (= (matchZipper!2527 ((_ map or) lt!2426042 lt!2425952) (t!379513 s!2326)) e!4022950)))

(declare-fun b!6653450 () Bool)

(assert (=> b!6653450 (= e!4022950 (nullableZipper!2255 ((_ map or) lt!2426042 lt!2425952)))))

(declare-fun b!6653451 () Bool)

(assert (=> b!6653451 (= e!4022950 (matchZipper!2527 (derivationStepZipper!2481 ((_ map or) lt!2426042 lt!2425952) (head!13473 (t!379513 s!2326))) (tail!12558 (t!379513 s!2326))))))

(assert (= (and d!2084929 c!1228328) b!6653450))

(assert (= (and d!2084929 (not c!1228328)) b!6653451))

(assert (=> d!2084929 m!7419698))

(declare-fun m!7419964 () Bool)

(assert (=> b!6653450 m!7419964))

(assert (=> b!6653451 m!7419702))

(assert (=> b!6653451 m!7419702))

(declare-fun m!7419968 () Bool)

(assert (=> b!6653451 m!7419968))

(assert (=> b!6653451 m!7419706))

(assert (=> b!6653451 m!7419968))

(assert (=> b!6653451 m!7419706))

(declare-fun m!7419976 () Bool)

(assert (=> b!6653451 m!7419976))

(assert (=> b!6652228 d!2084929))

(declare-fun b!6653494 () Bool)

(declare-fun lt!2426329 () Unit!159541)

(declare-fun lt!2426328 () Unit!159541)

(assert (=> b!6653494 (= lt!2426329 lt!2426328)))

(assert (=> b!6653494 (= (++!14672 (++!14672 Nil!65720 (Cons!65720 (h!72168 s!2326) Nil!65720)) (t!379513 s!2326)) s!2326)))

(assert (=> b!6653494 (= lt!2426328 (lemmaMoveElementToOtherListKeepsConcatEq!2653 Nil!65720 (h!72168 s!2326) (t!379513 s!2326) s!2326))))

(declare-fun e!4022976 () Option!16406)

(assert (=> b!6653494 (= e!4022976 (findConcatSeparationZippers!220 lt!2425935 lt!2426050 (++!14672 Nil!65720 (Cons!65720 (h!72168 s!2326) Nil!65720)) (t!379513 s!2326) s!2326))))

(declare-fun b!6653495 () Bool)

(declare-fun e!4022977 () Option!16406)

(assert (=> b!6653495 (= e!4022977 (Some!16405 (tuple2!66989 Nil!65720 s!2326)))))

(declare-fun b!6653496 () Bool)

(declare-fun res!2726517 () Bool)

(declare-fun e!4022974 () Bool)

(assert (=> b!6653496 (=> (not res!2726517) (not e!4022974))))

(declare-fun lt!2426330 () Option!16406)

(assert (=> b!6653496 (= res!2726517 (matchZipper!2527 lt!2426050 (_2!36797 (get!22854 lt!2426330))))))

(declare-fun b!6653497 () Bool)

(assert (=> b!6653497 (= e!4022974 (= (++!14672 (_1!36797 (get!22854 lt!2426330)) (_2!36797 (get!22854 lt!2426330))) s!2326))))

(declare-fun b!6653498 () Bool)

(declare-fun e!4022975 () Bool)

(assert (=> b!6653498 (= e!4022975 (matchZipper!2527 lt!2426050 s!2326))))

(declare-fun b!6653499 () Bool)

(assert (=> b!6653499 (= e!4022977 e!4022976)))

(declare-fun c!1228338 () Bool)

(assert (=> b!6653499 (= c!1228338 ((_ is Nil!65720) s!2326))))

(declare-fun b!6653500 () Bool)

(assert (=> b!6653500 (= e!4022976 None!16405)))

(declare-fun b!6653501 () Bool)

(declare-fun res!2726515 () Bool)

(assert (=> b!6653501 (=> (not res!2726515) (not e!4022974))))

(assert (=> b!6653501 (= res!2726515 (matchZipper!2527 lt!2425935 (_1!36797 (get!22854 lt!2426330))))))

(declare-fun b!6653502 () Bool)

(declare-fun e!4022973 () Bool)

(assert (=> b!6653502 (= e!4022973 (not (isDefined!13109 lt!2426330)))))

(declare-fun d!2084931 () Bool)

(assert (=> d!2084931 e!4022973))

(declare-fun res!2726514 () Bool)

(assert (=> d!2084931 (=> res!2726514 e!4022973)))

(assert (=> d!2084931 (= res!2726514 e!4022974)))

(declare-fun res!2726516 () Bool)

(assert (=> d!2084931 (=> (not res!2726516) (not e!4022974))))

(assert (=> d!2084931 (= res!2726516 (isDefined!13109 lt!2426330))))

(assert (=> d!2084931 (= lt!2426330 e!4022977)))

(declare-fun c!1228339 () Bool)

(assert (=> d!2084931 (= c!1228339 e!4022975)))

(declare-fun res!2726513 () Bool)

(assert (=> d!2084931 (=> (not res!2726513) (not e!4022975))))

(assert (=> d!2084931 (= res!2726513 (matchZipper!2527 lt!2425935 Nil!65720))))

(assert (=> d!2084931 (= (++!14672 Nil!65720 s!2326) s!2326)))

(assert (=> d!2084931 (= (findConcatSeparationZippers!220 lt!2425935 lt!2426050 Nil!65720 s!2326 s!2326) lt!2426330)))

(assert (= (and d!2084931 res!2726513) b!6653498))

(assert (= (and d!2084931 c!1228339) b!6653495))

(assert (= (and d!2084931 (not c!1228339)) b!6653499))

(assert (= (and b!6653499 c!1228338) b!6653500))

(assert (= (and b!6653499 (not c!1228338)) b!6653494))

(assert (= (and d!2084931 res!2726516) b!6653501))

(assert (= (and b!6653501 res!2726515) b!6653496))

(assert (= (and b!6653496 res!2726517) b!6653497))

(assert (= (and d!2084931 (not res!2726514)) b!6653502))

(declare-fun m!7420056 () Bool)

(assert (=> b!6653497 m!7420056))

(declare-fun m!7420058 () Bool)

(assert (=> b!6653497 m!7420058))

(assert (=> b!6653501 m!7420056))

(declare-fun m!7420060 () Bool)

(assert (=> b!6653501 m!7420060))

(declare-fun m!7420062 () Bool)

(assert (=> b!6653502 m!7420062))

(declare-fun m!7420064 () Bool)

(assert (=> b!6653498 m!7420064))

(assert (=> b!6653496 m!7420056))

(declare-fun m!7420066 () Bool)

(assert (=> b!6653496 m!7420066))

(assert (=> d!2084931 m!7420062))

(declare-fun m!7420068 () Bool)

(assert (=> d!2084931 m!7420068))

(declare-fun m!7420070 () Bool)

(assert (=> d!2084931 m!7420070))

(declare-fun m!7420072 () Bool)

(assert (=> b!6653494 m!7420072))

(assert (=> b!6653494 m!7420072))

(declare-fun m!7420074 () Bool)

(assert (=> b!6653494 m!7420074))

(declare-fun m!7420076 () Bool)

(assert (=> b!6653494 m!7420076))

(assert (=> b!6653494 m!7420072))

(declare-fun m!7420078 () Bool)

(assert (=> b!6653494 m!7420078))

(assert (=> b!6652222 d!2084931))

(declare-fun b!6653506 () Bool)

(declare-fun e!4022978 () Bool)

(declare-fun lt!2426331 () List!65844)

(assert (=> b!6653506 (= e!4022978 (or (not (= (_2!36797 lt!2426064) Nil!65720)) (= lt!2426331 (_1!36797 lt!2426064))))))

(declare-fun b!6653503 () Bool)

(declare-fun e!4022979 () List!65844)

(assert (=> b!6653503 (= e!4022979 (_2!36797 lt!2426064))))

(declare-fun b!6653505 () Bool)

(declare-fun res!2726519 () Bool)

(assert (=> b!6653505 (=> (not res!2726519) (not e!4022978))))

(assert (=> b!6653505 (= res!2726519 (= (size!40574 lt!2426331) (+ (size!40574 (_1!36797 lt!2426064)) (size!40574 (_2!36797 lt!2426064)))))))

(declare-fun b!6653504 () Bool)

(assert (=> b!6653504 (= e!4022979 (Cons!65720 (h!72168 (_1!36797 lt!2426064)) (++!14672 (t!379513 (_1!36797 lt!2426064)) (_2!36797 lt!2426064))))))

(declare-fun d!2084955 () Bool)

(assert (=> d!2084955 e!4022978))

(declare-fun res!2726518 () Bool)

(assert (=> d!2084955 (=> (not res!2726518) (not e!4022978))))

(assert (=> d!2084955 (= res!2726518 (= (content!12718 lt!2426331) ((_ map or) (content!12718 (_1!36797 lt!2426064)) (content!12718 (_2!36797 lt!2426064)))))))

(assert (=> d!2084955 (= lt!2426331 e!4022979)))

(declare-fun c!1228340 () Bool)

(assert (=> d!2084955 (= c!1228340 ((_ is Nil!65720) (_1!36797 lt!2426064)))))

(assert (=> d!2084955 (= (++!14672 (_1!36797 lt!2426064) (_2!36797 lt!2426064)) lt!2426331)))

(assert (= (and d!2084955 c!1228340) b!6653503))

(assert (= (and d!2084955 (not c!1228340)) b!6653504))

(assert (= (and d!2084955 res!2726518) b!6653505))

(assert (= (and b!6653505 res!2726519) b!6653506))

(declare-fun m!7420080 () Bool)

(assert (=> b!6653505 m!7420080))

(declare-fun m!7420082 () Bool)

(assert (=> b!6653505 m!7420082))

(declare-fun m!7420084 () Bool)

(assert (=> b!6653505 m!7420084))

(declare-fun m!7420086 () Bool)

(assert (=> b!6653504 m!7420086))

(declare-fun m!7420088 () Bool)

(assert (=> d!2084955 m!7420088))

(declare-fun m!7420090 () Bool)

(assert (=> d!2084955 m!7420090))

(declare-fun m!7420092 () Bool)

(assert (=> d!2084955 m!7420092))

(assert (=> b!6652222 d!2084955))

(declare-fun d!2084957 () Bool)

(declare-fun dynLambda!26189 (Int Context!11798) Context!11798)

(assert (=> d!2084957 (= (map!15021 lt!2425935 lambda!372753) (store ((as const (Array Context!11798 Bool)) false) (dynLambda!26189 lambda!372753 lt!2426056) true))))

(declare-fun lt!2426337 () Unit!159541)

(declare-fun choose!49790 ((InoxSet Context!11798) Context!11798 Int) Unit!159541)

(assert (=> d!2084957 (= lt!2426337 (choose!49790 lt!2425935 lt!2426056 lambda!372753))))

(assert (=> d!2084957 (= lt!2425935 (store ((as const (Array Context!11798 Bool)) false) lt!2426056 true))))

(assert (=> d!2084957 (= (lemmaMapOnSingletonSet!238 lt!2425935 lt!2426056 lambda!372753) lt!2426337)))

(declare-fun b_lambda!251203 () Bool)

(assert (=> (not b_lambda!251203) (not d!2084957)))

(declare-fun bs!1713263 () Bool)

(assert (= bs!1713263 d!2084957))

(assert (=> bs!1713263 m!7418538))

(declare-fun m!7420104 () Bool)

(assert (=> bs!1713263 m!7420104))

(declare-fun m!7420106 () Bool)

(assert (=> bs!1713263 m!7420106))

(assert (=> bs!1713263 m!7418386))

(assert (=> bs!1713263 m!7420104))

(declare-fun m!7420108 () Bool)

(assert (=> bs!1713263 m!7420108))

(assert (=> b!6652222 d!2084957))

(declare-fun d!2084961 () Bool)

(declare-fun choose!49791 ((InoxSet Context!11798) Int) (InoxSet Context!11798))

(assert (=> d!2084961 (= (map!15021 lt!2425935 lambda!372753) (choose!49791 lt!2425935 lambda!372753))))

(declare-fun bs!1713264 () Bool)

(assert (= bs!1713264 d!2084961))

(declare-fun m!7420110 () Bool)

(assert (=> bs!1713264 m!7420110))

(assert (=> b!6652222 d!2084961))

(declare-fun d!2084963 () Bool)

(assert (=> d!2084963 (= (get!22854 lt!2425963) (v!52600 lt!2425963))))

(assert (=> b!6652222 d!2084963))

(declare-fun d!2084965 () Bool)

(assert (=> d!2084965 (isDefined!13109 (findConcatSeparationZippers!220 lt!2425935 (store ((as const (Array Context!11798 Bool)) false) lt!2425930 true) Nil!65720 s!2326 s!2326))))

(declare-fun lt!2426340 () Unit!159541)

(declare-fun choose!49792 ((InoxSet Context!11798) Context!11798 List!65844) Unit!159541)

(assert (=> d!2084965 (= lt!2426340 (choose!49792 lt!2425935 lt!2425930 s!2326))))

(declare-fun appendTo!212 ((InoxSet Context!11798) Context!11798) (InoxSet Context!11798))

(assert (=> d!2084965 (matchZipper!2527 (appendTo!212 lt!2425935 lt!2425930) s!2326)))

(assert (=> d!2084965 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!220 lt!2425935 lt!2425930 s!2326) lt!2426340)))

(declare-fun bs!1713265 () Bool)

(assert (= bs!1713265 d!2084965))

(declare-fun m!7420112 () Bool)

(assert (=> bs!1713265 m!7420112))

(assert (=> bs!1713265 m!7420112))

(declare-fun m!7420114 () Bool)

(assert (=> bs!1713265 m!7420114))

(declare-fun m!7420116 () Bool)

(assert (=> bs!1713265 m!7420116))

(assert (=> bs!1713265 m!7418388))

(declare-fun m!7420118 () Bool)

(assert (=> bs!1713265 m!7420118))

(assert (=> bs!1713265 m!7418388))

(assert (=> bs!1713265 m!7420118))

(declare-fun m!7420120 () Bool)

(assert (=> bs!1713265 m!7420120))

(assert (=> b!6652222 d!2084965))

(declare-fun b!6653507 () Bool)

(declare-fun e!4022981 () Bool)

(assert (=> b!6653507 (= e!4022981 (matchR!8698 (derivativeStep!5195 lt!2425954 (head!13473 s!2326)) (tail!12558 s!2326)))))

(declare-fun b!6653508 () Bool)

(declare-fun e!4022983 () Bool)

(assert (=> b!6653508 (= e!4022983 (not (= (head!13473 s!2326) (c!1227945 lt!2425954))))))

(declare-fun b!6653509 () Bool)

(declare-fun e!4022980 () Bool)

(declare-fun lt!2426341 () Bool)

(assert (=> b!6653509 (= e!4022980 (not lt!2426341))))

(declare-fun b!6653510 () Bool)

(declare-fun e!4022985 () Bool)

(declare-fun call!589580 () Bool)

(assert (=> b!6653510 (= e!4022985 (= lt!2426341 call!589580))))

(declare-fun b!6653511 () Bool)

(assert (=> b!6653511 (= e!4022985 e!4022980)))

(declare-fun c!1228341 () Bool)

(assert (=> b!6653511 (= c!1228341 ((_ is EmptyLang!16515) lt!2425954))))

(declare-fun d!2084967 () Bool)

(assert (=> d!2084967 e!4022985))

(declare-fun c!1228343 () Bool)

(assert (=> d!2084967 (= c!1228343 ((_ is EmptyExpr!16515) lt!2425954))))

(assert (=> d!2084967 (= lt!2426341 e!4022981)))

(declare-fun c!1228342 () Bool)

(assert (=> d!2084967 (= c!1228342 (isEmpty!38032 s!2326))))

(assert (=> d!2084967 (validRegex!8251 lt!2425954)))

(assert (=> d!2084967 (= (matchR!8698 lt!2425954 s!2326) lt!2426341)))

(declare-fun b!6653512 () Bool)

(declare-fun res!2726522 () Bool)

(declare-fun e!4022982 () Bool)

(assert (=> b!6653512 (=> res!2726522 e!4022982)))

(assert (=> b!6653512 (= res!2726522 (not ((_ is ElementMatch!16515) lt!2425954)))))

(assert (=> b!6653512 (= e!4022980 e!4022982)))

(declare-fun b!6653513 () Bool)

(assert (=> b!6653513 (= e!4022981 (nullable!6508 lt!2425954))))

(declare-fun bm!589575 () Bool)

(assert (=> bm!589575 (= call!589580 (isEmpty!38032 s!2326))))

(declare-fun b!6653514 () Bool)

(declare-fun res!2726521 () Bool)

(assert (=> b!6653514 (=> res!2726521 e!4022982)))

(declare-fun e!4022984 () Bool)

(assert (=> b!6653514 (= res!2726521 e!4022984)))

(declare-fun res!2726524 () Bool)

(assert (=> b!6653514 (=> (not res!2726524) (not e!4022984))))

(assert (=> b!6653514 (= res!2726524 lt!2426341)))

(declare-fun b!6653515 () Bool)

(declare-fun e!4022986 () Bool)

(assert (=> b!6653515 (= e!4022982 e!4022986)))

(declare-fun res!2726520 () Bool)

(assert (=> b!6653515 (=> (not res!2726520) (not e!4022986))))

(assert (=> b!6653515 (= res!2726520 (not lt!2426341))))

(declare-fun b!6653516 () Bool)

(assert (=> b!6653516 (= e!4022986 e!4022983)))

(declare-fun res!2726527 () Bool)

(assert (=> b!6653516 (=> res!2726527 e!4022983)))

(assert (=> b!6653516 (= res!2726527 call!589580)))

(declare-fun b!6653517 () Bool)

(declare-fun res!2726526 () Bool)

(assert (=> b!6653517 (=> (not res!2726526) (not e!4022984))))

(assert (=> b!6653517 (= res!2726526 (isEmpty!38032 (tail!12558 s!2326)))))

(declare-fun b!6653518 () Bool)

(assert (=> b!6653518 (= e!4022984 (= (head!13473 s!2326) (c!1227945 lt!2425954)))))

(declare-fun b!6653519 () Bool)

(declare-fun res!2726523 () Bool)

(assert (=> b!6653519 (=> (not res!2726523) (not e!4022984))))

(assert (=> b!6653519 (= res!2726523 (not call!589580))))

(declare-fun b!6653520 () Bool)

(declare-fun res!2726525 () Bool)

(assert (=> b!6653520 (=> res!2726525 e!4022983)))

(assert (=> b!6653520 (= res!2726525 (not (isEmpty!38032 (tail!12558 s!2326))))))

(assert (= (and d!2084967 c!1228342) b!6653513))

(assert (= (and d!2084967 (not c!1228342)) b!6653507))

(assert (= (and d!2084967 c!1228343) b!6653510))

(assert (= (and d!2084967 (not c!1228343)) b!6653511))

(assert (= (and b!6653511 c!1228341) b!6653509))

(assert (= (and b!6653511 (not c!1228341)) b!6653512))

(assert (= (and b!6653512 (not res!2726522)) b!6653514))

(assert (= (and b!6653514 res!2726524) b!6653519))

(assert (= (and b!6653519 res!2726523) b!6653517))

(assert (= (and b!6653517 res!2726526) b!6653518))

(assert (= (and b!6653514 (not res!2726521)) b!6653515))

(assert (= (and b!6653515 res!2726520) b!6653516))

(assert (= (and b!6653516 (not res!2726527)) b!6653520))

(assert (= (and b!6653520 (not res!2726525)) b!6653508))

(assert (= (or b!6653510 b!6653516 b!6653519) bm!589575))

(assert (=> d!2084967 m!7419040))

(declare-fun m!7420122 () Bool)

(assert (=> d!2084967 m!7420122))

(declare-fun m!7420124 () Bool)

(assert (=> b!6653513 m!7420124))

(assert (=> b!6653507 m!7419056))

(assert (=> b!6653507 m!7419056))

(declare-fun m!7420126 () Bool)

(assert (=> b!6653507 m!7420126))

(assert (=> b!6653507 m!7419060))

(assert (=> b!6653507 m!7420126))

(assert (=> b!6653507 m!7419060))

(declare-fun m!7420128 () Bool)

(assert (=> b!6653507 m!7420128))

(assert (=> b!6653518 m!7419056))

(assert (=> b!6653520 m!7419060))

(assert (=> b!6653520 m!7419060))

(assert (=> b!6653520 m!7419064))

(assert (=> b!6653508 m!7419056))

(assert (=> b!6653517 m!7419060))

(assert (=> b!6653517 m!7419060))

(assert (=> b!6653517 m!7419064))

(assert (=> bm!589575 m!7419040))

(assert (=> b!6652222 d!2084967))

(declare-fun d!2084969 () Bool)

(assert (=> d!2084969 (= (flatMap!2020 (ite c!1227934 lt!2425907 lt!2425935) (ite c!1227934 lambda!372738 lambda!372738)) (choose!49778 (ite c!1227934 lt!2425907 lt!2425935) (ite c!1227934 lambda!372738 lambda!372738)))))

(declare-fun bs!1713266 () Bool)

(assert (= bs!1713266 d!2084969))

(declare-fun m!7420130 () Bool)

(assert (=> bs!1713266 m!7420130))

(assert (=> bm!589231 d!2084969))

(declare-fun d!2084971 () Bool)

(assert (=> d!2084971 (= (isDefined!13109 (ite c!1227939 call!589193 (ite c!1227934 call!589205 (ite c!1227941 lt!2426049 lt!2426002)))) (not (isEmpty!38036 (ite c!1227939 call!589193 (ite c!1227934 call!589205 (ite c!1227941 lt!2426049 lt!2426002))))))))

(declare-fun bs!1713267 () Bool)

(assert (= bs!1713267 d!2084971))

(declare-fun m!7420132 () Bool)

(assert (=> bs!1713267 m!7420132))

(assert (=> bm!589214 d!2084971))

(declare-fun d!2084973 () Bool)

(assert (=> d!2084973 (= (matchR!8698 (ite c!1227937 lt!2425903 lt!2425954) s!2326) (matchRSpec!3616 (ite c!1227937 lt!2425903 lt!2425954) s!2326))))

(declare-fun lt!2426348 () Unit!159541)

(assert (=> d!2084973 (= lt!2426348 (choose!49777 (ite c!1227937 lt!2425903 lt!2425954) s!2326))))

(assert (=> d!2084973 (validRegex!8251 (ite c!1227937 lt!2425903 lt!2425954))))

(assert (=> d!2084973 (= (mainMatchTheorem!3616 (ite c!1227937 lt!2425903 lt!2425954) s!2326) lt!2426348)))

(declare-fun bs!1713268 () Bool)

(assert (= bs!1713268 d!2084973))

(declare-fun m!7420134 () Bool)

(assert (=> bs!1713268 m!7420134))

(declare-fun m!7420136 () Bool)

(assert (=> bs!1713268 m!7420136))

(declare-fun m!7420138 () Bool)

(assert (=> bs!1713268 m!7420138))

(declare-fun m!7420140 () Bool)

(assert (=> bs!1713268 m!7420140))

(assert (=> bm!589259 d!2084973))

(declare-fun d!2084975 () Bool)

(assert (=> d!2084975 (= (matchR!8698 (ite c!1227937 lt!2426024 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425950 (ite c!1227943 lt!2426028 (regOne!33542 r!7292))))) s!2326) (matchRSpec!3616 (ite c!1227937 lt!2426024 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425950 (ite c!1227943 lt!2426028 (regOne!33542 r!7292))))) s!2326))))

(declare-fun lt!2426349 () Unit!159541)

(assert (=> d!2084975 (= lt!2426349 (choose!49777 (ite c!1227937 lt!2426024 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425950 (ite c!1227943 lt!2426028 (regOne!33542 r!7292))))) s!2326))))

(assert (=> d!2084975 (validRegex!8251 (ite c!1227937 lt!2426024 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425950 (ite c!1227943 lt!2426028 (regOne!33542 r!7292))))))))

(assert (=> d!2084975 (= (mainMatchTheorem!3616 (ite c!1227937 lt!2426024 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425950 (ite c!1227943 lt!2426028 (regOne!33542 r!7292))))) s!2326) lt!2426349)))

(declare-fun bs!1713269 () Bool)

(assert (= bs!1713269 d!2084975))

(declare-fun m!7420142 () Bool)

(assert (=> bs!1713269 m!7420142))

(declare-fun m!7420144 () Bool)

(assert (=> bs!1713269 m!7420144))

(declare-fun m!7420146 () Bool)

(assert (=> bs!1713269 m!7420146))

(declare-fun m!7420148 () Bool)

(assert (=> bs!1713269 m!7420148))

(assert (=> bm!589341 d!2084975))

(declare-fun bs!1713270 () Bool)

(declare-fun b!6653537 () Bool)

(assert (= bs!1713270 (and b!6653537 d!2084621)))

(declare-fun lambda!372870 () Int)

(assert (=> bs!1713270 (not (= lambda!372870 lambda!372789))))

(declare-fun bs!1713271 () Bool)

(assert (= bs!1713271 (and b!6653537 b!6652222)))

(assert (=> bs!1713271 (not (= lambda!372870 lambda!372758))))

(declare-fun bs!1713272 () Bool)

(assert (= bs!1713272 (and b!6653537 b!6652208)))

(assert (=> bs!1713272 (not (= lambda!372870 lambda!372761))))

(declare-fun bs!1713273 () Bool)

(assert (= bs!1713273 (and b!6653537 b!6652251)))

(assert (=> bs!1713273 (not (= lambda!372870 lambda!372746))))

(declare-fun bs!1713274 () Bool)

(assert (= bs!1713274 (and b!6653537 b!6652829)))

(assert (=> bs!1713274 (= (and (= (reg!16844 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (reg!16844 r!7292)) (= (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292)))))) r!7292)) (= lambda!372870 lambda!372803))))

(assert (=> bs!1713273 (not (= lambda!372870 lambda!372745))))

(declare-fun bs!1713275 () Bool)

(assert (= bs!1713275 (and b!6653537 d!2084839)))

(assert (=> bs!1713275 (not (= lambda!372870 lambda!372826))))

(declare-fun bs!1713276 () Bool)

(assert (= bs!1713276 (and b!6653537 b!6653339)))

(assert (=> bs!1713276 (not (= lambda!372870 lambda!372866))))

(declare-fun bs!1713277 () Bool)

(assert (= bs!1713277 (and b!6653537 b!6652830)))

(assert (=> bs!1713277 (not (= lambda!372870 lambda!372805))))

(assert (=> bs!1713273 (not (= lambda!372870 lambda!372744))))

(assert (=> bs!1713271 (not (= lambda!372870 lambda!372757))))

(declare-fun bs!1713278 () Bool)

(assert (= bs!1713278 (and b!6653537 b!6652192)))

(assert (=> bs!1713278 (= (and (= s!2326 (_1!36797 lt!2425896)) (= (reg!16844 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292)))))) lt!2425900)) (= lambda!372870 lambda!372750))))

(declare-fun bs!1713279 () Bool)

(assert (= bs!1713279 (and b!6653537 b!6652250)))

(assert (=> bs!1713279 (not (= lambda!372870 lambda!372742))))

(assert (=> bs!1713273 (not (= lambda!372870 lambda!372743))))

(assert (=> bs!1713272 (= (and (= s!2326 Nil!65720) (= (reg!16844 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292)))))) lt!2425900)) (= lambda!372870 lambda!372762))))

(assert (=> bs!1713272 (not (= lambda!372870 lambda!372760))))

(assert (=> bs!1713270 (not (= lambda!372870 lambda!372791))))

(declare-fun bs!1713280 () Bool)

(assert (= bs!1713280 (and b!6653537 b!6653051)))

(assert (=> bs!1713280 (= (and (= (reg!16844 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (reg!16844 lt!2425903)) (= (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292)))))) lt!2425903)) (= lambda!372870 lambda!372822))))

(assert (=> bs!1713271 (not (= lambda!372870 lambda!372756))))

(assert (=> bs!1713278 (not (= lambda!372870 lambda!372751))))

(declare-fun bs!1713281 () Bool)

(assert (= bs!1713281 (and b!6653537 b!6653338)))

(assert (=> bs!1713281 (= (and (= s!2326 (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326))) (= (reg!16844 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (reg!16844 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292))))))) (= (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292)))))) (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292))))))) (= lambda!372870 lambda!372865))))

(declare-fun bs!1713282 () Bool)

(assert (= bs!1713282 (and b!6653537 b!6653208)))

(assert (=> bs!1713282 (not (= lambda!372870 lambda!372835))))

(declare-fun bs!1713283 () Bool)

(assert (= bs!1713283 (and b!6653537 b!6652194)))

(assert (=> bs!1713283 (not (= lambda!372870 lambda!372737))))

(declare-fun bs!1713284 () Bool)

(assert (= bs!1713284 (and b!6653537 b!6652196)))

(assert (=> bs!1713284 (not (= lambda!372870 lambda!372748))))

(assert (=> bs!1713271 (= (and (= s!2326 (_1!36797 lt!2425939)) (= (reg!16844 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292)))))) lt!2425900)) (= lambda!372870 lambda!372759))))

(assert (=> bs!1713284 (not (= lambda!372870 lambda!372747))))

(declare-fun bs!1713285 () Bool)

(assert (= bs!1713285 (and b!6653537 b!6653207)))

(assert (=> bs!1713285 (= (and (= s!2326 (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939))) (= (reg!16844 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (reg!16844 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074)))) (= (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292)))))) (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074)))) (= lambda!372870 lambda!372834))))

(assert (=> bs!1713279 (not (= lambda!372870 lambda!372739))))

(assert (=> bs!1713275 (not (= lambda!372870 lambda!372831))))

(assert (=> bs!1713279 (not (= lambda!372870 lambda!372740))))

(assert (=> bs!1713278 (not (= lambda!372870 lambda!372749))))

(assert (=> bs!1713279 (not (= lambda!372870 lambda!372741))))

(declare-fun bs!1713286 () Bool)

(assert (= bs!1713286 (and b!6653537 b!6653052)))

(assert (=> bs!1713286 (not (= lambda!372870 lambda!372823))))

(assert (=> bs!1713271 (not (= lambda!372870 lambda!372755))))

(assert (=> bs!1713283 (not (= lambda!372870 lambda!372736))))

(assert (=> b!6653537 true))

(assert (=> b!6653537 true))

(declare-fun bs!1713287 () Bool)

(declare-fun b!6653538 () Bool)

(assert (= bs!1713287 (and b!6653538 d!2084621)))

(declare-fun lambda!372871 () Int)

(assert (=> bs!1713287 (not (= lambda!372871 lambda!372789))))

(declare-fun bs!1713288 () Bool)

(assert (= bs!1713288 (and b!6653538 b!6652222)))

(assert (=> bs!1713288 (= (and (= s!2326 (_1!36797 lt!2425939)) (= (regOne!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) lt!2425900)) (= lambda!372871 lambda!372758))))

(declare-fun bs!1713289 () Bool)

(assert (= bs!1713289 (and b!6653538 b!6652208)))

(assert (=> bs!1713289 (= (and (= s!2326 Nil!65720) (= (regOne!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) lt!2425900)) (= lambda!372871 lambda!372761))))

(declare-fun bs!1713291 () Bool)

(assert (= bs!1713291 (and b!6653538 b!6653537)))

(assert (=> bs!1713291 (not (= lambda!372871 lambda!372870))))

(declare-fun bs!1713292 () Bool)

(assert (= bs!1713292 (and b!6653538 b!6652251)))

(assert (=> bs!1713292 (= (and (= (regOne!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) lt!2425898)) (= lambda!372871 lambda!372746))))

(declare-fun bs!1713293 () Bool)

(assert (= bs!1713293 (and b!6653538 b!6652829)))

(assert (=> bs!1713293 (not (= lambda!372871 lambda!372803))))

(assert (=> bs!1713292 (not (= lambda!372871 lambda!372745))))

(declare-fun bs!1713294 () Bool)

(assert (= bs!1713294 (and b!6653538 d!2084839)))

(assert (=> bs!1713294 (not (= lambda!372871 lambda!372826))))

(declare-fun bs!1713295 () Bool)

(assert (= bs!1713295 (and b!6653538 b!6653339)))

(assert (=> bs!1713295 (= (and (= s!2326 (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326))) (= (regOne!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (regOne!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292))))))) (= (regTwo!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (regTwo!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))))) (= lambda!372871 lambda!372866))))

(declare-fun bs!1713296 () Bool)

(assert (= bs!1713296 (and b!6653538 b!6652830)))

(assert (=> bs!1713296 (= (and (= (regOne!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (regOne!33542 r!7292)) (= (regTwo!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (regTwo!33542 r!7292))) (= lambda!372871 lambda!372805))))

(assert (=> bs!1713292 (= (and (= (regOne!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) lt!2425950)) (= lambda!372871 lambda!372744))))

(assert (=> bs!1713288 (not (= lambda!372871 lambda!372757))))

(declare-fun bs!1713297 () Bool)

(assert (= bs!1713297 (and b!6653538 b!6652192)))

(assert (=> bs!1713297 (not (= lambda!372871 lambda!372750))))

(declare-fun bs!1713298 () Bool)

(assert (= bs!1713298 (and b!6653538 b!6652250)))

(assert (=> bs!1713298 (= (and (= (regOne!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) lt!2426072)) (= lambda!372871 lambda!372742))))

(assert (=> bs!1713292 (not (= lambda!372871 lambda!372743))))

(assert (=> bs!1713289 (not (= lambda!372871 lambda!372762))))

(assert (=> bs!1713289 (not (= lambda!372871 lambda!372760))))

(assert (=> bs!1713287 (= (and (= s!2326 (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)))) (= (regOne!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292))))))) (= (regTwo!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))))) (= lambda!372871 lambda!372791))))

(declare-fun bs!1713299 () Bool)

(assert (= bs!1713299 (and b!6653538 b!6653051)))

(assert (=> bs!1713299 (not (= lambda!372871 lambda!372822))))

(assert (=> bs!1713288 (= (and (= (regOne!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) lt!2426074) (= (regTwo!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (regTwo!33542 r!7292))) (= lambda!372871 lambda!372756))))

(assert (=> bs!1713297 (= (and (= s!2326 (_1!36797 lt!2425896)) (= (regOne!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) lt!2425900)) (= lambda!372871 lambda!372751))))

(declare-fun bs!1713300 () Bool)

(assert (= bs!1713300 (and b!6653538 b!6653338)))

(assert (=> bs!1713300 (not (= lambda!372871 lambda!372865))))

(declare-fun bs!1713302 () Bool)

(assert (= bs!1713302 (and b!6653538 b!6653208)))

(assert (=> bs!1713302 (= (and (= s!2326 (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939))) (= (regOne!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (regOne!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074)))) (= (regTwo!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (regTwo!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))))) (= lambda!372871 lambda!372835))))

(declare-fun bs!1713304 () Bool)

(assert (= bs!1713304 (and b!6653538 b!6652194)))

(assert (=> bs!1713304 (= (and (= (regOne!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (regOne!33542 r!7292)) (= (regTwo!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (regTwo!33542 r!7292))) (= lambda!372871 lambda!372737))))

(declare-fun bs!1713307 () Bool)

(assert (= bs!1713307 (and b!6653538 b!6652196)))

(assert (=> bs!1713307 (= (and (= (regOne!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) lt!2425900) (= (regTwo!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (regTwo!33542 r!7292))) (= lambda!372871 lambda!372748))))

(assert (=> bs!1713288 (not (= lambda!372871 lambda!372759))))

(assert (=> bs!1713307 (not (= lambda!372871 lambda!372747))))

(declare-fun bs!1713313 () Bool)

(assert (= bs!1713313 (and b!6653538 b!6653207)))

(assert (=> bs!1713313 (not (= lambda!372871 lambda!372834))))

(assert (=> bs!1713298 (not (= lambda!372871 lambda!372739))))

(assert (=> bs!1713294 (= (and (= s!2326 (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939))) (= (regOne!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))))) (= (regTwo!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))))) (= lambda!372871 lambda!372831))))

(assert (=> bs!1713298 (= (and (= (regOne!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) lt!2425943)) (= lambda!372871 lambda!372740))))

(assert (=> bs!1713297 (not (= lambda!372871 lambda!372749))))

(assert (=> bs!1713298 (not (= lambda!372871 lambda!372741))))

(declare-fun bs!1713315 () Bool)

(assert (= bs!1713315 (and b!6653538 b!6653052)))

(assert (=> bs!1713315 (= (and (= (regOne!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (regOne!33542 lt!2425903)) (= (regTwo!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) (regTwo!33542 lt!2425903))) (= lambda!372871 lambda!372823))))

(assert (=> bs!1713288 (not (= lambda!372871 lambda!372755))))

(assert (=> bs!1713304 (not (= lambda!372871 lambda!372736))))

(assert (=> b!6653538 true))

(assert (=> b!6653538 true))

(declare-fun bm!589576 () Bool)

(declare-fun call!589582 () Bool)

(assert (=> bm!589576 (= call!589582 (isEmpty!38032 s!2326))))

(declare-fun c!1228351 () Bool)

(declare-fun b!6653531 () Bool)

(assert (=> b!6653531 (= c!1228351 ((_ is ElementMatch!16515) (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))))))

(declare-fun e!4022999 () Bool)

(declare-fun e!4022997 () Bool)

(assert (=> b!6653531 (= e!4022999 e!4022997)))

(declare-fun bm!589577 () Bool)

(declare-fun c!1228350 () Bool)

(declare-fun call!589581 () Bool)

(assert (=> bm!589577 (= call!589581 (Exists!3585 (ite c!1228350 lambda!372870 lambda!372871)))))

(declare-fun b!6653532 () Bool)

(declare-fun e!4022995 () Bool)

(assert (=> b!6653532 (= e!4022995 call!589582)))

(declare-fun e!4022994 () Bool)

(declare-fun b!6653533 () Bool)

(assert (=> b!6653533 (= e!4022994 (matchRSpec!3616 (regTwo!33543 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) s!2326))))

(declare-fun b!6653534 () Bool)

(assert (=> b!6653534 (= e!4022997 (= s!2326 (Cons!65720 (c!1227945 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) Nil!65720)))))

(declare-fun b!6653535 () Bool)

(assert (=> b!6653535 (= e!4022995 e!4022999)))

(declare-fun res!2726531 () Bool)

(assert (=> b!6653535 (= res!2726531 (not ((_ is EmptyLang!16515) (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292)))))))))))

(assert (=> b!6653535 (=> (not res!2726531) (not e!4022999))))

(declare-fun c!1228348 () Bool)

(declare-fun b!6653536 () Bool)

(assert (=> b!6653536 (= c!1228348 ((_ is Union!16515) (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))))))

(declare-fun e!4022996 () Bool)

(assert (=> b!6653536 (= e!4022997 e!4022996)))

(declare-fun e!4022998 () Bool)

(assert (=> b!6653537 (= e!4022998 call!589581)))

(declare-fun d!2084977 () Bool)

(declare-fun c!1228349 () Bool)

(assert (=> d!2084977 (= c!1228349 ((_ is EmptyExpr!16515) (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))))))

(assert (=> d!2084977 (= (matchRSpec!3616 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292)))))) s!2326) e!4022995)))

(declare-fun e!4022993 () Bool)

(assert (=> b!6653538 (= e!4022993 call!589581)))

(declare-fun b!6653539 () Bool)

(assert (=> b!6653539 (= e!4022996 e!4022994)))

(declare-fun res!2726532 () Bool)

(assert (=> b!6653539 (= res!2726532 (matchRSpec!3616 (regOne!33543 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))) s!2326))))

(assert (=> b!6653539 (=> res!2726532 e!4022994)))

(declare-fun b!6653540 () Bool)

(declare-fun res!2726530 () Bool)

(assert (=> b!6653540 (=> res!2726530 e!4022998)))

(assert (=> b!6653540 (= res!2726530 call!589582)))

(assert (=> b!6653540 (= e!4022993 e!4022998)))

(declare-fun b!6653541 () Bool)

(assert (=> b!6653541 (= e!4022996 e!4022993)))

(assert (=> b!6653541 (= c!1228350 ((_ is Star!16515) (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))))))

(assert (= (and d!2084977 c!1228349) b!6653532))

(assert (= (and d!2084977 (not c!1228349)) b!6653535))

(assert (= (and b!6653535 res!2726531) b!6653531))

(assert (= (and b!6653531 c!1228351) b!6653534))

(assert (= (and b!6653531 (not c!1228351)) b!6653536))

(assert (= (and b!6653536 c!1228348) b!6653539))

(assert (= (and b!6653536 (not c!1228348)) b!6653541))

(assert (= (and b!6653539 (not res!2726532)) b!6653533))

(assert (= (and b!6653541 c!1228350) b!6653540))

(assert (= (and b!6653541 (not c!1228350)) b!6653538))

(assert (= (and b!6653540 (not res!2726530)) b!6653537))

(assert (= (or b!6653537 b!6653538) bm!589577))

(assert (= (or b!6653532 b!6653540) bm!589576))

(assert (=> bm!589576 m!7419040))

(declare-fun m!7420230 () Bool)

(assert (=> bm!589577 m!7420230))

(declare-fun m!7420234 () Bool)

(assert (=> b!6653533 m!7420234))

(declare-fun m!7420238 () Bool)

(assert (=> b!6653539 m!7420238))

(assert (=> bm!589371 d!2084977))

(declare-fun d!2084993 () Bool)

(assert (=> d!2084993 (not (matchZipper!2527 lt!2426042 (t!379513 s!2326)))))

(declare-fun lt!2426359 () Unit!159541)

(declare-fun choose!49794 ((InoxSet Context!11798) List!65844) Unit!159541)

(assert (=> d!2084993 (= lt!2426359 (choose!49794 lt!2426042 (t!379513 s!2326)))))

(assert (=> d!2084993 (= lt!2426042 ((as const (Array Context!11798 Bool)) false))))

(assert (=> d!2084993 (= (lemmaEmptyZipperMatchesNothing!108 lt!2426042 (t!379513 s!2326)) lt!2426359)))

(declare-fun bs!1713317 () Bool)

(assert (= bs!1713317 d!2084993))

(assert (=> bs!1713317 m!7418468))

(declare-fun m!7420242 () Bool)

(assert (=> bs!1713317 m!7420242))

(assert (=> bm!589298 d!2084993))

(declare-fun bs!1713318 () Bool)

(declare-fun d!2084997 () Bool)

(assert (= bs!1713318 (and d!2084997 b!6652222)))

(declare-fun lambda!372873 () Int)

(assert (=> bs!1713318 (= lambda!372873 lambda!372754)))

(declare-fun bs!1713319 () Bool)

(assert (= bs!1713319 (and d!2084997 d!2084801)))

(assert (=> bs!1713319 (= lambda!372873 lambda!372824)))

(declare-fun bs!1713320 () Bool)

(assert (= bs!1713320 (and d!2084997 d!2084613)))

(assert (=> bs!1713320 (= lambda!372873 lambda!372780)))

(declare-fun bs!1713321 () Bool)

(assert (= bs!1713321 (and d!2084997 b!6652192)))

(assert (=> bs!1713321 (= lambda!372873 lambda!372752)))

(declare-fun bs!1713322 () Bool)

(assert (= bs!1713322 (and d!2084997 d!2084599)))

(assert (=> bs!1713322 (= lambda!372873 lambda!372768)))

(declare-fun bs!1713323 () Bool)

(assert (= bs!1713323 (and d!2084997 d!2084865)))

(assert (=> bs!1713323 (= lambda!372873 lambda!372850)))

(declare-fun bs!1713324 () Bool)

(assert (= bs!1713324 (and d!2084997 d!2084901)))

(assert (=> bs!1713324 (= lambda!372873 lambda!372867)))

(declare-fun b!6653589 () Bool)

(declare-fun e!4023025 () Regex!16515)

(assert (=> b!6653589 (= e!4023025 EmptyExpr!16515)))

(declare-fun e!4023029 () Bool)

(declare-fun b!6653590 () Bool)

(assert (=> b!6653590 (= e!4023029 (isEmpty!38034 (t!379514 (ite c!1227933 (t!379514 (exprs!6399 (h!72170 zl!343))) (ite c!1227937 lt!2426059 (ite c!1227939 lt!2426017 (t!379514 (exprs!6399 (h!72170 zl!343)))))))))))

(declare-fun b!6653591 () Bool)

(declare-fun e!4023030 () Bool)

(declare-fun e!4023027 () Bool)

(assert (=> b!6653591 (= e!4023030 e!4023027)))

(declare-fun c!1228366 () Bool)

(assert (=> b!6653591 (= c!1228366 (isEmpty!38034 (tail!12559 (ite c!1227933 (t!379514 (exprs!6399 (h!72170 zl!343))) (ite c!1227937 lt!2426059 (ite c!1227939 lt!2426017 (t!379514 (exprs!6399 (h!72170 zl!343)))))))))))

(declare-fun lt!2426360 () Regex!16515)

(declare-fun b!6653592 () Bool)

(assert (=> b!6653592 (= e!4023027 (= lt!2426360 (head!13474 (ite c!1227933 (t!379514 (exprs!6399 (h!72170 zl!343))) (ite c!1227937 lt!2426059 (ite c!1227939 lt!2426017 (t!379514 (exprs!6399 (h!72170 zl!343)))))))))))

(declare-fun b!6653593 () Bool)

(declare-fun e!4023026 () Regex!16515)

(assert (=> b!6653593 (= e!4023026 (h!72169 (ite c!1227933 (t!379514 (exprs!6399 (h!72170 zl!343))) (ite c!1227937 lt!2426059 (ite c!1227939 lt!2426017 (t!379514 (exprs!6399 (h!72170 zl!343))))))))))

(declare-fun b!6653594 () Bool)

(assert (=> b!6653594 (= e!4023026 e!4023025)))

(declare-fun c!1228363 () Bool)

(assert (=> b!6653594 (= c!1228363 ((_ is Cons!65721) (ite c!1227933 (t!379514 (exprs!6399 (h!72170 zl!343))) (ite c!1227937 lt!2426059 (ite c!1227939 lt!2426017 (t!379514 (exprs!6399 (h!72170 zl!343))))))))))

(declare-fun b!6653595 () Bool)

(assert (=> b!6653595 (= e!4023025 (Concat!25360 (h!72169 (ite c!1227933 (t!379514 (exprs!6399 (h!72170 zl!343))) (ite c!1227937 lt!2426059 (ite c!1227939 lt!2426017 (t!379514 (exprs!6399 (h!72170 zl!343))))))) (generalisedConcat!2112 (t!379514 (ite c!1227933 (t!379514 (exprs!6399 (h!72170 zl!343))) (ite c!1227937 lt!2426059 (ite c!1227939 lt!2426017 (t!379514 (exprs!6399 (h!72170 zl!343))))))))))))

(declare-fun b!6653596 () Bool)

(declare-fun e!4023028 () Bool)

(assert (=> b!6653596 (= e!4023028 e!4023030)))

(declare-fun c!1228364 () Bool)

(assert (=> b!6653596 (= c!1228364 (isEmpty!38034 (ite c!1227933 (t!379514 (exprs!6399 (h!72170 zl!343))) (ite c!1227937 lt!2426059 (ite c!1227939 lt!2426017 (t!379514 (exprs!6399 (h!72170 zl!343))))))))))

(declare-fun b!6653597 () Bool)

(assert (=> b!6653597 (= e!4023027 (isConcat!1412 lt!2426360))))

(assert (=> d!2084997 e!4023028))

(declare-fun res!2726558 () Bool)

(assert (=> d!2084997 (=> (not res!2726558) (not e!4023028))))

(assert (=> d!2084997 (= res!2726558 (validRegex!8251 lt!2426360))))

(assert (=> d!2084997 (= lt!2426360 e!4023026)))

(declare-fun c!1228365 () Bool)

(assert (=> d!2084997 (= c!1228365 e!4023029)))

(declare-fun res!2726559 () Bool)

(assert (=> d!2084997 (=> (not res!2726559) (not e!4023029))))

(assert (=> d!2084997 (= res!2726559 ((_ is Cons!65721) (ite c!1227933 (t!379514 (exprs!6399 (h!72170 zl!343))) (ite c!1227937 lt!2426059 (ite c!1227939 lt!2426017 (t!379514 (exprs!6399 (h!72170 zl!343))))))))))

(assert (=> d!2084997 (forall!15713 (ite c!1227933 (t!379514 (exprs!6399 (h!72170 zl!343))) (ite c!1227937 lt!2426059 (ite c!1227939 lt!2426017 (t!379514 (exprs!6399 (h!72170 zl!343)))))) lambda!372873)))

(assert (=> d!2084997 (= (generalisedConcat!2112 (ite c!1227933 (t!379514 (exprs!6399 (h!72170 zl!343))) (ite c!1227937 lt!2426059 (ite c!1227939 lt!2426017 (t!379514 (exprs!6399 (h!72170 zl!343))))))) lt!2426360)))

(declare-fun b!6653598 () Bool)

(assert (=> b!6653598 (= e!4023030 (isEmptyExpr!1889 lt!2426360))))

(assert (= (and d!2084997 res!2726559) b!6653590))

(assert (= (and d!2084997 c!1228365) b!6653593))

(assert (= (and d!2084997 (not c!1228365)) b!6653594))

(assert (= (and b!6653594 c!1228363) b!6653595))

(assert (= (and b!6653594 (not c!1228363)) b!6653589))

(assert (= (and d!2084997 res!2726558) b!6653596))

(assert (= (and b!6653596 c!1228364) b!6653598))

(assert (= (and b!6653596 (not c!1228364)) b!6653591))

(assert (= (and b!6653591 c!1228366) b!6653592))

(assert (= (and b!6653591 (not c!1228366)) b!6653597))

(declare-fun m!7420244 () Bool)

(assert (=> d!2084997 m!7420244))

(declare-fun m!7420246 () Bool)

(assert (=> d!2084997 m!7420246))

(declare-fun m!7420248 () Bool)

(assert (=> b!6653598 m!7420248))

(declare-fun m!7420250 () Bool)

(assert (=> b!6653592 m!7420250))

(declare-fun m!7420252 () Bool)

(assert (=> b!6653595 m!7420252))

(declare-fun m!7420254 () Bool)

(assert (=> b!6653596 m!7420254))

(declare-fun m!7420256 () Bool)

(assert (=> b!6653590 m!7420256))

(declare-fun m!7420260 () Bool)

(assert (=> b!6653597 m!7420260))

(declare-fun m!7420262 () Bool)

(assert (=> b!6653591 m!7420262))

(assert (=> b!6653591 m!7420262))

(declare-fun m!7420266 () Bool)

(assert (=> b!6653591 m!7420266))

(assert (=> bm!589279 d!2084997))

(declare-fun d!2084999 () Bool)

(assert (=> d!2084999 (= (isEmpty!38033 (t!379515 zl!343)) ((_ is Nil!65722) (t!379515 zl!343)))))

(assert (=> b!6652225 d!2084999))

(declare-fun e!4023031 () Bool)

(declare-fun d!2085003 () Bool)

(assert (=> d!2085003 (= (matchZipper!2527 ((_ map or) (ite c!1227937 lt!2426007 lt!2426083) (ite c!1227937 lt!2425997 lt!2426055)) (t!379513 s!2326)) e!4023031)))

(declare-fun res!2726560 () Bool)

(assert (=> d!2085003 (=> res!2726560 e!4023031)))

(assert (=> d!2085003 (= res!2726560 (matchZipper!2527 (ite c!1227937 lt!2426007 lt!2426083) (t!379513 s!2326)))))

(declare-fun lt!2426364 () Unit!159541)

(assert (=> d!2085003 (= lt!2426364 (choose!49785 (ite c!1227937 lt!2426007 lt!2426083) (ite c!1227937 lt!2425997 lt!2426055) (t!379513 s!2326)))))

(assert (=> d!2085003 (= (lemmaZipperConcatMatchesSameAsBothZippers!1346 (ite c!1227937 lt!2426007 lt!2426083) (ite c!1227937 lt!2425997 lt!2426055) (t!379513 s!2326)) lt!2426364)))

(declare-fun b!6653599 () Bool)

(assert (=> b!6653599 (= e!4023031 (matchZipper!2527 (ite c!1227937 lt!2425997 lt!2426055) (t!379513 s!2326)))))

(assert (= (and d!2085003 (not res!2726560)) b!6653599))

(declare-fun m!7420272 () Bool)

(assert (=> d!2085003 m!7420272))

(declare-fun m!7420274 () Bool)

(assert (=> d!2085003 m!7420274))

(declare-fun m!7420276 () Bool)

(assert (=> d!2085003 m!7420276))

(declare-fun m!7420278 () Bool)

(assert (=> b!6653599 m!7420278))

(assert (=> bm!589169 d!2085003))

(declare-fun bs!1713347 () Bool)

(declare-fun d!2085005 () Bool)

(assert (= bs!1713347 (and d!2085005 d!2084621)))

(declare-fun lambda!372880 () Int)

(assert (=> bs!1713347 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)))) (= (reg!16844 (regOne!33542 r!7292)) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292))))))) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))))) (= lambda!372880 lambda!372789))))

(declare-fun bs!1713348 () Bool)

(assert (= bs!1713348 (and d!2085005 b!6652222)))

(assert (=> bs!1713348 (not (= lambda!372880 lambda!372758))))

(declare-fun bs!1713349 () Bool)

(assert (= bs!1713349 (and d!2085005 b!6652208)))

(assert (=> bs!1713349 (not (= lambda!372880 lambda!372761))))

(declare-fun bs!1713350 () Bool)

(assert (= bs!1713350 (and d!2085005 b!6653537)))

(assert (=> bs!1713350 (not (= lambda!372880 lambda!372870))))

(declare-fun bs!1713351 () Bool)

(assert (= bs!1713351 (and d!2085005 b!6652251)))

(assert (=> bs!1713351 (not (= lambda!372880 lambda!372746))))

(declare-fun bs!1713352 () Bool)

(assert (= bs!1713352 (and d!2085005 b!6652829)))

(assert (=> bs!1713352 (not (= lambda!372880 lambda!372803))))

(assert (=> bs!1713351 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) lt!2425898)) (= lambda!372880 lambda!372745))))

(declare-fun bs!1713353 () Bool)

(assert (= bs!1713353 (and d!2085005 b!6653538)))

(assert (=> bs!1713353 (not (= lambda!372880 lambda!372871))))

(declare-fun bs!1713354 () Bool)

(assert (= bs!1713354 (and d!2085005 d!2084839)))

(assert (=> bs!1713354 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939))) (= (reg!16844 (regOne!33542 r!7292)) (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))))) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))))) (= lambda!372880 lambda!372826))))

(declare-fun bs!1713355 () Bool)

(assert (= bs!1713355 (and d!2085005 b!6653339)))

(assert (=> bs!1713355 (not (= lambda!372880 lambda!372866))))

(declare-fun bs!1713356 () Bool)

(assert (= bs!1713356 (and d!2085005 b!6652830)))

(assert (=> bs!1713356 (not (= lambda!372880 lambda!372805))))

(assert (=> bs!1713351 (not (= lambda!372880 lambda!372744))))

(assert (=> bs!1713348 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) (_1!36797 lt!2425939)) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) lt!2425900)) (= lambda!372880 lambda!372757))))

(declare-fun bs!1713357 () Bool)

(assert (= bs!1713357 (and d!2085005 b!6652192)))

(assert (=> bs!1713357 (not (= lambda!372880 lambda!372750))))

(declare-fun bs!1713358 () Bool)

(assert (= bs!1713358 (and d!2085005 b!6652250)))

(assert (=> bs!1713358 (not (= lambda!372880 lambda!372742))))

(assert (=> bs!1713351 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) lt!2425950)) (= lambda!372880 lambda!372743))))

(assert (=> bs!1713349 (not (= lambda!372880 lambda!372762))))

(assert (=> bs!1713349 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) Nil!65720) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) lt!2425900)) (= lambda!372880 lambda!372760))))

(assert (=> bs!1713347 (not (= lambda!372880 lambda!372791))))

(declare-fun bs!1713359 () Bool)

(assert (= bs!1713359 (and d!2085005 b!6653051)))

(assert (=> bs!1713359 (not (= lambda!372880 lambda!372822))))

(assert (=> bs!1713348 (not (= lambda!372880 lambda!372756))))

(assert (=> bs!1713357 (not (= lambda!372880 lambda!372751))))

(declare-fun bs!1713360 () Bool)

(assert (= bs!1713360 (and d!2085005 b!6653338)))

(assert (=> bs!1713360 (not (= lambda!372880 lambda!372865))))

(declare-fun bs!1713361 () Bool)

(assert (= bs!1713361 (and d!2085005 b!6653208)))

(assert (=> bs!1713361 (not (= lambda!372880 lambda!372835))))

(declare-fun bs!1713362 () Bool)

(assert (= bs!1713362 (and d!2085005 b!6652194)))

(assert (=> bs!1713362 (not (= lambda!372880 lambda!372737))))

(declare-fun bs!1713363 () Bool)

(assert (= bs!1713363 (and d!2085005 b!6652196)))

(assert (=> bs!1713363 (not (= lambda!372880 lambda!372748))))

(assert (=> bs!1713348 (not (= lambda!372880 lambda!372759))))

(assert (=> bs!1713363 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326) (= (reg!16844 (regOne!33542 r!7292)) lt!2425900) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) (regTwo!33542 r!7292))) (= lambda!372880 lambda!372747))))

(declare-fun bs!1713364 () Bool)

(assert (= bs!1713364 (and d!2085005 b!6653207)))

(assert (=> bs!1713364 (not (= lambda!372880 lambda!372834))))

(assert (=> bs!1713358 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 (regOne!33542 r!7292))) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) lt!2425943)) (= lambda!372880 lambda!372739))))

(assert (=> bs!1713354 (not (= lambda!372880 lambda!372831))))

(assert (=> bs!1713358 (not (= lambda!372880 lambda!372740))))

(assert (=> bs!1713357 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) (_1!36797 lt!2425896)) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) lt!2425900)) (= lambda!372880 lambda!372749))))

(assert (=> bs!1713358 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regTwo!33542 (regOne!33542 r!7292))) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) lt!2426072)) (= lambda!372880 lambda!372741))))

(declare-fun bs!1713366 () Bool)

(assert (= bs!1713366 (and d!2085005 b!6653052)))

(assert (=> bs!1713366 (not (= lambda!372880 lambda!372823))))

(assert (=> bs!1713348 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326) (= (reg!16844 (regOne!33542 r!7292)) lt!2426074) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) (regTwo!33542 r!7292))) (= lambda!372880 lambda!372755))))

(assert (=> bs!1713362 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (regOne!33542 r!7292)) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) (regTwo!33542 r!7292))) (= lambda!372880 lambda!372736))))

(assert (=> d!2085005 true))

(assert (=> d!2085005 true))

(declare-fun lambda!372881 () Int)

(assert (=> bs!1713347 (not (= lambda!372881 lambda!372789))))

(assert (=> bs!1713348 (not (= lambda!372881 lambda!372758))))

(assert (=> bs!1713349 (not (= lambda!372881 lambda!372761))))

(assert (=> bs!1713350 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (reg!16844 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292)))))))) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292)))))))) (= lambda!372881 lambda!372870))))

(assert (=> bs!1713351 (not (= lambda!372881 lambda!372746))))

(assert (=> bs!1713352 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (reg!16844 r!7292)) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) r!7292)) (= lambda!372881 lambda!372803))))

(assert (=> bs!1713351 (not (= lambda!372881 lambda!372745))))

(assert (=> bs!1713353 (not (= lambda!372881 lambda!372871))))

(assert (=> bs!1713354 (not (= lambda!372881 lambda!372826))))

(assert (=> bs!1713355 (not (= lambda!372881 lambda!372866))))

(declare-fun bs!1713370 () Bool)

(assert (= bs!1713370 d!2085005))

(assert (=> bs!1713370 (not (= lambda!372881 lambda!372880))))

(assert (=> bs!1713356 (not (= lambda!372881 lambda!372805))))

(assert (=> bs!1713351 (not (= lambda!372881 lambda!372744))))

(assert (=> bs!1713348 (not (= lambda!372881 lambda!372757))))

(assert (=> bs!1713357 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) (_1!36797 lt!2425896)) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) lt!2425900)) (= lambda!372881 lambda!372750))))

(assert (=> bs!1713358 (not (= lambda!372881 lambda!372742))))

(assert (=> bs!1713351 (not (= lambda!372881 lambda!372743))))

(assert (=> bs!1713349 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) Nil!65720) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) lt!2425900)) (= lambda!372881 lambda!372762))))

(assert (=> bs!1713349 (not (= lambda!372881 lambda!372760))))

(assert (=> bs!1713347 (not (= lambda!372881 lambda!372791))))

(assert (=> bs!1713359 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326) (= (reg!16844 (regOne!33542 r!7292)) (reg!16844 lt!2425903)) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) lt!2425903)) (= lambda!372881 lambda!372822))))

(assert (=> bs!1713348 (not (= lambda!372881 lambda!372756))))

(assert (=> bs!1713357 (not (= lambda!372881 lambda!372751))))

(assert (=> bs!1713360 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326))) (= (reg!16844 (regOne!33542 r!7292)) (reg!16844 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292))))))) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292))))))) (= lambda!372881 lambda!372865))))

(assert (=> bs!1713361 (not (= lambda!372881 lambda!372835))))

(assert (=> bs!1713362 (not (= lambda!372881 lambda!372737))))

(assert (=> bs!1713363 (not (= lambda!372881 lambda!372748))))

(assert (=> bs!1713348 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) (_1!36797 lt!2425939)) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) lt!2425900)) (= lambda!372881 lambda!372759))))

(assert (=> bs!1713363 (not (= lambda!372881 lambda!372747))))

(assert (=> bs!1713364 (= (and (= (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939))) (= (reg!16844 (regOne!33542 r!7292)) (reg!16844 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074)))) (= (Star!16515 (reg!16844 (regOne!33542 r!7292))) (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074)))) (= lambda!372881 lambda!372834))))

(assert (=> bs!1713358 (not (= lambda!372881 lambda!372739))))

(assert (=> bs!1713354 (not (= lambda!372881 lambda!372831))))

(assert (=> bs!1713358 (not (= lambda!372881 lambda!372740))))

(assert (=> bs!1713357 (not (= lambda!372881 lambda!372749))))

(assert (=> bs!1713358 (not (= lambda!372881 lambda!372741))))

(assert (=> bs!1713366 (not (= lambda!372881 lambda!372823))))

(assert (=> bs!1713348 (not (= lambda!372881 lambda!372755))))

(assert (=> bs!1713362 (not (= lambda!372881 lambda!372736))))

(assert (=> d!2085005 true))

(assert (=> d!2085005 true))

(assert (=> d!2085005 (= (Exists!3585 lambda!372880) (Exists!3585 lambda!372881))))

(declare-fun lt!2426369 () Unit!159541)

(declare-fun choose!49796 (Regex!16515 List!65844) Unit!159541)

(assert (=> d!2085005 (= lt!2426369 (choose!49796 (reg!16844 (regOne!33542 r!7292)) (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720))))))

(assert (=> d!2085005 (validRegex!8251 (reg!16844 (regOne!33542 r!7292)))))

(assert (=> d!2085005 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!682 (reg!16844 (regOne!33542 r!7292)) (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720))) lt!2426369)))

(declare-fun m!7420334 () Bool)

(assert (=> bs!1713370 m!7420334))

(declare-fun m!7420336 () Bool)

(assert (=> bs!1713370 m!7420336))

(declare-fun m!7420338 () Bool)

(assert (=> bs!1713370 m!7420338))

(declare-fun m!7420340 () Bool)

(assert (=> bs!1713370 m!7420340))

(assert (=> bm!589344 d!2085005))

(declare-fun c!1228375 () Bool)

(declare-fun d!2085017 () Bool)

(assert (=> d!2085017 (= c!1228375 (isEmpty!38032 (ite (or c!1227937 c!1227939) (t!379513 s!2326) (ite c!1227934 s!2326 (ite c!1227943 (ite c!1227941 s!2326 (_1!36797 lt!2426064)) s!2326)))))))

(declare-fun e!4023052 () Bool)

(assert (=> d!2085017 (= (matchZipper!2527 (ite c!1227937 ((_ map or) lt!2425997 lt!2425952) (ite c!1227939 lt!2426083 (ite c!1227934 lt!2425907 (ite c!1227943 (ite c!1227941 (ite c!1227935 lt!2426039 z!1189) lt!2425935) (ite c!1227944 lt!2425917 z!1189))))) (ite (or c!1227937 c!1227939) (t!379513 s!2326) (ite c!1227934 s!2326 (ite c!1227943 (ite c!1227941 s!2326 (_1!36797 lt!2426064)) s!2326)))) e!4023052)))

(declare-fun b!6653639 () Bool)

(assert (=> b!6653639 (= e!4023052 (nullableZipper!2255 (ite c!1227937 ((_ map or) lt!2425997 lt!2425952) (ite c!1227939 lt!2426083 (ite c!1227934 lt!2425907 (ite c!1227943 (ite c!1227941 (ite c!1227935 lt!2426039 z!1189) lt!2425935) (ite c!1227944 lt!2425917 z!1189)))))))))

(declare-fun b!6653640 () Bool)

(assert (=> b!6653640 (= e!4023052 (matchZipper!2527 (derivationStepZipper!2481 (ite c!1227937 ((_ map or) lt!2425997 lt!2425952) (ite c!1227939 lt!2426083 (ite c!1227934 lt!2425907 (ite c!1227943 (ite c!1227941 (ite c!1227935 lt!2426039 z!1189) lt!2425935) (ite c!1227944 lt!2425917 z!1189))))) (head!13473 (ite (or c!1227937 c!1227939) (t!379513 s!2326) (ite c!1227934 s!2326 (ite c!1227943 (ite c!1227941 s!2326 (_1!36797 lt!2426064)) s!2326))))) (tail!12558 (ite (or c!1227937 c!1227939) (t!379513 s!2326) (ite c!1227934 s!2326 (ite c!1227943 (ite c!1227941 s!2326 (_1!36797 lt!2426064)) s!2326))))))))

(assert (= (and d!2085017 c!1228375) b!6653639))

(assert (= (and d!2085017 (not c!1228375)) b!6653640))

(declare-fun m!7420342 () Bool)

(assert (=> d!2085017 m!7420342))

(declare-fun m!7420344 () Bool)

(assert (=> b!6653639 m!7420344))

(declare-fun m!7420346 () Bool)

(assert (=> b!6653640 m!7420346))

(assert (=> b!6653640 m!7420346))

(declare-fun m!7420348 () Bool)

(assert (=> b!6653640 m!7420348))

(declare-fun m!7420350 () Bool)

(assert (=> b!6653640 m!7420350))

(assert (=> b!6653640 m!7420348))

(assert (=> b!6653640 m!7420350))

(declare-fun m!7420352 () Bool)

(assert (=> b!6653640 m!7420352))

(assert (=> bm!589328 d!2085017))

(declare-fun d!2085019 () Bool)

(assert (=> d!2085019 (= (Exists!3585 (ite c!1227939 lambda!372740 (ite c!1227934 lambda!372746 (ite c!1227941 lambda!372748 lambda!372755)))) (choose!49772 (ite c!1227939 lambda!372740 (ite c!1227934 lambda!372746 (ite c!1227941 lambda!372748 lambda!372755)))))))

(declare-fun bs!1713388 () Bool)

(assert (= bs!1713388 d!2085019))

(declare-fun m!7420354 () Bool)

(assert (=> bs!1713388 m!7420354))

(assert (=> bm!589282 d!2085019))

(declare-fun e!4023053 () Bool)

(declare-fun lt!2426375 () List!65844)

(declare-fun b!6653644 () Bool)

(assert (=> b!6653644 (= e!4023053 (or (not (= (ite c!1227941 (_2!36797 lt!2426051) (_2!36797 lt!2425946)) Nil!65720)) (= lt!2426375 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946)))))))

(declare-fun b!6653641 () Bool)

(declare-fun e!4023054 () List!65844)

(assert (=> b!6653641 (= e!4023054 (ite c!1227941 (_2!36797 lt!2426051) (_2!36797 lt!2425946)))))

(declare-fun b!6653643 () Bool)

(declare-fun res!2726585 () Bool)

(assert (=> b!6653643 (=> (not res!2726585) (not e!4023053))))

(assert (=> b!6653643 (= res!2726585 (= (size!40574 lt!2426375) (+ (size!40574 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946))) (size!40574 (ite c!1227941 (_2!36797 lt!2426051) (_2!36797 lt!2425946))))))))

(declare-fun b!6653642 () Bool)

(assert (=> b!6653642 (= e!4023054 (Cons!65720 (h!72168 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946))) (++!14672 (t!379513 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946))) (ite c!1227941 (_2!36797 lt!2426051) (_2!36797 lt!2425946)))))))

(declare-fun d!2085021 () Bool)

(assert (=> d!2085021 e!4023053))

(declare-fun res!2726584 () Bool)

(assert (=> d!2085021 (=> (not res!2726584) (not e!4023053))))

(assert (=> d!2085021 (= res!2726584 (= (content!12718 lt!2426375) ((_ map or) (content!12718 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946))) (content!12718 (ite c!1227941 (_2!36797 lt!2426051) (_2!36797 lt!2425946))))))))

(assert (=> d!2085021 (= lt!2426375 e!4023054)))

(declare-fun c!1228376 () Bool)

(assert (=> d!2085021 (= c!1228376 ((_ is Nil!65720) (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946))))))

(assert (=> d!2085021 (= (++!14672 (ite c!1227941 (_1!36797 lt!2426051) (_1!36797 lt!2425946)) (ite c!1227941 (_2!36797 lt!2426051) (_2!36797 lt!2425946))) lt!2426375)))

(assert (= (and d!2085021 c!1228376) b!6653641))

(assert (= (and d!2085021 (not c!1228376)) b!6653642))

(assert (= (and d!2085021 res!2726584) b!6653643))

(assert (= (and b!6653643 res!2726585) b!6653644))

(declare-fun m!7420356 () Bool)

(assert (=> b!6653643 m!7420356))

(assert (=> b!6653643 m!7419538))

(declare-fun m!7420358 () Bool)

(assert (=> b!6653643 m!7420358))

(declare-fun m!7420360 () Bool)

(assert (=> b!6653642 m!7420360))

(declare-fun m!7420362 () Bool)

(assert (=> d!2085021 m!7420362))

(assert (=> d!2085021 m!7419546))

(declare-fun m!7420364 () Bool)

(assert (=> d!2085021 m!7420364))

(assert (=> bm!589264 d!2085021))

(declare-fun d!2085023 () Bool)

(assert (=> d!2085023 (= (matchR!8698 (ite c!1227937 lt!2426024 (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425927 (ite c!1227941 (ite c!1227935 lt!2426058 lt!2425941) (ite c!1227938 lt!2425941 lt!2426033))))) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227941 (ite c!1227935 s!2326 lt!2425940) (ite c!1227938 (_2!36797 lt!2426064) s!2326)))) (matchZipper!2527 (ite c!1227937 lt!2426013 (ite c!1227939 lt!2425972 (ite c!1227934 lt!2425907 (ite c!1227941 (ite c!1227935 lt!2426039 lt!2426050) (ite c!1227938 lt!2426050 lt!2425981))))) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227941 (ite c!1227935 s!2326 lt!2425940) (ite c!1227938 (_2!36797 lt!2426064) s!2326)))))))

(declare-fun lt!2426376 () Unit!159541)

(assert (=> d!2085023 (= lt!2426376 (choose!49771 (ite c!1227937 lt!2426013 (ite c!1227939 lt!2425972 (ite c!1227934 lt!2425907 (ite c!1227941 (ite c!1227935 lt!2426039 lt!2426050) (ite c!1227938 lt!2426050 lt!2425981))))) (ite c!1227937 (Cons!65722 lt!2426001 Nil!65722) (ite c!1227939 (Cons!65722 lt!2426009 Nil!65722) (ite c!1227934 (Cons!65722 lt!2426021 Nil!65722) (ite c!1227941 (ite c!1227935 (Cons!65722 lt!2425966 Nil!65722) (Cons!65722 lt!2425930 Nil!65722)) (ite c!1227938 (Cons!65722 lt!2425930 Nil!65722) (Cons!65722 lt!2425966 Nil!65722)))))) (ite c!1227937 lt!2426024 (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425927 (ite c!1227941 (ite c!1227935 lt!2426058 lt!2425941) (ite c!1227938 lt!2425941 lt!2426033))))) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227941 (ite c!1227935 s!2326 lt!2425940) (ite c!1227938 (_2!36797 lt!2426064) s!2326)))))))

(assert (=> d!2085023 (validRegex!8251 (ite c!1227937 lt!2426024 (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425927 (ite c!1227941 (ite c!1227935 lt!2426058 lt!2425941) (ite c!1227938 lt!2425941 lt!2426033))))))))

(assert (=> d!2085023 (= (theoremZipperRegexEquiv!911 (ite c!1227937 lt!2426013 (ite c!1227939 lt!2425972 (ite c!1227934 lt!2425907 (ite c!1227941 (ite c!1227935 lt!2426039 lt!2426050) (ite c!1227938 lt!2426050 lt!2425981))))) (ite c!1227937 (Cons!65722 lt!2426001 Nil!65722) (ite c!1227939 (Cons!65722 lt!2426009 Nil!65722) (ite c!1227934 (Cons!65722 lt!2426021 Nil!65722) (ite c!1227941 (ite c!1227935 (Cons!65722 lt!2425966 Nil!65722) (Cons!65722 lt!2425930 Nil!65722)) (ite c!1227938 (Cons!65722 lt!2425930 Nil!65722) (Cons!65722 lt!2425966 Nil!65722)))))) (ite c!1227937 lt!2426024 (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425927 (ite c!1227941 (ite c!1227935 lt!2426058 lt!2425941) (ite c!1227938 lt!2425941 lt!2426033))))) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227941 (ite c!1227935 s!2326 lt!2425940) (ite c!1227938 (_2!36797 lt!2426064) s!2326)))) lt!2426376)))

(declare-fun bs!1713398 () Bool)

(assert (= bs!1713398 d!2085023))

(declare-fun m!7420366 () Bool)

(assert (=> bs!1713398 m!7420366))

(declare-fun m!7420368 () Bool)

(assert (=> bs!1713398 m!7420368))

(declare-fun m!7420370 () Bool)

(assert (=> bs!1713398 m!7420370))

(declare-fun m!7420372 () Bool)

(assert (=> bs!1713398 m!7420372))

(assert (=> bm!589237 d!2085023))

(declare-fun d!2085025 () Bool)

(assert (=> d!2085025 (= (Exists!3585 (ite c!1227934 lambda!372745 (ite c!1227941 lambda!372747 (ite c!1227938 lambda!372757 lambda!372761)))) (choose!49772 (ite c!1227934 lambda!372745 (ite c!1227941 lambda!372747 (ite c!1227938 lambda!372757 lambda!372761)))))))

(declare-fun bs!1713402 () Bool)

(assert (= bs!1713402 d!2085025))

(declare-fun m!7420374 () Bool)

(assert (=> bs!1713402 m!7420374))

(assert (=> bm!589347 d!2085025))

(declare-fun bs!1713428 () Bool)

(declare-fun d!2085027 () Bool)

(assert (= bs!1713428 (and d!2085027 b!6652222)))

(declare-fun lambda!372887 () Int)

(assert (=> bs!1713428 (= lambda!372887 lambda!372754)))

(declare-fun bs!1713429 () Bool)

(assert (= bs!1713429 (and d!2085027 d!2084801)))

(assert (=> bs!1713429 (= lambda!372887 lambda!372824)))

(declare-fun bs!1713431 () Bool)

(assert (= bs!1713431 (and d!2085027 d!2084997)))

(assert (=> bs!1713431 (= lambda!372887 lambda!372873)))

(declare-fun bs!1713432 () Bool)

(assert (= bs!1713432 (and d!2085027 d!2084613)))

(assert (=> bs!1713432 (= lambda!372887 lambda!372780)))

(declare-fun bs!1713433 () Bool)

(assert (= bs!1713433 (and d!2085027 b!6652192)))

(assert (=> bs!1713433 (= lambda!372887 lambda!372752)))

(declare-fun bs!1713434 () Bool)

(assert (= bs!1713434 (and d!2085027 d!2084599)))

(assert (=> bs!1713434 (= lambda!372887 lambda!372768)))

(declare-fun bs!1713436 () Bool)

(assert (= bs!1713436 (and d!2085027 d!2084865)))

(assert (=> bs!1713436 (= lambda!372887 lambda!372850)))

(declare-fun bs!1713437 () Bool)

(assert (= bs!1713437 (and d!2085027 d!2084901)))

(assert (=> bs!1713437 (= lambda!372887 lambda!372867)))

(declare-fun b!6653674 () Bool)

(declare-fun e!4023077 () Bool)

(declare-fun lt!2426383 () Regex!16515)

(declare-fun isUnion!1327 (Regex!16515) Bool)

(assert (=> b!6653674 (= e!4023077 (isUnion!1327 lt!2426383))))

(declare-fun b!6653675 () Bool)

(declare-fun e!4023072 () Bool)

(declare-fun e!4023075 () Bool)

(assert (=> b!6653675 (= e!4023072 e!4023075)))

(declare-fun c!1228390 () Bool)

(assert (=> b!6653675 (= c!1228390 (isEmpty!38034 (unfocusZipperList!1936 zl!343)))))

(declare-fun b!6653677 () Bool)

(declare-fun e!4023073 () Regex!16515)

(assert (=> b!6653677 (= e!4023073 EmptyLang!16515)))

(declare-fun b!6653678 () Bool)

(declare-fun e!4023074 () Regex!16515)

(assert (=> b!6653678 (= e!4023074 (h!72169 (unfocusZipperList!1936 zl!343)))))

(declare-fun b!6653679 () Bool)

(assert (=> b!6653679 (= e!4023073 (Union!16515 (h!72169 (unfocusZipperList!1936 zl!343)) (generalisedUnion!2359 (t!379514 (unfocusZipperList!1936 zl!343)))))))

(declare-fun b!6653680 () Bool)

(declare-fun e!4023076 () Bool)

(assert (=> b!6653680 (= e!4023076 (isEmpty!38034 (t!379514 (unfocusZipperList!1936 zl!343))))))

(declare-fun b!6653681 () Bool)

(declare-fun isEmptyLang!1897 (Regex!16515) Bool)

(assert (=> b!6653681 (= e!4023075 (isEmptyLang!1897 lt!2426383))))

(assert (=> d!2085027 e!4023072))

(declare-fun res!2726596 () Bool)

(assert (=> d!2085027 (=> (not res!2726596) (not e!4023072))))

(assert (=> d!2085027 (= res!2726596 (validRegex!8251 lt!2426383))))

(assert (=> d!2085027 (= lt!2426383 e!4023074)))

(declare-fun c!1228388 () Bool)

(assert (=> d!2085027 (= c!1228388 e!4023076)))

(declare-fun res!2726595 () Bool)

(assert (=> d!2085027 (=> (not res!2726595) (not e!4023076))))

(assert (=> d!2085027 (= res!2726595 ((_ is Cons!65721) (unfocusZipperList!1936 zl!343)))))

(assert (=> d!2085027 (forall!15713 (unfocusZipperList!1936 zl!343) lambda!372887)))

(assert (=> d!2085027 (= (generalisedUnion!2359 (unfocusZipperList!1936 zl!343)) lt!2426383)))

(declare-fun b!6653676 () Bool)

(assert (=> b!6653676 (= e!4023077 (= lt!2426383 (head!13474 (unfocusZipperList!1936 zl!343))))))

(declare-fun b!6653682 () Bool)

(assert (=> b!6653682 (= e!4023075 e!4023077)))

(declare-fun c!1228387 () Bool)

(assert (=> b!6653682 (= c!1228387 (isEmpty!38034 (tail!12559 (unfocusZipperList!1936 zl!343))))))

(declare-fun b!6653683 () Bool)

(assert (=> b!6653683 (= e!4023074 e!4023073)))

(declare-fun c!1228389 () Bool)

(assert (=> b!6653683 (= c!1228389 ((_ is Cons!65721) (unfocusZipperList!1936 zl!343)))))

(assert (= (and d!2085027 res!2726595) b!6653680))

(assert (= (and d!2085027 c!1228388) b!6653678))

(assert (= (and d!2085027 (not c!1228388)) b!6653683))

(assert (= (and b!6653683 c!1228389) b!6653679))

(assert (= (and b!6653683 (not c!1228389)) b!6653677))

(assert (= (and d!2085027 res!2726596) b!6653675))

(assert (= (and b!6653675 c!1228390) b!6653681))

(assert (= (and b!6653675 (not c!1228390)) b!6653682))

(assert (= (and b!6653682 c!1228387) b!6653676))

(assert (= (and b!6653682 (not c!1228387)) b!6653674))

(declare-fun m!7420404 () Bool)

(assert (=> b!6653681 m!7420404))

(declare-fun m!7420406 () Bool)

(assert (=> b!6653674 m!7420406))

(assert (=> b!6653675 m!7418432))

(declare-fun m!7420408 () Bool)

(assert (=> b!6653675 m!7420408))

(declare-fun m!7420410 () Bool)

(assert (=> d!2085027 m!7420410))

(assert (=> d!2085027 m!7418432))

(declare-fun m!7420412 () Bool)

(assert (=> d!2085027 m!7420412))

(assert (=> b!6653676 m!7418432))

(declare-fun m!7420414 () Bool)

(assert (=> b!6653676 m!7420414))

(declare-fun m!7420416 () Bool)

(assert (=> b!6653679 m!7420416))

(assert (=> b!6653682 m!7418432))

(declare-fun m!7420418 () Bool)

(assert (=> b!6653682 m!7420418))

(assert (=> b!6653682 m!7420418))

(declare-fun m!7420420 () Bool)

(assert (=> b!6653682 m!7420420))

(declare-fun m!7420422 () Bool)

(assert (=> b!6653680 m!7420422))

(assert (=> b!6652241 d!2085027))

(declare-fun bs!1713444 () Bool)

(declare-fun d!2085035 () Bool)

(assert (= bs!1713444 (and d!2085035 b!6652222)))

(declare-fun lambda!372891 () Int)

(assert (=> bs!1713444 (= lambda!372891 lambda!372754)))

(declare-fun bs!1713445 () Bool)

(assert (= bs!1713445 (and d!2085035 d!2084801)))

(assert (=> bs!1713445 (= lambda!372891 lambda!372824)))

(declare-fun bs!1713446 () Bool)

(assert (= bs!1713446 (and d!2085035 d!2084997)))

(assert (=> bs!1713446 (= lambda!372891 lambda!372873)))

(declare-fun bs!1713447 () Bool)

(assert (= bs!1713447 (and d!2085035 d!2084613)))

(assert (=> bs!1713447 (= lambda!372891 lambda!372780)))

(declare-fun bs!1713448 () Bool)

(assert (= bs!1713448 (and d!2085035 b!6652192)))

(assert (=> bs!1713448 (= lambda!372891 lambda!372752)))

(declare-fun bs!1713449 () Bool)

(assert (= bs!1713449 (and d!2085035 d!2085027)))

(assert (=> bs!1713449 (= lambda!372891 lambda!372887)))

(declare-fun bs!1713450 () Bool)

(assert (= bs!1713450 (and d!2085035 d!2084599)))

(assert (=> bs!1713450 (= lambda!372891 lambda!372768)))

(declare-fun bs!1713451 () Bool)

(assert (= bs!1713451 (and d!2085035 d!2084865)))

(assert (=> bs!1713451 (= lambda!372891 lambda!372850)))

(declare-fun bs!1713452 () Bool)

(assert (= bs!1713452 (and d!2085035 d!2084901)))

(assert (=> bs!1713452 (= lambda!372891 lambda!372867)))

(declare-fun lt!2426386 () List!65845)

(assert (=> d!2085035 (forall!15713 lt!2426386 lambda!372891)))

(declare-fun e!4023080 () List!65845)

(assert (=> d!2085035 (= lt!2426386 e!4023080)))

(declare-fun c!1228393 () Bool)

(assert (=> d!2085035 (= c!1228393 ((_ is Cons!65722) zl!343))))

(assert (=> d!2085035 (= (unfocusZipperList!1936 zl!343) lt!2426386)))

(declare-fun b!6653688 () Bool)

(assert (=> b!6653688 (= e!4023080 (Cons!65721 (generalisedConcat!2112 (exprs!6399 (h!72170 zl!343))) (unfocusZipperList!1936 (t!379515 zl!343))))))

(declare-fun b!6653689 () Bool)

(assert (=> b!6653689 (= e!4023080 Nil!65721)))

(assert (= (and d!2085035 c!1228393) b!6653688))

(assert (= (and d!2085035 (not c!1228393)) b!6653689))

(declare-fun m!7420424 () Bool)

(assert (=> d!2085035 m!7420424))

(assert (=> b!6653688 m!7418348))

(declare-fun m!7420426 () Bool)

(assert (=> b!6653688 m!7420426))

(assert (=> b!6652241 d!2085035))

(declare-fun d!2085037 () Bool)

(assert (=> d!2085037 (= (Exists!3585 (ite c!1227934 lambda!372744 (ite c!1227941 lambda!372750 (ite c!1227938 lambda!372758 lambda!372760)))) (choose!49772 (ite c!1227934 lambda!372744 (ite c!1227941 lambda!372750 (ite c!1227938 lambda!372758 lambda!372760)))))))

(declare-fun bs!1713453 () Bool)

(assert (= bs!1713453 d!2085037))

(declare-fun m!7420428 () Bool)

(assert (=> bs!1713453 m!7420428))

(assert (=> bm!589252 d!2085037))

(declare-fun d!2085039 () Bool)

(declare-fun c!1228394 () Bool)

(assert (=> d!2085039 (= c!1228394 (isEmpty!38032 (t!379513 s!2326)))))

(declare-fun e!4023081 () Bool)

(assert (=> d!2085039 (= (matchZipper!2527 lt!2425952 (t!379513 s!2326)) e!4023081)))

(declare-fun b!6653690 () Bool)

(assert (=> b!6653690 (= e!4023081 (nullableZipper!2255 lt!2425952))))

(declare-fun b!6653691 () Bool)

(assert (=> b!6653691 (= e!4023081 (matchZipper!2527 (derivationStepZipper!2481 lt!2425952 (head!13473 (t!379513 s!2326))) (tail!12558 (t!379513 s!2326))))))

(assert (= (and d!2085039 c!1228394) b!6653690))

(assert (= (and d!2085039 (not c!1228394)) b!6653691))

(assert (=> d!2085039 m!7419698))

(declare-fun m!7420430 () Bool)

(assert (=> b!6653690 m!7420430))

(assert (=> b!6653691 m!7419702))

(assert (=> b!6653691 m!7419702))

(declare-fun m!7420432 () Bool)

(assert (=> b!6653691 m!7420432))

(assert (=> b!6653691 m!7419706))

(assert (=> b!6653691 m!7420432))

(assert (=> b!6653691 m!7419706))

(declare-fun m!7420434 () Bool)

(assert (=> b!6653691 m!7420434))

(assert (=> b!6652207 d!2085039))

(declare-fun bs!1713482 () Bool)

(declare-fun d!2085041 () Bool)

(assert (= bs!1713482 (and d!2085041 d!2084621)))

(declare-fun lambda!372895 () Int)

(assert (=> bs!1713482 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326)) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)))) (= (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074)) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292))))))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))))) (= lambda!372895 lambda!372789))))

(declare-fun bs!1713483 () Bool)

(assert (= bs!1713483 (and d!2085041 b!6652222)))

(assert (=> bs!1713483 (not (= lambda!372895 lambda!372758))))

(declare-fun bs!1713484 () Bool)

(assert (= bs!1713484 (and d!2085041 b!6652208)))

(assert (=> bs!1713484 (not (= lambda!372895 lambda!372761))))

(declare-fun bs!1713485 () Bool)

(assert (= bs!1713485 (and d!2085041 b!6653537)))

(assert (=> bs!1713485 (not (= lambda!372895 lambda!372870))))

(declare-fun bs!1713486 () Bool)

(assert (= bs!1713486 (and d!2085041 b!6652251)))

(assert (=> bs!1713486 (not (= lambda!372895 lambda!372746))))

(declare-fun bs!1713487 () Bool)

(assert (= bs!1713487 (and d!2085041 b!6652829)))

(assert (=> bs!1713487 (not (= lambda!372895 lambda!372803))))

(assert (=> bs!1713486 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326)) s!2326) (= (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074)) (regTwo!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))) lt!2425898)) (= lambda!372895 lambda!372745))))

(declare-fun bs!1713490 () Bool)

(assert (= bs!1713490 (and d!2085041 b!6653538)))

(assert (=> bs!1713490 (not (= lambda!372895 lambda!372871))))

(declare-fun bs!1713493 () Bool)

(assert (= bs!1713493 (and d!2085041 d!2084839)))

(assert (=> bs!1713493 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326)) (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939))) (= (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074)) (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))))) (= lambda!372895 lambda!372826))))

(declare-fun bs!1713496 () Bool)

(assert (= bs!1713496 (and d!2085041 b!6653339)))

(assert (=> bs!1713496 (not (= lambda!372895 lambda!372866))))

(declare-fun bs!1713499 () Bool)

(assert (= bs!1713499 (and d!2085041 d!2085005)))

(assert (=> bs!1713499 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326)) (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720))) (= (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074)) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))) (Star!16515 (reg!16844 (regOne!33542 r!7292))))) (= lambda!372895 lambda!372880))))

(declare-fun bs!1713502 () Bool)

(assert (= bs!1713502 (and d!2085041 b!6652830)))

(assert (=> bs!1713502 (not (= lambda!372895 lambda!372805))))

(assert (=> bs!1713486 (not (= lambda!372895 lambda!372744))))

(assert (=> bs!1713483 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326)) (_1!36797 lt!2425939)) (= (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074)) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))) lt!2425900)) (= lambda!372895 lambda!372757))))

(declare-fun bs!1713505 () Bool)

(assert (= bs!1713505 (and d!2085041 b!6652192)))

(assert (=> bs!1713505 (not (= lambda!372895 lambda!372750))))

(declare-fun bs!1713506 () Bool)

(assert (= bs!1713506 (and d!2085041 b!6652250)))

(assert (=> bs!1713506 (not (= lambda!372895 lambda!372742))))

(assert (=> bs!1713486 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326)) s!2326) (= (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074)) (regOne!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))) lt!2425950)) (= lambda!372895 lambda!372743))))

(assert (=> bs!1713484 (not (= lambda!372895 lambda!372762))))

(assert (=> bs!1713484 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326)) Nil!65720) (= (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074)) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))) lt!2425900)) (= lambda!372895 lambda!372760))))

(assert (=> bs!1713482 (not (= lambda!372895 lambda!372791))))

(declare-fun bs!1713507 () Bool)

(assert (= bs!1713507 (and d!2085041 b!6653051)))

(assert (=> bs!1713507 (not (= lambda!372895 lambda!372822))))

(assert (=> bs!1713483 (not (= lambda!372895 lambda!372756))))

(assert (=> bs!1713505 (not (= lambda!372895 lambda!372751))))

(declare-fun bs!1713508 () Bool)

(assert (= bs!1713508 (and d!2085041 b!6653338)))

(assert (=> bs!1713508 (not (= lambda!372895 lambda!372865))))

(declare-fun bs!1713509 () Bool)

(assert (= bs!1713509 (and d!2085041 b!6653208)))

(assert (=> bs!1713509 (not (= lambda!372895 lambda!372835))))

(declare-fun bs!1713510 () Bool)

(assert (= bs!1713510 (and d!2085041 b!6652194)))

(assert (=> bs!1713510 (not (= lambda!372895 lambda!372737))))

(declare-fun bs!1713511 () Bool)

(assert (= bs!1713511 (and d!2085041 b!6652196)))

(assert (=> bs!1713511 (not (= lambda!372895 lambda!372748))))

(assert (=> bs!1713483 (not (= lambda!372895 lambda!372759))))

(assert (=> bs!1713511 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326)) s!2326) (= (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074)) lt!2425900) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))) (regTwo!33542 r!7292))) (= lambda!372895 lambda!372747))))

(declare-fun bs!1713512 () Bool)

(assert (= bs!1713512 (and d!2085041 b!6653207)))

(assert (=> bs!1713512 (not (= lambda!372895 lambda!372834))))

(assert (=> bs!1713506 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326)) s!2326) (= (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074)) (regOne!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))) lt!2425943)) (= lambda!372895 lambda!372739))))

(assert (=> bs!1713499 (not (= lambda!372895 lambda!372881))))

(assert (=> bs!1713493 (not (= lambda!372895 lambda!372831))))

(assert (=> bs!1713506 (not (= lambda!372895 lambda!372740))))

(assert (=> bs!1713505 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326)) (_1!36797 lt!2425896)) (= (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074)) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))) lt!2425900)) (= lambda!372895 lambda!372749))))

(assert (=> bs!1713506 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326)) s!2326) (= (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074)) (regTwo!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))) lt!2426072)) (= lambda!372895 lambda!372741))))

(declare-fun bs!1713513 () Bool)

(assert (= bs!1713513 (and d!2085041 b!6653052)))

(assert (=> bs!1713513 (not (= lambda!372895 lambda!372823))))

(assert (=> bs!1713483 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326)) s!2326) (= (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074)) lt!2426074) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))) (regTwo!33542 r!7292))) (= lambda!372895 lambda!372755))))

(assert (=> bs!1713510 (= (and (= (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326)) s!2326) (= (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074)) (regOne!33542 r!7292)) (= (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))) (regTwo!33542 r!7292))) (= lambda!372895 lambda!372736))))

(assert (=> d!2085041 true))

(assert (=> d!2085041 true))

(assert (=> d!2085041 true))

(assert (=> d!2085041 (= (isDefined!13109 (findConcatSeparation!2820 (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074)) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))) Nil!65720 (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326)) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326)))) (Exists!3585 lambda!372895))))

(declare-fun lt!2426390 () Unit!159541)

(declare-fun choose!49797 (Regex!16515 Regex!16515 List!65844) Unit!159541)

(assert (=> d!2085041 (= lt!2426390 (choose!49797 (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074)) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326))))))

(assert (=> d!2085041 (validRegex!8251 (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074)))))

(assert (=> d!2085041 (= (lemmaFindConcatSeparationEquivalentToExists!2584 (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074)) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326))) lt!2426390)))

(declare-fun bs!1713514 () Bool)

(assert (= bs!1713514 d!2085041))

(declare-fun m!7420466 () Bool)

(assert (=> bs!1713514 m!7420466))

(declare-fun m!7420468 () Bool)

(assert (=> bs!1713514 m!7420468))

(declare-fun m!7420470 () Bool)

(assert (=> bs!1713514 m!7420470))

(declare-fun m!7420472 () Bool)

(assert (=> bs!1713514 m!7420472))

(declare-fun m!7420474 () Bool)

(assert (=> bs!1713514 m!7420474))

(assert (=> bs!1713514 m!7420468))

(assert (=> bm!589208 d!2085041))

(declare-fun bs!1713515 () Bool)

(declare-fun d!2085057 () Bool)

(assert (= bs!1713515 (and d!2085057 b!6652222)))

(declare-fun lambda!372897 () Int)

(assert (=> bs!1713515 (= lambda!372897 lambda!372754)))

(declare-fun bs!1713516 () Bool)

(assert (= bs!1713516 (and d!2085057 d!2084801)))

(assert (=> bs!1713516 (= lambda!372897 lambda!372824)))

(declare-fun bs!1713517 () Bool)

(assert (= bs!1713517 (and d!2085057 d!2084997)))

(assert (=> bs!1713517 (= lambda!372897 lambda!372873)))

(declare-fun bs!1713518 () Bool)

(assert (= bs!1713518 (and d!2085057 d!2084613)))

(assert (=> bs!1713518 (= lambda!372897 lambda!372780)))

(declare-fun bs!1713519 () Bool)

(assert (= bs!1713519 (and d!2085057 b!6652192)))

(assert (=> bs!1713519 (= lambda!372897 lambda!372752)))

(declare-fun bs!1713520 () Bool)

(assert (= bs!1713520 (and d!2085057 d!2085035)))

(assert (=> bs!1713520 (= lambda!372897 lambda!372891)))

(declare-fun bs!1713521 () Bool)

(assert (= bs!1713521 (and d!2085057 d!2085027)))

(assert (=> bs!1713521 (= lambda!372897 lambda!372887)))

(declare-fun bs!1713522 () Bool)

(assert (= bs!1713522 (and d!2085057 d!2084599)))

(assert (=> bs!1713522 (= lambda!372897 lambda!372768)))

(declare-fun bs!1713523 () Bool)

(assert (= bs!1713523 (and d!2085057 d!2084865)))

(assert (=> bs!1713523 (= lambda!372897 lambda!372850)))

(declare-fun bs!1713524 () Bool)

(assert (= bs!1713524 (and d!2085057 d!2084901)))

(assert (=> bs!1713524 (= lambda!372897 lambda!372867)))

(declare-fun b!6653738 () Bool)

(declare-fun e!4023104 () Regex!16515)

(assert (=> b!6653738 (= e!4023104 EmptyExpr!16515)))

(declare-fun b!6653739 () Bool)

(declare-fun e!4023108 () Bool)

(assert (=> b!6653739 (= e!4023108 (isEmpty!38034 (t!379514 (ite c!1227937 lt!2425951 (ite c!1227939 lt!2426008 lt!2426004)))))))

(declare-fun b!6653740 () Bool)

(declare-fun e!4023109 () Bool)

(declare-fun e!4023106 () Bool)

(assert (=> b!6653740 (= e!4023109 e!4023106)))

(declare-fun c!1228400 () Bool)

(assert (=> b!6653740 (= c!1228400 (isEmpty!38034 (tail!12559 (ite c!1227937 lt!2425951 (ite c!1227939 lt!2426008 lt!2426004)))))))

(declare-fun b!6653741 () Bool)

(declare-fun lt!2426392 () Regex!16515)

(assert (=> b!6653741 (= e!4023106 (= lt!2426392 (head!13474 (ite c!1227937 lt!2425951 (ite c!1227939 lt!2426008 lt!2426004)))))))

(declare-fun e!4023105 () Regex!16515)

(declare-fun b!6653742 () Bool)

(assert (=> b!6653742 (= e!4023105 (h!72169 (ite c!1227937 lt!2425951 (ite c!1227939 lt!2426008 lt!2426004))))))

(declare-fun b!6653743 () Bool)

(assert (=> b!6653743 (= e!4023105 e!4023104)))

(declare-fun c!1228397 () Bool)

(assert (=> b!6653743 (= c!1228397 ((_ is Cons!65721) (ite c!1227937 lt!2425951 (ite c!1227939 lt!2426008 lt!2426004))))))

(declare-fun b!6653744 () Bool)

(assert (=> b!6653744 (= e!4023104 (Concat!25360 (h!72169 (ite c!1227937 lt!2425951 (ite c!1227939 lt!2426008 lt!2426004))) (generalisedConcat!2112 (t!379514 (ite c!1227937 lt!2425951 (ite c!1227939 lt!2426008 lt!2426004))))))))

(declare-fun b!6653745 () Bool)

(declare-fun e!4023107 () Bool)

(assert (=> b!6653745 (= e!4023107 e!4023109)))

(declare-fun c!1228398 () Bool)

(assert (=> b!6653745 (= c!1228398 (isEmpty!38034 (ite c!1227937 lt!2425951 (ite c!1227939 lt!2426008 lt!2426004))))))

(declare-fun b!6653746 () Bool)

(assert (=> b!6653746 (= e!4023106 (isConcat!1412 lt!2426392))))

(assert (=> d!2085057 e!4023107))

(declare-fun res!2726602 () Bool)

(assert (=> d!2085057 (=> (not res!2726602) (not e!4023107))))

(assert (=> d!2085057 (= res!2726602 (validRegex!8251 lt!2426392))))

(assert (=> d!2085057 (= lt!2426392 e!4023105)))

(declare-fun c!1228399 () Bool)

(assert (=> d!2085057 (= c!1228399 e!4023108)))

(declare-fun res!2726603 () Bool)

(assert (=> d!2085057 (=> (not res!2726603) (not e!4023108))))

(assert (=> d!2085057 (= res!2726603 ((_ is Cons!65721) (ite c!1227937 lt!2425951 (ite c!1227939 lt!2426008 lt!2426004))))))

(assert (=> d!2085057 (forall!15713 (ite c!1227937 lt!2425951 (ite c!1227939 lt!2426008 lt!2426004)) lambda!372897)))

(assert (=> d!2085057 (= (generalisedConcat!2112 (ite c!1227937 lt!2425951 (ite c!1227939 lt!2426008 lt!2426004))) lt!2426392)))

(declare-fun b!6653747 () Bool)

(assert (=> b!6653747 (= e!4023109 (isEmptyExpr!1889 lt!2426392))))

(assert (= (and d!2085057 res!2726603) b!6653739))

(assert (= (and d!2085057 c!1228399) b!6653742))

(assert (= (and d!2085057 (not c!1228399)) b!6653743))

(assert (= (and b!6653743 c!1228397) b!6653744))

(assert (= (and b!6653743 (not c!1228397)) b!6653738))

(assert (= (and d!2085057 res!2726602) b!6653745))

(assert (= (and b!6653745 c!1228398) b!6653747))

(assert (= (and b!6653745 (not c!1228398)) b!6653740))

(assert (= (and b!6653740 c!1228400) b!6653741))

(assert (= (and b!6653740 (not c!1228400)) b!6653746))

(declare-fun m!7420476 () Bool)

(assert (=> d!2085057 m!7420476))

(declare-fun m!7420478 () Bool)

(assert (=> d!2085057 m!7420478))

(declare-fun m!7420480 () Bool)

(assert (=> b!6653747 m!7420480))

(declare-fun m!7420484 () Bool)

(assert (=> b!6653741 m!7420484))

(declare-fun m!7420486 () Bool)

(assert (=> b!6653744 m!7420486))

(declare-fun m!7420488 () Bool)

(assert (=> b!6653745 m!7420488))

(declare-fun m!7420490 () Bool)

(assert (=> b!6653739 m!7420490))

(declare-fun m!7420492 () Bool)

(assert (=> b!6653746 m!7420492))

(declare-fun m!7420494 () Bool)

(assert (=> b!6653740 m!7420494))

(assert (=> b!6653740 m!7420494))

(declare-fun m!7420496 () Bool)

(assert (=> b!6653740 m!7420496))

(assert (=> bm!589192 d!2085057))

(declare-fun d!2085059 () Bool)

(assert (=> d!2085059 (= (Exists!3585 lambda!372736) (choose!49772 lambda!372736))))

(declare-fun bs!1713525 () Bool)

(assert (= bs!1713525 d!2085059))

(declare-fun m!7420498 () Bool)

(assert (=> bs!1713525 m!7420498))

(assert (=> b!6652194 d!2085059))

(declare-fun b!6653765 () Bool)

(declare-fun e!4023120 () Option!16406)

(declare-fun e!4023117 () Option!16406)

(assert (=> b!6653765 (= e!4023120 e!4023117)))

(declare-fun c!1228402 () Bool)

(assert (=> b!6653765 (= c!1228402 ((_ is Nil!65720) s!2326))))

(declare-fun b!6653766 () Bool)

(declare-fun lt!2426393 () Unit!159541)

(declare-fun lt!2426395 () Unit!159541)

(assert (=> b!6653766 (= lt!2426393 lt!2426395)))

(assert (=> b!6653766 (= (++!14672 (++!14672 Nil!65720 (Cons!65720 (h!72168 s!2326) Nil!65720)) (t!379513 s!2326)) s!2326)))

(assert (=> b!6653766 (= lt!2426395 (lemmaMoveElementToOtherListKeepsConcatEq!2653 Nil!65720 (h!72168 s!2326) (t!379513 s!2326) s!2326))))

(assert (=> b!6653766 (= e!4023117 (findConcatSeparation!2820 (regOne!33542 r!7292) (regTwo!33542 r!7292) (++!14672 Nil!65720 (Cons!65720 (h!72168 s!2326) Nil!65720)) (t!379513 s!2326) s!2326))))

(declare-fun b!6653767 () Bool)

(declare-fun res!2726606 () Bool)

(declare-fun e!4023116 () Bool)

(assert (=> b!6653767 (=> (not res!2726606) (not e!4023116))))

(declare-fun lt!2426394 () Option!16406)

(assert (=> b!6653767 (= res!2726606 (matchR!8698 (regTwo!33542 r!7292) (_2!36797 (get!22854 lt!2426394))))))

(declare-fun b!6653768 () Bool)

(assert (=> b!6653768 (= e!4023120 (Some!16405 (tuple2!66989 Nil!65720 s!2326)))))

(declare-fun b!6653770 () Bool)

(assert (=> b!6653770 (= e!4023116 (= (++!14672 (_1!36797 (get!22854 lt!2426394)) (_2!36797 (get!22854 lt!2426394))) s!2326))))

(declare-fun b!6653771 () Bool)

(declare-fun e!4023118 () Bool)

(assert (=> b!6653771 (= e!4023118 (matchR!8698 (regTwo!33542 r!7292) s!2326))))

(declare-fun b!6653772 () Bool)

(declare-fun res!2726608 () Bool)

(assert (=> b!6653772 (=> (not res!2726608) (not e!4023116))))

(assert (=> b!6653772 (= res!2726608 (matchR!8698 (regOne!33542 r!7292) (_1!36797 (get!22854 lt!2426394))))))

(declare-fun b!6653773 () Bool)

(declare-fun e!4023119 () Bool)

(assert (=> b!6653773 (= e!4023119 (not (isDefined!13109 lt!2426394)))))

(declare-fun d!2085061 () Bool)

(assert (=> d!2085061 e!4023119))

(declare-fun res!2726604 () Bool)

(assert (=> d!2085061 (=> res!2726604 e!4023119)))

(assert (=> d!2085061 (= res!2726604 e!4023116)))

(declare-fun res!2726607 () Bool)

(assert (=> d!2085061 (=> (not res!2726607) (not e!4023116))))

(assert (=> d!2085061 (= res!2726607 (isDefined!13109 lt!2426394))))

(assert (=> d!2085061 (= lt!2426394 e!4023120)))

(declare-fun c!1228401 () Bool)

(assert (=> d!2085061 (= c!1228401 e!4023118)))

(declare-fun res!2726605 () Bool)

(assert (=> d!2085061 (=> (not res!2726605) (not e!4023118))))

(assert (=> d!2085061 (= res!2726605 (matchR!8698 (regOne!33542 r!7292) Nil!65720))))

(assert (=> d!2085061 (validRegex!8251 (regOne!33542 r!7292))))

(assert (=> d!2085061 (= (findConcatSeparation!2820 (regOne!33542 r!7292) (regTwo!33542 r!7292) Nil!65720 s!2326 s!2326) lt!2426394)))

(declare-fun b!6653769 () Bool)

(assert (=> b!6653769 (= e!4023117 None!16405)))

(assert (= (and d!2085061 res!2726605) b!6653771))

(assert (= (and d!2085061 c!1228401) b!6653768))

(assert (= (and d!2085061 (not c!1228401)) b!6653765))

(assert (= (and b!6653765 c!1228402) b!6653769))

(assert (= (and b!6653765 (not c!1228402)) b!6653766))

(assert (= (and d!2085061 res!2726607) b!6653772))

(assert (= (and b!6653772 res!2726608) b!6653767))

(assert (= (and b!6653767 res!2726606) b!6653770))

(assert (= (and d!2085061 (not res!2726604)) b!6653773))

(declare-fun m!7420506 () Bool)

(assert (=> b!6653771 m!7420506))

(declare-fun m!7420508 () Bool)

(assert (=> d!2085061 m!7420508))

(declare-fun m!7420510 () Bool)

(assert (=> d!2085061 m!7420510))

(declare-fun m!7420512 () Bool)

(assert (=> d!2085061 m!7420512))

(declare-fun m!7420514 () Bool)

(assert (=> b!6653770 m!7420514))

(declare-fun m!7420516 () Bool)

(assert (=> b!6653770 m!7420516))

(assert (=> b!6653767 m!7420514))

(declare-fun m!7420518 () Bool)

(assert (=> b!6653767 m!7420518))

(assert (=> b!6653773 m!7420508))

(assert (=> b!6653766 m!7420072))

(assert (=> b!6653766 m!7420072))

(assert (=> b!6653766 m!7420074))

(assert (=> b!6653766 m!7420076))

(assert (=> b!6653766 m!7420072))

(declare-fun m!7420520 () Bool)

(assert (=> b!6653766 m!7420520))

(assert (=> b!6653772 m!7420514))

(declare-fun m!7420522 () Bool)

(assert (=> b!6653772 m!7420522))

(assert (=> b!6652194 d!2085061))

(declare-fun d!2085071 () Bool)

(assert (=> d!2085071 (= (Exists!3585 lambda!372737) (choose!49772 lambda!372737))))

(declare-fun bs!1713530 () Bool)

(assert (= bs!1713530 d!2085071))

(declare-fun m!7420524 () Bool)

(assert (=> bs!1713530 m!7420524))

(assert (=> b!6652194 d!2085071))

(declare-fun bs!1713531 () Bool)

(declare-fun d!2085073 () Bool)

(assert (= bs!1713531 (and d!2085073 d!2084621)))

(declare-fun lambda!372898 () Int)

(assert (=> bs!1713531 (= (and (= s!2326 (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)))) (= (regOne!33542 r!7292) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292))))))) (= (regTwo!33542 r!7292) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))))) (= lambda!372898 lambda!372789))))

(declare-fun bs!1713532 () Bool)

(assert (= bs!1713532 (and d!2085073 b!6652222)))

(assert (=> bs!1713532 (not (= lambda!372898 lambda!372758))))

(declare-fun bs!1713533 () Bool)

(assert (= bs!1713533 (and d!2085073 b!6652208)))

(assert (=> bs!1713533 (not (= lambda!372898 lambda!372761))))

(declare-fun bs!1713534 () Bool)

(assert (= bs!1713534 (and d!2085073 b!6653537)))

(assert (=> bs!1713534 (not (= lambda!372898 lambda!372870))))

(declare-fun bs!1713535 () Bool)

(assert (= bs!1713535 (and d!2085073 b!6652251)))

(assert (=> bs!1713535 (not (= lambda!372898 lambda!372746))))

(declare-fun bs!1713536 () Bool)

(assert (= bs!1713536 (and d!2085073 b!6652829)))

(assert (=> bs!1713536 (not (= lambda!372898 lambda!372803))))

(assert (=> bs!1713535 (= (and (= (regOne!33542 r!7292) (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425898)) (= lambda!372898 lambda!372745))))

(declare-fun bs!1713537 () Bool)

(assert (= bs!1713537 (and d!2085073 b!6653538)))

(assert (=> bs!1713537 (not (= lambda!372898 lambda!372871))))

(declare-fun bs!1713538 () Bool)

(assert (= bs!1713538 (and d!2085073 d!2084839)))

(assert (=> bs!1713538 (= (and (= s!2326 (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939))) (= (regOne!33542 r!7292) (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))))) (= (regTwo!33542 r!7292) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))))) (= lambda!372898 lambda!372826))))

(declare-fun bs!1713539 () Bool)

(assert (= bs!1713539 (and d!2085073 b!6653339)))

(assert (=> bs!1713539 (not (= lambda!372898 lambda!372866))))

(declare-fun bs!1713540 () Bool)

(assert (= bs!1713540 (and d!2085073 d!2085041)))

(assert (=> bs!1713540 (= (and (= s!2326 (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326))) (= (regOne!33542 r!7292) (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074))) (= (regTwo!33542 r!7292) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))))) (= lambda!372898 lambda!372895))))

(declare-fun bs!1713541 () Bool)

(assert (= bs!1713541 (and d!2085073 d!2085005)))

(assert (=> bs!1713541 (= (and (= s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720))) (= (regOne!33542 r!7292) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) (Star!16515 (reg!16844 (regOne!33542 r!7292))))) (= lambda!372898 lambda!372880))))

(declare-fun bs!1713542 () Bool)

(assert (= bs!1713542 (and d!2085073 b!6652830)))

(assert (=> bs!1713542 (not (= lambda!372898 lambda!372805))))

(assert (=> bs!1713535 (not (= lambda!372898 lambda!372744))))

(assert (=> bs!1713532 (= (and (= s!2326 (_1!36797 lt!2425939)) (= (regOne!33542 r!7292) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425900)) (= lambda!372898 lambda!372757))))

(declare-fun bs!1713543 () Bool)

(assert (= bs!1713543 (and d!2085073 b!6652192)))

(assert (=> bs!1713543 (not (= lambda!372898 lambda!372750))))

(declare-fun bs!1713544 () Bool)

(assert (= bs!1713544 (and d!2085073 b!6652250)))

(assert (=> bs!1713544 (not (= lambda!372898 lambda!372742))))

(assert (=> bs!1713535 (= (and (= (regOne!33542 r!7292) (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425950)) (= lambda!372898 lambda!372743))))

(assert (=> bs!1713533 (not (= lambda!372898 lambda!372762))))

(assert (=> bs!1713533 (= (and (= s!2326 Nil!65720) (= (regOne!33542 r!7292) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425900)) (= lambda!372898 lambda!372760))))

(assert (=> bs!1713531 (not (= lambda!372898 lambda!372791))))

(declare-fun bs!1713545 () Bool)

(assert (= bs!1713545 (and d!2085073 b!6653051)))

(assert (=> bs!1713545 (not (= lambda!372898 lambda!372822))))

(assert (=> bs!1713532 (not (= lambda!372898 lambda!372756))))

(assert (=> bs!1713543 (not (= lambda!372898 lambda!372751))))

(declare-fun bs!1713546 () Bool)

(assert (= bs!1713546 (and d!2085073 b!6653338)))

(assert (=> bs!1713546 (not (= lambda!372898 lambda!372865))))

(declare-fun bs!1713547 () Bool)

(assert (= bs!1713547 (and d!2085073 b!6653208)))

(assert (=> bs!1713547 (not (= lambda!372898 lambda!372835))))

(declare-fun bs!1713548 () Bool)

(assert (= bs!1713548 (and d!2085073 b!6652194)))

(assert (=> bs!1713548 (not (= lambda!372898 lambda!372737))))

(declare-fun bs!1713549 () Bool)

(assert (= bs!1713549 (and d!2085073 b!6652196)))

(assert (=> bs!1713549 (not (= lambda!372898 lambda!372748))))

(assert (=> bs!1713532 (not (= lambda!372898 lambda!372759))))

(assert (=> bs!1713549 (= (= (regOne!33542 r!7292) lt!2425900) (= lambda!372898 lambda!372747))))

(declare-fun bs!1713550 () Bool)

(assert (= bs!1713550 (and d!2085073 b!6653207)))

(assert (=> bs!1713550 (not (= lambda!372898 lambda!372834))))

(assert (=> bs!1713544 (= (and (= (regOne!33542 r!7292) (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425943)) (= lambda!372898 lambda!372739))))

(assert (=> bs!1713541 (not (= lambda!372898 lambda!372881))))

(assert (=> bs!1713538 (not (= lambda!372898 lambda!372831))))

(assert (=> bs!1713544 (not (= lambda!372898 lambda!372740))))

(assert (=> bs!1713543 (= (and (= s!2326 (_1!36797 lt!2425896)) (= (regOne!33542 r!7292) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425900)) (= lambda!372898 lambda!372749))))

(assert (=> bs!1713544 (= (and (= (regOne!33542 r!7292) (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2426072)) (= lambda!372898 lambda!372741))))

(declare-fun bs!1713551 () Bool)

(assert (= bs!1713551 (and d!2085073 b!6653052)))

(assert (=> bs!1713551 (not (= lambda!372898 lambda!372823))))

(assert (=> bs!1713532 (= (= (regOne!33542 r!7292) lt!2426074) (= lambda!372898 lambda!372755))))

(assert (=> bs!1713548 (= lambda!372898 lambda!372736)))

(assert (=> d!2085073 true))

(assert (=> d!2085073 true))

(assert (=> d!2085073 true))

(assert (=> d!2085073 (= (isDefined!13109 (findConcatSeparation!2820 (regOne!33542 r!7292) (regTwo!33542 r!7292) Nil!65720 s!2326 s!2326)) (Exists!3585 lambda!372898))))

(declare-fun lt!2426397 () Unit!159541)

(assert (=> d!2085073 (= lt!2426397 (choose!49797 (regOne!33542 r!7292) (regTwo!33542 r!7292) s!2326))))

(assert (=> d!2085073 (validRegex!8251 (regOne!33542 r!7292))))

(assert (=> d!2085073 (= (lemmaFindConcatSeparationEquivalentToExists!2584 (regOne!33542 r!7292) (regTwo!33542 r!7292) s!2326) lt!2426397)))

(declare-fun bs!1713552 () Bool)

(assert (= bs!1713552 d!2085073))

(declare-fun m!7420526 () Bool)

(assert (=> bs!1713552 m!7420526))

(assert (=> bs!1713552 m!7418364))

(assert (=> bs!1713552 m!7418366))

(assert (=> bs!1713552 m!7420512))

(declare-fun m!7420528 () Bool)

(assert (=> bs!1713552 m!7420528))

(assert (=> bs!1713552 m!7418364))

(assert (=> b!6652194 d!2085073))

(declare-fun bs!1713553 () Bool)

(declare-fun d!2085075 () Bool)

(assert (= bs!1713553 (and d!2085075 d!2084621)))

(declare-fun lambda!372899 () Int)

(assert (=> bs!1713553 (= (and (= s!2326 (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)))) (= (regOne!33542 r!7292) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292))))))) (= (regTwo!33542 r!7292) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))))) (= lambda!372899 lambda!372789))))

(declare-fun bs!1713554 () Bool)

(assert (= bs!1713554 (and d!2085075 b!6652222)))

(assert (=> bs!1713554 (not (= lambda!372899 lambda!372758))))

(declare-fun bs!1713555 () Bool)

(assert (= bs!1713555 (and d!2085075 b!6652208)))

(assert (=> bs!1713555 (not (= lambda!372899 lambda!372761))))

(declare-fun bs!1713556 () Bool)

(assert (= bs!1713556 (and d!2085075 b!6653537)))

(assert (=> bs!1713556 (not (= lambda!372899 lambda!372870))))

(declare-fun bs!1713557 () Bool)

(assert (= bs!1713557 (and d!2085075 b!6652251)))

(assert (=> bs!1713557 (not (= lambda!372899 lambda!372746))))

(declare-fun bs!1713558 () Bool)

(assert (= bs!1713558 (and d!2085075 b!6652829)))

(assert (=> bs!1713558 (not (= lambda!372899 lambda!372803))))

(assert (=> bs!1713557 (= (and (= (regOne!33542 r!7292) (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425898)) (= lambda!372899 lambda!372745))))

(declare-fun bs!1713559 () Bool)

(assert (= bs!1713559 (and d!2085075 b!6653538)))

(assert (=> bs!1713559 (not (= lambda!372899 lambda!372871))))

(declare-fun bs!1713560 () Bool)

(assert (= bs!1713560 (and d!2085075 d!2084839)))

(assert (=> bs!1713560 (= (and (= s!2326 (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939))) (= (regOne!33542 r!7292) (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))))) (= (regTwo!33542 r!7292) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))))) (= lambda!372899 lambda!372826))))

(declare-fun bs!1713561 () Bool)

(assert (= bs!1713561 (and d!2085075 b!6653339)))

(assert (=> bs!1713561 (not (= lambda!372899 lambda!372866))))

(declare-fun bs!1713562 () Bool)

(assert (= bs!1713562 (and d!2085075 d!2085041)))

(assert (=> bs!1713562 (= (and (= s!2326 (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326))) (= (regOne!33542 r!7292) (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074))) (= (regTwo!33542 r!7292) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))))) (= lambda!372899 lambda!372895))))

(declare-fun bs!1713563 () Bool)

(assert (= bs!1713563 (and d!2085075 d!2085005)))

(assert (=> bs!1713563 (= (and (= s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720))) (= (regOne!33542 r!7292) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) (Star!16515 (reg!16844 (regOne!33542 r!7292))))) (= lambda!372899 lambda!372880))))

(declare-fun bs!1713564 () Bool)

(assert (= bs!1713564 (and d!2085075 b!6652830)))

(assert (=> bs!1713564 (not (= lambda!372899 lambda!372805))))

(assert (=> bs!1713557 (not (= lambda!372899 lambda!372744))))

(assert (=> bs!1713554 (= (and (= s!2326 (_1!36797 lt!2425939)) (= (regOne!33542 r!7292) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425900)) (= lambda!372899 lambda!372757))))

(declare-fun bs!1713565 () Bool)

(assert (= bs!1713565 (and d!2085075 b!6652192)))

(assert (=> bs!1713565 (not (= lambda!372899 lambda!372750))))

(declare-fun bs!1713566 () Bool)

(assert (= bs!1713566 (and d!2085075 b!6652250)))

(assert (=> bs!1713566 (not (= lambda!372899 lambda!372742))))

(assert (=> bs!1713557 (= (and (= (regOne!33542 r!7292) (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425950)) (= lambda!372899 lambda!372743))))

(assert (=> bs!1713555 (not (= lambda!372899 lambda!372762))))

(assert (=> bs!1713555 (= (and (= s!2326 Nil!65720) (= (regOne!33542 r!7292) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425900)) (= lambda!372899 lambda!372760))))

(assert (=> bs!1713553 (not (= lambda!372899 lambda!372791))))

(declare-fun bs!1713567 () Bool)

(assert (= bs!1713567 (and d!2085075 b!6653051)))

(assert (=> bs!1713567 (not (= lambda!372899 lambda!372822))))

(assert (=> bs!1713554 (not (= lambda!372899 lambda!372756))))

(assert (=> bs!1713565 (not (= lambda!372899 lambda!372751))))

(declare-fun bs!1713568 () Bool)

(assert (= bs!1713568 (and d!2085075 b!6653338)))

(assert (=> bs!1713568 (not (= lambda!372899 lambda!372865))))

(declare-fun bs!1713569 () Bool)

(assert (= bs!1713569 (and d!2085075 b!6653208)))

(assert (=> bs!1713569 (not (= lambda!372899 lambda!372835))))

(declare-fun bs!1713570 () Bool)

(assert (= bs!1713570 (and d!2085075 b!6652194)))

(assert (=> bs!1713570 (not (= lambda!372899 lambda!372737))))

(declare-fun bs!1713571 () Bool)

(assert (= bs!1713571 (and d!2085075 b!6652196)))

(assert (=> bs!1713571 (not (= lambda!372899 lambda!372748))))

(assert (=> bs!1713554 (not (= lambda!372899 lambda!372759))))

(assert (=> bs!1713571 (= (= (regOne!33542 r!7292) lt!2425900) (= lambda!372899 lambda!372747))))

(declare-fun bs!1713572 () Bool)

(assert (= bs!1713572 (and d!2085075 b!6653207)))

(assert (=> bs!1713572 (not (= lambda!372899 lambda!372834))))

(assert (=> bs!1713566 (= (and (= (regOne!33542 r!7292) (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425943)) (= lambda!372899 lambda!372739))))

(assert (=> bs!1713563 (not (= lambda!372899 lambda!372881))))

(assert (=> bs!1713560 (not (= lambda!372899 lambda!372831))))

(assert (=> bs!1713566 (not (= lambda!372899 lambda!372740))))

(assert (=> bs!1713565 (= (and (= s!2326 (_1!36797 lt!2425896)) (= (regOne!33542 r!7292) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425900)) (= lambda!372899 lambda!372749))))

(declare-fun bs!1713573 () Bool)

(assert (= bs!1713573 (and d!2085075 d!2085073)))

(assert (=> bs!1713573 (= lambda!372899 lambda!372898)))

(assert (=> bs!1713566 (= (and (= (regOne!33542 r!7292) (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2426072)) (= lambda!372899 lambda!372741))))

(declare-fun bs!1713574 () Bool)

(assert (= bs!1713574 (and d!2085075 b!6653052)))

(assert (=> bs!1713574 (not (= lambda!372899 lambda!372823))))

(assert (=> bs!1713554 (= (= (regOne!33542 r!7292) lt!2426074) (= lambda!372899 lambda!372755))))

(assert (=> bs!1713570 (= lambda!372899 lambda!372736)))

(assert (=> d!2085075 true))

(assert (=> d!2085075 true))

(assert (=> d!2085075 true))

(declare-fun lambda!372900 () Int)

(assert (=> bs!1713553 (not (= lambda!372900 lambda!372789))))

(assert (=> bs!1713554 (= (and (= s!2326 (_1!36797 lt!2425939)) (= (regOne!33542 r!7292) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425900)) (= lambda!372900 lambda!372758))))

(assert (=> bs!1713555 (= (and (= s!2326 Nil!65720) (= (regOne!33542 r!7292) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425900)) (= lambda!372900 lambda!372761))))

(assert (=> bs!1713556 (not (= lambda!372900 lambda!372870))))

(assert (=> bs!1713557 (= (and (= (regOne!33542 r!7292) (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425898)) (= lambda!372900 lambda!372746))))

(assert (=> bs!1713558 (not (= lambda!372900 lambda!372803))))

(assert (=> bs!1713557 (not (= lambda!372900 lambda!372745))))

(assert (=> bs!1713559 (= (and (= (regOne!33542 r!7292) (regOne!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292)))))))) (= (regTwo!33542 r!7292) (regTwo!33542 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425988 (ite c!1227934 lt!2425927 (ite c!1227943 lt!2426028 (ite c!1227944 (regTwo!33542 r!7292) (regOne!33542 r!7292))))))))) (= lambda!372900 lambda!372871))))

(assert (=> bs!1713560 (not (= lambda!372900 lambda!372826))))

(assert (=> bs!1713561 (= (and (= s!2326 (ite (or c!1227937 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)) s!2326))) (= (regOne!33542 r!7292) (regOne!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292))))))) (= (regTwo!33542 r!7292) (regTwo!33542 (ite c!1227937 lt!2426024 (ite c!1227934 lt!2425950 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2425954 lt!2425900)) (ite c!1227944 (regOne!33542 r!7292) (regTwo!33542 r!7292)))))))) (= lambda!372900 lambda!372866))))

(assert (=> bs!1713562 (not (= lambda!372900 lambda!372895))))

(assert (=> bs!1713563 (not (= lambda!372900 lambda!372880))))

(assert (=> bs!1713564 (= lambda!372900 lambda!372805)))

(assert (=> bs!1713557 (= (and (= (regOne!33542 r!7292) (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425950)) (= lambda!372900 lambda!372744))))

(assert (=> bs!1713554 (not (= lambda!372900 lambda!372757))))

(assert (=> bs!1713565 (not (= lambda!372900 lambda!372750))))

(assert (=> bs!1713566 (= (and (= (regOne!33542 r!7292) (regTwo!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2426072)) (= lambda!372900 lambda!372742))))

(assert (=> bs!1713557 (not (= lambda!372900 lambda!372743))))

(assert (=> bs!1713555 (not (= lambda!372900 lambda!372762))))

(assert (=> bs!1713555 (not (= lambda!372900 lambda!372760))))

(assert (=> bs!1713553 (= (and (= s!2326 (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)))) (= (regOne!33542 r!7292) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292))))))) (= (regTwo!33542 r!7292) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))))) (= lambda!372900 lambda!372791))))

(assert (=> bs!1713567 (not (= lambda!372900 lambda!372822))))

(assert (=> bs!1713554 (= (= (regOne!33542 r!7292) lt!2426074) (= lambda!372900 lambda!372756))))

(assert (=> bs!1713565 (= (and (= s!2326 (_1!36797 lt!2425896)) (= (regOne!33542 r!7292) (reg!16844 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425900)) (= lambda!372900 lambda!372751))))

(assert (=> bs!1713568 (not (= lambda!372900 lambda!372865))))

(assert (=> bs!1713569 (= (and (= s!2326 (ite (or c!1227937 c!1227939) s!2326 (_1!36797 lt!2425939))) (= (regOne!33542 r!7292) (regOne!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074)))) (= (regTwo!33542 r!7292) (regTwo!33542 (ite c!1227937 lt!2425949 (ite c!1227939 lt!2425943 lt!2426074))))) (= lambda!372900 lambda!372835))))

(assert (=> bs!1713570 (= lambda!372900 lambda!372737)))

(assert (=> bs!1713571 (= (= (regOne!33542 r!7292) lt!2425900) (= lambda!372900 lambda!372748))))

(assert (=> bs!1713554 (not (= lambda!372900 lambda!372759))))

(declare-fun bs!1713575 () Bool)

(assert (= bs!1713575 d!2085075))

(assert (=> bs!1713575 (not (= lambda!372900 lambda!372899))))

(assert (=> bs!1713571 (not (= lambda!372900 lambda!372747))))

(assert (=> bs!1713572 (not (= lambda!372900 lambda!372834))))

(assert (=> bs!1713566 (not (= lambda!372900 lambda!372739))))

(assert (=> bs!1713563 (not (= lambda!372900 lambda!372881))))

(assert (=> bs!1713560 (= (and (= s!2326 (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939))) (= (regOne!33542 r!7292) (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))))) (= (regTwo!33542 r!7292) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))))) (= lambda!372900 lambda!372831))))

(assert (=> bs!1713566 (= (and (= (regOne!33542 r!7292) (regOne!33542 (regOne!33542 r!7292))) (= (regTwo!33542 r!7292) lt!2425943)) (= lambda!372900 lambda!372740))))

(assert (=> bs!1713565 (not (= lambda!372900 lambda!372749))))

(assert (=> bs!1713573 (not (= lambda!372900 lambda!372898))))

(assert (=> bs!1713566 (not (= lambda!372900 lambda!372741))))

(assert (=> bs!1713574 (= (and (= (regOne!33542 r!7292) (regOne!33542 lt!2425903)) (= (regTwo!33542 r!7292) (regTwo!33542 lt!2425903))) (= lambda!372900 lambda!372823))))

(assert (=> bs!1713554 (not (= lambda!372900 lambda!372755))))

(assert (=> bs!1713570 (not (= lambda!372900 lambda!372736))))

(assert (=> d!2085075 true))

(assert (=> d!2085075 true))

(assert (=> d!2085075 true))

(assert (=> d!2085075 (= (Exists!3585 lambda!372899) (Exists!3585 lambda!372900))))

(declare-fun lt!2426398 () Unit!159541)

(assert (=> d!2085075 (= lt!2426398 (choose!49769 (regOne!33542 r!7292) (regTwo!33542 r!7292) s!2326))))

(assert (=> d!2085075 (validRegex!8251 (regOne!33542 r!7292))))

(assert (=> d!2085075 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2122 (regOne!33542 r!7292) (regTwo!33542 r!7292) s!2326) lt!2426398)))

(declare-fun m!7420530 () Bool)

(assert (=> bs!1713575 m!7420530))

(declare-fun m!7420532 () Bool)

(assert (=> bs!1713575 m!7420532))

(declare-fun m!7420534 () Bool)

(assert (=> bs!1713575 m!7420534))

(assert (=> bs!1713575 m!7420512))

(assert (=> b!6652194 d!2085075))

(declare-fun d!2085077 () Bool)

(assert (=> d!2085077 (= (isDefined!13109 (findConcatSeparation!2820 (regOne!33542 r!7292) (regTwo!33542 r!7292) Nil!65720 s!2326 s!2326)) (not (isEmpty!38036 (findConcatSeparation!2820 (regOne!33542 r!7292) (regTwo!33542 r!7292) Nil!65720 s!2326 s!2326))))))

(declare-fun bs!1713576 () Bool)

(assert (= bs!1713576 d!2085077))

(assert (=> bs!1713576 m!7418364))

(declare-fun m!7420536 () Bool)

(assert (=> bs!1713576 m!7420536))

(assert (=> b!6652194 d!2085077))

(declare-fun bs!1713577 () Bool)

(declare-fun d!2085079 () Bool)

(assert (= bs!1713577 (and d!2085079 b!6652222)))

(declare-fun lambda!372901 () Int)

(assert (=> bs!1713577 (= lambda!372901 lambda!372754)))

(declare-fun bs!1713578 () Bool)

(assert (= bs!1713578 (and d!2085079 d!2084801)))

(assert (=> bs!1713578 (= lambda!372901 lambda!372824)))

(declare-fun bs!1713579 () Bool)

(assert (= bs!1713579 (and d!2085079 d!2085057)))

(assert (=> bs!1713579 (= lambda!372901 lambda!372897)))

(declare-fun bs!1713580 () Bool)

(assert (= bs!1713580 (and d!2085079 d!2084997)))

(assert (=> bs!1713580 (= lambda!372901 lambda!372873)))

(declare-fun bs!1713581 () Bool)

(assert (= bs!1713581 (and d!2085079 d!2084613)))

(assert (=> bs!1713581 (= lambda!372901 lambda!372780)))

(declare-fun bs!1713582 () Bool)

(assert (= bs!1713582 (and d!2085079 b!6652192)))

(assert (=> bs!1713582 (= lambda!372901 lambda!372752)))

(declare-fun bs!1713583 () Bool)

(assert (= bs!1713583 (and d!2085079 d!2085035)))

(assert (=> bs!1713583 (= lambda!372901 lambda!372891)))

(declare-fun bs!1713584 () Bool)

(assert (= bs!1713584 (and d!2085079 d!2085027)))

(assert (=> bs!1713584 (= lambda!372901 lambda!372887)))

(declare-fun bs!1713585 () Bool)

(assert (= bs!1713585 (and d!2085079 d!2084599)))

(assert (=> bs!1713585 (= lambda!372901 lambda!372768)))

(declare-fun bs!1713586 () Bool)

(assert (= bs!1713586 (and d!2085079 d!2084865)))

(assert (=> bs!1713586 (= lambda!372901 lambda!372850)))

(declare-fun bs!1713587 () Bool)

(assert (= bs!1713587 (and d!2085079 d!2084901)))

(assert (=> bs!1713587 (= lambda!372901 lambda!372867)))

(declare-fun b!6653774 () Bool)

(declare-fun e!4023121 () Regex!16515)

(assert (=> b!6653774 (= e!4023121 EmptyExpr!16515)))

(declare-fun e!4023125 () Bool)

(declare-fun b!6653775 () Bool)

(assert (=> b!6653775 (= e!4023125 (isEmpty!38034 (t!379514 (ite c!1227939 (t!379514 (exprs!6399 (h!72170 zl!343))) lt!2425999))))))

(declare-fun b!6653776 () Bool)

(declare-fun e!4023126 () Bool)

(declare-fun e!4023123 () Bool)

(assert (=> b!6653776 (= e!4023126 e!4023123)))

(declare-fun c!1228406 () Bool)

(assert (=> b!6653776 (= c!1228406 (isEmpty!38034 (tail!12559 (ite c!1227939 (t!379514 (exprs!6399 (h!72170 zl!343))) lt!2425999))))))

(declare-fun b!6653777 () Bool)

(declare-fun lt!2426399 () Regex!16515)

(assert (=> b!6653777 (= e!4023123 (= lt!2426399 (head!13474 (ite c!1227939 (t!379514 (exprs!6399 (h!72170 zl!343))) lt!2425999))))))

(declare-fun b!6653778 () Bool)

(declare-fun e!4023122 () Regex!16515)

(assert (=> b!6653778 (= e!4023122 (h!72169 (ite c!1227939 (t!379514 (exprs!6399 (h!72170 zl!343))) lt!2425999)))))

(declare-fun b!6653779 () Bool)

(assert (=> b!6653779 (= e!4023122 e!4023121)))

(declare-fun c!1228403 () Bool)

(assert (=> b!6653779 (= c!1228403 ((_ is Cons!65721) (ite c!1227939 (t!379514 (exprs!6399 (h!72170 zl!343))) lt!2425999)))))

(declare-fun b!6653780 () Bool)

(assert (=> b!6653780 (= e!4023121 (Concat!25360 (h!72169 (ite c!1227939 (t!379514 (exprs!6399 (h!72170 zl!343))) lt!2425999)) (generalisedConcat!2112 (t!379514 (ite c!1227939 (t!379514 (exprs!6399 (h!72170 zl!343))) lt!2425999)))))))

(declare-fun b!6653781 () Bool)

(declare-fun e!4023124 () Bool)

(assert (=> b!6653781 (= e!4023124 e!4023126)))

(declare-fun c!1228404 () Bool)

(assert (=> b!6653781 (= c!1228404 (isEmpty!38034 (ite c!1227939 (t!379514 (exprs!6399 (h!72170 zl!343))) lt!2425999)))))

(declare-fun b!6653782 () Bool)

(assert (=> b!6653782 (= e!4023123 (isConcat!1412 lt!2426399))))

(assert (=> d!2085079 e!4023124))

(declare-fun res!2726609 () Bool)

(assert (=> d!2085079 (=> (not res!2726609) (not e!4023124))))

(assert (=> d!2085079 (= res!2726609 (validRegex!8251 lt!2426399))))

(assert (=> d!2085079 (= lt!2426399 e!4023122)))

(declare-fun c!1228405 () Bool)

(assert (=> d!2085079 (= c!1228405 e!4023125)))

(declare-fun res!2726610 () Bool)

(assert (=> d!2085079 (=> (not res!2726610) (not e!4023125))))

(assert (=> d!2085079 (= res!2726610 ((_ is Cons!65721) (ite c!1227939 (t!379514 (exprs!6399 (h!72170 zl!343))) lt!2425999)))))

(assert (=> d!2085079 (forall!15713 (ite c!1227939 (t!379514 (exprs!6399 (h!72170 zl!343))) lt!2425999) lambda!372901)))

(assert (=> d!2085079 (= (generalisedConcat!2112 (ite c!1227939 (t!379514 (exprs!6399 (h!72170 zl!343))) lt!2425999)) lt!2426399)))

(declare-fun b!6653783 () Bool)

(assert (=> b!6653783 (= e!4023126 (isEmptyExpr!1889 lt!2426399))))

(assert (= (and d!2085079 res!2726610) b!6653775))

(assert (= (and d!2085079 c!1228405) b!6653778))

(assert (= (and d!2085079 (not c!1228405)) b!6653779))

(assert (= (and b!6653779 c!1228403) b!6653780))

(assert (= (and b!6653779 (not c!1228403)) b!6653774))

(assert (= (and d!2085079 res!2726609) b!6653781))

(assert (= (and b!6653781 c!1228404) b!6653783))

(assert (= (and b!6653781 (not c!1228404)) b!6653776))

(assert (= (and b!6653776 c!1228406) b!6653777))

(assert (= (and b!6653776 (not c!1228406)) b!6653782))

(declare-fun m!7420538 () Bool)

(assert (=> d!2085079 m!7420538))

(declare-fun m!7420540 () Bool)

(assert (=> d!2085079 m!7420540))

(declare-fun m!7420542 () Bool)

(assert (=> b!6653783 m!7420542))

(declare-fun m!7420544 () Bool)

(assert (=> b!6653777 m!7420544))

(declare-fun m!7420546 () Bool)

(assert (=> b!6653780 m!7420546))

(declare-fun m!7420548 () Bool)

(assert (=> b!6653781 m!7420548))

(declare-fun m!7420550 () Bool)

(assert (=> b!6653775 m!7420550))

(declare-fun m!7420552 () Bool)

(assert (=> b!6653782 m!7420552))

(declare-fun m!7420554 () Bool)

(assert (=> b!6653776 m!7420554))

(assert (=> b!6653776 m!7420554))

(declare-fun m!7420556 () Bool)

(assert (=> b!6653776 m!7420556))

(assert (=> bm!589351 d!2085079))

(declare-fun bs!1713588 () Bool)

(declare-fun d!2085081 () Bool)

(assert (= bs!1713588 (and d!2085081 d!2084621)))

(declare-fun lambda!372902 () Int)

(assert (=> bs!1713588 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 s!2326 Nil!65720)))) (= (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) (ite c!1227939 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227934 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) (ite c!1227938 lt!2426074 (reg!16844 (regOne!33542 r!7292))))))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (ite c!1227938 (regTwo!33542 r!7292) lt!2425900)))))) (= lambda!372902 lambda!372789))))

(declare-fun bs!1713589 () Bool)

(assert (= bs!1713589 (and d!2085081 b!6652222)))

(assert (=> bs!1713589 (not (= lambda!372902 lambda!372758))))

(declare-fun bs!1713590 () Bool)

(assert (= bs!1713590 (and d!2085081 b!6652208)))

(assert (=> bs!1713590 (not (= lambda!372902 lambda!372761))))

(declare-fun bs!1713591 () Bool)

(assert (= bs!1713591 (and d!2085081 b!6653537)))

(assert (=> bs!1713591 (not (= lambda!372902 lambda!372870))))

(declare-fun bs!1713592 () Bool)

(assert (= bs!1713592 (and d!2085081 b!6652251)))

(assert (=> bs!1713592 (not (= lambda!372902 lambda!372746))))

(assert (=> bs!1713592 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326) (= (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) (regTwo!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2425898)) (= lambda!372902 lambda!372745))))

(declare-fun bs!1713593 () Bool)

(assert (= bs!1713593 (and d!2085081 b!6653538)))

(assert (=> bs!1713593 (not (= lambda!372902 lambda!372871))))

(declare-fun bs!1713594 () Bool)

(assert (= bs!1713594 (and d!2085081 d!2084839)))

(assert (=> bs!1713594 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) (ite (or c!1227939 c!1227934 c!1227941) s!2326 (_1!36797 lt!2425939))) (= (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) (ite c!1227939 (regOne!33542 (regOne!33542 r!7292)) (ite c!1227934 (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))))) (= lambda!372902 lambda!372826))))

(declare-fun bs!1713595 () Bool)

(assert (= bs!1713595 (and d!2085081 b!6653339)))

(assert (=> bs!1713595 (not (= lambda!372902 lambda!372866))))

(declare-fun bs!1713596 () Bool)

(assert (= bs!1713596 (and d!2085081 d!2085041)))

(assert (=> bs!1713596 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) (ite (or c!1227939 c!1227934) s!2326 (ite c!1227941 (_1!36797 lt!2425896) s!2326))) (= (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) (ite (or c!1227939 c!1227934) (regOne!33542 (regOne!33542 r!7292)) (ite c!1227941 (reg!16844 (regOne!33542 r!7292)) lt!2426074))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425950 (ite c!1227941 lt!2425900 (regTwo!33542 r!7292)))))) (= lambda!372902 lambda!372895))))

(declare-fun bs!1713597 () Bool)

(assert (= bs!1713597 (and d!2085081 d!2085005)))

(assert (=> bs!1713597 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720))) (= (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (Star!16515 (reg!16844 (regOne!33542 r!7292))))) (= lambda!372902 lambda!372880))))

(declare-fun bs!1713598 () Bool)

(assert (= bs!1713598 (and d!2085081 b!6652830)))

(assert (=> bs!1713598 (not (= lambda!372902 lambda!372805))))

(assert (=> bs!1713592 (not (= lambda!372902 lambda!372744))))

(assert (=> bs!1713589 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) (_1!36797 lt!2425939)) (= (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2425900)) (= lambda!372902 lambda!372757))))

(declare-fun bs!1713599 () Bool)

(assert (= bs!1713599 (and d!2085081 b!6652192)))

(assert (=> bs!1713599 (not (= lambda!372902 lambda!372750))))

(declare-fun bs!1713600 () Bool)

(assert (= bs!1713600 (and d!2085081 b!6652250)))

(assert (=> bs!1713600 (not (= lambda!372902 lambda!372742))))

(assert (=> bs!1713592 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326) (= (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) (regOne!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2425950)) (= lambda!372902 lambda!372743))))

(declare-fun bs!1713601 () Bool)

(assert (= bs!1713601 (and d!2085081 d!2085075)))

(assert (=> bs!1713601 (not (= lambda!372902 lambda!372900))))

(declare-fun bs!1713602 () Bool)

(assert (= bs!1713602 (and d!2085081 b!6652829)))

(assert (=> bs!1713602 (not (= lambda!372902 lambda!372803))))

(assert (=> bs!1713590 (not (= lambda!372902 lambda!372762))))

(assert (=> bs!1713590 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) Nil!65720) (= (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2425900)) (= lambda!372902 lambda!372760))))

(assert (=> bs!1713588 (not (= lambda!372902 lambda!372791))))

(declare-fun bs!1713603 () Bool)

(assert (= bs!1713603 (and d!2085081 b!6653051)))

(assert (=> bs!1713603 (not (= lambda!372902 lambda!372822))))

(assert (=> bs!1713589 (not (= lambda!372902 lambda!372756))))

(assert (=> bs!1713599 (not (= lambda!372902 lambda!372751))))

(declare-fun bs!1713604 () Bool)

(assert (= bs!1713604 (and d!2085081 b!6653338)))

(assert (=> bs!1713604 (not (= lambda!372902 lambda!372865))))

(declare-fun bs!1713605 () Bool)

(assert (= bs!1713605 (and d!2085081 b!6653208)))

(assert (=> bs!1713605 (not (= lambda!372902 lambda!372835))))

(declare-fun bs!1713606 () Bool)

(assert (= bs!1713606 (and d!2085081 b!6652194)))

(assert (=> bs!1713606 (not (= lambda!372902 lambda!372737))))

(declare-fun bs!1713607 () Bool)

(assert (= bs!1713607 (and d!2085081 b!6652196)))

(assert (=> bs!1713607 (not (= lambda!372902 lambda!372748))))

(assert (=> bs!1713589 (not (= lambda!372902 lambda!372759))))

(assert (=> bs!1713601 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326) (= (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) (regOne!33542 r!7292)) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (regTwo!33542 r!7292))) (= lambda!372902 lambda!372899))))

(assert (=> bs!1713607 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326) (= (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) lt!2425900) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (regTwo!33542 r!7292))) (= lambda!372902 lambda!372747))))

(declare-fun bs!1713608 () Bool)

(assert (= bs!1713608 (and d!2085081 b!6653207)))

(assert (=> bs!1713608 (not (= lambda!372902 lambda!372834))))

(assert (=> bs!1713600 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326) (= (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) (regOne!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2425943)) (= lambda!372902 lambda!372739))))

(assert (=> bs!1713597 (not (= lambda!372902 lambda!372881))))

(assert (=> bs!1713594 (not (= lambda!372902 lambda!372831))))

(assert (=> bs!1713600 (not (= lambda!372902 lambda!372740))))

(assert (=> bs!1713599 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) (_1!36797 lt!2425896)) (= (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) (reg!16844 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2425900)) (= lambda!372902 lambda!372749))))

(declare-fun bs!1713609 () Bool)

(assert (= bs!1713609 (and d!2085081 d!2085073)))

(assert (=> bs!1713609 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326) (= (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) (regOne!33542 r!7292)) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (regTwo!33542 r!7292))) (= lambda!372902 lambda!372898))))

(assert (=> bs!1713600 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326) (= (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) (regTwo!33542 (regOne!33542 r!7292))) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) lt!2426072)) (= lambda!372902 lambda!372741))))

(declare-fun bs!1713610 () Bool)

(assert (= bs!1713610 (and d!2085081 b!6653052)))

(assert (=> bs!1713610 (not (= lambda!372902 lambda!372823))))

(assert (=> bs!1713589 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326) (= (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) lt!2426074) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (regTwo!33542 r!7292))) (= lambda!372902 lambda!372755))))

(assert (=> bs!1713606 (= (and (= (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326) (= (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) (regOne!33542 r!7292)) (= (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (regTwo!33542 r!7292))) (= lambda!372902 lambda!372736))))

(assert (=> d!2085081 true))

(assert (=> d!2085081 true))

(assert (=> d!2085081 true))

(assert (=> d!2085081 (= (isDefined!13109 (findConcatSeparation!2820 (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) Nil!65720 (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)))) (Exists!3585 lambda!372902))))

(declare-fun lt!2426400 () Unit!159541)

(assert (=> d!2085081 (= lt!2426400 (choose!49797 (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720))))))

(assert (=> d!2085081 (validRegex!8251 (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))))))

(assert (=> d!2085081 (= (lemmaFindConcatSeparationEquivalentToExists!2584 (ite (or c!1227939 c!1227934) (regTwo!33542 (regOne!33542 r!7292)) (ite c!1227941 lt!2425900 (reg!16844 (regOne!33542 r!7292)))) (ite c!1227939 lt!2426072 (ite c!1227934 lt!2425898 (ite c!1227941 (regTwo!33542 r!7292) lt!2425900))) (ite (or c!1227939 c!1227934 c!1227941) s!2326 (ite c!1227938 (_1!36797 lt!2425939) Nil!65720))) lt!2426400)))

(declare-fun bs!1713611 () Bool)

(assert (= bs!1713611 d!2085081))

(declare-fun m!7420558 () Bool)

(assert (=> bs!1713611 m!7420558))

(declare-fun m!7420560 () Bool)

(assert (=> bs!1713611 m!7420560))

(declare-fun m!7420562 () Bool)

(assert (=> bs!1713611 m!7420562))

(declare-fun m!7420564 () Bool)

(assert (=> bs!1713611 m!7420564))

(declare-fun m!7420566 () Bool)

(assert (=> bs!1713611 m!7420566))

(assert (=> bs!1713611 m!7420560))

(assert (=> bm!589319 d!2085081))

(declare-fun lt!2426403 () List!65845)

(declare-fun b!6653795 () Bool)

(declare-fun e!4023131 () Bool)

(assert (=> b!6653795 (= e!4023131 (or (not (= lt!2425993 Nil!65721)) (= lt!2426403 lt!2426032)))))

(declare-fun b!6653793 () Bool)

(declare-fun e!4023132 () List!65845)

(assert (=> b!6653793 (= e!4023132 (Cons!65721 (h!72169 lt!2426032) (++!14673 (t!379514 lt!2426032) lt!2425993)))))

(declare-fun d!2085083 () Bool)

(assert (=> d!2085083 e!4023131))

(declare-fun res!2726616 () Bool)

(assert (=> d!2085083 (=> (not res!2726616) (not e!4023131))))

(declare-fun content!12719 (List!65845) (InoxSet Regex!16515))

(assert (=> d!2085083 (= res!2726616 (= (content!12719 lt!2426403) ((_ map or) (content!12719 lt!2426032) (content!12719 lt!2425993))))))

(assert (=> d!2085083 (= lt!2426403 e!4023132)))

(declare-fun c!1228409 () Bool)

(assert (=> d!2085083 (= c!1228409 ((_ is Nil!65721) lt!2426032))))

(assert (=> d!2085083 (= (++!14673 lt!2426032 lt!2425993) lt!2426403)))

(declare-fun b!6653794 () Bool)

(declare-fun res!2726615 () Bool)

(assert (=> b!6653794 (=> (not res!2726615) (not e!4023131))))

(declare-fun size!40575 (List!65845) Int)

(assert (=> b!6653794 (= res!2726615 (= (size!40575 lt!2426403) (+ (size!40575 lt!2426032) (size!40575 lt!2425993))))))

(declare-fun b!6653792 () Bool)

(assert (=> b!6653792 (= e!4023132 lt!2425993)))

(assert (= (and d!2085083 c!1228409) b!6653792))

(assert (= (and d!2085083 (not c!1228409)) b!6653793))

(assert (= (and d!2085083 res!2726616) b!6653794))

(assert (= (and b!6653794 res!2726615) b!6653795))

(declare-fun m!7420568 () Bool)

(assert (=> b!6653793 m!7420568))

(declare-fun m!7420570 () Bool)

(assert (=> d!2085083 m!7420570))

(declare-fun m!7420572 () Bool)

(assert (=> d!2085083 m!7420572))

(declare-fun m!7420574 () Bool)

(assert (=> d!2085083 m!7420574))

(declare-fun m!7420576 () Bool)

(assert (=> b!6653794 m!7420576))

(declare-fun m!7420578 () Bool)

(assert (=> b!6653794 m!7420578))

(declare-fun m!7420580 () Bool)

(assert (=> b!6653794 m!7420580))

(assert (=> bm!589307 d!2085083))

(declare-fun d!2085085 () Bool)

(assert (=> d!2085085 (= (get!22854 (ite c!1227941 lt!2426049 lt!2426002)) (v!52600 (ite c!1227941 lt!2426049 lt!2426002)))))

(assert (=> bm!589289 d!2085085))

(declare-fun d!2085087 () Bool)

(assert (=> d!2085087 (= (matchR!8698 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425927 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2426074 lt!2425900)) (regTwo!33542 r!7292))))) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326))) (matchRSpec!3616 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425927 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2426074 lt!2425900)) (regTwo!33542 r!7292))))) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326))))))

(declare-fun lt!2426404 () Unit!159541)

(assert (=> d!2085087 (= lt!2426404 (choose!49777 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425927 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2426074 lt!2425900)) (regTwo!33542 r!7292))))) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326))))))

(assert (=> d!2085087 (validRegex!8251 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425927 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2426074 lt!2425900)) (regTwo!33542 r!7292))))))))

(assert (=> d!2085087 (= (mainMatchTheorem!3616 (ite c!1227937 lt!2426011 (ite c!1227939 lt!2425943 (ite c!1227934 lt!2425927 (ite c!1227943 (ite c!1227941 lt!2425900 (ite c!1227938 lt!2426074 lt!2425900)) (regTwo!33542 r!7292))))) (ite (or c!1227937 c!1227939 c!1227934) s!2326 (ite c!1227943 (ite c!1227941 (_1!36797 lt!2425896) (ite c!1227938 (_1!36797 lt!2425939) Nil!65720)) s!2326))) lt!2426404)))

(declare-fun bs!1713612 () Bool)

(assert (= bs!1713612 d!2085087))

(declare-fun m!7420582 () Bool)

(assert (=> bs!1713612 m!7420582))

(declare-fun m!7420584 () Bool)

(assert (=> bs!1713612 m!7420584))

(declare-fun m!7420586 () Bool)

(assert (=> bs!1713612 m!7420586))

(declare-fun m!7420588 () Bool)

(assert (=> bs!1713612 m!7420588))

(assert (=> bm!589229 d!2085087))

(declare-fun d!2085089 () Bool)

(declare-fun e!4023133 () Bool)

(assert (=> d!2085089 (= (matchZipper!2527 ((_ map or) (ite c!1227937 lt!2426007 (ite c!1227939 lt!2426083 lt!2426042)) (ite c!1227937 lt!2425952 (ite c!1227939 lt!2425989 lt!2425952))) (t!379513 s!2326)) e!4023133)))

(declare-fun res!2726617 () Bool)

(assert (=> d!2085089 (=> res!2726617 e!4023133)))

(assert (=> d!2085089 (= res!2726617 (matchZipper!2527 (ite c!1227937 lt!2426007 (ite c!1227939 lt!2426083 lt!2426042)) (t!379513 s!2326)))))

(declare-fun lt!2426405 () Unit!159541)

(assert (=> d!2085089 (= lt!2426405 (choose!49785 (ite c!1227937 lt!2426007 (ite c!1227939 lt!2426083 lt!2426042)) (ite c!1227937 lt!2425952 (ite c!1227939 lt!2425989 lt!2425952)) (t!379513 s!2326)))))

(assert (=> d!2085089 (= (lemmaZipperConcatMatchesSameAsBothZippers!1346 (ite c!1227937 lt!2426007 (ite c!1227939 lt!2426083 lt!2426042)) (ite c!1227937 lt!2425952 (ite c!1227939 lt!2425989 lt!2425952)) (t!379513 s!2326)) lt!2426405)))

(declare-fun b!6653796 () Bool)

(assert (=> b!6653796 (= e!4023133 (matchZipper!2527 (ite c!1227937 lt!2425952 (ite c!1227939 lt!2425989 lt!2425952)) (t!379513 s!2326)))))

(assert (= (and d!2085089 (not res!2726617)) b!6653796))

(declare-fun m!7420590 () Bool)

(assert (=> d!2085089 m!7420590))

(declare-fun m!7420592 () Bool)

(assert (=> d!2085089 m!7420592))

(declare-fun m!7420594 () Bool)

(assert (=> d!2085089 m!7420594))

(declare-fun m!7420596 () Bool)

(assert (=> b!6653796 m!7420596))

(assert (=> bm!589211 d!2085089))

(declare-fun c!1228410 () Bool)

(declare-fun d!2085091 () Bool)

(assert (=> d!2085091 (= c!1228410 (isEmpty!38032 (ite (or c!1227937 c!1227939 c!1227934 c!1227943 c!1227944) s!2326 (t!379513 s!2326))))))

(declare-fun e!4023134 () Bool)

(assert (=> d!2085091 (= (matchZipper!2527 (ite c!1227937 lt!2425942 (ite c!1227939 lt!2425972 (ite (or c!1227934 c!1227943 c!1227944) z!1189 lt!2426042))) (ite (or c!1227937 c!1227939 c!1227934 c!1227943 c!1227944) s!2326 (t!379513 s!2326))) e!4023134)))

(declare-fun b!6653797 () Bool)

(assert (=> b!6653797 (= e!4023134 (nullableZipper!2255 (ite c!1227937 lt!2425942 (ite c!1227939 lt!2425972 (ite (or c!1227934 c!1227943 c!1227944) z!1189 lt!2426042)))))))

(declare-fun b!6653798 () Bool)

(assert (=> b!6653798 (= e!4023134 (matchZipper!2527 (derivationStepZipper!2481 (ite c!1227937 lt!2425942 (ite c!1227939 lt!2425972 (ite (or c!1227934 c!1227943 c!1227944) z!1189 lt!2426042))) (head!13473 (ite (or c!1227937 c!1227939 c!1227934 c!1227943 c!1227944) s!2326 (t!379513 s!2326)))) (tail!12558 (ite (or c!1227937 c!1227939 c!1227934 c!1227943 c!1227944) s!2326 (t!379513 s!2326)))))))

(assert (= (and d!2085091 c!1228410) b!6653797))

(assert (= (and d!2085091 (not c!1228410)) b!6653798))

(declare-fun m!7420598 () Bool)

(assert (=> d!2085091 m!7420598))

(declare-fun m!7420600 () Bool)

(assert (=> b!6653797 m!7420600))

(declare-fun m!7420602 () Bool)

(assert (=> b!6653798 m!7420602))

(assert (=> b!6653798 m!7420602))

(declare-fun m!7420604 () Bool)

(assert (=> b!6653798 m!7420604))

(declare-fun m!7420606 () Bool)

(assert (=> b!6653798 m!7420606))

(assert (=> b!6653798 m!7420604))

(assert (=> b!6653798 m!7420606))

(declare-fun m!7420608 () Bool)

(assert (=> b!6653798 m!7420608))

(assert (=> bm!589354 d!2085091))

(declare-fun b!6653799 () Bool)

(declare-fun e!4023136 () Bool)

(assert (=> b!6653799 (= e!4023136 (matchR!8698 (derivativeStep!5195 (ite c!1227941 lt!2425900 (ite c!1227938 (reg!16844 (regOne!33542 r!7292)) lt!2425941)) (head!13473 (ite c!1227941 lt!2426048 (ite c!1227938 (_1!36797 lt!2426064) call!589241)))) (tail!12558 (ite c!1227941 lt!2426048 (ite c!1227938 (_1!36797 lt!2426064) call!589241)))))))

(declare-fun b!6653800 () Bool)

(declare-fun e!4023138 () Bool)

(assert (=> b!6653800 (= e!4023138 (not (= (head!13473 (ite c!1227941 lt!2426048 (ite c!1227938 (_1!36797 lt!2426064) call!589241))) (c!1227945 (ite c!1227941 lt!2425900 (ite c!1227938 (reg!16844 (regOne!33542 r!7292)) lt!2425941))))))))

(declare-fun b!6653801 () Bool)

(declare-fun e!4023135 () Bool)

(declare-fun lt!2426406 () Bool)

(assert (=> b!6653801 (= e!4023135 (not lt!2426406))))

(declare-fun b!6653802 () Bool)

(declare-fun e!4023140 () Bool)

(declare-fun call!589588 () Bool)

(assert (=> b!6653802 (= e!4023140 (= lt!2426406 call!589588))))

(declare-fun b!6653803 () Bool)

(assert (=> b!6653803 (= e!4023140 e!4023135)))

(declare-fun c!1228411 () Bool)

(assert (=> b!6653803 (= c!1228411 ((_ is EmptyLang!16515) (ite c!1227941 lt!2425900 (ite c!1227938 (reg!16844 (regOne!33542 r!7292)) lt!2425941))))))

(declare-fun d!2085093 () Bool)

(assert (=> d!2085093 e!4023140))

(declare-fun c!1228413 () Bool)

(assert (=> d!2085093 (= c!1228413 ((_ is EmptyExpr!16515) (ite c!1227941 lt!2425900 (ite c!1227938 (reg!16844 (regOne!33542 r!7292)) lt!2425941))))))

(assert (=> d!2085093 (= lt!2426406 e!4023136)))

(declare-fun c!1228412 () Bool)

(assert (=> d!2085093 (= c!1228412 (isEmpty!38032 (ite c!1227941 lt!2426048 (ite c!1227938 (_1!36797 lt!2426064) call!589241))))))

(assert (=> d!2085093 (validRegex!8251 (ite c!1227941 lt!2425900 (ite c!1227938 (reg!16844 (regOne!33542 r!7292)) lt!2425941)))))

(assert (=> d!2085093 (= (matchR!8698 (ite c!1227941 lt!2425900 (ite c!1227938 (reg!16844 (regOne!33542 r!7292)) lt!2425941)) (ite c!1227941 lt!2426048 (ite c!1227938 (_1!36797 lt!2426064) call!589241))) lt!2426406)))

(declare-fun b!6653804 () Bool)

(declare-fun res!2726620 () Bool)

(declare-fun e!4023137 () Bool)

(assert (=> b!6653804 (=> res!2726620 e!4023137)))

(assert (=> b!6653804 (= res!2726620 (not ((_ is ElementMatch!16515) (ite c!1227941 lt!2425900 (ite c!1227938 (reg!16844 (regOne!33542 r!7292)) lt!2425941)))))))

(assert (=> b!6653804 (= e!4023135 e!4023137)))

(declare-fun b!6653805 () Bool)

(assert (=> b!6653805 (= e!4023136 (nullable!6508 (ite c!1227941 lt!2425900 (ite c!1227938 (reg!16844 (regOne!33542 r!7292)) lt!2425941))))))

(declare-fun bm!589583 () Bool)

(assert (=> bm!589583 (= call!589588 (isEmpty!38032 (ite c!1227941 lt!2426048 (ite c!1227938 (_1!36797 lt!2426064) call!589241))))))

(declare-fun b!6653806 () Bool)

(declare-fun res!2726619 () Bool)

(assert (=> b!6653806 (=> res!2726619 e!4023137)))

(declare-fun e!4023139 () Bool)

(assert (=> b!6653806 (= res!2726619 e!4023139)))

(declare-fun res!2726622 () Bool)

(assert (=> b!6653806 (=> (not res!2726622) (not e!4023139))))

(assert (=> b!6653806 (= res!2726622 lt!2426406)))

(declare-fun b!6653807 () Bool)

(declare-fun e!4023141 () Bool)

(assert (=> b!6653807 (= e!4023137 e!4023141)))

(declare-fun res!2726618 () Bool)

(assert (=> b!6653807 (=> (not res!2726618) (not e!4023141))))

(assert (=> b!6653807 (= res!2726618 (not lt!2426406))))

(declare-fun b!6653808 () Bool)

(assert (=> b!6653808 (= e!4023141 e!4023138)))

(declare-fun res!2726625 () Bool)

(assert (=> b!6653808 (=> res!2726625 e!4023138)))

(assert (=> b!6653808 (= res!2726625 call!589588)))

(declare-fun b!6653809 () Bool)

(declare-fun res!2726624 () Bool)

(assert (=> b!6653809 (=> (not res!2726624) (not e!4023139))))

(assert (=> b!6653809 (= res!2726624 (isEmpty!38032 (tail!12558 (ite c!1227941 lt!2426048 (ite c!1227938 (_1!36797 lt!2426064) call!589241)))))))

(declare-fun b!6653810 () Bool)

(assert (=> b!6653810 (= e!4023139 (= (head!13473 (ite c!1227941 lt!2426048 (ite c!1227938 (_1!36797 lt!2426064) call!589241))) (c!1227945 (ite c!1227941 lt!2425900 (ite c!1227938 (reg!16844 (regOne!33542 r!7292)) lt!2425941)))))))

(declare-fun b!6653811 () Bool)

(declare-fun res!2726621 () Bool)

(assert (=> b!6653811 (=> (not res!2726621) (not e!4023139))))

(assert (=> b!6653811 (= res!2726621 (not call!589588))))

(declare-fun b!6653812 () Bool)

(declare-fun res!2726623 () Bool)

(assert (=> b!6653812 (=> res!2726623 e!4023138)))

(assert (=> b!6653812 (= res!2726623 (not (isEmpty!38032 (tail!12558 (ite c!1227941 lt!2426048 (ite c!1227938 (_1!36797 lt!2426064) call!589241))))))))

(assert (= (and d!2085093 c!1228412) b!6653805))

(assert (= (and d!2085093 (not c!1228412)) b!6653799))

(assert (= (and d!2085093 c!1228413) b!6653802))

(assert (= (and d!2085093 (not c!1228413)) b!6653803))

(assert (= (and b!6653803 c!1228411) b!6653801))

(assert (= (and b!6653803 (not c!1228411)) b!6653804))

(assert (= (and b!6653804 (not res!2726620)) b!6653806))

(assert (= (and b!6653806 res!2726622) b!6653811))

(assert (= (and b!6653811 res!2726621) b!6653809))

(assert (= (and b!6653809 res!2726624) b!6653810))

(assert (= (and b!6653806 (not res!2726619)) b!6653807))

(assert (= (and b!6653807 res!2726618) b!6653808))

(assert (= (and b!6653808 (not res!2726625)) b!6653812))

(assert (= (and b!6653812 (not res!2726623)) b!6653800))

(assert (= (or b!6653802 b!6653808 b!6653811) bm!589583))

(declare-fun m!7420610 () Bool)

(assert (=> d!2085093 m!7420610))

(declare-fun m!7420612 () Bool)

(assert (=> d!2085093 m!7420612))

(declare-fun m!7420614 () Bool)

(assert (=> b!6653805 m!7420614))

(declare-fun m!7420616 () Bool)

(assert (=> b!6653799 m!7420616))

(assert (=> b!6653799 m!7420616))

(declare-fun m!7420618 () Bool)

(assert (=> b!6653799 m!7420618))

(declare-fun m!7420620 () Bool)

(assert (=> b!6653799 m!7420620))

(assert (=> b!6653799 m!7420618))

(assert (=> b!6653799 m!7420620))

(declare-fun m!7420622 () Bool)

(assert (=> b!6653799 m!7420622))

(assert (=> b!6653810 m!7420616))

(assert (=> b!6653812 m!7420620))

(assert (=> b!6653812 m!7420620))

(declare-fun m!7420624 () Bool)

(assert (=> b!6653812 m!7420624))

(assert (=> b!6653800 m!7420616))

(assert (=> b!6653809 m!7420620))

(assert (=> b!6653809 m!7420620))

(assert (=> b!6653809 m!7420624))

(assert (=> bm!589583 m!7420610))

(assert (=> bm!589321 d!2085093))

(declare-fun condSetEmpty!45471 () Bool)

(assert (=> setNonEmpty!45465 (= condSetEmpty!45471 (= setRest!45465 ((as const (Array Context!11798 Bool)) false)))))

(declare-fun setRes!45471 () Bool)

(assert (=> setNonEmpty!45465 (= tp!1830923 setRes!45471)))

(declare-fun setIsEmpty!45471 () Bool)

(assert (=> setIsEmpty!45471 setRes!45471))

(declare-fun e!4023144 () Bool)

(declare-fun setElem!45471 () Context!11798)

(declare-fun tp!1830989 () Bool)

(declare-fun setNonEmpty!45471 () Bool)

(assert (=> setNonEmpty!45471 (= setRes!45471 (and tp!1830989 (inv!84534 setElem!45471) e!4023144))))

(declare-fun setRest!45471 () (InoxSet Context!11798))

(assert (=> setNonEmpty!45471 (= setRest!45465 ((_ map or) (store ((as const (Array Context!11798 Bool)) false) setElem!45471 true) setRest!45471))))

(declare-fun b!6653817 () Bool)

(declare-fun tp!1830988 () Bool)

(assert (=> b!6653817 (= e!4023144 tp!1830988)))

(assert (= (and setNonEmpty!45465 condSetEmpty!45471) setIsEmpty!45471))

(assert (= (and setNonEmpty!45465 (not condSetEmpty!45471)) setNonEmpty!45471))

(assert (= setNonEmpty!45471 b!6653817))

(declare-fun m!7420626 () Bool)

(assert (=> setNonEmpty!45471 m!7420626))

(declare-fun b!6653828 () Bool)

(declare-fun e!4023147 () Bool)

(assert (=> b!6653828 (= e!4023147 tp_is_empty!42283)))

(declare-fun b!6653830 () Bool)

(declare-fun tp!1831004 () Bool)

(assert (=> b!6653830 (= e!4023147 tp!1831004)))

(assert (=> b!6652232 (= tp!1830919 e!4023147)))

(declare-fun b!6653829 () Bool)

(declare-fun tp!1831001 () Bool)

(declare-fun tp!1831000 () Bool)

(assert (=> b!6653829 (= e!4023147 (and tp!1831001 tp!1831000))))

(declare-fun b!6653831 () Bool)

(declare-fun tp!1831003 () Bool)

(declare-fun tp!1831002 () Bool)

(assert (=> b!6653831 (= e!4023147 (and tp!1831003 tp!1831002))))

(assert (= (and b!6652232 ((_ is ElementMatch!16515) (regOne!33542 r!7292))) b!6653828))

(assert (= (and b!6652232 ((_ is Concat!25360) (regOne!33542 r!7292))) b!6653829))

(assert (= (and b!6652232 ((_ is Star!16515) (regOne!33542 r!7292))) b!6653830))

(assert (= (and b!6652232 ((_ is Union!16515) (regOne!33542 r!7292))) b!6653831))

(declare-fun b!6653832 () Bool)

(declare-fun e!4023148 () Bool)

(assert (=> b!6653832 (= e!4023148 tp_is_empty!42283)))

(declare-fun b!6653834 () Bool)

(declare-fun tp!1831009 () Bool)

(assert (=> b!6653834 (= e!4023148 tp!1831009)))

(assert (=> b!6652232 (= tp!1830924 e!4023148)))

(declare-fun b!6653833 () Bool)

(declare-fun tp!1831006 () Bool)

(declare-fun tp!1831005 () Bool)

(assert (=> b!6653833 (= e!4023148 (and tp!1831006 tp!1831005))))

(declare-fun b!6653835 () Bool)

(declare-fun tp!1831008 () Bool)

(declare-fun tp!1831007 () Bool)

(assert (=> b!6653835 (= e!4023148 (and tp!1831008 tp!1831007))))

(assert (= (and b!6652232 ((_ is ElementMatch!16515) (regTwo!33542 r!7292))) b!6653832))

(assert (= (and b!6652232 ((_ is Concat!25360) (regTwo!33542 r!7292))) b!6653833))

(assert (= (and b!6652232 ((_ is Star!16515) (regTwo!33542 r!7292))) b!6653834))

(assert (= (and b!6652232 ((_ is Union!16515) (regTwo!33542 r!7292))) b!6653835))

(declare-fun b!6653840 () Bool)

(declare-fun e!4023151 () Bool)

(declare-fun tp!1831014 () Bool)

(declare-fun tp!1831015 () Bool)

(assert (=> b!6653840 (= e!4023151 (and tp!1831014 tp!1831015))))

(assert (=> b!6652248 (= tp!1830918 e!4023151)))

(assert (= (and b!6652248 ((_ is Cons!65721) (exprs!6399 setElem!45465))) b!6653840))

(declare-fun b!6653848 () Bool)

(declare-fun e!4023157 () Bool)

(declare-fun tp!1831020 () Bool)

(assert (=> b!6653848 (= e!4023157 tp!1831020)))

(declare-fun e!4023156 () Bool)

(declare-fun tp!1831021 () Bool)

(declare-fun b!6653847 () Bool)

(assert (=> b!6653847 (= e!4023156 (and (inv!84534 (h!72170 (t!379515 zl!343))) e!4023157 tp!1831021))))

(assert (=> b!6652198 (= tp!1830917 e!4023156)))

(assert (= b!6653847 b!6653848))

(assert (= (and b!6652198 ((_ is Cons!65722) (t!379515 zl!343))) b!6653847))

(declare-fun m!7420628 () Bool)

(assert (=> b!6653847 m!7420628))

(declare-fun b!6653849 () Bool)

(declare-fun e!4023158 () Bool)

(assert (=> b!6653849 (= e!4023158 tp_is_empty!42283)))

(declare-fun b!6653851 () Bool)

(declare-fun tp!1831026 () Bool)

(assert (=> b!6653851 (= e!4023158 tp!1831026)))

(assert (=> b!6652256 (= tp!1830922 e!4023158)))

(declare-fun b!6653850 () Bool)

(declare-fun tp!1831023 () Bool)

(declare-fun tp!1831022 () Bool)

(assert (=> b!6653850 (= e!4023158 (and tp!1831023 tp!1831022))))

(declare-fun b!6653852 () Bool)

(declare-fun tp!1831025 () Bool)

(declare-fun tp!1831024 () Bool)

(assert (=> b!6653852 (= e!4023158 (and tp!1831025 tp!1831024))))

(assert (= (and b!6652256 ((_ is ElementMatch!16515) (regOne!33543 r!7292))) b!6653849))

(assert (= (and b!6652256 ((_ is Concat!25360) (regOne!33543 r!7292))) b!6653850))

(assert (= (and b!6652256 ((_ is Star!16515) (regOne!33543 r!7292))) b!6653851))

(assert (= (and b!6652256 ((_ is Union!16515) (regOne!33543 r!7292))) b!6653852))

(declare-fun b!6653853 () Bool)

(declare-fun e!4023159 () Bool)

(assert (=> b!6653853 (= e!4023159 tp_is_empty!42283)))

(declare-fun b!6653855 () Bool)

(declare-fun tp!1831031 () Bool)

(assert (=> b!6653855 (= e!4023159 tp!1831031)))

(assert (=> b!6652256 (= tp!1830920 e!4023159)))

(declare-fun b!6653854 () Bool)

(declare-fun tp!1831028 () Bool)

(declare-fun tp!1831027 () Bool)

(assert (=> b!6653854 (= e!4023159 (and tp!1831028 tp!1831027))))

(declare-fun b!6653856 () Bool)

(declare-fun tp!1831030 () Bool)

(declare-fun tp!1831029 () Bool)

(assert (=> b!6653856 (= e!4023159 (and tp!1831030 tp!1831029))))

(assert (= (and b!6652256 ((_ is ElementMatch!16515) (regTwo!33543 r!7292))) b!6653853))

(assert (= (and b!6652256 ((_ is Concat!25360) (regTwo!33543 r!7292))) b!6653854))

(assert (= (and b!6652256 ((_ is Star!16515) (regTwo!33543 r!7292))) b!6653855))

(assert (= (and b!6652256 ((_ is Union!16515) (regTwo!33543 r!7292))) b!6653856))

(declare-fun b!6653857 () Bool)

(declare-fun e!4023160 () Bool)

(declare-fun tp!1831032 () Bool)

(declare-fun tp!1831033 () Bool)

(assert (=> b!6653857 (= e!4023160 (and tp!1831032 tp!1831033))))

(assert (=> b!6652200 (= tp!1830916 e!4023160)))

(assert (= (and b!6652200 ((_ is Cons!65721) (exprs!6399 (h!72170 zl!343)))) b!6653857))

(declare-fun b!6653858 () Bool)

(declare-fun e!4023161 () Bool)

(assert (=> b!6653858 (= e!4023161 tp_is_empty!42283)))

(declare-fun b!6653860 () Bool)

(declare-fun tp!1831038 () Bool)

(assert (=> b!6653860 (= e!4023161 tp!1831038)))

(assert (=> b!6652246 (= tp!1830921 e!4023161)))

(declare-fun b!6653859 () Bool)

(declare-fun tp!1831035 () Bool)

(declare-fun tp!1831034 () Bool)

(assert (=> b!6653859 (= e!4023161 (and tp!1831035 tp!1831034))))

(declare-fun b!6653861 () Bool)

(declare-fun tp!1831037 () Bool)

(declare-fun tp!1831036 () Bool)

(assert (=> b!6653861 (= e!4023161 (and tp!1831037 tp!1831036))))

(assert (= (and b!6652246 ((_ is ElementMatch!16515) (reg!16844 r!7292))) b!6653858))

(assert (= (and b!6652246 ((_ is Concat!25360) (reg!16844 r!7292))) b!6653859))

(assert (= (and b!6652246 ((_ is Star!16515) (reg!16844 r!7292))) b!6653860))

(assert (= (and b!6652246 ((_ is Union!16515) (reg!16844 r!7292))) b!6653861))

(declare-fun b!6653866 () Bool)

(declare-fun e!4023164 () Bool)

(declare-fun tp!1831041 () Bool)

(assert (=> b!6653866 (= e!4023164 (and tp_is_empty!42283 tp!1831041))))

(assert (=> b!6652202 (= tp!1830925 e!4023164)))

(assert (= (and b!6652202 ((_ is Cons!65720) (t!379513 s!2326))) b!6653866))

(declare-fun b_lambda!251215 () Bool)

(assert (= b_lambda!251191 (or b!6652224 b_lambda!251215)))

(declare-fun bs!1713613 () Bool)

(declare-fun d!2085095 () Bool)

(assert (= bs!1713613 (and d!2085095 b!6652224)))

(assert (=> bs!1713613 (= (dynLambda!26187 lambda!372738 (h!72170 zl!343)) (derivationStepZipperUp!1689 (h!72170 zl!343) (h!72168 s!2326)))))

(assert (=> bs!1713613 m!7418490))

(assert (=> d!2084757 d!2085095))

(declare-fun b_lambda!251217 () Bool)

(assert (= b_lambda!251203 (or b!6652222 b_lambda!251217)))

(declare-fun bs!1713614 () Bool)

(declare-fun d!2085097 () Bool)

(assert (= bs!1713614 (and d!2085097 b!6652222)))

(declare-fun lt!2426407 () Unit!159541)

(assert (=> bs!1713614 (= lt!2426407 (lemmaConcatPreservesForall!428 (exprs!6399 lt!2426056) lt!2425993 lambda!372754))))

(assert (=> bs!1713614 (= (dynLambda!26189 lambda!372753 lt!2426056) (Context!11799 (++!14673 (exprs!6399 lt!2426056) lt!2425993)))))

(declare-fun m!7420630 () Bool)

(assert (=> bs!1713614 m!7420630))

(declare-fun m!7420632 () Bool)

(assert (=> bs!1713614 m!7420632))

(assert (=> d!2084957 d!2085097))

(declare-fun b_lambda!251219 () Bool)

(assert (= b_lambda!251193 (or b!6652224 b_lambda!251219)))

(declare-fun bs!1713615 () Bool)

(declare-fun d!2085099 () Bool)

(assert (= bs!1713615 (and d!2085099 b!6652224)))

(assert (=> bs!1713615 (= (dynLambda!26187 lambda!372738 lt!2425966) (derivationStepZipperUp!1689 lt!2425966 (h!72168 s!2326)))))

(assert (=> bs!1713615 m!7418504))

(assert (=> d!2084765 d!2085099))

(check-sat (not bm!589567) (not b!6653095) (not b!6652885) (not b!6652637) (not b!6653099) (not b!6653799) (not d!2085037) (not d!2084969) (not bm!589503) (not bm!589504) (not b!6652856) (not b!6653496) (not b!6653793) (not bm!589473) (not bs!1713613) (not b!6653024) (not d!2084925) (not b!6653447) (not b!6653494) (not d!2085071) (not d!2085041) (not b!6653520) (not d!2084929) (not b!6653228) (not b!6653035) (not b!6653595) (not b!6653798) (not b!6653682) (not bm!589548) (not b!6653232) (not d!2085017) (not d!2084845) (not b!6652677) (not b!6652395) (not d!2084857) (not b!6652831) (not bm!589568) (not bm!589577) (not b!6653280) (not b!6653809) (not b!6652722) (not b!6652575) (not bm!589416) (not b!6652845) (not b!6653772) (not setNonEmpty!45471) (not b!6653517) (not b!6653157) (not b!6653744) (not b!6653675) (not d!2085021) (not b!6652582) (not b!6652413) (not b!6652733) (not b!6653267) (not b!6653448) (not b!6653674) (not b!6653783) (not b!6652737) (not b!6653093) (not d!2085073) (not d!2084613) (not d!2084993) (not d!2085059) (not bm!589576) (not d!2084639) (not b!6653643) (not b!6653224) (not b!6652412) (not bm!589546) (not bm!589465) (not b!6653270) (not d!2084779) (not b!6653681) (not b!6653642) (not b!6652825) (not d!2084767) (not b!6652577) (not b_lambda!251187) (not d!2085025) (not bm!589556) (not bm!589583) (not b!6653505) (not d!2084795) (not b!6653275) (not d!2085081) (not b!6653590) (not bm!589510) (not d!2084903) (not b_lambda!251215) (not d!2084997) (not b!6652392) (not b!6652851) (not d!2085079) (not b!6652576) (not b!6653746) (not b!6653812) (not b!6653198) (not bm!589439) (not d!2084757) (not b!6653158) (not b!6653449) (not bm!589466) (not d!2084791) (not bs!1713614) (not bm!589549) (not bm!589571) (not b!6653203) (not b!6653691) (not b!6653739) (not d!2084803) (not b!6653029) (not bs!1713615) (not b!6653502) (not d!2084843) (not d!2084599) (not b!6653539) (not b!6652381) (not b!6652727) (not b!6653639) (not b!6653040) (not b!6653091) (not d!2085087) (not bm!589469) (not d!2084783) (not d!2085091) (not d!2084643) (not b!6652393) (not b!6653018) (not b!6652368) (not b!6653851) (not d!2084603) (not bm!589555) (not d!2084837) (not d!2085039) (not b!6653794) (not b!6653027) (not b!6653230) (not b!6653782) (not b!6652855) (not b!6653199) (not b!6653298) (not b!6653310) (not b!6653817) (not d!2084859) (not b!6653513) (not b!6653745) (not b!6653855) (not d!2084799) (not b!6652449) (not d!2084901) (not b!6652581) (not d!2084589) (not bm!589542) (not b!6653276) (not bm!589417) (not bm!589506) (not b!6653796) (not b!6653777) (not bm!589554) (not d!2084855) (not b!6652378) (not b!6653830) (not d!2084931) (not d!2085023) (not d!2084763) (not b!6653747) (not bm!589409) (not b!6653047) (not d!2084801) (not b!6653303) (not b!6652678) (not b!6653847) (not b!6652580) (not d!2084587) (not b!6653840) (not b!6653289) (not b!6653781) (not bm!589410) (not b!6653451) (not b!6653404) (not d!2084975) (not b!6653409) (not b!6652379) (not b!6652738) (not bm!589420) (not b!6653854) (not b!6653294) (not d!2085005) (not b!6653279) (not b!6653450) (not b!6653776) (not bm!589419) (not d!2084645) (not b!6653771) (not b!6653859) (not b!6652675) (not d!2084841) (not bm!589553) (not d!2084657) (not d!2084973) (not d!2084797) (not b_lambda!251181) (not b!6653395) (not d!2085089) (not b!6652583) (not d!2084839) (not b!6653090) (not b!6653592) (not d!2084693) (not d!2084591) (not b!6653308) (not b!6653209) (not d!2084623) (not d!2084777) (not b!6653504) (not b_lambda!251219) (not b!6653856) (not b!6653533) (not d!2085061) (not d!2085077) (not d!2084835) (not d!2084873) (not bm!589408) (not b_lambda!251197) (not b!6653296) (not b!6653810) (not b!6652374) (not b!6653866) (not b!6653098) (not d!2084885) (not d!2085003) (not b!6653833) (not bm!589543) (not b!6653597) (not b!6653225) (not bm!589573) (not bm!589565) (not b!6653268) (not b!6653598) (not b!6653416) (not b!6653850) (not b!6653775) (not b!6653218) (not d!2084887) (not bm!589501) (not b!6653043) (not d!2085057) (not bm!589412) (not d!2084913) (not b!6652846) (not d!2084775) (not b!6653403) (not b_lambda!251217) (not bm!589413) (not d!2085083) (not b!6653039) (not b!6653599) (not b!6653805) (not b!6653042) (not d!2084769) (not b!6653331) (not b!6653291) (not b!6653780) (not d!2085027) (not bm!589438) (not d!2084865) (not bm!589541) (not b!6653030) (not b!6653501) (not b!6653246) (not b!6653187) (not b!6653767) (not b!6653835) (not b!6653518) (not b!6652382) (not b!6653773) (not b!6653053) (not b!6652383) (not b!6653217) (not b!6653679) (not b!6653101) (not b!6653507) (not d!2084627) (not b!6653002) (not bm!589570) (not d!2084699) (not d!2084955) (not b!6653497) (not d!2084683) (not b!6653019) (not d!2084961) (not b!6653229) (not b!6653860) (not b!6653028) (not bm!589436) (not b!6652728) (not b!6653852) (not b!6653766) (not bm!589509) (not b!6653271) (not d!2084697) (not b!6653231) (not d!2084753) (not bm!589575) (not b!6653431) (not b!6653277) (not b!6653591) (not b!6653414) (not d!2084765) (not d!2084833) (not bm!589508) (not d!2084687) (not b!6653834) (not b!6652436) (not b!6652884) (not b!6652676) (not b!6653023) (not b!6652437) (not d!2085093) (not b!6652388) (not d!2084965) (not b!6653297) (not bm!589383) (not b!6653676) (not bm!589507) (not b!6653413) (not d!2084821) (not b!6652671) tp_is_empty!42283 (not b!6653829) (not d!2084773) (not b!6653800) (not b!6653044) (not d!2085035) (not b!6653498) (not d!2084871) (not b!6653596) (not b!6653740) (not b!6653857) (not b!6653186) (not b!6653334) (not b!6653094) (not b!6653274) (not d!2084883) (not b_lambda!251195) (not d!2084967) (not d!2084583) (not b!6653508) (not b!6653340) (not b!6652369) (not d!2084957) (not bm!589415) (not bm!589544) (not d!2084789) (not b!6653797) (not b!6653640) (not d!2085019) (not d!2084819) (not b!6653741) (not b!6653680) (not d!2084691) (not d!2085075) (not d!2084597) (not d!2084971) (not b!6653831) (not bm!589382) (not b!6653770) (not b!6653307) (not d!2084759) (not b!6652740) (not b!6652672) (not b!6653848) (not d!2084927) (not d!2084621) (not b!6652858) (not b!6653861) (not b!6653688) (not b!6653100) (not b!6653690))
(check-sat)
