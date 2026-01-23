; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!393814 () Bool)

(assert start!393814)

(declare-fun b!4142335 () Bool)

(declare-fun b_free!118035 () Bool)

(declare-fun b_next!118739 () Bool)

(assert (=> b!4142335 (= b_free!118035 (not b_next!118739))))

(declare-fun tp!1262714 () Bool)

(declare-fun b_and!321761 () Bool)

(assert (=> b!4142335 (= tp!1262714 b_and!321761)))

(declare-fun b_free!118037 () Bool)

(declare-fun b_next!118741 () Bool)

(assert (=> b!4142335 (= b_free!118037 (not b_next!118741))))

(declare-fun tp!1262713 () Bool)

(declare-fun b_and!321763 () Bool)

(assert (=> b!4142335 (= tp!1262713 b_and!321763)))

(declare-fun b!4142333 () Bool)

(declare-fun b_free!118039 () Bool)

(declare-fun b_next!118743 () Bool)

(assert (=> b!4142333 (= b_free!118039 (not b_next!118743))))

(declare-fun tp!1262712 () Bool)

(declare-fun b_and!321765 () Bool)

(assert (=> b!4142333 (= tp!1262712 b_and!321765)))

(declare-fun b_free!118041 () Bool)

(declare-fun b_next!118745 () Bool)

(assert (=> b!4142333 (= b_free!118041 (not b_next!118745))))

(declare-fun tp!1262710 () Bool)

(declare-fun b_and!321767 () Bool)

(assert (=> b!4142333 (= tp!1262710 b_and!321767)))

(declare-fun b!4142342 () Bool)

(declare-fun b_free!118043 () Bool)

(declare-fun b_next!118747 () Bool)

(assert (=> b!4142342 (= b_free!118043 (not b_next!118747))))

(declare-fun tp!1262708 () Bool)

(declare-fun b_and!321769 () Bool)

(assert (=> b!4142342 (= tp!1262708 b_and!321769)))

(declare-fun b_free!118045 () Bool)

(declare-fun b_next!118749 () Bool)

(assert (=> b!4142342 (= b_free!118045 (not b_next!118749))))

(declare-fun tp!1262706 () Bool)

(declare-fun b_and!321771 () Bool)

(assert (=> b!4142342 (= tp!1262706 b_and!321771)))

(declare-fun b!4142330 () Bool)

(declare-fun res!1694911 () Bool)

(declare-fun e!2570209 () Bool)

(assert (=> b!4142330 (=> res!1694911 e!2570209)))

(declare-datatypes ((C!24764 0))(
  ( (C!24765 (val!14492 Int)) )
))
(declare-datatypes ((List!45062 0))(
  ( (Nil!44938) (Cons!44938 (h!50358 C!24764) (t!342485 List!45062)) )
))
(declare-fun lt!1477412 () List!45062)

(declare-fun input!3238 () List!45062)

(declare-fun isPrefix!4319 (List!45062 List!45062) Bool)

(assert (=> b!4142330 (= res!1694911 (not (isPrefix!4319 lt!1477412 input!3238)))))

(declare-fun e!2570222 () Bool)

(declare-fun tp!1262705 () Bool)

(declare-fun b!4142331 () Bool)

(declare-fun e!2570212 () Bool)

(declare-datatypes ((List!45063 0))(
  ( (Nil!44939) (Cons!44939 (h!50359 (_ BitVec 16)) (t!342486 List!45063)) )
))
(declare-datatypes ((TokenValue!7614 0))(
  ( (FloatLiteralValue!15228 (text!53743 List!45063)) (TokenValueExt!7613 (__x!27445 Int)) (Broken!38070 (value!230972 List!45063)) (Object!7737) (End!7614) (Def!7614) (Underscore!7614) (Match!7614) (Else!7614) (Error!7614) (Case!7614) (If!7614) (Extends!7614) (Abstract!7614) (Class!7614) (Val!7614) (DelimiterValue!15228 (del!7674 List!45063)) (KeywordValue!7620 (value!230973 List!45063)) (CommentValue!15228 (value!230974 List!45063)) (WhitespaceValue!15228 (value!230975 List!45063)) (IndentationValue!7614 (value!230976 List!45063)) (String!51819) (Int32!7614) (Broken!38071 (value!230977 List!45063)) (Boolean!7615) (Unit!64234) (OperatorValue!7617 (op!7674 List!45063)) (IdentifierValue!15228 (value!230978 List!45063)) (IdentifierValue!15229 (value!230979 List!45063)) (WhitespaceValue!15229 (value!230980 List!45063)) (True!15228) (False!15228) (Broken!38072 (value!230981 List!45063)) (Broken!38073 (value!230982 List!45063)) (True!15229) (RightBrace!7614) (RightBracket!7614) (Colon!7614) (Null!7614) (Comma!7614) (LeftBracket!7614) (False!15229) (LeftBrace!7614) (ImaginaryLiteralValue!7614 (text!53744 List!45063)) (StringLiteralValue!22842 (value!230983 List!45063)) (EOFValue!7614 (value!230984 List!45063)) (IdentValue!7614 (value!230985 List!45063)) (DelimiterValue!15229 (value!230986 List!45063)) (DedentValue!7614 (value!230987 List!45063)) (NewLineValue!7614 (value!230988 List!45063)) (IntegerValue!22842 (value!230989 (_ BitVec 32)) (text!53745 List!45063)) (IntegerValue!22843 (value!230990 Int) (text!53746 List!45063)) (Times!7614) (Or!7614) (Equal!7614) (Minus!7614) (Broken!38074 (value!230991 List!45063)) (And!7614) (Div!7614) (LessEqual!7614) (Mod!7614) (Concat!19903) (Not!7614) (Plus!7614) (SpaceValue!7614 (value!230992 List!45063)) (IntegerValue!22844 (value!230993 Int) (text!53747 List!45063)) (StringLiteralValue!22843 (text!53748 List!45063)) (FloatLiteralValue!15229 (text!53749 List!45063)) (BytesLiteralValue!7614 (value!230994 List!45063)) (CommentValue!15229 (value!230995 List!45063)) (StringLiteralValue!22844 (value!230996 List!45063)) (ErrorTokenValue!7614 (msg!7675 List!45063)) )
))
(declare-datatypes ((IArray!27195 0))(
  ( (IArray!27196 (innerList!13655 List!45062)) )
))
(declare-datatypes ((Conc!13595 0))(
  ( (Node!13595 (left!33649 Conc!13595) (right!33979 Conc!13595) (csize!27420 Int) (cheight!13806 Int)) (Leaf!21002 (xs!16901 IArray!27195) (csize!27421 Int)) (Empty!13595) )
))
(declare-datatypes ((BalanceConc!26784 0))(
  ( (BalanceConc!26785 (c!709994 Conc!13595)) )
))
(declare-datatypes ((Regex!12289 0))(
  ( (ElementMatch!12289 (c!709995 C!24764)) (Concat!19904 (regOne!25090 Regex!12289) (regTwo!25090 Regex!12289)) (EmptyExpr!12289) (Star!12289 (reg!12618 Regex!12289)) (EmptyLang!12289) (Union!12289 (regOne!25091 Regex!12289) (regTwo!25091 Regex!12289)) )
))
(declare-datatypes ((String!51820 0))(
  ( (String!51821 (value!230997 String)) )
))
(declare-datatypes ((TokenValueInjection!14656 0))(
  ( (TokenValueInjection!14657 (toValue!10048 Int) (toChars!9907 Int)) )
))
(declare-datatypes ((Rule!14568 0))(
  ( (Rule!14569 (regex!7384 Regex!12289) (tag!8244 String!51820) (isSeparator!7384 Bool) (transformation!7384 TokenValueInjection!14656)) )
))
(declare-fun r!4008 () Rule!14568)

(declare-fun inv!59543 (String!51820) Bool)

(declare-fun inv!59545 (TokenValueInjection!14656) Bool)

(assert (=> b!4142331 (= e!2570222 (and tp!1262705 (inv!59543 (tag!8244 r!4008)) (inv!59545 (transformation!7384 r!4008)) e!2570212))))

(declare-fun b!4142332 () Bool)

(declare-fun e!2570221 () Bool)

(declare-fun e!2570211 () Bool)

(declare-fun tp!1262707 () Bool)

(assert (=> b!4142332 (= e!2570221 (and e!2570211 tp!1262707))))

(declare-fun e!2570223 () Bool)

(assert (=> b!4142333 (= e!2570223 (and tp!1262712 tp!1262710))))

(declare-fun b!4142334 () Bool)

(declare-fun res!1694912 () Bool)

(declare-fun e!2570213 () Bool)

(assert (=> b!4142334 (=> (not res!1694912) (not e!2570213))))

(declare-datatypes ((List!45064 0))(
  ( (Nil!44940) (Cons!44940 (h!50360 Rule!14568) (t!342487 List!45064)) )
))
(declare-fun rules!3756 () List!45064)

(declare-fun rBis!149 () Rule!14568)

(declare-fun getIndex!730 (List!45064 Rule!14568) Int)

(assert (=> b!4142334 (= res!1694912 (< (getIndex!730 rules!3756 rBis!149) (getIndex!730 rules!3756 r!4008)))))

(declare-fun e!2570225 () Bool)

(assert (=> b!4142335 (= e!2570225 (and tp!1262714 tp!1262713))))

(declare-fun b!4142336 () Bool)

(declare-fun e!2570217 () Bool)

(assert (=> b!4142336 (= e!2570217 e!2570213)))

(declare-fun res!1694913 () Bool)

(assert (=> b!4142336 (=> (not res!1694913) (not e!2570213))))

(declare-fun lt!1477419 () TokenValue!7614)

(declare-datatypes ((LexerInterface!6973 0))(
  ( (LexerInterfaceExt!6970 (__x!27446 Int)) (Lexer!6971) )
))
(declare-fun thiss!25645 () LexerInterface!6973)

(declare-fun lt!1477422 () Int)

(declare-fun p!2912 () List!45062)

(declare-datatypes ((Token!13698 0))(
  ( (Token!13699 (value!230998 TokenValue!7614) (rule!10498 Rule!14568) (size!33296 Int) (originalCharacters!7880 List!45062)) )
))
(declare-datatypes ((tuple2!43318 0))(
  ( (tuple2!43319 (_1!24793 Token!13698) (_2!24793 List!45062)) )
))
(declare-datatypes ((Option!9690 0))(
  ( (None!9689) (Some!9689 (v!40331 tuple2!43318)) )
))
(declare-fun maxPrefix!4163 (LexerInterface!6973 List!45064 List!45062) Option!9690)

(declare-fun getSuffix!2646 (List!45062 List!45062) List!45062)

(assert (=> b!4142336 (= res!1694913 (= (maxPrefix!4163 thiss!25645 rules!3756 input!3238) (Some!9689 (tuple2!43319 (Token!13699 lt!1477419 r!4008 lt!1477422 p!2912) (getSuffix!2646 input!3238 p!2912)))))))

(declare-fun size!33297 (List!45062) Int)

(assert (=> b!4142336 (= lt!1477422 (size!33297 p!2912))))

(declare-fun lt!1477417 () BalanceConc!26784)

(declare-fun apply!10457 (TokenValueInjection!14656 BalanceConc!26784) TokenValue!7614)

(assert (=> b!4142336 (= lt!1477419 (apply!10457 (transformation!7384 r!4008) lt!1477417))))

(declare-datatypes ((Unit!64235 0))(
  ( (Unit!64236) )
))
(declare-fun lt!1477408 () Unit!64235)

(declare-fun lemmaSemiInverse!2242 (TokenValueInjection!14656 BalanceConc!26784) Unit!64235)

(assert (=> b!4142336 (= lt!1477408 (lemmaSemiInverse!2242 (transformation!7384 r!4008) lt!1477417))))

(declare-fun seqFromList!5501 (List!45062) BalanceConc!26784)

(assert (=> b!4142336 (= lt!1477417 (seqFromList!5501 p!2912))))

(declare-fun b!4142337 () Bool)

(declare-fun e!2570216 () Bool)

(declare-fun tp_is_empty!21501 () Bool)

(declare-fun tp!1262709 () Bool)

(assert (=> b!4142337 (= e!2570216 (and tp_is_empty!21501 tp!1262709))))

(declare-fun b!4142338 () Bool)

(declare-fun res!1694907 () Bool)

(assert (=> b!4142338 (=> (not res!1694907) (not e!2570217))))

(declare-fun rulesInvariant!6270 (LexerInterface!6973 List!45064) Bool)

(assert (=> b!4142338 (= res!1694907 (rulesInvariant!6270 thiss!25645 rules!3756))))

(declare-fun b!4142339 () Bool)

(declare-fun e!2570215 () Bool)

(declare-fun tp!1262703 () Bool)

(assert (=> b!4142339 (= e!2570215 (and tp_is_empty!21501 tp!1262703))))

(declare-fun b!4142340 () Bool)

(declare-fun e!2570219 () Bool)

(assert (=> b!4142340 (= e!2570213 (not e!2570219))))

(declare-fun res!1694903 () Bool)

(assert (=> b!4142340 (=> res!1694903 e!2570219)))

(get-info :version)

(assert (=> b!4142340 (= res!1694903 (or (not ((_ is Cons!44940) rules!3756)) (not (= (h!50360 rules!3756) rBis!149))))))

(declare-fun lt!1477416 () Unit!64235)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2230 (LexerInterface!6973 Rule!14568 List!45064) Unit!64235)

(assert (=> b!4142340 (= lt!1477416 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2230 thiss!25645 r!4008 rules!3756))))

(declare-fun ruleValid!3190 (LexerInterface!6973 Rule!14568) Bool)

(assert (=> b!4142340 (ruleValid!3190 thiss!25645 rBis!149)))

(declare-fun lt!1477421 () Unit!64235)

(assert (=> b!4142340 (= lt!1477421 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2230 thiss!25645 rBis!149 rules!3756))))

(declare-fun tp!1262704 () Bool)

(declare-fun b!4142341 () Bool)

(assert (=> b!4142341 (= e!2570211 (and tp!1262704 (inv!59543 (tag!8244 (h!50360 rules!3756))) (inv!59545 (transformation!7384 (h!50360 rules!3756))) e!2570223))))

(assert (=> b!4142342 (= e!2570212 (and tp!1262708 tp!1262706))))

(declare-fun b!4142343 () Bool)

(declare-fun res!1694917 () Bool)

(assert (=> b!4142343 (=> (not res!1694917) (not e!2570213))))

(assert (=> b!4142343 (= res!1694917 (ruleValid!3190 thiss!25645 r!4008))))

(declare-fun b!4142344 () Bool)

(declare-fun e!2570214 () Bool)

(assert (=> b!4142344 (= e!2570214 e!2570209)))

(declare-fun res!1694915 () Bool)

(assert (=> b!4142344 (=> res!1694915 e!2570209)))

(declare-fun lt!1477413 () List!45062)

(assert (=> b!4142344 (= res!1694915 (not (= lt!1477413 input!3238)))))

(assert (=> b!4142344 (isPrefix!4319 lt!1477412 lt!1477413)))

(declare-fun lt!1477410 () tuple2!43318)

(declare-fun ++!11624 (List!45062 List!45062) List!45062)

(assert (=> b!4142344 (= lt!1477413 (++!11624 lt!1477412 (_2!24793 lt!1477410)))))

(declare-fun lt!1477418 () Unit!64235)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2948 (List!45062 List!45062) Unit!64235)

(assert (=> b!4142344 (= lt!1477418 (lemmaConcatTwoListThenFirstIsPrefix!2948 lt!1477412 (_2!24793 lt!1477410)))))

(declare-fun lt!1477409 () BalanceConc!26784)

(declare-fun list!16461 (BalanceConc!26784) List!45062)

(assert (=> b!4142344 (= lt!1477412 (list!16461 lt!1477409))))

(declare-fun res!1694906 () Bool)

(assert (=> start!393814 (=> (not res!1694906) (not e!2570217))))

(assert (=> start!393814 (= res!1694906 ((_ is Lexer!6971) thiss!25645))))

(assert (=> start!393814 e!2570217))

(assert (=> start!393814 e!2570221))

(assert (=> start!393814 e!2570216))

(assert (=> start!393814 true))

(assert (=> start!393814 e!2570222))

(assert (=> start!393814 e!2570215))

(declare-fun e!2570226 () Bool)

(assert (=> start!393814 e!2570226))

(declare-fun b!4142345 () Bool)

(declare-fun res!1694909 () Bool)

(assert (=> b!4142345 (=> res!1694909 e!2570209)))

(assert (=> b!4142345 (= res!1694909 (> lt!1477422 (size!33297 input!3238)))))

(declare-fun b!4142346 () Bool)

(declare-fun res!1694904 () Bool)

(assert (=> b!4142346 (=> (not res!1694904) (not e!2570217))))

(declare-fun contains!9064 (List!45064 Rule!14568) Bool)

(assert (=> b!4142346 (= res!1694904 (contains!9064 rules!3756 rBis!149))))

(declare-fun b!4142347 () Bool)

(declare-fun res!1694902 () Bool)

(assert (=> b!4142347 (=> (not res!1694902) (not e!2570217))))

(assert (=> b!4142347 (= res!1694902 (contains!9064 rules!3756 r!4008))))

(declare-fun b!4142348 () Bool)

(declare-fun res!1694919 () Bool)

(assert (=> b!4142348 (=> (not res!1694919) (not e!2570217))))

(declare-fun isEmpty!26805 (List!45064) Bool)

(assert (=> b!4142348 (= res!1694919 (not (isEmpty!26805 rules!3756)))))

(declare-fun b!4142349 () Bool)

(declare-fun res!1694916 () Bool)

(assert (=> b!4142349 (=> (not res!1694916) (not e!2570213))))

(declare-fun matchR!6118 (Regex!12289 List!45062) Bool)

(assert (=> b!4142349 (= res!1694916 (matchR!6118 (regex!7384 r!4008) p!2912))))

(declare-fun b!4142350 () Bool)

(declare-fun res!1694914 () Bool)

(assert (=> b!4142350 (=> (not res!1694914) (not e!2570217))))

(declare-fun isEmpty!26806 (List!45062) Bool)

(assert (=> b!4142350 (= res!1694914 (not (isEmpty!26806 p!2912)))))

(declare-fun tp!1262711 () Bool)

(declare-fun b!4142351 () Bool)

(assert (=> b!4142351 (= e!2570226 (and tp!1262711 (inv!59543 (tag!8244 rBis!149)) (inv!59545 (transformation!7384 rBis!149)) e!2570225))))

(declare-fun b!4142352 () Bool)

(declare-fun e!2570224 () Bool)

(assert (=> b!4142352 (= e!2570219 e!2570224)))

(declare-fun res!1694910 () Bool)

(assert (=> b!4142352 (=> res!1694910 e!2570224)))

(declare-fun lt!1477420 () Option!9690)

(declare-fun isEmpty!26807 (Option!9690) Bool)

(assert (=> b!4142352 (= res!1694910 (isEmpty!26807 lt!1477420))))

(declare-fun maxPrefixOneRule!3102 (LexerInterface!6973 Rule!14568 List!45062) Option!9690)

(assert (=> b!4142352 (= lt!1477420 (maxPrefixOneRule!3102 thiss!25645 rBis!149 input!3238))))

(assert (=> b!4142352 (not (= rBis!149 r!4008))))

(declare-fun lt!1477411 () Unit!64235)

(declare-fun lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!82 (LexerInterface!6973 List!45064 Rule!14568 Rule!14568) Unit!64235)

(assert (=> b!4142352 (= lt!1477411 (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!82 thiss!25645 rules!3756 rBis!149 r!4008))))

(declare-fun tail!6559 (List!45064) List!45064)

(assert (=> b!4142352 (contains!9064 (tail!6559 rules!3756) r!4008)))

(declare-fun lt!1477414 () Unit!64235)

(declare-fun lemmaGetIndexBiggerAndHeadEqThenTailContains!88 (List!45064 Rule!14568 Rule!14568) Unit!64235)

(assert (=> b!4142352 (= lt!1477414 (lemmaGetIndexBiggerAndHeadEqThenTailContains!88 rules!3756 rBis!149 r!4008))))

(declare-fun b!4142353 () Bool)

(declare-fun validRegex!5535 (Regex!12289) Bool)

(assert (=> b!4142353 (= e!2570209 (validRegex!5535 (regex!7384 rBis!149)))))

(declare-fun b!4142354 () Bool)

(declare-fun res!1694905 () Bool)

(assert (=> b!4142354 (=> res!1694905 e!2570209)))

(assert (=> b!4142354 (= res!1694905 (<= lt!1477422 (size!33297 lt!1477412)))))

(declare-fun b!4142355 () Bool)

(assert (=> b!4142355 (= e!2570224 e!2570214)))

(declare-fun res!1694908 () Bool)

(assert (=> b!4142355 (=> res!1694908 e!2570214)))

(declare-fun lt!1477415 () Int)

(assert (=> b!4142355 (= res!1694908 (or (> lt!1477415 lt!1477422) (>= lt!1477415 lt!1477422)))))

(declare-fun size!33298 (BalanceConc!26784) Int)

(assert (=> b!4142355 (= lt!1477415 (size!33298 lt!1477409))))

(declare-fun charsOf!4983 (Token!13698) BalanceConc!26784)

(assert (=> b!4142355 (= lt!1477409 (charsOf!4983 (_1!24793 lt!1477410)))))

(declare-fun get!14671 (Option!9690) tuple2!43318)

(assert (=> b!4142355 (= lt!1477410 (get!14671 lt!1477420))))

(declare-fun b!4142356 () Bool)

(declare-fun res!1694918 () Bool)

(assert (=> b!4142356 (=> (not res!1694918) (not e!2570217))))

(assert (=> b!4142356 (= res!1694918 (isPrefix!4319 p!2912 input!3238))))

(assert (= (and start!393814 res!1694906) b!4142356))

(assert (= (and b!4142356 res!1694918) b!4142348))

(assert (= (and b!4142348 res!1694919) b!4142338))

(assert (= (and b!4142338 res!1694907) b!4142347))

(assert (= (and b!4142347 res!1694902) b!4142346))

(assert (= (and b!4142346 res!1694904) b!4142350))

(assert (= (and b!4142350 res!1694914) b!4142336))

(assert (= (and b!4142336 res!1694913) b!4142349))

(assert (= (and b!4142349 res!1694916) b!4142334))

(assert (= (and b!4142334 res!1694912) b!4142343))

(assert (= (and b!4142343 res!1694917) b!4142340))

(assert (= (and b!4142340 (not res!1694903)) b!4142352))

(assert (= (and b!4142352 (not res!1694910)) b!4142355))

(assert (= (and b!4142355 (not res!1694908)) b!4142344))

(assert (= (and b!4142344 (not res!1694915)) b!4142330))

(assert (= (and b!4142330 (not res!1694911)) b!4142345))

(assert (= (and b!4142345 (not res!1694909)) b!4142354))

(assert (= (and b!4142354 (not res!1694905)) b!4142353))

(assert (= b!4142341 b!4142333))

(assert (= b!4142332 b!4142341))

(assert (= (and start!393814 ((_ is Cons!44940) rules!3756)) b!4142332))

(assert (= (and start!393814 ((_ is Cons!44938) p!2912)) b!4142337))

(assert (= b!4142331 b!4142342))

(assert (= start!393814 b!4142331))

(assert (= (and start!393814 ((_ is Cons!44938) input!3238)) b!4142339))

(assert (= b!4142351 b!4142335))

(assert (= start!393814 b!4142351))

(declare-fun m!4738717 () Bool)

(assert (=> b!4142347 m!4738717))

(declare-fun m!4738719 () Bool)

(assert (=> b!4142352 m!4738719))

(declare-fun m!4738721 () Bool)

(assert (=> b!4142352 m!4738721))

(declare-fun m!4738723 () Bool)

(assert (=> b!4142352 m!4738723))

(assert (=> b!4142352 m!4738719))

(declare-fun m!4738725 () Bool)

(assert (=> b!4142352 m!4738725))

(declare-fun m!4738727 () Bool)

(assert (=> b!4142352 m!4738727))

(declare-fun m!4738729 () Bool)

(assert (=> b!4142352 m!4738729))

(declare-fun m!4738731 () Bool)

(assert (=> b!4142353 m!4738731))

(declare-fun m!4738733 () Bool)

(assert (=> b!4142350 m!4738733))

(declare-fun m!4738735 () Bool)

(assert (=> b!4142356 m!4738735))

(declare-fun m!4738737 () Bool)

(assert (=> b!4142354 m!4738737))

(declare-fun m!4738739 () Bool)

(assert (=> b!4142343 m!4738739))

(declare-fun m!4738741 () Bool)

(assert (=> b!4142344 m!4738741))

(declare-fun m!4738743 () Bool)

(assert (=> b!4142344 m!4738743))

(declare-fun m!4738745 () Bool)

(assert (=> b!4142344 m!4738745))

(declare-fun m!4738747 () Bool)

(assert (=> b!4142344 m!4738747))

(declare-fun m!4738749 () Bool)

(assert (=> b!4142345 m!4738749))

(declare-fun m!4738751 () Bool)

(assert (=> b!4142338 m!4738751))

(declare-fun m!4738753 () Bool)

(assert (=> b!4142336 m!4738753))

(declare-fun m!4738755 () Bool)

(assert (=> b!4142336 m!4738755))

(declare-fun m!4738757 () Bool)

(assert (=> b!4142336 m!4738757))

(declare-fun m!4738759 () Bool)

(assert (=> b!4142336 m!4738759))

(declare-fun m!4738761 () Bool)

(assert (=> b!4142336 m!4738761))

(declare-fun m!4738763 () Bool)

(assert (=> b!4142336 m!4738763))

(declare-fun m!4738765 () Bool)

(assert (=> b!4142346 m!4738765))

(declare-fun m!4738767 () Bool)

(assert (=> b!4142334 m!4738767))

(declare-fun m!4738769 () Bool)

(assert (=> b!4142334 m!4738769))

(declare-fun m!4738771 () Bool)

(assert (=> b!4142340 m!4738771))

(declare-fun m!4738773 () Bool)

(assert (=> b!4142340 m!4738773))

(declare-fun m!4738775 () Bool)

(assert (=> b!4142340 m!4738775))

(declare-fun m!4738777 () Bool)

(assert (=> b!4142330 m!4738777))

(declare-fun m!4738779 () Bool)

(assert (=> b!4142349 m!4738779))

(declare-fun m!4738781 () Bool)

(assert (=> b!4142348 m!4738781))

(declare-fun m!4738783 () Bool)

(assert (=> b!4142341 m!4738783))

(declare-fun m!4738785 () Bool)

(assert (=> b!4142341 m!4738785))

(declare-fun m!4738787 () Bool)

(assert (=> b!4142351 m!4738787))

(declare-fun m!4738789 () Bool)

(assert (=> b!4142351 m!4738789))

(declare-fun m!4738791 () Bool)

(assert (=> b!4142331 m!4738791))

(declare-fun m!4738793 () Bool)

(assert (=> b!4142331 m!4738793))

(declare-fun m!4738795 () Bool)

(assert (=> b!4142355 m!4738795))

(declare-fun m!4738797 () Bool)

(assert (=> b!4142355 m!4738797))

(declare-fun m!4738799 () Bool)

(assert (=> b!4142355 m!4738799))

(check-sat b_and!321765 (not b!4142351) b_and!321769 tp_is_empty!21501 (not b!4142338) (not b!4142347) b_and!321771 (not b!4142332) (not b!4142348) (not b!4142344) (not b!4142331) b_and!321763 (not b_next!118739) (not b!4142349) (not b!4142350) (not b_next!118747) (not b!4142345) b_and!321761 (not b!4142353) (not b_next!118745) (not b!4142337) (not b!4142330) (not b!4142339) (not b!4142336) (not b!4142341) (not b!4142355) (not b_next!118743) (not b_next!118749) (not b!4142334) (not b!4142354) (not b_next!118741) (not b!4142343) (not b!4142340) (not b!4142346) b_and!321767 (not b!4142352) (not b!4142356))
(check-sat b_and!321765 (not b_next!118747) b_and!321761 (not b_next!118745) b_and!321769 (not b_next!118741) b_and!321771 b_and!321767 b_and!321763 (not b_next!118739) (not b_next!118743) (not b_next!118749))
(get-model)

(declare-fun b!4142366 () Bool)

(declare-fun res!1694938 () Bool)

(declare-fun e!2570234 () Bool)

(assert (=> b!4142366 (=> (not res!1694938) (not e!2570234))))

(declare-fun head!8740 (List!45062) C!24764)

(assert (=> b!4142366 (= res!1694938 (= (head!8740 lt!1477412) (head!8740 lt!1477413)))))

(declare-fun b!4142367 () Bool)

(declare-fun tail!6561 (List!45062) List!45062)

(assert (=> b!4142367 (= e!2570234 (isPrefix!4319 (tail!6561 lt!1477412) (tail!6561 lt!1477413)))))

(declare-fun b!4142365 () Bool)

(declare-fun e!2570235 () Bool)

(assert (=> b!4142365 (= e!2570235 e!2570234)))

(declare-fun res!1694939 () Bool)

(assert (=> b!4142365 (=> (not res!1694939) (not e!2570234))))

(assert (=> b!4142365 (= res!1694939 (not ((_ is Nil!44938) lt!1477413)))))

(declare-fun b!4142368 () Bool)

(declare-fun e!2570233 () Bool)

(assert (=> b!4142368 (= e!2570233 (>= (size!33297 lt!1477413) (size!33297 lt!1477412)))))

(declare-fun d!1226179 () Bool)

(assert (=> d!1226179 e!2570233))

(declare-fun res!1694940 () Bool)

(assert (=> d!1226179 (=> res!1694940 e!2570233)))

(declare-fun lt!1477425 () Bool)

(assert (=> d!1226179 (= res!1694940 (not lt!1477425))))

(assert (=> d!1226179 (= lt!1477425 e!2570235)))

(declare-fun res!1694937 () Bool)

(assert (=> d!1226179 (=> res!1694937 e!2570235)))

(assert (=> d!1226179 (= res!1694937 ((_ is Nil!44938) lt!1477412))))

(assert (=> d!1226179 (= (isPrefix!4319 lt!1477412 lt!1477413) lt!1477425)))

(assert (= (and d!1226179 (not res!1694937)) b!4142365))

(assert (= (and b!4142365 res!1694939) b!4142366))

(assert (= (and b!4142366 res!1694938) b!4142367))

(assert (= (and d!1226179 (not res!1694940)) b!4142368))

(declare-fun m!4738801 () Bool)

(assert (=> b!4142366 m!4738801))

(declare-fun m!4738803 () Bool)

(assert (=> b!4142366 m!4738803))

(declare-fun m!4738805 () Bool)

(assert (=> b!4142367 m!4738805))

(declare-fun m!4738807 () Bool)

(assert (=> b!4142367 m!4738807))

(assert (=> b!4142367 m!4738805))

(assert (=> b!4142367 m!4738807))

(declare-fun m!4738809 () Bool)

(assert (=> b!4142367 m!4738809))

(declare-fun m!4738811 () Bool)

(assert (=> b!4142368 m!4738811))

(assert (=> b!4142368 m!4738737))

(assert (=> b!4142344 d!1226179))

(declare-fun b!4142389 () Bool)

(declare-fun e!2570250 () List!45062)

(assert (=> b!4142389 (= e!2570250 (Cons!44938 (h!50358 lt!1477412) (++!11624 (t!342485 lt!1477412) (_2!24793 lt!1477410))))))

(declare-fun b!4142390 () Bool)

(declare-fun res!1694957 () Bool)

(declare-fun e!2570249 () Bool)

(assert (=> b!4142390 (=> (not res!1694957) (not e!2570249))))

(declare-fun lt!1477430 () List!45062)

(assert (=> b!4142390 (= res!1694957 (= (size!33297 lt!1477430) (+ (size!33297 lt!1477412) (size!33297 (_2!24793 lt!1477410)))))))

(declare-fun d!1226185 () Bool)

(assert (=> d!1226185 e!2570249))

(declare-fun res!1694956 () Bool)

(assert (=> d!1226185 (=> (not res!1694956) (not e!2570249))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6947 (List!45062) (InoxSet C!24764))

(assert (=> d!1226185 (= res!1694956 (= (content!6947 lt!1477430) ((_ map or) (content!6947 lt!1477412) (content!6947 (_2!24793 lt!1477410)))))))

(assert (=> d!1226185 (= lt!1477430 e!2570250)))

(declare-fun c!709998 () Bool)

(assert (=> d!1226185 (= c!709998 ((_ is Nil!44938) lt!1477412))))

(assert (=> d!1226185 (= (++!11624 lt!1477412 (_2!24793 lt!1477410)) lt!1477430)))

(declare-fun b!4142391 () Bool)

(assert (=> b!4142391 (= e!2570249 (or (not (= (_2!24793 lt!1477410) Nil!44938)) (= lt!1477430 lt!1477412)))))

(declare-fun b!4142388 () Bool)

(assert (=> b!4142388 (= e!2570250 (_2!24793 lt!1477410))))

(assert (= (and d!1226185 c!709998) b!4142388))

(assert (= (and d!1226185 (not c!709998)) b!4142389))

(assert (= (and d!1226185 res!1694956) b!4142390))

(assert (= (and b!4142390 res!1694957) b!4142391))

(declare-fun m!4738817 () Bool)

(assert (=> b!4142389 m!4738817))

(declare-fun m!4738819 () Bool)

(assert (=> b!4142390 m!4738819))

(assert (=> b!4142390 m!4738737))

(declare-fun m!4738821 () Bool)

(assert (=> b!4142390 m!4738821))

(declare-fun m!4738823 () Bool)

(assert (=> d!1226185 m!4738823))

(declare-fun m!4738825 () Bool)

(assert (=> d!1226185 m!4738825))

(declare-fun m!4738827 () Bool)

(assert (=> d!1226185 m!4738827))

(assert (=> b!4142344 d!1226185))

(declare-fun d!1226189 () Bool)

(assert (=> d!1226189 (isPrefix!4319 lt!1477412 (++!11624 lt!1477412 (_2!24793 lt!1477410)))))

(declare-fun lt!1477434 () Unit!64235)

(declare-fun choose!25343 (List!45062 List!45062) Unit!64235)

(assert (=> d!1226189 (= lt!1477434 (choose!25343 lt!1477412 (_2!24793 lt!1477410)))))

(assert (=> d!1226189 (= (lemmaConcatTwoListThenFirstIsPrefix!2948 lt!1477412 (_2!24793 lt!1477410)) lt!1477434)))

(declare-fun bs!595268 () Bool)

(assert (= bs!595268 d!1226189))

(assert (=> bs!595268 m!4738743))

(assert (=> bs!595268 m!4738743))

(declare-fun m!4738839 () Bool)

(assert (=> bs!595268 m!4738839))

(declare-fun m!4738841 () Bool)

(assert (=> bs!595268 m!4738841))

(assert (=> b!4142344 d!1226189))

(declare-fun d!1226193 () Bool)

(declare-fun list!16462 (Conc!13595) List!45062)

(assert (=> d!1226193 (= (list!16461 lt!1477409) (list!16462 (c!709994 lt!1477409)))))

(declare-fun bs!595269 () Bool)

(assert (= bs!595269 d!1226193))

(declare-fun m!4738843 () Bool)

(assert (=> bs!595269 m!4738843))

(assert (=> b!4142344 d!1226193))

(declare-fun b!4142414 () Bool)

(declare-fun e!2570269 () Int)

(declare-fun e!2570268 () Int)

(assert (=> b!4142414 (= e!2570269 e!2570268)))

(declare-fun c!710003 () Bool)

(assert (=> b!4142414 (= c!710003 (and ((_ is Cons!44940) rules!3756) (not (= (h!50360 rules!3756) rBis!149))))))

(declare-fun b!4142416 () Bool)

(assert (=> b!4142416 (= e!2570268 (- 1))))

(declare-fun b!4142413 () Bool)

(assert (=> b!4142413 (= e!2570269 0)))

(declare-fun b!4142415 () Bool)

(assert (=> b!4142415 (= e!2570268 (+ 1 (getIndex!730 (t!342487 rules!3756) rBis!149)))))

(declare-fun d!1226195 () Bool)

(declare-fun lt!1477440 () Int)

(assert (=> d!1226195 (>= lt!1477440 0)))

(assert (=> d!1226195 (= lt!1477440 e!2570269)))

(declare-fun c!710004 () Bool)

(assert (=> d!1226195 (= c!710004 (and ((_ is Cons!44940) rules!3756) (= (h!50360 rules!3756) rBis!149)))))

(assert (=> d!1226195 (contains!9064 rules!3756 rBis!149)))

(assert (=> d!1226195 (= (getIndex!730 rules!3756 rBis!149) lt!1477440)))

(assert (= (and d!1226195 c!710004) b!4142413))

(assert (= (and d!1226195 (not c!710004)) b!4142414))

(assert (= (and b!4142414 c!710003) b!4142415))

(assert (= (and b!4142414 (not c!710003)) b!4142416))

(declare-fun m!4738855 () Bool)

(assert (=> b!4142415 m!4738855))

(assert (=> d!1226195 m!4738765))

(assert (=> b!4142334 d!1226195))

(declare-fun b!4142420 () Bool)

(declare-fun e!2570273 () Int)

(declare-fun e!2570272 () Int)

(assert (=> b!4142420 (= e!2570273 e!2570272)))

(declare-fun c!710005 () Bool)

(assert (=> b!4142420 (= c!710005 (and ((_ is Cons!44940) rules!3756) (not (= (h!50360 rules!3756) r!4008))))))

(declare-fun b!4142422 () Bool)

(assert (=> b!4142422 (= e!2570272 (- 1))))

(declare-fun b!4142419 () Bool)

(assert (=> b!4142419 (= e!2570273 0)))

(declare-fun b!4142421 () Bool)

(assert (=> b!4142421 (= e!2570272 (+ 1 (getIndex!730 (t!342487 rules!3756) r!4008)))))

(declare-fun d!1226205 () Bool)

(declare-fun lt!1477441 () Int)

(assert (=> d!1226205 (>= lt!1477441 0)))

(assert (=> d!1226205 (= lt!1477441 e!2570273)))

(declare-fun c!710006 () Bool)

(assert (=> d!1226205 (= c!710006 (and ((_ is Cons!44940) rules!3756) (= (h!50360 rules!3756) r!4008)))))

(assert (=> d!1226205 (contains!9064 rules!3756 r!4008)))

(assert (=> d!1226205 (= (getIndex!730 rules!3756 r!4008) lt!1477441)))

(assert (= (and d!1226205 c!710006) b!4142419))

(assert (= (and d!1226205 (not c!710006)) b!4142420))

(assert (= (and b!4142420 c!710005) b!4142421))

(assert (= (and b!4142420 (not c!710005)) b!4142422))

(declare-fun m!4738857 () Bool)

(assert (=> b!4142421 m!4738857))

(assert (=> d!1226205 m!4738717))

(assert (=> b!4142334 d!1226205))

(declare-fun d!1226207 () Bool)

(declare-fun lt!1477447 () Int)

(assert (=> d!1226207 (= lt!1477447 (size!33297 (list!16461 lt!1477409)))))

(declare-fun size!33300 (Conc!13595) Int)

(assert (=> d!1226207 (= lt!1477447 (size!33300 (c!709994 lt!1477409)))))

(assert (=> d!1226207 (= (size!33298 lt!1477409) lt!1477447)))

(declare-fun bs!595270 () Bool)

(assert (= bs!595270 d!1226207))

(assert (=> bs!595270 m!4738747))

(assert (=> bs!595270 m!4738747))

(declare-fun m!4738861 () Bool)

(assert (=> bs!595270 m!4738861))

(declare-fun m!4738863 () Bool)

(assert (=> bs!595270 m!4738863))

(assert (=> b!4142355 d!1226207))

(declare-fun d!1226211 () Bool)

(declare-fun lt!1477450 () BalanceConc!26784)

(assert (=> d!1226211 (= (list!16461 lt!1477450) (originalCharacters!7880 (_1!24793 lt!1477410)))))

(declare-fun dynLambda!19329 (Int TokenValue!7614) BalanceConc!26784)

(assert (=> d!1226211 (= lt!1477450 (dynLambda!19329 (toChars!9907 (transformation!7384 (rule!10498 (_1!24793 lt!1477410)))) (value!230998 (_1!24793 lt!1477410))))))

(assert (=> d!1226211 (= (charsOf!4983 (_1!24793 lt!1477410)) lt!1477450)))

(declare-fun b_lambda!121767 () Bool)

(assert (=> (not b_lambda!121767) (not d!1226211)))

(declare-fun tb!248643 () Bool)

(declare-fun t!342489 () Bool)

(assert (=> (and b!4142335 (= (toChars!9907 (transformation!7384 rBis!149)) (toChars!9907 (transformation!7384 (rule!10498 (_1!24793 lt!1477410))))) t!342489) tb!248643))

(declare-fun b!4142428 () Bool)

(declare-fun e!2570277 () Bool)

(declare-fun tp!1262717 () Bool)

(declare-fun inv!59548 (Conc!13595) Bool)

(assert (=> b!4142428 (= e!2570277 (and (inv!59548 (c!709994 (dynLambda!19329 (toChars!9907 (transformation!7384 (rule!10498 (_1!24793 lt!1477410)))) (value!230998 (_1!24793 lt!1477410))))) tp!1262717))))

(declare-fun result!302360 () Bool)

(declare-fun inv!59549 (BalanceConc!26784) Bool)

(assert (=> tb!248643 (= result!302360 (and (inv!59549 (dynLambda!19329 (toChars!9907 (transformation!7384 (rule!10498 (_1!24793 lt!1477410)))) (value!230998 (_1!24793 lt!1477410)))) e!2570277))))

(assert (= tb!248643 b!4142428))

(declare-fun m!4738865 () Bool)

(assert (=> b!4142428 m!4738865))

(declare-fun m!4738867 () Bool)

(assert (=> tb!248643 m!4738867))

(assert (=> d!1226211 t!342489))

(declare-fun b_and!321773 () Bool)

(assert (= b_and!321763 (and (=> t!342489 result!302360) b_and!321773)))

(declare-fun tb!248645 () Bool)

(declare-fun t!342491 () Bool)

(assert (=> (and b!4142333 (= (toChars!9907 (transformation!7384 (h!50360 rules!3756))) (toChars!9907 (transformation!7384 (rule!10498 (_1!24793 lt!1477410))))) t!342491) tb!248645))

(declare-fun result!302364 () Bool)

(assert (= result!302364 result!302360))

(assert (=> d!1226211 t!342491))

(declare-fun b_and!321775 () Bool)

(assert (= b_and!321767 (and (=> t!342491 result!302364) b_and!321775)))

(declare-fun tb!248647 () Bool)

(declare-fun t!342493 () Bool)

(assert (=> (and b!4142342 (= (toChars!9907 (transformation!7384 r!4008)) (toChars!9907 (transformation!7384 (rule!10498 (_1!24793 lt!1477410))))) t!342493) tb!248647))

(declare-fun result!302366 () Bool)

(assert (= result!302366 result!302360))

(assert (=> d!1226211 t!342493))

(declare-fun b_and!321777 () Bool)

(assert (= b_and!321771 (and (=> t!342493 result!302366) b_and!321777)))

(declare-fun m!4738869 () Bool)

(assert (=> d!1226211 m!4738869))

(declare-fun m!4738871 () Bool)

(assert (=> d!1226211 m!4738871))

(assert (=> b!4142355 d!1226211))

(declare-fun d!1226213 () Bool)

(assert (=> d!1226213 (= (get!14671 lt!1477420) (v!40331 lt!1477420))))

(assert (=> b!4142355 d!1226213))

(declare-fun b!4142447 () Bool)

(declare-fun e!2570298 () Bool)

(declare-fun call!290531 () Bool)

(assert (=> b!4142447 (= e!2570298 call!290531)))

(declare-fun b!4142448 () Bool)

(declare-fun e!2570292 () Bool)

(declare-fun e!2570296 () Bool)

(assert (=> b!4142448 (= e!2570292 e!2570296)))

(declare-fun res!1694986 () Bool)

(declare-fun nullable!4326 (Regex!12289) Bool)

(assert (=> b!4142448 (= res!1694986 (not (nullable!4326 (reg!12618 (regex!7384 rBis!149)))))))

(assert (=> b!4142448 (=> (not res!1694986) (not e!2570296))))

(declare-fun bm!290526 () Bool)

(declare-fun call!290532 () Bool)

(assert (=> bm!290526 (= call!290531 call!290532)))

(declare-fun b!4142450 () Bool)

(declare-fun e!2570293 () Bool)

(assert (=> b!4142450 (= e!2570293 e!2570298)))

(declare-fun res!1694988 () Bool)

(assert (=> b!4142450 (=> (not res!1694988) (not e!2570298))))

(declare-fun call!290533 () Bool)

(assert (=> b!4142450 (= res!1694988 call!290533)))

(declare-fun b!4142451 () Bool)

(assert (=> b!4142451 (= e!2570296 call!290532)))

(declare-fun c!710012 () Bool)

(declare-fun bm!290527 () Bool)

(declare-fun c!710011 () Bool)

(assert (=> bm!290527 (= call!290532 (validRegex!5535 (ite c!710012 (reg!12618 (regex!7384 rBis!149)) (ite c!710011 (regTwo!25091 (regex!7384 rBis!149)) (regTwo!25090 (regex!7384 rBis!149))))))))

(declare-fun b!4142452 () Bool)

(declare-fun res!1694984 () Bool)

(assert (=> b!4142452 (=> res!1694984 e!2570293)))

(assert (=> b!4142452 (= res!1694984 (not ((_ is Concat!19904) (regex!7384 rBis!149))))))

(declare-fun e!2570294 () Bool)

(assert (=> b!4142452 (= e!2570294 e!2570293)))

(declare-fun bm!290528 () Bool)

(assert (=> bm!290528 (= call!290533 (validRegex!5535 (ite c!710011 (regOne!25091 (regex!7384 rBis!149)) (regOne!25090 (regex!7384 rBis!149)))))))

(declare-fun b!4142453 () Bool)

(assert (=> b!4142453 (= e!2570292 e!2570294)))

(assert (=> b!4142453 (= c!710011 ((_ is Union!12289) (regex!7384 rBis!149)))))

(declare-fun b!4142454 () Bool)

(declare-fun e!2570297 () Bool)

(assert (=> b!4142454 (= e!2570297 call!290531)))

(declare-fun b!4142455 () Bool)

(declare-fun e!2570295 () Bool)

(assert (=> b!4142455 (= e!2570295 e!2570292)))

(assert (=> b!4142455 (= c!710012 ((_ is Star!12289) (regex!7384 rBis!149)))))

(declare-fun b!4142449 () Bool)

(declare-fun res!1694987 () Bool)

(assert (=> b!4142449 (=> (not res!1694987) (not e!2570297))))

(assert (=> b!4142449 (= res!1694987 call!290533)))

(assert (=> b!4142449 (= e!2570294 e!2570297)))

(declare-fun d!1226215 () Bool)

(declare-fun res!1694985 () Bool)

(assert (=> d!1226215 (=> res!1694985 e!2570295)))

(assert (=> d!1226215 (= res!1694985 ((_ is ElementMatch!12289) (regex!7384 rBis!149)))))

(assert (=> d!1226215 (= (validRegex!5535 (regex!7384 rBis!149)) e!2570295)))

(assert (= (and d!1226215 (not res!1694985)) b!4142455))

(assert (= (and b!4142455 c!710012) b!4142448))

(assert (= (and b!4142455 (not c!710012)) b!4142453))

(assert (= (and b!4142448 res!1694986) b!4142451))

(assert (= (and b!4142453 c!710011) b!4142449))

(assert (= (and b!4142453 (not c!710011)) b!4142452))

(assert (= (and b!4142449 res!1694987) b!4142454))

(assert (= (and b!4142452 (not res!1694984)) b!4142450))

(assert (= (and b!4142450 res!1694988) b!4142447))

(assert (= (or b!4142449 b!4142450) bm!290528))

(assert (= (or b!4142454 b!4142447) bm!290526))

(assert (= (or b!4142451 bm!290526) bm!290527))

(declare-fun m!4738873 () Bool)

(assert (=> b!4142448 m!4738873))

(declare-fun m!4738875 () Bool)

(assert (=> bm!290527 m!4738875))

(declare-fun m!4738877 () Bool)

(assert (=> bm!290528 m!4738877))

(assert (=> b!4142353 d!1226215))

(declare-fun d!1226217 () Bool)

(declare-fun lt!1477453 () Int)

(assert (=> d!1226217 (>= lt!1477453 0)))

(declare-fun e!2570301 () Int)

(assert (=> d!1226217 (= lt!1477453 e!2570301)))

(declare-fun c!710015 () Bool)

(assert (=> d!1226217 (= c!710015 ((_ is Nil!44938) lt!1477412))))

(assert (=> d!1226217 (= (size!33297 lt!1477412) lt!1477453)))

(declare-fun b!4142460 () Bool)

(assert (=> b!4142460 (= e!2570301 0)))

(declare-fun b!4142461 () Bool)

(assert (=> b!4142461 (= e!2570301 (+ 1 (size!33297 (t!342485 lt!1477412))))))

(assert (= (and d!1226217 c!710015) b!4142460))

(assert (= (and d!1226217 (not c!710015)) b!4142461))

(declare-fun m!4738879 () Bool)

(assert (=> b!4142461 m!4738879))

(assert (=> b!4142354 d!1226217))

(declare-fun d!1226219 () Bool)

(declare-fun res!1694993 () Bool)

(declare-fun e!2570304 () Bool)

(assert (=> d!1226219 (=> (not res!1694993) (not e!2570304))))

(assert (=> d!1226219 (= res!1694993 (validRegex!5535 (regex!7384 r!4008)))))

(assert (=> d!1226219 (= (ruleValid!3190 thiss!25645 r!4008) e!2570304)))

(declare-fun b!4142466 () Bool)

(declare-fun res!1694994 () Bool)

(assert (=> b!4142466 (=> (not res!1694994) (not e!2570304))))

(assert (=> b!4142466 (= res!1694994 (not (nullable!4326 (regex!7384 r!4008))))))

(declare-fun b!4142467 () Bool)

(assert (=> b!4142467 (= e!2570304 (not (= (tag!8244 r!4008) (String!51821 ""))))))

(assert (= (and d!1226219 res!1694993) b!4142466))

(assert (= (and b!4142466 res!1694994) b!4142467))

(declare-fun m!4738881 () Bool)

(assert (=> d!1226219 m!4738881))

(declare-fun m!4738883 () Bool)

(assert (=> b!4142466 m!4738883))

(assert (=> b!4142343 d!1226219))

(declare-fun b!4142537 () Bool)

(declare-fun e!2570341 () Bool)

(assert (=> b!4142537 (= e!2570341 true)))

(declare-fun d!1226221 () Bool)

(assert (=> d!1226221 e!2570341))

(assert (= d!1226221 b!4142537))

(declare-fun order!23785 () Int)

(declare-fun lambda!128958 () Int)

(declare-fun order!23783 () Int)

(declare-fun dynLambda!19334 (Int Int) Int)

(declare-fun dynLambda!19335 (Int Int) Int)

(assert (=> b!4142537 (< (dynLambda!19334 order!23783 (toValue!10048 (transformation!7384 r!4008))) (dynLambda!19335 order!23785 lambda!128958))))

(declare-fun order!23787 () Int)

(declare-fun dynLambda!19336 (Int Int) Int)

(assert (=> b!4142537 (< (dynLambda!19336 order!23787 (toChars!9907 (transformation!7384 r!4008))) (dynLambda!19335 order!23785 lambda!128958))))

(declare-fun dynLambda!19337 (Int BalanceConc!26784) TokenValue!7614)

(assert (=> d!1226221 (= (list!16461 (dynLambda!19329 (toChars!9907 (transformation!7384 r!4008)) (dynLambda!19337 (toValue!10048 (transformation!7384 r!4008)) lt!1477417))) (list!16461 lt!1477417))))

(declare-fun lt!1477490 () Unit!64235)

(declare-fun ForallOf!974 (Int BalanceConc!26784) Unit!64235)

(assert (=> d!1226221 (= lt!1477490 (ForallOf!974 lambda!128958 lt!1477417))))

(assert (=> d!1226221 (= (lemmaSemiInverse!2242 (transformation!7384 r!4008) lt!1477417) lt!1477490)))

(declare-fun b_lambda!121771 () Bool)

(assert (=> (not b_lambda!121771) (not d!1226221)))

(declare-fun tb!248655 () Bool)

(declare-fun t!342501 () Bool)

(assert (=> (and b!4142335 (= (toChars!9907 (transformation!7384 rBis!149)) (toChars!9907 (transformation!7384 r!4008))) t!342501) tb!248655))

(declare-fun tp!1262721 () Bool)

(declare-fun b!4142538 () Bool)

(declare-fun e!2570342 () Bool)

(assert (=> b!4142538 (= e!2570342 (and (inv!59548 (c!709994 (dynLambda!19329 (toChars!9907 (transformation!7384 r!4008)) (dynLambda!19337 (toValue!10048 (transformation!7384 r!4008)) lt!1477417)))) tp!1262721))))

(declare-fun result!302376 () Bool)

(assert (=> tb!248655 (= result!302376 (and (inv!59549 (dynLambda!19329 (toChars!9907 (transformation!7384 r!4008)) (dynLambda!19337 (toValue!10048 (transformation!7384 r!4008)) lt!1477417))) e!2570342))))

(assert (= tb!248655 b!4142538))

(declare-fun m!4738961 () Bool)

(assert (=> b!4142538 m!4738961))

(declare-fun m!4738963 () Bool)

(assert (=> tb!248655 m!4738963))

(assert (=> d!1226221 t!342501))

(declare-fun b_and!321785 () Bool)

(assert (= b_and!321773 (and (=> t!342501 result!302376) b_and!321785)))

(declare-fun t!342503 () Bool)

(declare-fun tb!248657 () Bool)

(assert (=> (and b!4142333 (= (toChars!9907 (transformation!7384 (h!50360 rules!3756))) (toChars!9907 (transformation!7384 r!4008))) t!342503) tb!248657))

(declare-fun result!302378 () Bool)

(assert (= result!302378 result!302376))

(assert (=> d!1226221 t!342503))

(declare-fun b_and!321787 () Bool)

(assert (= b_and!321775 (and (=> t!342503 result!302378) b_and!321787)))

(declare-fun t!342505 () Bool)

(declare-fun tb!248659 () Bool)

(assert (=> (and b!4142342 (= (toChars!9907 (transformation!7384 r!4008)) (toChars!9907 (transformation!7384 r!4008))) t!342505) tb!248659))

(declare-fun result!302380 () Bool)

(assert (= result!302380 result!302376))

(assert (=> d!1226221 t!342505))

(declare-fun b_and!321789 () Bool)

(assert (= b_and!321777 (and (=> t!342505 result!302380) b_and!321789)))

(declare-fun b_lambda!121773 () Bool)

(assert (=> (not b_lambda!121773) (not d!1226221)))

(declare-fun t!342507 () Bool)

(declare-fun tb!248661 () Bool)

(assert (=> (and b!4142335 (= (toValue!10048 (transformation!7384 rBis!149)) (toValue!10048 (transformation!7384 r!4008))) t!342507) tb!248661))

(declare-fun result!302382 () Bool)

(declare-fun inv!21 (TokenValue!7614) Bool)

(assert (=> tb!248661 (= result!302382 (inv!21 (dynLambda!19337 (toValue!10048 (transformation!7384 r!4008)) lt!1477417)))))

(declare-fun m!4738965 () Bool)

(assert (=> tb!248661 m!4738965))

(assert (=> d!1226221 t!342507))

(declare-fun b_and!321791 () Bool)

(assert (= b_and!321761 (and (=> t!342507 result!302382) b_and!321791)))

(declare-fun tb!248663 () Bool)

(declare-fun t!342509 () Bool)

(assert (=> (and b!4142333 (= (toValue!10048 (transformation!7384 (h!50360 rules!3756))) (toValue!10048 (transformation!7384 r!4008))) t!342509) tb!248663))

(declare-fun result!302386 () Bool)

(assert (= result!302386 result!302382))

(assert (=> d!1226221 t!342509))

(declare-fun b_and!321793 () Bool)

(assert (= b_and!321765 (and (=> t!342509 result!302386) b_and!321793)))

(declare-fun t!342511 () Bool)

(declare-fun tb!248665 () Bool)

(assert (=> (and b!4142342 (= (toValue!10048 (transformation!7384 r!4008)) (toValue!10048 (transformation!7384 r!4008))) t!342511) tb!248665))

(declare-fun result!302388 () Bool)

(assert (= result!302388 result!302382))

(assert (=> d!1226221 t!342511))

(declare-fun b_and!321795 () Bool)

(assert (= b_and!321769 (and (=> t!342511 result!302388) b_and!321795)))

(declare-fun m!4738967 () Bool)

(assert (=> d!1226221 m!4738967))

(declare-fun m!4738969 () Bool)

(assert (=> d!1226221 m!4738969))

(declare-fun m!4738971 () Bool)

(assert (=> d!1226221 m!4738971))

(declare-fun m!4738973 () Bool)

(assert (=> d!1226221 m!4738973))

(assert (=> d!1226221 m!4738967))

(declare-fun m!4738975 () Bool)

(assert (=> d!1226221 m!4738975))

(assert (=> d!1226221 m!4738973))

(assert (=> b!4142336 d!1226221))

(declare-fun d!1226249 () Bool)

(declare-fun lt!1477493 () List!45062)

(assert (=> d!1226249 (= (++!11624 p!2912 lt!1477493) input!3238)))

(declare-fun e!2570348 () List!45062)

(assert (=> d!1226249 (= lt!1477493 e!2570348)))

(declare-fun c!710034 () Bool)

(assert (=> d!1226249 (= c!710034 ((_ is Cons!44938) p!2912))))

(assert (=> d!1226249 (>= (size!33297 input!3238) (size!33297 p!2912))))

(assert (=> d!1226249 (= (getSuffix!2646 input!3238 p!2912) lt!1477493)))

(declare-fun b!4142545 () Bool)

(assert (=> b!4142545 (= e!2570348 (getSuffix!2646 (tail!6561 input!3238) (t!342485 p!2912)))))

(declare-fun b!4142546 () Bool)

(assert (=> b!4142546 (= e!2570348 input!3238)))

(assert (= (and d!1226249 c!710034) b!4142545))

(assert (= (and d!1226249 (not c!710034)) b!4142546))

(declare-fun m!4738977 () Bool)

(assert (=> d!1226249 m!4738977))

(assert (=> d!1226249 m!4738749))

(assert (=> d!1226249 m!4738753))

(declare-fun m!4738979 () Bool)

(assert (=> b!4142545 m!4738979))

(assert (=> b!4142545 m!4738979))

(declare-fun m!4738981 () Bool)

(assert (=> b!4142545 m!4738981))

(assert (=> b!4142336 d!1226249))

(declare-fun b!4142579 () Bool)

(declare-fun e!2570367 () Bool)

(declare-fun lt!1477510 () Option!9690)

(assert (=> b!4142579 (= e!2570367 (contains!9064 rules!3756 (rule!10498 (_1!24793 (get!14671 lt!1477510)))))))

(declare-fun b!4142580 () Bool)

(declare-fun res!1695042 () Bool)

(assert (=> b!4142580 (=> (not res!1695042) (not e!2570367))))

(assert (=> b!4142580 (= res!1695042 (matchR!6118 (regex!7384 (rule!10498 (_1!24793 (get!14671 lt!1477510)))) (list!16461 (charsOf!4983 (_1!24793 (get!14671 lt!1477510))))))))

(declare-fun call!290536 () Option!9690)

(declare-fun bm!290531 () Bool)

(assert (=> bm!290531 (= call!290536 (maxPrefixOneRule!3102 thiss!25645 (h!50360 rules!3756) input!3238))))

(declare-fun b!4142581 () Bool)

(declare-fun res!1695044 () Bool)

(assert (=> b!4142581 (=> (not res!1695044) (not e!2570367))))

(assert (=> b!4142581 (= res!1695044 (= (++!11624 (list!16461 (charsOf!4983 (_1!24793 (get!14671 lt!1477510)))) (_2!24793 (get!14671 lt!1477510))) input!3238))))

(declare-fun b!4142582 () Bool)

(declare-fun res!1695047 () Bool)

(assert (=> b!4142582 (=> (not res!1695047) (not e!2570367))))

(assert (=> b!4142582 (= res!1695047 (< (size!33297 (_2!24793 (get!14671 lt!1477510))) (size!33297 input!3238)))))

(declare-fun b!4142583 () Bool)

(declare-fun res!1695045 () Bool)

(assert (=> b!4142583 (=> (not res!1695045) (not e!2570367))))

(assert (=> b!4142583 (= res!1695045 (= (value!230998 (_1!24793 (get!14671 lt!1477510))) (apply!10457 (transformation!7384 (rule!10498 (_1!24793 (get!14671 lt!1477510)))) (seqFromList!5501 (originalCharacters!7880 (_1!24793 (get!14671 lt!1477510)))))))))

(declare-fun b!4142584 () Bool)

(declare-fun e!2570366 () Option!9690)

(declare-fun lt!1477512 () Option!9690)

(declare-fun lt!1477509 () Option!9690)

(assert (=> b!4142584 (= e!2570366 (ite (and ((_ is None!9689) lt!1477512) ((_ is None!9689) lt!1477509)) None!9689 (ite ((_ is None!9689) lt!1477509) lt!1477512 (ite ((_ is None!9689) lt!1477512) lt!1477509 (ite (>= (size!33296 (_1!24793 (v!40331 lt!1477512))) (size!33296 (_1!24793 (v!40331 lt!1477509)))) lt!1477512 lt!1477509)))))))

(assert (=> b!4142584 (= lt!1477512 call!290536)))

(assert (=> b!4142584 (= lt!1477509 (maxPrefix!4163 thiss!25645 (t!342487 rules!3756) input!3238))))

(declare-fun b!4142586 () Bool)

(assert (=> b!4142586 (= e!2570366 call!290536)))

(declare-fun b!4142587 () Bool)

(declare-fun res!1695041 () Bool)

(assert (=> b!4142587 (=> (not res!1695041) (not e!2570367))))

(assert (=> b!4142587 (= res!1695041 (= (list!16461 (charsOf!4983 (_1!24793 (get!14671 lt!1477510)))) (originalCharacters!7880 (_1!24793 (get!14671 lt!1477510)))))))

(declare-fun d!1226251 () Bool)

(declare-fun e!2570365 () Bool)

(assert (=> d!1226251 e!2570365))

(declare-fun res!1695046 () Bool)

(assert (=> d!1226251 (=> res!1695046 e!2570365)))

(assert (=> d!1226251 (= res!1695046 (isEmpty!26807 lt!1477510))))

(assert (=> d!1226251 (= lt!1477510 e!2570366)))

(declare-fun c!710040 () Bool)

(assert (=> d!1226251 (= c!710040 (and ((_ is Cons!44940) rules!3756) ((_ is Nil!44940) (t!342487 rules!3756))))))

(declare-fun lt!1477511 () Unit!64235)

(declare-fun lt!1477508 () Unit!64235)

(assert (=> d!1226251 (= lt!1477511 lt!1477508)))

(assert (=> d!1226251 (isPrefix!4319 input!3238 input!3238)))

(declare-fun lemmaIsPrefixRefl!2790 (List!45062 List!45062) Unit!64235)

(assert (=> d!1226251 (= lt!1477508 (lemmaIsPrefixRefl!2790 input!3238 input!3238))))

(declare-fun rulesValidInductive!2742 (LexerInterface!6973 List!45064) Bool)

(assert (=> d!1226251 (rulesValidInductive!2742 thiss!25645 rules!3756)))

(assert (=> d!1226251 (= (maxPrefix!4163 thiss!25645 rules!3756 input!3238) lt!1477510)))

(declare-fun b!4142585 () Bool)

(assert (=> b!4142585 (= e!2570365 e!2570367)))

(declare-fun res!1695043 () Bool)

(assert (=> b!4142585 (=> (not res!1695043) (not e!2570367))))

(declare-fun isDefined!7282 (Option!9690) Bool)

(assert (=> b!4142585 (= res!1695043 (isDefined!7282 lt!1477510))))

(assert (= (and d!1226251 c!710040) b!4142586))

(assert (= (and d!1226251 (not c!710040)) b!4142584))

(assert (= (or b!4142586 b!4142584) bm!290531))

(assert (= (and d!1226251 (not res!1695046)) b!4142585))

(assert (= (and b!4142585 res!1695043) b!4142587))

(assert (= (and b!4142587 res!1695041) b!4142582))

(assert (= (and b!4142582 res!1695047) b!4142581))

(assert (= (and b!4142581 res!1695044) b!4142583))

(assert (= (and b!4142583 res!1695045) b!4142580))

(assert (= (and b!4142580 res!1695042) b!4142579))

(declare-fun m!4739003 () Bool)

(assert (=> b!4142582 m!4739003))

(declare-fun m!4739005 () Bool)

(assert (=> b!4142582 m!4739005))

(assert (=> b!4142582 m!4738749))

(assert (=> b!4142587 m!4739003))

(declare-fun m!4739007 () Bool)

(assert (=> b!4142587 m!4739007))

(assert (=> b!4142587 m!4739007))

(declare-fun m!4739009 () Bool)

(assert (=> b!4142587 m!4739009))

(declare-fun m!4739011 () Bool)

(assert (=> bm!290531 m!4739011))

(assert (=> b!4142580 m!4739003))

(assert (=> b!4142580 m!4739007))

(assert (=> b!4142580 m!4739007))

(assert (=> b!4142580 m!4739009))

(assert (=> b!4142580 m!4739009))

(declare-fun m!4739013 () Bool)

(assert (=> b!4142580 m!4739013))

(assert (=> b!4142583 m!4739003))

(declare-fun m!4739015 () Bool)

(assert (=> b!4142583 m!4739015))

(assert (=> b!4142583 m!4739015))

(declare-fun m!4739017 () Bool)

(assert (=> b!4142583 m!4739017))

(declare-fun m!4739019 () Bool)

(assert (=> b!4142585 m!4739019))

(declare-fun m!4739021 () Bool)

(assert (=> d!1226251 m!4739021))

(declare-fun m!4739023 () Bool)

(assert (=> d!1226251 m!4739023))

(declare-fun m!4739025 () Bool)

(assert (=> d!1226251 m!4739025))

(declare-fun m!4739027 () Bool)

(assert (=> d!1226251 m!4739027))

(assert (=> b!4142581 m!4739003))

(assert (=> b!4142581 m!4739007))

(assert (=> b!4142581 m!4739007))

(assert (=> b!4142581 m!4739009))

(assert (=> b!4142581 m!4739009))

(declare-fun m!4739029 () Bool)

(assert (=> b!4142581 m!4739029))

(assert (=> b!4142579 m!4739003))

(declare-fun m!4739031 () Bool)

(assert (=> b!4142579 m!4739031))

(declare-fun m!4739033 () Bool)

(assert (=> b!4142584 m!4739033))

(assert (=> b!4142336 d!1226251))

(declare-fun d!1226259 () Bool)

(declare-fun fromListB!2523 (List!45062) BalanceConc!26784)

(assert (=> d!1226259 (= (seqFromList!5501 p!2912) (fromListB!2523 p!2912))))

(declare-fun bs!595273 () Bool)

(assert (= bs!595273 d!1226259))

(declare-fun m!4739035 () Bool)

(assert (=> bs!595273 m!4739035))

(assert (=> b!4142336 d!1226259))

(declare-fun d!1226261 () Bool)

(assert (=> d!1226261 (= (apply!10457 (transformation!7384 r!4008) lt!1477417) (dynLambda!19337 (toValue!10048 (transformation!7384 r!4008)) lt!1477417))))

(declare-fun b_lambda!121781 () Bool)

(assert (=> (not b_lambda!121781) (not d!1226261)))

(assert (=> d!1226261 t!342507))

(declare-fun b_and!321815 () Bool)

(assert (= b_and!321791 (and (=> t!342507 result!302382) b_and!321815)))

(assert (=> d!1226261 t!342509))

(declare-fun b_and!321817 () Bool)

(assert (= b_and!321793 (and (=> t!342509 result!302386) b_and!321817)))

(assert (=> d!1226261 t!342511))

(declare-fun b_and!321819 () Bool)

(assert (= b_and!321795 (and (=> t!342511 result!302388) b_and!321819)))

(assert (=> d!1226261 m!4738973))

(assert (=> b!4142336 d!1226261))

(declare-fun d!1226263 () Bool)

(declare-fun lt!1477523 () Int)

(assert (=> d!1226263 (>= lt!1477523 0)))

(declare-fun e!2570374 () Int)

(assert (=> d!1226263 (= lt!1477523 e!2570374)))

(declare-fun c!710043 () Bool)

(assert (=> d!1226263 (= c!710043 ((_ is Nil!44938) p!2912))))

(assert (=> d!1226263 (= (size!33297 p!2912) lt!1477523)))

(declare-fun b!4142606 () Bool)

(assert (=> b!4142606 (= e!2570374 0)))

(declare-fun b!4142607 () Bool)

(assert (=> b!4142607 (= e!2570374 (+ 1 (size!33297 (t!342485 p!2912))))))

(assert (= (and d!1226263 c!710043) b!4142606))

(assert (= (and d!1226263 (not c!710043)) b!4142607))

(declare-fun m!4739037 () Bool)

(assert (=> b!4142607 m!4739037))

(assert (=> b!4142336 d!1226263))

(declare-fun d!1226265 () Bool)

(declare-fun lt!1477526 () Bool)

(declare-fun content!6948 (List!45064) (InoxSet Rule!14568))

(assert (=> d!1226265 (= lt!1477526 (select (content!6948 rules!3756) r!4008))))

(declare-fun e!2570380 () Bool)

(assert (=> d!1226265 (= lt!1477526 e!2570380)))

(declare-fun res!1695067 () Bool)

(assert (=> d!1226265 (=> (not res!1695067) (not e!2570380))))

(assert (=> d!1226265 (= res!1695067 ((_ is Cons!44940) rules!3756))))

(assert (=> d!1226265 (= (contains!9064 rules!3756 r!4008) lt!1477526)))

(declare-fun b!4142612 () Bool)

(declare-fun e!2570379 () Bool)

(assert (=> b!4142612 (= e!2570380 e!2570379)))

(declare-fun res!1695066 () Bool)

(assert (=> b!4142612 (=> res!1695066 e!2570379)))

(assert (=> b!4142612 (= res!1695066 (= (h!50360 rules!3756) r!4008))))

(declare-fun b!4142613 () Bool)

(assert (=> b!4142613 (= e!2570379 (contains!9064 (t!342487 rules!3756) r!4008))))

(assert (= (and d!1226265 res!1695067) b!4142612))

(assert (= (and b!4142612 (not res!1695066)) b!4142613))

(declare-fun m!4739039 () Bool)

(assert (=> d!1226265 m!4739039))

(declare-fun m!4739041 () Bool)

(assert (=> d!1226265 m!4739041))

(declare-fun m!4739043 () Bool)

(assert (=> b!4142613 m!4739043))

(assert (=> b!4142347 d!1226265))

(declare-fun b!4142615 () Bool)

(declare-fun res!1695069 () Bool)

(declare-fun e!2570382 () Bool)

(assert (=> b!4142615 (=> (not res!1695069) (not e!2570382))))

(assert (=> b!4142615 (= res!1695069 (= (head!8740 p!2912) (head!8740 input!3238)))))

(declare-fun b!4142616 () Bool)

(assert (=> b!4142616 (= e!2570382 (isPrefix!4319 (tail!6561 p!2912) (tail!6561 input!3238)))))

(declare-fun b!4142614 () Bool)

(declare-fun e!2570383 () Bool)

(assert (=> b!4142614 (= e!2570383 e!2570382)))

(declare-fun res!1695070 () Bool)

(assert (=> b!4142614 (=> (not res!1695070) (not e!2570382))))

(assert (=> b!4142614 (= res!1695070 (not ((_ is Nil!44938) input!3238)))))

(declare-fun b!4142617 () Bool)

(declare-fun e!2570381 () Bool)

(assert (=> b!4142617 (= e!2570381 (>= (size!33297 input!3238) (size!33297 p!2912)))))

(declare-fun d!1226267 () Bool)

(assert (=> d!1226267 e!2570381))

(declare-fun res!1695071 () Bool)

(assert (=> d!1226267 (=> res!1695071 e!2570381)))

(declare-fun lt!1477527 () Bool)

(assert (=> d!1226267 (= res!1695071 (not lt!1477527))))

(assert (=> d!1226267 (= lt!1477527 e!2570383)))

(declare-fun res!1695068 () Bool)

(assert (=> d!1226267 (=> res!1695068 e!2570383)))

(assert (=> d!1226267 (= res!1695068 ((_ is Nil!44938) p!2912))))

(assert (=> d!1226267 (= (isPrefix!4319 p!2912 input!3238) lt!1477527)))

(assert (= (and d!1226267 (not res!1695068)) b!4142614))

(assert (= (and b!4142614 res!1695070) b!4142615))

(assert (= (and b!4142615 res!1695069) b!4142616))

(assert (= (and d!1226267 (not res!1695071)) b!4142617))

(declare-fun m!4739045 () Bool)

(assert (=> b!4142615 m!4739045))

(declare-fun m!4739047 () Bool)

(assert (=> b!4142615 m!4739047))

(declare-fun m!4739049 () Bool)

(assert (=> b!4142616 m!4739049))

(assert (=> b!4142616 m!4738979))

(assert (=> b!4142616 m!4739049))

(assert (=> b!4142616 m!4738979))

(declare-fun m!4739051 () Bool)

(assert (=> b!4142616 m!4739051))

(assert (=> b!4142617 m!4738749))

(assert (=> b!4142617 m!4738753))

(assert (=> b!4142356 d!1226267))

(declare-fun d!1226269 () Bool)

(declare-fun lt!1477528 () Int)

(assert (=> d!1226269 (>= lt!1477528 0)))

(declare-fun e!2570384 () Int)

(assert (=> d!1226269 (= lt!1477528 e!2570384)))

(declare-fun c!710044 () Bool)

(assert (=> d!1226269 (= c!710044 ((_ is Nil!44938) input!3238))))

(assert (=> d!1226269 (= (size!33297 input!3238) lt!1477528)))

(declare-fun b!4142618 () Bool)

(assert (=> b!4142618 (= e!2570384 0)))

(declare-fun b!4142619 () Bool)

(assert (=> b!4142619 (= e!2570384 (+ 1 (size!33297 (t!342485 input!3238))))))

(assert (= (and d!1226269 c!710044) b!4142618))

(assert (= (and d!1226269 (not c!710044)) b!4142619))

(declare-fun m!4739053 () Bool)

(assert (=> b!4142619 m!4739053))

(assert (=> b!4142345 d!1226269))

(declare-fun d!1226271 () Bool)

(declare-fun lt!1477529 () Bool)

(assert (=> d!1226271 (= lt!1477529 (select (content!6948 rules!3756) rBis!149))))

(declare-fun e!2570386 () Bool)

(assert (=> d!1226271 (= lt!1477529 e!2570386)))

(declare-fun res!1695073 () Bool)

(assert (=> d!1226271 (=> (not res!1695073) (not e!2570386))))

(assert (=> d!1226271 (= res!1695073 ((_ is Cons!44940) rules!3756))))

(assert (=> d!1226271 (= (contains!9064 rules!3756 rBis!149) lt!1477529)))

(declare-fun b!4142620 () Bool)

(declare-fun e!2570385 () Bool)

(assert (=> b!4142620 (= e!2570386 e!2570385)))

(declare-fun res!1695072 () Bool)

(assert (=> b!4142620 (=> res!1695072 e!2570385)))

(assert (=> b!4142620 (= res!1695072 (= (h!50360 rules!3756) rBis!149))))

(declare-fun b!4142621 () Bool)

(assert (=> b!4142621 (= e!2570385 (contains!9064 (t!342487 rules!3756) rBis!149))))

(assert (= (and d!1226271 res!1695073) b!4142620))

(assert (= (and b!4142620 (not res!1695072)) b!4142621))

(assert (=> d!1226271 m!4739039))

(declare-fun m!4739055 () Bool)

(assert (=> d!1226271 m!4739055))

(declare-fun m!4739057 () Bool)

(assert (=> b!4142621 m!4739057))

(assert (=> b!4142346 d!1226271))

(declare-fun b!4142671 () Bool)

(declare-fun res!1695111 () Bool)

(declare-fun e!2570416 () Bool)

(assert (=> b!4142671 (=> (not res!1695111) (not e!2570416))))

(assert (=> b!4142671 (= res!1695111 (isEmpty!26806 (tail!6561 p!2912)))))

(declare-fun b!4142672 () Bool)

(declare-fun res!1695109 () Bool)

(declare-fun e!2570415 () Bool)

(assert (=> b!4142672 (=> res!1695109 e!2570415)))

(assert (=> b!4142672 (= res!1695109 (not (isEmpty!26806 (tail!6561 p!2912))))))

(declare-fun b!4142673 () Bool)

(declare-fun e!2570413 () Bool)

(declare-fun derivativeStep!3721 (Regex!12289 C!24764) Regex!12289)

(assert (=> b!4142673 (= e!2570413 (matchR!6118 (derivativeStep!3721 (regex!7384 r!4008) (head!8740 p!2912)) (tail!6561 p!2912)))))

(declare-fun b!4142674 () Bool)

(declare-fun e!2570417 () Bool)

(declare-fun e!2570414 () Bool)

(assert (=> b!4142674 (= e!2570417 e!2570414)))

(declare-fun c!710054 () Bool)

(assert (=> b!4142674 (= c!710054 ((_ is EmptyLang!12289) (regex!7384 r!4008)))))

(declare-fun b!4142675 () Bool)

(assert (=> b!4142675 (= e!2570415 (not (= (head!8740 p!2912) (c!709995 (regex!7384 r!4008)))))))

(declare-fun b!4142676 () Bool)

(declare-fun res!1695112 () Bool)

(declare-fun e!2570418 () Bool)

(assert (=> b!4142676 (=> res!1695112 e!2570418)))

(assert (=> b!4142676 (= res!1695112 e!2570416)))

(declare-fun res!1695106 () Bool)

(assert (=> b!4142676 (=> (not res!1695106) (not e!2570416))))

(declare-fun lt!1477545 () Bool)

(assert (=> b!4142676 (= res!1695106 lt!1477545)))

(declare-fun b!4142677 () Bool)

(assert (=> b!4142677 (= e!2570414 (not lt!1477545))))

(declare-fun b!4142678 () Bool)

(assert (=> b!4142678 (= e!2570416 (= (head!8740 p!2912) (c!709995 (regex!7384 r!4008))))))

(declare-fun d!1226273 () Bool)

(assert (=> d!1226273 e!2570417))

(declare-fun c!710056 () Bool)

(assert (=> d!1226273 (= c!710056 ((_ is EmptyExpr!12289) (regex!7384 r!4008)))))

(assert (=> d!1226273 (= lt!1477545 e!2570413)))

(declare-fun c!710055 () Bool)

(assert (=> d!1226273 (= c!710055 (isEmpty!26806 p!2912))))

(assert (=> d!1226273 (validRegex!5535 (regex!7384 r!4008))))

(assert (=> d!1226273 (= (matchR!6118 (regex!7384 r!4008) p!2912) lt!1477545)))

(declare-fun bm!290537 () Bool)

(declare-fun call!290542 () Bool)

(assert (=> bm!290537 (= call!290542 (isEmpty!26806 p!2912))))

(declare-fun b!4142679 () Bool)

(assert (=> b!4142679 (= e!2570417 (= lt!1477545 call!290542))))

(declare-fun b!4142680 () Bool)

(declare-fun e!2570412 () Bool)

(assert (=> b!4142680 (= e!2570418 e!2570412)))

(declare-fun res!1695108 () Bool)

(assert (=> b!4142680 (=> (not res!1695108) (not e!2570412))))

(assert (=> b!4142680 (= res!1695108 (not lt!1477545))))

(declare-fun b!4142681 () Bool)

(assert (=> b!4142681 (= e!2570413 (nullable!4326 (regex!7384 r!4008)))))

(declare-fun b!4142682 () Bool)

(assert (=> b!4142682 (= e!2570412 e!2570415)))

(declare-fun res!1695105 () Bool)

(assert (=> b!4142682 (=> res!1695105 e!2570415)))

(assert (=> b!4142682 (= res!1695105 call!290542)))

(declare-fun b!4142683 () Bool)

(declare-fun res!1695107 () Bool)

(assert (=> b!4142683 (=> (not res!1695107) (not e!2570416))))

(assert (=> b!4142683 (= res!1695107 (not call!290542))))

(declare-fun b!4142684 () Bool)

(declare-fun res!1695110 () Bool)

(assert (=> b!4142684 (=> res!1695110 e!2570418)))

(assert (=> b!4142684 (= res!1695110 (not ((_ is ElementMatch!12289) (regex!7384 r!4008))))))

(assert (=> b!4142684 (= e!2570414 e!2570418)))

(assert (= (and d!1226273 c!710055) b!4142681))

(assert (= (and d!1226273 (not c!710055)) b!4142673))

(assert (= (and d!1226273 c!710056) b!4142679))

(assert (= (and d!1226273 (not c!710056)) b!4142674))

(assert (= (and b!4142674 c!710054) b!4142677))

(assert (= (and b!4142674 (not c!710054)) b!4142684))

(assert (= (and b!4142684 (not res!1695110)) b!4142676))

(assert (= (and b!4142676 res!1695106) b!4142683))

(assert (= (and b!4142683 res!1695107) b!4142671))

(assert (= (and b!4142671 res!1695111) b!4142678))

(assert (= (and b!4142676 (not res!1695112)) b!4142680))

(assert (= (and b!4142680 res!1695108) b!4142682))

(assert (= (and b!4142682 (not res!1695105)) b!4142672))

(assert (= (and b!4142672 (not res!1695109)) b!4142675))

(assert (= (or b!4142679 b!4142682 b!4142683) bm!290537))

(assert (=> b!4142678 m!4739045))

(assert (=> bm!290537 m!4738733))

(assert (=> b!4142675 m!4739045))

(assert (=> b!4142673 m!4739045))

(assert (=> b!4142673 m!4739045))

(declare-fun m!4739117 () Bool)

(assert (=> b!4142673 m!4739117))

(assert (=> b!4142673 m!4739049))

(assert (=> b!4142673 m!4739117))

(assert (=> b!4142673 m!4739049))

(declare-fun m!4739119 () Bool)

(assert (=> b!4142673 m!4739119))

(assert (=> b!4142681 m!4738883))

(assert (=> d!1226273 m!4738733))

(assert (=> d!1226273 m!4738881))

(assert (=> b!4142671 m!4739049))

(assert (=> b!4142671 m!4739049))

(declare-fun m!4739121 () Bool)

(assert (=> b!4142671 m!4739121))

(assert (=> b!4142672 m!4739049))

(assert (=> b!4142672 m!4739049))

(assert (=> b!4142672 m!4739121))

(assert (=> b!4142349 d!1226273))

(declare-fun d!1226295 () Bool)

(assert (=> d!1226295 (= (isEmpty!26806 p!2912) ((_ is Nil!44938) p!2912))))

(assert (=> b!4142350 d!1226295))

(declare-fun d!1226297 () Bool)

(assert (=> d!1226297 (= (isEmpty!26805 rules!3756) ((_ is Nil!44940) rules!3756))))

(assert (=> b!4142348 d!1226297))

(declare-fun d!1226299 () Bool)

(declare-fun res!1695121 () Bool)

(declare-fun e!2570427 () Bool)

(assert (=> d!1226299 (=> (not res!1695121) (not e!2570427))))

(declare-fun rulesValid!2905 (LexerInterface!6973 List!45064) Bool)

(assert (=> d!1226299 (= res!1695121 (rulesValid!2905 thiss!25645 rules!3756))))

(assert (=> d!1226299 (= (rulesInvariant!6270 thiss!25645 rules!3756) e!2570427)))

(declare-fun b!4142699 () Bool)

(declare-datatypes ((List!45066 0))(
  ( (Nil!44942) (Cons!44942 (h!50362 String!51820) (t!342537 List!45066)) )
))
(declare-fun noDuplicateTag!2988 (LexerInterface!6973 List!45064 List!45066) Bool)

(assert (=> b!4142699 (= e!2570427 (noDuplicateTag!2988 thiss!25645 rules!3756 Nil!44942))))

(assert (= (and d!1226299 res!1695121) b!4142699))

(declare-fun m!4739125 () Bool)

(assert (=> d!1226299 m!4739125))

(declare-fun m!4739129 () Bool)

(assert (=> b!4142699 m!4739129))

(assert (=> b!4142338 d!1226299))

(declare-fun d!1226301 () Bool)

(declare-fun lt!1477549 () Bool)

(assert (=> d!1226301 (= lt!1477549 (select (content!6948 (tail!6559 rules!3756)) r!4008))))

(declare-fun e!2570429 () Bool)

(assert (=> d!1226301 (= lt!1477549 e!2570429)))

(declare-fun res!1695123 () Bool)

(assert (=> d!1226301 (=> (not res!1695123) (not e!2570429))))

(assert (=> d!1226301 (= res!1695123 ((_ is Cons!44940) (tail!6559 rules!3756)))))

(assert (=> d!1226301 (= (contains!9064 (tail!6559 rules!3756) r!4008) lt!1477549)))

(declare-fun b!4142700 () Bool)

(declare-fun e!2570428 () Bool)

(assert (=> b!4142700 (= e!2570429 e!2570428)))

(declare-fun res!1695122 () Bool)

(assert (=> b!4142700 (=> res!1695122 e!2570428)))

(assert (=> b!4142700 (= res!1695122 (= (h!50360 (tail!6559 rules!3756)) r!4008))))

(declare-fun b!4142701 () Bool)

(assert (=> b!4142701 (= e!2570428 (contains!9064 (t!342487 (tail!6559 rules!3756)) r!4008))))

(assert (= (and d!1226301 res!1695123) b!4142700))

(assert (= (and b!4142700 (not res!1695122)) b!4142701))

(assert (=> d!1226301 m!4738719))

(declare-fun m!4739139 () Bool)

(assert (=> d!1226301 m!4739139))

(declare-fun m!4739141 () Bool)

(assert (=> d!1226301 m!4739141))

(declare-fun m!4739143 () Bool)

(assert (=> b!4142701 m!4739143))

(assert (=> b!4142352 d!1226301))

(declare-fun d!1226305 () Bool)

(assert (=> d!1226305 (= (tail!6559 rules!3756) (t!342487 rules!3756))))

(assert (=> b!4142352 d!1226305))

(declare-fun d!1226307 () Bool)

(assert (=> d!1226307 (contains!9064 (tail!6559 rules!3756) r!4008)))

(declare-fun lt!1477555 () Unit!64235)

(declare-fun choose!25346 (List!45064 Rule!14568 Rule!14568) Unit!64235)

(assert (=> d!1226307 (= lt!1477555 (choose!25346 rules!3756 rBis!149 r!4008))))

(declare-fun e!2570433 () Bool)

(assert (=> d!1226307 e!2570433))

(declare-fun res!1695127 () Bool)

(assert (=> d!1226307 (=> (not res!1695127) (not e!2570433))))

(assert (=> d!1226307 (= res!1695127 (contains!9064 rules!3756 rBis!149))))

(assert (=> d!1226307 (= (lemmaGetIndexBiggerAndHeadEqThenTailContains!88 rules!3756 rBis!149 r!4008) lt!1477555)))

(declare-fun b!4142705 () Bool)

(assert (=> b!4142705 (= e!2570433 (contains!9064 rules!3756 r!4008))))

(assert (= (and d!1226307 res!1695127) b!4142705))

(assert (=> d!1226307 m!4738719))

(assert (=> d!1226307 m!4738719))

(assert (=> d!1226307 m!4738721))

(declare-fun m!4739155 () Bool)

(assert (=> d!1226307 m!4739155))

(assert (=> d!1226307 m!4738765))

(assert (=> b!4142705 m!4738717))

(assert (=> b!4142352 d!1226307))

(declare-fun d!1226317 () Bool)

(assert (=> d!1226317 (= (isEmpty!26807 lt!1477420) (not ((_ is Some!9689) lt!1477420)))))

(assert (=> b!4142352 d!1226317))

(declare-fun b!4142834 () Bool)

(declare-fun e!2570507 () Option!9690)

(assert (=> b!4142834 (= e!2570507 None!9689)))

(declare-fun b!4142835 () Bool)

(declare-fun e!2570510 () Bool)

(declare-datatypes ((tuple2!43322 0))(
  ( (tuple2!43323 (_1!24795 List!45062) (_2!24795 List!45062)) )
))
(declare-fun findLongestMatchInner!1531 (Regex!12289 List!45062 Int List!45062 List!45062 Int) tuple2!43322)

(assert (=> b!4142835 (= e!2570510 (matchR!6118 (regex!7384 rBis!149) (_1!24795 (findLongestMatchInner!1531 (regex!7384 rBis!149) Nil!44938 (size!33297 Nil!44938) input!3238 input!3238 (size!33297 input!3238)))))))

(declare-fun d!1226321 () Bool)

(declare-fun e!2570508 () Bool)

(assert (=> d!1226321 e!2570508))

(declare-fun res!1695189 () Bool)

(assert (=> d!1226321 (=> res!1695189 e!2570508)))

(declare-fun lt!1477574 () Option!9690)

(assert (=> d!1226321 (= res!1695189 (isEmpty!26807 lt!1477574))))

(assert (=> d!1226321 (= lt!1477574 e!2570507)))

(declare-fun c!710077 () Bool)

(declare-fun lt!1477573 () tuple2!43322)

(assert (=> d!1226321 (= c!710077 (isEmpty!26806 (_1!24795 lt!1477573)))))

(declare-fun findLongestMatch!1444 (Regex!12289 List!45062) tuple2!43322)

(assert (=> d!1226321 (= lt!1477573 (findLongestMatch!1444 (regex!7384 rBis!149) input!3238))))

(assert (=> d!1226321 (ruleValid!3190 thiss!25645 rBis!149)))

(assert (=> d!1226321 (= (maxPrefixOneRule!3102 thiss!25645 rBis!149 input!3238) lt!1477574)))

(declare-fun b!4142836 () Bool)

(declare-fun res!1695185 () Bool)

(declare-fun e!2570509 () Bool)

(assert (=> b!4142836 (=> (not res!1695185) (not e!2570509))))

(assert (=> b!4142836 (= res!1695185 (= (value!230998 (_1!24793 (get!14671 lt!1477574))) (apply!10457 (transformation!7384 (rule!10498 (_1!24793 (get!14671 lt!1477574)))) (seqFromList!5501 (originalCharacters!7880 (_1!24793 (get!14671 lt!1477574)))))))))

(declare-fun b!4142837 () Bool)

(declare-fun res!1695187 () Bool)

(assert (=> b!4142837 (=> (not res!1695187) (not e!2570509))))

(assert (=> b!4142837 (= res!1695187 (= (rule!10498 (_1!24793 (get!14671 lt!1477574))) rBis!149))))

(declare-fun b!4142838 () Bool)

(declare-fun res!1695186 () Bool)

(assert (=> b!4142838 (=> (not res!1695186) (not e!2570509))))

(assert (=> b!4142838 (= res!1695186 (= (++!11624 (list!16461 (charsOf!4983 (_1!24793 (get!14671 lt!1477574)))) (_2!24793 (get!14671 lt!1477574))) input!3238))))

(declare-fun b!4142839 () Bool)

(declare-fun res!1695188 () Bool)

(assert (=> b!4142839 (=> (not res!1695188) (not e!2570509))))

(assert (=> b!4142839 (= res!1695188 (< (size!33297 (_2!24793 (get!14671 lt!1477574))) (size!33297 input!3238)))))

(declare-fun b!4142840 () Bool)

(assert (=> b!4142840 (= e!2570507 (Some!9689 (tuple2!43319 (Token!13699 (apply!10457 (transformation!7384 rBis!149) (seqFromList!5501 (_1!24795 lt!1477573))) rBis!149 (size!33298 (seqFromList!5501 (_1!24795 lt!1477573))) (_1!24795 lt!1477573)) (_2!24795 lt!1477573))))))

(declare-fun lt!1477570 () Unit!64235)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1504 (Regex!12289 List!45062) Unit!64235)

(assert (=> b!4142840 (= lt!1477570 (longestMatchIsAcceptedByMatchOrIsEmpty!1504 (regex!7384 rBis!149) input!3238))))

(declare-fun res!1695183 () Bool)

(assert (=> b!4142840 (= res!1695183 (isEmpty!26806 (_1!24795 (findLongestMatchInner!1531 (regex!7384 rBis!149) Nil!44938 (size!33297 Nil!44938) input!3238 input!3238 (size!33297 input!3238)))))))

(assert (=> b!4142840 (=> res!1695183 e!2570510)))

(assert (=> b!4142840 e!2570510))

(declare-fun lt!1477572 () Unit!64235)

(assert (=> b!4142840 (= lt!1477572 lt!1477570)))

(declare-fun lt!1477571 () Unit!64235)

(assert (=> b!4142840 (= lt!1477571 (lemmaSemiInverse!2242 (transformation!7384 rBis!149) (seqFromList!5501 (_1!24795 lt!1477573))))))

(declare-fun b!4142841 () Bool)

(assert (=> b!4142841 (= e!2570508 e!2570509)))

(declare-fun res!1695184 () Bool)

(assert (=> b!4142841 (=> (not res!1695184) (not e!2570509))))

(assert (=> b!4142841 (= res!1695184 (matchR!6118 (regex!7384 rBis!149) (list!16461 (charsOf!4983 (_1!24793 (get!14671 lt!1477574))))))))

(declare-fun b!4142842 () Bool)

(assert (=> b!4142842 (= e!2570509 (= (size!33296 (_1!24793 (get!14671 lt!1477574))) (size!33297 (originalCharacters!7880 (_1!24793 (get!14671 lt!1477574))))))))

(assert (= (and d!1226321 c!710077) b!4142834))

(assert (= (and d!1226321 (not c!710077)) b!4142840))

(assert (= (and b!4142840 (not res!1695183)) b!4142835))

(assert (= (and d!1226321 (not res!1695189)) b!4142841))

(assert (= (and b!4142841 res!1695184) b!4142838))

(assert (= (and b!4142838 res!1695186) b!4142839))

(assert (= (and b!4142839 res!1695188) b!4142837))

(assert (= (and b!4142837 res!1695187) b!4142836))

(assert (= (and b!4142836 res!1695185) b!4142842))

(declare-fun m!4739177 () Bool)

(assert (=> b!4142835 m!4739177))

(assert (=> b!4142835 m!4738749))

(assert (=> b!4142835 m!4739177))

(assert (=> b!4142835 m!4738749))

(declare-fun m!4739179 () Bool)

(assert (=> b!4142835 m!4739179))

(declare-fun m!4739181 () Bool)

(assert (=> b!4142835 m!4739181))

(declare-fun m!4739183 () Bool)

(assert (=> b!4142841 m!4739183))

(declare-fun m!4739185 () Bool)

(assert (=> b!4142841 m!4739185))

(assert (=> b!4142841 m!4739185))

(declare-fun m!4739187 () Bool)

(assert (=> b!4142841 m!4739187))

(assert (=> b!4142841 m!4739187))

(declare-fun m!4739189 () Bool)

(assert (=> b!4142841 m!4739189))

(declare-fun m!4739191 () Bool)

(assert (=> b!4142840 m!4739191))

(assert (=> b!4142840 m!4739191))

(declare-fun m!4739193 () Bool)

(assert (=> b!4142840 m!4739193))

(assert (=> b!4142840 m!4739191))

(declare-fun m!4739195 () Bool)

(assert (=> b!4142840 m!4739195))

(declare-fun m!4739197 () Bool)

(assert (=> b!4142840 m!4739197))

(assert (=> b!4142840 m!4739191))

(declare-fun m!4739199 () Bool)

(assert (=> b!4142840 m!4739199))

(declare-fun m!4739201 () Bool)

(assert (=> b!4142840 m!4739201))

(assert (=> b!4142840 m!4738749))

(assert (=> b!4142840 m!4739177))

(assert (=> b!4142840 m!4738749))

(assert (=> b!4142840 m!4739179))

(assert (=> b!4142840 m!4739177))

(assert (=> b!4142838 m!4739183))

(assert (=> b!4142838 m!4739185))

(assert (=> b!4142838 m!4739185))

(assert (=> b!4142838 m!4739187))

(assert (=> b!4142838 m!4739187))

(declare-fun m!4739203 () Bool)

(assert (=> b!4142838 m!4739203))

(assert (=> b!4142837 m!4739183))

(declare-fun m!4739205 () Bool)

(assert (=> d!1226321 m!4739205))

(declare-fun m!4739207 () Bool)

(assert (=> d!1226321 m!4739207))

(declare-fun m!4739209 () Bool)

(assert (=> d!1226321 m!4739209))

(assert (=> d!1226321 m!4738773))

(assert (=> b!4142842 m!4739183))

(declare-fun m!4739211 () Bool)

(assert (=> b!4142842 m!4739211))

(assert (=> b!4142839 m!4739183))

(declare-fun m!4739213 () Bool)

(assert (=> b!4142839 m!4739213))

(assert (=> b!4142839 m!4738749))

(assert (=> b!4142836 m!4739183))

(declare-fun m!4739215 () Bool)

(assert (=> b!4142836 m!4739215))

(assert (=> b!4142836 m!4739215))

(declare-fun m!4739217 () Bool)

(assert (=> b!4142836 m!4739217))

(assert (=> b!4142352 d!1226321))

(declare-fun d!1226325 () Bool)

(assert (=> d!1226325 (not (= rBis!149 r!4008))))

(declare-fun lt!1477577 () Unit!64235)

(declare-fun choose!25347 (LexerInterface!6973 List!45064 Rule!14568 Rule!14568) Unit!64235)

(assert (=> d!1226325 (= lt!1477577 (choose!25347 thiss!25645 rules!3756 rBis!149 r!4008))))

(assert (=> d!1226325 (contains!9064 rules!3756 rBis!149)))

(assert (=> d!1226325 (= (lemmaNoDuplicateTagAndDiffIndexThenNoTwoRulesEq!82 thiss!25645 rules!3756 rBis!149 r!4008) lt!1477577)))

(declare-fun bs!595279 () Bool)

(assert (= bs!595279 d!1226325))

(declare-fun m!4739219 () Bool)

(assert (=> bs!595279 m!4739219))

(assert (=> bs!595279 m!4738765))

(assert (=> b!4142352 d!1226325))

(declare-fun d!1226327 () Bool)

(assert (=> d!1226327 (= (inv!59543 (tag!8244 (h!50360 rules!3756))) (= (mod (str.len (value!230997 (tag!8244 (h!50360 rules!3756)))) 2) 0))))

(assert (=> b!4142341 d!1226327))

(declare-fun d!1226329 () Bool)

(declare-fun res!1695192 () Bool)

(declare-fun e!2570513 () Bool)

(assert (=> d!1226329 (=> (not res!1695192) (not e!2570513))))

(declare-fun semiInverseModEq!3191 (Int Int) Bool)

(assert (=> d!1226329 (= res!1695192 (semiInverseModEq!3191 (toChars!9907 (transformation!7384 (h!50360 rules!3756))) (toValue!10048 (transformation!7384 (h!50360 rules!3756)))))))

(assert (=> d!1226329 (= (inv!59545 (transformation!7384 (h!50360 rules!3756))) e!2570513)))

(declare-fun b!4142845 () Bool)

(declare-fun equivClasses!3090 (Int Int) Bool)

(assert (=> b!4142845 (= e!2570513 (equivClasses!3090 (toChars!9907 (transformation!7384 (h!50360 rules!3756))) (toValue!10048 (transformation!7384 (h!50360 rules!3756)))))))

(assert (= (and d!1226329 res!1695192) b!4142845))

(declare-fun m!4739221 () Bool)

(assert (=> d!1226329 m!4739221))

(declare-fun m!4739223 () Bool)

(assert (=> b!4142845 m!4739223))

(assert (=> b!4142341 d!1226329))

(declare-fun d!1226331 () Bool)

(assert (=> d!1226331 (= (inv!59543 (tag!8244 r!4008)) (= (mod (str.len (value!230997 (tag!8244 r!4008))) 2) 0))))

(assert (=> b!4142331 d!1226331))

(declare-fun d!1226333 () Bool)

(declare-fun res!1695193 () Bool)

(declare-fun e!2570514 () Bool)

(assert (=> d!1226333 (=> (not res!1695193) (not e!2570514))))

(assert (=> d!1226333 (= res!1695193 (semiInverseModEq!3191 (toChars!9907 (transformation!7384 r!4008)) (toValue!10048 (transformation!7384 r!4008))))))

(assert (=> d!1226333 (= (inv!59545 (transformation!7384 r!4008)) e!2570514)))

(declare-fun b!4142846 () Bool)

(assert (=> b!4142846 (= e!2570514 (equivClasses!3090 (toChars!9907 (transformation!7384 r!4008)) (toValue!10048 (transformation!7384 r!4008))))))

(assert (= (and d!1226333 res!1695193) b!4142846))

(declare-fun m!4739225 () Bool)

(assert (=> d!1226333 m!4739225))

(declare-fun m!4739227 () Bool)

(assert (=> b!4142846 m!4739227))

(assert (=> b!4142331 d!1226333))

(declare-fun d!1226335 () Bool)

(assert (=> d!1226335 (ruleValid!3190 thiss!25645 r!4008)))

(declare-fun lt!1477580 () Unit!64235)

(declare-fun choose!25348 (LexerInterface!6973 Rule!14568 List!45064) Unit!64235)

(assert (=> d!1226335 (= lt!1477580 (choose!25348 thiss!25645 r!4008 rules!3756))))

(assert (=> d!1226335 (contains!9064 rules!3756 r!4008)))

(assert (=> d!1226335 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2230 thiss!25645 r!4008 rules!3756) lt!1477580)))

(declare-fun bs!595280 () Bool)

(assert (= bs!595280 d!1226335))

(assert (=> bs!595280 m!4738739))

(declare-fun m!4739229 () Bool)

(assert (=> bs!595280 m!4739229))

(assert (=> bs!595280 m!4738717))

(assert (=> b!4142340 d!1226335))

(declare-fun d!1226337 () Bool)

(declare-fun res!1695194 () Bool)

(declare-fun e!2570515 () Bool)

(assert (=> d!1226337 (=> (not res!1695194) (not e!2570515))))

(assert (=> d!1226337 (= res!1695194 (validRegex!5535 (regex!7384 rBis!149)))))

(assert (=> d!1226337 (= (ruleValid!3190 thiss!25645 rBis!149) e!2570515)))

(declare-fun b!4142847 () Bool)

(declare-fun res!1695195 () Bool)

(assert (=> b!4142847 (=> (not res!1695195) (not e!2570515))))

(assert (=> b!4142847 (= res!1695195 (not (nullable!4326 (regex!7384 rBis!149))))))

(declare-fun b!4142848 () Bool)

(assert (=> b!4142848 (= e!2570515 (not (= (tag!8244 rBis!149) (String!51821 ""))))))

(assert (= (and d!1226337 res!1695194) b!4142847))

(assert (= (and b!4142847 res!1695195) b!4142848))

(assert (=> d!1226337 m!4738731))

(declare-fun m!4739231 () Bool)

(assert (=> b!4142847 m!4739231))

(assert (=> b!4142340 d!1226337))

(declare-fun d!1226339 () Bool)

(assert (=> d!1226339 (ruleValid!3190 thiss!25645 rBis!149)))

(declare-fun lt!1477581 () Unit!64235)

(assert (=> d!1226339 (= lt!1477581 (choose!25348 thiss!25645 rBis!149 rules!3756))))

(assert (=> d!1226339 (contains!9064 rules!3756 rBis!149)))

(assert (=> d!1226339 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!2230 thiss!25645 rBis!149 rules!3756) lt!1477581)))

(declare-fun bs!595281 () Bool)

(assert (= bs!595281 d!1226339))

(assert (=> bs!595281 m!4738773))

(declare-fun m!4739233 () Bool)

(assert (=> bs!595281 m!4739233))

(assert (=> bs!595281 m!4738765))

(assert (=> b!4142340 d!1226339))

(declare-fun b!4142850 () Bool)

(declare-fun res!1695197 () Bool)

(declare-fun e!2570517 () Bool)

(assert (=> b!4142850 (=> (not res!1695197) (not e!2570517))))

(assert (=> b!4142850 (= res!1695197 (= (head!8740 lt!1477412) (head!8740 input!3238)))))

(declare-fun b!4142851 () Bool)

(assert (=> b!4142851 (= e!2570517 (isPrefix!4319 (tail!6561 lt!1477412) (tail!6561 input!3238)))))

(declare-fun b!4142849 () Bool)

(declare-fun e!2570518 () Bool)

(assert (=> b!4142849 (= e!2570518 e!2570517)))

(declare-fun res!1695198 () Bool)

(assert (=> b!4142849 (=> (not res!1695198) (not e!2570517))))

(assert (=> b!4142849 (= res!1695198 (not ((_ is Nil!44938) input!3238)))))

(declare-fun b!4142852 () Bool)

(declare-fun e!2570516 () Bool)

(assert (=> b!4142852 (= e!2570516 (>= (size!33297 input!3238) (size!33297 lt!1477412)))))

(declare-fun d!1226341 () Bool)

(assert (=> d!1226341 e!2570516))

(declare-fun res!1695199 () Bool)

(assert (=> d!1226341 (=> res!1695199 e!2570516)))

(declare-fun lt!1477582 () Bool)

(assert (=> d!1226341 (= res!1695199 (not lt!1477582))))

(assert (=> d!1226341 (= lt!1477582 e!2570518)))

(declare-fun res!1695196 () Bool)

(assert (=> d!1226341 (=> res!1695196 e!2570518)))

(assert (=> d!1226341 (= res!1695196 ((_ is Nil!44938) lt!1477412))))

(assert (=> d!1226341 (= (isPrefix!4319 lt!1477412 input!3238) lt!1477582)))

(assert (= (and d!1226341 (not res!1695196)) b!4142849))

(assert (= (and b!4142849 res!1695198) b!4142850))

(assert (= (and b!4142850 res!1695197) b!4142851))

(assert (= (and d!1226341 (not res!1695199)) b!4142852))

(assert (=> b!4142850 m!4738801))

(assert (=> b!4142850 m!4739047))

(assert (=> b!4142851 m!4738805))

(assert (=> b!4142851 m!4738979))

(assert (=> b!4142851 m!4738805))

(assert (=> b!4142851 m!4738979))

(declare-fun m!4739235 () Bool)

(assert (=> b!4142851 m!4739235))

(assert (=> b!4142852 m!4738749))

(assert (=> b!4142852 m!4738737))

(assert (=> b!4142330 d!1226341))

(declare-fun d!1226343 () Bool)

(assert (=> d!1226343 (= (inv!59543 (tag!8244 rBis!149)) (= (mod (str.len (value!230997 (tag!8244 rBis!149))) 2) 0))))

(assert (=> b!4142351 d!1226343))

(declare-fun d!1226345 () Bool)

(declare-fun res!1695200 () Bool)

(declare-fun e!2570519 () Bool)

(assert (=> d!1226345 (=> (not res!1695200) (not e!2570519))))

(assert (=> d!1226345 (= res!1695200 (semiInverseModEq!3191 (toChars!9907 (transformation!7384 rBis!149)) (toValue!10048 (transformation!7384 rBis!149))))))

(assert (=> d!1226345 (= (inv!59545 (transformation!7384 rBis!149)) e!2570519)))

(declare-fun b!4142853 () Bool)

(assert (=> b!4142853 (= e!2570519 (equivClasses!3090 (toChars!9907 (transformation!7384 rBis!149)) (toValue!10048 (transformation!7384 rBis!149))))))

(assert (= (and d!1226345 res!1695200) b!4142853))

(declare-fun m!4739237 () Bool)

(assert (=> d!1226345 m!4739237))

(declare-fun m!4739239 () Bool)

(assert (=> b!4142853 m!4739239))

(assert (=> b!4142351 d!1226345))

(declare-fun b!4142858 () Bool)

(declare-fun e!2570522 () Bool)

(declare-fun tp!1262766 () Bool)

(assert (=> b!4142858 (= e!2570522 (and tp_is_empty!21501 tp!1262766))))

(assert (=> b!4142339 (= tp!1262703 e!2570522)))

(assert (= (and b!4142339 ((_ is Cons!44938) (t!342485 input!3238))) b!4142858))

(declare-fun b!4142869 () Bool)

(declare-fun b_free!118051 () Bool)

(declare-fun b_next!118755 () Bool)

(assert (=> b!4142869 (= b_free!118051 (not b_next!118755))))

(declare-fun t!342532 () Bool)

(declare-fun tb!248685 () Bool)

(assert (=> (and b!4142869 (= (toValue!10048 (transformation!7384 (h!50360 (t!342487 rules!3756)))) (toValue!10048 (transformation!7384 r!4008))) t!342532) tb!248685))

(declare-fun result!302420 () Bool)

(assert (= result!302420 result!302382))

(assert (=> d!1226221 t!342532))

(assert (=> d!1226261 t!342532))

(declare-fun b_and!321825 () Bool)

(declare-fun tp!1262775 () Bool)

(assert (=> b!4142869 (= tp!1262775 (and (=> t!342532 result!302420) b_and!321825))))

(declare-fun b_free!118053 () Bool)

(declare-fun b_next!118757 () Bool)

(assert (=> b!4142869 (= b_free!118053 (not b_next!118757))))

(declare-fun t!342534 () Bool)

(declare-fun tb!248687 () Bool)

(assert (=> (and b!4142869 (= (toChars!9907 (transformation!7384 (h!50360 (t!342487 rules!3756)))) (toChars!9907 (transformation!7384 (rule!10498 (_1!24793 lt!1477410))))) t!342534) tb!248687))

(declare-fun result!302422 () Bool)

(assert (= result!302422 result!302360))

(assert (=> d!1226211 t!342534))

(declare-fun t!342536 () Bool)

(declare-fun tb!248689 () Bool)

(assert (=> (and b!4142869 (= (toChars!9907 (transformation!7384 (h!50360 (t!342487 rules!3756)))) (toChars!9907 (transformation!7384 r!4008))) t!342536) tb!248689))

(declare-fun result!302424 () Bool)

(assert (= result!302424 result!302376))

(assert (=> d!1226221 t!342536))

(declare-fun b_and!321827 () Bool)

(declare-fun tp!1262778 () Bool)

(assert (=> b!4142869 (= tp!1262778 (and (=> t!342534 result!302422) (=> t!342536 result!302424) b_and!321827))))

(declare-fun e!2570532 () Bool)

(assert (=> b!4142869 (= e!2570532 (and tp!1262775 tp!1262778))))

(declare-fun b!4142868 () Bool)

(declare-fun tp!1262776 () Bool)

(declare-fun e!2570533 () Bool)

(assert (=> b!4142868 (= e!2570533 (and tp!1262776 (inv!59543 (tag!8244 (h!50360 (t!342487 rules!3756)))) (inv!59545 (transformation!7384 (h!50360 (t!342487 rules!3756)))) e!2570532))))

(declare-fun b!4142867 () Bool)

(declare-fun e!2570531 () Bool)

(declare-fun tp!1262777 () Bool)

(assert (=> b!4142867 (= e!2570531 (and e!2570533 tp!1262777))))

(assert (=> b!4142332 (= tp!1262707 e!2570531)))

(assert (= b!4142868 b!4142869))

(assert (= b!4142867 b!4142868))

(assert (= (and b!4142332 ((_ is Cons!44940) (t!342487 rules!3756))) b!4142867))

(declare-fun m!4739241 () Bool)

(assert (=> b!4142868 m!4739241))

(declare-fun m!4739243 () Bool)

(assert (=> b!4142868 m!4739243))

(declare-fun b!4142870 () Bool)

(declare-fun e!2570535 () Bool)

(declare-fun tp!1262779 () Bool)

(assert (=> b!4142870 (= e!2570535 (and tp_is_empty!21501 tp!1262779))))

(assert (=> b!4142337 (= tp!1262709 e!2570535)))

(assert (= (and b!4142337 ((_ is Cons!44938) (t!342485 p!2912))) b!4142870))

(declare-fun b!4142883 () Bool)

(declare-fun e!2570538 () Bool)

(declare-fun tp!1262791 () Bool)

(assert (=> b!4142883 (= e!2570538 tp!1262791)))

(assert (=> b!4142341 (= tp!1262704 e!2570538)))

(declare-fun b!4142884 () Bool)

(declare-fun tp!1262793 () Bool)

(declare-fun tp!1262790 () Bool)

(assert (=> b!4142884 (= e!2570538 (and tp!1262793 tp!1262790))))

(declare-fun b!4142882 () Bool)

(declare-fun tp!1262794 () Bool)

(declare-fun tp!1262792 () Bool)

(assert (=> b!4142882 (= e!2570538 (and tp!1262794 tp!1262792))))

(declare-fun b!4142881 () Bool)

(assert (=> b!4142881 (= e!2570538 tp_is_empty!21501)))

(assert (= (and b!4142341 ((_ is ElementMatch!12289) (regex!7384 (h!50360 rules!3756)))) b!4142881))

(assert (= (and b!4142341 ((_ is Concat!19904) (regex!7384 (h!50360 rules!3756)))) b!4142882))

(assert (= (and b!4142341 ((_ is Star!12289) (regex!7384 (h!50360 rules!3756)))) b!4142883))

(assert (= (and b!4142341 ((_ is Union!12289) (regex!7384 (h!50360 rules!3756)))) b!4142884))

(declare-fun b!4142887 () Bool)

(declare-fun e!2570539 () Bool)

(declare-fun tp!1262796 () Bool)

(assert (=> b!4142887 (= e!2570539 tp!1262796)))

(assert (=> b!4142331 (= tp!1262705 e!2570539)))

(declare-fun b!4142888 () Bool)

(declare-fun tp!1262798 () Bool)

(declare-fun tp!1262795 () Bool)

(assert (=> b!4142888 (= e!2570539 (and tp!1262798 tp!1262795))))

(declare-fun b!4142886 () Bool)

(declare-fun tp!1262799 () Bool)

(declare-fun tp!1262797 () Bool)

(assert (=> b!4142886 (= e!2570539 (and tp!1262799 tp!1262797))))

(declare-fun b!4142885 () Bool)

(assert (=> b!4142885 (= e!2570539 tp_is_empty!21501)))

(assert (= (and b!4142331 ((_ is ElementMatch!12289) (regex!7384 r!4008))) b!4142885))

(assert (= (and b!4142331 ((_ is Concat!19904) (regex!7384 r!4008))) b!4142886))

(assert (= (and b!4142331 ((_ is Star!12289) (regex!7384 r!4008))) b!4142887))

(assert (= (and b!4142331 ((_ is Union!12289) (regex!7384 r!4008))) b!4142888))

(declare-fun b!4142891 () Bool)

(declare-fun e!2570540 () Bool)

(declare-fun tp!1262801 () Bool)

(assert (=> b!4142891 (= e!2570540 tp!1262801)))

(assert (=> b!4142351 (= tp!1262711 e!2570540)))

(declare-fun b!4142892 () Bool)

(declare-fun tp!1262803 () Bool)

(declare-fun tp!1262800 () Bool)

(assert (=> b!4142892 (= e!2570540 (and tp!1262803 tp!1262800))))

(declare-fun b!4142890 () Bool)

(declare-fun tp!1262804 () Bool)

(declare-fun tp!1262802 () Bool)

(assert (=> b!4142890 (= e!2570540 (and tp!1262804 tp!1262802))))

(declare-fun b!4142889 () Bool)

(assert (=> b!4142889 (= e!2570540 tp_is_empty!21501)))

(assert (= (and b!4142351 ((_ is ElementMatch!12289) (regex!7384 rBis!149))) b!4142889))

(assert (= (and b!4142351 ((_ is Concat!19904) (regex!7384 rBis!149))) b!4142890))

(assert (= (and b!4142351 ((_ is Star!12289) (regex!7384 rBis!149))) b!4142891))

(assert (= (and b!4142351 ((_ is Union!12289) (regex!7384 rBis!149))) b!4142892))

(declare-fun b_lambda!121789 () Bool)

(assert (= b_lambda!121781 (or (and b!4142335 b_free!118035 (= (toValue!10048 (transformation!7384 rBis!149)) (toValue!10048 (transformation!7384 r!4008)))) (and b!4142333 b_free!118039 (= (toValue!10048 (transformation!7384 (h!50360 rules!3756))) (toValue!10048 (transformation!7384 r!4008)))) (and b!4142342 b_free!118043) (and b!4142869 b_free!118051 (= (toValue!10048 (transformation!7384 (h!50360 (t!342487 rules!3756)))) (toValue!10048 (transformation!7384 r!4008)))) b_lambda!121789)))

(declare-fun b_lambda!121791 () Bool)

(assert (= b_lambda!121771 (or (and b!4142335 b_free!118037 (= (toChars!9907 (transformation!7384 rBis!149)) (toChars!9907 (transformation!7384 r!4008)))) (and b!4142333 b_free!118041 (= (toChars!9907 (transformation!7384 (h!50360 rules!3756))) (toChars!9907 (transformation!7384 r!4008)))) (and b!4142342 b_free!118045) (and b!4142869 b_free!118053 (= (toChars!9907 (transformation!7384 (h!50360 (t!342487 rules!3756)))) (toChars!9907 (transformation!7384 r!4008)))) b_lambda!121791)))

(declare-fun b_lambda!121793 () Bool)

(assert (= b_lambda!121773 (or (and b!4142335 b_free!118035 (= (toValue!10048 (transformation!7384 rBis!149)) (toValue!10048 (transformation!7384 r!4008)))) (and b!4142333 b_free!118039 (= (toValue!10048 (transformation!7384 (h!50360 rules!3756))) (toValue!10048 (transformation!7384 r!4008)))) (and b!4142342 b_free!118043) (and b!4142869 b_free!118051 (= (toValue!10048 (transformation!7384 (h!50360 (t!342487 rules!3756)))) (toValue!10048 (transformation!7384 r!4008)))) b_lambda!121793)))

(check-sat (not d!1226221) (not b!4142850) b_and!321789 (not b!4142615) (not d!1226271) (not d!1226329) (not b!4142619) (not d!1226345) (not bm!290527) (not b_next!118739) (not d!1226301) (not b!4142367) (not b_next!118747) (not b!4142390) (not b!4142461) (not b!4142853) (not b!4142858) b_and!321817 (not b!4142582) (not b!4142836) (not b_next!118755) b_and!321825 (not b!4142545) (not b_lambda!121793) (not b!4142616) (not b_next!118745) (not b!4142585) (not b!4142621) (not d!1226195) (not b!4142838) (not b!4142884) (not d!1226189) (not b!4142839) (not b!4142672) (not bm!290531) (not b!4142845) (not d!1226249) (not b!4142835) (not b!4142846) (not b!4142699) b_and!321785 (not b!4142890) (not b!4142883) (not b!4142607) (not b!4142678) (not b!4142368) (not b!4142673) (not b!4142448) (not d!1226273) (not d!1226339) (not b!4142584) (not b!4142867) (not b!4142842) (not bm!290537) tp_is_empty!21501 (not b_lambda!121789) (not b!4142415) (not d!1226251) (not d!1226335) (not tb!248655) (not b!4142852) (not d!1226325) (not tb!248643) (not d!1226333) (not b!4142886) (not b_next!118757) (not b_next!118743) (not b!4142841) (not b_next!118749) (not b!4142675) (not b!4142421) (not b!4142366) (not d!1226211) (not b!4142579) (not b_next!118741) (not bm!290528) (not b!4142681) (not b!4142389) (not b!4142613) (not b!4142580) (not b!4142892) (not b!4142870) b_and!321815 (not d!1226337) (not d!1226321) (not b!4142538) (not b!4142868) (not d!1226265) b_and!321787 (not b!4142701) (not b!4142891) (not b!4142851) (not b!4142617) (not d!1226307) (not b!4142671) (not d!1226299) (not d!1226207) b_and!321819 (not b!4142840) (not b!4142587) (not d!1226205) (not b!4142887) (not b!4142888) (not tb!248661) (not d!1226185) b_and!321827 (not b!4142847) (not b!4142583) (not d!1226193) (not b!4142882) (not b!4142581) (not b_lambda!121767) (not b_lambda!121791) (not d!1226259) (not b!4142428) (not b!4142837) (not b!4142705) (not b!4142466) (not d!1226219))
(check-sat (not b_next!118739) (not b_next!118745) b_and!321785 (not b_next!118757) (not b_next!118741) b_and!321815 b_and!321787 b_and!321819 b_and!321827 b_and!321789 b_and!321817 (not b_next!118747) (not b_next!118755) b_and!321825 (not b_next!118743) (not b_next!118749))
