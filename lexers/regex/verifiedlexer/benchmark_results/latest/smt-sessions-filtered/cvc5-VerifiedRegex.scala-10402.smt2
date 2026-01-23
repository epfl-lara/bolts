; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!538490 () Bool)

(assert start!538490)

(declare-fun b!5106912 () Bool)

(declare-fun e!3185165 () Bool)

(declare-fun e!3185164 () Bool)

(assert (=> b!5106912 (= e!3185165 (not e!3185164))))

(declare-fun res!2173769 () Bool)

(assert (=> b!5106912 (=> res!2173769 e!3185164)))

(declare-datatypes ((C!28454 0))(
  ( (C!28455 (val!23879 Int)) )
))
(declare-datatypes ((Regex!14094 0))(
  ( (ElementMatch!14094 (c!877260 C!28454)) (Concat!22939 (regOne!28700 Regex!14094) (regTwo!28700 Regex!14094)) (EmptyExpr!14094) (Star!14094 (reg!14423 Regex!14094)) (EmptyLang!14094) (Union!14094 (regOne!28701 Regex!14094) (regTwo!28701 Regex!14094)) )
))
(declare-datatypes ((List!59058 0))(
  ( (Nil!58934) (Cons!58934 (h!65382 Regex!14094) (t!372059 List!59058)) )
))
(declare-datatypes ((Context!6956 0))(
  ( (Context!6957 (exprs!3978 List!59058)) )
))
(declare-fun baseZ!39 () (Set Context!6956))

(declare-datatypes ((List!59059 0))(
  ( (Nil!58935) (Cons!58935 (h!65383 C!28454) (t!372060 List!59059)) )
))
(declare-fun bigger!41 () List!59059)

(declare-fun matchZipper!762 ((Set Context!6956) List!59059) Bool)

(declare-fun getSuffix!3179 (List!59059 List!59059) List!59059)

(assert (=> b!5106912 (= res!2173769 (not (matchZipper!762 baseZ!39 (getSuffix!3179 bigger!41 Nil!58935))))))

(declare-fun isPrefix!5499 (List!59059 List!59059) Bool)

(assert (=> b!5106912 (isPrefix!5499 Nil!58935 bigger!41)))

(declare-datatypes ((Unit!149992 0))(
  ( (Unit!149993) )
))
(declare-fun lt!2102319 () Unit!149992)

(declare-fun input!5723 () List!59059)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!644 (List!59059 List!59059 List!59059) Unit!149992)

(assert (=> b!5106912 (= lt!2102319 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!644 bigger!41 Nil!58935 input!5723))))

(declare-fun b!5106913 () Bool)

(declare-fun res!2173770 () Bool)

(declare-fun e!3185161 () Bool)

(assert (=> b!5106913 (=> (not res!2173770) (not e!3185161))))

(assert (=> b!5106913 (= res!2173770 (isPrefix!5499 bigger!41 input!5723))))

(declare-fun b!5106914 () Bool)

(declare-fun e!3185158 () Bool)

(declare-fun tp_is_empty!37461 () Bool)

(declare-fun tp!1424587 () Bool)

(assert (=> b!5106914 (= e!3185158 (and tp_is_empty!37461 tp!1424587))))

(declare-fun e!3185159 () Bool)

(declare-fun setNonEmpty!29413 () Bool)

(declare-fun setRes!29413 () Bool)

(declare-fun tp!1424585 () Bool)

(declare-fun setElem!29413 () Context!6956)

(declare-fun inv!78417 (Context!6956) Bool)

(assert (=> setNonEmpty!29413 (= setRes!29413 (and tp!1424585 (inv!78417 setElem!29413) e!3185159))))

(declare-fun setRest!29413 () (Set Context!6956))

(assert (=> setNonEmpty!29413 (= baseZ!39 (set.union (set.insert setElem!29413 (as set.empty (Set Context!6956))) setRest!29413))))

(declare-fun b!5106915 () Bool)

(declare-fun e!3185160 () Bool)

(assert (=> b!5106915 (= e!3185160 e!3185165)))

(declare-fun res!2173771 () Bool)

(assert (=> b!5106915 (=> (not res!2173771) (not e!3185165))))

(declare-fun lt!2102322 () Int)

(declare-fun returnP!41 () List!59059)

(declare-datatypes ((tuple2!63574 0))(
  ( (tuple2!63575 (_1!35090 List!59059) (_2!35090 List!59059)) )
))
(declare-fun findLongestMatchInnerZipper!168 ((Set Context!6956) List!59059 Int List!59059 List!59059 Int) tuple2!63574)

(declare-fun size!39400 (List!59059) Int)

(assert (=> b!5106915 (= res!2173771 (= (_1!35090 (findLongestMatchInnerZipper!168 baseZ!39 Nil!58935 lt!2102322 input!5723 input!5723 (size!39400 input!5723))) returnP!41))))

(assert (=> b!5106915 (= lt!2102322 (size!39400 Nil!58935))))

(declare-fun b!5106916 () Bool)

(assert (=> b!5106916 (= e!3185161 e!3185160)))

(declare-fun res!2173775 () Bool)

(assert (=> b!5106916 (=> (not res!2173775) (not e!3185160))))

(declare-fun lt!2102320 () Int)

(declare-fun lt!2102321 () Int)

(assert (=> b!5106916 (= res!2173775 (>= lt!2102320 lt!2102321))))

(assert (=> b!5106916 (= lt!2102321 (size!39400 returnP!41))))

(assert (=> b!5106916 (= lt!2102320 (size!39400 bigger!41))))

(declare-fun b!5106917 () Bool)

(declare-fun derivationZipper!3 ((Set Context!6956) List!59059) (Set Context!6956))

(assert (=> b!5106917 (= e!3185164 (= (derivationZipper!3 baseZ!39 Nil!58935) baseZ!39))))

(declare-fun b!5106918 () Bool)

(declare-fun res!2173774 () Bool)

(assert (=> b!5106918 (=> (not res!2173774) (not e!3185165))))

(assert (=> b!5106918 (= res!2173774 (matchZipper!762 baseZ!39 bigger!41))))

(declare-fun b!5106919 () Bool)

(declare-fun e!3185162 () Bool)

(declare-fun tp!1424588 () Bool)

(assert (=> b!5106919 (= e!3185162 (and tp_is_empty!37461 tp!1424588))))

(declare-fun b!5106920 () Bool)

(declare-fun res!2173767 () Bool)

(assert (=> b!5106920 (=> (not res!2173767) (not e!3185165))))

(assert (=> b!5106920 (= res!2173767 (not (= lt!2102320 lt!2102321)))))

(declare-fun b!5106921 () Bool)

(declare-fun res!2173772 () Bool)

(assert (=> b!5106921 (=> (not res!2173772) (not e!3185165))))

(assert (=> b!5106921 (= res!2173772 (>= lt!2102320 lt!2102322))))

(declare-fun b!5106922 () Bool)

(declare-fun e!3185163 () Bool)

(declare-fun tp!1424586 () Bool)

(assert (=> b!5106922 (= e!3185163 (and tp_is_empty!37461 tp!1424586))))

(declare-fun setIsEmpty!29413 () Bool)

(assert (=> setIsEmpty!29413 setRes!29413))

(declare-fun res!2173768 () Bool)

(assert (=> start!538490 (=> (not res!2173768) (not e!3185161))))

(assert (=> start!538490 (= res!2173768 (isPrefix!5499 returnP!41 input!5723))))

(assert (=> start!538490 e!3185161))

(assert (=> start!538490 e!3185163))

(assert (=> start!538490 e!3185162))

(assert (=> start!538490 e!3185158))

(declare-fun condSetEmpty!29413 () Bool)

(assert (=> start!538490 (= condSetEmpty!29413 (= baseZ!39 (as set.empty (Set Context!6956))))))

(assert (=> start!538490 setRes!29413))

(declare-fun b!5106923 () Bool)

(declare-fun res!2173773 () Bool)

(assert (=> b!5106923 (=> (not res!2173773) (not e!3185165))))

(assert (=> b!5106923 (= res!2173773 (isPrefix!5499 Nil!58935 input!5723))))

(declare-fun b!5106924 () Bool)

(declare-fun tp!1424584 () Bool)

(assert (=> b!5106924 (= e!3185159 tp!1424584)))

(assert (= (and start!538490 res!2173768) b!5106913))

(assert (= (and b!5106913 res!2173770) b!5106916))

(assert (= (and b!5106916 res!2173775) b!5106915))

(assert (= (and b!5106915 res!2173771) b!5106920))

(assert (= (and b!5106920 res!2173767) b!5106918))

(assert (= (and b!5106918 res!2173774) b!5106923))

(assert (= (and b!5106923 res!2173773) b!5106921))

(assert (= (and b!5106921 res!2173772) b!5106912))

(assert (= (and b!5106912 (not res!2173769)) b!5106917))

(assert (= (and start!538490 (is-Cons!58935 returnP!41)) b!5106922))

(assert (= (and start!538490 (is-Cons!58935 input!5723)) b!5106919))

(assert (= (and start!538490 (is-Cons!58935 bigger!41)) b!5106914))

(assert (= (and start!538490 condSetEmpty!29413) setIsEmpty!29413))

(assert (= (and start!538490 (not condSetEmpty!29413)) setNonEmpty!29413))

(assert (= setNonEmpty!29413 b!5106924))

(declare-fun m!6164130 () Bool)

(assert (=> start!538490 m!6164130))

(declare-fun m!6164132 () Bool)

(assert (=> b!5106912 m!6164132))

(assert (=> b!5106912 m!6164132))

(declare-fun m!6164134 () Bool)

(assert (=> b!5106912 m!6164134))

(declare-fun m!6164136 () Bool)

(assert (=> b!5106912 m!6164136))

(declare-fun m!6164138 () Bool)

(assert (=> b!5106912 m!6164138))

(declare-fun m!6164140 () Bool)

(assert (=> b!5106916 m!6164140))

(declare-fun m!6164142 () Bool)

(assert (=> b!5106916 m!6164142))

(declare-fun m!6164144 () Bool)

(assert (=> b!5106915 m!6164144))

(assert (=> b!5106915 m!6164144))

(declare-fun m!6164146 () Bool)

(assert (=> b!5106915 m!6164146))

(declare-fun m!6164148 () Bool)

(assert (=> b!5106915 m!6164148))

(declare-fun m!6164150 () Bool)

(assert (=> b!5106917 m!6164150))

(declare-fun m!6164152 () Bool)

(assert (=> b!5106913 m!6164152))

(declare-fun m!6164154 () Bool)

(assert (=> b!5106918 m!6164154))

(declare-fun m!6164156 () Bool)

(assert (=> b!5106923 m!6164156))

(declare-fun m!6164158 () Bool)

(assert (=> setNonEmpty!29413 m!6164158))

(push 1)

(assert tp_is_empty!37461)

(assert (not b!5106916))

(assert (not b!5106918))

(assert (not b!5106923))

(assert (not b!5106913))

(assert (not b!5106912))

(assert (not start!538490))

(assert (not b!5106917))

(assert (not b!5106914))

(assert (not b!5106922))

(assert (not b!5106919))

(assert (not setNonEmpty!29413))

(assert (not b!5106924))

(assert (not b!5106915))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1650829 () Bool)

(declare-fun c!877266 () Bool)

(declare-fun isEmpty!31831 (List!59059) Bool)

(assert (=> d!1650829 (= c!877266 (isEmpty!31831 (getSuffix!3179 bigger!41 Nil!58935)))))

(declare-fun e!3185194 () Bool)

(assert (=> d!1650829 (= (matchZipper!762 baseZ!39 (getSuffix!3179 bigger!41 Nil!58935)) e!3185194)))

(declare-fun b!5106972 () Bool)

(declare-fun nullableZipper!973 ((Set Context!6956)) Bool)

(assert (=> b!5106972 (= e!3185194 (nullableZipper!973 baseZ!39))))

(declare-fun b!5106973 () Bool)

(declare-fun derivationStepZipper!761 ((Set Context!6956) C!28454) (Set Context!6956))

(declare-fun head!10850 (List!59059) C!28454)

(declare-fun tail!10005 (List!59059) List!59059)

(assert (=> b!5106973 (= e!3185194 (matchZipper!762 (derivationStepZipper!761 baseZ!39 (head!10850 (getSuffix!3179 bigger!41 Nil!58935))) (tail!10005 (getSuffix!3179 bigger!41 Nil!58935))))))

(assert (= (and d!1650829 c!877266) b!5106972))

(assert (= (and d!1650829 (not c!877266)) b!5106973))

(assert (=> d!1650829 m!6164132))

(declare-fun m!6164190 () Bool)

(assert (=> d!1650829 m!6164190))

(declare-fun m!6164192 () Bool)

(assert (=> b!5106972 m!6164192))

(assert (=> b!5106973 m!6164132))

(declare-fun m!6164194 () Bool)

(assert (=> b!5106973 m!6164194))

(assert (=> b!5106973 m!6164194))

(declare-fun m!6164196 () Bool)

(assert (=> b!5106973 m!6164196))

(assert (=> b!5106973 m!6164132))

(declare-fun m!6164198 () Bool)

(assert (=> b!5106973 m!6164198))

(assert (=> b!5106973 m!6164196))

(assert (=> b!5106973 m!6164198))

(declare-fun m!6164204 () Bool)

(assert (=> b!5106973 m!6164204))

(assert (=> b!5106912 d!1650829))

(declare-fun d!1650831 () Bool)

(declare-fun lt!2102339 () List!59059)

(declare-fun ++!12939 (List!59059 List!59059) List!59059)

(assert (=> d!1650831 (= (++!12939 Nil!58935 lt!2102339) bigger!41)))

(declare-fun e!3185200 () List!59059)

(assert (=> d!1650831 (= lt!2102339 e!3185200)))

(declare-fun c!877272 () Bool)

(assert (=> d!1650831 (= c!877272 (is-Cons!58935 Nil!58935))))

(assert (=> d!1650831 (>= (size!39400 bigger!41) (size!39400 Nil!58935))))

(assert (=> d!1650831 (= (getSuffix!3179 bigger!41 Nil!58935) lt!2102339)))

(declare-fun b!5106984 () Bool)

(assert (=> b!5106984 (= e!3185200 (getSuffix!3179 (tail!10005 bigger!41) (t!372060 Nil!58935)))))

(declare-fun b!5106985 () Bool)

(assert (=> b!5106985 (= e!3185200 bigger!41)))

(assert (= (and d!1650831 c!877272) b!5106984))

(assert (= (and d!1650831 (not c!877272)) b!5106985))

(declare-fun m!6164214 () Bool)

(assert (=> d!1650831 m!6164214))

(assert (=> d!1650831 m!6164142))

(assert (=> d!1650831 m!6164148))

(declare-fun m!6164216 () Bool)

(assert (=> b!5106984 m!6164216))

(assert (=> b!5106984 m!6164216))

(declare-fun m!6164218 () Bool)

(assert (=> b!5106984 m!6164218))

(assert (=> b!5106912 d!1650831))

(declare-fun b!5107004 () Bool)

(declare-fun e!3185215 () Bool)

(declare-fun e!3185216 () Bool)

(assert (=> b!5107004 (= e!3185215 e!3185216)))

(declare-fun res!2173820 () Bool)

(assert (=> b!5107004 (=> (not res!2173820) (not e!3185216))))

(assert (=> b!5107004 (= res!2173820 (not (is-Nil!58935 bigger!41)))))

(declare-fun b!5107006 () Bool)

(assert (=> b!5107006 (= e!3185216 (isPrefix!5499 (tail!10005 Nil!58935) (tail!10005 bigger!41)))))

(declare-fun d!1650835 () Bool)

(declare-fun e!3185214 () Bool)

(assert (=> d!1650835 e!3185214))

(declare-fun res!2173822 () Bool)

(assert (=> d!1650835 (=> res!2173822 e!3185214)))

(declare-fun lt!2102345 () Bool)

(assert (=> d!1650835 (= res!2173822 (not lt!2102345))))

(assert (=> d!1650835 (= lt!2102345 e!3185215)))

(declare-fun res!2173819 () Bool)

(assert (=> d!1650835 (=> res!2173819 e!3185215)))

(assert (=> d!1650835 (= res!2173819 (is-Nil!58935 Nil!58935))))

(assert (=> d!1650835 (= (isPrefix!5499 Nil!58935 bigger!41) lt!2102345)))

(declare-fun b!5107007 () Bool)

(assert (=> b!5107007 (= e!3185214 (>= (size!39400 bigger!41) (size!39400 Nil!58935)))))

(declare-fun b!5107005 () Bool)

(declare-fun res!2173821 () Bool)

(assert (=> b!5107005 (=> (not res!2173821) (not e!3185216))))

(assert (=> b!5107005 (= res!2173821 (= (head!10850 Nil!58935) (head!10850 bigger!41)))))

(assert (= (and d!1650835 (not res!2173819)) b!5107004))

(assert (= (and b!5107004 res!2173820) b!5107005))

(assert (= (and b!5107005 res!2173821) b!5107006))

(assert (= (and d!1650835 (not res!2173822)) b!5107007))

(declare-fun m!6164226 () Bool)

(assert (=> b!5107006 m!6164226))

(assert (=> b!5107006 m!6164216))

(assert (=> b!5107006 m!6164226))

(assert (=> b!5107006 m!6164216))

(declare-fun m!6164228 () Bool)

(assert (=> b!5107006 m!6164228))

(assert (=> b!5107007 m!6164142))

(assert (=> b!5107007 m!6164148))

(declare-fun m!6164230 () Bool)

(assert (=> b!5107005 m!6164230))

(declare-fun m!6164232 () Bool)

(assert (=> b!5107005 m!6164232))

(assert (=> b!5106912 d!1650835))

(declare-fun d!1650839 () Bool)

(assert (=> d!1650839 (isPrefix!5499 Nil!58935 bigger!41)))

(declare-fun lt!2102349 () Unit!149992)

(declare-fun choose!37415 (List!59059 List!59059 List!59059) Unit!149992)

(assert (=> d!1650839 (= lt!2102349 (choose!37415 bigger!41 Nil!58935 input!5723))))

(assert (=> d!1650839 (isPrefix!5499 bigger!41 input!5723)))

(assert (=> d!1650839 (= (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!644 bigger!41 Nil!58935 input!5723) lt!2102349)))

(declare-fun bs!1191660 () Bool)

(assert (= bs!1191660 d!1650839))

(assert (=> bs!1191660 m!6164136))

(declare-fun m!6164242 () Bool)

(assert (=> bs!1191660 m!6164242))

(assert (=> bs!1191660 m!6164152))

(assert (=> b!5106912 d!1650839))

(declare-fun b!5107012 () Bool)

(declare-fun e!3185221 () Bool)

(declare-fun e!3185222 () Bool)

(assert (=> b!5107012 (= e!3185221 e!3185222)))

(declare-fun res!2173828 () Bool)

(assert (=> b!5107012 (=> (not res!2173828) (not e!3185222))))

(assert (=> b!5107012 (= res!2173828 (not (is-Nil!58935 input!5723)))))

(declare-fun b!5107014 () Bool)

(assert (=> b!5107014 (= e!3185222 (isPrefix!5499 (tail!10005 bigger!41) (tail!10005 input!5723)))))

(declare-fun d!1650843 () Bool)

(declare-fun e!3185220 () Bool)

(assert (=> d!1650843 e!3185220))

(declare-fun res!2173830 () Bool)

(assert (=> d!1650843 (=> res!2173830 e!3185220)))

(declare-fun lt!2102350 () Bool)

(assert (=> d!1650843 (= res!2173830 (not lt!2102350))))

(assert (=> d!1650843 (= lt!2102350 e!3185221)))

(declare-fun res!2173827 () Bool)

(assert (=> d!1650843 (=> res!2173827 e!3185221)))

(assert (=> d!1650843 (= res!2173827 (is-Nil!58935 bigger!41))))

(assert (=> d!1650843 (= (isPrefix!5499 bigger!41 input!5723) lt!2102350)))

(declare-fun b!5107015 () Bool)

(assert (=> b!5107015 (= e!3185220 (>= (size!39400 input!5723) (size!39400 bigger!41)))))

(declare-fun b!5107013 () Bool)

(declare-fun res!2173829 () Bool)

(assert (=> b!5107013 (=> (not res!2173829) (not e!3185222))))

(assert (=> b!5107013 (= res!2173829 (= (head!10850 bigger!41) (head!10850 input!5723)))))

(assert (= (and d!1650843 (not res!2173827)) b!5107012))

(assert (= (and b!5107012 res!2173828) b!5107013))

(assert (= (and b!5107013 res!2173829) b!5107014))

(assert (= (and d!1650843 (not res!2173830)) b!5107015))

(assert (=> b!5107014 m!6164216))

(declare-fun m!6164244 () Bool)

(assert (=> b!5107014 m!6164244))

(assert (=> b!5107014 m!6164216))

(assert (=> b!5107014 m!6164244))

(declare-fun m!6164246 () Bool)

(assert (=> b!5107014 m!6164246))

(assert (=> b!5107015 m!6164144))

(assert (=> b!5107015 m!6164142))

(assert (=> b!5107013 m!6164232))

(declare-fun m!6164248 () Bool)

(assert (=> b!5107013 m!6164248))

(assert (=> b!5106913 d!1650843))

(declare-fun d!1650845 () Bool)

(declare-fun c!877276 () Bool)

(assert (=> d!1650845 (= c!877276 (is-Cons!58935 Nil!58935))))

(declare-fun e!3185225 () (Set Context!6956))

(assert (=> d!1650845 (= (derivationZipper!3 baseZ!39 Nil!58935) e!3185225)))

(declare-fun b!5107020 () Bool)

(assert (=> b!5107020 (= e!3185225 (derivationZipper!3 (derivationStepZipper!761 baseZ!39 (h!65383 Nil!58935)) (t!372060 Nil!58935)))))

(declare-fun b!5107021 () Bool)

(assert (=> b!5107021 (= e!3185225 baseZ!39)))

(assert (= (and d!1650845 c!877276) b!5107020))

(assert (= (and d!1650845 (not c!877276)) b!5107021))

(declare-fun m!6164252 () Bool)

(assert (=> b!5107020 m!6164252))

(assert (=> b!5107020 m!6164252))

(declare-fun m!6164254 () Bool)

(assert (=> b!5107020 m!6164254))

(assert (=> b!5106917 d!1650845))

(declare-fun b!5107050 () Bool)

(declare-fun e!3185247 () tuple2!63574)

(assert (=> b!5107050 (= e!3185247 (tuple2!63575 Nil!58935 Nil!58935))))

(declare-fun d!1650849 () Bool)

(declare-fun e!3185244 () Bool)

(assert (=> d!1650849 e!3185244))

(declare-fun res!2173836 () Bool)

(assert (=> d!1650849 (=> (not res!2173836) (not e!3185244))))

(declare-fun lt!2102428 () tuple2!63574)

(assert (=> d!1650849 (= res!2173836 (= (++!12939 (_1!35090 lt!2102428) (_2!35090 lt!2102428)) input!5723))))

(declare-fun e!3185246 () tuple2!63574)

(assert (=> d!1650849 (= lt!2102428 e!3185246)))

(declare-fun c!877292 () Bool)

(declare-fun lostCauseZipper!988 ((Set Context!6956)) Bool)

(assert (=> d!1650849 (= c!877292 (lostCauseZipper!988 baseZ!39))))

(declare-fun lt!2102413 () Unit!149992)

(declare-fun Unit!149996 () Unit!149992)

(assert (=> d!1650849 (= lt!2102413 Unit!149996)))

(assert (=> d!1650849 (= (getSuffix!3179 input!5723 Nil!58935) input!5723)))

(declare-fun lt!2102415 () Unit!149992)

(declare-fun lt!2102424 () Unit!149992)

(assert (=> d!1650849 (= lt!2102415 lt!2102424)))

(declare-fun lt!2102418 () List!59059)

(assert (=> d!1650849 (= input!5723 lt!2102418)))

(declare-fun lemmaSamePrefixThenSameSuffix!2595 (List!59059 List!59059 List!59059 List!59059 List!59059) Unit!149992)

(assert (=> d!1650849 (= lt!2102424 (lemmaSamePrefixThenSameSuffix!2595 Nil!58935 input!5723 Nil!58935 lt!2102418 input!5723))))

(assert (=> d!1650849 (= lt!2102418 (getSuffix!3179 input!5723 Nil!58935))))

(declare-fun lt!2102430 () Unit!149992)

(declare-fun lt!2102410 () Unit!149992)

(assert (=> d!1650849 (= lt!2102430 lt!2102410)))

(assert (=> d!1650849 (isPrefix!5499 Nil!58935 (++!12939 Nil!58935 input!5723))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3545 (List!59059 List!59059) Unit!149992)

(assert (=> d!1650849 (= lt!2102410 (lemmaConcatTwoListThenFirstIsPrefix!3545 Nil!58935 input!5723))))

(assert (=> d!1650849 (= (++!12939 Nil!58935 input!5723) input!5723)))

(assert (=> d!1650849 (= (findLongestMatchInnerZipper!168 baseZ!39 Nil!58935 lt!2102322 input!5723 input!5723 (size!39400 input!5723)) lt!2102428)))

(declare-fun b!5107051 () Bool)

(declare-fun e!3185248 () Bool)

(assert (=> b!5107051 (= e!3185248 (>= (size!39400 (_1!35090 lt!2102428)) (size!39400 Nil!58935)))))

(declare-fun b!5107052 () Bool)

(declare-fun c!877291 () Bool)

(declare-fun call!356020 () Bool)

(assert (=> b!5107052 (= c!877291 call!356020)))

(declare-fun lt!2102411 () Unit!149992)

(declare-fun lt!2102421 () Unit!149992)

(assert (=> b!5107052 (= lt!2102411 lt!2102421)))

(assert (=> b!5107052 (= input!5723 Nil!58935)))

(declare-fun call!356018 () Unit!149992)

(assert (=> b!5107052 (= lt!2102421 call!356018)))

(declare-fun lt!2102408 () Unit!149992)

(declare-fun lt!2102431 () Unit!149992)

(assert (=> b!5107052 (= lt!2102408 lt!2102431)))

(declare-fun call!356022 () Bool)

(assert (=> b!5107052 call!356022))

(declare-fun call!356023 () Unit!149992)

(assert (=> b!5107052 (= lt!2102431 call!356023)))

(declare-fun e!3185243 () tuple2!63574)

(assert (=> b!5107052 (= e!3185243 e!3185247)))

(declare-fun b!5107053 () Bool)

(declare-fun e!3185249 () tuple2!63574)

(declare-fun lt!2102407 () tuple2!63574)

(assert (=> b!5107053 (= e!3185249 lt!2102407)))

(declare-fun b!5107054 () Bool)

(assert (=> b!5107054 (= e!3185246 e!3185243)))

(declare-fun c!877290 () Bool)

(assert (=> b!5107054 (= c!877290 (= lt!2102322 (size!39400 input!5723)))))

(declare-fun b!5107055 () Bool)

(declare-fun e!3185242 () Unit!149992)

(declare-fun Unit!149997 () Unit!149992)

(assert (=> b!5107055 (= e!3185242 Unit!149997)))

(declare-fun b!5107056 () Bool)

(assert (=> b!5107056 (= e!3185247 (tuple2!63575 Nil!58935 input!5723))))

(declare-fun bm!356013 () Bool)

(declare-fun lemmaIsPrefixRefl!3694 (List!59059 List!59059) Unit!149992)

(assert (=> bm!356013 (= call!356023 (lemmaIsPrefixRefl!3694 input!5723 input!5723))))

(declare-fun b!5107057 () Bool)

(assert (=> b!5107057 (= e!3185249 (tuple2!63575 Nil!58935 input!5723))))

(declare-fun b!5107058 () Bool)

(assert (=> b!5107058 (= e!3185246 (tuple2!63575 Nil!58935 input!5723))))

(declare-fun b!5107059 () Bool)

(declare-fun c!877289 () Bool)

(assert (=> b!5107059 (= c!877289 call!356020)))

(declare-fun lt!2102425 () Unit!149992)

(declare-fun lt!2102429 () Unit!149992)

(assert (=> b!5107059 (= lt!2102425 lt!2102429)))

(declare-fun lt!2102417 () C!28454)

(declare-fun lt!2102422 () List!59059)

(assert (=> b!5107059 (= (++!12939 (++!12939 Nil!58935 (Cons!58935 lt!2102417 Nil!58935)) lt!2102422) input!5723)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1533 (List!59059 C!28454 List!59059 List!59059) Unit!149992)

(assert (=> b!5107059 (= lt!2102429 (lemmaMoveElementToOtherListKeepsConcatEq!1533 Nil!58935 lt!2102417 lt!2102422 input!5723))))

(assert (=> b!5107059 (= lt!2102422 (tail!10005 input!5723))))

(assert (=> b!5107059 (= lt!2102417 (head!10850 input!5723))))

(declare-fun lt!2102419 () Unit!149992)

(declare-fun lt!2102423 () Unit!149992)

(assert (=> b!5107059 (= lt!2102419 lt!2102423)))

(assert (=> b!5107059 (isPrefix!5499 (++!12939 Nil!58935 (Cons!58935 (head!10850 (getSuffix!3179 input!5723 Nil!58935)) Nil!58935)) input!5723)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!922 (List!59059 List!59059) Unit!149992)

(assert (=> b!5107059 (= lt!2102423 (lemmaAddHeadSuffixToPrefixStillPrefix!922 Nil!58935 input!5723))))

(declare-fun lt!2102420 () List!59059)

(assert (=> b!5107059 (= lt!2102420 (++!12939 Nil!58935 (Cons!58935 (head!10850 input!5723) Nil!58935)))))

(declare-fun lt!2102406 () Unit!149992)

(assert (=> b!5107059 (= lt!2102406 e!3185242)))

(declare-fun c!877294 () Bool)

(assert (=> b!5107059 (= c!877294 (= (size!39400 Nil!58935) (size!39400 input!5723)))))

(declare-fun lt!2102414 () Unit!149992)

(declare-fun lt!2102416 () Unit!149992)

(assert (=> b!5107059 (= lt!2102414 lt!2102416)))

(assert (=> b!5107059 (<= (size!39400 Nil!58935) (size!39400 input!5723))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!848 (List!59059 List!59059) Unit!149992)

(assert (=> b!5107059 (= lt!2102416 (lemmaIsPrefixThenSmallerEqSize!848 Nil!58935 input!5723))))

(declare-fun e!3185245 () tuple2!63574)

(assert (=> b!5107059 (= e!3185243 e!3185245)))

(declare-fun bm!356014 () Bool)

(declare-fun call!356024 () List!59059)

(assert (=> bm!356014 (= call!356024 (tail!10005 input!5723))))

(declare-fun bm!356015 () Bool)

(assert (=> bm!356015 (= call!356022 (isPrefix!5499 input!5723 input!5723))))

(declare-fun bm!356016 () Bool)

(assert (=> bm!356016 (= call!356020 (nullableZipper!973 baseZ!39))))

(declare-fun b!5107060 () Bool)

(assert (=> b!5107060 (= e!3185245 e!3185249)))

(declare-fun call!356025 () tuple2!63574)

(assert (=> b!5107060 (= lt!2102407 call!356025)))

(declare-fun c!877293 () Bool)

(assert (=> b!5107060 (= c!877293 (isEmpty!31831 (_1!35090 lt!2102407)))))

(declare-fun b!5107061 () Bool)

(declare-fun Unit!149998 () Unit!149992)

(assert (=> b!5107061 (= e!3185242 Unit!149998)))

(declare-fun lt!2102427 () Unit!149992)

(assert (=> b!5107061 (= lt!2102427 call!356023)))

(assert (=> b!5107061 call!356022))

(declare-fun lt!2102409 () Unit!149992)

(assert (=> b!5107061 (= lt!2102409 lt!2102427)))

(declare-fun lt!2102412 () Unit!149992)

(assert (=> b!5107061 (= lt!2102412 call!356018)))

(assert (=> b!5107061 (= input!5723 Nil!58935)))

(declare-fun lt!2102426 () Unit!149992)

(assert (=> b!5107061 (= lt!2102426 lt!2102412)))

(assert (=> b!5107061 false))

(declare-fun b!5107062 () Bool)

(assert (=> b!5107062 (= e!3185244 e!3185248)))

(declare-fun res!2173835 () Bool)

(assert (=> b!5107062 (=> res!2173835 e!3185248)))

(assert (=> b!5107062 (= res!2173835 (isEmpty!31831 (_1!35090 lt!2102428)))))

(declare-fun bm!356017 () Bool)

(declare-fun call!356019 () (Set Context!6956))

(declare-fun call!356021 () C!28454)

(assert (=> bm!356017 (= call!356019 (derivationStepZipper!761 baseZ!39 call!356021))))

(declare-fun bm!356018 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1324 (List!59059 List!59059 List!59059) Unit!149992)

(assert (=> bm!356018 (= call!356018 (lemmaIsPrefixSameLengthThenSameList!1324 input!5723 Nil!58935 input!5723))))

(declare-fun bm!356019 () Bool)

(assert (=> bm!356019 (= call!356025 (findLongestMatchInnerZipper!168 call!356019 lt!2102420 (+ lt!2102322 1) call!356024 input!5723 (size!39400 input!5723)))))

(declare-fun bm!356020 () Bool)

(assert (=> bm!356020 (= call!356021 (head!10850 input!5723))))

(declare-fun b!5107063 () Bool)

(assert (=> b!5107063 (= e!3185245 call!356025)))

(assert (= (and d!1650849 c!877292) b!5107058))

(assert (= (and d!1650849 (not c!877292)) b!5107054))

(assert (= (and b!5107054 c!877290) b!5107052))

(assert (= (and b!5107054 (not c!877290)) b!5107059))

(assert (= (and b!5107052 c!877291) b!5107050))

(assert (= (and b!5107052 (not c!877291)) b!5107056))

(assert (= (and b!5107059 c!877294) b!5107061))

(assert (= (and b!5107059 (not c!877294)) b!5107055))

(assert (= (and b!5107059 c!877289) b!5107060))

(assert (= (and b!5107059 (not c!877289)) b!5107063))

(assert (= (and b!5107060 c!877293) b!5107057))

(assert (= (and b!5107060 (not c!877293)) b!5107053))

(assert (= (or b!5107060 b!5107063) bm!356020))

(assert (= (or b!5107060 b!5107063) bm!356014))

(assert (= (or b!5107060 b!5107063) bm!356017))

(assert (= (or b!5107060 b!5107063) bm!356019))

(assert (= (or b!5107052 b!5107059) bm!356016))

(assert (= (or b!5107052 b!5107061) bm!356013))

(assert (= (or b!5107052 b!5107061) bm!356015))

(assert (= (or b!5107052 b!5107061) bm!356018))

(assert (= (and d!1650849 res!2173836) b!5107062))

(assert (= (and b!5107062 (not res!2173835)) b!5107051))

(assert (=> bm!356016 m!6164192))

(declare-fun m!6164256 () Bool)

(assert (=> b!5107051 m!6164256))

(assert (=> b!5107051 m!6164148))

(declare-fun m!6164258 () Bool)

(assert (=> bm!356018 m!6164258))

(declare-fun m!6164260 () Bool)

(assert (=> bm!356017 m!6164260))

(declare-fun m!6164262 () Bool)

(assert (=> b!5107060 m!6164262))

(declare-fun m!6164264 () Bool)

(assert (=> b!5107059 m!6164264))

(declare-fun m!6164266 () Bool)

(assert (=> b!5107059 m!6164266))

(declare-fun m!6164268 () Bool)

(assert (=> b!5107059 m!6164268))

(assert (=> b!5107059 m!6164244))

(assert (=> b!5107059 m!6164144))

(declare-fun m!6164270 () Bool)

(assert (=> b!5107059 m!6164270))

(assert (=> b!5107059 m!6164248))

(assert (=> b!5107059 m!6164148))

(declare-fun m!6164272 () Bool)

(assert (=> b!5107059 m!6164272))

(declare-fun m!6164274 () Bool)

(assert (=> b!5107059 m!6164274))

(declare-fun m!6164276 () Bool)

(assert (=> b!5107059 m!6164276))

(declare-fun m!6164278 () Bool)

(assert (=> b!5107059 m!6164278))

(declare-fun m!6164280 () Bool)

(assert (=> b!5107059 m!6164280))

(assert (=> b!5107059 m!6164264))

(declare-fun m!6164282 () Bool)

(assert (=> b!5107059 m!6164282))

(assert (=> b!5107059 m!6164276))

(assert (=> b!5107059 m!6164272))

(assert (=> bm!356020 m!6164248))

(declare-fun m!6164284 () Bool)

(assert (=> b!5107062 m!6164284))

(assert (=> bm!356019 m!6164144))

(declare-fun m!6164286 () Bool)

(assert (=> bm!356019 m!6164286))

(declare-fun m!6164288 () Bool)

(assert (=> bm!356015 m!6164288))

(assert (=> bm!356014 m!6164244))

(declare-fun m!6164290 () Bool)

(assert (=> bm!356013 m!6164290))

(declare-fun m!6164292 () Bool)

(assert (=> d!1650849 m!6164292))

(declare-fun m!6164294 () Bool)

(assert (=> d!1650849 m!6164294))

(declare-fun m!6164296 () Bool)

(assert (=> d!1650849 m!6164296))

(declare-fun m!6164298 () Bool)

(assert (=> d!1650849 m!6164298))

(declare-fun m!6164300 () Bool)

(assert (=> d!1650849 m!6164300))

(assert (=> d!1650849 m!6164292))

(declare-fun m!6164302 () Bool)

(assert (=> d!1650849 m!6164302))

(assert (=> d!1650849 m!6164272))

(assert (=> b!5106915 d!1650849))

(declare-fun d!1650851 () Bool)

(declare-fun lt!2102434 () Int)

(assert (=> d!1650851 (>= lt!2102434 0)))

(declare-fun e!3185252 () Int)

(assert (=> d!1650851 (= lt!2102434 e!3185252)))

(declare-fun c!877297 () Bool)

(assert (=> d!1650851 (= c!877297 (is-Nil!58935 input!5723))))

(assert (=> d!1650851 (= (size!39400 input!5723) lt!2102434)))

(declare-fun b!5107068 () Bool)

(assert (=> b!5107068 (= e!3185252 0)))

(declare-fun b!5107069 () Bool)

(assert (=> b!5107069 (= e!3185252 (+ 1 (size!39400 (t!372060 input!5723))))))

(assert (= (and d!1650851 c!877297) b!5107068))

(assert (= (and d!1650851 (not c!877297)) b!5107069))

(declare-fun m!6164304 () Bool)

(assert (=> b!5107069 m!6164304))

(assert (=> b!5106915 d!1650851))

(declare-fun d!1650853 () Bool)

(declare-fun lt!2102435 () Int)

(assert (=> d!1650853 (>= lt!2102435 0)))

(declare-fun e!3185253 () Int)

(assert (=> d!1650853 (= lt!2102435 e!3185253)))

(declare-fun c!877298 () Bool)

(assert (=> d!1650853 (= c!877298 (is-Nil!58935 Nil!58935))))

(assert (=> d!1650853 (= (size!39400 Nil!58935) lt!2102435)))

(declare-fun b!5107070 () Bool)

(assert (=> b!5107070 (= e!3185253 0)))

(declare-fun b!5107071 () Bool)

(assert (=> b!5107071 (= e!3185253 (+ 1 (size!39400 (t!372060 Nil!58935))))))

(assert (= (and d!1650853 c!877298) b!5107070))

(assert (= (and d!1650853 (not c!877298)) b!5107071))

(declare-fun m!6164306 () Bool)

(assert (=> b!5107071 m!6164306))

(assert (=> b!5106915 d!1650853))

(declare-fun b!5107072 () Bool)

(declare-fun e!3185255 () Bool)

(declare-fun e!3185256 () Bool)

(assert (=> b!5107072 (= e!3185255 e!3185256)))

(declare-fun res!2173838 () Bool)

(assert (=> b!5107072 (=> (not res!2173838) (not e!3185256))))

(assert (=> b!5107072 (= res!2173838 (not (is-Nil!58935 input!5723)))))

(declare-fun b!5107074 () Bool)

(assert (=> b!5107074 (= e!3185256 (isPrefix!5499 (tail!10005 returnP!41) (tail!10005 input!5723)))))

(declare-fun d!1650855 () Bool)

(declare-fun e!3185254 () Bool)

(assert (=> d!1650855 e!3185254))

(declare-fun res!2173840 () Bool)

(assert (=> d!1650855 (=> res!2173840 e!3185254)))

(declare-fun lt!2102436 () Bool)

(assert (=> d!1650855 (= res!2173840 (not lt!2102436))))

(assert (=> d!1650855 (= lt!2102436 e!3185255)))

(declare-fun res!2173837 () Bool)

(assert (=> d!1650855 (=> res!2173837 e!3185255)))

(assert (=> d!1650855 (= res!2173837 (is-Nil!58935 returnP!41))))

(assert (=> d!1650855 (= (isPrefix!5499 returnP!41 input!5723) lt!2102436)))

(declare-fun b!5107075 () Bool)

(assert (=> b!5107075 (= e!3185254 (>= (size!39400 input!5723) (size!39400 returnP!41)))))

(declare-fun b!5107073 () Bool)

(declare-fun res!2173839 () Bool)

(assert (=> b!5107073 (=> (not res!2173839) (not e!3185256))))

(assert (=> b!5107073 (= res!2173839 (= (head!10850 returnP!41) (head!10850 input!5723)))))

(assert (= (and d!1650855 (not res!2173837)) b!5107072))

(assert (= (and b!5107072 res!2173838) b!5107073))

(assert (= (and b!5107073 res!2173839) b!5107074))

(assert (= (and d!1650855 (not res!2173840)) b!5107075))

(declare-fun m!6164308 () Bool)

(assert (=> b!5107074 m!6164308))

(assert (=> b!5107074 m!6164244))

(assert (=> b!5107074 m!6164308))

(assert (=> b!5107074 m!6164244))

(declare-fun m!6164310 () Bool)

(assert (=> b!5107074 m!6164310))

(assert (=> b!5107075 m!6164144))

(assert (=> b!5107075 m!6164140))

(declare-fun m!6164312 () Bool)

(assert (=> b!5107073 m!6164312))

(assert (=> b!5107073 m!6164248))

(assert (=> start!538490 d!1650855))

(declare-fun d!1650857 () Bool)

(declare-fun lt!2102437 () Int)

(assert (=> d!1650857 (>= lt!2102437 0)))

(declare-fun e!3185257 () Int)

(assert (=> d!1650857 (= lt!2102437 e!3185257)))

(declare-fun c!877299 () Bool)

(assert (=> d!1650857 (= c!877299 (is-Nil!58935 returnP!41))))

(assert (=> d!1650857 (= (size!39400 returnP!41) lt!2102437)))

(declare-fun b!5107076 () Bool)

(assert (=> b!5107076 (= e!3185257 0)))

(declare-fun b!5107077 () Bool)

(assert (=> b!5107077 (= e!3185257 (+ 1 (size!39400 (t!372060 returnP!41))))))

(assert (= (and d!1650857 c!877299) b!5107076))

(assert (= (and d!1650857 (not c!877299)) b!5107077))

(declare-fun m!6164314 () Bool)

(assert (=> b!5107077 m!6164314))

(assert (=> b!5106916 d!1650857))

(declare-fun d!1650859 () Bool)

(declare-fun lt!2102438 () Int)

(assert (=> d!1650859 (>= lt!2102438 0)))

(declare-fun e!3185258 () Int)

(assert (=> d!1650859 (= lt!2102438 e!3185258)))

(declare-fun c!877300 () Bool)

(assert (=> d!1650859 (= c!877300 (is-Nil!58935 bigger!41))))

(assert (=> d!1650859 (= (size!39400 bigger!41) lt!2102438)))

(declare-fun b!5107078 () Bool)

(assert (=> b!5107078 (= e!3185258 0)))

(declare-fun b!5107079 () Bool)

(assert (=> b!5107079 (= e!3185258 (+ 1 (size!39400 (t!372060 bigger!41))))))

(assert (= (and d!1650859 c!877300) b!5107078))

(assert (= (and d!1650859 (not c!877300)) b!5107079))

(declare-fun m!6164316 () Bool)

(assert (=> b!5107079 m!6164316))

(assert (=> b!5106916 d!1650859))

(declare-fun d!1650861 () Bool)

(declare-fun lambda!250008 () Int)

(declare-fun forall!13502 (List!59058 Int) Bool)

(assert (=> d!1650861 (= (inv!78417 setElem!29413) (forall!13502 (exprs!3978 setElem!29413) lambda!250008))))

(declare-fun bs!1191663 () Bool)

(assert (= bs!1191663 d!1650861))

(declare-fun m!6164348 () Bool)

(assert (=> bs!1191663 m!6164348))

(assert (=> setNonEmpty!29413 d!1650861))

(declare-fun d!1650879 () Bool)

(declare-fun c!877309 () Bool)

(assert (=> d!1650879 (= c!877309 (isEmpty!31831 bigger!41))))

(declare-fun e!3185276 () Bool)

(assert (=> d!1650879 (= (matchZipper!762 baseZ!39 bigger!41) e!3185276)))

(declare-fun b!5107108 () Bool)

(assert (=> b!5107108 (= e!3185276 (nullableZipper!973 baseZ!39))))

(declare-fun b!5107109 () Bool)

(assert (=> b!5107109 (= e!3185276 (matchZipper!762 (derivationStepZipper!761 baseZ!39 (head!10850 bigger!41)) (tail!10005 bigger!41)))))

(assert (= (and d!1650879 c!877309) b!5107108))

(assert (= (and d!1650879 (not c!877309)) b!5107109))

(declare-fun m!6164350 () Bool)

(assert (=> d!1650879 m!6164350))

(assert (=> b!5107108 m!6164192))

(assert (=> b!5107109 m!6164232))

(assert (=> b!5107109 m!6164232))

(declare-fun m!6164352 () Bool)

(assert (=> b!5107109 m!6164352))

(assert (=> b!5107109 m!6164216))

(assert (=> b!5107109 m!6164352))

(assert (=> b!5107109 m!6164216))

(declare-fun m!6164354 () Bool)

(assert (=> b!5107109 m!6164354))

(assert (=> b!5106918 d!1650879))

(declare-fun b!5107110 () Bool)

(declare-fun e!3185278 () Bool)

(declare-fun e!3185279 () Bool)

(assert (=> b!5107110 (= e!3185278 e!3185279)))

(declare-fun res!2173854 () Bool)

(assert (=> b!5107110 (=> (not res!2173854) (not e!3185279))))

(assert (=> b!5107110 (= res!2173854 (not (is-Nil!58935 input!5723)))))

(declare-fun b!5107112 () Bool)

(assert (=> b!5107112 (= e!3185279 (isPrefix!5499 (tail!10005 Nil!58935) (tail!10005 input!5723)))))

(declare-fun d!1650881 () Bool)

(declare-fun e!3185277 () Bool)

(assert (=> d!1650881 e!3185277))

(declare-fun res!2173856 () Bool)

(assert (=> d!1650881 (=> res!2173856 e!3185277)))

(declare-fun lt!2102446 () Bool)

(assert (=> d!1650881 (= res!2173856 (not lt!2102446))))

(assert (=> d!1650881 (= lt!2102446 e!3185278)))

(declare-fun res!2173853 () Bool)

(assert (=> d!1650881 (=> res!2173853 e!3185278)))

(assert (=> d!1650881 (= res!2173853 (is-Nil!58935 Nil!58935))))

(assert (=> d!1650881 (= (isPrefix!5499 Nil!58935 input!5723) lt!2102446)))

(declare-fun b!5107113 () Bool)

(assert (=> b!5107113 (= e!3185277 (>= (size!39400 input!5723) (size!39400 Nil!58935)))))

(declare-fun b!5107111 () Bool)

(declare-fun res!2173855 () Bool)

(assert (=> b!5107111 (=> (not res!2173855) (not e!3185279))))

(assert (=> b!5107111 (= res!2173855 (= (head!10850 Nil!58935) (head!10850 input!5723)))))

(assert (= (and d!1650881 (not res!2173853)) b!5107110))

(assert (= (and b!5107110 res!2173854) b!5107111))

(assert (= (and b!5107111 res!2173855) b!5107112))

(assert (= (and d!1650881 (not res!2173856)) b!5107113))

(assert (=> b!5107112 m!6164226))

(assert (=> b!5107112 m!6164244))

(assert (=> b!5107112 m!6164226))

(assert (=> b!5107112 m!6164244))

(declare-fun m!6164356 () Bool)

(assert (=> b!5107112 m!6164356))

(assert (=> b!5107113 m!6164144))

(assert (=> b!5107113 m!6164148))

(assert (=> b!5107111 m!6164230))

(assert (=> b!5107111 m!6164248))

(assert (=> b!5106923 d!1650881))

(declare-fun b!5107118 () Bool)

(declare-fun e!3185282 () Bool)

(declare-fun tp!1424606 () Bool)

(assert (=> b!5107118 (= e!3185282 (and tp_is_empty!37461 tp!1424606))))

(assert (=> b!5106922 (= tp!1424586 e!3185282)))

(assert (= (and b!5106922 (is-Cons!58935 (t!372060 returnP!41))) b!5107118))

(declare-fun condSetEmpty!29419 () Bool)

(assert (=> setNonEmpty!29413 (= condSetEmpty!29419 (= setRest!29413 (as set.empty (Set Context!6956))))))

(declare-fun setRes!29419 () Bool)

(assert (=> setNonEmpty!29413 (= tp!1424585 setRes!29419)))

(declare-fun setIsEmpty!29419 () Bool)

(assert (=> setIsEmpty!29419 setRes!29419))

(declare-fun setNonEmpty!29419 () Bool)

(declare-fun e!3185285 () Bool)

(declare-fun tp!1424612 () Bool)

(declare-fun setElem!29419 () Context!6956)

(assert (=> setNonEmpty!29419 (= setRes!29419 (and tp!1424612 (inv!78417 setElem!29419) e!3185285))))

(declare-fun setRest!29419 () (Set Context!6956))

(assert (=> setNonEmpty!29419 (= setRest!29413 (set.union (set.insert setElem!29419 (as set.empty (Set Context!6956))) setRest!29419))))

(declare-fun b!5107123 () Bool)

(declare-fun tp!1424611 () Bool)

(assert (=> b!5107123 (= e!3185285 tp!1424611)))

(assert (= (and setNonEmpty!29413 condSetEmpty!29419) setIsEmpty!29419))

(assert (= (and setNonEmpty!29413 (not condSetEmpty!29419)) setNonEmpty!29419))

(assert (= setNonEmpty!29419 b!5107123))

(declare-fun m!6164358 () Bool)

(assert (=> setNonEmpty!29419 m!6164358))

(declare-fun b!5107124 () Bool)

(declare-fun e!3185286 () Bool)

(declare-fun tp!1424613 () Bool)

(assert (=> b!5107124 (= e!3185286 (and tp_is_empty!37461 tp!1424613))))

(assert (=> b!5106919 (= tp!1424588 e!3185286)))

(assert (= (and b!5106919 (is-Cons!58935 (t!372060 input!5723))) b!5107124))

(declare-fun b!5107129 () Bool)

(declare-fun e!3185289 () Bool)

(declare-fun tp!1424618 () Bool)

(declare-fun tp!1424619 () Bool)

(assert (=> b!5107129 (= e!3185289 (and tp!1424618 tp!1424619))))

(assert (=> b!5106924 (= tp!1424584 e!3185289)))

(assert (= (and b!5106924 (is-Cons!58934 (exprs!3978 setElem!29413))) b!5107129))

(declare-fun b!5107130 () Bool)

(declare-fun e!3185290 () Bool)

(declare-fun tp!1424620 () Bool)

(assert (=> b!5107130 (= e!3185290 (and tp_is_empty!37461 tp!1424620))))

(assert (=> b!5106914 (= tp!1424587 e!3185290)))

(assert (= (and b!5106914 (is-Cons!58935 (t!372060 bigger!41))) b!5107130))

(push 1)

(assert (not bm!356017))

(assert (not b!5107006))

(assert (not bm!356014))

(assert (not b!5107015))

(assert (not b!5107130))

(assert (not setNonEmpty!29419))

(assert (not b!5107060))

(assert (not b!5107111))

(assert (not d!1650849))

(assert (not b!5107077))

(assert tp_is_empty!37461)

(assert (not b!5107113))

(assert (not d!1650831))

(assert (not bm!356020))

(assert (not b!5107014))

(assert (not b!5107129))

(assert (not b!5107069))

(assert (not b!5107071))

(assert (not b!5107108))

(assert (not bm!356019))

(assert (not b!5107109))

(assert (not bm!356015))

(assert (not d!1650839))

(assert (not b!5107074))

(assert (not d!1650861))

(assert (not b!5106984))

(assert (not b!5106972))

(assert (not b!5107123))

(assert (not b!5107124))

(assert (not b!5107112))

(assert (not b!5107079))

(assert (not b!5107013))

(assert (not b!5107059))

(assert (not bm!356018))

(assert (not b!5107020))

(assert (not bm!356013))

(assert (not d!1650879))

(assert (not b!5107073))

(assert (not b!5106973))

(assert (not b!5107062))

(assert (not b!5107051))

(assert (not b!5107005))

(assert (not b!5107075))

(assert (not b!5107007))

(assert (not bm!356016))

(assert (not b!5107118))

(assert (not d!1650829))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

