; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!695506 () Bool)

(assert start!695506)

(declare-fun b!7136986 () Bool)

(assert (=> b!7136986 true))

(declare-fun bs!1887685 () Bool)

(declare-fun b!7136988 () Bool)

(declare-fun b!7136984 () Bool)

(assert (= bs!1887685 (and b!7136988 b!7136984)))

(declare-fun lambda!433765 () Int)

(declare-fun lambda!433763 () Int)

(assert (=> bs!1887685 (not (= lambda!433765 lambda!433763))))

(declare-fun b!7136979 () Bool)

(declare-fun e!4289263 () Bool)

(declare-fun e!4289264 () Bool)

(assert (=> b!7136979 (= e!4289263 e!4289264)))

(declare-fun res!2912027 () Bool)

(assert (=> b!7136979 (=> res!2912027 e!4289264)))

(declare-datatypes ((C!36526 0))(
  ( (C!36527 (val!28211 Int)) )
))
(declare-datatypes ((Regex!18126 0))(
  ( (ElementMatch!18126 (c!1330969 C!36526)) (Concat!26971 (regOne!36764 Regex!18126) (regTwo!36764 Regex!18126)) (EmptyExpr!18126) (Star!18126 (reg!18455 Regex!18126)) (EmptyLang!18126) (Union!18126 (regOne!36765 Regex!18126) (regTwo!36765 Regex!18126)) )
))
(declare-fun lt!2565993 () Regex!18126)

(declare-fun lt!2565990 () Regex!18126)

(assert (=> b!7136979 (= res!2912027 (not (= lt!2565993 lt!2565990)))))

(declare-datatypes ((List!69330 0))(
  ( (Nil!69206) (Cons!69206 (h!75654 Regex!18126) (t!383347 List!69330)) )
))
(declare-datatypes ((Context!14240 0))(
  ( (Context!14241 (exprs!7620 List!69330)) )
))
(declare-fun lt!2565989 () Context!14240)

(declare-fun generalisedConcat!2321 (List!69330) Regex!18126)

(assert (=> b!7136979 (= lt!2565993 (generalisedConcat!2321 (exprs!7620 lt!2565989)))))

(declare-fun b!7136980 () Bool)

(declare-fun res!2912033 () Bool)

(assert (=> b!7136980 (=> res!2912033 e!4289264)))

(assert (=> b!7136980 (= res!2912033 (not (= lt!2565990 lt!2565993)))))

(declare-fun b!7136981 () Bool)

(declare-fun res!2912022 () Bool)

(declare-fun e!4289258 () Bool)

(assert (=> b!7136981 (=> res!2912022 e!4289258)))

(declare-fun lt!2565994 () List!69330)

(declare-fun exists!3867 (List!69330 Int) Bool)

(assert (=> b!7136981 (= res!2912022 (not (exists!3867 lt!2565994 lambda!433763)))))

(declare-fun b!7136982 () Bool)

(declare-fun e!4289261 () Bool)

(declare-fun e!4289260 () Bool)

(assert (=> b!7136982 (= e!4289261 e!4289260)))

(declare-fun res!2912025 () Bool)

(assert (=> b!7136982 (=> (not res!2912025) (not e!4289260))))

(declare-fun r!11483 () Regex!18126)

(declare-fun lt!2565991 () Regex!18126)

(assert (=> b!7136982 (= res!2912025 (= r!11483 lt!2565991))))

(declare-fun generalisedUnion!2631 (List!69330) Regex!18126)

(assert (=> b!7136982 (= lt!2565991 (generalisedUnion!2631 lt!2565994))))

(declare-datatypes ((List!69331 0))(
  ( (Nil!69207) (Cons!69207 (h!75655 Context!14240) (t!383348 List!69331)) )
))
(declare-fun lt!2565992 () List!69331)

(declare-fun unfocusZipperList!2167 (List!69331) List!69330)

(assert (=> b!7136982 (= lt!2565994 (unfocusZipperList!2167 lt!2565992))))

(declare-fun b!7136983 () Bool)

(declare-fun e!4289266 () Bool)

(assert (=> b!7136983 (= e!4289266 e!4289261)))

(declare-fun res!2912032 () Bool)

(assert (=> b!7136983 (=> (not res!2912032) (not e!4289261))))

(declare-fun unfocusZipper!2474 (List!69331) Regex!18126)

(assert (=> b!7136983 (= res!2912032 (= r!11483 (unfocusZipper!2474 lt!2565992)))))

(declare-fun z!3189 () (Set Context!14240))

(declare-fun toList!11157 ((Set Context!14240)) List!69331)

(assert (=> b!7136983 (= lt!2565992 (toList!11157 z!3189))))

(assert (=> b!7136984 (= e!4289260 (not e!4289258))))

(declare-fun res!2912034 () Bool)

(assert (=> b!7136984 (=> res!2912034 e!4289258)))

(declare-fun lt!2565988 () Bool)

(assert (=> b!7136984 (= res!2912034 (not (= lt!2565988 (exists!3867 lt!2565994 lambda!433763))))))

(assert (=> b!7136984 (= lt!2565988 (exists!3867 lt!2565994 lambda!433763))))

(declare-fun nullable!7646 (Regex!18126) Bool)

(assert (=> b!7136984 (= lt!2565988 (nullable!7646 lt!2565991))))

(declare-datatypes ((Unit!163111 0))(
  ( (Unit!163112) )
))
(declare-fun lt!2565995 () Unit!163111)

(declare-fun nullableGenUnionSpec!15 (Regex!18126 List!69330) Unit!163111)

(assert (=> b!7136984 (= lt!2565995 (nullableGenUnionSpec!15 lt!2565991 lt!2565994))))

(declare-fun b!7136985 () Bool)

(declare-fun e!4289262 () Bool)

(declare-fun tp!1967795 () Bool)

(declare-fun tp!1967793 () Bool)

(assert (=> b!7136985 (= e!4289262 (and tp!1967795 tp!1967793))))

(declare-fun e!4289259 () Bool)

(declare-fun e!4289257 () Bool)

(assert (=> b!7136986 (= e!4289259 e!4289257)))

(declare-fun res!2912035 () Bool)

(assert (=> b!7136986 (=> res!2912035 e!4289257)))

(declare-fun lambda!433764 () Int)

(declare-fun exists!3868 ((Set Context!14240) Int) Bool)

(assert (=> b!7136986 (= res!2912035 (not (exists!3868 z!3189 lambda!433764)))))

(declare-fun exists!3869 (List!69331 Int) Bool)

(assert (=> b!7136986 (exists!3869 lt!2565992 lambda!433764)))

(declare-fun lt!2565987 () Unit!163111)

(declare-fun lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!11 (List!69331 Regex!18126) Unit!163111)

(assert (=> b!7136986 (= lt!2565987 (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!11 lt!2565992 lt!2565990))))

(declare-fun b!7136987 () Bool)

(declare-fun tp!1967796 () Bool)

(declare-fun tp!1967792 () Bool)

(assert (=> b!7136987 (= e!4289262 (and tp!1967796 tp!1967792))))

(declare-fun res!2912026 () Bool)

(assert (=> b!7136988 (=> res!2912026 e!4289264)))

(declare-fun forall!16972 (List!69330 Int) Bool)

(assert (=> b!7136988 (= res!2912026 (not (forall!16972 (exprs!7620 lt!2565989) lambda!433765)))))

(declare-fun b!7136989 () Bool)

(assert (=> b!7136989 (= e!4289264 (forall!16972 (exprs!7620 lt!2565989) lambda!433765))))

(declare-fun b!7136990 () Bool)

(declare-fun res!2912028 () Bool)

(assert (=> b!7136990 (=> res!2912028 e!4289264)))

(assert (=> b!7136990 (= res!2912028 (not (nullable!7646 lt!2565993)))))

(declare-fun b!7136991 () Bool)

(declare-fun res!2912024 () Bool)

(assert (=> b!7136991 (=> res!2912024 e!4289258)))

(assert (=> b!7136991 (= res!2912024 (not lt!2565988))))

(declare-fun b!7136992 () Bool)

(declare-fun res!2912023 () Bool)

(assert (=> b!7136992 (=> res!2912023 e!4289259)))

(declare-fun contains!20568 (List!69330 Regex!18126) Bool)

(assert (=> b!7136992 (= res!2912023 (not (contains!20568 lt!2565994 lt!2565990)))))

(declare-fun b!7136978 () Bool)

(assert (=> b!7136978 (= e!4289257 e!4289263)))

(declare-fun res!2912030 () Bool)

(assert (=> b!7136978 (=> res!2912030 e!4289263)))

(assert (=> b!7136978 (= res!2912030 (not (set.member lt!2565989 z!3189)))))

(declare-fun getWitness!1883 ((Set Context!14240) Int) Context!14240)

(assert (=> b!7136978 (= lt!2565989 (getWitness!1883 z!3189 lambda!433764))))

(declare-fun res!2912031 () Bool)

(assert (=> start!695506 (=> (not res!2912031) (not e!4289266))))

(declare-fun validRegex!9293 (Regex!18126) Bool)

(assert (=> start!695506 (= res!2912031 (validRegex!9293 r!11483))))

(assert (=> start!695506 e!4289266))

(assert (=> start!695506 e!4289262))

(declare-fun condSetEmpty!52378 () Bool)

(assert (=> start!695506 (= condSetEmpty!52378 (= z!3189 (as set.empty (Set Context!14240))))))

(declare-fun setRes!52378 () Bool)

(assert (=> start!695506 setRes!52378))

(declare-fun setIsEmpty!52378 () Bool)

(assert (=> setIsEmpty!52378 setRes!52378))

(declare-fun b!7136993 () Bool)

(declare-fun tp_is_empty!45889 () Bool)

(assert (=> b!7136993 (= e!4289262 tp_is_empty!45889)))

(declare-fun b!7136994 () Bool)

(declare-fun tp!1967794 () Bool)

(assert (=> b!7136994 (= e!4289262 tp!1967794)))

(declare-fun b!7136995 () Bool)

(declare-fun e!4289265 () Bool)

(declare-fun tp!1967797 () Bool)

(assert (=> b!7136995 (= e!4289265 tp!1967797)))

(declare-fun b!7136996 () Bool)

(assert (=> b!7136996 (= e!4289258 e!4289259)))

(declare-fun res!2912029 () Bool)

(assert (=> b!7136996 (=> res!2912029 e!4289259)))

(assert (=> b!7136996 (= res!2912029 (not (nullable!7646 lt!2565990)))))

(declare-fun getWitness!1884 (List!69330 Int) Regex!18126)

(assert (=> b!7136996 (= lt!2565990 (getWitness!1884 lt!2565994 lambda!433763))))

(declare-fun tp!1967798 () Bool)

(declare-fun setElem!52378 () Context!14240)

(declare-fun setNonEmpty!52378 () Bool)

(declare-fun inv!88380 (Context!14240) Bool)

(assert (=> setNonEmpty!52378 (= setRes!52378 (and tp!1967798 (inv!88380 setElem!52378) e!4289265))))

(declare-fun setRest!52378 () (Set Context!14240))

(assert (=> setNonEmpty!52378 (= z!3189 (set.union (set.insert setElem!52378 (as set.empty (Set Context!14240))) setRest!52378))))

(assert (= (and start!695506 res!2912031) b!7136983))

(assert (= (and b!7136983 res!2912032) b!7136982))

(assert (= (and b!7136982 res!2912025) b!7136984))

(assert (= (and b!7136984 (not res!2912034)) b!7136991))

(assert (= (and b!7136991 (not res!2912024)) b!7136981))

(assert (= (and b!7136981 (not res!2912022)) b!7136996))

(assert (= (and b!7136996 (not res!2912029)) b!7136992))

(assert (= (and b!7136992 (not res!2912023)) b!7136986))

(assert (= (and b!7136986 (not res!2912035)) b!7136978))

(assert (= (and b!7136978 (not res!2912030)) b!7136979))

(assert (= (and b!7136979 (not res!2912027)) b!7136990))

(assert (= (and b!7136990 (not res!2912028)) b!7136988))

(assert (= (and b!7136988 (not res!2912026)) b!7136980))

(assert (= (and b!7136980 (not res!2912033)) b!7136989))

(assert (= (and start!695506 (is-ElementMatch!18126 r!11483)) b!7136993))

(assert (= (and start!695506 (is-Concat!26971 r!11483)) b!7136985))

(assert (= (and start!695506 (is-Star!18126 r!11483)) b!7136994))

(assert (= (and start!695506 (is-Union!18126 r!11483)) b!7136987))

(assert (= (and start!695506 condSetEmpty!52378) setIsEmpty!52378))

(assert (= (and start!695506 (not condSetEmpty!52378)) setNonEmpty!52378))

(assert (= setNonEmpty!52378 b!7136995))

(declare-fun m!7852886 () Bool)

(assert (=> b!7136990 m!7852886))

(declare-fun m!7852888 () Bool)

(assert (=> b!7136989 m!7852888))

(declare-fun m!7852890 () Bool)

(assert (=> setNonEmpty!52378 m!7852890))

(declare-fun m!7852892 () Bool)

(assert (=> b!7136983 m!7852892))

(declare-fun m!7852894 () Bool)

(assert (=> b!7136983 m!7852894))

(declare-fun m!7852896 () Bool)

(assert (=> b!7136979 m!7852896))

(declare-fun m!7852898 () Bool)

(assert (=> b!7136981 m!7852898))

(declare-fun m!7852900 () Bool)

(assert (=> start!695506 m!7852900))

(assert (=> b!7136984 m!7852898))

(assert (=> b!7136984 m!7852898))

(declare-fun m!7852902 () Bool)

(assert (=> b!7136984 m!7852902))

(declare-fun m!7852904 () Bool)

(assert (=> b!7136984 m!7852904))

(assert (=> b!7136988 m!7852888))

(declare-fun m!7852906 () Bool)

(assert (=> b!7136982 m!7852906))

(declare-fun m!7852908 () Bool)

(assert (=> b!7136982 m!7852908))

(declare-fun m!7852910 () Bool)

(assert (=> b!7136992 m!7852910))

(declare-fun m!7852912 () Bool)

(assert (=> b!7136978 m!7852912))

(declare-fun m!7852914 () Bool)

(assert (=> b!7136978 m!7852914))

(declare-fun m!7852916 () Bool)

(assert (=> b!7136996 m!7852916))

(declare-fun m!7852918 () Bool)

(assert (=> b!7136996 m!7852918))

(declare-fun m!7852920 () Bool)

(assert (=> b!7136986 m!7852920))

(declare-fun m!7852922 () Bool)

(assert (=> b!7136986 m!7852922))

(declare-fun m!7852924 () Bool)

(assert (=> b!7136986 m!7852924))

(push 1)

(assert (not setNonEmpty!52378))

(assert (not b!7136984))

(assert (not b!7136982))

(assert tp_is_empty!45889)

(assert (not b!7136987))

(assert (not b!7136981))

(assert (not b!7136988))

(assert (not b!7136985))

(assert (not start!695506))

(assert (not b!7136995))

(assert (not b!7136992))

(assert (not b!7136986))

(assert (not b!7136979))

(assert (not b!7136996))

(assert (not b!7136983))

(assert (not b!7136994))

(assert (not b!7136989))

(assert (not b!7136990))

(assert (not b!7136978))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

